; ModuleID = 'cfglayout.c'
source_filename = "cfglayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_location_t_base = type { i32, i32, [1 x i32] }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@epilogue_locator = dso_local local_unnamed_addr global i32 0, align 4
@prologue_locator = dso_local local_unnamed_addr global i32 0, align 4
@block_locators_locs = internal global ptr null, align 8
@block_locators_blocks = internal global ptr null, align 8
@locations_locators_locs = internal global ptr null, align 8
@locations_locators_vals = internal unnamed_addr global ptr null, align 8
@last_location = internal unnamed_addr global i32 0, align 4
@curr_location = internal unnamed_addr global i32 0, align 4
@curr_block = internal unnamed_addr global ptr null, align 8
@last_block = internal unnamed_addr global ptr null, align 8
@curr_rtl_loc = internal unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [15 x i8] c"into_cfglayout\00", align 1
@pass_into_cfg_layout_mode = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr null, ptr @into_cfg_layout_mode, ptr null, ptr null, i32 0, i32 0, i32 0, i32 512, i32 0, i32 0, i32 1 } }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"outof_cfglayout\00", align 1
@pass_outof_cfg_layout_mode = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr null, ptr @outof_cfg_layout_mode, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 512, i32 0, i32 1 } }, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Reordered sequence:\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %i \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"duplicate of %i \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"compensation \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"bb %i \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" [%i]\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"cfglayout.c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@gt_ggc_r_gt_cfglayout_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @block_locators_blocks, i64 1, i64 8, ptr @gt_ggc_mx_VEC_tree_gc, ptr @gt_pch_nx_VEC_tree_gc }, %struct.ggc_root_tab zeroinitializer], align 16
@cfg_layout_function_footer = dso_local local_unnamed_addr global ptr null, align 8
@cfg_layout_function_header = dso_local local_unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Emitting label for block %d\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @unlink_insn_chain(ptr noundef returned %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  store ptr null, ptr %3, align 8, !tbaa !5
  store ptr null, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %4, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %6, ptr %9, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %8, %2
  %11 = icmp eq ptr %6, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %4, ptr %13, align 8, !tbaa !5
  br label %15

14:                                               ; preds = %10
  tail call void @set_last_insn(ptr noundef %4) #17
  br label %15

15:                                               ; preds = %14, %12
  br i1 %7, label %16, label %17

16:                                               ; preds = %15
  tail call void @set_first_insn(ptr noundef %6) #17
  br label %17

17:                                               ; preds = %16, %15
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @set_last_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_first_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @insn_locators_alloc() local_unnamed_addr #0 {
  store i32 0, ptr @epilogue_locator, align 4, !tbaa !8
  store i32 0, ptr @prologue_locator, align 4, !tbaa !8
  %1 = tail call fastcc ptr @VEC_int_heap_alloc() #18
  store ptr %1, ptr @block_locators_locs, align 8, !tbaa !10
  %2 = tail call fastcc ptr @VEC_tree_gc_alloc() #18
  store ptr %2, ptr @block_locators_blocks, align 8, !tbaa !10
  %3 = tail call fastcc ptr @VEC_int_heap_alloc() #18
  store ptr %3, ptr @locations_locators_locs, align 8, !tbaa !10
  %4 = tail call fastcc ptr @VEC_location_t_heap_alloc() #18
  store ptr %4, ptr @locations_locators_vals, align 8, !tbaa !10
  store i32 -1, ptr @last_location, align 4, !tbaa !8
  store i32 -1, ptr @curr_location, align 4, !tbaa !8
  store ptr null, ptr @curr_block, align 8, !tbaa !10
  store ptr null, ptr @last_block, align 8, !tbaa !10
  store i32 0, ptr @curr_rtl_loc, align 4, !tbaa !8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 32, i64 noundef 8, i64 noundef 4) #17
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_gc_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef 32) #17
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_location_t_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 32, i64 noundef 8, i64 noundef 4) #17
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @insn_locators_finalize() local_unnamed_addr #0 {
  %1 = load i32, ptr @curr_rtl_loc, align 4, !tbaa !8
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 @curr_insn_locator() #18
  store i32 %4, ptr @epilogue_locator, align 4, !tbaa !8
  br label %5

5:                                                ; preds = %3, %0
  store i32 -1, ptr @curr_rtl_loc, align 4, !tbaa !8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @curr_insn_locator() local_unnamed_addr #0 {
  %1 = load i32, ptr @curr_rtl_loc, align 4, !tbaa !8
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %21, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @last_block, align 8, !tbaa !10
  %5 = load ptr, ptr @curr_block, align 8, !tbaa !10
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = add nuw nsw i32 %1, 1
  store i32 %8, ptr @curr_rtl_loc, align 4, !tbaa !8
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull @block_locators_locs, i32 noundef %8) #18
  %9 = load ptr, ptr @curr_block, align 8, !tbaa !10
  tail call fastcc void @VEC_tree_gc_safe_push(ptr noundef %9) #18
  %10 = load ptr, ptr @curr_block, align 8, !tbaa !10
  store ptr %10, ptr @last_block, align 8, !tbaa !10
  %11 = load i32, ptr @curr_rtl_loc, align 4, !tbaa !8
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ %1, %3 ]
  %14 = load i32, ptr @last_location, align 4, !tbaa !8
  %15 = load i32, ptr @curr_location, align 4, !tbaa !8
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = add nsw i32 %13, 1
  store i32 %18, ptr @curr_rtl_loc, align 4, !tbaa !8
  tail call fastcc void @VEC_int_heap_safe_push(ptr noundef nonnull @locations_locators_locs, i32 noundef %18) #18
  tail call fastcc void @VEC_location_t_heap_safe_push() #18
  %19 = load i32, ptr @curr_location, align 4, !tbaa !8
  store i32 %19, ptr @last_location, align 4, !tbaa !8
  %20 = load i32, ptr @curr_rtl_loc, align 4, !tbaa !8
  br label %21

21:                                               ; preds = %12, %17, %0
  %22 = phi i32 [ 0, %0 ], [ %20, %17 ], [ %13, %12 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @insn_locators_free() local_unnamed_addr #0 {
  store i32 0, ptr @epilogue_locator, align 4, !tbaa !8
  store i32 0, ptr @prologue_locator, align 4, !tbaa !8
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull @block_locators_locs) #18
  tail call fastcc void @VEC_tree_gc_free() #18
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull @locations_locators_locs) #18
  tail call fastcc void @VEC_location_t_heap_free() #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_free() unnamed_addr #0 {
  %1 = load ptr, ptr @block_locators_blocks, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @ggc_free(ptr noundef nonnull %1) #17
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @block_locators_blocks, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_location_t_heap_free() unnamed_addr #3 {
  %1 = load ptr, ptr @locations_locators_vals, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #18
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @locations_locators_vals, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_curr_insn_source_location(i32 noundef %0) local_unnamed_addr #4 {
  %2 = load i32, ptr @curr_rtl_loc, align 4, !tbaa !8
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  store i32 %0, ptr @curr_location, align 4, !tbaa !8
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_curr_insn_source_location() local_unnamed_addr #5 {
  %1 = load i32, ptr @curr_location, align 4, !tbaa !8
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_curr_insn_block(ptr noundef %0) local_unnamed_addr #4 {
  %2 = load i32, ptr @curr_rtl_loc, align 4, !tbaa !8
  %3 = icmp ne i32 %2, -1
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store ptr %0, ptr @curr_block, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @get_curr_insn_block() local_unnamed_addr #5 {
  %1 = load ptr, ptr @curr_block, align 8, !tbaa !10
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_int_heap_reserve(ptr noundef %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %3, i32 noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_tree_gc_reserve() #18
  %2 = load ptr, ptr @block_locators_blocks, align 8, !tbaa !10
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %2, ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_location_t_heap_safe_push() unnamed_addr #0 {
  tail call fastcc void @VEC_location_t_heap_reserve() #18
  %1 = load ptr, ptr @locations_locators_vals, align 8, !tbaa !10
  tail call fastcc void @VEC_location_t_base_quick_push(ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @into_cfg_layout_mode() #0 {
  tail call void @cfg_layout_initialize(i32 noundef 0) #18
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @outof_cfg_layout_mode() #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = load ptr, ptr %5, align 8, !tbaa !17
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %21, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  %13 = icmp eq ptr %12, %7
  br i1 %13, label %21, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %19, %14 ], [ %12, %10 ]
  %16 = phi ptr [ %15, %14 ], [ %8, %10 ]
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 2
  store ptr %15, ptr %17, align 8, !tbaa !20
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = icmp eq ptr %19, %7
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %10, %0
  tail call void @cfg_layout_finalize() #18
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @locator_location(i32 noundef %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr @locations_locators_locs, align 8
  %3 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %2) #18
  br label %4

4:                                                ; preds = %7, %1
  %5 = phi i32 [ 0, %1 ], [ %10, %7 ]
  %6 = phi i32 [ %3, %1 ], [ %8, %7 ]
  br label %7

7:                                                ; preds = %4, %15
  %8 = phi i32 [ %10, %15 ], [ %6, %4 ]
  %9 = add nsw i32 %8, %5
  %10 = sdiv i32 %9, 2
  %11 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %10) #18
  %12 = icmp sgt i32 %11, %0
  %13 = icmp eq i32 %5, %10
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %4

15:                                               ; preds = %7
  %16 = icmp sle i32 %11, %0
  %17 = icmp eq i32 %8, %10
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %7

