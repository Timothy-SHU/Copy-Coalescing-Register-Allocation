; ModuleID = 'ira-build.c'
source_filename = "ira-build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.loops = type { i32, ptr, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.ira_allocno = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i64, i64, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.ira_loop_tree_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, i8, [27 x i32], ptr, ptr, ptr, ptr }
%struct.VEC_ira_allocno_t_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.ira_allocno_live_range = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.ira_allocno_copy = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_ira_copy_t_base = type { i32, i32, [1 x ptr] }
%struct.ira_copy_iterator = type { i32 }
%struct.ira_allocno_iterator = type { i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.sparseset_def = type { ptr, ptr, i32, i32, i32, i8, i8, [2 x i32] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_ira_loop_tree_node_t_base = type { i32, i32, [1 x ptr] }

@allocno_pool = internal unnamed_addr global ptr null, align 8
@ira_regno_allocno_map = dso_local local_unnamed_addr global ptr null, align 8
@ira_allocnos_num = dso_local local_unnamed_addr global i32 0, align 4
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@allocno_vec = internal global ptr null, align 8
@ira_allocnos = dso_local local_unnamed_addr global ptr null, align 8
@ira_conflict_id_allocno_map_vec = internal global ptr null, align 8
@ira_conflict_id_allocno_map = dso_local local_unnamed_addr global ptr null, align 8
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@ira_dump_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c" a%d(r%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c",b%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c",l%d\00", align 1
@allocno_live_range_pool = internal unnamed_addr global ptr null, align 8
@copy_pool = internal unnamed_addr global ptr null, align 8
@ira_copies_num = dso_local local_unnamed_addr global i32 0, align 4
@copy_vec = internal unnamed_addr global ptr null, align 8
@ira_copies = dso_local local_unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@cost_vector_pool = internal unnamed_addr global [27 x ptr] zeroinitializer, align 16
@ira_curr_loop_tree_node = dso_local local_unnamed_addr global ptr null, align 8
@ira_curr_regno_allocno_map = dso_local local_unnamed_addr global ptr null, align 8
@regno_top_level_allocno_map = internal unnamed_addr global ptr null, align 8
@internal_flag_ira_verbose = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"      Moving ranges of a%dr%d to a%dr%d: \00", align 1
@ira_class_hard_regs_num = external local_unnamed_addr global [27 x i32], align 16
@ira_max_point = external local_unnamed_addr global i32, align 4
@ira_start_point_ranges = external local_unnamed_addr global ptr, align 8
@ira_reg_classes_intersect_p = external local_unnamed_addr global [27 x [27 x i8]], align 16
@ira_finish_point_ranges = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"      Remove cp%d:%c%dr%d-%c%dr%d\0A\00", align 1
@ira_loop_tree_root = dso_local local_unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"      Remove cp%d:a%dr%d-a%dr%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"      Remove a%dr%d\0A\00", align 1
@ira_conflicts_p = external local_unnamed_addr global i8, align 1
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"  regions=%d, blocks=%d, points=%d\0A\00", align 1
@ira_loops = external local_unnamed_addr global %struct.loops, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [53 x i8] c"    allocnos=%d, copies=%d, conflicts=%d, ranges=%d\0A\00", align 1
@ira_loop_tree_height = dso_local local_unnamed_addr global i32 0, align 4
@ira_bb_nodes = dso_local local_unnamed_addr global ptr null, align 8
@ira_loop_nodes = dso_local local_unnamed_addr global ptr null, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"ira-build.c\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"  cp%d:a%d(r%d)<->a%d(r%d)@%d:%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"shuffle\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c" a%d(r%d):\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c" cp%d:a%d(r%d)@%d\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"      Coping ranges of a%dr%d to a%dr%d: \00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"./sparseset.h\00", align 1
@allocno_conflict_check = internal unnamed_addr global ptr null, align 8
@curr_allocno_conflict_check_tick = internal unnamed_addr global i32 0, align 4
@ira_reg_class_cover_size = external local_unnamed_addr global i32, align 4
@ira_reg_class_cover = external local_unnamed_addr global [27 x i32], align 16
@.str.22 = private unnamed_addr constant [13 x i8] c"cost vectors\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"allocno live ranges\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"allocnos\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"copies\00", align 1
@last_basic_block_before_change = internal unnamed_addr global i32 0, align 4
@.str.26 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@curr_bb = internal unnamed_addr global ptr null, align 8
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@df = external local_unnamed_addr global ptr, align 8
@children_vec = internal global ptr null, align 8
@removed_loop_vec = internal global ptr null, align 8
@.str.27 = private unnamed_addr constant [59 x i8] c"  Mark loop %d (header %d, freq %d, depth %d) for removal\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [64 x i8] c"  Mark loop %d (header %d, freq %d, depth %d) for removal (%s)\0A\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"low pressure\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"cheap loop\00", align 1
@ira_available_class_regs = external local_unnamed_addr global [27 x i32], align 16
@regno_allocnos = internal unnamed_addr global ptr null, align 8
@.str.31 = private unnamed_addr constant [39 x i8] c" Rebuilding regno allocno list for %d\0A\00", align 1
@reg_obstack = external global %struct.bitmap_obstack, align 8
@flag_ira_region = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [18 x i8] c"    Creating cap \00", align 1
@flag_ira_algorithm = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_create_allocno(i32 noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 !prof !220 {
  %4 = load ptr, ptr @allocno_pool, align 8, !tbaa !221
  %5 = tail call ptr @pool_alloc(ptr noundef %4) #23
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 1
  store i32 %0, ptr %6, align 4, !tbaa !225
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 6
  store ptr %2, ptr %7, align 8, !tbaa !229
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %9, label %21, !prof !230

9:                                                ; preds = %3
  %10 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !221
  %11 = sext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !221
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !231
  store ptr %5, ptr %12, align 8, !tbaa !221
  %15 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %2, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !232
  %17 = getelementptr inbounds ptr, ptr %16, i64 %11
  %18 = load ptr, ptr %17, align 8, !tbaa !221
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !230

20:                                               ; preds = %9
  store ptr %5, ptr %17, align 8, !tbaa !221
  br label %21

21:                                               ; preds = %9, %20, %3
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %23 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !234
  store i32 %23, ptr %5, align 8, !tbaa !235
  %24 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %2, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !236
  %26 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %25, i32 noundef %23) #23
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 23
  store ptr null, ptr %27, align 8, !tbaa !237
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 28
  store i32 0, ptr %28, align 8, !tbaa !238
  %29 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !239
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 26
  store i64 %29, ptr %30, align 8, !tbaa !240
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 27
  store i64 %29, ptr %31, align 8, !tbaa !241
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 7
  store i32 0, ptr %32, align 8, !tbaa !242
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 8
  store i32 0, ptr %33, align 4, !tbaa !243
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 3
  store i32 -1, ptr %34, align 4, !tbaa !244
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 29
  store i32 0, ptr %35, align 4, !tbaa !245
  %36 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 30
  store i32 0, ptr %36, align 8, !tbaa !246
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 31
  %38 = load i16, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 32
  store ptr null, ptr %39, align 8, !tbaa !247
  %40 = and i16 %38, -4096
  store i16 %40, ptr %37, align 4
  %41 = icmp slt i32 %0, 0
  br i1 %41, label %50, label %42, !prof !248

42:                                               ; preds = %21
  %43 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !221
  %44 = zext nneg i32 %0 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !221
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  br label %50

50:                                               ; preds = %21, %42
  %51 = phi i32 [ %49, %42 ], [ 0, %21 ]
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 2
  store i32 %51, ptr %52, align 8, !tbaa !249
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 15
  store ptr null, ptr %53, align 8, !tbaa !250
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 33
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %54, i8 0, i64 32, i1 false)
  store i32 -1, ptr %55, align 8, !tbaa !251
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 9
  %57 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 39
  %58 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  store ptr %5, ptr %58, align 8, !tbaa !252
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 19
  store ptr %5, ptr %59, align 8, !tbaa !253
  %60 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 20
  store ptr null, ptr %60, align 8, !tbaa !254
  %61 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 21
  store i32 2147483647, ptr %61, align 8, !tbaa !255
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 22
  store i32 -1, ptr %62, align 4, !tbaa !256
  %63 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !234
  %64 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 24
  store i32 %63, ptr %64, align 8, !tbaa !257
  tail call fastcc void @VEC_ira_allocno_t_heap_safe_push(ptr noundef nonnull @allocno_vec, ptr noundef nonnull %5) #24
  %65 = load ptr, ptr @allocno_vec, align 8
  %66 = tail call fastcc ptr @VEC_ira_allocno_t_base_address(ptr noundef %65) #24
  store ptr %66, ptr @ira_allocnos, align 8, !tbaa !221
  %67 = tail call fastcc i32 @VEC_ira_allocno_t_base_length(ptr noundef %65) #24
  store i32 %67, ptr @ira_allocnos_num, align 4, !tbaa !234
  tail call fastcc void @VEC_ira_allocno_t_heap_safe_push(ptr noundef nonnull @ira_conflict_id_allocno_map_vec, ptr noundef nonnull %5) #24
  %68 = load ptr, ptr @ira_conflict_id_allocno_map_vec, align 8
  %69 = tail call fastcc ptr @VEC_ira_allocno_t_base_address(ptr noundef %68) #24
  store ptr %69, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !221
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_allocno_t_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !258 !PGOFuncName !259 {
  tail call fastcc void @VEC_ira_allocno_t_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !221
  tail call fastcc void @VEC_ira_allocno_t_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ira_allocno_t_base_address(ptr noundef readnone %0) unnamed_addr #3 !prof !258 !PGOFuncName !260 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !261
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_allocno_t_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !220 !PGOFuncName !262 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !248

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !263
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_set_allocno_cover_class(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !220 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  store i32 %1, ptr %3, align 8, !tbaa !265
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !239
  %7 = xor i64 %6, -1
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 26
  %9 = load i64, ptr %8, align 8, !tbaa !240
  %10 = or i64 %9, %7
  store i64 %10, ptr %8, align 8, !tbaa !240
  %11 = load i64, ptr %5, align 8, !tbaa !239
  %12 = xor i64 %11, -1
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 27
  %14 = load i64, ptr %13, align 8, !tbaa !241
  %15 = or i64 %14, %12
  store i64 %15, ptr %13, align 8, !tbaa !241
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ira_conflict_vector_profitable_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 !prof !220 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 4, !tbaa !256
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %6 = load i32, ptr %5, align 8, !tbaa !255
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %20, label %8, !prof !248

8:                                                ; preds = %2
  %9 = add i32 %4, 64
  %10 = sub i32 %9, %6
  %11 = sdiv i32 %10, 64
  %12 = add nsw i32 %1, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 4
  %15 = mul nsw i32 %11, 3
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = icmp ult i64 %14, %17
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %2, %8
  %21 = phi i8 [ %19, %8 ], [ 0, %2 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_allocate_allocno_conflict_vec(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !266 {
  %3 = shl i32 %1, 3
  %4 = add i32 %3, 8
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #23
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  store ptr %6, ptr %7, align 8, !tbaa !237
  store ptr null, ptr %6, align 8, !tbaa !221
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  store i32 0, ptr %8, align 8, !tbaa !238
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  store i32 %4, ptr %9, align 4, !tbaa !267
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %11 = load i16, ptr %10, align 4
  %12 = or i16 %11, 2048
  store i16 %12, ptr %10, align 4
  ret void
}

; Function Attrs: optsize
declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_allocate_allocno_conflicts(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !268 {
  %3 = tail call zeroext i8 @ira_conflict_vector_profitable_p(ptr noundef %0, i32 noundef %1) #24, !range !269
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @ira_allocate_allocno_conflict_vec(ptr noundef %0, i32 noundef %1) #24
  br label %7

6:                                                ; preds = %2
  tail call fastcc void @allocate_allocno_conflict_bit_vec(ptr noundef %0) #24
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @allocate_allocno_conflict_bit_vec(ptr nocapture noundef %0) unnamed_addr #0 !prof !268 !PGOFuncName !270 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 4, !tbaa !256
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %5 = load i32, ptr %4, align 8, !tbaa !255
  %6 = add i32 %3, 64
  %7 = sub i32 %6, %5
  %8 = sdiv i32 %7, 64
  %9 = shl nsw i32 %8, 3
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @ira_allocate(i64 noundef %10) #23
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  store ptr %11, ptr %12, align 8, !tbaa !237
  tail call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  store i32 %9, ptr %13, align 4, !tbaa !267
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, -2049
  store i16 %16, ptr %14, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_add_allocno_conflict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !268 {
  tail call fastcc void @add_to_allocno_conflicts(ptr noundef %0, ptr noundef %1) #24
  tail call fastcc void @add_to_allocno_conflicts(ptr noundef %1, ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_allocno_conflicts(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !268 !PGOFuncName !271 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 2048
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  %9 = load i32, ptr %8, align 8, !tbaa !238
  %10 = add nsw i32 %9, 2
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  %12 = load i32, ptr %11, align 4, !tbaa !267
  %13 = zext i32 %12 to i64
  %14 = sext i32 %10 to i64
  %15 = shl nsw i64 %14, 3
  %16 = icmp ugt i64 %15, %13
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %19 = load ptr, ptr %18, align 8, !tbaa !237
  br label %34

20:                                               ; preds = %7
  %21 = mul nsw i32 %10, 3
  %22 = sdiv i32 %21, 2
  %23 = shl i32 %22, 3
  %24 = add i32 %23, 8
  %25 = zext i32 %24 to i64
  %26 = tail call ptr @ira_allocate(i64 noundef %25) #23
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %28 = load ptr, ptr %27, align 8, !tbaa !237
  %29 = load i32, ptr %8, align 8, !tbaa !238
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %26, ptr align 1 %28, i64 %31, i1 false)
  %32 = load ptr, ptr %27, align 8, !tbaa !237
  tail call void @ira_free(ptr noundef %32) #23
  store ptr %26, ptr %27, align 8, !tbaa !237
  store i32 %24, ptr %11, align 4, !tbaa !267
  %33 = load i32, ptr %8, align 8, !tbaa !238
  br label %34

34:                                               ; preds = %20, %17
  %35 = phi i32 [ %9, %17 ], [ %33, %20 ]
  %36 = phi ptr [ %19, %17 ], [ %26, %20 ]
  %37 = sext i32 %9 to i64
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  store ptr %1, ptr %38, align 8, !tbaa !221
  %39 = add nsw i32 %9, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %36, i64 %40
  store ptr null, ptr %41, align 8, !tbaa !221
  %42 = add nsw i32 %35, 1
  store i32 %42, ptr %8, align 8, !tbaa !238
  br label %139

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 24
  %45 = load i32, ptr %44, align 8, !tbaa !257
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %47 = load ptr, ptr %46, align 8, !tbaa !237
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %49 = load i32, ptr %48, align 8, !tbaa !255
  %50 = icmp sgt i32 %49, %45
  br i1 %50, label %51, label %95

51:                                               ; preds = %43
  %52 = xor i32 %45, -1
  %53 = add i32 %49, %52
  %54 = sdiv i32 %53, 64
  %55 = add nsw i32 %54, 1
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %57 = load i32, ptr %56, align 4, !tbaa !256
  %58 = sub nsw i32 %57, %49
  %59 = sdiv i32 %58, 64
  %60 = add nsw i32 %59, 1
  %61 = add nsw i32 %60, %55
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 3
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  %66 = load i32, ptr %65, align 4, !tbaa !267
  %67 = icmp ult i32 %66, %64
  br i1 %67, label %74, label %68

68:                                               ; preds = %51
  %69 = sext i32 %55 to i64
  %70 = shl nsw i64 %69, 3
  %71 = getelementptr inbounds i8, ptr %47, i64 %70
  %72 = sext i32 %60 to i64
  %73 = shl nsw i64 %72, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %71, ptr align 8 %47, i64 %73, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %47, i8 0, i64 %70, i1 false)
  br label %90

74:                                               ; preds = %51
  %75 = mul nsw i32 %61, 3
  %76 = sdiv i32 %75, 2
  %77 = shl nsw i32 %76, 3
  %78 = add i32 %77, 8
  %79 = zext i32 %78 to i64
  %80 = tail call ptr @ira_allocate(i64 noundef %79) #23
  %81 = sext i32 %55 to i64
  %82 = shl nsw i64 %81, 3
  %83 = getelementptr inbounds i8, ptr %80, i64 %82
  %84 = load ptr, ptr %46, align 8, !tbaa !237
  %85 = sext i32 %60 to i64
  %86 = shl nsw i64 %85, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %83, ptr align 1 %84, i64 %86, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %80, i8 0, i64 %82, i1 false)
  %87 = getelementptr inbounds i8, ptr %80, i64 %63
  %88 = sub nsw i64 %79, %63
  tail call void @llvm.memset.p0.i64(ptr align 1 %87, i8 0, i64 %88, i1 false)
  %89 = load ptr, ptr %46, align 8, !tbaa !237
  tail call void @ira_free(ptr noundef %89) #23
  store ptr %80, ptr %46, align 8, !tbaa !237
  store i32 %78, ptr %65, align 4, !tbaa !267
  br label %90

90:                                               ; preds = %74, %68
  %91 = phi ptr [ %47, %68 ], [ %80, %74 ]
  %92 = shl nsw i32 %55, 6
  %93 = load i32, ptr %48, align 8, !tbaa !255
  %94 = sub nsw i32 %93, %92
  store i32 %94, ptr %48, align 8, !tbaa !255
  br label %127

95:                                               ; preds = %43
  %96 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %97 = load i32, ptr %96, align 4, !tbaa !256
  %98 = icmp slt i32 %97, %45
  br i1 %98, label %99, label %127

99:                                               ; preds = %95
  %100 = sub nsw i32 %45, %49
  %101 = sdiv i32 %100, 64
  %102 = add nsw i32 %101, 1
  %103 = shl nsw i32 %102, 3
  %104 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  %105 = load i32, ptr %104, align 4, !tbaa !267
  %106 = icmp ult i32 %105, %103
  br i1 %106, label %107, label %124

107:                                              ; preds = %99
  %108 = mul nsw i32 %102, 3
  %109 = sdiv i32 %108, 2
  %110 = shl nsw i32 %109, 3
  %111 = add i32 %110, 8
  %112 = zext i32 %111 to i64
  %113 = tail call ptr @ira_allocate(i64 noundef %112) #23
  %114 = load ptr, ptr %46, align 8, !tbaa !237
  %115 = load i32, ptr %104, align 4, !tbaa !267
  %116 = zext i32 %115 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %113, ptr align 1 %114, i64 %116, i1 false)
  %117 = load i32, ptr %104, align 4, !tbaa !267
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %113, i64 %118
  %120 = sub i32 %111, %117
  %121 = zext i32 %120 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %119, i8 0, i64 %121, i1 false)
  %122 = load ptr, ptr %46, align 8, !tbaa !237
  tail call void @ira_free(ptr noundef %122) #23
  store ptr %113, ptr %46, align 8, !tbaa !237
  store i32 %111, ptr %104, align 4, !tbaa !267
  %123 = load i32, ptr %48, align 8, !tbaa !255
  br label %124

124:                                              ; preds = %107, %99
  %125 = phi i32 [ %123, %107 ], [ %49, %99 ]
  %126 = phi ptr [ %113, %107 ], [ %47, %99 ]
  store i32 %45, ptr %96, align 4, !tbaa !256
  br label %127

127:                                              ; preds = %95, %124, %90
  %128 = phi i32 [ %94, %90 ], [ %125, %124 ], [ %49, %95 ]
  %129 = phi ptr [ %91, %90 ], [ %126, %124 ], [ %47, %95 ]
  %130 = sub nsw i32 %45, %128
  %131 = and i32 %130, 63
  %132 = zext nneg i32 %131 to i64
  %133 = shl nuw i64 1, %132
  %134 = lshr i32 %130, 6
  %135 = zext nneg i32 %134 to i64
  %136 = getelementptr inbounds i64, ptr %129, i64 %135
  %137 = load i64, ptr %136, align 8, !tbaa !239
  %138 = or i64 %133, %137
  store i64 %138, ptr %136, align 8, !tbaa !239
  br label %139

139:                                              ; preds = %127, %34
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_print_expanded_allocno(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !268 {
  %2 = load ptr, ptr @ira_dump_file, align 8, !tbaa !221
  %3 = load i32, ptr %0, align 8, !tbaa !235
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !225
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %5) #24
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !229
  %9 = load ptr, ptr %8, align 8, !tbaa !272
  %10 = icmp eq ptr %9, null
  %11 = load ptr, ptr @ira_dump_file, align 8, !tbaa !221
  br i1 %10, label %14, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  br label %17

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !273
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %16, %14 ], [ %13, %12 ]
  %19 = phi ptr [ @.str.2, %14 ], [ @.str.1, %12 ]
  %20 = load i32, ptr %18, align 8, !tbaa !234
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull %19, i32 noundef %20) #24
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !274
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr @ira_dump_file, align 8, !tbaa !221
  %27 = tail call i32 @fputc(i32 58, ptr %26)
  %28 = load ptr, ptr %22, align 8, !tbaa !274
  tail call void @ira_print_expanded_allocno(ptr noundef %28) #24
  br label %29

29:                                               ; preds = %25, %17
  %30 = load ptr, ptr @ira_dump_file, align 8, !tbaa !221
  %31 = tail call i32 @fputc(i32 41, ptr %30)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ira_create_allocno_live_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !275 {
  %5 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !221
  %6 = tail call ptr @pool_alloc(ptr noundef %5) #23
  store ptr %0, ptr %6, align 8, !tbaa !276
  %7 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %6, i64 0, i32 1
  store i32 %1, ptr %7, align 8, !tbaa !278
  %8 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %6, i64 0, i32 2
  store i32 %2, ptr %8, align 4, !tbaa !279
  %9 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %6, i64 0, i32 3
  store ptr %3, ptr %9, align 8, !tbaa !280
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_copy_allocno_live_range_list(ptr noundef readonly %0) local_unnamed_addr #0 !prof !281 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3, !prof !282

3:                                                ; preds = %1, %11
  %4 = phi ptr [ %7, %11 ], [ null, %1 ]
  %5 = phi ptr [ %12, %11 ], [ null, %1 ]
  %6 = phi ptr [ %14, %11 ], [ %0, %1 ]
  %7 = tail call fastcc ptr @copy_allocno_live_range(ptr noundef nonnull %6) #24
  %8 = icmp eq ptr %5, null
  br i1 %8, label %11, label %9, !prof !283

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %4, i64 0, i32 3
  store ptr %7, ptr %10, align 8, !tbaa !280
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi ptr [ %5, %9 ], [ %7, %3 ]
  %13 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !280
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %3, !prof !284, !llvm.loop !285

16:                                               ; preds = %11, %1
  %17 = phi ptr [ null, %1 ], [ %12, %11 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @copy_allocno_live_range(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !281 !PGOFuncName !287 {
  %2 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !221
  %3 = tail call ptr @pool_alloc(ptr noundef %2) #23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !288
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_merge_allocno_live_ranges(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !281 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %73, label %4, !prof !289

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %73, label %6, !prof !290

6:                                                ; preds = %4, %56
  %7 = phi ptr [ %60, %56 ], [ null, %4 ]
  %8 = phi ptr [ %59, %56 ], [ null, %4 ]
  %9 = phi ptr [ %58, %56 ], [ %1, %4 ]
  %10 = phi ptr [ %57, %56 ], [ %0, %4 ]
  %11 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !278
  %13 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %9, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !278
  %15 = icmp slt i32 %12, %14
  %16 = select i1 %15, ptr %9, ptr %10, !prof !291
  %17 = select i1 %15, ptr %10, ptr %9, !prof !291
  %18 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %16, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !278
  %20 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !279
  %22 = add nsw i32 %21, 1
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %38, label %24, !prof !292

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !278
  store i32 %26, ptr %18, align 8, !tbaa !278
  %27 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %16, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !279
  %29 = icmp slt i32 %28, %21
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 %21, ptr %27, align 4, !tbaa !279
  br label %31

31:                                               ; preds = %30, %24
  %32 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !280
  tail call void @ira_finish_allocno_live_range(ptr noundef nonnull %17) #24
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %16, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !280
  br label %50

38:                                               ; preds = %6
  %39 = icmp eq ptr %8, null
  br i1 %39, label %42, label %40, !prof !293

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %7, i64 0, i32 3
  store ptr %16, ptr %41, align 8, !tbaa !280
  br label %42

42:                                               ; preds = %38, %40
  %43 = phi ptr [ %8, %40 ], [ %16, %38 ]
  %44 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %16, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !280
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %56, !prof !294

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !280
  br label %50

50:                                               ; preds = %35, %47
  %51 = phi ptr [ %48, %47 ], [ %36, %35 ]
  %52 = phi ptr [ %49, %47 ], [ %16, %35 ]
  %53 = phi ptr [ %17, %47 ], [ %37, %35 ]
  %54 = phi ptr [ %43, %47 ], [ %8, %35 ]
  %55 = phi ptr [ %16, %47 ], [ %7, %35 ]
  store ptr null, ptr %51, align 8, !tbaa !280
  br label %56

56:                                               ; preds = %50, %42, %31
  %57 = phi ptr [ %16, %31 ], [ %45, %42 ], [ %52, %50 ]
  %58 = phi ptr [ %33, %31 ], [ %17, %42 ], [ %53, %50 ]
  %59 = phi ptr [ %8, %31 ], [ %43, %42 ], [ %54, %50 ]
  %60 = phi ptr [ %7, %31 ], [ %16, %42 ], [ %55, %50 ]
  %61 = icmp ne ptr %57, null
  %62 = icmp ne ptr %58, null
  %63 = select i1 %61, i1 %62, i1 false, !prof !295
  br i1 %63, label %6, label %64, !prof !296, !llvm.loop !297

64:                                               ; preds = %56
  br i1 %61, label %65, label %67, !prof !290

65:                                               ; preds = %64
  %66 = icmp eq ptr %59, null
  br i1 %66, label %73, label %70

67:                                               ; preds = %64
  br i1 %62, label %68, label %73, !prof !298

68:                                               ; preds = %67
  %69 = icmp eq ptr %59, null
  br i1 %69, label %73, label %70, !prof !290

70:                                               ; preds = %68, %65
  %71 = phi ptr [ %57, %65 ], [ %58, %68 ]
  %72 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %60, i64 0, i32 3
  store ptr %71, ptr %72, align 8, !tbaa !280
  br label %73

73:                                               ; preds = %70, %67, %65, %68, %4, %2
  %74 = phi ptr [ %1, %2 ], [ %0, %4 ], [ %59, %67 ], [ %57, %65 ], [ %58, %68 ], [ %59, %70 ]
  ret ptr %74
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_finish_allocno_live_range(ptr noundef %0) local_unnamed_addr #0 !prof !299 {
  %2 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !221
  tail call void @pool_free(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ira_allocno_live_ranges_intersect_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !300 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %32, !prof !301

6:                                                ; preds = %2, %26
  %7 = phi ptr [ %28, %26 ], [ %1, %2 ]
  %8 = phi ptr [ %27, %26 ], [ %0, %2 ]
  %9 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !278
  %11 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %7, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !279
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17, !prof !302

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %8, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !280
  br label %26

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %7, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !278
  %20 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %8, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !279
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %32, !prof !303

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %7, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !280
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi ptr [ %16, %14 ], [ %8, %23 ]
  %28 = phi ptr [ %7, %14 ], [ %25, %23 ]
  %29 = icmp ne ptr %27, null
  %30 = icmp ne ptr %28, null
  %31 = select i1 %29, i1 %30, i1 false, !prof !304
  br i1 %31, label %6, label %32, !prof !305, !llvm.loop !306

32:                                               ; preds = %17, %26, %2
  %33 = phi i8 [ 0, %2 ], [ 0, %26 ], [ 1, %17 ]
  ret i8 %33
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_finish_allocno_live_range_list(ptr noundef %0) local_unnamed_addr #0 !prof !258 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !307

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !280
  tail call void @ira_finish_allocno_live_range(ptr noundef nonnull %4) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !prof !308, !llvm.loop !309

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_free_allocno_updated_costs(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !258 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !265
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 34
  %5 = load ptr, ptr %4, align 8, !tbaa !310
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !311

7:                                                ; preds = %1
  tail call void @ira_free_cost_vector(ptr noundef nonnull %5, i32 noundef %3) #24
  br label %8

8:                                                ; preds = %7, %1
  store ptr null, ptr %4, align 8, !tbaa !310
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 36
  %10 = load ptr, ptr %9, align 8, !tbaa !312
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !313

12:                                               ; preds = %8
  tail call void @ira_free_cost_vector(ptr noundef nonnull %10, i32 noundef %3) #24
  br label %13

13:                                               ; preds = %12, %8
  store ptr null, ptr %9, align 8, !tbaa !312
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_free_cost_vector(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !314 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  tail call void @pool_free(ptr noundef %5, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ira_create_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !315 {
  %7 = load ptr, ptr @copy_pool, align 8, !tbaa !221
  %8 = tail call ptr @pool_alloc(ptr noundef %7) #23
  %9 = load i32, ptr @ira_copies_num, align 4, !tbaa !234
  store i32 %9, ptr %8, align 8, !tbaa !316
  %10 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 1
  store ptr %0, ptr %10, align 8, !tbaa !318
  %11 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 2
  store ptr %1, ptr %11, align 8, !tbaa !319
  %12 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 3
  store i32 %2, ptr %12, align 8, !tbaa !320
  %13 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 4
  store i8 %3, ptr %13, align 4, !tbaa !321
  %14 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 5
  store ptr %4, ptr %14, align 8, !tbaa !322
  %15 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 10
  store ptr %5, ptr %15, align 8, !tbaa !323
  tail call fastcc void @VEC_ira_copy_t_heap_safe_push(ptr noundef nonnull %8) #24
  %16 = load ptr, ptr @copy_vec, align 8
  %17 = tail call fastcc ptr @VEC_ira_copy_t_base_address(ptr noundef %16) #24
  store ptr %17, ptr @ira_copies, align 8, !tbaa !221
  %18 = tail call fastcc i32 @VEC_ira_copy_t_base_length(ptr noundef %16) #24
  store i32 %18, ptr @ira_copies_num, align 4, !tbaa !234
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_copy_t_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !315 !PGOFuncName !324 {
  tail call fastcc void @VEC_ira_copy_t_heap_reserve() #24
  %2 = load ptr, ptr @copy_vec, align 8, !tbaa !221
  tail call fastcc void @VEC_ira_copy_t_base_quick_push(ptr noundef %2, ptr noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ira_copy_t_base_address(ptr noundef readnone %0) unnamed_addr #3 !prof !315 !PGOFuncName !325 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ira_copy_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !326
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_copy_t_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !315 !PGOFuncName !327 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !326

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !328
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_add_allocno_copy_to_list(ptr noundef %0) local_unnamed_addr #9 !prof !315 {
  %2 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !318
  %4 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !319
  %6 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 6
  store ptr null, ptr %6, align 8, !tbaa !330
  %7 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 8
  store ptr null, ptr %7, align 8, !tbaa !331
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !250
  %10 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 7
  store ptr %9, ptr %10, align 8, !tbaa !332
  %11 = icmp eq ptr %9, null
  br i1 %11, label %19, label %12, !prof !333

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !318
  %15 = icmp eq ptr %14, %3
  %16 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 6
  %17 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 8
  %18 = select i1 %15, ptr %16, ptr %17, !prof !334
  store ptr %0, ptr %18, align 8, !tbaa !221
  br label %19

19:                                               ; preds = %12, %1
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !250
  %22 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 9
  store ptr %21, ptr %22, align 8, !tbaa !335
  %23 = icmp eq ptr %21, null
  br i1 %23, label %34, label %24, !prof !336

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ira_allocno_copy, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !319
  %27 = icmp eq ptr %26, %5
  br i1 %27, label %28, label %30, !prof !337

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ira_allocno_copy, ptr %21, i64 0, i32 8
  br label %32

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ira_allocno_copy, ptr %21, i64 0, i32 6
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %29, %28 ], [ %31, %30 ]
  store ptr %0, ptr %33, align 8, !tbaa !221
  br label %34

34:                                               ; preds = %32, %19
  store ptr %0, ptr %8, align 8, !tbaa !250
  store ptr %0, ptr %20, align 8, !tbaa !250
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_remove_allocno_copy_from_list(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !268 {
  %2 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !318
  %4 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !319
  %6 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !332
  %8 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !330
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 15
  br label %21

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !318
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 7
  br label %21

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 9
  br label %21

21:                                               ; preds = %17, %19, %11
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %12, %11 ]
  store ptr %7, ptr %22, align 8, !tbaa !221
  %23 = icmp eq ptr %7, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ira_allocno_copy, ptr %7, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !318
  %27 = icmp eq ptr %26, %3
  %28 = getelementptr inbounds %struct.ira_allocno_copy, ptr %7, i64 0, i32 6
  %29 = getelementptr inbounds %struct.ira_allocno_copy, ptr %7, i64 0, i32 8
  %30 = select i1 %27, ptr %28, ptr %29
  store ptr %9, ptr %30, align 8, !tbaa !221
  br label %31

31:                                               ; preds = %24, %21
  %32 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %33 = load ptr, ptr %32, align 8, !tbaa !335
  %34 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !331
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 15
  br label %47

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.ira_allocno_copy, ptr %35, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !319
  %42 = icmp eq ptr %41, %5
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ira_allocno_copy, ptr %35, i64 0, i32 9
  br label %47

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.ira_allocno_copy, ptr %35, i64 0, i32 7
  br label %47

47:                                               ; preds = %43, %45, %37
  %48 = phi ptr [ %44, %43 ], [ %46, %45 ], [ %38, %37 ]
  store ptr %33, ptr %48, align 8, !tbaa !221
  %49 = icmp eq ptr %33, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ira_allocno_copy, ptr %33, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !319
  %53 = icmp eq ptr %52, %5
  %54 = getelementptr inbounds %struct.ira_allocno_copy, ptr %33, i64 0, i32 8
  %55 = getelementptr inbounds %struct.ira_allocno_copy, ptr %33, i64 0, i32 6
  %56 = select i1 %53, ptr %54, ptr %55
  store ptr %35, ptr %56, align 8, !tbaa !221
  br label %57

57:                                               ; preds = %50, %47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_swap_allocno_copy_ends_if_necessary(ptr nocapture noundef %0) local_unnamed_addr #5 !prof !315 {
  %2 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !318
  %4 = load i32, ptr %3, align 8, !tbaa !235
  %5 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !319
  %7 = load i32, ptr %6, align 8, !tbaa !235
  %8 = icmp sgt i32 %4, %7
  br i1 %8, label %9, label %14, !prof !338

9:                                                ; preds = %1
  store ptr %6, ptr %2, align 8, !tbaa !318
  store ptr %3, ptr %5, align 8, !tbaa !319
  %10 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 8
  %12 = load <2 x ptr>, ptr %11, align 8, !tbaa !221
  %13 = load <2 x ptr>, ptr %10, align 8, !tbaa !221
  store <2 x ptr> %12, ptr %10, align 8, !tbaa !221
  store <2 x ptr> %13, ptr %11, align 8, !tbaa !221
  br label %14

14:                                               ; preds = %1, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_add_allocno_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !315 {
  %7 = tail call fastcc ptr @find_allocno_copy(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %5) #24
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !339

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ira_allocno_copy, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !320
  %12 = add nsw i32 %11, %2
  store i32 %12, ptr %10, align 8, !tbaa !320
  br label %15

13:                                               ; preds = %6
  %14 = tail call ptr @ira_create_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) #24
  tail call void @ira_add_allocno_copy_to_list(ptr noundef %14) #24
  tail call void @ira_swap_allocno_copy_ends_if_necessary(ptr noundef %14) #24
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %7, %9 ], [ %14, %13 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_allocno_copy(ptr noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2, ptr noundef readnone %3) unnamed_addr #0 !prof !315 !PGOFuncName !340 {
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !250
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %8, !prof !341

8:                                                ; preds = %4, %40
  %9 = phi ptr [ %30, %40 ], [ undef, %4 ]
  %10 = phi ptr [ %29, %40 ], [ undef, %4 ]
  %11 = phi ptr [ %29, %40 ], [ %6, %4 ]
  %12 = getelementptr inbounds %struct.ira_allocno_copy, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !318
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %20, !prof !342

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ira_allocno_copy, ptr %11, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !332
  %18 = getelementptr inbounds %struct.ira_allocno_copy, ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !319
  br label %28

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.ira_allocno_copy, ptr %11, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !319
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %27, !prof !343

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ira_allocno_copy, ptr %11, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !335
  br label %28

27:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1062, ptr noundef nonnull @.str.12) #23
  br label %28

28:                                               ; preds = %24, %27, %15
  %29 = phi ptr [ %17, %15 ], [ %26, %24 ], [ %10, %27 ]
  %30 = phi ptr [ %19, %15 ], [ %13, %24 ], [ %9, %27 ]
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %32, label %40, !prof !344

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ira_allocno_copy, ptr %11, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !322
  %35 = icmp eq ptr %34, %2
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ira_allocno_copy, ptr %11, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !323
  %39 = icmp eq ptr %38, %3
  br i1 %39, label %42, label %40

40:                                               ; preds = %28, %32, %36
  %41 = icmp eq ptr %29, null
  br i1 %41, label %42, label %8, !prof !345, !llvm.loop !346

42:                                               ; preds = %36, %40, %4
  %43 = phi ptr [ null, %4 ], [ null, %40 ], [ %11, %36 ]
  ret ptr %43
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !268 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !221
  tail call fastcc void @print_copy(ptr noundef %2, ptr noundef %0) #24
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !268 !PGOFuncName !347 {
  %3 = load i32, ptr %1, align 8, !tbaa !316
  %4 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !318
  %6 = load i32, ptr %5, align 8, !tbaa !235
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !225
  %9 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !319
  %11 = load i32, ptr %10, align 8, !tbaa !235
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !225
  %14 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !320
  %16 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !322
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 4
  %21 = load i8, ptr %20, align 4, !tbaa !321
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, ptr @.str.16, ptr @.str.15
  br label %24

24:                                               ; preds = %2, %19
  %25 = phi ptr [ %23, %19 ], [ @.str.14, %2 ]
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef %6, i32 noundef %8, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %25) #24
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_copies() local_unnamed_addr #6 !prof !268 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !221
  tail call fastcc void @print_copies(ptr noundef %1) #24
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_copies(ptr nocapture noundef %0) unnamed_addr #6 !prof !268 !PGOFuncName !348 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_copy_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  call fastcc void @ira_copy_iter_init(ptr noundef nonnull %3) #24
  %4 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !269
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1, %6
  %7 = load ptr, ptr %2, align 8, !tbaa !221
  tail call fastcc void @print_copy(ptr noundef %0, ptr noundef %7) #24
  %8 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !269
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %6, !llvm.loop !349

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_debug_allocno_copies(ptr noundef %0) local_unnamed_addr #0 !prof !268 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !221
  tail call fastcc void @print_allocno_copies(ptr noundef %2, ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_allocno_copies(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !268 !PGOFuncName !350 {
  %3 = load i32, ptr %1, align 8, !tbaa !235
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !225
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %3, i32 noundef %5) #24
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !250
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %2, %30
  %11 = phi ptr [ %32, %30 ], [ undef, %2 ]
  %12 = phi ptr [ %32, %30 ], [ %8, %2 ]
  %13 = phi ptr [ %31, %30 ], [ undef, %2 ]
  %14 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !318
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !332
  %20 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !319
  br label %30

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !319
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !335
  br label %30

29:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1268, ptr noundef nonnull @.str.12) #23
  br label %30

30:                                               ; preds = %26, %29, %17
  %31 = phi ptr [ %21, %17 ], [ %15, %26 ], [ %13, %29 ]
  %32 = phi ptr [ %19, %17 ], [ %28, %26 ], [ %11, %29 ]
  %33 = load i32, ptr %12, align 8, !tbaa !316
  %34 = load i32, ptr %31, align 8, !tbaa !235
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !225
  %37 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !320
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %33, i32 noundef %34, i32 noundef %36, i32 noundef %38) #24
  %40 = icmp eq ptr %32, null
  br i1 %40, label %41, label %10, !llvm.loop !351

41:                                               ; preds = %30, %2
  %42 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_allocate_cost_vector(i32 noundef %0) local_unnamed_addr #0 !prof !314 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !221
  %5 = tail call ptr @pool_alloc(ptr noundef %4) #23
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_traverse_loop_tree(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !352 {
  store ptr %1, ptr @ira_curr_loop_tree_node, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !232
  store ptr %6, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !221
  %7 = icmp eq ptr %2, null
  br i1 %7, label %9, label %8, !prof !353

8:                                                ; preds = %4
  tail call void %2(ptr noundef nonnull %1) #23
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq i8 %0, 0
  br i1 %10, label %29, label %11, !prof !354

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !221
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15, !prof !355

15:                                               ; preds = %11
  %16 = icmp eq ptr %3, null
  br label %17

17:                                               ; preds = %15, %25
  %18 = phi ptr [ %13, %15 ], [ %27, %25 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !272
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !356

21:                                               ; preds = %17
  br i1 %7, label %23, label %22, !prof !357

22:                                               ; preds = %21
  tail call void %2(ptr noundef nonnull %18) #23
  br label %23

23:                                               ; preds = %22, %21
  br i1 %16, label %25, label %24, !prof !358

24:                                               ; preds = %23
  tail call void %3(ptr noundef nonnull %18) #23
  br label %25

25:                                               ; preds = %17, %24, %23
  %26 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %18, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !221
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17, !prof !359, !llvm.loop !360

29:                                               ; preds = %25, %11, %9
  %30 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !221
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33, !prof !361

33:                                               ; preds = %29, %33
  %34 = phi ptr [ %36, %33 ], [ %31, %29 ]
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext %0, ptr noundef nonnull %34, ptr noundef %2, ptr noundef %3) #24
  %35 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !221
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %33, !prof !362, !llvm.loop !363

38:                                               ; preds = %33, %29
  store ptr %1, ptr @ira_curr_loop_tree_node, align 8, !tbaa !221
  %39 = load ptr, ptr %5, align 8, !tbaa !232
  store ptr %39, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !221
  %40 = icmp eq ptr %3, null
  br i1 %40, label %42, label %41, !prof !364

41:                                               ; preds = %38
  tail call void %3(ptr noundef nonnull %1) #23
  br label %42

42:                                               ; preds = %41, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_flattening(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !268 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ira_allocno_iterator, align 4
  %6 = alloca %struct.ira_copy_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  %7 = tail call i32 @max_reg_num() #23
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr @ira_allocate(i64 noundef %9) #23
  store ptr %10, ptr @regno_top_level_allocno_map, align 8, !tbaa !221
  %11 = tail call i32 @max_reg_num() #23
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %13, i1 false)
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #24
  %14 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #24, !range !269
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %36, %2
  %17 = load ptr, ptr %3, align 8, !tbaa !221
  %18 = icmp sgt i32 %0, 53
  br i1 %18, label %19, label %265

19:                                               ; preds = %16
  %20 = zext nneg i32 %0 to i64
  br label %39

21:                                               ; preds = %2, %36
  %22 = load ptr, ptr %3, align 8, !tbaa !221
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !274
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 26
  %28 = load i64, ptr %27, align 8, !tbaa !240
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 27
  store i64 %28, ptr %29, align 8, !tbaa !241
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 31
  %31 = load i16, ptr %30, align 4
  %32 = shl i16 %31, 1
  %33 = and i16 %32, 32
  %34 = and i16 %31, -33
  %35 = or disjoint i16 %33, %34
  store i16 %35, ptr %30, align 4
  br label %36

36:                                               ; preds = %26, %21
  %37 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #24, !range !269
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %16, label %21, !llvm.loop !365

39:                                               ; preds = %19, %258
  %40 = phi i64 [ %20, %19 ], [ %43, %258 ]
  %41 = phi i8 [ 0, %19 ], [ %259, %258 ]
  %42 = phi i8 [ 0, %19 ], [ %260, %258 ]
  %43 = add nsw i64 %40, -1
  %44 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !221
  %45 = getelementptr inbounds ptr, ptr %44, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !221
  %47 = icmp eq ptr %46, null
  br i1 %47, label %258, label %48

48:                                               ; preds = %39, %244
  %49 = phi ptr [ %249, %244 ], [ %46, %39 ]
  %50 = phi i8 [ %247, %244 ], [ %41, %39 ]
  %51 = phi i8 [ %246, %244 ], [ %42, %39 ]
  %52 = phi i8 [ %245, %244 ], [ 0, %39 ]
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 31
  %54 = load i16, ptr %53, align 4
  %55 = and i16 %54, 2
  %56 = icmp eq i16 %55, 0
  %57 = select i1 %56, i8 %50, i8 1
  %58 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 16
  %59 = load ptr, ptr %58, align 8, !tbaa !366
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !229
  %64 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %63, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !367
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %65, i64 0, i32 9
  %69 = load ptr, ptr %68, align 8, !tbaa !232
  %70 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !225
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %69, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !221
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %67, %61, %48
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 15
  store ptr null, ptr %77, align 8, !tbaa !250
  %78 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !221
  %79 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !368
  %81 = tail call fastcc i32 @rhs_regno(ptr noundef %80) #24
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %78, i64 %82
  store ptr %49, ptr %83, align 8, !tbaa !221
  br label %244

84:                                               ; preds = %67
  %85 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 32
  %86 = load ptr, ptr %85, align 8, !tbaa !247
  %87 = icmp eq ptr %86, null
  %88 = select i1 %87, i8 %52, i8 1
  %89 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !368
  %91 = tail call fastcc i32 @rhs_regno(ptr noundef %90) #24
  %92 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !368
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef %93) #24
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %108, label %96

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 7
  %98 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 29
  %99 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 14
  %100 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 33
  %101 = load ptr, ptr %100, align 8, !tbaa !369
  %102 = icmp eq ptr %101, null
  %103 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 35
  %104 = load ptr, ptr %103, align 8, !tbaa !370
  %105 = icmp eq ptr %104, null
  %106 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 10
  %107 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 12
  br label %157

108:                                              ; preds = %84
  %109 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 27
  %110 = load i64, ptr %109, align 8, !tbaa !241
  %111 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 27
  %112 = load i64, ptr %111, align 8, !tbaa !241
  %113 = or i64 %112, %110
  store i64 %113, ptr %111, align 8, !tbaa !241
  %114 = load i16, ptr %53, align 4
  %115 = and i16 %114, 32
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 31
  %119 = load i16, ptr %118, align 4
  %120 = or i16 %119, 32
  store i16 %120, ptr %118, align 4
  br label %121

121:                                              ; preds = %117, %108
  %122 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !234
  %123 = icmp sgt i32 %122, 4
  %124 = load ptr, ptr @ira_dump_file, align 8
  %125 = icmp ne ptr %124, null
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load i32, ptr %49, align 8, !tbaa !235
  %129 = load ptr, ptr %89, align 8, !tbaa !368
  %130 = tail call fastcc i32 @rhs_regno(ptr noundef %129) #24
  %131 = load i32, ptr %74, align 8, !tbaa !235
  %132 = tail call fastcc i32 @rhs_regno(ptr noundef %93) #24
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %124, ptr noundef nonnull @.str.5, i32 noundef %128, i32 noundef %130, i32 noundef %131, i32 noundef %132) #24
  %134 = load ptr, ptr @ira_dump_file, align 8, !tbaa !221
  %135 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 20
  %136 = load ptr, ptr %135, align 8, !tbaa !254
  tail call void @ira_print_live_range_list(ptr noundef %134, ptr noundef %136) #23
  br label %137

137:                                              ; preds = %127, %121
  %138 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 20
  %139 = load ptr, ptr %138, align 8, !tbaa !254
  tail call fastcc void @change_allocno_in_range_list(ptr noundef %139, ptr noundef nonnull %74) #24
  %140 = load ptr, ptr %138, align 8, !tbaa !254
  %141 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 20
  %142 = load ptr, ptr %141, align 8, !tbaa !254
  %143 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %140, ptr noundef %142) #24
  store ptr %143, ptr %141, align 8, !tbaa !254
  store ptr null, ptr %138, align 8, !tbaa !254
  %144 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 31
  %145 = load i16, ptr %144, align 4
  %146 = and i16 %145, 1
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %137
  %149 = load i16, ptr %53, align 4
  %150 = and i16 %149, 1
  %151 = icmp ne i16 %150, 0
  br label %152

152:                                              ; preds = %148, %137
  %153 = phi i1 [ true, %137 ], [ %151, %148 ]
  %154 = zext i1 %153 to i16
  %155 = and i16 %145, -2
  %156 = or disjoint i16 %155, %154
  store i16 %156, ptr %144, align 4
  br label %244

157:                                              ; preds = %96, %229
  %158 = phi ptr [ %236, %229 ], [ %74, %96 ]
  %159 = getelementptr inbounds %struct.ira_allocno, ptr %158, i64 0, i32 7
  %160 = load <2 x i32>, ptr %97, align 8, !tbaa !234
  %161 = load <2 x i32>, ptr %159, align 8, !tbaa !234
  %162 = sub nsw <2 x i32> %161, %160
  store <2 x i32> %162, ptr %159, align 8, !tbaa !234
  %163 = getelementptr inbounds %struct.ira_allocno, ptr %158, i64 0, i32 29
  %164 = load <2 x i32>, ptr %98, align 4, !tbaa !234
  %165 = load <2 x i32>, ptr %163, align 4, !tbaa !234
  %166 = sub nsw <2 x i32> %165, %164
  store <2 x i32> %166, ptr %163, align 4, !tbaa !234
  %167 = load i32, ptr %99, align 4, !tbaa !371
  %168 = getelementptr inbounds %struct.ira_allocno, ptr %158, i64 0, i32 14
  %169 = load i32, ptr %168, align 4, !tbaa !371
  %170 = sub nsw i32 %169, %167
  store i32 %170, ptr %168, align 4, !tbaa !371
  %171 = getelementptr inbounds %struct.ira_allocno, ptr %158, i64 0, i32 9
  %172 = load i32, ptr %171, align 8, !tbaa !265
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !234
  br i1 %102, label %193, label %176

176:                                              ; preds = %157
  %177 = getelementptr inbounds %struct.ira_allocno, ptr %158, i64 0, i32 33
  %178 = load ptr, ptr %177, align 8, !tbaa !369
  %179 = icmp ne ptr %178, null
  %180 = icmp sgt i32 %175, 0
  %181 = select i1 %179, i1 %180, i1 false
  br i1 %181, label %182, label %193

182:                                              ; preds = %176
  %183 = zext nneg i32 %175 to i64
  br label %184

184:                                              ; preds = %182, %184
  %185 = phi i64 [ 0, %182 ], [ %191, %184 ]
  %186 = getelementptr inbounds i32, ptr %101, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !234
  %188 = getelementptr inbounds i32, ptr %178, i64 %185
  %189 = load i32, ptr %188, align 4, !tbaa !234
  %190 = sub nsw i32 %189, %187
  store i32 %190, ptr %188, align 4, !tbaa !234
  %191 = add nuw nsw i64 %185, 1
  %192 = icmp eq i64 %191, %183
  br i1 %192, label %193, label %184, !llvm.loop !372

193:                                              ; preds = %184, %176, %157
  br i1 %105, label %211, label %194

194:                                              ; preds = %193
  %195 = getelementptr inbounds %struct.ira_allocno, ptr %158, i64 0, i32 35
  %196 = load ptr, ptr %195, align 8, !tbaa !370
  %197 = icmp ne ptr %196, null
  %198 = icmp sgt i32 %175, 0
  %199 = select i1 %197, i1 %198, i1 false
  br i1 %199, label %200, label %211

200:                                              ; preds = %194
  %201 = zext nneg i32 %175 to i64
  br label %202

202:                                              ; preds = %200, %202
  %203 = phi i64 [ 0, %200 ], [ %209, %202 ]
  %204 = getelementptr inbounds i32, ptr %104, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !234
  %206 = getelementptr inbounds i32, ptr %196, i64 %203
  %207 = load i32, ptr %206, align 4, !tbaa !234
  %208 = sub nsw i32 %207, %205
  store i32 %208, ptr %206, align 4, !tbaa !234
  %209 = add nuw nsw i64 %203, 1
  %210 = icmp eq i64 %209, %201
  br i1 %210, label %211, label %202, !llvm.loop !373

211:                                              ; preds = %202, %194, %193
  %212 = load i32, ptr %106, align 4, !tbaa !374
  %213 = getelementptr inbounds %struct.ira_allocno, ptr %158, i64 0, i32 10
  %214 = load i32, ptr %213, align 4, !tbaa !374
  %215 = sub nsw i32 %214, %212
  store i32 %215, ptr %213, align 4, !tbaa !374
  %216 = load i32, ptr %107, align 4, !tbaa !375
  %217 = getelementptr inbounds %struct.ira_allocno, ptr %158, i64 0, i32 12
  %218 = load i32, ptr %217, align 4, !tbaa !375
  %219 = sub nsw i32 %218, %216
  store i32 %219, ptr %217, align 4, !tbaa !375
  %220 = getelementptr inbounds %struct.ira_allocno, ptr %158, i64 0, i32 16
  %221 = load ptr, ptr %220, align 8, !tbaa !366
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %238

223:                                              ; preds = %211
  %224 = getelementptr inbounds %struct.ira_allocno, ptr %158, i64 0, i32 6
  %225 = load ptr, ptr %224, align 8, !tbaa !229
  %226 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %225, i64 0, i32 6
  %227 = load ptr, ptr %226, align 8, !tbaa !367
  %228 = icmp eq ptr %227, null
  br i1 %228, label %238, label %229

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %227, i64 0, i32 9
  %231 = load ptr, ptr %230, align 8, !tbaa !232
  %232 = getelementptr inbounds %struct.ira_allocno, ptr %158, i64 0, i32 1
  %233 = load i32, ptr %232, align 4, !tbaa !225
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds ptr, ptr %231, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !221
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %157

238:                                              ; preds = %211, %223, %229
  %239 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 15
  store ptr null, ptr %239, align 8, !tbaa !250
  %240 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !221
  %241 = tail call fastcc i32 @rhs_regno(ptr noundef %90) #24
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds ptr, ptr %240, i64 %242
  store ptr %49, ptr %243, align 8, !tbaa !221
  br label %244

244:                                              ; preds = %238, %152, %76
  %245 = phi i8 [ %52, %76 ], [ %88, %152 ], [ %88, %238 ]
  %246 = phi i8 [ %51, %76 ], [ 1, %152 ], [ %51, %238 ]
  %247 = phi i8 [ %57, %76 ], [ %57, %152 ], [ 1, %238 ]
  %248 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 5
  %249 = load ptr, ptr %248, align 8, !tbaa !221
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %48, !llvm.loop !376

251:                                              ; preds = %244
  %252 = icmp eq i8 %245, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %251
  %254 = trunc i64 %43 to i32
  %255 = tail call fastcc zeroext i8 @copy_info_to_removed_store_destinations(i32 noundef %254) #24, !range !269
  %256 = icmp eq i8 %255, 0
  %257 = select i1 %256, i8 %246, i8 1
  br label %258

258:                                              ; preds = %39, %253, %251
  %259 = phi i8 [ %247, %251 ], [ %247, %253 ], [ %41, %39 ]
  %260 = phi i8 [ %246, %251 ], [ %257, %253 ], [ %42, %39 ]
  %261 = icmp sgt i64 %40, 54
  br i1 %261, label %39, label %262, !llvm.loop !377

262:                                              ; preds = %258
  %263 = icmp eq i8 %260, 0
  %264 = icmp eq i8 %259, 0
  br label %265

265:                                              ; preds = %262, %16
  %266 = phi ptr [ %17, %16 ], [ null, %262 ]
  %267 = phi i1 [ true, %16 ], [ %263, %262 ]
  %268 = phi i1 [ true, %16 ], [ %264, %262 ]
  store ptr %266, ptr %3, align 8, !tbaa !221
  %269 = load i32, ptr @ira_max_point, align 4
  %270 = icmp eq i32 %269, %1
  %271 = select i1 %267, i1 %270, i1 false
  br i1 %271, label %273, label %272

272:                                              ; preds = %265
  tail call void @ira_rebuild_start_finish_chains() #23
  br label %273

273:                                              ; preds = %265, %272
  br i1 %268, label %377, label %274

274:                                              ; preds = %273
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #24
  %275 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #24, !range !269
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %299, label %277

277:                                              ; preds = %274
  %278 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !221
  br label %279

279:                                              ; preds = %277, %293
  %280 = phi ptr [ %278, %277 ], [ %294, %293 ]
  %281 = load ptr, ptr %3, align 8, !tbaa !221
  %282 = getelementptr inbounds %struct.ira_allocno, ptr %281, i64 0, i32 4
  %283 = load ptr, ptr %282, align 8, !tbaa !368
  %284 = tail call fastcc i32 @rhs_regno(ptr noundef %283) #24
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds ptr, ptr %280, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !221
  %288 = icmp eq ptr %281, %287
  br i1 %288, label %289, label %293

289:                                              ; preds = %279
  %290 = getelementptr inbounds %struct.ira_allocno, ptr %281, i64 0, i32 17
  %291 = load ptr, ptr %290, align 8, !tbaa !274
  %292 = icmp eq ptr %291, null
  br i1 %292, label %297, label %293

293:                                              ; preds = %279, %289, %297
  %294 = phi ptr [ %280, %279 ], [ %280, %289 ], [ %298, %297 ]
  %295 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #24, !range !269
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %299, label %279, !llvm.loop !378

297:                                              ; preds = %289
  tail call fastcc void @clear_allocno_conflicts(ptr noundef nonnull %281) #24
  %298 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !221
  br label %293

299:                                              ; preds = %293, %274
  %300 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !234
  %301 = tail call ptr @sparseset_alloc(i32 noundef %300) #23
  %302 = load ptr, ptr %3, align 8, !tbaa !221
  %303 = load i32, ptr @ira_max_point, align 4, !tbaa !234
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %375

305:                                              ; preds = %299, %370
  %306 = phi i64 [ %371, %370 ], [ 0, %299 ]
  %307 = phi ptr [ %358, %370 ], [ %302, %299 ]
  %308 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !221
  %309 = getelementptr inbounds ptr, ptr %308, i64 %306
  %310 = load ptr, ptr %309, align 8, !tbaa !221
  %311 = icmp eq ptr %310, null
  br i1 %311, label %357, label %312

312:                                              ; preds = %305, %353
  %313 = phi ptr [ %355, %353 ], [ %310, %305 ]
  %314 = load ptr, ptr %313, align 8, !tbaa !276
  %315 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !221
  %316 = getelementptr inbounds %struct.ira_allocno, ptr %314, i64 0, i32 4
  %317 = load ptr, ptr %316, align 8, !tbaa !368
  %318 = tail call fastcc i32 @rhs_regno(ptr noundef %317) #24
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds ptr, ptr %315, i64 %319
  %321 = load ptr, ptr %320, align 8, !tbaa !221
  %322 = icmp eq ptr %314, %321
  br i1 %322, label %323, label %353

323:                                              ; preds = %312
  %324 = getelementptr inbounds %struct.ira_allocno, ptr %314, i64 0, i32 17
  %325 = load ptr, ptr %324, align 8, !tbaa !274
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %353

327:                                              ; preds = %323
  %328 = load i32, ptr %314, align 8, !tbaa !235
  %329 = getelementptr inbounds %struct.ira_allocno, ptr %314, i64 0, i32 9
  %330 = load i32, ptr %329, align 8, !tbaa !265
  tail call fastcc void @sparseset_set_bit(ptr noundef %301, i32 noundef %328) #24
  tail call fastcc void @sparseset_iter_init(ptr noundef %301) #24
  %331 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %301) #24, !range !269
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %353, label %333

333:                                              ; preds = %327
  %334 = zext i32 %330 to i64
  br label %335

335:                                              ; preds = %333, %350
  %336 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %301) #24
  %337 = load ptr, ptr @ira_allocnos, align 8, !tbaa !221
  %338 = zext i32 %336 to i64
  %339 = getelementptr inbounds ptr, ptr %337, i64 %338
  %340 = load ptr, ptr %339, align 8, !tbaa !221
  %341 = getelementptr inbounds %struct.ira_allocno, ptr %340, i64 0, i32 9
  %342 = load i32, ptr %341, align 8, !tbaa !265
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %334, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !379
  %346 = icmp eq i8 %345, 0
  %347 = icmp eq i32 %328, %336
  %348 = or i1 %347, %346
  br i1 %348, label %350, label %349

349:                                              ; preds = %335
  tail call void @ira_add_allocno_conflict(ptr noundef nonnull %314, ptr noundef nonnull %340) #24
  br label %350

350:                                              ; preds = %349, %335
  tail call fastcc void @sparseset_iter_next(ptr noundef %301) #24
  %351 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %301) #24, !range !269
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %353, label %335, !llvm.loop !380

353:                                              ; preds = %350, %327, %312, %323
  %354 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %313, i64 0, i32 4
  %355 = load ptr, ptr %354, align 8, !tbaa !221
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %312, !llvm.loop !381

357:                                              ; preds = %353, %305
  %358 = phi ptr [ %307, %305 ], [ %314, %353 ]
  %359 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !221
  %360 = getelementptr inbounds ptr, ptr %359, i64 %306
  %361 = load ptr, ptr %360, align 8, !tbaa !221
  %362 = icmp eq ptr %361, null
  br i1 %362, label %370, label %363

363:                                              ; preds = %357, %363
  %364 = phi ptr [ %368, %363 ], [ %361, %357 ]
  %365 = load ptr, ptr %364, align 8, !tbaa !276
  %366 = load i32, ptr %365, align 8, !tbaa !235
  tail call void @sparseset_clear_bit(ptr noundef %301, i32 noundef %366) #23
  %367 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %364, i64 0, i32 5
  %368 = load ptr, ptr %367, align 8, !tbaa !221
  %369 = icmp eq ptr %368, null
  br i1 %369, label %370, label %363, !llvm.loop !382

370:                                              ; preds = %363, %357
  %371 = add nuw nsw i64 %306, 1
  %372 = load i32, ptr @ira_max_point, align 4, !tbaa !234
  %373 = sext i32 %372 to i64
  %374 = icmp slt i64 %371, %373
  br i1 %374, label %305, label %375, !llvm.loop !383

375:                                              ; preds = %370, %299
  %376 = phi ptr [ %302, %299 ], [ %358, %370 ]
  store ptr %376, ptr %3, align 8, !tbaa !221
  tail call void @free(ptr noundef %301) #24
  tail call fastcc void @compress_conflict_vecs() #24
  br label %377

377:                                              ; preds = %375, %273
  call fastcc void @ira_copy_iter_init(ptr noundef nonnull %6) #24
  %378 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %4) #24, !range !269
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %482, label %380

380:                                              ; preds = %377, %419
  %381 = load ptr, ptr %4, align 8, !tbaa !221
  %382 = getelementptr inbounds %struct.ira_allocno_copy, ptr %381, i64 0, i32 1
  %383 = load ptr, ptr %382, align 8, !tbaa !318
  %384 = getelementptr inbounds %struct.ira_allocno, ptr %383, i64 0, i32 17
  %385 = load ptr, ptr %384, align 8, !tbaa !274
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %393

387:                                              ; preds = %380
  %388 = getelementptr inbounds %struct.ira_allocno_copy, ptr %381, i64 0, i32 2
  %389 = load ptr, ptr %388, align 8, !tbaa !319
  %390 = getelementptr inbounds %struct.ira_allocno, ptr %389, i64 0, i32 17
  %391 = load ptr, ptr %390, align 8, !tbaa !274
  %392 = icmp eq ptr %391, null
  br i1 %392, label %422, label %393

393:                                              ; preds = %387, %380
  %394 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !234
  %395 = icmp sgt i32 %394, 4
  %396 = load ptr, ptr @ira_dump_file, align 8
  %397 = icmp ne ptr %396, null
  %398 = select i1 %395, i1 %397, i1 false
  br i1 %398, label %399, label %417

399:                                              ; preds = %393
  %400 = load i32, ptr %381, align 8, !tbaa !316
  %401 = select i1 %386, i32 97, i32 99
  %402 = load i32, ptr %383, align 8, !tbaa !235
  %403 = getelementptr inbounds %struct.ira_allocno, ptr %383, i64 0, i32 4
  %404 = load ptr, ptr %403, align 8, !tbaa !368
  %405 = tail call fastcc i32 @rhs_regno(ptr noundef %404) #24
  %406 = getelementptr inbounds %struct.ira_allocno_copy, ptr %381, i64 0, i32 2
  %407 = load ptr, ptr %406, align 8, !tbaa !319
  %408 = getelementptr inbounds %struct.ira_allocno, ptr %407, i64 0, i32 17
  %409 = load ptr, ptr %408, align 8, !tbaa !274
  %410 = icmp eq ptr %409, null
  %411 = select i1 %410, i32 97, i32 99
  %412 = load i32, ptr %407, align 8, !tbaa !235
  %413 = getelementptr inbounds %struct.ira_allocno, ptr %407, i64 0, i32 4
  %414 = load ptr, ptr %413, align 8, !tbaa !368
  %415 = tail call fastcc i32 @rhs_regno(ptr noundef %414) #24
  %416 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %396, ptr noundef nonnull @.str.6, i32 noundef %400, i32 noundef %401, i32 noundef %402, i32 noundef %405, i32 noundef %411, i32 noundef %412, i32 noundef %415) #24
  br label %417

417:                                              ; preds = %399, %393
  %418 = getelementptr inbounds %struct.ira_allocno_copy, ptr %381, i64 0, i32 10
  store ptr null, ptr %418, align 8, !tbaa !323
  br label %419

419:                                              ; preds = %467, %475, %469, %417
  %420 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %4) #24, !range !269
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %482, label %380, !llvm.loop !384

422:                                              ; preds = %387
  %423 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !221
  %424 = getelementptr inbounds %struct.ira_allocno, ptr %383, i64 0, i32 4
  %425 = load ptr, ptr %424, align 8, !tbaa !368
  %426 = tail call fastcc i32 @rhs_regno(ptr noundef %425) #24
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds ptr, ptr %423, i64 %427
  %429 = load ptr, ptr %428, align 8, !tbaa !221
  %430 = getelementptr inbounds %struct.ira_allocno, ptr %389, i64 0, i32 4
  %431 = load ptr, ptr %430, align 8, !tbaa !368
  %432 = tail call fastcc i32 @rhs_regno(ptr noundef %431) #24
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds ptr, ptr %423, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !221
  %436 = getelementptr inbounds %struct.ira_allocno_copy, ptr %381, i64 0, i32 10
  %437 = load ptr, ptr %436, align 8, !tbaa !323
  %438 = icmp eq ptr %437, null
  br i1 %438, label %467, label %439

439:                                              ; preds = %422
  %440 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %437, i64 0, i32 9
  %441 = load ptr, ptr %440, align 8, !tbaa !232
  %442 = getelementptr inbounds %struct.ira_allocno, ptr %383, i64 0, i32 1
  %443 = load i32, ptr %442, align 4, !tbaa !225
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds ptr, ptr %441, i64 %444
  %446 = load ptr, ptr %445, align 8, !tbaa !221
  %447 = getelementptr inbounds %struct.ira_allocno, ptr %429, i64 0, i32 4
  %448 = load ptr, ptr %447, align 8, !tbaa !368
  %449 = tail call fastcc i32 @rhs_regno(ptr noundef %448) #24
  %450 = getelementptr inbounds %struct.ira_allocno, ptr %446, i64 0, i32 4
  %451 = load ptr, ptr %450, align 8, !tbaa !368
  %452 = tail call fastcc i32 @rhs_regno(ptr noundef %451) #24
  %453 = icmp eq i32 %449, %452
  br i1 %453, label %454, label %469

454:                                              ; preds = %439
  %455 = getelementptr inbounds %struct.ira_allocno, ptr %389, i64 0, i32 1
  %456 = load i32, ptr %455, align 4, !tbaa !225
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds ptr, ptr %441, i64 %457
  %459 = load ptr, ptr %458, align 8, !tbaa !221
  %460 = getelementptr inbounds %struct.ira_allocno, ptr %435, i64 0, i32 4
  %461 = load ptr, ptr %460, align 8, !tbaa !368
  %462 = tail call fastcc i32 @rhs_regno(ptr noundef %461) #24
  %463 = getelementptr inbounds %struct.ira_allocno, ptr %459, i64 0, i32 4
  %464 = load ptr, ptr %463, align 8, !tbaa !368
  %465 = tail call fastcc i32 @rhs_regno(ptr noundef %464) #24
  %466 = icmp eq i32 %462, %465
  br i1 %466, label %467, label %469

467:                                              ; preds = %422, %454
  %468 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !221
  store ptr %468, ptr %436, align 8, !tbaa !323
  store ptr %429, ptr %382, align 8, !tbaa !318
  store ptr %435, ptr %388, align 8, !tbaa !319
  br label %419

469:                                              ; preds = %439, %454
  store ptr null, ptr %436, align 8, !tbaa !323
  %470 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !234
  %471 = icmp sgt i32 %470, 4
  %472 = load ptr, ptr @ira_dump_file, align 8
  %473 = icmp ne ptr %472, null
  %474 = select i1 %471, i1 %473, i1 false
  br i1 %474, label %475, label %419

475:                                              ; preds = %469
  %476 = load i32, ptr %381, align 8, !tbaa !316
  %477 = load i32, ptr %383, align 8, !tbaa !235
  %478 = tail call fastcc i32 @rhs_regno(ptr noundef %425) #24
  %479 = load i32, ptr %389, align 8, !tbaa !235
  %480 = tail call fastcc i32 @rhs_regno(ptr noundef %431) #24
  %481 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %472, ptr noundef nonnull @.str.7, i32 noundef %476, i32 noundef %477, i32 noundef %478, i32 noundef %479, i32 noundef %480) #24
  br label %419

482:                                              ; preds = %419, %377
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #24
  %483 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #24, !range !269
  %484 = icmp eq i8 %483, 0
  br i1 %484, label %529, label %485

485:                                              ; preds = %482, %509
  %486 = load ptr, ptr %3, align 8, !tbaa !221
  %487 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !221
  %488 = getelementptr inbounds %struct.ira_allocno, ptr %486, i64 0, i32 4
  %489 = load ptr, ptr %488, align 8, !tbaa !368
  %490 = tail call fastcc i32 @rhs_regno(ptr noundef %489) #24
  %491 = zext i32 %490 to i64
  %492 = getelementptr inbounds ptr, ptr %487, i64 %491
  %493 = load ptr, ptr %492, align 8, !tbaa !221
  %494 = icmp eq ptr %486, %493
  br i1 %494, label %495, label %499

495:                                              ; preds = %485
  %496 = getelementptr inbounds %struct.ira_allocno, ptr %486, i64 0, i32 17
  %497 = load ptr, ptr %496, align 8, !tbaa !274
  %498 = icmp eq ptr %497, null
  br i1 %498, label %512, label %499

499:                                              ; preds = %495, %485
  %500 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !234
  %501 = icmp sgt i32 %500, 4
  %502 = load ptr, ptr @ira_dump_file, align 8
  %503 = icmp ne ptr %502, null
  %504 = select i1 %501, i1 %503, i1 false
  br i1 %504, label %505, label %508

505:                                              ; preds = %499
  %506 = load i32, ptr %486, align 8, !tbaa !235
  %507 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %502, ptr noundef nonnull @.str.8, i32 noundef %506, i32 noundef %490) #24
  br label %508

508:                                              ; preds = %505, %499
  tail call fastcc void @finish_allocno(ptr noundef nonnull %486) #24
  br label %509

509:                                              ; preds = %512, %528, %508
  %510 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #24, !range !269
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %529, label %485, !llvm.loop !385

512:                                              ; preds = %495
  %513 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !221
  %514 = getelementptr inbounds %struct.ira_allocno, ptr %486, i64 0, i32 6
  store ptr %513, ptr %514, align 8, !tbaa !229
  %515 = tail call fastcc i32 @rhs_regno(ptr noundef %489) #24
  %516 = getelementptr inbounds %struct.ira_allocno, ptr %486, i64 0, i32 1
  store i32 %515, ptr %516, align 4, !tbaa !225
  %517 = getelementptr inbounds %struct.ira_allocno, ptr %486, i64 0, i32 16
  store ptr null, ptr %517, align 8, !tbaa !366
  %518 = getelementptr inbounds %struct.ira_allocno, ptr %486, i64 0, i32 12
  %519 = load i32, ptr %518, align 4, !tbaa !375
  %520 = getelementptr inbounds %struct.ira_allocno, ptr %486, i64 0, i32 13
  store i32 %519, ptr %520, align 8, !tbaa !386
  %521 = getelementptr inbounds %struct.ira_allocno, ptr %486, i64 0, i32 10
  %522 = load i32, ptr %521, align 4, !tbaa !374
  %523 = getelementptr inbounds %struct.ira_allocno, ptr %486, i64 0, i32 11
  store i32 %522, ptr %523, align 8, !tbaa !387
  %524 = getelementptr inbounds %struct.ira_allocno, ptr %486, i64 0, i32 31
  %525 = load i16, ptr %524, align 4
  %526 = and i16 %525, 256
  %527 = icmp eq i16 %526, 0
  br i1 %527, label %528, label %509

528:                                              ; preds = %512
  tail call void @ira_free_allocno_updated_costs(ptr noundef nonnull %486) #24
  br label %509

529:                                              ; preds = %509, %482
  call fastcc void @ira_copy_iter_init(ptr noundef nonnull %6) #24
  %530 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %4) #24, !range !269
  %531 = icmp eq i8 %530, 0
  br i1 %531, label %546, label %532

532:                                              ; preds = %529, %542
  %533 = load ptr, ptr %4, align 8, !tbaa !221
  %534 = getelementptr inbounds %struct.ira_allocno_copy, ptr %533, i64 0, i32 10
  %535 = load ptr, ptr %534, align 8, !tbaa !323
  %536 = icmp eq ptr %535, null
  br i1 %536, label %537, label %545

537:                                              ; preds = %532
  %538 = load ptr, ptr @ira_copies, align 8, !tbaa !221
  %539 = load i32, ptr %533, align 8, !tbaa !316
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds ptr, ptr %538, i64 %540
  store ptr null, ptr %541, align 8, !tbaa !221
  tail call fastcc void @finish_copy(ptr noundef nonnull %533) #24
  br label %542

542:                                              ; preds = %537, %545
  %543 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %4) #24, !range !269
  %544 = icmp eq i8 %543, 0
  br i1 %544, label %546, label %532, !llvm.loop !388

545:                                              ; preds = %532
  tail call void @ira_add_allocno_copy_to_list(ptr noundef nonnull %533) #24
  tail call void @ira_swap_allocno_copy_ends_if_necessary(ptr noundef nonnull %533) #24
  br label %542

546:                                              ; preds = %542, %529
  tail call fastcc void @rebuild_regno_allocno_maps() #24
  %547 = load i32, ptr @ira_max_point, align 4, !tbaa !234
  %548 = icmp eq i32 %547, %1
  br i1 %548, label %550, label %549

549:                                              ; preds = %546
  tail call void @ira_compress_allocno_live_ranges() #23
  br label %550

550:                                              ; preds = %549, %546
  %551 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !221
  tail call void @ira_free(ptr noundef %551) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #11 !prof !389 !PGOFuncName !390 {
  store i32 0, ptr %0, align 4, !tbaa !391
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #12 !prof !393 !PGOFuncName !394 {
  %3 = load i32, ptr %0, align 4, !tbaa !391
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !234
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !395

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !221
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !221
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !396

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !221
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !391
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !397, !llvm.loop !398

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !399 !PGOFuncName !400 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !379
  ret i32 %3
}

; Function Attrs: optsize
declare void @ira_print_live_range_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @change_allocno_in_range_list(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !268 !PGOFuncName !401 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %2 ]
  store ptr %1, ptr %5, align 8, !tbaa !276
  %6 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !280
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !402

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @copy_info_to_removed_store_destinations(i32 noundef %0) unnamed_addr #0 !prof !268 !PGOFuncName !403 {
  %2 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !221
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  %6 = icmp eq ptr %5, null
  br i1 %6, label %102, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !221
  br label %9

9:                                                ; preds = %7, %96
  %10 = phi ptr [ %97, %96 ], [ %8, %7 ]
  %11 = phi ptr [ %100, %96 ], [ %5, %7 ]
  %12 = phi i8 [ %98, %96 ], [ 0, %7 ]
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !368
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef %14) #24
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %10, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !221
  %19 = icmp eq ptr %11, %18
  br i1 %19, label %20, label %96

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !229
  %23 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !367
  %25 = icmp eq ptr %24, null
  br i1 %25, label %96, label %26

26:                                               ; preds = %20, %46
  %27 = phi ptr [ %48, %46 ], [ %24, %20 ]
  %28 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %27, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !232
  %30 = getelementptr inbounds ptr, ptr %29, i64 %3
  %31 = load ptr, ptr %30, align 8, !tbaa !221
  %32 = icmp eq ptr %31, null
  br i1 %32, label %96, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !368
  %36 = tail call fastcc i32 @rhs_regno(ptr noundef %35) #24
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %10, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !221
  %40 = icmp eq ptr %31, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 31
  %43 = load i16, ptr %42, align 4
  %44 = and i16 %43, 1
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %33, %41
  %47 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %27, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !367
  %49 = icmp eq ptr %48, null
  br i1 %49, label %96, label %26, !llvm.loop !404

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 31
  %52 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !234
  %53 = icmp sgt i32 %52, 4
  %54 = load ptr, ptr @ira_dump_file, align 8
  %55 = icmp ne ptr %54, null
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, ptr %11, align 8, !tbaa !235
  %59 = load i32, ptr %31, align 8, !tbaa !235
  %60 = tail call fastcc i32 @rhs_regno(ptr noundef %35) #24
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %54, ptr noundef nonnull @.str.20, i32 noundef %58, i32 noundef %15, i32 noundef %59, i32 noundef %60) #24
  %62 = load ptr, ptr @ira_dump_file, align 8, !tbaa !221
  %63 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 20
  %64 = load ptr, ptr %63, align 8, !tbaa !254
  tail call void @ira_print_live_range_list(ptr noundef %62, ptr noundef %64) #23
  br label %65

65:                                               ; preds = %57, %50
  %66 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 20
  %67 = load ptr, ptr %66, align 8, !tbaa !254
  %68 = tail call ptr @ira_copy_allocno_live_range_list(ptr noundef %67) #24
  tail call fastcc void @change_allocno_in_range_list(ptr noundef %68, ptr noundef nonnull %31) #24
  %69 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 20
  %70 = load ptr, ptr %69, align 8, !tbaa !254
  %71 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %68, ptr noundef %70) #24
  store ptr %71, ptr %69, align 8, !tbaa !254
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 27
  %73 = load i64, ptr %72, align 8, !tbaa !241
  %74 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 27
  %75 = load i64, ptr %74, align 8, !tbaa !241
  %76 = or i64 %75, %73
  store i64 %76, ptr %74, align 8, !tbaa !241
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 31
  %78 = load i16, ptr %77, align 4
  %79 = and i16 %78, 32
  %80 = icmp eq i16 %79, 0
  %81 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !221
  br i1 %80, label %85, label %82

82:                                               ; preds = %65
  %83 = load i16, ptr %51, align 4
  %84 = or i16 %83, 32
  store i16 %84, ptr %51, align 4
  br label %85

85:                                               ; preds = %82, %65
  %86 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 29
  %87 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 29
  %88 = load <2 x i32>, ptr %86, align 4, !tbaa !234
  %89 = load <2 x i32>, ptr %87, align 4, !tbaa !234
  %90 = add nsw <2 x i32> %89, %88
  store <2 x i32> %90, ptr %87, align 4, !tbaa !234
  %91 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 14
  %92 = load i32, ptr %91, align 4, !tbaa !371
  %93 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 14
  %94 = load i32, ptr %93, align 4, !tbaa !371
  %95 = add nsw i32 %94, %92
  store i32 %95, ptr %93, align 4, !tbaa !371
  br label %96

96:                                               ; preds = %46, %26, %20, %9, %85
  %97 = phi ptr [ %10, %9 ], [ %81, %85 ], [ %10, %20 ], [ %10, %26 ], [ %10, %46 ]
  %98 = phi i8 [ %12, %9 ], [ 1, %85 ], [ %12, %20 ], [ %12, %26 ], [ %12, %46 ]
  %99 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !221
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %9, !llvm.loop !405

102:                                              ; preds = %96, %1
  %103 = phi i8 [ 0, %1 ], [ %98, %96 ]
  ret i8 %103
}

