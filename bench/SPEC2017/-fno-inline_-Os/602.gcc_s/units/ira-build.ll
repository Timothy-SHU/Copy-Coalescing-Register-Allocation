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
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
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

@ira_loop_tree_root = dso_local local_unnamed_addr global ptr null, align 8
@ira_loop_tree_height = dso_local local_unnamed_addr global i32 0, align 4
@ira_bb_nodes = dso_local local_unnamed_addr global ptr null, align 8
@ira_loop_nodes = dso_local local_unnamed_addr global ptr null, align 8
@ira_regno_allocno_map = dso_local local_unnamed_addr global ptr null, align 8
@ira_allocnos = dso_local local_unnamed_addr global ptr null, align 8
@ira_allocnos_num = dso_local local_unnamed_addr global i32 0, align 4
@ira_conflict_id_allocno_map = dso_local local_unnamed_addr global ptr null, align 8
@ira_copies = dso_local local_unnamed_addr global ptr null, align 8
@ira_copies_num = dso_local local_unnamed_addr global i32 0, align 4
@ira_curr_loop_tree_node = dso_local local_unnamed_addr global ptr null, align 8
@ira_curr_regno_allocno_map = dso_local local_unnamed_addr global ptr null, align 8
@allocno_pool = internal unnamed_addr global ptr null, align 8
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@allocno_vec = internal global ptr null, align 8
@ira_conflict_id_allocno_map_vec = internal global ptr null, align 8
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@ira_dump_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c" a%d(r%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c",b%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c",l%d\00", align 1
@allocno_live_range_pool = internal unnamed_addr global ptr null, align 8
@copy_pool = internal unnamed_addr global ptr null, align 8
@copy_vec = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"ira-build.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"  cp%d:a%d(r%d)<->a%d(r%d)@%d:%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"shuffle\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c" a%d(r%d):\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c" cp%d:a%d(r%d)@%d\00", align 1
@cost_vector_pool = internal unnamed_addr global [27 x ptr] zeroinitializer, align 16
@regno_top_level_allocno_map = internal unnamed_addr global ptr null, align 8
@internal_flag_ira_verbose = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [42 x i8] c"      Moving ranges of a%dr%d to a%dr%d: \00", align 1
@ira_class_hard_regs_num = external local_unnamed_addr global [27 x i32], align 16
@ira_max_point = external local_unnamed_addr global i32, align 4
@ira_start_point_ranges = external local_unnamed_addr global ptr, align 8
@ira_reg_classes_intersect_p = external local_unnamed_addr global [27 x [27 x i8]], align 16
@ira_finish_point_ranges = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [35 x i8] c"      Remove cp%d:%c%dr%d-%c%dr%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"      Remove cp%d:a%dr%d-a%dr%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"      Remove a%dr%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"      Coping ranges of a%dr%d to a%dr%d: \00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"./sparseset.h\00", align 1
@allocno_conflict_check = internal unnamed_addr global ptr null, align 8
@curr_allocno_conflict_check_tick = internal unnamed_addr global i32 0, align 4
@ira_loops = external local_unnamed_addr global %struct.loops, align 8
@ira_conflicts_p = external local_unnamed_addr global i8, align 1
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@.str.20 = private unnamed_addr constant [36 x i8] c"  regions=%d, blocks=%d, points=%d\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [53 x i8] c"    allocnos=%d, copies=%d, conflicts=%d, ranges=%d\0A\00", align 1
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
define dso_local ptr @ira_create_allocno(i32 noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 !prof !328 {
  %4 = load ptr, ptr @allocno_pool, align 8, !tbaa !329
  %5 = tail call ptr @pool_alloc(ptr noundef %4) #23
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 1
  store i32 %0, ptr %6, align 4, !tbaa !333
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 6
  store ptr %2, ptr %7, align 8, !tbaa !337
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %9, label %21, !prof !338

9:                                                ; preds = %3
  %10 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !329
  %11 = sext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !329
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !339
  store ptr %5, ptr %12, align 8, !tbaa !329
  %15 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %2, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !340
  %17 = getelementptr inbounds ptr, ptr %16, i64 %11
  %18 = load ptr, ptr %17, align 8, !tbaa !329
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !342

20:                                               ; preds = %9
  store ptr %5, ptr %17, align 8, !tbaa !329
  br label %21

21:                                               ; preds = %9, %20, %3
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %23 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !343
  store i32 %23, ptr %5, align 8, !tbaa !344
  %24 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %2, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !345
  %26 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %25, i32 noundef %23) #23
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 23
  store ptr null, ptr %27, align 8, !tbaa !346
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 28
  store i32 0, ptr %28, align 8, !tbaa !347
  %29 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !348
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 26
  store i64 %29, ptr %30, align 8, !tbaa !349
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 27
  store i64 %29, ptr %31, align 8, !tbaa !350
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 7
  store i32 0, ptr %32, align 8, !tbaa !351
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 8
  store i32 0, ptr %33, align 4, !tbaa !352
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 3
  store i32 -1, ptr %34, align 4, !tbaa !353
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 29
  store i32 0, ptr %35, align 4, !tbaa !354
  %36 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 30
  store i32 0, ptr %36, align 8, !tbaa !355
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 31
  %38 = load i16, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 32
  store ptr null, ptr %39, align 8, !tbaa !356
  %40 = and i16 %38, -4096
  store i16 %40, ptr %37, align 4
  %41 = icmp slt i32 %0, 0
  br i1 %41, label %50, label %42, !prof !357

42:                                               ; preds = %21
  %43 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !329
  %44 = zext nneg i32 %0 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !329
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  br label %50

50:                                               ; preds = %21, %42
  %51 = phi i32 [ %49, %42 ], [ 0, %21 ]
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 2
  store i32 %51, ptr %52, align 8, !tbaa !358
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 15
  store ptr null, ptr %53, align 8, !tbaa !359
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 33
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %54, i8 0, i64 32, i1 false)
  store i32 -1, ptr %55, align 8, !tbaa !360
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 9
  %57 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 39
  %58 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  store ptr %5, ptr %58, align 8, !tbaa !361
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 19
  store ptr %5, ptr %59, align 8, !tbaa !362
  %60 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 20
  store ptr null, ptr %60, align 8, !tbaa !363
  %61 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 21
  store i32 2147483647, ptr %61, align 8, !tbaa !364
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 22
  store i32 -1, ptr %62, align 4, !tbaa !365
  %63 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !343
  %64 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 24
  store i32 %63, ptr %64, align 8, !tbaa !366
  tail call fastcc void @VEC_ira_allocno_t_heap_safe_push(ptr noundef nonnull @allocno_vec, ptr noundef nonnull %5) #24
  %65 = load ptr, ptr @allocno_vec, align 8
  %66 = tail call fastcc ptr @VEC_ira_allocno_t_base_address(ptr noundef %65) #24
  store ptr %66, ptr @ira_allocnos, align 8, !tbaa !329
  %67 = tail call fastcc i32 @VEC_ira_allocno_t_base_length(ptr noundef %65) #24
  store i32 %67, ptr @ira_allocnos_num, align 4, !tbaa !343
  tail call fastcc void @VEC_ira_allocno_t_heap_safe_push(ptr noundef nonnull @ira_conflict_id_allocno_map_vec, ptr noundef nonnull %5) #24
  %68 = load ptr, ptr @ira_conflict_id_allocno_map_vec, align 8
  %69 = tail call fastcc ptr @VEC_ira_allocno_t_base_address(ptr noundef %68) #24
  store ptr %69, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !329
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_allocno_t_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !367 !PGOFuncName !368 {
  tail call fastcc void @VEC_ira_allocno_t_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !329
  tail call fastcc void @VEC_ira_allocno_t_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ira_allocno_t_base_address(ptr noundef readnone %0) unnamed_addr #3 !prof !367 !PGOFuncName !369 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !370
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_allocno_t_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !328 !PGOFuncName !371 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !357

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !372
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_allocno_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !367 !PGOFuncName !374 {
  %2 = load ptr, ptr %0, align 8, !tbaa !329
  %3 = tail call fastcc i32 @VEC_ira_allocno_t_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !375

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !329
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ira_allocno_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !367 !PGOFuncName !376 {
  %3 = load i32, ptr %0, align 8, !tbaa !372
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !372
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !329
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_allocno_t_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !367 !PGOFuncName !377 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !370

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !378
  %6 = load i32, ptr %0, align 8, !tbaa !372
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_set_allocno_cover_class(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #6 !prof !328 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  store i32 %1, ptr %3, align 8, !tbaa !379
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !348
  %7 = xor i64 %6, -1
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 26
  %9 = load i64, ptr %8, align 8, !tbaa !349
  %10 = or i64 %9, %7
  store i64 %10, ptr %8, align 8, !tbaa !349
  %11 = load i64, ptr %5, align 8, !tbaa !348
  %12 = xor i64 %11, -1
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 27
  %14 = load i64, ptr %13, align 8, !tbaa !350
  %15 = or i64 %14, %12
  store i64 %15, ptr %13, align 8, !tbaa !350
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ira_conflict_vector_profitable_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 !prof !380 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 4, !tbaa !365
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %6 = load i32, ptr %5, align 8, !tbaa !364
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %20, label %8, !prof !381

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
define dso_local void @ira_allocate_allocno_conflict_vec(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !382 {
  %3 = shl i32 %1, 3
  %4 = add i32 %3, 8
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #23
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  store ptr %6, ptr %7, align 8, !tbaa !346
  store ptr null, ptr %6, align 8, !tbaa !329
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  store i32 0, ptr %8, align 8, !tbaa !347
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  store i32 %4, ptr %9, align 4, !tbaa !383
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %11 = load i16, ptr %10, align 4
  %12 = or i16 %11, 2048
  store i16 %12, ptr %10, align 4
  ret void
}

; Function Attrs: optsize
declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_allocate_allocno_conflicts(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !384 {
  %3 = tail call zeroext i8 @ira_conflict_vector_profitable_p(ptr noundef %0, i32 noundef %1) #24, !range !385
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !386

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
define internal fastcc void @allocate_allocno_conflict_bit_vec(ptr nocapture noundef %0) unnamed_addr #0 !prof !387 !PGOFuncName !388 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 4, !tbaa !365
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %5 = load i32, ptr %4, align 8, !tbaa !364
  %6 = add i32 %3, 64
  %7 = sub i32 %6, %5
  %8 = sdiv i32 %7, 64
  %9 = shl nsw i32 %8, 3
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @ira_allocate(i64 noundef %10) #23
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  store ptr %11, ptr %12, align 8, !tbaa !346
  tail call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  store i32 %9, ptr %13, align 4, !tbaa !383
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, -2049
  store i16 %16, ptr %14, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_add_allocno_conflict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !389 {
  tail call fastcc void @add_to_allocno_conflicts(ptr noundef %0, ptr noundef %1) #24
  tail call fastcc void @add_to_allocno_conflicts(ptr noundef %1, ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_allocno_conflicts(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !390 !PGOFuncName !391 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 2048
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %43, label %7, !prof !392

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  %9 = load i32, ptr %8, align 8, !tbaa !347
  %10 = add nsw i32 %9, 2
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  %12 = load i32, ptr %11, align 4, !tbaa !383
  %13 = zext i32 %12 to i64
  %14 = sext i32 %10 to i64
  %15 = shl nsw i64 %14, 3
  %16 = icmp ugt i64 %15, %13
  br i1 %16, label %20, label %17, !prof !393

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %19 = load ptr, ptr %18, align 8, !tbaa !346
  br label %34

20:                                               ; preds = %7
  %21 = mul nsw i32 %10, 3
  %22 = sdiv i32 %21, 2
  %23 = shl i32 %22, 3
  %24 = add i32 %23, 8
  %25 = zext i32 %24 to i64
  %26 = tail call ptr @ira_allocate(i64 noundef %25) #23
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %28 = load ptr, ptr %27, align 8, !tbaa !346
  %29 = load i32, ptr %8, align 8, !tbaa !347
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %26, ptr align 1 %28, i64 %31, i1 false)
  %32 = load ptr, ptr %27, align 8, !tbaa !346
  tail call void @ira_free(ptr noundef %32) #23
  store ptr %26, ptr %27, align 8, !tbaa !346
  store i32 %24, ptr %11, align 4, !tbaa !383
  %33 = load i32, ptr %8, align 8, !tbaa !347
  br label %34

34:                                               ; preds = %20, %17
  %35 = phi i32 [ %9, %17 ], [ %33, %20 ]
  %36 = phi ptr [ %19, %17 ], [ %26, %20 ]
  %37 = sext i32 %9 to i64
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  store ptr %1, ptr %38, align 8, !tbaa !329
  %39 = add nsw i32 %9, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %36, i64 %40
  store ptr null, ptr %41, align 8, !tbaa !329
  %42 = add nsw i32 %35, 1
  store i32 %42, ptr %8, align 8, !tbaa !347
  br label %139

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 24
  %45 = load i32, ptr %44, align 8, !tbaa !366
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %47 = load ptr, ptr %46, align 8, !tbaa !346
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %49 = load i32, ptr %48, align 8, !tbaa !364
  %50 = icmp sgt i32 %49, %45
  br i1 %50, label %51, label %95, !prof !394

51:                                               ; preds = %43
  %52 = xor i32 %45, -1
  %53 = add i32 %49, %52
  %54 = sdiv i32 %53, 64
  %55 = add nsw i32 %54, 1
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %57 = load i32, ptr %56, align 4, !tbaa !365
  %58 = sub nsw i32 %57, %49
  %59 = sdiv i32 %58, 64
  %60 = add nsw i32 %59, 1
  %61 = add nsw i32 %60, %55
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 3
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  %66 = load i32, ptr %65, align 4, !tbaa !383
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
  %84 = load ptr, ptr %46, align 8, !tbaa !346
  %85 = sext i32 %60 to i64
  %86 = shl nsw i64 %85, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %83, ptr align 1 %84, i64 %86, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %80, i8 0, i64 %82, i1 false)
  %87 = getelementptr inbounds i8, ptr %80, i64 %63
  %88 = sub nsw i64 %79, %63
  tail call void @llvm.memset.p0.i64(ptr align 1 %87, i8 0, i64 %88, i1 false)
  %89 = load ptr, ptr %46, align 8, !tbaa !346
  tail call void @ira_free(ptr noundef %89) #23
  store ptr %80, ptr %46, align 8, !tbaa !346
  store i32 %78, ptr %65, align 4, !tbaa !383
  br label %90

90:                                               ; preds = %74, %68
  %91 = phi ptr [ %47, %68 ], [ %80, %74 ]
  %92 = shl nsw i32 %55, 6
  %93 = load i32, ptr %48, align 8, !tbaa !364
  %94 = sub nsw i32 %93, %92
  store i32 %94, ptr %48, align 8, !tbaa !364
  br label %127

95:                                               ; preds = %43
  %96 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %97 = load i32, ptr %96, align 4, !tbaa !365
  %98 = icmp slt i32 %97, %45
  br i1 %98, label %99, label %127, !prof !395

99:                                               ; preds = %95
  %100 = sub nsw i32 %45, %49
  %101 = sdiv i32 %100, 64
  %102 = add nsw i32 %101, 1
  %103 = shl nsw i32 %102, 3
  %104 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  %105 = load i32, ptr %104, align 4, !tbaa !383
  %106 = icmp ult i32 %105, %103
  br i1 %106, label %107, label %124, !prof !396

107:                                              ; preds = %99
  %108 = mul nsw i32 %102, 3
  %109 = sdiv i32 %108, 2
  %110 = shl nsw i32 %109, 3
  %111 = add i32 %110, 8
  %112 = zext i32 %111 to i64
  %113 = tail call ptr @ira_allocate(i64 noundef %112) #23
  %114 = load ptr, ptr %46, align 8, !tbaa !346
  %115 = load i32, ptr %104, align 4, !tbaa !383
  %116 = zext i32 %115 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %113, ptr align 1 %114, i64 %116, i1 false)
  %117 = load i32, ptr %104, align 4, !tbaa !383
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %113, i64 %118
  %120 = sub i32 %111, %117
  %121 = zext i32 %120 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %119, i8 0, i64 %121, i1 false)
  %122 = load ptr, ptr %46, align 8, !tbaa !346
  tail call void @ira_free(ptr noundef %122) #23
  store ptr %113, ptr %46, align 8, !tbaa !346
  store i32 %111, ptr %104, align 4, !tbaa !383
  %123 = load i32, ptr %48, align 8, !tbaa !364
  br label %124

124:                                              ; preds = %107, %99
  %125 = phi i32 [ %123, %107 ], [ %49, %99 ]
  %126 = phi ptr [ %113, %107 ], [ %47, %99 ]
  store i32 %45, ptr %96, align 4, !tbaa !365
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
  %137 = load i64, ptr %136, align 8, !tbaa !348
  %138 = or i64 %133, %137
  store i64 %138, ptr %136, align 8, !tbaa !348
  br label %139

139:                                              ; preds = %127, %34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @ira_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_print_expanded_allocno(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !397 {
  %2 = load ptr, ptr @ira_dump_file, align 8, !tbaa !329
  %3 = load i32, ptr %0, align 8, !tbaa !344
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !333
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %5) #24
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !337
  %9 = load ptr, ptr %8, align 8, !tbaa !398
  %10 = icmp eq ptr %9, null
  %11 = load ptr, ptr @ira_dump_file, align 8, !tbaa !329
  br i1 %10, label %14, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  br label %17

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !399
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %16, %14 ], [ %13, %12 ]
  %19 = phi ptr [ @.str.2, %14 ], [ @.str.1, %12 ]
  %20 = load i32, ptr %18, align 8, !tbaa !343
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull %19, i32 noundef %20) #24
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !400
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr @ira_dump_file, align 8, !tbaa !329
  %27 = tail call i32 @fputc(i32 58, ptr %26)
  %28 = load ptr, ptr %22, align 8, !tbaa !400
  tail call void @ira_print_expanded_allocno(ptr noundef %28) #24
  br label %29

29:                                               ; preds = %25, %17
  %30 = load ptr, ptr @ira_dump_file, align 8, !tbaa !329
  %31 = tail call i32 @fputc(i32 41, ptr %30)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ira_create_allocno_live_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !401 {
  %5 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !329
  %6 = tail call ptr @pool_alloc(ptr noundef %5) #23
  store ptr %0, ptr %6, align 8, !tbaa !402
  %7 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %6, i64 0, i32 1
  store i32 %1, ptr %7, align 8, !tbaa !404
  %8 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %6, i64 0, i32 2
  store i32 %2, ptr %8, align 4, !tbaa !405
  %9 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %6, i64 0, i32 3
  store ptr %3, ptr %9, align 8, !tbaa !406
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_copy_allocno_live_range_list(ptr noundef readonly %0) local_unnamed_addr #0 !prof !407 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3, !prof !408

3:                                                ; preds = %1, %11
  %4 = phi ptr [ %7, %11 ], [ null, %1 ]
  %5 = phi ptr [ %12, %11 ], [ null, %1 ]
  %6 = phi ptr [ %14, %11 ], [ %0, %1 ]
  %7 = tail call fastcc ptr @copy_allocno_live_range(ptr noundef nonnull %6) #24
  %8 = icmp eq ptr %5, null
  br i1 %8, label %11, label %9, !prof !409

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %4, i64 0, i32 3
  store ptr %7, ptr %10, align 8, !tbaa !406
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi ptr [ %5, %9 ], [ %7, %3 ]
  %13 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !406
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %3, !prof !410, !llvm.loop !411

16:                                               ; preds = %11, %1
  %17 = phi ptr [ null, %1 ], [ %12, %11 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @copy_allocno_live_range(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !413 !PGOFuncName !414 {
  %2 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !329
  %3 = tail call ptr @pool_alloc(ptr noundef %2) #23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !415
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_merge_allocno_live_ranges(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !416 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %73, label %4, !prof !417

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %73, label %6, !prof !418

6:                                                ; preds = %4, %56
  %7 = phi ptr [ %60, %56 ], [ null, %4 ]
  %8 = phi ptr [ %59, %56 ], [ null, %4 ]
  %9 = phi ptr [ %58, %56 ], [ %1, %4 ]
  %10 = phi ptr [ %57, %56 ], [ %0, %4 ]
  %11 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !404
  %13 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %9, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !404
  %15 = icmp slt i32 %12, %14
  %16 = select i1 %15, ptr %9, ptr %10, !prof !419
  %17 = select i1 %15, ptr %10, ptr %9, !prof !419
  %18 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %16, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !404
  %20 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !405
  %22 = add nsw i32 %21, 1
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %38, label %24, !prof !420

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !404
  store i32 %26, ptr %18, align 8, !tbaa !404
  %27 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %16, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !405
  %29 = icmp slt i32 %28, %21
  br i1 %29, label %30, label %31, !prof !421

30:                                               ; preds = %24
  store i32 %21, ptr %27, align 4, !tbaa !405
  br label %31

31:                                               ; preds = %30, %24
  %32 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !406
  tail call void @ira_finish_allocno_live_range(ptr noundef nonnull %17) #24
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %56, !prof !422

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %16, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !406
  br label %50

38:                                               ; preds = %6
  %39 = icmp eq ptr %8, null
  br i1 %39, label %42, label %40, !prof !423

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %7, i64 0, i32 3
  store ptr %16, ptr %41, align 8, !tbaa !406
  br label %42

42:                                               ; preds = %38, %40
  %43 = phi ptr [ %8, %40 ], [ %16, %38 ]
  %44 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %16, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !406
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %56, !prof !424

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !406
  br label %50

50:                                               ; preds = %35, %47
  %51 = phi ptr [ %48, %47 ], [ %36, %35 ]
  %52 = phi ptr [ %49, %47 ], [ %16, %35 ]
  %53 = phi ptr [ %17, %47 ], [ %37, %35 ]
  %54 = phi ptr [ %43, %47 ], [ %8, %35 ]
  %55 = phi ptr [ %16, %47 ], [ %7, %35 ]
  store ptr null, ptr %51, align 8, !tbaa !406
  br label %56

56:                                               ; preds = %50, %42, %31
  %57 = phi ptr [ %16, %31 ], [ %45, %42 ], [ %52, %50 ]
  %58 = phi ptr [ %33, %31 ], [ %17, %42 ], [ %53, %50 ]
  %59 = phi ptr [ %8, %31 ], [ %43, %42 ], [ %54, %50 ]
  %60 = phi ptr [ %7, %31 ], [ %16, %42 ], [ %55, %50 ]
  %61 = icmp ne ptr %57, null
  %62 = icmp ne ptr %58, null
  %63 = select i1 %61, i1 %62, i1 false, !prof !425
  br i1 %63, label %6, label %64, !prof !426, !llvm.loop !427

64:                                               ; preds = %56
  br i1 %61, label %65, label %67, !prof !428

65:                                               ; preds = %64
  %66 = icmp eq ptr %59, null
  br i1 %66, label %73, label %70, !prof !429

67:                                               ; preds = %64
  br i1 %62, label %68, label %73, !prof !430

68:                                               ; preds = %67
  %69 = icmp eq ptr %59, null
  br i1 %69, label %73, label %70, !prof !431

70:                                               ; preds = %68, %65
  %71 = phi ptr [ %57, %65 ], [ %58, %68 ]
  %72 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %60, i64 0, i32 3
  store ptr %71, ptr %72, align 8, !tbaa !406
  br label %73

73:                                               ; preds = %70, %67, %65, %68, %4, %2
  %74 = phi ptr [ %1, %2 ], [ %0, %4 ], [ %59, %67 ], [ %57, %65 ], [ %58, %68 ], [ %59, %70 ]
  ret ptr %74
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_finish_allocno_live_range(ptr noundef %0) local_unnamed_addr #0 !prof !432 {
  %2 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !329
  tail call void @pool_free(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ira_allocno_live_ranges_intersect_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #11 !prof !433 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %32, !prof !434

6:                                                ; preds = %2, %26
  %7 = phi ptr [ %28, %26 ], [ %1, %2 ]
  %8 = phi ptr [ %27, %26 ], [ %0, %2 ]
  %9 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !404
  %11 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %7, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !405
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17, !prof !435

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %8, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !406
  br label %26

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %7, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !404
  %20 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %8, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !405
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %32, !prof !436

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %7, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !406
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi ptr [ %16, %14 ], [ %8, %23 ]
  %28 = phi ptr [ %7, %14 ], [ %25, %23 ]
  %29 = icmp ne ptr %27, null
  %30 = icmp ne ptr %28, null
  %31 = select i1 %29, i1 %30, i1 false, !prof !437
  br i1 %31, label %6, label %32, !prof !438, !llvm.loop !439

32:                                               ; preds = %17, %26, %2
  %33 = phi i8 [ 0, %2 ], [ 0, %26 ], [ 1, %17 ]
  ret i8 %33
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_finish_allocno_live_range_list(ptr noundef %0) local_unnamed_addr #0 !prof !367 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !440

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !406
  tail call void @ira_finish_allocno_live_range(ptr noundef nonnull %4) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !prof !441, !llvm.loop !442

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_free_allocno_updated_costs(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !443 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !379
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 34
  %5 = load ptr, ptr %4, align 8, !tbaa !444
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !445

7:                                                ; preds = %1
  tail call void @ira_free_cost_vector(ptr noundef nonnull %5, i32 noundef %3) #24
  br label %8

8:                                                ; preds = %7, %1
  store ptr null, ptr %4, align 8, !tbaa !444
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 36
  %10 = load ptr, ptr %9, align 8, !tbaa !446
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !447

12:                                               ; preds = %8
  tail call void @ira_free_cost_vector(ptr noundef nonnull %10, i32 noundef %3) #24
  br label %13

13:                                               ; preds = %12, %8
  store ptr null, ptr %9, align 8, !tbaa !446
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_free_cost_vector(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !448 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !329
  tail call void @pool_free(ptr noundef %5, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ira_create_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !449 {
  %7 = load ptr, ptr @copy_pool, align 8, !tbaa !329
  %8 = tail call ptr @pool_alloc(ptr noundef %7) #23
  %9 = load i32, ptr @ira_copies_num, align 4, !tbaa !343
  store i32 %9, ptr %8, align 8, !tbaa !450
  %10 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 1
  store ptr %0, ptr %10, align 8, !tbaa !452
  %11 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 2
  store ptr %1, ptr %11, align 8, !tbaa !453
  %12 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 3
  store i32 %2, ptr %12, align 8, !tbaa !454
  %13 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 4
  store i8 %3, ptr %13, align 4, !tbaa !455
  %14 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 5
  store ptr %4, ptr %14, align 8, !tbaa !456
  %15 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 10
  store ptr %5, ptr %15, align 8, !tbaa !457
  tail call fastcc void @VEC_ira_copy_t_heap_safe_push(ptr noundef nonnull %8) #24
  %16 = load ptr, ptr @copy_vec, align 8
  %17 = tail call fastcc ptr @VEC_ira_copy_t_base_address(ptr noundef %16) #24
  store ptr %17, ptr @ira_copies, align 8, !tbaa !329
  %18 = tail call fastcc i32 @VEC_ira_copy_t_base_length(ptr noundef %16) #24
  store i32 %18, ptr @ira_copies_num, align 4, !tbaa !343
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_copy_t_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !449 !PGOFuncName !458 {
  tail call fastcc void @VEC_ira_copy_t_heap_reserve() #24
  %2 = load ptr, ptr @copy_vec, align 8, !tbaa !329
  tail call fastcc void @VEC_ira_copy_t_base_quick_push(ptr noundef %2, ptr noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_ira_copy_t_base_address(ptr noundef readnone %0) unnamed_addr #3 !prof !449 !PGOFuncName !459 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_ira_copy_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !460
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_copy_t_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !449 !PGOFuncName !461 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !460

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !462
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_copy_t_heap_reserve() unnamed_addr #0 !prof !449 !PGOFuncName !464 {
  %1 = load ptr, ptr @copy_vec, align 8, !tbaa !329
  %2 = tail call fastcc i32 @VEC_ira_copy_t_base_space(ptr noundef %1) #24
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !460

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #23
  store ptr %5, ptr @copy_vec, align 8, !tbaa !329
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ira_copy_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !449 !PGOFuncName !465 {
  %3 = load i32, ptr %0, align 8, !tbaa !462
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !462
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ira_copy_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !329
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_copy_t_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !449 !PGOFuncName !466 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !460

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ira_copy_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !467
  %6 = load i32, ptr %0, align 8, !tbaa !462
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_add_allocno_copy_to_list(ptr noundef %0) local_unnamed_addr #12 !prof !468 {
  %2 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !452
  %4 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !453
  %6 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 6
  store ptr null, ptr %6, align 8, !tbaa !469
  %7 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 8
  store ptr null, ptr %7, align 8, !tbaa !470
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !359
  %10 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 7
  store ptr %9, ptr %10, align 8, !tbaa !471
  %11 = icmp eq ptr %9, null
  br i1 %11, label %19, label %12, !prof !472

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !452
  %15 = icmp eq ptr %14, %3
  %16 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 6
  %17 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 8
  %18 = select i1 %15, ptr %16, ptr %17, !prof !473
  store ptr %0, ptr %18, align 8, !tbaa !329
  br label %19

19:                                               ; preds = %12, %1
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !359
  %22 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 9
  store ptr %21, ptr %22, align 8, !tbaa !474
  %23 = icmp eq ptr %21, null
  br i1 %23, label %31, label %24, !prof !475

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ira_allocno_copy, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !453
  %27 = icmp eq ptr %26, %5
  %28 = getelementptr inbounds %struct.ira_allocno_copy, ptr %21, i64 0, i32 8
  %29 = getelementptr inbounds %struct.ira_allocno_copy, ptr %21, i64 0, i32 6
  %30 = select i1 %27, ptr %28, ptr %29, !prof !476
  store ptr %0, ptr %30, align 8, !tbaa !329
  br label %31

31:                                               ; preds = %24, %19
  store ptr %0, ptr %8, align 8, !tbaa !359
  store ptr %0, ptr %20, align 8, !tbaa !359
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_remove_allocno_copy_from_list(ptr nocapture noundef %0) local_unnamed_addr #12 !prof !397 {
  %2 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !452
  %4 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !453
  %6 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !471
  %8 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !469
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 15
  br label %21

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !452
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
  store ptr %7, ptr %22, align 8, !tbaa !329
  %23 = icmp eq ptr %7, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ira_allocno_copy, ptr %7, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !452
  %27 = icmp eq ptr %26, %3
  %28 = getelementptr inbounds %struct.ira_allocno_copy, ptr %7, i64 0, i32 6
  %29 = getelementptr inbounds %struct.ira_allocno_copy, ptr %7, i64 0, i32 8
  %30 = select i1 %27, ptr %28, ptr %29
  store ptr %9, ptr %30, align 8, !tbaa !329
  br label %31

31:                                               ; preds = %24, %21
  %32 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %33 = load ptr, ptr %32, align 8, !tbaa !474
  %34 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !470
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 15
  br label %47

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.ira_allocno_copy, ptr %35, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !453
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
  store ptr %33, ptr %48, align 8, !tbaa !329
  %49 = icmp eq ptr %33, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ira_allocno_copy, ptr %33, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !453
  %53 = icmp eq ptr %52, %5
  %54 = getelementptr inbounds %struct.ira_allocno_copy, ptr %33, i64 0, i32 8
  %55 = getelementptr inbounds %struct.ira_allocno_copy, ptr %33, i64 0, i32 6
  %56 = select i1 %53, ptr %54, ptr %55
  store ptr %35, ptr %56, align 8, !tbaa !329
  br label %57

57:                                               ; preds = %50, %47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_swap_allocno_copy_ends_if_necessary(ptr nocapture noundef %0) local_unnamed_addr #6 !prof !468 {
  %2 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !452
  %4 = load i32, ptr %3, align 8, !tbaa !344
  %5 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !453
  %7 = load i32, ptr %6, align 8, !tbaa !344
  %8 = icmp sgt i32 %4, %7
  br i1 %8, label %9, label %14, !prof !477

9:                                                ; preds = %1
  store ptr %6, ptr %2, align 8, !tbaa !452
  store ptr %3, ptr %5, align 8, !tbaa !453
  %10 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 8
  %12 = load <2 x ptr>, ptr %11, align 8, !tbaa !329
  %13 = load <2 x ptr>, ptr %10, align 8, !tbaa !329
  store <2 x ptr> %12, ptr %10, align 8, !tbaa !329
  store <2 x ptr> %13, ptr %11, align 8, !tbaa !329
  br label %14

14:                                               ; preds = %1, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_add_allocno_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !478 {
  %7 = tail call fastcc ptr @find_allocno_copy(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %5) #24
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !479

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ira_allocno_copy, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !454
  %12 = add nsw i32 %11, %2
  store i32 %12, ptr %10, align 8, !tbaa !454
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
define internal fastcc ptr @find_allocno_copy(ptr noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2, ptr noundef readnone %3) unnamed_addr #0 !prof !478 !PGOFuncName !480 {
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !359
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %8, !prof !481

8:                                                ; preds = %4, %40
  %9 = phi ptr [ %30, %40 ], [ undef, %4 ]
  %10 = phi ptr [ %29, %40 ], [ undef, %4 ]
  %11 = phi ptr [ %29, %40 ], [ %6, %4 ]
  %12 = getelementptr inbounds %struct.ira_allocno_copy, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !452
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %20, !prof !482

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ira_allocno_copy, ptr %11, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !471
  %18 = getelementptr inbounds %struct.ira_allocno_copy, ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !453
  br label %28

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.ira_allocno_copy, ptr %11, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !453
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %27, !prof !483

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ira_allocno_copy, ptr %11, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !474
  br label %28

27:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1062, ptr noundef nonnull @.str.6) #23
  br label %28

28:                                               ; preds = %24, %27, %15
  %29 = phi ptr [ %17, %15 ], [ %26, %24 ], [ %10, %27 ]
  %30 = phi ptr [ %19, %15 ], [ %13, %24 ], [ %9, %27 ]
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %32, label %40, !prof !484

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ira_allocno_copy, ptr %11, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !456
  %35 = icmp eq ptr %34, %2
  br i1 %35, label %36, label %40, !prof !485

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ira_allocno_copy, ptr %11, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !457
  %39 = icmp eq ptr %38, %3
  br i1 %39, label %42, label %40, !prof !486

40:                                               ; preds = %28, %32, %36
  %41 = icmp eq ptr %29, null
  br i1 %41, label %42, label %8, !prof !487, !llvm.loop !488

42:                                               ; preds = %36, %40, %4
  %43 = phi ptr [ null, %4 ], [ null, %40 ], [ %11, %36 ]
  ret ptr %43
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !397 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !329
  tail call fastcc void @print_copy(ptr noundef %2, ptr noundef %0) #24
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !397 !PGOFuncName !489 {
  %3 = load i32, ptr %1, align 8, !tbaa !450
  %4 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !452
  %6 = load i32, ptr %5, align 8, !tbaa !344
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !333
  %9 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !453
  %11 = load i32, ptr %10, align 8, !tbaa !344
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !333
  %14 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !454
  %16 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !456
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 4
  %21 = load i8, ptr %20, align 4, !tbaa !455
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, ptr @.str.10, ptr @.str.9
  br label %24

24:                                               ; preds = %2, %19
  %25 = phi ptr [ %23, %19 ], [ @.str.8, %2 ]
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %3, i32 noundef %6, i32 noundef %8, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %25) #24
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_copies() local_unnamed_addr #9 !prof !397 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !329
  tail call fastcc void @print_copies(ptr noundef %1) #24
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_copies(ptr nocapture noundef %0) unnamed_addr #9 !prof !397 !PGOFuncName !490 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_copy_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  call fastcc void @ira_copy_iter_init(ptr noundef nonnull %3) #24
  %4 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !385
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1, %6
  %7 = load ptr, ptr %2, align 8, !tbaa !329
  tail call fastcc void @print_copy(ptr noundef %0, ptr noundef %7) #24
  %8 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !385
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %6, !llvm.loop !491

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_copy_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #13 !prof !492 !PGOFuncName !493 {
  store i32 0, ptr %0, align 4, !tbaa !494
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_copy_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #14 !prof !496 !PGOFuncName !497 {
  %3 = load i32, ptr %0, align 4, !tbaa !494
  %4 = load i32, ptr @ira_copies_num, align 4, !tbaa !343
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !498

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_copies, align 8, !tbaa !329
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !329
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !499

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !329
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !494
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !500, !llvm.loop !501

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_debug_allocno_copies(ptr noundef %0) local_unnamed_addr #0 !prof !397 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !329
  tail call fastcc void @print_allocno_copies(ptr noundef %2, ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_allocno_copies(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !397 !PGOFuncName !502 {
  %3 = load i32, ptr %1, align 8, !tbaa !344
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !333
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef %5) #24
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !359
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %2, %30
  %11 = phi ptr [ %32, %30 ], [ undef, %2 ]
  %12 = phi ptr [ %32, %30 ], [ %8, %2 ]
  %13 = phi ptr [ %31, %30 ], [ undef, %2 ]
  %14 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !452
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !471
  %20 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !453
  br label %30

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !453
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !474
  br label %30

29:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1268, ptr noundef nonnull @.str.6) #23
  br label %30

30:                                               ; preds = %26, %29, %17
  %31 = phi ptr [ %21, %17 ], [ %15, %26 ], [ %13, %29 ]
  %32 = phi ptr [ %19, %17 ], [ %28, %26 ], [ %11, %29 ]
  %33 = load i32, ptr %12, align 8, !tbaa !450
  %34 = load i32, ptr %31, align 8, !tbaa !344
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !333
  %37 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !454
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %33, i32 noundef %34, i32 noundef %36, i32 noundef %38) #24
  %40 = icmp eq ptr %32, null
  br i1 %40, label %41, label %10, !llvm.loop !503

41:                                               ; preds = %30, %2
  %42 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ira_allocate_cost_vector(i32 noundef %0) local_unnamed_addr #0 !prof !448 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !329
  %5 = tail call ptr @pool_alloc(ptr noundef %4) #23
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_traverse_loop_tree(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !504 {
  store ptr %1, ptr @ira_curr_loop_tree_node, align 8, !tbaa !329
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !340
  store ptr %6, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !329
  %7 = icmp eq ptr %2, null
  br i1 %7, label %9, label %8, !prof !505

8:                                                ; preds = %4
  tail call void %2(ptr noundef nonnull %1) #23
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq i8 %0, 0
  br i1 %10, label %29, label %11, !prof !506

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !329
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15, !prof !507

15:                                               ; preds = %11
  %16 = icmp eq ptr %3, null
  br label %17

17:                                               ; preds = %15, %25
  %18 = phi ptr [ %13, %15 ], [ %27, %25 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !398
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !508

21:                                               ; preds = %17
  br i1 %7, label %23, label %22, !prof !509

22:                                               ; preds = %21
  tail call void %2(ptr noundef nonnull %18) #23
  br label %23

23:                                               ; preds = %22, %21
  br i1 %16, label %25, label %24, !prof !510

24:                                               ; preds = %23
  tail call void %3(ptr noundef nonnull %18) #23
  br label %25

25:                                               ; preds = %17, %24, %23
  %26 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %18, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !329
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17, !prof !511, !llvm.loop !512

29:                                               ; preds = %25, %11, %9
  %30 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !329
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33, !prof !513

33:                                               ; preds = %29, %33
  %34 = phi ptr [ %36, %33 ], [ %31, %29 ]
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext %0, ptr noundef nonnull %34, ptr noundef %2, ptr noundef %3) #24
  %35 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !329
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %33, !prof !514, !llvm.loop !515

38:                                               ; preds = %33, %29
  store ptr %1, ptr @ira_curr_loop_tree_node, align 8, !tbaa !329
  %39 = load ptr, ptr %5, align 8, !tbaa !340
  store ptr %39, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !329
  %40 = icmp eq ptr %3, null
  br i1 %40, label %42, label %41, !prof !516

41:                                               ; preds = %38
  tail call void %3(ptr noundef nonnull %1) #23
  br label %42

42:                                               ; preds = %41, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_flattening(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !517 {
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
  store ptr %10, ptr @regno_top_level_allocno_map, align 8, !tbaa !329
  %11 = tail call i32 @max_reg_num() #23
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %13, i1 false)
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #24
  %14 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #24, !range !385
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21, !prof !518

16:                                               ; preds = %36, %2
  %17 = load ptr, ptr %3, align 8, !tbaa !329
  %18 = icmp sgt i32 %0, 53
  br i1 %18, label %19, label %267, !prof !519

19:                                               ; preds = %16
  %20 = zext nneg i32 %0 to i64
  br label %39

21:                                               ; preds = %2, %36
  %22 = load ptr, ptr %3, align 8, !tbaa !329
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !400
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %36, !prof !520

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 26
  %28 = load i64, ptr %27, align 8, !tbaa !349
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 27
  store i64 %28, ptr %29, align 8, !tbaa !350
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 31
  %31 = load i16, ptr %30, align 4
  %32 = shl i16 %31, 1
  %33 = and i16 %32, 32
  %34 = and i16 %31, -33
  %35 = or disjoint i16 %33, %34
  store i16 %35, ptr %30, align 4
  br label %36

36:                                               ; preds = %26, %21
  %37 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #24, !range !385
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %16, label %21, !prof !521, !llvm.loop !522

39:                                               ; preds = %19, %260
  %40 = phi i64 [ %20, %19 ], [ %43, %260 ]
  %41 = phi i8 [ 0, %19 ], [ %261, %260 ]
  %42 = phi i8 [ 0, %19 ], [ %262, %260 ]
  %43 = add nsw i64 %40, -1
  %44 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !329
  %45 = getelementptr inbounds ptr, ptr %44, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !329
  %47 = icmp eq ptr %46, null
  br i1 %47, label %260, label %48, !prof !523

48:                                               ; preds = %39, %246
  %49 = phi ptr [ %251, %246 ], [ %46, %39 ]
  %50 = phi i8 [ %249, %246 ], [ %41, %39 ]
  %51 = phi i8 [ %248, %246 ], [ %42, %39 ]
  %52 = phi i8 [ %247, %246 ], [ 0, %39 ]
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 31
  %54 = load i16, ptr %53, align 4
  %55 = and i16 %54, 2
  %56 = icmp eq i16 %55, 0
  %57 = select i1 %56, i8 %50, i8 1, !prof !524
  %58 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 16
  %59 = load ptr, ptr %58, align 8, !tbaa !525
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %76, !prof !526

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !337
  %64 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %63, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !527
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %67, !prof !528

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %65, i64 0, i32 9
  %69 = load ptr, ptr %68, align 8, !tbaa !340
  %70 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !333
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %69, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !329
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %84, !prof !529

76:                                               ; preds = %67, %61, %48
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 15
  store ptr null, ptr %77, align 8, !tbaa !359
  %78 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !329
  %79 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !530
  %81 = tail call fastcc i32 @rhs_regno(ptr noundef %80) #24
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %78, i64 %82
  store ptr %49, ptr %83, align 8, !tbaa !329
  br label %246

84:                                               ; preds = %67
  %85 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 32
  %86 = load ptr, ptr %85, align 8, !tbaa !356
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88, !prof !531

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i8 [ 1, %88 ], [ %52, %84 ]
  %91 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !530
  %93 = tail call fastcc i32 @rhs_regno(ptr noundef %92) #24
  %94 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !530
  %96 = tail call fastcc i32 @rhs_regno(ptr noundef %95) #24
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %110, label %98, !prof !532

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 7
  %100 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 29
  %101 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 14
  %102 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 33
  %103 = load ptr, ptr %102, align 8, !tbaa !533
  %104 = icmp eq ptr %103, null
  %105 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 35
  %106 = load ptr, ptr %105, align 8, !tbaa !534
  %107 = icmp eq ptr %106, null
  %108 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 10
  %109 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 12
  br label %159

110:                                              ; preds = %89
  %111 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 27
  %112 = load i64, ptr %111, align 8, !tbaa !350
  %113 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 27
  %114 = load i64, ptr %113, align 8, !tbaa !350
  %115 = or i64 %114, %112
  store i64 %115, ptr %113, align 8, !tbaa !350
  %116 = load i16, ptr %53, align 4
  %117 = and i16 %116, 32
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %123, label %119, !prof !535

119:                                              ; preds = %110
  %120 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 31
  %121 = load i16, ptr %120, align 4
  %122 = or i16 %121, 32
  store i16 %122, ptr %120, align 4
  br label %123

123:                                              ; preds = %119, %110
  %124 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !343
  %125 = icmp sgt i32 %124, 4
  %126 = load ptr, ptr @ira_dump_file, align 8
  %127 = icmp ne ptr %126, null
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %129, label %139, !prof !536

129:                                              ; preds = %123
  %130 = load i32, ptr %49, align 8, !tbaa !344
  %131 = load ptr, ptr %91, align 8, !tbaa !530
  %132 = tail call fastcc i32 @rhs_regno(ptr noundef %131) #24
  %133 = load i32, ptr %74, align 8, !tbaa !344
  %134 = tail call fastcc i32 @rhs_regno(ptr noundef %95) #24
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %126, ptr noundef nonnull @.str.14, i32 noundef %130, i32 noundef %132, i32 noundef %133, i32 noundef %134) #24
  %136 = load ptr, ptr @ira_dump_file, align 8, !tbaa !329
  %137 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 20
  %138 = load ptr, ptr %137, align 8, !tbaa !363
  tail call void @ira_print_live_range_list(ptr noundef %136, ptr noundef %138) #23
  br label %139

139:                                              ; preds = %129, %123
  %140 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 20
  %141 = load ptr, ptr %140, align 8, !tbaa !363
  tail call fastcc void @change_allocno_in_range_list(ptr noundef %141, ptr noundef nonnull %74) #24
  %142 = load ptr, ptr %140, align 8, !tbaa !363
  %143 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 20
  %144 = load ptr, ptr %143, align 8, !tbaa !363
  %145 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %142, ptr noundef %144) #24
  store ptr %145, ptr %143, align 8, !tbaa !363
  store ptr null, ptr %140, align 8, !tbaa !363
  %146 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 31
  %147 = load i16, ptr %146, align 4
  %148 = and i16 %147, 1
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %150, label %154, !prof !537

150:                                              ; preds = %139
  %151 = load i16, ptr %53, align 4
  %152 = and i16 %151, 1
  %153 = icmp ne i16 %152, 0
  br label %154

154:                                              ; preds = %150, %139
  %155 = phi i1 [ true, %139 ], [ %153, %150 ]
  %156 = zext i1 %155 to i16
  %157 = and i16 %147, -2
  %158 = or disjoint i16 %157, %156
  store i16 %158, ptr %146, align 4
  br label %246

159:                                              ; preds = %98, %231
  %160 = phi ptr [ %238, %231 ], [ %74, %98 ]
  %161 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 7
  %162 = load <2 x i32>, ptr %99, align 8, !tbaa !343
  %163 = load <2 x i32>, ptr %161, align 8, !tbaa !343
  %164 = sub nsw <2 x i32> %163, %162
  store <2 x i32> %164, ptr %161, align 8, !tbaa !343
  %165 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 29
  %166 = load <2 x i32>, ptr %100, align 4, !tbaa !343
  %167 = load <2 x i32>, ptr %165, align 4, !tbaa !343
  %168 = sub nsw <2 x i32> %167, %166
  store <2 x i32> %168, ptr %165, align 4, !tbaa !343
  %169 = load i32, ptr %101, align 4, !tbaa !538
  %170 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 14
  %171 = load i32, ptr %170, align 4, !tbaa !538
  %172 = sub nsw i32 %171, %169
  store i32 %172, ptr %170, align 4, !tbaa !538
  %173 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 9
  %174 = load i32, ptr %173, align 8, !tbaa !379
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !343
  br i1 %104, label %195, label %178, !prof !539

178:                                              ; preds = %159
  %179 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 33
  %180 = load ptr, ptr %179, align 8, !tbaa !533
  %181 = icmp ne ptr %180, null
  %182 = icmp sgt i32 %177, 0
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %184, label %195, !prof !540

184:                                              ; preds = %178
  %185 = zext nneg i32 %177 to i64
  br label %186

186:                                              ; preds = %184, %186
  %187 = phi i64 [ 0, %184 ], [ %193, %186 ]
  %188 = getelementptr inbounds i32, ptr %103, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !343
  %190 = getelementptr inbounds i32, ptr %180, i64 %187
  %191 = load i32, ptr %190, align 4, !tbaa !343
  %192 = sub nsw i32 %191, %189
  store i32 %192, ptr %190, align 4, !tbaa !343
  %193 = add nuw nsw i64 %187, 1
  %194 = icmp eq i64 %193, %185
  br i1 %194, label %195, label %186, !prof !541, !llvm.loop !542

195:                                              ; preds = %186, %178, %159
  br i1 %107, label %213, label %196, !prof !543

196:                                              ; preds = %195
  %197 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 35
  %198 = load ptr, ptr %197, align 8, !tbaa !534
  %199 = icmp ne ptr %198, null
  %200 = icmp sgt i32 %177, 0
  %201 = select i1 %199, i1 %200, i1 false
  br i1 %201, label %202, label %213, !prof !544

202:                                              ; preds = %196
  %203 = zext nneg i32 %177 to i64
  br label %204

204:                                              ; preds = %202, %204
  %205 = phi i64 [ 0, %202 ], [ %211, %204 ]
  %206 = getelementptr inbounds i32, ptr %106, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !343
  %208 = getelementptr inbounds i32, ptr %198, i64 %205
  %209 = load i32, ptr %208, align 4, !tbaa !343
  %210 = sub nsw i32 %209, %207
  store i32 %210, ptr %208, align 4, !tbaa !343
  %211 = add nuw nsw i64 %205, 1
  %212 = icmp eq i64 %211, %203
  br i1 %212, label %213, label %204, !prof !545, !llvm.loop !546

213:                                              ; preds = %204, %196, %195
  %214 = load i32, ptr %108, align 4, !tbaa !547
  %215 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 10
  %216 = load i32, ptr %215, align 4, !tbaa !547
  %217 = sub nsw i32 %216, %214
  store i32 %217, ptr %215, align 4, !tbaa !547
  %218 = load i32, ptr %109, align 4, !tbaa !548
  %219 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 12
  %220 = load i32, ptr %219, align 4, !tbaa !548
  %221 = sub nsw i32 %220, %218
  store i32 %221, ptr %219, align 4, !tbaa !548
  %222 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 16
  %223 = load ptr, ptr %222, align 8, !tbaa !525
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %240, !prof !549

225:                                              ; preds = %213
  %226 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 6
  %227 = load ptr, ptr %226, align 8, !tbaa !337
  %228 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %227, i64 0, i32 6
  %229 = load ptr, ptr %228, align 8, !tbaa !527
  %230 = icmp eq ptr %229, null
  br i1 %230, label %240, label %231, !prof !550

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %229, i64 0, i32 9
  %233 = load ptr, ptr %232, align 8, !tbaa !340
  %234 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 1
  %235 = load i32, ptr %234, align 4, !tbaa !333
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds ptr, ptr %233, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !329
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %159, !prof !551

240:                                              ; preds = %213, %225, %231
  %241 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 15
  store ptr null, ptr %241, align 8, !tbaa !359
  %242 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !329
  %243 = tail call fastcc i32 @rhs_regno(ptr noundef %92) #24
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds ptr, ptr %242, i64 %244
  store ptr %49, ptr %245, align 8, !tbaa !329
  br label %246

246:                                              ; preds = %240, %154, %76
  %247 = phi i8 [ %52, %76 ], [ %90, %154 ], [ %90, %240 ]
  %248 = phi i8 [ %51, %76 ], [ 1, %154 ], [ %51, %240 ]
  %249 = phi i8 [ %57, %76 ], [ %57, %154 ], [ 1, %240 ]
  %250 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 5
  %251 = load ptr, ptr %250, align 8, !tbaa !329
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %48, !prof !552, !llvm.loop !553

253:                                              ; preds = %246
  %254 = icmp eq i8 %247, 0
  br i1 %254, label %260, label %255, !prof !554

255:                                              ; preds = %253
  %256 = trunc i64 %43 to i32
  %257 = tail call fastcc zeroext i8 @copy_info_to_removed_store_destinations(i32 noundef %256) #24, !range !385
  %258 = icmp eq i8 %257, 0
  %259 = select i1 %258, i8 %248, i8 1, !prof !555
  br label %260

260:                                              ; preds = %39, %255, %253
  %261 = phi i8 [ %249, %253 ], [ %249, %255 ], [ %41, %39 ]
  %262 = phi i8 [ %248, %253 ], [ %259, %255 ], [ %42, %39 ]
  %263 = icmp sgt i64 %40, 54
  br i1 %263, label %39, label %264, !prof !556, !llvm.loop !557

264:                                              ; preds = %260
  %265 = icmp eq i8 %262, 0
  %266 = icmp eq i8 %261, 0
  br label %267

267:                                              ; preds = %264, %16
  %268 = phi ptr [ %17, %16 ], [ null, %264 ]
  %269 = phi i1 [ true, %16 ], [ %265, %264 ]
  %270 = phi i1 [ true, %16 ], [ %266, %264 ]
  store ptr %268, ptr %3, align 8, !tbaa !329
  %271 = load i32, ptr @ira_max_point, align 4
  %272 = icmp eq i32 %271, %1
  %273 = select i1 %269, i1 %272, i1 false
  br i1 %273, label %275, label %274, !prof !558

274:                                              ; preds = %267
  tail call void @ira_rebuild_start_finish_chains() #23
  br label %275

275:                                              ; preds = %267, %274
  br i1 %270, label %379, label %276, !prof !559

276:                                              ; preds = %275
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #24
  %277 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #24, !range !385
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %301, label %279, !prof !518

279:                                              ; preds = %276
  %280 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !329
  br label %281

281:                                              ; preds = %279, %295
  %282 = phi ptr [ %280, %279 ], [ %296, %295 ]
  %283 = load ptr, ptr %3, align 8, !tbaa !329
  %284 = getelementptr inbounds %struct.ira_allocno, ptr %283, i64 0, i32 4
  %285 = load ptr, ptr %284, align 8, !tbaa !530
  %286 = tail call fastcc i32 @rhs_regno(ptr noundef %285) #24
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds ptr, ptr %282, i64 %287
  %289 = load ptr, ptr %288, align 8, !tbaa !329
  %290 = icmp eq ptr %283, %289
  br i1 %290, label %291, label %295, !prof !560

291:                                              ; preds = %281
  %292 = getelementptr inbounds %struct.ira_allocno, ptr %283, i64 0, i32 17
  %293 = load ptr, ptr %292, align 8, !tbaa !400
  %294 = icmp eq ptr %293, null
  br i1 %294, label %299, label %295, !prof !561

295:                                              ; preds = %281, %291, %299
  %296 = phi ptr [ %282, %281 ], [ %282, %291 ], [ %300, %299 ]
  %297 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #24, !range !385
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %301, label %281, !prof !521, !llvm.loop !562

299:                                              ; preds = %291
  tail call fastcc void @clear_allocno_conflicts(ptr noundef nonnull %283) #24
  %300 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !329
  br label %295

301:                                              ; preds = %295, %276
  %302 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !343
  %303 = tail call ptr @sparseset_alloc(i32 noundef %302) #23
  %304 = load ptr, ptr %3, align 8, !tbaa !329
  %305 = load i32, ptr @ira_max_point, align 4, !tbaa !343
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %377, !prof !519

307:                                              ; preds = %301, %372
  %308 = phi i64 [ %373, %372 ], [ 0, %301 ]
  %309 = phi ptr [ %360, %372 ], [ %304, %301 ]
  %310 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !329
  %311 = getelementptr inbounds ptr, ptr %310, i64 %308
  %312 = load ptr, ptr %311, align 8, !tbaa !329
  %313 = icmp eq ptr %312, null
  br i1 %313, label %359, label %314, !prof !563

314:                                              ; preds = %307, %355
  %315 = phi ptr [ %357, %355 ], [ %312, %307 ]
  %316 = load ptr, ptr %315, align 8, !tbaa !402
  %317 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !329
  %318 = getelementptr inbounds %struct.ira_allocno, ptr %316, i64 0, i32 4
  %319 = load ptr, ptr %318, align 8, !tbaa !530
  %320 = tail call fastcc i32 @rhs_regno(ptr noundef %319) #24
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds ptr, ptr %317, i64 %321
  %323 = load ptr, ptr %322, align 8, !tbaa !329
  %324 = icmp eq ptr %316, %323
  br i1 %324, label %325, label %355, !prof !564

325:                                              ; preds = %314
  %326 = getelementptr inbounds %struct.ira_allocno, ptr %316, i64 0, i32 17
  %327 = load ptr, ptr %326, align 8, !tbaa !400
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %355, !prof !564

329:                                              ; preds = %325
  %330 = load i32, ptr %316, align 8, !tbaa !344
  %331 = getelementptr inbounds %struct.ira_allocno, ptr %316, i64 0, i32 9
  %332 = load i32, ptr %331, align 8, !tbaa !379
  tail call fastcc void @sparseset_set_bit(ptr noundef %303, i32 noundef %330) #24
  tail call fastcc void @sparseset_iter_init(ptr noundef %303) #24
  %333 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %303) #24, !range !385
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %355, label %335, !prof !565

335:                                              ; preds = %329
  %336 = zext i32 %332 to i64
  br label %337

337:                                              ; preds = %335, %352
  %338 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %303) #24
  %339 = load ptr, ptr @ira_allocnos, align 8, !tbaa !329
  %340 = zext i32 %338 to i64
  %341 = getelementptr inbounds ptr, ptr %339, i64 %340
  %342 = load ptr, ptr %341, align 8, !tbaa !329
  %343 = getelementptr inbounds %struct.ira_allocno, ptr %342, i64 0, i32 9
  %344 = load i32, ptr %343, align 8, !tbaa !379
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %336, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !566
  %348 = icmp eq i8 %347, 0
  %349 = icmp eq i32 %330, %338
  %350 = or i1 %349, %348
  br i1 %350, label %352, label %351, !prof !567

351:                                              ; preds = %337
  tail call void @ira_add_allocno_conflict(ptr noundef nonnull %316, ptr noundef nonnull %342) #24
  br label %352

352:                                              ; preds = %351, %337
  tail call fastcc void @sparseset_iter_next(ptr noundef %303) #24
  %353 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %303) #24, !range !385
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %355, label %337, !prof !568, !llvm.loop !569

355:                                              ; preds = %352, %329, %314, %325
  %356 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %315, i64 0, i32 4
  %357 = load ptr, ptr %356, align 8, !tbaa !329
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %314, !prof !570, !llvm.loop !571

359:                                              ; preds = %355, %307
  %360 = phi ptr [ %309, %307 ], [ %316, %355 ]
  %361 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !329
  %362 = getelementptr inbounds ptr, ptr %361, i64 %308
  %363 = load ptr, ptr %362, align 8, !tbaa !329
  %364 = icmp eq ptr %363, null
  br i1 %364, label %372, label %365, !prof !563

365:                                              ; preds = %359, %365
  %366 = phi ptr [ %370, %365 ], [ %363, %359 ]
  %367 = load ptr, ptr %366, align 8, !tbaa !402
  %368 = load i32, ptr %367, align 8, !tbaa !344
  tail call void @sparseset_clear_bit(ptr noundef %303, i32 noundef %368) #23
  %369 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %366, i64 0, i32 5
  %370 = load ptr, ptr %369, align 8, !tbaa !329
  %371 = icmp eq ptr %370, null
  br i1 %371, label %372, label %365, !prof !570, !llvm.loop !572

372:                                              ; preds = %365, %359
  %373 = add nuw nsw i64 %308, 1
  %374 = load i32, ptr @ira_max_point, align 4, !tbaa !343
  %375 = sext i32 %374 to i64
  %376 = icmp slt i64 %373, %375
  br i1 %376, label %307, label %377, !prof !573, !llvm.loop !574

377:                                              ; preds = %372, %301
  %378 = phi ptr [ %304, %301 ], [ %360, %372 ]
  store ptr %378, ptr %3, align 8, !tbaa !329
  tail call void @free(ptr noundef %303) #24
  tail call fastcc void @compress_conflict_vecs() #24
  br label %379

379:                                              ; preds = %377, %275
  call fastcc void @ira_copy_iter_init(ptr noundef nonnull %6) #24
  %380 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %4) #24, !range !385
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %484, label %382, !prof !518

382:                                              ; preds = %379, %421
  %383 = load ptr, ptr %4, align 8, !tbaa !329
  %384 = getelementptr inbounds %struct.ira_allocno_copy, ptr %383, i64 0, i32 1
  %385 = load ptr, ptr %384, align 8, !tbaa !452
  %386 = getelementptr inbounds %struct.ira_allocno, ptr %385, i64 0, i32 17
  %387 = load ptr, ptr %386, align 8, !tbaa !400
  %388 = icmp eq ptr %387, null
  br i1 %388, label %389, label %395, !prof !575

389:                                              ; preds = %382
  %390 = getelementptr inbounds %struct.ira_allocno_copy, ptr %383, i64 0, i32 2
  %391 = load ptr, ptr %390, align 8, !tbaa !453
  %392 = getelementptr inbounds %struct.ira_allocno, ptr %391, i64 0, i32 17
  %393 = load ptr, ptr %392, align 8, !tbaa !400
  %394 = icmp eq ptr %393, null
  br i1 %394, label %424, label %395, !prof !576

395:                                              ; preds = %389, %382
  %396 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !343
  %397 = icmp sgt i32 %396, 4
  %398 = load ptr, ptr @ira_dump_file, align 8
  %399 = icmp ne ptr %398, null
  %400 = select i1 %397, i1 %399, i1 false
  br i1 %400, label %401, label %419, !prof !577

401:                                              ; preds = %395
  %402 = load i32, ptr %383, align 8, !tbaa !450
  %403 = select i1 %388, i32 97, i32 99
  %404 = load i32, ptr %385, align 8, !tbaa !344
  %405 = getelementptr inbounds %struct.ira_allocno, ptr %385, i64 0, i32 4
  %406 = load ptr, ptr %405, align 8, !tbaa !530
  %407 = tail call fastcc i32 @rhs_regno(ptr noundef %406) #24
  %408 = getelementptr inbounds %struct.ira_allocno_copy, ptr %383, i64 0, i32 2
  %409 = load ptr, ptr %408, align 8, !tbaa !453
  %410 = getelementptr inbounds %struct.ira_allocno, ptr %409, i64 0, i32 17
  %411 = load ptr, ptr %410, align 8, !tbaa !400
  %412 = icmp eq ptr %411, null
  %413 = select i1 %412, i32 97, i32 99
  %414 = load i32, ptr %409, align 8, !tbaa !344
  %415 = getelementptr inbounds %struct.ira_allocno, ptr %409, i64 0, i32 4
  %416 = load ptr, ptr %415, align 8, !tbaa !530
  %417 = tail call fastcc i32 @rhs_regno(ptr noundef %416) #24
  %418 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %398, ptr noundef nonnull @.str.15, i32 noundef %402, i32 noundef %403, i32 noundef %404, i32 noundef %407, i32 noundef %413, i32 noundef %414, i32 noundef %417) #24
  br label %419

419:                                              ; preds = %401, %395
  %420 = getelementptr inbounds %struct.ira_allocno_copy, ptr %383, i64 0, i32 10
  store ptr null, ptr %420, align 8, !tbaa !457
  br label %421

421:                                              ; preds = %469, %477, %471, %419
  %422 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %4) #24, !range !385
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %484, label %382, !prof !578, !llvm.loop !579

424:                                              ; preds = %389
  %425 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !329
  %426 = getelementptr inbounds %struct.ira_allocno, ptr %385, i64 0, i32 4
  %427 = load ptr, ptr %426, align 8, !tbaa !530
  %428 = tail call fastcc i32 @rhs_regno(ptr noundef %427) #24
  %429 = zext i32 %428 to i64
  %430 = getelementptr inbounds ptr, ptr %425, i64 %429
  %431 = load ptr, ptr %430, align 8, !tbaa !329
  %432 = getelementptr inbounds %struct.ira_allocno, ptr %391, i64 0, i32 4
  %433 = load ptr, ptr %432, align 8, !tbaa !530
  %434 = tail call fastcc i32 @rhs_regno(ptr noundef %433) #24
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds ptr, ptr %425, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !329
  %438 = getelementptr inbounds %struct.ira_allocno_copy, ptr %383, i64 0, i32 10
  %439 = load ptr, ptr %438, align 8, !tbaa !457
  %440 = icmp eq ptr %439, null
  br i1 %440, label %469, label %441, !prof !580

441:                                              ; preds = %424
  %442 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %439, i64 0, i32 9
  %443 = load ptr, ptr %442, align 8, !tbaa !340
  %444 = getelementptr inbounds %struct.ira_allocno, ptr %385, i64 0, i32 1
  %445 = load i32, ptr %444, align 4, !tbaa !333
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds ptr, ptr %443, i64 %446
  %448 = load ptr, ptr %447, align 8, !tbaa !329
  %449 = getelementptr inbounds %struct.ira_allocno, ptr %431, i64 0, i32 4
  %450 = load ptr, ptr %449, align 8, !tbaa !530
  %451 = tail call fastcc i32 @rhs_regno(ptr noundef %450) #24
  %452 = getelementptr inbounds %struct.ira_allocno, ptr %448, i64 0, i32 4
  %453 = load ptr, ptr %452, align 8, !tbaa !530
  %454 = tail call fastcc i32 @rhs_regno(ptr noundef %453) #24
  %455 = icmp eq i32 %451, %454
  br i1 %455, label %456, label %471, !prof !581

456:                                              ; preds = %441
  %457 = getelementptr inbounds %struct.ira_allocno, ptr %391, i64 0, i32 1
  %458 = load i32, ptr %457, align 4, !tbaa !333
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds ptr, ptr %443, i64 %459
  %461 = load ptr, ptr %460, align 8, !tbaa !329
  %462 = getelementptr inbounds %struct.ira_allocno, ptr %437, i64 0, i32 4
  %463 = load ptr, ptr %462, align 8, !tbaa !530
  %464 = tail call fastcc i32 @rhs_regno(ptr noundef %463) #24
  %465 = getelementptr inbounds %struct.ira_allocno, ptr %461, i64 0, i32 4
  %466 = load ptr, ptr %465, align 8, !tbaa !530
  %467 = tail call fastcc i32 @rhs_regno(ptr noundef %466) #24
  %468 = icmp eq i32 %464, %467
  br i1 %468, label %469, label %471, !prof !582

469:                                              ; preds = %424, %456
  %470 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !329
  store ptr %470, ptr %438, align 8, !tbaa !457
  store ptr %431, ptr %384, align 8, !tbaa !452
  store ptr %437, ptr %390, align 8, !tbaa !453
  br label %421

471:                                              ; preds = %441, %456
  store ptr null, ptr %438, align 8, !tbaa !457
  %472 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !343
  %473 = icmp sgt i32 %472, 4
  %474 = load ptr, ptr @ira_dump_file, align 8
  %475 = icmp ne ptr %474, null
  %476 = select i1 %473, i1 %475, i1 false
  br i1 %476, label %477, label %421, !prof !583

477:                                              ; preds = %471
  %478 = load i32, ptr %383, align 8, !tbaa !450
  %479 = load i32, ptr %385, align 8, !tbaa !344
  %480 = tail call fastcc i32 @rhs_regno(ptr noundef %427) #24
  %481 = load i32, ptr %391, align 8, !tbaa !344
  %482 = tail call fastcc i32 @rhs_regno(ptr noundef %433) #24
  %483 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %474, ptr noundef nonnull @.str.16, i32 noundef %478, i32 noundef %479, i32 noundef %480, i32 noundef %481, i32 noundef %482) #24
  br label %421

484:                                              ; preds = %421, %379
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #24
  %485 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #24, !range !385
  %486 = icmp eq i8 %485, 0
  br i1 %486, label %531, label %487, !prof !518

487:                                              ; preds = %484, %511
  %488 = load ptr, ptr %3, align 8, !tbaa !329
  %489 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !329
  %490 = getelementptr inbounds %struct.ira_allocno, ptr %488, i64 0, i32 4
  %491 = load ptr, ptr %490, align 8, !tbaa !530
  %492 = tail call fastcc i32 @rhs_regno(ptr noundef %491) #24
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds ptr, ptr %489, i64 %493
  %495 = load ptr, ptr %494, align 8, !tbaa !329
  %496 = icmp eq ptr %488, %495
  br i1 %496, label %497, label %501, !prof !560

497:                                              ; preds = %487
  %498 = getelementptr inbounds %struct.ira_allocno, ptr %488, i64 0, i32 17
  %499 = load ptr, ptr %498, align 8, !tbaa !400
  %500 = icmp eq ptr %499, null
  br i1 %500, label %514, label %501, !prof !561

501:                                              ; preds = %497, %487
  %502 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !343
  %503 = icmp sgt i32 %502, 4
  %504 = load ptr, ptr @ira_dump_file, align 8
  %505 = icmp ne ptr %504, null
  %506 = select i1 %503, i1 %505, i1 false
  br i1 %506, label %507, label %510, !prof !584

507:                                              ; preds = %501
  %508 = load i32, ptr %488, align 8, !tbaa !344
  %509 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %504, ptr noundef nonnull @.str.17, i32 noundef %508, i32 noundef %492) #24
  br label %510

510:                                              ; preds = %507, %501
  tail call fastcc void @finish_allocno(ptr noundef nonnull %488) #24
  br label %511

511:                                              ; preds = %514, %530, %510
  %512 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %3) #24, !range !385
  %513 = icmp eq i8 %512, 0
  br i1 %513, label %531, label %487, !prof !521, !llvm.loop !585

514:                                              ; preds = %497
  %515 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !329
  %516 = getelementptr inbounds %struct.ira_allocno, ptr %488, i64 0, i32 6
  store ptr %515, ptr %516, align 8, !tbaa !337
  %517 = tail call fastcc i32 @rhs_regno(ptr noundef %491) #24
  %518 = getelementptr inbounds %struct.ira_allocno, ptr %488, i64 0, i32 1
  store i32 %517, ptr %518, align 4, !tbaa !333
  %519 = getelementptr inbounds %struct.ira_allocno, ptr %488, i64 0, i32 16
  store ptr null, ptr %519, align 8, !tbaa !525
  %520 = getelementptr inbounds %struct.ira_allocno, ptr %488, i64 0, i32 12
  %521 = load i32, ptr %520, align 4, !tbaa !548
  %522 = getelementptr inbounds %struct.ira_allocno, ptr %488, i64 0, i32 13
  store i32 %521, ptr %522, align 8, !tbaa !586
  %523 = getelementptr inbounds %struct.ira_allocno, ptr %488, i64 0, i32 10
  %524 = load i32, ptr %523, align 4, !tbaa !547
  %525 = getelementptr inbounds %struct.ira_allocno, ptr %488, i64 0, i32 11
  store i32 %524, ptr %525, align 8, !tbaa !587
  %526 = getelementptr inbounds %struct.ira_allocno, ptr %488, i64 0, i32 31
  %527 = load i16, ptr %526, align 4
  %528 = and i16 %527, 256
  %529 = icmp eq i16 %528, 0
  br i1 %529, label %530, label %511, !prof !588

530:                                              ; preds = %514
  tail call void @ira_free_allocno_updated_costs(ptr noundef nonnull %488) #24
  br label %511

531:                                              ; preds = %511, %484
  call fastcc void @ira_copy_iter_init(ptr noundef nonnull %6) #24
  %532 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %4) #24, !range !385
  %533 = icmp eq i8 %532, 0
  br i1 %533, label %548, label %534, !prof !518

534:                                              ; preds = %531, %544
  %535 = load ptr, ptr %4, align 8, !tbaa !329
  %536 = getelementptr inbounds %struct.ira_allocno_copy, ptr %535, i64 0, i32 10
  %537 = load ptr, ptr %536, align 8, !tbaa !457
  %538 = icmp eq ptr %537, null
  br i1 %538, label %539, label %547, !prof !589

539:                                              ; preds = %534
  %540 = load ptr, ptr @ira_copies, align 8, !tbaa !329
  %541 = load i32, ptr %535, align 8, !tbaa !450
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds ptr, ptr %540, i64 %542
  store ptr null, ptr %543, align 8, !tbaa !329
  tail call fastcc void @finish_copy(ptr noundef nonnull %535) #24
  br label %544

544:                                              ; preds = %539, %547
  %545 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %4) #24, !range !385
  %546 = icmp eq i8 %545, 0
  br i1 %546, label %548, label %534, !prof !578, !llvm.loop !590

547:                                              ; preds = %534
  tail call void @ira_add_allocno_copy_to_list(ptr noundef nonnull %535) #24
  tail call void @ira_swap_allocno_copy_ends_if_necessary(ptr noundef nonnull %535) #24
  br label %544

548:                                              ; preds = %544, %531
  tail call fastcc void @rebuild_regno_allocno_maps() #24
  %549 = load i32, ptr @ira_max_point, align 4, !tbaa !343
  %550 = icmp eq i32 %549, %1
  br i1 %550, label %552, label %551, !prof !559

551:                                              ; preds = %548
  tail call void @ira_compress_allocno_live_ranges() #23
  br label %552

552:                                              ; preds = %551, %548
  %553 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !329
  tail call void @ira_free(ptr noundef %553) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #13 !prof !591 !PGOFuncName !592 {
  store i32 0, ptr %0, align 4, !tbaa !494
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #14 !prof !593 !PGOFuncName !594 {
  %3 = load i32, ptr %0, align 4, !tbaa !494
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !343
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !595

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !329
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !329
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !596

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !329
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !494
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !597, !llvm.loop !598

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !599 !PGOFuncName !600 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !566
  ret i32 %3
}

; Function Attrs: optsize
declare void @ira_print_live_range_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @change_allocno_in_range_list(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !prof !601 !PGOFuncName !602 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4, !prof !603

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %2 ]
  store ptr %1, ptr %5, align 8, !tbaa !402
  %6 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !406
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !604, !llvm.loop !605

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @copy_info_to_removed_store_destinations(i32 noundef %0) unnamed_addr #0 !prof !606 !PGOFuncName !607 {
  %2 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !329
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !329
  %6 = icmp eq ptr %5, null
  br i1 %6, label %102, label %7, !prof !608

7:                                                ; preds = %1
  %8 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !329
  br label %9

9:                                                ; preds = %7, %96
  %10 = phi ptr [ %97, %96 ], [ %8, %7 ]
  %11 = phi ptr [ %100, %96 ], [ %5, %7 ]
  %12 = phi i8 [ %98, %96 ], [ 0, %7 ]
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !530
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef %14) #24
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %10, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !329
  %19 = icmp eq ptr %11, %18
  br i1 %19, label %20, label %96, !prof !609

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !337
  %23 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !527
  %25 = icmp eq ptr %24, null
  br i1 %25, label %96, label %26, !prof !610

26:                                               ; preds = %20, %46
  %27 = phi ptr [ %48, %46 ], [ %24, %20 ]
  %28 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %27, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !340
  %30 = getelementptr inbounds ptr, ptr %29, i64 %3
  %31 = load ptr, ptr %30, align 8, !tbaa !329
  %32 = icmp eq ptr %31, null
  br i1 %32, label %96, label %33, !prof !611

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !530
  %36 = tail call fastcc i32 @rhs_regno(ptr noundef %35) #24
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %10, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !329
  %40 = icmp eq ptr %31, %39
  br i1 %40, label %41, label %46, !prof !612

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 31
  %43 = load i16, ptr %42, align 4
  %44 = and i16 %43, 1
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %50, !prof !613

46:                                               ; preds = %33, %41
  %47 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %27, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !527
  %49 = icmp eq ptr %48, null
  br i1 %49, label %96, label %26, !prof !614, !llvm.loop !615

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 31
  %52 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !343
  %53 = icmp sgt i32 %52, 4
  %54 = load ptr, ptr @ira_dump_file, align 8
  %55 = icmp ne ptr %54, null
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %65, !prof !616

57:                                               ; preds = %50
  %58 = load i32, ptr %11, align 8, !tbaa !344
  %59 = load i32, ptr %31, align 8, !tbaa !344
  %60 = tail call fastcc i32 @rhs_regno(ptr noundef %35) #24
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %54, ptr noundef nonnull @.str.18, i32 noundef %58, i32 noundef %15, i32 noundef %59, i32 noundef %60) #24
  %62 = load ptr, ptr @ira_dump_file, align 8, !tbaa !329
  %63 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 20
  %64 = load ptr, ptr %63, align 8, !tbaa !363
  tail call void @ira_print_live_range_list(ptr noundef %62, ptr noundef %64) #23
  br label %65

65:                                               ; preds = %57, %50
  %66 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 20
  %67 = load ptr, ptr %66, align 8, !tbaa !363
  %68 = tail call ptr @ira_copy_allocno_live_range_list(ptr noundef %67) #24
  tail call fastcc void @change_allocno_in_range_list(ptr noundef %68, ptr noundef nonnull %31) #24
  %69 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 20
  %70 = load ptr, ptr %69, align 8, !tbaa !363
  %71 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %68, ptr noundef %70) #24
  store ptr %71, ptr %69, align 8, !tbaa !363
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 27
  %73 = load i64, ptr %72, align 8, !tbaa !350
  %74 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 27
  %75 = load i64, ptr %74, align 8, !tbaa !350
  %76 = or i64 %75, %73
  store i64 %76, ptr %74, align 8, !tbaa !350
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 31
  %78 = load i16, ptr %77, align 4
  %79 = and i16 %78, 32
  %80 = icmp eq i16 %79, 0
  %81 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !329
  br i1 %80, label %85, label %82, !prof !617

82:                                               ; preds = %65
  %83 = load i16, ptr %51, align 4
  %84 = or i16 %83, 32
  store i16 %84, ptr %51, align 4
  br label %85

85:                                               ; preds = %82, %65
  %86 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 29
  %87 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 29
  %88 = load <2 x i32>, ptr %86, align 4, !tbaa !343
  %89 = load <2 x i32>, ptr %87, align 4, !tbaa !343
  %90 = add nsw <2 x i32> %89, %88
  store <2 x i32> %90, ptr %87, align 4, !tbaa !343
  %91 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 14
  %92 = load i32, ptr %91, align 4, !tbaa !538
  %93 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 14
  %94 = load i32, ptr %93, align 4, !tbaa !538
  %95 = add nsw i32 %94, %92
  store i32 %95, ptr %93, align 4, !tbaa !538
  br label %96

96:                                               ; preds = %46, %26, %20, %9, %85
  %97 = phi ptr [ %10, %9 ], [ %81, %85 ], [ %10, %20 ], [ %10, %26 ], [ %10, %46 ]
  %98 = phi i8 [ %12, %9 ], [ 1, %85 ], [ %12, %20 ], [ %12, %26 ], [ %12, %46 ]
  %99 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !329
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %9, !prof !618, !llvm.loop !619

102:                                              ; preds = %96, %1
  %103 = phi i8 [ 0, %1 ], [ %98, %96 ]
  ret i8 %103
}

; Function Attrs: optsize
declare void @ira_rebuild_start_finish_chains() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clear_allocno_conflicts(ptr nocapture noundef %0) unnamed_addr #16 !prof !620 !PGOFuncName !621 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 2048
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %10, label %6, !prof !622

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  store i32 0, ptr %7, align 8, !tbaa !347
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !346
  store ptr null, ptr %9, align 8, !tbaa !329
  br label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  %12 = load i32, ptr %11, align 4, !tbaa !383
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14, !prof !623

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %16 = load i32, ptr %15, align 4, !tbaa !365
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %18 = load i32, ptr %17, align 8, !tbaa !364
  %19 = sub nsw i32 %16, %18
  %20 = sdiv i32 %19, 64
  %21 = add nsw i32 %20, 1
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !346
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
define internal fastcc void @sparseset_set_bit(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !624 !PGOFuncName !625 {
  %3 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %0, i32 noundef %1) #24, !range !385
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9, !prof !564

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !626
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !626
  tail call fastcc void @sparseset_insert_bit(ptr noundef %0, i32 noundef %1, i32 noundef %7) #24
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sparseset_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #13 !prof !624 !PGOFuncName !628 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 8, !tbaa !629
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  store i8 1, ptr %3, align 4, !tbaa !630
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 1, ptr %4, align 1, !tbaa !631
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @sparseset_iter_p(ptr nocapture noundef %0) unnamed_addr #5 !prof !632 !PGOFuncName !633 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !631
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5, !prof !634

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !629
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !626
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11, !prof !635

11:                                               ; preds = %5, %1
  store i8 0, ptr %2, align 1, !tbaa !631
  br label %12

12:                                               ; preds = %5, %11
  %13 = phi i8 [ 0, %11 ], [ 1, %5 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @sparseset_iter_elm(ptr nocapture noundef readonly %0) unnamed_addr #17 !prof !636 !PGOFuncName !637 {
  %2 = load ptr, ptr %0, align 8, !tbaa !638
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !629
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !343
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sparseset_iter_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !636 !PGOFuncName !639 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 4, !tbaa !630
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !629
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 8, !tbaa !629
  store i8 1, ptr %2, align 4, !tbaa !630
  ret void
}

; Function Attrs: optsize
declare void @sparseset_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compress_conflict_vecs() unnamed_addr #0 !prof !517 !PGOFuncName !640 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !343
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #23
  store ptr %6, ptr @allocno_conflict_check, align 8, !tbaa !329
  %7 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !343
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %9, i1 false)
  store i32 0, ptr @curr_allocno_conflict_check_tick, align 4, !tbaa !343
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %10 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12, !prof !518

12:                                               ; preds = %0, %19
  %13 = load ptr, ptr %1, align 8, !tbaa !329
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 31
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 2048
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %19, label %18, !prof !641

18:                                               ; preds = %12
  tail call fastcc void @compress_allocno_conflict_vec(ptr noundef nonnull %13) #24
  br label %19

19:                                               ; preds = %18, %12
  %20 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %12, !prof !521, !llvm.loop !642

22:                                               ; preds = %19
  %23 = load ptr, ptr @allocno_conflict_check, align 8, !tbaa !329
  br label %24

24:                                               ; preds = %22, %0
  %25 = phi ptr [ %23, %22 ], [ %6, %0 ]
  tail call void @ira_free(ptr noundef %25) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_allocno(ptr noundef %0) unnamed_addr #0 !prof !328 !PGOFuncName !643 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !379
  %4 = load ptr, ptr @ira_allocnos, align 8, !tbaa !329
  %5 = load i32, ptr %0, align 8, !tbaa !344
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  store ptr null, ptr %7, align 8, !tbaa !329
  %8 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !329
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 24
  %10 = load i32, ptr %9, align 8, !tbaa !366
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  store ptr null, ptr %12, align 8, !tbaa !329
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !346
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !644

16:                                               ; preds = %1
  tail call void @ira_free(ptr noundef nonnull %14) #23
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 33
  %19 = load ptr, ptr %18, align 8, !tbaa !533
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !645

21:                                               ; preds = %17
  tail call void @ira_free_cost_vector(ptr noundef nonnull %19, i32 noundef %3) #24
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 35
  %24 = load ptr, ptr %23, align 8, !tbaa !534
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !646

26:                                               ; preds = %22
  tail call void @ira_free_cost_vector(ptr noundef nonnull %24, i32 noundef %3) #24
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 34
  %29 = load ptr, ptr %28, align 8, !tbaa !444
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !647

31:                                               ; preds = %27
  tail call void @ira_free_cost_vector(ptr noundef nonnull %29, i32 noundef %3) #24
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 36
  %34 = load ptr, ptr %33, align 8, !tbaa !446
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !647

36:                                               ; preds = %32
  tail call void @ira_free_cost_vector(ptr noundef nonnull %34, i32 noundef %3) #24
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 20
  %39 = load ptr, ptr %38, align 8, !tbaa !363
  tail call void @ira_finish_allocno_live_range_list(ptr noundef %39) #24
  %40 = load ptr, ptr @allocno_pool, align 8, !tbaa !329
  tail call void @pool_free(ptr noundef %40, ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_copy(ptr noundef %0) unnamed_addr #0 !prof !449 !PGOFuncName !648 {
  %2 = load ptr, ptr @copy_pool, align 8, !tbaa !329
  tail call void @pool_free(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rebuild_regno_allocno_maps() unnamed_addr #0 !prof !517 !PGOFuncName !649 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  %4 = tail call i32 @max_reg_num() #23
  %5 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %6 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #24, !range !650
  %7 = icmp eq i32 %6, 0
  %8 = sext i32 %4 to i64
  %9 = shl nsw i64 %8, 3
  br i1 %7, label %35, label %10, !prof !518

10:                                               ; preds = %0
  %11 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  br label %12

12:                                               ; preds = %10, %29
  %13 = phi ptr [ %5, %10 ], [ %30, %29 ]
  %14 = phi ptr [ %11, %10 ], [ %31, %29 ]
  %15 = phi i32 [ 0, %10 ], [ %32, %29 ]
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %14, i64 %16, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !340
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20, !prof !651

20:                                               ; preds = %12
  tail call void @ira_free(ptr noundef nonnull %18) #23
  %21 = tail call ptr @ira_allocate(i64 noundef %9) #23
  %22 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %23 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %22, i64 %16, i32 9
  store ptr %21, ptr %23, align 8, !tbaa !340
  %24 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %25 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %24, i64 %16, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !340
  tail call void @llvm.memset.p0.i64(ptr align 8 %26, i8 0, i64 %9, i1 false)
  %27 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %28 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  br label %29

29:                                               ; preds = %12, %20
  %30 = phi ptr [ %13, %12 ], [ %28, %20 ]
  %31 = phi ptr [ %14, %12 ], [ %27, %20 ]
  %32 = add i32 %15, 1
  %33 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %30, i32 noundef %32, ptr noundef nonnull %2) #24, !range !650
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %12, !prof !652, !llvm.loop !653

35:                                               ; preds = %29, %0
  %36 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !329
  tail call void @ira_free(ptr noundef %36) #23
  %37 = tail call ptr @ira_allocate(i64 noundef %9) #23
  store ptr %37, ptr @ira_regno_allocno_map, align 8, !tbaa !329
  tail call void @llvm.memset.p0.i64(ptr align 8 %37, i8 0, i64 %9, i1 false)
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #24
  %38 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %1) #24, !range !385
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %64, label %40, !prof !518

40:                                               ; preds = %35, %61
  %41 = load ptr, ptr %1, align 8, !tbaa !329
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !400
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %61, !prof !561

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !333
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !337
  %50 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !329
  %51 = sext i32 %47 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !329
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 5
  store ptr %53, ptr %54, align 8, !tbaa !339
  store ptr %41, ptr %52, align 8, !tbaa !329
  %55 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %49, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !340
  %57 = getelementptr inbounds ptr, ptr %56, i64 %51
  %58 = load ptr, ptr %57, align 8, !tbaa !329
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61, !prof !561

60:                                               ; preds = %45
  store ptr %41, ptr %57, align 8, !tbaa !329
  br label %61

61:                                               ; preds = %45, %60, %40
  %62 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %1) #24, !range !385
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %40, !prof !654, !llvm.loop !655

64:                                               ; preds = %61, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: optsize
declare void @ira_compress_allocno_live_ranges() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sparseset_bit_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !624 !PGOFuncName !656 {
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !657
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %7, label %6, !prof !564

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 85, ptr noundef nonnull @.str.6) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !658
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !343
  %13 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !626
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %23, !prof !659

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 8, !tbaa !638
  %18 = zext i32 %12 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !343
  %21 = icmp eq i32 %20, %1
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %16, %7
  %24 = phi i8 [ 0, %7 ], [ %22, %16 ]
  ret i8 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sparseset_insert_bit(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #16 !prof !624 !PGOFuncName !660 {
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !658
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  store i32 %2, ptr %7, align 4, !tbaa !343
  %8 = load ptr, ptr %0, align 8, !tbaa !638
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  store i32 %1, ptr %10, align 4, !tbaa !343
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compress_allocno_conflict_vec(ptr nocapture noundef %0) unnamed_addr #15 !prof !661 !PGOFuncName !662 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8, !tbaa !346
  %4 = load i32, ptr @curr_allocno_conflict_check_tick, align 4, !tbaa !343
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @curr_allocno_conflict_check_tick, align 4, !tbaa !343
  %6 = load ptr, ptr %3, align 8, !tbaa !329
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8, !prof !663

8:                                                ; preds = %1
  %9 = load ptr, ptr @allocno_conflict_check, align 8, !tbaa !329
  br label %10

10:                                               ; preds = %8, %23
  %11 = phi i64 [ 0, %8 ], [ %25, %23 ]
  %12 = phi ptr [ %6, %8 ], [ %27, %23 ]
  %13 = phi i32 [ 0, %8 ], [ %24, %23 ]
  %14 = load i32, ptr %12, align 8, !tbaa !344
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %9, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !343
  %18 = icmp eq i32 %17, %5
  br i1 %18, label %23, label %19, !prof !664

19:                                               ; preds = %10
  store i32 %5, ptr %16, align 4, !tbaa !343
  %20 = add nsw i32 %13, 1
  %21 = sext i32 %13 to i64
  %22 = getelementptr inbounds ptr, ptr %3, i64 %21
  store ptr %12, ptr %22, align 8, !tbaa !329
  br label %23

23:                                               ; preds = %10, %19
  %24 = phi i32 [ %20, %19 ], [ %13, %10 ]
  %25 = add nuw nsw i64 %11, 1
  %26 = getelementptr inbounds ptr, ptr %3, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !329
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10, !prof !665, !llvm.loop !666

29:                                               ; preds = %23, %1
  %30 = phi i32 [ 0, %1 ], [ %24, %23 ]
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  store i32 %30, ptr %31, align 8, !tbaa !347
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds ptr, ptr %3, i64 %32
  store ptr null, ptr %33, align 8, !tbaa !329
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !667 !PGOFuncName !668 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !669

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !670
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !672

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !329
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !329
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ira_build(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !673 {
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
  %6 = tail call fastcc zeroext i8 @more_one_region_p() #24, !range !385
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !674

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
  %10 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !566
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %34, !prof !675

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  br i1 %7, label %14, label %13

13:                                               ; preds = %12
  tail call fastcc void @remove_unnecessary_regions(i8 noundef zeroext 1) #24
  br label %14

14:                                               ; preds = %13, %12
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #24
  %15 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !385
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  %18 = load i64, ptr @call_used_reg_set, align 8
  %19 = insertelement <2 x i64> poison, i64 %18, i64 0
  %20 = shufflevector <2 x i64> %19, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %21

21:                                               ; preds = %17, %30
  %22 = load ptr, ptr %2, align 8, !tbaa !329
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 30
  %24 = load i32, ptr %23, align 8, !tbaa !355
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 26
  %28 = load <2 x i64>, ptr %27, align 8, !tbaa !348
  %29 = or <2 x i64> %28, %20
  store <2 x i64> %29, ptr %27, align 8, !tbaa !348
  br label %30

30:                                               ; preds = %26, %21
  %31 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !385
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %21, !llvm.loop !676

33:                                               ; preds = %30, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  br label %34

34:                                               ; preds = %33, %9
  %35 = phi i8 [ %6, %9 ], [ 0, %33 ]
  %36 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !343
  %37 = icmp sgt i32 %36, 2
  %38 = load ptr, ptr @ira_dump_file, align 8
  %39 = icmp ne ptr %38, null
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %44, !prof !677

41:                                               ; preds = %34
  tail call fastcc void @print_copies(ptr noundef nonnull %38) #24
  %42 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !343
  %43 = load ptr, ptr @ira_dump_file, align 8
  br label %44

44:                                               ; preds = %41, %34
  %45 = phi ptr [ %43, %41 ], [ %38, %34 ]
  %46 = phi i32 [ %42, %41 ], [ %36, %34 ]
  %47 = icmp sgt i32 %46, 0
  %48 = icmp ne ptr %45, null
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %97, !prof !677

50:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #24
  %51 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !385
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50, %53
  %54 = phi i32 [ %58, %53 ], [ 0, %50 ]
  %55 = load ptr, ptr %4, align 8, !tbaa !329
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %55, i64 0, i32 28
  %57 = load i32, ptr %56, align 8, !tbaa !347
  %58 = add nsw i32 %57, %54
  %59 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !385
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %53, !llvm.loop !678

61:                                               ; preds = %53, %50
  %62 = phi i32 [ 0, %50 ], [ %58, %53 ]
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #24
  %63 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !385
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %82, label %69

65:                                               ; preds = %75, %69
  %66 = phi i32 [ %70, %69 ], [ %78, %75 ]
  %67 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !385
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %82, label %69, !llvm.loop !679

69:                                               ; preds = %61, %65
  %70 = phi i32 [ %66, %65 ], [ 0, %61 ]
  %71 = load ptr, ptr %4, align 8, !tbaa !329
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %71, i64 0, i32 20
  %73 = load ptr, ptr %72, align 8, !tbaa !329
  %74 = icmp eq ptr %73, null
  br i1 %74, label %65, label %75

75:                                               ; preds = %69, %75
  %76 = phi ptr [ %80, %75 ], [ %73, %69 ]
  %77 = phi i32 [ %78, %75 ], [ %70, %69 ]
  %78 = add nsw i32 %77, 1
  %79 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %76, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !329
  %81 = icmp eq ptr %80, null
  br i1 %81, label %65, label %75, !llvm.loop !680

82:                                               ; preds = %65, %61
  %83 = phi i32 [ 0, %61 ], [ %66, %65 ]
  %84 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %85 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %84) #24
  %86 = load ptr, ptr @cfun, align 8, !tbaa !329
  %87 = getelementptr inbounds %struct.function, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !681
  %89 = getelementptr inbounds %struct.control_flow_graph, ptr %88, i64 0, i32 3
  %90 = load i32, ptr %89, align 8, !tbaa !683
  %91 = load i32, ptr @ira_max_point, align 4, !tbaa !343
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %45, ptr noundef nonnull @.str.20, i32 noundef %85, i32 noundef %90, i32 noundef %91) #24
  %93 = load ptr, ptr @ira_dump_file, align 8, !tbaa !329
  %94 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !343
  %95 = load i32, ptr @ira_copies_num, align 4, !tbaa !343
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.21, i32 noundef %94, i32 noundef %95, i32 noundef %62, i32 noundef %83) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %97

97:                                               ; preds = %82, %44
  ret i8 %35
}

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initiate_cost_vectors() unnamed_addr #0 !prof !673 !PGOFuncName !685 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !343
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %18, !prof !686

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %14, %3 ], [ 0, %0 ]
  %5 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !343
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !343
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.22, i64 noundef %11, i64 noundef 100) #23
  %13 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %7
  store ptr %12, ptr %13, align 8, !tbaa !329
  %14 = add nuw nsw i64 %4, 1
  %15 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !343
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %3, label %18, !prof !687, !llvm.loop !688

18:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initiate_allocnos() unnamed_addr #0 !prof !673 !PGOFuncName !689 {
  %1 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.23, i64 noundef 40, i64 noundef 100) #23
  store ptr %1, ptr @allocno_live_range_pool, align 8, !tbaa !329
  %2 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.24, i64 noundef 248, i64 noundef 100) #23
  store ptr %2, ptr @allocno_pool, align 8, !tbaa !329
  %3 = tail call i32 @max_reg_num() #23
  %4 = shl nsw i32 %3, 1
  %5 = tail call fastcc ptr @VEC_ira_allocno_t_heap_alloc(i32 noundef %4) #24
  store ptr %5, ptr @allocno_vec, align 8, !tbaa !329
  store ptr null, ptr @ira_allocnos, align 8, !tbaa !329
  store i32 0, ptr @ira_allocnos_num, align 4, !tbaa !343
  %6 = tail call i32 @max_reg_num() #23
  %7 = shl nsw i32 %6, 1
  %8 = tail call fastcc ptr @VEC_ira_allocno_t_heap_alloc(i32 noundef %7) #24
  store ptr %8, ptr @ira_conflict_id_allocno_map_vec, align 8, !tbaa !329
  store ptr null, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !329
  %9 = tail call i32 @max_reg_num() #23
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call ptr @ira_allocate(i64 noundef %11) #23
  store ptr %12, ptr @ira_regno_allocno_map, align 8, !tbaa !329
  %13 = tail call i32 @max_reg_num() #23
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %15, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initiate_copies() unnamed_addr #0 !prof !673 !PGOFuncName !690 {
  %1 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.25, i64 noundef 80, i64 noundef 100) #23
  store ptr %1, ptr @copy_pool, align 8, !tbaa !329
  %2 = tail call i32 @get_max_uid() #23
  %3 = tail call fastcc ptr @VEC_ira_copy_t_heap_alloc(i32 noundef %2) #24
  store ptr %3, ptr @copy_vec, align 8, !tbaa !329
  store ptr null, ptr @ira_copies, align 8, !tbaa !329
  store i32 0, ptr @ira_copies_num, align 4, !tbaa !343
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_loop_tree_nodes(i8 noundef zeroext %0) unnamed_addr #0 !prof !673 !PGOFuncName !691 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %6 = load ptr, ptr @cfun, align 8, !tbaa !329
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !681
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !692
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 216
  %13 = tail call ptr @ira_allocate(i64 noundef %12) #23
  store ptr %13, ptr @ira_bb_nodes, align 8, !tbaa !329
  %14 = load ptr, ptr @cfun, align 8, !tbaa !329
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !681
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !692
  store i32 %18, ptr @last_basic_block_before_change, align 4, !tbaa !343
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %39, label %20, !prof !693