19:                                               ; preds = %15
  %20 = load ptr, ptr @locations_locators_vals, align 8
  %21 = tail call fastcc ptr @VEC_location_t_base_index(ptr noundef %20, i32 noundef %10) #18
  %22 = load i32, ptr %21, align 4, !tbaa !8
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !21
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !8
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_location_t_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_location_t_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @locator_line(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %5 = tail call i32 @locator_location(i32 noundef %0) #18
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %5) #17
  %6 = getelementptr inbounds i8, ptr %2, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa.struct !23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @insn_line(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = tail call i32 @locator_line(i32 noundef %3) #18
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @locator_file(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %5 = tail call i32 @locator_location(i32 noundef %0) #18
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %5) #17
  %6 = load ptr, ptr %2, align 8, !tbaa.struct !24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @insn_file(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = tail call ptr @locator_file(i32 noundef %3) #18
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @locator_eq(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @locator_location(i32 noundef %0) #18
  %6 = tail call i32 @locator_location(i32 noundef %1) #18
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @locator_scope(i32 noundef %0) #18
  %10 = tail call fastcc ptr @locator_scope(i32 noundef %1) #18
  %11 = icmp eq ptr %9, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %4, %2, %8
  %14 = phi i8 [ %12, %8 ], [ 1, %2 ], [ 0, %4 ]
  ret i8 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @locator_scope(i32 noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr @block_locators_locs, align 8
  %3 = load i32, ptr @prologue_locator, align 4, !tbaa !8
  %4 = icmp eq i32 %3, %0
  %5 = load i32, ptr @epilogue_locator, align 4
  %6 = icmp eq i32 %5, %0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load ptr, ptr @cfun, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  br label %37

14:                                               ; preds = %1
  %15 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %2) #18
  %16 = icmp ne i32 %15, 0
  %17 = icmp ne i32 %0, 0
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %37

19:                                               ; preds = %22, %14
  %20 = phi i32 [ 0, %14 ], [ %25, %22 ]
  %21 = phi i32 [ %15, %14 ], [ %23, %22 ]
  br label %22

22:                                               ; preds = %19, %30
  %23 = phi i32 [ %25, %30 ], [ %21, %19 ]
  %24 = add nsw i32 %23, %20
  %25 = sdiv i32 %24, 2
  %26 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %25) #18
  %27 = icmp sgt i32 %26, %0
  %28 = icmp eq i32 %20, %25
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %19

30:                                               ; preds = %22
  %31 = icmp sle i32 %26, %0
  %32 = icmp eq i32 %23, %25
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %22

34:                                               ; preds = %30
  %35 = load ptr, ptr @block_locators_blocks, align 8
  %36 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %35, i32 noundef %25) #18
  br label %37

37:                                               ; preds = %14, %34, %8
  %38 = phi ptr [ %13, %8 ], [ %36, %34 ], [ null, %14 ]
  ret ptr %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reemit_insn_block_notes() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call ptr @get_insns() #17
  %7 = tail call i32 @active_insn_p(ptr noundef %6) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = tail call ptr @next_active_insn(ptr noundef %6) #17
  br label %11

11:                                               ; preds = %9, %0
  %12 = phi ptr [ %6, %0 ], [ %10, %9 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %11, %55
  %15 = phi ptr [ %56, %55 ], [ %5, %11 ]
  %16 = phi ptr [ %57, %55 ], [ %12, %11 ]
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65534
  %25 = icmp eq i32 %24, 20
  br i1 %25, label %55, label %26

26:                                               ; preds = %20, %14
  %27 = tail call fastcc ptr @insn_scope(ptr noundef nonnull %16) #18
  %28 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = load i32, ptr %35, align 8, !tbaa !26
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = zext nneg i32 %36 to i64
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 0, %38 ], [ %47, %40 ]
  %42 = phi ptr [ null, %38 ], [ %46, %40 ]
  %43 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = tail call fastcc ptr @insn_scope(ptr noundef %44) #18
  %46 = tail call fastcc ptr @choose_inner_scope(ptr noundef %42, ptr noundef %45) #18
  %47 = add nuw nsw i64 %41, 1
  %48 = icmp eq i64 %47, %39
  br i1 %48, label %49, label %40, !llvm.loop !28

49:                                               ; preds = %40, %26
  %50 = phi ptr [ %27, %26 ], [ %46, %40 ]
  %51 = icmp eq ptr %50, null
  %52 = icmp eq ptr %50, %15
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  tail call fastcc void @change_scope(ptr noundef nonnull %16, ptr noundef %15, ptr noundef nonnull %50) #18
  br label %55

55:                                               ; preds = %33, %20, %54, %49
  %56 = phi ptr [ %15, %20 ], [ %15, %49 ], [ %50, %54 ], [ %15, %33 ]
  %57 = tail call ptr @next_active_insn(ptr noundef nonnull %16) #17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %14, !llvm.loop !30

59:                                               ; preds = %55, %11
  %60 = phi ptr [ %5, %11 ], [ %56, %55 ]
  %61 = tail call ptr @emit_note(i32 noundef 0) #17
  %62 = load ptr, ptr @cfun, align 8, !tbaa !10
  %63 = getelementptr inbounds %struct.function, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !25
  %65 = getelementptr inbounds %struct.tree_decl_common, ptr %64, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  tail call fastcc void @change_scope(ptr noundef %61, ptr noundef %60, ptr noundef %66) #18
  %67 = tail call ptr @delete_insn(ptr noundef %61) #17
  tail call void @reorder_blocks() #17
  ret void
}

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @active_insn_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @next_active_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @insn_scope(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = tail call fastcc ptr @locator_scope(i32 noundef %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @choose_inner_scope(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 1
  %10 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 1
  %13 = icmp ugt i32 %9, %12
  %14 = select i1 %13, ptr %0, ptr %1
  br label %15

15:                                               ; preds = %6, %4, %2
  %16 = phi ptr [ %1, %2 ], [ %0, %4 ], [ %14, %6 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @change_scope(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %39, label %7

5:                                                ; preds = %35
  %6 = icmp eq ptr %36, %1
  br i1 %6, label %39, label %42

7:                                                ; preds = %3, %35
  %8 = phi ptr [ %37, %35 ], [ %2, %3 ]
  %9 = phi ptr [ %36, %35 ], [ %1, %3 ]
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %8, null
  %12 = and i1 %10, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 429, ptr noundef nonnull @.str.9) #17
  br label %14

14:                                               ; preds = %7, %13
  %15 = getelementptr inbounds %struct.tree_block, ptr %9, i64 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 1
  %18 = getelementptr inbounds %struct.tree_block, ptr %8, i64 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 1
  %21 = icmp ugt i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tree_block, ptr %9, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  br label %35

25:                                               ; preds = %14
  %26 = icmp ult i32 %17, %20
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.tree_block, ptr %8, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  br label %35

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.tree_block, ptr %9, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.tree_block, ptr %8, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  br label %35

35:                                               ; preds = %27, %30, %22
  %36 = phi ptr [ %24, %22 ], [ %9, %27 ], [ %32, %30 ]
  %37 = phi ptr [ %8, %22 ], [ %29, %27 ], [ %34, %30 ]
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %5, label %7, !llvm.loop !31

39:                                               ; preds = %42, %3, %5
  %40 = phi ptr [ %36, %5 ], [ %1, %3 ], [ %36, %42 ]
  %41 = icmp eq ptr %40, %2
  br i1 %41, label %57, label %49

42:                                               ; preds = %5, %42
  %43 = phi ptr [ %47, %42 ], [ %1, %5 ]
  %44 = tail call ptr @emit_note_before(i32 noundef 3, ptr noundef %0) #17
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 2
  store ptr %43, ptr %45, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.tree_block, ptr %43, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = icmp eq ptr %47, %36
  br i1 %48, label %39, label %42, !llvm.loop !32

49:                                               ; preds = %39, %49
  %50 = phi ptr [ %52, %49 ], [ %0, %39 ]
  %51 = phi ptr [ %55, %49 ], [ %2, %39 ]
  %52 = tail call ptr @emit_note_before(i32 noundef 2, ptr noundef %50) #17
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 2
  store ptr %51, ptr %53, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.tree_block, ptr %51, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = icmp eq ptr %55, %40
  br i1 %56, label %57, label %49, !llvm.loop !33

57:                                               ; preds = %49, %39
  ret void
}

; Function Attrs: optsize
declare ptr @emit_note(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reorder_blocks() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @relink_block_chain(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %53, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 20, i64 1, ptr nonnull %2)
  %6 = load ptr, ptr @cfun, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %53, label %13

13:                                               ; preds = %4, %44
  %14 = phi ptr [ %51, %44 ], [ %11, %4 ]
  %15 = phi i32 [ %50, %44 ], [ 2, %4 ]
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef %15) #18
  %18 = tail call ptr @get_bb_original(ptr noundef nonnull %14) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %22 = tail call ptr @get_bb_original(ptr noundef nonnull %14) #17
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !34
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.4, i32 noundef %24) #18
  br label %44

26:                                               ; preds = %13
  %27 = tail call zeroext i8 @forwarder_block_p(ptr noundef nonnull %14) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 12
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %38 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 13, i64 1, ptr %37)
  br label %44

39:                                               ; preds = %29, %26
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !34
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.6, i32 noundef %42) #18
  br label %44

44:                                               ; preds = %36, %39, %20
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 11
  %47 = load i32, ptr %46, align 8, !tbaa !37
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.7, i32 noundef %47) #18
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 2
  %50 = add nuw nsw i32 %15, 1
  %51 = load ptr, ptr %49, align 8, !tbaa !10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %13, !llvm.loop !38

53:                                               ; preds = %44, %4, %1
  %54 = load ptr, ptr @cfun, align 8, !tbaa !10
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !12
  %57 = load ptr, ptr %56, align 8, !tbaa !14
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !10
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %53, %61
  %62 = phi ptr [ %67, %61 ], [ %59, %53 ]
  %63 = phi ptr [ %62, %61 ], [ %57, %53 ]
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 5
  store ptr %63, ptr %64, align 8, !tbaa !39
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 6
  store ptr %62, ptr %65, align 8, !tbaa !17
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !10
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %61, !llvm.loop !40

69:                                               ; preds = %61, %53
  %70 = phi ptr [ %57, %53 ], [ %62, %61 ]
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !16
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 6
  store ptr %72, ptr %73, align 8, !tbaa !17
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 5
  store ptr %70, ptr %74, align 8, !tbaa !39
  %75 = load ptr, ptr %56, align 8, !tbaa !10
  %76 = icmp eq ptr %75, null
  br i1 %76, label %94, label %77

77:                                               ; preds = %69
  %78 = icmp eq i8 %0, 0
  br label %79

79:                                               ; preds = %77, %90
  %80 = phi ptr [ %75, %77 ], [ %92, %90 ]
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 2
  store ptr null, ptr %81, align 8, !tbaa !20
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = getelementptr inbounds %struct.rtl_bb_info, ptr %83, i64 0, i32 4
  store i32 0, ptr %84, align 8, !tbaa !41
  br i1 %78, label %85, label %90

85:                                               ; preds = %79
  %86 = load ptr, ptr %82, align 8, !tbaa !5
  %87 = getelementptr inbounds %struct.rtl_bb_info, ptr %86, i64 0, i32 3
  store ptr null, ptr %87, align 8, !tbaa !42
  %88 = load ptr, ptr %82, align 8, !tbaa !5
  %89 = getelementptr inbounds %struct.rtl_bb_info, ptr %88, i64 0, i32 2
  store ptr null, ptr %89, align 8, !tbaa !43
  br label %90

90:                                               ; preds = %79, %85
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !10
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %79, !llvm.loop !44

94:                                               ; preds = %90, %69
  tail call void @free_original_copy_tables() #17
  %95 = icmp eq i8 %0, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %94
  tail call void @initialize_original_copy_tables() #17
  br label %97

97:                                               ; preds = %96, %94
  tail call void @compact_blocks() #17
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @get_bb_original(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @forwarder_block_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_original_copy_tables() local_unnamed_addr #2

; Function Attrs: optsize
declare void @initialize_original_copy_tables() local_unnamed_addr #2

; Function Attrs: optsize
declare void @compact_blocks() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_insn_chain() local_unnamed_addr #0 {
  %1 = tail call ptr @get_insns() #17
  %2 = icmp eq ptr %1, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %0, %11
  %4 = phi i32 [ %12, %11 ], [ 1, %0 ]
  %5 = phi ptr [ %6, %11 ], [ null, %0 ]
  %6 = phi ptr [ %14, %11 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 998, ptr noundef nonnull @.str.9) #17
  br label %11

11:                                               ; preds = %3, %10
  %12 = add nuw nsw i32 %4, 1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %3, !llvm.loop !45

16:                                               ; preds = %11, %0
  %17 = phi ptr [ null, %0 ], [ %6, %11 ]
  %18 = phi i32 [ 1, %0 ], [ %12, %11 ]
  %19 = tail call ptr @get_last_insn() #17
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1000, ptr noundef nonnull @.str.9) #17
  br label %22