; Function Attrs: optsize
declare void @ira_rebuild_start_finish_chains() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clear_allocno_conflicts(ptr nocapture noundef %0) unnamed_addr #14 !prof !268 !PGOFuncName !406 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 2048
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  store i32 0, ptr %7, align 8, !tbaa !238
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !237
  store ptr null, ptr %9, align 8, !tbaa !221
  br label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  %12 = load i32, ptr %11, align 4, !tbaa !267
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %16 = load i32, ptr %15, align 4, !tbaa !256
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %18 = load i32, ptr %17, align 8, !tbaa !255
  %19 = sub nsw i32 %16, %18
  %20 = sdiv i32 %19, 64
  %21 = add nsw i32 %20, 1
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !237
  %24 = sext i32 %21 to i64
  %25 = shl nsw i64 %24, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %23, i8 0, i64 %25, i1 false)
  br label %26

26:                                               ; preds = %10, %14, %6
  ret void
}

; Function Attrs: optsize
declare ptr @sparseset_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sparseset_set_bit(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !268 !PGOFuncName !407 {
  %3 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %0, i32 noundef %1) #24, !range !269
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !408
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !408
  tail call fastcc void @sparseset_insert_bit(ptr noundef %0, i32 noundef %1, i32 noundef %7) #24
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sparseset_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #11 !prof !268 !PGOFuncName !410 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 8, !tbaa !411
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  store i8 1, ptr %3, align 4, !tbaa !412
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 1, ptr %4, align 1, !tbaa !413
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @sparseset_iter_p(ptr nocapture noundef %0) unnamed_addr #15 !prof !268 !PGOFuncName !414 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !413
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !411
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !408
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %5, %1
  store i8 0, ptr %2, align 1, !tbaa !413
  br label %12

12:                                               ; preds = %5, %11
  %13 = phi i8 [ 0, %11 ], [ 1, %5 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @sparseset_iter_elm(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !268 !PGOFuncName !415 {
  %2 = load ptr, ptr %0, align 8, !tbaa !416
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !411
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !234
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sparseset_iter_next(ptr nocapture noundef %0) unnamed_addr #15 !prof !268 !PGOFuncName !417 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 4, !tbaa !412
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !411
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 8, !tbaa !411
  store i8 1, ptr %2, align 4, !tbaa !412
  ret void
}

; Function Attrs: optsize
declare void @sparseset_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compress_conflict_vecs() unnamed_addr #0 !prof !268 !PGOFuncName !418 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !234
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #23
  store ptr %6, ptr @allocno_conflict_check, align 8, !tbaa !221
  %7 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !234
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %9, i1 false)
  store i32 0, ptr @curr_allocno_conflict_check_tick, align 4, !tbaa !234
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %10 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %0, %19
  %13 = load ptr, ptr %1, align 8, !tbaa !221
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 31
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 2048
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call fastcc void @compress_allocno_conflict_vec(ptr noundef nonnull %13) #24
  br label %19

19:                                               ; preds = %18, %12
  %20 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %12, !llvm.loop !419

22:                                               ; preds = %19
  %23 = load ptr, ptr @allocno_conflict_check, align 8, !tbaa !221
  br label %24

24:                                               ; preds = %22, %0
  %25 = phi ptr [ %23, %22 ], [ %6, %0 ]
  tail call void @ira_free(ptr noundef %25) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_copy_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #11 !prof !420 !PGOFuncName !421 {
  store i32 0, ptr %0, align 4, !tbaa !391
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_copy_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #12 !prof !422 !PGOFuncName !423 {
  %3 = load i32, ptr %0, align 4, !tbaa !391
  %4 = load i32, ptr @ira_copies_num, align 4, !tbaa !234
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !424

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_copies, align 8, !tbaa !221
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !221
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !326

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !221
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !391
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !425, !llvm.loop !426

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_allocno(ptr noundef %0) unnamed_addr #0 !prof !220 !PGOFuncName !427 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !265
  %4 = load ptr, ptr @ira_allocnos, align 8, !tbaa !221
  %5 = load i32, ptr %0, align 8, !tbaa !235
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  store ptr null, ptr %7, align 8, !tbaa !221
  %8 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !221
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 24
  %10 = load i32, ptr %9, align 8, !tbaa !257
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  store ptr null, ptr %12, align 8, !tbaa !221
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !237
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !248

16:                                               ; preds = %1
  tail call void @ira_free(ptr noundef nonnull %14) #23
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 33
  %19 = load ptr, ptr %18, align 8, !tbaa !369
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !428

21:                                               ; preds = %17
  tail call void @ira_free_cost_vector(ptr noundef nonnull %19, i32 noundef %3) #24
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 35
  %24 = load ptr, ptr %23, align 8, !tbaa !370
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !429

26:                                               ; preds = %22
  tail call void @ira_free_cost_vector(ptr noundef nonnull %24, i32 noundef %3) #24
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 34
  %29 = load ptr, ptr %28, align 8, !tbaa !310
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !230

31:                                               ; preds = %27
  tail call void @ira_free_cost_vector(ptr noundef nonnull %29, i32 noundef %3) #24
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 36
  %34 = load ptr, ptr %33, align 8, !tbaa !312
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !230

36:                                               ; preds = %32
  tail call void @ira_free_cost_vector(ptr noundef nonnull %34, i32 noundef %3) #24
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 20
  %39 = load ptr, ptr %38, align 8, !tbaa !254
  tail call void @ira_finish_allocno_live_range_list(ptr noundef %39) #24
  %40 = load ptr, ptr @allocno_pool, align 8, !tbaa !221
  tail call void @pool_free(ptr noundef %40, ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_copy(ptr noundef %0) unnamed_addr #0 !prof !315 !PGOFuncName !430 {
  %2 = load ptr, ptr @copy_pool, align 8, !tbaa !221
  tail call void @pool_free(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rebuild_regno_allocno_maps() unnamed_addr #0 !prof !268 !PGOFuncName !431 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  %4 = tail call i32 @max_reg_num() #23
  %5 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %6 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #24, !range !432
  %7 = icmp eq i32 %6, 0
  %8 = sext i32 %4 to i64
  %9 = shl nsw i64 %8, 3
  br i1 %7, label %35, label %10

10:                                               ; preds = %0
  %11 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  br label %12

12:                                               ; preds = %10, %29
  %13 = phi ptr [ %5, %10 ], [ %30, %29 ]
  %14 = phi ptr [ %11, %10 ], [ %31, %29 ]
  %15 = phi i32 [ 0, %10 ], [ %32, %29 ]
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %14, i64 %16, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !232
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %12
  tail call void @ira_free(ptr noundef nonnull %18) #23
  %21 = tail call ptr @ira_allocate(i64 noundef %9) #23
  %22 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %23 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %22, i64 %16, i32 9
  store ptr %21, ptr %23, align 8, !tbaa !232
  %24 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %25 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %24, i64 %16, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !232
  tail call void @llvm.memset.p0.i64(ptr align 8 %26, i8 0, i64 %9, i1 false)
  %27 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %28 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  br label %29

29:                                               ; preds = %12, %20
  %30 = phi ptr [ %13, %12 ], [ %28, %20 ]
  %31 = phi ptr [ %14, %12 ], [ %27, %20 ]
  %32 = add i32 %15, 1
  %33 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %30, i32 noundef %32, ptr noundef nonnull %2) #24, !range !432
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %12, !llvm.loop !433

35:                                               ; preds = %29, %0
  %36 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !221
  tail call void @ira_free(ptr noundef %36) #23
  %37 = tail call ptr @ira_allocate(i64 noundef %9) #23
  store ptr %37, ptr @ira_regno_allocno_map, align 8, !tbaa !221
  tail call void @llvm.memset.p0.i64(ptr align 8 %37, i8 0, i64 %9, i1 false)
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #24
  %38 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %1) #24, !range !269
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %35, %61
  %41 = load ptr, ptr %1, align 8, !tbaa !221
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !274
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !225
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !229
  %50 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !221
  %51 = sext i32 %47 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !221
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 5
  store ptr %53, ptr %54, align 8, !tbaa !231
  store ptr %41, ptr %52, align 8, !tbaa !221
  %55 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %49, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !232
  %57 = getelementptr inbounds ptr, ptr %56, i64 %51
  %58 = load ptr, ptr %57, align 8, !tbaa !221
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  store ptr %41, ptr %57, align 8, !tbaa !221
  br label %61

61:                                               ; preds = %45, %60, %40
  %62 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %1) #24, !range !269
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %40, !llvm.loop !434

64:                                               ; preds = %61, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: optsize
declare void @ira_compress_allocno_live_ranges() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ira_build(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !420 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_iterator, align 4
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ira_allocno_iterator, align 4
  tail call void @df_analyze() #23
  tail call fastcc void @initiate_cost_vectors() #24
  tail call fastcc void @initiate_allocnos() #24
  tail call fastcc void @initiate_copies() #24
  tail call fastcc void @create_loop_tree_nodes(i8 noundef zeroext %0) #24
  tail call fastcc void @form_loop_tree() #24
  tail call fastcc void @create_allocnos() #24
  tail call void @ira_costs() #23
  tail call void @ira_create_allocno_live_ranges() #23
  tail call fastcc void @remove_unnecessary_regions(i8 noundef zeroext 0) #24
  tail call void @ira_compress_allocno_live_ranges() #23
  tail call fastcc void @update_bad_spill_attribute() #24
  %6 = tail call fastcc zeroext i8 @more_one_region_p() #24, !range !269
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !435

8:                                                ; preds = %1
  tail call fastcc void @propagate_allocno_info() #24
  tail call fastcc void @create_caps() #24
  br label %9

9:                                                ; preds = %8, %1
  tail call void @ira_tune_allocno_costs_and_cover_classes() #23
  tail call fastcc void @setup_min_max_allocno_live_range_point() #24
  tail call fastcc void @sort_conflict_id_allocno_map() #24
  tail call fastcc void @setup_min_max_conflict_allocno_ids() #24
  tail call void @ira_build_conflicts() #23
  %10 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !379
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %34, !prof !436

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  br i1 %7, label %14, label %13

13:                                               ; preds = %12
  tail call fastcc void @remove_unnecessary_regions(i8 noundef zeroext 1) #24
  br label %14

14:                                               ; preds = %13, %12
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #24
  %15 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !269
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  %18 = load i64, ptr @call_used_reg_set, align 8
  %19 = insertelement <2 x i64> poison, i64 %18, i64 0
  %20 = shufflevector <2 x i64> %19, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %21

21:                                               ; preds = %17, %30
  %22 = load ptr, ptr %2, align 8, !tbaa !221
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 30
  %24 = load i32, ptr %23, align 8, !tbaa !246
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 26
  %28 = load <2 x i64>, ptr %27, align 8, !tbaa !239
  %29 = or <2 x i64> %28, %20
  store <2 x i64> %29, ptr %27, align 8, !tbaa !239
  br label %30

30:                                               ; preds = %26, %21
  %31 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !269
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %21, !llvm.loop !437

33:                                               ; preds = %30, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  br label %34

34:                                               ; preds = %33, %9
  %35 = phi i8 [ %6, %9 ], [ 0, %33 ]
  %36 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !234
  %37 = icmp sgt i32 %36, 2
  %38 = load ptr, ptr @ira_dump_file, align 8
  %39 = icmp ne ptr %38, null
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %44, !prof !438

41:                                               ; preds = %34
  tail call fastcc void @print_copies(ptr noundef nonnull %38) #24
  %42 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !234
  %43 = load ptr, ptr @ira_dump_file, align 8
  br label %44

44:                                               ; preds = %41, %34
  %45 = phi ptr [ %43, %41 ], [ %38, %34 ]
  %46 = phi i32 [ %42, %41 ], [ %36, %34 ]
  %47 = icmp sgt i32 %46, 0
  %48 = icmp ne ptr %45, null
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %97, !prof !438

50:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #24
  %51 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !269
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50, %53
  %54 = phi i32 [ %58, %53 ], [ 0, %50 ]
  %55 = load ptr, ptr %4, align 8, !tbaa !221
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %55, i64 0, i32 28
  %57 = load i32, ptr %56, align 8, !tbaa !238
  %58 = add nsw i32 %57, %54
  %59 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !269
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %53, !llvm.loop !439

61:                                               ; preds = %53, %50
  %62 = phi i32 [ 0, %50 ], [ %58, %53 ]
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #24
  %63 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !269
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %82, label %69

65:                                               ; preds = %75, %69
  %66 = phi i32 [ %70, %69 ], [ %78, %75 ]
  %67 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !269
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %82, label %69, !llvm.loop !440

69:                                               ; preds = %61, %65
  %70 = phi i32 [ %66, %65 ], [ 0, %61 ]
  %71 = load ptr, ptr %4, align 8, !tbaa !221
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %71, i64 0, i32 20
  %73 = load ptr, ptr %72, align 8, !tbaa !221
  %74 = icmp eq ptr %73, null
  br i1 %74, label %65, label %75

75:                                               ; preds = %69, %75
  %76 = phi ptr [ %80, %75 ], [ %73, %69 ]
  %77 = phi i32 [ %78, %75 ], [ %70, %69 ]
  %78 = add nsw i32 %77, 1
  %79 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %76, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !221
  %81 = icmp eq ptr %80, null
  br i1 %81, label %65, label %75, !llvm.loop !441

82:                                               ; preds = %65, %61
  %83 = phi i32 [ 0, %61 ], [ %66, %65 ]
  %84 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %85 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %84) #24
  %86 = load ptr, ptr @cfun, align 8, !tbaa !221
  %87 = getelementptr inbounds %struct.function, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !442
  %89 = getelementptr inbounds %struct.control_flow_graph, ptr %88, i64 0, i32 3
  %90 = load i32, ptr %89, align 8, !tbaa !444
  %91 = load i32, ptr @ira_max_point, align 4, !tbaa !234
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %45, ptr noundef nonnull @.str.9, i32 noundef %85, i32 noundef %90, i32 noundef %91) #24
  %93 = load ptr, ptr @ira_dump_file, align 8, !tbaa !221
  %94 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !234
  %95 = load i32, ptr @ira_copies_num, align 4, !tbaa !234
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.10, i32 noundef %94, i32 noundef %95, i32 noundef %62, i32 noundef %83) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %97