20:                                               ; preds = %1, %20
  %21 = phi i64 [ %31, %20 ], [ 0, %1 ]
  %22 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !329
  %23 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %22, i64 %21, i32 9
  store ptr null, ptr %23, align 8, !tbaa !340
  %24 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !329
  %25 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %24, i64 %21, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %25, i8 0, i64 116, i1 false)
  %26 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %24, i64 %21, i32 14
  store ptr null, ptr %26, align 8, !tbaa !694
  %27 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !329
  %28 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %27, i64 %21, i32 13
  store ptr null, ptr %28, align 8, !tbaa !695
  %29 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !329
  %30 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %29, i64 %21, i32 15
  store ptr null, ptr %30, align 8, !tbaa !696
  %31 = add nuw nsw i64 %21, 1
  %32 = load ptr, ptr @cfun, align 8, !tbaa !329
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !681
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !692
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %31, %37
  br i1 %38, label %20, label %39, !prof !697, !llvm.loop !698

39:                                               ; preds = %20, %1
  %40 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %41 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %40) #24
  %42 = zext i32 %41 to i64
  %43 = mul nuw nsw i64 %42, 216
  %44 = tail call ptr @ira_allocate(i64 noundef %43) #23
  store ptr %44, ptr @ira_loop_nodes, align 8, !tbaa !329
  %45 = tail call i32 @max_reg_num() #23
  %46 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %47 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %46, i32 noundef 0, ptr noundef nonnull %5) #24, !range !650
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %155, label %49, !prof !693

49:                                               ; preds = %39
  %50 = icmp eq i8 %0, 0
  %51 = getelementptr inbounds i8, ptr %2, i64 8
  %52 = sext i32 %45 to i64
  %53 = shl nsw i64 %52, 3
  br label %54

54:                                               ; preds = %49, %150
  %55 = phi i32 [ 0, %49 ], [ %151, %150 ]
  %56 = load ptr, ptr %5, align 8, !tbaa !329
  %57 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 3), align 8, !tbaa !699
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %61, !prof !701

59:                                               ; preds = %54
  %60 = zext i32 %55 to i64
  br label %128

61:                                               ; preds = %54
  %62 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %63 = zext i32 %55 to i64
  %64 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %62, i64 %63, i32 9
  store ptr null, ptr %64, align 8, !tbaa !340
  br i1 %50, label %150, label %65, !prof !702

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.loop, ptr %56, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !703
  %68 = tail call fastcc ptr @ei_start_1(ptr noundef %67) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !707
  store ptr %68, ptr %51, align 8, !tbaa.struct !708
  %69 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %68, ptr noundef nonnull %3) #24, !range !385
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %99, label %71, !prof !709

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.loop, ptr %56, i64 0, i32 3
  br label %73

73:                                               ; preds = %71, %94
  %74 = load ptr, ptr %3, align 8, !tbaa !329
  %75 = load ptr, ptr %74, align 8, !tbaa !710
  %76 = load ptr, ptr %72, align 8, !tbaa !712
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %94, label %78, !prof !713

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.edge_def, ptr %74, i64 0, i32 7
  %80 = load i32, ptr %79, align 8, !tbaa !714
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %94, label %83, !prof !715

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !716
  %86 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %85) #24
  %87 = icmp ugt i32 %86, 1
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.edge_def, ptr %74, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !718
  %91 = load ptr, ptr %90, align 8, !tbaa !719
  %92 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %91) #24
  %93 = icmp ugt i32 %92, 1
  br i1 %93, label %150, label %94

94:                                               ; preds = %73, %78, %83, %88
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %95 = load i32, ptr %2, align 8
  %96 = load ptr, ptr %51, align 8
  %97 = call fastcc zeroext i8 @ei_cond(i32 %95, ptr %96, ptr noundef nonnull %3) #24, !range !385
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %73, !prof !720, !llvm.loop !721

99:                                               ; preds = %94, %65
  %100 = tail call ptr @get_loop_exit_edges(ptr noundef nonnull %56) #23
  store ptr %100, ptr %4, align 8, !tbaa !329
  %101 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %100, i32 noundef 0, ptr noundef nonnull %3) #24, !range !650
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %127, label %103, !prof !709

103:                                              ; preds = %99, %122
  %104 = phi i32 [ %123, %122 ], [ 0, %99 ]
  %105 = load ptr, ptr %3, align 8, !tbaa !329
  %106 = getelementptr inbounds %struct.edge_def, ptr %105, i64 0, i32 7
  %107 = load i32, ptr %106, align 8, !tbaa !714
  %108 = and i32 %107, 2
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %122, label %110, !prof !722

110:                                              ; preds = %103
  %111 = load ptr, ptr %105, align 8, !tbaa !710
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !716
  %114 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %113) #24
  %115 = icmp ugt i32 %114, 1
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.edge_def, ptr %105, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !718
  %119 = load ptr, ptr %118, align 8, !tbaa !719
  %120 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %119) #24
  %121 = icmp ugt i32 %120, 1
  br i1 %121, label %126, label %122