22:                                               ; preds = %16, %21
  %23 = tail call ptr @get_last_insn() #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %22, %33
  %26 = phi i32 [ %34, %33 ], [ 1, %22 ]
  %27 = phi ptr [ %28, %33 ], [ null, %22 ]
  %28 = phi ptr [ %36, %33 ], [ %23, %22 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, %27
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1005, ptr noundef nonnull @.str.9) #17
  br label %33

33:                                               ; preds = %25, %32
  %34 = add nuw nsw i32 %26, 1
  %35 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %25, !llvm.loop !46

38:                                               ; preds = %33, %22
  %39 = phi i32 [ 1, %22 ], [ %34, %33 ]
  %40 = icmp eq i32 %18, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1007, ptr noundef nonnull @.str.9) #17
  br label %42

42:                                               ; preds = %38, %41
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @cfg_layout_can_duplicate_bb_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = tail call zeroext i8 @tablejump_p(ptr noundef %5, ptr noundef null, ptr noundef null) #17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 37), align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %2, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %27, %11
  %14 = phi ptr [ %12, %11 ], [ %28, %27 ]
  %15 = phi ptr [ %12, %11 ], [ %32, %27 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = add nsw i32 %18, -7
  %20 = icmp ult i32 %19, 4
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 37), align 8, !tbaa !48
  %23 = tail call zeroext i8 %22(ptr noundef nonnull %16) #17
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load ptr, ptr %2, align 8, !tbaa !5
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi ptr [ %26, %25 ], [ %14, %13 ]
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !47
  %31 = icmp eq ptr %16, %30
  %32 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  br i1 %31, label %33, label %13

33:                                               ; preds = %27, %21, %8, %1
  %34 = phi i8 [ 0, %1 ], [ 1, %8 ], [ 1, %27 ], [ 0, %21 ]
  ret i8 %34
}

; Function Attrs: optsize
declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @duplicate_insn_chain(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @emit_note(i32 noundef 0) #17
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %34, label %7

7:                                                ; preds = %2, %29
  %8 = phi ptr [ %31, %29 ], [ %0, %2 ]
  %9 = load i32, ptr %8, align 8
  %10 = trunc i32 %9 to i16
  switch i16 %10, label %28 [
    i16 7, label %11
    i16 8, label %11
    i16 10, label %11
    i16 9, label %11
    i16 12, label %29
    i16 11, label %20
    i16 13, label %22
  ]

11:                                               ; preds = %7, %7, %7, %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65534
  %16 = icmp eq i32 %15, 20
  br i1 %16, label %29, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @get_last_insn() #17
  %19 = tail call ptr @emit_copy_of_insn_after(ptr noundef nonnull %8, ptr noundef %18) #17
  tail call void @maybe_copy_epilogue_insn(ptr noundef nonnull %8, ptr noundef %19) #17
  br label %29

20:                                               ; preds = %7
  %21 = tail call ptr @emit_barrier() #17
  br label %29

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %24 = load i32, ptr %23, align 8, !tbaa !5
  switch i32 %24, label %27 [
    i32 5, label %29
    i32 0, label %29
    i32 1, label %29
    i32 4, label %29
    i32 10, label %29
    i32 6, label %25
    i32 11, label %25
  ]

25:                                               ; preds = %22, %22
  %26 = tail call ptr @emit_note_copy(ptr noundef nonnull %8) #17
  br label %29

27:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1198, ptr noundef nonnull @.str.9) #17
  br label %29

28:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1202, ptr noundef nonnull @.str.9) #17
  br label %29

29:                                               ; preds = %11, %17, %7, %20, %28, %22, %22, %22, %22, %22, %27, %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = load ptr, ptr %4, align 8, !tbaa !5
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %7, !llvm.loop !60

34:                                               ; preds = %29, %2
  %35 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = tail call ptr @delete_insn(ptr noundef %3) #17
  ret ptr %36
}

; Function Attrs: optsize
declare ptr @emit_copy_of_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @maybe_copy_epilogue_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_barrier() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_note_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cfg_layout_duplicate_bb(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = tail call ptr @duplicate_insn_chain(ptr noundef %4, ptr noundef %6) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @get_last_insn() #17
  br label %11

11:                                               ; preds = %1, %9
  %12 = phi ptr [ %10, %9 ], [ null, %1 ]
  %13 = load ptr, ptr @cfun, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  %20 = tail call ptr @create_basic_block(ptr noundef %7, ptr noundef %12, ptr noundef %19) #17
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !61
  %23 = and i32 %22, -97
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !61
  %26 = and i32 %25, 96
  %27 = or disjoint i32 %26, %23
  store i32 %27, ptr %21, align 8, !tbaa !61
  %28 = load ptr, ptr %2, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %11, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %11 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %32, !llvm.loop !62

37:                                               ; preds = %32
  %38 = tail call ptr @duplicate_insn_chain(ptr noundef nonnull %30, ptr noundef nonnull %33) #18
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = tail call ptr @get_last_insn() #17
  %42 = tail call ptr @unlink_insn_chain(ptr noundef nonnull %38, ptr noundef %41) #18
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.rtl_bb_info, ptr %44, i64 0, i32 2
  store ptr %38, ptr %45, align 8, !tbaa !43
  br label %46

46:                                               ; preds = %37, %40, %11
  %47 = load ptr, ptr %2, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.rtl_bb_info, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !42
  %50 = icmp eq ptr %49, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %46, %51
  %52 = phi ptr [ %54, %51 ], [ %49, %46 ]
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %51, !llvm.loop !63

56:                                               ; preds = %51
  %57 = tail call ptr @duplicate_insn_chain(ptr noundef nonnull %49, ptr noundef nonnull %52) #18
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = tail call ptr @get_last_insn() #17
  %61 = tail call ptr @unlink_insn_chain(ptr noundef nonnull %57, ptr noundef %60) #18
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.rtl_bb_info, ptr %63, i64 0, i32 3
  store ptr %57, ptr %64, align 8, !tbaa !42
  br label %65

65:                                               ; preds = %56, %59, %46
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cfg_layout_initialize(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @initialize_original_copy_tables() #17
  tail call void @cfg_layout_rtl_register_cfg_hooks() #17
  tail call fastcc void @record_effective_endpoints() #18
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %14, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !61
  %12 = or i32 %11, 256
  store i32 %12, ptr %10, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4, !llvm.loop !64

16:                                               ; preds = %4, %1
  %17 = or i32 %0, 32
  %18 = tail call zeroext i8 @cleanup_cfg(i32 noundef %17) #17
  ret void
}

; Function Attrs: optsize
declare void @cfg_layout_rtl_register_cfg_hooks() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_effective_endpoints() unnamed_addr #0 {
  %1 = tail call ptr @get_insns() #17
  %2 = icmp eq ptr %1, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %0, %12
  %4 = phi ptr [ %14, %12 ], [ %1, %0 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 13
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !5
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %3, !llvm.loop !65

16:                                               ; preds = %12, %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 195, ptr noundef nonnull @.str.9) #17
  unreachable

17:                                               ; preds = %8, %3
  %18 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @get_insns() #17
  %23 = load ptr, ptr %18, align 8, !tbaa !5
  %24 = tail call ptr @unlink_insn_chain(ptr noundef %22, ptr noundef %23) #18
  br label %25

25:                                               ; preds = %17, %21
  %26 = phi ptr [ %22, %21 ], [ null, %17 ]
  store ptr %26, ptr @cfg_layout_function_header, align 8, !tbaa !10
  %27 = tail call ptr @get_insns() #17
  %28 = load ptr, ptr @cfun, align 8, !tbaa !10
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !12
  %31 = load ptr, ptr %30, align 8, !tbaa !14
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !16
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %81, label %37

37:                                               ; preds = %25, %71
  %38 = phi ptr [ %74, %71 ], [ %33, %25 ]
  %39 = phi ptr [ %72, %71 ], [ %27, %25 ]
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = icmp eq ptr %44, null
  %46 = icmp eq ptr %39, %42
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %37
  %49 = tail call ptr @unlink_insn_chain(ptr noundef %39, ptr noundef nonnull %44) #18
  %50 = load ptr, ptr %40, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.rtl_bb_info, ptr %50, i64 0, i32 2
  store ptr %39, ptr %51, align 8, !tbaa !43
  br label %52

52:                                               ; preds = %48, %37
  %53 = tail call fastcc ptr @skip_insns_after_block(ptr noundef nonnull %38) #18
  %54 = load ptr, ptr %40, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.rtl_bb_info, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !47
  %57 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = icmp eq ptr %58, null
  %60 = icmp eq ptr %56, %53
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %71, label %62

62:                                               ; preds = %52
  %63 = tail call ptr @unlink_insn_chain(ptr noundef nonnull %58, ptr noundef %53) #18
  %64 = load ptr, ptr %40, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.rtl_bb_info, ptr %64, i64 0, i32 3
  store ptr %58, ptr %65, align 8, !tbaa !42
  %66 = load ptr, ptr %40, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.rtl_bb_info, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !47
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1, i32 0, i32 0, i64 2
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  br label %71

71:                                               ; preds = %62, %52
  %72 = phi ptr [ %70, %62 ], [ %58, %52 ]
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !17
  %75 = load ptr, ptr @cfun, align 8, !tbaa !10
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !12
  %78 = getelementptr inbounds %struct.control_flow_graph, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !16
  %80 = icmp eq ptr %74, %79
  br i1 %80, label %81, label %37, !llvm.loop !66

81:                                               ; preds = %71, %25
  %82 = phi ptr [ %27, %25 ], [ %72, %71 ]
  store ptr %82, ptr @cfg_layout_function_footer, align 8, !tbaa !10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = tail call ptr @get_last_insn() #17
  %86 = tail call ptr @unlink_insn_chain(ptr noundef nonnull %82, ptr noundef %85) #18
  store ptr %82, ptr @cfg_layout_function_footer, align 8, !tbaa !10
  br label %87

87:                                               ; preds = %84, %81
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @break_superblocks() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %5) #17
  tail call void @sbitmap_zero(ptr noundef %6) #17
  %7 = load ptr, ptr @cfun, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %50, label %16

16:                                               ; preds = %0, %34
  %17 = phi ptr [ %39, %34 ], [ %7, %0 ]
  %18 = phi ptr [ %41, %34 ], [ %12, %0 ]
  %19 = phi i1 [ false, %34 ], [ true, %0 ]
  %20 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  br label %21

21:                                               ; preds = %16, %27
  %22 = phi ptr [ %29, %27 ], [ %18, %16 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 13
  %24 = load i32, ptr %23, align 8, !tbaa !61
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !17
  %30 = load ptr, ptr %20, align 8, !tbaa !12
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  %33 = icmp eq ptr %29, %32
  br i1 %33, label %47, label %21, !llvm.loop !68

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 13
  %36 = and i32 %24, -9
  store i32 %36, ptr %35, align 8, !tbaa !61
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !34
  tail call fastcc void @SET_BIT(ptr noundef %6, i32 noundef %38) #18
  %39 = load ptr, ptr @cfun, align 8, !tbaa !10
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !17
  %42 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !12
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !16
  %46 = icmp eq ptr %41, %45
  br i1 %46, label %48, label %16, !llvm.loop !68

47:                                               ; preds = %27
  br i1 %19, label %50, label %48

48:                                               ; preds = %34, %47
  %49 = tail call ptr @get_insns() #17
  tail call void @rebuild_jump_labels(ptr noundef %49) #17
  tail call void @find_many_sub_basic_blocks(ptr noundef %6) #17
  br label %50

50:                                               ; preds = %0, %48, %47
  tail call void @free(ptr noundef %6) #18
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !71
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !5
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !71
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !71
  ret void
}