97:                                               ; preds = %82, %44
  ret i8 %35
}

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initiate_cost_vectors() unnamed_addr #0 !prof !420 !PGOFuncName !446 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !234
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %18, !prof !424

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %14, %3 ], [ 0, %0 ]
  %5 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !234
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !234
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.22, i64 noundef %11, i64 noundef 100) #23
  %13 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %7
  store ptr %12, ptr %13, align 8, !tbaa !221
  %14 = add nuw nsw i64 %4, 1
  %15 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !234
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %3, label %18, !prof !447, !llvm.loop !448

18:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initiate_allocnos() unnamed_addr #0 !prof !420 !PGOFuncName !449 {
  %1 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.23, i64 noundef 40, i64 noundef 100) #23
  store ptr %1, ptr @allocno_live_range_pool, align 8, !tbaa !221
  %2 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.24, i64 noundef 248, i64 noundef 100) #23
  store ptr %2, ptr @allocno_pool, align 8, !tbaa !221
  %3 = tail call i32 @max_reg_num() #23
  %4 = shl nsw i32 %3, 1
  %5 = tail call fastcc ptr @VEC_ira_allocno_t_heap_alloc(i32 noundef %4) #24
  store ptr %5, ptr @allocno_vec, align 8, !tbaa !221
  store ptr null, ptr @ira_allocnos, align 8, !tbaa !221
  store i32 0, ptr @ira_allocnos_num, align 4, !tbaa !234
  %6 = tail call i32 @max_reg_num() #23
  %7 = shl nsw i32 %6, 1
  %8 = tail call fastcc ptr @VEC_ira_allocno_t_heap_alloc(i32 noundef %7) #24
  store ptr %8, ptr @ira_conflict_id_allocno_map_vec, align 8, !tbaa !221
  store ptr null, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !221
  %9 = tail call i32 @max_reg_num() #23
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call ptr @ira_allocate(i64 noundef %11) #23
  store ptr %12, ptr @ira_regno_allocno_map, align 8, !tbaa !221
  %13 = tail call i32 @max_reg_num() #23
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %15, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initiate_copies() unnamed_addr #0 !prof !420 !PGOFuncName !450 {
  %1 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.25, i64 noundef 80, i64 noundef 100) #23
  store ptr %1, ptr @copy_pool, align 8, !tbaa !221
  %2 = tail call i32 @get_max_uid() #23
  %3 = tail call fastcc ptr @VEC_ira_copy_t_heap_alloc(i32 noundef %2) #24
  store ptr %3, ptr @copy_vec, align 8, !tbaa !221
  store ptr null, ptr @ira_copies, align 8, !tbaa !221
  store i32 0, ptr @ira_copies_num, align 4, !tbaa !234
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_loop_tree_nodes(i8 noundef zeroext %0) unnamed_addr #0 !prof !420 !PGOFuncName !451 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %6 = load ptr, ptr @cfun, align 8, !tbaa !221
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !442
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !452
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 216
  %13 = tail call ptr @ira_allocate(i64 noundef %12) #23
  store ptr %13, ptr @ira_bb_nodes, align 8, !tbaa !221
  %14 = load ptr, ptr @cfun, align 8, !tbaa !221
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !442
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !452
  store i32 %18, ptr @last_basic_block_before_change, align 4, !tbaa !234
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %39, label %20, !prof !453