122:                                              ; preds = %103, %110, %116
  %123 = add i32 %104, 1
  %124 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %100, i32 noundef %123, ptr noundef nonnull %3) #24, !range !650
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %103, !prof !723, !llvm.loop !724

126:                                              ; preds = %116
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %4) #24
  br label %150

127:                                              ; preds = %122, %99
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %4) #24
  br label %128

128:                                              ; preds = %59, %127
  %129 = phi i64 [ %60, %59 ], [ %63, %127 ]
  %130 = tail call ptr @ira_allocate(i64 noundef %53) #23
  %131 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %132 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %131, i64 %129, i32 9
  store ptr %130, ptr %132, align 8, !tbaa !340
  %133 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %134 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %133, i64 %129, i32 9
  %135 = load ptr, ptr %134, align 8, !tbaa !340
  tail call void @llvm.memset.p0.i64(ptr align 8 %135, i8 0, i64 %53, i1 false)
  %136 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %137 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %136, i64 %129, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(108) %137, i8 0, i64 108, i1 false)
  %138 = tail call ptr @ira_allocate_bitmap() #23
  %139 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %140 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %139, i64 %129, i32 12
  store ptr %138, ptr %140, align 8, !tbaa !345
  %141 = tail call ptr @ira_allocate_bitmap() #23
  %142 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %143 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %142, i64 %129, i32 14
  store ptr %141, ptr %143, align 8, !tbaa !694
  %144 = tail call ptr @ira_allocate_bitmap() #23
  %145 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %146 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %145, i64 %129, i32 13
  store ptr %144, ptr %146, align 8, !tbaa !695
  %147 = tail call ptr @ira_allocate_bitmap() #23
  %148 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %149 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %148, i64 %129, i32 15
  store ptr %147, ptr %149, align 8, !tbaa !696
  br label %150

150:                                              ; preds = %88, %126, %61, %128
  %151 = add i32 %55, 1
  %152 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %153 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %152, i32 noundef %151, ptr noundef nonnull %5) #24, !range !650
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %54, !prof !725, !llvm.loop !726

155:                                              ; preds = %150, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @form_loop_tree() unnamed_addr #19 !prof !673 !PGOFuncName !727 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %3 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #24, !range !650
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %27, label %5, !prof !693

5:                                                ; preds = %0
  %6 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  br label %7

7:                                                ; preds = %5, %21
  %8 = phi ptr [ %22, %21 ], [ %2, %5 ]
  %9 = phi ptr [ %23, %21 ], [ %6, %5 ]
  %10 = phi i32 [ %24, %21 ], [ 0, %5 ]
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %9, i64 %11, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !340
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !728

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %9, i64 %11, i32 5
  store ptr null, ptr %16, align 8, !tbaa !729
  %17 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %18 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %17, i64 %11, i32 4
  store ptr null, ptr %18, align 8, !tbaa !730
  %19 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %20 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  br label %21

21:                                               ; preds = %7, %15
  %22 = phi ptr [ %8, %7 ], [ %20, %15 ]
  %23 = phi ptr [ %9, %7 ], [ %19, %15 ]
  %24 = add i32 %10, 1
  %25 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %1) #24, !range !650
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %7, !prof !725, !llvm.loop !731

27:                                               ; preds = %21, %0
  %28 = load ptr, ptr @cfun, align 8, !tbaa !329
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !681
  %31 = load ptr, ptr %30, align 8, !tbaa !732
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !733
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !734
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %78, label %37, !prof !693

37:                                               ; preds = %27, %61
  %38 = phi ptr [ %71, %61 ], [ %33, %27 ]
  %39 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !329
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !735
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %39, i64 %42
  store ptr %38, ptr %43, align 8, !tbaa !398
  %44 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %39, i64 %42, i32 1
  %45 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %39, i64 %42, i32 3
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %44, i8 0, i64 40, i1 false)
  %47 = load ptr, ptr %46, align 8, !tbaa !736
  %48 = icmp eq ptr %47, null
  br i1 %48, label %61, label %49, !prof !737

49:                                               ; preds = %37
  %50 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  br label %51

51:                                               ; preds = %49, %58
  %52 = phi ptr [ %47, %49 ], [ %59, %58 ]
  %53 = load i32, ptr %52, align 8, !tbaa !738
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %50, i64 %54, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !340
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61, !prof !739

58:                                               ; preds = %51
  %59 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %52) #24
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %51, !prof !740, !llvm.loop !741

61:                                               ; preds = %58, %51, %37
  %62 = phi ptr [ null, %37 ], [ %52, %51 ], [ null, %58 ]
  tail call fastcc void @add_loop_to_tree(ptr noundef %62) #24
  %63 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %64 = load i32, ptr %62, align 8, !tbaa !738
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %63, i64 %65
  %67 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %63, i64 %65, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !729
  store ptr %68, ptr %45, align 8, !tbaa !742
  %69 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %39, i64 %42, i32 6
  store ptr %66, ptr %69, align 8, !tbaa !527
  store ptr %43, ptr %67, align 8, !tbaa !729
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !733
  %72 = load ptr, ptr @cfun, align 8, !tbaa !329
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !681
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !734
  %77 = icmp eq ptr %71, %76
  br i1 %77, label %78, label %37, !prof !743, !llvm.loop !744

78:                                               ; preds = %61, %27
  %79 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %80 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 3), align 8, !tbaa !699
  %81 = load i32, ptr %80, align 8, !tbaa !738
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %79, i64 %82
  store ptr %83, ptr @ira_loop_tree_root, align 8, !tbaa !329
  %84 = tail call fastcc i32 @setup_loop_tree_level(ptr noundef %83, i32 noundef 0) #24
  store i32 %84, ptr @ira_loop_tree_height, align 4, !tbaa !343
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_allocnos() unnamed_addr #0 !prof !673 !PGOFuncName !745 {
  %1 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !329
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %1, ptr noundef nonnull @create_loop_tree_node_allocnos, ptr noundef null) #24
  %2 = load i32, ptr @optimize, align 4, !tbaa !343
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4, !prof !675

4:                                                ; preds = %0
  %5 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !329
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
define internal fastcc void @remove_unnecessary_regions(i8 noundef zeroext %0) unnamed_addr #0 !prof !673 !PGOFuncName !746 {
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %4, label %3, !prof !747

3:                                                ; preds = %1
  tail call fastcc void @mark_all_loops_for_removal() #24
  br label %5

4:                                                ; preds = %1
  tail call fastcc void @mark_loops_for_removal() #24
  br label %5

5:                                                ; preds = %4, %3
  %6 = load ptr, ptr @cfun, align 8, !tbaa !329
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !681
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !692
  %11 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %12 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %11) #24
  %13 = add i32 %12, %10
  %14 = tail call fastcc ptr @VEC_ira_loop_tree_node_t_heap_alloc(i32 noundef %13) #24
  store ptr %14, ptr @children_vec, align 8, !tbaa !329
  %15 = load ptr, ptr @cfun, align 8, !tbaa !329
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !681
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !692
  %20 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %21 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %20) #24
  %22 = add i32 %21, %19
  %23 = tail call fastcc ptr @VEC_ira_loop_tree_node_t_heap_alloc(i32 noundef %22) #24
  store ptr %23, ptr @removed_loop_vec, align 8, !tbaa !329
  %24 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !329
  tail call fastcc void @remove_uneccesary_loop_nodes_from_loop_tree(ptr noundef %24) #24
  tail call fastcc void @VEC_ira_loop_tree_node_t_heap_free(ptr noundef nonnull @children_vec) #24
  br i1 %2, label %26, label %25, !prof !747

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
  br i1 %30, label %37, label %31, !prof !748

31:                                               ; preds = %27, %31
  %32 = phi ptr [ %34, %31 ], [ %28, %27 ]
  %33 = tail call fastcc ptr @VEC_ira_loop_tree_node_t_base_pop(ptr noundef %32) #24
  tail call fastcc void @finish_loop_tree_node(ptr noundef %33) #24
  %34 = load ptr, ptr @removed_loop_vec, align 8
  %35 = tail call fastcc i32 @VEC_ira_loop_tree_node_t_base_length(ptr noundef %34) #24
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %31, !prof !749, !llvm.loop !750

37:                                               ; preds = %31, %27
  tail call fastcc void @VEC_ira_loop_tree_node_t_heap_free(ptr noundef nonnull @removed_loop_vec) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_bad_spill_attribute() unnamed_addr #0 !prof !673 !PGOFuncName !751 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  %3 = alloca [27 x %struct.bitmap_head_def], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 864, ptr nonnull %3) #25
  %4 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !343
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %16, !prof !686

6:                                                ; preds = %0
  %7 = zext nneg i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %14, %8 ]
  %10 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !343
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [27 x %struct.bitmap_head_def], ptr %3, i64 0, i64 %12
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %13) #24
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, %7
  br i1 %15, label %16, label %8, !prof !752, !llvm.loop !753

16:                                               ; preds = %8, %0
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %17 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %42, label %19, !prof !693

19:                                               ; preds = %16, %24
  %20 = load ptr, ptr %1, align 8, !tbaa !329
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !379
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27, !prof !754

24:                                               ; preds = %34, %27, %19
  %25 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %42, label %19, !prof !755, !llvm.loop !756

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !329
  %30 = icmp eq ptr %29, null
  br i1 %30, label %24, label %31, !prof !757, !llvm.loop !756

31:                                               ; preds = %27
  %32 = zext i32 %22 to i64
  %33 = getelementptr inbounds [27 x %struct.bitmap_head_def], ptr %3, i64 0, i64 %32
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %29, %31 ], [ %40, %34 ]
  %36 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !405
  %38 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %33, i32 noundef %37) #23
  %39 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %35, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !329
  %41 = icmp eq ptr %40, null
  br i1 %41, label %24, label %34, !prof !758, !llvm.loop !759

42:                                               ; preds = %24, %16
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %43 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %48, !prof !693

45:                                               ; preds = %90, %42
  %46 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !343
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %93, label %103, !prof !686

48:                                               ; preds = %42, %90
  %49 = load ptr, ptr %1, align 8, !tbaa !329
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !379
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %90, label %53, !prof !754

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 31
  %55 = load i16, ptr %54, align 4
  %56 = and i16 %55, 64
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %90, label %58, !prof !760

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %49, i64 0, i32 20
  %60 = load ptr, ptr %59, align 8, !tbaa !329
  %61 = icmp eq ptr %60, null
  br i1 %61, label %90, label %62, !prof !761

62:                                               ; preds = %58
  %63 = zext i32 %51 to i64
  %64 = getelementptr inbounds [27 x %struct.bitmap_head_def], ptr %3, i64 0, i64 %63
  br label %69

65:                                               ; preds = %84
  %66 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %70, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !329
  %68 = icmp eq ptr %67, null
  br i1 %68, label %90, label %69, !prof !762, !llvm.loop !763

69:                                               ; preds = %62, %65
  %70 = phi ptr [ %60, %62 ], [ %67, %65 ]
  %71 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %70, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !404
  %73 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %70, i64 0, i32 2
  br label %74

74:                                               ; preds = %79, %69
  %75 = phi i32 [ %72, %69 ], [ %76, %79 ]
  %76 = add nsw i32 %75, 1
  %77 = load i32, ptr %73, align 4, !tbaa !405
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %84, !prof !764

79:                                               ; preds = %74
  %80 = call i32 @bitmap_bit_p(ptr noundef nonnull %64, i32 noundef %76) #23
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %74, label %82, !prof !765, !llvm.loop !766

82:                                               ; preds = %79
  %83 = load i32, ptr %73, align 4, !tbaa !405
  br label %84

84:                                               ; preds = %74, %82
  %85 = phi i32 [ %83, %82 ], [ %77, %74 ]
  %86 = icmp slt i32 %76, %85
  br i1 %86, label %87, label %65, !prof !767

87:                                               ; preds = %84
  %88 = load i16, ptr %54, align 4
  %89 = and i16 %88, -65
  store i16 %89, ptr %54, align 4
  br label %90

90:                                               ; preds = %65, %87, %58, %48, %53
  %91 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %45, label %48, !prof !755, !llvm.loop !768

93:                                               ; preds = %45, %93
  %94 = phi i64 [ %99, %93 ], [ 0, %45 ]
  %95 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !343
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [27 x %struct.bitmap_head_def], ptr %3, i64 0, i64 %97
  call void @bitmap_clear(ptr noundef nonnull %98) #23
  %99 = add nuw nsw i64 %94, 1
  %100 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !343
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %93, label %103, !prof !687, !llvm.loop !769

103:                                              ; preds = %93, %45
  call void @llvm.lifetime.end.p0(i64 864, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @more_one_region_p() unnamed_addr #15 !prof !673 !PGOFuncName !770 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %3 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #24, !range !650
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5, !prof !771

5:                                                ; preds = %0
  %6 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %7 = load ptr, ptr @ira_loop_tree_root, align 8
  br label %8

8:                                                ; preds = %5, %17
  %9 = phi i32 [ 0, %5 ], [ %18, %17 ]
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %10, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !340
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %10
  %15 = icmp eq ptr %7, %14
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %21, !prof !772

17:                                               ; preds = %8
  %18 = add i32 %9, 1
  %19 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %2, i32 noundef %18, ptr noundef nonnull %1) #24, !range !650
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %8, !prof !773, !llvm.loop !774

21:                                               ; preds = %8, %17, %0
  %22 = phi i8 [ 0, %0 ], [ 0, %17 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_allocno_info() unnamed_addr #0 !prof !517 !PGOFuncName !775 {
  %1 = load i32, ptr @flag_ira_region, align 4
  %2 = add i32 %1, -3
  %3 = icmp ult i32 %2, -2
  br i1 %3, label %102, label %4, !prof !776

4:                                                ; preds = %0
  %5 = tail call i32 @max_reg_num() #23
  %6 = icmp sgt i32 %5, 53
  br i1 %6, label %7, label %102, !prof !519

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  br label %11

9:                                                ; preds = %98, %11
  %10 = icmp sgt i64 %12, 54
  br i1 %10, label %11, label %102, !prof !556, !llvm.loop !777

11:                                               ; preds = %7, %9
  %12 = phi i64 [ %8, %7 ], [ %13, %9 ]
  %13 = add nsw i64 %12, -1
  %14 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !329
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !329
  %17 = icmp eq ptr %16, null
  br i1 %17, label %9, label %18, !prof !778

18:                                               ; preds = %11, %98
  %19 = phi ptr [ %100, %98 ], [ %16, %11 ]
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !337
  %22 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !527
  %24 = icmp eq ptr %23, null
  br i1 %24, label %98, label %25, !prof !779

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %23, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !340
  %28 = getelementptr inbounds ptr, ptr %27, i64 %13
  %29 = load ptr, ptr %28, align 8, !tbaa !329
  %30 = icmp eq ptr %29, null
  br i1 %30, label %98, label %31, !prof !780

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !695
  %34 = load i32, ptr %19, align 8, !tbaa !344
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %33, i32 noundef %34) #23
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %98, label %37, !prof !781

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 31
  %39 = load i16, ptr %38, align 4
  %40 = and i16 %39, 64
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %46, !prof !782

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 31
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, -65
  store i16 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 7
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 7
  %49 = load <2 x i32>, ptr %47, align 8, !tbaa !343
  %50 = load <2 x i32>, ptr %48, align 8, !tbaa !343
  %51 = add nsw <2 x i32> %50, %49
  store <2 x i32> %51, ptr %48, align 8, !tbaa !343
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 29
  %53 = load i32, ptr %52, align 4, !tbaa !354
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 29
  %55 = load i32, ptr %54, align 4, !tbaa !354
  %56 = add nsw i32 %55, %53
  store i32 %56, ptr %54, align 4, !tbaa !354
  %57 = load i16, ptr %38, align 4
  %58 = and i16 %57, 32
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %64, label %60, !prof !783

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 31
  %62 = load i16, ptr %61, align 4
  %63 = or i16 %62, 32
  store i16 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %60, %46
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 27
  %66 = load i64, ptr %65, align 8, !tbaa !350
  %67 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 27
  %68 = load i64, ptr %67, align 8, !tbaa !350
  %69 = or i64 %68, %66
  store i64 %69, ptr %67, align 8, !tbaa !350
  %70 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 30
  %71 = load i32, ptr %70, align 8, !tbaa !355
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 30
  %73 = load i32, ptr %72, align 8, !tbaa !355
  %74 = add nsw i32 %73, %71
  store i32 %74, ptr %72, align 8, !tbaa !355
  %75 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 14
  %76 = load i32, ptr %75, align 4, !tbaa !538
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 14
  %78 = load i32, ptr %77, align 4, !tbaa !538
  %79 = add nsw i32 %78, %76
  store i32 %79, ptr %77, align 4, !tbaa !538
  %80 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !379
  %82 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 33
  %83 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 33
  %84 = load ptr, ptr %83, align 8, !tbaa !533
  tail call fastcc void @ira_allocate_and_accumulate_costs(ptr noundef nonnull %82, i32 noundef %81, ptr noundef %84) #24
  %85 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 35
  %86 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 35
  %87 = load ptr, ptr %86, align 8, !tbaa !534
  tail call fastcc void @ira_allocate_and_accumulate_costs(ptr noundef nonnull %85, i32 noundef %81, ptr noundef %87) #24
  %88 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 10
  %89 = load i32, ptr %88, align 4, !tbaa !547
  %90 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 10
  %91 = load i32, ptr %90, align 4, !tbaa !547
  %92 = add nsw i32 %91, %89
  store i32 %92, ptr %90, align 4, !tbaa !547
  %93 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 12
  %94 = load i32, ptr %93, align 4, !tbaa !548
  %95 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 12
  %96 = load i32, ptr %95, align 4, !tbaa !548
  %97 = add nsw i32 %96, %94
  store i32 %97, ptr %95, align 4, !tbaa !548
  br label %98

98:                                               ; preds = %18, %25, %31, %64
  %99 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !329
  %101 = icmp eq ptr %100, null
  br i1 %101, label %9, label %18, !prof !784, !llvm.loop !785

102:                                              ; preds = %9, %4, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_caps() unnamed_addr #0 !prof !517 !PGOFuncName !786 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %29, label %5, !prof !518

5:                                                ; preds = %0, %26
  %6 = load ptr, ptr %1, align 8, !tbaa !329
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !337
  %9 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !329
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %26, label %11, !prof !787

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !400
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25, !prof !788

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !525
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26, !prof !789

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %8, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !695
  %22 = load i32, ptr %6, align 8, !tbaa !344
  %23 = tail call i32 @bitmap_bit_p(ptr noundef %21, i32 noundef %22) #23
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26, !prof !790

25:                                               ; preds = %19, %11
  tail call fastcc void @create_cap_allocno(ptr noundef nonnull %6) #24
  br label %26

26:                                               ; preds = %25, %19, %15, %5
  %27 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %5, !prof !791, !llvm.loop !792

29:                                               ; preds = %26, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: optsize
declare void @ira_tune_allocno_costs_and_cover_classes() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_min_max_allocno_live_range_point() unnamed_addr #0 !prof !673 !PGOFuncName !793 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !693

5:                                                ; preds = %0, %23
  %6 = load ptr, ptr %1, align 8, !tbaa !329
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !363
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10, !prof !794

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !405
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 22
  store i32 %12, ptr %13, align 4, !tbaa !365
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %8, %10 ], [ %17, %14 ]
  %16 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !406
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !prof !795, !llvm.loop !796

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %15, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !404
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 21
  store i32 %21, ptr %22, align 8, !tbaa !364
  br label %23

23:                                               ; preds = %19, %5
  %24 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %5, !prof !797, !llvm.loop !798

26:                                               ; preds = %23, %0
  %27 = tail call i32 @max_reg_num() #23
  %28 = icmp sgt i32 %27, 53
  br i1 %28, label %29, label %94, !prof !686

29:                                               ; preds = %26
  %30 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !329
  %31 = zext nneg i32 %27 to i64
  br label %34

32:                                               ; preds = %90, %34
  %33 = icmp sgt i64 %35, 54
  br i1 %33, label %34, label %94, !prof !799, !llvm.loop !800

34:                                               ; preds = %29, %32
  %35 = phi i64 [ %31, %29 ], [ %36, %32 ]
  %36 = add nsw i64 %35, -1
  %37 = getelementptr inbounds ptr, ptr %30, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !329
  %39 = icmp eq ptr %38, null
  br i1 %39, label %32, label %40, !prof !801

40:                                               ; preds = %34, %90
  %41 = phi ptr [ %92, %90 ], [ %38, %34 ]
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 22
  %43 = load i32, ptr %42, align 4, !tbaa !365
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %90, label %45, !prof !754

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 16
  %47 = load ptr, ptr %46, align 8, !tbaa !525
  %48 = icmp eq ptr %47, null
  br i1 %48, label %68, label %49, !prof !802

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 21
  br label %51

51:                                               ; preds = %49, %64
  %52 = phi ptr [ %47, %49 ], [ %66, %64 ]
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %52, i64 0, i32 22
  %54 = load i32, ptr %53, align 4, !tbaa !365
  %55 = load i32, ptr %42, align 4, !tbaa !365
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %58, !prof !803

57:                                               ; preds = %51
  store i32 %55, ptr %53, align 4, !tbaa !365
  br label %58

58:                                               ; preds = %57, %51
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %52, i64 0, i32 21
  %60 = load i32, ptr %59, align 8, !tbaa !364
  %61 = load i32, ptr %50, align 8, !tbaa !364
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %64, !prof !803

63:                                               ; preds = %58
  store i32 %61, ptr %59, align 8, !tbaa !364
  br label %64

64:                                               ; preds = %58, %63
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %52, i64 0, i32 16
  %66 = load ptr, ptr %65, align 8, !tbaa !525
  %67 = icmp eq ptr %66, null
  br i1 %67, label %90, label %51, !prof !804, !llvm.loop !805

68:                                               ; preds = %45
  %69 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !337
  %71 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %70, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !527
  %73 = icmp eq ptr %72, null
  br i1 %73, label %90, label %74, !prof !806

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %72, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !340
  %77 = getelementptr inbounds ptr, ptr %76, i64 %36
  %78 = load ptr, ptr %77, align 8, !tbaa !329
  %79 = getelementptr inbounds %struct.ira_allocno, ptr %78, i64 0, i32 22
  %80 = load i32, ptr %79, align 4, !tbaa !365
  %81 = icmp slt i32 %80, %43
  br i1 %81, label %82, label %83, !prof !807

82:                                               ; preds = %74
  store i32 %43, ptr %79, align 4, !tbaa !365
  br label %83

83:                                               ; preds = %82, %74
  %84 = getelementptr inbounds %struct.ira_allocno, ptr %78, i64 0, i32 21
  %85 = load i32, ptr %84, align 8, !tbaa !364
  %86 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 21
  %87 = load i32, ptr %86, align 8, !tbaa !364
  %88 = icmp sgt i32 %85, %87
  br i1 %88, label %89, label %90, !prof !808

89:                                               ; preds = %83
  store i32 %87, ptr %84, align 8, !tbaa !364
  br label %90

90:                                               ; preds = %64, %83, %89, %68, %40
  %91 = getelementptr inbounds %struct.ira_allocno, ptr %41, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !329
  %93 = icmp eq ptr %92, null
  br i1 %93, label %32, label %40, !prof !809, !llvm.loop !810

94:                                               ; preds = %32, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sort_conflict_id_allocno_map() unnamed_addr #0 !prof !673 !PGOFuncName !811 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5, !prof !693

5:                                                ; preds = %0, %5
  %6 = phi i64 [ %9, %5 ], [ 0, %0 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !329
  %8 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !329
  %9 = add nuw i64 %6, 1
  %10 = getelementptr inbounds ptr, ptr %8, i64 %6
  store ptr %7, ptr %10, align 8, !tbaa !329
  %11 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %5, !prof !797, !llvm.loop !812

13:                                               ; preds = %5
  %14 = trunc i64 %9 to i32
  br label %15

15:                                               ; preds = %13, %0
  %16 = phi i32 [ 0, %0 ], [ %14, %13 ]
  %17 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !329
  %18 = zext i32 %16 to i64
  tail call void @spec_qsort(ptr noundef %17, i64 noundef %18, i64 noundef 8, ptr noundef nonnull @allocno_range_compare_func) #23
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %22, label %20, !prof !693

20:                                               ; preds = %15
  %21 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !329
  br label %25

22:                                               ; preds = %33, %15
  %23 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !343
  %24 = icmp slt i32 %16, %23
  br i1 %24, label %36, label %43, !prof !686

25:                                               ; preds = %20, %33
  %26 = phi i64 [ 0, %20 ], [ %34, %33 ]
  %27 = getelementptr inbounds ptr, ptr %21, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !329
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30, !prof !813

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %28, i64 0, i32 24
  %32 = trunc i64 %26 to i32
  store i32 %32, ptr %31, align 8, !tbaa !366
  br label %33

33:                                               ; preds = %25, %30
  %34 = add nuw nsw i64 %26, 1
  %35 = icmp eq i64 %34, %18
  br i1 %35, label %22, label %25, !prof !797, !llvm.loop !814

36:                                               ; preds = %22, %36
  %37 = phi i64 [ %40, %36 ], [ %18, %22 ]
  %38 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !329
  %39 = getelementptr inbounds ptr, ptr %38, i64 %37
  store ptr null, ptr %39, align 8, !tbaa !329
  %40 = add nuw nsw i64 %37, 1
  %41 = trunc i64 %40 to i32
  %42 = icmp sgt i32 %23, %41
  br i1 %42, label %36, label %43, !prof !815, !llvm.loop !816

43:                                               ; preds = %36, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_min_max_conflict_allocno_ids() unnamed_addr #0 !prof !673 !PGOFuncName !817 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !343
  %2 = sext i32 %1 to i64
  %3 = shl nsw i64 %2, 2
  %4 = tail call ptr @ira_allocate(i64 noundef %3) #23
  %5 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !343
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %70, !prof !686

7:                                                ; preds = %0
  %8 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !329
  br label %9

9:                                                ; preds = %7, %63
  %10 = phi i32 [ %5, %7 ], [ %64, %63 ]
  %11 = phi i64 [ 0, %7 ], [ %67, %63 ]
  %12 = phi i32 [ -1, %7 ], [ %66, %63 ]
  %13 = phi i32 [ -1, %7 ], [ %65, %63 ]
  %14 = getelementptr inbounds ptr, ptr %8, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !329
  %16 = icmp eq ptr %15, null
  br i1 %16, label %63, label %17, !prof !818

17:                                               ; preds = %9
  %18 = icmp slt i32 %12, 0
  br i1 %18, label %19, label %22, !prof !819

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !379
  br label %29

22:                                               ; preds = %17
  %23 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !343
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %34, label %25, !prof !820

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !379
  %28 = icmp eq i32 %12, %27
  br i1 %28, label %34, label %29, !prof !821

29:                                               ; preds = %19, %25
  %30 = phi i32 [ %21, %19 ], [ %27, %25 ]
  %31 = trunc i64 %11 to i32
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 21
  %33 = load i32, ptr %32, align 8, !tbaa !364
  br label %52

34:                                               ; preds = %25, %22
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 21
  %36 = load i32, ptr %35, align 8, !tbaa !364
  %37 = sext i32 %13 to i64
  %38 = icmp sgt i64 %11, %37
  br i1 %38, label %39, label %52, !prof !822

39:                                               ; preds = %34, %46
  %40 = phi i64 [ %47, %46 ], [ %37, %34 ]
  %41 = getelementptr inbounds ptr, ptr %8, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !329
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %42, i64 0, i32 22
  %44 = load i32, ptr %43, align 4, !tbaa !365
  %45 = icmp sgt i32 %36, %44
  br i1 %45, label %46, label %49, !prof !823

46:                                               ; preds = %39
  %47 = add nsw i64 %40, 1
  %48 = icmp slt i64 %47, %11
  br i1 %48, label %39, label %49, !prof !824, !llvm.loop !825

49:                                               ; preds = %39, %46
  %50 = phi i64 [ %40, %39 ], [ %11, %46 ]
  %51 = trunc i64 %50 to i32
  br label %52

52:                                               ; preds = %49, %34, %29
  %53 = phi i32 [ %33, %29 ], [ %36, %34 ], [ %36, %49 ]
  %54 = phi i32 [ %31, %29 ], [ %13, %34 ], [ %51, %49 ]
  %55 = phi i32 [ %30, %29 ], [ %12, %34 ], [ %12, %49 ]
  %56 = zext i32 %54 to i64
  %57 = icmp eq i64 %11, %56
  %58 = zext i1 %57 to i32
  %59 = add nsw i32 %54, %58
  %60 = getelementptr inbounds %struct.ira_allocno, ptr %15, i64 0, i32 21
  %61 = getelementptr inbounds i32, ptr %4, i64 %11
  store i32 %53, ptr %61, align 4, !tbaa !343
  store i32 %59, ptr %60, align 8, !tbaa !364
  %62 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !343
  br label %63

63:                                               ; preds = %9, %52
  %64 = phi i32 [ %10, %9 ], [ %62, %52 ]
  %65 = phi i32 [ %13, %9 ], [ %54, %52 ]
  %66 = phi i32 [ %12, %9 ], [ %55, %52 ]
  %67 = add nuw nsw i64 %11, 1
  %68 = sext i32 %64 to i64
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %9, label %70, !prof !826, !llvm.loop !827

70:                                               ; preds = %63, %0
  %71 = load i32, ptr @ira_max_point, align 4, !tbaa !343
  %72 = sext i32 %71 to i64
  %73 = shl nsw i64 %72, 2
  %74 = tail call ptr @ira_allocate(i64 noundef %73) #23
  %75 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !343
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %142, !prof !686

77:                                               ; preds = %70
  %78 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !329
  %79 = zext nneg i32 %75 to i64
  br label %80

80:                                               ; preds = %77, %138
  %81 = phi i64 [ %79, %77 ], [ %84, %138 ]
  %82 = phi i32 [ -1, %77 ], [ %140, %138 ]
  %83 = phi i32 [ -1, %77 ], [ %139, %138 ]
  %84 = add nsw i64 %81, -1
  %85 = getelementptr inbounds ptr, ptr %78, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !329
  %87 = icmp eq ptr %86, null
  br i1 %87, label %138, label %88, !prof !818

88:                                               ; preds = %80
  %89 = icmp slt i32 %82, 0
  br i1 %89, label %90, label %93, !prof !819

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.ira_allocno, ptr %86, i64 0, i32 9
  %92 = load i32, ptr %91, align 8, !tbaa !379
  br label %100

93:                                               ; preds = %88
  %94 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !343
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %111, label %96, !prof !820

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %86, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !379
  %99 = icmp eq i32 %82, %98
  br i1 %99, label %111, label %100, !prof !821

100:                                              ; preds = %90, %96
  %101 = phi i32 [ %92, %90 ], [ %98, %96 ]
  %102 = load i32, ptr @ira_max_point, align 4, !tbaa !343
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %111, !prof !828

104:                                              ; preds = %100, %104
  %105 = phi i64 [ %107, %104 ], [ 0, %100 ]
  %106 = getelementptr inbounds i32, ptr %74, i64 %105
  store i32 -1, ptr %106, align 4, !tbaa !343
  %107 = add nuw nsw i64 %105, 1
  %108 = load i32, ptr @ira_max_point, align 4, !tbaa !343
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %107, %109
  br i1 %110, label %104, label %111, !prof !829, !llvm.loop !830

111:                                              ; preds = %104, %100, %96, %93
  %112 = phi i32 [ %83, %96 ], [ %83, %93 ], [ %102, %100 ], [ %108, %104 ]
  %113 = phi i32 [ %82, %96 ], [ %82, %93 ], [ %101, %100 ], [ %101, %104 ]
  %114 = getelementptr inbounds i32, ptr %4, i64 %84
  %115 = load i32, ptr %114, align 4, !tbaa !343
  %116 = getelementptr inbounds %struct.ira_allocno, ptr %86, i64 0, i32 22
  %117 = load i32, ptr %116, align 4, !tbaa !365
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %74, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !343
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %126, !prof !831

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.ira_allocno, ptr %86, i64 0, i32 24
  %124 = load i32, ptr %123, align 8, !tbaa !366
  %125 = add nsw i32 %124, -1
  br label %126

126:                                              ; preds = %122, %111
  %127 = phi i32 [ %125, %122 ], [ %120, %111 ]
  store i32 %127, ptr %116, align 4, !tbaa !365
  %128 = icmp slt i32 %115, %112
  br i1 %128, label %129, label %138, !prof !832

129:                                              ; preds = %126
  %130 = sext i32 %115 to i64
  %131 = sext i32 %112 to i64
  %132 = trunc i64 %84 to i32
  br label %133

133:                                              ; preds = %129, %133
  %134 = phi i64 [ %130, %129 ], [ %136, %133 ]
  %135 = getelementptr inbounds i32, ptr %74, i64 %134
  store i32 %132, ptr %135, align 4, !tbaa !343
  %136 = add nsw i64 %134, 1
  %137 = icmp eq i64 %136, %131
  br i1 %137, label %138, label %133, !prof !833, !llvm.loop !834

138:                                              ; preds = %133, %126, %80
  %139 = phi i32 [ %83, %80 ], [ %115, %126 ], [ %115, %133 ]
  %140 = phi i32 [ %82, %80 ], [ %113, %126 ], [ %113, %133 ]
  %141 = icmp sgt i64 %81, 1
  br i1 %141, label %80, label %142, !prof !826, !llvm.loop !835

142:                                              ; preds = %138, %70
  tail call void @ira_free(ptr noundef %74) #23
  tail call void @ira_free(ptr noundef %4) #23
  ret void
}

; Function Attrs: optsize
declare void @ira_build_conflicts() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !836 !PGOFuncName !837 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !838

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !670
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ira_allocno_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !839 !PGOFuncName !840 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ira_copy_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !673 !PGOFuncName !841 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 !prof !842 !PGOFuncName !843 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !844 !PGOFuncName !845 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #24, !range !385
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !846

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #24
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !329
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !847 !PGOFuncName !848 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !849

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !850
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !852 !PGOFuncName !853 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !854

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #24
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #24
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !855

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 738, ptr noundef nonnull @.str.6) #23
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !856
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !856
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !858 !PGOFuncName !859 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !860

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !850
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !861

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !329
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !329
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #20 !prof !842 !PGOFuncName !862 {
  %2 = load ptr, ptr %0, align 8, !tbaa !329
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !863

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !329
  ret void
}