; Function Attrs: optsize
declare void @rebuild_jump_labels(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @find_many_sub_basic_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cfg_layout_finalize() local_unnamed_addr #0 {
  tail call fastcc void @force_one_exit_fallthru() #18
  tail call void @rtl_register_cfg_hooks() #17
  tail call fastcc void @fixup_reorder_chain() #18
  %1 = tail call ptr @get_insns() #17
  tail call void @rebuild_jump_labels(ptr noundef %1) #17
  tail call void @delete_dead_jumptables() #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @force_one_exit_fallthru() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %3 = load ptr, ptr @cfun, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef %7) #18
  store i32 0, ptr %2, align 8, !tbaa.struct !72
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !73
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %1) #18, !range !74
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %78, label %12

12:                                               ; preds = %0, %21
  %13 = phi ptr [ %22, %21 ], [ null, %0 ]
  %14 = load ptr, ptr %1, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !75
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = icmp eq ptr %13, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %19, %12
  %22 = phi ptr [ %13, %12 ], [ %14, %19 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #18
  %23 = load i32, ptr %2, align 8
  %24 = load ptr, ptr %9, align 8
  %25 = call fastcc zeroext i8 @ei_cond(i32 %23, ptr %24, ptr noundef nonnull %1) #18, !range !74
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %78, label %12, !llvm.loop !77

27:                                               ; preds = %19
  %28 = tail call ptr @split_edge(ptr noundef nonnull %13) #17
  %29 = load ptr, ptr @cfun, align 8, !tbaa !10
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !12
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = tail call fastcc ptr @ei_start_1(ptr noundef %33) #18
  store i32 0, ptr %2, align 8, !tbaa.struct !72
  store ptr %34, ptr %9, align 8, !tbaa.struct !73
  %35 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %34) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %58, label %37

37:                                               ; preds = %27, %53
  %38 = phi ptr [ %54, %53 ], [ %34, %27 ]
  %39 = phi i32 [ %55, %53 ], [ 0, %27 ]
  %40 = phi ptr [ %56, %53 ], [ %35, %27 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !78
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !75
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %37
  call fastcc void @ei_next(ptr noundef nonnull %2) #18
  %49 = load i32, ptr %2, align 8
  %50 = load ptr, ptr %9, align 8
  br label %53

51:                                               ; preds = %43
  %52 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %40, ptr noundef %28) #17
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi ptr [ %38, %51 ], [ %50, %48 ]
  %55 = phi i32 [ %39, %51 ], [ %49, %48 ]
  %56 = tail call fastcc ptr @ei_safe_edge(i32 %55, ptr %54) #18
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %37, !llvm.loop !79

58:                                               ; preds = %53, %27
  %59 = load ptr, ptr @cfun, align 8, !tbaa !10
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !12
  %62 = load ptr, ptr %61, align 8, !tbaa !14
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !16
  br label %65

65:                                               ; preds = %70, %58
  %66 = phi ptr [ %62, %58 ], [ %68, %70 ]
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !17
  %69 = icmp eq ptr %68, %64
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !20
  %73 = icmp ne ptr %72, null
  %74 = icmp eq ptr %68, %28
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %65, label %76, !llvm.loop !80

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 2
  store ptr %28, ptr %77, align 8, !tbaa !20
  br label %78

78:                                               ; preds = %21, %65, %0, %76
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret void
}

; Function Attrs: optsize
declare void @rtl_register_cfg_hooks() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fixup_reorder_chain() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = load ptr, ptr @cfg_layout_function_header, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %0
  tail call void @set_first_insn(ptr noundef nonnull %7) #17
  %10 = load ptr, ptr @cfg_layout_function_header, align 8, !tbaa !10
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi ptr [ %10, %9 ], [ %14, %11 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !81

16:                                               ; preds = %11, %0
  %17 = phi ptr [ null, %0 ], [ %12, %11 ]
  %18 = load ptr, ptr @cfun, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !12
  %21 = load ptr, ptr %20, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %86, label %25

25:                                               ; preds = %16, %81
  %26 = phi ptr [ %84, %81 ], [ %23, %16 ]
  %27 = phi ptr [ %82, %81 ], [ %17, %16 ]
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.rtl_bb_info, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = icmp eq ptr %31, null
  %33 = icmp eq ptr %27, null
  br i1 %32, label %51, label %34

34:                                               ; preds = %25
  br i1 %33, label %37, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %31, ptr %36, align 8, !tbaa !5
  br label %38

37:                                               ; preds = %34
  tail call void @set_first_insn(ptr noundef nonnull %31) #17
  br label %38

38:                                               ; preds = %37, %35
  %39 = load ptr, ptr %28, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %27, ptr %42, align 8, !tbaa !5
  %43 = load ptr, ptr %28, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.rtl_bb_info, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  br label %46

46:                                               ; preds = %46, %38
  %47 = phi ptr [ %45, %38 ], [ %49, %46 ]
  %48 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %46, !llvm.loop !82

51:                                               ; preds = %25
  br i1 %33, label %57, label %52

52:                                               ; preds = %46, %51
  %53 = phi ptr [ %29, %51 ], [ %43, %46 ]
  %54 = phi ptr [ %27, %51 ], [ %47, %46 ]
  %55 = load ptr, ptr %53, align 8, !tbaa !35
  %56 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %55, ptr %56, align 8, !tbaa !5
  br label %59

57:                                               ; preds = %51
  %58 = load ptr, ptr %29, align 8, !tbaa !35
  tail call void @set_first_insn(ptr noundef %58) #17
  br label %59

59:                                               ; preds = %57, %52
  %60 = phi ptr [ null, %57 ], [ %54, %52 ]
  %61 = load ptr, ptr %28, align 8, !tbaa !5
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  %63 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %60, ptr %63, align 8, !tbaa !5
  %64 = load ptr, ptr %28, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.rtl_bb_info, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !47
  %67 = getelementptr inbounds %struct.rtl_bb_info, ptr %64, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !42
  %69 = icmp eq ptr %68, null
  br i1 %69, label %81, label %70

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %68, ptr %71, align 8, !tbaa !5
  %72 = load ptr, ptr %28, align 8, !tbaa !5
  %73 = getelementptr inbounds %struct.rtl_bb_info, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !42
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %66, ptr %75, align 8, !tbaa !5
  br label %76

76:                                               ; preds = %76, %70
  %77 = phi ptr [ %66, %70 ], [ %79, %76 ]
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 0, i64 2
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %76, !llvm.loop !83

81:                                               ; preds = %76, %59
  %82 = phi ptr [ %66, %59 ], [ %77, %76 ]
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !10
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %25, !llvm.loop !84

86:                                               ; preds = %81, %16
  %87 = phi ptr [ %17, %16 ], [ %82, %81 ]
  %88 = load ptr, ptr @cfg_layout_function_footer, align 8, !tbaa !10
  %89 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %88, ptr %89, align 8, !tbaa !5
  %90 = icmp eq ptr %88, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %87, ptr %92, align 8, !tbaa !5
  br label %93

93:                                               ; preds = %91, %86
  br label %94

94:                                               ; preds = %93, %94
  %95 = phi ptr [ %97, %94 ], [ %87, %93 ]
  %96 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 2
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %94, !llvm.loop !85

99:                                               ; preds = %94
  tail call void @set_last_insn(ptr noundef nonnull %95) #17
  %100 = load ptr, ptr @cfun, align 8, !tbaa !10
  %101 = getelementptr inbounds %struct.function, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !12
  %103 = load ptr, ptr %102, align 8, !tbaa !14
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %103, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !10
  %106 = icmp eq ptr %105, null
  br i1 %106, label %331, label %107

107:                                              ; preds = %99
  %108 = getelementptr inbounds i8, ptr %2, i64 8
  br label %109

109:                                              ; preds = %107, %326
  %110 = phi ptr [ %105, %107 ], [ %329, %326 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !86
  %113 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %112) #18
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %326, label %115

115:                                              ; preds = %109
  %116 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %111) #18
  store i32 0, ptr %2, align 8, !tbaa.struct !72
  store ptr %116, ptr %108, align 8, !tbaa.struct !73
  %117 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %116, ptr noundef nonnull %1) #18, !range !74
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %143, label %119

119:                                              ; preds = %115, %119
  %120 = phi ptr [ %130, %119 ], [ null, %115 ]
  %121 = phi ptr [ %129, %119 ], [ null, %115 ]
  %122 = load ptr, ptr %1, align 8, !tbaa !10
  %123 = getelementptr inbounds %struct.edge_def, ptr %122, i64 0, i32 7
  %124 = load i32, ptr %123, align 8, !tbaa !75
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  %127 = and i32 %124, 9
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, ptr %122, ptr %121
  %130 = select i1 %126, ptr %120, ptr %122
  call fastcc void @ei_next(ptr noundef nonnull %2) #18
  %131 = load i32, ptr %2, align 8
  %132 = load ptr, ptr %108, align 8
  %133 = call fastcc zeroext i8 @ei_cond(i32 %131, ptr %132, ptr noundef nonnull %1) #18, !range !74
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %119, !llvm.loop !87

135:                                              ; preds = %119
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 7
  %137 = load ptr, ptr %136, align 8, !tbaa !5
  %138 = getelementptr inbounds %struct.rtl_bb_info, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !47
  %140 = load i32, ptr %139, align 8
  %141 = and i32 %140, 65535
  %142 = icmp eq i32 %141, 9
  br i1 %142, label %151, label %264

143:                                              ; preds = %115
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 7
  %145 = load ptr, ptr %144, align 8, !tbaa !5
  %146 = getelementptr inbounds %struct.rtl_bb_info, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !47
  %148 = load i32, ptr %147, align 8
  %149 = and i32 %148, 65535
  %150 = icmp eq i32 %149, 9
  br i1 %150, label %154, label %326

151:                                              ; preds = %135
  %152 = tail call i32 @any_condjump_p(ptr noundef nonnull %139) #17
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %238, label %157

154:                                              ; preds = %143
  %155 = tail call i32 @any_condjump_p(ptr noundef nonnull %147) #17
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %238, label %159

157:                                              ; preds = %151
  %158 = icmp eq ptr %130, null
  br i1 %158, label %159, label %169

159:                                              ; preds = %154, %157
  %160 = phi ptr [ %139, %157 ], [ %147, %154 ]
  %161 = phi ptr [ %136, %157 ], [ %144, %154 ]
  %162 = tail call i32 @onlyjump_p(ptr noundef nonnull %160) #17
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 796, ptr noundef nonnull @.str.9) #17
  br label %165

165:                                              ; preds = %159, %164
  %166 = tail call ptr @emit_barrier_after(ptr noundef nonnull %160) #17
  %167 = load ptr, ptr %161, align 8, !tbaa !5
  %168 = getelementptr inbounds %struct.rtl_bb_info, ptr %167, i64 0, i32 3
  store ptr %166, ptr %168, align 8, !tbaa !42
  br label %326

169:                                              ; preds = %157
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !20
  %172 = getelementptr inbounds %struct.edge_def, ptr %130, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !88
  %174 = icmp eq ptr %171, %173
  br i1 %174, label %326, label %175