20:                                               ; preds = %1, %20
  %21 = phi i64 [ %31, %20 ], [ 0, %1 ]
  %22 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !221
  %23 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %22, i64 %21, i32 9
  store ptr null, ptr %23, align 8, !tbaa !232
  %24 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !221
  %25 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %24, i64 %21, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %25, i8 0, i64 116, i1 false)
  %26 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %24, i64 %21, i32 14
  store ptr null, ptr %26, align 8, !tbaa !454
  %27 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !221
  %28 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %27, i64 %21, i32 13
  store ptr null, ptr %28, align 8, !tbaa !455
  %29 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !221
  %30 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %29, i64 %21, i32 15
  store ptr null, ptr %30, align 8, !tbaa !456
  %31 = add nuw nsw i64 %21, 1
  %32 = load ptr, ptr @cfun, align 8, !tbaa !221
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !442
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !452
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %31, %37
  br i1 %38, label %20, label %39, !prof !457, !llvm.loop !458

39:                                               ; preds = %20, %1
  %40 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %41 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %40) #24
  %42 = zext i32 %41 to i64
  %43 = mul nuw nsw i64 %42, 216
  %44 = tail call ptr @ira_allocate(i64 noundef %43) #23
  store ptr %44, ptr @ira_loop_nodes, align 8, !tbaa !221
  %45 = tail call i32 @max_reg_num() #23
  %46 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %47 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %46, i32 noundef 0, ptr noundef nonnull %5) #24, !range !432
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %154, label %49, !prof !453

49:                                               ; preds = %39, %149
  %50 = phi i32 [ %150, %149 ], [ 0, %39 ]
  %51 = load ptr, ptr %5, align 8, !tbaa !221
  %52 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 3), align 8, !tbaa !459
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %56, !prof !435

54:                                               ; preds = %49
  %55 = zext i32 %50 to i64
  br label %125

56:                                               ; preds = %49
  %57 = icmp eq i8 %0, 0
  %58 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %59 = zext i32 %50 to i64
  %60 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %58, i64 %59, i32 9
  store ptr null, ptr %60, align 8, !tbaa !232
  br i1 %57, label %149, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds i8, ptr %2, i64 8
  %63 = getelementptr inbounds %struct.loop, ptr %51, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !461
  %65 = tail call fastcc ptr @ei_start_1(ptr noundef %64) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !465
  store ptr %65, ptr %62, align 8, !tbaa.struct !466
  %66 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %65, ptr noundef nonnull %3) #24, !range !269
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %96, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.loop, ptr %51, i64 0, i32 3
  br label %70

70:                                               ; preds = %68, %91
  %71 = load ptr, ptr %3, align 8, !tbaa !221
  %72 = load ptr, ptr %71, align 8, !tbaa !467
  %73 = load ptr, ptr %69, align 8, !tbaa !469
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %91, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.edge_def, ptr %71, i64 0, i32 7
  %77 = load i32, ptr %76, align 8, !tbaa !470
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !471
  %83 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %82) #24
  %84 = icmp ugt i32 %83, 1
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.edge_def, ptr %71, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !473
  %88 = load ptr, ptr %87, align 8, !tbaa !474
  %89 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %88) #24
  %90 = icmp ugt i32 %89, 1
  br i1 %90, label %149, label %91

91:                                               ; preds = %70, %75, %80, %85
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %92 = load i32, ptr %2, align 8
  %93 = load ptr, ptr %62, align 8
  %94 = call fastcc zeroext i8 @ei_cond(i32 %92, ptr %93, ptr noundef nonnull %3) #24, !range !269
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %70, !llvm.loop !475

96:                                               ; preds = %91, %61
  %97 = tail call ptr @get_loop_exit_edges(ptr noundef nonnull %51) #23
  store ptr %97, ptr %4, align 8, !tbaa !221
  %98 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %97, i32 noundef 0, ptr noundef nonnull %3) #24, !range !432
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %124, label %100

100:                                              ; preds = %96, %119
  %101 = phi i32 [ %120, %119 ], [ 0, %96 ]
  %102 = load ptr, ptr %3, align 8, !tbaa !221
  %103 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !470
  %105 = and i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %100
  %108 = load ptr, ptr %102, align 8, !tbaa !467
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !471
  %111 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %110) #24
  %112 = icmp ugt i32 %111, 1
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !473
  %116 = load ptr, ptr %115, align 8, !tbaa !474
  %117 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %116) #24
  %118 = icmp ugt i32 %117, 1
  br i1 %118, label %123, label %119

119:                                              ; preds = %100, %107, %113
  %120 = add i32 %101, 1
  %121 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %97, i32 noundef %120, ptr noundef nonnull %3) #24, !range !432
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %100, !llvm.loop !476

123:                                              ; preds = %113
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %4) #24
  br label %149

124:                                              ; preds = %119, %96
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %4) #24
  br label %125

125:                                              ; preds = %54, %124
  %126 = phi i64 [ %55, %54 ], [ %59, %124 ]
  %127 = sext i32 %45 to i64
  %128 = shl nsw i64 %127, 3
  %129 = tail call ptr @ira_allocate(i64 noundef %128) #23
  %130 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %131 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %130, i64 %126, i32 9
  store ptr %129, ptr %131, align 8, !tbaa !232
  %132 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %133 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %132, i64 %126, i32 9
  %134 = load ptr, ptr %133, align 8, !tbaa !232
  tail call void @llvm.memset.p0.i64(ptr align 8 %134, i8 0, i64 %128, i1 false)
  %135 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %136 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %135, i64 %126, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(108) %136, i8 0, i64 108, i1 false)
  %137 = tail call ptr @ira_allocate_bitmap() #23
  %138 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %139 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %138, i64 %126, i32 12
  store ptr %137, ptr %139, align 8, !tbaa !236
  %140 = tail call ptr @ira_allocate_bitmap() #23
  %141 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %142 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %141, i64 %126, i32 14
  store ptr %140, ptr %142, align 8, !tbaa !454
  %143 = tail call ptr @ira_allocate_bitmap() #23
  %144 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %145 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %144, i64 %126, i32 13
  store ptr %143, ptr %145, align 8, !tbaa !455
  %146 = tail call ptr @ira_allocate_bitmap() #23
  %147 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %148 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %147, i64 %126, i32 15
  store ptr %146, ptr %148, align 8, !tbaa !456
  br label %149

149:                                              ; preds = %85, %123, %56, %125
  %150 = add i32 %50, 1
  %151 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %152 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %151, i32 noundef %150, ptr noundef nonnull %5) #24, !range !432
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %49, !prof !424, !llvm.loop !477

154:                                              ; preds = %149, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @form_loop_tree() unnamed_addr #18 !prof !420 !PGOFuncName !478 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %3 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #24, !range !432
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %27, label %5, !prof !453

5:                                                ; preds = %0
  %6 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  br label %7

7:                                                ; preds = %5, %21
  %8 = phi ptr [ %22, %21 ], [ %2, %5 ]
  %9 = phi ptr [ %23, %21 ], [ %6, %5 ]
  %10 = phi i32 [ %24, %21 ], [ 0, %5 ]
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %9, i64 %11, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !232
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !436

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %9, i64 %11, i32 5
  store ptr null, ptr %16, align 8, !tbaa !479
  %17 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %18 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %17, i64 %11, i32 4
  store ptr null, ptr %18, align 8, !tbaa !480
  %19 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %20 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  br label %21

21:                                               ; preds = %7, %15
  %22 = phi ptr [ %8, %7 ], [ %20, %15 ]
  %23 = phi ptr [ %9, %7 ], [ %19, %15 ]
  %24 = add i32 %10, 1
  %25 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %1) #24, !range !432
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %7, !prof !424, !llvm.loop !481

27:                                               ; preds = %21, %0
  %28 = load ptr, ptr @cfun, align 8, !tbaa !221
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !442
  %31 = load ptr, ptr %30, align 8, !tbaa !482
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !483
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !484
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %78, label %37, !prof !453

37:                                               ; preds = %27, %61
  %38 = phi ptr [ %71, %61 ], [ %33, %27 ]
  %39 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !221
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !485
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %39, i64 %42
  store ptr %38, ptr %43, align 8, !tbaa !272
  %44 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %39, i64 %42, i32 1
  %45 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %39, i64 %42, i32 3
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %44, i8 0, i64 40, i1 false)
  %47 = load ptr, ptr %46, align 8, !tbaa !486
  %48 = icmp eq ptr %47, null
  br i1 %48, label %61, label %49, !prof !487

49:                                               ; preds = %37
  %50 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  br label %51

51:                                               ; preds = %49, %58
  %52 = phi ptr [ %47, %49 ], [ %59, %58 ]
  %53 = load i32, ptr %52, align 8, !tbaa !488
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %50, i64 %54, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !232
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61, !prof !489

58:                                               ; preds = %51
  %59 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %52) #24
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %51, !prof !490, !llvm.loop !491

61:                                               ; preds = %58, %51, %37
  %62 = phi ptr [ null, %37 ], [ %52, %51 ], [ null, %58 ]
  tail call fastcc void @add_loop_to_tree(ptr noundef %62) #24
  %63 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %64 = load i32, ptr %62, align 8, !tbaa !488
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %63, i64 %65
  %67 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %63, i64 %65, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !479
  store ptr %68, ptr %45, align 8, !tbaa !492
  %69 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %39, i64 %42, i32 6
  store ptr %66, ptr %69, align 8, !tbaa !367
  store ptr %43, ptr %67, align 8, !tbaa !479
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !483
  %72 = load ptr, ptr @cfun, align 8, !tbaa !221
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !442
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !484
  %77 = icmp eq ptr %71, %76
  br i1 %77, label %78, label %37, !prof !493, !llvm.loop !494

78:                                               ; preds = %61, %27
  %79 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %80 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 3), align 8, !tbaa !459
  %81 = load i32, ptr %80, align 8, !tbaa !488
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %79, i64 %82
  store ptr %83, ptr @ira_loop_tree_root, align 8, !tbaa !221
  %84 = tail call fastcc i32 @setup_loop_tree_level(ptr noundef %83, i32 noundef 0) #24
  store i32 %84, ptr @ira_loop_tree_height, align 4, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_allocnos() unnamed_addr #0 !prof !420 !PGOFuncName !495 {
  %1 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !221
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %1, ptr noundef nonnull @create_loop_tree_node_allocnos, ptr noundef null) #24
  %2 = load i32, ptr @optimize, align 4, !tbaa !234
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4, !prof !436

4:                                                ; preds = %0
  %5 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !221
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 0, ptr noundef %5, ptr noundef null, ptr noundef nonnull @propagate_modified_regnos) #24
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: optsize
declare void @ira_costs() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_create_allocno_live_ranges() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_unnecessary_regions(i8 noundef zeroext %0) unnamed_addr #0 !prof !420 !PGOFuncName !496 {
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %4, label %3, !prof !435

3:                                                ; preds = %1
  tail call fastcc void @mark_all_loops_for_removal() #24
  br label %5

4:                                                ; preds = %1
  tail call fastcc void @mark_loops_for_removal() #24
  br label %5

5:                                                ; preds = %4, %3
  %6 = load ptr, ptr @cfun, align 8, !tbaa !221
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !442
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !452
  %11 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %12 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %11) #24
  %13 = add i32 %12, %10
  %14 = tail call fastcc ptr @VEC_ira_loop_tree_node_t_heap_alloc(i32 noundef %13) #24
  store ptr %14, ptr @children_vec, align 8, !tbaa !221
  %15 = load ptr, ptr @cfun, align 8, !tbaa !221
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !442
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !452
  %20 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %21 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %20) #24
  %22 = add i32 %21, %19
  %23 = tail call fastcc ptr @VEC_ira_loop_tree_node_t_heap_alloc(i32 noundef %22) #24
  store ptr %23, ptr @removed_loop_vec, align 8, !tbaa !221
  %24 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !221
  tail call fastcc void @remove_uneccesary_loop_nodes_from_loop_tree(ptr noundef %24) #24
  tail call fastcc void @VEC_ira_loop_tree_node_t_heap_free(ptr noundef nonnull @children_vec) #24
  br i1 %2, label %26, label %25, !prof !435

25:                                               ; preds = %5
  tail call fastcc void @remove_low_level_allocnos() #24
  br label %27

26:                                               ; preds = %5
  tail call fastcc void @remove_unnecessary_allocnos() #24
  br label %27

27:                                               ; preds = %26, %25
  %28 = load ptr, ptr @removed_loop_vec, align 8
  %29 = tail call fastcc i32 @VEC_ira_loop_tree_node_t_base_length(ptr noundef %28) #24
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31, !prof !497

31:                                               ; preds = %27, %31
  %32 = phi ptr [ %34, %31 ], [ %28, %27 ]
  %33 = tail call fastcc ptr @VEC_ira_loop_tree_node_t_base_pop(ptr noundef %32) #24
  tail call fastcc void @finish_loop_tree_node(ptr noundef %33) #24
  %34 = load ptr, ptr @removed_loop_vec, align 8
  %35 = tail call fastcc i32 @VEC_ira_loop_tree_node_t_base_length(ptr noundef %34) #24
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %31, !prof !362, !llvm.loop !498

37:                                               ; preds = %31, %27
  tail call fastcc void @VEC_ira_loop_tree_node_t_heap_free(ptr noundef nonnull @removed_loop_vec) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_bad_spill_attribute() unnamed_addr #0 !prof !420 !PGOFuncName !499 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  %3 = alloca [27 x %struct.bitmap_head_def], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 864, ptr nonnull %3) #25
  %4 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !234
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %16, !prof !424

6:                                                ; preds = %0
  %7 = zext nneg i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %14, %8 ]
  %10 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !234
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [27 x %struct.bitmap_head_def], ptr %3, i64 0, i64 %12
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %13) #24
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, %7
  br i1 %15, label %16, label %8, !prof !500, !llvm.loop !501

16:                                               ; preds = %8, %0
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %17 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %42, label %19, !prof !453

19:                                               ; preds = %16, %24
  %20 = load ptr, ptr %1, align 8, !tbaa !221
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !265
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27, !prof !248

24:                                               ; preds = %34, %27, %19
  %25 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %42, label %19, !prof !502, !llvm.loop !503

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !221
  %30 = icmp eq ptr %29, null
  br i1 %30, label %24, label %31, !prof !504, !llvm.loop !503

31:                                               ; preds = %27
  %32 = zext i32 %22 to i64
  %33 = getelementptr inbounds [27 x %struct.bitmap_head_def], ptr %3, i64 0, i64 %32
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %29, %31 ], [ %40, %34 ]
  %36 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !279
  %38 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %33, i32 noundef %37) #23
  %39 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %35, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !221
  %41 = icmp eq ptr %40, null
  br i1 %41, label %24, label %34, !prof !505, !llvm.loop !506

42:                                               ; preds = %24, %16
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %43 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %48, !prof !453

45:                                               ; preds = %89, %42
  %46 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !234
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %92, label %102, !prof !424

48:                                               ; preds = %42, %89
  %49 = load ptr, ptr %1, align 8, !tbaa !221
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !265
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %89, label %53, !prof !248

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 31
  %55 = load i16, ptr %54, align 4
  %56 = and i16 %55, 64
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %89, label %58, !prof !507

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 20
  %60 = load ptr, ptr %59, align 8, !tbaa !221
  %61 = icmp eq ptr %60, null
  br i1 %61, label %89, label %66, !prof !508

62:                                               ; preds = %83
  %63 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %67, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !221
  %65 = icmp eq ptr %64, null
  br i1 %65, label %89, label %66, !prof !509, !llvm.loop !510

66:                                               ; preds = %58, %62
  %67 = phi ptr [ %64, %62 ], [ %60, %58 ]
  %68 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %67, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !278
  %70 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %67, i64 0, i32 2
  br label %71

71:                                               ; preds = %76, %66
  %72 = phi i32 [ %69, %66 ], [ %73, %76 ]
  %73 = add nsw i32 %72, 1
  %74 = load i32, ptr %70, align 4, !tbaa !279
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %83, !prof !511

76:                                               ; preds = %71
  %77 = zext i32 %51 to i64
  %78 = getelementptr inbounds [27 x %struct.bitmap_head_def], ptr %3, i64 0, i64 %77
  %79 = call i32 @bitmap_bit_p(ptr noundef nonnull %78, i32 noundef %73) #23
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %71, label %81, !prof !512, !llvm.loop !513

81:                                               ; preds = %76
  %82 = load i32, ptr %70, align 4, !tbaa !279
  br label %83

83:                                               ; preds = %71, %81
  %84 = phi i32 [ %82, %81 ], [ %74, %71 ]
  %85 = icmp slt i32 %73, %84
  br i1 %85, label %86, label %62, !prof !514

86:                                               ; preds = %83
  %87 = load i16, ptr %54, align 4
  %88 = and i16 %87, -65
  store i16 %88, ptr %54, align 4
  br label %89

89:                                               ; preds = %62, %86, %58, %48, %53
  %90 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %45, label %48, !prof !502, !llvm.loop !515

92:                                               ; preds = %45, %92
  %93 = phi i64 [ %98, %92 ], [ 0, %45 ]
  %94 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !234
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [27 x %struct.bitmap_head_def], ptr %3, i64 0, i64 %96
  call void @bitmap_clear(ptr noundef nonnull %97) #23
  %98 = add nuw nsw i64 %93, 1
  %99 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !234
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %92, label %102, !prof !447, !llvm.loop !516

102:                                              ; preds = %92, %45
  call void @llvm.lifetime.end.p0(i64 864, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @more_one_region_p() unnamed_addr #13 !prof !420 !PGOFuncName !517 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %3 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #24, !range !432
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5, !prof !453

5:                                                ; preds = %0
  %6 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %7 = load ptr, ptr @ira_loop_tree_root, align 8
  br label %8

8:                                                ; preds = %5, %17
  %9 = phi i32 [ 0, %5 ], [ %18, %17 ]
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %10, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !232
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %10
  %15 = icmp eq ptr %7, %14
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %21, !prof !518

17:                                               ; preds = %8
  %18 = add i32 %9, 1
  %19 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %2, i32 noundef %18, ptr noundef nonnull %1) #24, !range !432
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %8, !prof !424, !llvm.loop !519

21:                                               ; preds = %8, %17, %0
  %22 = phi i8 [ 0, %0 ], [ 0, %17 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_allocno_info() unnamed_addr #0 !prof !268 !PGOFuncName !520 {
  %1 = load i32, ptr @flag_ira_region, align 4
  %2 = add i32 %1, -3
  %3 = icmp ult i32 %2, -2
  br i1 %3, label %102, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @max_reg_num() #23
  %6 = icmp sgt i32 %5, 53
  br i1 %6, label %7, label %102

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  br label %11

9:                                                ; preds = %98, %11
  %10 = icmp sgt i64 %12, 54
  br i1 %10, label %11, label %102, !llvm.loop !521

11:                                               ; preds = %7, %9
  %12 = phi i64 [ %8, %7 ], [ %13, %9 ]
  %13 = add nsw i64 %12, -1
  %14 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !221
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !221
  %17 = icmp eq ptr %16, null
  br i1 %17, label %9, label %18

18:                                               ; preds = %11, %98
  %19 = phi ptr [ %100, %98 ], [ %16, %11 ]
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !229
  %22 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !367
  %24 = icmp eq ptr %23, null
  br i1 %24, label %98, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %23, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !232
  %28 = getelementptr inbounds ptr, ptr %27, i64 %13
  %29 = load ptr, ptr %28, align 8, !tbaa !221
  %30 = icmp eq ptr %29, null
  br i1 %30, label %98, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !455
  %34 = load i32, ptr %19, align 8, !tbaa !235
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %33, i32 noundef %34) #23
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %98, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 31
  %39 = load i16, ptr %38, align 4
  %40 = and i16 %39, 64
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 31
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, -65
  store i16 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 7
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 7
  %49 = load <2 x i32>, ptr %47, align 8, !tbaa !234
  %50 = load <2 x i32>, ptr %48, align 8, !tbaa !234
  %51 = add nsw <2 x i32> %50, %49
  store <2 x i32> %51, ptr %48, align 8, !tbaa !234
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 29
  %53 = load i32, ptr %52, align 4, !tbaa !245
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 29
  %55 = load i32, ptr %54, align 4, !tbaa !245
  %56 = add nsw i32 %55, %53
  store i32 %56, ptr %54, align 4, !tbaa !245
  %57 = load i16, ptr %38, align 4
  %58 = and i16 %57, 32
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 31
  %62 = load i16, ptr %61, align 4
  %63 = or i16 %62, 32
  store i16 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %60, %46
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 27
  %66 = load i64, ptr %65, align 8, !tbaa !241
  %67 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 27
  %68 = load i64, ptr %67, align 8, !tbaa !241
  %69 = or i64 %68, %66
  store i64 %69, ptr %67, align 8, !tbaa !241
  %70 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 30
  %71 = load i32, ptr %70, align 8, !tbaa !246
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 30
  %73 = load i32, ptr %72, align 8, !tbaa !246
  %74 = add nsw i32 %73, %71
  store i32 %74, ptr %72, align 8, !tbaa !246
  %75 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 14
  %76 = load i32, ptr %75, align 4, !tbaa !371
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 14
  %78 = load i32, ptr %77, align 4, !tbaa !371
  %79 = add nsw i32 %78, %76
  store i32 %79, ptr %77, align 4, !tbaa !371
  %80 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !265
  %82 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 33
  %83 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 33
  %84 = load ptr, ptr %83, align 8, !tbaa !369
  tail call fastcc void @ira_allocate_and_accumulate_costs(ptr noundef nonnull %82, i32 noundef %81, ptr noundef %84) #24
  %85 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 35
  %86 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 35
  %87 = load ptr, ptr %86, align 8, !tbaa !370
  tail call fastcc void @ira_allocate_and_accumulate_costs(ptr noundef nonnull %85, i32 noundef %81, ptr noundef %87) #24
  %88 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 10
  %89 = load i32, ptr %88, align 4, !tbaa !374
  %90 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 10
  %91 = load i32, ptr %90, align 4, !tbaa !374
  %92 = add nsw i32 %91, %89
  store i32 %92, ptr %90, align 4, !tbaa !374
  %93 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 12
  %94 = load i32, ptr %93, align 4, !tbaa !375
  %95 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 12
  %96 = load i32, ptr %95, align 4, !tbaa !375
  %97 = add nsw i32 %96, %94
  store i32 %97, ptr %95, align 4, !tbaa !375
  br label %98

98:                                               ; preds = %18, %25, %31, %64
  %99 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !221
  %101 = icmp eq ptr %100, null
  br i1 %101, label %9, label %18, !llvm.loop !522

102:                                              ; preds = %9, %4, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_caps() unnamed_addr #0 !prof !268 !PGOFuncName !523 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %0, %26
  %6 = load ptr, ptr %1, align 8, !tbaa !221
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !229
  %9 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !221
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %26, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !274
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !366
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %8, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !455
  %22 = load i32, ptr %6, align 8, !tbaa !235
  %23 = tail call i32 @bitmap_bit_p(ptr noundef %21, i32 noundef %22) #23
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %11
  tail call fastcc void @create_cap_allocno(ptr noundef nonnull %6) #24
  br label %26

26:                                               ; preds = %25, %19, %15, %5
  %27 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %5, !llvm.loop !524

29:                                               ; preds = %26, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: optsize
declare void @ira_tune_allocno_costs_and_cover_classes() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_min_max_allocno_live_range_point() unnamed_addr #0 !prof !420 !PGOFuncName !525 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !453

5:                                                ; preds = %0, %23
  %6 = load ptr, ptr %1, align 8, !tbaa !221
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !254
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10, !prof !248

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !279
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 22
  store i32 %12, ptr %13, align 4, !tbaa !256
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %8, %10 ], [ %17, %14 ]
  %16 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !280
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !prof !526, !llvm.loop !527

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %15, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !278
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 21
  store i32 %21, ptr %22, align 8, !tbaa !255
  br label %23

23:                                               ; preds = %19, %5
  %24 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %5, !prof !502, !llvm.loop !528

26:                                               ; preds = %23, %0
  %27 = tail call i32 @max_reg_num() #23
  %28 = icmp sgt i32 %27, 53
  br i1 %28, label %29, label %94, !prof !424

29:                                               ; preds = %26
  %30 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !221
  %31 = zext nneg i32 %27 to i64
  br label %34

32:                                               ; preds = %90, %34
  %33 = icmp sgt i64 %35, 54
  br i1 %33, label %34, label %94, !prof !529, !llvm.loop !530

34:                                               ; preds = %29, %32
  %35 = phi i64 [ %31, %29 ], [ %36, %32 ]
  %36 = add nsw i64 %35, -1
  %37 = getelementptr inbounds ptr, ptr %30, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !221
  %39 = icmp eq ptr %38, null
  br i1 %39, label %32, label %40, !prof !531

40:                                               ; preds = %34, %90
  %41 = phi ptr [ %92, %90 ], [ %38, %34 ]
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 22
  %43 = load i32, ptr %42, align 4, !tbaa !256
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %90, label %45, !prof !248

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 16
  %47 = load ptr, ptr %46, align 8, !tbaa !366
  %48 = icmp eq ptr %47, null
  br i1 %48, label %68, label %49, !prof !230

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 21
  br label %51

51:                                               ; preds = %49, %64
  %52 = phi ptr [ %47, %49 ], [ %66, %64 ]
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %52, i64 0, i32 22
  %54 = load i32, ptr %53, align 4, !tbaa !256
  %55 = load i32, ptr %42, align 4, !tbaa !256
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 %55, ptr %53, align 4, !tbaa !256
  br label %58

58:                                               ; preds = %57, %51
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %52, i64 0, i32 21
  %60 = load i32, ptr %59, align 8, !tbaa !255
  %61 = load i32, ptr %50, align 8, !tbaa !255
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 %61, ptr %59, align 8, !tbaa !255
  br label %64

64:                                               ; preds = %58, %63
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %52, i64 0, i32 16
  %66 = load ptr, ptr %65, align 8, !tbaa !366
  %67 = icmp eq ptr %66, null
  br i1 %67, label %90, label %51, !llvm.loop !532

68:                                               ; preds = %45
  %69 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !229
  %71 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %70, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !367
  %73 = icmp eq ptr %72, null
  br i1 %73, label %90, label %74, !prof !230

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %72, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !232
  %77 = getelementptr inbounds ptr, ptr %76, i64 %36
  %78 = load ptr, ptr %77, align 8, !tbaa !221
  %79 = getelementptr inbounds %struct.ira_allocno, ptr %78, i64 0, i32 22
  %80 = load i32, ptr %79, align 4, !tbaa !256
  %81 = icmp slt i32 %80, %43
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 %43, ptr %79, align 4, !tbaa !256
  br label %83