; Function Attrs: optsize
declare ptr @ira_allocate_bitmap() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !844 !PGOFuncName !864 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !865

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !852 !PGOFuncName !866 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !854

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #24
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !867 !PGOFuncName !868 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !869

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 687, ptr noundef nonnull @.str.6) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !329
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !852 !PGOFuncName !870 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !329
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #17 !prof !871 !PGOFuncName !872 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !873
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !874

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #24
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_loop_to_tree(ptr noundef %0) unnamed_addr #19 !prof !875 !PGOFuncName !876 {
  %2 = tail call fastcc ptr @loop_outer(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !877

4:                                                ; preds = %1
  tail call fastcc void @add_loop_to_tree(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %7 = load i32, ptr %0, align 8, !tbaa !738
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8
  %10 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !340
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13, !prof !878

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !729
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %43, !prof !879

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8, i32 1
  store ptr %0, ptr %18, align 8, !tbaa !399
  store ptr null, ptr %9, align 8, !tbaa !398
  %19 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %0) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21, !prof !693

21:                                               ; preds = %17
  %22 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  br label %23

23:                                               ; preds = %21, %30
  %24 = phi ptr [ %19, %21 ], [ %31, %30 ]
  %25 = load i32, ptr %24, align 8, !tbaa !738
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %22, i64 %26, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !340
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %36, !prof !702

30:                                               ; preds = %23
  %31 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %24) #24
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %23, !prof !880, !llvm.loop !881

33:                                               ; preds = %30, %17
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8, i32 2
  %35 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8, i32 6
  store ptr null, ptr %35, align 8, !tbaa !527
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  br label %43

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %22, i64 %26
  %38 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %22, i64 %26, i32 5
  %39 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %22, i64 %26, i32 4
  %40 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8, i32 2
  %41 = load <2 x ptr>, ptr %39, align 8, !tbaa !329
  store ptr %9, ptr %38, align 8, !tbaa !729
  store <2 x ptr> %41, ptr %40, align 8, !tbaa !329
  store ptr %9, ptr %39, align 8, !tbaa !730
  %42 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 %8, i32 6
  store ptr %37, ptr %42, align 8, !tbaa !527
  br label %43

43:                                               ; preds = %33, %36, %13, %5
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @setup_loop_tree_level(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #19 !prof !882 !PGOFuncName !883 {
  %3 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 7
  store i32 %1, ptr %3, align 8, !tbaa !884
  %4 = add nsw i32 %1, 1
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !329
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !725

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %14, %8 ], [ %6, %2 ]
  %10 = phi i32 [ %12, %8 ], [ %4, %2 ]
  %11 = tail call fastcc i32 @setup_loop_tree_level(ptr noundef nonnull %9, i32 noundef %4) #24
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 %10)
  %13 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !329
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !prof !885, !llvm.loop !886

16:                                               ; preds = %8, %2
  %17 = phi i32 [ %4, %2 ], [ %12, %8 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !887 !PGOFuncName !888 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !329
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @create_loop_tree_node_allocnos(ptr noundef readonly %0) #0 !prof !889 !PGOFuncName !890 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !398
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !891

7:                                                ; preds = %1
  tail call fastcc void @create_bb_allocnos(ptr noundef nonnull %0) #24
  br label %45

8:                                                ; preds = %1
  %9 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !329
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %45, label %11, !prof !701

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !399
  %14 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !703
  %16 = tail call fastcc ptr @ei_start_1(ptr noundef %15) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !707
  %17 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %16, ptr %17, align 8, !tbaa.struct !708
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %16, ptr noundef nonnull %3) #24, !range !385
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %33, label %20, !prof !709

20:                                               ; preds = %11, %28
  %21 = load ptr, ptr %3, align 8, !tbaa !329
  %22 = load ptr, ptr %21, align 8, !tbaa !710
  %23 = load ptr, ptr %12, align 8, !tbaa !399
  %24 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !712
  %26 = icmp eq ptr %22, %25
  br i1 %26, label %28, label %27, !prof !713

27:                                               ; preds = %20
  tail call fastcc void @create_loop_allocnos(ptr noundef nonnull %21) #24
  br label %28

28:                                               ; preds = %20, %27
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %29 = load i32, ptr %2, align 8
  %30 = load ptr, ptr %17, align 8
  %31 = call fastcc zeroext i8 @ei_cond(i32 %29, ptr %30, ptr noundef nonnull %3) #24, !range !385
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %20, !prof !720, !llvm.loop !892

33:                                               ; preds = %28, %11
  %34 = load ptr, ptr %12, align 8, !tbaa !399
  %35 = tail call ptr @get_loop_exit_edges(ptr noundef %34) #23
  store ptr %35, ptr %4, align 8, !tbaa !329
  %36 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %35, i32 noundef 0, ptr noundef nonnull %3) #24, !range !650
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38, !prof !709

38:                                               ; preds = %33, %38
  %39 = phi i32 [ %41, %38 ], [ 0, %33 ]
  %40 = load ptr, ptr %3, align 8, !tbaa !329
  tail call fastcc void @create_loop_allocnos(ptr noundef %40) #24
  %41 = add nuw nsw i32 %39, 1
  %42 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %35, i32 noundef %41, ptr noundef nonnull %3) #24, !range !650
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %38, !prof !723, !llvm.loop !893

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
define internal void @propagate_modified_regnos(ptr noundef readonly %0) #0 !prof !882 !PGOFuncName !894 {
  %2 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !329
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %12, label %4, !prof !701

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !527
  %7 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !694
  %9 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !694
  %11 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %8, ptr noundef %10) #23
  br label %12

12:                                               ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_bb_allocnos(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !895 !PGOFuncName !896 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %4 = load ptr, ptr %0, align 8, !tbaa !398
  store ptr %4, ptr @curr_bb, align 8, !tbaa !329
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !566
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !566
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10, !prof !737

10:                                               ; preds = %1, %25
  %11 = phi ptr [ %27, %25 ], [ %8, %1 ]
  %12 = load ptr, ptr %5, align 8, !tbaa !566
  %13 = load ptr, ptr %12, align 8, !tbaa !897
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !566
  %16 = icmp eq ptr %11, %15
  br i1 %16, label %29, label %17, !prof !899

17:                                               ; preds = %10
  %18 = load i32, ptr %11, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -11
  %21 = icmp ult i32 %20, -3
  br i1 %21, label %25, label %22, !prof !900

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !566
  tail call fastcc void @create_insn_allocnos(ptr noundef %24, i8 noundef zeroext 0) #24
  br label %25

25:                                               ; preds = %17, %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !566
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10, !prof !901, !llvm.loop !902

29:                                               ; preds = %10, %25, %1
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !735
  %32 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %31) #24
  %33 = getelementptr inbounds %struct.df_lr_bb_info, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !903
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %34, ptr noundef nonnull %2) #24
  %35 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !385
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %54, label %37, !prof !905

37:                                               ; preds = %29
  %38 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !329
  br label %39

39:                                               ; preds = %37, %50
  %40 = phi ptr [ %38, %37 ], [ %51, %50 ]
  %41 = load i32, ptr %2, align 4, !tbaa !343
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !329
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50, !prof !906

46:                                               ; preds = %39
  %47 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !329
  %48 = tail call ptr @ira_create_allocno(i32 noundef %41, i8 noundef zeroext 0, ptr noundef %47) #24
  %49 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !329
  br label %50

50:                                               ; preds = %39, %46
  %51 = phi ptr [ %40, %39 ], [ %49, %46 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %52 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !385
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %39, !prof !907, !llvm.loop !908

54:                                               ; preds = %50, %29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_loop_allocnos(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !909 !PGOFuncName !910 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !718
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !735
  %8 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %7) #24
  %9 = getelementptr inbounds %struct.df_lr_bb_info, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !903
  %11 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !329
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %11, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !695
  %14 = load ptr, ptr %0, align 8, !tbaa !710
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !735
  %17 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %16) #24
  %18 = getelementptr inbounds %struct.df_lr_bb_info, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !911
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %19, ptr noundef nonnull %2) #24
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !385
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %59, label %22, !prof !912

22:                                               ; preds = %1, %56
  %23 = load i32, ptr %2, align 4, !tbaa !343
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %10, i32 noundef %23) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %56, label %26, !prof !913

26:                                               ; preds = %22
  %27 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !329
  %28 = zext i32 %23 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !329
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %52, !prof !914

32:                                               ; preds = %26
  %33 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !329
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !527
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37, !prof !915

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %35, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !340
  %40 = getelementptr inbounds ptr, ptr %39, i64 %28
  %41 = load ptr, ptr %40, align 8, !tbaa !329
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46, !prof !916

43:                                               ; preds = %37
  %44 = tail call ptr @ira_create_allocno(i32 noundef %23, i8 noundef zeroext 0, ptr noundef nonnull %35) #24
  %45 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !329
  br label %46

46:                                               ; preds = %43, %37, %32
  %47 = phi ptr [ %45, %43 ], [ %33, %37 ], [ %33, %32 ]
  %48 = tail call ptr @ira_create_allocno(i32 noundef %23, i8 noundef zeroext 0, ptr noundef %47) #24
  %49 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !329
  %50 = getelementptr inbounds ptr, ptr %49, i64 %28
  %51 = load ptr, ptr %50, align 8, !tbaa !329
  br label %52

52:                                               ; preds = %46, %26
  %53 = phi ptr [ %51, %46 ], [ %30, %26 ]
  %54 = load i32, ptr %53, align 8, !tbaa !344
  %55 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %54) #23
  br label %56

56:                                               ; preds = %22, %52
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %57 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !385
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %22, !prof !917, !llvm.loop !918

59:                                               ; preds = %56, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_insn_allocnos(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !919 !PGOFuncName !920 {
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
  ], !prof !921

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #24
  %10 = icmp sgt i32 %9, 52
  br i1 %10, label %11, label %111, !prof !922

11:                                               ; preds = %8
  %12 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !329
  %13 = zext nneg i32 %9 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !329
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20, !prof !923

17:                                               ; preds = %11
  %18 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !329
  %19 = tail call ptr @ira_create_allocno(i32 noundef %9, i8 noundef zeroext 0, ptr noundef %18) #24
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi ptr [ %19, %17 ], [ %15, %11 ]
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !351
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !351
  %25 = load i32, ptr @optimize_size, align 4, !tbaa !343
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %46, !prof !924

27:                                               ; preds = %20
  %28 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !343
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30, !prof !924

30:                                               ; preds = %27
  %31 = load ptr, ptr @cfun, align 8, !tbaa !329
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !681
  %34 = load ptr, ptr %33, align 8, !tbaa !732
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 8
  %36 = load i64, ptr %35, align 8, !tbaa !925
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %30, %27
  %39 = load ptr, ptr @curr_bb, align 8, !tbaa !329
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 11
  %41 = load i32, ptr %40, align 8, !tbaa !926
  %42 = add i32 %41, 9
  %43 = icmp ult i32 %42, 19
  br i1 %43, label %46, label %44, !prof !927

44:                                               ; preds = %38
  %45 = sdiv i32 %41, 10
  br label %46

46:                                               ; preds = %44, %38, %20, %30
  %47 = phi i32 [ 1000, %30 ], [ 1000, %20 ], [ %45, %44 ], [ 1, %38 ]
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %21, i64 0, i32 8
  %49 = load i32, ptr %48, align 4, !tbaa !352
  %50 = add nsw i32 %49, %47
  store i32 %50, ptr %48, align 4, !tbaa !352
  %51 = icmp eq i8 %5, 0
  br i1 %51, label %111, label %52, !prof !928

52:                                               ; preds = %46
  %53 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !329
  %54 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %53, i64 0, i32 14
  %55 = load ptr, ptr %54, align 8, !tbaa !694
  %56 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %55, i32 noundef %9) #23
  br label %111

57:                                               ; preds = %3
  %58 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !566
  tail call fastcc void @create_insn_allocnos(ptr noundef %59, i8 noundef zeroext 1) #24
  %60 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %61

61:                                               ; preds = %57, %65, %67, %71
  %62 = phi ptr [ %60, %57 ], [ %66, %65 ], [ %68, %67 ], [ %72, %71 ]
  %63 = phi i8 [ 0, %57 ], [ 1, %65 ], [ 0, %67 ], [ 0, %71 ]
  %64 = load ptr, ptr %62, align 8, !tbaa !566
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
  %73 = load ptr, ptr %72, align 8, !tbaa !566
  tail call fastcc void @create_insn_allocnos(ptr noundef %73, i8 noundef zeroext 1) #24
  br label %61

74:                                               ; preds = %69
  %75 = and i32 %6, 65535
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !329
  %79 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %76
  %80 = load i8, ptr %79, align 1, !tbaa !566
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %111, label %82, !prof !929

82:                                               ; preds = %74
  %83 = zext i8 %80 to i64
  br label %84

84:                                               ; preds = %82, %109
  %85 = phi i64 [ %83, %82 ], [ %86, %109 ]
  %86 = add nsw i64 %85, -1
  %87 = getelementptr inbounds i8, ptr %78, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !566
  switch i8 %88, label %109 [
    i8 101, label %95
    i8 69, label %89
  ], !prof !930

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %91 = getelementptr inbounds [1 x %union.rtunion_def], ptr %90, i64 0, i64 %86
  %92 = load ptr, ptr %91, align 8, !tbaa !566
  %93 = load i32, ptr %92, align 8, !tbaa !931
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %99, label %109, !prof !933

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %97 = getelementptr inbounds [1 x %union.rtunion_def], ptr %96, i64 0, i64 %86
  %98 = load ptr, ptr %97, align 8, !tbaa !566
  tail call fastcc void @create_insn_allocnos(ptr noundef %98, i8 noundef zeroext %5) #24
  br label %109

99:                                               ; preds = %89, %99
  %100 = phi i64 [ %104, %99 ], [ 0, %89 ]
  %101 = phi ptr [ %105, %99 ], [ %92, %89 ]
  %102 = getelementptr inbounds %struct.rtvec_def, ptr %101, i64 0, i32 1, i64 %100
  %103 = load ptr, ptr %102, align 8, !tbaa !329
  tail call fastcc void @create_insn_allocnos(ptr noundef %103, i8 noundef zeroext %5) #24
  %104 = add nuw nsw i64 %100, 1
  %105 = load ptr, ptr %91, align 8, !tbaa !566
  %106 = load i32, ptr %105, align 8, !tbaa !931
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %104, %107
  br i1 %108, label %99, label %109, !prof !934, !llvm.loop !935

109:                                              ; preds = %99, %89, %84, %95
  %110 = icmp sgt i64 %85, 1
  br i1 %110, label %84, label %111, !prof !936, !llvm.loop !937

111:                                              ; preds = %109, %74, %8, %52, %46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !938 !PGOFuncName !939 {
  %4 = load ptr, ptr %1, align 8, !tbaa !940
  store ptr %4, ptr %0, align 8, !tbaa !942
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !944
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !945

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !942
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !946
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !948

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 53, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !949
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !348
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %21 = and i32 %16, 53
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %19, %22
  store i64 %23, ptr %20, align 8, !tbaa !950
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = add nuw nsw i32 %16, %25
  store i32 %26, ptr %2, align 4, !tbaa !343
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #17 !prof !951 !PGOFuncName !952 {
  %2 = load ptr, ptr @df, align 8, !tbaa !329
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !329
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !953
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !955

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !956
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !329
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 !prof !957 !PGOFuncName !958 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !950
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !959

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !960

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !343
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !961, !llvm.loop !962

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !343
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !343
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !949
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !942
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !949
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !963

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !348
  store i64 %35, ptr %3, align 8, !tbaa !950
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !964

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !343
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !343
  %40 = load i32, ptr %23, align 8, !tbaa !949
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !949
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !965, !llvm.loop !966

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !967
  store ptr %44, ptr %0, align 8, !tbaa !942
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !968

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !946
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !343
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !950
  store i32 %16, ptr %1, align 4, !tbaa !343
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !prof !969 !PGOFuncName !970 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !950
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !950
  %6 = load i32, ptr %1, align 4, !tbaa !343
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !343
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @mark_all_loops_for_removal() unnamed_addr #9 !prof !397 !PGOFuncName !971 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %3 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #24, !range !650
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  br label %7

7:                                                ; preds = %5, %38
  %8 = phi ptr [ %6, %5 ], [ %39, %38 ]
  %9 = phi i64 [ 0, %5 ], [ %40, %38 ]
  %10 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %8, i64 %9, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !340
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %8, i64 %9, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !527
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %8, i64 %9, i32 8
  br i1 %16, label %18, label %19

18:                                               ; preds = %13
  store i8 0, ptr %17, align 4, !tbaa !972
  br label %38

19:                                               ; preds = %13
  store i8 1, ptr %17, align 4, !tbaa !972
  %20 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !343
  %21 = icmp sgt i32 %20, 1
  %22 = load ptr, ptr @ira_dump_file, align 8
  %23 = icmp ne ptr %22, null
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %8, i64 %9, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !399
  %28 = load i32, ptr %27, align 8, !tbaa !738
  %29 = getelementptr inbounds %struct.loop, ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !703
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !735
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 11
  %34 = load i32, ptr %33, align 8, !tbaa !926
  %35 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %27) #24
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.27, i32 noundef %28, i32 noundef %32, i32 noundef %34, i32 noundef %35) #24
  %37 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  br label %38

38:                                               ; preds = %7, %25, %19, %18
  %39 = phi ptr [ %8, %7 ], [ %37, %25 ], [ %8, %19 ], [ %8, %18 ]
  %40 = add nuw i64 %9, 1
  %41 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %42 = trunc i64 %40 to i32
  %43 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %41, i32 noundef %42, ptr noundef nonnull %1) #24, !range !650
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %7, !llvm.loop !973

45:                                               ; preds = %38, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_loops_for_removal() unnamed_addr #0 !prof !673 !PGOFuncName !974 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %3 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %2) #24
  %4 = zext i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 3
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #23
  %7 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %8 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %1) #24, !range !650
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %53, label %10, !prof !693

10:                                               ; preds = %0
  %11 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  br label %12

12:                                               ; preds = %10, %45
  %13 = phi ptr [ %11, %10 ], [ %46, %45 ]
  %14 = phi i64 [ 0, %10 ], [ %48, %45 ]
  %15 = phi i32 [ 0, %10 ], [ %47, %45 ]
  %16 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %13, i64 %14
  %17 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %13, i64 %14, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !340
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20, !prof !728

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %13, i64 %14, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !527
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24, !prof !701

24:                                               ; preds = %20
  %25 = add nsw i32 %15, 1
  %26 = sext i32 %15 to i64
  %27 = getelementptr inbounds ptr, ptr %6, i64 %26
  store ptr %16, ptr %27, align 8, !tbaa !329
  %28 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %29 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 %14, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !527
  %31 = tail call fastcc zeroext i8 @low_pressure_loop_node_p(ptr noundef %30) #24, !range !385
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33, !prof !975

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 %14
  %35 = tail call fastcc zeroext i8 @low_pressure_loop_node_p(ptr noundef %34) #24, !range !385
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
  store i8 %42, ptr %44, align 4, !tbaa !972
  br label %45

45:                                               ; preds = %40, %12
  %46 = phi ptr [ %13, %12 ], [ %41, %40 ]
  %47 = phi i32 [ %15, %12 ], [ %43, %40 ]
  %48 = add nuw i64 %14, 1
  %49 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %50 = trunc i64 %48 to i32
  %51 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %49, i32 noundef %50, ptr noundef nonnull %1) #24, !range !650
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %12, !prof !725, !llvm.loop !976

53:                                               ; preds = %45, %0
  %54 = phi i32 [ 0, %0 ], [ %47, %45 ]
  %55 = sext i32 %54 to i64
  tail call void @spec_qsort(ptr noundef %6, i64 noundef %55, i64 noundef 8, ptr noundef nonnull @loop_compare_func) #23
  %56 = load ptr, ptr @compiler_params, align 8, !tbaa !329
  %57 = getelementptr inbounds %struct.param_info, ptr %56, i64 105, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !977
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %109, label %60, !prof !979

60:                                               ; preds = %53
  %61 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !343
  %62 = load ptr, ptr @ira_dump_file, align 8
  br label %63

63:                                               ; preds = %60, %99
  %64 = phi ptr [ %56, %60 ], [ %100, %99 ]
  %65 = phi ptr [ %62, %60 ], [ %101, %99 ]
  %66 = phi i32 [ %61, %60 ], [ %102, %99 ]
  %67 = phi i64 [ 0, %60 ], [ %103, %99 ]
  %68 = getelementptr inbounds ptr, ptr %6, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !329
  %70 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %69, i64 0, i32 8
  store i8 1, ptr %70, align 4, !tbaa !972
  %71 = icmp sgt i32 %66, 1
  %72 = icmp ne ptr %65, null
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %99, !prof !980

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %69, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !399
  %77 = load i32, ptr %76, align 8, !tbaa !738
  %78 = getelementptr inbounds %struct.loop, ptr %76, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !703
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !735
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 11
  %83 = load i32, ptr %82, align 8, !tbaa !926
  %84 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %76) #24
  %85 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %69, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !527
  %87 = tail call fastcc zeroext i8 @low_pressure_loop_node_p(ptr noundef %86) #24, !range !385
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %74
  %90 = tail call fastcc zeroext i8 @low_pressure_loop_node_p(ptr noundef nonnull %69) #24, !range !385
  %91 = icmp eq i8 %90, 0
  %92 = select i1 %91, ptr @.str.30, ptr @.str.29
  br label %93

93:                                               ; preds = %89, %74
  %94 = phi ptr [ @.str.30, %74 ], [ %92, %89 ]
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %65, ptr noundef nonnull @.str.28, i32 noundef %77, i32 noundef %81, i32 noundef %83, i32 noundef %84, ptr noundef nonnull %94) #24
  %96 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !343
  %97 = load ptr, ptr @ira_dump_file, align 8
  %98 = load ptr, ptr @compiler_params, align 8, !tbaa !329
  br label %99

99:                                               ; preds = %63, %93
  %100 = phi ptr [ %64, %63 ], [ %98, %93 ]
  %101 = phi ptr [ %65, %63 ], [ %97, %93 ]
  %102 = phi i32 [ %66, %63 ], [ %96, %93 ]
  %103 = add nuw i64 %67, 1
  %104 = trunc i64 %103 to i32
  %105 = sub nsw i32 %54, %104
  %106 = getelementptr inbounds %struct.param_info, ptr %100, i64 105, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !977
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %63, !prof !981, !llvm.loop !982

109:                                              ; preds = %99, %53
  tail call void @ira_free(ptr noundef %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ira_loop_tree_node_t_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !839 !PGOFuncName !983 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_uneccesary_loop_nodes_from_loop_tree(ptr noundef %0) unnamed_addr #0 !prof !882 !PGOFuncName !984 {
  %2 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 4, !tbaa !972
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !985

5:                                                ; preds = %1
  tail call fastcc void @VEC_ira_loop_tree_node_t_heap_safe_push(ptr noundef nonnull @children_vec, ptr noundef nonnull %0) #24
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr @children_vec, align 8
  %8 = tail call fastcc i32 @VEC_ira_loop_tree_node_t_base_length(ptr noundef %7) #24
  %9 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !329
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12, !prof !986

12:                                               ; preds = %6, %18
  %13 = phi ptr [ %20, %18 ], [ %10, %6 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !398
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !987

16:                                               ; preds = %12
  tail call fastcc void @remove_uneccesary_loop_nodes_from_loop_tree(ptr noundef nonnull %13) #24
  br label %18

17:                                               ; preds = %12
  tail call fastcc void @VEC_ira_loop_tree_node_t_heap_safe_push(ptr noundef nonnull @children_vec, ptr noundef nonnull %13) #24
  br label %18

18:                                               ; preds = %16, %17
  %19 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %13, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !329
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !prof !988, !llvm.loop !989

22:                                               ; preds = %18, %6
  %23 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  br i1 %4, label %24, label %28, !prof !985

24:                                               ; preds = %22
  %25 = load ptr, ptr @children_vec, align 8
  %26 = tail call fastcc i32 @VEC_ira_loop_tree_node_t_base_length(ptr noundef %25) #24
  %27 = icmp ugt i32 %26, %8
  br i1 %27, label %29, label %44, !prof !990

28:                                               ; preds = %22
  tail call fastcc void @VEC_ira_loop_tree_node_t_heap_safe_push(ptr noundef nonnull @removed_loop_vec, ptr noundef nonnull %0) #24
  br label %44

29:                                               ; preds = %24, %40
  %30 = phi ptr [ %41, %40 ], [ %25, %24 ]
  %31 = tail call fastcc ptr @VEC_ira_loop_tree_node_t_base_pop(ptr noundef %30) #24
  %32 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %31, i64 0, i32 6
  store ptr %0, ptr %32, align 8, !tbaa !527
  %33 = load ptr, ptr %9, align 8, !tbaa !729
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %31, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !742
  store ptr %31, ptr %9, align 8, !tbaa !729
  %35 = load ptr, ptr %31, align 8, !tbaa !398
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40, !prof !991

37:                                               ; preds = %29
  %38 = load ptr, ptr %23, align 8, !tbaa !730
  %39 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %31, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !992
  store ptr %31, ptr %23, align 8, !tbaa !730
  br label %40

40:                                               ; preds = %37, %29
  %41 = load ptr, ptr @children_vec, align 8
  %42 = tail call fastcc i32 @VEC_ira_loop_tree_node_t_base_length(ptr noundef %41) #24
  %43 = icmp ugt i32 %42, %8
  br i1 %43, label %29, label %44, !prof !993, !llvm.loop !994

44:                                               ; preds = %40, %24, %28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ira_loop_tree_node_t_heap_free(ptr nocapture noundef %0) unnamed_addr #20 !prof !839 !PGOFuncName !995 {
  %2 = load ptr, ptr %0, align 8, !tbaa !329
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !996

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !329
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_low_level_allocnos() unnamed_addr #0 !prof !397 !PGOFuncName !997 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %50, label %5

5:                                                ; preds = %0, %47
  %6 = phi i1 [ false, %47 ], [ true, %0 ]
  %7 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !329
  br label %8

8:                                                ; preds = %5, %18
  %9 = phi ptr [ %7, %5 ], [ %19, %18 ]
  %10 = load ptr, ptr %1, align 8, !tbaa !329
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !337
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !400
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %8, %14, %31
  %19 = phi ptr [ %9, %8 ], [ %9, %14 ], [ %32, %31 ]
  %20 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %50, label %8, !llvm.loop !998

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !333
  %25 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %9, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !340
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !329
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  store ptr %9, ptr %11, align 8, !tbaa !337
  store ptr %10, ptr %28, align 8, !tbaa !329
  %32 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !329
  br label %18

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %12, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !527
  %36 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %35, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !340
  %38 = getelementptr inbounds ptr, ptr %37, i64 %27
  %39 = load ptr, ptr %38, align 8, !tbaa !329
  %40 = icmp eq ptr %39, null
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 20
  %42 = load ptr, ptr %41, align 8, !tbaa !363
  tail call fastcc void @change_allocno_in_range_list(ptr noundef %42, ptr noundef nonnull %29) #24
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 20
  %44 = load ptr, ptr %43, align 8, !tbaa !363
  %45 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %42, ptr noundef %44) #24
  store ptr %45, ptr %43, align 8, !tbaa !363
  store ptr null, ptr %41, align 8, !tbaa !363
  br i1 %40, label %46, label %47

46:                                               ; preds = %33
  tail call fastcc void @propagate_some_info_from_allocno(ptr noundef nonnull %29, ptr noundef nonnull %10) #24
  br label %47

47:                                               ; preds = %46, %33
  %48 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %5, !llvm.loop !998

50:                                               ; preds = %47, %18, %0
  %51 = phi i1 [ true, %0 ], [ %6, %18 ], [ false, %47 ]
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %52 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50, %54
  %55 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %54, !llvm.loop !999

57:                                               ; preds = %54, %50
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %58 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %89, label %60

60:                                               ; preds = %57, %86
  %61 = load ptr, ptr %1, align 8, !tbaa !329
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !333
  %64 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !329
  %65 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %64, i64 0, i32 9
  %66 = load ptr, ptr %65, align 8, !tbaa !340
  %67 = sext i32 %63 to i64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !329
  %70 = icmp eq ptr %69, %61
  br i1 %70, label %71, label %85

71:                                               ; preds = %60
  %72 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !329
  %73 = getelementptr inbounds ptr, ptr %72, i64 %67
  store ptr %61, ptr %73, align 8, !tbaa !329
  %74 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 5
  store ptr null, ptr %74, align 8, !tbaa !339
  %75 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 17
  store ptr null, ptr %75, align 8, !tbaa !400
  %76 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 27
  %77 = load i64, ptr %76, align 8, !tbaa !350
  %78 = getelementptr inbounds %struct.ira_allocno, ptr %61, i64 0, i32 26
  store i64 %77, ptr %78, align 8, !tbaa !349
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
  %87 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %60, !llvm.loop !1000

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
define internal fastcc void @remove_unnecessary_allocnos() unnamed_addr #0 !prof !673 !PGOFuncName !1001 {
  store ptr null, ptr @regno_allocnos, align 8, !tbaa !329
  %1 = tail call i32 @max_reg_num() #23
  %2 = icmp sgt i32 %1, 53
  br i1 %2, label %3, label %78, !prof !686

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %72
  %6 = phi i64 [ %4, %3 ], [ %8, %72 ]
  %7 = phi i8 [ 0, %3 ], [ %73, %72 ]
  %8 = add nsw i64 %6, -1
  %9 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !329
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !329
  %12 = icmp eq ptr %11, null
  br i1 %12, label %72, label %13, !prof !1002

13:                                               ; preds = %5, %55
  %14 = phi i8 [ %58, %55 ], [ %7, %5 ]
  %15 = phi i8 [ %57, %55 ], [ 0, %5 ]
  %16 = phi ptr [ %19, %55 ], [ %11, %5 ]
  %17 = phi ptr [ %56, %55 ], [ null, %5 ]
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !339
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !337
  %22 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %21, i64 0, i32 8
  %23 = load i8, ptr %22, align 4, !tbaa !972
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %55, label %25, !prof !1003

25:                                               ; preds = %13, %34
  %26 = phi ptr [ %28, %34 ], [ %21, %13 ]
  %27 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !527
  %29 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !340
  %31 = getelementptr inbounds ptr, ptr %30, i64 %8
  %32 = load ptr, ptr %31, align 8, !tbaa !329
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %44, !prof !1004

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 0, i32 8
  %36 = load i8, ptr %35, align 4, !tbaa !972
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %25, !prof !1005, !llvm.loop !1006

38:                                               ; preds = %34
  %39 = getelementptr inbounds ptr, ptr %30, i64 %8
  store ptr %28, ptr %20, align 8, !tbaa !337
  store ptr %16, ptr %39, align 8, !tbaa !329
  %40 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !345
  %42 = load i32, ptr %16, align 8, !tbaa !344
  %43 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %41, i32 noundef %42) #23
  br label %55

44:                                               ; preds = %25
  %45 = icmp eq ptr %17, null
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 5
  %47 = load ptr, ptr @ira_regno_allocno_map, align 8
  %48 = getelementptr inbounds ptr, ptr %47, i64 %8
  %49 = select i1 %45, ptr %48, ptr %46, !prof !1007
  store ptr %19, ptr %49, align 8, !tbaa !329
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %16, i64 0, i32 20
  %51 = load ptr, ptr %50, align 8, !tbaa !363
  tail call fastcc void @change_allocno_in_range_list(ptr noundef %51, ptr noundef nonnull %32) #24
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 20
  %53 = load ptr, ptr %52, align 8, !tbaa !363
  %54 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %51, ptr noundef %53) #24
  store ptr %54, ptr %52, align 8, !tbaa !363
  store ptr null, ptr %50, align 8, !tbaa !363
  tail call fastcc void @propagate_some_info_from_allocno(ptr noundef nonnull %32, ptr noundef nonnull %16) #24
  tail call fastcc void @finish_allocno(ptr noundef nonnull %16) #24
  br label %55

55:                                               ; preds = %13, %44, %38
  %56 = phi ptr [ %16, %38 ], [ %17, %44 ], [ %16, %13 ]
  %57 = phi i8 [ 1, %38 ], [ %15, %44 ], [ %15, %13 ]
  %58 = phi i8 [ %14, %38 ], [ 1, %44 ], [ %14, %13 ]
  %59 = icmp eq ptr %19, null
  br i1 %59, label %60, label %13, !prof !1008, !llvm.loop !1009

60:                                               ; preds = %55
  %61 = icmp eq i8 %57, 0
  br i1 %61, label %72, label %62, !prof !1010

62:                                               ; preds = %60
  %63 = load ptr, ptr @regno_allocnos, align 8, !tbaa !329
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %70, !prof !1011

65:                                               ; preds = %62
  %66 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !343
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 3
  %69 = tail call ptr @ira_allocate(i64 noundef %68) #23
  store ptr %69, ptr @regno_allocnos, align 8, !tbaa !329
  br label %70

70:                                               ; preds = %65, %62
  %71 = trunc i64 %8 to i32
  tail call fastcc void @ira_rebuild_regno_allocno_list(i32 noundef %71) #24
  br label %72

72:                                               ; preds = %5, %60, %70
  %73 = phi i8 [ %58, %60 ], [ %58, %70 ], [ %7, %5 ]
  %74 = icmp sgt i64 %6, 54
  br i1 %74, label %5, label %75, !prof !799, !llvm.loop !1012

75:                                               ; preds = %72
  %76 = icmp eq i8 %73, 0
  br i1 %76, label %78, label %77, !prof !1013

77:                                               ; preds = %75
  tail call void @ira_rebuild_start_finish_chains() #23
  br label %78

78:                                               ; preds = %0, %77, %75
  %79 = load ptr, ptr @regno_allocnos, align 8, !tbaa !329
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81, !prof !1014