175:                                              ; preds = %169
  %176 = load ptr, ptr @cfun, align 8, !tbaa !10
  %177 = getelementptr inbounds %struct.function, ptr %176, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !12
  %179 = getelementptr inbounds %struct.control_flow_graph, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !16
  %181 = icmp eq ptr %173, %180
  br i1 %181, label %326, label %182

182:                                              ; preds = %175
  %183 = icmp eq ptr %129, null
  br i1 %183, label %279, label %184

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.edge_def, ptr %129, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !88
  %187 = icmp eq ptr %171, %186
  br i1 %187, label %218, label %188

188:                                              ; preds = %184
  %189 = tail call ptr @find_reg_note(ptr noundef nonnull %139, i32 noundef 13, ptr noundef null) #17
  %190 = icmp eq ptr %189, null
  br i1 %190, label %279, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.rtx_def, ptr %189, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !5
  %194 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1
  %195 = load i64, ptr %194, align 8, !tbaa !5
  %196 = icmp slt i64 %195, 5000
  br i1 %196, label %197, label %279

197:                                              ; preds = %191
  %198 = load ptr, ptr %172, align 8, !tbaa !88
  %199 = load ptr, ptr @cfun, align 8, !tbaa !10
  %200 = getelementptr inbounds %struct.function, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !12
  %202 = getelementptr inbounds %struct.control_flow_graph, ptr %201, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !16
  %204 = icmp eq ptr %198, %203
  br i1 %204, label %207, label %205

205:                                              ; preds = %197
  %206 = tail call fastcc ptr @label_for_bb(ptr noundef %198) #18
  br label %207

207:                                              ; preds = %197, %205
  %208 = phi ptr [ %206, %205 ], [ null, %197 ]
  %209 = tail call i32 @invert_jump(ptr noundef nonnull %139, ptr noundef %208, i32 noundef 0) #17
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %279, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.edge_def, ptr %130, i64 0, i32 7
  %213 = load i32, ptr %212, align 8, !tbaa !75
  %214 = and i32 %213, -2
  store i32 %214, ptr %212, align 8, !tbaa !75
  %215 = getelementptr inbounds %struct.edge_def, ptr %129, i64 0, i32 7
  %216 = load i32, ptr %215, align 8, !tbaa !75
  %217 = or i32 %216, 1
  store i32 %217, ptr %215, align 8, !tbaa !75
  tail call void @update_br_prob_note(ptr noundef nonnull %110) #17
  store ptr %130, ptr %1, align 8, !tbaa !10
  br label %279

218:                                              ; preds = %184
  %219 = getelementptr inbounds %struct.edge_def, ptr %129, i64 0, i32 7
  %220 = load i32, ptr %219, align 8, !tbaa !75
  %221 = and i32 %220, 8192
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.edge_def, ptr %130, i64 0, i32 7
  %225 = load i32, ptr %224, align 8, !tbaa !75
  %226 = and i32 %225, 8192
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %326, label %228

228:                                              ; preds = %223, %218
  %229 = tail call fastcc ptr @label_for_bb(ptr noundef %173) #18
  %230 = tail call i32 @invert_jump(ptr noundef nonnull %139, ptr noundef %229, i32 noundef 0) #17
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %279, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.edge_def, ptr %130, i64 0, i32 7
  %234 = load i32, ptr %233, align 8, !tbaa !75
  %235 = and i32 %234, -2
  store i32 %235, ptr %233, align 8, !tbaa !75
  %236 = load i32, ptr %219, align 8, !tbaa !75
  %237 = or i32 %236, 1
  store i32 %237, ptr %219, align 8, !tbaa !75
  tail call void @update_br_prob_note(ptr noundef nonnull %110) #17
  br label %326

238:                                              ; preds = %154, %151
  %239 = phi ptr [ null, %154 ], [ %130, %151 ]
  %240 = phi ptr [ %147, %154 ], [ %139, %151 ]
  %241 = getelementptr inbounds %struct.rtx_def, ptr %240, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !5
  %243 = tail call ptr @extract_asm_operands(ptr noundef %242) #17
  %244 = icmp eq ptr %243, null
  br i1 %244, label %258, label %245

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !20
  %248 = getelementptr inbounds %struct.edge_def, ptr %239, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !88
  %250 = icmp eq ptr %247, %249
  br i1 %250, label %326, label %251

251:                                              ; preds = %245
  %252 = load ptr, ptr @cfun, align 8, !tbaa !10
  %253 = getelementptr inbounds %struct.function, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !12
  %255 = getelementptr inbounds %struct.control_flow_graph, ptr %254, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !16
  %257 = icmp eq ptr %249, %256
  br i1 %257, label %326, label %279

258:                                              ; preds = %238
  %259 = tail call i32 @returnjump_p(ptr noundef nonnull %240) #17
  %260 = icmp eq i32 %259, 0
  %261 = icmp ne ptr %239, null
  %262 = select i1 %260, i1 %261, i1 false
  br i1 %262, label %263, label %326

263:                                              ; preds = %258
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 876, ptr noundef nonnull @.str.9) #17
  br label %326

264:                                              ; preds = %135
  %265 = icmp eq ptr %130, null
  br i1 %265, label %326, label %266

266:                                              ; preds = %264
  %267 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !20
  %269 = getelementptr inbounds %struct.edge_def, ptr %130, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !88
  %271 = icmp eq ptr %268, %270
  br i1 %271, label %326, label %272

272:                                              ; preds = %266
  %273 = load ptr, ptr @cfun, align 8, !tbaa !10
  %274 = getelementptr inbounds %struct.function, ptr %273, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !12
  %276 = getelementptr inbounds %struct.control_flow_graph, ptr %275, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !16
  %278 = icmp eq ptr %270, %277
  br i1 %278, label %326, label %279

279:                                              ; preds = %188, %191, %207, %211, %272, %228, %182, %251
  %280 = phi ptr [ %130, %228 ], [ %130, %182 ], [ %239, %251 ], [ %130, %272 ], [ %129, %211 ], [ %130, %207 ], [ %130, %191 ], [ %130, %188 ]
  %281 = tail call ptr @force_nonfallthru(ptr noundef nonnull %280) #17
  %282 = icmp eq ptr %281, null
  br i1 %282, label %326, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.basic_block_def, ptr %281, i64 0, i32 7
  %285 = load ptr, ptr %284, align 8, !tbaa !5
  %286 = getelementptr inbounds %struct.rtl_bb_info, ptr %285, i64 0, i32 4
  store i32 1, ptr %286, align 8, !tbaa !41
  %287 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !20
  %289 = getelementptr inbounds %struct.basic_block_def, ptr %281, i64 0, i32 2
  store ptr %288, ptr %289, align 8, !tbaa !20
  store ptr %281, ptr %287, align 8, !tbaa !20
  %290 = load ptr, ptr %280, align 8, !tbaa !78
  %291 = getelementptr inbounds %struct.basic_block_def, ptr %290, i64 0, i32 13
  %292 = load i32, ptr %291, align 8, !tbaa !61
  %293 = and i32 %292, -97
  %294 = tail call fastcc ptr @single_pred(ptr noundef nonnull %281) #18
  %295 = getelementptr inbounds %struct.basic_block_def, ptr %294, i64 0, i32 13
  %296 = load i32, ptr %295, align 8, !tbaa !61
  %297 = and i32 %296, 96
  %298 = or disjoint i32 %297, %293
  store i32 %298, ptr %291, align 8, !tbaa !61
  %299 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !8
  %300 = icmp ne i32 %299, 0
  %301 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %302 = icmp ne i8 %301, 0
  %303 = select i1 %300, i1 %302, i1 false
  br i1 %303, label %304, label %326

304:                                              ; preds = %283
  %305 = load ptr, ptr %284, align 8, !tbaa !5
  %306 = getelementptr inbounds %struct.rtl_bb_info, ptr %305, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !47
  %308 = load i32, ptr %307, align 8
  %309 = and i32 %308, 65535
  %310 = icmp eq i32 %309, 9
  br i1 %310, label %311, label %326

311:                                              ; preds = %304
  %312 = tail call i32 @any_condjump_p(ptr noundef nonnull %307) #17
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %326

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.basic_block_def, ptr %281, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !86
  %317 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %316, i32 noundef 0) #18
  %318 = getelementptr inbounds %struct.edge_def, ptr %317, i64 0, i32 7
  %319 = load i32, ptr %318, align 8, !tbaa !75
  %320 = and i32 %319, 8192
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %314
  %323 = load ptr, ptr %284, align 8, !tbaa !5
  %324 = getelementptr inbounds %struct.rtl_bb_info, ptr %323, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !47
  tail call void @add_reg_note(ptr noundef %325, i32 noundef 29, ptr noundef null) #17
  br label %326

326:                                              ; preds = %143, %279, %322, %314, %311, %304, %283, %272, %266, %264, %263, %258, %245, %251, %223, %169, %175, %109, %232, %165
  %327 = phi ptr [ %110, %232 ], [ %110, %165 ], [ %110, %109 ], [ %110, %175 ], [ %110, %169 ], [ %110, %223 ], [ %110, %251 ], [ %110, %245 ], [ %110, %258 ], [ %110, %263 ], [ %110, %264 ], [ %110, %266 ], [ %110, %272 ], [ %281, %311 ], [ %281, %322 ], [ %281, %314 ], [ %281, %304 ], [ %281, %283 ], [ %110, %279 ], [ %110, %143 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  %328 = getelementptr inbounds %struct.basic_block_def, ptr %327, i64 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !10
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %109, !llvm.loop !89

331:                                              ; preds = %326, %99
  tail call void @relink_block_chain(i8 noundef zeroext 0) #18
  %332 = load ptr, ptr @cfun, align 8, !tbaa !10
  %333 = getelementptr inbounds %struct.function, ptr %332, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !12
  %335 = load ptr, ptr %334, align 8, !tbaa !14
  %336 = getelementptr inbounds %struct.basic_block_def, ptr %335, i64 0, i32 6
  %337 = load ptr, ptr %336, align 8, !tbaa !17
  %338 = getelementptr inbounds %struct.control_flow_graph, ptr %334, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !16
  %340 = icmp eq ptr %337, %339
  br i1 %340, label %381, label %341

341:                                              ; preds = %331
  %342 = getelementptr inbounds i8, ptr %4, i64 8
  br label %343

343:                                              ; preds = %341, %372
  %344 = phi ptr [ %337, %341 ], [ %374, %372 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %345 = getelementptr inbounds %struct.basic_block_def, ptr %344, i64 0, i32 1
  %346 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %345) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !72
  store ptr %346, ptr %342, align 8, !tbaa.struct !73
  %347 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %346, ptr noundef nonnull %3) #18, !range !74
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %360, label %349

349:                                              ; preds = %343, %355
  %350 = load ptr, ptr %3, align 8, !tbaa !10
  %351 = getelementptr inbounds %struct.edge_def, ptr %350, i64 0, i32 7
  %352 = load i32, ptr %351, align 8, !tbaa !75
  %353 = and i32 %352, 1
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %363

355:                                              ; preds = %349
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %356 = load i32, ptr %4, align 8
  %357 = load ptr, ptr %342, align 8
  %358 = call fastcc zeroext i8 @ei_cond(i32 %356, ptr %357, ptr noundef nonnull %3) #18, !range !74
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %360, label %349, !llvm.loop !90