83:                                               ; preds = %82, %74
  %84 = getelementptr inbounds %struct.ira_allocno, ptr %78, i64 0, i32 21
  %85 = load i32, ptr %84, align 8, !tbaa !255
  %86 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 21
  %87 = load i32, ptr %86, align 8, !tbaa !255
  %88 = icmp sgt i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 %87, ptr %84, align 8, !tbaa !255
  br label %90

90:                                               ; preds = %64, %83, %89, %68, %40
  %91 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !221
  %93 = icmp eq ptr %92, null
  br i1 %93, label %32, label %40, !prof !533, !llvm.loop !534

94:                                               ; preds = %32, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sort_conflict_id_allocno_map() unnamed_addr #0 !prof !420 !PGOFuncName !535 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5, !prof !453

5:                                                ; preds = %0, %5
  %6 = phi i64 [ %9, %5 ], [ 0, %0 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !221
  %8 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !221
  %9 = add nuw i64 %6, 1
  %10 = getelementptr inbounds ptr, ptr %8, i64 %6
  store ptr %7, ptr %10, align 8, !tbaa !221
  %11 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %5, !prof !502, !llvm.loop !536

13:                                               ; preds = %5
  %14 = trunc i64 %9 to i32
  br label %15

15:                                               ; preds = %13, %0
  %16 = phi i32 [ 0, %0 ], [ %14, %13 ]
  %17 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !221
  %18 = zext i32 %16 to i64
  tail call void @spec_qsort(ptr noundef %17, i64 noundef %18, i64 noundef 8, ptr noundef nonnull @allocno_range_compare_func) #23
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %22, label %20, !prof !453

20:                                               ; preds = %15
  %21 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !221
  br label %25

22:                                               ; preds = %33, %15
  %23 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !234
  %24 = icmp slt i32 %16, %23
  br i1 %24, label %36, label %43, !prof !537

25:                                               ; preds = %20, %33
  %26 = phi i64 [ 0, %20 ], [ %34, %33 ]
  %27 = getelementptr inbounds ptr, ptr %21, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !221
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30, !prof !248

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %28, i64 0, i32 24
  %32 = trunc i64 %26 to i32
  store i32 %32, ptr %31, align 8, !tbaa !257
  br label %33

33:                                               ; preds = %25, %30
  %34 = add nuw nsw i64 %26, 1
  %35 = icmp eq i64 %34, %18
  br i1 %35, label %22, label %25, !prof !502, !llvm.loop !538

36:                                               ; preds = %22, %36
  %37 = phi i64 [ %40, %36 ], [ %18, %22 ]
  %38 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !221
  %39 = getelementptr inbounds ptr, ptr %38, i64 %37
  store ptr null, ptr %39, align 8, !tbaa !221
  %40 = add nuw nsw i64 %37, 1
  %41 = trunc i64 %40 to i32
  %42 = icmp sgt i32 %23, %41
  br i1 %42, label %36, label %43, !prof !539, !llvm.loop !540

43:                                               ; preds = %36, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_min_max_conflict_allocno_ids() unnamed_addr #0 !prof !420 !PGOFuncName !541 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !234
  %2 = sext i32 %1 to i64
  %3 = shl nsw i64 %2, 2
  %4 = tail call ptr @ira_allocate(i64 noundef %3) #23
  %5 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !234
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %76, !prof !424

7:                                                ; preds = %0
  %8 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !221
  br label %9

9:                                                ; preds = %7, %69
  %10 = phi i32 [ %5, %7 ], [ %70, %69 ]
  %11 = phi i64 [ 0, %7 ], [ %73, %69 ]
  %12 = phi i32 [ -1, %7 ], [ %72, %69 ]
  %13 = phi i32 [ -1, %7 ], [ %71, %69 ]
  %14 = getelementptr inbounds ptr, ptr %8, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !221
  %16 = icmp eq ptr %15, null
  br i1 %16, label %69, label %17, !prof !248

17:                                               ; preds = %9
  %18 = icmp slt i32 %12, 0
  br i1 %18, label %19, label %22, !prof !542

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !265
  br label %29

22:                                               ; preds = %17
  %23 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !234
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %34, label %25, !prof !543

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !265
  %28 = icmp eq i32 %12, %27
  br i1 %28, label %34, label %29, !prof !544

29:                                               ; preds = %19, %25
  %30 = phi i32 [ %21, %19 ], [ %27, %25 ]
  %31 = trunc i64 %11 to i32
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 21
  %33 = load i32, ptr %32, align 8, !tbaa !255
  br label %56

34:                                               ; preds = %25, %22
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 21
  %36 = load i32, ptr %35, align 8, !tbaa !255
  %37 = sext i32 %13 to i64
  %38 = icmp sgt i64 %11, %37
  br i1 %38, label %39, label %52, !prof !545

39:                                               ; preds = %34, %46
  %40 = phi i64 [ %47, %46 ], [ %37, %34 ]
  %41 = getelementptr inbounds ptr, ptr %8, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !221
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 22
  %44 = load i32, ptr %43, align 4, !tbaa !256
  %45 = icmp sgt i32 %36, %44
  br i1 %45, label %46, label %49, !prof !546

46:                                               ; preds = %39
  %47 = add nsw i64 %40, 1
  %48 = icmp slt i64 %47, %11
  br i1 %48, label %39, label %49, !prof !547, !llvm.loop !548

49:                                               ; preds = %39, %46
  %50 = phi i64 [ %11, %46 ], [ %40, %39 ]
  %51 = trunc i64 %50 to i32
  br label %52

52:                                               ; preds = %49, %34
  %53 = phi i32 [ %13, %34 ], [ %51, %49 ]
  %54 = zext i32 %53 to i64
  %55 = icmp eq i64 %11, %54
  br i1 %55, label %56, label %61, !prof !549

56:                                               ; preds = %29, %52
  %57 = phi i32 [ %33, %29 ], [ %36, %52 ]
  %58 = phi i32 [ %30, %29 ], [ %12, %52 ]
  %59 = phi i32 [ %31, %29 ], [ %53, %52 ]
  %60 = add nsw i32 %59, 1
  br label %61

61:                                               ; preds = %56, %52
  %62 = phi i32 [ %57, %56 ], [ %36, %52 ]
  %63 = phi i32 [ %58, %56 ], [ %12, %52 ]
  %64 = phi i32 [ %59, %56 ], [ %53, %52 ]
  %65 = phi i32 [ %60, %56 ], [ %53, %52 ]
  %66 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 21
  %67 = getelementptr inbounds i32, ptr %4, i64 %11
  store i32 %62, ptr %67, align 4, !tbaa !234
  store i32 %65, ptr %66, align 8, !tbaa !255
  %68 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !234
  br label %69

69:                                               ; preds = %9, %61
  %70 = phi i32 [ %10, %9 ], [ %68, %61 ]
  %71 = phi i32 [ %13, %9 ], [ %64, %61 ]
  %72 = phi i32 [ %12, %9 ], [ %63, %61 ]
  %73 = add nuw nsw i64 %11, 1
  %74 = sext i32 %70 to i64
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %9, label %76, !prof !550, !llvm.loop !551

76:                                               ; preds = %69, %0
  %77 = load i32, ptr @ira_max_point, align 4, !tbaa !234
  %78 = sext i32 %77 to i64
  %79 = shl nsw i64 %78, 2
  %80 = tail call ptr @ira_allocate(i64 noundef %79) #23
  %81 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !234
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %148, !prof !424

83:                                               ; preds = %76
  %84 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !221
  %85 = zext nneg i32 %81 to i64
  br label %86

86:                                               ; preds = %83, %144
  %87 = phi i64 [ %85, %83 ], [ %90, %144 ]
  %88 = phi i32 [ -1, %83 ], [ %146, %144 ]
  %89 = phi i32 [ -1, %83 ], [ %145, %144 ]
  %90 = add nsw i64 %87, -1
  %91 = getelementptr inbounds ptr, ptr %84, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !221
  %93 = icmp eq ptr %92, null
  br i1 %93, label %144, label %94, !prof !248

94:                                               ; preds = %86
  %95 = icmp slt i32 %88, 0
  br i1 %95, label %96, label %99, !prof !542

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %92, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !265
  br label %106

99:                                               ; preds = %94
  %100 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !234
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %117, label %102, !prof !543

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.ira_allocno, ptr %92, i64 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !265
  %105 = icmp eq i32 %88, %104
  br i1 %105, label %117, label %106, !prof !544

106:                                              ; preds = %96, %102
  %107 = phi i32 [ %98, %96 ], [ %104, %102 ]
  %108 = load i32, ptr @ira_max_point, align 4, !tbaa !234
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %117, !prof !424

110:                                              ; preds = %106, %110
  %111 = phi i64 [ %113, %110 ], [ 0, %106 ]
  %112 = getelementptr inbounds i32, ptr %80, i64 %111
  store i32 -1, ptr %112, align 4, !tbaa !234
  %113 = add nuw nsw i64 %111, 1
  %114 = load i32, ptr @ira_max_point, align 4, !tbaa !234
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %110, label %117, !prof !552, !llvm.loop !553

117:                                              ; preds = %110, %106, %102, %99
  %118 = phi i32 [ %89, %102 ], [ %89, %99 ], [ %108, %106 ], [ %114, %110 ]
  %119 = phi i32 [ %88, %102 ], [ %88, %99 ], [ %107, %106 ], [ %107, %110 ]
  %120 = getelementptr inbounds i32, ptr %4, i64 %90
  %121 = load i32, ptr %120, align 4, !tbaa !234
  %122 = getelementptr inbounds %struct.ira_allocno, ptr %92, i64 0, i32 22
  %123 = load i32, ptr %122, align 4, !tbaa !256
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %80, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !234
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132, !prof !554

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.ira_allocno, ptr %92, i64 0, i32 24
  %130 = load i32, ptr %129, align 8, !tbaa !257
  %131 = add nsw i32 %130, -1
  br label %132

132:                                              ; preds = %128, %117
  %133 = phi i32 [ %131, %128 ], [ %126, %117 ]
  store i32 %133, ptr %122, align 4, !tbaa !256
  %134 = icmp slt i32 %121, %118
  br i1 %134, label %135, label %144, !prof !555

135:                                              ; preds = %132
  %136 = sext i32 %121 to i64
  %137 = sext i32 %118 to i64
  %138 = trunc i64 %90 to i32
  br label %139

139:                                              ; preds = %135, %139
  %140 = phi i64 [ %136, %135 ], [ %142, %139 ]
  %141 = getelementptr inbounds i32, ptr %80, i64 %140
  store i32 %138, ptr %141, align 4, !tbaa !234
  %142 = add nsw i64 %140, 1
  %143 = icmp eq i64 %142, %137
  br i1 %143, label %144, label %139, !prof !556, !llvm.loop !557

144:                                              ; preds = %139, %132, %86
  %145 = phi i32 [ %89, %86 ], [ %121, %132 ], [ %121, %139 ]
  %146 = phi i32 [ %88, %86 ], [ %119, %132 ], [ %119, %139 ]
  %147 = icmp sgt i64 %87, 1
  br i1 %147, label %86, label %148, !prof !550, !llvm.loop !558

148:                                              ; preds = %144, %76
  tail call void @ira_free(ptr noundef %80) #23
  tail call void @ira_free(ptr noundef %4) #23
  ret void
}

; Function Attrs: optsize
declare void @ira_build_conflicts() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !559 !PGOFuncName !560 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !561

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !562
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_destroy() local_unnamed_addr #0 !prof !420 {
  tail call fastcc void @finish_loop_tree_nodes() #24
  tail call fastcc void @finish_copies() #24
  tail call fastcc void @finish_allocnos() #24
  tail call fastcc void @finish_cost_vectors() #24
  tail call void @ira_finish_allocno_live_ranges() #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_loop_tree_nodes() unnamed_addr #0 !prof !420 !PGOFuncName !564 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %3 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #24, !range !432
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5, !prof !453

5:                                                ; preds = %0, %5
  %6 = phi i32 [ %10, %5 ], [ 0, %0 ]
  %7 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %8 = zext i32 %6 to i64
  %9 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %7, i64 %8
  tail call fastcc void @finish_loop_tree_node(ptr noundef %9) #24
  %10 = add i32 %6, 1
  %11 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %12 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %11, i32 noundef %10, ptr noundef nonnull %1) #24, !range !432
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5, !prof !424, !llvm.loop !565

14:                                               ; preds = %5, %0
  %15 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  tail call void @ira_free(ptr noundef %15) #23
  %16 = load i32, ptr @last_basic_block_before_change, align 4, !tbaa !234
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !221
  br i1 %17, label %61, label %19, !prof !453

19:                                               ; preds = %14, %55
  %20 = phi ptr [ %56, %55 ], [ %18, %14 ]
  %21 = phi i64 [ %57, %55 ], [ 0, %14 ]
  %22 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %20, i64 %21, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !456
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !566

25:                                               ; preds = %19
  tail call void @ira_free_bitmap(ptr noundef nonnull %23) #23
  %26 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !221
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi ptr [ %26, %25 ], [ %20, %19 ]
  %29 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 %21, i32 13
  %30 = load ptr, ptr %29, align 8, !tbaa !455
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32, !prof !566

32:                                               ; preds = %27
  tail call void @ira_free_bitmap(ptr noundef nonnull %30) #23
  %33 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !221
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi ptr [ %33, %32 ], [ %28, %27 ]
  %36 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %35, i64 %21, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !454
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !566

39:                                               ; preds = %34
  tail call void @ira_free_bitmap(ptr noundef nonnull %37) #23
  %40 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !221
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi ptr [ %40, %39 ], [ %35, %34 ]
  %43 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %42, i64 %21, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !236
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !566

46:                                               ; preds = %41
  tail call void @ira_free_bitmap(ptr noundef nonnull %44) #23
  %47 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !221
  br label %48

48:                                               ; preds = %46, %41
  %49 = phi ptr [ %47, %46 ], [ %42, %41 ]
  %50 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %49, i64 %21, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !232
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !566

53:                                               ; preds = %48
  tail call void @ira_free(ptr noundef nonnull %51) #23
  %54 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !221
  br label %55

55:                                               ; preds = %48, %53
  %56 = phi ptr [ %49, %48 ], [ %54, %53 ]
  %57 = add nuw nsw i64 %21, 1
  %58 = load i32, ptr @last_basic_block_before_change, align 4, !tbaa !234
  %59 = zext i32 %58 to i64
  %60 = icmp ult i64 %57, %59
  br i1 %60, label %19, label %61, !prof !457, !llvm.loop !567

61:                                               ; preds = %55, %14
  %62 = phi ptr [ %18, %14 ], [ %56, %55 ]
  tail call void @ira_free(ptr noundef %62) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_copies() unnamed_addr #0 !prof !420 !PGOFuncName !568 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_copy_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call fastcc void @ira_copy_iter_init(ptr noundef nonnull %2) #24
  %3 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !453

5:                                                ; preds = %0, %5
  %6 = load ptr, ptr %1, align 8, !tbaa !221
  tail call fastcc void @finish_copy(ptr noundef %6) #24
  %7 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %5, !prof !425, !llvm.loop !569

9:                                                ; preds = %5, %0
  tail call fastcc void @VEC_ira_copy_t_heap_free() #24
  %10 = load ptr, ptr @copy_pool, align 8, !tbaa !221
  tail call void @free_alloc_pool(ptr noundef %10) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_allocnos() unnamed_addr #0 !prof !420 !PGOFuncName !570 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !453

5:                                                ; preds = %0, %5
  %6 = load ptr, ptr %1, align 8, !tbaa !221
  tail call fastcc void @finish_allocno(ptr noundef %6) #24
  %7 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %5, !prof !502, !llvm.loop !571

9:                                                ; preds = %5, %0
  %10 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !221
  tail call void @ira_free(ptr noundef %10) #23
  tail call fastcc void @VEC_ira_allocno_t_heap_free(ptr noundef nonnull @ira_conflict_id_allocno_map_vec) #24
  tail call fastcc void @VEC_ira_allocno_t_heap_free(ptr noundef nonnull @allocno_vec) #24
  %11 = load ptr, ptr @allocno_pool, align 8, !tbaa !221
  tail call void @free_alloc_pool(ptr noundef %11) #23
  %12 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !221
  tail call void @free_alloc_pool(ptr noundef %12) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_cost_vectors() unnamed_addr #0 !prof !420 !PGOFuncName !572 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !234
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %14, !prof !424

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %10, %3 ], [ 0, %0 ]
  %5 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !234
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !221
  tail call void @free_alloc_pool(ptr noundef %9) #23
  %10 = add nuw nsw i64 %4, 1
  %11 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !234
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %3, label %14, !prof !447, !llvm.loop !573

14:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare void @ira_finish_allocno_live_ranges() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_allocno_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !258 !PGOFuncName !574 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = tail call fastcc i32 @VEC_ira_allocno_t_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !261

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !221
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ira_allocno_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !prof !258 !PGOFuncName !575 {
  %3 = load i32, ptr %0, align 8, !tbaa !263
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !263
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_allocno_t_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !258 !PGOFuncName !576 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !261

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !577
  %6 = load i32, ptr %0, align 8, !tbaa !263
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #19

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_copy_t_heap_reserve() unnamed_addr #0 !prof !315 !PGOFuncName !578 {
  %1 = load ptr, ptr @copy_vec, align 8, !tbaa !221
  %2 = tail call fastcc i32 @VEC_ira_copy_t_base_space(ptr noundef %1) #24
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !326

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #23
  store ptr %5, ptr @copy_vec, align 8, !tbaa !221
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ira_copy_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !prof !315 !PGOFuncName !579 {
  %3 = load i32, ptr %0, align 8, !tbaa !328
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !328
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ira_copy_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_copy_t_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !315 !PGOFuncName !580 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !326

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ira_copy_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !581
  %6 = load i32, ptr %0, align 8, !tbaa !328
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sparseset_bit_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !268 !PGOFuncName !582 {
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !583
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 85, ptr noundef nonnull @.str.12) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !584
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !234
  %13 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !408
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 8, !tbaa !416
  %18 = zext i32 %12 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !234
  %21 = icmp eq i32 %20, %1
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %16, %7
  %24 = phi i8 [ 0, %7 ], [ %22, %16 ]
  ret i8 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sparseset_insert_bit(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 !prof !268 !PGOFuncName !585 {
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !584
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  store i32 %2, ptr %7, align 4, !tbaa !234
  %8 = load ptr, ptr %0, align 8, !tbaa !416
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  store i32 %1, ptr %10, align 4, !tbaa !234
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compress_allocno_conflict_vec(ptr nocapture noundef %0) unnamed_addr #13 !prof !268 !PGOFuncName !586 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  %4 = load i32, ptr @curr_allocno_conflict_check_tick, align 4, !tbaa !234
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @curr_allocno_conflict_check_tick, align 4, !tbaa !234
  %6 = load ptr, ptr %3, align 8, !tbaa !221
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @allocno_conflict_check, align 8, !tbaa !221
  br label %10

10:                                               ; preds = %8, %23
  %11 = phi i64 [ 0, %8 ], [ %25, %23 ]
  %12 = phi ptr [ %6, %8 ], [ %27, %23 ]
  %13 = phi i32 [ 0, %8 ], [ %24, %23 ]
  %14 = load i32, ptr %12, align 8, !tbaa !235
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %9, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !234
  %18 = icmp eq i32 %17, %5
  br i1 %18, label %23, label %19

19:                                               ; preds = %10
  store i32 %5, ptr %16, align 4, !tbaa !234
  %20 = add nsw i32 %13, 1
  %21 = sext i32 %13 to i64
  %22 = getelementptr inbounds ptr, ptr %3, i64 %21
  store ptr %12, ptr %22, align 8, !tbaa !221
  br label %23

23:                                               ; preds = %10, %19
  %24 = phi i32 [ %20, %19 ], [ %13, %10 ]
  %25 = add nuw nsw i64 %11, 1
  %26 = getelementptr inbounds ptr, ptr %3, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !221
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10, !llvm.loop !587

29:                                               ; preds = %23, %1
  %30 = phi i32 [ 0, %1 ], [ %24, %23 ]
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  store i32 %30, ptr %31, align 8, !tbaa !238
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds ptr, ptr %3, i64 %32
  store ptr null, ptr %33, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 !prof !588 !PGOFuncName !589 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !590

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !562
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !591

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !221
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !221
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ira_allocno_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !592 !PGOFuncName !593 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ira_copy_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !420 !PGOFuncName !594 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 !prof !268 !PGOFuncName !595 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !268 !PGOFuncName !596 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #24, !range !269
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #24
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !221
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !268 !PGOFuncName !597 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !598
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !268 !PGOFuncName !600 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #24
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #24
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 738, ptr noundef nonnull @.str.12) #23
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !601
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !601
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 !prof !268 !PGOFuncName !603 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !598
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !221
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !221
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #20 !prof !268 !PGOFuncName !604 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !221
  ret void
}

; Function Attrs: optsize
declare ptr @ira_allocate_bitmap() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !268 !PGOFuncName !605 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #24
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !268 !PGOFuncName !606 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #24
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !268 !PGOFuncName !607 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 687, ptr noundef nonnull @.str.12) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !221
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !268 !PGOFuncName !608 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !609 !PGOFuncName !610 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !611
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !612

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #24
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_loop_to_tree(ptr noundef %0) unnamed_addr #18 !prof !613 !PGOFuncName !614 {
  %2 = tail call fastcc ptr @loop_outer(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !615

4:                                                ; preds = %1
  tail call fastcc void @add_loop_to_tree(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %7 = load i32, ptr %0, align 8, !tbaa !488
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8
  %10 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !232
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13, !prof !489

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !479
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %43, !prof !616

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8, i32 1
  store ptr %0, ptr %18, align 8, !tbaa !273
  store ptr null, ptr %9, align 8, !tbaa !272
  %19 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %0) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21, !prof !497

21:                                               ; preds = %17
  %22 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  br label %23

23:                                               ; preds = %21, %30
  %24 = phi ptr [ %19, %21 ], [ %31, %30 ]
  %25 = load i32, ptr %24, align 8, !tbaa !488
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %22, i64 %26, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !232
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %24) #24
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %23, !prof !362, !llvm.loop !617

33:                                               ; preds = %30, %17
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8, i32 2
  %35 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8, i32 6
  store ptr null, ptr %35, align 8, !tbaa !367
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  br label %43

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %22, i64 %26
  %38 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %22, i64 %26, i32 5
  %39 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %22, i64 %26, i32 4
  %40 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8, i32 2
  %41 = load <2 x ptr>, ptr %39, align 8, !tbaa !221
  store ptr %9, ptr %38, align 8, !tbaa !479
  store <2 x ptr> %41, ptr %40, align 8, !tbaa !221
  store ptr %9, ptr %39, align 8, !tbaa !480
  %42 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8, i32 6
  store ptr %37, ptr %42, align 8, !tbaa !367
  br label %43

43:                                               ; preds = %33, %36, %13, %5
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @setup_loop_tree_level(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #18 !prof !420 !PGOFuncName !618 {
  %3 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 7
  store i32 %1, ptr %3, align 8, !tbaa !619
  %4 = add nsw i32 %1, 1
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !221
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !497

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %14, %8 ], [ %6, %2 ]
  %10 = phi i32 [ %12, %8 ], [ %4, %2 ]
  %11 = tail call fastcc i32 @setup_loop_tree_level(ptr noundef nonnull %9, i32 noundef %4) #24
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 %10)
  %13 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !221
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !prof !362, !llvm.loop !620

16:                                               ; preds = %8, %2
  %17 = phi i32 [ %4, %2 ], [ %12, %8 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !268 !PGOFuncName !621 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @create_loop_tree_node_allocnos(ptr noundef readonly %0) #0 !prof !609 !PGOFuncName !622 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !272
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !623

7:                                                ; preds = %1
  tail call fastcc void @create_bb_allocnos(ptr noundef nonnull %0) #24
  br label %45

8:                                                ; preds = %1
  %9 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !221
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %45, label %11, !prof !435

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !273
  %14 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !461
  %16 = tail call fastcc ptr @ei_start_1(ptr noundef %15) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !465
  %17 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %16, ptr %17, align 8, !tbaa.struct !466
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %16, ptr noundef nonnull %3) #24, !range !269
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %11, %28
  %21 = load ptr, ptr %3, align 8, !tbaa !221
  %22 = load ptr, ptr %21, align 8, !tbaa !467
  %23 = load ptr, ptr %12, align 8, !tbaa !273
  %24 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !469
  %26 = icmp eq ptr %22, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call fastcc void @create_loop_allocnos(ptr noundef nonnull %21) #24
  br label %28

28:                                               ; preds = %20, %27
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %29 = load i32, ptr %2, align 8
  %30 = load ptr, ptr %17, align 8
  %31 = call fastcc zeroext i8 @ei_cond(i32 %29, ptr %30, ptr noundef nonnull %3) #24, !range !269
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %20, !llvm.loop !624

33:                                               ; preds = %28, %11
  %34 = load ptr, ptr %12, align 8, !tbaa !273
  %35 = tail call ptr @get_loop_exit_edges(ptr noundef %34) #23
  store ptr %35, ptr %4, align 8, !tbaa !221
  %36 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %35, i32 noundef 0, ptr noundef nonnull %3) #24, !range !432
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33, %38
  %39 = phi i32 [ %41, %38 ], [ 0, %33 ]
  %40 = load ptr, ptr %3, align 8, !tbaa !221
  tail call fastcc void @create_loop_allocnos(ptr noundef %40) #24
  %41 = add nuw nsw i32 %39, 1
  %42 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %35, i32 noundef %41, ptr noundef nonnull %3) #24, !range !432
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %38, !llvm.loop !625

44:                                               ; preds = %38, %33
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  br label %45

45:                                               ; preds = %8, %44, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @propagate_modified_regnos(ptr noundef readonly %0) #0 !prof !420 !PGOFuncName !626 {
  %2 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !221
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %12, label %4, !prof !435

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !367
  %7 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !454
  %9 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !454
  %11 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %8, ptr noundef %10) #23
  br label %12

12:                                               ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_bb_allocnos(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !613 !PGOFuncName !627 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %4 = load ptr, ptr %0, align 8, !tbaa !272
  store ptr %4, ptr @curr_bb, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !379
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !379
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10, !prof !487

10:                                               ; preds = %1, %25
  %11 = phi ptr [ %27, %25 ], [ %8, %1 ]
  %12 = load ptr, ptr %5, align 8, !tbaa !379
  %13 = load ptr, ptr %12, align 8, !tbaa !628
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !379
  %16 = icmp eq ptr %11, %15
  br i1 %16, label %29, label %17, !prof !630

17:                                               ; preds = %10
  %18 = load i32, ptr %11, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -11
  %21 = icmp ult i32 %20, -3
  br i1 %21, label %25, label %22, !prof !631

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !379
  tail call fastcc void @create_insn_allocnos(ptr noundef %24, i8 noundef zeroext 0) #24
  br label %25

25:                                               ; preds = %17, %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !379
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10, !prof !632, !llvm.loop !633

29:                                               ; preds = %10, %25, %1
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !485
  %32 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %31) #24
  %33 = getelementptr inbounds %struct.df_lr_bb_info, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !634
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %34, ptr noundef nonnull %2) #24
  %35 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !269
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %54, label %37, !prof !636

37:                                               ; preds = %29
  %38 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !221
  br label %39

39:                                               ; preds = %37, %50
  %40 = phi ptr [ %38, %37 ], [ %51, %50 ]
  %41 = load i32, ptr %2, align 4, !tbaa !234
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !221
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50, !prof !637

46:                                               ; preds = %39
  %47 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !221
  %48 = tail call ptr @ira_create_allocno(i32 noundef %41, i8 noundef zeroext 0, ptr noundef %47) #24
  %49 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !221
  br label %50

50:                                               ; preds = %39, %46
  %51 = phi ptr [ %40, %39 ], [ %49, %46 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %52 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !269
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %39, !prof !638, !llvm.loop !639

54:                                               ; preds = %50, %29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_loop_allocnos(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !268 !PGOFuncName !640 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !473
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !485
  %8 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %7) #24
  %9 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !634
  %11 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !221
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %11, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !455
  %14 = load ptr, ptr %0, align 8, !tbaa !467
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !485
  %17 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %16) #24
  %18 = getelementptr inbounds %struct.df_lr_bb_info, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !641
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %19, ptr noundef nonnull %2) #24
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !269
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %59, label %22

22:                                               ; preds = %1, %56
  %23 = load i32, ptr %2, align 4, !tbaa !234
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %10, i32 noundef %23) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !221
  %28 = zext i32 %23 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !221
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !221
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !367
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %35, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !232
  %40 = getelementptr inbounds ptr, ptr %39, i64 %28
  %41 = load ptr, ptr %40, align 8, !tbaa !221
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = tail call ptr @ira_create_allocno(i32 noundef %23, i8 noundef zeroext 0, ptr noundef nonnull %35) #24
  %45 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !221
  br label %46

46:                                               ; preds = %43, %37, %32
  %47 = phi ptr [ %45, %43 ], [ %33, %37 ], [ %33, %32 ]
  %48 = tail call ptr @ira_create_allocno(i32 noundef %23, i8 noundef zeroext 0, ptr noundef %47) #24
  %49 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !221
  %50 = getelementptr inbounds ptr, ptr %49, i64 %28
  %51 = load ptr, ptr %50, align 8, !tbaa !221
  br label %52

52:                                               ; preds = %46, %26
  %53 = phi ptr [ %51, %46 ], [ %30, %26 ]
  %54 = load i32, ptr %53, align 8, !tbaa !235
  %55 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %54) #23
  br label %56

56:                                               ; preds = %22, %52
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %57 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !269
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %22, !llvm.loop !642