81:                                               ; preds = %78
  tail call void @ira_free(ptr noundef nonnull %79) #23
  br label %82

82:                                               ; preds = %81, %78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_loop_tree_node_t_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !1015 !PGOFuncName !1016 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1017

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1018
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_loop_tree_node(ptr nocapture noundef %0) unnamed_addr #0 !prof !1020 !PGOFuncName !1021 {
  %2 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5, !prof !1022

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !696
  tail call void @ira_free_bitmap(ptr noundef %7) #23
  %8 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !695
  tail call void @ira_free_bitmap(ptr noundef %9) #23
  %10 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !694
  tail call void @ira_free_bitmap(ptr noundef %11) #23
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !345
  tail call void @ira_free_bitmap(ptr noundef %13) #23
  %14 = load ptr, ptr %2, align 8, !tbaa !340
  tail call void @ira_free(ptr noundef %14) #23
  store ptr null, ptr %2, align 8, !tbaa !340
  br label %15

15:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_ira_loop_tree_node_t_base_pop(ptr nocapture noundef %0) unnamed_addr #5 !prof !1023 !PGOFuncName !1024 {
  %2 = load i32, ptr %0, align 8, !tbaa !1018
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !1018
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_ira_loop_tree_node_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !329
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #17 !prof !1025 !PGOFuncName !1026 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !873
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #24
  ret i32 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @low_pressure_loop_node_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !1027 !PGOFuncName !1028 {
  %2 = load ptr, ptr %0, align 8, !tbaa !398
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %21, !prof !1029

4:                                                ; preds = %1
  %5 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !343
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %11, label %21, !prof !1030

7:                                                ; preds = %11
  %8 = zext nneg i32 %5 to i64
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, %8
  br i1 %10, label %21, label %11, !prof !1031, !llvm.loop !1032

11:                                               ; preds = %4, %7
  %12 = phi i64 [ %9, %7 ], [ 0, %4 ]
  %13 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !343
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 11, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !343
  %18 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %15
  %19 = load i32, ptr %18, align 4, !tbaa !343
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %7, !prof !1033

21:                                               ; preds = %11, %7, %4, %1
  %22 = phi i8 [ 0, %1 ], [ 1, %4 ], [ 0, %11 ], [ 1, %7 ]
  ret i8 %22
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @loop_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 !prof !1034 !PGOFuncName !1035 {
  %3 = load ptr, ptr %0, align 8, !tbaa !329
  %4 = load ptr, ptr %1, align 8, !tbaa !329
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %3, i64 0, i32 8
  %6 = load i8, ptr %5, align 4, !tbaa !972
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 0, i32 8
  %9 = load i8, ptr %8, align 4, !tbaa !972
  %10 = icmp eq i8 %9, 0
  br i1 %7, label %12, label %11, !prof !1036

11:                                               ; preds = %2
  br i1 %10, label %37, label %13, !prof !1037

12:                                               ; preds = %2
  br i1 %10, label %13, label %37, !prof !1038

13:                                               ; preds = %11, %12
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !399
  %16 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !703
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 11
  %19 = load i32, ptr %18, align 8, !tbaa !926
  %20 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !399
  %22 = getelementptr inbounds %struct.loop, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !703
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 11
  %25 = load i32, ptr %24, align 8, !tbaa !926
  %26 = sub nsw i32 %19, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37, !prof !1039

28:                                               ; preds = %13
  %29 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %15) #24
  %30 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %21) #24
  %31 = sub nsw i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37, !prof !1040

33:                                               ; preds = %28
  %34 = load i32, ptr %15, align 8, !tbaa !738
  %35 = load i32, ptr %21, align 8, !tbaa !738
  %36 = sub nsw i32 %34, %35
  br label %37