360:                                              ; preds = %355, %343
  %361 = load ptr, ptr %3, align 8, !tbaa !10
  %362 = icmp eq ptr %361, null
  br i1 %362, label %372, label %363

363:                                              ; preds = %349, %360
  %364 = phi ptr [ %361, %360 ], [ %350, %349 ]
  %365 = load ptr, ptr %364, align 8, !tbaa !78
  %366 = getelementptr inbounds %struct.edge_def, ptr %364, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !88
  %368 = tail call zeroext i8 @can_fallthru(ptr noundef %365, ptr noundef %367) #17
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %363
  %371 = tail call ptr @force_nonfallthru(ptr noundef nonnull %364) #17
  br label %372

372:                                              ; preds = %370, %363, %360
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  %373 = getelementptr inbounds %struct.basic_block_def, ptr %344, i64 0, i32 6
  %374 = load ptr, ptr %373, align 8, !tbaa !17
  %375 = load ptr, ptr @cfun, align 8, !tbaa !10
  %376 = getelementptr inbounds %struct.function, ptr %375, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !12
  %378 = getelementptr inbounds %struct.control_flow_graph, ptr %377, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !16
  %380 = icmp eq ptr %374, %379
  br i1 %380, label %381, label %343, !llvm.loop !91

381:                                              ; preds = %372, %331
  %382 = phi ptr [ %337, %331 ], [ %374, %372 ]
  %383 = phi ptr [ %334, %331 ], [ %377, %372 ]
  %384 = load i32, ptr @optimize, align 4, !tbaa !8
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %525

386:                                              ; preds = %381
  %387 = load ptr, ptr %383, align 8, !tbaa !14
  %388 = getelementptr inbounds %struct.basic_block_def, ptr %387, i64 0, i32 6
  %389 = load ptr, ptr %388, align 8, !tbaa !17
  %390 = icmp eq ptr %389, %382
  br i1 %390, label %525, label %391

391:                                              ; preds = %386
  %392 = getelementptr inbounds i8, ptr %6, i64 8
  br label %393

393:                                              ; preds = %391, %516
  %394 = phi ptr [ %389, %391 ], [ %518, %516 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %395 = getelementptr inbounds %struct.basic_block_def, ptr %394, i64 0, i32 1
  %396 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %395) #18
  store i32 0, ptr %6, align 8, !tbaa.struct !72
  store ptr %396, ptr %392, align 8, !tbaa.struct !73
  %397 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %396, ptr noundef nonnull %5) #18, !range !74
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %516, label %399

399:                                              ; preds = %393, %511
  %400 = load ptr, ptr %5, align 8, !tbaa !10
  %401 = getelementptr inbounds %struct.edge_def, ptr %400, i64 0, i32 5
  %402 = load i32, ptr %401, align 8, !tbaa !92
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %511, label %404

404:                                              ; preds = %399
  %405 = getelementptr inbounds %struct.edge_def, ptr %400, i64 0, i32 7
  %406 = load i32, ptr %405, align 8, !tbaa !75
  %407 = and i32 %406, 2
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %511

409:                                              ; preds = %404
  %410 = load ptr, ptr %400, align 8, !tbaa !78
  %411 = getelementptr inbounds %struct.basic_block_def, ptr %410, i64 0, i32 7
  %412 = load ptr, ptr %411, align 8, !tbaa !5
  %413 = getelementptr inbounds %struct.rtl_bb_info, ptr %412, i64 0, i32 1
  %414 = load ptr, ptr %412, align 8, !tbaa !35
  %415 = getelementptr inbounds %struct.rtx_def, ptr %414, i64 0, i32 1, i32 0, i32 0, i64 1
  %416 = load ptr, ptr %415, align 8, !tbaa !5
  %417 = load ptr, ptr %413, align 8, !tbaa !5
  %418 = icmp eq ptr %417, %416
  br i1 %418, label %436, label %419

419:                                              ; preds = %409, %429
  %420 = phi ptr [ %431, %429 ], [ %417, %409 ]
  %421 = load i32, ptr %420, align 8
  %422 = and i32 %421, 65535
  %423 = add nsw i32 %422, -7
  %424 = icmp ult i32 %423, 4
  br i1 %424, label %425, label %429

425:                                              ; preds = %419
  %426 = getelementptr inbounds %struct.rtx_def, ptr %420, i64 0, i32 1, i32 0, i32 2
  %427 = load i32, ptr %426, align 8, !tbaa !5
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %419, %425
  %430 = getelementptr inbounds %struct.rtx_def, ptr %420, i64 0, i32 1, i32 0, i32 0, i64 1
  %431 = load ptr, ptr %430, align 8, !tbaa !5
  %432 = icmp eq ptr %431, %416
  br i1 %432, label %436, label %419, !llvm.loop !93

433:                                              ; preds = %425
  %434 = tail call zeroext i8 @locator_eq(i32 noundef %427, i32 noundef %402) #18, !range !74
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %436, label %511

436:                                              ; preds = %429, %409, %433
  %437 = tail call i32 @simplejump_p(ptr noundef %417) #17
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %450, label %439

439:                                              ; preds = %436
  %440 = load ptr, ptr %400, align 8, !tbaa !78
  %441 = getelementptr inbounds %struct.basic_block_def, ptr %440, i64 0, i32 7
  %442 = load ptr, ptr %441, align 8, !tbaa !5
  %443 = getelementptr inbounds %struct.rtl_bb_info, ptr %442, i64 0, i32 1
  %444 = load ptr, ptr %443, align 8, !tbaa !47
  %445 = getelementptr inbounds %struct.rtx_def, ptr %444, i64 0, i32 1, i32 0, i32 2
  %446 = load i32, ptr %445, align 8, !tbaa !5
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %450

448:                                              ; preds = %439
  %449 = load i32, ptr %401, align 8, !tbaa !92
  store i32 %449, ptr %445, align 8, !tbaa !5
  br label %511

450:                                              ; preds = %439, %436
  %451 = getelementptr inbounds %struct.edge_def, ptr %400, i64 0, i32 1
  %452 = load ptr, ptr %451, align 8, !tbaa !88
  %453 = load ptr, ptr @cfun, align 8, !tbaa !10
  %454 = getelementptr inbounds %struct.function, ptr %453, i64 0, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !12
  %456 = getelementptr inbounds %struct.control_flow_graph, ptr %455, i64 0, i32 1
  %457 = load ptr, ptr %456, align 8, !tbaa !16
  %458 = icmp eq ptr %452, %457
  br i1 %458, label %486, label %459

459:                                              ; preds = %450
  %460 = getelementptr inbounds %struct.basic_block_def, ptr %452, i64 0, i32 7
  %461 = load ptr, ptr %460, align 8, !tbaa !5
  %462 = getelementptr inbounds %struct.rtl_bb_info, ptr %461, i64 0, i32 1
  %463 = load ptr, ptr %462, align 8, !tbaa !47
  %464 = getelementptr inbounds %struct.rtx_def, ptr %463, i64 0, i32 1, i32 0, i32 0, i64 2
  %465 = load ptr, ptr %464, align 8, !tbaa !5
  %466 = load ptr, ptr %461, align 8, !tbaa !5
  %467 = icmp eq ptr %466, %465
  br i1 %467, label %486, label %468

468:                                              ; preds = %459, %474
  %469 = phi ptr [ %476, %474 ], [ %466, %459 ]
  %470 = load i32, ptr %469, align 8
  %471 = and i32 %470, 65535
  %472 = add nsw i32 %471, -7
  %473 = icmp ult i32 %472, 4
  br i1 %473, label %478, label %474

474:                                              ; preds = %468
  %475 = getelementptr inbounds %struct.rtx_def, ptr %469, i64 0, i32 1, i32 0, i32 0, i64 2
  %476 = load ptr, ptr %475, align 8, !tbaa !5
  %477 = icmp eq ptr %476, %465
  br i1 %477, label %486, label %468, !llvm.loop !94

478:                                              ; preds = %468
  %479 = getelementptr inbounds %struct.rtx_def, ptr %469, i64 0, i32 1, i32 0, i32 2
  %480 = load i32, ptr %479, align 8, !tbaa !5
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %486, label %482

482:                                              ; preds = %478
  %483 = load i32, ptr %401, align 8, !tbaa !92
  %484 = tail call zeroext i8 @locator_eq(i32 noundef %480, i32 noundef %483) #18, !range !74
  %485 = icmp eq i8 %484, 0
  br i1 %485, label %486, label %511

486:                                              ; preds = %474, %459, %478, %482, %450
  %487 = tail call ptr @split_edge(ptr noundef nonnull %400) #17
  %488 = getelementptr inbounds %struct.basic_block_def, ptr %487, i64 0, i32 7
  %489 = load ptr, ptr %488, align 8, !tbaa !5
  %490 = getelementptr inbounds %struct.rtl_bb_info, ptr %489, i64 0, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !47
  %492 = load i32, ptr %491, align 8
  %493 = and i32 %492, 65535
  %494 = add nsw i32 %493, -7
  %495 = icmp ult i32 %494, 4
  br i1 %495, label %507, label %496

496:                                              ; preds = %486
  %497 = tail call ptr @gen_nop() #17
  %498 = load ptr, ptr %488, align 8, !tbaa !5
  %499 = getelementptr inbounds %struct.rtl_bb_info, ptr %498, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !47
  %501 = tail call ptr @emit_insn_after_noloc(ptr noundef %497, ptr noundef %500, ptr noundef nonnull %487) #17
  %502 = load ptr, ptr %488, align 8, !tbaa !5
  %503 = getelementptr inbounds %struct.rtl_bb_info, ptr %502, i64 0, i32 1
  store ptr %501, ptr %503, align 8, !tbaa !47
  %504 = load ptr, ptr %488, align 8, !tbaa !5
  %505 = getelementptr inbounds %struct.rtl_bb_info, ptr %504, i64 0, i32 1
  %506 = load ptr, ptr %505, align 8, !tbaa !47
  br label %507

507:                                              ; preds = %486, %496
  %508 = phi ptr [ %491, %486 ], [ %506, %496 ]
  %509 = load i32, ptr %401, align 8, !tbaa !92
  %510 = getelementptr inbounds %struct.rtx_def, ptr %508, i64 0, i32 1, i32 0, i32 2
  store i32 %509, ptr %510, align 8, !tbaa !5
  br label %511

511:                                              ; preds = %448, %507, %433, %482, %399, %404
  call fastcc void @ei_next(ptr noundef nonnull %6) #18
  %512 = load i32, ptr %6, align 8
  %513 = load ptr, ptr %392, align 8
  %514 = call fastcc zeroext i8 @ei_cond(i32 %512, ptr %513, ptr noundef nonnull %5) #18, !range !74
  %515 = icmp eq i8 %514, 0
  br i1 %515, label %516, label %399, !llvm.loop !95

516:                                              ; preds = %511, %393
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %517 = getelementptr inbounds %struct.basic_block_def, ptr %394, i64 0, i32 6
  %518 = load ptr, ptr %517, align 8, !tbaa !17
  %519 = load ptr, ptr @cfun, align 8, !tbaa !10
  %520 = getelementptr inbounds %struct.function, ptr %519, i64 0, i32 1
  %521 = load ptr, ptr %520, align 8, !tbaa !12
  %522 = getelementptr inbounds %struct.control_flow_graph, ptr %521, i64 0, i32 1
  %523 = load ptr, ptr %522, align 8, !tbaa !16
  %524 = icmp eq ptr %518, %523
  br i1 %524, label %525, label %393, !llvm.loop !96