59:                                               ; preds = %56, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_insn_allocnos(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !643 !PGOFuncName !644 {
  br label %3

3:                                                ; preds = %61, %2
  %4 = phi ptr [ %0, %2 ], [ %64, %61 ]
  %5 = phi i8 [ %1, %2 ], [ %63, %61 ]
  %6 = load i32, ptr %4, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %69 [
    i16 37, label %8
    i16 23, label %57
    i16 25, label %65
    i16 43, label %67
  ], !prof !645

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #24
  %10 = icmp sgt i32 %9, 52
  br i1 %10, label %11, label %111, !prof !646

11:                                               ; preds = %8
  %12 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !221
  %13 = zext nneg i32 %9 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !221
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20, !prof !647

17:                                               ; preds = %11
  %18 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !221
  %19 = tail call ptr @ira_create_allocno(i32 noundef %9, i8 noundef zeroext 0, ptr noundef %18) #24
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi ptr [ %19, %17 ], [ %15, %11 ]
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !242
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !242
  %25 = load i32, ptr @optimize_size, align 4, !tbaa !234
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %46, !prof !648

27:                                               ; preds = %20
  %28 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !234
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30, !prof !648

30:                                               ; preds = %27
  %31 = load ptr, ptr @cfun, align 8, !tbaa !221
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !442
  %34 = load ptr, ptr %33, align 8, !tbaa !482
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 8
  %36 = load i64, ptr %35, align 8, !tbaa !649
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %30, %27
  %39 = load ptr, ptr @curr_bb, align 8, !tbaa !221
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 11
  %41 = load i32, ptr %40, align 8, !tbaa !650
  %42 = add i32 %41, 9
  %43 = icmp ult i32 %42, 19
  br i1 %43, label %46, label %44, !prof !651

44:                                               ; preds = %38
  %45 = sdiv i32 %41, 10
  br label %46

46:                                               ; preds = %44, %38, %20, %30
  %47 = phi i32 [ 1000, %30 ], [ 1000, %20 ], [ %45, %44 ], [ 1, %38 ]
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %21, i64 0, i32 8
  %49 = load i32, ptr %48, align 4, !tbaa !243
  %50 = add nsw i32 %49, %47
  store i32 %50, ptr %48, align 4, !tbaa !243
  %51 = icmp eq i8 %5, 0
  br i1 %51, label %111, label %52, !prof !652

52:                                               ; preds = %46
  %53 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !221
  %54 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %53, i64 0, i32 14
  %55 = load ptr, ptr %54, align 8, !tbaa !454
  %56 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %55, i32 noundef %9) #23
  br label %111

57:                                               ; preds = %3
  %58 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !379
  tail call fastcc void @create_insn_allocnos(ptr noundef %59, i8 noundef zeroext 1) #24
  %60 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %61

61:                                               ; preds = %57, %65, %67, %71
  %62 = phi ptr [ %60, %57 ], [ %66, %65 ], [ %68, %67 ], [ %72, %71 ]
  %63 = phi i8 [ 0, %57 ], [ 1, %65 ], [ 0, %67 ], [ 0, %71 ]
  %64 = load ptr, ptr %62, align 8, !tbaa !379
  br label %3

65:                                               ; preds = %3
  %66 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  br label %61

67:                                               ; preds = %3
  %68 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  br label %61

69:                                               ; preds = %3
  %70 = and i16 %7, -2
  switch i16 %70, label %74 [
    i16 78, label %71
    i16 76, label %71
    i16 74, label %71
  ]

71:                                               ; preds = %69, %69, %69
  %72 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !379
  tail call fastcc void @create_insn_allocnos(ptr noundef %73, i8 noundef zeroext 1) #24
  br label %61

74:                                               ; preds = %69
  %75 = and i32 %6, 65535
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !221
  %79 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %76
  %80 = load i8, ptr %79, align 1, !tbaa !379
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %111, label %82, !prof !653

82:                                               ; preds = %74
  %83 = zext i8 %80 to i64
  br label %84

84:                                               ; preds = %82, %109
  %85 = phi i64 [ %83, %82 ], [ %86, %109 ]
  %86 = add nsw i64 %85, -1
  %87 = getelementptr inbounds i8, ptr %78, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !379
  switch i8 %88, label %109 [
    i8 101, label %95
    i8 69, label %89
  ], !prof !654

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %91 = getelementptr inbounds [1 x %union.rtunion_def], ptr %90, i64 0, i64 %86
  %92 = load ptr, ptr %91, align 8, !tbaa !379
  %93 = load i32, ptr %92, align 8, !tbaa !655
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %99, label %109, !prof !657

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %97 = getelementptr inbounds [1 x %union.rtunion_def], ptr %96, i64 0, i64 %86
  %98 = load ptr, ptr %97, align 8, !tbaa !379
  tail call fastcc void @create_insn_allocnos(ptr noundef %98, i8 noundef zeroext %5) #24
  br label %109

99:                                               ; preds = %89, %99
  %100 = phi i64 [ %104, %99 ], [ 0, %89 ]
  %101 = phi ptr [ %105, %99 ], [ %92, %89 ]
  %102 = getelementptr inbounds %struct.rtvec_def, ptr %101, i64 0, i32 1, i64 %100
  %103 = load ptr, ptr %102, align 8, !tbaa !221
  tail call fastcc void @create_insn_allocnos(ptr noundef %103, i8 noundef zeroext %5) #24
  %104 = add nuw nsw i64 %100, 1
  %105 = load ptr, ptr %91, align 8, !tbaa !379
  %106 = load i32, ptr %105, align 8, !tbaa !655
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %104, %107
  br i1 %108, label %99, label %109, !prof !658, !llvm.loop !659

109:                                              ; preds = %99, %89, %84, %95
  %110 = icmp sgt i64 %85, 1
  br i1 %110, label %84, label %111, !prof !660, !llvm.loop !661

111:                                              ; preds = %109, %74, %8, %52, %46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !613 !PGOFuncName !662 {
  %4 = load ptr, ptr %1, align 8, !tbaa !663
  store ptr %4, ptr %0, align 8, !tbaa !665
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !667
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !489

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !665
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !668
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !615

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 53, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !670
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !239
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %21 = and i32 %16, 53
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %19, %22
  store i64 %23, ptr %20, align 8, !tbaa !671
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = add nuw nsw i32 %16, %25
  store i32 %26, ptr %2, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #16 !prof !613 !PGOFuncName !672 {
  %2 = load ptr, ptr @df, align 8, !tbaa !221
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !673
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !615

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !675
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !221
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !676 !PGOFuncName !677 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !671
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !678

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !679

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !234
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !680, !llvm.loop !681

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !234
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !234
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !670
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !665
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !670
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !682

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !239
  store i64 %35, ptr %3, align 8, !tbaa !671
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !683

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !234
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !234
  %40 = load i32, ptr %23, align 8, !tbaa !670
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !670
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !684, !llvm.loop !685

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !686
  store ptr %44, ptr %0, align 8, !tbaa !665
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !687

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !668
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !234
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !671
  store i32 %16, ptr %1, align 4, !tbaa !234
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #15 !prof !688 !PGOFuncName !689 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !671
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !671
  %6 = load i32, ptr %1, align 4, !tbaa !234
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !234
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @mark_all_loops_for_removal() unnamed_addr #6 !prof !268 !PGOFuncName !690 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %3 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #24, !range !432
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  br label %7

7:                                                ; preds = %5, %38
  %8 = phi ptr [ %6, %5 ], [ %39, %38 ]
  %9 = phi i64 [ 0, %5 ], [ %40, %38 ]
  %10 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %8, i64 %9, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !232
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %8, i64 %9, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !367
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %8, i64 %9, i32 8
  br i1 %16, label %18, label %19

18:                                               ; preds = %13
  store i8 0, ptr %17, align 4, !tbaa !691
  br label %38

19:                                               ; preds = %13
  store i8 1, ptr %17, align 4, !tbaa !691
  %20 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !234
  %21 = icmp sgt i32 %20, 1
  %22 = load ptr, ptr @ira_dump_file, align 8
  %23 = icmp ne ptr %22, null
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %8, i64 %9, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !273
  %28 = load i32, ptr %27, align 8, !tbaa !488
  %29 = getelementptr inbounds %struct.loop, ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !461
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !485
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 11
  %34 = load i32, ptr %33, align 8, !tbaa !650
  %35 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %27) #24
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.27, i32 noundef %28, i32 noundef %32, i32 noundef %34, i32 noundef %35) #24
  %37 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  br label %38

38:                                               ; preds = %7, %25, %19, %18
  %39 = phi ptr [ %8, %7 ], [ %37, %25 ], [ %8, %19 ], [ %8, %18 ]
  %40 = add nuw i64 %9, 1
  %41 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %42 = trunc i64 %40 to i32
  %43 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %41, i32 noundef %42, ptr noundef nonnull %1) #24, !range !432
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %7, !llvm.loop !692

45:                                               ; preds = %38, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_loops_for_removal() unnamed_addr #0 !prof !420 !PGOFuncName !693 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %3 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %2) #24
  %4 = zext i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 3
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #23
  %7 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %8 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %1) #24, !range !432
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %53, label %10, !prof !453

10:                                               ; preds = %0
  %11 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  br label %12

12:                                               ; preds = %10, %45
  %13 = phi ptr [ %11, %10 ], [ %46, %45 ]
  %14 = phi i64 [ 0, %10 ], [ %48, %45 ]
  %15 = phi i32 [ 0, %10 ], [ %47, %45 ]
  %16 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %13, i64 %14
  %17 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %13, i64 %14, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !232
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20, !prof !436

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %13, i64 %14, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !367
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24, !prof !435

24:                                               ; preds = %20
  %25 = add nsw i32 %15, 1
  %26 = sext i32 %15 to i64
  %27 = getelementptr inbounds ptr, ptr %6, i64 %26
  store ptr %16, ptr %27, align 8, !tbaa !221
  %28 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !221
  %29 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 %14, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !367
  %31 = tail call fastcc zeroext i8 @low_pressure_loop_node_p(ptr noundef %30) #24, !range !269
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 %14
  %35 = tail call fastcc zeroext i8 @low_pressure_loop_node_p(ptr noundef %34) #24, !range !269
  %36 = icmp ne i8 %35, 0
  br label %37

37:                                               ; preds = %33, %24
  %38 = phi i1 [ false, %24 ], [ %36, %33 ]
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %20, %37
  %41 = phi ptr [ %28, %37 ], [ %13, %20 ]
  %42 = phi i8 [ %39, %37 ], [ 0, %20 ]
  %43 = phi i32 [ %25, %37 ], [ %15, %20 ]
  %44 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %41, i64 %14, i32 8
  store i8 %42, ptr %44, align 4, !tbaa !691
  br label %45

45:                                               ; preds = %40, %12
  %46 = phi ptr [ %13, %12 ], [ %41, %40 ]
  %47 = phi i32 [ %15, %12 ], [ %43, %40 ]
  %48 = add nuw i64 %14, 1
  %49 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %50 = trunc i64 %48 to i32
  %51 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %49, i32 noundef %50, ptr noundef nonnull %1) #24, !range !432
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %12, !prof !424, !llvm.loop !694

53:                                               ; preds = %45, %0
  %54 = phi i32 [ 0, %0 ], [ %47, %45 ]
  %55 = sext i32 %54 to i64
  tail call void @spec_qsort(ptr noundef %6, i64 noundef %55, i64 noundef 8, ptr noundef nonnull @loop_compare_func) #23
  %56 = load ptr, ptr @compiler_params, align 8, !tbaa !221
  %57 = getelementptr inbounds %struct.param_info, ptr %56, i64 105, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !695
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %109, label %60, !prof !497

60:                                               ; preds = %53
  %61 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !234
  %62 = load ptr, ptr @ira_dump_file, align 8
  br label %63

63:                                               ; preds = %60, %99
  %64 = phi ptr [ %56, %60 ], [ %100, %99 ]
  %65 = phi ptr [ %62, %60 ], [ %101, %99 ]
  %66 = phi i32 [ %61, %60 ], [ %102, %99 ]
  %67 = phi i64 [ 0, %60 ], [ %103, %99 ]
  %68 = getelementptr inbounds ptr, ptr %6, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !221
  %70 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %69, i64 0, i32 8
  store i8 1, ptr %70, align 4, !tbaa !691
  %71 = icmp sgt i32 %66, 1
  %72 = icmp ne ptr %65, null
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %99

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %69, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !273
  %77 = load i32, ptr %76, align 8, !tbaa !488
  %78 = getelementptr inbounds %struct.loop, ptr %76, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !461
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !485
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 11
  %83 = load i32, ptr %82, align 8, !tbaa !650
  %84 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %76) #24
  %85 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %69, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !367
  %87 = tail call fastcc zeroext i8 @low_pressure_loop_node_p(ptr noundef %86) #24, !range !269
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %74
  %90 = tail call fastcc zeroext i8 @low_pressure_loop_node_p(ptr noundef nonnull %69) #24, !range !269
  %91 = icmp eq i8 %90, 0
  %92 = select i1 %91, ptr @.str.30, ptr @.str.29
  br label %93

93:                                               ; preds = %89, %74
  %94 = phi ptr [ @.str.30, %74 ], [ %92, %89 ]
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %65, ptr noundef nonnull @.str.28, i32 noundef %77, i32 noundef %81, i32 noundef %83, i32 noundef %84, ptr noundef nonnull %94) #24
  %96 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !234
  %97 = load ptr, ptr @ira_dump_file, align 8
  %98 = load ptr, ptr @compiler_params, align 8, !tbaa !221
  br label %99

99:                                               ; preds = %63, %93
  %100 = phi ptr [ %64, %63 ], [ %98, %93 ]
  %101 = phi ptr [ %65, %63 ], [ %97, %93 ]
  %102 = phi i32 [ %66, %63 ], [ %96, %93 ]
  %103 = add nuw i64 %67, 1
  %104 = trunc i64 %103 to i32
  %105 = sub nsw i32 %54, %104
  %106 = getelementptr inbounds %struct.param_info, ptr %100, i64 105, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !695
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %63, !prof !362, !llvm.loop !697

109:                                              ; preds = %99, %53
  tail call void @ira_free(ptr noundef %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ira_loop_tree_node_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !592 !PGOFuncName !698 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_uneccesary_loop_nodes_from_loop_tree(ptr noundef %0) unnamed_addr #0 !prof !420 !PGOFuncName !699 {
  %2 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 4, !tbaa !691
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !435

5:                                                ; preds = %1
  tail call fastcc void @VEC_ira_loop_tree_node_t_heap_safe_push(ptr noundef nonnull @children_vec, ptr noundef nonnull %0) #24
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr @children_vec, align 8
  %8 = tail call fastcc i32 @VEC_ira_loop_tree_node_t_base_length(ptr noundef %7) #24
  %9 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !221
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12, !prof !453

12:                                               ; preds = %6, %18
  %13 = phi ptr [ %20, %18 ], [ %10, %6 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !272
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !489

16:                                               ; preds = %12
  tail call fastcc void @remove_uneccesary_loop_nodes_from_loop_tree(ptr noundef nonnull %13) #24
  br label %18

17:                                               ; preds = %12
  tail call fastcc void @VEC_ira_loop_tree_node_t_heap_safe_push(ptr noundef nonnull @children_vec, ptr noundef nonnull %13) #24
  br label %18

18:                                               ; preds = %16, %17
  %19 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %13, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !221
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !prof !493, !llvm.loop !700

22:                                               ; preds = %18, %6
  %23 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  br i1 %4, label %24, label %28, !prof !435

24:                                               ; preds = %22
  %25 = load ptr, ptr @children_vec, align 8
  %26 = tail call fastcc i32 @VEC_ira_loop_tree_node_t_base_length(ptr noundef %25) #24
  %27 = icmp ugt i32 %26, %8
  br i1 %27, label %29, label %44, !prof !424

28:                                               ; preds = %22
  tail call fastcc void @VEC_ira_loop_tree_node_t_heap_safe_push(ptr noundef nonnull @removed_loop_vec, ptr noundef nonnull %0) #24
  br label %44

29:                                               ; preds = %24, %40
  %30 = phi ptr [ %41, %40 ], [ %25, %24 ]
  %31 = tail call fastcc ptr @VEC_ira_loop_tree_node_t_base_pop(ptr noundef %30) #24
  %32 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %31, i64 0, i32 6
  store ptr %0, ptr %32, align 8, !tbaa !367
  %33 = load ptr, ptr %9, align 8, !tbaa !479
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %31, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !492
  store ptr %31, ptr %9, align 8, !tbaa !479
  %35 = load ptr, ptr %31, align 8, !tbaa !272
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40, !prof !489

37:                                               ; preds = %29
  %38 = load ptr, ptr %23, align 8, !tbaa !480
  %39 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %31, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !701
  store ptr %31, ptr %23, align 8, !tbaa !480
  br label %40

40:                                               ; preds = %37, %29
  %41 = load ptr, ptr @children_vec, align 8
  %42 = tail call fastcc i32 @VEC_ira_loop_tree_node_t_base_length(ptr noundef %41) #24
  %43 = icmp ugt i32 %42, %8
  br i1 %43, label %29, label %44, !prof !702, !llvm.loop !703

44:                                               ; preds = %40, %24, %28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ira_loop_tree_node_t_heap_free(ptr nocapture noundef %0) unnamed_addr #20 !prof !592 !PGOFuncName !704 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !705

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !221
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_low_level_allocnos() unnamed_addr #0 !prof !268 !PGOFuncName !706 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %50, label %5

5:                                                ; preds = %0, %47
  %6 = phi i1 [ false, %47 ], [ true, %0 ]
  %7 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !221
  br label %8

8:                                                ; preds = %5, %18
  %9 = phi ptr [ %7, %5 ], [ %19, %18 ]
  %10 = load ptr, ptr %1, align 8, !tbaa !221
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !229
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !274
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %8, %14, %31
  %19 = phi ptr [ %9, %8 ], [ %9, %14 ], [ %32, %31 ]
  %20 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %50, label %8, !llvm.loop !707

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !225
  %25 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %9, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !232
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !221
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  store ptr %9, ptr %11, align 8, !tbaa !229
  store ptr %10, ptr %28, align 8, !tbaa !221
  %32 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !221
  br label %18

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %12, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !367
  %36 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %35, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !232
  %38 = getelementptr inbounds ptr, ptr %37, i64 %27
  %39 = load ptr, ptr %38, align 8, !tbaa !221
  %40 = icmp eq ptr %39, null
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 20
  %42 = load ptr, ptr %41, align 8, !tbaa !254
  tail call fastcc void @change_allocno_in_range_list(ptr noundef %42, ptr noundef nonnull %29) #24
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 20
  %44 = load ptr, ptr %43, align 8, !tbaa !254
  %45 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %42, ptr noundef %44) #24
  store ptr %45, ptr %43, align 8, !tbaa !254
  store ptr null, ptr %41, align 8, !tbaa !254
  br i1 %40, label %46, label %47

46:                                               ; preds = %33
  tail call fastcc void @propagate_some_info_from_allocno(ptr noundef nonnull %29, ptr noundef nonnull %10) #24
  br label %47

47:                                               ; preds = %46, %33
  %48 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %5, !llvm.loop !707

50:                                               ; preds = %47, %18, %0
  %51 = phi i1 [ true, %0 ], [ %6, %18 ], [ false, %47 ]
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %52 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50, %54
  %55 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %54, !llvm.loop !708

57:                                               ; preds = %54, %50
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %58 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %89, label %60

60:                                               ; preds = %57, %86
  %61 = load ptr, ptr %1, align 8, !tbaa !221
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !225
  %64 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !221
  %65 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %64, i64 0, i32 9
  %66 = load ptr, ptr %65, align 8, !tbaa !232
  %67 = sext i32 %63 to i64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !221
  %70 = icmp eq ptr %69, %61
  br i1 %70, label %71, label %85

71:                                               ; preds = %60
  %72 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !221
  %73 = getelementptr inbounds ptr, ptr %72, i64 %67
  store ptr %61, ptr %73, align 8, !tbaa !221
  %74 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 5
  store ptr null, ptr %74, align 8, !tbaa !231
  %75 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 17
  store ptr null, ptr %75, align 8, !tbaa !274
  %76 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 27
  %77 = load i64, ptr %76, align 8, !tbaa !241
  %78 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 26
  store i64 %77, ptr %78, align 8, !tbaa !240
  %79 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 31
  %80 = load i16, ptr %79, align 4
  %81 = and i16 %80, 32
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %71
  %84 = or i16 %80, 16
  store i16 %84, ptr %79, align 4
  br label %86

85:                                               ; preds = %60
  tail call fastcc void @finish_allocno(ptr noundef nonnull %61) #24
  br label %86

86:                                               ; preds = %71, %83, %85
  %87 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !269
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %60, !llvm.loop !709

89:                                               ; preds = %86, %57
  br i1 %51, label %91, label %90

90:                                               ; preds = %89
  tail call void @ira_rebuild_start_finish_chains() #23
  br label %91

91:                                               ; preds = %90, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_unnecessary_allocnos() unnamed_addr #0 !prof !420 !PGOFuncName !710 {
  store ptr null, ptr @regno_allocnos, align 8, !tbaa !221
  %1 = tail call i32 @max_reg_num() #23
  %2 = icmp sgt i32 %1, 53
  br i1 %2, label %3, label %78, !prof !424

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %72
  %6 = phi i64 [ %4, %3 ], [ %8, %72 ]
  %7 = phi i8 [ 0, %3 ], [ %73, %72 ]
  %8 = add nsw i64 %6, -1
  %9 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !221
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !221
  %12 = icmp eq ptr %11, null
  br i1 %12, label %72, label %13, !prof !531

13:                                               ; preds = %5, %55
  %14 = phi i8 [ %58, %55 ], [ %7, %5 ]
  %15 = phi i8 [ %57, %55 ], [ 0, %5 ]
  %16 = phi ptr [ %19, %55 ], [ %11, %5 ]
  %17 = phi ptr [ %56, %55 ], [ null, %5 ]
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !231
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !229
  %22 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 8
  %23 = load i8, ptr %22, align 4, !tbaa !691
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %55, label %25, !prof !230

25:                                               ; preds = %13, %34
  %26 = phi ptr [ %28, %34 ], [ %21, %13 ]
  %27 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !367
  %29 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !232
  %31 = getelementptr inbounds ptr, ptr %30, i64 %8
  %32 = load ptr, ptr %31, align 8, !tbaa !221
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 0, i32 8
  %36 = load i8, ptr %35, align 4, !tbaa !691
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %25, !llvm.loop !711

38:                                               ; preds = %34
  %39 = getelementptr inbounds ptr, ptr %30, i64 %8
  store ptr %28, ptr %20, align 8, !tbaa !229
  store ptr %16, ptr %39, align 8, !tbaa !221
  %40 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !236
  %42 = load i32, ptr %16, align 8, !tbaa !235
  %43 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %41, i32 noundef %42) #23
  br label %55

44:                                               ; preds = %25
  %45 = icmp eq ptr %17, null
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 5
  %47 = load ptr, ptr @ira_regno_allocno_map, align 8
  %48 = getelementptr inbounds ptr, ptr %47, i64 %8
  %49 = select i1 %45, ptr %48, ptr %46
  store ptr %19, ptr %49, align 8, !tbaa !221
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 20
  %51 = load ptr, ptr %50, align 8, !tbaa !254
  tail call fastcc void @change_allocno_in_range_list(ptr noundef %51, ptr noundef nonnull %32) #24
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 20
  %53 = load ptr, ptr %52, align 8, !tbaa !254
  %54 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %51, ptr noundef %53) #24
  store ptr %54, ptr %52, align 8, !tbaa !254
  store ptr null, ptr %50, align 8, !tbaa !254
  tail call fastcc void @propagate_some_info_from_allocno(ptr noundef nonnull %32, ptr noundef nonnull %16) #24
  tail call fastcc void @finish_allocno(ptr noundef nonnull %16) #24
  br label %55

55:                                               ; preds = %13, %44, %38
  %56 = phi ptr [ %16, %38 ], [ %17, %44 ], [ %16, %13 ]
  %57 = phi i8 [ 1, %38 ], [ %15, %44 ], [ %15, %13 ]
  %58 = phi i8 [ %14, %38 ], [ 1, %44 ], [ %14, %13 ]
  %59 = icmp eq ptr %19, null
  br i1 %59, label %60, label %13, !prof !533, !llvm.loop !712

60:                                               ; preds = %55
  %61 = icmp eq i8 %57, 0
  br i1 %61, label %72, label %62, !prof !713

62:                                               ; preds = %60
  %63 = load ptr, ptr @regno_allocnos, align 8, !tbaa !221
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !234
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 3
  %69 = tail call ptr @ira_allocate(i64 noundef %68) #23
  store ptr %69, ptr @regno_allocnos, align 8, !tbaa !221
  br label %70

70:                                               ; preds = %65, %62
  %71 = trunc i64 %8 to i32
  tail call fastcc void @ira_rebuild_regno_allocno_list(i32 noundef %71) #24
  br label %72

72:                                               ; preds = %5, %60, %70
  %73 = phi i8 [ %58, %60 ], [ %58, %70 ], [ %7, %5 ]
  %74 = icmp sgt i64 %6, 54
  br i1 %74, label %5, label %75, !prof !529, !llvm.loop !714

75:                                               ; preds = %72
  %76 = icmp eq i8 %73, 0
  br i1 %76, label %78, label %77, !prof !715

77:                                               ; preds = %75
  tail call void @ira_rebuild_start_finish_chains() #23
  br label %78

78:                                               ; preds = %0, %77, %75
  %79 = load ptr, ptr @regno_allocnos, align 8, !tbaa !221
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81, !prof !435

81:                                               ; preds = %78
  tail call void @ira_free(ptr noundef nonnull %79) #23
  br label %82

82:                                               ; preds = %81, %78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_loop_tree_node_t_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !716 !PGOFuncName !717 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !718

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !719
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_loop_tree_node(ptr nocapture noundef %0) unnamed_addr #0 !prof !420 !PGOFuncName !721 {
  %2 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !232
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5, !prof !436

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !456
  tail call void @ira_free_bitmap(ptr noundef %7) #23
  %8 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !455
  tail call void @ira_free_bitmap(ptr noundef %9) #23
  %10 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !454
  tail call void @ira_free_bitmap(ptr noundef %11) #23
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !236
  tail call void @ira_free_bitmap(ptr noundef %13) #23
  %14 = load ptr, ptr %2, align 8, !tbaa !232
  tail call void @ira_free(ptr noundef %14) #23
  store ptr null, ptr %2, align 8, !tbaa !232
  br label %15

15:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_ira_loop_tree_node_t_base_pop(ptr nocapture noundef %0) unnamed_addr #15 !prof !613 !PGOFuncName !722 {
  %2 = load i32, ptr %0, align 8, !tbaa !719
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !719
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_ira_loop_tree_node_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !221
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !268 !PGOFuncName !723 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !611
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #24
  ret i32 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @low_pressure_loop_node_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !268 !PGOFuncName !724 {
  %2 = load ptr, ptr %0, align 8, !tbaa !272
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %22

4:                                                ; preds = %1
  %5 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !234
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  br label %12

9:                                                ; preds = %12
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %8
  br i1 %11, label %22, label %12, !llvm.loop !725

12:                                               ; preds = %7, %9
  %13 = phi i64 [ 0, %7 ], [ %10, %9 ]
  %14 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !234
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !234
  %19 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %16
  %20 = load i32, ptr %19, align 4, !tbaa !234
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %9

22:                                               ; preds = %12, %9, %4, %1
  %23 = phi i8 [ 0, %1 ], [ 1, %4 ], [ 0, %12 ], [ 1, %9 ]
  ret i8 %23
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @loop_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 !prof !268 !PGOFuncName !726 {
  %3 = load ptr, ptr %0, align 8, !tbaa !221
  %4 = load ptr, ptr %1, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %3, i64 0, i32 8
  %6 = load i8, ptr %5, align 4, !tbaa !691
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 0, i32 8
  %9 = load i8, ptr %8, align 4, !tbaa !691
  %10 = icmp eq i8 %9, 0
  br i1 %7, label %12, label %11

11:                                               ; preds = %2
  br i1 %10, label %37, label %13

12:                                               ; preds = %2
  br i1 %10, label %13, label %37

13:                                               ; preds = %11, %12
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !273
  %16 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !461
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 11
  %19 = load i32, ptr %18, align 8, !tbaa !650
  %20 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !273
  %22 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !461
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 11
  %25 = load i32, ptr %24, align 8, !tbaa !650
  %26 = sub nsw i32 %19, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %13
  %29 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %15) #24
  %30 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %21) #24
  %31 = sub nsw i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, ptr %15, align 8, !tbaa !488
  %35 = load i32, ptr %21, align 8, !tbaa !488
  %36 = sub nsw i32 %34, %35
  br label %37