37:                                               ; preds = %28, %13, %12, %11, %33
  %38 = phi i32 [ %36, %33 ], [ -1, %11 ], [ 1, %12 ], [ %26, %13 ], [ %31, %28 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_loop_tree_node_t_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !889 !PGOFuncName !1041 {
  tail call fastcc void @VEC_ira_loop_tree_node_t_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !329
  tail call fastcc void @VEC_ira_loop_tree_node_t_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ira_loop_tree_node_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !889 !PGOFuncName !1042 {
  %2 = load ptr, ptr %0, align 8, !tbaa !329
  %3 = tail call fastcc i32 @VEC_ira_loop_tree_node_t_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1043

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !329
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ira_loop_tree_node_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !889 !PGOFuncName !1044 {
  %3 = load i32, ptr %0, align 8, !tbaa !1018
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1018
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ira_loop_tree_node_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !329
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ira_loop_tree_node_t_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !889 !PGOFuncName !1045 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1043

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ira_loop_tree_node_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1046
  %6 = load i32, ptr %0, align 8, !tbaa !1018
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_some_info_from_allocno(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1047 !PGOFuncName !1048 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 26
  %4 = load i64, ptr %3, align 8, !tbaa !349
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 26
  %6 = load i64, ptr %5, align 8, !tbaa !349
  %7 = or i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !349
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 31
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 16
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %16, label %12, !prof !1049

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %14 = load i16, ptr %13, align 4
  %15 = or i16 %14, 16
  store i16 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 7
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 7
  %19 = load <2 x i32>, ptr %17, align 8, !tbaa !343
  %20 = load <2 x i32>, ptr %18, align 8, !tbaa !343
  %21 = add nsw <2 x i32> %20, %19
  store <2 x i32> %21, ptr %18, align 8, !tbaa !343
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 29
  %23 = load i32, ptr %22, align 4, !tbaa !354
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 29
  %25 = load i32, ptr %24, align 4, !tbaa !354
  %26 = add nsw i32 %25, %23
  store i32 %26, ptr %24, align 4, !tbaa !354
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 27
  %28 = load i64, ptr %27, align 8, !tbaa !350
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 27
  %30 = load i64, ptr %29, align 8, !tbaa !350
  %31 = or i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !350
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 30
  %33 = load i32, ptr %32, align 8, !tbaa !355
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 30
  %35 = load i32, ptr %34, align 8, !tbaa !355
  %36 = add nsw i32 %35, %33
  store i32 %36, ptr %34, align 8, !tbaa !355
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 14
  %38 = load i32, ptr %37, align 4, !tbaa !538
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 14
  %40 = load i32, ptr %39, align 4, !tbaa !538
  %41 = add nsw i32 %40, %38
  store i32 %41, ptr %39, align 4, !tbaa !538
  %42 = load i16, ptr %8, align 4
  %43 = and i16 %42, 64
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %50, !prof !1050

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
  br i1 %53, label %58, label %54, !prof !1049

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %56 = load i16, ptr %55, align 4
  %57 = or i16 %56, 32
  store i16 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !379
  %61 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 33
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 33
  %63 = load ptr, ptr %62, align 8, !tbaa !533
  tail call fastcc void @ira_allocate_and_accumulate_costs(ptr noundef nonnull %61, i32 noundef %60, ptr noundef %63) #24
  %64 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 35
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 35
  %66 = load ptr, ptr %65, align 8, !tbaa !534
  tail call fastcc void @ira_allocate_and_accumulate_costs(ptr noundef nonnull %64, i32 noundef %60, ptr noundef %66) #24
  %67 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 10
  %68 = load i32, ptr %67, align 4, !tbaa !547
  %69 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 10
  %70 = load i32, ptr %69, align 4, !tbaa !547
  %71 = add nsw i32 %70, %68
  store i32 %71, ptr %69, align 4, !tbaa !547
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 12
  %73 = load i32, ptr %72, align 4, !tbaa !548
  %74 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 12
  %75 = load i32, ptr %74, align 4, !tbaa !548
  %76 = add nsw i32 %75, %73
  store i32 %76, ptr %74, align 4, !tbaa !548
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_accumulate_costs(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #0 !prof !1051 !PGOFuncName !1052 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %29, label %5, !prof !1053

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !343
  %9 = load ptr, ptr %0, align 8, !tbaa !329
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15, !prof !1054

11:                                               ; preds = %5
  %12 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #24
  store ptr %12, ptr %0, align 8, !tbaa !329
  %13 = sext i32 %8 to i64
  %14 = shl nsw i64 %13, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %12, i8 0, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %11, %5
  %16 = icmp sgt i32 %8, 0
  br i1 %16, label %17, label %29, !prof !1055

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 8, !tbaa !329
  %19 = zext nneg i32 %8 to i64
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ 0, %17 ], [ %27, %20 ]
  %22 = getelementptr inbounds i32, ptr %2, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !343
  %24 = getelementptr inbounds i32, ptr %18, i64 %21
  %25 = load i32, ptr %24, align 4, !tbaa !343
  %26 = add nsw i32 %25, %23
  store i32 %26, ptr %24, align 4, !tbaa !343
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %19
  br i1 %28, label %29, label %20, !prof !1056, !llvm.loop !1057

29:                                               ; preds = %20, %15, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_rebuild_regno_allocno_list(i32 noundef %0) unnamed_addr #0 !prof !1058 !PGOFuncName !1059 {
  %2 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !329
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !329
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr @regno_allocnos, align 8, !tbaa !329
  br i1 %6, label %8, label %10, !prof !1060

8:                                                ; preds = %1
  tail call void @spec_qsort(ptr noundef %7, i64 noundef 0, i64 noundef 8, ptr noundef nonnull @regno_allocno_order_compare_func) #23
  %9 = load ptr, ptr @regno_allocnos, align 8, !tbaa !329
  br label %32

10:                                               ; preds = %1, %10
  %11 = phi i64 [ %13, %10 ], [ 0, %1 ]
  %12 = phi ptr [ %16, %10 ], [ %5, %1 ]
  %13 = add nuw i64 %11, 1
  %14 = getelementptr inbounds ptr, ptr %7, i64 %11
  store ptr %12, ptr %14, align 8, !tbaa !329
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !329
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !prof !1061, !llvm.loop !1062

18:                                               ; preds = %10
  %19 = and i64 %13, 4294967295
  tail call void @spec_qsort(ptr noundef nonnull %7, i64 noundef %19, i64 noundef 8, ptr noundef nonnull @regno_allocno_order_compare_func) #23
  %20 = and i64 %13, 4294967294
  %21 = icmp eq i64 %20, 0
  %22 = load ptr, ptr @regno_allocnos, align 8, !tbaa !329
  br i1 %21, label %32, label %23, !prof !1063

23:                                               ; preds = %18, %23
  %24 = phi i64 [ %30, %23 ], [ 1, %18 ]
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !329
  %27 = getelementptr ptr, ptr %25, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !329
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %28, i64 0, i32 5
  store ptr %26, ptr %29, align 8, !tbaa !339
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %19
  br i1 %31, label %32, label %23, !prof !1064, !llvm.loop !1065

32:                                               ; preds = %23, %8, %18
  %33 = phi ptr [ %9, %8 ], [ %22, %18 ], [ %22, %23 ]
  %34 = phi i64 [ 0, %8 ], [ %19, %18 ], [ %19, %23 ]
  %35 = getelementptr ptr, ptr %33, i64 %34
  %36 = getelementptr ptr, ptr %35, i64 -1
  %37 = load ptr, ptr %36, align 8, !tbaa !329
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %37, i64 0, i32 5
  store ptr null, ptr %38, align 8, !tbaa !339
  %39 = load ptr, ptr %33, align 8, !tbaa !329
  %40 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !329
  %41 = getelementptr inbounds ptr, ptr %40, i64 %3
  store ptr %39, ptr %41, align 8, !tbaa !329
  %42 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !343
  %43 = icmp sgt i32 %42, 1
  %44 = load ptr, ptr @ira_dump_file, align 8
  %45 = icmp ne ptr %44, null
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %49, !prof !1066

47:                                               ; preds = %32
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.31, i32 noundef %0) #24
  br label %49

49:                                               ; preds = %47, %32
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @regno_allocno_order_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !1067 !PGOFuncName !1068 {
  %3 = load ptr, ptr %0, align 8, !tbaa !329
  %4 = load ptr, ptr %1, align 8, !tbaa !329
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !337
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !337
  %9 = tail call fastcc zeroext i8 @loop_is_inside_p(ptr noundef %6, ptr noundef %8) #24, !range !385
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %18, !prof !1069

11:                                               ; preds = %2
  %12 = tail call fastcc zeroext i8 @loop_is_inside_p(ptr noundef %8, ptr noundef %6) #24, !range !385
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18, !prof !1070

14:                                               ; preds = %11
  %15 = load i32, ptr %4, align 8, !tbaa !344
  %16 = load i32, ptr %3, align 8, !tbaa !344
  %17 = sub nsw i32 %15, %16
  br label %18

18:                                               ; preds = %11, %2, %14
  %19 = phi i32 [ %17, %14 ], [ -1, %2 ], [ 1, %11 ]
  ret i32 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @loop_is_inside_p(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #11 !prof !1071 !PGOFuncName !1072 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %8 ]
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !527
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !1073

8:                                                ; preds = %3
  %9 = icmp eq ptr %6, %1
  br i1 %9, label %10, label %3, !prof !1074, !llvm.loop !1075

10:                                               ; preds = %3, %8
  %11 = phi i8 [ 1, %8 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: optsize
declare void @ira_free_bitmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0) unnamed_addr #13 !prof !839 !PGOFuncName !1076 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %2, align 8, !tbaa !1077
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_cap_allocno(ptr noundef %0) unnamed_addr #0 !prof !1078 !PGOFuncName !1079 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !337
  %4 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !527
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !333
  %8 = tail call ptr @ira_create_allocno(i32 noundef %7, i8 noundef zeroext 1, ptr noundef %5) #24
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !358
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 2
  store i32 %10, ptr %11, align 8, !tbaa !358
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !379
  tail call void @ira_set_allocno_cover_class(ptr noundef %8, i32 noundef %13) #24
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 38
  %15 = load i32, ptr %14, align 4, !tbaa !1080
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 38
  store i32 %15, ptr %16, align 4, !tbaa !1080
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 17
  store ptr %0, ptr %17, align 8, !tbaa !400
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 16
  store ptr %8, ptr %18, align 8, !tbaa !525
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 10
  %20 = load i32, ptr %19, align 4, !tbaa !547
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 10
  store i32 %20, ptr %21, align 4, !tbaa !547
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 12
  %23 = load i32, ptr %22, align 4, !tbaa !548
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 12
  store i32 %23, ptr %24, align 4, !tbaa !548
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 33
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 33
  %27 = load ptr, ptr %26, align 8, !tbaa !533
  tail call fastcc void @ira_allocate_and_copy_costs(ptr noundef nonnull %25, i32 noundef %13, ptr noundef %27) #24
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 35
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 35
  %30 = load ptr, ptr %29, align 8, !tbaa !534
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
  %40 = load <2 x i32>, ptr %38, align 8, !tbaa !343
  store <2 x i32> %40, ptr %39, align 8, !tbaa !343
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 29
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 29
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 26
  %44 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 26
  %45 = load <2 x i64>, ptr %43, align 8, !tbaa !348
  %46 = load <2 x i64>, ptr %44, align 8, !tbaa !348
  %47 = or <2 x i64> %46, %45
  store <2 x i64> %47, ptr %44, align 8, !tbaa !348
  %48 = load <2 x i32>, ptr %41, align 4, !tbaa !343
  store <2 x i32> %48, ptr %42, align 4, !tbaa !343
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
  %57 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !343
  %58 = icmp sgt i32 %57, 2
  %59 = load ptr, ptr @ira_dump_file, align 8
  %60 = icmp ne ptr %59, null
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %66, !prof !1081

62:                                               ; preds = %1
  %63 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 17, i64 1, ptr nonnull %59)
  tail call void @ira_print_expanded_allocno(ptr noundef nonnull %8) #24
  %64 = load ptr, ptr @ira_dump_file, align 8, !tbaa !329
  %65 = tail call i32 @fputc(i32 10, ptr %64)
  br label %66

66:                                               ; preds = %62, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_copy_costs(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #0 !prof !1082 !PGOFuncName !1083 {
  %4 = load ptr, ptr %0, align 8, !tbaa !329
  %5 = icmp ne ptr %4, null
  %6 = icmp eq ptr %2, null
  %7 = or i1 %6, %5
  br i1 %7, label %15, label %8, !prof !1084

8:                                                ; preds = %3
  %9 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #24
  store ptr %9, ptr %0, align 8, !tbaa !329
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !343
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr nonnull align 4 %2, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @allocno_range_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 !prof !1085 !PGOFuncName !1086 {
  %3 = load ptr, ptr %0, align 8, !tbaa !329
  %4 = load ptr, ptr %1, align 8, !tbaa !329
  %5 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !343
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %14, label %7, !prof !1087

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !379
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !379
  %12 = sub i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %32, !prof !1088

14:                                               ; preds = %7, %2
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 21
  %16 = load i32, ptr %15, align 8, !tbaa !364
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 21
  %18 = load i32, ptr %17, align 8, !tbaa !364
  %19 = sub nsw i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32, !prof !1089

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 22
  %23 = load i32, ptr %22, align 4, !tbaa !365
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 22
  %25 = load i32, ptr %24, align 4, !tbaa !365
  %26 = sub nsw i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32, !prof !1090

28:                                               ; preds = %21
  %29 = load i32, ptr %3, align 8, !tbaa !344
  %30 = load i32, ptr %4, align 8, !tbaa !344
  %31 = sub nsw i32 %29, %30
  br label %32

32:                                               ; preds = %21, %14, %7, %28
  %33 = phi i32 [ %31, %28 ], [ %12, %7 ], [ %19, %14 ], [ %26, %21 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_destroy() local_unnamed_addr #0 !prof !673 {
  tail call fastcc void @finish_loop_tree_nodes() #24
  tail call fastcc void @finish_copies() #24
  tail call fastcc void @finish_allocnos() #24
  tail call fastcc void @finish_cost_vectors() #24
  tail call void @ira_finish_allocno_live_ranges() #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_loop_tree_nodes() unnamed_addr #0 !prof !673 !PGOFuncName !1091 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %3 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #24, !range !650
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5, !prof !693

5:                                                ; preds = %0, %5
  %6 = phi i32 [ %10, %5 ], [ 0, %0 ]
  %7 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  %8 = zext i32 %6 to i64
  %9 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %7, i64 %8
  tail call fastcc void @finish_loop_tree_node(ptr noundef %9) #24
  %10 = add i32 %6, 1
  %11 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %12 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %11, i32 noundef %10, ptr noundef nonnull %1) #24, !range !650
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5, !prof !1092, !llvm.loop !1093

14:                                               ; preds = %5, %0
  %15 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !329
  tail call void @ira_free(ptr noundef %15) #23
  %16 = load i32, ptr @last_basic_block_before_change, align 4, !tbaa !343
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !329
  br i1 %17, label %61, label %19, !prof !693

19:                                               ; preds = %14, %55
  %20 = phi ptr [ %56, %55 ], [ %18, %14 ]
  %21 = phi i64 [ %57, %55 ], [ 0, %14 ]
  %22 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %20, i64 %21, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !696
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !1094

25:                                               ; preds = %19
  tail call void @ira_free_bitmap(ptr noundef nonnull %23) #23
  %26 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !329
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi ptr [ %26, %25 ], [ %20, %19 ]
  %29 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %28, i64 %21, i32 13
  %30 = load ptr, ptr %29, align 8, !tbaa !695
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32, !prof !1094

32:                                               ; preds = %27
  tail call void @ira_free_bitmap(ptr noundef nonnull %30) #23
  %33 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !329
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi ptr [ %33, %32 ], [ %28, %27 ]
  %36 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %35, i64 %21, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !694
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !1094

39:                                               ; preds = %34
  tail call void @ira_free_bitmap(ptr noundef nonnull %37) #23
  %40 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !329
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi ptr [ %40, %39 ], [ %35, %34 ]
  %43 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %42, i64 %21, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !345
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !1094

46:                                               ; preds = %41
  tail call void @ira_free_bitmap(ptr noundef nonnull %44) #23
  %47 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !329
  br label %48

48:                                               ; preds = %46, %41
  %49 = phi ptr [ %47, %46 ], [ %42, %41 ]
  %50 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %49, i64 %21, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !340
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !1094

53:                                               ; preds = %48
  tail call void @ira_free(ptr noundef nonnull %51) #23
  %54 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !329
  br label %55

55:                                               ; preds = %48, %53
  %56 = phi ptr [ %49, %48 ], [ %54, %53 ]
  %57 = add nuw nsw i64 %21, 1
  %58 = load i32, ptr @last_basic_block_before_change, align 4, !tbaa !343
  %59 = zext i32 %58 to i64
  %60 = icmp ult i64 %57, %59
  br i1 %60, label %19, label %61, !prof !697, !llvm.loop !1095

61:                                               ; preds = %55, %14
  %62 = phi ptr [ %18, %14 ], [ %56, %55 ]
  tail call void @ira_free(ptr noundef %62) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_copies() unnamed_addr #0 !prof !673 !PGOFuncName !1096 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_copy_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call fastcc void @ira_copy_iter_init(ptr noundef nonnull %2) #24
  %3 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !693

5:                                                ; preds = %0, %5
  %6 = load ptr, ptr %1, align 8, !tbaa !329
  tail call fastcc void @finish_copy(ptr noundef %6) #24
  %7 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %5, !prof !1097, !llvm.loop !1098

9:                                                ; preds = %5, %0
  tail call fastcc void @VEC_ira_copy_t_heap_free() #24
  %10 = load ptr, ptr @copy_pool, align 8, !tbaa !329
  tail call void @free_alloc_pool(ptr noundef %10) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_allocnos() unnamed_addr #0 !prof !673 !PGOFuncName !1099 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #24
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !693

5:                                                ; preds = %0, %5
  %6 = load ptr, ptr %1, align 8, !tbaa !329
  tail call fastcc void @finish_allocno(ptr noundef %6) #24
  %7 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #24, !range !385
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %5, !prof !1100, !llvm.loop !1101

9:                                                ; preds = %5, %0
  %10 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !329
  tail call void @ira_free(ptr noundef %10) #23
  tail call fastcc void @VEC_ira_allocno_t_heap_free(ptr noundef nonnull @ira_conflict_id_allocno_map_vec) #24
  tail call fastcc void @VEC_ira_allocno_t_heap_free(ptr noundef nonnull @allocno_vec) #24
  %11 = load ptr, ptr @allocno_pool, align 8, !tbaa !329
  tail call void @free_alloc_pool(ptr noundef %11) #23
  %12 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !329
  tail call void @free_alloc_pool(ptr noundef %12) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_cost_vectors() unnamed_addr #0 !prof !673 !PGOFuncName !1102 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !343
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %14, !prof !686

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %10, %3 ], [ 0, %0 ]
  %5 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !343
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !329
  tail call void @free_alloc_pool(ptr noundef %9) #23
  %10 = add nuw nsw i64 %4, 1
  %11 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !343
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %3, label %14, !prof !687, !llvm.loop !1103

14:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare void @ira_finish_allocno_live_ranges() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ira_copy_t_heap_free() unnamed_addr #20 !prof !673 !PGOFuncName !1104 {
  %1 = load ptr, ptr @copy_vec, align 8, !tbaa !329
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !675

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #24
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @copy_vec, align 8, !tbaa !329
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ira_allocno_t_heap_free(ptr nocapture noundef %0) unnamed_addr #20 !prof !839 !PGOFuncName !1105 {
  %2 = load ptr, ptr %0, align 8, !tbaa !329
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !996

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !329
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
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!327}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!36 = !{ptr @ira_create_allocno, ptr @pool_alloc, i64 588954}
!37 = !{ptr @ira_create_allocno, ptr @bitmap_set_bit, i64 588954}
!38 = !{ptr @ira_create_allocno, ptr @VEC_ira_allocno_t_heap_safe_push, i64 1177908}
!39 = !{ptr @ira_create_allocno, ptr @VEC_ira_allocno_t_base_address, i64 1177908}
!40 = !{ptr @ira_create_allocno, ptr @VEC_ira_allocno_t_base_length, i64 588954}
!41 = !{ptr @VEC_ira_allocno_t_heap_safe_push, ptr @VEC_ira_allocno_t_heap_reserve, i64 1177908}
!42 = !{ptr @VEC_ira_allocno_t_heap_safe_push, ptr @VEC_ira_allocno_t_base_quick_push, i64 1177908}
!43 = !{ptr @VEC_ira_allocno_t_heap_reserve, ptr @VEC_ira_allocno_t_base_space, i64 1177908}
!44 = !{ptr @VEC_ira_allocno_t_heap_reserve, ptr @vec_heap_p_reserve, i64 99}
!45 = !{ptr @ira_allocate_allocno_conflict_vec, ptr @ira_allocate, i64 201264}
!46 = !{ptr @ira_allocate_allocno_conflicts, ptr @ira_conflict_vector_profitable_p, i64 44}
!47 = !{ptr @ira_allocate_allocno_conflicts, ptr @ira_allocate_allocno_conflict_vec, i64 13}
!48 = !{ptr @ira_allocate_allocno_conflicts, ptr @allocate_allocno_conflict_bit_vec, i64 31}
!49 = !{ptr @allocate_allocno_conflict_bit_vec, ptr @ira_allocate, i64 31}
!50 = !{ptr @ira_add_allocno_conflict, ptr @add_to_allocno_conflicts, i64 9711600}
!51 = !{ptr @add_to_allocno_conflicts, ptr @ira_allocate, i64 50473}
!52 = !{ptr @add_to_allocno_conflicts, ptr @ira_free, i64 50473}
!53 = !{ptr @ira_create_allocno_live_range, ptr @pool_alloc, i64 805160}
!54 = !{ptr @ira_copy_allocno_live_range_list, ptr @copy_allocno_live_range, i64 213742}
!55 = !{ptr @copy_allocno_live_range, ptr @pool_alloc, i64 213759}
!56 = !{ptr @ira_merge_allocno_live_ranges, ptr @ira_finish_allocno_live_range, i64 104512}
!57 = !{ptr @ira_finish_allocno_live_range, ptr @pool_free, i64 1018919}
!58 = !{ptr @ira_finish_allocno_live_range_list, ptr @ira_finish_allocno_live_range, i64 914405}
!59 = !{ptr @ira_free_allocno_updated_costs, ptr @ira_free_cost_vector, i64 481471}
!60 = !{ptr @ira_free_cost_vector, ptr @pool_free, i64 845311}
!61 = !{ptr @ira_create_copy, ptr @pool_alloc, i64 110112}
!62 = !{ptr @ira_create_copy, ptr @VEC_ira_copy_t_heap_safe_push, i64 110112}
!63 = !{ptr @ira_create_copy, ptr @VEC_ira_copy_t_base_address, i64 110112}
!64 = !{ptr @ira_create_copy, ptr @VEC_ira_copy_t_base_length, i64 110112}
!65 = !{ptr @VEC_ira_copy_t_heap_safe_push, ptr @VEC_ira_copy_t_heap_reserve, i64 110112}
!66 = !{ptr @VEC_ira_copy_t_heap_safe_push, ptr @VEC_ira_copy_t_base_quick_push, i64 110112}
!67 = !{ptr @VEC_ira_copy_t_heap_reserve, ptr @VEC_ira_copy_t_base_space, i64 110112}
!68 = !{ptr @VEC_ira_copy_t_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!69 = !{ptr @ira_add_allocno_copy, ptr @find_allocno_copy, i64 110455}
!70 = !{ptr @ira_add_allocno_copy, ptr @ira_create_copy, i64 110111}
!71 = !{ptr @ira_add_allocno_copy, ptr @ira_add_allocno_copy_to_list, i64 110111}
!72 = !{ptr @ira_add_allocno_copy, ptr @ira_swap_allocno_copy_ends_if_necessary, i64 110111}
!73 = !{ptr @find_allocno_copy, ptr @fancy_abort, i64 1}
!74 = !{ptr @ira_allocate_cost_vector, ptr @pool_alloc, i64 845311}
!75 = !{ptr @ira_traverse_loop_tree, ptr @ira_traverse_loop_tree, i64 119259}
!76 = !{ptr @ira_flattening, ptr @max_reg_num, i64 2950}
!77 = !{ptr @ira_flattening, ptr @ira_allocate, i64 1475}
!78 = !{ptr @ira_flattening, ptr @ira_allocno_iter_init, i64 4424}
!79 = !{ptr @ira_flattening, ptr @ira_allocno_iter_cond, i64 1440416}
!80 = !{ptr @ira_flattening, ptr @rhs_regno, i64 2365240}
!81 = !{ptr @ira_flattening, ptr @fprintf, i64 4}
!82 = !{ptr @ira_flattening, ptr @ira_print_live_range_list, i64 1}
!83 = !{ptr @ira_flattening, ptr @change_allocno_in_range_list, i64 91990}
!84 = !{ptr @ira_flattening, ptr @ira_merge_allocno_live_ranges, i64 91990}
!85 = !{ptr @ira_flattening, ptr @copy_info_to_removed_store_destinations, i64 509}
!86 = !{ptr @ira_flattening, ptr @ira_rebuild_start_finish_chains, i64 1474}
!87 = !{ptr @ira_flattening, ptr @clear_allocno_conflicts, i64 187857}
!88 = !{ptr @ira_flattening, ptr @sparseset_alloc, i64 1474}
!89 = !{ptr @ira_flattening, ptr @sparseset_set_bit, i64 552699}
!90 = !{ptr @ira_flattening, ptr @sparseset_iter_init, i64 552699}
!91 = !{ptr @ira_flattening, ptr @sparseset_iter_p, i64 5956025}
!92 = !{ptr @ira_flattening, ptr @sparseset_iter_elm, i64 5403326}
!93 = !{ptr @ira_flattening, ptr @ira_add_allocno_conflict, i64 4849207}
!94 = !{ptr @ira_flattening, ptr @sparseset_iter_next, i64 5403326}
!95 = !{ptr @ira_flattening, ptr @sparseset_clear_bit, i64 552701}
!96 = !{ptr @ira_flattening, ptr @free, i64 1474}
!97 = !{ptr @ira_flattening, ptr @compress_conflict_vecs, i64 1474}
!98 = !{ptr @ira_flattening, ptr @ira_copy_iter_init, i64 2950}
!99 = !{ptr @ira_flattening, ptr @ira_copy_iter_cond, i64 209680}
!100 = !{ptr @ira_flattening, ptr @finish_allocno, i64 290788}
!101 = !{ptr @ira_flattening, ptr @ira_free_allocno_updated_costs, i64 1}
!102 = !{ptr @ira_flattening, ptr @finish_copy, i64 25849}
!103 = !{ptr @ira_flattening, ptr @ira_add_allocno_copy_to_list, i64 77516}
!104 = !{ptr @ira_flattening, ptr @ira_swap_allocno_copy_ends_if_necessary, i64 77516}
!105 = !{ptr @ira_flattening, ptr @rebuild_regno_allocno_maps, i64 1475}
!106 = !{ptr @ira_flattening, ptr @ira_compress_allocno_live_ranges, i64 1474}
!107 = !{ptr @ira_flattening, ptr @ira_free, i64 1475}
!108 = !{ptr @copy_info_to_removed_store_destinations, ptr @rhs_regno, i64 9204}
!109 = !{ptr @copy_info_to_removed_store_destinations, ptr @fprintf, i64 1}
!110 = !{ptr @copy_info_to_removed_store_destinations, ptr @ira_print_live_range_list, i64 1}
!111 = !{ptr @copy_info_to_removed_store_destinations, ptr @ira_copy_allocno_live_range_list, i64 1074}
!112 = !{ptr @copy_info_to_removed_store_destinations, ptr @change_allocno_in_range_list, i64 1074}
!113 = !{ptr @copy_info_to_removed_store_destinations, ptr @ira_merge_allocno_live_ranges, i64 1074}
!114 = !{ptr @sparseset_set_bit, ptr @sparseset_bit_p, i64 553449}
!115 = !{ptr @sparseset_set_bit, ptr @sparseset_insert_bit, i64 553448}
!116 = !{ptr @compress_conflict_vecs, ptr @ira_allocate, i64 1475}
!117 = !{ptr @compress_conflict_vecs, ptr @ira_allocno_iter_init, i64 1475}
!118 = !{ptr @compress_conflict_vecs, ptr @ira_allocno_iter_cond, i64 480247}
!119 = !{ptr @compress_conflict_vecs, ptr @compress_allocno_conflict_vec, i64 169179}
!120 = !{ptr @compress_conflict_vecs, ptr @ira_free, i64 1475}
!121 = !{ptr @finish_allocno, ptr @ira_free, i64 571182}
!122 = !{ptr @finish_allocno, ptr @ira_free_cost_vector, i64 363844}
!123 = !{ptr @finish_allocno, ptr @ira_finish_allocno_live_range_list, i64 588954}
!124 = !{ptr @finish_allocno, ptr @pool_free, i64 588954}
!125 = !{ptr @finish_copy, ptr @pool_free, i64 110112}
!126 = !{ptr @rebuild_regno_allocno_maps, ptr @max_reg_num, i64 1475}
!127 = !{ptr @rebuild_regno_allocno_maps, ptr @VEC_loop_p_base_iterate, i64 15173}
!128 = !{ptr @rebuild_regno_allocno_maps, ptr @ira_free, i64 14682}
!129 = !{ptr @rebuild_regno_allocno_maps, ptr @ira_allocate, i64 14682}
!130 = !{ptr @rebuild_regno_allocno_maps, ptr @ira_allocno_iter_init, i64 1475}
!131 = !{ptr @rebuild_regno_allocno_maps, ptr @ira_allocno_iter_cond, i64 189461}
!132 = !{ptr @sparseset_bit_p, ptr @fancy_abort, i64 1}
!133 = !{ptr @ira_build, ptr @df_analyze, i64 6652}
!134 = !{ptr @ira_build, ptr @initiate_cost_vectors, i64 6652}
!135 = !{ptr @ira_build, ptr @initiate_allocnos, i64 6652}
!136 = !{ptr @ira_build, ptr @initiate_copies, i64 6652}
!137 = !{ptr @ira_build, ptr @create_loop_tree_nodes, i64 6652}
!138 = !{ptr @ira_build, ptr @form_loop_tree, i64 6652}
!139 = !{ptr @ira_build, ptr @create_allocnos, i64 6652}
!140 = !{ptr @ira_build, ptr @ira_costs, i64 6652}
!141 = !{ptr @ira_build, ptr @ira_create_allocno_live_ranges, i64 6652}
!142 = !{ptr @ira_build, ptr @remove_unnecessary_regions, i64 6653}
!143 = !{ptr @ira_build, ptr @ira_compress_allocno_live_ranges, i64 6652}
!144 = !{ptr @ira_build, ptr @update_bad_spill_attribute, i64 6652}
!145 = !{ptr @ira_build, ptr @more_one_region_p, i64 6652}
!146 = !{ptr @ira_build, ptr @propagate_allocno_info, i64 1476}
!147 = !{ptr @ira_build, ptr @create_caps, i64 1476}
!148 = !{ptr @ira_build, ptr @ira_tune_allocno_costs_and_cover_classes, i64 6652}
!149 = !{ptr @ira_build, ptr @setup_min_max_allocno_live_range_point, i64 6652}
!150 = !{ptr @ira_build, ptr @sort_conflict_id_allocno_map, i64 6652}
!151 = !{ptr @ira_build, ptr @setup_min_max_conflict_allocno_ids, i64 6652}
!152 = !{ptr @ira_build, ptr @ira_build_conflicts, i64 6652}
!153 = !{ptr @ira_build, ptr @ira_allocno_iter_init, i64 3}
!154 = !{ptr @ira_build, ptr @ira_allocno_iter_cond, i64 63}
!155 = !{ptr @ira_build, ptr @print_copies, i64 1}
!156 = !{ptr @ira_build, ptr @VEC_loop_p_base_length, i64 1}
!157 = !{ptr @ira_build, ptr @fprintf, i64 2}
!158 = !{ptr @initiate_cost_vectors, ptr @create_alloc_pool, i64 13303}
!159 = !{ptr @initiate_allocnos, ptr @create_alloc_pool, i64 13304}
!160 = !{ptr @initiate_allocnos, ptr @max_reg_num, i64 26608}
!161 = !{ptr @initiate_allocnos, ptr @VEC_ira_allocno_t_heap_alloc, i64 13304}
!162 = !{ptr @initiate_allocnos, ptr @ira_allocate, i64 6652}
!163 = !{ptr @initiate_copies, ptr @create_alloc_pool, i64 6652}
!164 = !{ptr @initiate_copies, ptr @get_max_uid, i64 6652}
!165 = !{ptr @initiate_copies, ptr @VEC_ira_copy_t_heap_alloc, i64 6652}
!166 = !{ptr @create_loop_tree_nodes, ptr @ira_allocate, i64 33959}
!167 = !{ptr @create_loop_tree_nodes, ptr @VEC_loop_p_base_length, i64 6652}
!168 = !{ptr @create_loop_tree_nodes, ptr @max_reg_num, i64 6652}
!169 = !{ptr @create_loop_tree_nodes, ptr @VEC_loop_p_base_iterate, i64 27308}
!170 = !{ptr @create_loop_tree_nodes, ptr @ei_start_1, i64 14003}
!171 = !{ptr @create_loop_tree_nodes, ptr @ei_cond, i64 43756}
!172 = !{ptr @create_loop_tree_nodes, ptr @VEC_edge_base_length, i64 2}
!173 = !{ptr @create_loop_tree_nodes, ptr @ei_next, i64 29753}
!174 = !{ptr @create_loop_tree_nodes, ptr @get_loop_exit_edges, i64 14003}
!175 = !{ptr @create_loop_tree_nodes, ptr @VEC_edge_base_iterate, i64 44185}
!176 = !{ptr @create_loop_tree_nodes, ptr @VEC_edge_heap_free, i64 14003}
!177 = !{ptr @create_loop_tree_nodes, ptr @ira_allocate_bitmap, i64 82620}
!178 = !{ptr @form_loop_tree, ptr @VEC_loop_p_base_iterate, i64 27308}
!179 = !{ptr @form_loop_tree, ptr @loop_outer, i64 1}
!180 = !{ptr @form_loop_tree, ptr @add_loop_to_tree, i64 257136}
!181 = !{ptr @form_loop_tree, ptr @setup_loop_tree_level, i64 6652}
!182 = !{ptr @create_allocnos, ptr @ira_traverse_loop_tree, i64 13303}
!183 = !{ptr @remove_unnecessary_regions, ptr @mark_all_loops_for_removal, i64 1}
!184 = !{ptr @remove_unnecessary_regions, ptr @mark_loops_for_removal, i64 6651}
!185 = !{ptr @remove_unnecessary_regions, ptr @VEC_loop_p_base_length, i64 13304}
!186 = !{ptr @remove_unnecessary_regions, ptr @VEC_ira_loop_tree_node_t_heap_alloc, i64 13304}
!187 = !{ptr @remove_unnecessary_regions, ptr @remove_uneccesary_loop_nodes_from_loop_tree, i64 6652}
!188 = !{ptr @remove_unnecessary_regions, ptr @VEC_ira_loop_tree_node_t_heap_free, i64 13304}
!189 = !{ptr @remove_unnecessary_regions, ptr @remove_low_level_allocnos, i64 1}
!190 = !{ptr @remove_unnecessary_regions, ptr @remove_unnecessary_allocnos, i64 6651}
!191 = !{ptr @remove_unnecessary_regions, ptr @VEC_ira_loop_tree_node_t_base_length, i64 8918}
!192 = !{ptr @remove_unnecessary_regions, ptr @VEC_ira_loop_tree_node_t_base_pop, i64 2266}
!193 = !{ptr @remove_unnecessary_regions, ptr @finish_loop_tree_node, i64 2266}
!194 = !{ptr @update_bad_spill_attribute, ptr @bitmap_initialize_stat, i64 13303}
!195 = !{ptr @update_bad_spill_attribute, ptr @ira_allocno_iter_init, i64 13304}
!196 = !{ptr @update_bad_spill_attribute, ptr @ira_allocno_iter_cond, i64 771996}
!197 = !{ptr @update_bad_spill_attribute, ptr @bitmap_set_bit, i64 524453}
!198 = !{ptr @update_bad_spill_attribute, ptr @bitmap_bit_p, i64 144916}
!199 = !{ptr @update_bad_spill_attribute, ptr @bitmap_clear, i64 13303}
!200 = !{ptr @more_one_region_p, ptr @VEC_loop_p_base_iterate, i64 16221}
!201 = !{ptr @propagate_allocno_info, ptr @max_reg_num, i64 1474}
!202 = !{ptr @propagate_allocno_info, ptr @bitmap_bit_p, i64 125760}
!203 = !{ptr @propagate_allocno_info, ptr @ira_allocate_and_accumulate_costs, i64 251350}
!204 = !{ptr @create_caps, ptr @ira_allocno_iter_init, i64 1475}
!205 = !{ptr @create_caps, ptr @ira_allocno_iter_cond, i64 480203}
!206 = !{ptr @create_caps, ptr @bitmap_bit_p, i64 213254}
!207 = !{ptr @create_caps, ptr @create_cap_allocno, i64 198795}
!208 = !{ptr @setup_min_max_allocno_live_range_point, ptr @ira_allocno_iter_init, i64 6652}
!209 = !{ptr @setup_min_max_allocno_live_range_point, ptr @ira_allocno_iter_cond, i64 584898}
!210 = !{ptr @setup_min_max_allocno_live_range_point, ptr @max_reg_num, i64 6652}
!211 = !{ptr @sort_conflict_id_allocno_map, ptr @ira_allocno_iter_init, i64 6652}
!212 = !{ptr @sort_conflict_id_allocno_map, ptr @ira_allocno_iter_cond, i64 584898}
!213 = !{ptr @sort_conflict_id_allocno_map, ptr @spec_qsort, i64 6652}
!214 = !{ptr @setup_min_max_conflict_allocno_ids, ptr @ira_allocate, i64 13304}
!215 = !{ptr @setup_min_max_conflict_allocno_ids, ptr @ira_free, i64 13304}
!216 = !{ptr @VEC_ira_allocno_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 13304}
!217 = !{ptr @VEC_ira_copy_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 6652}
!218 = !{ptr @ei_cond, ptr @ei_end_p, i64 87532}
!219 = !{ptr @ei_cond, ptr @ei_edge, i64 59520}
!220 = !{ptr @ei_next, ptr @ei_container, i64 119039}
!221 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 59520}
!222 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!223 = !{ptr @VEC_edge_heap_free, ptr @free, i64 28001}
!224 = !{ptr @ei_end_p, ptr @ei_container, i64 175063}
!225 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 87532}
!226 = !{ptr @ei_edge, ptr @ei_container, i64 119039}
!227 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 59520}
!228 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!229 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 763400}
!230 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 499574}
!231 = !{ptr @add_loop_to_tree, ptr @loop_outer, i64 520618}
!232 = !{ptr @add_loop_to_tree, ptr @add_loop_to_tree, i64 242784}
!233 = !{ptr @setup_loop_tree_level, ptr @setup_loop_tree_level, i64 14006}
!234 = !{ptr @create_loop_tree_node_allocnos, ptr @create_bb_allocnos, i64 257173}
!235 = !{ptr @create_loop_tree_node_allocnos, ptr @ei_start_1, i64 14006}
!236 = !{ptr @create_loop_tree_node_allocnos, ptr @ei_cond, i64 43765}
!237 = !{ptr @create_loop_tree_node_allocnos, ptr @create_loop_allocnos, i64 46462}
!238 = !{ptr @create_loop_tree_node_allocnos, ptr @ei_next, i64 29759}
!239 = !{ptr @create_loop_tree_node_allocnos, ptr @get_loop_exit_edges, i64 14006}
!240 = !{ptr @create_loop_tree_node_allocnos, ptr @VEC_edge_base_iterate, i64 44194}
!241 = !{ptr @create_loop_tree_node_allocnos, ptr @VEC_edge_heap_free, i64 14006}
!242 = !{ptr @propagate_modified_regnos, ptr @bitmap_ior_into, i64 14006}
!243 = !{ptr @create_bb_allocnos, ptr @create_insn_allocnos, i64 1071363}
!244 = !{ptr @create_bb_allocnos, ptr @df_lr_get_bb_info, i64 257174}
!245 = !{ptr @create_bb_allocnos, ptr @bmp_iter_set_init, i64 257174}
!246 = !{ptr @create_bb_allocnos, ptr @bmp_iter_set, i64 2003465}
!247 = !{ptr @create_bb_allocnos, ptr @ira_create_allocno, i64 9410}
!248 = !{ptr @create_bb_allocnos, ptr @bmp_iter_next, i64 1746291}
!249 = !{ptr @create_loop_allocnos, ptr @df_lr_get_bb_info, i64 92926}
!250 = !{ptr @create_loop_allocnos, ptr @bmp_iter_set_init, i64 46463}
!251 = !{ptr @create_loop_allocnos, ptr @bmp_iter_set, i64 540979}
!252 = !{ptr @create_loop_allocnos, ptr @bitmap_bit_p, i64 494516}
!253 = !{ptr @create_loop_allocnos, ptr @ira_create_allocno, i64 136423}
!254 = !{ptr @create_loop_allocnos, ptr @bitmap_set_bit, i64 323406}
!255 = !{ptr @create_loop_allocnos, ptr @bmp_iter_next, i64 494516}
!256 = !{ptr @create_insn_allocnos, ptr @rhs_regno, i64 6014088}
!257 = !{ptr @create_insn_allocnos, ptr @ira_create_allocno, i64 848603}
!258 = !{ptr @create_insn_allocnos, ptr @bitmap_set_bit, i64 1258381}
!259 = !{ptr @create_insn_allocnos, ptr @create_insn_allocnos, i64 13020546}
!260 = !{ptr @mark_loops_for_removal, ptr @VEC_loop_p_base_length, i64 6652}
!261 = !{ptr @mark_loops_for_removal, ptr @ira_allocate, i64 6652}
!262 = !{ptr @mark_loops_for_removal, ptr @VEC_loop_p_base_iterate, i64 27308}
!263 = !{ptr @mark_loops_for_removal, ptr @low_pressure_loop_node_p, i64 15946}
!264 = !{ptr @mark_loops_for_removal, ptr @spec_qsort, i64 6652}
!265 = !{ptr @mark_loops_for_removal, ptr @loop_depth, i64 1}
!266 = !{ptr @mark_loops_for_removal, ptr @fprintf, i64 1}
!267 = !{ptr @mark_loops_for_removal, ptr @ira_free, i64 6652}
!268 = !{ptr @VEC_ira_loop_tree_node_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 13304}
!269 = !{ptr @remove_uneccesary_loop_nodes_from_loop_tree, ptr @VEC_ira_loop_tree_node_t_heap_safe_push, i64 277820}
!270 = !{ptr @remove_uneccesary_loop_nodes_from_loop_tree, ptr @VEC_ira_loop_tree_node_t_base_length, i64 307940}
!271 = !{ptr @remove_uneccesary_loop_nodes_from_loop_tree, ptr @remove_uneccesary_loop_nodes_from_loop_tree, i64 14006}
!272 = !{ptr @remove_uneccesary_loop_nodes_from_loop_tree, ptr @VEC_ira_loop_tree_node_t_base_pop, i64 268890}
!273 = !{ptr @VEC_ira_loop_tree_node_t_heap_free, ptr @free, i64 13303}
!274 = !{ptr @remove_unnecessary_allocnos, ptr @max_reg_num, i64 6652}
!275 = !{ptr @remove_unnecessary_allocnos, ptr @bitmap_set_bit, i64 9769}
!276 = !{ptr @remove_unnecessary_allocnos, ptr @change_allocno_in_range_list, i64 9499}
!277 = !{ptr @remove_unnecessary_allocnos, ptr @ira_merge_allocno_live_ranges, i64 9499}
!278 = !{ptr @remove_unnecessary_allocnos, ptr @propagate_some_info_from_allocno, i64 9499}
!279 = !{ptr @remove_unnecessary_allocnos, ptr @finish_allocno, i64 9499}
!280 = !{ptr @remove_unnecessary_allocnos, ptr @ira_allocate, i64 944}
!281 = !{ptr @remove_unnecessary_allocnos, ptr @ira_rebuild_regno_allocno_list, i64 8691}
!282 = !{ptr @remove_unnecessary_allocnos, ptr @ira_rebuild_start_finish_chains, i64 1141}
!283 = !{ptr @remove_unnecessary_allocnos, ptr @ira_free, i64 944}
!284 = !{ptr @finish_loop_tree_node, ptr @ira_free_bitmap, i64 81324}
!285 = !{ptr @finish_loop_tree_node, ptr @ira_free, i64 20331}
!286 = !{ptr @loop_depth, ptr @VEC_loop_p_base_length, i64 22858}
!287 = !{ptr @loop_compare_func, ptr @loop_depth, i64 22858}
!288 = !{ptr @VEC_ira_loop_tree_node_t_heap_safe_push, ptr @VEC_ira_loop_tree_node_t_heap_reserve, i64 277832}
!289 = !{ptr @VEC_ira_loop_tree_node_t_heap_safe_push, ptr @VEC_ira_loop_tree_node_t_base_quick_push, i64 277832}
!290 = !{ptr @VEC_ira_loop_tree_node_t_heap_reserve, ptr @VEC_ira_loop_tree_node_t_base_space, i64 277832}
!291 = !{ptr @VEC_ira_loop_tree_node_t_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!292 = !{ptr @propagate_some_info_from_allocno, ptr @ira_allocate_and_accumulate_costs, i64 21156}
!293 = !{ptr @ira_allocate_and_accumulate_costs, ptr @ira_allocate_cost_vector, i64 3510}
!294 = !{ptr @ira_rebuild_regno_allocno_list, ptr @spec_qsort, i64 8691}
!295 = !{ptr @ira_rebuild_regno_allocno_list, ptr @fprintf, i64 1}
!296 = !{ptr @regno_allocno_order_compare_func, ptr @loop_is_inside_p, i64 23758}
!297 = !{ptr @create_cap_allocno, ptr @ira_create_allocno, i64 198930}
!298 = !{ptr @create_cap_allocno, ptr @ira_set_allocno_cover_class, i64 198930}
!299 = !{ptr @create_cap_allocno, ptr @ira_allocate_and_copy_costs, i64 397860}
!300 = !{ptr @create_cap_allocno, ptr @fwrite, i64 1}
!301 = !{ptr @create_cap_allocno, ptr @ira_print_expanded_allocno, i64 1}
!302 = !{ptr @create_cap_allocno, ptr @fputc, i64 1}
!303 = !{ptr @ira_allocate_and_copy_costs, ptr @ira_allocate_cost_vector, i64 72578}
!304 = !{ptr @ira_destroy, ptr @finish_loop_tree_nodes, i64 6652}
!305 = !{ptr @ira_destroy, ptr @finish_copies, i64 6652}
!306 = !{ptr @ira_destroy, ptr @finish_allocnos, i64 6652}
!307 = !{ptr @ira_destroy, ptr @finish_cost_vectors, i64 6652}
!308 = !{ptr @ira_destroy, ptr @ira_finish_allocno_live_ranges, i64 6652}
!309 = !{ptr @finish_loop_tree_nodes, ptr @VEC_loop_p_base_iterate, i64 26972}
!310 = !{ptr @finish_loop_tree_nodes, ptr @finish_loop_tree_node, i64 20320}
!311 = !{ptr @finish_loop_tree_nodes, ptr @ira_free, i64 13305}
!312 = !{ptr @finish_loop_tree_nodes, ptr @ira_free_bitmap, i64 4}
!313 = !{ptr @finish_copies, ptr @ira_copy_iter_init, i64 6652}
!314 = !{ptr @finish_copies, ptr @ira_copy_iter_cond, i64 90886}
!315 = !{ptr @finish_copies, ptr @finish_copy, i64 84234}
!316 = !{ptr @finish_copies, ptr @VEC_ira_copy_t_heap_free, i64 6652}
!317 = !{ptr @finish_copies, ptr @free_alloc_pool, i64 6652}
!318 = !{ptr @finish_allocnos, ptr @ira_allocno_iter_init, i64 6652}
!319 = !{ptr @finish_allocnos, ptr @ira_allocno_iter_cond, i64 294002}
!320 = !{ptr @finish_allocnos, ptr @finish_allocno, i64 287350}
!321 = !{ptr @finish_allocnos, ptr @ira_free, i64 6652}
!322 = !{ptr @finish_allocnos, ptr @VEC_ira_allocno_t_heap_free, i64 13304}
!323 = !{ptr @finish_allocnos, ptr @free_alloc_pool, i64 13304}
!324 = !{ptr @finish_cost_vectors, ptr @free_alloc_pool, i64 13303}
!325 = !{ptr @VEC_ira_copy_t_heap_free, ptr @free, i64 6651}
!326 = !{ptr @VEC_ira_allocno_t_heap_free, ptr @free, i64 13303}
!327 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!328 = !{!"function_entry_count", i64 588954}
!329 = !{!330, !330, i64 0}
!330 = !{!"any pointer", !331, i64 0}
!331 = !{!"omnipotent char", !332, i64 0}
!332 = !{!"Simple C/C++ TBAA"}
!333 = !{!334, !335, i64 4}
!334 = !{!"ira_allocno", !335, i64 0, !335, i64 4, !335, i64 8, !335, i64 12, !330, i64 16, !330, i64 24, !330, i64 32, !335, i64 40, !335, i64 44, !335, i64 48, !335, i64 52, !335, i64 56, !335, i64 60, !335, i64 64, !335, i64 68, !330, i64 72, !330, i64 80, !330, i64 88, !330, i64 96, !330, i64 104, !330, i64 112, !335, i64 120, !335, i64 124, !330, i64 128, !335, i64 136, !335, i64 140, !336, i64 144, !336, i64 152, !335, i64 160, !335, i64 164, !335, i64 168, !335, i64 172, !335, i64 172, !335, i64 172, !335, i64 172, !335, i64 172, !335, i64 172, !335, i64 172, !335, i64 172, !335, i64 173, !335, i64 173, !335, i64 173, !335, i64 173, !330, i64 176, !330, i64 184, !330, i64 192, !330, i64 200, !330, i64 208, !335, i64 216, !335, i64 220, !330, i64 224, !330, i64 232, !335, i64 240}
!335 = !{!"int", !331, i64 0}
!336 = !{!"long", !331, i64 0}
!337 = !{!334, !330, i64 32}
!338 = !{!"branch_weights", i32 390025, i32 198931}
!339 = !{!334, !330, i64 24}
!340 = !{!341, !330, i64 64}
!341 = !{!"ira_loop_tree_node", !330, i64 0, !330, i64 8, !330, i64 16, !330, i64 24, !330, i64 32, !330, i64 40, !330, i64 48, !335, i64 56, !331, i64 60, !330, i64 64, !331, i64 72, !331, i64 76, !330, i64 184, !330, i64 192, !330, i64 200, !330, i64 208}
!342 = !{!"branch_weights", i32 389981, i32 45}
!343 = !{!335, !335, i64 0}
!344 = !{!334, !335, i64 0}
!345 = !{!341, !330, i64 184}
!346 = !{!334, !330, i64 128}
!347 = !{!334, !335, i64 160}
!348 = !{!336, !336, i64 0}
!349 = !{!334, !336, i64 144}
!350 = !{!334, !336, i64 152}
!351 = !{!334, !335, i64 40}
!352 = !{!334, !335, i64 44}
!353 = !{!334, !335, i64 12}
!354 = !{!334, !335, i64 164}
!355 = !{!334, !335, i64 168}
!356 = !{!334, !330, i64 176}
!357 = !{!"branch_weights", i32 1, i32 588955}
!358 = !{!334, !335, i64 8}
!359 = !{!334, !330, i64 72}
!360 = !{!334, !335, i64 216}
!361 = !{!334, !330, i64 96}
!362 = !{!334, !330, i64 104}
!363 = !{!334, !330, i64 112}
!364 = !{!334, !335, i64 120}
!365 = !{!334, !335, i64 124}
!366 = !{!334, !335, i64 136}
!367 = !{!"function_entry_count", i64 1177908}
!368 = !{!"ira-build.c:VEC_ira_allocno_t_heap_safe_push"}
!369 = !{!"ira-build.c:VEC_ira_allocno_t_base_address"}
!370 = !{!"branch_weights", i32 1, i32 1177909}
!371 = !{!"ira-build.c:VEC_ira_allocno_t_base_length"}
!372 = !{!373, !335, i64 0}
!373 = !{!"VEC_ira_allocno_t_base", !335, i64 0, !335, i64 4, !331, i64 8}
!374 = !{!"ira-build.c:VEC_ira_allocno_t_heap_reserve"}
!375 = !{!"branch_weights", i32 99, i32 1177811}
!376 = !{!"ira-build.c:VEC_ira_allocno_t_base_quick_push"}
!377 = !{!"ira-build.c:VEC_ira_allocno_t_base_space"}
!378 = !{!373, !335, i64 4}
!379 = !{!334, !335, i64 48}
!380 = !{!"function_entry_count", i64 578376}
!381 = !{!"branch_weights", i32 7194, i32 571184}
!382 = !{!"function_entry_count", i64 201264}
!383 = !{!334, !335, i64 140}
!384 = !{!"function_entry_count", i64 44}
!385 = !{i8 0, i8 2}
!386 = !{!"branch_weights", i32 32, i32 14}
!387 = !{!"function_entry_count", i64 31}
!388 = !{!"ira-build.c:allocate_allocno_conflict_bit_vec"}
!389 = !{!"function_entry_count", i64 4855800}
!390 = !{!"function_entry_count", i64 9711600}
!391 = !{!"ira-build.c:add_to_allocno_conflicts"}
!392 = !{!"branch_weights", i32 8210491, i32 1501111}
!393 = !{!"branch_weights", i32 50345, i32 1450767}
!394 = !{!"branch_weights", i32 1, i32 8210491}
!395 = !{!"branch_weights", i32 439, i32 8210053}
!396 = !{!"branch_weights", i32 127, i32 313}
!397 = !{!"function_entry_count", i64 0}
!398 = !{!341, !330, i64 0}
!399 = !{!341, !330, i64 8}
!400 = !{!334, !330, i64 88}
!401 = !{!"function_entry_count", i64 805160}
!402 = !{!403, !330, i64 0}
!403 = !{!"ira_allocno_live_range", !330, i64 0, !335, i64 8, !335, i64 12, !330, i64 16, !330, i64 24, !330, i64 32}
!404 = !{!403, !335, i64 8}
!405 = !{!403, !335, i64 12}
!406 = !{!403, !330, i64 16}
!407 = !{!"function_entry_count", i64 24200}
!408 = !{!"branch_weights", i32 1, i32 24201}
!409 = !{!"branch_weights", i32 24201, i32 189560}
!410 = !{!"branch_weights", i32 24201, i32 189559}
!411 = distinct !{!411, !412}
!412 = !{!"llvm.loop.mustprogress"}
!413 = !{!"function_entry_count", i64 213759}
!414 = !{!"ira-build.c:copy_allocno_live_range"}
!415 = !{i64 0, i64 8, !329, i64 8, i64 4, !343, i64 12, i64 4, !343, i64 16, i64 8, !329, i64 24, i64 8, !329, i64 32, i64 8, !329}
!416 = !{!"function_entry_count", i64 126832}
!417 = !{!"branch_weights", i32 12146, i32 114688}
!418 = !{!"branch_weights", i32 41, i32 114648}
!419 = !{!"branch_weights", i32 339848, i32 1687619}
!420 = !{!"branch_weights", i32 1922952, i32 104515}
!421 = !{!"branch_weights", i32 1, i32 104515}
!422 = !{!"branch_weights", i32 84460, i32 20056}
!423 = !{!"branch_weights", i32 113330, i32 1809623}
!424 = !{!"branch_weights", i32 197275, i32 1725678}
!425 = !{!"branch_weights", i32 2071588, i32 70526}
!426 = !{!"branch_weights", i32 1912818, i32 114648}
!427 = distinct !{!427, !412}
!428 = !{!"branch_weights", i32 44123, i32 70526}
!429 = !{!"branch_weights", i32 1319, i32 42805}
!430 = !{!"branch_weights", i32 70526, i32 1}
!431 = !{!"branch_weights", i32 1, i32 70526}
!432 = !{!"function_entry_count", i64 1018919}
!433 = !{!"function_entry_count", i64 247486}
!434 = !{!"branch_weights", i32 104329, i32 1}
!435 = !{!"branch_weights", i32 1945934, i32 1517583}
!436 = !{!"branch_weights", i32 1374426, i32 143158}
!437 = !{!"branch_weights", i32 3515713, i32 52133}
!438 = !{!"branch_weights", i32 3359187, i32 104329}
!439 = distinct !{!439, !412}
!440 = !{!"branch_weights", i32 263503, i32 914406}
!441 = !{!"branch_weights", i32 914406, i32 0}
!442 = distinct !{!442, !412}
!443 = !{!"function_entry_count", i64 901481}
!444 = !{!334, !330, i64 192}
!445 = !{!"branch_weights", i32 563577, i32 337906}
!446 = !{!334, !330, i64 208}
!447 = !{!"branch_weights", i32 757917, i32 143566}
!448 = !{!"function_entry_count", i64 845311}
!449 = !{!"function_entry_count", i64 110112}
!450 = !{!451, !335, i64 0}
!451 = !{!"ira_allocno_copy", !335, i64 0, !330, i64 8, !330, i64 16, !335, i64 24, !331, i64 28, !330, i64 32, !330, i64 40, !330, i64 48, !330, i64 56, !330, i64 64, !330, i64 72}
!452 = !{!451, !330, i64 8}
!453 = !{!451, !330, i64 16}
!454 = !{!451, !335, i64 24}
!455 = !{!451, !331, i64 28}
!456 = !{!451, !330, i64 32}
!457 = !{!451, !330, i64 72}
!458 = !{!"ira-build.c:VEC_ira_copy_t_heap_safe_push"}
!459 = !{!"ira-build.c:VEC_ira_copy_t_base_address"}
!460 = !{!"branch_weights", i32 1, i32 110113}
!461 = !{!"ira-build.c:VEC_ira_copy_t_base_length"}
!462 = !{!463, !335, i64 0}
!463 = !{!"VEC_ira_copy_t_base", !335, i64 0, !335, i64 4, !331, i64 8}
!464 = !{!"ira-build.c:VEC_ira_copy_t_heap_reserve"}
!465 = !{!"ira-build.c:VEC_ira_copy_t_base_quick_push"}
!466 = !{!"ira-build.c:VEC_ira_copy_t_base_space"}
!467 = !{!463, !335, i64 4}
!468 = !{!"function_entry_count", i64 187680}
!469 = !{!451, !330, i64 40}
!470 = !{!451, !330, i64 56}
!471 = !{!451, !330, i64 48}
!472 = !{!"branch_weights", i32 94944, i32 92738}
!473 = !{!"branch_weights", i32 54859, i32 37880}
!474 = !{!451, !330, i64 64}
!475 = !{!"branch_weights", i32 126081, i32 61601}
!476 = !{!"branch_weights", i32 28732, i32 32870}
!477 = !{!"branch_weights", i32 46207, i32 141475}
!478 = !{!"function_entry_count", i64 110455}
!479 = !{!"branch_weights", i32 110113, i32 344}
!480 = !{!"ira-build.c:find_allocno_copy"}
!481 = !{!"branch_weights", i32 1, i32 110112}
!482 = !{!"branch_weights", i32 109827, i32 61702}
!483 = !{!"branch_weights", i32 61702, i32 1}
!484 = !{!"branch_weights", i32 51884, i32 119645}
!485 = !{!"branch_weights", i32 344, i32 51541}
!486 = !{!"branch_weights", i32 344, i32 1}
!487 = !{!"branch_weights", i32 110112, i32 61416}
!488 = distinct !{!488, !412}
!489 = !{!"ira-build.c:print_copy"}
!490 = !{!"ira-build.c:print_copies"}
!491 = distinct !{!491, !412}
!492 = !{!"function_entry_count", i64 9602}
!493 = !{!"ira-build.c:ira_copy_iter_init"}
!494 = !{!495, !335, i64 0}
!495 = !{!"", !335, i64 0}
!496 = !{!"function_entry_count", i64 300716}
!497 = !{!"ira-build.c:ira_copy_iter_cond"}
!498 = !{!"branch_weights", i32 9602, i32 1}
!499 = !{!"branch_weights", i32 25867, i32 291115}
!500 = !{!"branch_weights", i32 9602, i32 307379}
!501 = distinct !{!501, !412}
!502 = !{!"ira-build.c:print_allocno_copies"}
!503 = distinct !{!503, !412}
!504 = !{!"function_entry_count", i64 173950}
!505 = !{!"branch_weights", i32 59710, i32 114242}
!506 = !{!"branch_weights", i32 39052, i32 134900}
!507 = !{!"branch_weights", i32 1, i32 134899}
!508 = !{!"branch_weights", i32 93513, i32 1698453}
!509 = !{!"branch_weights", i32 514349, i32 1184105}
!510 = !{!"branch_weights", i32 1184105, i32 514349}
!511 = !{!"branch_weights", i32 134899, i32 1657066}
!512 = distinct !{!512, !412}
!513 = !{!"branch_weights", i32 54691, i32 119260}
!514 = !{!"branch_weights", i32 119260, i32 0}
!515 = distinct !{!515, !412}
!516 = !{!"branch_weights", i32 114242, i32 59710}
!517 = !{!"function_entry_count", i64 1475}
!518 = !{!"branch_weights", i32 1, i32 1475}
!519 = !{!"branch_weights", i32 1475, i32 1}
!520 = !{!"branch_weights", i32 280167, i32 198931}
!521 = !{!"branch_weights", i32 1475, i32 477622}
!522 = distinct !{!522, !412}
!523 = !{!"branch_weights", i32 383881, i32 280167}
!524 = !{!"branch_weights", i32 125816, i32 154352}
!525 = !{!334, !330, i64 80}
!526 = !{!"branch_weights", i32 192613, i32 87555}
!527 = !{!341, !330, i64 48}
!528 = !{!"branch_weights", i32 66732, i32 125882}
!529 = !{!"branch_weights", i32 3, i32 125880}
!530 = !{!334, !330, i64 16}
!531 = !{!"branch_weights", i32 125179, i32 702}
!532 = !{!"branch_weights", i32 92055, i32 33826}
!533 = !{!334, !330, i64 184}
!534 = !{!334, !330, i64 200}
!535 = !{!"branch_weights", i32 92055, i32 1}
!536 = !{!"branch_weights", i32 46027, i32 -57859756}
!537 = !{!"branch_weights", i32 90199, i32 1857}
!538 = !{!334, !335, i64 68}
!539 = !{!"branch_weights", i32 25811, i32 20755}
!540 = !{!"branch_weights", i32 430749270, i32 41510}
!541 = !{!"branch_weights", i32 20754, i32 103771}
!542 = distinct !{!542, !412}
!543 = !{!"branch_weights", i32 42858, i32 3708}
!544 = !{!"branch_weights", i32 13745556, i32 7416}
!545 = !{!"branch_weights", i32 3707, i32 18536}
!546 = distinct !{!546, !412}
!547 = !{!334, !335, i64 52}
!548 = !{!334, !335, i64 60}
!549 = !{!"branch_weights", i32 30660, i32 15906}
!550 = !{!"branch_weights", i32 17921, i32 12740}
!551 = !{!"branch_weights", i32 1, i32 12740}
!552 = !{!"branch_weights", i32 280167, i32 0}
!553 = distinct !{!553, !412}
!554 = !{!"branch_weights", i32 2143582163, i32 3901485}
!555 = !{!"branch_weights", i32 1, i32 509}
!556 = !{!"branch_weights", i32 662573, i32 1475}
!557 = distinct !{!557, !412}
!558 = !{!"branch_weights", i32 97, i32 144649}
!559 = !{!"branch_weights", i32 1, i32 1476}
!560 = !{!"branch_weights", i32 188113, i32 290985}
!561 = !{!"branch_weights", i32 188113, i32 1}
!562 = distinct !{!562, !412}
!563 = !{!"branch_weights", i32 8709, i32 553450}
!564 = !{!"branch_weights", i32 553450, i32 1}
!565 = !{!"branch_weights", i32 1, i32 553449}
!566 = !{!331, !331, i64 0}
!567 = !{!"branch_weights", i32 366387545, i32 -1088638981}
!568 = !{!"branch_weights", i32 553449, i32 4857223}
!569 = distinct !{!569, !412}
!570 = !{!"branch_weights", i32 553450, i32 0}
!571 = distinct !{!571, !412}
!572 = distinct !{!572, !412}
!573 = !{!"branch_weights", i32 560684, i32 1475}
!574 = distinct !{!574, !412}
!575 = !{!"branch_weights", i32 78455, i32 24981}
!576 = !{!"branch_weights", i32 77587, i32 869}
!577 = !{!"branch_weights", i32 25849, i32 668196651}
!578 = !{!"branch_weights", i32 1475, i32 101960}
!579 = distinct !{!579, !412}
!580 = !{!"branch_weights", i32 59394, i32 18194}
!581 = !{!"branch_weights", i32 18178, i32 17}
!582 = !{!"branch_weights", i32 2147247251, i32 236397}
!583 = !{!"branch_weights", i32 19, i32 381}
!584 = !{!"branch_weights", i32 9093, i32 -1648949759}
!585 = distinct !{!585, !412}
!586 = !{!334, !335, i64 64}
!587 = !{!334, !335, i64 56}
!588 = !{!"branch_weights", i32 1, i32 188113}
!589 = !{!"branch_weights", i32 25867, i32 77569}
!590 = distinct !{!590, !412}
!591 = !{!"function_entry_count", i64 42110}
!592 = !{!"ira-build.c:ira_allocno_iter_init"}
!593 = !{!"function_entry_count", i64 4828518}
!594 = !{!"ira-build.c:ira_allocno_iter_cond"}
!595 = !{!"branch_weights", i32 42110, i32 1}
!596 = !{!"branch_weights", i32 665459, i32 4786409}
!597 = !{!"branch_weights", i32 42110, i32 5409757}
!598 = distinct !{!598, !412}
!599 = !{!"function_entry_count", i64 4106600}
!600 = !{!"ira-build.c:rhs_regno"}
!601 = !{!"function_entry_count", i64 103550}
!602 = !{!"ira-build.c:change_allocno_in_range_list"}
!603 = !{!"branch_weights", i32 1, i32 103550}
!604 = !{!"branch_weights", i32 103550, i32 350732}
!605 = distinct !{!605, !412}
!606 = !{!"function_entry_count", i64 508}
!607 = !{!"ira-build.c:copy_info_to_removed_store_destinations"}
!608 = !{!"branch_weights", i32 1, i32 508}
!609 = !{!"branch_weights", i32 1713, i32 4571}
!610 = !{!"branch_weights", i32 1, i32 625}
!611 = !{!"branch_weights", i32 170, i32 2507}
!612 = !{!"branch_weights", i32 1904, i32 604}
!613 = !{!"branch_weights", i32 986, i32 919}
!614 = !{!"branch_weights", i32 625, i32 2051}
!615 = distinct !{!615, !412}
!616 = !{!"branch_weights", i32 919, i32 845481}
!617 = !{!"branch_weights", i32 919, i32 1}
!618 = !{!"branch_weights", i32 508, i32 5775}
!619 = distinct !{!619, !412}
!620 = !{!"function_entry_count", i64 188112}
!621 = !{!"ira-build.c:clear_allocno_conflicts"}
!622 = !{!"branch_weights", i32 135447, i32 52667}
!623 = !{!"branch_weights", i32 223, i32 135225}
!624 = !{!"function_entry_count", i64 553449}
!625 = !{!"ira-build.c:sparseset_set_bit"}
!626 = !{!627, !335, i64 16}
!627 = !{!"sparseset_def", !330, i64 0, !330, i64 8, !335, i64 16, !335, i64 20, !335, i64 24, !331, i64 28, !331, i64 29, !331, i64 32}
!628 = !{!"ira-build.c:sparseset_iter_init"}
!629 = !{!627, !335, i64 24}
!630 = !{!627, !331, i64 28}
!631 = !{!627, !331, i64 29}
!632 = !{!"function_entry_count", i64 5964120}
!633 = !{!"ira-build.c:sparseset_iter_p"}
!634 = !{!"branch_weights", i32 1, i32 5964121}
!635 = !{!"branch_weights", i32 5410672, i32 553450}
!636 = !{!"function_entry_count", i64 5410671}
!637 = !{!"ira-build.c:sparseset_iter_elm"}
!638 = !{!627, !330, i64 0}
!639 = !{!"ira-build.c:sparseset_iter_next"}
!640 = !{!"ira-build.c:compress_conflict_vecs"}
!641 = !{!"branch_weights", i32 309804, i32 169294}
!642 = distinct !{!642, !412}
!643 = !{!"ira-build.c:finish_allocno"}
!644 = !{!"branch_weights", i32 17772, i32 571184}
!645 = !{!"branch_weights", i32 324863, i32 264093}
!646 = !{!"branch_weights", i32 489206, i32 99750}
!647 = !{!"branch_weights", i32 588955, i32 1}
!648 = !{!"ira-build.c:finish_copy"}
!649 = !{!"ira-build.c:rebuild_regno_allocno_maps"}
!650 = !{i32 0, i32 2}
!651 = !{!"branch_weights", i32 491, i32 13217}
!652 = !{!"branch_weights", i32 1475, i32 12232}
!653 = distinct !{!653, !412}
!654 = !{!"branch_weights", i32 1475, i32 186638}
!655 = distinct !{!655, !412}
!656 = !{!"ira-build.c:sparseset_bit_p"}
!657 = !{!627, !335, i64 20}
!658 = !{!627, !330, i64 8}
!659 = !{!"branch_weights", i32 411283, i32 142168}
!660 = !{!"ira-build.c:sparseset_insert_bit"}
!661 = !{!"function_entry_count", i64 169293}
!662 = !{!"ira-build.c:compress_allocno_conflict_vec"}
!663 = !{!"branch_weights", i32 1, i32 169293}
!664 = !{!"branch_weights", i32 729682, i32 3480749}
!665 = !{!"branch_weights", i32 169293, i32 4041137}
!666 = distinct !{!666, !412}
!667 = !{!"function_entry_count", i64 139203}
!668 = !{!"ira-build.c:VEC_loop_p_base_iterate"}
!669 = !{!"branch_weights", i32 1, i32 139204}
!670 = !{!671, !335, i64 0}
!671 = !{!"VEC_loop_p_base", !335, i64 0, !335, i64 4, !331, i64 8}
!672 = !{!"branch_weights", i32 105944, i32 33261}
!673 = !{!"function_entry_count", i64 6652}
!674 = !{!"branch_weights", i32 5178, i32 1476}
!675 = !{!"branch_weights", i32 1, i32 6653}
!676 = distinct !{!676, !412}
!677 = !{!"branch_weights", i32 6653, i32 44269063}
!678 = distinct !{!678, !412}
!679 = distinct !{!679, !412}
!680 = distinct !{!680, !412}
!681 = !{!682, !330, i64 8}
!682 = !{!"function", !330, i64 0, !330, i64 8, !330, i64 16, !330, i64 24, !330, i64 32, !330, i64 40, !330, i64 48, !330, i64 56, !330, i64 64, !330, i64 72, !330, i64 80, !330, i64 88, !330, i64 96, !335, i64 104, !335, i64 108, !335, i64 112, !335, i64 116, !335, i64 120, !335, i64 124, !330, i64 128, !335, i64 136, !335, i64 137, !335, i64 138, !335, i64 138, !335, i64 138, !335, i64 138, !335, i64 138, !335, i64 138, !335, i64 138, !335, i64 139, !335, i64 139, !335, i64 139, !335, i64 139, !335, i64 139, !335, i64 139, !335, i64 139}
!683 = !{!684, !335, i64 24}
!684 = !{!"control_flow_graph", !330, i64 0, !330, i64 8, !330, i64 16, !335, i64 24, !335, i64 28, !335, i64 32, !330, i64 40, !335, i64 48, !331, i64 52, !331, i64 60, !335, i64 68, !335, i64 72}
!685 = !{!"ira-build.c:initiate_cost_vectors"}
!686 = !{!"branch_weights", i32 6652, i32 1}
!687 = !{!"branch_weights", i32 6653, i32 6652}
!688 = distinct !{!688, !412}
!689 = !{!"ira-build.c:initiate_allocnos"}
!690 = !{!"ira-build.c:initiate_copies"}
!691 = !{!"ira-build.c:create_loop_tree_nodes"}
!692 = !{!684, !335, i64 32}
!693 = !{!"branch_weights", i32 1, i32 6652}
!694 = !{!341, !330, i64 200}
!695 = !{!341, !330, i64 192}
!696 = !{!341, !330, i64 208}
!697 = !{!"branch_weights", i32 263827, i32 6652}
!698 = distinct !{!698, !412}
!699 = !{!700, !330, i64 24}
!700 = !{!"loops", !335, i64 0, !330, i64 8, !330, i64 16, !330, i64 24}
!701 = !{!"branch_weights", i32 6653, i32 14007}
!702 = !{!"branch_weights", i32 1, i32 14007}
!703 = !{!704, !330, i64 8}
!704 = !{!"loop", !335, i64 0, !335, i64 4, !330, i64 8, !330, i64 16, !705, i64 24, !335, i64 32, !335, i64 36, !330, i64 40, !330, i64 48, !330, i64 56, !330, i64 64, !330, i64 72, !706, i64 80, !706, i64 96, !331, i64 112, !331, i64 113, !335, i64 116, !330, i64 120, !330, i64 128, !331, i64 136, !330, i64 144}
!705 = !{!"lpt_decision", !335, i64 0, !335, i64 4}
!706 = !{!"", !336, i64 0, !336, i64 8}
!707 = !{i64 0, i64 4, !343, i64 8, i64 8, !329}
!708 = !{i64 0, i64 8, !329}
!709 = !{!"branch_weights", i32 1, i32 14006}
!710 = !{!711, !330, i64 0}
!711 = !{!"edge_def", !330, i64 0, !330, i64 8, !331, i64 16, !330, i64 24, !330, i64 32, !335, i64 40, !335, i64 44, !335, i64 48, !335, i64 52, !336, i64 56}
!712 = !{!704, !330, i64 16}
!713 = !{!"branch_weights", i32 13487, i32 16275}
!714 = !{!711, !335, i64 48}
!715 = !{!"branch_weights", i32 16275, i32 1}
!716 = !{!717, !330, i64 8}
!717 = !{!"basic_block_def", !330, i64 0, !330, i64 8, !330, i64 16, !330, i64 24, !331, i64 32, !330, i64 48, !330, i64 56, !331, i64 64, !336, i64 72, !335, i64 80, !335, i64 84, !335, i64 88, !335, i64 92, !335, i64 96}
!718 = !{!711, !330, i64 8}
!719 = !{!717, !330, i64 0}
!720 = !{!"branch_weights", i32 14006, i32 15755}
!721 = distinct !{!721, !412}
!722 = !{!"branch_weights", i32 30190, i32 1}
!723 = !{!"branch_weights", i32 14006, i32 16184}
!724 = distinct !{!724, !412}
!725 = !{!"branch_weights", i32 6652, i32 14007}
!726 = distinct !{!726, !412}
!727 = !{!"ira-build.c:form_loop_tree"}
!728 = !{!"branch_weights", i32 1, i32 20659}
!729 = !{!341, !330, i64 40}
!730 = !{!341, !330, i64 32}
!731 = distinct !{!731, !412}
!732 = !{!684, !330, i64 0}
!733 = !{!717, !330, i64 56}
!734 = !{!684, !330, i64 8}
!735 = !{!717, !335, i64 80}
!736 = !{!717, !330, i64 24}
!737 = !{!"branch_weights", i32 1, i32 127}
!738 = !{!704, !335, i64 0}
!739 = !{!"branch_weights", i32 1, i32 257175}
!740 = !{!"branch_weights", i32 127, i32 32918273}
!741 = distinct !{!741, !412}
!742 = !{!341, !330, i64 24}
!743 = !{!"branch_weights", i32 6652, i32 250523}
!744 = distinct !{!744, !412}
!745 = !{!"ira-build.c:create_allocnos"}
!746 = !{!"ira-build.c:remove_unnecessary_regions"}
!747 = !{!"branch_weights", i32 6653, i32 1}
!748 = !{!"branch_weights", i32 4387, i32 2266}
!749 = !{!"branch_weights", i32 2266, i32 0}
!750 = distinct !{!750, !412}
!751 = !{!"ira-build.c:update_bad_spill_attribute"}
!752 = !{!"branch_weights", i32 6652, i32 6653}
!753 = distinct !{!753, !412}
!754 = !{!"branch_weights", i32 1, i32 379403}
!755 = !{!"branch_weights", i32 6652, i32 372751}
!756 = distinct !{!756, !412}
!757 = !{!"branch_weights", i32 1, i32 379402}
!758 = !{!"branch_weights", i32 379402, i32 145131}
!759 = distinct !{!759, !412}
!760 = !{!"branch_weights", i32 266950, i32 112454}
!761 = !{!"branch_weights", i32 1, i32 47112}
!762 = !{!"branch_weights", i32 47112, i32 78407}
!763 = distinct !{!763, !412}
!764 = !{!"branch_weights", i32 113331, i32 60178}
!765 = !{!"branch_weights", i32 47990, i32 65342}
!766 = distinct !{!766, !412}
!767 = !{!"branch_weights", i32 65342, i32 60178}
!768 = distinct !{!768, !412}
!769 = distinct !{!769, !412}
!770 = !{!"ira-build.c:more_one_region_p"}
!771 = !{!"branch_weights", i32 1, i32 5177}
!772 = !{!"branch_weights", i32 68829719, i32 11996928}
!773 = !{!"branch_weights", i32 5177, i32 4765}
!774 = distinct !{!774, !412}
!775 = !{!"ira-build.c:propagate_allocno_info"}
!776 = !{!"branch_weights", i32 1476, i32 2180053}
!777 = distinct !{!777, !412}
!778 = !{!"branch_weights", i32 383925, i32 280123}
!779 = !{!"branch_weights", i32 66723, i32 213401}
!780 = !{!"branch_weights", i32 87471, i32 125931}
!781 = !{!"branch_weights", i32 85, i32 125847}
!782 = !{!"branch_weights", i32 123914, i32 1934}
!783 = !{!"branch_weights", i32 125847, i32 1}
!784 = !{!"branch_weights", i32 280123, i32 0}
!785 = distinct !{!785, !412}
!786 = !{!"ira-build.c:create_caps"}
!787 = !{!"branch_weights", i32 154277, i32 324777}
!788 = !{!"branch_weights", i32 213401, i32 111377}
!789 = !{!"branch_weights", i32 213401, i32 1}
!790 = !{!"branch_weights", i32 87555, i32 125847}
!791 = !{!"branch_weights", i32 1475, i32 477578}
!792 = distinct !{!792, !412}
!793 = !{!"ira-build.c:setup_min_max_allocno_live_range_point"}
!794 = !{!"branch_weights", i32 199089, i32 379245}
!795 = !{!"branch_weights", i32 379245, i32 145289}
!796 = distinct !{!796, !412}
!797 = !{!"branch_weights", i32 6652, i32 571681}
!798 = distinct !{!798, !412}
!799 = !{!"branch_weights", i32 961417, i32 6652}
!800 = distinct !{!800, !412}
!801 = !{!"branch_weights", i32 588666, i32 379403}
!802 = !{!"branch_weights", i32 291849, i32 87555}
!803 = !{!"branch_weights", i32 198931, i32 1}
!804 = !{!"branch_weights", i32 87555, i32 111376}
!805 = distinct !{!805, !412}
!806 = !{!"branch_weights", i32 166003, i32 125847}
!807 = !{!"branch_weights", i32 79288, i32 46560}
!808 = !{!"branch_weights", i32 166, i32 125682}
!809 = !{!"branch_weights", i32 379403, i32 0}
!810 = distinct !{!810, !412}
!811 = !{!"ira-build.c:sort_conflict_id_allocno_map"}
!812 = distinct !{!812, !412}
!813 = !{!"branch_weights", i32 1, i32 578333}
!814 = distinct !{!814, !412}
!815 = !{!"branch_weights", i32 3927, i32 6652}
!816 = distinct !{!816, !412}
!817 = !{!"ira-build.c:setup_min_max_conflict_allocno_ids"}
!818 = !{!"branch_weights", i32 10579, i32 578333}
!819 = !{!"branch_weights", i32 6422, i32 571912}
!820 = !{!"branch_weights", i32 1, i32 571912}
!821 = !{!"branch_weights", i32 571869, i32 44}
!822 = !{!"branch_weights", i32 6664, i32 1}
!823 = !{!"branch_weights", i32 25383, i32 571869}
!824 = !{!"branch_weights", i32 583923, i32 6664}
!825 = distinct !{!825, !412}
!826 = !{!"branch_weights", i32 582259, i32 6652}
!827 = distinct !{!827, !412}
!828 = !{!"branch_weights", i32 6464, i32 1}
!829 = !{!"branch_weights", i32 718580, i32 6464}
!830 = distinct !{!830, !412}
!831 = !{!"branch_weights", i32 146251, i32 432083}
!832 = !{!"branch_weights", i32 578332, i32 1}
!833 = !{!"branch_weights", i32 578332, i32 143495}
!834 = distinct !{!834, !412}
!835 = distinct !{!835, !412}
!836 = !{!"function_entry_count", i64 812866}
!837 = !{!"ira-build.c:VEC_loop_p_base_length"}
!838 = !{!"branch_weights", i32 263827, i32 549041}
!839 = !{!"function_entry_count", i64 13304}
!840 = !{!"ira-build.c:VEC_ira_allocno_t_heap_alloc"}
!841 = !{!"ira-build.c:VEC_ira_copy_t_heap_alloc"}
!842 = !{!"function_entry_count", i64 28012}
!843 = !{!"ira-build.c:ei_start_1"}
!844 = !{!"function_entry_count", i64 87532}
!845 = !{!"ira-build.c:ei_cond"}
!846 = !{!"branch_weights", i32 59521, i32 28013}
!847 = !{!"function_entry_count", i64 147052}
!848 = !{!"ira-build.c:VEC_edge_base_length"}
!849 = !{!"branch_weights", i32 1, i32 147053}
!850 = !{!851, !335, i64 0}
!851 = !{!"VEC_edge_base", !335, i64 0, !335, i64 4, !331, i64 8}
!852 = !{!"function_entry_count", i64 59520}
!853 = !{!"ira-build.c:ei_next"}
!854 = !{!"branch_weights", i32 1, i32 59521}
!855 = !{!"branch_weights", i32 59521, i32 1}
!856 = !{!857, !335, i64 0}
!857 = !{!"", !335, i64 0, !330, i64 8}
!858 = !{!"function_entry_count", i64 88390}
!859 = !{!"ira-build.c:VEC_edge_base_iterate"}
!860 = !{!"branch_weights", i32 11, i32 88381}
!861 = !{!"branch_weights", i32 60379, i32 28003}
!862 = !{!"ira-build.c:VEC_edge_heap_free"}
!863 = !{!"branch_weights", i32 11, i32 28003}
!864 = !{!"ira-build.c:ei_end_p"}
!865 = !{!"branch_weights", i32 1, i32 87533}
!866 = !{!"ira-build.c:ei_edge"}
!867 = !{!"function_entry_count", i64 413144}
!868 = !{!"ira-build.c:ei_container"}
!869 = !{!"branch_weights", i32 1, i32 413145}
!870 = !{!"ira-build.c:VEC_edge_base_index"}
!871 = !{!"function_entry_count", i64 763400}
!872 = !{!"ira-build.c:loop_outer"}
!873 = !{!704, !330, i64 40}
!874 = !{!"branch_weights", i32 263827, i32 499575}
!875 = !{!"function_entry_count", i64 499958}
!876 = !{!"ira-build.c:add_loop_to_tree"}
!877 = !{!"branch_weights", i32 257175, i32 242785}
!878 = !{!"branch_weights", i32 1, i32 499959}
!879 = !{!"branch_weights", i32 20659, i32 479301}
!880 = !{!"branch_weights", i32 6652, i32 7355}
!881 = distinct !{!881, !412}
!882 = !{!"function_entry_count", i64 20658}
!883 = !{!"ira-build.c:setup_loop_tree_level"}
!884 = !{!341, !335, i64 56}
!885 = !{!"branch_weights", i32 14007, i32 0}
!886 = distinct !{!886, !412}
!887 = !{!"function_entry_count", i64 499574}
!888 = !{!"ira-build.c:VEC_loop_p_base_index"}
!889 = !{!"function_entry_count", i64 277832}
!890 = !{!"ira-build.c:create_loop_tree_node_allocnos"}
!891 = !{!"branch_weights", i32 20659, i32 257175}
!892 = distinct !{!892, !412}
!893 = distinct !{!893, !412}
!894 = !{!"ira-build.c:propagate_modified_regnos"}
!895 = !{!"function_entry_count", i64 257174}
!896 = !{!"ira-build.c:create_bb_allocnos"}
!897 = !{!898, !330, i64 0}
!898 = !{!"rtl_bb_info", !330, i64 0, !330, i64 8, !330, i64 16, !330, i64 24, !335, i64 32}
!899 = !{!"branch_weights", i32 257175, i32 1536489}
!900 = !{!"branch_weights", i32 1048097269, i32 -1816786787}
!901 = !{!"branch_weights", i32 127, i32 229588737}
!902 = distinct !{!902, !412}
!903 = !{!904, !330, i64 16}
!904 = !{!"df_lr_bb_info", !330, i64 0, !330, i64 8, !330, i64 16, !330, i64 24}
!905 = !{!"branch_weights", i32 1, i32 257174}
!906 = !{!"branch_weights", i32 9410, i32 1736889}
!907 = !{!"branch_weights", i32 257174, i32 1489124}
!908 = distinct !{!908, !412}
!909 = !{!"function_entry_count", i64 46463}
!910 = !{!"ira-build.c:create_loop_allocnos"}
!911 = !{!904, !330, i64 24}
!912 = !{!"branch_weights", i32 1, i32 46463}
!913 = !{!"branch_weights", i32 171114, i32 323414}
!914 = !{!"branch_weights", i32 136423, i32 186992}
!915 = !{!"branch_weights", i32 1, i32 136423}
!916 = !{!"branch_weights", i32 4, i32 136420}
!917 = !{!"branch_weights", i32 46463, i32 448064}
!918 = distinct !{!918, !412}
!919 = !{!"function_entry_count", i64 6113940}
!920 = !{!"ira-build.c:create_insn_allocnos"}
!921 = !{!"branch_weights", i32 -722817090, i32 -2006139088, i32 1388801522, i32 96051794, i32 741748945}
!922 = !{!"branch_weights", i32 992939, i32 737340}
!923 = !{!"branch_weights", i32 244147, i32 748793}
!924 = !{!"branch_weights", i32 992939, i32 1}
!925 = !{!717, !336, i64 72}
!926 = !{!717, !335, i64 88}
!927 = !{!"branch_weights", i32 1, i32 679174}
!928 = !{!"branch_weights", i32 630898, i32 362042}
!929 = !{!"branch_weights", i32 1, i32 2700428}
!930 = !{!"branch_weights", i32 -1656401729, i32 -764613918, i32 123431252}
!931 = !{!932, !335, i64 0}
!932 = !{!"rtvec_def", !335, i64 0, !331, i64 8}
!933 = !{!"branch_weights", i32 75155, i32 1}
!934 = !{!"branch_weights", i32 76266, i32 75155}
!935 = distinct !{!935, !412}
!936 = !{!"branch_weights", i32 1130915, i32 2700428}
!937 = distinct !{!937, !412}
!938 = !{!"function_entry_count", i64 303637}
!939 = !{!"ira-build.c:bmp_iter_set_init"}
!940 = !{!941, !330, i64 0}
!941 = !{!"bitmap_head_def", !330, i64 0, !330, i64 8, !335, i64 16, !330, i64 24}
!942 = !{!943, !330, i64 0}
!943 = !{!"", !330, i64 0, !330, i64 8, !335, i64 16, !336, i64 24}
!944 = !{!943, !330, i64 8}
!945 = !{!"branch_weights", i32 1, i32 303638}
!946 = !{!947, !335, i64 16}
!947 = !{!"bitmap_element_def", !330, i64 0, !330, i64 8, !335, i64 16, !331, i64 24}
!948 = !{!"branch_weights", i32 303638, i32 1}
!949 = !{!943, !335, i64 16}
!950 = !{!943, !336, i64 24}
!951 = !{!"function_entry_count", i64 350100}
!952 = !{!"ira-build.c:df_lr_get_bb_info"}
!953 = !{!954, !335, i64 16}
!954 = !{!"dataflow", !330, i64 0, !330, i64 8, !335, i64 16, !330, i64 24, !330, i64 32, !330, i64 40, !335, i64 48, !331, i64 52, !331, i64 53, !331, i64 54}
!955 = !{!"branch_weights", i32 350101, i32 1}
!956 = !{!954, !330, i64 8}
!957 = !{!"function_entry_count", i64 2544460}
!958 = !{!"ira-build.c:bmp_iter_set"}
!959 = !{!"branch_weights", i32 1232782, i32 1311680}
!960 = !{!"branch_weights", i32 2240823, i32 1}
!961 = !{!"branch_weights", i32 28480052, i32 2240823}
!962 = distinct !{!962, !412}
!963 = !{!"branch_weights", i32 1, i32 973922}
!964 = !{!"branch_weights", i32 715064, i32 929145}
!965 = !{!"branch_weights", i32 973922, i32 670286}
!966 = distinct !{!966, !412}
!967 = !{!947, !330, i64 0}
!968 = !{!"branch_weights", i32 303638, i32 670286}
!969 = !{!"function_entry_count", i64 2240823}
!970 = !{!"ira-build.c:bmp_iter_next"}
!971 = !{!"ira-build.c:mark_all_loops_for_removal"}
!972 = !{!341, !331, i64 60}
!973 = distinct !{!973, !412}
!974 = !{!"ira-build.c:mark_loops_for_removal"}
!975 = !{!"branch_weights", i32 12067, i32 1941}
!976 = distinct !{!976, !412}
!977 = !{!978, !335, i64 8}
!978 = !{!"param_info", !330, i64 0, !335, i64 8, !331, i64 12, !335, i64 16, !335, i64 20, !330, i64 24}
!979 = !{!"branch_weights", i32 6306, i32 347}
!980 = !{!"branch_weights", i32 347, i32 120757}
!981 = !{!"branch_weights", i32 347, i32 0}
!982 = distinct !{!982, !412}
!983 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_heap_alloc"}
!984 = !{!"ira-build.c:remove_uneccesary_loop_nodes_from_loop_tree"}
!985 = !{!"branch_weights", i32 18394, i32 2266}
!986 = !{!"branch_weights", i32 1, i32 20658}
!987 = !{!"branch_weights", i32 14007, i32 257175}
!988 = !{!"branch_weights", i32 20658, i32 250523}
!989 = distinct !{!989, !412}
!990 = !{!"branch_weights", i32 18393, i32 1}
!991 = !{!"branch_weights", i32 11742, i32 257175}
!992 = !{!341, !330, i64 16}
!993 = !{!"branch_weights", i32 250523, i32 18393}
!994 = distinct !{!994, !412}
!995 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_heap_free"}
!996 = !{!"branch_weights", i32 1, i32 13305}
!997 = !{!"ira-build.c:remove_low_level_allocnos"}
!998 = distinct !{!998, !412}
!999 = distinct !{!999, !412}
!1000 = distinct !{!1000, !412}
!1001 = !{!"ira-build.c:remove_unnecessary_allocnos"}
!1002 = !{!"branch_weights", i32 578088, i32 389981}
!1003 = !{!"branch_weights", i32 370712, i32 19270}
!1004 = !{!"branch_weights", i32 13718, i32 10579}
!1005 = !{!"branch_weights", i32 19270, i32 5027}
!1006 = distinct !{!1006, !412}
!1007 = !{!"branch_weights", i32 7302, i32 3278}
!1008 = !{!"branch_weights", i32 389981, i32 0}
!1009 = distinct !{!1009, !412}
!1010 = !{!"branch_weights", i32 2099620012, i32 47863636}
!1011 = !{!"branch_weights", i32 944, i32 7749}
!1012 = distinct !{!1012, !412}
!1013 = !{!"branch_weights", i32 1779186805, i32 368296843}
!1014 = !{!"branch_weights", i32 5710, i32 944}
!1015 = !{!"function_entry_count", i64 316883}
!1016 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_base_length"}
!1017 = !{!"branch_weights", i32 1, i32 316884}
!1018 = !{!1019, !335, i64 0}
!1019 = !{!"VEC_ira_loop_tree_node_t_base", !335, i64 0, !335, i64 4, !331, i64 8}
!1020 = !{!"function_entry_count", i64 22587}
!1021 = !{!"ira-build.c:finish_loop_tree_node"}
!1022 = !{!"branch_weights", i32 2256, i32 20333}
!1023 = !{!"function_entry_count", i64 271180}
!1024 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_base_pop"}
!1025 = !{!"function_entry_count", i64 22858}
!1026 = !{!"ira-build.c:loop_depth"}
!1027 = !{!"function_entry_count", i64 15946}
!1028 = !{!"ira-build.c:low_pressure_loop_node_p"}
!1029 = !{!"branch_weights", i32 15947, i32 1}
!1030 = !{!"branch_weights", i32 3880, i32 1}
!1031 = !{!"branch_weights", i32 3880, i32 15947}
!1032 = distinct !{!1032, !412}
!1033 = !{!"branch_weights", i32 12067, i32 7761}
!1034 = !{!"function_entry_count", i64 46693}
!1035 = !{!"ira-build.c:loop_compare_func"}
!1036 = !{!"branch_weights", i32 44374, i32 2321}
!1037 = !{!"branch_weights", i32 295, i32 2027}
!1038 = !{!"branch_weights", i32 43841, i32 534}
!1039 = !{!"branch_weights", i32 11430, i32 34438}
!1040 = !{!"branch_weights", i32 7576, i32 3855}
!1041 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_heap_safe_push"}
!1042 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_heap_reserve"}
!1043 = !{!"branch_weights", i32 1, i32 277833}
!1044 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_base_quick_push"}
!1045 = !{!"ira-build.c:VEC_ira_loop_tree_node_t_base_space"}
!1046 = !{!1019, !335, i64 4}
!1047 = !{!"function_entry_count", i64 10578}
!1048 = !{!"ira-build.c:propagate_some_info_from_allocno"}
!1049 = !{!"branch_weights", i32 10579, i32 1}
!1050 = !{!"branch_weights", i32 7543, i32 3037}
!1051 = !{!"function_entry_count", i64 272848}
!1052 = !{!"ira-build.c:ira_allocate_and_accumulate_costs"}
!1053 = !{!"branch_weights", i32 264678, i32 8172}
!1054 = !{!"branch_weights", i32 3510, i32 4663}
!1055 = !{!"branch_weights", i32 8171, i32 1}
!1056 = !{!"branch_weights", i32 8171, i32 40856}
!1057 = distinct !{!1057, !412}
!1058 = !{!"function_entry_count", i64 8691}
!1059 = !{!"ira-build.c:ira_rebuild_regno_allocno_list"}
!1060 = !{!"branch_weights", i32 1, i32 8691}
!1061 = !{!"branch_weights", i32 8691, i32 4709}
!1062 = distinct !{!1062, !412}
!1063 = !{!"branch_weights", i32 983923587, i32 1163560061}
!1064 = !{!"branch_weights", i32 4709, i32 0}
!1065 = distinct !{!1065, !412}
!1066 = !{!"branch_weights", i32 8692, i32 75559557}
!1067 = !{!"function_entry_count", i64 13351}
!1068 = !{!"ira-build.c:regno_allocno_order_compare_func"}
!1069 = !{!"branch_weights", i32 10409, i32 2944}
!1070 = !{!"branch_weights", i32 9132, i32 1278}
!1071 = !{!"function_entry_count", i64 23759}
!1072 = !{!"ira-build.c:loop_is_inside_p"}
!1073 = !{!"branch_weights", i32 19540, i32 81021}
!1074 = !{!"branch_weights", i32 4221, i32 76801}
!1075 = distinct !{!1075, !412}
!1076 = !{!"ira-build.c:bitmap_initialize_stat"}
!1077 = !{!941, !330, i64 24}
!1078 = !{!"function_entry_count", i64 198930}
!1079 = !{!"ira-build.c:create_cap_allocno"}
!1080 = !{!334, !335, i64 220}
!1081 = !{!"branch_weights", i32 12433, i32 -1821608441}
!1082 = !{!"function_entry_count", i64 397860}
!1083 = !{!"ira-build.c:ira_allocate_and_copy_costs"}
!1084 = !{!"branch_weights", i32 -250660499, i32 902386047}
!1085 = !{!"function_entry_count", i64 4834074}
!1086 = !{!"ira-build.c:allocno_range_compare_func"}
!1087 = !{!"branch_weights", i32 1, i32 4834075}
!1088 = !{!"branch_weights", i32 4832184, i32 1892}
!1089 = !{!"branch_weights", i32 923201, i32 3908984}
!1090 = !{!"branch_weights", i32 853445, i32 69757}
!1091 = !{!"ira-build.c:finish_loop_tree_nodes"}
!1092 = !{!"branch_weights", i32 6652, i32 13671}
!1093 = distinct !{!1093, !412}
!1094 = !{!"branch_weights", i32 270479, i32 1}
!1095 = distinct !{!1095, !412}
!1096 = !{!"ira-build.c:finish_copies"}
!1097 = !{!"branch_weights", i32 6652, i32 77595}
!1098 = distinct !{!1098, !412}
!1099 = !{!"ira-build.c:finish_allocnos"}
!1100 = !{!"branch_weights", i32 6652, i32 280741}
!1101 = distinct !{!1101, !412}
!1102 = !{!"ira-build.c:finish_cost_vectors"}
!1103 = distinct !{!1103, !412}
!1104 = !{!"ira-build.c:VEC_ira_copy_t_heap_free"}
!1105 = !{!"ira-build.c:VEC_ira_allocno_t_heap_free"}