525:                                              ; preds = %516, %386, %381
  ret void
}

; Function Attrs: optsize
declare void @delete_dead_jumptables() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @can_copy_bbs_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %68, label %6

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  br label %12

8:                                                ; preds = %12
  br i1 %5, label %68, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds i8, ptr %4, i64 8
  %11 = zext i32 %1 to i64
  br label %21

12:                                               ; preds = %6, %12
  %13 = phi i64 [ 0, %6 ], [ %19, %12 ]
  %14 = getelementptr inbounds ptr, ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !61
  %18 = or i32 %17, 128
  store i32 %18, ptr %16, align 8, !tbaa !61
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, %7
  br i1 %20, label %8, label %12, !llvm.loop !97

21:                                               ; preds = %9, %52
  %22 = phi i64 [ 0, %9 ], [ %53, %52 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %23 = getelementptr inbounds ptr, ptr %0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !10
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 1
  %26 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %25) #18
  store i32 0, ptr %4, align 8, !tbaa.struct !72
  store ptr %26, ptr %10, align 8, !tbaa.struct !73
  %27 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %26, ptr noundef nonnull %3) #18, !range !74
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %21, %42
  %30 = load ptr, ptr %3, align 8, !tbaa !10
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !75
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !88
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 13
  %39 = load i32, ptr %38, align 8, !tbaa !61
  %40 = and i32 %39, 128
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %29, %35
  call fastcc void @ei_next(ptr noundef nonnull %4) #18
  %43 = load i32, ptr %4, align 8
  %44 = load ptr, ptr %10, align 8
  %45 = call fastcc zeroext i8 @ei_cond(i32 %43, ptr %44, ptr noundef nonnull %3) #18, !range !74
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %29, !llvm.loop !98

47:                                               ; preds = %42, %21
  %48 = load ptr, ptr %23, align 8, !tbaa !10
  %49 = tail call zeroext i8 @can_duplicate_block_p(ptr noundef %48) #17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  br label %55

52:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  %53 = add nuw nsw i64 %22, 1
  %54 = icmp eq i64 %53, %11
  br i1 %54, label %55, label %21, !llvm.loop !99

55:                                               ; preds = %52, %51
  %56 = phi i8 [ 0, %51 ], [ 1, %52 ]
  br i1 %5, label %68, label %57

57:                                               ; preds = %55
  %58 = zext i32 %1 to i64
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi i64 [ 0, %57 ], [ %66, %59 ]
  %61 = getelementptr inbounds ptr, ptr %0, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !10
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 13
  %64 = load i32, ptr %63, align 8, !tbaa !61
  %65 = and i32 %64, -129
  store i32 %65, ptr %63, align 8, !tbaa !61
  %66 = add nuw nsw i64 %60, 1
  %67 = icmp eq i64 %66, %58
  br i1 %67, label %68, label %59, !llvm.loop !100

68:                                               ; preds = %59, %2, %8, %55
  %69 = phi i8 [ %56, %55 ], [ 1, %8 ], [ 1, %2 ], [ %56, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i8 %69
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !74
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !10
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.9) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !101
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !101
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @can_duplicate_block_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_bbs(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr noundef readnone %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %50, label %12

12:                                               ; preds = %8
  %13 = zext i32 %1 to i64
  br label %17

14:                                               ; preds = %47
  br i1 %11, label %50, label %15

15:                                               ; preds = %14
  %16 = zext i32 %1 to i64
  br label %55

17:                                               ; preds = %12, %47
  %18 = phi i64 [ 0, %12 ], [ %48, %47 ]
  %19 = phi ptr [ %7, %12 ], [ %22, %47 ]
  %20 = getelementptr inbounds ptr, ptr %0, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = tail call ptr @duplicate_block(ptr noundef %21, ptr noundef null, ptr noundef %19) #17
  %23 = getelementptr inbounds ptr, ptr %2, i64 %18
  store ptr %22, ptr %23, align 8, !tbaa !10
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !61
  %26 = or i32 %25, 128
  store i32 %26, ptr %24, align 8, !tbaa !61
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !103
  %29 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !104
  %31 = icmp ne ptr %30, %21
  %32 = icmp eq ptr %28, %6
  %33 = or i1 %32, %31
  br i1 %33, label %38, label %34

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !103
  %37 = getelementptr inbounds %struct.loop, ptr %36, i64 0, i32 2
  store ptr %22, ptr %37, align 8, !tbaa !104
  br label %38

38:                                               ; preds = %34, %17
  %39 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !108
  %41 = icmp ne ptr %40, %21
  %42 = or i1 %32, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !103
  %46 = getelementptr inbounds %struct.loop, ptr %45, i64 0, i32 3
  store ptr %22, ptr %46, align 8, !tbaa !108
  br label %47

47:                                               ; preds = %38, %43
  %48 = add nuw nsw i64 %18, 1
  %49 = icmp eq i64 %48, %13
  br i1 %49, label %14, label %17, !llvm.loop !109

50:                                               ; preds = %68, %8, %14
  %51 = icmp eq i32 %4, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %50
  %53 = zext i32 %4 to i64
  %54 = shl nuw nsw i64 %53, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %54, i1 false), !tbaa !10
  br label %71

55:                                               ; preds = %15, %68
  %56 = phi i64 [ 0, %15 ], [ %69, %68 ]
  %57 = getelementptr inbounds ptr, ptr %0, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !10
  %59 = getelementptr inbounds ptr, ptr %2, i64 %56
  %60 = load ptr, ptr %59, align 8, !tbaa !10
  %61 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %58) #17
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 13
  %63 = load i32, ptr %62, align 8, !tbaa !61
  %64 = and i32 %63, 128
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %55
  %67 = tail call ptr @get_bb_copy(ptr noundef nonnull %61) #17
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %60, ptr noundef %67) #17
  br label %68

68:                                               ; preds = %55, %66
  %69 = add nuw nsw i64 %56, 1
  %70 = icmp eq i64 %69, %16
  br i1 %70, label %50, label %55, !llvm.loop !110

71:                                               ; preds = %52, %50
  br i1 %11, label %138, label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds i8, ptr %10, i64 8
  %74 = zext i32 %1 to i64
  %75 = zext i32 %4 to i64
  br label %79

76:                                               ; preds = %126
  br i1 %11, label %138, label %77

77:                                               ; preds = %76
  %78 = zext i32 %1 to i64
  br label %129

79:                                               ; preds = %72, %126
  %80 = phi i64 [ 0, %72 ], [ %127, %126 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #19
  %81 = getelementptr inbounds ptr, ptr %2, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !10
  %83 = getelementptr inbounds ptr, ptr %0, i64 %80
  %84 = load ptr, ptr %83, align 8, !tbaa !10
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 1
  %86 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %85) #18
  store i32 0, ptr %10, align 8, !tbaa.struct !72
  store ptr %86, ptr %73, align 8, !tbaa.struct !73
  %87 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %86, ptr noundef nonnull %9) #18, !range !74
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %126, label %89

89:                                               ; preds = %79, %121
  %90 = load ptr, ptr %9, align 8
  br i1 %51, label %111, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.edge_def, ptr %90, i64 0, i32 1
  br label %93

93:                                               ; preds = %91, %108
  %94 = phi i64 [ 0, %91 ], [ %109, %108 ]
  %95 = getelementptr inbounds ptr, ptr %3, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !10
  %97 = icmp eq ptr %96, null
  br i1 %97, label %108, label %98

98:                                               ; preds = %93
  %99 = load ptr, ptr %96, align 8, !tbaa !78
  %100 = icmp eq ptr %99, %84
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.edge_def, ptr %96, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !88
  %104 = load ptr, ptr %92, align 8, !tbaa !88
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = getelementptr inbounds ptr, ptr %5, i64 %94
  store ptr %90, ptr %107, align 8, !tbaa !10
  br label %108

108:                                              ; preds = %93, %98, %101, %106
  %109 = add nuw nsw i64 %94, 1
  %110 = icmp eq i64 %109, %75
  br i1 %110, label %111, label %93, !llvm.loop !111

111:                                              ; preds = %108, %89
  %112 = getelementptr inbounds %struct.edge_def, ptr %90, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !88
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 13
  %115 = load i32, ptr %114, align 8, !tbaa !61
  %116 = and i32 %115, 128
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %111
  %119 = tail call ptr @get_bb_copy(ptr noundef nonnull %113) #17
  %120 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %90, ptr noundef %119) #17
  br label %121

121:                                              ; preds = %111, %118
  call fastcc void @ei_next(ptr noundef nonnull %10) #18
  %122 = load i32, ptr %10, align 8
  %123 = load ptr, ptr %73, align 8
  %124 = call fastcc zeroext i8 @ei_cond(i32 %122, ptr %123, ptr noundef nonnull %9) #18, !range !74
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %89, !llvm.loop !112

126:                                              ; preds = %121, %79
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #19
  %127 = add nuw nsw i64 %80, 1
  %128 = icmp eq i64 %127, %74
  br i1 %128, label %76, label %79, !llvm.loop !113

129:                                              ; preds = %77, %129
  %130 = phi i64 [ 0, %77 ], [ %136, %129 ]
  %131 = getelementptr inbounds ptr, ptr %0, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !10
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 13
  %134 = load i32, ptr %133, align 8, !tbaa !61
  %135 = and i32 %134, -129
  store i32 %135, ptr %133, align 8, !tbaa !61
  %136 = add nuw nsw i64 %130, 1
  %137 = icmp eq i64 %136, %78
  br i1 %137, label %138, label %129, !llvm.loop !114

138:                                              ; preds = %129, %71, %76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  ret void
}