37:                                               ; preds = %28, %13, %12, %11, %33
  %38 = phi i32 [ %36, %33 ], [ -1, %11 ], [ 1, %12 ], [ %26, %13 ], [ %31, %28 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_loop_tree_node_t_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !609 !PGOFuncName !727 {
  tail call fastcc void @VEC_ira_loop_tree_node_t_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !221
  tail call fastcc void @VEC_ira_loop_tree_node_t_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_loop_tree_node_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !609 !PGOFuncName !728 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = tail call fastcc i32 @VEC_ira_loop_tree_node_t_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !729

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !221
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ira_loop_tree_node_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !prof !609 !PGOFuncName !730 {
  %3 = load i32, ptr %0, align 8, !tbaa !719
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !719
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ira_loop_tree_node_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_loop_tree_node_t_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !609 !PGOFuncName !731 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !729

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ira_loop_tree_node_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !732
  %6 = load i32, ptr %0, align 8, !tbaa !719
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_some_info_from_allocno(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !268 !PGOFuncName !733 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 26
  %4 = load i64, ptr %3, align 8, !tbaa !240
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 26
  %6 = load i64, ptr %5, align 8, !tbaa !240
  %7 = or i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !240
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 31
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 16
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %14 = load i16, ptr %13, align 4
  %15 = or i16 %14, 16
  store i16 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 7
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 7
  %19 = load <2 x i32>, ptr %17, align 8, !tbaa !234
  %20 = load <2 x i32>, ptr %18, align 8, !tbaa !234
  %21 = add nsw <2 x i32> %20, %19
  store <2 x i32> %21, ptr %18, align 8, !tbaa !234
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 29
  %23 = load i32, ptr %22, align 4, !tbaa !245
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 29
  %25 = load i32, ptr %24, align 4, !tbaa !245
  %26 = add nsw i32 %25, %23
  store i32 %26, ptr %24, align 4, !tbaa !245
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 27
  %28 = load i64, ptr %27, align 8, !tbaa !241
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 27
  %30 = load i64, ptr %29, align 8, !tbaa !241
  %31 = or i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !241
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 30
  %33 = load i32, ptr %32, align 8, !tbaa !246
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 30
  %35 = load i32, ptr %34, align 8, !tbaa !246
  %36 = add nsw i32 %35, %33
  store i32 %36, ptr %34, align 8, !tbaa !246
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 14
  %38 = load i32, ptr %37, align 4, !tbaa !371
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 14
  %40 = load i32, ptr %39, align 4, !tbaa !371
  %41 = add nsw i32 %40, %38
  store i32 %41, ptr %39, align 4, !tbaa !371
  %42 = load i16, ptr %8, align 4
  %43 = and i16 %42, 64
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %16
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %47 = load i16, ptr %46, align 4
  %48 = and i16 %47, -65
  store i16 %48, ptr %46, align 4
  %49 = load i16, ptr %8, align 4
  br label %50

50:                                               ; preds = %45, %16
  %51 = phi i16 [ %49, %45 ], [ %42, %16 ]
  %52 = and i16 %51, 32
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %56 = load i16, ptr %55, align 4
  %57 = or i16 %56, 32
  store i16 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !265
  %61 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 33
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 33
  %63 = load ptr, ptr %62, align 8, !tbaa !369
  tail call fastcc void @ira_allocate_and_accumulate_costs(ptr noundef nonnull %61, i32 noundef %60, ptr noundef %63) #24
  %64 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 35
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 35
  %66 = load ptr, ptr %65, align 8, !tbaa !370
  tail call fastcc void @ira_allocate_and_accumulate_costs(ptr noundef nonnull %64, i32 noundef %60, ptr noundef %66) #24
  %67 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 10
  %68 = load i32, ptr %67, align 4, !tbaa !374
  %69 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 10
  %70 = load i32, ptr %69, align 4, !tbaa !374
  %71 = add nsw i32 %70, %68
  store i32 %71, ptr %69, align 4, !tbaa !374
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 12
  %73 = load i32, ptr %72, align 4, !tbaa !375
  %74 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 12
  %75 = load i32, ptr %74, align 4, !tbaa !375
  %76 = add nsw i32 %75, %73
  store i32 %76, ptr %74, align 4, !tbaa !375
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_accumulate_costs(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #0 !prof !268 !PGOFuncName !734 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !234
  %9 = load ptr, ptr %0, align 8, !tbaa !221
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #24
  store ptr %12, ptr %0, align 8, !tbaa !221
  %13 = sext i32 %8 to i64
  %14 = shl nsw i64 %13, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %12, i8 0, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %11, %5
  %16 = icmp sgt i32 %8, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 8, !tbaa !221
  %19 = zext nneg i32 %8 to i64
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ 0, %17 ], [ %27, %20 ]
  %22 = getelementptr inbounds i32, ptr %2, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !234
  %24 = getelementptr inbounds i32, ptr %18, i64 %21
  %25 = load i32, ptr %24, align 4, !tbaa !234
  %26 = add nsw i32 %25, %23
  store i32 %26, ptr %24, align 4, !tbaa !234
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %19
  br i1 %28, label %29, label %20, !llvm.loop !735

29:                                               ; preds = %20, %15, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_rebuild_regno_allocno_list(i32 noundef %0) unnamed_addr #0 !prof !268 !PGOFuncName !736 {
  %2 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !221
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr @regno_allocnos, align 8, !tbaa !221
  br i1 %6, label %8, label %10

8:                                                ; preds = %1
  tail call void @spec_qsort(ptr noundef %7, i64 noundef 0, i64 noundef 8, ptr noundef nonnull @regno_allocno_order_compare_func) #23
  %9 = load ptr, ptr @regno_allocnos, align 8, !tbaa !221
  br label %32

10:                                               ; preds = %1, %10
  %11 = phi i64 [ %13, %10 ], [ 0, %1 ]
  %12 = phi ptr [ %16, %10 ], [ %5, %1 ]
  %13 = add nuw i64 %11, 1
  %14 = getelementptr inbounds ptr, ptr %7, i64 %11
  store ptr %12, ptr %14, align 8, !tbaa !221
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !221
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !llvm.loop !737

18:                                               ; preds = %10
  %19 = and i64 %13, 4294967295
  tail call void @spec_qsort(ptr noundef nonnull %7, i64 noundef %19, i64 noundef 8, ptr noundef nonnull @regno_allocno_order_compare_func) #23
  %20 = and i64 %13, 4294967294
  %21 = icmp eq i64 %20, 0
  %22 = load ptr, ptr @regno_allocnos, align 8, !tbaa !221
  br i1 %21, label %32, label %23

23:                                               ; preds = %18, %23
  %24 = phi i64 [ %30, %23 ], [ 1, %18 ]
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !221
  %27 = getelementptr ptr, ptr %25, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !221
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %28, i64 0, i32 5
  store ptr %26, ptr %29, align 8, !tbaa !231
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %19
  br i1 %31, label %32, label %23, !llvm.loop !738

32:                                               ; preds = %23, %8, %18
  %33 = phi ptr [ %9, %8 ], [ %22, %18 ], [ %22, %23 ]
  %34 = phi i64 [ 0, %8 ], [ %19, %18 ], [ %19, %23 ]
  %35 = getelementptr ptr, ptr %33, i64 %34
  %36 = getelementptr ptr, ptr %35, i64 -1
  %37 = load ptr, ptr %36, align 8, !tbaa !221
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %37, i64 0, i32 5
  store ptr null, ptr %38, align 8, !tbaa !231
  %39 = load ptr, ptr %33, align 8, !tbaa !221
  %40 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !221
  %41 = getelementptr inbounds ptr, ptr %40, i64 %3
  store ptr %39, ptr %41, align 8, !tbaa !221
  %42 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !234
  %43 = icmp sgt i32 %42, 1
  %44 = load ptr, ptr @ira_dump_file, align 8
  %45 = icmp ne ptr %44, null
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.31, i32 noundef %0) #24
  br label %49

49:                                               ; preds = %47, %32
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @regno_allocno_order_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 !prof !268 !PGOFuncName !739 {
  %3 = load ptr, ptr %0, align 8, !tbaa !221
  %4 = load ptr, ptr %1, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !229
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !229
  %9 = tail call fastcc zeroext i8 @loop_is_inside_p(ptr noundef %6, ptr noundef %8) #24, !range !269
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = tail call fastcc zeroext i8 @loop_is_inside_p(ptr noundef %8, ptr noundef %6) #24, !range !269
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, ptr %4, align 8, !tbaa !235
  %16 = load i32, ptr %3, align 8, !tbaa !235
  %17 = sub nsw i32 %15, %16
  br label %18

18:                                               ; preds = %11, %2, %14
  %19 = phi i32 [ %17, %14 ], [ -1, %2 ], [ 1, %11 ]
  ret i32 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @loop_is_inside_p(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #8 !prof !268 !PGOFuncName !740 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %8 ]
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !367
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %6, %1
  br i1 %9, label %10, label %3, !llvm.loop !741

10:                                               ; preds = %3, %8
  %11 = phi i8 [ 1, %8 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: optsize
declare void @ira_free_bitmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0) unnamed_addr #11 !prof !592 !PGOFuncName !742 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %2, align 8, !tbaa !743
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_cap_allocno(ptr noundef %0) unnamed_addr #0 !prof !268 !PGOFuncName !744 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !229
  %4 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !367
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !225
  %8 = tail call ptr @ira_create_allocno(i32 noundef %7, i8 noundef zeroext 1, ptr noundef %5) #24
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !249
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 2
  store i32 %10, ptr %11, align 8, !tbaa !249
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !265
  tail call void @ira_set_allocno_cover_class(ptr noundef %8, i32 noundef %13) #24
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 38
  %15 = load i32, ptr %14, align 4, !tbaa !745
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 38
  store i32 %15, ptr %16, align 4, !tbaa !745
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 17
  store ptr %0, ptr %17, align 8, !tbaa !274
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 16
  store ptr %8, ptr %18, align 8, !tbaa !366
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 10
  %20 = load i32, ptr %19, align 4, !tbaa !374
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 10
  store i32 %20, ptr %21, align 4, !tbaa !374
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 12
  %23 = load i32, ptr %22, align 4, !tbaa !375
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 12
  store i32 %23, ptr %24, align 4, !tbaa !375
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 33
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 33
  %27 = load ptr, ptr %26, align 8, !tbaa !369
  tail call fastcc void @ira_allocate_and_copy_costs(ptr noundef nonnull %25, i32 noundef %13, ptr noundef %27) #24
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 35
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 35
  %30 = load ptr, ptr %29, align 8, !tbaa !370
  tail call fastcc void @ira_allocate_and_copy_costs(ptr noundef nonnull %28, i32 noundef %13, ptr noundef %30) #24
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 64
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 31
  %35 = load i16, ptr %34, align 4
  %36 = and i16 %35, -65
  %37 = or disjoint i16 %36, %33
  store i16 %37, ptr %34, align 4
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 7
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 7
  %40 = load <2 x i32>, ptr %38, align 8, !tbaa !234
  store <2 x i32> %40, ptr %39, align 8, !tbaa !234
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 29
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 29
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 26
  %44 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 26
  %45 = load <2 x i64>, ptr %43, align 8, !tbaa !239
  %46 = load <2 x i64>, ptr %44, align 8, !tbaa !239
  %47 = or <2 x i64> %46, %45
  store <2 x i64> %47, ptr %44, align 8, !tbaa !239
  %48 = load <2 x i32>, ptr %41, align 4, !tbaa !234
  store <2 x i32> %48, ptr %42, align 4, !tbaa !234
  %49 = load i16, ptr %31, align 4
  %50 = and i16 %49, 16
  %51 = and i16 %37, -17
  %52 = or disjoint i16 %50, %51
  store i16 %52, ptr %34, align 4
  %53 = load i16, ptr %31, align 4
  %54 = and i16 %53, 32
  %55 = and i16 %52, -33
  %56 = or disjoint i16 %55, %54
  store i16 %56, ptr %34, align 4
  %57 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !234
  %58 = icmp sgt i32 %57, 2
  %59 = load ptr, ptr @ira_dump_file, align 8
  %60 = icmp ne ptr %59, null
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %66

62:                                               ; preds = %1
  %63 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 17, i64 1, ptr nonnull %59)
  tail call void @ira_print_expanded_allocno(ptr noundef nonnull %8) #24
  %64 = load ptr, ptr @ira_dump_file, align 8, !tbaa !221
  %65 = tail call i32 @fputc(i32 10, ptr %64)
  br label %66

66:                                               ; preds = %62, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_copy_costs(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #0 !prof !268 !PGOFuncName !746 {
  %4 = load ptr, ptr %0, align 8, !tbaa !221
  %5 = icmp ne ptr %4, null
  %6 = icmp eq ptr %2, null
  %7 = or i1 %6, %5
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #24
  store ptr %9, ptr %0, align 8, !tbaa !221
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !234
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr nonnull align 4 %2, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @allocno_range_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 !prof !747 !PGOFuncName !748 {
  %3 = load ptr, ptr %0, align 8, !tbaa !221
  %4 = load ptr, ptr %1, align 8, !tbaa !221
  %5 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !234
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %14, label %7, !prof !749

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !265
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !265
  %12 = sub i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %32, !prof !750

14:                                               ; preds = %7, %2
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 21
  %16 = load i32, ptr %15, align 8, !tbaa !255
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 21
  %18 = load i32, ptr %17, align 8, !tbaa !255
  %19 = sub nsw i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32, !prof !751

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 22
  %23 = load i32, ptr %22, align 4, !tbaa !256
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 22
  %25 = load i32, ptr %24, align 4, !tbaa !256
  %26 = sub nsw i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32, !prof !752

28:                                               ; preds = %21
  %29 = load i32, ptr %3, align 8, !tbaa !235
  %30 = load i32, ptr %4, align 8, !tbaa !235
  %31 = sub nsw i32 %29, %30
  br label %32

32:                                               ; preds = %21, %14, %7, %28
  %33 = phi i32 [ %31, %28 ], [ %12, %7 ], [ %19, %14 ], [ %26, %21 ]
  ret i32 %33
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ira_copy_t_heap_free() unnamed_addr #20 !prof !420 !PGOFuncName !753 {
  %1 = load ptr, ptr @copy_vec, align 8, !tbaa !221
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !436

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #24
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @copy_vec, align 8, !tbaa !221
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ira_allocno_t_heap_free(ptr nocapture noundef %0) unnamed_addr #20 !prof !592 !PGOFuncName !754 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !705

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !221
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!219}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218}
!35 = !{ptr @ira_create_allocno, ptr @pool_alloc, i64 107433}
!36 = !{ptr @ira_create_allocno, ptr @bitmap_set_bit, i64 107433}
!37 = !{ptr @ira_create_allocno, ptr @VEC_ira_allocno_t_heap_safe_push, i64 214866}
!38 = !{ptr @ira_create_allocno, ptr @VEC_ira_allocno_t_base_address, i64 214866}
!39 = !{ptr @ira_create_allocno, ptr @VEC_ira_allocno_t_base_length, i64 107433}
!40 = !{ptr @VEC_ira_allocno_t_heap_safe_push, ptr @VEC_ira_allocno_t_heap_reserve, i64 214866}
!41 = !{ptr @VEC_ira_allocno_t_heap_safe_push, ptr @VEC_ira_allocno_t_base_quick_push, i64 214866}
!42 = !{ptr @ira_allocate_allocno_conflict_vec, ptr @ira_allocate, i64 105696}
!43 = !{ptr @ira_create_allocno_live_range, ptr @pool_alloc, i64 169185}
!44 = !{ptr @ira_copy_allocno_live_range_list, ptr @copy_allocno_live_range, i64 301}
!45 = !{ptr @copy_allocno_live_range, ptr @pool_alloc, i64 302}
!46 = !{ptr @ira_merge_allocno_live_ranges, ptr @ira_finish_allocno_live_range, i64 1}
!47 = !{ptr @ira_finish_allocno_live_range, ptr @pool_free, i64 169487}
!48 = !{ptr @ira_finish_allocno_live_range_list, ptr @ira_finish_allocno_live_range, i64 169487}
!49 = !{ptr @ira_free_allocno_updated_costs, ptr @ira_free_cost_vector, i64 133911}
!50 = !{ptr @ira_free_cost_vector, ptr @pool_free, i64 268583}
!51 = !{ptr @ira_create_copy, ptr @pool_alloc, i64 1725}
!52 = !{ptr @ira_create_copy, ptr @VEC_ira_copy_t_heap_safe_push, i64 1725}
!53 = !{ptr @ira_create_copy, ptr @VEC_ira_copy_t_base_address, i64 1725}
!54 = !{ptr @ira_create_copy, ptr @VEC_ira_copy_t_base_length, i64 1725}
!55 = !{ptr @VEC_ira_copy_t_heap_safe_push, ptr @VEC_ira_copy_t_heap_reserve, i64 1725}
!56 = !{ptr @VEC_ira_copy_t_heap_safe_push, ptr @VEC_ira_copy_t_base_quick_push, i64 1725}
!57 = !{ptr @ira_add_allocno_copy, ptr @find_allocno_copy, i64 1725}
!58 = !{ptr @ira_add_allocno_copy, ptr @ira_create_copy, i64 1724}
!59 = !{ptr @ira_add_allocno_copy, ptr @ira_add_allocno_copy_to_list, i64 1724}
!60 = !{ptr @ira_add_allocno_copy, ptr @ira_swap_allocno_copy_ends_if_necessary, i64 1724}
!61 = !{ptr @find_allocno_copy, ptr @fancy_abort, i64 1}
!62 = !{ptr @ira_allocate_cost_vector, ptr @pool_alloc, i64 268583}
!63 = !{ptr @ira_traverse_loop_tree, ptr @ira_traverse_loop_tree, i64 1}
!64 = !{ptr @finish_allocno, ptr @ira_free, i64 107432}
!65 = !{ptr @finish_allocno, ptr @ira_free_cost_vector, i64 134674}
!66 = !{ptr @finish_allocno, ptr @ira_finish_allocno_live_range_list, i64 107433}
!67 = !{ptr @finish_allocno, ptr @pool_free, i64 107433}
!68 = !{ptr @finish_copy, ptr @pool_free, i64 1725}
!69 = !{ptr @ira_build, ptr @df_analyze, i64 38}
!70 = !{ptr @ira_build, ptr @initiate_cost_vectors, i64 38}
!71 = !{ptr @ira_build, ptr @initiate_allocnos, i64 38}
!72 = !{ptr @ira_build, ptr @initiate_copies, i64 38}
!73 = !{ptr @ira_build, ptr @create_loop_tree_nodes, i64 38}
!74 = !{ptr @ira_build, ptr @form_loop_tree, i64 38}
!75 = !{ptr @ira_build, ptr @create_allocnos, i64 38}
!76 = !{ptr @ira_build, ptr @ira_costs, i64 38}
!77 = !{ptr @ira_build, ptr @ira_create_allocno_live_ranges, i64 38}
!78 = !{ptr @ira_build, ptr @remove_unnecessary_regions, i64 39}
!79 = !{ptr @ira_build, ptr @ira_compress_allocno_live_ranges, i64 38}
!80 = !{ptr @ira_build, ptr @update_bad_spill_attribute, i64 38}
!81 = !{ptr @ira_build, ptr @more_one_region_p, i64 38}
!82 = !{ptr @ira_build, ptr @propagate_allocno_info, i64 1}
!83 = !{ptr @ira_build, ptr @create_caps, i64 1}
!84 = !{ptr @ira_build, ptr @ira_tune_allocno_costs_and_cover_classes, i64 38}
!85 = !{ptr @ira_build, ptr @setup_min_max_allocno_live_range_point, i64 38}
!86 = !{ptr @ira_build, ptr @sort_conflict_id_allocno_map, i64 38}
!87 = !{ptr @ira_build, ptr @setup_min_max_conflict_allocno_ids, i64 38}
!88 = !{ptr @ira_build, ptr @ira_build_conflicts, i64 38}
!89 = !{ptr @ira_build, ptr @ira_allocno_iter_init, i64 3}
!90 = !{ptr @ira_build, ptr @ira_allocno_iter_cond, i64 60}
!91 = !{ptr @ira_build, ptr @print_copies, i64 1}
!92 = !{ptr @ira_build, ptr @VEC_loop_p_base_length, i64 1}
!93 = !{ptr @ira_build, ptr @fprintf, i64 2}
!94 = !{ptr @initiate_cost_vectors, ptr @create_alloc_pool, i64 75}
!95 = !{ptr @initiate_allocnos, ptr @create_alloc_pool, i64 76}
!96 = !{ptr @initiate_allocnos, ptr @max_reg_num, i64 152}
!97 = !{ptr @initiate_allocnos, ptr @VEC_ira_allocno_t_heap_alloc, i64 76}
!98 = !{ptr @initiate_allocnos, ptr @ira_allocate, i64 38}
!99 = !{ptr @initiate_copies, ptr @create_alloc_pool, i64 38}
!100 = !{ptr @initiate_copies, ptr @get_max_uid, i64 38}
!101 = !{ptr @initiate_copies, ptr @VEC_ira_copy_t_heap_alloc, i64 38}
!102 = !{ptr @create_loop_tree_nodes, ptr @ira_allocate, i64 114}
!103 = !{ptr @create_loop_tree_nodes, ptr @VEC_loop_p_base_length, i64 38}
!104 = !{ptr @create_loop_tree_nodes, ptr @max_reg_num, i64 38}
!105 = !{ptr @create_loop_tree_nodes, ptr @VEC_loop_p_base_iterate, i64 76}
!106 = !{ptr @create_loop_tree_nodes, ptr @ei_start_1, i64 1}
!107 = !{ptr @create_loop_tree_nodes, ptr @ei_cond, i64 11}
!108 = !{ptr @create_loop_tree_nodes, ptr @VEC_edge_base_length, i64 11}
!109 = !{ptr @create_loop_tree_nodes, ptr @ei_next, i64 10}
!110 = !{ptr @create_loop_tree_nodes, ptr @get_loop_exit_edges, i64 1}
!111 = !{ptr @create_loop_tree_nodes, ptr @VEC_edge_base_iterate, i64 10}
!112 = !{ptr @create_loop_tree_nodes, ptr @ira_allocate_bitmap, i64 152}
!113 = !{ptr @form_loop_tree, ptr @VEC_loop_p_base_iterate, i64 76}
!114 = !{ptr @form_loop_tree, ptr @loop_outer, i64 1}
!115 = !{ptr @form_loop_tree, ptr @add_loop_to_tree, i64 151664}
!116 = !{ptr @form_loop_tree, ptr @setup_loop_tree_level, i64 38}
!117 = !{ptr @create_allocnos, ptr @ira_traverse_loop_tree, i64 75}
!118 = !{ptr @remove_unnecessary_regions, ptr @mark_all_loops_for_removal, i64 1}
!119 = !{ptr @remove_unnecessary_regions, ptr @mark_loops_for_removal, i64 37}
!120 = !{ptr @remove_unnecessary_regions, ptr @VEC_loop_p_base_length, i64 76}
!121 = !{ptr @remove_unnecessary_regions, ptr @VEC_ira_loop_tree_node_t_heap_alloc, i64 76}
!122 = !{ptr @remove_unnecessary_regions, ptr @remove_uneccesary_loop_nodes_from_loop_tree, i64 38}
!123 = !{ptr @remove_unnecessary_regions, ptr @VEC_ira_loop_tree_node_t_heap_free, i64 76}
!124 = !{ptr @remove_unnecessary_regions, ptr @remove_low_level_allocnos, i64 1}
!125 = !{ptr @remove_unnecessary_regions, ptr @remove_unnecessary_allocnos, i64 37}
!126 = !{ptr @remove_unnecessary_regions, ptr @VEC_ira_loop_tree_node_t_base_length, i64 39}
!127 = !{ptr @remove_unnecessary_regions, ptr @VEC_ira_loop_tree_node_t_base_pop, i64 1}
!128 = !{ptr @remove_unnecessary_regions, ptr @finish_loop_tree_node, i64 1}
!129 = !{ptr @update_bad_spill_attribute, ptr @bitmap_initialize_stat, i64 75}
!130 = !{ptr @update_bad_spill_attribute, ptr @ira_allocno_iter_init, i64 76}
!131 = !{ptr @update_bad_spill_attribute, ptr @ira_allocno_iter_cond, i64 209434}
!132 = !{ptr @update_bad_spill_attribute, ptr @bitmap_set_bit, i64 164846}
!133 = !{ptr @update_bad_spill_attribute, ptr @bitmap_bit_p, i64 8820}
!134 = !{ptr @update_bad_spill_attribute, ptr @bitmap_clear, i64 75}
!135 = !{ptr @more_one_region_p, ptr @VEC_loop_p_base_iterate, i64 75}
!136 = !{ptr @setup_min_max_allocno_live_range_point, ptr @ira_allocno_iter_init, i64 38}
!137 = !{ptr @setup_min_max_allocno_live_range_point, ptr @ira_allocno_iter_cond, i64 104717}
!138 = !{ptr @setup_min_max_allocno_live_range_point, ptr @max_reg_num, i64 38}
!139 = !{ptr @sort_conflict_id_allocno_map, ptr @ira_allocno_iter_init, i64 38}
!140 = !{ptr @sort_conflict_id_allocno_map, ptr @ira_allocno_iter_cond, i64 104717}
!141 = !{ptr @sort_conflict_id_allocno_map, ptr @spec_qsort, i64 38}
!142 = !{ptr @setup_min_max_conflict_allocno_ids, ptr @ira_allocate, i64 76}
!143 = !{ptr @setup_min_max_conflict_allocno_ids, ptr @ira_free, i64 76}
!144 = !{ptr @ira_destroy, ptr @finish_loop_tree_nodes, i64 38}
!145 = !{ptr @ira_destroy, ptr @finish_copies, i64 38}
!146 = !{ptr @ira_destroy, ptr @finish_allocnos, i64 38}
!147 = !{ptr @ira_destroy, ptr @finish_cost_vectors, i64 38}
!148 = !{ptr @ira_destroy, ptr @ira_finish_allocno_live_ranges, i64 38}
!149 = !{ptr @finish_loop_tree_nodes, ptr @VEC_loop_p_base_iterate, i64 76}
!150 = !{ptr @finish_loop_tree_nodes, ptr @finish_loop_tree_node, i64 38}
!151 = !{ptr @finish_loop_tree_nodes, ptr @ira_free, i64 77}
!152 = !{ptr @finish_loop_tree_nodes, ptr @ira_free_bitmap, i64 4}
!153 = !{ptr @finish_copies, ptr @ira_copy_iter_init, i64 38}
!154 = !{ptr @finish_copies, ptr @ira_copy_iter_cond, i64 1720}
!155 = !{ptr @finish_copies, ptr @finish_copy, i64 1682}
!156 = !{ptr @finish_copies, ptr @VEC_ira_copy_t_heap_free, i64 38}
!157 = !{ptr @finish_copies, ptr @free_alloc_pool, i64 38}
!158 = !{ptr @finish_allocnos, ptr @ira_allocno_iter_init, i64 38}
!159 = !{ptr @finish_allocnos, ptr @ira_allocno_iter_cond, i64 104717}
!160 = !{ptr @finish_allocnos, ptr @finish_allocno, i64 104679}
!161 = !{ptr @finish_allocnos, ptr @ira_free, i64 38}
!162 = !{ptr @finish_allocnos, ptr @VEC_ira_allocno_t_heap_free, i64 76}
!163 = !{ptr @finish_allocnos, ptr @free_alloc_pool, i64 76}
!164 = !{ptr @finish_cost_vectors, ptr @free_alloc_pool, i64 75}
!165 = !{ptr @VEC_ira_allocno_t_heap_reserve, ptr @VEC_ira_allocno_t_base_space, i64 214866}
!166 = !{ptr @VEC_ira_allocno_t_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!167 = !{ptr @VEC_ira_copy_t_heap_reserve, ptr @VEC_ira_copy_t_base_space, i64 1725}
!168 = !{ptr @VEC_ira_copy_t_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!169 = !{ptr @VEC_ira_allocno_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 76}
!170 = !{ptr @VEC_ira_copy_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 38}
!171 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 155692}
!172 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 1}
!173 = !{ptr @add_loop_to_tree, ptr @loop_outer, i64 155694}
!174 = !{ptr @add_loop_to_tree, ptr @add_loop_to_tree, i64 1}
!175 = !{ptr @setup_loop_tree_level, ptr @setup_loop_tree_level, i64 1}
!176 = !{ptr @create_loop_tree_node_allocnos, ptr @create_bb_allocnos, i64 155653}
!177 = !{ptr @create_loop_tree_node_allocnos, ptr @ei_start_1, i64 1}
!178 = !{ptr @create_loop_tree_node_allocnos, ptr @ei_cond, i64 20}
!179 = !{ptr @create_loop_tree_node_allocnos, ptr @create_loop_allocnos, i64 31}
!180 = !{ptr @create_loop_tree_node_allocnos, ptr @ei_next, i64 19}
!181 = !{ptr @create_loop_tree_node_allocnos, ptr @get_loop_exit_edges, i64 1}
!182 = !{ptr @create_loop_tree_node_allocnos, ptr @VEC_edge_base_iterate, i64 20}
!183 = !{ptr @create_loop_tree_node_allocnos, ptr @VEC_edge_heap_free, i64 1}
!184 = !{ptr @propagate_modified_regnos, ptr @bitmap_ior_into, i64 1}
!185 = !{ptr @create_bb_allocnos, ptr @create_insn_allocnos, i64 618797}
!186 = !{ptr @create_bb_allocnos, ptr @df_lr_get_bb_info, i64 155654}
!187 = !{ptr @create_bb_allocnos, ptr @bmp_iter_set_init, i64 155654}
!188 = !{ptr @create_bb_allocnos, ptr @bmp_iter_set, i64 338441}
!189 = !{ptr @create_bb_allocnos, ptr @ira_create_allocno, i64 15}
!190 = !{ptr @create_bb_allocnos, ptr @bmp_iter_next, i64 182787}
!191 = !{ptr @create_insn_allocnos, ptr @rhs_regno, i64 3344281}
!192 = !{ptr @create_insn_allocnos, ptr @ira_create_allocno, i64 406833}
!193 = !{ptr @create_insn_allocnos, ptr @bitmap_set_bit, i64 631091}
!194 = !{ptr @create_insn_allocnos, ptr @create_insn_allocnos, i64 8666232}
!195 = !{ptr @mark_loops_for_removal, ptr @VEC_loop_p_base_length, i64 38}
!196 = !{ptr @mark_loops_for_removal, ptr @ira_allocate, i64 38}
!197 = !{ptr @mark_loops_for_removal, ptr @VEC_loop_p_base_iterate, i64 76}
!198 = !{ptr @mark_loops_for_removal, ptr @low_pressure_loop_node_p, i64 2}
!199 = !{ptr @mark_loops_for_removal, ptr @spec_qsort, i64 38}
!200 = !{ptr @mark_loops_for_removal, ptr @ira_free, i64 38}
!201 = !{ptr @VEC_ira_loop_tree_node_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 76}
!202 = !{ptr @remove_uneccesary_loop_nodes_from_loop_tree, ptr @VEC_ira_loop_tree_node_t_heap_safe_push, i64 151701}
!203 = !{ptr @remove_uneccesary_loop_nodes_from_loop_tree, ptr @VEC_ira_loop_tree_node_t_base_length, i64 147947}
!204 = !{ptr @remove_uneccesary_loop_nodes_from_loop_tree, ptr @remove_uneccesary_loop_nodes_from_loop_tree, i64 1}
!205 = !{ptr @remove_uneccesary_loop_nodes_from_loop_tree, ptr @VEC_ira_loop_tree_node_t_base_pop, i64 147872}
!206 = !{ptr @VEC_ira_loop_tree_node_t_heap_free, ptr @free, i64 75}
!207 = !{ptr @remove_unnecessary_allocnos, ptr @max_reg_num, i64 38}
!208 = !{ptr @remove_unnecessary_allocnos, ptr @ira_rebuild_regno_allocno_list, i64 1}
!209 = !{ptr @remove_unnecessary_allocnos, ptr @ira_rebuild_start_finish_chains, i64 1}
!210 = !{ptr @remove_unnecessary_allocnos, ptr @ira_free, i64 1}
!211 = !{ptr @finish_loop_tree_node, ptr @ira_free_bitmap, i64 148}
!212 = !{ptr @finish_loop_tree_node, ptr @ira_free, i64 37}
!213 = !{ptr @VEC_ira_loop_tree_node_t_heap_safe_push, ptr @VEC_ira_loop_tree_node_t_heap_reserve, i64 155692}
!214 = !{ptr @VEC_ira_loop_tree_node_t_heap_safe_push, ptr @VEC_ira_loop_tree_node_t_base_quick_push, i64 155692}
!215 = !{ptr @VEC_ira_loop_tree_node_t_heap_reserve, ptr @VEC_ira_loop_tree_node_t_base_space, i64 155692}
!216 = !{ptr @VEC_ira_loop_tree_node_t_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!217 = !{ptr @VEC_ira_copy_t_heap_free, ptr @free, i64 37}
!218 = !{ptr @VEC_ira_allocno_t_heap_free, ptr @free, i64 75}
!219 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!220 = !{!"function_entry_count", i64 107433}
!221 = !{!222, !222, i64 0}
!222 = !{!"any pointer", !223, i64 0}
!223 = !{!"omnipotent char", !224, i64 0}
!224 = !{!"Simple C/C++ TBAA"}
!225 = !{!226, !227, i64 4}
!226 = !{!"ira_allocno", !227, i64 0, !227, i64 4, !227, i64 8, !227, i64 12, !222, i64 16, !222, i64 24, !222, i64 32, !227, i64 40, !227, i64 44, !227, i64 48, !227, i64 52, !227, i64 56, !227, i64 60, !227, i64 64, !227, i64 68, !222, i64 72, !222, i64 80, !222, i64 88, !222, i64 96, !222, i64 104, !222, i64 112, !227, i64 120, !227, i64 124, !222, i64 128, !227, i64 136, !227, i64 140, !228, i64 144, !228, i64 152, !227, i64 160, !227, i64 164, !227, i64 168, !227, i64 172, !227, i64 172, !227, i64 172, !227, i64 172, !227, i64 172, !227, i64 172, !227, i64 172, !227, i64 172, !227, i64 173, !227, i64 173, !227, i64 173, !227, i64 173, !222, i64 176, !222, i64 184, !222, i64 192, !222, i64 200, !222, i64 208, !227, i64 216, !227, i64 220, !222, i64 224, !222, i64 232, !227, i64 240}
!227 = !{!"int", !223, i64 0}
!228 = !{!"long", !223, i64 0}
!229 = !{!226, !222, i64 32}
!230 = !{!"branch_weights", i32 107434, i32 1}
!231 = !{!226, !222, i64 24}
!232 = !{!233, !222, i64 64}
!233 = !{!"ira_loop_tree_node", !222, i64 0, !222, i64 8, !222, i64 16, !222, i64 24, !222, i64 32, !222, i64 40, !222, i64 48, !227, i64 56, !223, i64 60, !222, i64 64, !223, i64 72, !223, i64 76, !222, i64 184, !222, i64 192, !222, i64 200, !222, i64 208}
!234 = !{!227, !227, i64 0}
!235 = !{!226, !227, i64 0}
!236 = !{!233, !222, i64 184}
!237 = !{!226, !222, i64 128}
!238 = !{!226, !227, i64 160}
!239 = !{!228, !228, i64 0}
!240 = !{!226, !228, i64 144}
!241 = !{!226, !228, i64 152}
!242 = !{!226, !227, i64 40}
!243 = !{!226, !227, i64 44}
!244 = !{!226, !227, i64 12}
!245 = !{!226, !227, i64 164}
!246 = !{!226, !227, i64 168}
!247 = !{!226, !222, i64 176}
!248 = !{!"branch_weights", i32 1, i32 107434}
!249 = !{!226, !227, i64 8}
!250 = !{!226, !222, i64 72}
!251 = !{!226, !227, i64 216}
!252 = !{!226, !222, i64 96}
!253 = !{!226, !222, i64 104}
!254 = !{!226, !222, i64 112}
!255 = !{!226, !227, i64 120}
!256 = !{!226, !227, i64 124}
!257 = !{!226, !227, i64 136}
!258 = !{!"function_entry_count", i64 214866}
!259 = !{!"ira-build.c:VEC_ira_allocno_t_heap_safe_push"}
!260 = !{!"ira-build.c:VEC_ira_allocno_t_base_address"}
!261 = !{!"branch_weights", i32 1, i32 214867}
!262 = !{!"ira-build.c:VEC_ira_allocno_t_base_length"}
!263 = !{!264, !227, i64 0}
!264 = !{!"VEC_ira_allocno_t_base", !227, i64 0, !227, i64 4, !223, i64 8}
!265 = !{!226, !227, i64 48}
!266 = !{!"function_entry_count", i64 105696}
!267 = !{!226, !227, i64 140}
!268 = !{!"function_entry_count", i64 0}
!269 = !{i8 0, i8 2}
!270 = !{!"ira-build.c:allocate_allocno_conflict_bit_vec"}
!271 = !{!"ira-build.c:add_to_allocno_conflicts"}
!272 = !{!233, !222, i64 0}
!273 = !{!233, !222, i64 8}
!274 = !{!226, !222, i64 88}
!275 = !{!"function_entry_count", i64 169185}
!276 = !{!277, !222, i64 0}
!277 = !{!"ira_allocno_live_range", !222, i64 0, !227, i64 8, !227, i64 12, !222, i64 16, !222, i64 24, !222, i64 32}
!278 = !{!277, !227, i64 8}
!279 = !{!277, !227, i64 12}
!280 = !{!277, !222, i64 16}
!281 = !{!"function_entry_count", i64 302}
!282 = !{!"branch_weights", i32 1, i32 303}
!283 = !{!"branch_weights", i32 303, i32 1}
!284 = !{!"branch_weights", i32 303, i32 0}
!285 = distinct !{!285, !286}
!286 = !{!"llvm.loop.mustprogress"}
!287 = !{!"ira-build.c:copy_allocno_live_range"}
!288 = !{i64 0, i64 8, !221, i64 8, i64 4, !234, i64 12, i64 4, !234, i64 16, i64 8, !221, i64 24, i64 8, !221, i64 32, i64 8, !221}
!289 = !{!"branch_weights", i32 9, i32 295}
!290 = !{!"branch_weights", i32 1, i32 295}
!291 = !{!"branch_weights", i32 2615, i32 3333}
!292 = !{!"branch_weights", i32 5947, i32 1}
!293 = !{!"branch_weights", i32 295, i32 5653}
!294 = !{!"branch_weights", i32 2617, i32 3331}
!295 = !{!"branch_weights", i32 5947, i32 295}
!296 = !{!"branch_weights", i32 5652, i32 295}
!297 = distinct !{!297, !286}
!298 = !{!"branch_weights", i32 295, i32 1}
!299 = !{!"function_entry_count", i64 169487}
!300 = !{!"function_entry_count", i64 678}
!301 = !{!"branch_weights", i32 294, i32 1}
!302 = !{!"branch_weights", i32 7539, i32 677}
!303 = !{!"branch_weights", i32 293, i32 385}
!304 = !{!"branch_weights", i32 8507, i32 3}
!305 = !{!"branch_weights", i32 7921, i32 294}
!306 = distinct !{!306, !286}
!307 = !{!"branch_weights", i32 45379, i32 169488}
!308 = !{!"branch_weights", i32 169488, i32 0}
!309 = distinct !{!309, !286}
!310 = !{!226, !222, i64 192}
!311 = !{!"branch_weights", i32 146320, i32 68548}
!312 = !{!226, !222, i64 208}
!313 = !{!"branch_weights", i32 149503, i32 65365}
!314 = !{!"function_entry_count", i64 268583}
!315 = !{!"function_entry_count", i64 1725}
!316 = !{!317, !227, i64 0}
!317 = !{!"ira_allocno_copy", !227, i64 0, !222, i64 8, !222, i64 16, !227, i64 24, !223, i64 28, !222, i64 32, !222, i64 40, !222, i64 48, !222, i64 56, !222, i64 64, !222, i64 72}
!318 = !{!317, !222, i64 8}
!319 = !{!317, !222, i64 16}
!320 = !{!317, !227, i64 24}
!321 = !{!317, !223, i64 28}
!322 = !{!317, !222, i64 32}
!323 = !{!317, !222, i64 72}
!324 = !{!"ira-build.c:VEC_ira_copy_t_heap_safe_push"}
!325 = !{!"ira-build.c:VEC_ira_copy_t_base_address"}
!326 = !{!"branch_weights", i32 1, i32 1726}
!327 = !{!"ira-build.c:VEC_ira_copy_t_base_length"}
!328 = !{!329, !227, i64 0}
!329 = !{!"VEC_ira_copy_t_base", !227, i64 0, !227, i64 4, !223, i64 8}
!330 = !{!317, !222, i64 40}
!331 = !{!317, !222, i64 56}
!332 = !{!317, !222, i64 48}
!333 = !{!"branch_weights", i32 1269, i32 458}
!334 = !{!"branch_weights", i32 450, i32 9}
!335 = !{!317, !222, i64 64}
!336 = !{!"branch_weights", i32 833, i32 894}
!337 = !{!"branch_weights", i32 1, i32 894}
!338 = !{!"branch_weights", i32 1568, i32 159}
!339 = !{!"branch_weights", i32 1726, i32 1}
!340 = !{!"ira-build.c:find_allocno_copy"}
!341 = !{!"branch_weights", i32 706, i32 1020}
!342 = !{!"branch_weights", i32 987, i32 34}
!343 = !{!"branch_weights", i32 34, i32 1}
!344 = !{!"branch_weights", i32 1, i32 1020}
!345 = !{!"branch_weights", i32 1020, i32 0}
!346 = distinct !{!346, !286}
!347 = !{!"ira-build.c:print_copy"}
!348 = !{!"ira-build.c:print_copies"}
!349 = distinct !{!349, !286}
!350 = !{!"ira-build.c:print_allocno_copies"}
!351 = distinct !{!351, !286}
!352 = !{!"function_entry_count", i64 304}
!353 = !{!"branch_weights", i32 115, i32 191}
!354 = !{!"branch_weights", i32 77, i32 229}
!355 = !{!"branch_weights", i32 1, i32 228}
!356 = !{!"branch_weights", i32 1, i32 933925}
!357 = !{!"branch_weights", i32 311309, i32 622617}
!358 = !{!"branch_weights", i32 622617, i32 311309}
!359 = !{!"branch_weights", i32 228, i32 933697}
!360 = distinct !{!360, !286}
!361 = !{!"branch_weights", i32 304, i32 1}
!362 = !{!"branch_weights", i32 1, i32 0}
!363 = distinct !{!363, !286}
!364 = !{!"branch_weights", i32 191, i32 115}
!365 = distinct !{!365, !286}
!366 = !{!226, !222, i64 80}
!367 = !{!233, !222, i64 48}
!368 = !{!226, !222, i64 16}
!369 = !{!226, !222, i64 184}
!370 = !{!226, !222, i64 200}
!371 = !{!226, !227, i64 68}
!372 = distinct !{!372, !286}
!373 = distinct !{!373, !286}
!374 = !{!226, !227, i64 52}
!375 = !{!226, !227, i64 60}
!376 = distinct !{!376, !286}
!377 = distinct !{!377, !286}
!378 = distinct !{!378, !286}
!379 = !{!223, !223, i64 0}
!380 = distinct !{!380, !286}
!381 = distinct !{!381, !286}
!382 = distinct !{!382, !286}
!383 = distinct !{!383, !286}
!384 = distinct !{!384, !286}
!385 = distinct !{!385, !286}
!386 = !{!226, !227, i64 64}
!387 = !{!226, !227, i64 56}
!388 = distinct !{!388, !286}
!389 = !{!"function_entry_count", i64 190}
!390 = !{!"ira-build.c:ira_allocno_iter_init"}
!391 = !{!392, !227, i64 0}
!392 = !{!"", !227, i64 0}
!393 = !{!"function_entry_count", i64 537355}
!394 = !{!"ira-build.c:ira_allocno_iter_cond"}
!395 = !{!"branch_weights", i32 190, i32 1}
!396 = !{!"branch_weights", i32 1, i32 537166}
!397 = !{!"branch_weights", i32 190, i32 536976}
!398 = distinct !{!398, !286}
!399 = !{!"function_entry_count", i64 883018}
!400 = !{!"ira-build.c:rhs_regno"}
!401 = !{!"ira-build.c:change_allocno_in_range_list"}
!402 = distinct !{!402, !286}
!403 = !{!"ira-build.c:copy_info_to_removed_store_destinations"}
!404 = distinct !{!404, !286}
!405 = distinct !{!405, !286}
!406 = !{!"ira-build.c:clear_allocno_conflicts"}
!407 = !{!"ira-build.c:sparseset_set_bit"}
!408 = !{!409, !227, i64 16}
!409 = !{!"sparseset_def", !222, i64 0, !222, i64 8, !227, i64 16, !227, i64 20, !227, i64 24, !223, i64 28, !223, i64 29, !223, i64 32}
!410 = !{!"ira-build.c:sparseset_iter_init"}
!411 = !{!409, !227, i64 24}
!412 = !{!409, !223, i64 28}
!413 = !{!409, !223, i64 29}
!414 = !{!"ira-build.c:sparseset_iter_p"}
!415 = !{!"ira-build.c:sparseset_iter_elm"}
!416 = !{!409, !222, i64 0}
!417 = !{!"ira-build.c:sparseset_iter_next"}
!418 = !{!"ira-build.c:compress_conflict_vecs"}
!419 = distinct !{!419, !286}
!420 = !{!"function_entry_count", i64 38}
!421 = !{!"ira-build.c:ira_copy_iter_init"}
!422 = !{!"function_entry_count", i64 1763}
!423 = !{!"ira-build.c:ira_copy_iter_cond"}
!424 = !{!"branch_weights", i32 155, i32 1}
!425 = !{!"branch_weights", i32 155, i32 6749}
!426 = distinct !{!426, !286}
!427 = !{!"ira-build.c:finish_allocno"}
!428 = !{!"branch_weights", i32 39560, i32 67875}
!429 = !{!"branch_weights", i32 40636, i32 66799}
!430 = !{!"ira-build.c:finish_copy"}
!431 = !{!"ira-build.c:rebuild_regno_allocno_maps"}
!432 = !{i32 0, i32 2}
!433 = distinct !{!433, !286}
!434 = distinct !{!434, !286}
!435 = !{!"branch_weights", i32 39, i32 1}
!436 = !{!"branch_weights", i32 1, i32 39}
!437 = distinct !{!437, !286}
!438 = !{!"branch_weights", i32 39, i32 1561}
!439 = distinct !{!439, !286}
!440 = distinct !{!440, !286}
!441 = distinct !{!441, !286}
!442 = !{!443, !222, i64 8}
!443 = !{!"function", !222, i64 0, !222, i64 8, !222, i64 16, !222, i64 24, !222, i64 32, !222, i64 40, !222, i64 48, !222, i64 56, !222, i64 64, !222, i64 72, !222, i64 80, !222, i64 88, !222, i64 96, !227, i64 104, !227, i64 108, !227, i64 112, !227, i64 116, !227, i64 120, !227, i64 124, !222, i64 128, !227, i64 136, !227, i64 137, !227, i64 138, !227, i64 138, !227, i64 138, !227, i64 138, !227, i64 138, !227, i64 138, !227, i64 138, !227, i64 139, !227, i64 139, !227, i64 139, !227, i64 139, !227, i64 139, !227, i64 139, !227, i64 139}
!444 = !{!445, !227, i64 24}
!445 = !{!"control_flow_graph", !222, i64 0, !222, i64 8, !222, i64 16, !227, i64 24, !227, i64 28, !227, i64 32, !222, i64 40, !227, i64 48, !223, i64 52, !223, i64 60, !227, i64 68, !227, i64 72}
!446 = !{!"ira-build.c:initiate_cost_vectors"}
!447 = !{!"branch_weights", i32 153, i32 155}
!448 = distinct !{!448, !286}
!449 = !{!"ira-build.c:initiate_allocnos"}
!450 = !{!"ira-build.c:initiate_copies"}
!451 = !{!"ira-build.c:create_loop_tree_nodes"}
!452 = !{!445, !227, i64 32}
!453 = !{!"branch_weights", i32 1, i32 155}
!454 = !{!233, !222, i64 200}
!455 = !{!233, !222, i64 192}
!456 = !{!233, !222, i64 208}
!457 = !{!"branch_weights", i32 622769, i32 155}
!458 = distinct !{!458, !286}
!459 = !{!460, !222, i64 24}
!460 = !{!"loops", !227, i64 0, !222, i64 8, !222, i64 16, !222, i64 24}
!461 = !{!462, !222, i64 8}
!462 = !{!"loop", !227, i64 0, !227, i64 4, !222, i64 8, !222, i64 16, !463, i64 24, !227, i64 32, !227, i64 36, !222, i64 40, !222, i64 48, !222, i64 56, !222, i64 64, !222, i64 72, !464, i64 80, !464, i64 96, !223, i64 112, !223, i64 113, !227, i64 116, !222, i64 120, !222, i64 128, !223, i64 136, !222, i64 144}
!463 = !{!"lpt_decision", !227, i64 0, !227, i64 4}
!464 = !{!"", !228, i64 0, !228, i64 8}
!465 = !{i64 0, i64 4, !234, i64 8, i64 8, !221}
!466 = !{i64 0, i64 8, !221}
!467 = !{!468, !222, i64 0}
!468 = !{!"edge_def", !222, i64 0, !222, i64 8, !223, i64 16, !222, i64 24, !222, i64 32, !227, i64 40, !227, i64 44, !227, i64 48, !227, i64 52, !228, i64 56}
!469 = !{!462, !222, i64 16}
!470 = !{!468, !227, i64 48}
!471 = !{!472, !222, i64 8}
!472 = !{!"basic_block_def", !222, i64 0, !222, i64 8, !222, i64 16, !222, i64 24, !223, i64 32, !222, i64 48, !222, i64 56, !223, i64 64, !228, i64 72, !227, i64 80, !227, i64 84, !227, i64 88, !227, i64 92, !227, i64 96}
!473 = !{!468, !222, i64 8}
!474 = !{!472, !222, i64 0}
!475 = distinct !{!475, !286}
!476 = distinct !{!476, !286}
!477 = distinct !{!477, !286}
!478 = !{!"ira-build.c:form_loop_tree"}
!479 = !{!233, !222, i64 40}
!480 = !{!233, !222, i64 32}
!481 = distinct !{!481, !286}
!482 = !{!445, !222, i64 0}
!483 = !{!472, !222, i64 56}
!484 = !{!445, !222, i64 8}
!485 = !{!472, !227, i64 80}
!486 = !{!472, !222, i64 24}
!487 = !{!"branch_weights", i32 1, i32 127}
!488 = !{!462, !227, i64 0}
!489 = !{!"branch_weights", i32 1, i32 155655}
!490 = !{!"branch_weights", i32 127, i32 19923713}
!491 = distinct !{!491, !286}
!492 = !{!233, !222, i64 24}
!493 = !{!"branch_weights", i32 155, i32 622465}
!494 = distinct !{!494, !286}
!495 = !{!"ira-build.c:create_allocnos"}
!496 = !{!"ira-build.c:remove_unnecessary_regions"}
!497 = !{!"branch_weights", i32 38, i32 1}
!498 = distinct !{!498, !286}
!499 = !{!"ira-build.c:update_bad_spill_attribute"}
!500 = !{!"branch_weights", i32 155, i32 153}
!501 = distinct !{!501, !286}
!502 = !{!"branch_weights", i32 155, i32 429581}
!503 = distinct !{!503, !286}
!504 = !{!"branch_weights", i32 1, i32 107433}
!505 = !{!"branch_weights", i32 107433, i32 61753}
!506 = distinct !{!506, !286}
!507 = !{!"branch_weights", i32 94189, i32 13246}
!508 = !{!"branch_weights", i32 1, i32 7158}
!509 = !{!"branch_weights", i32 7158, i32 6446}
!510 = distinct !{!510, !286}
!511 = !{!"branch_weights", i32 6864, i32 7517}
!512 = !{!"branch_weights", i32 777, i32 6088}
!513 = distinct !{!513, !286}
!514 = !{!"branch_weights", i32 6088, i32 7517}
!515 = distinct !{!515, !286}
!516 = distinct !{!516, !286}
!517 = !{!"ira-build.c:more_one_region_p"}
!518 = !{!"branch_weights", i32 1561, i32 39}
!519 = distinct !{!519, !286}
!520 = !{!"ira-build.c:propagate_allocno_info"}
!521 = distinct !{!521, !286}
!522 = distinct !{!522, !286}
!523 = !{!"ira-build.c:create_caps"}
!524 = distinct !{!524, !286}
!525 = !{!"ira-build.c:setup_min_max_allocno_live_range_point"}
!526 = !{!"branch_weights", i32 107434, i32 61753}
!527 = distinct !{!527, !286}
!528 = distinct !{!528, !286}
!529 = !{!"branch_weights", i32 1159801, i32 155}
!530 = distinct !{!530, !286}
!531 = !{!"branch_weights", i32 182555, i32 107434}
!532 = distinct !{!532, !286}
!533 = !{!"branch_weights", i32 107434, i32 0}
!534 = distinct !{!534, !286}
!535 = !{!"ira-build.c:sort_conflict_id_allocno_map"}
!536 = distinct !{!536, !286}
!537 = !{!"branch_weights", i32 1, i32 38}
!538 = distinct !{!538, !286}
!539 = !{!"branch_weights", i32 0, i32 1}
!540 = distinct !{!540, !286}
!541 = !{!"ira-build.c:setup_min_max_conflict_allocno_ids"}
!542 = !{!"branch_weights", i32 39, i32 107396}
!543 = !{!"branch_weights", i32 1, i32 107396}
!544 = !{!"branch_weights", i32 107396, i32 1}
!545 = !{!"branch_weights", i32 127, i32 1}
!546 = !{!"branch_weights", i32 97, i32 107396}
!547 = !{!"branch_weights", i32 13758849, i32 127}
!548 = distinct !{!548, !286}
!549 = !{!"branch_weights", i32 0, i32 -2147483648}
!550 = !{!"branch_weights", i32 429581, i32 155}
!551 = distinct !{!551, !286}
!552 = !{!"branch_weights", i32 1315345, i32 155}
!553 = distinct !{!553, !286}
!554 = !{!"branch_weights", i32 95259, i32 12176}
!555 = !{!"branch_weights", i32 107433, i32 1}
!556 = !{!"branch_weights", i32 107433, i32 221442}
!557 = distinct !{!557, !286}
!558 = distinct !{!558, !286}
!559 = !{!"function_entry_count", i64 155844}
!560 = !{!"ira-build.c:VEC_loop_p_base_length"}
!561 = !{!"branch_weights", i32 155693, i32 153}
!562 = !{!563, !227, i64 0}
!563 = !{!"VEC_loop_p_base", !227, i64 0, !227, i64 4, !223, i64 8}
!564 = !{!"ira-build.c:finish_loop_tree_nodes"}
!565 = distinct !{!565, !286}
!566 = !{!"branch_weights", i32 155731, i32 1}
!567 = distinct !{!567, !286}
!568 = !{!"ira-build.c:finish_copies"}
!569 = distinct !{!569, !286}
!570 = !{!"ira-build.c:finish_allocnos"}
!571 = distinct !{!571, !286}
!572 = !{!"ira-build.c:finish_cost_vectors"}
!573 = distinct !{!573, !286}
!574 = !{!"ira-build.c:VEC_ira_allocno_t_heap_reserve"}
!575 = !{!"ira-build.c:VEC_ira_allocno_t_base_quick_push"}
!576 = !{!"ira-build.c:VEC_ira_allocno_t_base_space"}
!577 = !{!264, !227, i64 4}
!578 = !{!"ira-build.c:VEC_ira_copy_t_heap_reserve"}
!579 = !{!"ira-build.c:VEC_ira_copy_t_base_quick_push"}
!580 = !{!"ira-build.c:VEC_ira_copy_t_base_space"}
!581 = !{!329, !227, i64 4}
!582 = !{!"ira-build.c:sparseset_bit_p"}
!583 = !{!409, !227, i64 20}
!584 = !{!409, !222, i64 8}
!585 = !{!"ira-build.c:sparseset_insert_bit"}
!586 = !{!"ira-build.c:compress_allocno_conflict_vec"}
!587 = distinct !{!587, !286}
!588 = !{!"function_entry_count", i64 380}
!589 = !{!"ira-build.c:VEC_loop_p_base_iterate"}
!590 = !{!"branch_weights", i32 1, i32 381}
!591 = !{!"branch_weights", i32 191, i32 191}
!592 = !{!"function_entry_count", i64 76}
!593 = !{!"ira-build.c:VEC_ira_allocno_t_heap_alloc"}
!594 = !{!"ira-build.c:VEC_ira_copy_t_heap_alloc"}
!595 = !{!"ira-build.c:ei_start_1"}
!596 = !{!"ira-build.c:ei_cond"}
!597 = !{!"ira-build.c:VEC_edge_base_length"}
!598 = !{!599, !227, i64 0}
!599 = !{!"VEC_edge_base", !227, i64 0, !227, i64 4, !223, i64 8}
!600 = !{!"ira-build.c:ei_next"}
!601 = !{!602, !227, i64 0}
!602 = !{!"", !227, i64 0, !222, i64 8}
!603 = !{!"ira-build.c:VEC_edge_base_iterate"}
!604 = !{!"ira-build.c:VEC_edge_heap_free"}
!605 = !{!"ira-build.c:ei_end_p"}
!606 = !{!"ira-build.c:ei_edge"}
!607 = !{!"ira-build.c:ei_container"}
!608 = !{!"ira-build.c:VEC_edge_base_index"}
!609 = !{!"function_entry_count", i64 155692}
!610 = !{!"ira-build.c:loop_outer"}
!611 = !{!462, !222, i64 40}
!612 = !{!"branch_weights", i32 155693, i32 1}
!613 = !{!"function_entry_count", i64 155654}
!614 = !{!"ira-build.c:add_loop_to_tree"}
!615 = !{!"branch_weights", i32 155655, i32 1}
!616 = !{!"branch_weights", i32 39, i32 155617}
!617 = distinct !{!617, !286}
!618 = !{!"ira-build.c:setup_loop_tree_level"}
!619 = !{!233, !227, i64 56}
!620 = distinct !{!620, !286}
!621 = !{!"ira-build.c:VEC_loop_p_base_index"}
!622 = !{!"ira-build.c:create_loop_tree_node_allocnos"}
!623 = !{!"branch_weights", i32 39, i32 155655}
!624 = distinct !{!624, !286}
!625 = distinct !{!625, !286}
!626 = !{!"ira-build.c:propagate_modified_regnos"}
!627 = !{!"ira-build.c:create_bb_allocnos"}
!628 = !{!629, !222, i64 0}
!629 = !{!"rtl_bb_info", !222, i64 0, !222, i64 8, !222, i64 16, !222, i64 24, !227, i64 32}
!630 = !{!"branch_weights", i32 155655, i32 893504}
!631 = !{!"branch_weights", i32 1509179346, i32 -806652937}
!632 = !{!"branch_weights", i32 127, i32 134292097}
!633 = distinct !{!633, !286}
!634 = !{!635, !222, i64 16}
!635 = !{!"df_lr_bb_info", !222, i64 0, !222, i64 8, !222, i64 16, !222, i64 24}
!636 = !{!"branch_weights", i32 1, i32 155654}
!637 = !{!"branch_weights", i32 15, i32 182774}
!638 = !{!"branch_weights", i32 155654, i32 27134}
!639 = distinct !{!639, !286}
!640 = !{!"ira-build.c:create_loop_allocnos"}
!641 = !{!635, !222, i64 24}
!642 = distinct !{!642, !286}
!643 = !{!"function_entry_count", i64 3411586}
!644 = !{!"ira-build.c:create_insn_allocnos"}
!645 = !{!"branch_weights", i32 -898978973, i32 1795126527, i32 1263662097, i32 16761592, i32 464022435}
!646 = !{!"branch_weights", i32 357249, i32 525771}
!647 = !{!"branch_weights", i32 107420, i32 249830}
!648 = !{!"branch_weights", i32 357249, i32 1}
!649 = !{!472, !228, i64 72}
!650 = !{!472, !227, i64 88}
!651 = !{!"branch_weights", i32 1, i32 42070}
!652 = !{!"branch_weights", i32 190617, i32 166633}
!653 = !{!"branch_weights", i32 1, i32 1670481}
!654 = !{!"branch_weights", i32 -2009300086, i32 -1555792905, i32 17863933}
!655 = !{!656, !227, i64 0}
!656 = !{!"rtvec_def", !227, i64 0, !223, i64 8}
!657 = !{!"branch_weights", i32 8421, i32 1}
!658 = !{!"branch_weights", i32 8422, i32 8421}
!659 = distinct !{!659, !286}
!660 = !{!"branch_weights", i32 706913, i32 1670481}
!661 = distinct !{!661, !286}
!662 = !{!"ira-build.c:bmp_iter_set_init"}
!663 = !{!664, !222, i64 0}
!664 = !{!"bitmap_head_def", !222, i64 0, !222, i64 8, !227, i64 16, !222, i64 24}
!665 = !{!666, !222, i64 0}
!666 = !{!"", !222, i64 0, !222, i64 8, !227, i64 16, !228, i64 24}
!667 = !{!666, !222, i64 8}
!668 = !{!669, !227, i64 16}
!669 = !{!"bitmap_element_def", !222, i64 0, !222, i64 8, !227, i64 16, !223, i64 24}
!670 = !{!666, !227, i64 16}
!671 = !{!666, !228, i64 24}
!672 = !{!"ira-build.c:df_lr_get_bb_info"}
!673 = !{!674, !227, i64 16}
!674 = !{!"dataflow", !222, i64 0, !222, i64 8, !227, i64 16, !222, i64 24, !222, i64 32, !222, i64 40, !227, i64 48, !223, i64 52, !223, i64 53, !223, i64 54}
!675 = !{!674, !222, i64 8}
!676 = !{!"function_entry_count", i64 338441}
!677 = !{!"ira-build.c:bmp_iter_set"}
!678 = !{!"branch_weights", i32 322932, i32 15511}
!679 = !{!"branch_weights", i32 182787, i32 1}
!680 = !{!"branch_weights", i32 3015181, i32 182787}
!681 = distinct !{!681, !286}
!682 = !{!"branch_weights", i32 1, i32 321914}
!683 = !{!"branch_weights", i32 320898, i32 167278}
!684 = !{!"branch_weights", i32 321914, i32 166261}
!685 = distinct !{!685, !286}
!686 = !{!669, !222, i64 0}
!687 = !{!"branch_weights", i32 155655, i32 166261}
!688 = !{!"function_entry_count", i64 182787}
!689 = !{!"ira-build.c:bmp_iter_next"}
!690 = !{!"ira-build.c:mark_all_loops_for_removal"}
!691 = !{!233, !223, i64 60}
!692 = distinct !{!692, !286}
!693 = !{!"ira-build.c:mark_loops_for_removal"}
!694 = distinct !{!694, !286}
!695 = !{!696, !227, i64 8}
!696 = !{!"param_info", !222, i64 0, !227, i64 8, !223, i64 12, !227, i64 16, !227, i64 20, !222, i64 24}
!697 = distinct !{!697, !286}
!698 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_heap_alloc"}
!699 = !{!"ira-build.c:remove_uneccesary_loop_nodes_from_loop_tree"}
!700 = distinct !{!700, !286}
!701 = !{!233, !222, i64 16}
!702 = !{!"branch_weights", i32 622465, i32 155}
!703 = distinct !{!703, !286}
!704 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_heap_free"}
!705 = !{!"branch_weights", i32 1, i32 77}
!706 = !{!"ira-build.c:remove_low_level_allocnos"}
!707 = distinct !{!707, !286}
!708 = distinct !{!708, !286}
!709 = distinct !{!709, !286}
!710 = !{!"ira-build.c:remove_unnecessary_allocnos"}
!711 = distinct !{!711, !286}
!712 = distinct !{!712, !286}
!713 = !{!"branch_weights", i32 2147463661, i32 19987}
!714 = distinct !{!714, !286}
!715 = !{!"branch_weights", i32 2093450189, i32 54033459}
!716 = !{!"function_entry_count", i64 155768}
!717 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_base_length"}
!718 = !{!"branch_weights", i32 1, i32 155769}
!719 = !{!720, !227, i64 0}
!720 = !{!"VEC_ira_loop_tree_node_t_base", !227, i64 0, !227, i64 4, !223, i64 8}
!721 = !{!"ira-build.c:finish_loop_tree_node"}
!722 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_base_pop"}
!723 = !{!"ira-build.c:loop_depth"}
!724 = !{!"ira-build.c:low_pressure_loop_node_p"}
!725 = distinct !{!725, !286}
!726 = !{!"ira-build.c:loop_compare_func"}
!727 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_heap_safe_push"}
!728 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_heap_reserve"}
!729 = !{!"branch_weights", i32 1, i32 155693}
!730 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_base_quick_push"}
!731 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_base_space"}
!732 = !{!720, !227, i64 4}
!733 = !{!"ira-build.c:propagate_some_info_from_allocno"}
!734 = !{!"ira-build.c:ira_allocate_and_accumulate_costs"}
!735 = distinct !{!735, !286}
!736 = !{!"ira-build.c:ira_rebuild_regno_allocno_list"}
!737 = distinct !{!737, !286}
!738 = distinct !{!738, !286}
!739 = !{!"ira-build.c:regno_allocno_order_compare_func"}
!740 = !{!"ira-build.c:loop_is_inside_p"}
!741 = distinct !{!741, !286}
!742 = !{!"ira-build.c:bitmap_initialize_stat"}
!743 = !{!664, !222, i64 24}
!744 = !{!"ira-build.c:create_cap_allocno"}
!745 = !{!226, !227, i64 220}
!746 = !{!"ira-build.c:ira_allocate_and_copy_costs"}
!747 = !{!"function_entry_count", i64 323797}
!748 = !{!"ira-build.c:allocno_range_compare_func"}
!749 = !{!"branch_weights", i32 1, i32 323798}
!750 = !{!"branch_weights", i32 323798, i32 1}
!751 = !{!"branch_weights", i32 6098, i32 317701}
!752 = !{!"branch_weights", i32 1, i32 6098}
!753 = !{!"ira-build.c:VEC_ira_copy_t_heap_free"}
!754 = !{!"ira-build.c:VEC_ira_allocno_t_heap_free"}
