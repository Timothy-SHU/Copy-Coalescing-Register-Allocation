; ModuleID = 'drivers/gpu/drm/drm_mm.c'
source_filename = "drivers/gpu/drm/drm_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drm_mm_interval_first: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drm_mm_interval_first ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_mm_reserve_node: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_mm_reserve_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_mm_insert_node_in_range: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_mm_insert_node_in_range ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_mm_remove_node: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_mm_remove_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_mm_replace_node: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_mm_replace_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_mm_scan_init_with_range: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_mm_scan_init_with_range ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_mm_scan_add_block: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_mm_scan_add_block ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_mm_scan_remove_block: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_mm_scan_remove_block ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_mm_scan_color_evict: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_mm_scan_color_evict ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_mm_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_mm_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_mm_takedown: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_mm_takedown ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_mm_print: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_mm_print ; .previous"

%struct.rb_augment_callbacks = type { ptr, ptr, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i64 }
%struct.list_head = type { ptr, ptr }
%struct.drm_mm_node = type { i64, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_mm_scan = type { ptr, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@__UNIQUE_ID___addressable___drm_mm_interval_first283 = internal global ptr @__drm_mm_interval_first, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_drm_mm_reserve_node285 = internal global ptr @drm_mm_reserve_node, section ".discard.addressable", align 8, !dbg !99
@__UNIQUE_ID___addressable_drm_mm_insert_node_in_range294 = internal global ptr @drm_mm_insert_node_in_range, section ".discard.addressable", align 8, !dbg !101
@__UNIQUE_ID___addressable_drm_mm_remove_node295 = internal global ptr @drm_mm_remove_node, section ".discard.addressable", align 8, !dbg !103
@__UNIQUE_ID___addressable_drm_mm_replace_node296 = internal global ptr @drm_mm_replace_node, section ".discard.addressable", align 8, !dbg !105
@__UNIQUE_ID___addressable_drm_mm_scan_init_with_range297 = internal global ptr @drm_mm_scan_init_with_range, section ".discard.addressable", align 8, !dbg !107
@__UNIQUE_ID___addressable_drm_mm_scan_add_block306 = internal global ptr @drm_mm_scan_add_block, section ".discard.addressable", align 8, !dbg !109
@__UNIQUE_ID___addressable_drm_mm_scan_remove_block307 = internal global ptr @drm_mm_scan_remove_block, section ".discard.addressable", align 8, !dbg !111
@__UNIQUE_ID___addressable_drm_mm_scan_color_evict308 = internal global ptr @drm_mm_scan_color_evict, section ".discard.addressable", align 8, !dbg !113
@__UNIQUE_ID___addressable_drm_mm_init309 = internal global ptr @drm_mm_init, section ".discard.addressable", align 8, !dbg !115
@.str = private unnamed_addr constant [43 x i8] c"Memory manager not clean during takedown.\0A\00", align 1, !dbg !117
@.str.1 = private unnamed_addr constant [25 x i8] c"drivers/gpu/drm/drm_mm.c\00", align 1, !dbg !122
@__UNIQUE_ID___addressable_drm_mm_takedown310 = internal global ptr @drm_mm_takedown, section ".discard.addressable", align 8, !dbg !127
@.str.2 = private unnamed_addr constant [31 x i8] c"%#018llx-%#018llx: %llu: used\0A\00", align 1, !dbg !129
@.str.3 = private unnamed_addr constant [34 x i8] c"total: %llu, used %llu free %llu\0A\00", align 1, !dbg !134
@__UNIQUE_ID___addressable_drm_mm_print311 = internal global ptr @drm_mm_print, section ".discard.addressable", align 8, !dbg !139
@drm_mm_interval_tree_augment = internal constant %struct.rb_augment_callbacks { ptr @drm_mm_interval_tree_augment_propagate, ptr @drm_mm_interval_tree_augment_copy, ptr @drm_mm_interval_tree_augment_rotate }, align 8, !dbg !141
@augment_callbacks = internal constant %struct.rb_augment_callbacks { ptr @augment_callbacks_propagate, ptr @augment_callbacks_copy, ptr @augment_callbacks_rotate }, align 8, !dbg !153
@.str.4 = private unnamed_addr constant [31 x i8] c"%#018llx-%#018llx: %llu: free\0A\00", align 1, !dbg !155
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID___addressable___drm_mm_interval_first283, ptr @__UNIQUE_ID___addressable_drm_mm_reserve_node285, ptr @__UNIQUE_ID___addressable_drm_mm_insert_node_in_range294, ptr @__UNIQUE_ID___addressable_drm_mm_remove_node295, ptr @__UNIQUE_ID___addressable_drm_mm_replace_node296, ptr @__UNIQUE_ID___addressable_drm_mm_scan_init_with_range297, ptr @__UNIQUE_ID___addressable_drm_mm_scan_add_block306, ptr @__UNIQUE_ID___addressable_drm_mm_scan_remove_block307, ptr @__UNIQUE_ID___addressable_drm_mm_scan_color_evict308, ptr @__UNIQUE_ID___addressable_drm_mm_init309, ptr @__UNIQUE_ID___addressable_drm_mm_takedown310, ptr @__UNIQUE_ID___addressable_drm_mm_print311], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__drm_mm_interval_first(ptr noundef %mm, i64 noundef %start, i64 noundef %last) #0 align 16 !dbg !166 {
entry:
  %mm.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !172, metadata !DIExpression()), !dbg !175
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !173, metadata !DIExpression()), !dbg !176
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !174, metadata !DIExpression()), !dbg !177
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !178
  %interval_tree = getelementptr inbounds %struct.drm_mm, ptr %0, i32 0, i32 3, !dbg !179
  %1 = load i64, ptr %start.addr, align 8, !dbg !180
  %2 = load i64, ptr %last.addr, align 8, !dbg !181
  %call = call ptr @drm_mm_interval_tree_iter_first(ptr noundef %interval_tree, i64 noundef %1, i64 noundef %2) #11, !dbg !182
  %tobool = icmp ne ptr %call, null, !dbg !182
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !182

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !182

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !183
  %head_node = getelementptr inbounds %struct.drm_mm, ptr %3, i32 0, i32 2, !dbg !184
  br label %cond.end, !dbg !182

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %head_node, %cond.false ], !dbg !182
  ret ptr %cond, !dbg !185
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drm_mm_interval_tree_iter_first(ptr noundef %root, i64 noundef %start, i64 noundef %last) #2 align 16 !dbg !186 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  %node = alloca ptr, align 8
  %leftmost = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !190, metadata !DIExpression()), !dbg !199
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !191, metadata !DIExpression()), !dbg !199
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !192, metadata !DIExpression()), !dbg !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #12, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %node, metadata !193, metadata !DIExpression()), !dbg !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftmost) #12, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !194, metadata !DIExpression()), !dbg !199
  %0 = load ptr, ptr %root.addr, align 8, !dbg !200
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 0, !dbg !200
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !200
  %1 = load ptr, ptr %rb_node, align 8, !dbg !200
  %tobool = icmp ne ptr %1, null, !dbg !200
  br i1 %tobool, label %if.end, label %if.then, !dbg !199

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !200

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !195, metadata !DIExpression()), !dbg !202
  %2 = load ptr, ptr %root.addr, align 8, !dbg !202
  %rb_root1 = getelementptr inbounds %struct.rb_root_cached, ptr %2, i32 0, i32 0, !dbg !202
  %rb_node2 = getelementptr inbounds %struct.rb_root, ptr %rb_root1, i32 0, i32 0, !dbg !202
  %3 = load ptr, ptr %rb_node2, align 8, !dbg !202
  store ptr %3, ptr %__mptr, align 8, !dbg !202
  %4 = load ptr, ptr %__mptr, align 8, !dbg !202
  %add.ptr = getelementptr i8, ptr %4, i64 -64, !dbg !202
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !202
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !199
  %5 = load ptr, ptr %tmp, align 8, !dbg !202
  store ptr %5, ptr %node, align 8, !dbg !199
  %6 = load ptr, ptr %node, align 8, !dbg !203
  %__subtree_last = getelementptr inbounds %struct.drm_mm_node, ptr %6, i32 0, i32 9, !dbg !203
  %7 = load i64, ptr %__subtree_last, align 8, !dbg !203
  %8 = load i64, ptr %start.addr, align 8, !dbg !203
  %cmp = icmp ult i64 %7, %8, !dbg !203
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !199

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !203

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #12, !dbg !205
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !197, metadata !DIExpression()), !dbg !205
  %9 = load ptr, ptr %root.addr, align 8, !dbg !205
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %9, i32 0, i32 1, !dbg !205
  %10 = load ptr, ptr %rb_leftmost, align 8, !dbg !205
  store ptr %10, ptr %__mptr5, align 8, !dbg !205
  %11 = load ptr, ptr %__mptr5, align 8, !dbg !205
  %add.ptr7 = getelementptr i8, ptr %11, i64 -64, !dbg !205
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !205
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #12, !dbg !199
  %12 = load ptr, ptr %tmp6, align 8, !dbg !205
  store ptr %12, ptr %leftmost, align 8, !dbg !199
  %13 = load ptr, ptr %leftmost, align 8, !dbg !206
  %start8 = getelementptr inbounds %struct.drm_mm_node, ptr %13, i32 0, i32 1, !dbg !206
  %14 = load i64, ptr %start8, align 8, !dbg !206
  %15 = load i64, ptr %last.addr, align 8, !dbg !206
  %cmp9 = icmp ugt i64 %14, %15, !dbg !206
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !199

if.then10:                                        ; preds = %if.end4
  store ptr null, ptr %retval, align 8, !dbg !206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !206

if.end11:                                         ; preds = %if.end4
  %16 = load ptr, ptr %node, align 8, !dbg !199
  %17 = load i64, ptr %start.addr, align 8, !dbg !199
  %18 = load i64, ptr %last.addr, align 8, !dbg !199
  %call = call ptr @drm_mm_interval_tree_subtree_search(ptr noundef %16, i64 noundef %17, i64 noundef %18) #11, !dbg !199
  store ptr %call, ptr %retval, align 8, !dbg !199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !199

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftmost) #12, !dbg !199
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #12, !dbg !199
  %19 = load ptr, ptr %retval, align 8, !dbg !199
  ret ptr %19, !dbg !199
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_mm_reserve_node(ptr noundef %mm, ptr noundef %node) #0 align 16 !dbg !208 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %hole = alloca ptr, align 8
  %hole_start = alloca i64, align 8
  %hole_end = alloca i64, align 8
  %adj_start = alloca i64, align 8
  %adj_end = alloca i64, align 8
  %end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !213, metadata !DIExpression()), !dbg !221
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !214, metadata !DIExpression()), !dbg !222
  call void @llvm.lifetime.start.p0(i64 8, ptr %hole) #12, !dbg !223
  call void @llvm.dbg.declare(metadata ptr %hole, metadata !215, metadata !DIExpression()), !dbg !224
  call void @llvm.lifetime.start.p0(i64 8, ptr %hole_start) #12, !dbg !225
  call void @llvm.dbg.declare(metadata ptr %hole_start, metadata !216, metadata !DIExpression()), !dbg !226
  call void @llvm.lifetime.start.p0(i64 8, ptr %hole_end) #12, !dbg !225
  call void @llvm.dbg.declare(metadata ptr %hole_end, metadata !217, metadata !DIExpression()), !dbg !227
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj_start) #12, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %adj_start, metadata !218, metadata !DIExpression()), !dbg !229
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj_end) #12, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %adj_end, metadata !219, metadata !DIExpression()), !dbg !230
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #12, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %end, metadata !220, metadata !DIExpression()), !dbg !232
  %0 = load ptr, ptr %node.addr, align 8, !dbg !233
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 1, !dbg !234
  %1 = load i64, ptr %start, align 8, !dbg !234
  %2 = load ptr, ptr %node.addr, align 8, !dbg !235
  %size = getelementptr inbounds %struct.drm_mm_node, ptr %2, i32 0, i32 2, !dbg !236
  %3 = load i64, ptr %size, align 8, !dbg !236
  %add = add i64 %1, %3, !dbg !237
  store i64 %add, ptr %end, align 8, !dbg !238
  %4 = load i64, ptr %end, align 8, !dbg !239
  %5 = load ptr, ptr %node.addr, align 8, !dbg !239
  %start1 = getelementptr inbounds %struct.drm_mm_node, ptr %5, i32 0, i32 1, !dbg !239
  %6 = load i64, ptr %start1, align 8, !dbg !239
  %cmp = icmp ule i64 %4, %6, !dbg !239
  %lnot = xor i1 %cmp, true, !dbg !239
  %lnot2 = xor i1 %lnot, true, !dbg !239
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !239
  %conv = sext i32 %lnot.ext to i64, !dbg !239
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !239
  %tobool = icmp ne i64 %expval, 0, !dbg !239
  br i1 %tobool, label %if.then, label %if.end, !dbg !241

if.then:                                          ; preds = %entry
  store i32 -28, ptr %retval, align 4, !dbg !242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !242

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %mm.addr, align 8, !dbg !243
  %8 = load ptr, ptr %node.addr, align 8, !dbg !244
  %start3 = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 1, !dbg !245
  %9 = load i64, ptr %start3, align 8, !dbg !245
  %call = call ptr @find_hole_addr(ptr noundef %7, i64 noundef %9, i64 noundef 0) #11, !dbg !246
  store ptr %call, ptr %hole, align 8, !dbg !247
  %10 = load ptr, ptr %hole, align 8, !dbg !248
  %tobool4 = icmp ne ptr %10, null, !dbg !248
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !250

if.then5:                                         ; preds = %if.end
  store i32 -28, ptr %retval, align 4, !dbg !251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !251

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %hole, align 8, !dbg !252
  %call7 = call i64 @__drm_mm_hole_node_start(ptr noundef %11) #11, !dbg !253
  store i64 %call7, ptr %hole_start, align 8, !dbg !254
  store i64 %call7, ptr %adj_start, align 8, !dbg !255
  %12 = load i64, ptr %hole_start, align 8, !dbg !256
  %13 = load ptr, ptr %hole, align 8, !dbg !257
  %hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %13, i32 0, i32 10, !dbg !258
  %14 = load i64, ptr %hole_size, align 8, !dbg !258
  %add8 = add i64 %12, %14, !dbg !259
  store i64 %add8, ptr %hole_end, align 8, !dbg !260
  store i64 %add8, ptr %adj_end, align 8, !dbg !261
  %15 = load ptr, ptr %mm.addr, align 8, !dbg !262
  %color_adjust = getelementptr inbounds %struct.drm_mm, ptr %15, i32 0, i32 0, !dbg !264
  %16 = load ptr, ptr %color_adjust, align 8, !dbg !264
  %tobool9 = icmp ne ptr %16, null, !dbg !262
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !265

if.then10:                                        ; preds = %if.end6
  %17 = load ptr, ptr %mm.addr, align 8, !dbg !266
  %color_adjust11 = getelementptr inbounds %struct.drm_mm, ptr %17, i32 0, i32 0, !dbg !267
  %18 = load ptr, ptr %color_adjust11, align 8, !dbg !267
  %19 = load ptr, ptr %hole, align 8, !dbg !268
  %20 = load ptr, ptr %node.addr, align 8, !dbg !269
  %color = getelementptr inbounds %struct.drm_mm_node, ptr %20, i32 0, i32 0, !dbg !270
  %21 = load i64, ptr %color, align 8, !dbg !270
  call void %18(ptr noundef %19, i64 noundef %21, ptr noundef %adj_start, ptr noundef %adj_end) #11, !dbg !266
  br label %if.end12, !dbg !266

if.end12:                                         ; preds = %if.then10, %if.end6
  %22 = load i64, ptr %adj_start, align 8, !dbg !271
  %23 = load ptr, ptr %node.addr, align 8, !dbg !273
  %start13 = getelementptr inbounds %struct.drm_mm_node, ptr %23, i32 0, i32 1, !dbg !274
  %24 = load i64, ptr %start13, align 8, !dbg !274
  %cmp14 = icmp ugt i64 %22, %24, !dbg !275
  br i1 %cmp14, label %if.then18, label %lor.lhs.false, !dbg !276

lor.lhs.false:                                    ; preds = %if.end12
  %25 = load i64, ptr %adj_end, align 8, !dbg !277
  %26 = load i64, ptr %end, align 8, !dbg !278
  %cmp16 = icmp ult i64 %25, %26, !dbg !279
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !280

if.then18:                                        ; preds = %lor.lhs.false, %if.end12
  store i32 -28, ptr %retval, align 4, !dbg !281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !281

if.end19:                                         ; preds = %lor.lhs.false
  %27 = load ptr, ptr %mm.addr, align 8, !dbg !282
  %28 = load ptr, ptr %node.addr, align 8, !dbg !283
  %mm20 = getelementptr inbounds %struct.drm_mm_node, ptr %28, i32 0, i32 3, !dbg !284
  store ptr %27, ptr %mm20, align 8, !dbg !285
  %29 = load ptr, ptr %node.addr, align 8, !dbg !286
  %flags = getelementptr inbounds %struct.drm_mm_node, ptr %29, i32 0, i32 12, !dbg !286
  %30 = ptrtoint ptr %flags to i64, !dbg !286
  %cmp21 = icmp ne i64 %30, 0, !dbg !286
  %conv22 = zext i1 %cmp21 to i32, !dbg !286
  %31 = call i1 @llvm.is.constant.i32(i32 %conv22), !dbg !286
  br i1 %31, label %land.lhs.true, label %cond.false, !dbg !286

land.lhs.true:                                    ; preds = %if.end19
  %32 = load ptr, ptr %node.addr, align 8, !dbg !286
  %flags23 = getelementptr inbounds %struct.drm_mm_node, ptr %32, i32 0, i32 12, !dbg !286
  %33 = ptrtoint ptr %flags23 to i64, !dbg !286
  %cmp24 = icmp ne i64 %33, 0, !dbg !286
  br i1 %cmp24, label %land.lhs.true26, label %cond.false, !dbg !286

land.lhs.true26:                                  ; preds = %land.lhs.true
  %34 = load ptr, ptr %node.addr, align 8, !dbg !286
  %flags27 = getelementptr inbounds %struct.drm_mm_node, ptr %34, i32 0, i32 12, !dbg !286
  %35 = load i64, ptr %flags27, align 8, !dbg !286
  %36 = call i1 @llvm.is.constant.i64(i64 %35), !dbg !286
  br i1 %36, label %cond.true, label %cond.false, !dbg !286

cond.true:                                        ; preds = %land.lhs.true26
  %37 = load ptr, ptr %node.addr, align 8, !dbg !286
  %flags28 = getelementptr inbounds %struct.drm_mm_node, ptr %37, i32 0, i32 12, !dbg !286
  call void @generic___set_bit(i64 noundef 0, ptr noundef %flags28) #11, !dbg !286
  br label %cond.end, !dbg !286

cond.false:                                       ; preds = %land.lhs.true26, %land.lhs.true, %if.end19
  %38 = load ptr, ptr %node.addr, align 8, !dbg !286
  %flags29 = getelementptr inbounds %struct.drm_mm_node, ptr %38, i32 0, i32 12, !dbg !286
  call void @___set_bit(i64 noundef 0, ptr noundef %flags29) #11, !dbg !286
  br label %cond.end, !dbg !286

cond.end:                                         ; preds = %cond.false, %cond.true
  %39 = load ptr, ptr %node.addr, align 8, !dbg !287
  %node_list = getelementptr inbounds %struct.drm_mm_node, ptr %39, i32 0, i32 4, !dbg !288
  %40 = load ptr, ptr %hole, align 8, !dbg !289
  %node_list30 = getelementptr inbounds %struct.drm_mm_node, ptr %40, i32 0, i32 4, !dbg !290
  call void @list_add(ptr noundef %node_list, ptr noundef %node_list30) #11, !dbg !291
  %41 = load ptr, ptr %hole, align 8, !dbg !292
  %42 = load ptr, ptr %node.addr, align 8, !dbg !293
  call void @drm_mm_interval_tree_add_node(ptr noundef %41, ptr noundef %42) #11, !dbg !294
  %43 = load ptr, ptr %node.addr, align 8, !dbg !295
  %hole_size31 = getelementptr inbounds %struct.drm_mm_node, ptr %43, i32 0, i32 10, !dbg !296
  store i64 0, ptr %hole_size31, align 8, !dbg !297
  %44 = load ptr, ptr %hole, align 8, !dbg !298
  call void @rm_hole(ptr noundef %44) #11, !dbg !299
  %45 = load ptr, ptr %node.addr, align 8, !dbg !300
  %start32 = getelementptr inbounds %struct.drm_mm_node, ptr %45, i32 0, i32 1, !dbg !302
  %46 = load i64, ptr %start32, align 8, !dbg !302
  %47 = load i64, ptr %hole_start, align 8, !dbg !303
  %cmp33 = icmp ugt i64 %46, %47, !dbg !304
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !305

if.then35:                                        ; preds = %cond.end
  %48 = load ptr, ptr %hole, align 8, !dbg !306
  call void @add_hole(ptr noundef %48) #11, !dbg !307
  br label %if.end36, !dbg !307

if.end36:                                         ; preds = %if.then35, %cond.end
  %49 = load i64, ptr %end, align 8, !dbg !308
  %50 = load i64, ptr %hole_end, align 8, !dbg !310
  %cmp37 = icmp ult i64 %49, %50, !dbg !311
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !312

if.then39:                                        ; preds = %if.end36
  %51 = load ptr, ptr %node.addr, align 8, !dbg !313
  call void @add_hole(ptr noundef %51) #11, !dbg !314
  br label %if.end40, !dbg !314

if.end40:                                         ; preds = %if.then39, %if.end36
  %52 = load ptr, ptr %node.addr, align 8, !dbg !315
  call void @save_stack(ptr noundef %52) #11, !dbg !316
  store i32 0, ptr %retval, align 4, !dbg !317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !317

cleanup:                                          ; preds = %if.end40, %if.then18, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #12, !dbg !318
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj_end) #12, !dbg !318
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj_start) #12, !dbg !318
  call void @llvm.lifetime.end.p0(i64 8, ptr %hole_end) #12, !dbg !318
  call void @llvm.lifetime.end.p0(i64 8, ptr %hole_start) #12, !dbg !318
  call void @llvm.lifetime.end.p0(i64 8, ptr %hole) #12, !dbg !318
  %53 = load i32, ptr %retval, align 4, !dbg !318
  ret i32 %53, !dbg !318
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_hole_addr(ptr noundef %mm, i64 noundef %addr, i64 noundef %size) #0 align 16 !dbg !319 {
entry:
  %mm.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %rb = alloca ptr, align 8
  %node = alloca ptr, align 8
  %hole_start = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !323, metadata !DIExpression()), !dbg !330
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !324, metadata !DIExpression()), !dbg !331
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !325, metadata !DIExpression()), !dbg !332
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb) #12, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %rb, metadata !326, metadata !DIExpression()), !dbg !334
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !335
  %holes_addr = getelementptr inbounds %struct.drm_mm, ptr %0, i32 0, i32 5, !dbg !336
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %holes_addr, i32 0, i32 0, !dbg !337
  %1 = load ptr, ptr %rb_node, align 8, !dbg !337
  store ptr %1, ptr %rb, align 8, !dbg !334
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #12, !dbg !338
  call void @llvm.dbg.declare(metadata ptr %node, metadata !327, metadata !DIExpression()), !dbg !339
  store ptr null, ptr %node, align 8, !dbg !339
  br label %while.cond, !dbg !340

while.cond:                                       ; preds = %cleanup.cont, %entry
  %2 = load ptr, ptr %rb, align 8, !dbg !341
  %tobool = icmp ne ptr %2, null, !dbg !340
  br i1 %tobool, label %while.body, label %while.end, !dbg !340

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %hole_start) #12, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %hole_start, metadata !328, metadata !DIExpression()), !dbg !343
  %3 = load ptr, ptr %rb, align 8, !dbg !344
  %4 = load i64, ptr %size.addr, align 8, !dbg !346
  %call = call zeroext i1 @usable_hole_addr(ptr noundef %3, i64 noundef %4) #11, !dbg !347
  br i1 %call, label %if.end, label %if.then, !dbg !348

if.then:                                          ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !349

if.end:                                           ; preds = %while.body
  %5 = load ptr, ptr %rb, align 8, !dbg !350
  %call1 = call ptr @rb_hole_addr_to_node(ptr noundef %5) #11, !dbg !351
  store ptr %call1, ptr %node, align 8, !dbg !352
  %6 = load ptr, ptr %node, align 8, !dbg !353
  %call2 = call i64 @__drm_mm_hole_node_start(ptr noundef %6) #11, !dbg !354
  store i64 %call2, ptr %hole_start, align 8, !dbg !355
  %7 = load i64, ptr %addr.addr, align 8, !dbg !356
  %8 = load i64, ptr %hole_start, align 8, !dbg !358
  %cmp = icmp ult i64 %7, %8, !dbg !359
  br i1 %cmp, label %if.then3, label %if.else, !dbg !360

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %node, align 8, !dbg !361
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, ptr %9, i32 0, i32 8, !dbg !362
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb_hole_addr, i32 0, i32 2, !dbg !363
  %10 = load ptr, ptr %rb_left, align 8, !dbg !363
  store ptr %10, ptr %rb, align 8, !dbg !364
  br label %if.end9, !dbg !365

if.else:                                          ; preds = %if.end
  %11 = load i64, ptr %addr.addr, align 8, !dbg !366
  %12 = load i64, ptr %hole_start, align 8, !dbg !368
  %13 = load ptr, ptr %node, align 8, !dbg !369
  %hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %13, i32 0, i32 10, !dbg !370
  %14 = load i64, ptr %hole_size, align 8, !dbg !370
  %add = add i64 %12, %14, !dbg !371
  %cmp4 = icmp ugt i64 %11, %add, !dbg !372
  br i1 %cmp4, label %if.then5, label %if.else7, !dbg !373

if.then5:                                         ; preds = %if.else
  %15 = load ptr, ptr %node, align 8, !dbg !374
  %rb_hole_addr6 = getelementptr inbounds %struct.drm_mm_node, ptr %15, i32 0, i32 8, !dbg !375
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb_hole_addr6, i32 0, i32 1, !dbg !376
  %16 = load ptr, ptr %rb_right, align 8, !dbg !376
  store ptr %16, ptr %rb, align 8, !dbg !377
  br label %if.end8, !dbg !378

if.else7:                                         ; preds = %if.else
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !379

if.end8:                                          ; preds = %if.then5
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then3
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !380
  br label %cleanup, !dbg !380

cleanup:                                          ; preds = %if.end9, %if.else7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hole_start) #12, !dbg !380
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !340, !llvm.loop !381

while.end:                                        ; preds = %cleanup, %while.cond
  %17 = load ptr, ptr %node, align 8, !dbg !384
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #12, !dbg !385
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb) #12, !dbg !385
  ret ptr %17, !dbg !386

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__drm_mm_hole_node_start(ptr noundef %hole_node) #2 align 16 !dbg !387 {
entry:
  %hole_node.addr = alloca ptr, align 8
  store ptr %hole_node, ptr %hole_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hole_node.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load ptr, ptr %hole_node.addr, align 8, !dbg !393
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 1, !dbg !394
  %1 = load i64, ptr %start, align 8, !dbg !394
  %2 = load ptr, ptr %hole_node.addr, align 8, !dbg !395
  %size = getelementptr inbounds %struct.drm_mm_node, ptr %2, i32 0, i32 2, !dbg !396
  %3 = load i64, ptr %size, align 8, !dbg !396
  %add = add i64 %1, %3, !dbg !397
  ret i64 %add, !dbg !398
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !399 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !406, metadata !DIExpression()), !dbg !410
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !407, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !408, metadata !DIExpression()), !dbg !413
  %0 = load i64, ptr %nr.addr, align 8, !dbg !414
  %rem = urem i64 %0, 64, !dbg !414
  %shl = shl i64 1, %rem, !dbg !414
  store i64 %shl, ptr %mask, align 8, !dbg !413
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %p, metadata !409, metadata !DIExpression()), !dbg !416
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !417
  %2 = load i64, ptr %nr.addr, align 8, !dbg !418
  %div = udiv i64 %2, 64, !dbg !418
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !419
  store ptr %add.ptr, ptr %p, align 8, !dbg !416
  %3 = load i64, ptr %mask, align 8, !dbg !420
  %4 = load ptr, ptr %p, align 8, !dbg !421
  %5 = load i64, ptr %4, align 8, !dbg !422
  %or = or i64 %5, %3, !dbg !422
  store i64 %or, ptr %4, align 8, !dbg !422
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !423
  ret void, !dbg !423
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !424 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !427, metadata !DIExpression()), !dbg !429
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !428, metadata !DIExpression()), !dbg !430
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !431
  %1 = load i64, ptr %nr.addr, align 8, !dbg !432
  %div = udiv i64 %1, 64, !dbg !432
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !433
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !434
  %2 = load i64, ptr %nr.addr, align 8, !dbg !435
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !436
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !437
  ret void, !dbg !438
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #2 align 16 !dbg !439 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !444, metadata !DIExpression()), !dbg !446
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !445, metadata !DIExpression()), !dbg !447
  %0 = load ptr, ptr %new.addr, align 8, !dbg !448
  %1 = load ptr, ptr %head.addr, align 8, !dbg !449
  %2 = load ptr, ptr %head.addr, align 8, !dbg !450
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !451
  %3 = load ptr, ptr %next, align 8, !dbg !451
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #11, !dbg !452
  ret void, !dbg !453
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_mm_interval_tree_add_node(ptr noundef %hole_node, ptr noundef %node) #0 align 16 !dbg !454 {
entry:
  %hole_node.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %link = alloca ptr, align 8
  %rb = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %leftmost = alloca i8, align 1
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr14 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  store ptr %hole_node, ptr %hole_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hole_node.addr, metadata !458, metadata !DIExpression()), !dbg !476
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !459, metadata !DIExpression()), !dbg !477
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #12, !dbg !478
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !460, metadata !DIExpression()), !dbg !479
  %0 = load ptr, ptr %hole_node.addr, align 8, !dbg !480
  %mm1 = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 3, !dbg !481
  %1 = load ptr, ptr %mm1, align 8, !dbg !481
  store ptr %1, ptr %mm, align 8, !dbg !479
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #12, !dbg !482
  call void @llvm.dbg.declare(metadata ptr %link, metadata !461, metadata !DIExpression()), !dbg !483
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb) #12, !dbg !482
  call void @llvm.dbg.declare(metadata ptr %rb, metadata !463, metadata !DIExpression()), !dbg !484
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #12, !dbg !485
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !464, metadata !DIExpression()), !dbg !486
  call void @llvm.lifetime.start.p0(i64 1, ptr %leftmost) #12, !dbg !487
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !465, metadata !DIExpression()), !dbg !488
  %2 = load ptr, ptr %node.addr, align 8, !dbg !489
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %2, i32 0, i32 1, !dbg !489
  %3 = load i64, ptr %start, align 8, !dbg !489
  %4 = load ptr, ptr %node.addr, align 8, !dbg !489
  %size = getelementptr inbounds %struct.drm_mm_node, ptr %4, i32 0, i32 2, !dbg !489
  %5 = load i64, ptr %size, align 8, !dbg !489
  %add = add i64 %3, %5, !dbg !489
  %sub = sub i64 %add, 1, !dbg !489
  %6 = load ptr, ptr %node.addr, align 8, !dbg !490
  %__subtree_last = getelementptr inbounds %struct.drm_mm_node, ptr %6, i32 0, i32 9, !dbg !491
  store i64 %sub, ptr %__subtree_last, align 8, !dbg !492
  %7 = load ptr, ptr %hole_node.addr, align 8, !dbg !493
  %call = call zeroext i1 @drm_mm_node_allocated(ptr noundef %7) #11, !dbg !494
  br i1 %call, label %if.then, label %if.else, !dbg !495

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %hole_node.addr, align 8, !dbg !496
  %rb2 = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 6, !dbg !497
  store ptr %rb2, ptr %rb, align 8, !dbg !498
  br label %while.cond, !dbg !499

while.cond:                                       ; preds = %if.end, %if.then
  %9 = load ptr, ptr %rb, align 8, !dbg !500
  %tobool = icmp ne ptr %9, null, !dbg !499
  br i1 %tobool, label %while.body, label %while.end, !dbg !499

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !501
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !468, metadata !DIExpression()), !dbg !501
  %10 = load ptr, ptr %rb, align 8, !dbg !501
  store ptr %10, ptr %__mptr, align 8, !dbg !501
  %11 = load ptr, ptr %__mptr, align 8, !dbg !501
  %add.ptr = getelementptr i8, ptr %11, i64 -64, !dbg !501
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !501
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !502
  %12 = load ptr, ptr %tmp, align 8, !dbg !501
  store ptr %12, ptr %parent, align 8, !dbg !503
  %13 = load ptr, ptr %parent, align 8, !dbg !504
  %__subtree_last3 = getelementptr inbounds %struct.drm_mm_node, ptr %13, i32 0, i32 9, !dbg !506
  %14 = load i64, ptr %__subtree_last3, align 8, !dbg !506
  %15 = load ptr, ptr %node.addr, align 8, !dbg !507
  %__subtree_last4 = getelementptr inbounds %struct.drm_mm_node, ptr %15, i32 0, i32 9, !dbg !508
  %16 = load i64, ptr %__subtree_last4, align 8, !dbg !508
  %cmp = icmp uge i64 %14, %16, !dbg !509
  br i1 %cmp, label %if.then5, label %if.end, !dbg !510

if.then5:                                         ; preds = %while.body
  br label %while.end, !dbg !511

if.end:                                           ; preds = %while.body
  %17 = load ptr, ptr %node.addr, align 8, !dbg !512
  %__subtree_last6 = getelementptr inbounds %struct.drm_mm_node, ptr %17, i32 0, i32 9, !dbg !513
  %18 = load i64, ptr %__subtree_last6, align 8, !dbg !513
  %19 = load ptr, ptr %parent, align 8, !dbg !514
  %__subtree_last7 = getelementptr inbounds %struct.drm_mm_node, ptr %19, i32 0, i32 9, !dbg !515
  store i64 %18, ptr %__subtree_last7, align 8, !dbg !516
  %20 = load ptr, ptr %rb, align 8, !dbg !517
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 0, !dbg !517
  %21 = load i64, ptr %__rb_parent_color, align 8, !dbg !517
  %and = and i64 %21, -4, !dbg !517
  %22 = inttoptr i64 %and to ptr, !dbg !517
  store ptr %22, ptr %rb, align 8, !dbg !518
  br label %while.cond, !dbg !499, !llvm.loop !519

while.end:                                        ; preds = %if.then5, %while.cond
  %23 = load ptr, ptr %hole_node.addr, align 8, !dbg !521
  %rb8 = getelementptr inbounds %struct.drm_mm_node, ptr %23, i32 0, i32 6, !dbg !522
  store ptr %rb8, ptr %rb, align 8, !dbg !523
  %24 = load ptr, ptr %hole_node.addr, align 8, !dbg !524
  %rb9 = getelementptr inbounds %struct.drm_mm_node, ptr %24, i32 0, i32 6, !dbg !525
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb9, i32 0, i32 1, !dbg !526
  store ptr %rb_right, ptr %link, align 8, !dbg !527
  store i8 0, ptr %leftmost, align 1, !dbg !528
  br label %if.end10, !dbg !529

if.else:                                          ; preds = %entry
  store ptr null, ptr %rb, align 8, !dbg !530
  %25 = load ptr, ptr %mm, align 8, !dbg !532
  %interval_tree = getelementptr inbounds %struct.drm_mm, ptr %25, i32 0, i32 3, !dbg !533
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %interval_tree, i32 0, i32 0, !dbg !534
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !535
  store ptr %rb_node, ptr %link, align 8, !dbg !536
  store i8 1, ptr %leftmost, align 1, !dbg !537
  br label %if.end10

if.end10:                                         ; preds = %if.else, %while.end
  br label %while.cond11, !dbg !538

while.cond11:                                     ; preds = %if.end32, %if.end10
  %26 = load ptr, ptr %link, align 8, !dbg !539
  %27 = load ptr, ptr %26, align 8, !dbg !540
  %tobool12 = icmp ne ptr %27, null, !dbg !538
  br i1 %tobool12, label %while.body13, label %while.end33, !dbg !538

while.body13:                                     ; preds = %while.cond11
  %28 = load ptr, ptr %link, align 8, !dbg !541
  %29 = load ptr, ptr %28, align 8, !dbg !542
  store ptr %29, ptr %rb, align 8, !dbg !543
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #12, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !473, metadata !DIExpression()), !dbg !544
  %30 = load ptr, ptr %rb, align 8, !dbg !544
  store ptr %30, ptr %__mptr14, align 8, !dbg !544
  %31 = load ptr, ptr %__mptr14, align 8, !dbg !544
  %add.ptr16 = getelementptr i8, ptr %31, i64 -64, !dbg !544
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !544
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #12, !dbg !545
  %32 = load ptr, ptr %tmp15, align 8, !dbg !544
  store ptr %32, ptr %parent, align 8, !dbg !546
  %33 = load ptr, ptr %parent, align 8, !dbg !547
  %__subtree_last17 = getelementptr inbounds %struct.drm_mm_node, ptr %33, i32 0, i32 9, !dbg !549
  %34 = load i64, ptr %__subtree_last17, align 8, !dbg !549
  %35 = load ptr, ptr %node.addr, align 8, !dbg !550
  %__subtree_last18 = getelementptr inbounds %struct.drm_mm_node, ptr %35, i32 0, i32 9, !dbg !551
  %36 = load i64, ptr %__subtree_last18, align 8, !dbg !551
  %cmp19 = icmp ult i64 %34, %36, !dbg !552
  br i1 %cmp19, label %if.then20, label %if.end23, !dbg !553

if.then20:                                        ; preds = %while.body13
  %37 = load ptr, ptr %node.addr, align 8, !dbg !554
  %__subtree_last21 = getelementptr inbounds %struct.drm_mm_node, ptr %37, i32 0, i32 9, !dbg !555
  %38 = load i64, ptr %__subtree_last21, align 8, !dbg !555
  %39 = load ptr, ptr %parent, align 8, !dbg !556
  %__subtree_last22 = getelementptr inbounds %struct.drm_mm_node, ptr %39, i32 0, i32 9, !dbg !557
  store i64 %38, ptr %__subtree_last22, align 8, !dbg !558
  br label %if.end23, !dbg !556

if.end23:                                         ; preds = %if.then20, %while.body13
  %40 = load ptr, ptr %node.addr, align 8, !dbg !559
  %start24 = getelementptr inbounds %struct.drm_mm_node, ptr %40, i32 0, i32 1, !dbg !561
  %41 = load i64, ptr %start24, align 8, !dbg !561
  %42 = load ptr, ptr %parent, align 8, !dbg !562
  %start25 = getelementptr inbounds %struct.drm_mm_node, ptr %42, i32 0, i32 1, !dbg !563
  %43 = load i64, ptr %start25, align 8, !dbg !563
  %cmp26 = icmp ult i64 %41, %43, !dbg !564
  br i1 %cmp26, label %if.then27, label %if.else29, !dbg !565

if.then27:                                        ; preds = %if.end23
  %44 = load ptr, ptr %parent, align 8, !dbg !566
  %rb28 = getelementptr inbounds %struct.drm_mm_node, ptr %44, i32 0, i32 6, !dbg !568
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb28, i32 0, i32 2, !dbg !569
  store ptr %rb_left, ptr %link, align 8, !dbg !570
  br label %if.end32, !dbg !571

if.else29:                                        ; preds = %if.end23
  %45 = load ptr, ptr %parent, align 8, !dbg !572
  %rb30 = getelementptr inbounds %struct.drm_mm_node, ptr %45, i32 0, i32 6, !dbg !574
  %rb_right31 = getelementptr inbounds %struct.rb_node, ptr %rb30, i32 0, i32 1, !dbg !575
  store ptr %rb_right31, ptr %link, align 8, !dbg !576
  store i8 0, ptr %leftmost, align 1, !dbg !577
  br label %if.end32

if.end32:                                         ; preds = %if.else29, %if.then27
  br label %while.cond11, !dbg !538, !llvm.loop !578

while.end33:                                      ; preds = %while.cond11
  %46 = load ptr, ptr %node.addr, align 8, !dbg !580
  %rb34 = getelementptr inbounds %struct.drm_mm_node, ptr %46, i32 0, i32 6, !dbg !581
  %47 = load ptr, ptr %rb, align 8, !dbg !582
  %48 = load ptr, ptr %link, align 8, !dbg !583
  call void @rb_link_node(ptr noundef %rb34, ptr noundef %47, ptr noundef %48) #11, !dbg !584
  %49 = load ptr, ptr %node.addr, align 8, !dbg !585
  %rb35 = getelementptr inbounds %struct.drm_mm_node, ptr %49, i32 0, i32 6, !dbg !586
  %50 = load ptr, ptr %mm, align 8, !dbg !587
  %interval_tree36 = getelementptr inbounds %struct.drm_mm, ptr %50, i32 0, i32 3, !dbg !588
  %51 = load i8, ptr %leftmost, align 1, !dbg !589, !range !590, !noundef !591
  %tobool37 = trunc i8 %51 to i1, !dbg !589
  call void @rb_insert_augmented_cached(ptr noundef %rb35, ptr noundef %interval_tree36, i1 noundef zeroext %tobool37, ptr noundef @drm_mm_interval_tree_augment) #11, !dbg !592
  call void @llvm.lifetime.end.p0(i64 1, ptr %leftmost) #12, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #12, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb) #12, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #12, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #12, !dbg !593
  ret void, !dbg !593
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rm_hole(ptr noundef %node) #0 align 16 !dbg !594 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !598, metadata !DIExpression()), !dbg !599
  %0 = load ptr, ptr %node.addr, align 8, !dbg !600
  %hole_stack = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 5, !dbg !601
  call void @list_del(ptr noundef %hole_stack) #11, !dbg !602
  %1 = load ptr, ptr %node.addr, align 8, !dbg !603
  %rb_hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %1, i32 0, i32 7, !dbg !604
  %2 = load ptr, ptr %node.addr, align 8, !dbg !605
  %mm = getelementptr inbounds %struct.drm_mm_node, ptr %2, i32 0, i32 3, !dbg !606
  %3 = load ptr, ptr %mm, align 8, !dbg !606
  %holes_size = getelementptr inbounds %struct.drm_mm, ptr %3, i32 0, i32 4, !dbg !607
  %call = call ptr @rb_erase_cached(ptr noundef %rb_hole_size, ptr noundef %holes_size) #11, !dbg !608
  %4 = load ptr, ptr %node.addr, align 8, !dbg !609
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, ptr %4, i32 0, i32 8, !dbg !610
  %5 = load ptr, ptr %node.addr, align 8, !dbg !611
  %mm1 = getelementptr inbounds %struct.drm_mm_node, ptr %5, i32 0, i32 3, !dbg !612
  %6 = load ptr, ptr %mm1, align 8, !dbg !612
  %holes_addr = getelementptr inbounds %struct.drm_mm, ptr %6, i32 0, i32 5, !dbg !613
  call void @rb_erase_augmented(ptr noundef %rb_hole_addr, ptr noundef %holes_addr, ptr noundef @augment_callbacks) #11, !dbg !614
  %7 = load ptr, ptr %node.addr, align 8, !dbg !615
  %hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %7, i32 0, i32 10, !dbg !616
  store i64 0, ptr %hole_size, align 8, !dbg !617
  %8 = load ptr, ptr %node.addr, align 8, !dbg !618
  %subtree_max_hole = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 11, !dbg !619
  store i64 0, ptr %subtree_max_hole, align 8, !dbg !620
  ret void, !dbg !621
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @add_hole(ptr noundef %node) #0 align 16 !dbg !622 {
entry:
  %node.addr = alloca ptr, align 8
  %mm = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !624, metadata !DIExpression()), !dbg !626
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #12, !dbg !627
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !625, metadata !DIExpression()), !dbg !628
  %0 = load ptr, ptr %node.addr, align 8, !dbg !629
  %mm1 = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 3, !dbg !630
  %1 = load ptr, ptr %mm1, align 8, !dbg !630
  store ptr %1, ptr %mm, align 8, !dbg !628
  %2 = load ptr, ptr %node.addr, align 8, !dbg !631
  %call = call i64 @__drm_mm_hole_node_end(ptr noundef %2) #11, !dbg !632
  %3 = load ptr, ptr %node.addr, align 8, !dbg !633
  %call2 = call i64 @__drm_mm_hole_node_start(ptr noundef %3) #11, !dbg !634
  %sub = sub i64 %call, %call2, !dbg !635
  %4 = load ptr, ptr %node.addr, align 8, !dbg !636
  %hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %4, i32 0, i32 10, !dbg !637
  store i64 %sub, ptr %hole_size, align 8, !dbg !638
  %5 = load ptr, ptr %node.addr, align 8, !dbg !639
  %hole_size3 = getelementptr inbounds %struct.drm_mm_node, ptr %5, i32 0, i32 10, !dbg !640
  %6 = load i64, ptr %hole_size3, align 8, !dbg !640
  %7 = load ptr, ptr %node.addr, align 8, !dbg !641
  %subtree_max_hole = getelementptr inbounds %struct.drm_mm_node, ptr %7, i32 0, i32 11, !dbg !642
  store i64 %6, ptr %subtree_max_hole, align 8, !dbg !643
  %8 = load ptr, ptr %mm, align 8, !dbg !644
  %holes_size = getelementptr inbounds %struct.drm_mm, ptr %8, i32 0, i32 4, !dbg !645
  %9 = load ptr, ptr %node.addr, align 8, !dbg !646
  call void @insert_hole_size(ptr noundef %holes_size, ptr noundef %9) #11, !dbg !647
  %10 = load ptr, ptr %mm, align 8, !dbg !648
  %holes_addr = getelementptr inbounds %struct.drm_mm, ptr %10, i32 0, i32 5, !dbg !649
  %11 = load ptr, ptr %node.addr, align 8, !dbg !650
  call void @insert_hole_addr(ptr noundef %holes_addr, ptr noundef %11) #11, !dbg !651
  %12 = load ptr, ptr %node.addr, align 8, !dbg !652
  %hole_stack = getelementptr inbounds %struct.drm_mm_node, ptr %12, i32 0, i32 5, !dbg !653
  %13 = load ptr, ptr %mm, align 8, !dbg !654
  %hole_stack4 = getelementptr inbounds %struct.drm_mm, ptr %13, i32 0, i32 1, !dbg !655
  call void @list_add(ptr noundef %hole_stack, ptr noundef %hole_stack4) #11, !dbg !656
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #12, !dbg !657
  ret void, !dbg !657
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @save_stack(ptr noundef %node) #0 align 16 !dbg !658 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !660, metadata !DIExpression()), !dbg !661
  ret void, !dbg !662
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_mm_insert_node_in_range(ptr noundef %mm, ptr noundef %node, i64 noundef %size, i64 noundef %alignment, i64 noundef %color, i64 noundef %range_start, i64 noundef %range_end, i32 noundef %mode) #0 align 16 !dbg !663 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %alignment.addr = alloca i64, align 8
  %color.addr = alloca i64, align 8
  %range_start.addr = alloca i64, align 8
  %range_end.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %hole = alloca ptr, align 8
  %remainder_mask = alloca i64, align 8
  %once = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %hole_start = alloca i64, align 8
  %hole_end = alloca i64, align 8
  %adj_start = alloca i64, align 8
  %adj_end = alloca i64, align 8
  %col_start = alloca i64, align 8
  %col_end = alloca i64, align 8
  %__UNIQUE_ID___x286 = alloca i64, align 8
  %__UNIQUE_ID___y287 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x288 = alloca i64, align 8
  %__UNIQUE_ID___y289 = alloca i64, align 8
  %tmp42 = alloca i64, align 8
  %rem = alloca i64, align 8
  %__UNIQUE_ID___x290 = alloca i64, align 8
  %__UNIQUE_ID___y291 = alloca i64, align 8
  %tmp83 = alloca i64, align 8
  %__UNIQUE_ID___x292 = alloca i64, align 8
  %__UNIQUE_ID___y293 = alloca i64, align 8
  %tmp93 = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !669, metadata !DIExpression()), !dbg !707
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !670, metadata !DIExpression()), !dbg !708
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !671, metadata !DIExpression()), !dbg !709
  store i64 %alignment, ptr %alignment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alignment.addr, metadata !672, metadata !DIExpression()), !dbg !710
  store i64 %color, ptr %color.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %color.addr, metadata !673, metadata !DIExpression()), !dbg !711
  store i64 %range_start, ptr %range_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range_start.addr, metadata !674, metadata !DIExpression()), !dbg !712
  store i64 %range_end, ptr %range_end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range_end.addr, metadata !675, metadata !DIExpression()), !dbg !713
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !676, metadata !DIExpression()), !dbg !714
  call void @llvm.lifetime.start.p0(i64 8, ptr %hole) #12, !dbg !715
  call void @llvm.dbg.declare(metadata ptr %hole, metadata !677, metadata !DIExpression()), !dbg !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %remainder_mask) #12, !dbg !717
  call void @llvm.dbg.declare(metadata ptr %remainder_mask, metadata !678, metadata !DIExpression()), !dbg !718
  call void @llvm.lifetime.start.p0(i64 1, ptr %once) #12, !dbg !719
  call void @llvm.dbg.declare(metadata ptr %once, metadata !679, metadata !DIExpression()), !dbg !720
  %0 = load i64, ptr %size.addr, align 8, !dbg !721
  %cmp = icmp eq i64 %0, 0, !dbg !721
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !721

lor.rhs:                                          ; preds = %entry
  %1 = load i64, ptr %range_end.addr, align 8, !dbg !721
  %2 = load i64, ptr %range_start.addr, align 8, !dbg !721
  %sub = sub i64 %1, %2, !dbg !721
  %3 = load i64, ptr %size.addr, align 8, !dbg !721
  %cmp1 = icmp ult i64 %sub, %3, !dbg !721
  br label %lor.end, !dbg !721

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lnot = xor i1 %4, true, !dbg !721
  %lnot2 = xor i1 %lnot, true, !dbg !721
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !721
  %conv = sext i32 %lnot.ext to i64, !dbg !721
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !721
  %tobool = icmp ne i64 %expval, 0, !dbg !721
  br i1 %tobool, label %if.then, label %if.end, !dbg !723

if.then:                                          ; preds = %lor.end
  store i32 -28, ptr %retval, align 4, !dbg !724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup156, !dbg !724

if.end:                                           ; preds = %lor.end
  %5 = load ptr, ptr %mm.addr, align 8, !dbg !725
  %holes_size = getelementptr inbounds %struct.drm_mm, ptr %5, i32 0, i32 4, !dbg !725
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %holes_size, i32 0, i32 1, !dbg !725
  %6 = load ptr, ptr %rb_leftmost, align 8, !dbg !725
  %call = call i64 @rb_to_hole_size_or_zero(ptr noundef %6) #11, !dbg !727
  %7 = load i64, ptr %size.addr, align 8, !dbg !728
  %cmp3 = icmp ult i64 %call, %7, !dbg !729
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !730

if.then5:                                         ; preds = %if.end
  store i32 -28, ptr %retval, align 4, !dbg !731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup156, !dbg !731

if.end6:                                          ; preds = %if.end
  %8 = load i64, ptr %alignment.addr, align 8, !dbg !732
  %cmp7 = icmp ule i64 %8, 1, !dbg !734
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !735

if.then9:                                         ; preds = %if.end6
  store i64 0, ptr %alignment.addr, align 8, !dbg !736
  br label %if.end10, !dbg !737

if.end10:                                         ; preds = %if.then9, %if.end6
  %9 = load i32, ptr %mode.addr, align 4, !dbg !738
  %and = and i32 %9, -2147483648, !dbg !739
  %tobool11 = icmp ne i32 %and, 0, !dbg !738
  %frombool = zext i1 %tobool11 to i8, !dbg !740
  store i8 %frombool, ptr %once, align 1, !dbg !740
  %10 = load i32, ptr %mode.addr, align 4, !dbg !741
  %and12 = and i32 %10, 2147483647, !dbg !741
  store i32 %and12, ptr %mode.addr, align 4, !dbg !741
  %11 = load i64, ptr %alignment.addr, align 8, !dbg !742
  %call13 = call zeroext i1 @is_power_of_2(i64 noundef %11) #13, !dbg !743
  br i1 %call13, label %cond.true, label %cond.false, !dbg !743

cond.true:                                        ; preds = %if.end10
  %12 = load i64, ptr %alignment.addr, align 8, !dbg !744
  %sub15 = sub i64 %12, 1, !dbg !745
  br label %cond.end, !dbg !743

cond.false:                                       ; preds = %if.end10
  br label %cond.end, !dbg !743

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub15, %cond.true ], [ 0, %cond.false ], !dbg !743
  store i64 %cond, ptr %remainder_mask, align 8, !dbg !746
  %13 = load ptr, ptr %mm.addr, align 8, !dbg !747
  %14 = load i64, ptr %range_start.addr, align 8, !dbg !748
  %15 = load i64, ptr %range_end.addr, align 8, !dbg !749
  %16 = load i64, ptr %size.addr, align 8, !dbg !750
  %17 = load i32, ptr %mode.addr, align 4, !dbg !751
  %call16 = call ptr @first_hole(ptr noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i32 noundef %17) #11, !dbg !752
  store ptr %call16, ptr %hole, align 8, !dbg !753
  br label %for.cond, !dbg !754

for.cond:                                         ; preds = %cond.end154, %cond.end
  %18 = load ptr, ptr %hole, align 8, !dbg !755
  %tobool17 = icmp ne ptr %18, null, !dbg !756
  br i1 %tobool17, label %for.body, label %for.end, !dbg !756

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %hole_start) #12, !dbg !757
  call void @llvm.dbg.declare(metadata ptr %hole_start, metadata !680, metadata !DIExpression()), !dbg !758
  %19 = load ptr, ptr %hole, align 8, !dbg !759
  %call18 = call i64 @__drm_mm_hole_node_start(ptr noundef %19) #11, !dbg !760
  store i64 %call18, ptr %hole_start, align 8, !dbg !758
  call void @llvm.lifetime.start.p0(i64 8, ptr %hole_end) #12, !dbg !761
  call void @llvm.dbg.declare(metadata ptr %hole_end, metadata !684, metadata !DIExpression()), !dbg !762
  %20 = load i64, ptr %hole_start, align 8, !dbg !763
  %21 = load ptr, ptr %hole, align 8, !dbg !764
  %hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %21, i32 0, i32 10, !dbg !765
  %22 = load i64, ptr %hole_size, align 8, !dbg !765
  %add = add i64 %20, %22, !dbg !766
  store i64 %add, ptr %hole_end, align 8, !dbg !762
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj_start) #12, !dbg !767
  call void @llvm.dbg.declare(metadata ptr %adj_start, metadata !685, metadata !DIExpression()), !dbg !768
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj_end) #12, !dbg !767
  call void @llvm.dbg.declare(metadata ptr %adj_end, metadata !686, metadata !DIExpression()), !dbg !769
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_start) #12, !dbg !770
  call void @llvm.dbg.declare(metadata ptr %col_start, metadata !687, metadata !DIExpression()), !dbg !771
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_end) #12, !dbg !770
  call void @llvm.dbg.declare(metadata ptr %col_end, metadata !688, metadata !DIExpression()), !dbg !772
  %23 = load i32, ptr %mode.addr, align 4, !dbg !773
  %cmp19 = icmp eq i32 %23, 1, !dbg !775
  br i1 %cmp19, label %land.lhs.true, label %if.end24, !dbg !776

land.lhs.true:                                    ; preds = %for.body
  %24 = load i64, ptr %hole_start, align 8, !dbg !777
  %25 = load i64, ptr %range_end.addr, align 8, !dbg !778
  %cmp21 = icmp uge i64 %24, %25, !dbg !779
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !780

if.then23:                                        ; preds = %land.lhs.true
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !781

if.end24:                                         ; preds = %land.lhs.true, %for.body
  %26 = load i32, ptr %mode.addr, align 4, !dbg !782
  %cmp25 = icmp eq i32 %26, 2, !dbg !784
  br i1 %cmp25, label %land.lhs.true27, label %if.end31, !dbg !785

land.lhs.true27:                                  ; preds = %if.end24
  %27 = load i64, ptr %hole_end, align 8, !dbg !786
  %28 = load i64, ptr %range_start.addr, align 8, !dbg !787
  %cmp28 = icmp ule i64 %27, %28, !dbg !788
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !789

if.then30:                                        ; preds = %land.lhs.true27
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !790

if.end31:                                         ; preds = %land.lhs.true27, %if.end24
  %29 = load i64, ptr %hole_start, align 8, !dbg !791
  store i64 %29, ptr %col_start, align 8, !dbg !792
  %30 = load i64, ptr %hole_end, align 8, !dbg !793
  store i64 %30, ptr %col_end, align 8, !dbg !794
  %31 = load ptr, ptr %mm.addr, align 8, !dbg !795
  %color_adjust = getelementptr inbounds %struct.drm_mm, ptr %31, i32 0, i32 0, !dbg !797
  %32 = load ptr, ptr %color_adjust, align 8, !dbg !797
  %tobool32 = icmp ne ptr %32, null, !dbg !795
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !798

if.then33:                                        ; preds = %if.end31
  %33 = load ptr, ptr %mm.addr, align 8, !dbg !799
  %color_adjust34 = getelementptr inbounds %struct.drm_mm, ptr %33, i32 0, i32 0, !dbg !800
  %34 = load ptr, ptr %color_adjust34, align 8, !dbg !800
  %35 = load ptr, ptr %hole, align 8, !dbg !801
  %36 = load i64, ptr %color.addr, align 8, !dbg !802
  call void %34(ptr noundef %35, i64 noundef %36, ptr noundef %col_start, ptr noundef %col_end) #11, !dbg !799
  br label %if.end35, !dbg !799

if.end35:                                         ; preds = %if.then33, %if.end31
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x286) #12, !dbg !803
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x286, metadata !689, metadata !DIExpression()), !dbg !803
  %37 = load i64, ptr %col_start, align 8, !dbg !803
  store i64 %37, ptr %__UNIQUE_ID___x286, align 8, !dbg !803
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y287) #12, !dbg !803
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y287, metadata !691, metadata !DIExpression()), !dbg !803
  %38 = load i64, ptr %range_start.addr, align 8, !dbg !803
  store i64 %38, ptr %__UNIQUE_ID___y287, align 8, !dbg !803
  %39 = load i64, ptr %__UNIQUE_ID___x286, align 8, !dbg !803
  %40 = load i64, ptr %__UNIQUE_ID___y287, align 8, !dbg !803
  %cmp36 = icmp ugt i64 %39, %40, !dbg !803
  br i1 %cmp36, label %cond.true38, label %cond.false39, !dbg !803

cond.true38:                                      ; preds = %if.end35
  %41 = load i64, ptr %__UNIQUE_ID___x286, align 8, !dbg !803
  br label %cond.end40, !dbg !803

cond.false39:                                     ; preds = %if.end35
  %42 = load i64, ptr %__UNIQUE_ID___y287, align 8, !dbg !803
  br label %cond.end40, !dbg !803

cond.end40:                                       ; preds = %cond.false39, %cond.true38
  %cond41 = phi i64 [ %41, %cond.true38 ], [ %42, %cond.false39 ], !dbg !803
  store i64 %cond41, ptr %tmp, align 8, !dbg !803
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y287) #12, !dbg !804
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x286) #12, !dbg !804
  %43 = load i64, ptr %tmp, align 8, !dbg !803
  store i64 %43, ptr %adj_start, align 8, !dbg !805
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x288) #12, !dbg !806
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x288, metadata !692, metadata !DIExpression()), !dbg !806
  %44 = load i64, ptr %col_end, align 8, !dbg !806
  store i64 %44, ptr %__UNIQUE_ID___x288, align 8, !dbg !806
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y289) #12, !dbg !806
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y289, metadata !694, metadata !DIExpression()), !dbg !806
  %45 = load i64, ptr %range_end.addr, align 8, !dbg !806
  store i64 %45, ptr %__UNIQUE_ID___y289, align 8, !dbg !806
  %46 = load i64, ptr %__UNIQUE_ID___x288, align 8, !dbg !806
  %47 = load i64, ptr %__UNIQUE_ID___y289, align 8, !dbg !806
  %cmp43 = icmp ult i64 %46, %47, !dbg !806
  br i1 %cmp43, label %cond.true45, label %cond.false46, !dbg !806

cond.true45:                                      ; preds = %cond.end40
  %48 = load i64, ptr %__UNIQUE_ID___x288, align 8, !dbg !806
  br label %cond.end47, !dbg !806

cond.false46:                                     ; preds = %cond.end40
  %49 = load i64, ptr %__UNIQUE_ID___y289, align 8, !dbg !806
  br label %cond.end47, !dbg !806

cond.end47:                                       ; preds = %cond.false46, %cond.true45
  %cond48 = phi i64 [ %48, %cond.true45 ], [ %49, %cond.false46 ], !dbg !806
  store i64 %cond48, ptr %tmp42, align 8, !dbg !806
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y289) #12, !dbg !807
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x288) #12, !dbg !807
  %50 = load i64, ptr %tmp42, align 8, !dbg !806
  store i64 %50, ptr %adj_end, align 8, !dbg !808
  %51 = load i64, ptr %adj_end, align 8, !dbg !809
  %52 = load i64, ptr %adj_start, align 8, !dbg !811
  %cmp49 = icmp ule i64 %51, %52, !dbg !812
  br i1 %cmp49, label %if.then54, label %lor.lhs.false, !dbg !813

lor.lhs.false:                                    ; preds = %cond.end47
  %53 = load i64, ptr %adj_end, align 8, !dbg !814
  %54 = load i64, ptr %adj_start, align 8, !dbg !815
  %sub51 = sub i64 %53, %54, !dbg !816
  %55 = load i64, ptr %size.addr, align 8, !dbg !817
  %cmp52 = icmp ult i64 %sub51, %55, !dbg !818
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !819

if.then54:                                        ; preds = %lor.lhs.false, %cond.end47
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !820

if.end55:                                         ; preds = %lor.lhs.false
  %56 = load i32, ptr %mode.addr, align 4, !dbg !821
  %cmp56 = icmp eq i32 %56, 2, !dbg !823
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !824

if.then58:                                        ; preds = %if.end55
  %57 = load i64, ptr %adj_end, align 8, !dbg !825
  %58 = load i64, ptr %size.addr, align 8, !dbg !826
  %sub59 = sub i64 %57, %58, !dbg !827
  store i64 %sub59, ptr %adj_start, align 8, !dbg !828
  br label %if.end60, !dbg !829

if.end60:                                         ; preds = %if.then58, %if.end55
  %59 = load i64, ptr %alignment.addr, align 8, !dbg !830
  %tobool61 = icmp ne i64 %59, 0, !dbg !830
  br i1 %tobool61, label %if.then62, label %if.end114, !dbg !831

if.then62:                                        ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 8, ptr %rem) #12, !dbg !832
  call void @llvm.dbg.declare(metadata ptr %rem, metadata !695, metadata !DIExpression()), !dbg !833
  %60 = load i64, ptr %remainder_mask, align 8, !dbg !834
  %tobool63 = icmp ne i64 %60, 0, !dbg !834
  %lnot64 = xor i1 %tobool63, true, !dbg !834
  %lnot66 = xor i1 %lnot64, true, !dbg !834
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !834
  %conv68 = sext i32 %lnot.ext67 to i64, !dbg !834
  %expval69 = call i64 @llvm.expect.i64(i64 %conv68, i64 1), !dbg !834
  %tobool70 = icmp ne i64 %expval69, 0, !dbg !834
  br i1 %tobool70, label %if.then71, label %if.else, !dbg !836

if.then71:                                        ; preds = %if.then62
  %61 = load i64, ptr %adj_start, align 8, !dbg !837
  %62 = load i64, ptr %remainder_mask, align 8, !dbg !838
  %and72 = and i64 %61, %62, !dbg !839
  store i64 %and72, ptr %rem, align 8, !dbg !840
  br label %if.end74, !dbg !841

if.else:                                          ; preds = %if.then62
  %63 = load i64, ptr %adj_start, align 8, !dbg !842
  %64 = load i64, ptr %alignment.addr, align 8, !dbg !843
  %call73 = call i64 @div64_u64_rem(i64 noundef %63, i64 noundef %64, ptr noundef %rem) #11, !dbg !844
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.then71
  %65 = load i64, ptr %rem, align 8, !dbg !845
  %tobool75 = icmp ne i64 %65, 0, !dbg !845
  br i1 %tobool75, label %if.then76, label %if.end113, !dbg !846

if.then76:                                        ; preds = %if.end74
  %66 = load i64, ptr %rem, align 8, !dbg !847
  %67 = load i64, ptr %adj_start, align 8, !dbg !848
  %sub77 = sub i64 %67, %66, !dbg !848
  store i64 %sub77, ptr %adj_start, align 8, !dbg !848
  %68 = load i32, ptr %mode.addr, align 4, !dbg !849
  %cmp78 = icmp ne i32 %68, 2, !dbg !851
  br i1 %cmp78, label %if.then80, label %if.end82, !dbg !852

if.then80:                                        ; preds = %if.then76
  %69 = load i64, ptr %alignment.addr, align 8, !dbg !853
  %70 = load i64, ptr %adj_start, align 8, !dbg !854
  %add81 = add i64 %70, %69, !dbg !854
  store i64 %add81, ptr %adj_start, align 8, !dbg !854
  br label %if.end82, !dbg !855

if.end82:                                         ; preds = %if.then80, %if.then76
  %71 = load i64, ptr %adj_start, align 8, !dbg !856
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x290) #12, !dbg !857
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x290, metadata !698, metadata !DIExpression()), !dbg !857
  %72 = load i64, ptr %col_start, align 8, !dbg !857
  store i64 %72, ptr %__UNIQUE_ID___x290, align 8, !dbg !857
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y291) #12, !dbg !857
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y291, metadata !703, metadata !DIExpression()), !dbg !857
  %73 = load i64, ptr %range_start.addr, align 8, !dbg !857
  store i64 %73, ptr %__UNIQUE_ID___y291, align 8, !dbg !857
  %74 = load i64, ptr %__UNIQUE_ID___x290, align 8, !dbg !857
  %75 = load i64, ptr %__UNIQUE_ID___y291, align 8, !dbg !857
  %cmp84 = icmp ugt i64 %74, %75, !dbg !857
  br i1 %cmp84, label %cond.true86, label %cond.false87, !dbg !857

cond.true86:                                      ; preds = %if.end82
  %76 = load i64, ptr %__UNIQUE_ID___x290, align 8, !dbg !857
  br label %cond.end88, !dbg !857

cond.false87:                                     ; preds = %if.end82
  %77 = load i64, ptr %__UNIQUE_ID___y291, align 8, !dbg !857
  br label %cond.end88, !dbg !857

cond.end88:                                       ; preds = %cond.false87, %cond.true86
  %cond89 = phi i64 [ %76, %cond.true86 ], [ %77, %cond.false87 ], !dbg !857
  store i64 %cond89, ptr %tmp83, align 8, !dbg !857
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y291) #12, !dbg !858
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x290) #12, !dbg !858
  %78 = load i64, ptr %tmp83, align 8, !dbg !857
  %cmp90 = icmp ult i64 %71, %78, !dbg !859
  br i1 %cmp90, label %if.then103, label %lor.lhs.false92, !dbg !860

lor.lhs.false92:                                  ; preds = %cond.end88
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x292) #12, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x292, metadata !704, metadata !DIExpression()), !dbg !861
  %79 = load i64, ptr %col_end, align 8, !dbg !861
  store i64 %79, ptr %__UNIQUE_ID___x292, align 8, !dbg !861
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y293) #12, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y293, metadata !706, metadata !DIExpression()), !dbg !861
  %80 = load i64, ptr %range_end.addr, align 8, !dbg !861
  store i64 %80, ptr %__UNIQUE_ID___y293, align 8, !dbg !861
  %81 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !861
  %82 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !861
  %cmp94 = icmp ult i64 %81, %82, !dbg !861
  br i1 %cmp94, label %cond.true96, label %cond.false97, !dbg !861

cond.true96:                                      ; preds = %lor.lhs.false92
  %83 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !861
  br label %cond.end98, !dbg !861

cond.false97:                                     ; preds = %lor.lhs.false92
  %84 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !861
  br label %cond.end98, !dbg !861

cond.end98:                                       ; preds = %cond.false97, %cond.true96
  %cond99 = phi i64 [ %83, %cond.true96 ], [ %84, %cond.false97 ], !dbg !861
  store i64 %cond99, ptr %tmp93, align 8, !dbg !861
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y293) #12, !dbg !862
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x292) #12, !dbg !862
  %85 = load i64, ptr %tmp93, align 8, !dbg !861
  %86 = load i64, ptr %adj_start, align 8, !dbg !863
  %sub100 = sub i64 %85, %86, !dbg !864
  %87 = load i64, ptr %size.addr, align 8, !dbg !865
  %cmp101 = icmp ult i64 %sub100, %87, !dbg !866
  br i1 %cmp101, label %if.then103, label %if.end104, !dbg !867

if.then103:                                       ; preds = %cond.end98, %cond.end88
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !868

if.end104:                                        ; preds = %cond.end98
  %88 = load i64, ptr %adj_end, align 8, !dbg !869
  %89 = load i64, ptr %adj_start, align 8, !dbg !871
  %cmp105 = icmp ule i64 %88, %89, !dbg !872
  br i1 %cmp105, label %if.then111, label %lor.lhs.false107, !dbg !873

lor.lhs.false107:                                 ; preds = %if.end104
  %90 = load i64, ptr %adj_end, align 8, !dbg !874
  %91 = load i64, ptr %adj_start, align 8, !dbg !875
  %sub108 = sub i64 %90, %91, !dbg !876
  %92 = load i64, ptr %size.addr, align 8, !dbg !877
  %cmp109 = icmp ult i64 %sub108, %92, !dbg !878
  br i1 %cmp109, label %if.then111, label %if.end112, !dbg !879

if.then111:                                       ; preds = %lor.lhs.false107, %if.end104
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !880

if.end112:                                        ; preds = %lor.lhs.false107
  br label %if.end113, !dbg !881

if.end113:                                        ; preds = %if.end112, %if.end74
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !882
  br label %cleanup, !dbg !882

cleanup:                                          ; preds = %if.end113, %if.then111, %if.then103
  call void @llvm.lifetime.end.p0(i64 8, ptr %rem) #12, !dbg !882
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup142 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end114, !dbg !883

if.end114:                                        ; preds = %cleanup.cont, %if.end60
  %93 = load ptr, ptr %mm.addr, align 8, !dbg !884
  %94 = load ptr, ptr %node.addr, align 8, !dbg !885
  %mm115 = getelementptr inbounds %struct.drm_mm_node, ptr %94, i32 0, i32 3, !dbg !886
  store ptr %93, ptr %mm115, align 8, !dbg !887
  %95 = load i64, ptr %size.addr, align 8, !dbg !888
  %96 = load ptr, ptr %node.addr, align 8, !dbg !889
  %size116 = getelementptr inbounds %struct.drm_mm_node, ptr %96, i32 0, i32 2, !dbg !890
  store i64 %95, ptr %size116, align 8, !dbg !891
  %97 = load i64, ptr %adj_start, align 8, !dbg !892
  %98 = load ptr, ptr %node.addr, align 8, !dbg !893
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %98, i32 0, i32 1, !dbg !894
  store i64 %97, ptr %start, align 8, !dbg !895
  %99 = load i64, ptr %color.addr, align 8, !dbg !896
  %100 = load ptr, ptr %node.addr, align 8, !dbg !897
  %color117 = getelementptr inbounds %struct.drm_mm_node, ptr %100, i32 0, i32 0, !dbg !898
  store i64 %99, ptr %color117, align 8, !dbg !899
  %101 = load ptr, ptr %node.addr, align 8, !dbg !900
  %hole_size118 = getelementptr inbounds %struct.drm_mm_node, ptr %101, i32 0, i32 10, !dbg !901
  store i64 0, ptr %hole_size118, align 8, !dbg !902
  %102 = load ptr, ptr %node.addr, align 8, !dbg !903
  %flags = getelementptr inbounds %struct.drm_mm_node, ptr %102, i32 0, i32 12, !dbg !903
  %103 = ptrtoint ptr %flags to i64, !dbg !903
  %cmp119 = icmp ne i64 %103, 0, !dbg !903
  %conv120 = zext i1 %cmp119 to i32, !dbg !903
  %104 = call i1 @llvm.is.constant.i32(i32 %conv120), !dbg !903
  br i1 %104, label %land.lhs.true121, label %cond.false129, !dbg !903

land.lhs.true121:                                 ; preds = %if.end114
  %105 = load ptr, ptr %node.addr, align 8, !dbg !903
  %flags122 = getelementptr inbounds %struct.drm_mm_node, ptr %105, i32 0, i32 12, !dbg !903
  %106 = ptrtoint ptr %flags122 to i64, !dbg !903
  %cmp123 = icmp ne i64 %106, 0, !dbg !903
  br i1 %cmp123, label %land.lhs.true125, label %cond.false129, !dbg !903

land.lhs.true125:                                 ; preds = %land.lhs.true121
  %107 = load ptr, ptr %node.addr, align 8, !dbg !903
  %flags126 = getelementptr inbounds %struct.drm_mm_node, ptr %107, i32 0, i32 12, !dbg !903
  %108 = load i64, ptr %flags126, align 8, !dbg !903
  %109 = call i1 @llvm.is.constant.i64(i64 %108), !dbg !903
  br i1 %109, label %cond.true127, label %cond.false129, !dbg !903

cond.true127:                                     ; preds = %land.lhs.true125
  %110 = load ptr, ptr %node.addr, align 8, !dbg !903
  %flags128 = getelementptr inbounds %struct.drm_mm_node, ptr %110, i32 0, i32 12, !dbg !903
  call void @generic___set_bit(i64 noundef 0, ptr noundef %flags128) #11, !dbg !903
  br label %cond.end131, !dbg !903

cond.false129:                                    ; preds = %land.lhs.true125, %land.lhs.true121, %if.end114
  %111 = load ptr, ptr %node.addr, align 8, !dbg !903
  %flags130 = getelementptr inbounds %struct.drm_mm_node, ptr %111, i32 0, i32 12, !dbg !903
  call void @___set_bit(i64 noundef 0, ptr noundef %flags130) #11, !dbg !903
  br label %cond.end131, !dbg !903

cond.end131:                                      ; preds = %cond.false129, %cond.true127
  %112 = load ptr, ptr %node.addr, align 8, !dbg !904
  %node_list = getelementptr inbounds %struct.drm_mm_node, ptr %112, i32 0, i32 4, !dbg !905
  %113 = load ptr, ptr %hole, align 8, !dbg !906
  %node_list132 = getelementptr inbounds %struct.drm_mm_node, ptr %113, i32 0, i32 4, !dbg !907
  call void @list_add(ptr noundef %node_list, ptr noundef %node_list132) #11, !dbg !908
  %114 = load ptr, ptr %hole, align 8, !dbg !909
  %115 = load ptr, ptr %node.addr, align 8, !dbg !910
  call void @drm_mm_interval_tree_add_node(ptr noundef %114, ptr noundef %115) #11, !dbg !911
  %116 = load ptr, ptr %hole, align 8, !dbg !912
  call void @rm_hole(ptr noundef %116) #11, !dbg !913
  %117 = load i64, ptr %adj_start, align 8, !dbg !914
  %118 = load i64, ptr %hole_start, align 8, !dbg !916
  %cmp133 = icmp ugt i64 %117, %118, !dbg !917
  br i1 %cmp133, label %if.then135, label %if.end136, !dbg !918

if.then135:                                       ; preds = %cond.end131
  %119 = load ptr, ptr %hole, align 8, !dbg !919
  call void @add_hole(ptr noundef %119) #11, !dbg !920
  br label %if.end136, !dbg !920

if.end136:                                        ; preds = %if.then135, %cond.end131
  %120 = load i64, ptr %adj_start, align 8, !dbg !921
  %121 = load i64, ptr %size.addr, align 8, !dbg !923
  %add137 = add i64 %120, %121, !dbg !924
  %122 = load i64, ptr %hole_end, align 8, !dbg !925
  %cmp138 = icmp ult i64 %add137, %122, !dbg !926
  br i1 %cmp138, label %if.then140, label %if.end141, !dbg !927

if.then140:                                       ; preds = %if.end136
  %123 = load ptr, ptr %node.addr, align 8, !dbg !928
  call void @add_hole(ptr noundef %123) #11, !dbg !929
  br label %if.end141, !dbg !929

if.end141:                                        ; preds = %if.then140, %if.end136
  %124 = load ptr, ptr %node.addr, align 8, !dbg !930
  call void @save_stack(ptr noundef %124) #11, !dbg !931
  store i32 0, ptr %retval, align 4, !dbg !932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !932

cleanup142:                                       ; preds = %if.end141, %cleanup, %if.then54, %if.then30, %if.then23
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_end) #12, !dbg !933
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_start) #12, !dbg !933
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj_end) #12, !dbg !933
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj_start) #12, !dbg !933
  call void @llvm.lifetime.end.p0(i64 8, ptr %hole_end) #12, !dbg !933
  call void @llvm.lifetime.end.p0(i64 8, ptr %hole_start) #12, !dbg !933
  %cleanup.dest148 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest148, label %cleanup156 [
    i32 2, label %for.end
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup142
  %125 = load i8, ptr %once, align 1, !dbg !934, !range !590, !noundef !591
  %tobool149 = trunc i8 %125 to i1, !dbg !934
  br i1 %tobool149, label %cond.true151, label %cond.false152, !dbg !934

cond.true151:                                     ; preds = %for.inc
  br label %cond.end154, !dbg !934

cond.false152:                                    ; preds = %for.inc
  %126 = load ptr, ptr %mm.addr, align 8, !dbg !935
  %127 = load ptr, ptr %hole, align 8, !dbg !936
  %128 = load i64, ptr %size.addr, align 8, !dbg !937
  %129 = load i32, ptr %mode.addr, align 4, !dbg !938
  %call153 = call ptr @next_hole(ptr noundef %126, ptr noundef %127, i64 noundef %128, i32 noundef %129) #11, !dbg !939
  br label %cond.end154, !dbg !934

cond.end154:                                      ; preds = %cond.false152, %cond.true151
  %cond155 = phi ptr [ null, %cond.true151 ], [ %call153, %cond.false152 ], !dbg !934
  store ptr %cond155, ptr %hole, align 8, !dbg !940
  br label %for.cond, !dbg !941, !llvm.loop !942

for.end:                                          ; preds = %cleanup142, %for.cond
  store i32 -28, ptr %retval, align 4, !dbg !944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup156, !dbg !944

cleanup156:                                       ; preds = %for.end, %cleanup142, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %once) #12, !dbg !945
  call void @llvm.lifetime.end.p0(i64 8, ptr %remainder_mask) #12, !dbg !945
  call void @llvm.lifetime.end.p0(i64 8, ptr %hole) #12, !dbg !945
  %130 = load i32, ptr %retval, align 4, !dbg !945
  ret i32 %130, !dbg !945
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rb_to_hole_size_or_zero(ptr noundef %rb) #0 align 16 !dbg !946 {
entry:
  %rb.addr = alloca ptr, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !950, metadata !DIExpression()), !dbg !951
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !952
  %tobool = icmp ne ptr %0, null, !dbg !952
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !952

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %rb.addr, align 8, !dbg !953
  %call = call i64 @rb_to_hole_size(ptr noundef %1) #11, !dbg !954
  br label %cond.end, !dbg !952

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !952

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ], !dbg !952
  ret i64 %cond, !dbg !955
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #7 align 16 !dbg !956 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !961, metadata !DIExpression()), !dbg !962
  %0 = load i64, ptr %n.addr, align 8, !dbg !963
  %cmp = icmp ne i64 %0, 0, !dbg !964
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !965

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !966
  %2 = load i64, ptr %n.addr, align 8, !dbg !967
  %sub = sub i64 %2, 1, !dbg !968
  %and = and i64 %1, %sub, !dbg !969
  %cmp1 = icmp eq i64 %and, 0, !dbg !970
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !971
  ret i1 %3, !dbg !972
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @first_hole(ptr noundef %mm, i64 noundef %start, i64 noundef %end, i64 noundef %size, i32 noundef %mode) #0 align 16 !dbg !973 {
entry:
  %retval = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %head__ = alloca ptr, align 8
  %pos__ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !977, metadata !DIExpression()), !dbg !988
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !978, metadata !DIExpression()), !dbg !989
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !979, metadata !DIExpression()), !dbg !990
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !980, metadata !DIExpression()), !dbg !991
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !981, metadata !DIExpression()), !dbg !992
  %0 = load i32, ptr %mode.addr, align 4, !dbg !993
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ], !dbg !994

sw.default:                                       ; preds = %entry
  br label %sw.bb, !dbg !995

sw.bb:                                            ; preds = %entry, %sw.default
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !996
  %2 = load i64, ptr %size.addr, align 8, !dbg !997
  %call = call ptr @best_hole(ptr noundef %1, i64 noundef %2) #11, !dbg !998
  store ptr %call, ptr %retval, align 8, !dbg !999
  br label %return, !dbg !999

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !1000
  %4 = load i64, ptr %start.addr, align 8, !dbg !1001
  %5 = load i64, ptr %size.addr, align 8, !dbg !1002
  %call2 = call ptr @find_hole_addr(ptr noundef %3, i64 noundef %4, i64 noundef %5) #11, !dbg !1003
  store ptr %call2, ptr %retval, align 8, !dbg !1004
  br label %return, !dbg !1004

sw.bb3:                                           ; preds = %entry
  %6 = load ptr, ptr %mm.addr, align 8, !dbg !1005
  %7 = load i64, ptr %end.addr, align 8, !dbg !1006
  %8 = load i64, ptr %size.addr, align 8, !dbg !1007
  %call4 = call ptr @find_hole_addr(ptr noundef %6, i64 noundef %7, i64 noundef %8) #11, !dbg !1008
  store ptr %call4, ptr %retval, align 8, !dbg !1009
  br label %return, !dbg !1009

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %head__) #12, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %head__, metadata !982, metadata !DIExpression()), !dbg !1010
  %9 = load ptr, ptr %mm.addr, align 8, !dbg !1010
  %hole_stack = getelementptr inbounds %struct.drm_mm, ptr %9, i32 0, i32 1, !dbg !1010
  store ptr %hole_stack, ptr %head__, align 8, !dbg !1010
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos__) #12, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %pos__, metadata !985, metadata !DIExpression()), !dbg !1010
  br label %do.body, !dbg !1011

do.body:                                          ; preds = %sw.bb5
  br label %do.cond, !dbg !1013

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1013

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %head__, align 8, !dbg !1011
  %next = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !1011
  %11 = load volatile ptr, ptr %next, align 8, !dbg !1011
  store ptr %11, ptr %tmp, align 8, !dbg !1013
  %12 = load ptr, ptr %tmp, align 8, !dbg !1011
  store ptr %12, ptr %pos__, align 8, !dbg !1010
  %13 = load ptr, ptr %pos__, align 8, !dbg !1010
  %14 = load ptr, ptr %head__, align 8, !dbg !1010
  %cmp = icmp ne ptr %13, %14, !dbg !1010
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1010

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !1015
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !986, metadata !DIExpression()), !dbg !1015
  %15 = load ptr, ptr %pos__, align 8, !dbg !1015
  store ptr %15, ptr %__mptr, align 8, !dbg !1015
  %16 = load ptr, ptr %__mptr, align 8, !dbg !1015
  %add.ptr = getelementptr i8, ptr %16, i64 -48, !dbg !1015
  store ptr %add.ptr, ptr %tmp7, align 8, !dbg !1015
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !1010
  %17 = load ptr, ptr %tmp7, align 8, !dbg !1015
  br label %cond.end, !dbg !1010

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !1010

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ null, %cond.false ], !dbg !1010
  store ptr %cond, ptr %tmp6, align 8, !dbg !1010
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos__) #12, !dbg !1016
  call void @llvm.lifetime.end.p0(i64 8, ptr %head__) #12, !dbg !1016
  %18 = load ptr, ptr %tmp6, align 8, !dbg !1010
  store ptr %18, ptr %retval, align 8, !dbg !1017
  br label %return, !dbg !1017

return:                                           ; preds = %cond.end, %sw.bb3, %sw.bb1, %sw.bb
  %19 = load ptr, ptr %retval, align 8, !dbg !1018
  ret ptr %19, !dbg !1018
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div64_u64_rem(i64 noundef %dividend, i64 noundef %divisor, ptr noundef %remainder) #2 align 16 !dbg !1019 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !1024, metadata !DIExpression()), !dbg !1027
  store i64 %divisor, ptr %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !1025, metadata !DIExpression()), !dbg !1028
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !1026, metadata !DIExpression()), !dbg !1029
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !1030
  %1 = load i64, ptr %divisor.addr, align 8, !dbg !1031
  %rem = urem i64 %0, %1, !dbg !1032
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !1033
  store i64 %rem, ptr %2, align 8, !dbg !1034
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !1035
  %4 = load i64, ptr %divisor.addr, align 8, !dbg !1036
  %div = udiv i64 %3, %4, !dbg !1037
  ret i64 %div, !dbg !1038
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @next_hole(ptr noundef %mm, ptr noundef %node, i64 noundef %size, i32 noundef %mode) #0 align 16 !dbg !1039 {
entry:
  %retval = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !1043, metadata !DIExpression()), !dbg !1050
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1044, metadata !DIExpression()), !dbg !1051
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1045, metadata !DIExpression()), !dbg !1052
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !1046, metadata !DIExpression()), !dbg !1053
  %0 = load i32, ptr %mode.addr, align 4, !dbg !1054
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
  ], !dbg !1055

sw.default:                                       ; preds = %entry
  br label %sw.bb, !dbg !1056

sw.bb:                                            ; preds = %entry, %sw.default
  %1 = load ptr, ptr %node.addr, align 8, !dbg !1057
  %rb_hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %1, i32 0, i32 7, !dbg !1058
  %call = call ptr @rb_prev(ptr noundef %rb_hole_size) #11, !dbg !1059
  %call1 = call ptr @rb_hole_size_to_node(ptr noundef %call) #11, !dbg !1060
  store ptr %call1, ptr %retval, align 8, !dbg !1061
  br label %return, !dbg !1061

sw.bb2:                                           ; preds = %entry
  %2 = load ptr, ptr %node.addr, align 8, !dbg !1062
  %3 = load i64, ptr %size.addr, align 8, !dbg !1063
  %call3 = call ptr @next_hole_low_addr(ptr noundef %2, i64 noundef %3) #11, !dbg !1064
  store ptr %call3, ptr %retval, align 8, !dbg !1065
  br label %return, !dbg !1065

sw.bb4:                                           ; preds = %entry
  %4 = load ptr, ptr %node.addr, align 8, !dbg !1066
  %5 = load i64, ptr %size.addr, align 8, !dbg !1067
  %call5 = call ptr @next_hole_high_addr(ptr noundef %4, i64 noundef %5) #11, !dbg !1068
  store ptr %call5, ptr %retval, align 8, !dbg !1069
  br label %return, !dbg !1069

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !1070
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1047, metadata !DIExpression()), !dbg !1070
  %6 = load ptr, ptr %node.addr, align 8, !dbg !1070
  %hole_stack = getelementptr inbounds %struct.drm_mm_node, ptr %6, i32 0, i32 5, !dbg !1070
  %next = getelementptr inbounds %struct.list_head, ptr %hole_stack, i32 0, i32 0, !dbg !1070
  %7 = load ptr, ptr %next, align 8, !dbg !1070
  store ptr %7, ptr %__mptr, align 8, !dbg !1070
  %8 = load ptr, ptr %__mptr, align 8, !dbg !1070
  %add.ptr = getelementptr i8, ptr %8, i64 -48, !dbg !1070
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1070
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !1071
  %9 = load ptr, ptr %tmp, align 8, !dbg !1070
  store ptr %9, ptr %node.addr, align 8, !dbg !1072
  %10 = load ptr, ptr %node.addr, align 8, !dbg !1073
  %hole_stack7 = getelementptr inbounds %struct.drm_mm_node, ptr %10, i32 0, i32 5, !dbg !1074
  %11 = load ptr, ptr %mm.addr, align 8, !dbg !1075
  %hole_stack8 = getelementptr inbounds %struct.drm_mm, ptr %11, i32 0, i32 1, !dbg !1076
  %cmp = icmp eq ptr %hole_stack7, %hole_stack8, !dbg !1077
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1078

cond.true:                                        ; preds = %sw.bb6
  br label %cond.end, !dbg !1078

cond.false:                                       ; preds = %sw.bb6
  %12 = load ptr, ptr %node.addr, align 8, !dbg !1079
  br label %cond.end, !dbg !1078

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %12, %cond.false ], !dbg !1078
  store ptr %cond, ptr %retval, align 8, !dbg !1080
  br label %return, !dbg !1080

return:                                           ; preds = %cond.end, %sw.bb4, %sw.bb2, %sw.bb
  %13 = load ptr, ptr %retval, align 8, !dbg !1081
  ret ptr %13, !dbg !1081
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_mm_remove_node(ptr noundef %node) #0 align 16 !dbg !1082 {
entry:
  %node.addr = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %prev_node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1084, metadata !DIExpression()), !dbg !1089
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #12, !dbg !1090
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !1085, metadata !DIExpression()), !dbg !1091
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1092
  %mm1 = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 3, !dbg !1093
  %1 = load ptr, ptr %mm1, align 8, !dbg !1093
  store ptr %1, ptr %mm, align 8, !dbg !1091
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_node) #12, !dbg !1094
  call void @llvm.dbg.declare(metadata ptr %prev_node, metadata !1086, metadata !DIExpression()), !dbg !1095
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !1096
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1087, metadata !DIExpression()), !dbg !1096
  %2 = load ptr, ptr %node.addr, align 8, !dbg !1096
  %node_list = getelementptr inbounds %struct.drm_mm_node, ptr %2, i32 0, i32 4, !dbg !1096
  %prev = getelementptr inbounds %struct.list_head, ptr %node_list, i32 0, i32 1, !dbg !1096
  %3 = load ptr, ptr %prev, align 8, !dbg !1096
  store ptr %3, ptr %__mptr, align 8, !dbg !1096
  %4 = load ptr, ptr %__mptr, align 8, !dbg !1096
  %add.ptr = getelementptr i8, ptr %4, i64 -32, !dbg !1096
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1096
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !1097
  %5 = load ptr, ptr %tmp, align 8, !dbg !1096
  store ptr %5, ptr %prev_node, align 8, !dbg !1098
  %6 = load ptr, ptr %node.addr, align 8, !dbg !1099
  %call = call zeroext i1 @drm_mm_hole_follows(ptr noundef %6) #11, !dbg !1101
  br i1 %call, label %if.then, label %if.end, !dbg !1102

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %node.addr, align 8, !dbg !1103
  call void @rm_hole(ptr noundef %7) #11, !dbg !1104
  br label %if.end, !dbg !1104

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %node.addr, align 8, !dbg !1105
  %9 = load ptr, ptr %mm, align 8, !dbg !1106
  %interval_tree = getelementptr inbounds %struct.drm_mm, ptr %9, i32 0, i32 3, !dbg !1107
  call void @drm_mm_interval_tree_remove(ptr noundef %8, ptr noundef %interval_tree) #11, !dbg !1108
  %10 = load ptr, ptr %node.addr, align 8, !dbg !1109
  %node_list2 = getelementptr inbounds %struct.drm_mm_node, ptr %10, i32 0, i32 4, !dbg !1110
  call void @list_del(ptr noundef %node_list2) #11, !dbg !1111
  %11 = load ptr, ptr %prev_node, align 8, !dbg !1112
  %call3 = call zeroext i1 @drm_mm_hole_follows(ptr noundef %11) #11, !dbg !1114
  br i1 %call3, label %if.then4, label %if.end5, !dbg !1115

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr %prev_node, align 8, !dbg !1116
  call void @rm_hole(ptr noundef %12) #11, !dbg !1117
  br label %if.end5, !dbg !1117

if.end5:                                          ; preds = %if.then4, %if.end
  %13 = load ptr, ptr %prev_node, align 8, !dbg !1118
  call void @add_hole(ptr noundef %13) #11, !dbg !1119
  %14 = load ptr, ptr %node.addr, align 8, !dbg !1120
  %flags = getelementptr inbounds %struct.drm_mm_node, ptr %14, i32 0, i32 12, !dbg !1121
  call void @clear_bit_unlock(i64 noundef 0, ptr noundef %flags) #11, !dbg !1122
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_node) #12, !dbg !1123
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #12, !dbg !1123
  ret void, !dbg !1123
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_mm_hole_follows(ptr noundef %node) #2 align 16 !dbg !1124 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1128, metadata !DIExpression()), !dbg !1129
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1130
  %hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 10, !dbg !1131
  %1 = load i64, ptr %hole_size, align 8, !dbg !1131
  %tobool = icmp ne i64 %1, 0, !dbg !1130
  ret i1 %tobool, !dbg !1132
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_mm_interval_tree_remove(ptr noundef %node, ptr noundef %root) #2 align 16 !dbg !1133 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1137, metadata !DIExpression()), !dbg !1139
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1138, metadata !DIExpression()), !dbg !1139
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1139
  %rb = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 6, !dbg !1139
  %1 = load ptr, ptr %root.addr, align 8, !dbg !1139
  call void @rb_erase_augmented_cached(ptr noundef %rb, ptr noundef %1, ptr noundef @drm_mm_interval_tree_augment) #11, !dbg !1139
  ret void, !dbg !1139
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #2 align 16 !dbg !1140 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1144, metadata !DIExpression()), !dbg !1145
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1146
  call void @__list_del_entry(ptr noundef %0) #11, !dbg !1147
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1148
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1149
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !1150
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !1151
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !1152
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !1153
  ret void, !dbg !1154
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit_unlock(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !1155 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1160, metadata !DIExpression()), !dbg !1162
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1161, metadata !DIExpression()), !dbg !1163
  br label %do.body, !dbg !1164

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1165

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1167
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1168
  %div = sdiv i64 %1, 64, !dbg !1168
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1169
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !1170
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1171
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1172
  call void @arch_clear_bit_unlock(i64 noundef %2, ptr noundef %3) #11, !dbg !1173
  ret void, !dbg !1174
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_mm_replace_node(ptr noundef %old, ptr noundef %new) #0 align 16 !dbg !1175 {
entry:
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %mm = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1177, metadata !DIExpression()), !dbg !1180
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1178, metadata !DIExpression()), !dbg !1181
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #12, !dbg !1182
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !1179, metadata !DIExpression()), !dbg !1183
  %0 = load ptr, ptr %old.addr, align 8, !dbg !1184
  %mm1 = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 3, !dbg !1185
  %1 = load ptr, ptr %mm1, align 8, !dbg !1185
  store ptr %1, ptr %mm, align 8, !dbg !1183
  %2 = load ptr, ptr %new.addr, align 8, !dbg !1186
  %3 = load ptr, ptr %old.addr, align 8, !dbg !1187
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 168, i1 false), !dbg !1188
  %4 = load ptr, ptr %new.addr, align 8, !dbg !1189
  %flags = getelementptr inbounds %struct.drm_mm_node, ptr %4, i32 0, i32 12, !dbg !1189
  %5 = ptrtoint ptr %flags to i64, !dbg !1189
  %cmp = icmp ne i64 %5, 0, !dbg !1189
  %conv = zext i1 %cmp to i32, !dbg !1189
  %6 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1189
  br i1 %6, label %land.lhs.true, label %cond.false, !dbg !1189

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %new.addr, align 8, !dbg !1189
  %flags2 = getelementptr inbounds %struct.drm_mm_node, ptr %7, i32 0, i32 12, !dbg !1189
  %8 = ptrtoint ptr %flags2 to i64, !dbg !1189
  %cmp3 = icmp ne i64 %8, 0, !dbg !1189
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !1189

land.lhs.true5:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %new.addr, align 8, !dbg !1189
  %flags6 = getelementptr inbounds %struct.drm_mm_node, ptr %9, i32 0, i32 12, !dbg !1189
  %10 = load i64, ptr %flags6, align 8, !dbg !1189
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !1189
  br i1 %11, label %cond.true, label %cond.false, !dbg !1189

cond.true:                                        ; preds = %land.lhs.true5
  %12 = load ptr, ptr %new.addr, align 8, !dbg !1189
  %flags7 = getelementptr inbounds %struct.drm_mm_node, ptr %12, i32 0, i32 12, !dbg !1189
  call void @generic___set_bit(i64 noundef 0, ptr noundef %flags7) #11, !dbg !1189
  br label %cond.end, !dbg !1189

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true, %entry
  %13 = load ptr, ptr %new.addr, align 8, !dbg !1189
  %flags8 = getelementptr inbounds %struct.drm_mm_node, ptr %13, i32 0, i32 12, !dbg !1189
  call void @___set_bit(i64 noundef 0, ptr noundef %flags8) #11, !dbg !1189
  br label %cond.end, !dbg !1189

cond.end:                                         ; preds = %cond.false, %cond.true
  %14 = load ptr, ptr %old.addr, align 8, !dbg !1190
  %node_list = getelementptr inbounds %struct.drm_mm_node, ptr %14, i32 0, i32 4, !dbg !1191
  %15 = load ptr, ptr %new.addr, align 8, !dbg !1192
  %node_list9 = getelementptr inbounds %struct.drm_mm_node, ptr %15, i32 0, i32 4, !dbg !1193
  call void @list_replace(ptr noundef %node_list, ptr noundef %node_list9) #11, !dbg !1194
  %16 = load ptr, ptr %old.addr, align 8, !dbg !1195
  %rb = getelementptr inbounds %struct.drm_mm_node, ptr %16, i32 0, i32 6, !dbg !1196
  %17 = load ptr, ptr %new.addr, align 8, !dbg !1197
  %rb10 = getelementptr inbounds %struct.drm_mm_node, ptr %17, i32 0, i32 6, !dbg !1198
  %18 = load ptr, ptr %mm, align 8, !dbg !1199
  %interval_tree = getelementptr inbounds %struct.drm_mm, ptr %18, i32 0, i32 3, !dbg !1200
  call void @rb_replace_node_cached(ptr noundef %rb, ptr noundef %rb10, ptr noundef %interval_tree) #11, !dbg !1201
  %19 = load ptr, ptr %old.addr, align 8, !dbg !1202
  %call = call zeroext i1 @drm_mm_hole_follows(ptr noundef %19) #11, !dbg !1204
  br i1 %call, label %if.then, label %if.end, !dbg !1205

if.then:                                          ; preds = %cond.end
  %20 = load ptr, ptr %old.addr, align 8, !dbg !1206
  %hole_stack = getelementptr inbounds %struct.drm_mm_node, ptr %20, i32 0, i32 5, !dbg !1208
  %21 = load ptr, ptr %new.addr, align 8, !dbg !1209
  %hole_stack11 = getelementptr inbounds %struct.drm_mm_node, ptr %21, i32 0, i32 5, !dbg !1210
  call void @list_replace(ptr noundef %hole_stack, ptr noundef %hole_stack11) #11, !dbg !1211
  %22 = load ptr, ptr %old.addr, align 8, !dbg !1212
  %rb_hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %22, i32 0, i32 7, !dbg !1213
  %23 = load ptr, ptr %new.addr, align 8, !dbg !1214
  %rb_hole_size12 = getelementptr inbounds %struct.drm_mm_node, ptr %23, i32 0, i32 7, !dbg !1215
  %24 = load ptr, ptr %mm, align 8, !dbg !1216
  %holes_size = getelementptr inbounds %struct.drm_mm, ptr %24, i32 0, i32 4, !dbg !1217
  call void @rb_replace_node_cached(ptr noundef %rb_hole_size, ptr noundef %rb_hole_size12, ptr noundef %holes_size) #11, !dbg !1218
  %25 = load ptr, ptr %old.addr, align 8, !dbg !1219
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, ptr %25, i32 0, i32 8, !dbg !1220
  %26 = load ptr, ptr %new.addr, align 8, !dbg !1221
  %rb_hole_addr13 = getelementptr inbounds %struct.drm_mm_node, ptr %26, i32 0, i32 8, !dbg !1222
  %27 = load ptr, ptr %mm, align 8, !dbg !1223
  %holes_addr = getelementptr inbounds %struct.drm_mm, ptr %27, i32 0, i32 5, !dbg !1224
  call void @rb_replace_node(ptr noundef %rb_hole_addr, ptr noundef %rb_hole_addr13, ptr noundef %holes_addr) #11, !dbg !1225
  br label %if.end, !dbg !1226

if.end:                                           ; preds = %if.then, %cond.end
  %28 = load ptr, ptr %old.addr, align 8, !dbg !1227
  %flags14 = getelementptr inbounds %struct.drm_mm_node, ptr %28, i32 0, i32 12, !dbg !1228
  call void @clear_bit_unlock(i64 noundef 0, ptr noundef %flags14) #11, !dbg !1229
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #12, !dbg !1230
  ret void, !dbg !1230
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_replace(ptr noundef %old, ptr noundef %new) #2 align 16 !dbg !1231 {
entry:
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1233, metadata !DIExpression()), !dbg !1235
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1234, metadata !DIExpression()), !dbg !1236
  %0 = load ptr, ptr %old.addr, align 8, !dbg !1237
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !1238
  %1 = load ptr, ptr %next, align 8, !dbg !1238
  %2 = load ptr, ptr %new.addr, align 8, !dbg !1239
  %next1 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !1240
  store ptr %1, ptr %next1, align 8, !dbg !1241
  %3 = load ptr, ptr %new.addr, align 8, !dbg !1242
  %4 = load ptr, ptr %new.addr, align 8, !dbg !1243
  %next2 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !1244
  %5 = load ptr, ptr %next2, align 8, !dbg !1244
  %prev = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1, !dbg !1245
  store ptr %3, ptr %prev, align 8, !dbg !1246
  %6 = load ptr, ptr %old.addr, align 8, !dbg !1247
  %prev3 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1, !dbg !1248
  %7 = load ptr, ptr %prev3, align 8, !dbg !1248
  %8 = load ptr, ptr %new.addr, align 8, !dbg !1249
  %prev4 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !1250
  store ptr %7, ptr %prev4, align 8, !dbg !1251
  %9 = load ptr, ptr %new.addr, align 8, !dbg !1252
  %10 = load ptr, ptr %new.addr, align 8, !dbg !1253
  %prev5 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1, !dbg !1254
  %11 = load ptr, ptr %prev5, align 8, !dbg !1254
  %next6 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 0, !dbg !1255
  store ptr %9, ptr %next6, align 8, !dbg !1256
  ret void, !dbg !1257
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_replace_node_cached(ptr noundef %victim, ptr noundef %new, ptr noundef %root) #2 align 16 !dbg !1258 {
entry:
  %victim.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %victim, ptr %victim.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %victim.addr, metadata !1263, metadata !DIExpression()), !dbg !1266
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1264, metadata !DIExpression()), !dbg !1267
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !1265, metadata !DIExpression()), !dbg !1268
  %0 = load ptr, ptr %root.addr, align 8, !dbg !1269
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 1, !dbg !1271
  %1 = load ptr, ptr %rb_leftmost, align 8, !dbg !1271
  %2 = load ptr, ptr %victim.addr, align 8, !dbg !1272
  %cmp = icmp eq ptr %1, %2, !dbg !1273
  br i1 %cmp, label %if.then, label %if.end, !dbg !1274

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !1275
  %4 = load ptr, ptr %root.addr, align 8, !dbg !1276
  %rb_leftmost1 = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 1, !dbg !1277
  store ptr %3, ptr %rb_leftmost1, align 8, !dbg !1278
  br label %if.end, !dbg !1276

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %victim.addr, align 8, !dbg !1279
  %6 = load ptr, ptr %new.addr, align 8, !dbg !1280
  %7 = load ptr, ptr %root.addr, align 8, !dbg !1281
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %7, i32 0, i32 0, !dbg !1282
  call void @rb_replace_node(ptr noundef %5, ptr noundef %6, ptr noundef %rb_root) #11, !dbg !1283
  ret void, !dbg !1284
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1285 dso_local void @rb_replace_node(ptr noundef, ptr noundef, ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_mm_scan_init_with_range(ptr noundef %scan, ptr noundef %mm, i64 noundef %size, i64 noundef %alignment, i64 noundef %color, i64 noundef %start, i64 noundef %end, i32 noundef %mode) #0 align 16 !dbg !1289 {
entry:
  %scan.addr = alloca ptr, align 8
  %mm.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %alignment.addr = alloca i64, align 8
  %color.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  store ptr %scan, ptr %scan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scan.addr, metadata !1306, metadata !DIExpression()), !dbg !1314
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !1307, metadata !DIExpression()), !dbg !1315
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1308, metadata !DIExpression()), !dbg !1316
  store i64 %alignment, ptr %alignment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alignment.addr, metadata !1309, metadata !DIExpression()), !dbg !1317
  store i64 %color, ptr %color.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %color.addr, metadata !1310, metadata !DIExpression()), !dbg !1318
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1311, metadata !DIExpression()), !dbg !1319
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1312, metadata !DIExpression()), !dbg !1320
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !1313, metadata !DIExpression()), !dbg !1321
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !1322
  %1 = load ptr, ptr %scan.addr, align 8, !dbg !1323
  %mm1 = getelementptr inbounds %struct.drm_mm_scan, ptr %1, i32 0, i32 0, !dbg !1324
  store ptr %0, ptr %mm1, align 8, !dbg !1325
  %2 = load i64, ptr %alignment.addr, align 8, !dbg !1326
  %cmp = icmp ule i64 %2, 1, !dbg !1328
  br i1 %cmp, label %if.then, label %if.end, !dbg !1329

if.then:                                          ; preds = %entry
  store i64 0, ptr %alignment.addr, align 8, !dbg !1330
  br label %if.end, !dbg !1331

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %color.addr, align 8, !dbg !1332
  %4 = load ptr, ptr %scan.addr, align 8, !dbg !1333
  %color2 = getelementptr inbounds %struct.drm_mm_scan, ptr %4, i32 0, i32 8, !dbg !1334
  store i64 %3, ptr %color2, align 8, !dbg !1335
  %5 = load i64, ptr %alignment.addr, align 8, !dbg !1336
  %6 = load ptr, ptr %scan.addr, align 8, !dbg !1337
  %alignment3 = getelementptr inbounds %struct.drm_mm_scan, ptr %6, i32 0, i32 2, !dbg !1338
  store i64 %5, ptr %alignment3, align 8, !dbg !1339
  %7 = load i64, ptr %alignment.addr, align 8, !dbg !1340
  %call = call zeroext i1 @is_power_of_2(i64 noundef %7) #13, !dbg !1341
  br i1 %call, label %cond.true, label %cond.false, !dbg !1341

cond.true:                                        ; preds = %if.end
  %8 = load i64, ptr %alignment.addr, align 8, !dbg !1342
  %sub = sub i64 %8, 1, !dbg !1343
  br label %cond.end, !dbg !1341

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1341

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !1341
  %9 = load ptr, ptr %scan.addr, align 8, !dbg !1344
  %remainder_mask = getelementptr inbounds %struct.drm_mm_scan, ptr %9, i32 0, i32 3, !dbg !1345
  store i64 %cond, ptr %remainder_mask, align 8, !dbg !1346
  %10 = load i64, ptr %size.addr, align 8, !dbg !1347
  %11 = load ptr, ptr %scan.addr, align 8, !dbg !1348
  %size4 = getelementptr inbounds %struct.drm_mm_scan, ptr %11, i32 0, i32 1, !dbg !1349
  store i64 %10, ptr %size4, align 8, !dbg !1350
  %12 = load i32, ptr %mode.addr, align 4, !dbg !1351
  %13 = load ptr, ptr %scan.addr, align 8, !dbg !1352
  %mode5 = getelementptr inbounds %struct.drm_mm_scan, ptr %13, i32 0, i32 9, !dbg !1353
  store i32 %12, ptr %mode5, align 8, !dbg !1354
  %14 = load i64, ptr %start.addr, align 8, !dbg !1355
  %15 = load ptr, ptr %scan.addr, align 8, !dbg !1356
  %range_start = getelementptr inbounds %struct.drm_mm_scan, ptr %15, i32 0, i32 4, !dbg !1357
  store i64 %14, ptr %range_start, align 8, !dbg !1358
  %16 = load i64, ptr %end.addr, align 8, !dbg !1359
  %17 = load ptr, ptr %scan.addr, align 8, !dbg !1360
  %range_end = getelementptr inbounds %struct.drm_mm_scan, ptr %17, i32 0, i32 5, !dbg !1361
  store i64 %16, ptr %range_end, align 8, !dbg !1362
  %18 = load ptr, ptr %scan.addr, align 8, !dbg !1363
  %hit_start = getelementptr inbounds %struct.drm_mm_scan, ptr %18, i32 0, i32 6, !dbg !1364
  store i64 -1, ptr %hit_start, align 8, !dbg !1365
  %19 = load ptr, ptr %scan.addr, align 8, !dbg !1366
  %hit_end = getelementptr inbounds %struct.drm_mm_scan, ptr %19, i32 0, i32 7, !dbg !1367
  store i64 0, ptr %hit_end, align 8, !dbg !1368
  ret void, !dbg !1369
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @drm_mm_scan_add_block(ptr noundef %scan, ptr noundef %node) #0 align 16 !dbg !1370 {
entry:
  %retval = alloca i1, align 1
  %scan.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %hole = alloca ptr, align 8
  %hole_start = alloca i64, align 8
  %hole_end = alloca i64, align 8
  %col_start = alloca i64, align 8
  %col_end = alloca i64, align 8
  %adj_start = alloca i64, align 8
  %adj_end = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__UNIQUE_ID___x298 = alloca i64, align 8
  %__UNIQUE_ID___y299 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %__UNIQUE_ID___x300 = alloca i64, align 8
  %__UNIQUE_ID___y301 = alloca i64, align 8
  %tmp18 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %rem = alloca i64, align 8
  %__UNIQUE_ID___x302 = alloca i64, align 8
  %__UNIQUE_ID___y303 = alloca i64, align 8
  %tmp58 = alloca i64, align 8
  %__UNIQUE_ID___x304 = alloca i64, align 8
  %__UNIQUE_ID___y305 = alloca i64, align 8
  %tmp69 = alloca i64, align 8
  store ptr %scan, ptr %scan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scan.addr, metadata !1374, metadata !DIExpression()), !dbg !1404
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1375, metadata !DIExpression()), !dbg !1405
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #12, !dbg !1406
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !1376, metadata !DIExpression()), !dbg !1407
  %0 = load ptr, ptr %scan.addr, align 8, !dbg !1408
  %mm1 = getelementptr inbounds %struct.drm_mm_scan, ptr %0, i32 0, i32 0, !dbg !1409
  %1 = load ptr, ptr %mm1, align 8, !dbg !1409
  store ptr %1, ptr %mm, align 8, !dbg !1407
  call void @llvm.lifetime.start.p0(i64 8, ptr %hole) #12, !dbg !1410
  call void @llvm.dbg.declare(metadata ptr %hole, metadata !1377, metadata !DIExpression()), !dbg !1411
  call void @llvm.lifetime.start.p0(i64 8, ptr %hole_start) #12, !dbg !1412
  call void @llvm.dbg.declare(metadata ptr %hole_start, metadata !1378, metadata !DIExpression()), !dbg !1413
  call void @llvm.lifetime.start.p0(i64 8, ptr %hole_end) #12, !dbg !1412
  call void @llvm.dbg.declare(metadata ptr %hole_end, metadata !1379, metadata !DIExpression()), !dbg !1414
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_start) #12, !dbg !1415
  call void @llvm.dbg.declare(metadata ptr %col_start, metadata !1380, metadata !DIExpression()), !dbg !1416
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_end) #12, !dbg !1415
  call void @llvm.dbg.declare(metadata ptr %col_end, metadata !1381, metadata !DIExpression()), !dbg !1417
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj_start) #12, !dbg !1418
  call void @llvm.dbg.declare(metadata ptr %adj_start, metadata !1382, metadata !DIExpression()), !dbg !1419
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj_end) #12, !dbg !1418
  call void @llvm.dbg.declare(metadata ptr %adj_end, metadata !1383, metadata !DIExpression()), !dbg !1420
  %2 = load ptr, ptr %node.addr, align 8, !dbg !1421
  %flags = getelementptr inbounds %struct.drm_mm_node, ptr %2, i32 0, i32 12, !dbg !1421
  %3 = ptrtoint ptr %flags to i64, !dbg !1421
  %cmp = icmp ne i64 %3, 0, !dbg !1421
  %conv = zext i1 %cmp to i32, !dbg !1421
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1421
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !1421

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !1421
  %flags2 = getelementptr inbounds %struct.drm_mm_node, ptr %5, i32 0, i32 12, !dbg !1421
  %6 = ptrtoint ptr %flags2 to i64, !dbg !1421
  %cmp3 = icmp ne i64 %6, 0, !dbg !1421
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !1421

land.lhs.true5:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %node.addr, align 8, !dbg !1421
  %flags6 = getelementptr inbounds %struct.drm_mm_node, ptr %7, i32 0, i32 12, !dbg !1421
  %8 = load i64, ptr %flags6, align 8, !dbg !1421
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !1421
  br i1 %9, label %cond.true, label %cond.false, !dbg !1421

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load ptr, ptr %node.addr, align 8, !dbg !1421
  %flags7 = getelementptr inbounds %struct.drm_mm_node, ptr %10, i32 0, i32 12, !dbg !1421
  call void @generic___set_bit(i64 noundef 1, ptr noundef %flags7) #11, !dbg !1421
  br label %cond.end, !dbg !1421

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true, %entry
  %11 = load ptr, ptr %node.addr, align 8, !dbg !1421
  %flags8 = getelementptr inbounds %struct.drm_mm_node, ptr %11, i32 0, i32 12, !dbg !1421
  call void @___set_bit(i64 noundef 1, ptr noundef %flags8) #11, !dbg !1421
  br label %cond.end, !dbg !1421

cond.end:                                         ; preds = %cond.false, %cond.true
  %12 = load ptr, ptr %mm, align 8, !dbg !1422
  %scan_active = getelementptr inbounds %struct.drm_mm, ptr %12, i32 0, i32 6, !dbg !1423
  %13 = load i64, ptr %scan_active, align 8, !dbg !1424
  %inc = add i64 %13, 1, !dbg !1424
  store i64 %inc, ptr %scan_active, align 8, !dbg !1424
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !1425
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1384, metadata !DIExpression()), !dbg !1425
  %14 = load ptr, ptr %node.addr, align 8, !dbg !1425
  %node_list = getelementptr inbounds %struct.drm_mm_node, ptr %14, i32 0, i32 4, !dbg !1425
  %prev = getelementptr inbounds %struct.list_head, ptr %node_list, i32 0, i32 1, !dbg !1425
  %15 = load ptr, ptr %prev, align 8, !dbg !1425
  store ptr %15, ptr %__mptr, align 8, !dbg !1425
  %16 = load ptr, ptr %__mptr, align 8, !dbg !1425
  %add.ptr = getelementptr i8, ptr %16, i64 -32, !dbg !1425
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1425
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !1426
  %17 = load ptr, ptr %tmp, align 8, !dbg !1425
  store ptr %17, ptr %hole, align 8, !dbg !1427
  %18 = load ptr, ptr %node.addr, align 8, !dbg !1428
  %node_list9 = getelementptr inbounds %struct.drm_mm_node, ptr %18, i32 0, i32 4, !dbg !1429
  call void @__list_del_entry(ptr noundef %node_list9) #11, !dbg !1430
  %19 = load ptr, ptr %hole, align 8, !dbg !1431
  %call = call i64 @__drm_mm_hole_node_start(ptr noundef %19) #11, !dbg !1432
  store i64 %call, ptr %hole_start, align 8, !dbg !1433
  %20 = load ptr, ptr %hole, align 8, !dbg !1434
  %call10 = call i64 @__drm_mm_hole_node_end(ptr noundef %20) #11, !dbg !1435
  store i64 %call10, ptr %hole_end, align 8, !dbg !1436
  %21 = load i64, ptr %hole_start, align 8, !dbg !1437
  store i64 %21, ptr %col_start, align 8, !dbg !1438
  %22 = load i64, ptr %hole_end, align 8, !dbg !1439
  store i64 %22, ptr %col_end, align 8, !dbg !1440
  %23 = load ptr, ptr %mm, align 8, !dbg !1441
  %color_adjust = getelementptr inbounds %struct.drm_mm, ptr %23, i32 0, i32 0, !dbg !1443
  %24 = load ptr, ptr %color_adjust, align 8, !dbg !1443
  %tobool = icmp ne ptr %24, null, !dbg !1441
  br i1 %tobool, label %if.then, label %if.end, !dbg !1444

if.then:                                          ; preds = %cond.end
  %25 = load ptr, ptr %mm, align 8, !dbg !1445
  %color_adjust11 = getelementptr inbounds %struct.drm_mm, ptr %25, i32 0, i32 0, !dbg !1446
  %26 = load ptr, ptr %color_adjust11, align 8, !dbg !1446
  %27 = load ptr, ptr %hole, align 8, !dbg !1447
  %28 = load ptr, ptr %scan.addr, align 8, !dbg !1448
  %color = getelementptr inbounds %struct.drm_mm_scan, ptr %28, i32 0, i32 8, !dbg !1449
  %29 = load i64, ptr %color, align 8, !dbg !1449
  call void %26(ptr noundef %27, i64 noundef %29, ptr noundef %col_start, ptr noundef %col_end) #11, !dbg !1445
  br label %if.end, !dbg !1445

if.end:                                           ; preds = %if.then, %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x298) #12, !dbg !1450
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x298, metadata !1386, metadata !DIExpression()), !dbg !1450
  %30 = load i64, ptr %col_start, align 8, !dbg !1450
  store i64 %30, ptr %__UNIQUE_ID___x298, align 8, !dbg !1450
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y299) #12, !dbg !1450
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y299, metadata !1388, metadata !DIExpression()), !dbg !1450
  %31 = load ptr, ptr %scan.addr, align 8, !dbg !1450
  %range_start = getelementptr inbounds %struct.drm_mm_scan, ptr %31, i32 0, i32 4, !dbg !1450
  %32 = load i64, ptr %range_start, align 8, !dbg !1450
  store i64 %32, ptr %__UNIQUE_ID___y299, align 8, !dbg !1450
  %33 = load i64, ptr %__UNIQUE_ID___x298, align 8, !dbg !1450
  %34 = load i64, ptr %__UNIQUE_ID___y299, align 8, !dbg !1450
  %cmp13 = icmp ugt i64 %33, %34, !dbg !1450
  br i1 %cmp13, label %cond.true15, label %cond.false16, !dbg !1450

cond.true15:                                      ; preds = %if.end
  %35 = load i64, ptr %__UNIQUE_ID___x298, align 8, !dbg !1450
  br label %cond.end17, !dbg !1450

cond.false16:                                     ; preds = %if.end
  %36 = load i64, ptr %__UNIQUE_ID___y299, align 8, !dbg !1450
  br label %cond.end17, !dbg !1450

cond.end17:                                       ; preds = %cond.false16, %cond.true15
  %cond = phi i64 [ %35, %cond.true15 ], [ %36, %cond.false16 ], !dbg !1450
  store i64 %cond, ptr %tmp12, align 8, !dbg !1450
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y299) #12, !dbg !1451
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x298) #12, !dbg !1451
  %37 = load i64, ptr %tmp12, align 8, !dbg !1450
  store i64 %37, ptr %adj_start, align 8, !dbg !1452
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x300) #12, !dbg !1453
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x300, metadata !1389, metadata !DIExpression()), !dbg !1453
  %38 = load i64, ptr %col_end, align 8, !dbg !1453
  store i64 %38, ptr %__UNIQUE_ID___x300, align 8, !dbg !1453
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y301) #12, !dbg !1453
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y301, metadata !1391, metadata !DIExpression()), !dbg !1453
  %39 = load ptr, ptr %scan.addr, align 8, !dbg !1453
  %range_end = getelementptr inbounds %struct.drm_mm_scan, ptr %39, i32 0, i32 5, !dbg !1453
  %40 = load i64, ptr %range_end, align 8, !dbg !1453
  store i64 %40, ptr %__UNIQUE_ID___y301, align 8, !dbg !1453
  %41 = load i64, ptr %__UNIQUE_ID___x300, align 8, !dbg !1453
  %42 = load i64, ptr %__UNIQUE_ID___y301, align 8, !dbg !1453
  %cmp19 = icmp ult i64 %41, %42, !dbg !1453
  br i1 %cmp19, label %cond.true21, label %cond.false22, !dbg !1453

cond.true21:                                      ; preds = %cond.end17
  %43 = load i64, ptr %__UNIQUE_ID___x300, align 8, !dbg !1453
  br label %cond.end23, !dbg !1453

cond.false22:                                     ; preds = %cond.end17
  %44 = load i64, ptr %__UNIQUE_ID___y301, align 8, !dbg !1453
  br label %cond.end23, !dbg !1453

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %cond24 = phi i64 [ %43, %cond.true21 ], [ %44, %cond.false22 ], !dbg !1453
  store i64 %cond24, ptr %tmp18, align 8, !dbg !1453
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y301) #12, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x300) #12, !dbg !1454
  %45 = load i64, ptr %tmp18, align 8, !dbg !1453
  store i64 %45, ptr %adj_end, align 8, !dbg !1455
  %46 = load i64, ptr %adj_end, align 8, !dbg !1456
  %47 = load i64, ptr %adj_start, align 8, !dbg !1458
  %cmp25 = icmp ule i64 %46, %47, !dbg !1459
  br i1 %cmp25, label %if.then29, label %lor.lhs.false, !dbg !1460

lor.lhs.false:                                    ; preds = %cond.end23
  %48 = load i64, ptr %adj_end, align 8, !dbg !1461
  %49 = load i64, ptr %adj_start, align 8, !dbg !1462
  %sub = sub i64 %48, %49, !dbg !1463
  %50 = load ptr, ptr %scan.addr, align 8, !dbg !1464
  %size = getelementptr inbounds %struct.drm_mm_scan, ptr %50, i32 0, i32 1, !dbg !1465
  %51 = load i64, ptr %size, align 8, !dbg !1465
  %cmp27 = icmp ult i64 %sub, %51, !dbg !1466
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !1467

if.then29:                                        ; preds = %lor.lhs.false, %cond.end23
  store i1 false, ptr %retval, align 1, !dbg !1468
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95, !dbg !1468

if.end30:                                         ; preds = %lor.lhs.false
  %52 = load ptr, ptr %scan.addr, align 8, !dbg !1469
  %mode = getelementptr inbounds %struct.drm_mm_scan, ptr %52, i32 0, i32 9, !dbg !1471
  %53 = load i32, ptr %mode, align 8, !dbg !1471
  %cmp31 = icmp eq i32 %53, 2, !dbg !1472
  br i1 %cmp31, label %if.then33, label %if.end36, !dbg !1473

if.then33:                                        ; preds = %if.end30
  %54 = load i64, ptr %adj_end, align 8, !dbg !1474
  %55 = load ptr, ptr %scan.addr, align 8, !dbg !1475
  %size34 = getelementptr inbounds %struct.drm_mm_scan, ptr %55, i32 0, i32 1, !dbg !1476
  %56 = load i64, ptr %size34, align 8, !dbg !1476
  %sub35 = sub i64 %54, %56, !dbg !1477
  store i64 %sub35, ptr %adj_start, align 8, !dbg !1478
  br label %if.end36, !dbg !1479

if.end36:                                         ; preds = %if.then33, %if.end30
  %57 = load ptr, ptr %scan.addr, align 8, !dbg !1480
  %alignment = getelementptr inbounds %struct.drm_mm_scan, ptr %57, i32 0, i32 2, !dbg !1481
  %58 = load i64, ptr %alignment, align 8, !dbg !1481
  %tobool37 = icmp ne i64 %58, 0, !dbg !1480
  br i1 %tobool37, label %if.then38, label %if.end92, !dbg !1482

if.then38:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %rem) #12, !dbg !1483
  call void @llvm.dbg.declare(metadata ptr %rem, metadata !1392, metadata !DIExpression()), !dbg !1484
  %59 = load ptr, ptr %scan.addr, align 8, !dbg !1485
  %remainder_mask = getelementptr inbounds %struct.drm_mm_scan, ptr %59, i32 0, i32 3, !dbg !1485
  %60 = load i64, ptr %remainder_mask, align 8, !dbg !1485
  %tobool39 = icmp ne i64 %60, 0, !dbg !1485
  %lnot = xor i1 %tobool39, true, !dbg !1485
  %lnot40 = xor i1 %lnot, true, !dbg !1485
  %lnot.ext = zext i1 %lnot40 to i32, !dbg !1485
  %conv41 = sext i32 %lnot.ext to i64, !dbg !1485
  %expval = call i64 @llvm.expect.i64(i64 %conv41, i64 1), !dbg !1485
  %tobool42 = icmp ne i64 %expval, 0, !dbg !1485
  br i1 %tobool42, label %if.then43, label %if.else, !dbg !1487

if.then43:                                        ; preds = %if.then38
  %61 = load i64, ptr %adj_start, align 8, !dbg !1488
  %62 = load ptr, ptr %scan.addr, align 8, !dbg !1489
  %remainder_mask44 = getelementptr inbounds %struct.drm_mm_scan, ptr %62, i32 0, i32 3, !dbg !1490
  %63 = load i64, ptr %remainder_mask44, align 8, !dbg !1490
  %and = and i64 %61, %63, !dbg !1491
  store i64 %and, ptr %rem, align 8, !dbg !1492
  br label %if.end47, !dbg !1493

if.else:                                          ; preds = %if.then38
  %64 = load i64, ptr %adj_start, align 8, !dbg !1494
  %65 = load ptr, ptr %scan.addr, align 8, !dbg !1495
  %alignment45 = getelementptr inbounds %struct.drm_mm_scan, ptr %65, i32 0, i32 2, !dbg !1496
  %66 = load i64, ptr %alignment45, align 8, !dbg !1496
  %call46 = call i64 @div64_u64_rem(i64 noundef %64, i64 noundef %66, ptr noundef %rem) #11, !dbg !1497
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then43
  %67 = load i64, ptr %rem, align 8, !dbg !1498
  %tobool48 = icmp ne i64 %67, 0, !dbg !1498
  br i1 %tobool48, label %if.then49, label %if.end91, !dbg !1499

if.then49:                                        ; preds = %if.end47
  %68 = load i64, ptr %rem, align 8, !dbg !1500
  %69 = load i64, ptr %adj_start, align 8, !dbg !1501
  %sub50 = sub i64 %69, %68, !dbg !1501
  store i64 %sub50, ptr %adj_start, align 8, !dbg !1501
  %70 = load ptr, ptr %scan.addr, align 8, !dbg !1502
  %mode51 = getelementptr inbounds %struct.drm_mm_scan, ptr %70, i32 0, i32 9, !dbg !1504
  %71 = load i32, ptr %mode51, align 8, !dbg !1504
  %cmp52 = icmp ne i32 %71, 2, !dbg !1505
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !1506

if.then54:                                        ; preds = %if.then49
  %72 = load ptr, ptr %scan.addr, align 8, !dbg !1507
  %alignment55 = getelementptr inbounds %struct.drm_mm_scan, ptr %72, i32 0, i32 2, !dbg !1508
  %73 = load i64, ptr %alignment55, align 8, !dbg !1508
  %74 = load i64, ptr %adj_start, align 8, !dbg !1509
  %add = add i64 %74, %73, !dbg !1509
  store i64 %add, ptr %adj_start, align 8, !dbg !1509
  br label %if.end56, !dbg !1510

if.end56:                                         ; preds = %if.then54, %if.then49
  %75 = load i64, ptr %adj_start, align 8, !dbg !1511
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x302) #12, !dbg !1512
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x302, metadata !1395, metadata !DIExpression()), !dbg !1512
  %76 = load i64, ptr %col_start, align 8, !dbg !1512
  store i64 %76, ptr %__UNIQUE_ID___x302, align 8, !dbg !1512
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y303) #12, !dbg !1512
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y303, metadata !1400, metadata !DIExpression()), !dbg !1512
  %77 = load ptr, ptr %scan.addr, align 8, !dbg !1512
  %range_start57 = getelementptr inbounds %struct.drm_mm_scan, ptr %77, i32 0, i32 4, !dbg !1512
  %78 = load i64, ptr %range_start57, align 8, !dbg !1512
  store i64 %78, ptr %__UNIQUE_ID___y303, align 8, !dbg !1512
  %79 = load i64, ptr %__UNIQUE_ID___x302, align 8, !dbg !1512
  %80 = load i64, ptr %__UNIQUE_ID___y303, align 8, !dbg !1512
  %cmp59 = icmp ugt i64 %79, %80, !dbg !1512
  br i1 %cmp59, label %cond.true61, label %cond.false62, !dbg !1512

cond.true61:                                      ; preds = %if.end56
  %81 = load i64, ptr %__UNIQUE_ID___x302, align 8, !dbg !1512
  br label %cond.end63, !dbg !1512

cond.false62:                                     ; preds = %if.end56
  %82 = load i64, ptr %__UNIQUE_ID___y303, align 8, !dbg !1512
  br label %cond.end63, !dbg !1512

cond.end63:                                       ; preds = %cond.false62, %cond.true61
  %cond64 = phi i64 [ %81, %cond.true61 ], [ %82, %cond.false62 ], !dbg !1512
  store i64 %cond64, ptr %tmp58, align 8, !dbg !1512
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y303) #12, !dbg !1513
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x302) #12, !dbg !1513
  %83 = load i64, ptr %tmp58, align 8, !dbg !1512
  %cmp65 = icmp ult i64 %75, %83, !dbg !1514
  br i1 %cmp65, label %if.then80, label %lor.lhs.false67, !dbg !1515

lor.lhs.false67:                                  ; preds = %cond.end63
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x304) #12, !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x304, metadata !1401, metadata !DIExpression()), !dbg !1516
  %84 = load i64, ptr %col_end, align 8, !dbg !1516
  store i64 %84, ptr %__UNIQUE_ID___x304, align 8, !dbg !1516
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y305) #12, !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y305, metadata !1403, metadata !DIExpression()), !dbg !1516
  %85 = load ptr, ptr %scan.addr, align 8, !dbg !1516
  %range_end68 = getelementptr inbounds %struct.drm_mm_scan, ptr %85, i32 0, i32 5, !dbg !1516
  %86 = load i64, ptr %range_end68, align 8, !dbg !1516
  store i64 %86, ptr %__UNIQUE_ID___y305, align 8, !dbg !1516
  %87 = load i64, ptr %__UNIQUE_ID___x304, align 8, !dbg !1516
  %88 = load i64, ptr %__UNIQUE_ID___y305, align 8, !dbg !1516
  %cmp70 = icmp ult i64 %87, %88, !dbg !1516
  br i1 %cmp70, label %cond.true72, label %cond.false73, !dbg !1516

cond.true72:                                      ; preds = %lor.lhs.false67
  %89 = load i64, ptr %__UNIQUE_ID___x304, align 8, !dbg !1516
  br label %cond.end74, !dbg !1516

cond.false73:                                     ; preds = %lor.lhs.false67
  %90 = load i64, ptr %__UNIQUE_ID___y305, align 8, !dbg !1516
  br label %cond.end74, !dbg !1516

cond.end74:                                       ; preds = %cond.false73, %cond.true72
  %cond75 = phi i64 [ %89, %cond.true72 ], [ %90, %cond.false73 ], !dbg !1516
  store i64 %cond75, ptr %tmp69, align 8, !dbg !1516
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y305) #12, !dbg !1517
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x304) #12, !dbg !1517
  %91 = load i64, ptr %tmp69, align 8, !dbg !1516
  %92 = load i64, ptr %adj_start, align 8, !dbg !1518
  %sub76 = sub i64 %91, %92, !dbg !1519
  %93 = load ptr, ptr %scan.addr, align 8, !dbg !1520
  %size77 = getelementptr inbounds %struct.drm_mm_scan, ptr %93, i32 0, i32 1, !dbg !1521
  %94 = load i64, ptr %size77, align 8, !dbg !1521
  %cmp78 = icmp ult i64 %sub76, %94, !dbg !1522
  br i1 %cmp78, label %if.then80, label %if.end81, !dbg !1523

if.then80:                                        ; preds = %cond.end74, %cond.end63
  store i1 false, ptr %retval, align 1, !dbg !1524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1524

if.end81:                                         ; preds = %cond.end74
  %95 = load i64, ptr %adj_end, align 8, !dbg !1525
  %96 = load i64, ptr %adj_start, align 8, !dbg !1527
  %cmp82 = icmp ule i64 %95, %96, !dbg !1528
  br i1 %cmp82, label %if.then89, label %lor.lhs.false84, !dbg !1529

lor.lhs.false84:                                  ; preds = %if.end81
  %97 = load i64, ptr %adj_end, align 8, !dbg !1530
  %98 = load i64, ptr %adj_start, align 8, !dbg !1531
  %sub85 = sub i64 %97, %98, !dbg !1532
  %99 = load ptr, ptr %scan.addr, align 8, !dbg !1533
  %size86 = getelementptr inbounds %struct.drm_mm_scan, ptr %99, i32 0, i32 1, !dbg !1534
  %100 = load i64, ptr %size86, align 8, !dbg !1534
  %cmp87 = icmp ult i64 %sub85, %100, !dbg !1535
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !1536

if.then89:                                        ; preds = %lor.lhs.false84, %if.end81
  store i1 false, ptr %retval, align 1, !dbg !1537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1537

if.end90:                                         ; preds = %lor.lhs.false84
  br label %if.end91, !dbg !1538

if.end91:                                         ; preds = %if.end90, %if.end47
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1539
  br label %cleanup, !dbg !1539

cleanup:                                          ; preds = %if.end91, %if.then89, %if.then80
  call void @llvm.lifetime.end.p0(i64 8, ptr %rem) #12, !dbg !1539
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup95 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end92, !dbg !1540

if.end92:                                         ; preds = %cleanup.cont, %if.end36
  %101 = load i64, ptr %adj_start, align 8, !dbg !1541
  %102 = load ptr, ptr %scan.addr, align 8, !dbg !1542
  %hit_start = getelementptr inbounds %struct.drm_mm_scan, ptr %102, i32 0, i32 6, !dbg !1543
  store i64 %101, ptr %hit_start, align 8, !dbg !1544
  %103 = load i64, ptr %adj_start, align 8, !dbg !1545
  %104 = load ptr, ptr %scan.addr, align 8, !dbg !1546
  %size93 = getelementptr inbounds %struct.drm_mm_scan, ptr %104, i32 0, i32 1, !dbg !1547
  %105 = load i64, ptr %size93, align 8, !dbg !1547
  %add94 = add i64 %103, %105, !dbg !1548
  %106 = load ptr, ptr %scan.addr, align 8, !dbg !1549
  %hit_end = getelementptr inbounds %struct.drm_mm_scan, ptr %106, i32 0, i32 7, !dbg !1550
  store i64 %add94, ptr %hit_end, align 8, !dbg !1551
  store i1 true, ptr %retval, align 1, !dbg !1552
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95, !dbg !1552

cleanup95:                                        ; preds = %if.end92, %cleanup, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj_end) #12, !dbg !1553
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj_start) #12, !dbg !1553
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_end) #12, !dbg !1553
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_start) #12, !dbg !1553
  call void @llvm.lifetime.end.p0(i64 8, ptr %hole_end) #12, !dbg !1553
  call void @llvm.lifetime.end.p0(i64 8, ptr %hole_start) #12, !dbg !1553
  call void @llvm.lifetime.end.p0(i64 8, ptr %hole) #12, !dbg !1553
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #12, !dbg !1553
  %107 = load i1, ptr %retval, align 1, !dbg !1553
  ret i1 %107, !dbg !1553
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #2 align 16 !dbg !1554 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1556, metadata !DIExpression()), !dbg !1557
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1558
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #11, !dbg !1560
  br i1 %call, label %if.end, label %if.then, !dbg !1561

if.then:                                          ; preds = %entry
  br label %return, !dbg !1562

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1563
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1564
  %2 = load ptr, ptr %prev, align 8, !dbg !1564
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !1565
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !1566
  %4 = load ptr, ptr %next, align 8, !dbg !1566
  call void @__list_del(ptr noundef %2, ptr noundef %4) #11, !dbg !1567
  br label %return, !dbg !1568

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1568
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__drm_mm_hole_node_end(ptr noundef %hole_node) #2 align 16 !dbg !1569 {
entry:
  %hole_node.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %hole_node, ptr %hole_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hole_node.addr, metadata !1571, metadata !DIExpression()), !dbg !1574
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !1575
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1572, metadata !DIExpression()), !dbg !1575
  %0 = load ptr, ptr %hole_node.addr, align 8, !dbg !1575
  %node_list = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 4, !dbg !1575
  %next = getelementptr inbounds %struct.list_head, ptr %node_list, i32 0, i32 0, !dbg !1575
  %1 = load ptr, ptr %next, align 8, !dbg !1575
  store ptr %1, ptr %__mptr, align 8, !dbg !1575
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1575
  %add.ptr = getelementptr i8, ptr %2, i64 -32, !dbg !1575
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1575
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !1576
  %3 = load ptr, ptr %tmp, align 8, !dbg !1575
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %3, i32 0, i32 1, !dbg !1577
  %4 = load i64, ptr %start, align 8, !dbg !1577
  ret i64 %4, !dbg !1578
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @drm_mm_scan_remove_block(ptr noundef %scan, ptr noundef %node) #0 align 16 !dbg !1579 {
entry:
  %scan.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %prev_node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %scan, ptr %scan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scan.addr, metadata !1581, metadata !DIExpression()), !dbg !1586
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1582, metadata !DIExpression()), !dbg !1587
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_node) #12, !dbg !1588
  call void @llvm.dbg.declare(metadata ptr %prev_node, metadata !1583, metadata !DIExpression()), !dbg !1589
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1590
  %flags = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 12, !dbg !1590
  %1 = ptrtoint ptr %flags to i64, !dbg !1590
  %cmp = icmp ne i64 %1, 0, !dbg !1590
  %conv = zext i1 %cmp to i32, !dbg !1590
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1590
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !1590

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !1590
  %flags1 = getelementptr inbounds %struct.drm_mm_node, ptr %3, i32 0, i32 12, !dbg !1590
  %4 = ptrtoint ptr %flags1 to i64, !dbg !1590
  %cmp2 = icmp ne i64 %4, 0, !dbg !1590
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !1590

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %node.addr, align 8, !dbg !1590
  %flags5 = getelementptr inbounds %struct.drm_mm_node, ptr %5, i32 0, i32 12, !dbg !1590
  %6 = load i64, ptr %flags5, align 8, !dbg !1590
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !1590
  br i1 %7, label %cond.true, label %cond.false, !dbg !1590

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %node.addr, align 8, !dbg !1590
  %flags6 = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 12, !dbg !1590
  call void @generic___clear_bit(i64 noundef 1, ptr noundef %flags6) #11, !dbg !1590
  br label %cond.end, !dbg !1590

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %node.addr, align 8, !dbg !1590
  %flags7 = getelementptr inbounds %struct.drm_mm_node, ptr %9, i32 0, i32 12, !dbg !1590
  call void @___clear_bit(i64 noundef 1, ptr noundef %flags7) #11, !dbg !1590
  br label %cond.end, !dbg !1590

cond.end:                                         ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %node.addr, align 8, !dbg !1591
  %mm = getelementptr inbounds %struct.drm_mm_node, ptr %10, i32 0, i32 3, !dbg !1592
  %11 = load ptr, ptr %mm, align 8, !dbg !1592
  %scan_active = getelementptr inbounds %struct.drm_mm, ptr %11, i32 0, i32 6, !dbg !1593
  %12 = load i64, ptr %scan_active, align 8, !dbg !1594
  %dec = add i64 %12, -1, !dbg !1594
  store i64 %dec, ptr %scan_active, align 8, !dbg !1594
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !1595
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1584, metadata !DIExpression()), !dbg !1595
  %13 = load ptr, ptr %node.addr, align 8, !dbg !1595
  %node_list = getelementptr inbounds %struct.drm_mm_node, ptr %13, i32 0, i32 4, !dbg !1595
  %prev = getelementptr inbounds %struct.list_head, ptr %node_list, i32 0, i32 1, !dbg !1595
  %14 = load ptr, ptr %prev, align 8, !dbg !1595
  store ptr %14, ptr %__mptr, align 8, !dbg !1595
  %15 = load ptr, ptr %__mptr, align 8, !dbg !1595
  %add.ptr = getelementptr i8, ptr %15, i64 -32, !dbg !1595
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1595
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !1596
  %16 = load ptr, ptr %tmp, align 8, !dbg !1595
  store ptr %16, ptr %prev_node, align 8, !dbg !1597
  %17 = load ptr, ptr %node.addr, align 8, !dbg !1598
  %node_list8 = getelementptr inbounds %struct.drm_mm_node, ptr %17, i32 0, i32 4, !dbg !1599
  %18 = load ptr, ptr %prev_node, align 8, !dbg !1600
  %node_list9 = getelementptr inbounds %struct.drm_mm_node, ptr %18, i32 0, i32 4, !dbg !1601
  call void @list_add(ptr noundef %node_list8, ptr noundef %node_list9) #11, !dbg !1602
  %19 = load ptr, ptr %node.addr, align 8, !dbg !1603
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %19, i32 0, i32 1, !dbg !1604
  %20 = load i64, ptr %start, align 8, !dbg !1604
  %21 = load ptr, ptr %node.addr, align 8, !dbg !1605
  %size = getelementptr inbounds %struct.drm_mm_node, ptr %21, i32 0, i32 2, !dbg !1606
  %22 = load i64, ptr %size, align 8, !dbg !1606
  %add = add i64 %20, %22, !dbg !1607
  %23 = load ptr, ptr %scan.addr, align 8, !dbg !1608
  %hit_start = getelementptr inbounds %struct.drm_mm_scan, ptr %23, i32 0, i32 6, !dbg !1609
  %24 = load i64, ptr %hit_start, align 8, !dbg !1609
  %cmp10 = icmp ugt i64 %add, %24, !dbg !1610
  br i1 %cmp10, label %land.rhs, label %land.end, !dbg !1611

land.rhs:                                         ; preds = %cond.end
  %25 = load ptr, ptr %node.addr, align 8, !dbg !1612
  %start12 = getelementptr inbounds %struct.drm_mm_node, ptr %25, i32 0, i32 1, !dbg !1613
  %26 = load i64, ptr %start12, align 8, !dbg !1613
  %27 = load ptr, ptr %scan.addr, align 8, !dbg !1614
  %hit_end = getelementptr inbounds %struct.drm_mm_scan, ptr %27, i32 0, i32 7, !dbg !1615
  %28 = load i64, ptr %hit_end, align 8, !dbg !1615
  %cmp13 = icmp ult i64 %26, %28, !dbg !1616
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %29 = phi i1 [ false, %cond.end ], [ %cmp13, %land.rhs ], !dbg !1617
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_node) #12, !dbg !1618
  ret i1 %29, !dbg !1619
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !1620 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1622, metadata !DIExpression()), !dbg !1626
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1623, metadata !DIExpression()), !dbg !1627
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1624, metadata !DIExpression()), !dbg !1629
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1630
  %rem = urem i64 %0, 64, !dbg !1630
  %shl = shl i64 1, %rem, !dbg !1630
  store i64 %shl, ptr %mask, align 8, !dbg !1629
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !1631
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1625, metadata !DIExpression()), !dbg !1632
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1633
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1634
  %div = udiv i64 %2, 64, !dbg !1634
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !1635
  store ptr %add.ptr, ptr %p, align 8, !dbg !1632
  %3 = load i64, ptr %mask, align 8, !dbg !1636
  %not = xor i64 %3, -1, !dbg !1637
  %4 = load ptr, ptr %p, align 8, !dbg !1638
  %5 = load i64, ptr %4, align 8, !dbg !1639
  %and = and i64 %5, %not, !dbg !1639
  store i64 %and, ptr %4, align 8, !dbg !1639
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !1640
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !1640
  ret void, !dbg !1640
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !1641 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1643, metadata !DIExpression()), !dbg !1645
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1644, metadata !DIExpression()), !dbg !1646
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1647
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1648
  %div = udiv i64 %1, 64, !dbg !1648
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1649
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !1650
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1651
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1652
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !1653
  ret void, !dbg !1654
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_mm_scan_color_evict(ptr noundef %scan) #0 align 16 !dbg !1655 {
entry:
  %retval = alloca ptr, align 8
  %scan.addr = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %hole = alloca ptr, align 8
  %hole_start = alloca i64, align 8
  %hole_end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %__mptr31 = alloca ptr, align 8
  %tmp33 = alloca ptr, align 8
  store ptr %scan, ptr %scan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scan.addr, metadata !1659, metadata !DIExpression()), !dbg !1673
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #12, !dbg !1674
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !1660, metadata !DIExpression()), !dbg !1675
  %0 = load ptr, ptr %scan.addr, align 8, !dbg !1676
  %mm1 = getelementptr inbounds %struct.drm_mm_scan, ptr %0, i32 0, i32 0, !dbg !1677
  %1 = load ptr, ptr %mm1, align 8, !dbg !1677
  store ptr %1, ptr %mm, align 8, !dbg !1675
  call void @llvm.lifetime.start.p0(i64 8, ptr %hole) #12, !dbg !1678
  call void @llvm.dbg.declare(metadata ptr %hole, metadata !1661, metadata !DIExpression()), !dbg !1679
  call void @llvm.lifetime.start.p0(i64 8, ptr %hole_start) #12, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %hole_start, metadata !1662, metadata !DIExpression()), !dbg !1681
  call void @llvm.lifetime.start.p0(i64 8, ptr %hole_end) #12, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %hole_end, metadata !1663, metadata !DIExpression()), !dbg !1682
  %2 = load ptr, ptr %mm, align 8, !dbg !1683
  %color_adjust = getelementptr inbounds %struct.drm_mm, ptr %2, i32 0, i32 0, !dbg !1685
  %3 = load ptr, ptr %color_adjust, align 8, !dbg !1685
  %tobool = icmp ne ptr %3, null, !dbg !1683
  br i1 %tobool, label %if.end, label %if.then, !dbg !1686

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1687
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1687

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !1688
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1664, metadata !DIExpression()), !dbg !1688
  %4 = load ptr, ptr %mm, align 8, !dbg !1688
  %hole_stack = getelementptr inbounds %struct.drm_mm, ptr %4, i32 0, i32 1, !dbg !1688
  %next = getelementptr inbounds %struct.list_head, ptr %hole_stack, i32 0, i32 0, !dbg !1688
  %5 = load ptr, ptr %next, align 8, !dbg !1688
  store ptr %5, ptr %__mptr, align 8, !dbg !1688
  %6 = load ptr, ptr %__mptr, align 8, !dbg !1688
  %add.ptr = getelementptr i8, ptr %6, i64 -48, !dbg !1688
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1688
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !1689
  %7 = load ptr, ptr %tmp, align 8, !dbg !1688
  store ptr %7, ptr %hole, align 8, !dbg !1689
  br label %for.cond, !dbg !1689

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %hole, align 8, !dbg !1690
  %hole_stack2 = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 5, !dbg !1690
  %9 = load ptr, ptr %mm, align 8, !dbg !1690
  %hole_stack3 = getelementptr inbounds %struct.drm_mm, ptr %9, i32 0, i32 1, !dbg !1690
  %cmp = icmp eq ptr %hole_stack2, %hole_stack3, !dbg !1690
  %lnot = xor i1 %cmp, true, !dbg !1690
  br i1 %lnot, label %for.body, label %for.end, !dbg !1689

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %hole, align 8, !dbg !1691
  %call = call i64 @__drm_mm_hole_node_start(ptr noundef %10) #11, !dbg !1693
  store i64 %call, ptr %hole_start, align 8, !dbg !1694
  %11 = load i64, ptr %hole_start, align 8, !dbg !1695
  %12 = load ptr, ptr %hole, align 8, !dbg !1696
  %hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %12, i32 0, i32 10, !dbg !1697
  %13 = load i64, ptr %hole_size, align 8, !dbg !1697
  %add = add i64 %11, %13, !dbg !1698
  store i64 %add, ptr %hole_end, align 8, !dbg !1699
  %14 = load i64, ptr %hole_start, align 8, !dbg !1700
  %15 = load ptr, ptr %scan.addr, align 8, !dbg !1702
  %hit_start = getelementptr inbounds %struct.drm_mm_scan, ptr %15, i32 0, i32 6, !dbg !1703
  %16 = load i64, ptr %hit_start, align 8, !dbg !1703
  %cmp4 = icmp ule i64 %14, %16, !dbg !1704
  br i1 %cmp4, label %land.lhs.true, label %if.end7, !dbg !1705

land.lhs.true:                                    ; preds = %for.body
  %17 = load i64, ptr %hole_end, align 8, !dbg !1706
  %18 = load ptr, ptr %scan.addr, align 8, !dbg !1707
  %hit_end = getelementptr inbounds %struct.drm_mm_scan, ptr %18, i32 0, i32 7, !dbg !1708
  %19 = load i64, ptr %hit_end, align 8, !dbg !1708
  %cmp5 = icmp uge i64 %17, %19, !dbg !1709
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1710

if.then6:                                         ; preds = %land.lhs.true
  br label %for.end, !dbg !1711

if.end7:                                          ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !1712

for.inc:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #12, !dbg !1713
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !1667, metadata !DIExpression()), !dbg !1713
  %20 = load ptr, ptr %hole, align 8, !dbg !1713
  %hole_stack9 = getelementptr inbounds %struct.drm_mm_node, ptr %20, i32 0, i32 5, !dbg !1713
  %next10 = getelementptr inbounds %struct.list_head, ptr %hole_stack9, i32 0, i32 0, !dbg !1713
  %21 = load ptr, ptr %next10, align 8, !dbg !1713
  store ptr %21, ptr %__mptr8, align 8, !dbg !1713
  %22 = load ptr, ptr %__mptr8, align 8, !dbg !1713
  %add.ptr12 = getelementptr i8, ptr %22, i64 -48, !dbg !1713
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !1713
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #12, !dbg !1690
  %23 = load ptr, ptr %tmp11, align 8, !dbg !1713
  store ptr %23, ptr %hole, align 8, !dbg !1690
  br label %for.cond, !dbg !1690, !llvm.loop !1714

for.end:                                          ; preds = %if.then6, %for.cond
  %24 = load ptr, ptr %hole, align 8, !dbg !1716
  %hole_stack13 = getelementptr inbounds %struct.drm_mm_node, ptr %24, i32 0, i32 5, !dbg !1716
  %25 = load ptr, ptr %mm, align 8, !dbg !1716
  %hole_stack14 = getelementptr inbounds %struct.drm_mm, ptr %25, i32 0, i32 1, !dbg !1716
  %cmp15 = icmp eq ptr %hole_stack13, %hole_stack14, !dbg !1716
  %lnot16 = xor i1 %cmp15, true, !dbg !1716
  %lnot17 = xor i1 %lnot16, true, !dbg !1716
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !1716
  %conv = sext i32 %lnot.ext to i64, !dbg !1716
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1716
  %tobool18 = icmp ne i64 %expval, 0, !dbg !1716
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !1718

if.then19:                                        ; preds = %for.end
  store ptr null, ptr %retval, align 8, !dbg !1719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1719

if.end20:                                         ; preds = %for.end
  %26 = load ptr, ptr %mm, align 8, !dbg !1720
  %color_adjust21 = getelementptr inbounds %struct.drm_mm, ptr %26, i32 0, i32 0, !dbg !1721
  %27 = load ptr, ptr %color_adjust21, align 8, !dbg !1721
  %28 = load ptr, ptr %hole, align 8, !dbg !1722
  %29 = load ptr, ptr %scan.addr, align 8, !dbg !1723
  %color = getelementptr inbounds %struct.drm_mm_scan, ptr %29, i32 0, i32 8, !dbg !1724
  %30 = load i64, ptr %color, align 8, !dbg !1724
  call void %27(ptr noundef %28, i64 noundef %30, ptr noundef %hole_start, ptr noundef %hole_end) #11, !dbg !1720
  %31 = load i64, ptr %hole_start, align 8, !dbg !1725
  %32 = load ptr, ptr %scan.addr, align 8, !dbg !1727
  %hit_start22 = getelementptr inbounds %struct.drm_mm_scan, ptr %32, i32 0, i32 6, !dbg !1728
  %33 = load i64, ptr %hit_start22, align 8, !dbg !1728
  %cmp23 = icmp ugt i64 %31, %33, !dbg !1729
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !1730

if.then25:                                        ; preds = %if.end20
  %34 = load ptr, ptr %hole, align 8, !dbg !1731
  store ptr %34, ptr %retval, align 8, !dbg !1732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1732

if.end26:                                         ; preds = %if.end20
  %35 = load i64, ptr %hole_end, align 8, !dbg !1733
  %36 = load ptr, ptr %scan.addr, align 8, !dbg !1734
  %hit_end27 = getelementptr inbounds %struct.drm_mm_scan, ptr %36, i32 0, i32 7, !dbg !1735
  %37 = load i64, ptr %hit_end27, align 8, !dbg !1735
  %cmp28 = icmp ult i64 %35, %37, !dbg !1736
  br i1 %cmp28, label %if.then30, label %if.end35, !dbg !1737

if.then30:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr31) #12, !dbg !1738
  call void @llvm.dbg.declare(metadata ptr %__mptr31, metadata !1670, metadata !DIExpression()), !dbg !1738
  %38 = load ptr, ptr %hole, align 8, !dbg !1738
  %node_list = getelementptr inbounds %struct.drm_mm_node, ptr %38, i32 0, i32 4, !dbg !1738
  %next32 = getelementptr inbounds %struct.list_head, ptr %node_list, i32 0, i32 0, !dbg !1738
  %39 = load ptr, ptr %next32, align 8, !dbg !1738
  store ptr %39, ptr %__mptr31, align 8, !dbg !1738
  %40 = load ptr, ptr %__mptr31, align 8, !dbg !1738
  %add.ptr34 = getelementptr i8, ptr %40, i64 -32, !dbg !1738
  store ptr %add.ptr34, ptr %tmp33, align 8, !dbg !1738
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr31) #12, !dbg !1739
  %41 = load ptr, ptr %tmp33, align 8, !dbg !1738
  store ptr %41, ptr %retval, align 8, !dbg !1740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1740

if.end35:                                         ; preds = %if.end26
  store ptr null, ptr %retval, align 8, !dbg !1741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1741

cleanup:                                          ; preds = %if.end35, %if.then30, %if.then25, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hole_end) #12, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 8, ptr %hole_start) #12, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 8, ptr %hole) #12, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #12, !dbg !1742
  %42 = load ptr, ptr %retval, align 8, !dbg !1742
  ret ptr %42, !dbg !1742
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_mm_init(ptr noundef %mm, i64 noundef %start, i64 noundef %size) #0 align 16 !dbg !1743 {
entry:
  %mm.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %.compoundliteral = alloca %struct.rb_root_cached, align 8
  %.compoundliteral1 = alloca %struct.rb_root_cached, align 8
  %.compoundliteral5 = alloca %struct.rb_root, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !1747, metadata !DIExpression()), !dbg !1750
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1748, metadata !DIExpression()), !dbg !1751
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1749, metadata !DIExpression()), !dbg !1752
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !1753
  %color_adjust = getelementptr inbounds %struct.drm_mm, ptr %0, i32 0, i32 0, !dbg !1754
  store ptr null, ptr %color_adjust, align 8, !dbg !1755
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !1756
  %hole_stack = getelementptr inbounds %struct.drm_mm, ptr %1, i32 0, i32 1, !dbg !1757
  call void @INIT_LIST_HEAD(ptr noundef %hole_stack) #11, !dbg !1758
  %2 = load ptr, ptr %mm.addr, align 8, !dbg !1759
  %interval_tree = getelementptr inbounds %struct.drm_mm, ptr %2, i32 0, i32 3, !dbg !1760
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %.compoundliteral, i32 0, i32 0, !dbg !1761
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !1761
  store ptr null, ptr %rb_node, align 8, !dbg !1761
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %.compoundliteral, i32 0, i32 1, !dbg !1761
  store ptr null, ptr %rb_leftmost, align 8, !dbg !1761
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %interval_tree, ptr align 8 %.compoundliteral, i64 16, i1 false), !dbg !1761
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !1762
  %holes_size = getelementptr inbounds %struct.drm_mm, ptr %3, i32 0, i32 4, !dbg !1763
  %rb_root2 = getelementptr inbounds %struct.rb_root_cached, ptr %.compoundliteral1, i32 0, i32 0, !dbg !1764
  %rb_node3 = getelementptr inbounds %struct.rb_root, ptr %rb_root2, i32 0, i32 0, !dbg !1764
  store ptr null, ptr %rb_node3, align 8, !dbg !1764
  %rb_leftmost4 = getelementptr inbounds %struct.rb_root_cached, ptr %.compoundliteral1, i32 0, i32 1, !dbg !1764
  store ptr null, ptr %rb_leftmost4, align 8, !dbg !1764
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %holes_size, ptr align 8 %.compoundliteral1, i64 16, i1 false), !dbg !1764
  %4 = load ptr, ptr %mm.addr, align 8, !dbg !1765
  %holes_addr = getelementptr inbounds %struct.drm_mm, ptr %4, i32 0, i32 5, !dbg !1766
  %rb_node6 = getelementptr inbounds %struct.rb_root, ptr %.compoundliteral5, i32 0, i32 0, !dbg !1767
  store ptr null, ptr %rb_node6, align 8, !dbg !1767
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %holes_addr, ptr align 8 %.compoundliteral5, i64 8, i1 false), !dbg !1767
  %5 = load ptr, ptr %mm.addr, align 8, !dbg !1768
  %head_node = getelementptr inbounds %struct.drm_mm, ptr %5, i32 0, i32 2, !dbg !1769
  %node_list = getelementptr inbounds %struct.drm_mm_node, ptr %head_node, i32 0, i32 4, !dbg !1770
  call void @INIT_LIST_HEAD(ptr noundef %node_list) #11, !dbg !1771
  %6 = load ptr, ptr %mm.addr, align 8, !dbg !1772
  %head_node7 = getelementptr inbounds %struct.drm_mm, ptr %6, i32 0, i32 2, !dbg !1773
  %flags = getelementptr inbounds %struct.drm_mm_node, ptr %head_node7, i32 0, i32 12, !dbg !1774
  store i64 0, ptr %flags, align 8, !dbg !1775
  %7 = load ptr, ptr %mm.addr, align 8, !dbg !1776
  %8 = load ptr, ptr %mm.addr, align 8, !dbg !1777
  %head_node8 = getelementptr inbounds %struct.drm_mm, ptr %8, i32 0, i32 2, !dbg !1778
  %mm9 = getelementptr inbounds %struct.drm_mm_node, ptr %head_node8, i32 0, i32 3, !dbg !1779
  store ptr %7, ptr %mm9, align 8, !dbg !1780
  %9 = load i64, ptr %start.addr, align 8, !dbg !1781
  %10 = load i64, ptr %size.addr, align 8, !dbg !1782
  %add = add i64 %9, %10, !dbg !1783
  %11 = load ptr, ptr %mm.addr, align 8, !dbg !1784
  %head_node10 = getelementptr inbounds %struct.drm_mm, ptr %11, i32 0, i32 2, !dbg !1785
  %start11 = getelementptr inbounds %struct.drm_mm_node, ptr %head_node10, i32 0, i32 1, !dbg !1786
  store i64 %add, ptr %start11, align 8, !dbg !1787
  %12 = load i64, ptr %size.addr, align 8, !dbg !1788
  %sub = sub i64 0, %12, !dbg !1789
  %13 = load ptr, ptr %mm.addr, align 8, !dbg !1790
  %head_node12 = getelementptr inbounds %struct.drm_mm, ptr %13, i32 0, i32 2, !dbg !1791
  %size13 = getelementptr inbounds %struct.drm_mm_node, ptr %head_node12, i32 0, i32 2, !dbg !1792
  store i64 %sub, ptr %size13, align 8, !dbg !1793
  %14 = load ptr, ptr %mm.addr, align 8, !dbg !1794
  %head_node14 = getelementptr inbounds %struct.drm_mm, ptr %14, i32 0, i32 2, !dbg !1795
  call void @add_hole(ptr noundef %head_node14) #11, !dbg !1796
  %15 = load ptr, ptr %mm.addr, align 8, !dbg !1797
  %scan_active = getelementptr inbounds %struct.drm_mm, ptr %15, i32 0, i32 6, !dbg !1798
  store i64 0, ptr %scan_active, align 8, !dbg !1799
  ret void, !dbg !1800
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #2 align 16 !dbg !1801 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1803, metadata !DIExpression()), !dbg !1804
  br label %do.body, !dbg !1805

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1806

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1808

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1806

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !1810
  %1 = load ptr, ptr %list.addr, align 8, !dbg !1810
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1810
  store volatile ptr %0, ptr %next, align 8, !dbg !1810
  br label %do.end3, !dbg !1810

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1806

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !1812

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !1813

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1815

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1813

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !1817
  %3 = load ptr, ptr %list.addr, align 8, !dbg !1817
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !1817
  store volatile ptr %2, ptr %prev, align 8, !dbg !1817
  br label %do.end9, !dbg !1817

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !1813

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !1819
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_mm_takedown(ptr noundef %mm) #0 align 16 !dbg !1820 {
entry:
  %mm.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !1824, metadata !DIExpression()), !dbg !1832
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !1833
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1825, metadata !DIExpression()), !dbg !1833
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !1833
  %call = call zeroext i1 @drm_mm_clean(ptr noundef %0) #11, !dbg !1833
  %lnot = xor i1 %call, true, !dbg !1833
  %lnot1 = xor i1 %lnot, true, !dbg !1833
  %lnot2 = xor i1 %lnot1, true, !dbg !1833
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1833
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1833
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !1834
  %tobool = icmp ne i32 %1, 0, !dbg !1834
  %lnot3 = xor i1 %tobool, true, !dbg !1834
  %lnot5 = xor i1 %lnot3, true, !dbg !1834
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !1834
  %conv = sext i32 %lnot.ext6 to i64, !dbg !1834
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1834
  %tobool7 = icmp ne i64 %expval, 0, !dbg !1834
  br i1 %tobool7, label %if.then, label %if.end, !dbg !1833

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1834

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !1835

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !1836

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !1836

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str) #11, !dbg !1835
  br label %do.body9, !dbg !1835

do.body9:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !1838
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1828, metadata !DIExpression()), !dbg !1838
  store i32 2313, ptr %__flags, align 4, !dbg !1838
  br label %do.body10, !dbg !1838

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !1839

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !1839

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !1838

do.body13:                                        ; preds = %do.end12
  %2 = load i32, ptr %__flags, align 4, !dbg !1841
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 1000, i32 %2, i64 12) #12, !dbg !1841, !srcloc !1843
  br label %do.cond14, !dbg !1841

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !1841

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !1838

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !1844

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !1844

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !1835
  br label %do.cond19, !dbg !1838

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !1838

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !1835

do.body21:                                        ; preds = %do.end20
  br label %do.cond22, !dbg !1846

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !1846

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !1835

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !1835

do.end25:                                         ; preds = %do.cond24
  br label %if.end, !dbg !1835

if.end:                                           ; preds = %do.end25, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !1833
  %tobool26 = icmp ne i32 %3, 0, !dbg !1833
  %lnot27 = xor i1 %tobool26, true, !dbg !1833
  %lnot29 = xor i1 %lnot27, true, !dbg !1833
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !1833
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !1833
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !1833
  store i64 %expval32, ptr %tmp, align 8, !dbg !1834
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !1848
  %4 = load i64, ptr %tmp, align 8, !dbg !1833
  %tobool33 = icmp ne i64 %4, 0, !dbg !1848
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !1849

if.then34:                                        ; preds = %if.end
  %5 = load ptr, ptr %mm.addr, align 8, !dbg !1850
  call void @show_leaks(ptr noundef %5) #11, !dbg !1851
  br label %if.end35, !dbg !1851

if.end35:                                         ; preds = %if.then34, %if.end
  ret void, !dbg !1852
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_mm_clean(ptr noundef %mm) #2 align 16 !dbg !1853 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !1857, metadata !DIExpression()), !dbg !1858
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !1859
  %head_node = getelementptr inbounds %struct.drm_mm, ptr %0, i32 0, i32 2, !dbg !1859
  %node_list = getelementptr inbounds %struct.drm_mm_node, ptr %head_node, i32 0, i32 4, !dbg !1859
  %call = call i32 @list_empty(ptr noundef %node_list) #11, !dbg !1860
  %tobool = icmp ne i32 %call, 0, !dbg !1860
  ret i1 %tobool, !dbg !1861
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1862 dso_local void @__warn_printk(ptr noundef, ...) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_leaks(ptr noundef %mm) #0 align 16 !dbg !1868 {
entry:
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !1870, metadata !DIExpression()), !dbg !1871
  ret void, !dbg !1872
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_mm_print(ptr noundef %mm, ptr noundef %p) #0 align 16 !dbg !1873 {
entry:
  %mm.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %total_used = alloca i64, align 8
  %total_free = alloca i64, align 8
  %total = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !1910, metadata !DIExpression()), !dbg !1922
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1911, metadata !DIExpression()), !dbg !1923
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #12, !dbg !1924
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1912, metadata !DIExpression()), !dbg !1925
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_used) #12, !dbg !1926
  call void @llvm.dbg.declare(metadata ptr %total_used, metadata !1913, metadata !DIExpression()), !dbg !1927
  store i64 0, ptr %total_used, align 8, !dbg !1927
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_free) #12, !dbg !1926
  call void @llvm.dbg.declare(metadata ptr %total_free, metadata !1914, metadata !DIExpression()), !dbg !1928
  store i64 0, ptr %total_free, align 8, !dbg !1928
  call void @llvm.lifetime.start.p0(i64 8, ptr %total) #12, !dbg !1926
  call void @llvm.dbg.declare(metadata ptr %total, metadata !1915, metadata !DIExpression()), !dbg !1929
  store i64 0, ptr %total, align 8, !dbg !1929
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1930
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !1931
  %head_node = getelementptr inbounds %struct.drm_mm, ptr %1, i32 0, i32 2, !dbg !1932
  %call = call i64 @drm_mm_dump_hole(ptr noundef %0, ptr noundef %head_node) #11, !dbg !1933
  %2 = load i64, ptr %total_free, align 8, !dbg !1934
  %add = add i64 %2, %call, !dbg !1934
  store i64 %add, ptr %total_free, align 8, !dbg !1934
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !1935
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1916, metadata !DIExpression()), !dbg !1935
  %3 = load ptr, ptr %mm.addr, align 8, !dbg !1935
  %head_node2 = getelementptr inbounds %struct.drm_mm, ptr %3, i32 0, i32 2, !dbg !1935
  %node_list = getelementptr inbounds %struct.drm_mm_node, ptr %head_node2, i32 0, i32 4, !dbg !1935
  %next = getelementptr inbounds %struct.list_head, ptr %node_list, i32 0, i32 0, !dbg !1935
  %4 = load ptr, ptr %next, align 8, !dbg !1935
  store ptr %4, ptr %__mptr, align 8, !dbg !1935
  %5 = load ptr, ptr %__mptr, align 8, !dbg !1935
  %add.ptr = getelementptr i8, ptr %5, i64 -32, !dbg !1935
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1935
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !1936
  %6 = load ptr, ptr %tmp, align 8, !dbg !1935
  store ptr %6, ptr %entry1, align 8, !dbg !1936
  br label %for.cond, !dbg !1936

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %entry1, align 8, !dbg !1937
  %node_list3 = getelementptr inbounds %struct.drm_mm_node, ptr %7, i32 0, i32 4, !dbg !1937
  %8 = load ptr, ptr %mm.addr, align 8, !dbg !1937
  %head_node4 = getelementptr inbounds %struct.drm_mm, ptr %8, i32 0, i32 2, !dbg !1937
  %node_list5 = getelementptr inbounds %struct.drm_mm_node, ptr %head_node4, i32 0, i32 4, !dbg !1937
  %cmp = icmp eq ptr %node_list3, %node_list5, !dbg !1937
  %lnot = xor i1 %cmp, true, !dbg !1937
  br i1 %lnot, label %for.body, label %for.end, !dbg !1936

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %p.addr, align 8, !dbg !1938
  %10 = load ptr, ptr %entry1, align 8, !dbg !1940
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %10, i32 0, i32 1, !dbg !1941
  %11 = load i64, ptr %start, align 8, !dbg !1941
  %12 = load ptr, ptr %entry1, align 8, !dbg !1942
  %start6 = getelementptr inbounds %struct.drm_mm_node, ptr %12, i32 0, i32 1, !dbg !1943
  %13 = load i64, ptr %start6, align 8, !dbg !1943
  %14 = load ptr, ptr %entry1, align 8, !dbg !1944
  %size = getelementptr inbounds %struct.drm_mm_node, ptr %14, i32 0, i32 2, !dbg !1945
  %15 = load i64, ptr %size, align 8, !dbg !1945
  %add7 = add i64 %13, %15, !dbg !1946
  %16 = load ptr, ptr %entry1, align 8, !dbg !1947
  %size8 = getelementptr inbounds %struct.drm_mm_node, ptr %16, i32 0, i32 2, !dbg !1948
  %17 = load i64, ptr %size8, align 8, !dbg !1948
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %9, ptr noundef @.str.2, i64 noundef %11, i64 noundef %add7, i64 noundef %17) #11, !dbg !1949
  %18 = load ptr, ptr %entry1, align 8, !dbg !1950
  %size9 = getelementptr inbounds %struct.drm_mm_node, ptr %18, i32 0, i32 2, !dbg !1951
  %19 = load i64, ptr %size9, align 8, !dbg !1951
  %20 = load i64, ptr %total_used, align 8, !dbg !1952
  %add10 = add i64 %20, %19, !dbg !1952
  store i64 %add10, ptr %total_used, align 8, !dbg !1952
  %21 = load ptr, ptr %p.addr, align 8, !dbg !1953
  %22 = load ptr, ptr %entry1, align 8, !dbg !1954
  %call11 = call i64 @drm_mm_dump_hole(ptr noundef %21, ptr noundef %22) #11, !dbg !1955
  %23 = load i64, ptr %total_free, align 8, !dbg !1956
  %add12 = add i64 %23, %call11, !dbg !1956
  store i64 %add12, ptr %total_free, align 8, !dbg !1956
  br label %for.inc, !dbg !1957

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #12, !dbg !1958
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !1919, metadata !DIExpression()), !dbg !1958
  %24 = load ptr, ptr %entry1, align 8, !dbg !1958
  %node_list14 = getelementptr inbounds %struct.drm_mm_node, ptr %24, i32 0, i32 4, !dbg !1958
  %next15 = getelementptr inbounds %struct.list_head, ptr %node_list14, i32 0, i32 0, !dbg !1958
  %25 = load ptr, ptr %next15, align 8, !dbg !1958
  store ptr %25, ptr %__mptr13, align 8, !dbg !1958
  %26 = load ptr, ptr %__mptr13, align 8, !dbg !1958
  %add.ptr17 = getelementptr i8, ptr %26, i64 -32, !dbg !1958
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #12, !dbg !1937
  %27 = load ptr, ptr %tmp16, align 8, !dbg !1958
  store ptr %27, ptr %entry1, align 8, !dbg !1937
  br label %for.cond, !dbg !1937, !llvm.loop !1959

for.end:                                          ; preds = %for.cond
  %28 = load i64, ptr %total_free, align 8, !dbg !1961
  %29 = load i64, ptr %total_used, align 8, !dbg !1962
  %add18 = add i64 %28, %29, !dbg !1963
  store i64 %add18, ptr %total, align 8, !dbg !1964
  %30 = load ptr, ptr %p.addr, align 8, !dbg !1965
  %31 = load i64, ptr %total, align 8, !dbg !1966
  %32 = load i64, ptr %total_used, align 8, !dbg !1967
  %33 = load i64, ptr %total_free, align 8, !dbg !1968
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %30, ptr noundef @.str.3, i64 noundef %31, i64 noundef %32, i64 noundef %33) #11, !dbg !1969
  call void @llvm.lifetime.end.p0(i64 8, ptr %total) #12, !dbg !1970
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_free) #12, !dbg !1970
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_used) #12, !dbg !1970
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #12, !dbg !1970
  ret void, !dbg !1970
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drm_mm_dump_hole(ptr noundef %p, ptr noundef %entry1) #0 align 16 !dbg !1971 {
entry:
  %p.addr = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1975, metadata !DIExpression()), !dbg !1979
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1976, metadata !DIExpression()), !dbg !1980
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #12, !dbg !1981
  call void @llvm.dbg.declare(metadata ptr %start, metadata !1977, metadata !DIExpression()), !dbg !1982
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #12, !dbg !1981
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1978, metadata !DIExpression()), !dbg !1983
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1984
  %hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 10, !dbg !1985
  %1 = load i64, ptr %hole_size, align 8, !dbg !1985
  store i64 %1, ptr %size, align 8, !dbg !1986
  %2 = load i64, ptr %size, align 8, !dbg !1987
  %tobool = icmp ne i64 %2, 0, !dbg !1987
  br i1 %tobool, label %if.then, label %if.end, !dbg !1989

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !1990
  %call = call i64 @drm_mm_hole_node_start(ptr noundef %3) #11, !dbg !1992
  store i64 %call, ptr %start, align 8, !dbg !1993
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1994
  %5 = load i64, ptr %start, align 8, !dbg !1995
  %6 = load i64, ptr %start, align 8, !dbg !1996
  %7 = load i64, ptr %size, align 8, !dbg !1997
  %add = add i64 %6, %7, !dbg !1998
  %8 = load i64, ptr %size, align 8, !dbg !1999
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %4, ptr noundef @.str.4, i64 noundef %5, i64 noundef %add, i64 noundef %8) #11, !dbg !2000
  br label %if.end, !dbg !2001

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, ptr %size, align 8, !dbg !2002
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #12, !dbg !2003
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #12, !dbg !2003
  ret i64 %9, !dbg !2004
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2005 dso_local void @drm_printf(ptr noundef, ptr noundef, ...) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drm_mm_interval_tree_subtree_search(ptr noundef %node, i64 noundef %start, i64 noundef %last) #0 align 16 !dbg !2008 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  %left = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr15 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2012, metadata !DIExpression()), !dbg !2027
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2013, metadata !DIExpression()), !dbg !2027
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !2014, metadata !DIExpression()), !dbg !2027
  br label %while.body, !dbg !2027

while.body:                                       ; preds = %entry, %cleanup, %if.then22
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2028
  %rb = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 6, !dbg !2028
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 2, !dbg !2028
  %1 = load ptr, ptr %rb_left, align 8, !dbg !2028
  %tobool = icmp ne ptr %1, null, !dbg !2028
  br i1 %tobool, label %if.then, label %if.end4, !dbg !2029

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #12, !dbg !2030
  call void @llvm.dbg.declare(metadata ptr %left, metadata !2015, metadata !DIExpression()), !dbg !2030
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2031
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2019, metadata !DIExpression()), !dbg !2031
  %2 = load ptr, ptr %node.addr, align 8, !dbg !2031
  %rb1 = getelementptr inbounds %struct.drm_mm_node, ptr %2, i32 0, i32 6, !dbg !2031
  %rb_left2 = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 2, !dbg !2031
  %3 = load ptr, ptr %rb_left2, align 8, !dbg !2031
  store ptr %3, ptr %__mptr, align 8, !dbg !2031
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2031
  %add.ptr = getelementptr i8, ptr %4, i64 -64, !dbg !2031
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2031
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2030
  %5 = load ptr, ptr %tmp, align 8, !dbg !2031
  store ptr %5, ptr %left, align 8, !dbg !2030
  %6 = load i64, ptr %start.addr, align 8, !dbg !2032
  %7 = load ptr, ptr %left, align 8, !dbg !2032
  %__subtree_last = getelementptr inbounds %struct.drm_mm_node, ptr %7, i32 0, i32 9, !dbg !2032
  %8 = load i64, ptr %__subtree_last, align 8, !dbg !2032
  %cmp = icmp ule i64 %6, %8, !dbg !2032
  br i1 %cmp, label %if.then3, label %if.end, !dbg !2030

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %left, align 8, !dbg !2034
  store ptr %9, ptr %node.addr, align 8, !dbg !2034
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2034, !llvm.loop !2036

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2028
  br label %cleanup, !dbg !2028

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #12, !dbg !2028
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.body
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end4, !dbg !2030

if.end4:                                          ; preds = %cleanup.cont, %while.body
  %10 = load ptr, ptr %node.addr, align 8, !dbg !2037
  %start5 = getelementptr inbounds %struct.drm_mm_node, ptr %10, i32 0, i32 1, !dbg !2037
  %11 = load i64, ptr %start5, align 8, !dbg !2037
  %12 = load i64, ptr %last.addr, align 8, !dbg !2037
  %cmp6 = icmp ule i64 %11, %12, !dbg !2037
  br i1 %cmp6, label %if.then7, label %if.end25, !dbg !2029

if.then7:                                         ; preds = %if.end4
  %13 = load i64, ptr %start.addr, align 8, !dbg !2038
  %14 = load ptr, ptr %node.addr, align 8, !dbg !2038
  %start8 = getelementptr inbounds %struct.drm_mm_node, ptr %14, i32 0, i32 1, !dbg !2038
  %15 = load i64, ptr %start8, align 8, !dbg !2038
  %16 = load ptr, ptr %node.addr, align 8, !dbg !2038
  %size = getelementptr inbounds %struct.drm_mm_node, ptr %16, i32 0, i32 2, !dbg !2038
  %17 = load i64, ptr %size, align 8, !dbg !2038
  %add = add i64 %15, %17, !dbg !2038
  %sub = sub i64 %add, 1, !dbg !2038
  %cmp9 = icmp ule i64 %13, %sub, !dbg !2038
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2040

if.then10:                                        ; preds = %if.then7
  %18 = load ptr, ptr %node.addr, align 8, !dbg !2038
  store ptr %18, ptr %retval, align 8, !dbg !2038
  br label %return, !dbg !2038

if.end11:                                         ; preds = %if.then7
  %19 = load ptr, ptr %node.addr, align 8, !dbg !2041
  %rb12 = getelementptr inbounds %struct.drm_mm_node, ptr %19, i32 0, i32 6, !dbg !2041
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb12, i32 0, i32 1, !dbg !2041
  %20 = load ptr, ptr %rb_right, align 8, !dbg !2041
  %tobool13 = icmp ne ptr %20, null, !dbg !2041
  br i1 %tobool13, label %if.then14, label %if.end24, !dbg !2040

if.then14:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr15) #12, !dbg !2042
  call void @llvm.dbg.declare(metadata ptr %__mptr15, metadata !2021, metadata !DIExpression()), !dbg !2042
  %21 = load ptr, ptr %node.addr, align 8, !dbg !2042
  %rb16 = getelementptr inbounds %struct.drm_mm_node, ptr %21, i32 0, i32 6, !dbg !2042
  %rb_right17 = getelementptr inbounds %struct.rb_node, ptr %rb16, i32 0, i32 1, !dbg !2042
  %22 = load ptr, ptr %rb_right17, align 8, !dbg !2042
  store ptr %22, ptr %__mptr15, align 8, !dbg !2042
  %23 = load ptr, ptr %__mptr15, align 8, !dbg !2042
  %add.ptr19 = getelementptr i8, ptr %23, i64 -64, !dbg !2042
  store ptr %add.ptr19, ptr %tmp18, align 8, !dbg !2042
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr15) #12, !dbg !2043
  %24 = load ptr, ptr %tmp18, align 8, !dbg !2042
  store ptr %24, ptr %node.addr, align 8, !dbg !2043
  %25 = load i64, ptr %start.addr, align 8, !dbg !2044
  %26 = load ptr, ptr %node.addr, align 8, !dbg !2044
  %__subtree_last20 = getelementptr inbounds %struct.drm_mm_node, ptr %26, i32 0, i32 9, !dbg !2044
  %27 = load i64, ptr %__subtree_last20, align 8, !dbg !2044
  %cmp21 = icmp ule i64 %25, %27, !dbg !2044
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2043

if.then22:                                        ; preds = %if.then14
  br label %while.body, !dbg !2044, !llvm.loop !2036

if.end23:                                         ; preds = %if.then14
  br label %if.end24, !dbg !2043

if.end24:                                         ; preds = %if.end23, %if.end11
  br label %if.end25, !dbg !2040

if.end25:                                         ; preds = %if.end24, %if.end4
  store ptr null, ptr %retval, align 8, !dbg !2029
  br label %return, !dbg !2029

return:                                           ; preds = %if.end25, %if.then10
  %28 = load ptr, ptr %retval, align 8, !dbg !2027
  ret ptr %28, !dbg !2027

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @usable_hole_addr(ptr noundef %rb, i64 noundef %size) #0 align 16 !dbg !2046 {
entry:
  %rb.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !2050, metadata !DIExpression()), !dbg !2052
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2051, metadata !DIExpression()), !dbg !2053
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !2054
  %tobool = icmp ne ptr %0, null, !dbg !2054
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2055

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %rb.addr, align 8, !dbg !2056
  %call = call ptr @rb_hole_addr_to_node(ptr noundef %1) #11, !dbg !2057
  %subtree_max_hole = getelementptr inbounds %struct.drm_mm_node, ptr %call, i32 0, i32 11, !dbg !2058
  %2 = load i64, ptr %subtree_max_hole, align 8, !dbg !2058
  %3 = load i64, ptr %size.addr, align 8, !dbg !2059
  %cmp = icmp uge i64 %2, %3, !dbg !2060
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !2061
  ret i1 %4, !dbg !2062
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rb_hole_addr_to_node(ptr noundef %rb) #2 align 16 !dbg !2063 {
entry:
  %rb.addr = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !2067, metadata !DIExpression()), !dbg !2072
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #12, !dbg !2073
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !2068, metadata !DIExpression()), !dbg !2073
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !2073
  store ptr %0, ptr %____ptr, align 8, !dbg !2073
  %1 = load ptr, ptr %____ptr, align 8, !dbg !2073
  %tobool = icmp ne ptr %1, null, !dbg !2073
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2073

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2074
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2070, metadata !DIExpression()), !dbg !2074
  %2 = load ptr, ptr %____ptr, align 8, !dbg !2074
  store ptr %2, ptr %__mptr, align 8, !dbg !2074
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2074
  %add.ptr = getelementptr i8, ptr %3, i64 -112, !dbg !2074
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !2074
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2073
  %4 = load ptr, ptr %tmp1, align 8, !dbg !2074
  br label %cond.end, !dbg !2073

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2073

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !2073
  store ptr %cond, ptr %tmp, align 8, !dbg !2073
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #12, !dbg !2075
  %5 = load ptr, ptr %tmp, align 8, !dbg !2073
  ret ptr %5, !dbg !2076
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !2077 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2089, metadata !DIExpression()), !dbg !2091
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2090, metadata !DIExpression()), !dbg !2092
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2093
  %1 = load i64, ptr %size.addr, align 8, !dbg !2094
  %conv = trunc i64 %1 to i32, !dbg !2094
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !2095
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2096
  %3 = load i64, ptr %size.addr, align 8, !dbg !2096
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #11, !dbg !2096
  ret void, !dbg !2097
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2098 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2101, metadata !DIExpression()), !dbg !2103
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2102, metadata !DIExpression()), !dbg !2104
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2105
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2106
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !2107, !srcloc !2108
  ret void, !dbg !2109
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !2110 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2115, metadata !DIExpression()), !dbg !2117
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2116, metadata !DIExpression()), !dbg !2118
  ret i1 true, !dbg !2119
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !2120 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2125, metadata !DIExpression()), !dbg !2128
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2126, metadata !DIExpression()), !dbg !2129
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2127, metadata !DIExpression()), !dbg !2130
  ret void, !dbg !2131
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !2132 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2136, metadata !DIExpression()), !dbg !2139
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2137, metadata !DIExpression()), !dbg !2140
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2138, metadata !DIExpression()), !dbg !2141
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2142
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !2144
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2145
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11, !dbg !2146
  br i1 %call, label %if.end, label %if.then, !dbg !2147

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !2148

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !2149
  %4 = load ptr, ptr %next.addr, align 8, !dbg !2150
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !2151
  store ptr %3, ptr %prev1, align 8, !dbg !2152
  %5 = load ptr, ptr %next.addr, align 8, !dbg !2153
  %6 = load ptr, ptr %new.addr, align 8, !dbg !2154
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !2155
  store ptr %5, ptr %next2, align 8, !dbg !2156
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !2157
  %8 = load ptr, ptr %new.addr, align 8, !dbg !2158
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !2159
  store ptr %7, ptr %prev3, align 8, !dbg !2160
  br label %do.body, !dbg !2161

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !2162

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !2164

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !2162

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !2166
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !2166
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !2166
  store volatile ptr %9, ptr %next6, align 8, !dbg !2166
  br label %do.end7, !dbg !2166

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !2162

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !2168
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !2169 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2173, metadata !DIExpression()), !dbg !2176
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2174, metadata !DIExpression()), !dbg !2177
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2175, metadata !DIExpression()), !dbg !2178
  ret i1 true, !dbg !2179
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_mm_node_allocated(ptr noundef %node) #2 align 16 !dbg !2180 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2182, metadata !DIExpression()), !dbg !2183
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2184
  %flags = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 12, !dbg !2184
  %1 = ptrtoint ptr %flags to i64, !dbg !2184
  %cmp = icmp ne i64 %1, 0, !dbg !2184
  %conv = zext i1 %cmp to i32, !dbg !2184
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !2184
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !2184

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !2184
  %flags1 = getelementptr inbounds %struct.drm_mm_node, ptr %3, i32 0, i32 12, !dbg !2184
  %4 = ptrtoint ptr %flags1 to i64, !dbg !2184
  %cmp2 = icmp ne i64 %4, 0, !dbg !2184
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !2184

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %node.addr, align 8, !dbg !2184
  %flags5 = getelementptr inbounds %struct.drm_mm_node, ptr %5, i32 0, i32 12, !dbg !2184
  %6 = load i64, ptr %flags5, align 8, !dbg !2184
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !2184
  br i1 %7, label %cond.true, label %cond.false, !dbg !2184

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %node.addr, align 8, !dbg !2184
  %flags6 = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 12, !dbg !2184
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #11, !dbg !2184
  %conv7 = zext i1 %call to i32, !dbg !2184
  br label %cond.end, !dbg !2184

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %node.addr, align 8, !dbg !2184
  %flags8 = getelementptr inbounds %struct.drm_mm_node, ptr %9, i32 0, i32 12, !dbg !2184
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #11, !dbg !2184
  %conv10 = zext i1 %call9 to i32, !dbg !2184
  br label %cond.end, !dbg !2184

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !2184
  %tobool = icmp ne i32 %cond, 0, !dbg !2184
  ret i1 %tobool, !dbg !2185
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_link_node(ptr noundef %node, ptr noundef %parent, ptr noundef %rb_link) #2 align 16 !dbg !2186 {
entry:
  %node.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %rb_link.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2190, metadata !DIExpression()), !dbg !2193
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !2191, metadata !DIExpression()), !dbg !2194
  store ptr %rb_link, ptr %rb_link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_link.addr, metadata !2192, metadata !DIExpression()), !dbg !2195
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !2196
  %1 = ptrtoint ptr %0 to i64, !dbg !2197
  %2 = load ptr, ptr %node.addr, align 8, !dbg !2198
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 0, !dbg !2199
  store i64 %1, ptr %__rb_parent_color, align 8, !dbg !2200
  %3 = load ptr, ptr %node.addr, align 8, !dbg !2201
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1, !dbg !2202
  store ptr null, ptr %rb_right, align 8, !dbg !2203
  %4 = load ptr, ptr %node.addr, align 8, !dbg !2204
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2, !dbg !2205
  store ptr null, ptr %rb_left, align 8, !dbg !2206
  %5 = load ptr, ptr %node.addr, align 8, !dbg !2207
  %6 = load ptr, ptr %rb_link.addr, align 8, !dbg !2208
  store ptr %5, ptr %6, align 8, !dbg !2209
  ret void, !dbg !2210
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_insert_augmented_cached(ptr noundef %node, ptr noundef %root, i1 noundef zeroext %newleft, ptr noundef %augment) #2 align 16 !dbg !2211 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %newleft.addr = alloca i8, align 1
  %augment.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2216, metadata !DIExpression()), !dbg !2220
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2217, metadata !DIExpression()), !dbg !2221
  %frombool = zext i1 %newleft to i8
  store i8 %frombool, ptr %newleft.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %newleft.addr, metadata !2218, metadata !DIExpression()), !dbg !2222
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !2219, metadata !DIExpression()), !dbg !2223
  %0 = load i8, ptr %newleft.addr, align 1, !dbg !2224, !range !590, !noundef !591
  %tobool = trunc i8 %0 to i1, !dbg !2224
  br i1 %tobool, label %if.then, label %if.end, !dbg !2226

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !2227
  %2 = load ptr, ptr %root.addr, align 8, !dbg !2228
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %2, i32 0, i32 1, !dbg !2229
  store ptr %1, ptr %rb_leftmost, align 8, !dbg !2230
  br label %if.end, !dbg !2228

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !2231
  %4 = load ptr, ptr %root.addr, align 8, !dbg !2232
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 0, !dbg !2233
  %5 = load ptr, ptr %augment.addr, align 8, !dbg !2234
  call void @rb_insert_augmented(ptr noundef %3, ptr noundef %rb_root, ptr noundef %5) #11, !dbg !2235
  ret void, !dbg !2236
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2237 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2243, metadata !DIExpression()), !dbg !2248
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2244, metadata !DIExpression()), !dbg !2249
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !2250
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2245, metadata !DIExpression()), !dbg !2251
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2252
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2253
  %div = udiv i64 %1, 64, !dbg !2253
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2254
  store ptr %add.ptr, ptr %p, align 8, !dbg !2251
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !2255
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !2246, metadata !DIExpression()), !dbg !2256
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2257
  %rem = urem i64 %2, 64, !dbg !2257
  %shl = shl i64 1, %rem, !dbg !2257
  store i64 %shl, ptr %mask, align 8, !dbg !2256
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !2258
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2247, metadata !DIExpression()), !dbg !2259
  %3 = load ptr, ptr %p, align 8, !dbg !2260
  %4 = load i64, ptr %3, align 8, !dbg !2261
  store i64 %4, ptr %val, align 8, !dbg !2259
  %5 = load i64, ptr %val, align 8, !dbg !2262
  %6 = load i64, ptr %mask, align 8, !dbg !2263
  %and = and i64 %5, %6, !dbg !2264
  %tobool = icmp ne i64 %and, 0, !dbg !2265
  %lnot = xor i1 %tobool, true, !dbg !2265
  %lnot1 = xor i1 %lnot, true, !dbg !2266
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !2267
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !2267
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !2267
  ret i1 %lnot1, !dbg !2268
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2269 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2271, metadata !DIExpression()), !dbg !2273
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2272, metadata !DIExpression()), !dbg !2274
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2275
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2276
  %div = udiv i64 %1, 64, !dbg !2276
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2277
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !2278
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2279
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2280
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !2281
  ret i1 %call, !dbg !2282
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !2283 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2285, metadata !DIExpression()), !dbg !2287
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2286, metadata !DIExpression()), !dbg !2288
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2289
  %1 = load i64, ptr %size.addr, align 8, !dbg !2290
  %conv = trunc i64 %1 to i32, !dbg !2290
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !2291
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2292
  %3 = load i64, ptr %size.addr, align 8, !dbg !2292
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !2292
  ret void, !dbg !2293
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2294 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2296, metadata !DIExpression()), !dbg !2298
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2297, metadata !DIExpression()), !dbg !2299
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2300
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2301
  br i1 %1, label %cond.true, label %cond.false, !dbg !2301

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2302
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2303
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !2304
  %conv = zext i1 %call to i32, !dbg !2304
  br label %cond.end, !dbg !2301

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2305
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2306
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !2307
  %conv2 = zext i1 %call1 to i32, !dbg !2307
  br label %cond.end, !dbg !2301

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2301
  %tobool = icmp ne i32 %cond, 0, !dbg !2301
  ret i1 %tobool, !dbg !2308
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !2309 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2311, metadata !DIExpression()), !dbg !2313
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2312, metadata !DIExpression()), !dbg !2314
  ret i1 true, !dbg !2315
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2316 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2320, metadata !DIExpression()), !dbg !2322
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2321, metadata !DIExpression()), !dbg !2323
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2324
  %and = and i64 %0, 63, !dbg !2325
  %shl = shl i64 1, %and, !dbg !2326
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2327
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2328
  %shr = ashr i64 %2, 6, !dbg !2329
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !2327
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !2327
  %and1 = and i64 %shl, %3, !dbg !2330
  %cmp = icmp ne i64 %and1, 0, !dbg !2331
  ret i1 %cmp, !dbg !2332
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2333 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2335, metadata !DIExpression()), !dbg !2338
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2336, metadata !DIExpression()), !dbg !2339
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !2340
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !2337, metadata !DIExpression()), !dbg !2341
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2342
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2343
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !2344, !srcloc !2345
  %3 = icmp ult i8 %2, 2, !dbg !2344
  call void @llvm.assume(i1 %3), !dbg !2344
  store i8 %2, ptr %oldbit, align 1, !dbg !2344
  %4 = load i8, ptr %oldbit, align 1, !dbg !2346, !range !590, !noundef !591
  %tobool = trunc i8 %4 to i1, !dbg !2346
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !2347
  ret i1 %tobool, !dbg !2348
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_insert_augmented(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #2 align 16 !dbg !2349 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2353, metadata !DIExpression()), !dbg !2356
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2354, metadata !DIExpression()), !dbg !2357
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !2355, metadata !DIExpression()), !dbg !2358
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2359
  %1 = load ptr, ptr %root.addr, align 8, !dbg !2360
  %2 = load ptr, ptr %augment.addr, align 8, !dbg !2361
  %rotate = getelementptr inbounds %struct.rb_augment_callbacks, ptr %2, i32 0, i32 2, !dbg !2362
  %3 = load ptr, ptr %rotate, align 8, !dbg !2362
  call void @__rb_insert_augmented(ptr noundef %0, ptr noundef %1, ptr noundef %3) #11, !dbg !2363
  ret void, !dbg !2364
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2365 dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_mm_interval_tree_augment_propagate(ptr noundef %rb, ptr noundef %stop) #2 align 16 !dbg !2368 {
entry:
  %rb.addr = alloca ptr, align 8
  %stop.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !2370, metadata !DIExpression()), !dbg !2376
  store ptr %stop, ptr %stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop.addr, metadata !2371, metadata !DIExpression()), !dbg !2376
  br label %while.cond, !dbg !2376

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !2376
  %1 = load ptr, ptr %stop.addr, align 8, !dbg !2376
  %cmp = icmp ne ptr %0, %1, !dbg !2376
  br i1 %cmp, label %while.body, label %while.end, !dbg !2376

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #12, !dbg !2377
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2372, metadata !DIExpression()), !dbg !2377
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2378
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2374, metadata !DIExpression()), !dbg !2378
  %2 = load ptr, ptr %rb.addr, align 8, !dbg !2378
  store ptr %2, ptr %__mptr, align 8, !dbg !2378
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2378
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !2378
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2378
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2377
  %4 = load ptr, ptr %tmp, align 8, !dbg !2378
  store ptr %4, ptr %node, align 8, !dbg !2377
  %5 = load ptr, ptr %node, align 8, !dbg !2379
  %call = call zeroext i1 @drm_mm_interval_tree_augment_compute_max(ptr noundef %5, i1 noundef zeroext true) #11, !dbg !2379
  br i1 %call, label %if.then, label %if.end, !dbg !2377

if.then:                                          ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2379

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %node, align 8, !dbg !2377
  %rb1 = getelementptr inbounds %struct.drm_mm_node, ptr %6, i32 0, i32 6, !dbg !2377
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 0, !dbg !2377
  %7 = load i64, ptr %__rb_parent_color, align 8, !dbg !2377
  %and = and i64 %7, -4, !dbg !2377
  %8 = inttoptr i64 %and to ptr, !dbg !2377
  store ptr %8, ptr %rb.addr, align 8, !dbg !2377
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2376
  br label %cleanup, !dbg !2376

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #12, !dbg !2376
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !2376, !llvm.loop !2381

while.end:                                        ; preds = %cleanup, %while.cond
  ret void, !dbg !2376

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_mm_interval_tree_augment_copy(ptr noundef %rb_old, ptr noundef %rb_new) #2 align 16 !dbg !2382 {
entry:
  %rb_old.addr = alloca ptr, align 8
  %rb_new.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %new = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %rb_old, ptr %rb_old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_old.addr, metadata !2384, metadata !DIExpression()), !dbg !2392
  store ptr %rb_new, ptr %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_new.addr, metadata !2385, metadata !DIExpression()), !dbg !2392
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #12, !dbg !2392
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2386, metadata !DIExpression()), !dbg !2392
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2393
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2387, metadata !DIExpression()), !dbg !2393
  %0 = load ptr, ptr %rb_old.addr, align 8, !dbg !2393
  store ptr %0, ptr %__mptr, align 8, !dbg !2393
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2393
  %add.ptr = getelementptr i8, ptr %1, i64 -64, !dbg !2393
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2393
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2392
  %2 = load ptr, ptr %tmp, align 8, !dbg !2393
  store ptr %2, ptr %old, align 8, !dbg !2392
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #12, !dbg !2392
  call void @llvm.dbg.declare(metadata ptr %new, metadata !2389, metadata !DIExpression()), !dbg !2392
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #12, !dbg !2394
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !2390, metadata !DIExpression()), !dbg !2394
  %3 = load ptr, ptr %rb_new.addr, align 8, !dbg !2394
  store ptr %3, ptr %__mptr1, align 8, !dbg !2394
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !2394
  %add.ptr3 = getelementptr i8, ptr %4, i64 -64, !dbg !2394
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !2394
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #12, !dbg !2392
  %5 = load ptr, ptr %tmp2, align 8, !dbg !2394
  store ptr %5, ptr %new, align 8, !dbg !2392
  %6 = load ptr, ptr %old, align 8, !dbg !2392
  %__subtree_last = getelementptr inbounds %struct.drm_mm_node, ptr %6, i32 0, i32 9, !dbg !2392
  %7 = load i64, ptr %__subtree_last, align 8, !dbg !2392
  %8 = load ptr, ptr %new, align 8, !dbg !2392
  %__subtree_last4 = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 9, !dbg !2392
  store i64 %7, ptr %__subtree_last4, align 8, !dbg !2392
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #12, !dbg !2392
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #12, !dbg !2392
  ret void, !dbg !2392
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_mm_interval_tree_augment_rotate(ptr noundef %rb_old, ptr noundef %rb_new) #0 align 16 !dbg !2395 {
entry:
  %rb_old.addr = alloca ptr, align 8
  %rb_new.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %new = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %rb_old, ptr %rb_old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_old.addr, metadata !2397, metadata !DIExpression()), !dbg !2405
  store ptr %rb_new, ptr %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_new.addr, metadata !2398, metadata !DIExpression()), !dbg !2405
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #12, !dbg !2405
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2399, metadata !DIExpression()), !dbg !2405
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2406
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2400, metadata !DIExpression()), !dbg !2406
  %0 = load ptr, ptr %rb_old.addr, align 8, !dbg !2406
  store ptr %0, ptr %__mptr, align 8, !dbg !2406
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2406
  %add.ptr = getelementptr i8, ptr %1, i64 -64, !dbg !2406
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2406
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2405
  %2 = load ptr, ptr %tmp, align 8, !dbg !2406
  store ptr %2, ptr %old, align 8, !dbg !2405
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #12, !dbg !2405
  call void @llvm.dbg.declare(metadata ptr %new, metadata !2402, metadata !DIExpression()), !dbg !2405
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #12, !dbg !2407
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !2403, metadata !DIExpression()), !dbg !2407
  %3 = load ptr, ptr %rb_new.addr, align 8, !dbg !2407
  store ptr %3, ptr %__mptr1, align 8, !dbg !2407
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !2407
  %add.ptr3 = getelementptr i8, ptr %4, i64 -64, !dbg !2407
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !2407
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #12, !dbg !2405
  %5 = load ptr, ptr %tmp2, align 8, !dbg !2407
  store ptr %5, ptr %new, align 8, !dbg !2405
  %6 = load ptr, ptr %old, align 8, !dbg !2405
  %__subtree_last = getelementptr inbounds %struct.drm_mm_node, ptr %6, i32 0, i32 9, !dbg !2405
  %7 = load i64, ptr %__subtree_last, align 8, !dbg !2405
  %8 = load ptr, ptr %new, align 8, !dbg !2405
  %__subtree_last4 = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 9, !dbg !2405
  store i64 %7, ptr %__subtree_last4, align 8, !dbg !2405
  %9 = load ptr, ptr %old, align 8, !dbg !2405
  %call = call zeroext i1 @drm_mm_interval_tree_augment_compute_max(ptr noundef %9, i1 noundef zeroext false) #11, !dbg !2405
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #12, !dbg !2405
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #12, !dbg !2405
  ret void, !dbg !2405
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_mm_interval_tree_augment_compute_max(ptr noundef %node, i1 noundef zeroext %exit) #2 align 16 !dbg !2408 {
entry:
  %retval = alloca i1, align 1
  %node.addr = alloca ptr, align 8
  %exit.addr = alloca i8, align 1
  %child = alloca ptr, align 8
  %max = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2412, metadata !DIExpression()), !dbg !2424
  %frombool = zext i1 %exit to i8
  store i8 %frombool, ptr %exit.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %exit.addr, metadata !2413, metadata !DIExpression()), !dbg !2424
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #12, !dbg !2424
  call void @llvm.dbg.declare(metadata ptr %child, metadata !2414, metadata !DIExpression()), !dbg !2424
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #12, !dbg !2424
  call void @llvm.dbg.declare(metadata ptr %max, metadata !2415, metadata !DIExpression()), !dbg !2424
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2424
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 1, !dbg !2424
  %1 = load i64, ptr %start, align 8, !dbg !2424
  %2 = load ptr, ptr %node.addr, align 8, !dbg !2424
  %size = getelementptr inbounds %struct.drm_mm_node, ptr %2, i32 0, i32 2, !dbg !2424
  %3 = load i64, ptr %size, align 8, !dbg !2424
  %add = add i64 %1, %3, !dbg !2424
  %sub = sub i64 %add, 1, !dbg !2424
  store i64 %sub, ptr %max, align 8, !dbg !2424
  %4 = load ptr, ptr %node.addr, align 8, !dbg !2425
  %rb = getelementptr inbounds %struct.drm_mm_node, ptr %4, i32 0, i32 6, !dbg !2425
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb, i32 0, i32 2, !dbg !2425
  %5 = load ptr, ptr %rb_left, align 8, !dbg !2425
  %tobool = icmp ne ptr %5, null, !dbg !2425
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2424

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2426
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2416, metadata !DIExpression()), !dbg !2426
  %6 = load ptr, ptr %node.addr, align 8, !dbg !2426
  %rb1 = getelementptr inbounds %struct.drm_mm_node, ptr %6, i32 0, i32 6, !dbg !2426
  %rb_left2 = getelementptr inbounds %struct.rb_node, ptr %rb1, i32 0, i32 2, !dbg !2426
  %7 = load ptr, ptr %rb_left2, align 8, !dbg !2426
  store ptr %7, ptr %__mptr, align 8, !dbg !2426
  %8 = load ptr, ptr %__mptr, align 8, !dbg !2426
  %add.ptr = getelementptr i8, ptr %8, i64 -64, !dbg !2426
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2426
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2427
  %9 = load ptr, ptr %tmp, align 8, !dbg !2426
  store ptr %9, ptr %child, align 8, !dbg !2427
  %10 = load ptr, ptr %child, align 8, !dbg !2428
  %__subtree_last = getelementptr inbounds %struct.drm_mm_node, ptr %10, i32 0, i32 9, !dbg !2428
  %11 = load i64, ptr %__subtree_last, align 8, !dbg !2428
  %12 = load i64, ptr %max, align 8, !dbg !2428
  %cmp = icmp ugt i64 %11, %12, !dbg !2428
  br i1 %cmp, label %if.then3, label %if.end, !dbg !2427

if.then3:                                         ; preds = %if.then
  %13 = load ptr, ptr %child, align 8, !dbg !2428
  %__subtree_last4 = getelementptr inbounds %struct.drm_mm_node, ptr %13, i32 0, i32 9, !dbg !2428
  %14 = load i64, ptr %__subtree_last4, align 8, !dbg !2428
  store i64 %14, ptr %max, align 8, !dbg !2428
  br label %if.end, !dbg !2428

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5, !dbg !2427

if.end5:                                          ; preds = %if.end, %entry
  %15 = load ptr, ptr %node.addr, align 8, !dbg !2430
  %rb6 = getelementptr inbounds %struct.drm_mm_node, ptr %15, i32 0, i32 6, !dbg !2430
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb6, i32 0, i32 1, !dbg !2430
  %16 = load ptr, ptr %rb_right, align 8, !dbg !2430
  %tobool7 = icmp ne ptr %16, null, !dbg !2430
  br i1 %tobool7, label %if.then8, label %if.end19, !dbg !2424

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #12, !dbg !2431
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !2420, metadata !DIExpression()), !dbg !2431
  %17 = load ptr, ptr %node.addr, align 8, !dbg !2431
  %rb10 = getelementptr inbounds %struct.drm_mm_node, ptr %17, i32 0, i32 6, !dbg !2431
  %rb_right11 = getelementptr inbounds %struct.rb_node, ptr %rb10, i32 0, i32 1, !dbg !2431
  %18 = load ptr, ptr %rb_right11, align 8, !dbg !2431
  store ptr %18, ptr %__mptr9, align 8, !dbg !2431
  %19 = load ptr, ptr %__mptr9, align 8, !dbg !2431
  %add.ptr13 = getelementptr i8, ptr %19, i64 -64, !dbg !2431
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !2431
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #12, !dbg !2432
  %20 = load ptr, ptr %tmp12, align 8, !dbg !2431
  store ptr %20, ptr %child, align 8, !dbg !2432
  %21 = load ptr, ptr %child, align 8, !dbg !2433
  %__subtree_last14 = getelementptr inbounds %struct.drm_mm_node, ptr %21, i32 0, i32 9, !dbg !2433
  %22 = load i64, ptr %__subtree_last14, align 8, !dbg !2433
  %23 = load i64, ptr %max, align 8, !dbg !2433
  %cmp15 = icmp ugt i64 %22, %23, !dbg !2433
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !2432

if.then16:                                        ; preds = %if.then8
  %24 = load ptr, ptr %child, align 8, !dbg !2433
  %__subtree_last17 = getelementptr inbounds %struct.drm_mm_node, ptr %24, i32 0, i32 9, !dbg !2433
  %25 = load i64, ptr %__subtree_last17, align 8, !dbg !2433
  store i64 %25, ptr %max, align 8, !dbg !2433
  br label %if.end18, !dbg !2433

if.end18:                                         ; preds = %if.then16, %if.then8
  br label %if.end19, !dbg !2432

if.end19:                                         ; preds = %if.end18, %if.end5
  %26 = load i8, ptr %exit.addr, align 1, !dbg !2435, !range !590, !noundef !591
  %tobool20 = trunc i8 %26 to i1, !dbg !2435
  br i1 %tobool20, label %land.lhs.true, label %if.end24, !dbg !2435

land.lhs.true:                                    ; preds = %if.end19
  %27 = load ptr, ptr %node.addr, align 8, !dbg !2435
  %__subtree_last21 = getelementptr inbounds %struct.drm_mm_node, ptr %27, i32 0, i32 9, !dbg !2435
  %28 = load i64, ptr %__subtree_last21, align 8, !dbg !2435
  %29 = load i64, ptr %max, align 8, !dbg !2435
  %cmp22 = icmp eq i64 %28, %29, !dbg !2435
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !2424

if.then23:                                        ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !2435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2435

if.end24:                                         ; preds = %land.lhs.true, %if.end19
  %30 = load i64, ptr %max, align 8, !dbg !2424
  %31 = load ptr, ptr %node.addr, align 8, !dbg !2424
  %__subtree_last25 = getelementptr inbounds %struct.drm_mm_node, ptr %31, i32 0, i32 9, !dbg !2424
  store i64 %30, ptr %__subtree_last25, align 8, !dbg !2424
  store i1 false, ptr %retval, align 1, !dbg !2424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2424

cleanup:                                          ; preds = %if.end24, %if.then23
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #12, !dbg !2424
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #12, !dbg !2424
  %32 = load i1, ptr %retval, align 1, !dbg !2424
  ret i1 %32, !dbg !2424
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rb_erase_cached(ptr noundef %node, ptr noundef %root) #2 align 16 !dbg !2437 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %leftmost = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2441, metadata !DIExpression()), !dbg !2444
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2442, metadata !DIExpression()), !dbg !2445
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftmost) #12, !dbg !2446
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !2443, metadata !DIExpression()), !dbg !2447
  store ptr null, ptr %leftmost, align 8, !dbg !2447
  %0 = load ptr, ptr %root.addr, align 8, !dbg !2448
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 1, !dbg !2450
  %1 = load ptr, ptr %rb_leftmost, align 8, !dbg !2450
  %2 = load ptr, ptr %node.addr, align 8, !dbg !2451
  %cmp = icmp eq ptr %1, %2, !dbg !2452
  br i1 %cmp, label %if.then, label %if.end, !dbg !2453

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !2454
  %call = call ptr @rb_next(ptr noundef %3) #11, !dbg !2455
  %4 = load ptr, ptr %root.addr, align 8, !dbg !2456
  %rb_leftmost1 = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 1, !dbg !2457
  store ptr %call, ptr %rb_leftmost1, align 8, !dbg !2458
  store ptr %call, ptr %leftmost, align 8, !dbg !2459
  br label %if.end, !dbg !2460

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !2461
  %6 = load ptr, ptr %root.addr, align 8, !dbg !2462
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %6, i32 0, i32 0, !dbg !2463
  call void @rb_erase(ptr noundef %5, ptr noundef %rb_root) #11, !dbg !2464
  %7 = load ptr, ptr %leftmost, align 8, !dbg !2465
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftmost) #12, !dbg !2466
  ret ptr %7, !dbg !2467
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_erase_augmented(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #6 align 16 !dbg !2468 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  %rebalance = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2470, metadata !DIExpression()), !dbg !2474
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2471, metadata !DIExpression()), !dbg !2475
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !2472, metadata !DIExpression()), !dbg !2476
  call void @llvm.lifetime.start.p0(i64 8, ptr %rebalance) #12, !dbg !2477
  call void @llvm.dbg.declare(metadata ptr %rebalance, metadata !2473, metadata !DIExpression()), !dbg !2478
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2479
  %1 = load ptr, ptr %root.addr, align 8, !dbg !2480
  %2 = load ptr, ptr %augment.addr, align 8, !dbg !2481
  %call = call ptr @__rb_erase_augmented(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11, !dbg !2482
  store ptr %call, ptr %rebalance, align 8, !dbg !2478
  %3 = load ptr, ptr %rebalance, align 8, !dbg !2483
  %tobool = icmp ne ptr %3, null, !dbg !2483
  br i1 %tobool, label %if.then, label %if.end, !dbg !2485

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %rebalance, align 8, !dbg !2486
  %5 = load ptr, ptr %root.addr, align 8, !dbg !2487
  %6 = load ptr, ptr %augment.addr, align 8, !dbg !2488
  %rotate = getelementptr inbounds %struct.rb_augment_callbacks, ptr %6, i32 0, i32 2, !dbg !2489
  %7 = load ptr, ptr %rotate, align 8, !dbg !2489
  call void @__rb_erase_color(ptr noundef %4, ptr noundef %5, ptr noundef %7) #11, !dbg !2490
  br label %if.end, !dbg !2490

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %rebalance) #12, !dbg !2491
  ret void, !dbg !2491
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2492 dso_local ptr @rb_next(ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2497 dso_local void @rb_erase(ptr noundef, ptr noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__rb_erase_augmented(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #6 align 16 !dbg !2500 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %rebalance = alloca ptr, align 8
  %pc = alloca i64, align 8
  %successor = alloca ptr, align 8
  %child2 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2504, metadata !DIExpression()), !dbg !2517
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2505, metadata !DIExpression()), !dbg !2518
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !2506, metadata !DIExpression()), !dbg !2519
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #12, !dbg !2520
  call void @llvm.dbg.declare(metadata ptr %child, metadata !2507, metadata !DIExpression()), !dbg !2521
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2522
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 1, !dbg !2523
  %1 = load ptr, ptr %rb_right, align 8, !dbg !2523
  store ptr %1, ptr %child, align 8, !dbg !2521
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !2524
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2508, metadata !DIExpression()), !dbg !2525
  %2 = load ptr, ptr %node.addr, align 8, !dbg !2526
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2, !dbg !2527
  %3 = load ptr, ptr %rb_left, align 8, !dbg !2527
  store ptr %3, ptr %tmp, align 8, !dbg !2525
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #12, !dbg !2528
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !2509, metadata !DIExpression()), !dbg !2529
  call void @llvm.lifetime.start.p0(i64 8, ptr %rebalance) #12, !dbg !2528
  call void @llvm.dbg.declare(metadata ptr %rebalance, metadata !2510, metadata !DIExpression()), !dbg !2530
  call void @llvm.lifetime.start.p0(i64 8, ptr %pc) #12, !dbg !2531
  call void @llvm.dbg.declare(metadata ptr %pc, metadata !2511, metadata !DIExpression()), !dbg !2532
  %4 = load ptr, ptr %tmp, align 8, !dbg !2533
  %tobool = icmp ne ptr %4, null, !dbg !2533
  br i1 %tobool, label %if.else6, label %if.then, !dbg !2534

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !2535
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 0, !dbg !2537
  %6 = load i64, ptr %__rb_parent_color, align 8, !dbg !2537
  store i64 %6, ptr %pc, align 8, !dbg !2538
  %7 = load i64, ptr %pc, align 8, !dbg !2539
  %and = and i64 %7, -4, !dbg !2539
  %8 = inttoptr i64 %and to ptr, !dbg !2539
  store ptr %8, ptr %parent, align 8, !dbg !2540
  %9 = load ptr, ptr %node.addr, align 8, !dbg !2541
  %10 = load ptr, ptr %child, align 8, !dbg !2542
  %11 = load ptr, ptr %parent, align 8, !dbg !2543
  %12 = load ptr, ptr %root.addr, align 8, !dbg !2544
  call void @__rb_change_child(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) #11, !dbg !2545
  %13 = load ptr, ptr %child, align 8, !dbg !2546
  %tobool1 = icmp ne ptr %13, null, !dbg !2546
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !2548

if.then2:                                         ; preds = %if.then
  %14 = load i64, ptr %pc, align 8, !dbg !2549
  %15 = load ptr, ptr %child, align 8, !dbg !2551
  %__rb_parent_color3 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 0, !dbg !2552
  store i64 %14, ptr %__rb_parent_color3, align 8, !dbg !2553
  store ptr null, ptr %rebalance, align 8, !dbg !2554
  br label %if.end, !dbg !2555

if.else:                                          ; preds = %if.then
  %16 = load i64, ptr %pc, align 8, !dbg !2556
  %and4 = and i64 %16, 1, !dbg !2556
  %tobool5 = icmp ne i64 %and4, 0, !dbg !2556
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !2556

cond.true:                                        ; preds = %if.else
  %17 = load ptr, ptr %parent, align 8, !dbg !2557
  br label %cond.end, !dbg !2556

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !2556

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ null, %cond.false ], !dbg !2556
  store ptr %cond, ptr %rebalance, align 8, !dbg !2558
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then2
  %18 = load ptr, ptr %parent, align 8, !dbg !2559
  store ptr %18, ptr %tmp, align 8, !dbg !2560
  br label %if.end69, !dbg !2561

if.else6:                                         ; preds = %entry
  %19 = load ptr, ptr %child, align 8, !dbg !2562
  %tobool7 = icmp ne ptr %19, null, !dbg !2562
  br i1 %tobool7, label %if.else12, label %if.then8, !dbg !2563

if.then8:                                         ; preds = %if.else6
  %20 = load ptr, ptr %node.addr, align 8, !dbg !2564
  %__rb_parent_color9 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 0, !dbg !2566
  %21 = load i64, ptr %__rb_parent_color9, align 8, !dbg !2566
  store i64 %21, ptr %pc, align 8, !dbg !2567
  %22 = load ptr, ptr %tmp, align 8, !dbg !2568
  %__rb_parent_color10 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 0, !dbg !2569
  store i64 %21, ptr %__rb_parent_color10, align 8, !dbg !2570
  %23 = load i64, ptr %pc, align 8, !dbg !2571
  %and11 = and i64 %23, -4, !dbg !2571
  %24 = inttoptr i64 %and11 to ptr, !dbg !2571
  store ptr %24, ptr %parent, align 8, !dbg !2572
  %25 = load ptr, ptr %node.addr, align 8, !dbg !2573
  %26 = load ptr, ptr %tmp, align 8, !dbg !2574
  %27 = load ptr, ptr %parent, align 8, !dbg !2575
  %28 = load ptr, ptr %root.addr, align 8, !dbg !2576
  call void @__rb_change_child(ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28) #11, !dbg !2577
  store ptr null, ptr %rebalance, align 8, !dbg !2578
  %29 = load ptr, ptr %parent, align 8, !dbg !2579
  store ptr %29, ptr %tmp, align 8, !dbg !2580
  br label %if.end68, !dbg !2581

if.else12:                                        ; preds = %if.else6
  call void @llvm.lifetime.start.p0(i64 8, ptr %successor) #12, !dbg !2582
  call void @llvm.dbg.declare(metadata ptr %successor, metadata !2512, metadata !DIExpression()), !dbg !2583
  %30 = load ptr, ptr %child, align 8, !dbg !2584
  store ptr %30, ptr %successor, align 8, !dbg !2583
  call void @llvm.lifetime.start.p0(i64 8, ptr %child2) #12, !dbg !2582
  call void @llvm.dbg.declare(metadata ptr %child2, metadata !2516, metadata !DIExpression()), !dbg !2585
  %31 = load ptr, ptr %child, align 8, !dbg !2586
  %rb_left13 = getelementptr inbounds %struct.rb_node, ptr %31, i32 0, i32 2, !dbg !2587
  %32 = load ptr, ptr %rb_left13, align 8, !dbg !2587
  store ptr %32, ptr %tmp, align 8, !dbg !2588
  %33 = load ptr, ptr %tmp, align 8, !dbg !2589
  %tobool14 = icmp ne ptr %33, null, !dbg !2589
  br i1 %tobool14, label %if.else17, label %if.then15, !dbg !2591

if.then15:                                        ; preds = %if.else12
  %34 = load ptr, ptr %successor, align 8, !dbg !2592
  store ptr %34, ptr %parent, align 8, !dbg !2594
  %35 = load ptr, ptr %successor, align 8, !dbg !2595
  %rb_right16 = getelementptr inbounds %struct.rb_node, ptr %35, i32 0, i32 1, !dbg !2596
  %36 = load ptr, ptr %rb_right16, align 8, !dbg !2596
  store ptr %36, ptr %child2, align 8, !dbg !2597
  %37 = load ptr, ptr %augment.addr, align 8, !dbg !2598
  %copy = getelementptr inbounds %struct.rb_augment_callbacks, ptr %37, i32 0, i32 1, !dbg !2599
  %38 = load ptr, ptr %copy, align 8, !dbg !2599
  %39 = load ptr, ptr %node.addr, align 8, !dbg !2600
  %40 = load ptr, ptr %successor, align 8, !dbg !2601
  call void %38(ptr noundef %39, ptr noundef %40) #11, !dbg !2598
  br label %if.end42, !dbg !2602

if.else17:                                        ; preds = %if.else12
  br label %do.body, !dbg !2603

do.body:                                          ; preds = %do.cond, %if.else17
  %41 = load ptr, ptr %successor, align 8, !dbg !2605
  store ptr %41, ptr %parent, align 8, !dbg !2607
  %42 = load ptr, ptr %tmp, align 8, !dbg !2608
  store ptr %42, ptr %successor, align 8, !dbg !2609
  %43 = load ptr, ptr %tmp, align 8, !dbg !2610
  %rb_left18 = getelementptr inbounds %struct.rb_node, ptr %43, i32 0, i32 2, !dbg !2611
  %44 = load ptr, ptr %rb_left18, align 8, !dbg !2611
  store ptr %44, ptr %tmp, align 8, !dbg !2612
  br label %do.cond, !dbg !2613

do.cond:                                          ; preds = %do.body
  %45 = load ptr, ptr %tmp, align 8, !dbg !2614
  %tobool19 = icmp ne ptr %45, null, !dbg !2613
  br i1 %tobool19, label %do.body, label %do.end, !dbg !2613, !llvm.loop !2615

do.end:                                           ; preds = %do.cond
  %46 = load ptr, ptr %successor, align 8, !dbg !2617
  %rb_right20 = getelementptr inbounds %struct.rb_node, ptr %46, i32 0, i32 1, !dbg !2618
  %47 = load ptr, ptr %rb_right20, align 8, !dbg !2618
  store ptr %47, ptr %child2, align 8, !dbg !2619
  br label %do.body21, !dbg !2620

do.body21:                                        ; preds = %do.end
  br label %do.body22, !dbg !2621

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !2623

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !2623

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !2621

do.body25:                                        ; preds = %do.end24
  %48 = load ptr, ptr %child2, align 8, !dbg !2625
  %49 = load ptr, ptr %parent, align 8, !dbg !2625
  %rb_left26 = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 2, !dbg !2625
  store volatile ptr %48, ptr %rb_left26, align 8, !dbg !2625
  br label %do.cond27, !dbg !2625

do.cond27:                                        ; preds = %do.body25
  br label %do.end28, !dbg !2625

do.end28:                                         ; preds = %do.cond27
  br label %do.cond29, !dbg !2621

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !2621

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !2627

do.body31:                                        ; preds = %do.end30
  br label %do.body32, !dbg !2628

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !2630

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !2630

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !2628

do.body35:                                        ; preds = %do.end34
  %50 = load ptr, ptr %child, align 8, !dbg !2632
  %51 = load ptr, ptr %successor, align 8, !dbg !2632
  %rb_right36 = getelementptr inbounds %struct.rb_node, ptr %51, i32 0, i32 1, !dbg !2632
  store volatile ptr %50, ptr %rb_right36, align 8, !dbg !2632
  br label %do.cond37, !dbg !2632

do.cond37:                                        ; preds = %do.body35
  br label %do.end38, !dbg !2632

do.end38:                                         ; preds = %do.cond37
  br label %do.cond39, !dbg !2628

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !2628

do.end40:                                         ; preds = %do.cond39
  %52 = load ptr, ptr %child, align 8, !dbg !2634
  %53 = load ptr, ptr %successor, align 8, !dbg !2635
  call void @rb_set_parent(ptr noundef %52, ptr noundef %53) #11, !dbg !2636
  %54 = load ptr, ptr %augment.addr, align 8, !dbg !2637
  %copy41 = getelementptr inbounds %struct.rb_augment_callbacks, ptr %54, i32 0, i32 1, !dbg !2638
  %55 = load ptr, ptr %copy41, align 8, !dbg !2638
  %56 = load ptr, ptr %node.addr, align 8, !dbg !2639
  %57 = load ptr, ptr %successor, align 8, !dbg !2640
  call void %55(ptr noundef %56, ptr noundef %57) #11, !dbg !2637
  %58 = load ptr, ptr %augment.addr, align 8, !dbg !2641
  %propagate = getelementptr inbounds %struct.rb_augment_callbacks, ptr %58, i32 0, i32 0, !dbg !2642
  %59 = load ptr, ptr %propagate, align 8, !dbg !2642
  %60 = load ptr, ptr %parent, align 8, !dbg !2643
  %61 = load ptr, ptr %successor, align 8, !dbg !2644
  call void %59(ptr noundef %60, ptr noundef %61) #11, !dbg !2641
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %if.then15
  %62 = load ptr, ptr %node.addr, align 8, !dbg !2645
  %rb_left43 = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 2, !dbg !2646
  %63 = load ptr, ptr %rb_left43, align 8, !dbg !2646
  store ptr %63, ptr %tmp, align 8, !dbg !2647
  br label %do.body44, !dbg !2648

do.body44:                                        ; preds = %if.end42
  br label %do.body45, !dbg !2649

do.body45:                                        ; preds = %do.body44
  br label %do.cond46, !dbg !2651

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !2651

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !2649

do.body48:                                        ; preds = %do.end47
  %64 = load ptr, ptr %tmp, align 8, !dbg !2653
  %65 = load ptr, ptr %successor, align 8, !dbg !2653
  %rb_left49 = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 2, !dbg !2653
  store volatile ptr %64, ptr %rb_left49, align 8, !dbg !2653
  br label %do.cond50, !dbg !2653

do.cond50:                                        ; preds = %do.body48
  br label %do.end51, !dbg !2653

do.end51:                                         ; preds = %do.cond50
  br label %do.cond52, !dbg !2649

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !2649

do.end53:                                         ; preds = %do.cond52
  %66 = load ptr, ptr %tmp, align 8, !dbg !2655
  %67 = load ptr, ptr %successor, align 8, !dbg !2656
  call void @rb_set_parent(ptr noundef %66, ptr noundef %67) #11, !dbg !2657
  %68 = load ptr, ptr %node.addr, align 8, !dbg !2658
  %__rb_parent_color54 = getelementptr inbounds %struct.rb_node, ptr %68, i32 0, i32 0, !dbg !2659
  %69 = load i64, ptr %__rb_parent_color54, align 8, !dbg !2659
  store i64 %69, ptr %pc, align 8, !dbg !2660
  %70 = load i64, ptr %pc, align 8, !dbg !2661
  %and55 = and i64 %70, -4, !dbg !2661
  %71 = inttoptr i64 %and55 to ptr, !dbg !2661
  store ptr %71, ptr %tmp, align 8, !dbg !2662
  %72 = load ptr, ptr %node.addr, align 8, !dbg !2663
  %73 = load ptr, ptr %successor, align 8, !dbg !2664
  %74 = load ptr, ptr %tmp, align 8, !dbg !2665
  %75 = load ptr, ptr %root.addr, align 8, !dbg !2666
  call void @__rb_change_child(ptr noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %75) #11, !dbg !2667
  %76 = load ptr, ptr %child2, align 8, !dbg !2668
  %tobool56 = icmp ne ptr %76, null, !dbg !2668
  br i1 %tobool56, label %if.then57, label %if.else58, !dbg !2670

if.then57:                                        ; preds = %do.end53
  %77 = load ptr, ptr %child2, align 8, !dbg !2671
  %78 = load ptr, ptr %parent, align 8, !dbg !2673
  call void @rb_set_parent_color(ptr noundef %77, ptr noundef %78, i32 noundef 1) #11, !dbg !2674
  store ptr null, ptr %rebalance, align 8, !dbg !2675
  br label %if.end66, !dbg !2676

if.else58:                                        ; preds = %do.end53
  %79 = load ptr, ptr %successor, align 8, !dbg !2677
  %__rb_parent_color59 = getelementptr inbounds %struct.rb_node, ptr %79, i32 0, i32 0, !dbg !2677
  %80 = load i64, ptr %__rb_parent_color59, align 8, !dbg !2677
  %and60 = and i64 %80, 1, !dbg !2677
  %tobool61 = icmp ne i64 %and60, 0, !dbg !2677
  br i1 %tobool61, label %cond.true62, label %cond.false63, !dbg !2677

cond.true62:                                      ; preds = %if.else58
  %81 = load ptr, ptr %parent, align 8, !dbg !2679
  br label %cond.end64, !dbg !2677

cond.false63:                                     ; preds = %if.else58
  br label %cond.end64, !dbg !2677

cond.end64:                                       ; preds = %cond.false63, %cond.true62
  %cond65 = phi ptr [ %81, %cond.true62 ], [ null, %cond.false63 ], !dbg !2677
  store ptr %cond65, ptr %rebalance, align 8, !dbg !2680
  br label %if.end66

if.end66:                                         ; preds = %cond.end64, %if.then57
  %82 = load i64, ptr %pc, align 8, !dbg !2681
  %83 = load ptr, ptr %successor, align 8, !dbg !2682
  %__rb_parent_color67 = getelementptr inbounds %struct.rb_node, ptr %83, i32 0, i32 0, !dbg !2683
  store i64 %82, ptr %__rb_parent_color67, align 8, !dbg !2684
  %84 = load ptr, ptr %successor, align 8, !dbg !2685
  store ptr %84, ptr %tmp, align 8, !dbg !2686
  call void @llvm.lifetime.end.p0(i64 8, ptr %child2) #12, !dbg !2687
  call void @llvm.lifetime.end.p0(i64 8, ptr %successor) #12, !dbg !2687
  br label %if.end68

if.end68:                                         ; preds = %if.end66, %if.then8
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end
  %85 = load ptr, ptr %augment.addr, align 8, !dbg !2688
  %propagate70 = getelementptr inbounds %struct.rb_augment_callbacks, ptr %85, i32 0, i32 0, !dbg !2689
  %86 = load ptr, ptr %propagate70, align 8, !dbg !2689
  %87 = load ptr, ptr %tmp, align 8, !dbg !2690
  call void %86(ptr noundef %87, ptr noundef null) #11, !dbg !2688
  %88 = load ptr, ptr %rebalance, align 8, !dbg !2691
  call void @llvm.lifetime.end.p0(i64 8, ptr %pc) #12, !dbg !2692
  call void @llvm.lifetime.end.p0(i64 8, ptr %rebalance) #12, !dbg !2692
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #12, !dbg !2692
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !2692
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #12, !dbg !2692
  ret ptr %88, !dbg !2693
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2694 dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rb_change_child(ptr noundef %old, ptr noundef %new, ptr noundef %parent, ptr noundef %root) #2 align 16 !dbg !2695 {
entry:
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2699, metadata !DIExpression()), !dbg !2703
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2700, metadata !DIExpression()), !dbg !2704
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !2701, metadata !DIExpression()), !dbg !2705
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2702, metadata !DIExpression()), !dbg !2706
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !2707
  %tobool = icmp ne ptr %0, null, !dbg !2707
  br i1 %tobool, label %if.then, label %if.else13, !dbg !2709

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !2710
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2, !dbg !2713
  %2 = load ptr, ptr %rb_left, align 8, !dbg !2713
  %3 = load ptr, ptr %old.addr, align 8, !dbg !2714
  %cmp = icmp eq ptr %2, %3, !dbg !2715
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2716

if.then1:                                         ; preds = %if.then
  br label %do.body, !dbg !2717

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !2718

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !2720

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !2718

do.body3:                                         ; preds = %do.end
  %4 = load ptr, ptr %new.addr, align 8, !dbg !2722
  %5 = load ptr, ptr %parent.addr, align 8, !dbg !2722
  %rb_left4 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2, !dbg !2722
  store volatile ptr %4, ptr %rb_left4, align 8, !dbg !2722
  br label %do.end5, !dbg !2722

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !2718

do.end6:                                          ; preds = %do.end5
  br label %if.end, !dbg !2718

if.else:                                          ; preds = %if.then
  br label %do.body7, !dbg !2724

do.body7:                                         ; preds = %if.else
  br label %do.body8, !dbg !2725

do.body8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2727

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !2725

do.body10:                                        ; preds = %do.end9
  %6 = load ptr, ptr %new.addr, align 8, !dbg !2729
  %7 = load ptr, ptr %parent.addr, align 8, !dbg !2729
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1, !dbg !2729
  store volatile ptr %6, ptr %rb_right, align 8, !dbg !2729
  br label %do.end11, !dbg !2729

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !2725

do.end12:                                         ; preds = %do.end11
  br label %if.end

if.end:                                           ; preds = %do.end12, %do.end6
  br label %if.end20, !dbg !2731

if.else13:                                        ; preds = %entry
  br label %do.body14, !dbg !2732

do.body14:                                        ; preds = %if.else13
  br label %do.body15, !dbg !2733

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2735

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !2733

do.body17:                                        ; preds = %do.end16
  %8 = load ptr, ptr %new.addr, align 8, !dbg !2737
  %9 = load ptr, ptr %root.addr, align 8, !dbg !2737
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %9, i32 0, i32 0, !dbg !2737
  store volatile ptr %8, ptr %rb_node, align 8, !dbg !2737
  br label %do.end18, !dbg !2737

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !2733

do.end19:                                         ; preds = %do.end18
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %if.end
  ret void, !dbg !2739
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_set_parent(ptr noundef %rb, ptr noundef %p) #2 align 16 !dbg !2740 {
entry:
  %rb.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !2742, metadata !DIExpression()), !dbg !2744
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2743, metadata !DIExpression()), !dbg !2745
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !2746
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 0, !dbg !2746
  %1 = load i64, ptr %__rb_parent_color, align 8, !dbg !2746
  %and = and i64 %1, 1, !dbg !2746
  %2 = load ptr, ptr %p.addr, align 8, !dbg !2747
  %3 = ptrtoint ptr %2 to i64, !dbg !2748
  %add = add i64 %and, %3, !dbg !2749
  %4 = load ptr, ptr %rb.addr, align 8, !dbg !2750
  %__rb_parent_color1 = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 0, !dbg !2751
  store i64 %add, ptr %__rb_parent_color1, align 8, !dbg !2752
  ret void, !dbg !2753
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_set_parent_color(ptr noundef %rb, ptr noundef %p, i32 noundef %color) #2 align 16 !dbg !2754 {
entry:
  %rb.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %color.addr = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !2758, metadata !DIExpression()), !dbg !2761
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2759, metadata !DIExpression()), !dbg !2762
  store i32 %color, ptr %color.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %color.addr, metadata !2760, metadata !DIExpression()), !dbg !2763
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2764
  %1 = ptrtoint ptr %0 to i64, !dbg !2765
  %2 = load i32, ptr %color.addr, align 4, !dbg !2766
  %conv = sext i32 %2 to i64, !dbg !2766
  %add = add i64 %1, %conv, !dbg !2767
  %3 = load ptr, ptr %rb.addr, align 8, !dbg !2768
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 0, !dbg !2769
  store i64 %add, ptr %__rb_parent_color, align 8, !dbg !2770
  ret void, !dbg !2771
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @augment_callbacks_propagate(ptr noundef %rb, ptr noundef %stop) #2 align 16 !dbg !2772 {
entry:
  %rb.addr = alloca ptr, align 8
  %stop.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !2774, metadata !DIExpression()), !dbg !2780
  store ptr %stop, ptr %stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop.addr, metadata !2775, metadata !DIExpression()), !dbg !2780
  br label %while.cond, !dbg !2780

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !2780
  %1 = load ptr, ptr %stop.addr, align 8, !dbg !2780
  %cmp = icmp ne ptr %0, %1, !dbg !2780
  br i1 %cmp, label %while.body, label %while.end, !dbg !2780

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #12, !dbg !2781
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2776, metadata !DIExpression()), !dbg !2781
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2782
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2778, metadata !DIExpression()), !dbg !2782
  %2 = load ptr, ptr %rb.addr, align 8, !dbg !2782
  store ptr %2, ptr %__mptr, align 8, !dbg !2782
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2782
  %add.ptr = getelementptr i8, ptr %3, i64 -112, !dbg !2782
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2782
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2781
  %4 = load ptr, ptr %tmp, align 8, !dbg !2782
  store ptr %4, ptr %node, align 8, !dbg !2781
  %5 = load ptr, ptr %node, align 8, !dbg !2783
  %call = call zeroext i1 @augment_callbacks_compute_max(ptr noundef %5, i1 noundef zeroext true) #11, !dbg !2783
  br i1 %call, label %if.then, label %if.end, !dbg !2781

if.then:                                          ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2783

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %node, align 8, !dbg !2781
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, ptr %6, i32 0, i32 8, !dbg !2781
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %rb_hole_addr, i32 0, i32 0, !dbg !2781
  %7 = load i64, ptr %__rb_parent_color, align 8, !dbg !2781
  %and = and i64 %7, -4, !dbg !2781
  %8 = inttoptr i64 %and to ptr, !dbg !2781
  store ptr %8, ptr %rb.addr, align 8, !dbg !2781
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2780
  br label %cleanup, !dbg !2780

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #12, !dbg !2780
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !2780, !llvm.loop !2785

while.end:                                        ; preds = %cleanup, %while.cond
  ret void, !dbg !2780

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @augment_callbacks_copy(ptr noundef %rb_old, ptr noundef %rb_new) #2 align 16 !dbg !2786 {
entry:
  %rb_old.addr = alloca ptr, align 8
  %rb_new.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %new = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %rb_old, ptr %rb_old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_old.addr, metadata !2788, metadata !DIExpression()), !dbg !2796
  store ptr %rb_new, ptr %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_new.addr, metadata !2789, metadata !DIExpression()), !dbg !2796
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #12, !dbg !2796
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2790, metadata !DIExpression()), !dbg !2796
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2797
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2791, metadata !DIExpression()), !dbg !2797
  %0 = load ptr, ptr %rb_old.addr, align 8, !dbg !2797
  store ptr %0, ptr %__mptr, align 8, !dbg !2797
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2797
  %add.ptr = getelementptr i8, ptr %1, i64 -112, !dbg !2797
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2797
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2796
  %2 = load ptr, ptr %tmp, align 8, !dbg !2797
  store ptr %2, ptr %old, align 8, !dbg !2796
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #12, !dbg !2796
  call void @llvm.dbg.declare(metadata ptr %new, metadata !2793, metadata !DIExpression()), !dbg !2796
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #12, !dbg !2798
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !2794, metadata !DIExpression()), !dbg !2798
  %3 = load ptr, ptr %rb_new.addr, align 8, !dbg !2798
  store ptr %3, ptr %__mptr1, align 8, !dbg !2798
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !2798
  %add.ptr3 = getelementptr i8, ptr %4, i64 -112, !dbg !2798
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !2798
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #12, !dbg !2796
  %5 = load ptr, ptr %tmp2, align 8, !dbg !2798
  store ptr %5, ptr %new, align 8, !dbg !2796
  %6 = load ptr, ptr %old, align 8, !dbg !2796
  %subtree_max_hole = getelementptr inbounds %struct.drm_mm_node, ptr %6, i32 0, i32 11, !dbg !2796
  %7 = load i64, ptr %subtree_max_hole, align 8, !dbg !2796
  %8 = load ptr, ptr %new, align 8, !dbg !2796
  %subtree_max_hole4 = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 11, !dbg !2796
  store i64 %7, ptr %subtree_max_hole4, align 8, !dbg !2796
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #12, !dbg !2796
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #12, !dbg !2796
  ret void, !dbg !2796
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @augment_callbacks_rotate(ptr noundef %rb_old, ptr noundef %rb_new) #0 align 16 !dbg !2799 {
entry:
  %rb_old.addr = alloca ptr, align 8
  %rb_new.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %new = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %rb_old, ptr %rb_old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_old.addr, metadata !2801, metadata !DIExpression()), !dbg !2809
  store ptr %rb_new, ptr %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_new.addr, metadata !2802, metadata !DIExpression()), !dbg !2809
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #12, !dbg !2809
  call void @llvm.dbg.declare(metadata ptr %old, metadata !2803, metadata !DIExpression()), !dbg !2809
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2810
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2804, metadata !DIExpression()), !dbg !2810
  %0 = load ptr, ptr %rb_old.addr, align 8, !dbg !2810
  store ptr %0, ptr %__mptr, align 8, !dbg !2810
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2810
  %add.ptr = getelementptr i8, ptr %1, i64 -112, !dbg !2810
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2810
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2809
  %2 = load ptr, ptr %tmp, align 8, !dbg !2810
  store ptr %2, ptr %old, align 8, !dbg !2809
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #12, !dbg !2809
  call void @llvm.dbg.declare(metadata ptr %new, metadata !2806, metadata !DIExpression()), !dbg !2809
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #12, !dbg !2811
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !2807, metadata !DIExpression()), !dbg !2811
  %3 = load ptr, ptr %rb_new.addr, align 8, !dbg !2811
  store ptr %3, ptr %__mptr1, align 8, !dbg !2811
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !2811
  %add.ptr3 = getelementptr i8, ptr %4, i64 -112, !dbg !2811
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !2811
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #12, !dbg !2809
  %5 = load ptr, ptr %tmp2, align 8, !dbg !2811
  store ptr %5, ptr %new, align 8, !dbg !2809
  %6 = load ptr, ptr %old, align 8, !dbg !2809
  %subtree_max_hole = getelementptr inbounds %struct.drm_mm_node, ptr %6, i32 0, i32 11, !dbg !2809
  %7 = load i64, ptr %subtree_max_hole, align 8, !dbg !2809
  %8 = load ptr, ptr %new, align 8, !dbg !2809
  %subtree_max_hole4 = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 11, !dbg !2809
  store i64 %7, ptr %subtree_max_hole4, align 8, !dbg !2809
  %9 = load ptr, ptr %old, align 8, !dbg !2809
  %call = call zeroext i1 @augment_callbacks_compute_max(ptr noundef %9, i1 noundef zeroext false) #11, !dbg !2809
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #12, !dbg !2809
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #12, !dbg !2809
  ret void, !dbg !2809
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @augment_callbacks_compute_max(ptr noundef %node, i1 noundef zeroext %exit) #2 align 16 !dbg !2812 {
entry:
  %retval = alloca i1, align 1
  %node.addr = alloca ptr, align 8
  %exit.addr = alloca i8, align 1
  %child = alloca ptr, align 8
  %max = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2814, metadata !DIExpression()), !dbg !2826
  %frombool = zext i1 %exit to i8
  store i8 %frombool, ptr %exit.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %exit.addr, metadata !2815, metadata !DIExpression()), !dbg !2826
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #12, !dbg !2826
  call void @llvm.dbg.declare(metadata ptr %child, metadata !2816, metadata !DIExpression()), !dbg !2826
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #12, !dbg !2826
  call void @llvm.dbg.declare(metadata ptr %max, metadata !2817, metadata !DIExpression()), !dbg !2826
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2826
  %hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 10, !dbg !2826
  %1 = load i64, ptr %hole_size, align 8, !dbg !2826
  store i64 %1, ptr %max, align 8, !dbg !2826
  %2 = load ptr, ptr %node.addr, align 8, !dbg !2827
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, ptr %2, i32 0, i32 8, !dbg !2827
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb_hole_addr, i32 0, i32 2, !dbg !2827
  %3 = load ptr, ptr %rb_left, align 8, !dbg !2827
  %tobool = icmp ne ptr %3, null, !dbg !2827
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2826

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2828
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2818, metadata !DIExpression()), !dbg !2828
  %4 = load ptr, ptr %node.addr, align 8, !dbg !2828
  %rb_hole_addr1 = getelementptr inbounds %struct.drm_mm_node, ptr %4, i32 0, i32 8, !dbg !2828
  %rb_left2 = getelementptr inbounds %struct.rb_node, ptr %rb_hole_addr1, i32 0, i32 2, !dbg !2828
  %5 = load ptr, ptr %rb_left2, align 8, !dbg !2828
  store ptr %5, ptr %__mptr, align 8, !dbg !2828
  %6 = load ptr, ptr %__mptr, align 8, !dbg !2828
  %add.ptr = getelementptr i8, ptr %6, i64 -112, !dbg !2828
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2828
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2829
  %7 = load ptr, ptr %tmp, align 8, !dbg !2828
  store ptr %7, ptr %child, align 8, !dbg !2829
  %8 = load ptr, ptr %child, align 8, !dbg !2830
  %subtree_max_hole = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 11, !dbg !2830
  %9 = load i64, ptr %subtree_max_hole, align 8, !dbg !2830
  %10 = load i64, ptr %max, align 8, !dbg !2830
  %cmp = icmp ugt i64 %9, %10, !dbg !2830
  br i1 %cmp, label %if.then3, label %if.end, !dbg !2829

if.then3:                                         ; preds = %if.then
  %11 = load ptr, ptr %child, align 8, !dbg !2830
  %subtree_max_hole4 = getelementptr inbounds %struct.drm_mm_node, ptr %11, i32 0, i32 11, !dbg !2830
  %12 = load i64, ptr %subtree_max_hole4, align 8, !dbg !2830
  store i64 %12, ptr %max, align 8, !dbg !2830
  br label %if.end, !dbg !2830

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5, !dbg !2829

if.end5:                                          ; preds = %if.end, %entry
  %13 = load ptr, ptr %node.addr, align 8, !dbg !2832
  %rb_hole_addr6 = getelementptr inbounds %struct.drm_mm_node, ptr %13, i32 0, i32 8, !dbg !2832
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb_hole_addr6, i32 0, i32 1, !dbg !2832
  %14 = load ptr, ptr %rb_right, align 8, !dbg !2832
  %tobool7 = icmp ne ptr %14, null, !dbg !2832
  br i1 %tobool7, label %if.then8, label %if.end19, !dbg !2826

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #12, !dbg !2833
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !2822, metadata !DIExpression()), !dbg !2833
  %15 = load ptr, ptr %node.addr, align 8, !dbg !2833
  %rb_hole_addr10 = getelementptr inbounds %struct.drm_mm_node, ptr %15, i32 0, i32 8, !dbg !2833
  %rb_right11 = getelementptr inbounds %struct.rb_node, ptr %rb_hole_addr10, i32 0, i32 1, !dbg !2833
  %16 = load ptr, ptr %rb_right11, align 8, !dbg !2833
  store ptr %16, ptr %__mptr9, align 8, !dbg !2833
  %17 = load ptr, ptr %__mptr9, align 8, !dbg !2833
  %add.ptr13 = getelementptr i8, ptr %17, i64 -112, !dbg !2833
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !2833
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #12, !dbg !2834
  %18 = load ptr, ptr %tmp12, align 8, !dbg !2833
  store ptr %18, ptr %child, align 8, !dbg !2834
  %19 = load ptr, ptr %child, align 8, !dbg !2835
  %subtree_max_hole14 = getelementptr inbounds %struct.drm_mm_node, ptr %19, i32 0, i32 11, !dbg !2835
  %20 = load i64, ptr %subtree_max_hole14, align 8, !dbg !2835
  %21 = load i64, ptr %max, align 8, !dbg !2835
  %cmp15 = icmp ugt i64 %20, %21, !dbg !2835
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !2834

if.then16:                                        ; preds = %if.then8
  %22 = load ptr, ptr %child, align 8, !dbg !2835
  %subtree_max_hole17 = getelementptr inbounds %struct.drm_mm_node, ptr %22, i32 0, i32 11, !dbg !2835
  %23 = load i64, ptr %subtree_max_hole17, align 8, !dbg !2835
  store i64 %23, ptr %max, align 8, !dbg !2835
  br label %if.end18, !dbg !2835

if.end18:                                         ; preds = %if.then16, %if.then8
  br label %if.end19, !dbg !2834

if.end19:                                         ; preds = %if.end18, %if.end5
  %24 = load i8, ptr %exit.addr, align 1, !dbg !2837, !range !590, !noundef !591
  %tobool20 = trunc i8 %24 to i1, !dbg !2837
  br i1 %tobool20, label %land.lhs.true, label %if.end24, !dbg !2837

land.lhs.true:                                    ; preds = %if.end19
  %25 = load ptr, ptr %node.addr, align 8, !dbg !2837
  %subtree_max_hole21 = getelementptr inbounds %struct.drm_mm_node, ptr %25, i32 0, i32 11, !dbg !2837
  %26 = load i64, ptr %subtree_max_hole21, align 8, !dbg !2837
  %27 = load i64, ptr %max, align 8, !dbg !2837
  %cmp22 = icmp eq i64 %26, %27, !dbg !2837
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !2826

if.then23:                                        ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !2837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2837

if.end24:                                         ; preds = %land.lhs.true, %if.end19
  %28 = load i64, ptr %max, align 8, !dbg !2826
  %29 = load ptr, ptr %node.addr, align 8, !dbg !2826
  %subtree_max_hole25 = getelementptr inbounds %struct.drm_mm_node, ptr %29, i32 0, i32 11, !dbg !2826
  store i64 %28, ptr %subtree_max_hole25, align 8, !dbg !2826
  store i1 false, ptr %retval, align 1, !dbg !2826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2826

cleanup:                                          ; preds = %if.end24, %if.then23
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #12, !dbg !2826
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #12, !dbg !2826
  %30 = load i1, ptr %retval, align 1, !dbg !2826
  ret i1 %30, !dbg !2826
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @insert_hole_size(ptr noundef %root, ptr noundef %node) #0 align 16 !dbg !2839 {
entry:
  %root.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %link = alloca ptr, align 8
  %rb = alloca ptr, align 8
  %x = alloca i64, align 8
  %first = alloca i8, align 1
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2843, metadata !DIExpression()), !dbg !2849
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2844, metadata !DIExpression()), !dbg !2850
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #12, !dbg !2851
  call void @llvm.dbg.declare(metadata ptr %link, metadata !2845, metadata !DIExpression()), !dbg !2852
  %0 = load ptr, ptr %root.addr, align 8, !dbg !2853
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 0, !dbg !2854
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !2855
  store ptr %rb_node, ptr %link, align 8, !dbg !2852
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb) #12, !dbg !2851
  call void @llvm.dbg.declare(metadata ptr %rb, metadata !2846, metadata !DIExpression()), !dbg !2856
  store ptr null, ptr %rb, align 8, !dbg !2856
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #12, !dbg !2857
  call void @llvm.dbg.declare(metadata ptr %x, metadata !2847, metadata !DIExpression()), !dbg !2858
  %1 = load ptr, ptr %node.addr, align 8, !dbg !2859
  %hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %1, i32 0, i32 10, !dbg !2860
  %2 = load i64, ptr %hole_size, align 8, !dbg !2860
  store i64 %2, ptr %x, align 8, !dbg !2858
  call void @llvm.lifetime.start.p0(i64 1, ptr %first) #12, !dbg !2861
  call void @llvm.dbg.declare(metadata ptr %first, metadata !2848, metadata !DIExpression()), !dbg !2862
  store i8 1, ptr %first, align 1, !dbg !2862
  br label %while.cond, !dbg !2863

while.cond:                                       ; preds = %if.end, %entry
  %3 = load ptr, ptr %link, align 8, !dbg !2864
  %4 = load ptr, ptr %3, align 8, !dbg !2865
  %tobool = icmp ne ptr %4, null, !dbg !2863
  br i1 %tobool, label %while.body, label %while.end, !dbg !2863

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %link, align 8, !dbg !2866
  %6 = load ptr, ptr %5, align 8, !dbg !2868
  store ptr %6, ptr %rb, align 8, !dbg !2869
  %7 = load i64, ptr %x, align 8, !dbg !2870
  %8 = load ptr, ptr %rb, align 8, !dbg !2872
  %call = call i64 @rb_to_hole_size(ptr noundef %8) #11, !dbg !2873
  %cmp = icmp ugt i64 %7, %call, !dbg !2874
  br i1 %cmp, label %if.then, label %if.else, !dbg !2875

if.then:                                          ; preds = %while.body
  %9 = load ptr, ptr %rb, align 8, !dbg !2876
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2, !dbg !2878
  store ptr %rb_left, ptr %link, align 8, !dbg !2879
  br label %if.end, !dbg !2880

if.else:                                          ; preds = %while.body
  %10 = load ptr, ptr %rb, align 8, !dbg !2881
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1, !dbg !2883
  store ptr %rb_right, ptr %link, align 8, !dbg !2884
  store i8 0, ptr %first, align 1, !dbg !2885
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !dbg !2863, !llvm.loop !2886

while.end:                                        ; preds = %while.cond
  %11 = load ptr, ptr %node.addr, align 8, !dbg !2888
  %rb_hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %11, i32 0, i32 7, !dbg !2889
  %12 = load ptr, ptr %rb, align 8, !dbg !2890
  %13 = load ptr, ptr %link, align 8, !dbg !2891
  call void @rb_link_node(ptr noundef %rb_hole_size, ptr noundef %12, ptr noundef %13) #11, !dbg !2892
  %14 = load ptr, ptr %node.addr, align 8, !dbg !2893
  %rb_hole_size1 = getelementptr inbounds %struct.drm_mm_node, ptr %14, i32 0, i32 7, !dbg !2894
  %15 = load ptr, ptr %root.addr, align 8, !dbg !2895
  %16 = load i8, ptr %first, align 1, !dbg !2896, !range !590, !noundef !591
  %tobool2 = trunc i8 %16 to i1, !dbg !2896
  call void @rb_insert_color_cached(ptr noundef %rb_hole_size1, ptr noundef %15, i1 noundef zeroext %tobool2) #11, !dbg !2897
  call void @llvm.lifetime.end.p0(i64 1, ptr %first) #12, !dbg !2898
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #12, !dbg !2898
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb) #12, !dbg !2898
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #12, !dbg !2898
  ret void, !dbg !2898
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @insert_hole_addr(ptr noundef %root, ptr noundef %node) #0 align 16 !dbg !2899 {
entry:
  %root.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %link = alloca ptr, align 8
  %rb_parent = alloca ptr, align 8
  %start = alloca i64, align 8
  %subtree_max_hole = alloca i64, align 8
  %parent = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2903, metadata !DIExpression()), !dbg !2913
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2904, metadata !DIExpression()), !dbg !2914
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #12, !dbg !2915
  call void @llvm.dbg.declare(metadata ptr %link, metadata !2905, metadata !DIExpression()), !dbg !2916
  %0 = load ptr, ptr %root.addr, align 8, !dbg !2917
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %0, i32 0, i32 0, !dbg !2918
  store ptr %rb_node, ptr %link, align 8, !dbg !2916
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb_parent) #12, !dbg !2915
  call void @llvm.dbg.declare(metadata ptr %rb_parent, metadata !2906, metadata !DIExpression()), !dbg !2919
  store ptr null, ptr %rb_parent, align 8, !dbg !2919
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #12, !dbg !2920
  call void @llvm.dbg.declare(metadata ptr %start, metadata !2907, metadata !DIExpression()), !dbg !2921
  %1 = load ptr, ptr %node.addr, align 8, !dbg !2922
  %call = call i64 @__drm_mm_hole_node_start(ptr noundef %1) #11, !dbg !2922
  store i64 %call, ptr %start, align 8, !dbg !2921
  call void @llvm.lifetime.start.p0(i64 8, ptr %subtree_max_hole) #12, !dbg !2920
  call void @llvm.dbg.declare(metadata ptr %subtree_max_hole, metadata !2908, metadata !DIExpression()), !dbg !2923
  %2 = load ptr, ptr %node.addr, align 8, !dbg !2924
  %subtree_max_hole1 = getelementptr inbounds %struct.drm_mm_node, ptr %2, i32 0, i32 11, !dbg !2925
  %3 = load i64, ptr %subtree_max_hole1, align 8, !dbg !2925
  store i64 %3, ptr %subtree_max_hole, align 8, !dbg !2923
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #12, !dbg !2926
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !2909, metadata !DIExpression()), !dbg !2927
  br label %while.cond, !dbg !2928

while.cond:                                       ; preds = %if.end8, %entry
  %4 = load ptr, ptr %link, align 8, !dbg !2929
  %5 = load ptr, ptr %4, align 8, !dbg !2930
  %tobool = icmp ne ptr %5, null, !dbg !2928
  br i1 %tobool, label %while.body, label %while.end, !dbg !2928

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %link, align 8, !dbg !2931
  %7 = load ptr, ptr %6, align 8, !dbg !2932
  store ptr %7, ptr %rb_parent, align 8, !dbg !2933
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2934
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2910, metadata !DIExpression()), !dbg !2934
  %8 = load ptr, ptr %rb_parent, align 8, !dbg !2934
  store ptr %8, ptr %__mptr, align 8, !dbg !2934
  %9 = load ptr, ptr %__mptr, align 8, !dbg !2934
  %add.ptr = getelementptr i8, ptr %9, i64 -112, !dbg !2934
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2934
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2935
  %10 = load ptr, ptr %tmp, align 8, !dbg !2934
  store ptr %10, ptr %parent, align 8, !dbg !2936
  %11 = load ptr, ptr %parent, align 8, !dbg !2937
  %subtree_max_hole2 = getelementptr inbounds %struct.drm_mm_node, ptr %11, i32 0, i32 11, !dbg !2939
  %12 = load i64, ptr %subtree_max_hole2, align 8, !dbg !2939
  %13 = load i64, ptr %subtree_max_hole, align 8, !dbg !2940
  %cmp = icmp ult i64 %12, %13, !dbg !2941
  br i1 %cmp, label %if.then, label %if.end, !dbg !2942

if.then:                                          ; preds = %while.body
  %14 = load i64, ptr %subtree_max_hole, align 8, !dbg !2943
  %15 = load ptr, ptr %parent, align 8, !dbg !2944
  %subtree_max_hole3 = getelementptr inbounds %struct.drm_mm_node, ptr %15, i32 0, i32 11, !dbg !2945
  store i64 %14, ptr %subtree_max_hole3, align 8, !dbg !2946
  br label %if.end, !dbg !2944

if.end:                                           ; preds = %if.then, %while.body
  %16 = load i64, ptr %start, align 8, !dbg !2947
  %17 = load ptr, ptr %parent, align 8, !dbg !2949
  %call4 = call i64 @__drm_mm_hole_node_start(ptr noundef %17) #11, !dbg !2949
  %cmp5 = icmp ult i64 %16, %call4, !dbg !2950
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !2951

if.then6:                                         ; preds = %if.end
  %18 = load ptr, ptr %parent, align 8, !dbg !2952
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, ptr %18, i32 0, i32 8, !dbg !2953
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb_hole_addr, i32 0, i32 2, !dbg !2954
  store ptr %rb_left, ptr %link, align 8, !dbg !2955
  br label %if.end8, !dbg !2956

if.else:                                          ; preds = %if.end
  %19 = load ptr, ptr %parent, align 8, !dbg !2957
  %rb_hole_addr7 = getelementptr inbounds %struct.drm_mm_node, ptr %19, i32 0, i32 8, !dbg !2958
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb_hole_addr7, i32 0, i32 1, !dbg !2959
  store ptr %rb_right, ptr %link, align 8, !dbg !2960
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  br label %while.cond, !dbg !2928, !llvm.loop !2961

while.end:                                        ; preds = %while.cond
  %20 = load ptr, ptr %node.addr, align 8, !dbg !2963
  %rb_hole_addr9 = getelementptr inbounds %struct.drm_mm_node, ptr %20, i32 0, i32 8, !dbg !2964
  %21 = load ptr, ptr %rb_parent, align 8, !dbg !2965
  %22 = load ptr, ptr %link, align 8, !dbg !2966
  call void @rb_link_node(ptr noundef %rb_hole_addr9, ptr noundef %21, ptr noundef %22) #11, !dbg !2967
  %23 = load ptr, ptr %node.addr, align 8, !dbg !2968
  %rb_hole_addr10 = getelementptr inbounds %struct.drm_mm_node, ptr %23, i32 0, i32 8, !dbg !2969
  %24 = load ptr, ptr %root.addr, align 8, !dbg !2970
  call void @rb_insert_augmented(ptr noundef %rb_hole_addr10, ptr noundef %24, ptr noundef @augment_callbacks) #11, !dbg !2971
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #12, !dbg !2972
  call void @llvm.lifetime.end.p0(i64 8, ptr %subtree_max_hole) #12, !dbg !2972
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #12, !dbg !2972
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb_parent) #12, !dbg !2972
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #12, !dbg !2972
  ret void, !dbg !2972
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rb_to_hole_size(ptr noundef %rb) #0 align 16 !dbg !2973 {
entry:
  %rb.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !2975, metadata !DIExpression()), !dbg !2978
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !2979
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2976, metadata !DIExpression()), !dbg !2979
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !2979
  store ptr %0, ptr %__mptr, align 8, !dbg !2979
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2979
  %add.ptr = getelementptr i8, ptr %1, i64 -88, !dbg !2979
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2979
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !2980
  %2 = load ptr, ptr %tmp, align 8, !dbg !2979
  %hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %2, i32 0, i32 10, !dbg !2981
  %3 = load i64, ptr %hole_size, align 8, !dbg !2981
  ret i64 %3, !dbg !2982
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_insert_color_cached(ptr noundef %node, ptr noundef %root, i1 noundef zeroext %leftmost) #2 align 16 !dbg !2983 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %leftmost.addr = alloca i8, align 1
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2987, metadata !DIExpression()), !dbg !2990
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !2988, metadata !DIExpression()), !dbg !2991
  %frombool = zext i1 %leftmost to i8
  store i8 %frombool, ptr %leftmost.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %leftmost.addr, metadata !2989, metadata !DIExpression()), !dbg !2992
  %0 = load i8, ptr %leftmost.addr, align 1, !dbg !2993, !range !590, !noundef !591
  %tobool = trunc i8 %0 to i1, !dbg !2993
  br i1 %tobool, label %if.then, label %if.end, !dbg !2995

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !2996
  %2 = load ptr, ptr %root.addr, align 8, !dbg !2997
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %2, i32 0, i32 1, !dbg !2998
  store ptr %1, ptr %rb_leftmost, align 8, !dbg !2999
  br label %if.end, !dbg !2997

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !3000
  %4 = load ptr, ptr %root.addr, align 8, !dbg !3001
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 0, !dbg !3002
  call void @rb_insert_color(ptr noundef %3, ptr noundef %rb_root) #11, !dbg !3003
  ret void, !dbg !3004
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3005 dso_local void @rb_insert_color(ptr noundef, ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @best_hole(ptr noundef %mm, i64 noundef %size) #0 align 16 !dbg !3006 {
entry:
  %mm.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %rb = alloca ptr, align 8
  %best = alloca ptr, align 8
  %node = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !3010, metadata !DIExpression()), !dbg !3018
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3011, metadata !DIExpression()), !dbg !3019
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb) #12, !dbg !3020
  call void @llvm.dbg.declare(metadata ptr %rb, metadata !3012, metadata !DIExpression()), !dbg !3021
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !3022
  %holes_size = getelementptr inbounds %struct.drm_mm, ptr %0, i32 0, i32 4, !dbg !3023
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %holes_size, i32 0, i32 0, !dbg !3024
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !3025
  %1 = load ptr, ptr %rb_node, align 8, !dbg !3025
  store ptr %1, ptr %rb, align 8, !dbg !3021
  call void @llvm.lifetime.start.p0(i64 8, ptr %best) #12, !dbg !3026
  call void @llvm.dbg.declare(metadata ptr %best, metadata !3013, metadata !DIExpression()), !dbg !3027
  store ptr null, ptr %best, align 8, !dbg !3027
  br label %do.body, !dbg !3028

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #12, !dbg !3029
  call void @llvm.dbg.declare(metadata ptr %node, metadata !3014, metadata !DIExpression()), !dbg !3030
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !3031
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3016, metadata !DIExpression()), !dbg !3031
  %2 = load ptr, ptr %rb, align 8, !dbg !3031
  store ptr %2, ptr %__mptr, align 8, !dbg !3031
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3031
  %add.ptr = getelementptr i8, ptr %3, i64 -88, !dbg !3031
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3031
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !3032
  %4 = load ptr, ptr %tmp, align 8, !dbg !3031
  store ptr %4, ptr %node, align 8, !dbg !3030
  %5 = load i64, ptr %size.addr, align 8, !dbg !3033
  %6 = load ptr, ptr %node, align 8, !dbg !3035
  %hole_size = getelementptr inbounds %struct.drm_mm_node, ptr %6, i32 0, i32 10, !dbg !3036
  %7 = load i64, ptr %hole_size, align 8, !dbg !3036
  %cmp = icmp ule i64 %5, %7, !dbg !3037
  br i1 %cmp, label %if.then, label %if.else, !dbg !3038

if.then:                                          ; preds = %do.body
  %8 = load ptr, ptr %node, align 8, !dbg !3039
  store ptr %8, ptr %best, align 8, !dbg !3041
  %9 = load ptr, ptr %rb, align 8, !dbg !3042
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1, !dbg !3043
  %10 = load ptr, ptr %rb_right, align 8, !dbg !3043
  store ptr %10, ptr %rb, align 8, !dbg !3044
  br label %if.end, !dbg !3045

if.else:                                          ; preds = %do.body
  %11 = load ptr, ptr %rb, align 8, !dbg !3046
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2, !dbg !3048
  %12 = load ptr, ptr %rb_left, align 8, !dbg !3048
  store ptr %12, ptr %rb, align 8, !dbg !3049
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #12, !dbg !3050
  br label %do.cond, !dbg !3051

do.cond:                                          ; preds = %if.end
  %13 = load ptr, ptr %rb, align 8, !dbg !3052
  %tobool = icmp ne ptr %13, null, !dbg !3051
  br i1 %tobool, label %do.body, label %do.end, !dbg !3051, !llvm.loop !3053

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %best, align 8, !dbg !3055
  call void @llvm.lifetime.end.p0(i64 8, ptr %best) #12, !dbg !3056
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb) #12, !dbg !3056
  ret ptr %14, !dbg !3057
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rb_hole_size_to_node(ptr noundef %rb) #2 align 16 !dbg !3058 {
entry:
  %rb.addr = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !3060, metadata !DIExpression()), !dbg !3065
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #12, !dbg !3066
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !3061, metadata !DIExpression()), !dbg !3066
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !3066
  store ptr %0, ptr %____ptr, align 8, !dbg !3066
  %1 = load ptr, ptr %____ptr, align 8, !dbg !3066
  %tobool = icmp ne ptr %1, null, !dbg !3066
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3066

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #12, !dbg !3067
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3063, metadata !DIExpression()), !dbg !3067
  %2 = load ptr, ptr %____ptr, align 8, !dbg !3067
  store ptr %2, ptr %__mptr, align 8, !dbg !3067
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3067
  %add.ptr = getelementptr i8, ptr %3, i64 -88, !dbg !3067
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #12, !dbg !3066
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3067
  br label %cond.end, !dbg !3066

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3066

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3066
  store ptr %cond, ptr %tmp, align 8, !dbg !3066
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #12, !dbg !3068
  %5 = load ptr, ptr %tmp, align 8, !dbg !3066
  ret ptr %5, !dbg !3069
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3070 dso_local ptr @rb_prev(ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @next_hole_low_addr(ptr noundef %entry1, i64 noundef %size) #0 align 16 !dbg !3071 {
entry:
  %retval = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %parent = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3075, metadata !DIExpression()), !dbg !3079
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3076, metadata !DIExpression()), !dbg !3079
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #12, !dbg !3079
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3077, metadata !DIExpression()), !dbg !3079
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #12, !dbg !3079
  call void @llvm.dbg.declare(metadata ptr %node, metadata !3078, metadata !DIExpression()), !dbg !3079
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3079
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 8, !dbg !3079
  store ptr %rb_hole_addr, ptr %node, align 8, !dbg !3079
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3080
  %tobool = icmp ne ptr %1, null, !dbg !3080
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3080

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %node, align 8, !dbg !3080
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 0, !dbg !3080
  %3 = load i64, ptr %__rb_parent_color, align 8, !dbg !3080
  %4 = load ptr, ptr %node, align 8, !dbg !3080
  %5 = ptrtoint ptr %4 to i64, !dbg !3080
  %cmp = icmp eq i64 %3, %5, !dbg !3080
  br i1 %cmp, label %if.then, label %if.end, !dbg !3079

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !3080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3080

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %node, align 8, !dbg !3082
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1, !dbg !3082
  %7 = load ptr, ptr %rb_right, align 8, !dbg !3082
  %8 = load i64, ptr %size.addr, align 8, !dbg !3082
  %call = call zeroext i1 @usable_hole_addr(ptr noundef %7, i64 noundef %8) #11, !dbg !3082
  br i1 %call, label %if.then2, label %if.end7, !dbg !3079

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %node, align 8, !dbg !3084
  %rb_right3 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1, !dbg !3084
  %10 = load ptr, ptr %rb_right3, align 8, !dbg !3084
  store ptr %10, ptr %node, align 8, !dbg !3084
  br label %while.cond, !dbg !3084

while.cond:                                       ; preds = %while.body, %if.then2
  %11 = load ptr, ptr %node, align 8, !dbg !3084
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2, !dbg !3084
  %12 = load ptr, ptr %rb_left, align 8, !dbg !3084
  %13 = load i64, ptr %size.addr, align 8, !dbg !3084
  %call4 = call zeroext i1 @usable_hole_addr(ptr noundef %12, i64 noundef %13) #11, !dbg !3084
  br i1 %call4, label %while.body, label %while.end, !dbg !3084

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %node, align 8, !dbg !3084
  %rb_left5 = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 2, !dbg !3084
  %15 = load ptr, ptr %rb_left5, align 8, !dbg !3084
  store ptr %15, ptr %node, align 8, !dbg !3084
  br label %while.cond, !dbg !3084, !llvm.loop !3086

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %node, align 8, !dbg !3084
  %call6 = call ptr @rb_hole_addr_to_node(ptr noundef %16) #11, !dbg !3084
  store ptr %call6, ptr %retval, align 8, !dbg !3084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3084

if.end7:                                          ; preds = %if.end
  br label %while.cond8, !dbg !3079

while.cond8:                                      ; preds = %while.body13, %if.end7
  %17 = load ptr, ptr %node, align 8, !dbg !3079
  %__rb_parent_color9 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 0, !dbg !3079
  %18 = load i64, ptr %__rb_parent_color9, align 8, !dbg !3079
  %and = and i64 %18, -4, !dbg !3079
  %19 = inttoptr i64 %and to ptr, !dbg !3079
  store ptr %19, ptr %parent, align 8, !dbg !3079
  %tobool10 = icmp ne ptr %19, null, !dbg !3079
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !3079

land.rhs:                                         ; preds = %while.cond8
  %20 = load ptr, ptr %node, align 8, !dbg !3079
  %21 = load ptr, ptr %parent, align 8, !dbg !3079
  %rb_right11 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1, !dbg !3079
  %22 = load ptr, ptr %rb_right11, align 8, !dbg !3079
  %cmp12 = icmp eq ptr %20, %22, !dbg !3079
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond8
  %23 = phi i1 [ false, %while.cond8 ], [ %cmp12, %land.rhs ], !dbg !3087
  br i1 %23, label %while.body13, label %while.end14, !dbg !3079

while.body13:                                     ; preds = %land.end
  %24 = load ptr, ptr %parent, align 8, !dbg !3079
  store ptr %24, ptr %node, align 8, !dbg !3079
  br label %while.cond8, !dbg !3079, !llvm.loop !3088

while.end14:                                      ; preds = %land.end
  %25 = load ptr, ptr %parent, align 8, !dbg !3079
  %call15 = call ptr @rb_hole_addr_to_node(ptr noundef %25) #11, !dbg !3079
  store ptr %call15, ptr %retval, align 8, !dbg !3079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3079

cleanup:                                          ; preds = %while.end14, %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #12, !dbg !3079
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #12, !dbg !3079
  %26 = load ptr, ptr %retval, align 8, !dbg !3079
  ret ptr %26, !dbg !3079
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @next_hole_high_addr(ptr noundef %entry1, i64 noundef %size) #0 align 16 !dbg !3089 {
entry:
  %retval = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %parent = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3091, metadata !DIExpression()), !dbg !3095
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3092, metadata !DIExpression()), !dbg !3095
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #12, !dbg !3095
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3093, metadata !DIExpression()), !dbg !3095
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #12, !dbg !3095
  call void @llvm.dbg.declare(metadata ptr %node, metadata !3094, metadata !DIExpression()), !dbg !3095
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3095
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 8, !dbg !3095
  store ptr %rb_hole_addr, ptr %node, align 8, !dbg !3095
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3096
  %tobool = icmp ne ptr %1, null, !dbg !3096
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3096

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %node, align 8, !dbg !3096
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 0, !dbg !3096
  %3 = load i64, ptr %__rb_parent_color, align 8, !dbg !3096
  %4 = load ptr, ptr %node, align 8, !dbg !3096
  %5 = ptrtoint ptr %4 to i64, !dbg !3096
  %cmp = icmp eq i64 %3, %5, !dbg !3096
  br i1 %cmp, label %if.then, label %if.end, !dbg !3095

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !3096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3096

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %node, align 8, !dbg !3098
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2, !dbg !3098
  %7 = load ptr, ptr %rb_left, align 8, !dbg !3098
  %8 = load i64, ptr %size.addr, align 8, !dbg !3098
  %call = call zeroext i1 @usable_hole_addr(ptr noundef %7, i64 noundef %8) #11, !dbg !3098
  br i1 %call, label %if.then2, label %if.end7, !dbg !3095

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %node, align 8, !dbg !3100
  %rb_left3 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2, !dbg !3100
  %10 = load ptr, ptr %rb_left3, align 8, !dbg !3100
  store ptr %10, ptr %node, align 8, !dbg !3100
  br label %while.cond, !dbg !3100

while.cond:                                       ; preds = %while.body, %if.then2
  %11 = load ptr, ptr %node, align 8, !dbg !3100
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1, !dbg !3100
  %12 = load ptr, ptr %rb_right, align 8, !dbg !3100
  %13 = load i64, ptr %size.addr, align 8, !dbg !3100
  %call4 = call zeroext i1 @usable_hole_addr(ptr noundef %12, i64 noundef %13) #11, !dbg !3100
  br i1 %call4, label %while.body, label %while.end, !dbg !3100

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %node, align 8, !dbg !3100
  %rb_right5 = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 1, !dbg !3100
  %15 = load ptr, ptr %rb_right5, align 8, !dbg !3100
  store ptr %15, ptr %node, align 8, !dbg !3100
  br label %while.cond, !dbg !3100, !llvm.loop !3102

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %node, align 8, !dbg !3100
  %call6 = call ptr @rb_hole_addr_to_node(ptr noundef %16) #11, !dbg !3100
  store ptr %call6, ptr %retval, align 8, !dbg !3100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3100

if.end7:                                          ; preds = %if.end
  br label %while.cond8, !dbg !3095

while.cond8:                                      ; preds = %while.body13, %if.end7
  %17 = load ptr, ptr %node, align 8, !dbg !3095
  %__rb_parent_color9 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 0, !dbg !3095
  %18 = load i64, ptr %__rb_parent_color9, align 8, !dbg !3095
  %and = and i64 %18, -4, !dbg !3095
  %19 = inttoptr i64 %and to ptr, !dbg !3095
  store ptr %19, ptr %parent, align 8, !dbg !3095
  %tobool10 = icmp ne ptr %19, null, !dbg !3095
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !3095

land.rhs:                                         ; preds = %while.cond8
  %20 = load ptr, ptr %node, align 8, !dbg !3095
  %21 = load ptr, ptr %parent, align 8, !dbg !3095
  %rb_left11 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 2, !dbg !3095
  %22 = load ptr, ptr %rb_left11, align 8, !dbg !3095
  %cmp12 = icmp eq ptr %20, %22, !dbg !3095
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond8
  %23 = phi i1 [ false, %while.cond8 ], [ %cmp12, %land.rhs ], !dbg !3103
  br i1 %23, label %while.body13, label %while.end14, !dbg !3095

while.body13:                                     ; preds = %land.end
  %24 = load ptr, ptr %parent, align 8, !dbg !3095
  store ptr %24, ptr %node, align 8, !dbg !3095
  br label %while.cond8, !dbg !3095, !llvm.loop !3104

while.end14:                                      ; preds = %land.end
  %25 = load ptr, ptr %parent, align 8, !dbg !3095
  %call15 = call ptr @rb_hole_addr_to_node(ptr noundef %25) #11, !dbg !3095
  store ptr %call15, ptr %retval, align 8, !dbg !3095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3095

cleanup:                                          ; preds = %while.end14, %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #12, !dbg !3095
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #12, !dbg !3095
  %26 = load ptr, ptr %retval, align 8, !dbg !3095
  ret ptr %26, !dbg !3095
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_erase_augmented_cached(ptr noundef %node, ptr noundef %root, ptr noundef %augment) #6 align 16 !dbg !3105 {
entry:
  %node.addr = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %augment.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !3109, metadata !DIExpression()), !dbg !3112
  store ptr %root, ptr %root.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root.addr, metadata !3110, metadata !DIExpression()), !dbg !3113
  store ptr %augment, ptr %augment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %augment.addr, metadata !3111, metadata !DIExpression()), !dbg !3114
  %0 = load ptr, ptr %root.addr, align 8, !dbg !3115
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 1, !dbg !3117
  %1 = load ptr, ptr %rb_leftmost, align 8, !dbg !3117
  %2 = load ptr, ptr %node.addr, align 8, !dbg !3118
  %cmp = icmp eq ptr %1, %2, !dbg !3119
  br i1 %cmp, label %if.then, label %if.end, !dbg !3120

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !3121
  %call = call ptr @rb_next(ptr noundef %3) #11, !dbg !3122
  %4 = load ptr, ptr %root.addr, align 8, !dbg !3123
  %rb_leftmost1 = getelementptr inbounds %struct.rb_root_cached, ptr %4, i32 0, i32 1, !dbg !3124
  store ptr %call, ptr %rb_leftmost1, align 8, !dbg !3125
  br label %if.end, !dbg !3123

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !3126
  %6 = load ptr, ptr %root.addr, align 8, !dbg !3127
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %6, i32 0, i32 0, !dbg !3128
  %7 = load ptr, ptr %augment.addr, align 8, !dbg !3129
  call void @rb_erase_augmented(ptr noundef %5, ptr noundef %rb_root, ptr noundef %7) #11, !dbg !3130
  ret void, !dbg !3131
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !3132 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3134, metadata !DIExpression()), !dbg !3136
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3135, metadata !DIExpression()), !dbg !3137
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3138
  %1 = load i64, ptr %size.addr, align 8, !dbg !3139
  %conv = trunc i64 %1 to i32, !dbg !3139
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #11, !dbg !3140
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3141
  %3 = load i64, ptr %size.addr, align 8, !dbg !3141
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #11, !dbg !3141
  ret void, !dbg !3142
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit_unlock(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3143 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3145, metadata !DIExpression()), !dbg !3147
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3146, metadata !DIExpression()), !dbg !3148
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !3149, !srcloc !3150
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3151
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3152
  call void @arch_clear_bit(i64 noundef %0, ptr noundef %1) #11, !dbg !3153
  ret void, !dbg !3154
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3155 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3157, metadata !DIExpression()), !dbg !3159
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3158, metadata !DIExpression()), !dbg !3160
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3161
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3163
  br i1 %1, label %if.then, label %if.else, !dbg !3164

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !3165
  %3 = load i64, ptr %nr.addr, align 8, !dbg !3165
  %shr = ashr i64 %3, 3, !dbg !3165
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !3165
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3167
  %and = and i64 %4, 7, !dbg !3167
  %sh_prom = trunc i64 %and to i32, !dbg !3167
  %shl = shl i32 1, %sh_prom, !dbg !3167
  %not = xor i32 %shl, -1, !dbg !3168
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #12, !dbg !3169, !srcloc !3170
  br label %if.end, !dbg !3171

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3172
  %6 = load i64, ptr %nr.addr, align 8, !dbg !3174
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #12, !dbg !3175, !srcloc !3176
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3177
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #2 align 16 !dbg !3178 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3182, metadata !DIExpression()), !dbg !3183
  ret i1 true, !dbg !3184
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !3185 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3187, metadata !DIExpression()), !dbg !3189
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3188, metadata !DIExpression()), !dbg !3190
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3191
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3192
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3193
  store ptr %0, ptr %prev1, align 8, !dbg !3194
  br label %do.body, !dbg !3195

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3196

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3198

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3196

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3200
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3200
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3200
  store volatile ptr %2, ptr %next4, align 8, !dbg !3200
  br label %do.end5, !dbg !3200

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3196

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3202
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3203 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3205, metadata !DIExpression()), !dbg !3207
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3206, metadata !DIExpression()), !dbg !3208
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3209
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3210
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !3211, !srcloc !3212
  ret void, !dbg !3213
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #2 align 16 !dbg !3214 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3220, metadata !DIExpression()), !dbg !3221
  br label %do.body, !dbg !3222

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3224

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3222
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3222
  %1 = load volatile ptr, ptr %next, align 8, !dbg !3222
  store ptr %1, ptr %tmp, align 8, !dbg !3224
  %2 = load ptr, ptr %tmp, align 8, !dbg !3222
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3226
  %cmp = icmp eq ptr %2, %3, !dbg !3227
  %conv = zext i1 %cmp to i32, !dbg !3227
  ret i32 %conv, !dbg !3228
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drm_mm_hole_node_start(ptr noundef %hole_node) #2 align 16 !dbg !3229 {
entry:
  %hole_node.addr = alloca ptr, align 8
  store ptr %hole_node, ptr %hole_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hole_node.addr, metadata !3231, metadata !DIExpression()), !dbg !3232
  %0 = load ptr, ptr %hole_node.addr, align 8, !dbg !3233
  %call = call i64 @__drm_mm_hole_node_start(ptr noundef %0) #11, !dbg !3234
  ret i64 %call, !dbg !3235
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone }
attributes #12 = { nounwind }
attributes #13 = { noredzone nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drm_mm_interval_first283", scope: !2, file: !3, line: 162, type: !81, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_mm.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_mm\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_mm.ll drivers/gpu/drm/drm_mm.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !98, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_mm.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9e97c2b90da771b63a72c19cb0c5a916")
!4 = !{!5, !16}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mm_insert_mode", file: !6, line: 70, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84c90dff9a569f9267103742808582e0")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "DRM_MM_INSERT_BEST", value: 0)
!10 = !DIEnumerator(name: "DRM_MM_INSERT_LOW", value: 1)
!11 = !DIEnumerator(name: "DRM_MM_INSERT_HIGH", value: 2)
!12 = !DIEnumerator(name: "DRM_MM_INSERT_EVICT", value: 3)
!13 = !DIEnumerator(name: "DRM_MM_INSERT_ONCE", value: 2147483648, isUnsigned: true)
!14 = !DIEnumerator(name: "DRM_MM_INSERT_HIGHEST", value: 2147483650, isUnsigned: true)
!15 = !DIEnumerator(name: "DRM_MM_INSERT_LOWEST", value: 2147483649, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 10, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "false", value: 0)
!20 = !DIEnumerator(name: "true", value: 1)
!21 = !{!22, !38, !81, !82, !83, !43, !57, !85, !86, !89, !30, !34, !91, !93, !95}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !24, line: 26, size: 128, elements: !25)
!24 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!25 = !{!26, !37}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !23, file: !24, line: 27, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !24, line: 12, size: 64, elements: !28)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !27, file: !24, line: 13, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !24, line: 5, size: 192, align: 64, elements: !32)
!32 = !{!33, !35, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !31, file: !24, line: 6, baseType: !34, size: 64)
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !31, file: !24, line: 7, baseType: !30, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !31, file: !24, line: 8, baseType: !30, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !23, file: !24, line: 28, baseType: !30, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !6, line: 157, size: 1344, elements: !40)
!40 = !{!41, !42, !48, !49, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !39, file: !6, line: 159, baseType: !34, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !39, file: !6, line: 161, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !44, line: 23, baseType: !45)
!44 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !46, line: 31, baseType: !47)
!46 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!47 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !39, file: !6, line: 163, baseType: !43, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !39, file: !6, line: 165, baseType: !50, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !6, line: 190, size: 1920, elements: !52)
!52 = !{!53, !60, !67, !68, !69, !70, !71}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !51, file: !6, line: 200, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57, !34, !59, !59}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !51, file: !6, line: 206, baseType: !61, size: 128, offset: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !62, line: 190, size: 128, elements: !63)
!62 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!63 = !{!64, !66}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !61, file: !62, line: 191, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !61, file: !62, line: 191, baseType: !65, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !51, file: !6, line: 209, baseType: !39, size: 1344, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !51, file: !6, line: 211, baseType: !23, size: 128, offset: 1536)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !51, file: !6, line: 212, baseType: !23, size: 128, offset: 1664)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !51, file: !6, line: 213, baseType: !27, size: 64, offset: 1792)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !51, file: !6, line: 215, baseType: !34, size: 64, offset: 1856)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !39, file: !6, line: 166, baseType: !61, size: 128, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !39, file: !6, line: 167, baseType: !61, size: 128, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !39, file: !6, line: 168, baseType: !31, size: 192, align: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !39, file: !6, line: 169, baseType: !31, size: 192, align: 64, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !39, file: !6, line: 170, baseType: !31, size: 192, align: 64, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !39, file: !6, line: 171, baseType: !43, size: 64, offset: 1088)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !39, file: !6, line: 172, baseType: !43, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !39, file: !6, line: 173, baseType: !43, size: 64, offset: 1216)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !6, line: 174, baseType: !34, size: 64, offset: 1280)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !62, line: 42, baseType: !34)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !88)
!88 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !65)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !97)
!97 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !{!0, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !122, !127, !129, !134, !139, !141, !153, !155}
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_mm_reserve_node285", scope: !2, file: !3, line: 491, type: !81, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_mm_insert_node_in_range294", scope: !2, file: !3, line: 612, type: !81, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_mm_remove_node295", scope: !2, file: !3, line: 649, type: !81, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_mm_replace_node296", scope: !2, file: !3, line: 684, type: !81, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_mm_scan_init_with_range297", scope: !2, file: !3, line: 767, type: !81, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_mm_scan_add_block306", scope: !2, file: !3, line: 850, type: !81, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_mm_scan_remove_block307", scope: !2, file: !3, line: 899, type: !81, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_mm_scan_color_evict308", scope: !2, file: !3, line: 953, type: !81, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_mm_init309", scope: !2, file: !3, line: 988, type: !81, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !3, line: 999, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 344, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 43)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !3, line: 999, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 200, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 25)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_mm_takedown310", scope: !2, file: !3, line: 1003, type: !81, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1031, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 248, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 31)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1038, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 272, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 34)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_mm_print311", scope: !2, file: !3, line: 1041, type: !81, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "drm_mm_interval_tree_augment", scope: !2, file: !3, line: 152, type: !143, isLocal: true, isDefinition: true)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_augment_callbacks", file: !145, line: 27, size: 192, elements: !146)
!145 = !DIFile(filename: "./include/linux/rbtree_augmented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6ddc521985c4f988291280d937ba9ac7")
!146 = !{!147, !151, !152}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "propagate", scope: !144, file: !145, line: 28, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !30, !30}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !144, file: !145, line: 29, baseType: !148, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !144, file: !145, line: 30, baseType: !148, size: 64, offset: 128)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "augment_callbacks", scope: !2, file: !3, line: 241, type: !143, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1012, type: !131, isLocal: true, isDefinition: true)
!157 = !{i32 7, !"Dwarf Version", i32 5}
!158 = !{i32 2, !"Debug Info Version", i32 3}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 8, !"cf-protection-branch", i32 1}
!161 = !{i32 4, !"function_return_thunk_extern", i32 1}
!162 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!163 = !{i32 1, !"Code Model", i32 2}
!164 = !{i32 1, !"override-stack-alignment", i32 8}
!165 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!166 = distinct !DISubprogram(name: "__drm_mm_interval_first", scope: !3, file: !3, line: 157, type: !167, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !171)
!167 = !DISubroutineType(types: !168)
!168 = !{!38, !169, !43, !43}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!171 = !{!172, !173, !174}
!172 = !DILocalVariable(name: "mm", arg: 1, scope: !166, file: !3, line: 157, type: !169)
!173 = !DILocalVariable(name: "start", arg: 2, scope: !166, file: !3, line: 157, type: !43)
!174 = !DILocalVariable(name: "last", arg: 3, scope: !166, file: !3, line: 157, type: !43)
!175 = !DILocation(line: 157, column: 46, scope: !166)
!176 = !DILocation(line: 157, column: 54, scope: !166)
!177 = !DILocation(line: 157, column: 65, scope: !166)
!178 = !DILocation(line: 159, column: 67, scope: !166)
!179 = !DILocation(line: 159, column: 71, scope: !166)
!180 = !DILocation(line: 160, column: 13, scope: !166)
!181 = !DILocation(line: 160, column: 20, scope: !166)
!182 = !DILocation(line: 159, column: 9, scope: !166)
!183 = !DILocation(line: 160, column: 52, scope: !166)
!184 = !DILocation(line: 160, column: 56, scope: !166)
!185 = !DILocation(line: 159, column: 2, scope: !166)
!186 = distinct !DISubprogram(name: "drm_mm_interval_tree_iter_first", scope: !3, file: !3, line: 152, type: !187, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{!38, !22, !43, !43}
!189 = !{!190, !191, !192, !193, !194, !195, !197}
!190 = !DILocalVariable(name: "root", arg: 1, scope: !186, file: !3, line: 152, type: !22)
!191 = !DILocalVariable(name: "start", arg: 2, scope: !186, file: !3, line: 152, type: !43)
!192 = !DILocalVariable(name: "last", arg: 3, scope: !186, file: !3, line: 152, type: !43)
!193 = !DILocalVariable(name: "node", scope: !186, file: !3, line: 152, type: !38)
!194 = !DILocalVariable(name: "leftmost", scope: !186, file: !3, line: 152, type: !38)
!195 = !DILocalVariable(name: "__mptr", scope: !196, file: !3, line: 152, type: !81)
!196 = distinct !DILexicalBlock(scope: !186, file: !3, line: 152, column: 1)
!197 = !DILocalVariable(name: "__mptr", scope: !198, file: !3, line: 152, type: !81)
!198 = distinct !DILexicalBlock(scope: !186, file: !3, line: 152, column: 1)
!199 = !DILocation(line: 152, column: 1, scope: !186)
!200 = !DILocation(line: 152, column: 1, scope: !201)
!201 = distinct !DILexicalBlock(scope: !186, file: !3, line: 152, column: 1)
!202 = !DILocation(line: 152, column: 1, scope: !196)
!203 = !DILocation(line: 152, column: 1, scope: !204)
!204 = distinct !DILexicalBlock(scope: !186, file: !3, line: 152, column: 1)
!205 = !DILocation(line: 152, column: 1, scope: !198)
!206 = !DILocation(line: 152, column: 1, scope: !207)
!207 = distinct !DILexicalBlock(scope: !186, file: !3, line: 152, column: 1)
!208 = distinct !DISubprogram(name: "drm_mm_reserve_node", scope: !3, file: !3, line: 450, type: !209, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !212)
!209 = !DISubroutineType(types: !210)
!210 = !{!211, !50, !38}
!211 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220}
!213 = !DILocalVariable(name: "mm", arg: 1, scope: !208, file: !3, line: 450, type: !50)
!214 = !DILocalVariable(name: "node", arg: 2, scope: !208, file: !3, line: 450, type: !38)
!215 = !DILocalVariable(name: "hole", scope: !208, file: !3, line: 452, type: !38)
!216 = !DILocalVariable(name: "hole_start", scope: !208, file: !3, line: 453, type: !43)
!217 = !DILocalVariable(name: "hole_end", scope: !208, file: !3, line: 453, type: !43)
!218 = !DILocalVariable(name: "adj_start", scope: !208, file: !3, line: 454, type: !43)
!219 = !DILocalVariable(name: "adj_end", scope: !208, file: !3, line: 454, type: !43)
!220 = !DILocalVariable(name: "end", scope: !208, file: !3, line: 455, type: !43)
!221 = !DILocation(line: 450, column: 40, scope: !208)
!222 = !DILocation(line: 450, column: 64, scope: !208)
!223 = !DILocation(line: 452, column: 2, scope: !208)
!224 = !DILocation(line: 452, column: 22, scope: !208)
!225 = !DILocation(line: 453, column: 2, scope: !208)
!226 = !DILocation(line: 453, column: 6, scope: !208)
!227 = !DILocation(line: 453, column: 18, scope: !208)
!228 = !DILocation(line: 454, column: 2, scope: !208)
!229 = !DILocation(line: 454, column: 6, scope: !208)
!230 = !DILocation(line: 454, column: 17, scope: !208)
!231 = !DILocation(line: 455, column: 2, scope: !208)
!232 = !DILocation(line: 455, column: 6, scope: !208)
!233 = !DILocation(line: 457, column: 8, scope: !208)
!234 = !DILocation(line: 457, column: 14, scope: !208)
!235 = !DILocation(line: 457, column: 22, scope: !208)
!236 = !DILocation(line: 457, column: 28, scope: !208)
!237 = !DILocation(line: 457, column: 20, scope: !208)
!238 = !DILocation(line: 457, column: 6, scope: !208)
!239 = !DILocation(line: 458, column: 6, scope: !240)
!240 = distinct !DILexicalBlock(scope: !208, file: !3, line: 458, column: 6)
!241 = !DILocation(line: 458, column: 6, scope: !208)
!242 = !DILocation(line: 459, column: 3, scope: !240)
!243 = !DILocation(line: 462, column: 24, scope: !208)
!244 = !DILocation(line: 462, column: 28, scope: !208)
!245 = !DILocation(line: 462, column: 34, scope: !208)
!246 = !DILocation(line: 462, column: 9, scope: !208)
!247 = !DILocation(line: 462, column: 7, scope: !208)
!248 = !DILocation(line: 463, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !208, file: !3, line: 463, column: 6)
!250 = !DILocation(line: 463, column: 6, scope: !208)
!251 = !DILocation(line: 464, column: 3, scope: !249)
!252 = !DILocation(line: 466, column: 52, scope: !208)
!253 = !DILocation(line: 466, column: 27, scope: !208)
!254 = !DILocation(line: 466, column: 25, scope: !208)
!255 = !DILocation(line: 466, column: 12, scope: !208)
!256 = !DILocation(line: 467, column: 23, scope: !208)
!257 = !DILocation(line: 467, column: 36, scope: !208)
!258 = !DILocation(line: 467, column: 42, scope: !208)
!259 = !DILocation(line: 467, column: 34, scope: !208)
!260 = !DILocation(line: 467, column: 21, scope: !208)
!261 = !DILocation(line: 467, column: 10, scope: !208)
!262 = !DILocation(line: 469, column: 6, scope: !263)
!263 = distinct !DILexicalBlock(scope: !208, file: !3, line: 469, column: 6)
!264 = !DILocation(line: 469, column: 10, scope: !263)
!265 = !DILocation(line: 469, column: 6, scope: !208)
!266 = !DILocation(line: 470, column: 3, scope: !263)
!267 = !DILocation(line: 470, column: 7, scope: !263)
!268 = !DILocation(line: 470, column: 20, scope: !263)
!269 = !DILocation(line: 470, column: 26, scope: !263)
!270 = !DILocation(line: 470, column: 32, scope: !263)
!271 = !DILocation(line: 472, column: 6, scope: !272)
!272 = distinct !DILexicalBlock(scope: !208, file: !3, line: 472, column: 6)
!273 = !DILocation(line: 472, column: 18, scope: !272)
!274 = !DILocation(line: 472, column: 24, scope: !272)
!275 = !DILocation(line: 472, column: 16, scope: !272)
!276 = !DILocation(line: 472, column: 30, scope: !272)
!277 = !DILocation(line: 472, column: 33, scope: !272)
!278 = !DILocation(line: 472, column: 43, scope: !272)
!279 = !DILocation(line: 472, column: 41, scope: !272)
!280 = !DILocation(line: 472, column: 6, scope: !208)
!281 = !DILocation(line: 473, column: 3, scope: !272)
!282 = !DILocation(line: 475, column: 13, scope: !208)
!283 = !DILocation(line: 475, column: 2, scope: !208)
!284 = !DILocation(line: 475, column: 8, scope: !208)
!285 = !DILocation(line: 475, column: 11, scope: !208)
!286 = !DILocation(line: 477, column: 2, scope: !208)
!287 = !DILocation(line: 478, column: 12, scope: !208)
!288 = !DILocation(line: 478, column: 18, scope: !208)
!289 = !DILocation(line: 478, column: 30, scope: !208)
!290 = !DILocation(line: 478, column: 36, scope: !208)
!291 = !DILocation(line: 478, column: 2, scope: !208)
!292 = !DILocation(line: 479, column: 32, scope: !208)
!293 = !DILocation(line: 479, column: 38, scope: !208)
!294 = !DILocation(line: 479, column: 2, scope: !208)
!295 = !DILocation(line: 480, column: 2, scope: !208)
!296 = !DILocation(line: 480, column: 8, scope: !208)
!297 = !DILocation(line: 480, column: 18, scope: !208)
!298 = !DILocation(line: 482, column: 10, scope: !208)
!299 = !DILocation(line: 482, column: 2, scope: !208)
!300 = !DILocation(line: 483, column: 6, scope: !301)
!301 = distinct !DILexicalBlock(scope: !208, file: !3, line: 483, column: 6)
!302 = !DILocation(line: 483, column: 12, scope: !301)
!303 = !DILocation(line: 483, column: 20, scope: !301)
!304 = !DILocation(line: 483, column: 18, scope: !301)
!305 = !DILocation(line: 483, column: 6, scope: !208)
!306 = !DILocation(line: 484, column: 12, scope: !301)
!307 = !DILocation(line: 484, column: 3, scope: !301)
!308 = !DILocation(line: 485, column: 6, scope: !309)
!309 = distinct !DILexicalBlock(scope: !208, file: !3, line: 485, column: 6)
!310 = !DILocation(line: 485, column: 12, scope: !309)
!311 = !DILocation(line: 485, column: 10, scope: !309)
!312 = !DILocation(line: 485, column: 6, scope: !208)
!313 = !DILocation(line: 486, column: 12, scope: !309)
!314 = !DILocation(line: 486, column: 3, scope: !309)
!315 = !DILocation(line: 488, column: 13, scope: !208)
!316 = !DILocation(line: 488, column: 2, scope: !208)
!317 = !DILocation(line: 489, column: 2, scope: !208)
!318 = !DILocation(line: 490, column: 1, scope: !208)
!319 = distinct !DISubprogram(name: "find_hole_addr", scope: !3, file: !3, line: 330, type: !320, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !322)
!320 = !DISubroutineType(types: !321)
!321 = !{!38, !50, !43, !43}
!322 = !{!323, !324, !325, !326, !327, !328}
!323 = !DILocalVariable(name: "mm", arg: 1, scope: !319, file: !3, line: 330, type: !50)
!324 = !DILocalVariable(name: "addr", arg: 2, scope: !319, file: !3, line: 330, type: !43)
!325 = !DILocalVariable(name: "size", arg: 3, scope: !319, file: !3, line: 330, type: !43)
!326 = !DILocalVariable(name: "rb", scope: !319, file: !3, line: 332, type: !30)
!327 = !DILocalVariable(name: "node", scope: !319, file: !3, line: 333, type: !38)
!328 = !DILocalVariable(name: "hole_start", scope: !329, file: !3, line: 336, type: !43)
!329 = distinct !DILexicalBlock(scope: !319, file: !3, line: 335, column: 13)
!330 = !DILocation(line: 330, column: 58, scope: !319)
!331 = !DILocation(line: 330, column: 66, scope: !319)
!332 = !DILocation(line: 330, column: 76, scope: !319)
!333 = !DILocation(line: 332, column: 2, scope: !319)
!334 = !DILocation(line: 332, column: 18, scope: !319)
!335 = !DILocation(line: 332, column: 23, scope: !319)
!336 = !DILocation(line: 332, column: 27, scope: !319)
!337 = !DILocation(line: 332, column: 38, scope: !319)
!338 = !DILocation(line: 333, column: 2, scope: !319)
!339 = !DILocation(line: 333, column: 22, scope: !319)
!340 = !DILocation(line: 335, column: 2, scope: !319)
!341 = !DILocation(line: 335, column: 9, scope: !319)
!342 = !DILocation(line: 336, column: 3, scope: !329)
!343 = !DILocation(line: 336, column: 7, scope: !329)
!344 = !DILocation(line: 338, column: 25, scope: !345)
!345 = distinct !DILexicalBlock(scope: !329, file: !3, line: 338, column: 7)
!346 = !DILocation(line: 338, column: 29, scope: !345)
!347 = !DILocation(line: 338, column: 8, scope: !345)
!348 = !DILocation(line: 338, column: 7, scope: !329)
!349 = !DILocation(line: 339, column: 4, scope: !345)
!350 = !DILocation(line: 341, column: 31, scope: !329)
!351 = !DILocation(line: 341, column: 10, scope: !329)
!352 = !DILocation(line: 341, column: 8, scope: !329)
!353 = !DILocation(line: 342, column: 41, scope: !329)
!354 = !DILocation(line: 342, column: 16, scope: !329)
!355 = !DILocation(line: 342, column: 14, scope: !329)
!356 = !DILocation(line: 344, column: 7, scope: !357)
!357 = distinct !DILexicalBlock(scope: !329, file: !3, line: 344, column: 7)
!358 = !DILocation(line: 344, column: 14, scope: !357)
!359 = !DILocation(line: 344, column: 12, scope: !357)
!360 = !DILocation(line: 344, column: 7, scope: !329)
!361 = !DILocation(line: 345, column: 9, scope: !357)
!362 = !DILocation(line: 345, column: 15, scope: !357)
!363 = !DILocation(line: 345, column: 28, scope: !357)
!364 = !DILocation(line: 345, column: 7, scope: !357)
!365 = !DILocation(line: 345, column: 4, scope: !357)
!366 = !DILocation(line: 346, column: 12, scope: !367)
!367 = distinct !DILexicalBlock(scope: !357, file: !3, line: 346, column: 12)
!368 = !DILocation(line: 346, column: 19, scope: !367)
!369 = !DILocation(line: 346, column: 32, scope: !367)
!370 = !DILocation(line: 346, column: 38, scope: !367)
!371 = !DILocation(line: 346, column: 30, scope: !367)
!372 = !DILocation(line: 346, column: 17, scope: !367)
!373 = !DILocation(line: 346, column: 12, scope: !357)
!374 = !DILocation(line: 347, column: 9, scope: !367)
!375 = !DILocation(line: 347, column: 15, scope: !367)
!376 = !DILocation(line: 347, column: 28, scope: !367)
!377 = !DILocation(line: 347, column: 7, scope: !367)
!378 = !DILocation(line: 347, column: 4, scope: !367)
!379 = !DILocation(line: 349, column: 4, scope: !367)
!380 = !DILocation(line: 350, column: 2, scope: !319)
!381 = distinct !{!381, !340, !380, !382, !383}
!382 = !{!"llvm.loop.mustprogress"}
!383 = !{!"llvm.loop.unroll.disable"}
!384 = !DILocation(line: 352, column: 9, scope: !319)
!385 = !DILocation(line: 353, column: 1, scope: !319)
!386 = !DILocation(line: 352, column: 2, scope: !319)
!387 = distinct !DISubprogram(name: "__drm_mm_hole_node_start", scope: !6, file: !6, line: 298, type: !388, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !390)
!388 = !DISubroutineType(types: !389)
!389 = !{!43, !57}
!390 = !{!391}
!391 = !DILocalVariable(name: "hole_node", arg: 1, scope: !387, file: !6, line: 298, type: !57)
!392 = !DILocation(line: 298, column: 70, scope: !387)
!393 = !DILocation(line: 300, column: 9, scope: !387)
!394 = !DILocation(line: 300, column: 20, scope: !387)
!395 = !DILocation(line: 300, column: 28, scope: !387)
!396 = !DILocation(line: 300, column: 39, scope: !387)
!397 = !DILocation(line: 300, column: 26, scope: !387)
!398 = !DILocation(line: 300, column: 2, scope: !387)
!399 = distinct !DISubprogram(name: "generic___set_bit", scope: !400, file: !400, line: 28, type: !401, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !405)
!400 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!401 = !DISubroutineType(types: !402)
!402 = !{null, !34, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!405 = !{!406, !407, !408, !409}
!406 = !DILocalVariable(name: "nr", arg: 1, scope: !399, file: !400, line: 28, type: !34)
!407 = !DILocalVariable(name: "addr", arg: 2, scope: !399, file: !400, line: 28, type: !403)
!408 = !DILocalVariable(name: "mask", scope: !399, file: !400, line: 30, type: !34)
!409 = !DILocalVariable(name: "p", scope: !399, file: !400, line: 31, type: !85)
!410 = !DILocation(line: 28, column: 33, scope: !399)
!411 = !DILocation(line: 28, column: 61, scope: !399)
!412 = !DILocation(line: 30, column: 2, scope: !399)
!413 = !DILocation(line: 30, column: 16, scope: !399)
!414 = !DILocation(line: 30, column: 23, scope: !399)
!415 = !DILocation(line: 31, column: 2, scope: !399)
!416 = !DILocation(line: 31, column: 17, scope: !399)
!417 = !DILocation(line: 31, column: 39, scope: !399)
!418 = !DILocation(line: 31, column: 47, scope: !399)
!419 = !DILocation(line: 31, column: 45, scope: !399)
!420 = !DILocation(line: 33, column: 9, scope: !399)
!421 = !DILocation(line: 33, column: 3, scope: !399)
!422 = !DILocation(line: 33, column: 6, scope: !399)
!423 = !DILocation(line: 34, column: 1, scope: !399)
!424 = distinct !DISubprogram(name: "___set_bit", scope: !425, file: !425, line: 26, type: !401, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !426)
!425 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!426 = !{!427, !428}
!427 = !DILocalVariable(name: "nr", arg: 1, scope: !424, file: !425, line: 26, type: !34)
!428 = !DILocalVariable(name: "addr", arg: 2, scope: !424, file: !425, line: 26, type: !403)
!429 = !DILocation(line: 26, column: 26, scope: !424)
!430 = !DILocation(line: 26, column: 54, scope: !424)
!431 = !DILocation(line: 28, column: 19, scope: !424)
!432 = !DILocation(line: 28, column: 26, scope: !424)
!433 = !DILocation(line: 28, column: 24, scope: !424)
!434 = !DILocation(line: 28, column: 2, scope: !424)
!435 = !DILocation(line: 29, column: 17, scope: !424)
!436 = !DILocation(line: 29, column: 21, scope: !424)
!437 = !DILocation(line: 29, column: 2, scope: !424)
!438 = !DILocation(line: 30, column: 1, scope: !424)
!439 = distinct !DISubprogram(name: "list_add", scope: !440, file: !440, line: 167, type: !441, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !443)
!440 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!441 = !DISubroutineType(types: !442)
!442 = !{null, !65, !65}
!443 = !{!444, !445}
!444 = !DILocalVariable(name: "new", arg: 1, scope: !439, file: !440, line: 167, type: !65)
!445 = !DILocalVariable(name: "head", arg: 2, scope: !439, file: !440, line: 167, type: !65)
!446 = !DILocation(line: 167, column: 47, scope: !439)
!447 = !DILocation(line: 167, column: 70, scope: !439)
!448 = !DILocation(line: 169, column: 13, scope: !439)
!449 = !DILocation(line: 169, column: 18, scope: !439)
!450 = !DILocation(line: 169, column: 24, scope: !439)
!451 = !DILocation(line: 169, column: 30, scope: !439)
!452 = !DILocation(line: 169, column: 2, scope: !439)
!453 = !DILocation(line: 170, column: 1, scope: !439)
!454 = distinct !DISubprogram(name: "drm_mm_interval_tree_add_node", scope: !3, file: !3, line: 164, type: !455, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !38, !38}
!457 = !{!458, !459, !460, !461, !463, !464, !465, !468, !473}
!458 = !DILocalVariable(name: "hole_node", arg: 1, scope: !454, file: !3, line: 164, type: !38)
!459 = !DILocalVariable(name: "node", arg: 2, scope: !454, file: !3, line: 165, type: !38)
!460 = !DILocalVariable(name: "mm", scope: !454, file: !3, line: 167, type: !50)
!461 = !DILocalVariable(name: "link", scope: !454, file: !3, line: 168, type: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!463 = !DILocalVariable(name: "rb", scope: !454, file: !3, line: 168, type: !30)
!464 = !DILocalVariable(name: "parent", scope: !454, file: !3, line: 169, type: !38)
!465 = !DILocalVariable(name: "leftmost", scope: !454, file: !3, line: 170, type: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !62, line: 35, baseType: !467)
!467 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!468 = !DILocalVariable(name: "__mptr", scope: !469, file: !3, line: 177, type: !81)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 177, column: 13)
!470 = distinct !DILexicalBlock(scope: !471, file: !3, line: 176, column: 14)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 174, column: 40)
!472 = distinct !DILexicalBlock(scope: !454, file: !3, line: 174, column: 6)
!473 = !DILocalVariable(name: "__mptr", scope: !474, file: !3, line: 196, type: !81)
!474 = distinct !DILexicalBlock(scope: !475, file: !3, line: 196, column: 12)
!475 = distinct !DILexicalBlock(scope: !454, file: !3, line: 194, column: 16)
!476 = !DILocation(line: 164, column: 63, scope: !454)
!477 = !DILocation(line: 165, column: 28, scope: !454)
!478 = !DILocation(line: 167, column: 2, scope: !454)
!479 = !DILocation(line: 167, column: 17, scope: !454)
!480 = !DILocation(line: 167, column: 22, scope: !454)
!481 = !DILocation(line: 167, column: 33, scope: !454)
!482 = !DILocation(line: 168, column: 2, scope: !454)
!483 = !DILocation(line: 168, column: 19, scope: !454)
!484 = !DILocation(line: 168, column: 26, scope: !454)
!485 = !DILocation(line: 169, column: 2, scope: !454)
!486 = !DILocation(line: 169, column: 22, scope: !454)
!487 = !DILocation(line: 170, column: 2, scope: !454)
!488 = !DILocation(line: 170, column: 7, scope: !454)
!489 = !DILocation(line: 172, column: 25, scope: !454)
!490 = !DILocation(line: 172, column: 2, scope: !454)
!491 = !DILocation(line: 172, column: 8, scope: !454)
!492 = !DILocation(line: 172, column: 23, scope: !454)
!493 = !DILocation(line: 174, column: 28, scope: !472)
!494 = !DILocation(line: 174, column: 6, scope: !472)
!495 = !DILocation(line: 174, column: 6, scope: !454)
!496 = !DILocation(line: 175, column: 9, scope: !471)
!497 = !DILocation(line: 175, column: 20, scope: !471)
!498 = !DILocation(line: 175, column: 6, scope: !471)
!499 = !DILocation(line: 176, column: 3, scope: !471)
!500 = !DILocation(line: 176, column: 10, scope: !471)
!501 = !DILocation(line: 177, column: 13, scope: !469)
!502 = !DILocation(line: 177, column: 13, scope: !470)
!503 = !DILocation(line: 177, column: 11, scope: !470)
!504 = !DILocation(line: 178, column: 8, scope: !505)
!505 = distinct !DILexicalBlock(scope: !470, file: !3, line: 178, column: 8)
!506 = !DILocation(line: 178, column: 16, scope: !505)
!507 = !DILocation(line: 178, column: 34, scope: !505)
!508 = !DILocation(line: 178, column: 40, scope: !505)
!509 = !DILocation(line: 178, column: 31, scope: !505)
!510 = !DILocation(line: 178, column: 8, scope: !470)
!511 = !DILocation(line: 179, column: 5, scope: !505)
!512 = !DILocation(line: 181, column: 29, scope: !470)
!513 = !DILocation(line: 181, column: 35, scope: !470)
!514 = !DILocation(line: 181, column: 4, scope: !470)
!515 = !DILocation(line: 181, column: 12, scope: !470)
!516 = !DILocation(line: 181, column: 27, scope: !470)
!517 = !DILocation(line: 182, column: 9, scope: !470)
!518 = !DILocation(line: 182, column: 7, scope: !470)
!519 = distinct !{!519, !499, !520, !382, !383}
!520 = !DILocation(line: 183, column: 3, scope: !471)
!521 = !DILocation(line: 185, column: 9, scope: !471)
!522 = !DILocation(line: 185, column: 20, scope: !471)
!523 = !DILocation(line: 185, column: 6, scope: !471)
!524 = !DILocation(line: 186, column: 11, scope: !471)
!525 = !DILocation(line: 186, column: 22, scope: !471)
!526 = !DILocation(line: 186, column: 25, scope: !471)
!527 = !DILocation(line: 186, column: 8, scope: !471)
!528 = !DILocation(line: 187, column: 12, scope: !471)
!529 = !DILocation(line: 188, column: 2, scope: !471)
!530 = !DILocation(line: 189, column: 6, scope: !531)
!531 = distinct !DILexicalBlock(scope: !472, file: !3, line: 188, column: 9)
!532 = !DILocation(line: 190, column: 11, scope: !531)
!533 = !DILocation(line: 190, column: 15, scope: !531)
!534 = !DILocation(line: 190, column: 29, scope: !531)
!535 = !DILocation(line: 190, column: 37, scope: !531)
!536 = !DILocation(line: 190, column: 8, scope: !531)
!537 = !DILocation(line: 191, column: 12, scope: !531)
!538 = !DILocation(line: 194, column: 2, scope: !454)
!539 = !DILocation(line: 194, column: 10, scope: !454)
!540 = !DILocation(line: 194, column: 9, scope: !454)
!541 = !DILocation(line: 195, column: 9, scope: !475)
!542 = !DILocation(line: 195, column: 8, scope: !475)
!543 = !DILocation(line: 195, column: 6, scope: !475)
!544 = !DILocation(line: 196, column: 12, scope: !474)
!545 = !DILocation(line: 196, column: 12, scope: !475)
!546 = !DILocation(line: 196, column: 10, scope: !475)
!547 = !DILocation(line: 197, column: 7, scope: !548)
!548 = distinct !DILexicalBlock(scope: !475, file: !3, line: 197, column: 7)
!549 = !DILocation(line: 197, column: 15, scope: !548)
!550 = !DILocation(line: 197, column: 32, scope: !548)
!551 = !DILocation(line: 197, column: 38, scope: !548)
!552 = !DILocation(line: 197, column: 30, scope: !548)
!553 = !DILocation(line: 197, column: 7, scope: !475)
!554 = !DILocation(line: 198, column: 29, scope: !548)
!555 = !DILocation(line: 198, column: 35, scope: !548)
!556 = !DILocation(line: 198, column: 4, scope: !548)
!557 = !DILocation(line: 198, column: 12, scope: !548)
!558 = !DILocation(line: 198, column: 27, scope: !548)
!559 = !DILocation(line: 199, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !475, file: !3, line: 199, column: 7)
!561 = !DILocation(line: 199, column: 13, scope: !560)
!562 = !DILocation(line: 199, column: 21, scope: !560)
!563 = !DILocation(line: 199, column: 29, scope: !560)
!564 = !DILocation(line: 199, column: 19, scope: !560)
!565 = !DILocation(line: 199, column: 7, scope: !475)
!566 = !DILocation(line: 200, column: 12, scope: !567)
!567 = distinct !DILexicalBlock(scope: !560, file: !3, line: 199, column: 36)
!568 = !DILocation(line: 200, column: 20, scope: !567)
!569 = !DILocation(line: 200, column: 23, scope: !567)
!570 = !DILocation(line: 200, column: 9, scope: !567)
!571 = !DILocation(line: 201, column: 3, scope: !567)
!572 = !DILocation(line: 202, column: 12, scope: !573)
!573 = distinct !DILexicalBlock(scope: !560, file: !3, line: 201, column: 10)
!574 = !DILocation(line: 202, column: 20, scope: !573)
!575 = !DILocation(line: 202, column: 23, scope: !573)
!576 = !DILocation(line: 202, column: 9, scope: !573)
!577 = !DILocation(line: 203, column: 13, scope: !573)
!578 = distinct !{!578, !538, !579, !382, !383}
!579 = !DILocation(line: 205, column: 2, scope: !454)
!580 = !DILocation(line: 207, column: 16, scope: !454)
!581 = !DILocation(line: 207, column: 22, scope: !454)
!582 = !DILocation(line: 207, column: 26, scope: !454)
!583 = !DILocation(line: 207, column: 30, scope: !454)
!584 = !DILocation(line: 207, column: 2, scope: !454)
!585 = !DILocation(line: 208, column: 30, scope: !454)
!586 = !DILocation(line: 208, column: 36, scope: !454)
!587 = !DILocation(line: 208, column: 41, scope: !454)
!588 = !DILocation(line: 208, column: 45, scope: !454)
!589 = !DILocation(line: 208, column: 60, scope: !454)
!590 = !{i8 0, i8 2}
!591 = !{}
!592 = !DILocation(line: 208, column: 2, scope: !454)
!593 = !DILocation(line: 210, column: 1, scope: !454)
!594 = distinct !DISubprogram(name: "rm_hole", scope: !3, file: !3, line: 281, type: !595, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !38}
!597 = !{!598}
!598 = !DILocalVariable(name: "node", arg: 1, scope: !594, file: !3, line: 281, type: !38)
!599 = !DILocation(line: 281, column: 41, scope: !594)
!600 = !DILocation(line: 285, column: 12, scope: !594)
!601 = !DILocation(line: 285, column: 18, scope: !594)
!602 = !DILocation(line: 285, column: 2, scope: !594)
!603 = !DILocation(line: 286, column: 19, scope: !594)
!604 = !DILocation(line: 286, column: 25, scope: !594)
!605 = !DILocation(line: 286, column: 40, scope: !594)
!606 = !DILocation(line: 286, column: 46, scope: !594)
!607 = !DILocation(line: 286, column: 50, scope: !594)
!608 = !DILocation(line: 286, column: 2, scope: !594)
!609 = !DILocation(line: 287, column: 22, scope: !594)
!610 = !DILocation(line: 287, column: 28, scope: !594)
!611 = !DILocation(line: 287, column: 43, scope: !594)
!612 = !DILocation(line: 287, column: 49, scope: !594)
!613 = !DILocation(line: 287, column: 53, scope: !594)
!614 = !DILocation(line: 287, column: 2, scope: !594)
!615 = !DILocation(line: 289, column: 2, scope: !594)
!616 = !DILocation(line: 289, column: 8, scope: !594)
!617 = !DILocation(line: 289, column: 18, scope: !594)
!618 = !DILocation(line: 290, column: 2, scope: !594)
!619 = !DILocation(line: 290, column: 8, scope: !594)
!620 = !DILocation(line: 290, column: 25, scope: !594)
!621 = !DILocation(line: 293, column: 1, scope: !594)
!622 = distinct !DISubprogram(name: "add_hole", scope: !3, file: !3, line: 266, type: !595, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !623)
!623 = !{!624, !625}
!624 = !DILocalVariable(name: "node", arg: 1, scope: !622, file: !3, line: 266, type: !38)
!625 = !DILocalVariable(name: "mm", scope: !622, file: !3, line: 268, type: !50)
!626 = !DILocation(line: 266, column: 42, scope: !622)
!627 = !DILocation(line: 268, column: 2, scope: !622)
!628 = !DILocation(line: 268, column: 17, scope: !622)
!629 = !DILocation(line: 268, column: 22, scope: !622)
!630 = !DILocation(line: 268, column: 28, scope: !622)
!631 = !DILocation(line: 271, column: 26, scope: !622)
!632 = !DILocation(line: 271, column: 3, scope: !622)
!633 = !DILocation(line: 271, column: 59, scope: !622)
!634 = !DILocation(line: 271, column: 34, scope: !622)
!635 = !DILocation(line: 271, column: 32, scope: !622)
!636 = !DILocation(line: 270, column: 2, scope: !622)
!637 = !DILocation(line: 270, column: 8, scope: !622)
!638 = !DILocation(line: 270, column: 18, scope: !622)
!639 = !DILocation(line: 272, column: 27, scope: !622)
!640 = !DILocation(line: 272, column: 33, scope: !622)
!641 = !DILocation(line: 272, column: 2, scope: !622)
!642 = !DILocation(line: 272, column: 8, scope: !622)
!643 = !DILocation(line: 272, column: 25, scope: !622)
!644 = !DILocation(line: 275, column: 20, scope: !622)
!645 = !DILocation(line: 275, column: 24, scope: !622)
!646 = !DILocation(line: 275, column: 36, scope: !622)
!647 = !DILocation(line: 275, column: 2, scope: !622)
!648 = !DILocation(line: 276, column: 20, scope: !622)
!649 = !DILocation(line: 276, column: 24, scope: !622)
!650 = !DILocation(line: 276, column: 36, scope: !622)
!651 = !DILocation(line: 276, column: 2, scope: !622)
!652 = !DILocation(line: 278, column: 12, scope: !622)
!653 = !DILocation(line: 278, column: 18, scope: !622)
!654 = !DILocation(line: 278, column: 31, scope: !622)
!655 = !DILocation(line: 278, column: 35, scope: !622)
!656 = !DILocation(line: 278, column: 2, scope: !622)
!657 = !DILocation(line: 279, column: 1, scope: !622)
!658 = distinct !DISubprogram(name: "save_stack", scope: !3, file: !3, line: 145, type: !595, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !659)
!659 = !{!660}
!660 = !DILocalVariable(name: "node", arg: 1, scope: !658, file: !3, line: 145, type: !38)
!661 = !DILocation(line: 145, column: 44, scope: !658)
!662 = !DILocation(line: 145, column: 52, scope: !658)
!663 = distinct !DISubprogram(name: "drm_mm_insert_node_in_range", scope: !3, file: !3, line: 514, type: !664, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !668)
!664 = !DISubroutineType(types: !665)
!665 = !{!211, !666, !667, !43, !43, !34, !43, !43, !5}
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !684, !685, !686, !687, !688, !689, !691, !692, !694, !695, !698, !703, !704, !706}
!669 = !DILocalVariable(name: "mm", arg: 1, scope: !663, file: !3, line: 514, type: !666)
!670 = !DILocalVariable(name: "node", arg: 2, scope: !663, file: !3, line: 515, type: !667)
!671 = !DILocalVariable(name: "size", arg: 3, scope: !663, file: !3, line: 516, type: !43)
!672 = !DILocalVariable(name: "alignment", arg: 4, scope: !663, file: !3, line: 516, type: !43)
!673 = !DILocalVariable(name: "color", arg: 5, scope: !663, file: !3, line: 517, type: !34)
!674 = !DILocalVariable(name: "range_start", arg: 6, scope: !663, file: !3, line: 518, type: !43)
!675 = !DILocalVariable(name: "range_end", arg: 7, scope: !663, file: !3, line: 518, type: !43)
!676 = !DILocalVariable(name: "mode", arg: 8, scope: !663, file: !3, line: 519, type: !5)
!677 = !DILocalVariable(name: "hole", scope: !663, file: !3, line: 521, type: !38)
!678 = !DILocalVariable(name: "remainder_mask", scope: !663, file: !3, line: 522, type: !43)
!679 = !DILocalVariable(name: "once", scope: !663, file: !3, line: 523, type: !466)
!680 = !DILocalVariable(name: "hole_start", scope: !681, file: !3, line: 543, type: !43)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 542, column: 61)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 540, column: 2)
!683 = distinct !DILexicalBlock(scope: !663, file: !3, line: 540, column: 2)
!684 = !DILocalVariable(name: "hole_end", scope: !681, file: !3, line: 544, type: !43)
!685 = !DILocalVariable(name: "adj_start", scope: !681, file: !3, line: 545, type: !43)
!686 = !DILocalVariable(name: "adj_end", scope: !681, file: !3, line: 545, type: !43)
!687 = !DILocalVariable(name: "col_start", scope: !681, file: !3, line: 546, type: !43)
!688 = !DILocalVariable(name: "col_end", scope: !681, file: !3, line: 546, type: !43)
!689 = !DILocalVariable(name: "__UNIQUE_ID___x286", scope: !690, file: !3, line: 559, type: !43)
!690 = distinct !DILexicalBlock(scope: !681, file: !3, line: 559, column: 15)
!691 = !DILocalVariable(name: "__UNIQUE_ID___y287", scope: !690, file: !3, line: 559, type: !43)
!692 = !DILocalVariable(name: "__UNIQUE_ID___x288", scope: !693, file: !3, line: 560, type: !43)
!693 = distinct !DILexicalBlock(scope: !681, file: !3, line: 560, column: 13)
!694 = !DILocalVariable(name: "__UNIQUE_ID___y289", scope: !693, file: !3, line: 560, type: !43)
!695 = !DILocalVariable(name: "rem", scope: !696, file: !3, line: 569, type: !43)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 568, column: 18)
!697 = distinct !DILexicalBlock(scope: !681, file: !3, line: 568, column: 7)
!698 = !DILocalVariable(name: "__UNIQUE_ID___x290", scope: !699, file: !3, line: 580, type: !43)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 580, column: 21)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 580, column: 9)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 575, column: 13)
!702 = distinct !DILexicalBlock(scope: !696, file: !3, line: 575, column: 8)
!703 = !DILocalVariable(name: "__UNIQUE_ID___y291", scope: !699, file: !3, line: 580, type: !43)
!704 = !DILocalVariable(name: "__UNIQUE_ID___x292", scope: !705, file: !3, line: 581, type: !43)
!705 = distinct !DILexicalBlock(scope: !700, file: !3, line: 581, column: 9)
!706 = !DILocalVariable(name: "__UNIQUE_ID___y293", scope: !705, file: !3, line: 581, type: !43)
!707 = !DILocation(line: 514, column: 55, scope: !663)
!708 = !DILocation(line: 515, column: 32, scope: !663)
!709 = !DILocation(line: 516, column: 9, scope: !663)
!710 = !DILocation(line: 516, column: 19, scope: !663)
!711 = !DILocation(line: 517, column: 19, scope: !663)
!712 = !DILocation(line: 518, column: 9, scope: !663)
!713 = !DILocation(line: 518, column: 26, scope: !663)
!714 = !DILocation(line: 519, column: 29, scope: !663)
!715 = !DILocation(line: 521, column: 2, scope: !663)
!716 = !DILocation(line: 521, column: 22, scope: !663)
!717 = !DILocation(line: 522, column: 2, scope: !663)
!718 = !DILocation(line: 522, column: 6, scope: !663)
!719 = !DILocation(line: 523, column: 2, scope: !663)
!720 = !DILocation(line: 523, column: 7, scope: !663)
!721 = !DILocation(line: 527, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !663, file: !3, line: 527, column: 6)
!723 = !DILocation(line: 527, column: 6, scope: !663)
!724 = !DILocation(line: 528, column: 3, scope: !722)
!725 = !DILocation(line: 530, column: 30, scope: !726)
!726 = distinct !DILexicalBlock(scope: !663, file: !3, line: 530, column: 6)
!727 = !DILocation(line: 530, column: 6, scope: !726)
!728 = !DILocation(line: 530, column: 66, scope: !726)
!729 = !DILocation(line: 530, column: 64, scope: !726)
!730 = !DILocation(line: 530, column: 6, scope: !663)
!731 = !DILocation(line: 531, column: 3, scope: !726)
!732 = !DILocation(line: 533, column: 6, scope: !733)
!733 = distinct !DILexicalBlock(scope: !663, file: !3, line: 533, column: 6)
!734 = !DILocation(line: 533, column: 16, scope: !733)
!735 = !DILocation(line: 533, column: 6, scope: !663)
!736 = !DILocation(line: 534, column: 13, scope: !733)
!737 = !DILocation(line: 534, column: 3, scope: !733)
!738 = !DILocation(line: 536, column: 9, scope: !663)
!739 = !DILocation(line: 536, column: 14, scope: !663)
!740 = !DILocation(line: 536, column: 7, scope: !663)
!741 = !DILocation(line: 537, column: 7, scope: !663)
!742 = !DILocation(line: 539, column: 33, scope: !663)
!743 = !DILocation(line: 539, column: 19, scope: !663)
!744 = !DILocation(line: 539, column: 46, scope: !663)
!745 = !DILocation(line: 539, column: 56, scope: !663)
!746 = !DILocation(line: 539, column: 17, scope: !663)
!747 = !DILocation(line: 540, column: 25, scope: !683)
!748 = !DILocation(line: 540, column: 29, scope: !683)
!749 = !DILocation(line: 540, column: 42, scope: !683)
!750 = !DILocation(line: 540, column: 53, scope: !683)
!751 = !DILocation(line: 540, column: 59, scope: !683)
!752 = !DILocation(line: 540, column: 14, scope: !683)
!753 = !DILocation(line: 540, column: 12, scope: !683)
!754 = !DILocation(line: 540, column: 7, scope: !683)
!755 = !DILocation(line: 541, column: 7, scope: !682)
!756 = !DILocation(line: 540, column: 2, scope: !683)
!757 = !DILocation(line: 543, column: 3, scope: !681)
!758 = !DILocation(line: 543, column: 7, scope: !681)
!759 = !DILocation(line: 543, column: 45, scope: !681)
!760 = !DILocation(line: 543, column: 20, scope: !681)
!761 = !DILocation(line: 544, column: 3, scope: !681)
!762 = !DILocation(line: 544, column: 7, scope: !681)
!763 = !DILocation(line: 544, column: 18, scope: !681)
!764 = !DILocation(line: 544, column: 31, scope: !681)
!765 = !DILocation(line: 544, column: 37, scope: !681)
!766 = !DILocation(line: 544, column: 29, scope: !681)
!767 = !DILocation(line: 545, column: 3, scope: !681)
!768 = !DILocation(line: 545, column: 7, scope: !681)
!769 = !DILocation(line: 545, column: 18, scope: !681)
!770 = !DILocation(line: 546, column: 3, scope: !681)
!771 = !DILocation(line: 546, column: 7, scope: !681)
!772 = !DILocation(line: 546, column: 18, scope: !681)
!773 = !DILocation(line: 548, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !681, file: !3, line: 548, column: 7)
!775 = !DILocation(line: 548, column: 12, scope: !774)
!776 = !DILocation(line: 548, column: 33, scope: !774)
!777 = !DILocation(line: 548, column: 36, scope: !774)
!778 = !DILocation(line: 548, column: 50, scope: !774)
!779 = !DILocation(line: 548, column: 47, scope: !774)
!780 = !DILocation(line: 548, column: 7, scope: !681)
!781 = !DILocation(line: 549, column: 4, scope: !774)
!782 = !DILocation(line: 551, column: 7, scope: !783)
!783 = distinct !DILexicalBlock(scope: !681, file: !3, line: 551, column: 7)
!784 = !DILocation(line: 551, column: 12, scope: !783)
!785 = !DILocation(line: 551, column: 34, scope: !783)
!786 = !DILocation(line: 551, column: 37, scope: !783)
!787 = !DILocation(line: 551, column: 49, scope: !783)
!788 = !DILocation(line: 551, column: 46, scope: !783)
!789 = !DILocation(line: 551, column: 7, scope: !681)
!790 = !DILocation(line: 552, column: 4, scope: !783)
!791 = !DILocation(line: 554, column: 15, scope: !681)
!792 = !DILocation(line: 554, column: 13, scope: !681)
!793 = !DILocation(line: 555, column: 13, scope: !681)
!794 = !DILocation(line: 555, column: 11, scope: !681)
!795 = !DILocation(line: 556, column: 7, scope: !796)
!796 = distinct !DILexicalBlock(scope: !681, file: !3, line: 556, column: 7)
!797 = !DILocation(line: 556, column: 11, scope: !796)
!798 = !DILocation(line: 556, column: 7, scope: !681)
!799 = !DILocation(line: 557, column: 4, scope: !796)
!800 = !DILocation(line: 557, column: 8, scope: !796)
!801 = !DILocation(line: 557, column: 21, scope: !796)
!802 = !DILocation(line: 557, column: 27, scope: !796)
!803 = !DILocation(line: 559, column: 15, scope: !690)
!804 = !DILocation(line: 559, column: 15, scope: !681)
!805 = !DILocation(line: 559, column: 13, scope: !681)
!806 = !DILocation(line: 560, column: 13, scope: !693)
!807 = !DILocation(line: 560, column: 13, scope: !681)
!808 = !DILocation(line: 560, column: 11, scope: !681)
!809 = !DILocation(line: 562, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !681, file: !3, line: 562, column: 7)
!811 = !DILocation(line: 562, column: 18, scope: !810)
!812 = !DILocation(line: 562, column: 15, scope: !810)
!813 = !DILocation(line: 562, column: 28, scope: !810)
!814 = !DILocation(line: 562, column: 31, scope: !810)
!815 = !DILocation(line: 562, column: 41, scope: !810)
!816 = !DILocation(line: 562, column: 39, scope: !810)
!817 = !DILocation(line: 562, column: 53, scope: !810)
!818 = !DILocation(line: 562, column: 51, scope: !810)
!819 = !DILocation(line: 562, column: 7, scope: !681)
!820 = !DILocation(line: 563, column: 4, scope: !810)
!821 = !DILocation(line: 565, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !681, file: !3, line: 565, column: 7)
!823 = !DILocation(line: 565, column: 12, scope: !822)
!824 = !DILocation(line: 565, column: 7, scope: !681)
!825 = !DILocation(line: 566, column: 16, scope: !822)
!826 = !DILocation(line: 566, column: 26, scope: !822)
!827 = !DILocation(line: 566, column: 24, scope: !822)
!828 = !DILocation(line: 566, column: 14, scope: !822)
!829 = !DILocation(line: 566, column: 4, scope: !822)
!830 = !DILocation(line: 568, column: 7, scope: !697)
!831 = !DILocation(line: 568, column: 7, scope: !681)
!832 = !DILocation(line: 569, column: 4, scope: !696)
!833 = !DILocation(line: 569, column: 8, scope: !696)
!834 = !DILocation(line: 571, column: 8, scope: !835)
!835 = distinct !DILexicalBlock(scope: !696, file: !3, line: 571, column: 8)
!836 = !DILocation(line: 571, column: 8, scope: !696)
!837 = !DILocation(line: 572, column: 11, scope: !835)
!838 = !DILocation(line: 572, column: 23, scope: !835)
!839 = !DILocation(line: 572, column: 21, scope: !835)
!840 = !DILocation(line: 572, column: 9, scope: !835)
!841 = !DILocation(line: 572, column: 5, scope: !835)
!842 = !DILocation(line: 574, column: 19, scope: !835)
!843 = !DILocation(line: 574, column: 30, scope: !835)
!844 = !DILocation(line: 574, column: 5, scope: !835)
!845 = !DILocation(line: 575, column: 8, scope: !702)
!846 = !DILocation(line: 575, column: 8, scope: !696)
!847 = !DILocation(line: 576, column: 18, scope: !701)
!848 = !DILocation(line: 576, column: 15, scope: !701)
!849 = !DILocation(line: 577, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !701, file: !3, line: 577, column: 9)
!851 = !DILocation(line: 577, column: 14, scope: !850)
!852 = !DILocation(line: 577, column: 9, scope: !701)
!853 = !DILocation(line: 578, column: 19, scope: !850)
!854 = !DILocation(line: 578, column: 16, scope: !850)
!855 = !DILocation(line: 578, column: 6, scope: !850)
!856 = !DILocation(line: 580, column: 9, scope: !700)
!857 = !DILocation(line: 580, column: 21, scope: !699)
!858 = !DILocation(line: 580, column: 21, scope: !700)
!859 = !DILocation(line: 580, column: 19, scope: !700)
!860 = !DILocation(line: 580, column: 49, scope: !700)
!861 = !DILocation(line: 581, column: 9, scope: !705)
!862 = !DILocation(line: 581, column: 9, scope: !700)
!863 = !DILocation(line: 581, column: 35, scope: !700)
!864 = !DILocation(line: 581, column: 33, scope: !700)
!865 = !DILocation(line: 581, column: 47, scope: !700)
!866 = !DILocation(line: 581, column: 45, scope: !700)
!867 = !DILocation(line: 580, column: 9, scope: !701)
!868 = !DILocation(line: 582, column: 6, scope: !700)
!869 = !DILocation(line: 584, column: 9, scope: !870)
!870 = distinct !DILexicalBlock(scope: !701, file: !3, line: 584, column: 9)
!871 = !DILocation(line: 584, column: 20, scope: !870)
!872 = !DILocation(line: 584, column: 17, scope: !870)
!873 = !DILocation(line: 584, column: 30, scope: !870)
!874 = !DILocation(line: 585, column: 9, scope: !870)
!875 = !DILocation(line: 585, column: 19, scope: !870)
!876 = !DILocation(line: 585, column: 17, scope: !870)
!877 = !DILocation(line: 585, column: 31, scope: !870)
!878 = !DILocation(line: 585, column: 29, scope: !870)
!879 = !DILocation(line: 584, column: 9, scope: !701)
!880 = !DILocation(line: 586, column: 6, scope: !870)
!881 = !DILocation(line: 587, column: 4, scope: !701)
!882 = !DILocation(line: 588, column: 3, scope: !697)
!883 = !DILocation(line: 588, column: 3, scope: !696)
!884 = !DILocation(line: 590, column: 14, scope: !681)
!885 = !DILocation(line: 590, column: 3, scope: !681)
!886 = !DILocation(line: 590, column: 9, scope: !681)
!887 = !DILocation(line: 590, column: 12, scope: !681)
!888 = !DILocation(line: 591, column: 16, scope: !681)
!889 = !DILocation(line: 591, column: 3, scope: !681)
!890 = !DILocation(line: 591, column: 9, scope: !681)
!891 = !DILocation(line: 591, column: 14, scope: !681)
!892 = !DILocation(line: 592, column: 17, scope: !681)
!893 = !DILocation(line: 592, column: 3, scope: !681)
!894 = !DILocation(line: 592, column: 9, scope: !681)
!895 = !DILocation(line: 592, column: 15, scope: !681)
!896 = !DILocation(line: 593, column: 17, scope: !681)
!897 = !DILocation(line: 593, column: 3, scope: !681)
!898 = !DILocation(line: 593, column: 9, scope: !681)
!899 = !DILocation(line: 593, column: 15, scope: !681)
!900 = !DILocation(line: 594, column: 3, scope: !681)
!901 = !DILocation(line: 594, column: 9, scope: !681)
!902 = !DILocation(line: 594, column: 19, scope: !681)
!903 = !DILocation(line: 596, column: 3, scope: !681)
!904 = !DILocation(line: 597, column: 13, scope: !681)
!905 = !DILocation(line: 597, column: 19, scope: !681)
!906 = !DILocation(line: 597, column: 31, scope: !681)
!907 = !DILocation(line: 597, column: 37, scope: !681)
!908 = !DILocation(line: 597, column: 3, scope: !681)
!909 = !DILocation(line: 598, column: 33, scope: !681)
!910 = !DILocation(line: 598, column: 39, scope: !681)
!911 = !DILocation(line: 598, column: 3, scope: !681)
!912 = !DILocation(line: 600, column: 11, scope: !681)
!913 = !DILocation(line: 600, column: 3, scope: !681)
!914 = !DILocation(line: 601, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !681, file: !3, line: 601, column: 7)
!916 = !DILocation(line: 601, column: 19, scope: !915)
!917 = !DILocation(line: 601, column: 17, scope: !915)
!918 = !DILocation(line: 601, column: 7, scope: !681)
!919 = !DILocation(line: 602, column: 13, scope: !915)
!920 = !DILocation(line: 602, column: 4, scope: !915)
!921 = !DILocation(line: 603, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !681, file: !3, line: 603, column: 7)
!923 = !DILocation(line: 603, column: 19, scope: !922)
!924 = !DILocation(line: 603, column: 17, scope: !922)
!925 = !DILocation(line: 603, column: 26, scope: !922)
!926 = !DILocation(line: 603, column: 24, scope: !922)
!927 = !DILocation(line: 603, column: 7, scope: !681)
!928 = !DILocation(line: 604, column: 13, scope: !922)
!929 = !DILocation(line: 604, column: 4, scope: !922)
!930 = !DILocation(line: 606, column: 14, scope: !681)
!931 = !DILocation(line: 606, column: 3, scope: !681)
!932 = !DILocation(line: 607, column: 3, scope: !681)
!933 = !DILocation(line: 608, column: 2, scope: !682)
!934 = !DILocation(line: 542, column: 14, scope: !682)
!935 = !DILocation(line: 542, column: 38, scope: !682)
!936 = !DILocation(line: 542, column: 42, scope: !682)
!937 = !DILocation(line: 542, column: 48, scope: !682)
!938 = !DILocation(line: 542, column: 54, scope: !682)
!939 = !DILocation(line: 542, column: 28, scope: !682)
!940 = !DILocation(line: 542, column: 12, scope: !682)
!941 = !DILocation(line: 540, column: 2, scope: !682)
!942 = distinct !{!942, !756, !943, !382, !383}
!943 = !DILocation(line: 608, column: 2, scope: !683)
!944 = !DILocation(line: 610, column: 2, scope: !663)
!945 = !DILocation(line: 611, column: 1, scope: !663)
!946 = distinct !DISubprogram(name: "rb_to_hole_size_or_zero", scope: !3, file: !3, line: 493, type: !947, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !949)
!947 = !DISubroutineType(types: !948)
!948 = !{!43, !30}
!949 = !{!950}
!950 = !DILocalVariable(name: "rb", arg: 1, scope: !946, file: !3, line: 493, type: !30)
!951 = !DILocation(line: 493, column: 52, scope: !946)
!952 = !DILocation(line: 495, column: 9, scope: !946)
!953 = !DILocation(line: 495, column: 30, scope: !946)
!954 = !DILocation(line: 495, column: 14, scope: !946)
!955 = !DILocation(line: 495, column: 2, scope: !946)
!956 = distinct !DISubprogram(name: "is_power_of_2", scope: !957, file: !957, line: 45, type: !958, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !960)
!957 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!958 = !DISubroutineType(types: !959)
!959 = !{!466, !34}
!960 = !{!961}
!961 = !DILocalVariable(name: "n", arg: 1, scope: !956, file: !957, line: 45, type: !34)
!962 = !DILocation(line: 45, column: 34, scope: !956)
!963 = !DILocation(line: 47, column: 10, scope: !956)
!964 = !DILocation(line: 47, column: 12, scope: !956)
!965 = !DILocation(line: 47, column: 17, scope: !956)
!966 = !DILocation(line: 47, column: 22, scope: !956)
!967 = !DILocation(line: 47, column: 27, scope: !956)
!968 = !DILocation(line: 47, column: 29, scope: !956)
!969 = !DILocation(line: 47, column: 24, scope: !956)
!970 = !DILocation(line: 47, column: 35, scope: !956)
!971 = !DILocation(line: 0, scope: !956)
!972 = !DILocation(line: 47, column: 2, scope: !956)
!973 = distinct !DISubprogram(name: "first_hole", scope: !3, file: !3, line: 356, type: !974, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{!38, !50, !43, !43, !43, !5}
!976 = !{!977, !978, !979, !980, !981, !982, !985, !986}
!977 = !DILocalVariable(name: "mm", arg: 1, scope: !973, file: !3, line: 356, type: !50)
!978 = !DILocalVariable(name: "start", arg: 2, scope: !973, file: !3, line: 357, type: !43)
!979 = !DILocalVariable(name: "end", arg: 3, scope: !973, file: !3, line: 357, type: !43)
!980 = !DILocalVariable(name: "size", arg: 4, scope: !973, file: !3, line: 357, type: !43)
!981 = !DILocalVariable(name: "mode", arg: 5, scope: !973, file: !3, line: 358, type: !5)
!982 = !DILocalVariable(name: "head__", scope: !983, file: !3, line: 372, type: !65)
!983 = distinct !DILexicalBlock(scope: !984, file: !3, line: 372, column: 10)
!984 = distinct !DILexicalBlock(scope: !973, file: !3, line: 360, column: 16)
!985 = !DILocalVariable(name: "pos__", scope: !983, file: !3, line: 372, type: !65)
!986 = !DILocalVariable(name: "__mptr", scope: !987, file: !3, line: 372, type: !81)
!987 = distinct !DILexicalBlock(scope: !983, file: !3, line: 372, column: 10)
!988 = !DILocation(line: 356, column: 27, scope: !973)
!989 = !DILocation(line: 357, column: 9, scope: !973)
!990 = !DILocation(line: 357, column: 20, scope: !973)
!991 = !DILocation(line: 357, column: 29, scope: !973)
!992 = !DILocation(line: 358, column: 29, scope: !973)
!993 = !DILocation(line: 360, column: 10, scope: !973)
!994 = !DILocation(line: 360, column: 2, scope: !973)
!995 = !DILocation(line: 360, column: 16, scope: !973)
!996 = !DILocation(line: 363, column: 20, scope: !984)
!997 = !DILocation(line: 363, column: 24, scope: !984)
!998 = !DILocation(line: 363, column: 10, scope: !984)
!999 = !DILocation(line: 363, column: 3, scope: !984)
!1000 = !DILocation(line: 366, column: 25, scope: !984)
!1001 = !DILocation(line: 366, column: 29, scope: !984)
!1002 = !DILocation(line: 366, column: 36, scope: !984)
!1003 = !DILocation(line: 366, column: 10, scope: !984)
!1004 = !DILocation(line: 366, column: 3, scope: !984)
!1005 = !DILocation(line: 369, column: 25, scope: !984)
!1006 = !DILocation(line: 369, column: 29, scope: !984)
!1007 = !DILocation(line: 369, column: 34, scope: !984)
!1008 = !DILocation(line: 369, column: 10, scope: !984)
!1009 = !DILocation(line: 369, column: 3, scope: !984)
!1010 = !DILocation(line: 372, column: 10, scope: !983)
!1011 = !DILocation(line: 372, column: 10, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !983, file: !3, line: 372, column: 10)
!1013 = !DILocation(line: 372, column: 10, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 372, column: 10)
!1015 = !DILocation(line: 372, column: 10, scope: !987)
!1016 = !DILocation(line: 372, column: 10, scope: !984)
!1017 = !DILocation(line: 372, column: 3, scope: !984)
!1018 = !DILocation(line: 376, column: 1, scope: !973)
!1019 = distinct !DISubprogram(name: "div64_u64_rem", scope: !1020, file: !1020, line: 54, type: !1021, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1023)
!1020 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!43, !43, !43, !59}
!1023 = !{!1024, !1025, !1026}
!1024 = !DILocalVariable(name: "dividend", arg: 1, scope: !1019, file: !1020, line: 54, type: !43)
!1025 = !DILocalVariable(name: "divisor", arg: 2, scope: !1019, file: !1020, line: 54, type: !43)
!1026 = !DILocalVariable(name: "remainder", arg: 3, scope: !1019, file: !1020, line: 54, type: !59)
!1027 = !DILocation(line: 54, column: 37, scope: !1019)
!1028 = !DILocation(line: 54, column: 51, scope: !1019)
!1029 = !DILocation(line: 54, column: 65, scope: !1019)
!1030 = !DILocation(line: 56, column: 15, scope: !1019)
!1031 = !DILocation(line: 56, column: 26, scope: !1019)
!1032 = !DILocation(line: 56, column: 24, scope: !1019)
!1033 = !DILocation(line: 56, column: 3, scope: !1019)
!1034 = !DILocation(line: 56, column: 13, scope: !1019)
!1035 = !DILocation(line: 57, column: 9, scope: !1019)
!1036 = !DILocation(line: 57, column: 20, scope: !1019)
!1037 = !DILocation(line: 57, column: 18, scope: !1019)
!1038 = !DILocation(line: 57, column: 2, scope: !1019)
!1039 = distinct !DISubprogram(name: "next_hole", scope: !3, file: !3, line: 414, type: !1040, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!38, !50, !38, !43, !5}
!1042 = !{!1043, !1044, !1045, !1046, !1047}
!1043 = !DILocalVariable(name: "mm", arg: 1, scope: !1039, file: !3, line: 414, type: !50)
!1044 = !DILocalVariable(name: "node", arg: 2, scope: !1039, file: !3, line: 415, type: !38)
!1045 = !DILocalVariable(name: "size", arg: 3, scope: !1039, file: !3, line: 416, type: !43)
!1046 = !DILocalVariable(name: "mode", arg: 4, scope: !1039, file: !3, line: 417, type: !5)
!1047 = !DILocalVariable(name: "__mptr", scope: !1048, file: !3, line: 431, type: !81)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 431, column: 10)
!1049 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 419, column: 16)
!1050 = !DILocation(line: 414, column: 26, scope: !1039)
!1051 = !DILocation(line: 415, column: 24, scope: !1039)
!1052 = !DILocation(line: 416, column: 8, scope: !1039)
!1053 = !DILocation(line: 417, column: 28, scope: !1039)
!1054 = !DILocation(line: 419, column: 10, scope: !1039)
!1055 = !DILocation(line: 419, column: 2, scope: !1039)
!1056 = !DILocation(line: 419, column: 16, scope: !1039)
!1057 = !DILocation(line: 422, column: 40, scope: !1049)
!1058 = !DILocation(line: 422, column: 46, scope: !1049)
!1059 = !DILocation(line: 422, column: 31, scope: !1049)
!1060 = !DILocation(line: 422, column: 10, scope: !1049)
!1061 = !DILocation(line: 422, column: 3, scope: !1049)
!1062 = !DILocation(line: 425, column: 29, scope: !1049)
!1063 = !DILocation(line: 425, column: 35, scope: !1049)
!1064 = !DILocation(line: 425, column: 10, scope: !1049)
!1065 = !DILocation(line: 425, column: 3, scope: !1049)
!1066 = !DILocation(line: 428, column: 30, scope: !1049)
!1067 = !DILocation(line: 428, column: 36, scope: !1049)
!1068 = !DILocation(line: 428, column: 10, scope: !1049)
!1069 = !DILocation(line: 428, column: 3, scope: !1049)
!1070 = !DILocation(line: 431, column: 10, scope: !1048)
!1071 = !DILocation(line: 431, column: 10, scope: !1049)
!1072 = !DILocation(line: 431, column: 8, scope: !1049)
!1073 = !DILocation(line: 432, column: 11, scope: !1049)
!1074 = !DILocation(line: 432, column: 17, scope: !1049)
!1075 = !DILocation(line: 432, column: 32, scope: !1049)
!1076 = !DILocation(line: 432, column: 36, scope: !1049)
!1077 = !DILocation(line: 432, column: 28, scope: !1049)
!1078 = !DILocation(line: 432, column: 10, scope: !1049)
!1079 = !DILocation(line: 432, column: 56, scope: !1049)
!1080 = !DILocation(line: 432, column: 3, scope: !1049)
!1081 = !DILocation(line: 434, column: 1, scope: !1039)
!1082 = distinct !DISubprogram(name: "drm_mm_remove_node", scope: !3, file: !3, line: 627, type: !595, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1083)
!1083 = !{!1084, !1085, !1086, !1087}
!1084 = !DILocalVariable(name: "node", arg: 1, scope: !1082, file: !3, line: 627, type: !38)
!1085 = !DILocalVariable(name: "mm", scope: !1082, file: !3, line: 629, type: !50)
!1086 = !DILocalVariable(name: "prev_node", scope: !1082, file: !3, line: 630, type: !38)
!1087 = !DILocalVariable(name: "__mptr", scope: !1088, file: !3, line: 635, type: !81)
!1088 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 635, column: 14)
!1089 = !DILocation(line: 627, column: 45, scope: !1082)
!1090 = !DILocation(line: 629, column: 2, scope: !1082)
!1091 = !DILocation(line: 629, column: 17, scope: !1082)
!1092 = !DILocation(line: 629, column: 22, scope: !1082)
!1093 = !DILocation(line: 629, column: 28, scope: !1082)
!1094 = !DILocation(line: 630, column: 2, scope: !1082)
!1095 = !DILocation(line: 630, column: 22, scope: !1082)
!1096 = !DILocation(line: 635, column: 14, scope: !1088)
!1097 = !DILocation(line: 635, column: 14, scope: !1082)
!1098 = !DILocation(line: 635, column: 12, scope: !1082)
!1099 = !DILocation(line: 637, column: 26, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 637, column: 6)
!1101 = !DILocation(line: 637, column: 6, scope: !1100)
!1102 = !DILocation(line: 637, column: 6, scope: !1082)
!1103 = !DILocation(line: 638, column: 11, scope: !1100)
!1104 = !DILocation(line: 638, column: 3, scope: !1100)
!1105 = !DILocation(line: 640, column: 30, scope: !1082)
!1106 = !DILocation(line: 640, column: 37, scope: !1082)
!1107 = !DILocation(line: 640, column: 41, scope: !1082)
!1108 = !DILocation(line: 640, column: 2, scope: !1082)
!1109 = !DILocation(line: 641, column: 12, scope: !1082)
!1110 = !DILocation(line: 641, column: 18, scope: !1082)
!1111 = !DILocation(line: 641, column: 2, scope: !1082)
!1112 = !DILocation(line: 643, column: 26, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 643, column: 6)
!1114 = !DILocation(line: 643, column: 6, scope: !1113)
!1115 = !DILocation(line: 643, column: 6, scope: !1082)
!1116 = !DILocation(line: 644, column: 11, scope: !1113)
!1117 = !DILocation(line: 644, column: 3, scope: !1113)
!1118 = !DILocation(line: 645, column: 11, scope: !1082)
!1119 = !DILocation(line: 645, column: 2, scope: !1082)
!1120 = !DILocation(line: 647, column: 47, scope: !1082)
!1121 = !DILocation(line: 647, column: 53, scope: !1082)
!1122 = !DILocation(line: 647, column: 2, scope: !1082)
!1123 = !DILocation(line: 648, column: 1, scope: !1082)
!1124 = distinct !DISubprogram(name: "drm_mm_hole_follows", scope: !6, file: !6, line: 293, type: !1125, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!466, !57}
!1127 = !{!1128}
!1128 = !DILocalVariable(name: "node", arg: 1, scope: !1124, file: !6, line: 293, type: !57)
!1129 = !DILocation(line: 293, column: 66, scope: !1124)
!1130 = !DILocation(line: 295, column: 9, scope: !1124)
!1131 = !DILocation(line: 295, column: 15, scope: !1124)
!1132 = !DILocation(line: 295, column: 2, scope: !1124)
!1133 = distinct !DISubprogram(name: "drm_mm_interval_tree_remove", scope: !3, file: !3, line: 152, type: !1134, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1136)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !38, !22}
!1136 = !{!1137, !1138}
!1137 = !DILocalVariable(name: "node", arg: 1, scope: !1133, file: !3, line: 152, type: !38)
!1138 = !DILocalVariable(name: "root", arg: 2, scope: !1133, file: !3, line: 152, type: !22)
!1139 = !DILocation(line: 152, column: 1, scope: !1133)
!1140 = distinct !DISubprogram(name: "list_del", scope: !440, file: !440, line: 227, type: !1141, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1143)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !65}
!1143 = !{!1144}
!1144 = !DILocalVariable(name: "entry", arg: 1, scope: !1140, file: !440, line: 227, type: !65)
!1145 = !DILocation(line: 227, column: 47, scope: !1140)
!1146 = !DILocation(line: 229, column: 19, scope: !1140)
!1147 = !DILocation(line: 229, column: 2, scope: !1140)
!1148 = !DILocation(line: 230, column: 2, scope: !1140)
!1149 = !DILocation(line: 230, column: 9, scope: !1140)
!1150 = !DILocation(line: 230, column: 14, scope: !1140)
!1151 = !DILocation(line: 231, column: 2, scope: !1140)
!1152 = !DILocation(line: 231, column: 9, scope: !1140)
!1153 = !DILocation(line: 231, column: 14, scope: !1140)
!1154 = !DILocation(line: 232, column: 1, scope: !1140)
!1155 = distinct !DISubprogram(name: "clear_bit_unlock", scope: !1156, file: !1156, line: 23, type: !1157, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1159)
!1156 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3803e7a2bd2f2f2af55c89b50b84591")
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !88, !403}
!1159 = !{!1160, !1161}
!1160 = !DILocalVariable(name: "nr", arg: 1, scope: !1155, file: !1156, line: 23, type: !88)
!1161 = !DILocalVariable(name: "addr", arg: 2, scope: !1155, file: !1156, line: 23, type: !403)
!1162 = !DILocation(line: 23, column: 42, scope: !1155)
!1163 = !DILocation(line: 23, column: 70, scope: !1155)
!1164 = !DILocation(line: 25, column: 2, scope: !1155)
!1165 = !DILocation(line: 25, column: 2, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1155, file: !1156, line: 25, column: 2)
!1167 = !DILocation(line: 26, column: 26, scope: !1155)
!1168 = !DILocation(line: 26, column: 33, scope: !1155)
!1169 = !DILocation(line: 26, column: 31, scope: !1155)
!1170 = !DILocation(line: 26, column: 2, scope: !1155)
!1171 = !DILocation(line: 27, column: 24, scope: !1155)
!1172 = !DILocation(line: 27, column: 28, scope: !1155)
!1173 = !DILocation(line: 27, column: 2, scope: !1155)
!1174 = !DILocation(line: 28, column: 1, scope: !1155)
!1175 = distinct !DISubprogram(name: "drm_mm_replace_node", scope: !3, file: !3, line: 660, type: !455, scopeLine: 661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1176)
!1176 = !{!1177, !1178, !1179}
!1177 = !DILocalVariable(name: "old", arg: 1, scope: !1175, file: !3, line: 660, type: !38)
!1178 = !DILocalVariable(name: "new", arg: 2, scope: !1175, file: !3, line: 660, type: !38)
!1179 = !DILocalVariable(name: "mm", scope: !1175, file: !3, line: 662, type: !50)
!1180 = !DILocation(line: 660, column: 46, scope: !1175)
!1181 = !DILocation(line: 660, column: 71, scope: !1175)
!1182 = !DILocation(line: 662, column: 2, scope: !1175)
!1183 = !DILocation(line: 662, column: 17, scope: !1175)
!1184 = !DILocation(line: 662, column: 22, scope: !1175)
!1185 = !DILocation(line: 662, column: 27, scope: !1175)
!1186 = !DILocation(line: 666, column: 3, scope: !1175)
!1187 = !DILocation(line: 666, column: 10, scope: !1175)
!1188 = !DILocation(line: 666, column: 9, scope: !1175)
!1189 = !DILocation(line: 668, column: 2, scope: !1175)
!1190 = !DILocation(line: 669, column: 16, scope: !1175)
!1191 = !DILocation(line: 669, column: 21, scope: !1175)
!1192 = !DILocation(line: 669, column: 33, scope: !1175)
!1193 = !DILocation(line: 669, column: 38, scope: !1175)
!1194 = !DILocation(line: 669, column: 2, scope: !1175)
!1195 = !DILocation(line: 670, column: 26, scope: !1175)
!1196 = !DILocation(line: 670, column: 31, scope: !1175)
!1197 = !DILocation(line: 670, column: 36, scope: !1175)
!1198 = !DILocation(line: 670, column: 41, scope: !1175)
!1199 = !DILocation(line: 670, column: 46, scope: !1175)
!1200 = !DILocation(line: 670, column: 50, scope: !1175)
!1201 = !DILocation(line: 670, column: 2, scope: !1175)
!1202 = !DILocation(line: 672, column: 26, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 672, column: 6)
!1204 = !DILocation(line: 672, column: 6, scope: !1203)
!1205 = !DILocation(line: 672, column: 6, scope: !1175)
!1206 = !DILocation(line: 673, column: 17, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 672, column: 32)
!1208 = !DILocation(line: 673, column: 22, scope: !1207)
!1209 = !DILocation(line: 673, column: 35, scope: !1207)
!1210 = !DILocation(line: 673, column: 40, scope: !1207)
!1211 = !DILocation(line: 673, column: 3, scope: !1207)
!1212 = !DILocation(line: 674, column: 27, scope: !1207)
!1213 = !DILocation(line: 674, column: 32, scope: !1207)
!1214 = !DILocation(line: 675, column: 13, scope: !1207)
!1215 = !DILocation(line: 675, column: 18, scope: !1207)
!1216 = !DILocation(line: 676, column: 13, scope: !1207)
!1217 = !DILocation(line: 676, column: 17, scope: !1207)
!1218 = !DILocation(line: 674, column: 3, scope: !1207)
!1219 = !DILocation(line: 677, column: 20, scope: !1207)
!1220 = !DILocation(line: 677, column: 25, scope: !1207)
!1221 = !DILocation(line: 678, column: 6, scope: !1207)
!1222 = !DILocation(line: 678, column: 11, scope: !1207)
!1223 = !DILocation(line: 679, column: 6, scope: !1207)
!1224 = !DILocation(line: 679, column: 10, scope: !1207)
!1225 = !DILocation(line: 677, column: 3, scope: !1207)
!1226 = !DILocation(line: 680, column: 2, scope: !1207)
!1227 = !DILocation(line: 682, column: 47, scope: !1175)
!1228 = !DILocation(line: 682, column: 52, scope: !1175)
!1229 = !DILocation(line: 682, column: 2, scope: !1175)
!1230 = !DILocation(line: 683, column: 1, scope: !1175)
!1231 = distinct !DISubprogram(name: "list_replace", scope: !440, file: !440, line: 241, type: !441, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1232)
!1232 = !{!1233, !1234}
!1233 = !DILocalVariable(name: "old", arg: 1, scope: !1231, file: !440, line: 241, type: !65)
!1234 = !DILocalVariable(name: "new", arg: 2, scope: !1231, file: !440, line: 242, type: !65)
!1235 = !DILocation(line: 241, column: 51, scope: !1231)
!1236 = !DILocation(line: 242, column: 23, scope: !1231)
!1237 = !DILocation(line: 244, column: 14, scope: !1231)
!1238 = !DILocation(line: 244, column: 19, scope: !1231)
!1239 = !DILocation(line: 244, column: 2, scope: !1231)
!1240 = !DILocation(line: 244, column: 7, scope: !1231)
!1241 = !DILocation(line: 244, column: 12, scope: !1231)
!1242 = !DILocation(line: 245, column: 20, scope: !1231)
!1243 = !DILocation(line: 245, column: 2, scope: !1231)
!1244 = !DILocation(line: 245, column: 7, scope: !1231)
!1245 = !DILocation(line: 245, column: 13, scope: !1231)
!1246 = !DILocation(line: 245, column: 18, scope: !1231)
!1247 = !DILocation(line: 246, column: 14, scope: !1231)
!1248 = !DILocation(line: 246, column: 19, scope: !1231)
!1249 = !DILocation(line: 246, column: 2, scope: !1231)
!1250 = !DILocation(line: 246, column: 7, scope: !1231)
!1251 = !DILocation(line: 246, column: 12, scope: !1231)
!1252 = !DILocation(line: 247, column: 20, scope: !1231)
!1253 = !DILocation(line: 247, column: 2, scope: !1231)
!1254 = !DILocation(line: 247, column: 7, scope: !1231)
!1255 = !DILocation(line: 247, column: 13, scope: !1231)
!1256 = !DILocation(line: 247, column: 18, scope: !1231)
!1257 = !DILocation(line: 248, column: 1, scope: !1231)
!1258 = distinct !DISubprogram(name: "rb_replace_node_cached", scope: !1259, file: !1259, line: 131, type: !1260, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1262)
!1259 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !30, !30, !22}
!1262 = !{!1263, !1264, !1265}
!1263 = !DILocalVariable(name: "victim", arg: 1, scope: !1258, file: !1259, line: 131, type: !30)
!1264 = !DILocalVariable(name: "new", arg: 2, scope: !1258, file: !1259, line: 132, type: !30)
!1265 = !DILocalVariable(name: "root", arg: 3, scope: !1258, file: !1259, line: 133, type: !22)
!1266 = !DILocation(line: 131, column: 59, scope: !1258)
!1267 = !DILocation(line: 132, column: 24, scope: !1258)
!1268 = !DILocation(line: 133, column: 31, scope: !1258)
!1269 = !DILocation(line: 135, column: 6, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1258, file: !1259, line: 135, column: 6)
!1271 = !DILocation(line: 135, column: 12, scope: !1270)
!1272 = !DILocation(line: 135, column: 27, scope: !1270)
!1273 = !DILocation(line: 135, column: 24, scope: !1270)
!1274 = !DILocation(line: 135, column: 6, scope: !1258)
!1275 = !DILocation(line: 136, column: 23, scope: !1270)
!1276 = !DILocation(line: 136, column: 3, scope: !1270)
!1277 = !DILocation(line: 136, column: 9, scope: !1270)
!1278 = !DILocation(line: 136, column: 21, scope: !1270)
!1279 = !DILocation(line: 137, column: 18, scope: !1258)
!1280 = !DILocation(line: 137, column: 26, scope: !1258)
!1281 = !DILocation(line: 137, column: 32, scope: !1258)
!1282 = !DILocation(line: 137, column: 38, scope: !1258)
!1283 = !DILocation(line: 137, column: 2, scope: !1258)
!1284 = !DILocation(line: 138, column: 1, scope: !1258)
!1285 = !DISubprogram(name: "rb_replace_node", scope: !1259, file: !1259, line: 54, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !30, !30, !1288}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!1289 = distinct !DISubprogram(name: "drm_mm_scan_init_with_range", scope: !3, file: !3, line: 736, type: !1290, scopeLine: 744, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1305)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !1292, !50, !43, !43, !34, !43, !43, !5}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_scan", file: !6, line: 227, size: 640, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1293, file: !6, line: 229, baseType: !50, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1293, file: !6, line: 231, baseType: !43, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1293, file: !6, line: 232, baseType: !43, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "remainder_mask", scope: !1293, file: !6, line: 233, baseType: !43, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1293, file: !6, line: 235, baseType: !43, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1293, file: !6, line: 236, baseType: !43, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "hit_start", scope: !1293, file: !6, line: 238, baseType: !43, size: 64, offset: 384)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "hit_end", scope: !1293, file: !6, line: 239, baseType: !43, size: 64, offset: 448)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !1293, file: !6, line: 241, baseType: !34, size: 64, offset: 512)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1293, file: !6, line: 242, baseType: !5, size: 32, offset: 576)
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313}
!1306 = !DILocalVariable(name: "scan", arg: 1, scope: !1289, file: !3, line: 736, type: !1292)
!1307 = !DILocalVariable(name: "mm", arg: 2, scope: !1289, file: !3, line: 737, type: !50)
!1308 = !DILocalVariable(name: "size", arg: 3, scope: !1289, file: !3, line: 738, type: !43)
!1309 = !DILocalVariable(name: "alignment", arg: 4, scope: !1289, file: !3, line: 739, type: !43)
!1310 = !DILocalVariable(name: "color", arg: 5, scope: !1289, file: !3, line: 740, type: !34)
!1311 = !DILocalVariable(name: "start", arg: 6, scope: !1289, file: !3, line: 741, type: !43)
!1312 = !DILocalVariable(name: "end", arg: 7, scope: !1289, file: !3, line: 742, type: !43)
!1313 = !DILocalVariable(name: "mode", arg: 8, scope: !1289, file: !3, line: 743, type: !5)
!1314 = !DILocation(line: 736, column: 54, scope: !1289)
!1315 = !DILocation(line: 737, column: 21, scope: !1289)
!1316 = !DILocation(line: 738, column: 10, scope: !1289)
!1317 = !DILocation(line: 739, column: 10, scope: !1289)
!1318 = !DILocation(line: 740, column: 20, scope: !1289)
!1319 = !DILocation(line: 741, column: 10, scope: !1289)
!1320 = !DILocation(line: 742, column: 10, scope: !1289)
!1321 = !DILocation(line: 743, column: 30, scope: !1289)
!1322 = !DILocation(line: 749, column: 13, scope: !1289)
!1323 = !DILocation(line: 749, column: 2, scope: !1289)
!1324 = !DILocation(line: 749, column: 8, scope: !1289)
!1325 = !DILocation(line: 749, column: 11, scope: !1289)
!1326 = !DILocation(line: 751, column: 6, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 751, column: 6)
!1328 = !DILocation(line: 751, column: 16, scope: !1327)
!1329 = !DILocation(line: 751, column: 6, scope: !1289)
!1330 = !DILocation(line: 752, column: 13, scope: !1327)
!1331 = !DILocation(line: 752, column: 3, scope: !1327)
!1332 = !DILocation(line: 754, column: 16, scope: !1289)
!1333 = !DILocation(line: 754, column: 2, scope: !1289)
!1334 = !DILocation(line: 754, column: 8, scope: !1289)
!1335 = !DILocation(line: 754, column: 14, scope: !1289)
!1336 = !DILocation(line: 755, column: 20, scope: !1289)
!1337 = !DILocation(line: 755, column: 2, scope: !1289)
!1338 = !DILocation(line: 755, column: 8, scope: !1289)
!1339 = !DILocation(line: 755, column: 18, scope: !1289)
!1340 = !DILocation(line: 756, column: 39, scope: !1289)
!1341 = !DILocation(line: 756, column: 25, scope: !1289)
!1342 = !DILocation(line: 756, column: 52, scope: !1289)
!1343 = !DILocation(line: 756, column: 62, scope: !1289)
!1344 = !DILocation(line: 756, column: 2, scope: !1289)
!1345 = !DILocation(line: 756, column: 8, scope: !1289)
!1346 = !DILocation(line: 756, column: 23, scope: !1289)
!1347 = !DILocation(line: 757, column: 15, scope: !1289)
!1348 = !DILocation(line: 757, column: 2, scope: !1289)
!1349 = !DILocation(line: 757, column: 8, scope: !1289)
!1350 = !DILocation(line: 757, column: 13, scope: !1289)
!1351 = !DILocation(line: 758, column: 15, scope: !1289)
!1352 = !DILocation(line: 758, column: 2, scope: !1289)
!1353 = !DILocation(line: 758, column: 8, scope: !1289)
!1354 = !DILocation(line: 758, column: 13, scope: !1289)
!1355 = !DILocation(line: 761, column: 22, scope: !1289)
!1356 = !DILocation(line: 761, column: 2, scope: !1289)
!1357 = !DILocation(line: 761, column: 8, scope: !1289)
!1358 = !DILocation(line: 761, column: 20, scope: !1289)
!1359 = !DILocation(line: 762, column: 20, scope: !1289)
!1360 = !DILocation(line: 762, column: 2, scope: !1289)
!1361 = !DILocation(line: 762, column: 8, scope: !1289)
!1362 = !DILocation(line: 762, column: 18, scope: !1289)
!1363 = !DILocation(line: 764, column: 2, scope: !1289)
!1364 = !DILocation(line: 764, column: 8, scope: !1289)
!1365 = !DILocation(line: 764, column: 18, scope: !1289)
!1366 = !DILocation(line: 765, column: 2, scope: !1289)
!1367 = !DILocation(line: 765, column: 8, scope: !1289)
!1368 = !DILocation(line: 765, column: 16, scope: !1289)
!1369 = !DILocation(line: 766, column: 1, scope: !1289)
!1370 = distinct !DISubprogram(name: "drm_mm_scan_add_block", scope: !3, file: !3, line: 780, type: !1371, scopeLine: 782, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1373)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!466, !1292, !38}
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1386, !1388, !1389, !1391, !1392, !1395, !1400, !1401, !1403}
!1374 = !DILocalVariable(name: "scan", arg: 1, scope: !1370, file: !3, line: 780, type: !1292)
!1375 = !DILocalVariable(name: "node", arg: 2, scope: !1370, file: !3, line: 781, type: !38)
!1376 = !DILocalVariable(name: "mm", scope: !1370, file: !3, line: 783, type: !50)
!1377 = !DILocalVariable(name: "hole", scope: !1370, file: !3, line: 784, type: !38)
!1378 = !DILocalVariable(name: "hole_start", scope: !1370, file: !3, line: 785, type: !43)
!1379 = !DILocalVariable(name: "hole_end", scope: !1370, file: !3, line: 785, type: !43)
!1380 = !DILocalVariable(name: "col_start", scope: !1370, file: !3, line: 786, type: !43)
!1381 = !DILocalVariable(name: "col_end", scope: !1370, file: !3, line: 786, type: !43)
!1382 = !DILocalVariable(name: "adj_start", scope: !1370, file: !3, line: 787, type: !43)
!1383 = !DILocalVariable(name: "adj_end", scope: !1370, file: !3, line: 787, type: !43)
!1384 = !DILocalVariable(name: "__mptr", scope: !1385, file: !3, line: 800, type: !81)
!1385 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 800, column: 9)
!1386 = !DILocalVariable(name: "__UNIQUE_ID___x298", scope: !1387, file: !3, line: 812, type: !43)
!1387 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 812, column: 14)
!1388 = !DILocalVariable(name: "__UNIQUE_ID___y299", scope: !1387, file: !3, line: 812, type: !43)
!1389 = !DILocalVariable(name: "__UNIQUE_ID___x300", scope: !1390, file: !3, line: 813, type: !43)
!1390 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 813, column: 12)
!1391 = !DILocalVariable(name: "__UNIQUE_ID___y301", scope: !1390, file: !3, line: 813, type: !43)
!1392 = !DILocalVariable(name: "rem", scope: !1393, file: !3, line: 821, type: !43)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 820, column: 23)
!1394 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 820, column: 6)
!1395 = !DILocalVariable(name: "__UNIQUE_ID___x302", scope: !1396, file: !3, line: 831, type: !43)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 831, column: 20)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 831, column: 8)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 827, column: 12)
!1399 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 827, column: 7)
!1400 = !DILocalVariable(name: "__UNIQUE_ID___y303", scope: !1396, file: !3, line: 831, type: !43)
!1401 = !DILocalVariable(name: "__UNIQUE_ID___x304", scope: !1402, file: !3, line: 832, type: !43)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 832, column: 8)
!1403 = !DILocalVariable(name: "__UNIQUE_ID___y305", scope: !1402, file: !3, line: 832, type: !43)
!1404 = !DILocation(line: 780, column: 48, scope: !1370)
!1405 = !DILocation(line: 781, column: 27, scope: !1370)
!1406 = !DILocation(line: 783, column: 2, scope: !1370)
!1407 = !DILocation(line: 783, column: 17, scope: !1370)
!1408 = !DILocation(line: 783, column: 22, scope: !1370)
!1409 = !DILocation(line: 783, column: 28, scope: !1370)
!1410 = !DILocation(line: 784, column: 2, scope: !1370)
!1411 = !DILocation(line: 784, column: 22, scope: !1370)
!1412 = !DILocation(line: 785, column: 2, scope: !1370)
!1413 = !DILocation(line: 785, column: 6, scope: !1370)
!1414 = !DILocation(line: 785, column: 18, scope: !1370)
!1415 = !DILocation(line: 786, column: 2, scope: !1370)
!1416 = !DILocation(line: 786, column: 6, scope: !1370)
!1417 = !DILocation(line: 786, column: 17, scope: !1370)
!1418 = !DILocation(line: 787, column: 2, scope: !1370)
!1419 = !DILocation(line: 787, column: 6, scope: !1370)
!1420 = !DILocation(line: 787, column: 17, scope: !1370)
!1421 = !DILocation(line: 792, column: 2, scope: !1370)
!1422 = !DILocation(line: 793, column: 2, scope: !1370)
!1423 = !DILocation(line: 793, column: 6, scope: !1370)
!1424 = !DILocation(line: 793, column: 17, scope: !1370)
!1425 = !DILocation(line: 800, column: 9, scope: !1385)
!1426 = !DILocation(line: 800, column: 9, scope: !1370)
!1427 = !DILocation(line: 800, column: 7, scope: !1370)
!1428 = !DILocation(line: 802, column: 20, scope: !1370)
!1429 = !DILocation(line: 802, column: 26, scope: !1370)
!1430 = !DILocation(line: 802, column: 2, scope: !1370)
!1431 = !DILocation(line: 804, column: 40, scope: !1370)
!1432 = !DILocation(line: 804, column: 15, scope: !1370)
!1433 = !DILocation(line: 804, column: 13, scope: !1370)
!1434 = !DILocation(line: 805, column: 36, scope: !1370)
!1435 = !DILocation(line: 805, column: 13, scope: !1370)
!1436 = !DILocation(line: 805, column: 11, scope: !1370)
!1437 = !DILocation(line: 807, column: 14, scope: !1370)
!1438 = !DILocation(line: 807, column: 12, scope: !1370)
!1439 = !DILocation(line: 808, column: 12, scope: !1370)
!1440 = !DILocation(line: 808, column: 10, scope: !1370)
!1441 = !DILocation(line: 809, column: 6, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 809, column: 6)
!1443 = !DILocation(line: 809, column: 10, scope: !1442)
!1444 = !DILocation(line: 809, column: 6, scope: !1370)
!1445 = !DILocation(line: 810, column: 3, scope: !1442)
!1446 = !DILocation(line: 810, column: 7, scope: !1442)
!1447 = !DILocation(line: 810, column: 20, scope: !1442)
!1448 = !DILocation(line: 810, column: 26, scope: !1442)
!1449 = !DILocation(line: 810, column: 32, scope: !1442)
!1450 = !DILocation(line: 812, column: 14, scope: !1387)
!1451 = !DILocation(line: 812, column: 14, scope: !1370)
!1452 = !DILocation(line: 812, column: 12, scope: !1370)
!1453 = !DILocation(line: 813, column: 12, scope: !1390)
!1454 = !DILocation(line: 813, column: 12, scope: !1370)
!1455 = !DILocation(line: 813, column: 10, scope: !1370)
!1456 = !DILocation(line: 814, column: 6, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 814, column: 6)
!1458 = !DILocation(line: 814, column: 17, scope: !1457)
!1459 = !DILocation(line: 814, column: 14, scope: !1457)
!1460 = !DILocation(line: 814, column: 27, scope: !1457)
!1461 = !DILocation(line: 814, column: 30, scope: !1457)
!1462 = !DILocation(line: 814, column: 40, scope: !1457)
!1463 = !DILocation(line: 814, column: 38, scope: !1457)
!1464 = !DILocation(line: 814, column: 52, scope: !1457)
!1465 = !DILocation(line: 814, column: 58, scope: !1457)
!1466 = !DILocation(line: 814, column: 50, scope: !1457)
!1467 = !DILocation(line: 814, column: 6, scope: !1370)
!1468 = !DILocation(line: 815, column: 3, scope: !1457)
!1469 = !DILocation(line: 817, column: 6, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 817, column: 6)
!1471 = !DILocation(line: 817, column: 12, scope: !1470)
!1472 = !DILocation(line: 817, column: 17, scope: !1470)
!1473 = !DILocation(line: 817, column: 6, scope: !1370)
!1474 = !DILocation(line: 818, column: 15, scope: !1470)
!1475 = !DILocation(line: 818, column: 25, scope: !1470)
!1476 = !DILocation(line: 818, column: 31, scope: !1470)
!1477 = !DILocation(line: 818, column: 23, scope: !1470)
!1478 = !DILocation(line: 818, column: 13, scope: !1470)
!1479 = !DILocation(line: 818, column: 3, scope: !1470)
!1480 = !DILocation(line: 820, column: 6, scope: !1394)
!1481 = !DILocation(line: 820, column: 12, scope: !1394)
!1482 = !DILocation(line: 820, column: 6, scope: !1370)
!1483 = !DILocation(line: 821, column: 3, scope: !1393)
!1484 = !DILocation(line: 821, column: 7, scope: !1393)
!1485 = !DILocation(line: 823, column: 7, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 823, column: 7)
!1487 = !DILocation(line: 823, column: 7, scope: !1393)
!1488 = !DILocation(line: 824, column: 10, scope: !1486)
!1489 = !DILocation(line: 824, column: 22, scope: !1486)
!1490 = !DILocation(line: 824, column: 28, scope: !1486)
!1491 = !DILocation(line: 824, column: 20, scope: !1486)
!1492 = !DILocation(line: 824, column: 8, scope: !1486)
!1493 = !DILocation(line: 824, column: 4, scope: !1486)
!1494 = !DILocation(line: 826, column: 18, scope: !1486)
!1495 = !DILocation(line: 826, column: 29, scope: !1486)
!1496 = !DILocation(line: 826, column: 35, scope: !1486)
!1497 = !DILocation(line: 826, column: 4, scope: !1486)
!1498 = !DILocation(line: 827, column: 7, scope: !1399)
!1499 = !DILocation(line: 827, column: 7, scope: !1393)
!1500 = !DILocation(line: 828, column: 17, scope: !1398)
!1501 = !DILocation(line: 828, column: 14, scope: !1398)
!1502 = !DILocation(line: 829, column: 8, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 829, column: 8)
!1504 = !DILocation(line: 829, column: 14, scope: !1503)
!1505 = !DILocation(line: 829, column: 19, scope: !1503)
!1506 = !DILocation(line: 829, column: 8, scope: !1398)
!1507 = !DILocation(line: 830, column: 18, scope: !1503)
!1508 = !DILocation(line: 830, column: 24, scope: !1503)
!1509 = !DILocation(line: 830, column: 15, scope: !1503)
!1510 = !DILocation(line: 830, column: 5, scope: !1503)
!1511 = !DILocation(line: 831, column: 8, scope: !1397)
!1512 = !DILocation(line: 831, column: 20, scope: !1396)
!1513 = !DILocation(line: 831, column: 20, scope: !1397)
!1514 = !DILocation(line: 831, column: 18, scope: !1397)
!1515 = !DILocation(line: 831, column: 54, scope: !1397)
!1516 = !DILocation(line: 832, column: 8, scope: !1402)
!1517 = !DILocation(line: 832, column: 8, scope: !1397)
!1518 = !DILocation(line: 832, column: 40, scope: !1397)
!1519 = !DILocation(line: 832, column: 38, scope: !1397)
!1520 = !DILocation(line: 832, column: 52, scope: !1397)
!1521 = !DILocation(line: 832, column: 58, scope: !1397)
!1522 = !DILocation(line: 832, column: 50, scope: !1397)
!1523 = !DILocation(line: 831, column: 8, scope: !1398)
!1524 = !DILocation(line: 833, column: 5, scope: !1397)
!1525 = !DILocation(line: 835, column: 8, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 835, column: 8)
!1527 = !DILocation(line: 835, column: 19, scope: !1526)
!1528 = !DILocation(line: 835, column: 16, scope: !1526)
!1529 = !DILocation(line: 835, column: 29, scope: !1526)
!1530 = !DILocation(line: 836, column: 8, scope: !1526)
!1531 = !DILocation(line: 836, column: 18, scope: !1526)
!1532 = !DILocation(line: 836, column: 16, scope: !1526)
!1533 = !DILocation(line: 836, column: 30, scope: !1526)
!1534 = !DILocation(line: 836, column: 36, scope: !1526)
!1535 = !DILocation(line: 836, column: 28, scope: !1526)
!1536 = !DILocation(line: 835, column: 8, scope: !1398)
!1537 = !DILocation(line: 837, column: 5, scope: !1526)
!1538 = !DILocation(line: 838, column: 3, scope: !1398)
!1539 = !DILocation(line: 839, column: 2, scope: !1394)
!1540 = !DILocation(line: 839, column: 2, scope: !1393)
!1541 = !DILocation(line: 841, column: 20, scope: !1370)
!1542 = !DILocation(line: 841, column: 2, scope: !1370)
!1543 = !DILocation(line: 841, column: 8, scope: !1370)
!1544 = !DILocation(line: 841, column: 18, scope: !1370)
!1545 = !DILocation(line: 842, column: 18, scope: !1370)
!1546 = !DILocation(line: 842, column: 30, scope: !1370)
!1547 = !DILocation(line: 842, column: 36, scope: !1370)
!1548 = !DILocation(line: 842, column: 28, scope: !1370)
!1549 = !DILocation(line: 842, column: 2, scope: !1370)
!1550 = !DILocation(line: 842, column: 8, scope: !1370)
!1551 = !DILocation(line: 842, column: 16, scope: !1370)
!1552 = !DILocation(line: 848, column: 2, scope: !1370)
!1553 = !DILocation(line: 849, column: 1, scope: !1370)
!1554 = distinct !DISubprogram(name: "__list_del_entry", scope: !440, file: !440, line: 213, type: !1141, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1555)
!1555 = !{!1556}
!1556 = !DILocalVariable(name: "entry", arg: 1, scope: !1554, file: !440, line: 213, type: !65)
!1557 = !DILocation(line: 213, column: 55, scope: !1554)
!1558 = !DILocation(line: 215, column: 30, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1554, file: !440, line: 215, column: 6)
!1560 = !DILocation(line: 215, column: 7, scope: !1559)
!1561 = !DILocation(line: 215, column: 6, scope: !1554)
!1562 = !DILocation(line: 216, column: 3, scope: !1559)
!1563 = !DILocation(line: 218, column: 13, scope: !1554)
!1564 = !DILocation(line: 218, column: 20, scope: !1554)
!1565 = !DILocation(line: 218, column: 26, scope: !1554)
!1566 = !DILocation(line: 218, column: 33, scope: !1554)
!1567 = !DILocation(line: 218, column: 2, scope: !1554)
!1568 = !DILocation(line: 219, column: 1, scope: !1554)
!1569 = distinct !DISubprogram(name: "__drm_mm_hole_node_end", scope: !6, file: !6, line: 320, type: !388, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1570)
!1570 = !{!1571, !1572}
!1571 = !DILocalVariable(name: "hole_node", arg: 1, scope: !1569, file: !6, line: 320, type: !57)
!1572 = !DILocalVariable(name: "__mptr", scope: !1573, file: !6, line: 322, type: !81)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !6, line: 322, column: 9)
!1574 = !DILocation(line: 320, column: 68, scope: !1569)
!1575 = !DILocation(line: 322, column: 9, scope: !1573)
!1576 = !DILocation(line: 322, column: 9, scope: !1569)
!1577 = !DILocation(line: 322, column: 48, scope: !1569)
!1578 = !DILocation(line: 322, column: 2, scope: !1569)
!1579 = distinct !DISubprogram(name: "drm_mm_scan_remove_block", scope: !3, file: !3, line: 871, type: !1371, scopeLine: 873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1580)
!1580 = !{!1581, !1582, !1583, !1584}
!1581 = !DILocalVariable(name: "scan", arg: 1, scope: !1579, file: !3, line: 871, type: !1292)
!1582 = !DILocalVariable(name: "node", arg: 2, scope: !1579, file: !3, line: 872, type: !38)
!1583 = !DILocalVariable(name: "prev_node", scope: !1579, file: !3, line: 874, type: !38)
!1584 = !DILocalVariable(name: "__mptr", scope: !1585, file: !3, line: 891, type: !81)
!1585 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 891, column: 14)
!1586 = !DILocation(line: 871, column: 51, scope: !1579)
!1587 = !DILocation(line: 872, column: 30, scope: !1579)
!1588 = !DILocation(line: 874, column: 2, scope: !1579)
!1589 = !DILocation(line: 874, column: 22, scope: !1579)
!1590 = !DILocation(line: 878, column: 2, scope: !1579)
!1591 = !DILocation(line: 881, column: 2, scope: !1579)
!1592 = !DILocation(line: 881, column: 8, scope: !1579)
!1593 = !DILocation(line: 881, column: 12, scope: !1579)
!1594 = !DILocation(line: 881, column: 23, scope: !1579)
!1595 = !DILocation(line: 891, column: 14, scope: !1585)
!1596 = !DILocation(line: 891, column: 14, scope: !1579)
!1597 = !DILocation(line: 891, column: 12, scope: !1579)
!1598 = !DILocation(line: 894, column: 12, scope: !1579)
!1599 = !DILocation(line: 894, column: 18, scope: !1579)
!1600 = !DILocation(line: 894, column: 30, scope: !1579)
!1601 = !DILocation(line: 894, column: 41, scope: !1579)
!1602 = !DILocation(line: 894, column: 2, scope: !1579)
!1603 = !DILocation(line: 896, column: 10, scope: !1579)
!1604 = !DILocation(line: 896, column: 16, scope: !1579)
!1605 = !DILocation(line: 896, column: 24, scope: !1579)
!1606 = !DILocation(line: 896, column: 30, scope: !1579)
!1607 = !DILocation(line: 896, column: 22, scope: !1579)
!1608 = !DILocation(line: 896, column: 37, scope: !1579)
!1609 = !DILocation(line: 896, column: 43, scope: !1579)
!1610 = !DILocation(line: 896, column: 35, scope: !1579)
!1611 = !DILocation(line: 896, column: 53, scope: !1579)
!1612 = !DILocation(line: 897, column: 3, scope: !1579)
!1613 = !DILocation(line: 897, column: 9, scope: !1579)
!1614 = !DILocation(line: 897, column: 17, scope: !1579)
!1615 = !DILocation(line: 897, column: 23, scope: !1579)
!1616 = !DILocation(line: 897, column: 15, scope: !1579)
!1617 = !DILocation(line: 0, scope: !1579)
!1618 = !DILocation(line: 898, column: 1, scope: !1579)
!1619 = !DILocation(line: 896, column: 2, scope: !1579)
!1620 = distinct !DISubprogram(name: "generic___clear_bit", scope: !400, file: !400, line: 37, type: !401, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1621)
!1621 = !{!1622, !1623, !1624, !1625}
!1622 = !DILocalVariable(name: "nr", arg: 1, scope: !1620, file: !400, line: 37, type: !34)
!1623 = !DILocalVariable(name: "addr", arg: 2, scope: !1620, file: !400, line: 37, type: !403)
!1624 = !DILocalVariable(name: "mask", scope: !1620, file: !400, line: 39, type: !34)
!1625 = !DILocalVariable(name: "p", scope: !1620, file: !400, line: 40, type: !85)
!1626 = !DILocation(line: 37, column: 35, scope: !1620)
!1627 = !DILocation(line: 37, column: 63, scope: !1620)
!1628 = !DILocation(line: 39, column: 2, scope: !1620)
!1629 = !DILocation(line: 39, column: 16, scope: !1620)
!1630 = !DILocation(line: 39, column: 23, scope: !1620)
!1631 = !DILocation(line: 40, column: 2, scope: !1620)
!1632 = !DILocation(line: 40, column: 17, scope: !1620)
!1633 = !DILocation(line: 40, column: 39, scope: !1620)
!1634 = !DILocation(line: 40, column: 47, scope: !1620)
!1635 = !DILocation(line: 40, column: 45, scope: !1620)
!1636 = !DILocation(line: 42, column: 9, scope: !1620)
!1637 = !DILocation(line: 42, column: 8, scope: !1620)
!1638 = !DILocation(line: 42, column: 3, scope: !1620)
!1639 = !DILocation(line: 42, column: 5, scope: !1620)
!1640 = !DILocation(line: 43, column: 1, scope: !1620)
!1641 = distinct !DISubprogram(name: "___clear_bit", scope: !425, file: !425, line: 42, type: !401, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1642)
!1642 = !{!1643, !1644}
!1643 = !DILocalVariable(name: "nr", arg: 1, scope: !1641, file: !425, line: 42, type: !34)
!1644 = !DILocalVariable(name: "addr", arg: 2, scope: !1641, file: !425, line: 42, type: !403)
!1645 = !DILocation(line: 42, column: 28, scope: !1641)
!1646 = !DILocation(line: 42, column: 56, scope: !1641)
!1647 = !DILocation(line: 44, column: 19, scope: !1641)
!1648 = !DILocation(line: 44, column: 26, scope: !1641)
!1649 = !DILocation(line: 44, column: 24, scope: !1641)
!1650 = !DILocation(line: 44, column: 2, scope: !1641)
!1651 = !DILocation(line: 45, column: 19, scope: !1641)
!1652 = !DILocation(line: 45, column: 23, scope: !1641)
!1653 = !DILocation(line: 45, column: 2, scope: !1641)
!1654 = !DILocation(line: 46, column: 1, scope: !1641)
!1655 = distinct !DISubprogram(name: "drm_mm_scan_color_evict", scope: !3, file: !3, line: 912, type: !1656, scopeLine: 913, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1658)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!38, !1292}
!1658 = !{!1659, !1660, !1661, !1662, !1663, !1664, !1667, !1670}
!1659 = !DILocalVariable(name: "scan", arg: 1, scope: !1655, file: !3, line: 912, type: !1292)
!1660 = !DILocalVariable(name: "mm", scope: !1655, file: !3, line: 914, type: !50)
!1661 = !DILocalVariable(name: "hole", scope: !1655, file: !3, line: 915, type: !38)
!1662 = !DILocalVariable(name: "hole_start", scope: !1655, file: !3, line: 916, type: !43)
!1663 = !DILocalVariable(name: "hole_end", scope: !1655, file: !3, line: 916, type: !43)
!1664 = !DILocalVariable(name: "__mptr", scope: !1665, file: !3, line: 928, type: !81)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 928, column: 2)
!1666 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 928, column: 2)
!1667 = !DILocalVariable(name: "__mptr", scope: !1668, file: !3, line: 928, type: !81)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 928, column: 2)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 928, column: 2)
!1670 = !DILocalVariable(name: "__mptr", scope: !1671, file: !3, line: 949, type: !81)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 949, column: 10)
!1672 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 948, column: 6)
!1673 = !DILocation(line: 912, column: 65, scope: !1655)
!1674 = !DILocation(line: 914, column: 2, scope: !1655)
!1675 = !DILocation(line: 914, column: 17, scope: !1655)
!1676 = !DILocation(line: 914, column: 22, scope: !1655)
!1677 = !DILocation(line: 914, column: 28, scope: !1655)
!1678 = !DILocation(line: 915, column: 2, scope: !1655)
!1679 = !DILocation(line: 915, column: 22, scope: !1655)
!1680 = !DILocation(line: 916, column: 2, scope: !1655)
!1681 = !DILocation(line: 916, column: 6, scope: !1655)
!1682 = !DILocation(line: 916, column: 18, scope: !1655)
!1683 = !DILocation(line: 920, column: 7, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 920, column: 6)
!1685 = !DILocation(line: 920, column: 11, scope: !1684)
!1686 = !DILocation(line: 920, column: 6, scope: !1655)
!1687 = !DILocation(line: 921, column: 3, scope: !1684)
!1688 = !DILocation(line: 928, column: 2, scope: !1665)
!1689 = !DILocation(line: 928, column: 2, scope: !1666)
!1690 = !DILocation(line: 928, column: 2, scope: !1669)
!1691 = !DILocation(line: 929, column: 41, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 928, column: 57)
!1693 = !DILocation(line: 929, column: 16, scope: !1692)
!1694 = !DILocation(line: 929, column: 14, scope: !1692)
!1695 = !DILocation(line: 930, column: 14, scope: !1692)
!1696 = !DILocation(line: 930, column: 27, scope: !1692)
!1697 = !DILocation(line: 930, column: 33, scope: !1692)
!1698 = !DILocation(line: 930, column: 25, scope: !1692)
!1699 = !DILocation(line: 930, column: 12, scope: !1692)
!1700 = !DILocation(line: 932, column: 7, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 932, column: 7)
!1702 = !DILocation(line: 932, column: 21, scope: !1701)
!1703 = !DILocation(line: 932, column: 27, scope: !1701)
!1704 = !DILocation(line: 932, column: 18, scope: !1701)
!1705 = !DILocation(line: 932, column: 37, scope: !1701)
!1706 = !DILocation(line: 933, column: 7, scope: !1701)
!1707 = !DILocation(line: 933, column: 19, scope: !1701)
!1708 = !DILocation(line: 933, column: 25, scope: !1701)
!1709 = !DILocation(line: 933, column: 16, scope: !1701)
!1710 = !DILocation(line: 932, column: 7, scope: !1692)
!1711 = !DILocation(line: 934, column: 4, scope: !1701)
!1712 = !DILocation(line: 935, column: 2, scope: !1692)
!1713 = !DILocation(line: 928, column: 2, scope: !1668)
!1714 = distinct !{!1714, !1689, !1715, !382, !383}
!1715 = !DILocation(line: 935, column: 2, scope: !1666)
!1716 = !DILocation(line: 939, column: 6, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 939, column: 6)
!1718 = !DILocation(line: 939, column: 6, scope: !1655)
!1719 = !DILocation(line: 940, column: 3, scope: !1717)
!1720 = !DILocation(line: 945, column: 2, scope: !1655)
!1721 = !DILocation(line: 945, column: 6, scope: !1655)
!1722 = !DILocation(line: 945, column: 19, scope: !1655)
!1723 = !DILocation(line: 945, column: 25, scope: !1655)
!1724 = !DILocation(line: 945, column: 31, scope: !1655)
!1725 = !DILocation(line: 946, column: 6, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 946, column: 6)
!1727 = !DILocation(line: 946, column: 19, scope: !1726)
!1728 = !DILocation(line: 946, column: 25, scope: !1726)
!1729 = !DILocation(line: 946, column: 17, scope: !1726)
!1730 = !DILocation(line: 946, column: 6, scope: !1655)
!1731 = !DILocation(line: 947, column: 10, scope: !1726)
!1732 = !DILocation(line: 947, column: 3, scope: !1726)
!1733 = !DILocation(line: 948, column: 6, scope: !1672)
!1734 = !DILocation(line: 948, column: 17, scope: !1672)
!1735 = !DILocation(line: 948, column: 23, scope: !1672)
!1736 = !DILocation(line: 948, column: 15, scope: !1672)
!1737 = !DILocation(line: 948, column: 6, scope: !1655)
!1738 = !DILocation(line: 949, column: 10, scope: !1671)
!1739 = !DILocation(line: 949, column: 10, scope: !1672)
!1740 = !DILocation(line: 949, column: 3, scope: !1672)
!1741 = !DILocation(line: 951, column: 2, scope: !1655)
!1742 = !DILocation(line: 952, column: 1, scope: !1655)
!1743 = distinct !DISubprogram(name: "drm_mm_init", scope: !3, file: !3, line: 963, type: !1744, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1746)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !50, !43, !43}
!1746 = !{!1747, !1748, !1749}
!1747 = !DILocalVariable(name: "mm", arg: 1, scope: !1743, file: !3, line: 963, type: !50)
!1748 = !DILocalVariable(name: "start", arg: 2, scope: !1743, file: !3, line: 963, type: !43)
!1749 = !DILocalVariable(name: "size", arg: 3, scope: !1743, file: !3, line: 963, type: !43)
!1750 = !DILocation(line: 963, column: 33, scope: !1743)
!1751 = !DILocation(line: 963, column: 41, scope: !1743)
!1752 = !DILocation(line: 963, column: 52, scope: !1743)
!1753 = !DILocation(line: 967, column: 2, scope: !1743)
!1754 = !DILocation(line: 967, column: 6, scope: !1743)
!1755 = !DILocation(line: 967, column: 19, scope: !1743)
!1756 = !DILocation(line: 969, column: 18, scope: !1743)
!1757 = !DILocation(line: 969, column: 22, scope: !1743)
!1758 = !DILocation(line: 969, column: 2, scope: !1743)
!1759 = !DILocation(line: 970, column: 2, scope: !1743)
!1760 = !DILocation(line: 970, column: 6, scope: !1743)
!1761 = !DILocation(line: 970, column: 22, scope: !1743)
!1762 = !DILocation(line: 971, column: 2, scope: !1743)
!1763 = !DILocation(line: 971, column: 6, scope: !1743)
!1764 = !DILocation(line: 971, column: 19, scope: !1743)
!1765 = !DILocation(line: 972, column: 2, scope: !1743)
!1766 = !DILocation(line: 972, column: 6, scope: !1743)
!1767 = !DILocation(line: 972, column: 19, scope: !1743)
!1768 = !DILocation(line: 975, column: 18, scope: !1743)
!1769 = !DILocation(line: 975, column: 22, scope: !1743)
!1770 = !DILocation(line: 975, column: 32, scope: !1743)
!1771 = !DILocation(line: 975, column: 2, scope: !1743)
!1772 = !DILocation(line: 976, column: 2, scope: !1743)
!1773 = !DILocation(line: 976, column: 6, scope: !1743)
!1774 = !DILocation(line: 976, column: 16, scope: !1743)
!1775 = !DILocation(line: 976, column: 22, scope: !1743)
!1776 = !DILocation(line: 977, column: 21, scope: !1743)
!1777 = !DILocation(line: 977, column: 2, scope: !1743)
!1778 = !DILocation(line: 977, column: 6, scope: !1743)
!1779 = !DILocation(line: 977, column: 16, scope: !1743)
!1780 = !DILocation(line: 977, column: 19, scope: !1743)
!1781 = !DILocation(line: 978, column: 24, scope: !1743)
!1782 = !DILocation(line: 978, column: 32, scope: !1743)
!1783 = !DILocation(line: 978, column: 30, scope: !1743)
!1784 = !DILocation(line: 978, column: 2, scope: !1743)
!1785 = !DILocation(line: 978, column: 6, scope: !1743)
!1786 = !DILocation(line: 978, column: 16, scope: !1743)
!1787 = !DILocation(line: 978, column: 22, scope: !1743)
!1788 = !DILocation(line: 979, column: 24, scope: !1743)
!1789 = !DILocation(line: 979, column: 23, scope: !1743)
!1790 = !DILocation(line: 979, column: 2, scope: !1743)
!1791 = !DILocation(line: 979, column: 6, scope: !1743)
!1792 = !DILocation(line: 979, column: 16, scope: !1743)
!1793 = !DILocation(line: 979, column: 21, scope: !1743)
!1794 = !DILocation(line: 980, column: 12, scope: !1743)
!1795 = !DILocation(line: 980, column: 16, scope: !1743)
!1796 = !DILocation(line: 980, column: 2, scope: !1743)
!1797 = !DILocation(line: 982, column: 2, scope: !1743)
!1798 = !DILocation(line: 982, column: 6, scope: !1743)
!1799 = !DILocation(line: 982, column: 18, scope: !1743)
!1800 = !DILocation(line: 987, column: 1, scope: !1743)
!1801 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !440, file: !440, line: 35, type: !1141, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1802)
!1802 = !{!1803}
!1803 = !DILocalVariable(name: "list", arg: 1, scope: !1801, file: !440, line: 35, type: !65)
!1804 = !DILocation(line: 35, column: 53, scope: !1801)
!1805 = !DILocation(line: 37, column: 2, scope: !1801)
!1806 = !DILocation(line: 37, column: 2, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1801, file: !440, line: 37, column: 2)
!1808 = !DILocation(line: 37, column: 2, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1807, file: !440, line: 37, column: 2)
!1810 = !DILocation(line: 37, column: 2, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1807, file: !440, line: 37, column: 2)
!1812 = !DILocation(line: 38, column: 2, scope: !1801)
!1813 = !DILocation(line: 38, column: 2, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1801, file: !440, line: 38, column: 2)
!1815 = !DILocation(line: 38, column: 2, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1814, file: !440, line: 38, column: 2)
!1817 = !DILocation(line: 38, column: 2, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1814, file: !440, line: 38, column: 2)
!1819 = !DILocation(line: 39, column: 1, scope: !1801)
!1820 = distinct !DISubprogram(name: "drm_mm_takedown", scope: !3, file: !3, line: 997, type: !1821, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1823)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null, !50}
!1823 = !{!1824, !1825, !1828}
!1824 = !DILocalVariable(name: "mm", arg: 1, scope: !1820, file: !3, line: 997, type: !50)
!1825 = !DILocalVariable(name: "__ret_warn_on", scope: !1826, file: !3, line: 999, type: !211)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 999, column: 6)
!1827 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 999, column: 6)
!1828 = !DILocalVariable(name: "__flags", scope: !1829, file: !3, line: 999, type: !211)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 999, column: 6)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 999, column: 6)
!1831 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 999, column: 6)
!1832 = !DILocation(line: 997, column: 37, scope: !1820)
!1833 = !DILocation(line: 999, column: 6, scope: !1826)
!1834 = !DILocation(line: 999, column: 6, scope: !1831)
!1835 = !DILocation(line: 999, column: 6, scope: !1830)
!1836 = !DILocation(line: 999, column: 6, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 999, column: 6)
!1838 = !DILocation(line: 999, column: 6, scope: !1829)
!1839 = !DILocation(line: 999, column: 6, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 999, column: 6)
!1841 = !DILocation(line: 999, column: 6, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 999, column: 6)
!1843 = !{i64 2154348623, i64 2154348652, i64 2154348698, i64 2154348756, i64 2154348810, i64 2154348864, i64 2154348919, i64 2154348950, i64 2154349258, i64 2154349264, i64 2154349311, i64 2154349334, i64 2154349360}
!1844 = !DILocation(line: 999, column: 6, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 999, column: 6)
!1846 = !DILocation(line: 999, column: 6, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 999, column: 6)
!1848 = !DILocation(line: 999, column: 6, scope: !1827)
!1849 = !DILocation(line: 999, column: 6, scope: !1820)
!1850 = !DILocation(line: 1001, column: 14, scope: !1827)
!1851 = !DILocation(line: 1001, column: 3, scope: !1827)
!1852 = !DILocation(line: 1002, column: 1, scope: !1820)
!1853 = distinct !DISubprogram(name: "drm_mm_clean", scope: !6, file: !6, line: 478, type: !1854, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1856)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!466, !169}
!1856 = !{!1857}
!1857 = !DILocalVariable(name: "mm", arg: 1, scope: !1853, file: !6, line: 478, type: !169)
!1858 = !DILocation(line: 478, column: 54, scope: !1853)
!1859 = !DILocation(line: 480, column: 20, scope: !1853)
!1860 = !DILocation(line: 480, column: 9, scope: !1853)
!1861 = !DILocation(line: 480, column: 2, scope: !1853)
!1862 = !DISubprogram(name: "__warn_printk", scope: !1863, file: !1863, line: 93, type: !1864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1863 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !1866, null}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!1868 = distinct !DISubprogram(name: "show_leaks", scope: !3, file: !3, line: 146, type: !1821, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1869)
!1869 = !{!1870}
!1870 = !DILocalVariable(name: "mm", arg: 1, scope: !1868, file: !3, line: 146, type: !50)
!1871 = !DILocation(line: 146, column: 39, scope: !1868)
!1872 = !DILocation(line: 146, column: 45, scope: !1868)
!1873 = distinct !DISubprogram(name: "drm_mm_print", scope: !3, file: !3, line: 1023, type: !1874, scopeLine: 1024, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1909)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null, !169, !1876}
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !1878, line: 76, size: 256, elements: !1879)
!1878 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!1879 = !{!1880, !1903, !1907, !1908}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !1877, file: !1878, line: 78, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !1876, !1884}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !1886, line: 79, size: 128, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1887 = !{!1888, !1889}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !1885, file: !1886, line: 80, baseType: !1866, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !1885, file: !1886, line: 81, baseType: !1890, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1892, line: 5, baseType: !1893)
!1892 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !1894)
!1894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1895, size: 192, elements: !1901)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1895, file: !3, line: 1003, baseType: !7, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1895, file: !3, line: 1003, baseType: !7, size: 32, offset: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1895, file: !3, line: 1003, baseType: !81, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1895, file: !3, line: 1003, baseType: !81, size: 64, offset: 128)
!1901 = !{!1902}
!1902 = !DISubrange(count: 1)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !1877, file: !1878, line: 79, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1876, !1866}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1877, file: !1878, line: 80, baseType: !81, size: 64, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1877, file: !1878, line: 81, baseType: !1866, size: 64, offset: 192)
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915, !1916, !1919}
!1910 = !DILocalVariable(name: "mm", arg: 1, scope: !1873, file: !3, line: 1023, type: !169)
!1911 = !DILocalVariable(name: "p", arg: 2, scope: !1873, file: !3, line: 1023, type: !1876)
!1912 = !DILocalVariable(name: "entry", scope: !1873, file: !3, line: 1025, type: !57)
!1913 = !DILocalVariable(name: "total_used", scope: !1873, file: !3, line: 1026, type: !43)
!1914 = !DILocalVariable(name: "total_free", scope: !1873, file: !3, line: 1026, type: !43)
!1915 = !DILocalVariable(name: "total", scope: !1873, file: !3, line: 1026, type: !43)
!1916 = !DILocalVariable(name: "__mptr", scope: !1917, file: !3, line: 1030, type: !81)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 1030, column: 2)
!1918 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 1030, column: 2)
!1919 = !DILocalVariable(name: "__mptr", scope: !1920, file: !3, line: 1030, type: !81)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 1030, column: 2)
!1921 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 1030, column: 2)
!1922 = !DILocation(line: 1023, column: 40, scope: !1873)
!1923 = !DILocation(line: 1023, column: 64, scope: !1873)
!1924 = !DILocation(line: 1025, column: 2, scope: !1873)
!1925 = !DILocation(line: 1025, column: 28, scope: !1873)
!1926 = !DILocation(line: 1026, column: 2, scope: !1873)
!1927 = !DILocation(line: 1026, column: 6, scope: !1873)
!1928 = !DILocation(line: 1026, column: 22, scope: !1873)
!1929 = !DILocation(line: 1026, column: 38, scope: !1873)
!1930 = !DILocation(line: 1028, column: 33, scope: !1873)
!1931 = !DILocation(line: 1028, column: 37, scope: !1873)
!1932 = !DILocation(line: 1028, column: 41, scope: !1873)
!1933 = !DILocation(line: 1028, column: 16, scope: !1873)
!1934 = !DILocation(line: 1028, column: 13, scope: !1873)
!1935 = !DILocation(line: 1030, column: 2, scope: !1917)
!1936 = !DILocation(line: 1030, column: 2, scope: !1918)
!1937 = !DILocation(line: 1030, column: 2, scope: !1921)
!1938 = !DILocation(line: 1031, column: 14, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 1030, column: 34)
!1940 = !DILocation(line: 1031, column: 52, scope: !1939)
!1941 = !DILocation(line: 1031, column: 59, scope: !1939)
!1942 = !DILocation(line: 1032, column: 7, scope: !1939)
!1943 = !DILocation(line: 1032, column: 14, scope: !1939)
!1944 = !DILocation(line: 1032, column: 22, scope: !1939)
!1945 = !DILocation(line: 1032, column: 29, scope: !1939)
!1946 = !DILocation(line: 1032, column: 20, scope: !1939)
!1947 = !DILocation(line: 1032, column: 35, scope: !1939)
!1948 = !DILocation(line: 1032, column: 42, scope: !1939)
!1949 = !DILocation(line: 1031, column: 3, scope: !1939)
!1950 = !DILocation(line: 1033, column: 17, scope: !1939)
!1951 = !DILocation(line: 1033, column: 24, scope: !1939)
!1952 = !DILocation(line: 1033, column: 14, scope: !1939)
!1953 = !DILocation(line: 1034, column: 34, scope: !1939)
!1954 = !DILocation(line: 1034, column: 37, scope: !1939)
!1955 = !DILocation(line: 1034, column: 17, scope: !1939)
!1956 = !DILocation(line: 1034, column: 14, scope: !1939)
!1957 = !DILocation(line: 1035, column: 2, scope: !1939)
!1958 = !DILocation(line: 1030, column: 2, scope: !1920)
!1959 = distinct !{!1959, !1936, !1960, !382, !383}
!1960 = !DILocation(line: 1035, column: 2, scope: !1918)
!1961 = !DILocation(line: 1036, column: 10, scope: !1873)
!1962 = !DILocation(line: 1036, column: 23, scope: !1873)
!1963 = !DILocation(line: 1036, column: 21, scope: !1873)
!1964 = !DILocation(line: 1036, column: 8, scope: !1873)
!1965 = !DILocation(line: 1038, column: 13, scope: !1873)
!1966 = !DILocation(line: 1038, column: 54, scope: !1873)
!1967 = !DILocation(line: 1039, column: 6, scope: !1873)
!1968 = !DILocation(line: 1039, column: 18, scope: !1873)
!1969 = !DILocation(line: 1038, column: 2, scope: !1873)
!1970 = !DILocation(line: 1040, column: 1, scope: !1873)
!1971 = distinct !DISubprogram(name: "drm_mm_dump_hole", scope: !3, file: !3, line: 1005, type: !1972, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!43, !1876, !57}
!1974 = !{!1975, !1976, !1977, !1978}
!1975 = !DILocalVariable(name: "p", arg: 1, scope: !1971, file: !3, line: 1005, type: !1876)
!1976 = !DILocalVariable(name: "entry", arg: 2, scope: !1971, file: !3, line: 1005, type: !57)
!1977 = !DILocalVariable(name: "start", scope: !1971, file: !3, line: 1007, type: !43)
!1978 = !DILocalVariable(name: "size", scope: !1971, file: !3, line: 1007, type: !43)
!1979 = !DILocation(line: 1005, column: 49, scope: !1971)
!1980 = !DILocation(line: 1005, column: 78, scope: !1971)
!1981 = !DILocation(line: 1007, column: 2, scope: !1971)
!1982 = !DILocation(line: 1007, column: 6, scope: !1971)
!1983 = !DILocation(line: 1007, column: 13, scope: !1971)
!1984 = !DILocation(line: 1009, column: 9, scope: !1971)
!1985 = !DILocation(line: 1009, column: 16, scope: !1971)
!1986 = !DILocation(line: 1009, column: 7, scope: !1971)
!1987 = !DILocation(line: 1010, column: 6, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1010, column: 6)
!1989 = !DILocation(line: 1010, column: 6, scope: !1971)
!1990 = !DILocation(line: 1011, column: 34, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 1010, column: 12)
!1992 = !DILocation(line: 1011, column: 11, scope: !1991)
!1993 = !DILocation(line: 1011, column: 9, scope: !1991)
!1994 = !DILocation(line: 1012, column: 14, scope: !1991)
!1995 = !DILocation(line: 1013, column: 7, scope: !1991)
!1996 = !DILocation(line: 1013, column: 14, scope: !1991)
!1997 = !DILocation(line: 1013, column: 22, scope: !1991)
!1998 = !DILocation(line: 1013, column: 20, scope: !1991)
!1999 = !DILocation(line: 1013, column: 28, scope: !1991)
!2000 = !DILocation(line: 1012, column: 3, scope: !1991)
!2001 = !DILocation(line: 1014, column: 2, scope: !1991)
!2002 = !DILocation(line: 1016, column: 9, scope: !1971)
!2003 = !DILocation(line: 1017, column: 1, scope: !1971)
!2004 = !DILocation(line: 1016, column: 2, scope: !1971)
!2005 = !DISubprogram(name: "drm_printf", scope: !1878, file: !1878, line: 93, type: !2006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !1876, !1866, null}
!2008 = distinct !DISubprogram(name: "drm_mm_interval_tree_subtree_search", scope: !3, file: !3, line: 152, type: !2009, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2011)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!38, !38, !43, !43}
!2011 = !{!2012, !2013, !2014, !2015, !2019, !2021}
!2012 = !DILocalVariable(name: "node", arg: 1, scope: !2008, file: !3, line: 152, type: !38)
!2013 = !DILocalVariable(name: "start", arg: 2, scope: !2008, file: !3, line: 152, type: !43)
!2014 = !DILocalVariable(name: "last", arg: 3, scope: !2008, file: !3, line: 152, type: !43)
!2015 = !DILocalVariable(name: "left", scope: !2016, file: !3, line: 152, type: !38)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 152, column: 1)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 152, column: 1)
!2018 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 152, column: 1)
!2019 = !DILocalVariable(name: "__mptr", scope: !2020, file: !3, line: 152, type: !81)
!2020 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 152, column: 1)
!2021 = !DILocalVariable(name: "__mptr", scope: !2022, file: !3, line: 152, type: !81)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 152, column: 1)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 152, column: 1)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 152, column: 1)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 152, column: 1)
!2026 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 152, column: 1)
!2027 = !DILocation(line: 152, column: 1, scope: !2008)
!2028 = !DILocation(line: 152, column: 1, scope: !2017)
!2029 = !DILocation(line: 152, column: 1, scope: !2018)
!2030 = !DILocation(line: 152, column: 1, scope: !2016)
!2031 = !DILocation(line: 152, column: 1, scope: !2020)
!2032 = !DILocation(line: 152, column: 1, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 152, column: 1)
!2034 = !DILocation(line: 152, column: 1, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 152, column: 1)
!2036 = distinct !{!2036, !2027, !2027, !383}
!2037 = !DILocation(line: 152, column: 1, scope: !2026)
!2038 = !DILocation(line: 152, column: 1, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 152, column: 1)
!2040 = !DILocation(line: 152, column: 1, scope: !2025)
!2041 = !DILocation(line: 152, column: 1, scope: !2024)
!2042 = !DILocation(line: 152, column: 1, scope: !2022)
!2043 = !DILocation(line: 152, column: 1, scope: !2023)
!2044 = !DILocation(line: 152, column: 1, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 152, column: 1)
!2046 = distinct !DISubprogram(name: "usable_hole_addr", scope: !3, file: !3, line: 325, type: !2047, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!466, !30, !43}
!2049 = !{!2050, !2051}
!2050 = !DILocalVariable(name: "rb", arg: 1, scope: !2046, file: !3, line: 325, type: !30)
!2051 = !DILocalVariable(name: "size", arg: 2, scope: !2046, file: !3, line: 325, type: !43)
!2052 = !DILocation(line: 325, column: 46, scope: !2046)
!2053 = !DILocation(line: 325, column: 54, scope: !2046)
!2054 = !DILocation(line: 327, column: 9, scope: !2046)
!2055 = !DILocation(line: 327, column: 12, scope: !2046)
!2056 = !DILocation(line: 327, column: 36, scope: !2046)
!2057 = !DILocation(line: 327, column: 15, scope: !2046)
!2058 = !DILocation(line: 327, column: 41, scope: !2046)
!2059 = !DILocation(line: 327, column: 61, scope: !2046)
!2060 = !DILocation(line: 327, column: 58, scope: !2046)
!2061 = !DILocation(line: 0, scope: !2046)
!2062 = !DILocation(line: 327, column: 2, scope: !2046)
!2063 = distinct !DISubprogram(name: "rb_hole_addr_to_node", scope: !3, file: !3, line: 300, type: !2064, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!38, !30}
!2066 = !{!2067, !2068, !2070}
!2067 = !DILocalVariable(name: "rb", arg: 1, scope: !2063, file: !3, line: 300, type: !30)
!2068 = !DILocalVariable(name: "____ptr", scope: !2069, file: !3, line: 302, type: !30)
!2069 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 302, column: 9)
!2070 = !DILocalVariable(name: "__mptr", scope: !2071, file: !3, line: 302, type: !81)
!2071 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 302, column: 9)
!2072 = !DILocation(line: 300, column: 72, scope: !2063)
!2073 = !DILocation(line: 302, column: 9, scope: !2069)
!2074 = !DILocation(line: 302, column: 9, scope: !2071)
!2075 = !DILocation(line: 302, column: 9, scope: !2063)
!2076 = !DILocation(line: 302, column: 2, scope: !2063)
!2077 = distinct !DISubprogram(name: "instrument_write", scope: !2078, file: !2078, line: 38, type: !2079, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2088)
!2078 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !2081, !2084}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2083 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 61, baseType: !2085)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !2086, line: 72, baseType: !2087)
!2086 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !2086, line: 16, baseType: !34)
!2088 = !{!2089, !2090}
!2089 = !DILocalVariable(name: "v", arg: 1, scope: !2077, file: !2078, line: 38, type: !2081)
!2090 = !DILocalVariable(name: "size", arg: 2, scope: !2077, file: !2078, line: 38, type: !2084)
!2091 = !DILocation(line: 38, column: 67, scope: !2077)
!2092 = !DILocation(line: 38, column: 77, scope: !2077)
!2093 = !DILocation(line: 40, column: 20, scope: !2077)
!2094 = !DILocation(line: 40, column: 23, scope: !2077)
!2095 = !DILocation(line: 40, column: 2, scope: !2077)
!2096 = !DILocation(line: 41, column: 2, scope: !2077)
!2097 = !DILocation(line: 42, column: 1, scope: !2077)
!2098 = distinct !DISubprogram(name: "arch___set_bit", scope: !2099, file: !2099, line: 66, type: !401, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2100)
!2099 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2100 = !{!2101, !2102}
!2101 = !DILocalVariable(name: "nr", arg: 1, scope: !2098, file: !2099, line: 66, type: !34)
!2102 = !DILocalVariable(name: "addr", arg: 2, scope: !2098, file: !2099, line: 66, type: !403)
!2103 = !DILocation(line: 66, column: 30, scope: !2098)
!2104 = !DILocation(line: 66, column: 58, scope: !2098)
!2105 = !DILocation(line: 68, column: 44, scope: !2098)
!2106 = !DILocation(line: 68, column: 56, scope: !2098)
!2107 = !DILocation(line: 68, column: 2, scope: !2098)
!2108 = !{i64 2148640034}
!2109 = !DILocation(line: 69, column: 1, scope: !2098)
!2110 = distinct !DISubprogram(name: "kasan_check_write", scope: !2111, file: !2111, line: 44, type: !2112, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2114)
!2111 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!466, !2081, !7}
!2114 = !{!2115, !2116}
!2115 = !DILocalVariable(name: "p", arg: 1, scope: !2110, file: !2111, line: 44, type: !2081)
!2116 = !DILocalVariable(name: "size", arg: 2, scope: !2110, file: !2111, line: 44, type: !7)
!2117 = !DILocation(line: 44, column: 59, scope: !2110)
!2118 = !DILocation(line: 44, column: 75, scope: !2110)
!2119 = !DILocation(line: 46, column: 2, scope: !2110)
!2120 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2121, file: !2121, line: 229, type: !2122, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2124)
!2121 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !2081, !2084, !211}
!2124 = !{!2125, !2126, !2127}
!2125 = !DILocalVariable(name: "ptr", arg: 1, scope: !2120, file: !2121, line: 229, type: !2081)
!2126 = !DILocalVariable(name: "size", arg: 2, scope: !2120, file: !2121, line: 229, type: !2084)
!2127 = !DILocalVariable(name: "type", arg: 3, scope: !2120, file: !2121, line: 230, type: !211)
!2128 = !DILocation(line: 229, column: 60, scope: !2120)
!2129 = !DILocation(line: 229, column: 72, scope: !2120)
!2130 = !DILocation(line: 230, column: 15, scope: !2120)
!2131 = !DILocation(line: 230, column: 23, scope: !2120)
!2132 = distinct !DISubprogram(name: "__list_add", scope: !440, file: !440, line: 146, type: !2133, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !65, !65, !65}
!2135 = !{!2136, !2137, !2138}
!2136 = !DILocalVariable(name: "new", arg: 1, scope: !2132, file: !440, line: 146, type: !65)
!2137 = !DILocalVariable(name: "prev", arg: 2, scope: !2132, file: !440, line: 147, type: !65)
!2138 = !DILocalVariable(name: "next", arg: 3, scope: !2132, file: !440, line: 148, type: !65)
!2139 = !DILocation(line: 146, column: 49, scope: !2132)
!2140 = !DILocation(line: 147, column: 28, scope: !2132)
!2141 = !DILocation(line: 148, column: 28, scope: !2132)
!2142 = !DILocation(line: 150, column: 24, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2132, file: !440, line: 150, column: 6)
!2144 = !DILocation(line: 150, column: 29, scope: !2143)
!2145 = !DILocation(line: 150, column: 35, scope: !2143)
!2146 = !DILocation(line: 150, column: 7, scope: !2143)
!2147 = !DILocation(line: 150, column: 6, scope: !2132)
!2148 = !DILocation(line: 151, column: 3, scope: !2143)
!2149 = !DILocation(line: 153, column: 15, scope: !2132)
!2150 = !DILocation(line: 153, column: 2, scope: !2132)
!2151 = !DILocation(line: 153, column: 8, scope: !2132)
!2152 = !DILocation(line: 153, column: 13, scope: !2132)
!2153 = !DILocation(line: 154, column: 14, scope: !2132)
!2154 = !DILocation(line: 154, column: 2, scope: !2132)
!2155 = !DILocation(line: 154, column: 7, scope: !2132)
!2156 = !DILocation(line: 154, column: 12, scope: !2132)
!2157 = !DILocation(line: 155, column: 14, scope: !2132)
!2158 = !DILocation(line: 155, column: 2, scope: !2132)
!2159 = !DILocation(line: 155, column: 7, scope: !2132)
!2160 = !DILocation(line: 155, column: 12, scope: !2132)
!2161 = !DILocation(line: 156, column: 2, scope: !2132)
!2162 = !DILocation(line: 156, column: 2, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2132, file: !440, line: 156, column: 2)
!2164 = !DILocation(line: 156, column: 2, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2163, file: !440, line: 156, column: 2)
!2166 = !DILocation(line: 156, column: 2, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !440, line: 156, column: 2)
!2168 = !DILocation(line: 157, column: 1, scope: !2132)
!2169 = distinct !DISubprogram(name: "__list_add_valid", scope: !440, file: !440, line: 128, type: !2170, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!466, !65, !65, !65}
!2172 = !{!2173, !2174, !2175}
!2173 = !DILocalVariable(name: "new", arg: 1, scope: !2169, file: !440, line: 128, type: !65)
!2174 = !DILocalVariable(name: "prev", arg: 2, scope: !2169, file: !440, line: 129, type: !65)
!2175 = !DILocalVariable(name: "next", arg: 3, scope: !2169, file: !440, line: 130, type: !65)
!2176 = !DILocation(line: 128, column: 55, scope: !2169)
!2177 = !DILocation(line: 129, column: 23, scope: !2169)
!2178 = !DILocation(line: 130, column: 23, scope: !2169)
!2179 = !DILocation(line: 132, column: 2, scope: !2169)
!2180 = distinct !DISubprogram(name: "drm_mm_node_allocated", scope: !6, file: !6, line: 258, type: !1125, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2181)
!2181 = !{!2182}
!2182 = !DILocalVariable(name: "node", arg: 1, scope: !2180, file: !6, line: 258, type: !57)
!2183 = !DILocation(line: 258, column: 68, scope: !2180)
!2184 = !DILocation(line: 260, column: 9, scope: !2180)
!2185 = !DILocation(line: 260, column: 2, scope: !2180)
!2186 = distinct !DISubprogram(name: "rb_link_node", scope: !1259, file: !1259, line: 59, type: !2187, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !30, !30, !462}
!2189 = !{!2190, !2191, !2192}
!2190 = !DILocalVariable(name: "node", arg: 1, scope: !2186, file: !1259, line: 59, type: !30)
!2191 = !DILocalVariable(name: "parent", arg: 2, scope: !2186, file: !1259, line: 59, type: !30)
!2192 = !DILocalVariable(name: "rb_link", arg: 3, scope: !2186, file: !1259, line: 60, type: !462)
!2193 = !DILocation(line: 59, column: 49, scope: !2186)
!2194 = !DILocation(line: 59, column: 71, scope: !2186)
!2195 = !DILocation(line: 60, column: 22, scope: !2186)
!2196 = !DILocation(line: 62, column: 43, scope: !2186)
!2197 = !DILocation(line: 62, column: 28, scope: !2186)
!2198 = !DILocation(line: 62, column: 2, scope: !2186)
!2199 = !DILocation(line: 62, column: 8, scope: !2186)
!2200 = !DILocation(line: 62, column: 26, scope: !2186)
!2201 = !DILocation(line: 63, column: 18, scope: !2186)
!2202 = !DILocation(line: 63, column: 24, scope: !2186)
!2203 = !DILocation(line: 63, column: 33, scope: !2186)
!2204 = !DILocation(line: 63, column: 2, scope: !2186)
!2205 = !DILocation(line: 63, column: 8, scope: !2186)
!2206 = !DILocation(line: 63, column: 16, scope: !2186)
!2207 = !DILocation(line: 65, column: 13, scope: !2186)
!2208 = !DILocation(line: 65, column: 3, scope: !2186)
!2209 = !DILocation(line: 65, column: 11, scope: !2186)
!2210 = !DILocation(line: 66, column: 1, scope: !2186)
!2211 = distinct !DISubprogram(name: "rb_insert_augmented_cached", scope: !145, file: !145, line: 54, type: !2212, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2215)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{null, !30, !22, !466, !2214}
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!2215 = !{!2216, !2217, !2218, !2219}
!2216 = !DILocalVariable(name: "node", arg: 1, scope: !2211, file: !145, line: 54, type: !30)
!2217 = !DILocalVariable(name: "root", arg: 2, scope: !2211, file: !145, line: 55, type: !22)
!2218 = !DILocalVariable(name: "newleft", arg: 3, scope: !2211, file: !145, line: 55, type: !466)
!2219 = !DILocalVariable(name: "augment", arg: 4, scope: !2211, file: !145, line: 56, type: !2214)
!2220 = !DILocation(line: 54, column: 44, scope: !2211)
!2221 = !DILocation(line: 55, column: 30, scope: !2211)
!2222 = !DILocation(line: 55, column: 41, scope: !2211)
!2223 = !DILocation(line: 56, column: 42, scope: !2211)
!2224 = !DILocation(line: 58, column: 6, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2211, file: !145, line: 58, column: 6)
!2226 = !DILocation(line: 58, column: 6, scope: !2211)
!2227 = !DILocation(line: 59, column: 23, scope: !2225)
!2228 = !DILocation(line: 59, column: 3, scope: !2225)
!2229 = !DILocation(line: 59, column: 9, scope: !2225)
!2230 = !DILocation(line: 59, column: 21, scope: !2225)
!2231 = !DILocation(line: 60, column: 22, scope: !2211)
!2232 = !DILocation(line: 60, column: 29, scope: !2211)
!2233 = !DILocation(line: 60, column: 35, scope: !2211)
!2234 = !DILocation(line: 60, column: 44, scope: !2211)
!2235 = !DILocation(line: 60, column: 2, scope: !2211)
!2236 = !DILocation(line: 61, column: 1, scope: !2211)
!2237 = distinct !DISubprogram(name: "const_test_bit", scope: !400, file: !400, line: 166, type: !2238, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!466, !34, !2240}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!2242 = !{!2243, !2244, !2245, !2246, !2247}
!2243 = !DILocalVariable(name: "nr", arg: 1, scope: !2237, file: !400, line: 166, type: !34)
!2244 = !DILocalVariable(name: "addr", arg: 2, scope: !2237, file: !400, line: 166, type: !2240)
!2245 = !DILocalVariable(name: "p", scope: !2237, file: !400, line: 168, type: !83)
!2246 = !DILocalVariable(name: "mask", scope: !2237, file: !400, line: 169, type: !34)
!2247 = !DILocalVariable(name: "val", scope: !2237, file: !400, line: 170, type: !34)
!2248 = !DILocation(line: 166, column: 30, scope: !2237)
!2249 = !DILocation(line: 166, column: 64, scope: !2237)
!2250 = !DILocation(line: 168, column: 2, scope: !2237)
!2251 = !DILocation(line: 168, column: 23, scope: !2237)
!2252 = !DILocation(line: 168, column: 50, scope: !2237)
!2253 = !DILocation(line: 168, column: 57, scope: !2237)
!2254 = !DILocation(line: 168, column: 55, scope: !2237)
!2255 = !DILocation(line: 169, column: 2, scope: !2237)
!2256 = !DILocation(line: 169, column: 16, scope: !2237)
!2257 = !DILocation(line: 169, column: 23, scope: !2237)
!2258 = !DILocation(line: 170, column: 2, scope: !2237)
!2259 = !DILocation(line: 170, column: 16, scope: !2237)
!2260 = !DILocation(line: 170, column: 23, scope: !2237)
!2261 = !DILocation(line: 170, column: 22, scope: !2237)
!2262 = !DILocation(line: 172, column: 12, scope: !2237)
!2263 = !DILocation(line: 172, column: 18, scope: !2237)
!2264 = !DILocation(line: 172, column: 16, scope: !2237)
!2265 = !DILocation(line: 172, column: 10, scope: !2237)
!2266 = !DILocation(line: 172, column: 9, scope: !2237)
!2267 = !DILocation(line: 173, column: 1, scope: !2237)
!2268 = !DILocation(line: 172, column: 2, scope: !2237)
!2269 = distinct !DISubprogram(name: "_test_bit", scope: !425, file: !425, line: 139, type: !2238, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2270)
!2270 = !{!2271, !2272}
!2271 = !DILocalVariable(name: "nr", arg: 1, scope: !2269, file: !425, line: 139, type: !34)
!2272 = !DILocalVariable(name: "addr", arg: 2, scope: !2269, file: !425, line: 139, type: !2240)
!2273 = !DILocation(line: 139, column: 25, scope: !2269)
!2274 = !DILocation(line: 139, column: 59, scope: !2269)
!2275 = !DILocation(line: 141, column: 25, scope: !2269)
!2276 = !DILocation(line: 141, column: 32, scope: !2269)
!2277 = !DILocation(line: 141, column: 30, scope: !2269)
!2278 = !DILocation(line: 141, column: 2, scope: !2269)
!2279 = !DILocation(line: 142, column: 23, scope: !2269)
!2280 = !DILocation(line: 142, column: 27, scope: !2269)
!2281 = !DILocation(line: 142, column: 9, scope: !2269)
!2282 = !DILocation(line: 142, column: 2, scope: !2269)
!2283 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2078, file: !2078, line: 66, type: !2079, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2284)
!2284 = !{!2285, !2286}
!2285 = !DILocalVariable(name: "v", arg: 1, scope: !2283, file: !2078, line: 66, type: !2081)
!2286 = !DILocalVariable(name: "size", arg: 2, scope: !2283, file: !2078, line: 66, type: !2084)
!2287 = !DILocation(line: 66, column: 73, scope: !2283)
!2288 = !DILocation(line: 66, column: 83, scope: !2283)
!2289 = !DILocation(line: 68, column: 19, scope: !2283)
!2290 = !DILocation(line: 68, column: 22, scope: !2283)
!2291 = !DILocation(line: 68, column: 2, scope: !2283)
!2292 = !DILocation(line: 69, column: 2, scope: !2283)
!2293 = !DILocation(line: 70, column: 1, scope: !2283)
!2294 = distinct !DISubprogram(name: "arch_test_bit", scope: !2099, file: !2099, line: 237, type: !2238, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2295 = !{!2296, !2297}
!2296 = !DILocalVariable(name: "nr", arg: 1, scope: !2294, file: !2099, line: 237, type: !34)
!2297 = !DILocalVariable(name: "addr", arg: 2, scope: !2294, file: !2099, line: 237, type: !2240)
!2298 = !DILocation(line: 237, column: 29, scope: !2294)
!2299 = !DILocation(line: 237, column: 63, scope: !2294)
!2300 = !DILocation(line: 239, column: 30, scope: !2294)
!2301 = !DILocation(line: 239, column: 9, scope: !2294)
!2302 = !DILocation(line: 239, column: 54, scope: !2294)
!2303 = !DILocation(line: 239, column: 58, scope: !2294)
!2304 = !DILocation(line: 239, column: 36, scope: !2294)
!2305 = !DILocation(line: 240, column: 26, scope: !2294)
!2306 = !DILocation(line: 240, column: 30, scope: !2294)
!2307 = !DILocation(line: 240, column: 8, scope: !2294)
!2308 = !DILocation(line: 239, column: 2, scope: !2294)
!2309 = distinct !DISubprogram(name: "kasan_check_read", scope: !2111, file: !2111, line: 40, type: !2112, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2310)
!2310 = !{!2311, !2312}
!2311 = !DILocalVariable(name: "p", arg: 1, scope: !2309, file: !2111, line: 40, type: !2081)
!2312 = !DILocalVariable(name: "size", arg: 2, scope: !2309, file: !2111, line: 40, type: !7)
!2313 = !DILocation(line: 40, column: 58, scope: !2309)
!2314 = !DILocation(line: 40, column: 74, scope: !2309)
!2315 = !DILocation(line: 42, column: 2, scope: !2309)
!2316 = distinct !DISubprogram(name: "constant_test_bit", scope: !2099, file: !2099, line: 204, type: !2317, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!466, !88, !2240}
!2319 = !{!2320, !2321}
!2320 = !DILocalVariable(name: "nr", arg: 1, scope: !2316, file: !2099, line: 204, type: !88)
!2321 = !DILocalVariable(name: "addr", arg: 2, scope: !2316, file: !2099, line: 204, type: !2240)
!2322 = !DILocation(line: 204, column: 52, scope: !2316)
!2323 = !DILocation(line: 204, column: 86, scope: !2316)
!2324 = !DILocation(line: 206, column: 19, scope: !2316)
!2325 = !DILocation(line: 206, column: 22, scope: !2316)
!2326 = !DILocation(line: 206, column: 15, scope: !2316)
!2327 = !DILocation(line: 207, column: 4, scope: !2316)
!2328 = !DILocation(line: 207, column: 9, scope: !2316)
!2329 = !DILocation(line: 207, column: 12, scope: !2316)
!2330 = !DILocation(line: 206, column: 44, scope: !2316)
!2331 = !DILocation(line: 207, column: 37, scope: !2316)
!2332 = !DILocation(line: 206, column: 2, scope: !2316)
!2333 = distinct !DISubprogram(name: "variable_test_bit", scope: !2099, file: !2099, line: 224, type: !2317, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2334)
!2334 = !{!2335, !2336, !2337}
!2335 = !DILocalVariable(name: "nr", arg: 1, scope: !2333, file: !2099, line: 224, type: !88)
!2336 = !DILocalVariable(name: "addr", arg: 2, scope: !2333, file: !2099, line: 224, type: !2240)
!2337 = !DILocalVariable(name: "oldbit", scope: !2333, file: !2099, line: 226, type: !466)
!2338 = !DILocation(line: 224, column: 52, scope: !2333)
!2339 = !DILocation(line: 224, column: 86, scope: !2333)
!2340 = !DILocation(line: 226, column: 2, scope: !2333)
!2341 = !DILocation(line: 226, column: 7, scope: !2333)
!2342 = !DILocation(line: 231, column: 33, scope: !2333)
!2343 = !DILocation(line: 231, column: 46, scope: !2333)
!2344 = !DILocation(line: 228, column: 2, scope: !2333)
!2345 = !{i64 2148652720, i64 2148652794}
!2346 = !DILocation(line: 233, column: 9, scope: !2333)
!2347 = !DILocation(line: 234, column: 1, scope: !2333)
!2348 = !DILocation(line: 233, column: 2, scope: !2333)
!2349 = distinct !DISubprogram(name: "rb_insert_augmented", scope: !145, file: !145, line: 47, type: !2350, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{null, !30, !1288, !2214}
!2352 = !{!2353, !2354, !2355}
!2353 = !DILocalVariable(name: "node", arg: 1, scope: !2349, file: !145, line: 47, type: !30)
!2354 = !DILocalVariable(name: "root", arg: 2, scope: !2349, file: !145, line: 47, type: !1288)
!2355 = !DILocalVariable(name: "augment", arg: 3, scope: !2349, file: !145, line: 48, type: !2214)
!2356 = !DILocation(line: 47, column: 37, scope: !2349)
!2357 = !DILocation(line: 47, column: 59, scope: !2349)
!2358 = !DILocation(line: 48, column: 42, scope: !2349)
!2359 = !DILocation(line: 50, column: 24, scope: !2349)
!2360 = !DILocation(line: 50, column: 30, scope: !2349)
!2361 = !DILocation(line: 50, column: 36, scope: !2349)
!2362 = !DILocation(line: 50, column: 45, scope: !2349)
!2363 = !DILocation(line: 50, column: 2, scope: !2349)
!2364 = !DILocation(line: 51, column: 1, scope: !2349)
!2365 = !DISubprogram(name: "__rb_insert_augmented", scope: !145, file: !145, line: 33, type: !2366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null, !30, !1288, !148}
!2368 = distinct !DISubprogram(name: "drm_mm_interval_tree_augment_propagate", scope: !3, file: !3, line: 152, type: !149, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2369)
!2369 = !{!2370, !2371, !2372, !2374}
!2370 = !DILocalVariable(name: "rb", arg: 1, scope: !2368, file: !3, line: 152, type: !30)
!2371 = !DILocalVariable(name: "stop", arg: 2, scope: !2368, file: !3, line: 152, type: !30)
!2372 = !DILocalVariable(name: "node", scope: !2373, file: !3, line: 152, type: !38)
!2373 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 152, column: 1)
!2374 = !DILocalVariable(name: "__mptr", scope: !2375, file: !3, line: 152, type: !81)
!2375 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 152, column: 1)
!2376 = !DILocation(line: 152, column: 1, scope: !2368)
!2377 = !DILocation(line: 152, column: 1, scope: !2373)
!2378 = !DILocation(line: 152, column: 1, scope: !2375)
!2379 = !DILocation(line: 152, column: 1, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 152, column: 1)
!2381 = distinct !{!2381, !2376, !2376, !382, !383}
!2382 = distinct !DISubprogram(name: "drm_mm_interval_tree_augment_copy", scope: !3, file: !3, line: 152, type: !149, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2383)
!2383 = !{!2384, !2385, !2386, !2387, !2389, !2390}
!2384 = !DILocalVariable(name: "rb_old", arg: 1, scope: !2382, file: !3, line: 152, type: !30)
!2385 = !DILocalVariable(name: "rb_new", arg: 2, scope: !2382, file: !3, line: 152, type: !30)
!2386 = !DILocalVariable(name: "old", scope: !2382, file: !3, line: 152, type: !38)
!2387 = !DILocalVariable(name: "__mptr", scope: !2388, file: !3, line: 152, type: !81)
!2388 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 152, column: 1)
!2389 = !DILocalVariable(name: "new", scope: !2382, file: !3, line: 152, type: !38)
!2390 = !DILocalVariable(name: "__mptr", scope: !2391, file: !3, line: 152, type: !81)
!2391 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 152, column: 1)
!2392 = !DILocation(line: 152, column: 1, scope: !2382)
!2393 = !DILocation(line: 152, column: 1, scope: !2388)
!2394 = !DILocation(line: 152, column: 1, scope: !2391)
!2395 = distinct !DISubprogram(name: "drm_mm_interval_tree_augment_rotate", scope: !3, file: !3, line: 152, type: !149, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2396)
!2396 = !{!2397, !2398, !2399, !2400, !2402, !2403}
!2397 = !DILocalVariable(name: "rb_old", arg: 1, scope: !2395, file: !3, line: 152, type: !30)
!2398 = !DILocalVariable(name: "rb_new", arg: 2, scope: !2395, file: !3, line: 152, type: !30)
!2399 = !DILocalVariable(name: "old", scope: !2395, file: !3, line: 152, type: !38)
!2400 = !DILocalVariable(name: "__mptr", scope: !2401, file: !3, line: 152, type: !81)
!2401 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 152, column: 1)
!2402 = !DILocalVariable(name: "new", scope: !2395, file: !3, line: 152, type: !38)
!2403 = !DILocalVariable(name: "__mptr", scope: !2404, file: !3, line: 152, type: !81)
!2404 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 152, column: 1)
!2405 = !DILocation(line: 152, column: 1, scope: !2395)
!2406 = !DILocation(line: 152, column: 1, scope: !2401)
!2407 = !DILocation(line: 152, column: 1, scope: !2404)
!2408 = distinct !DISubprogram(name: "drm_mm_interval_tree_augment_compute_max", scope: !3, file: !3, line: 152, type: !2409, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!466, !38, !466}
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2420}
!2412 = !DILocalVariable(name: "node", arg: 1, scope: !2408, file: !3, line: 152, type: !38)
!2413 = !DILocalVariable(name: "exit", arg: 2, scope: !2408, file: !3, line: 152, type: !466)
!2414 = !DILocalVariable(name: "child", scope: !2408, file: !3, line: 152, type: !38)
!2415 = !DILocalVariable(name: "max", scope: !2408, file: !3, line: 152, type: !43)
!2416 = !DILocalVariable(name: "__mptr", scope: !2417, file: !3, line: 152, type: !81)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 152, column: 1)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 152, column: 1)
!2419 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 152, column: 1)
!2420 = !DILocalVariable(name: "__mptr", scope: !2421, file: !3, line: 152, type: !81)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 152, column: 1)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 152, column: 1)
!2423 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 152, column: 1)
!2424 = !DILocation(line: 152, column: 1, scope: !2408)
!2425 = !DILocation(line: 152, column: 1, scope: !2419)
!2426 = !DILocation(line: 152, column: 1, scope: !2417)
!2427 = !DILocation(line: 152, column: 1, scope: !2418)
!2428 = !DILocation(line: 152, column: 1, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 152, column: 1)
!2430 = !DILocation(line: 152, column: 1, scope: !2423)
!2431 = !DILocation(line: 152, column: 1, scope: !2421)
!2432 = !DILocation(line: 152, column: 1, scope: !2422)
!2433 = !DILocation(line: 152, column: 1, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 152, column: 1)
!2435 = !DILocation(line: 152, column: 1, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 152, column: 1)
!2437 = distinct !DISubprogram(name: "rb_erase_cached", scope: !1259, file: !1259, line: 119, type: !2438, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!30, !30, !22}
!2440 = !{!2441, !2442, !2443}
!2441 = !DILocalVariable(name: "node", arg: 1, scope: !2437, file: !1259, line: 119, type: !30)
!2442 = !DILocalVariable(name: "root", arg: 2, scope: !2437, file: !1259, line: 119, type: !22)
!2443 = !DILocalVariable(name: "leftmost", scope: !2437, file: !1259, line: 121, type: !30)
!2444 = !DILocation(line: 119, column: 33, scope: !2437)
!2445 = !DILocation(line: 119, column: 62, scope: !2437)
!2446 = !DILocation(line: 121, column: 2, scope: !2437)
!2447 = !DILocation(line: 121, column: 18, scope: !2437)
!2448 = !DILocation(line: 123, column: 6, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2437, file: !1259, line: 123, column: 6)
!2450 = !DILocation(line: 123, column: 12, scope: !2449)
!2451 = !DILocation(line: 123, column: 27, scope: !2449)
!2452 = !DILocation(line: 123, column: 24, scope: !2449)
!2453 = !DILocation(line: 123, column: 6, scope: !2437)
!2454 = !DILocation(line: 124, column: 42, scope: !2449)
!2455 = !DILocation(line: 124, column: 34, scope: !2449)
!2456 = !DILocation(line: 124, column: 14, scope: !2449)
!2457 = !DILocation(line: 124, column: 20, scope: !2449)
!2458 = !DILocation(line: 124, column: 32, scope: !2449)
!2459 = !DILocation(line: 124, column: 12, scope: !2449)
!2460 = !DILocation(line: 124, column: 3, scope: !2449)
!2461 = !DILocation(line: 126, column: 11, scope: !2437)
!2462 = !DILocation(line: 126, column: 18, scope: !2437)
!2463 = !DILocation(line: 126, column: 24, scope: !2437)
!2464 = !DILocation(line: 126, column: 2, scope: !2437)
!2465 = !DILocation(line: 128, column: 9, scope: !2437)
!2466 = !DILocation(line: 129, column: 1, scope: !2437)
!2467 = !DILocation(line: 128, column: 2, scope: !2437)
!2468 = distinct !DISubprogram(name: "rb_erase_augmented", scope: !145, file: !145, line: 326, type: !2350, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2469)
!2469 = !{!2470, !2471, !2472, !2473}
!2470 = !DILocalVariable(name: "node", arg: 1, scope: !2468, file: !145, line: 326, type: !30)
!2471 = !DILocalVariable(name: "root", arg: 2, scope: !2468, file: !145, line: 326, type: !1288)
!2472 = !DILocalVariable(name: "augment", arg: 3, scope: !2468, file: !145, line: 327, type: !2214)
!2473 = !DILocalVariable(name: "rebalance", scope: !2468, file: !145, line: 329, type: !30)
!2474 = !DILocation(line: 326, column: 36, scope: !2468)
!2475 = !DILocation(line: 326, column: 58, scope: !2468)
!2476 = !DILocation(line: 327, column: 41, scope: !2468)
!2477 = !DILocation(line: 329, column: 2, scope: !2468)
!2478 = !DILocation(line: 329, column: 18, scope: !2468)
!2479 = !DILocation(line: 329, column: 51, scope: !2468)
!2480 = !DILocation(line: 329, column: 57, scope: !2468)
!2481 = !DILocation(line: 329, column: 63, scope: !2468)
!2482 = !DILocation(line: 329, column: 30, scope: !2468)
!2483 = !DILocation(line: 330, column: 6, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2468, file: !145, line: 330, column: 6)
!2485 = !DILocation(line: 330, column: 6, scope: !2468)
!2486 = !DILocation(line: 331, column: 20, scope: !2484)
!2487 = !DILocation(line: 331, column: 31, scope: !2484)
!2488 = !DILocation(line: 331, column: 37, scope: !2484)
!2489 = !DILocation(line: 331, column: 46, scope: !2484)
!2490 = !DILocation(line: 331, column: 3, scope: !2484)
!2491 = !DILocation(line: 332, column: 1, scope: !2468)
!2492 = !DISubprogram(name: "rb_next", scope: !1259, file: !1259, line: 44, type: !2493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!30, !2495}
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!2497 = !DISubprogram(name: "rb_erase", scope: !1259, file: !1259, line: 40, type: !2498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{null, !30, !1288}
!2500 = distinct !DISubprogram(name: "__rb_erase_augmented", scope: !145, file: !145, line: 224, type: !2501, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!30, !30, !1288, !2214}
!2503 = !{!2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2516}
!2504 = !DILocalVariable(name: "node", arg: 1, scope: !2500, file: !145, line: 224, type: !30)
!2505 = !DILocalVariable(name: "root", arg: 2, scope: !2500, file: !145, line: 224, type: !1288)
!2506 = !DILocalVariable(name: "augment", arg: 3, scope: !2500, file: !145, line: 225, type: !2214)
!2507 = !DILocalVariable(name: "child", scope: !2500, file: !145, line: 227, type: !30)
!2508 = !DILocalVariable(name: "tmp", scope: !2500, file: !145, line: 228, type: !30)
!2509 = !DILocalVariable(name: "parent", scope: !2500, file: !145, line: 229, type: !30)
!2510 = !DILocalVariable(name: "rebalance", scope: !2500, file: !145, line: 229, type: !30)
!2511 = !DILocalVariable(name: "pc", scope: !2500, file: !145, line: 230, type: !34)
!2512 = !DILocalVariable(name: "successor", scope: !2513, file: !145, line: 257, type: !30)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !145, line: 256, column: 9)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !145, line: 249, column: 13)
!2515 = distinct !DILexicalBlock(scope: !2500, file: !145, line: 232, column: 6)
!2516 = !DILocalVariable(name: "child2", scope: !2513, file: !145, line: 257, type: !30)
!2517 = !DILocation(line: 224, column: 38, scope: !2500)
!2518 = !DILocation(line: 224, column: 60, scope: !2500)
!2519 = !DILocation(line: 225, column: 43, scope: !2500)
!2520 = !DILocation(line: 227, column: 2, scope: !2500)
!2521 = !DILocation(line: 227, column: 18, scope: !2500)
!2522 = !DILocation(line: 227, column: 26, scope: !2500)
!2523 = !DILocation(line: 227, column: 32, scope: !2500)
!2524 = !DILocation(line: 228, column: 2, scope: !2500)
!2525 = !DILocation(line: 228, column: 18, scope: !2500)
!2526 = !DILocation(line: 228, column: 24, scope: !2500)
!2527 = !DILocation(line: 228, column: 30, scope: !2500)
!2528 = !DILocation(line: 229, column: 2, scope: !2500)
!2529 = !DILocation(line: 229, column: 18, scope: !2500)
!2530 = !DILocation(line: 229, column: 27, scope: !2500)
!2531 = !DILocation(line: 230, column: 2, scope: !2500)
!2532 = !DILocation(line: 230, column: 16, scope: !2500)
!2533 = !DILocation(line: 232, column: 7, scope: !2515)
!2534 = !DILocation(line: 232, column: 6, scope: !2500)
!2535 = !DILocation(line: 240, column: 8, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2515, file: !145, line: 232, column: 12)
!2537 = !DILocation(line: 240, column: 14, scope: !2536)
!2538 = !DILocation(line: 240, column: 6, scope: !2536)
!2539 = !DILocation(line: 241, column: 12, scope: !2536)
!2540 = !DILocation(line: 241, column: 10, scope: !2536)
!2541 = !DILocation(line: 242, column: 21, scope: !2536)
!2542 = !DILocation(line: 242, column: 27, scope: !2536)
!2543 = !DILocation(line: 242, column: 34, scope: !2536)
!2544 = !DILocation(line: 242, column: 42, scope: !2536)
!2545 = !DILocation(line: 242, column: 3, scope: !2536)
!2546 = !DILocation(line: 243, column: 7, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2536, file: !145, line: 243, column: 7)
!2548 = !DILocation(line: 243, column: 7, scope: !2536)
!2549 = !DILocation(line: 244, column: 31, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2547, file: !145, line: 243, column: 14)
!2551 = !DILocation(line: 244, column: 4, scope: !2550)
!2552 = !DILocation(line: 244, column: 11, scope: !2550)
!2553 = !DILocation(line: 244, column: 29, scope: !2550)
!2554 = !DILocation(line: 245, column: 14, scope: !2550)
!2555 = !DILocation(line: 246, column: 3, scope: !2550)
!2556 = !DILocation(line: 247, column: 16, scope: !2547)
!2557 = !DILocation(line: 247, column: 36, scope: !2547)
!2558 = !DILocation(line: 247, column: 14, scope: !2547)
!2559 = !DILocation(line: 248, column: 9, scope: !2536)
!2560 = !DILocation(line: 248, column: 7, scope: !2536)
!2561 = !DILocation(line: 249, column: 2, scope: !2536)
!2562 = !DILocation(line: 249, column: 14, scope: !2514)
!2563 = !DILocation(line: 249, column: 13, scope: !2515)
!2564 = !DILocation(line: 251, column: 33, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2514, file: !145, line: 249, column: 21)
!2566 = !DILocation(line: 251, column: 39, scope: !2565)
!2567 = !DILocation(line: 251, column: 31, scope: !2565)
!2568 = !DILocation(line: 251, column: 3, scope: !2565)
!2569 = !DILocation(line: 251, column: 8, scope: !2565)
!2570 = !DILocation(line: 251, column: 26, scope: !2565)
!2571 = !DILocation(line: 252, column: 12, scope: !2565)
!2572 = !DILocation(line: 252, column: 10, scope: !2565)
!2573 = !DILocation(line: 253, column: 21, scope: !2565)
!2574 = !DILocation(line: 253, column: 27, scope: !2565)
!2575 = !DILocation(line: 253, column: 32, scope: !2565)
!2576 = !DILocation(line: 253, column: 40, scope: !2565)
!2577 = !DILocation(line: 253, column: 3, scope: !2565)
!2578 = !DILocation(line: 254, column: 13, scope: !2565)
!2579 = !DILocation(line: 255, column: 9, scope: !2565)
!2580 = !DILocation(line: 255, column: 7, scope: !2565)
!2581 = !DILocation(line: 256, column: 2, scope: !2565)
!2582 = !DILocation(line: 257, column: 3, scope: !2513)
!2583 = !DILocation(line: 257, column: 19, scope: !2513)
!2584 = !DILocation(line: 257, column: 31, scope: !2513)
!2585 = !DILocation(line: 257, column: 39, scope: !2513)
!2586 = !DILocation(line: 259, column: 9, scope: !2513)
!2587 = !DILocation(line: 259, column: 16, scope: !2513)
!2588 = !DILocation(line: 259, column: 7, scope: !2513)
!2589 = !DILocation(line: 260, column: 8, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2513, file: !145, line: 260, column: 7)
!2591 = !DILocation(line: 260, column: 7, scope: !2513)
!2592 = !DILocation(line: 270, column: 13, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2590, file: !145, line: 260, column: 13)
!2594 = !DILocation(line: 270, column: 11, scope: !2593)
!2595 = !DILocation(line: 271, column: 13, scope: !2593)
!2596 = !DILocation(line: 271, column: 24, scope: !2593)
!2597 = !DILocation(line: 271, column: 11, scope: !2593)
!2598 = !DILocation(line: 273, column: 4, scope: !2593)
!2599 = !DILocation(line: 273, column: 13, scope: !2593)
!2600 = !DILocation(line: 273, column: 18, scope: !2593)
!2601 = !DILocation(line: 273, column: 24, scope: !2593)
!2602 = !DILocation(line: 274, column: 3, scope: !2593)
!2603 = !DILocation(line: 289, column: 4, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2590, file: !145, line: 274, column: 10)
!2605 = !DILocation(line: 290, column: 14, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2604, file: !145, line: 289, column: 7)
!2607 = !DILocation(line: 290, column: 12, scope: !2606)
!2608 = !DILocation(line: 291, column: 17, scope: !2606)
!2609 = !DILocation(line: 291, column: 15, scope: !2606)
!2610 = !DILocation(line: 292, column: 11, scope: !2606)
!2611 = !DILocation(line: 292, column: 16, scope: !2606)
!2612 = !DILocation(line: 292, column: 9, scope: !2606)
!2613 = !DILocation(line: 293, column: 4, scope: !2606)
!2614 = !DILocation(line: 293, column: 13, scope: !2604)
!2615 = distinct !{!2615, !2603, !2616, !382, !383}
!2616 = !DILocation(line: 293, column: 16, scope: !2604)
!2617 = !DILocation(line: 294, column: 13, scope: !2604)
!2618 = !DILocation(line: 294, column: 24, scope: !2604)
!2619 = !DILocation(line: 294, column: 11, scope: !2604)
!2620 = !DILocation(line: 295, column: 4, scope: !2604)
!2621 = !DILocation(line: 295, column: 4, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2604, file: !145, line: 295, column: 4)
!2623 = !DILocation(line: 295, column: 4, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2622, file: !145, line: 295, column: 4)
!2625 = !DILocation(line: 295, column: 4, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2622, file: !145, line: 295, column: 4)
!2627 = !DILocation(line: 296, column: 4, scope: !2604)
!2628 = !DILocation(line: 296, column: 4, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2604, file: !145, line: 296, column: 4)
!2630 = !DILocation(line: 296, column: 4, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2629, file: !145, line: 296, column: 4)
!2632 = !DILocation(line: 296, column: 4, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2629, file: !145, line: 296, column: 4)
!2634 = !DILocation(line: 297, column: 18, scope: !2604)
!2635 = !DILocation(line: 297, column: 25, scope: !2604)
!2636 = !DILocation(line: 297, column: 4, scope: !2604)
!2637 = !DILocation(line: 299, column: 4, scope: !2604)
!2638 = !DILocation(line: 299, column: 13, scope: !2604)
!2639 = !DILocation(line: 299, column: 18, scope: !2604)
!2640 = !DILocation(line: 299, column: 24, scope: !2604)
!2641 = !DILocation(line: 300, column: 4, scope: !2604)
!2642 = !DILocation(line: 300, column: 13, scope: !2604)
!2643 = !DILocation(line: 300, column: 23, scope: !2604)
!2644 = !DILocation(line: 300, column: 31, scope: !2604)
!2645 = !DILocation(line: 303, column: 9, scope: !2513)
!2646 = !DILocation(line: 303, column: 15, scope: !2513)
!2647 = !DILocation(line: 303, column: 7, scope: !2513)
!2648 = !DILocation(line: 304, column: 3, scope: !2513)
!2649 = !DILocation(line: 304, column: 3, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2513, file: !145, line: 304, column: 3)
!2651 = !DILocation(line: 304, column: 3, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2650, file: !145, line: 304, column: 3)
!2653 = !DILocation(line: 304, column: 3, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !145, line: 304, column: 3)
!2655 = !DILocation(line: 305, column: 17, scope: !2513)
!2656 = !DILocation(line: 305, column: 22, scope: !2513)
!2657 = !DILocation(line: 305, column: 3, scope: !2513)
!2658 = !DILocation(line: 307, column: 8, scope: !2513)
!2659 = !DILocation(line: 307, column: 14, scope: !2513)
!2660 = !DILocation(line: 307, column: 6, scope: !2513)
!2661 = !DILocation(line: 308, column: 9, scope: !2513)
!2662 = !DILocation(line: 308, column: 7, scope: !2513)
!2663 = !DILocation(line: 309, column: 21, scope: !2513)
!2664 = !DILocation(line: 309, column: 27, scope: !2513)
!2665 = !DILocation(line: 309, column: 38, scope: !2513)
!2666 = !DILocation(line: 309, column: 43, scope: !2513)
!2667 = !DILocation(line: 309, column: 3, scope: !2513)
!2668 = !DILocation(line: 311, column: 7, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2513, file: !145, line: 311, column: 7)
!2670 = !DILocation(line: 311, column: 7, scope: !2513)
!2671 = !DILocation(line: 312, column: 24, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !145, line: 311, column: 15)
!2673 = !DILocation(line: 312, column: 32, scope: !2672)
!2674 = !DILocation(line: 312, column: 4, scope: !2672)
!2675 = !DILocation(line: 313, column: 14, scope: !2672)
!2676 = !DILocation(line: 314, column: 3, scope: !2672)
!2677 = !DILocation(line: 315, column: 16, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2669, file: !145, line: 314, column: 10)
!2679 = !DILocation(line: 315, column: 41, scope: !2678)
!2680 = !DILocation(line: 315, column: 14, scope: !2678)
!2681 = !DILocation(line: 317, column: 34, scope: !2513)
!2682 = !DILocation(line: 317, column: 3, scope: !2513)
!2683 = !DILocation(line: 317, column: 14, scope: !2513)
!2684 = !DILocation(line: 317, column: 32, scope: !2513)
!2685 = !DILocation(line: 318, column: 9, scope: !2513)
!2686 = !DILocation(line: 318, column: 7, scope: !2513)
!2687 = !DILocation(line: 319, column: 2, scope: !2514)
!2688 = !DILocation(line: 321, column: 2, scope: !2500)
!2689 = !DILocation(line: 321, column: 11, scope: !2500)
!2690 = !DILocation(line: 321, column: 21, scope: !2500)
!2691 = !DILocation(line: 322, column: 9, scope: !2500)
!2692 = !DILocation(line: 323, column: 1, scope: !2500)
!2693 = !DILocation(line: 322, column: 2, scope: !2500)
!2694 = !DISubprogram(name: "__rb_erase_color", scope: !145, file: !145, line: 220, type: !2366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2695 = distinct !DISubprogram(name: "__rb_change_child", scope: !145, file: !145, line: 195, type: !2696, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{null, !30, !30, !30, !1288}
!2698 = !{!2699, !2700, !2701, !2702}
!2699 = !DILocalVariable(name: "old", arg: 1, scope: !2695, file: !145, line: 195, type: !30)
!2700 = !DILocalVariable(name: "new", arg: 2, scope: !2695, file: !145, line: 195, type: !30)
!2701 = !DILocalVariable(name: "parent", arg: 3, scope: !2695, file: !145, line: 196, type: !30)
!2702 = !DILocalVariable(name: "root", arg: 4, scope: !2695, file: !145, line: 196, type: !1288)
!2703 = !DILocation(line: 195, column: 35, scope: !2695)
!2704 = !DILocation(line: 195, column: 56, scope: !2695)
!2705 = !DILocation(line: 196, column: 21, scope: !2695)
!2706 = !DILocation(line: 196, column: 45, scope: !2695)
!2707 = !DILocation(line: 198, column: 6, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2695, file: !145, line: 198, column: 6)
!2709 = !DILocation(line: 198, column: 6, scope: !2695)
!2710 = !DILocation(line: 199, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !145, line: 199, column: 7)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !145, line: 198, column: 14)
!2713 = !DILocation(line: 199, column: 15, scope: !2711)
!2714 = !DILocation(line: 199, column: 26, scope: !2711)
!2715 = !DILocation(line: 199, column: 23, scope: !2711)
!2716 = !DILocation(line: 199, column: 7, scope: !2712)
!2717 = !DILocation(line: 200, column: 4, scope: !2711)
!2718 = !DILocation(line: 200, column: 4, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2711, file: !145, line: 200, column: 4)
!2720 = !DILocation(line: 200, column: 4, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2719, file: !145, line: 200, column: 4)
!2722 = !DILocation(line: 200, column: 4, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2719, file: !145, line: 200, column: 4)
!2724 = !DILocation(line: 202, column: 4, scope: !2711)
!2725 = !DILocation(line: 202, column: 4, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2711, file: !145, line: 202, column: 4)
!2727 = !DILocation(line: 202, column: 4, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2726, file: !145, line: 202, column: 4)
!2729 = !DILocation(line: 202, column: 4, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2726, file: !145, line: 202, column: 4)
!2731 = !DILocation(line: 203, column: 2, scope: !2712)
!2732 = !DILocation(line: 204, column: 3, scope: !2708)
!2733 = !DILocation(line: 204, column: 3, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2708, file: !145, line: 204, column: 3)
!2735 = !DILocation(line: 204, column: 3, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2734, file: !145, line: 204, column: 3)
!2737 = !DILocation(line: 204, column: 3, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2734, file: !145, line: 204, column: 3)
!2739 = !DILocation(line: 205, column: 1, scope: !2695)
!2740 = distinct !DISubprogram(name: "rb_set_parent", scope: !145, file: !145, line: 183, type: !149, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2741)
!2741 = !{!2742, !2743}
!2742 = !DILocalVariable(name: "rb", arg: 1, scope: !2740, file: !145, line: 183, type: !30)
!2743 = !DILocalVariable(name: "p", arg: 2, scope: !2740, file: !145, line: 183, type: !30)
!2744 = !DILocation(line: 183, column: 50, scope: !2740)
!2745 = !DILocation(line: 183, column: 70, scope: !2740)
!2746 = !DILocation(line: 185, column: 26, scope: !2740)
!2747 = !DILocation(line: 185, column: 56, scope: !2740)
!2748 = !DILocation(line: 185, column: 41, scope: !2740)
!2749 = !DILocation(line: 185, column: 39, scope: !2740)
!2750 = !DILocation(line: 185, column: 2, scope: !2740)
!2751 = !DILocation(line: 185, column: 6, scope: !2740)
!2752 = !DILocation(line: 185, column: 24, scope: !2740)
!2753 = !DILocation(line: 186, column: 1, scope: !2740)
!2754 = distinct !DISubprogram(name: "rb_set_parent_color", scope: !145, file: !145, line: 188, type: !2755, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{null, !30, !30, !211}
!2757 = !{!2758, !2759, !2760}
!2758 = !DILocalVariable(name: "rb", arg: 1, scope: !2754, file: !145, line: 188, type: !30)
!2759 = !DILocalVariable(name: "p", arg: 2, scope: !2754, file: !145, line: 189, type: !30)
!2760 = !DILocalVariable(name: "color", arg: 3, scope: !2754, file: !145, line: 189, type: !211)
!2761 = !DILocation(line: 188, column: 56, scope: !2754)
!2762 = !DILocation(line: 189, column: 28, scope: !2754)
!2763 = !DILocation(line: 189, column: 35, scope: !2754)
!2764 = !DILocation(line: 191, column: 41, scope: !2754)
!2765 = !DILocation(line: 191, column: 26, scope: !2754)
!2766 = !DILocation(line: 191, column: 45, scope: !2754)
!2767 = !DILocation(line: 191, column: 43, scope: !2754)
!2768 = !DILocation(line: 191, column: 2, scope: !2754)
!2769 = !DILocation(line: 191, column: 6, scope: !2754)
!2770 = !DILocation(line: 191, column: 24, scope: !2754)
!2771 = !DILocation(line: 192, column: 1, scope: !2754)
!2772 = distinct !DISubprogram(name: "augment_callbacks_propagate", scope: !3, file: !3, line: 241, type: !149, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2773)
!2773 = !{!2774, !2775, !2776, !2778}
!2774 = !DILocalVariable(name: "rb", arg: 1, scope: !2772, file: !3, line: 241, type: !30)
!2775 = !DILocalVariable(name: "stop", arg: 2, scope: !2772, file: !3, line: 241, type: !30)
!2776 = !DILocalVariable(name: "node", scope: !2777, file: !3, line: 241, type: !38)
!2777 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 241, column: 1)
!2778 = !DILocalVariable(name: "__mptr", scope: !2779, file: !3, line: 241, type: !81)
!2779 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 241, column: 1)
!2780 = !DILocation(line: 241, column: 1, scope: !2772)
!2781 = !DILocation(line: 241, column: 1, scope: !2777)
!2782 = !DILocation(line: 241, column: 1, scope: !2779)
!2783 = !DILocation(line: 241, column: 1, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 241, column: 1)
!2785 = distinct !{!2785, !2780, !2780, !382, !383}
!2786 = distinct !DISubprogram(name: "augment_callbacks_copy", scope: !3, file: !3, line: 241, type: !149, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2787)
!2787 = !{!2788, !2789, !2790, !2791, !2793, !2794}
!2788 = !DILocalVariable(name: "rb_old", arg: 1, scope: !2786, file: !3, line: 241, type: !30)
!2789 = !DILocalVariable(name: "rb_new", arg: 2, scope: !2786, file: !3, line: 241, type: !30)
!2790 = !DILocalVariable(name: "old", scope: !2786, file: !3, line: 241, type: !38)
!2791 = !DILocalVariable(name: "__mptr", scope: !2792, file: !3, line: 241, type: !81)
!2792 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 241, column: 1)
!2793 = !DILocalVariable(name: "new", scope: !2786, file: !3, line: 241, type: !38)
!2794 = !DILocalVariable(name: "__mptr", scope: !2795, file: !3, line: 241, type: !81)
!2795 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 241, column: 1)
!2796 = !DILocation(line: 241, column: 1, scope: !2786)
!2797 = !DILocation(line: 241, column: 1, scope: !2792)
!2798 = !DILocation(line: 241, column: 1, scope: !2795)
!2799 = distinct !DISubprogram(name: "augment_callbacks_rotate", scope: !3, file: !3, line: 241, type: !149, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2800)
!2800 = !{!2801, !2802, !2803, !2804, !2806, !2807}
!2801 = !DILocalVariable(name: "rb_old", arg: 1, scope: !2799, file: !3, line: 241, type: !30)
!2802 = !DILocalVariable(name: "rb_new", arg: 2, scope: !2799, file: !3, line: 241, type: !30)
!2803 = !DILocalVariable(name: "old", scope: !2799, file: !3, line: 241, type: !38)
!2804 = !DILocalVariable(name: "__mptr", scope: !2805, file: !3, line: 241, type: !81)
!2805 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 241, column: 1)
!2806 = !DILocalVariable(name: "new", scope: !2799, file: !3, line: 241, type: !38)
!2807 = !DILocalVariable(name: "__mptr", scope: !2808, file: !3, line: 241, type: !81)
!2808 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 241, column: 1)
!2809 = !DILocation(line: 241, column: 1, scope: !2799)
!2810 = !DILocation(line: 241, column: 1, scope: !2805)
!2811 = !DILocation(line: 241, column: 1, scope: !2808)
!2812 = distinct !DISubprogram(name: "augment_callbacks_compute_max", scope: !3, file: !3, line: 241, type: !2409, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2813)
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2822}
!2814 = !DILocalVariable(name: "node", arg: 1, scope: !2812, file: !3, line: 241, type: !38)
!2815 = !DILocalVariable(name: "exit", arg: 2, scope: !2812, file: !3, line: 241, type: !466)
!2816 = !DILocalVariable(name: "child", scope: !2812, file: !3, line: 241, type: !38)
!2817 = !DILocalVariable(name: "max", scope: !2812, file: !3, line: 241, type: !43)
!2818 = !DILocalVariable(name: "__mptr", scope: !2819, file: !3, line: 241, type: !81)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 241, column: 1)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 241, column: 1)
!2821 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 241, column: 1)
!2822 = !DILocalVariable(name: "__mptr", scope: !2823, file: !3, line: 241, type: !81)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 241, column: 1)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 241, column: 1)
!2825 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 241, column: 1)
!2826 = !DILocation(line: 241, column: 1, scope: !2812)
!2827 = !DILocation(line: 241, column: 1, scope: !2821)
!2828 = !DILocation(line: 241, column: 1, scope: !2819)
!2829 = !DILocation(line: 241, column: 1, scope: !2820)
!2830 = !DILocation(line: 241, column: 1, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 241, column: 1)
!2832 = !DILocation(line: 241, column: 1, scope: !2825)
!2833 = !DILocation(line: 241, column: 1, scope: !2823)
!2834 = !DILocation(line: 241, column: 1, scope: !2824)
!2835 = !DILocation(line: 241, column: 1, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 241, column: 1)
!2837 = !DILocation(line: 241, column: 1, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 241, column: 1)
!2839 = distinct !DISubprogram(name: "insert_hole_size", scope: !3, file: !3, line: 220, type: !2840, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{null, !22, !38}
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848}
!2843 = !DILocalVariable(name: "root", arg: 1, scope: !2839, file: !3, line: 220, type: !22)
!2844 = !DILocalVariable(name: "node", arg: 2, scope: !2839, file: !3, line: 221, type: !38)
!2845 = !DILocalVariable(name: "link", scope: !2839, file: !3, line: 223, type: !462)
!2846 = !DILocalVariable(name: "rb", scope: !2839, file: !3, line: 223, type: !30)
!2847 = !DILocalVariable(name: "x", scope: !2839, file: !3, line: 224, type: !43)
!2848 = !DILocalVariable(name: "first", scope: !2839, file: !3, line: 225, type: !466)
!2849 = !DILocation(line: 220, column: 53, scope: !2839)
!2850 = !DILocation(line: 221, column: 29, scope: !2839)
!2851 = !DILocation(line: 223, column: 2, scope: !2839)
!2852 = !DILocation(line: 223, column: 19, scope: !2839)
!2853 = !DILocation(line: 223, column: 27, scope: !2839)
!2854 = !DILocation(line: 223, column: 33, scope: !2839)
!2855 = !DILocation(line: 223, column: 41, scope: !2839)
!2856 = !DILocation(line: 223, column: 51, scope: !2839)
!2857 = !DILocation(line: 224, column: 2, scope: !2839)
!2858 = !DILocation(line: 224, column: 6, scope: !2839)
!2859 = !DILocation(line: 224, column: 10, scope: !2839)
!2860 = !DILocation(line: 224, column: 16, scope: !2839)
!2861 = !DILocation(line: 225, column: 2, scope: !2839)
!2862 = !DILocation(line: 225, column: 7, scope: !2839)
!2863 = !DILocation(line: 227, column: 2, scope: !2839)
!2864 = !DILocation(line: 227, column: 10, scope: !2839)
!2865 = !DILocation(line: 227, column: 9, scope: !2839)
!2866 = !DILocation(line: 228, column: 9, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 227, column: 16)
!2868 = !DILocation(line: 228, column: 8, scope: !2867)
!2869 = !DILocation(line: 228, column: 6, scope: !2867)
!2870 = !DILocation(line: 229, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 229, column: 7)
!2872 = !DILocation(line: 229, column: 27, scope: !2871)
!2873 = !DILocation(line: 229, column: 11, scope: !2871)
!2874 = !DILocation(line: 229, column: 9, scope: !2871)
!2875 = !DILocation(line: 229, column: 7, scope: !2867)
!2876 = !DILocation(line: 230, column: 12, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 229, column: 32)
!2878 = !DILocation(line: 230, column: 16, scope: !2877)
!2879 = !DILocation(line: 230, column: 9, scope: !2877)
!2880 = !DILocation(line: 231, column: 3, scope: !2877)
!2881 = !DILocation(line: 232, column: 12, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 231, column: 10)
!2883 = !DILocation(line: 232, column: 16, scope: !2882)
!2884 = !DILocation(line: 232, column: 9, scope: !2882)
!2885 = !DILocation(line: 233, column: 10, scope: !2882)
!2886 = distinct !{!2886, !2863, !2887, !382, !383}
!2887 = !DILocation(line: 235, column: 2, scope: !2839)
!2888 = !DILocation(line: 237, column: 16, scope: !2839)
!2889 = !DILocation(line: 237, column: 22, scope: !2839)
!2890 = !DILocation(line: 237, column: 36, scope: !2839)
!2891 = !DILocation(line: 237, column: 40, scope: !2839)
!2892 = !DILocation(line: 237, column: 2, scope: !2839)
!2893 = !DILocation(line: 238, column: 26, scope: !2839)
!2894 = !DILocation(line: 238, column: 32, scope: !2839)
!2895 = !DILocation(line: 238, column: 46, scope: !2839)
!2896 = !DILocation(line: 238, column: 52, scope: !2839)
!2897 = !DILocation(line: 238, column: 2, scope: !2839)
!2898 = !DILocation(line: 239, column: 1, scope: !2839)
!2899 = distinct !DISubprogram(name: "insert_hole_addr", scope: !3, file: !3, line: 245, type: !2900, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{null, !1288, !38}
!2902 = !{!2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910}
!2903 = !DILocalVariable(name: "root", arg: 1, scope: !2899, file: !3, line: 245, type: !1288)
!2904 = !DILocalVariable(name: "node", arg: 2, scope: !2899, file: !3, line: 245, type: !38)
!2905 = !DILocalVariable(name: "link", scope: !2899, file: !3, line: 247, type: !462)
!2906 = !DILocalVariable(name: "rb_parent", scope: !2899, file: !3, line: 247, type: !30)
!2907 = !DILocalVariable(name: "start", scope: !2899, file: !3, line: 248, type: !43)
!2908 = !DILocalVariable(name: "subtree_max_hole", scope: !2899, file: !3, line: 248, type: !43)
!2909 = !DILocalVariable(name: "parent", scope: !2899, file: !3, line: 249, type: !38)
!2910 = !DILocalVariable(name: "__mptr", scope: !2911, file: !3, line: 253, type: !81)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 253, column: 12)
!2912 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 251, column: 16)
!2913 = !DILocation(line: 245, column: 46, scope: !2899)
!2914 = !DILocation(line: 245, column: 72, scope: !2899)
!2915 = !DILocation(line: 247, column: 2, scope: !2899)
!2916 = !DILocation(line: 247, column: 19, scope: !2899)
!2917 = !DILocation(line: 247, column: 27, scope: !2899)
!2918 = !DILocation(line: 247, column: 33, scope: !2899)
!2919 = !DILocation(line: 247, column: 43, scope: !2899)
!2920 = !DILocation(line: 248, column: 2, scope: !2899)
!2921 = !DILocation(line: 248, column: 6, scope: !2899)
!2922 = !DILocation(line: 248, column: 14, scope: !2899)
!2923 = !DILocation(line: 248, column: 31, scope: !2899)
!2924 = !DILocation(line: 248, column: 50, scope: !2899)
!2925 = !DILocation(line: 248, column: 56, scope: !2899)
!2926 = !DILocation(line: 249, column: 2, scope: !2899)
!2927 = !DILocation(line: 249, column: 22, scope: !2899)
!2928 = !DILocation(line: 251, column: 2, scope: !2899)
!2929 = !DILocation(line: 251, column: 10, scope: !2899)
!2930 = !DILocation(line: 251, column: 9, scope: !2899)
!2931 = !DILocation(line: 252, column: 16, scope: !2912)
!2932 = !DILocation(line: 252, column: 15, scope: !2912)
!2933 = !DILocation(line: 252, column: 13, scope: !2912)
!2934 = !DILocation(line: 253, column: 12, scope: !2911)
!2935 = !DILocation(line: 253, column: 12, scope: !2912)
!2936 = !DILocation(line: 253, column: 10, scope: !2912)
!2937 = !DILocation(line: 254, column: 7, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 254, column: 7)
!2939 = !DILocation(line: 254, column: 15, scope: !2938)
!2940 = !DILocation(line: 254, column: 34, scope: !2938)
!2941 = !DILocation(line: 254, column: 32, scope: !2938)
!2942 = !DILocation(line: 254, column: 7, scope: !2912)
!2943 = !DILocation(line: 255, column: 31, scope: !2938)
!2944 = !DILocation(line: 255, column: 4, scope: !2938)
!2945 = !DILocation(line: 255, column: 12, scope: !2938)
!2946 = !DILocation(line: 255, column: 29, scope: !2938)
!2947 = !DILocation(line: 256, column: 7, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 256, column: 7)
!2949 = !DILocation(line: 256, column: 15, scope: !2948)
!2950 = !DILocation(line: 256, column: 13, scope: !2948)
!2951 = !DILocation(line: 256, column: 7, scope: !2912)
!2952 = !DILocation(line: 257, column: 12, scope: !2948)
!2953 = !DILocation(line: 257, column: 20, scope: !2948)
!2954 = !DILocation(line: 257, column: 33, scope: !2948)
!2955 = !DILocation(line: 257, column: 9, scope: !2948)
!2956 = !DILocation(line: 257, column: 4, scope: !2948)
!2957 = !DILocation(line: 259, column: 12, scope: !2948)
!2958 = !DILocation(line: 259, column: 20, scope: !2948)
!2959 = !DILocation(line: 259, column: 33, scope: !2948)
!2960 = !DILocation(line: 259, column: 9, scope: !2948)
!2961 = distinct !{!2961, !2928, !2962, !382, !383}
!2962 = !DILocation(line: 260, column: 2, scope: !2899)
!2963 = !DILocation(line: 262, column: 16, scope: !2899)
!2964 = !DILocation(line: 262, column: 22, scope: !2899)
!2965 = !DILocation(line: 262, column: 36, scope: !2899)
!2966 = !DILocation(line: 262, column: 47, scope: !2899)
!2967 = !DILocation(line: 262, column: 2, scope: !2899)
!2968 = !DILocation(line: 263, column: 23, scope: !2899)
!2969 = !DILocation(line: 263, column: 29, scope: !2899)
!2970 = !DILocation(line: 263, column: 43, scope: !2899)
!2971 = !DILocation(line: 263, column: 2, scope: !2899)
!2972 = !DILocation(line: 264, column: 1, scope: !2899)
!2973 = distinct !DISubprogram(name: "rb_to_hole_size", scope: !3, file: !3, line: 215, type: !947, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2974)
!2974 = !{!2975, !2976}
!2975 = !DILocalVariable(name: "rb", arg: 1, scope: !2973, file: !3, line: 215, type: !30)
!2976 = !DILocalVariable(name: "__mptr", scope: !2977, file: !3, line: 217, type: !81)
!2977 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 217, column: 9)
!2978 = !DILocation(line: 215, column: 44, scope: !2973)
!2979 = !DILocation(line: 217, column: 9, scope: !2977)
!2980 = !DILocation(line: 217, column: 9, scope: !2973)
!2981 = !DILocation(line: 217, column: 57, scope: !2973)
!2982 = !DILocation(line: 217, column: 2, scope: !2973)
!2983 = distinct !DISubprogram(name: "rb_insert_color_cached", scope: !1259, file: !1259, line: 108, type: !2984, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{null, !30, !22, !466}
!2986 = !{!2987, !2988, !2989}
!2987 = !DILocalVariable(name: "node", arg: 1, scope: !2983, file: !1259, line: 108, type: !30)
!2988 = !DILocalVariable(name: "root", arg: 2, scope: !2983, file: !1259, line: 109, type: !22)
!2989 = !DILocalVariable(name: "leftmost", arg: 3, scope: !2983, file: !1259, line: 110, type: !466)
!2990 = !DILocation(line: 108, column: 59, scope: !2983)
!2991 = !DILocation(line: 109, column: 31, scope: !2983)
!2992 = !DILocation(line: 110, column: 13, scope: !2983)
!2993 = !DILocation(line: 112, column: 6, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2983, file: !1259, line: 112, column: 6)
!2995 = !DILocation(line: 112, column: 6, scope: !2983)
!2996 = !DILocation(line: 113, column: 23, scope: !2994)
!2997 = !DILocation(line: 113, column: 3, scope: !2994)
!2998 = !DILocation(line: 113, column: 9, scope: !2994)
!2999 = !DILocation(line: 113, column: 21, scope: !2994)
!3000 = !DILocation(line: 114, column: 18, scope: !2983)
!3001 = !DILocation(line: 114, column: 25, scope: !2983)
!3002 = !DILocation(line: 114, column: 31, scope: !2983)
!3003 = !DILocation(line: 114, column: 2, scope: !2983)
!3004 = !DILocation(line: 115, column: 1, scope: !2983)
!3005 = !DISubprogram(name: "rb_insert_color", scope: !1259, file: !1259, line: 39, type: !2498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3006 = distinct !DISubprogram(name: "best_hole", scope: !3, file: !3, line: 305, type: !3007, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!38, !50, !43}
!3009 = !{!3010, !3011, !3012, !3013, !3014, !3016}
!3010 = !DILocalVariable(name: "mm", arg: 1, scope: !3006, file: !3, line: 305, type: !50)
!3011 = !DILocalVariable(name: "size", arg: 2, scope: !3006, file: !3, line: 305, type: !43)
!3012 = !DILocalVariable(name: "rb", scope: !3006, file: !3, line: 307, type: !30)
!3013 = !DILocalVariable(name: "best", scope: !3006, file: !3, line: 308, type: !38)
!3014 = !DILocalVariable(name: "node", scope: !3015, file: !3, line: 311, type: !38)
!3015 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 310, column: 5)
!3016 = !DILocalVariable(name: "__mptr", scope: !3017, file: !3, line: 312, type: !81)
!3017 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 312, column: 4)
!3018 = !DILocation(line: 305, column: 53, scope: !3006)
!3019 = !DILocation(line: 305, column: 61, scope: !3006)
!3020 = !DILocation(line: 307, column: 2, scope: !3006)
!3021 = !DILocation(line: 307, column: 18, scope: !3006)
!3022 = !DILocation(line: 307, column: 23, scope: !3006)
!3023 = !DILocation(line: 307, column: 27, scope: !3006)
!3024 = !DILocation(line: 307, column: 38, scope: !3006)
!3025 = !DILocation(line: 307, column: 46, scope: !3006)
!3026 = !DILocation(line: 308, column: 2, scope: !3006)
!3027 = !DILocation(line: 308, column: 22, scope: !3006)
!3028 = !DILocation(line: 310, column: 2, scope: !3006)
!3029 = !DILocation(line: 311, column: 3, scope: !3015)
!3030 = !DILocation(line: 311, column: 23, scope: !3015)
!3031 = !DILocation(line: 312, column: 4, scope: !3017)
!3032 = !DILocation(line: 312, column: 4, scope: !3015)
!3033 = !DILocation(line: 314, column: 7, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 314, column: 7)
!3035 = !DILocation(line: 314, column: 15, scope: !3034)
!3036 = !DILocation(line: 314, column: 21, scope: !3034)
!3037 = !DILocation(line: 314, column: 12, scope: !3034)
!3038 = !DILocation(line: 314, column: 7, scope: !3015)
!3039 = !DILocation(line: 315, column: 11, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 314, column: 32)
!3041 = !DILocation(line: 315, column: 9, scope: !3040)
!3042 = !DILocation(line: 316, column: 9, scope: !3040)
!3043 = !DILocation(line: 316, column: 13, scope: !3040)
!3044 = !DILocation(line: 316, column: 7, scope: !3040)
!3045 = !DILocation(line: 317, column: 3, scope: !3040)
!3046 = !DILocation(line: 318, column: 9, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 317, column: 10)
!3048 = !DILocation(line: 318, column: 13, scope: !3047)
!3049 = !DILocation(line: 318, column: 7, scope: !3047)
!3050 = !DILocation(line: 320, column: 2, scope: !3006)
!3051 = !DILocation(line: 320, column: 2, scope: !3015)
!3052 = !DILocation(line: 320, column: 11, scope: !3006)
!3053 = distinct !{!3053, !3028, !3054, !382, !383}
!3054 = !DILocation(line: 320, column: 13, scope: !3006)
!3055 = !DILocation(line: 322, column: 9, scope: !3006)
!3056 = !DILocation(line: 323, column: 1, scope: !3006)
!3057 = !DILocation(line: 322, column: 2, scope: !3006)
!3058 = distinct !DISubprogram(name: "rb_hole_size_to_node", scope: !3, file: !3, line: 295, type: !2064, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3059)
!3059 = !{!3060, !3061, !3063}
!3060 = !DILocalVariable(name: "rb", arg: 1, scope: !3058, file: !3, line: 295, type: !30)
!3061 = !DILocalVariable(name: "____ptr", scope: !3062, file: !3, line: 297, type: !30)
!3062 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 297, column: 9)
!3063 = !DILocalVariable(name: "__mptr", scope: !3064, file: !3, line: 297, type: !81)
!3064 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 297, column: 9)
!3065 = !DILocation(line: 295, column: 72, scope: !3058)
!3066 = !DILocation(line: 297, column: 9, scope: !3062)
!3067 = !DILocation(line: 297, column: 9, scope: !3064)
!3068 = !DILocation(line: 297, column: 9, scope: !3058)
!3069 = !DILocation(line: 297, column: 2, scope: !3058)
!3070 = !DISubprogram(name: "rb_prev", scope: !1259, file: !1259, line: 45, type: !2493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3071 = distinct !DISubprogram(name: "next_hole_low_addr", scope: !3, file: !3, line: 411, type: !3072, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!38, !38, !43}
!3074 = !{!3075, !3076, !3077, !3078}
!3075 = !DILocalVariable(name: "entry", arg: 1, scope: !3071, file: !3, line: 411, type: !38)
!3076 = !DILocalVariable(name: "size", arg: 2, scope: !3071, file: !3, line: 411, type: !43)
!3077 = !DILocalVariable(name: "parent", scope: !3071, file: !3, line: 411, type: !30)
!3078 = !DILocalVariable(name: "node", scope: !3071, file: !3, line: 411, type: !30)
!3079 = !DILocation(line: 411, column: 1, scope: !3071)
!3080 = !DILocation(line: 411, column: 1, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 411, column: 1)
!3082 = !DILocation(line: 411, column: 1, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 411, column: 1)
!3084 = !DILocation(line: 411, column: 1, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 411, column: 1)
!3086 = distinct !{!3086, !3084, !3084, !382, !383}
!3087 = !DILocation(line: 0, scope: !3071)
!3088 = distinct !{!3088, !3079, !3079, !382, !383}
!3089 = distinct !DISubprogram(name: "next_hole_high_addr", scope: !3, file: !3, line: 410, type: !3072, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3090)
!3090 = !{!3091, !3092, !3093, !3094}
!3091 = !DILocalVariable(name: "entry", arg: 1, scope: !3089, file: !3, line: 410, type: !38)
!3092 = !DILocalVariable(name: "size", arg: 2, scope: !3089, file: !3, line: 410, type: !43)
!3093 = !DILocalVariable(name: "parent", scope: !3089, file: !3, line: 410, type: !30)
!3094 = !DILocalVariable(name: "node", scope: !3089, file: !3, line: 410, type: !30)
!3095 = !DILocation(line: 410, column: 1, scope: !3089)
!3096 = !DILocation(line: 410, column: 1, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 410, column: 1)
!3098 = !DILocation(line: 410, column: 1, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 410, column: 1)
!3100 = !DILocation(line: 410, column: 1, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 410, column: 1)
!3102 = distinct !{!3102, !3100, !3100, !382, !383}
!3103 = !DILocation(line: 0, scope: !3089)
!3104 = distinct !{!3104, !3095, !3095, !382, !383}
!3105 = distinct !DISubprogram(name: "rb_erase_augmented_cached", scope: !145, file: !145, line: 335, type: !3106, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{null, !30, !22, !2214}
!3108 = !{!3109, !3110, !3111}
!3109 = !DILocalVariable(name: "node", arg: 1, scope: !3105, file: !145, line: 335, type: !30)
!3110 = !DILocalVariable(name: "root", arg: 2, scope: !3105, file: !145, line: 335, type: !22)
!3111 = !DILocalVariable(name: "augment", arg: 3, scope: !3105, file: !145, line: 336, type: !2214)
!3112 = !DILocation(line: 335, column: 43, scope: !3105)
!3113 = !DILocation(line: 335, column: 72, scope: !3105)
!3114 = !DILocation(line: 336, column: 41, scope: !3105)
!3115 = !DILocation(line: 338, column: 6, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3105, file: !145, line: 338, column: 6)
!3117 = !DILocation(line: 338, column: 12, scope: !3116)
!3118 = !DILocation(line: 338, column: 27, scope: !3116)
!3119 = !DILocation(line: 338, column: 24, scope: !3116)
!3120 = !DILocation(line: 338, column: 6, scope: !3105)
!3121 = !DILocation(line: 339, column: 31, scope: !3116)
!3122 = !DILocation(line: 339, column: 23, scope: !3116)
!3123 = !DILocation(line: 339, column: 3, scope: !3116)
!3124 = !DILocation(line: 339, column: 9, scope: !3116)
!3125 = !DILocation(line: 339, column: 21, scope: !3116)
!3126 = !DILocation(line: 340, column: 21, scope: !3105)
!3127 = !DILocation(line: 340, column: 28, scope: !3105)
!3128 = !DILocation(line: 340, column: 34, scope: !3105)
!3129 = !DILocation(line: 340, column: 43, scope: !3105)
!3130 = !DILocation(line: 340, column: 2, scope: !3105)
!3131 = !DILocation(line: 341, column: 1, scope: !3105)
!3132 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2078, file: !2078, line: 80, type: !2079, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3133)
!3133 = !{!3134, !3135}
!3134 = !DILocalVariable(name: "v", arg: 1, scope: !3132, file: !2078, line: 80, type: !2081)
!3135 = !DILocalVariable(name: "size", arg: 2, scope: !3132, file: !2078, line: 80, type: !2084)
!3136 = !DILocation(line: 80, column: 74, scope: !3132)
!3137 = !DILocation(line: 80, column: 84, scope: !3132)
!3138 = !DILocation(line: 82, column: 20, scope: !3132)
!3139 = !DILocation(line: 82, column: 23, scope: !3132)
!3140 = !DILocation(line: 82, column: 2, scope: !3132)
!3141 = !DILocation(line: 83, column: 2, scope: !3132)
!3142 = !DILocation(line: 84, column: 1, scope: !3132)
!3143 = distinct !DISubprogram(name: "arch_clear_bit_unlock", scope: !2099, file: !2099, line: 85, type: !1157, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3144)
!3144 = !{!3145, !3146}
!3145 = !DILocalVariable(name: "nr", arg: 1, scope: !3143, file: !2099, line: 85, type: !88)
!3146 = !DILocalVariable(name: "addr", arg: 2, scope: !3143, file: !2099, line: 85, type: !403)
!3147 = !DILocation(line: 85, column: 28, scope: !3143)
!3148 = !DILocation(line: 85, column: 56, scope: !3143)
!3149 = !DILocation(line: 87, column: 2, scope: !3143)
!3150 = !{i64 2148641243}
!3151 = !DILocation(line: 88, column: 17, scope: !3143)
!3152 = !DILocation(line: 88, column: 21, scope: !3143)
!3153 = !DILocation(line: 88, column: 2, scope: !3143)
!3154 = !DILocation(line: 89, column: 1, scope: !3143)
!3155 = distinct !DISubprogram(name: "arch_clear_bit", scope: !2099, file: !2099, line: 72, type: !1157, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3156)
!3156 = !{!3157, !3158}
!3157 = !DILocalVariable(name: "nr", arg: 1, scope: !3155, file: !2099, line: 72, type: !88)
!3158 = !DILocalVariable(name: "addr", arg: 2, scope: !3155, file: !2099, line: 72, type: !403)
!3159 = !DILocation(line: 72, column: 21, scope: !3155)
!3160 = !DILocation(line: 72, column: 49, scope: !3155)
!3161 = !DILocation(line: 74, column: 27, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3155, file: !2099, line: 74, column: 6)
!3163 = !DILocation(line: 74, column: 6, scope: !3162)
!3164 = !DILocation(line: 74, column: 6, scope: !3155)
!3165 = !DILocation(line: 76, column: 6, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3162, file: !2099, line: 74, column: 32)
!3167 = !DILocation(line: 77, column: 13, scope: !3166)
!3168 = !DILocation(line: 77, column: 12, scope: !3166)
!3169 = !DILocation(line: 75, column: 3, scope: !3166)
!3170 = !{i64 2148640396, i64 2148640435, i64 2148640456, i64 2148640493, i64 2148640516, i64 2148640386}
!3171 = !DILocation(line: 78, column: 2, scope: !3166)
!3172 = !DILocation(line: 80, column: 8, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3162, file: !2099, line: 78, column: 9)
!3174 = !DILocation(line: 80, column: 32, scope: !3173)
!3175 = !DILocation(line: 79, column: 3, scope: !3173)
!3176 = !{i64 2148640681, i64 2148640720, i64 2148640741, i64 2148640778, i64 2148640801, i64 2148640671}
!3177 = !DILocation(line: 82, column: 1, scope: !3155)
!3178 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !440, file: !440, line: 134, type: !3179, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3181)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!466, !65}
!3181 = !{!3182}
!3182 = !DILocalVariable(name: "entry", arg: 1, scope: !3178, file: !440, line: 134, type: !65)
!3183 = !DILocation(line: 134, column: 61, scope: !3178)
!3184 = !DILocation(line: 136, column: 2, scope: !3178)
!3185 = distinct !DISubprogram(name: "__list_del", scope: !440, file: !440, line: 193, type: !441, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3186)
!3186 = !{!3187, !3188}
!3187 = !DILocalVariable(name: "prev", arg: 1, scope: !3185, file: !440, line: 193, type: !65)
!3188 = !DILocalVariable(name: "next", arg: 2, scope: !3185, file: !440, line: 193, type: !65)
!3189 = !DILocation(line: 193, column: 50, scope: !3185)
!3190 = !DILocation(line: 193, column: 75, scope: !3185)
!3191 = !DILocation(line: 195, column: 15, scope: !3185)
!3192 = !DILocation(line: 195, column: 2, scope: !3185)
!3193 = !DILocation(line: 195, column: 8, scope: !3185)
!3194 = !DILocation(line: 195, column: 13, scope: !3185)
!3195 = !DILocation(line: 196, column: 2, scope: !3185)
!3196 = !DILocation(line: 196, column: 2, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3185, file: !440, line: 196, column: 2)
!3198 = !DILocation(line: 196, column: 2, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3197, file: !440, line: 196, column: 2)
!3200 = !DILocation(line: 196, column: 2, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3197, file: !440, line: 196, column: 2)
!3202 = !DILocation(line: 197, column: 1, scope: !3185)
!3203 = distinct !DISubprogram(name: "arch___clear_bit", scope: !2099, file: !2099, line: 92, type: !401, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3204)
!3204 = !{!3205, !3206}
!3205 = !DILocalVariable(name: "nr", arg: 1, scope: !3203, file: !2099, line: 92, type: !34)
!3206 = !DILocalVariable(name: "addr", arg: 2, scope: !3203, file: !2099, line: 92, type: !403)
!3207 = !DILocation(line: 92, column: 32, scope: !3203)
!3208 = !DILocation(line: 92, column: 60, scope: !3203)
!3209 = !DILocation(line: 94, column: 44, scope: !3203)
!3210 = !DILocation(line: 94, column: 56, scope: !3203)
!3211 = !DILocation(line: 94, column: 2, scope: !3203)
!3212 = !{i64 2148641567}
!3213 = !DILocation(line: 95, column: 1, scope: !3203)
!3214 = distinct !DISubprogram(name: "list_empty", scope: !440, file: !440, line: 371, type: !3215, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3219)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!211, !3217}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!3219 = !{!3220}
!3220 = !DILocalVariable(name: "head", arg: 1, scope: !3214, file: !440, line: 371, type: !3217)
!3221 = !DILocation(line: 371, column: 54, scope: !3214)
!3222 = !DILocation(line: 373, column: 9, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3214, file: !440, line: 373, column: 9)
!3224 = !DILocation(line: 373, column: 9, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3223, file: !440, line: 373, column: 9)
!3226 = !DILocation(line: 373, column: 34, scope: !3214)
!3227 = !DILocation(line: 373, column: 31, scope: !3214)
!3228 = !DILocation(line: 373, column: 2, scope: !3214)
!3229 = distinct !DISubprogram(name: "drm_mm_hole_node_start", scope: !6, file: !6, line: 314, type: !388, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3230)
!3230 = !{!3231}
!3231 = !DILocalVariable(name: "hole_node", arg: 1, scope: !3229, file: !6, line: 314, type: !57)
!3232 = !DILocation(line: 314, column: 68, scope: !3229)
!3233 = !DILocation(line: 317, column: 34, scope: !3229)
!3234 = !DILocation(line: 317, column: 9, scope: !3229)
!3235 = !DILocation(line: 317, column: 2, scope: !3229)