; Function Attrs: optsize
declare ptr @duplicate_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_bb_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_VEC_tree_gc(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_VEC_tree_gc(ptr noundef) #2

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #17
  store ptr %6, ptr %0, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = load i32, ptr %0, align 4, !tbaa !21
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !21
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !115
  %6 = load i32, ptr %0, align 4, !tbaa !21
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @block_locators_blocks, align 8, !tbaa !10
  %2 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %1) #18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_gc_p_reserve(ptr noundef %1, i32 noundef 1) #17
  store ptr %5, ptr @block_locators_blocks, align 8, !tbaa !10
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #12 {
  %3 = load i32, ptr %0, align 8, !tbaa !116
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !116
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !118
  %6 = load i32, ptr %0, align 8, !tbaa !116
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_location_t_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @locations_locators_vals, align 8, !tbaa !10
  %2 = tail call fastcc i32 @VEC_location_t_base_space(ptr noundef %1) #18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_o_reserve(ptr noundef %1, i32 noundef 1, i64 noundef 8, i64 noundef 4) #17
  store ptr %5, ptr @locations_locators_vals, align 8, !tbaa !10
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @VEC_location_t_base_quick_push(ptr noundef %0) unnamed_addr #13 {
  %2 = load i32, ptr %0, align 4, !tbaa !119
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 4, !tbaa !119
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_location_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr @curr_location, align 4, !tbaa !8
  store i32 %6, ptr %5, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_location_t_base_space(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_location_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !121
  %6 = load i32, ptr %0, align 4, !tbaa !119
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @emit_note_before(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @skip_insns_after_block(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = load ptr, ptr @cfun, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = icmp eq ptr %3, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi ptr [ %13, %10 ], [ null, %1 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.rtl_bb_info, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  %23 = icmp eq ptr %21, %15
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %64, label %25

25:                                               ; preds = %14, %57
  %26 = phi ptr [ %60, %57 ], [ %21, %14 ]
  %27 = phi ptr [ %58, %57 ], [ %19, %14 ]
  br label %28

28:                                               ; preds = %25, %37
  %29 = phi ptr [ %26, %25 ], [ %39, %37 ]
  %30 = load i32, ptr %29, align 8
  %31 = trunc i32 %30 to i16
  switch i16 %31, label %64 [
    i16 11, label %57
    i16 13, label %32
    i16 12, label %43
  ], !llvm.loop !122

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 1
  %34 = load i32, ptr %33, align 8, !tbaa !5
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 105, ptr noundef nonnull @.str.9) #17
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = icmp eq ptr %39, null
  %41 = icmp eq ptr %39, %15
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %64, label %28, !llvm.loop !122

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %45, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 9
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65534
  %56 = icmp eq i32 %55, 20
  br i1 %56, label %57, label %64

57:                                               ; preds = %28, %51
  %58 = phi ptr [ %45, %51 ], [ %29, %28 ]
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 2
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = icmp eq ptr %60, null
  %62 = icmp eq ptr %60, %15
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %64, label %25, !llvm.loop !122

64:                                               ; preds = %51, %47, %43, %57, %37, %28, %14
  %65 = phi ptr [ %19, %14 ], [ %27, %28 ], [ %27, %37 ], [ %58, %57 ], [ %27, %43 ], [ %27, %47 ], [ %27, %51 ]
  %66 = load ptr, ptr %16, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.rtl_bb_info, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !47
  %69 = icmp eq ptr %65, %68
  br i1 %69, label %87, label %70

70:                                               ; preds = %64, %82
  %71 = phi ptr [ %73, %82 ], [ %65, %64 ]
  %72 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = load i32, ptr %71, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 13
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 1
  %79 = load i32, ptr %78, align 8, !tbaa !5
  switch i32 %79, label %81 [
    i32 3, label %80
    i32 0, label %82
    i32 1, label %82
  ]

80:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 147, ptr noundef nonnull @.str.9) #17
  br label %82

81:                                               ; preds = %77
  tail call void @reorder_insns(ptr noundef nonnull %71, ptr noundef nonnull %71, ptr noundef %65) #17
  br label %82

82:                                               ; preds = %70, %81, %80, %77, %77
  %83 = load ptr, ptr %16, align 8, !tbaa !5
  %84 = getelementptr inbounds %struct.rtl_bb_info, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !47
  %86 = icmp eq ptr %73, %85
  br i1 %86, label %87, label %70, !llvm.loop !123

87:                                               ; preds = %82, %64
  ret ptr %65
}

; Function Attrs: optsize
declare void @reorder_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !74
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #18
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !124
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.9) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @invert_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @label_for_bb(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.11, i32 noundef %13) #18
  br label %15

15:                                               ; preds = %11, %8
  %16 = tail call ptr @block_label(ptr noundef nonnull %0) #17
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %4, %1 ], [ %16, %15 ]
  ret ptr %18
}

; Function Attrs: optsize
declare void @update_br_prob_note(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @extract_asm_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @returnjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_nonfallthru(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #18
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  ret ptr %3
}

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @can_fallthru(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_after_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_nop() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @block_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #18, !range !74
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 655, ptr noundef nonnull @.str.9) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !126
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #18
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !126
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !11, i64 8}
!13 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !11, i64 128, !9, i64 136, !9, i64 137, !9, i64 138, !9, i64 138, !9, i64 138, !9, i64 138, !9, i64 138, !9, i64 138, !9, i64 138, !9, i64 139, !9, i64 139, !9, i64 139, !9, i64 139, !9, i64 139, !9, i64 139, !9, i64 139}
!14 = !{!15, !11, i64 0}
!15 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !11, i64 40, !9, i64 48, !6, i64 52, !6, i64 60, !9, i64 68, !9, i64 72}
!16 = !{!15, !11, i64 8}
!17 = !{!18, !11, i64 56}
!18 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !11, i64 48, !11, i64 56, !6, i64 64, !19, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96}
!19 = !{!"long", !6, i64 0}
!20 = !{!18, !11, i64 16}
!21 = !{!22, !9, i64 0}
!22 = !{!"VEC_int_base", !9, i64 0, !9, i64 4, !6, i64 8}
!23 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 1, !5}
!24 = !{i64 0, i64 8, !10, i64 8, i64 4, !8, i64 12, i64 4, !8, i64 16, i64 1, !5}
!25 = !{!13, !11, i64 48}
!26 = !{!27, !9, i64 0}
!27 = !{!"rtvec_def", !9, i64 0, !6, i64 8}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !29}
!34 = !{!18, !9, i64 80}
!35 = !{!36, !11, i64 0}
!36 = !{!"rtl_bb_info", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !9, i64 32}
!37 = !{!18, !9, i64 88}
!38 = distinct !{!38, !29}
!39 = !{!18, !11, i64 48}
!40 = distinct !{!40, !29}
!41 = !{!36, !9, i64 32}
!42 = !{!36, !11, i64 24}
!43 = !{!36, !11, i64 16}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !29}
!46 = distinct !{!46, !29}
!47 = !{!36, !11, i64 8}
!48 = !{!49, !11, i64 1016}
!49 = !{!"gcc_target", !50, i64 0, !52, i64 368, !53, i64 664, !9, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !11, i64 776, !11, i64 784, !11, i64 792, !11, i64 800, !11, i64 808, !11, i64 816, !11, i64 824, !11, i64 832, !11, i64 840, !11, i64 848, !11, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !11, i64 888, !11, i64 896, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !11, i64 936, !11, i64 944, !11, i64 952, !11, i64 960, !11, i64 968, !11, i64 976, !11, i64 984, !11, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !11, i64 1048, !11, i64 1056, !19, i64 1064, !19, i64 1072, !11, i64 1080, !11, i64 1088, !11, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !11, i64 1128, !11, i64 1136, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !54, i64 1176, !11, i64 1232, !11, i64 1240, !11, i64 1248, !11, i64 1256, !11, i64 1264, !11, i64 1272, !11, i64 1280, !11, i64 1288, !11, i64 1296, !11, i64 1304, !11, i64 1312, !11, i64 1320, !11, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !11, i64 1360, !11, i64 1368, !11, i64 1376, !11, i64 1384, !11, i64 1392, !11, i64 1400, !11, i64 1408, !11, i64 1416, !11, i64 1424, !11, i64 1432, !11, i64 1440, !11, i64 1448, !11, i64 1456, !19, i64 1464, !55, i64 1472, !11, i64 1664, !11, i64 1672, !11, i64 1680, !11, i64 1688, !11, i64 1696, !11, i64 1704, !11, i64 1712, !11, i64 1720, !11, i64 1728, !11, i64 1736, !11, i64 1744, !11, i64 1752, !11, i64 1760, !11, i64 1768, !11, i64 1776, !56, i64 1784, !57, i64 1792, !58, i64 1896, !59, i64 1968, !11, i64 2016, !6, i64 2024, !6, i64 2025, !6, i64 2026, !6, i64 2027, !6, i64 2028, !6, i64 2029, !6, i64 2030, !6, i64 2031, !6, i64 2032, !6, i64 2033, !6, i64 2034, !6, i64 2035}
!50 = !{!"asm_out", !11, i64 0, !11, i64 8, !11, i64 16, !51, i64 24, !51, i64 56, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360}
!51 = !{!"asm_int_op", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!52 = !{!"sched", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288}
!53 = !{!"vectorize", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!54 = !{!"addr_space", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!55 = !{!"calls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184}
!56 = !{!"c", !11, i64 0}
!57 = !{!"cxx", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96}
!58 = !{!"emutls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !6, i64 64, !6, i64 65}
!59 = !{!"target_option_hooks", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!60 = distinct !{!60, !29}
!61 = !{!18, !9, i64 96}
!62 = distinct !{!62, !29}
!63 = distinct !{!63, !29}
!64 = distinct !{!64, !29}
!65 = distinct !{!65, !29}
!66 = distinct !{!66, !29}
!67 = !{!15, !9, i64 32}
!68 = distinct !{!68, !29}
!69 = !{!70, !11, i64 0}
!70 = !{!"simple_bitmap_def", !11, i64 0, !9, i64 8, !9, i64 12, !6, i64 16}
!71 = !{!19, !19, i64 0}
!72 = !{i64 0, i64 4, !8, i64 8, i64 8, !10}
!73 = !{i64 0, i64 8, !10}
!74 = !{i8 0, i8 2}
!75 = !{!76, !9, i64 48}
!76 = !{!"edge_def", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 24, !11, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !19, i64 56}
!77 = distinct !{!77, !29}
!78 = !{!76, !11, i64 0}
!79 = distinct !{!79, !29}
!80 = distinct !{!80, !29}
!81 = distinct !{!81, !29}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !29}
!86 = !{!18, !11, i64 8}
!87 = distinct !{!87, !29}
!88 = !{!76, !11, i64 8}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29}
!92 = !{!76, !9, i64 40}
!93 = distinct !{!93, !29}
!94 = distinct !{!94, !29}
!95 = distinct !{!95, !29}
!96 = distinct !{!96, !29}
!97 = distinct !{!97, !29}
!98 = distinct !{!98, !29}
!99 = distinct !{!99, !29}
!100 = distinct !{!100, !29}
!101 = !{!102, !9, i64 0}
!102 = !{!"", !9, i64 0, !11, i64 8}
!103 = !{!18, !11, i64 24}
!104 = !{!105, !11, i64 8}
!105 = !{!"loop", !9, i64 0, !9, i64 4, !11, i64 8, !11, i64 16, !106, i64 24, !9, i64 32, !9, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !107, i64 80, !107, i64 96, !6, i64 112, !6, i64 113, !9, i64 116, !11, i64 120, !11, i64 128, !6, i64 136, !11, i64 144}
!106 = !{!"lpt_decision", !9, i64 0, !9, i64 4}
!107 = !{!"", !19, i64 0, !19, i64 8}
!108 = !{!105, !11, i64 16}
!109 = distinct !{!109, !29}
!110 = distinct !{!110, !29}
!111 = distinct !{!111, !29}
!112 = distinct !{!112, !29}
!113 = distinct !{!113, !29}
!114 = distinct !{!114, !29}
!115 = !{!22, !9, i64 4}
!116 = !{!117, !9, i64 0}
!117 = !{!"VEC_tree_base", !9, i64 0, !9, i64 4, !6, i64 8}
!118 = !{!117, !9, i64 4}
!119 = !{!120, !9, i64 0}
!120 = !{!"VEC_location_t_base", !9, i64 0, !9, i64 4, !6, i64 8}
!121 = !{!120, !9, i64 4}
!122 = distinct !{!122, !29}
!123 = distinct !{!123, !29}
!124 = !{!125, !9, i64 0}
!125 = !{!"VEC_edge_base", !9, i64 0, !9, i64 4, !6, i64 8}
!126 = !{!18, !11, i64 0}
