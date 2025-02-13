; ModuleID = 'cfg.c'
source_filename = "cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_reg_info = type { ptr, i32 }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.htab_bb_copy_original_entry = type { i32, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }

@reg_obstack = dso_local local_unnamed_addr global %struct.bitmap_obstack zeroinitializer, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"cfg.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"Invalid sum of outgoing probabilities %.1f%%\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Invalid sum of outgoing counts %i, should be %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Invalid sum of incoming frequencies %i, should be %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Invalid sum of incoming counts %i, should be %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" (nil)\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"\0A%sBasic block %d \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c", prev %d\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c", next %d\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c", loop_depth %d, count \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c", freq %i\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c", maybe hot\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c", probably never executed\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"%sPredecessors: \00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"\0A%sSuccessors: \00", align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@reg_info_p_size = external local_unnamed_addr global i64, align 8
@.str.21 = private unnamed_addr constant [15 x i8] c"%d registers.\0A\00", align 1
@regstat_n_sets_and_refs = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [43 x i8] c"\0ARegister %d used %d times across %d insns\00", align 1
@reg_info_p = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [13 x i8] c" in block %d\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"; set %d time%s\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [11 x i8] c"; user var\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"; dies in %d places\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"; crosses 1 call\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"; crosses %d calls\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"; crosses call with %d frequency\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.32 = private unnamed_addr constant [11 x i8] c"; %d bytes\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"; pref %s\00", align 1
@reg_class_names = external local_unnamed_addr global [0 x ptr], align 8
@.str.34 = private unnamed_addr constant [13 x i8] c"; %s or none\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"; pref %s, else %s\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"; pointer\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"\0A%d basic blocks, %d edges.\0A\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c" ENTRY\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c" EXIT\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c" [%.1f%%] \00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c" count:\00", align 1
@reltable.dump_edge_info = internal unnamed_addr constant [13 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.42 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.43 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.44 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.46 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.47 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.48 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.49 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.50 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.51 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.52 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.53 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.54 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32)], align 4
@.str.42 = private unnamed_addr constant [9 x i8] c"fallthru\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"abcall\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"eh\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"fake\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"dfs_back\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"can_fallthru\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"irreducible\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"sibcall\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"loop_exit\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@first_block_aux_obj = internal unnamed_addr global ptr null, align 8
@block_aux_obstack = internal global %struct.obstack zeroinitializer, align 8
@alloc_aux_for_blocks.initialized = internal unnamed_addr global i1 false, align 4
@first_edge_aux_obj = internal unnamed_addr global ptr null, align 8
@edge_aux_obstack = internal global %struct.obstack zeroinitializer, align 8
@alloc_aux_for_edges.initialized = internal unnamed_addr global i1 false, align 4
@reltable.dump_cfg_bb_info = internal unnamed_addr constant [12 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.57 to i64), i64 ptrtoint (ptr @reltable.dump_cfg_bb_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.58 to i64), i64 ptrtoint (ptr @reltable.dump_cfg_bb_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.59 to i64), i64 ptrtoint (ptr @reltable.dump_cfg_bb_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.60 to i64), i64 ptrtoint (ptr @reltable.dump_cfg_bb_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.61 to i64), i64 ptrtoint (ptr @reltable.dump_cfg_bb_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.62 to i64), i64 ptrtoint (ptr @reltable.dump_cfg_bb_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.63 to i64), i64 ptrtoint (ptr @reltable.dump_cfg_bb_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.64 to i64), i64 ptrtoint (ptr @reltable.dump_cfg_bb_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.65 to i64), i64 ptrtoint (ptr @reltable.dump_cfg_bb_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.66 to i64), i64 ptrtoint (ptr @reltable.dump_cfg_bb_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.67 to i64), i64 ptrtoint (ptr @reltable.dump_cfg_bb_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.68 to i64), i64 ptrtoint (ptr @reltable.dump_cfg_bb_info to i64)) to i32)], align 4
@.str.57 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"reachable\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"irreducible_loop\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"superblock\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"nosched\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"hot\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"xlabel\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"rtl\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"fwdr\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"nothrd\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"Basic block %d\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"Predecessors: \00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"\0ASuccessors: \00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.74 = private unnamed_addr constant [44 x i8] c"bb %i count became negative after threading\00", align 1
@.str.75 = private unnamed_addr constant [86 x i8] c"Jump threading proved probability of edge %i->%i too small (it is %i, should be %i).\0A\00", align 1
@.str.76 = private unnamed_addr constant [94 x i8] c"Edge frequencies of bb %i has been reset, frequency of block should end up being 0, it is %i\0A\00", align 1
@.str.77 = private unnamed_addr constant [50 x i8] c"edge %i->%i count became negative after threading\00", align 1
@original_copy_bb_pool = internal unnamed_addr global ptr null, align 8
@.str.78 = private unnamed_addr constant [14 x i8] c"original_copy\00", align 1
@bb_original = internal unnamed_addr global ptr null, align 8
@bb_copy = internal unnamed_addr global ptr null, align 8
@loop_copy = internal unnamed_addr global ptr null, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_flow(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !168 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !175

5:                                                ; preds = %1
  %6 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 80) #21
  store ptr %6, ptr %2, align 8, !tbaa !169
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !176
  %10 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 104) #21
  %11 = load ptr, ptr %2, align 8, !tbaa !169
  store ptr %10, ptr %11, align 8, !tbaa !178
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  store i32 0, ptr %12, align 8, !tbaa !179
  %13 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 104) #21
  %14 = load ptr, ptr %2, align 8, !tbaa !169
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !182
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  store i32 1, ptr %16, align 8, !tbaa !179
  %17 = load ptr, ptr %14, align 8, !tbaa !178
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  store ptr %13, ptr %18, align 8, !tbaa !183
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 5
  store ptr %17, ptr %19, align 8, !tbaa !184
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clear_edges() local_unnamed_addr #0 !prof !185 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %3 = load ptr, ptr @cfun, align 8, !tbaa !186
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !169
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !183
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !182
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %39, label %12, !prof !187

12:                                               ; preds = %0
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  br label %14

14:                                               ; preds = %12, %26
  %15 = phi ptr [ %8, %12 ], [ %30, %26 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 1
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %16) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !188
  store ptr %17, ptr %13, align 8, !tbaa.struct !190
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %1) #23, !range !191
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20, !prof !192

20:                                               ; preds = %14, %20
  %21 = load ptr, ptr %1, align 8, !tbaa !186
  tail call fastcc void @free_edge(ptr noundef %21) #23
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %22 = load i32, ptr %2, align 8
  %23 = load ptr, ptr %13, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %1) #23, !range !191
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %20, !prof !193, !llvm.loop !194

26:                                               ; preds = %20, %14
  %27 = load ptr, ptr %16, align 8, !tbaa !196
  tail call fastcc void @VEC_edge_base_truncate(ptr noundef %27) #23
  %28 = load ptr, ptr %15, align 8, !tbaa !197
  tail call fastcc void @VEC_edge_base_truncate(ptr noundef %28) #23
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !183
  %31 = load ptr, ptr @cfun, align 8, !tbaa !186
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !169
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !182
  %36 = icmp eq ptr %30, %35
  br i1 %36, label %37, label %14, !prof !198, !llvm.loop !199

37:                                               ; preds = %26
  %38 = load ptr, ptr %33, align 8, !tbaa !178
  br label %39

39:                                               ; preds = %37, %0
  %40 = phi ptr [ %6, %0 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 1
  %42 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %41) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !188
  %43 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %42, ptr %43, align 8, !tbaa.struct !190
  %44 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %42, ptr noundef nonnull %1) #23, !range !191
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %52, label %46, !prof !187

46:                                               ; preds = %39, %46
  %47 = load ptr, ptr %1, align 8, !tbaa !186
  tail call fastcc void @free_edge(ptr noundef %47) #23
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %48 = load i32, ptr %2, align 8
  %49 = load ptr, ptr %43, align 8
  %50 = call fastcc zeroext i8 @ei_cond(i32 %48, ptr %49, ptr noundef nonnull %1) #23, !range !191
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %46, !prof !200, !llvm.loop !201

52:                                               ; preds = %46, %39
  %53 = load ptr, ptr @cfun, align 8, !tbaa !186
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !169
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !182
  %58 = load ptr, ptr %57, align 8, !tbaa !197
  tail call fastcc void @VEC_edge_base_truncate(ptr noundef %58) #23
  %59 = load ptr, ptr @cfun, align 8, !tbaa !186
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !169
  %62 = load ptr, ptr %61, align 8, !tbaa !178
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !196
  tail call fastcc void @VEC_edge_base_truncate(ptr noundef %64) #23
  %65 = load ptr, ptr @cfun, align 8, !tbaa !186
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !169
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 4
  %69 = load i32, ptr %68, align 4, !tbaa !176
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71, !prof !202

71:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 133, ptr noundef nonnull @.str.1) #21
  br label %72

72:                                               ; preds = %52, %71
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 !prof !203 !PGOFuncName !204 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !205 !PGOFuncName !206 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !191
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !207

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #23
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !186
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_edge(ptr noundef %0) unnamed_addr #0 !prof !208 !PGOFuncName !209 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !186
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !176
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 4, !tbaa !176
  tail call void @ggc_free(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !210 !PGOFuncName !211 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !212

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #23
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #23
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !213

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !214
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !214
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_edge_base_truncate(ptr noundef writeonly %0) unnamed_addr #4 !prof !216 !PGOFuncName !217 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3, !prof !218

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !219
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !221 !PGOFuncName !222 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !223

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #23
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !224 !PGOFuncName !225 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !226

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #23
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !227 !PGOFuncName !228 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !229

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !219
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !230 !PGOFuncName !231 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !232

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !186
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !233 !PGOFuncName !234 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !186
  ret ptr %5
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @alloc_block() local_unnamed_addr #0 !prof !235 {
  %1 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 104) #21
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @link_block(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !236 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !183
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  store ptr %4, ptr %5, align 8, !tbaa !183
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  store ptr %1, ptr %6, align 8, !tbaa !184
  store ptr %0, ptr %3, align 8, !tbaa !183
  %7 = load ptr, ptr %5, align 8, !tbaa !183
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 5
  store ptr %0, ptr %8, align 8, !tbaa !184
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @unlink_block(ptr nocapture noundef %0) local_unnamed_addr #6 !prof !237 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !183
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  store ptr %3, ptr %6, align 8, !tbaa !184
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 6
  store ptr %5, ptr %7, align 8, !tbaa !183
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @compact_blocks() local_unnamed_addr #0 !prof !238 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !186
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !239
  %6 = load ptr, ptr %3, align 8, !tbaa !178
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %5, i32 noundef 0, ptr noundef %6) #23
  %7 = load ptr, ptr @cfun, align 8, !tbaa !186
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !169
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !239
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !182
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %11, i32 noundef 1, ptr noundef %13) #23
  %14 = load ptr, ptr @df, align 8, !tbaa !186
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16, !prof !240

16:                                               ; preds = %0
  tail call void @df_compact_blocks() #21
  %17 = load ptr, ptr @cfun, align 8, !tbaa !186
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !169
  br label %74

20:                                               ; preds = %0
  %21 = load ptr, ptr @cfun, align 8, !tbaa !186
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !169
  %24 = load ptr, ptr %23, align 8, !tbaa !178
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !183
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !182
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %46, label %30, !prof !241

30:                                               ; preds = %20, %30
  %31 = phi ptr [ %42, %30 ], [ %23, %20 ]
  %32 = phi ptr [ %39, %30 ], [ %26, %20 ]
  %33 = phi i32 [ %37, %30 ], [ 2, %20 ]
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !239
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %35, i32 noundef %33, ptr noundef %32) #23
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  store i32 %33, ptr %36, align 8, !tbaa !179
  %37 = add nuw nsw i32 %33, 1
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !183
  %40 = load ptr, ptr @cfun, align 8, !tbaa !186
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !169
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !182
  %45 = icmp eq ptr %39, %44
  br i1 %45, label %46, label %30, !prof !242, !llvm.loop !243

46:                                               ; preds = %30, %20
  %47 = phi ptr [ %21, %20 ], [ %40, %30 ]
  %48 = phi i32 [ 2, %20 ], [ %37, %30 ]
  %49 = phi ptr [ %23, %20 ], [ %42, %30 ]
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !244
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %55, label %53, !prof !245

53:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @.str.1) #21
  %54 = load ptr, ptr @cfun, align 8, !tbaa !186
  br label %55

55:                                               ; preds = %46, %53
  %56 = phi ptr [ %47, %46 ], [ %54, %53 ]
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !169
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !246
  %61 = icmp slt i32 %48, %60
  br i1 %61, label %62, label %74, !prof !247

62:                                               ; preds = %55, %62
  %63 = phi ptr [ %70, %62 ], [ %58, %55 ]
  %64 = phi i32 [ %67, %62 ], [ %48, %55 ]
  %65 = getelementptr inbounds %struct.control_flow_graph, ptr %63, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !239
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %66, i32 noundef %64, ptr noundef null) #23
  %67 = add nuw nsw i32 %64, 1
  %68 = load ptr, ptr @cfun, align 8, !tbaa !186
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !169
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %70, i64 0, i32 5
  %72 = load i32, ptr %71, align 8, !tbaa !246
  %73 = icmp slt i32 %67, %72
  br i1 %73, label %62, label %74, !prof !248, !llvm.loop !249

74:                                               ; preds = %62, %55, %16
  %75 = phi ptr [ %58, %55 ], [ %19, %16 ], [ %70, %62 ]
  %76 = getelementptr inbounds %struct.control_flow_graph, ptr %75, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !244
  %78 = getelementptr inbounds %struct.control_flow_graph, ptr %75, i64 0, i32 5
  store i32 %77, ptr %78, align 8, !tbaa !246
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 !prof !250 !PGOFuncName !251 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !186
  ret void
}

; Function Attrs: optsize
declare void @df_compact_blocks() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @expunge_block(ptr nocapture noundef %0) local_unnamed_addr #8 !prof !252 {
  tail call void @unlink_block(ptr noundef %0) #23
  %2 = load ptr, ptr @cfun, align 8, !tbaa !186
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !239
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !179
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %6, i32 noundef %8, ptr noundef null) #23
  %9 = load ptr, ptr @cfun, align 8, !tbaa !186
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !169
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !244
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %12, align 8, !tbaa !244
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @unchecked_make_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !253 {
  %4 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 64) #21
  %5 = load ptr, ptr @cfun, align 8, !tbaa !186
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !169
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !176
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !176
  store ptr %0, ptr %4, align 8, !tbaa !254
  %11 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !256
  %12 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 7
  store i32 %2, ptr %12, align 8, !tbaa !257
  tail call fastcc void @connect_src(ptr noundef nonnull %4) #23
  tail call fastcc void @connect_dest(ptr noundef nonnull %4) #23
  tail call void @execute_on_growing_pred(ptr noundef nonnull %4) #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @connect_src(ptr noundef %0) unnamed_addr #0 !prof !258 !PGOFuncName !259 {
  %2 = load ptr, ptr %0, align 8, !tbaa !254
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  tail call fastcc void @VEC_edge_gc_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %0) #23
  tail call void @df_mark_solutions_dirty() #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @connect_dest(ptr noundef %0) unnamed_addr #0 !prof !260 !PGOFuncName !261 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !256
  tail call fastcc void @VEC_edge_gc_safe_push(ptr noundef %3, ptr noundef %0) #23
  %4 = load ptr, ptr %3, align 8, !tbaa !197
  %5 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %4) #23
  %6 = add i32 %5, -1
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  store i32 %6, ptr %7, align 4, !tbaa !262
  tail call void @df_mark_solutions_dirty() #21
  ret void
}

; Function Attrs: optsize
declare void @execute_on_growing_pred(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !263 !PGOFuncName !264 {
  tail call fastcc void @VEC_edge_gc_reserve(ptr noundef %0) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !186
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %3, ptr noundef %1) #23
  ret void
}

; Function Attrs: optsize
declare void @df_mark_solutions_dirty() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !263 !PGOFuncName !265 {
  %2 = load ptr, ptr %0, align 8, !tbaa !186
  %3 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !266

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !186
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !263 !PGOFuncName !267 {
  %3 = load i32, ptr %0, align 8, !tbaa !219
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !219
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !186
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !263 !PGOFuncName !268 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !269

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !270
  %6 = load i32, ptr %0, align 8, !tbaa !219
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @cached_make_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !271 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %16, label %6, !prof !272

6:                                                ; preds = %4
  %7 = load ptr, ptr @cfun, align 8, !tbaa !186
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !169
  %10 = load ptr, ptr %9, align 8, !tbaa !178
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %16, label %12, !prof !273

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %18, !prof !274

16:                                               ; preds = %12, %6, %4
  %17 = tail call ptr @make_edge(ptr noundef %1, ptr noundef %2, i32 noundef %3) #23
  br label %39

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !179
  %21 = lshr i32 %20, 6
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !275
  %25 = and i32 %20, 63
  %26 = zext nneg i32 %25 to i64
  %27 = shl nuw i64 1, %26
  %28 = and i64 %27, %24
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32, !prof !276

30:                                               ; preds = %18
  tail call fastcc void @SET_BIT(ptr noundef nonnull %0, i32 noundef %20) #23
  %31 = tail call ptr @unchecked_make_edge(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3) #23
  br label %39

32:                                               ; preds = %18
  %33 = icmp eq i32 %3, 0
  br i1 %33, label %39, label %34, !prof !277

34:                                               ; preds = %32
  %35 = tail call ptr @find_edge(ptr noundef %1, ptr noundef nonnull %2) #21
  %36 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !257
  %38 = or i32 %37, %3
  store i32 %38, ptr %36, align 8, !tbaa !257
  br label %39

39:                                               ; preds = %32, %34, %30, %16
  %40 = phi ptr [ %17, %16 ], [ %31, %30 ], [ null, %34 ], [ null, %32 ]
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !278 {
  %4 = tail call ptr @find_edge(ptr noundef %0, ptr noundef %1) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !279

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !257
  %9 = or i32 %8, %2
  store i32 %9, ptr %7, align 8, !tbaa !257
  br label %12

10:                                               ; preds = %3
  %11 = tail call ptr @unchecked_make_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2) #23
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ null, %6 ], [ %11, %10 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 !prof !280 !PGOFuncName !281 {
  %3 = load ptr, ptr %0, align 8, !tbaa !282
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !284

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
  %15 = load i64, ptr %14, align 8, !tbaa !275
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !285
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !285
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !275
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !275
  ret void
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_single_succ_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !286 {
  %4 = tail call ptr @make_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2) #23
  %5 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 8
  store i32 10000, ptr %5, align 4, !tbaa !287
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %7 = load i64, ptr %6, align 8, !tbaa !288
  %8 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 9
  store i64 %7, ptr %8, align 8, !tbaa !289
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_edge_raw(ptr noundef %0) local_unnamed_addr #0 !prof !290 {
  tail call void @remove_predictions_associated_with_edge(ptr noundef %0) #21
  tail call void @execute_on_shrinking_pred(ptr noundef %0) #21
  tail call fastcc void @disconnect_src(ptr noundef %0) #23
  tail call fastcc void @disconnect_dest(ptr noundef %0) #23
  tail call void @redirect_edge_var_map_clear(ptr noundef %0) #21
  tail call fastcc void @free_edge(ptr noundef %0) #23
  ret void
}

; Function Attrs: optsize
declare void @remove_predictions_associated_with_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @execute_on_shrinking_pred(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @disconnect_src(ptr noundef readonly %0) unnamed_addr #0 !prof !291 !PGOFuncName !292 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !254
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !188
  %6 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !190
  %7 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %5) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9, !prof !293

9:                                                ; preds = %1
  %10 = icmp eq ptr %7, %0
  br i1 %10, label %13, label %16, !prof !294

11:                                               ; preds = %16
  %12 = icmp eq ptr %19, %0
  br i1 %12, label %13, label %16, !prof !295, !llvm.loop !296

13:                                               ; preds = %11, %9
  %14 = phi i32 [ 0, %9 ], [ %17, %11 ]
  %15 = load ptr, ptr %4, align 8, !tbaa !196
  tail call fastcc void @VEC_edge_base_unordered_remove(ptr noundef %15, i32 noundef %14) #23
  br label %22

16:                                               ; preds = %9, %11
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %17 = load i32, ptr %2, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = tail call fastcc ptr @ei_safe_edge(i32 %17, ptr %18) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11, !prof !297, !llvm.loop !296

21:                                               ; preds = %16, %1
  tail call void @df_mark_solutions_dirty() #21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @.str.1) #21
  br label %22

22:                                               ; preds = %21, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @disconnect_dest(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !298 !PGOFuncName !299 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !256
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !262
  %6 = load ptr, ptr %3, align 8, !tbaa !197
  tail call fastcc void @VEC_edge_base_unordered_remove(ptr noundef %6, i32 noundef %5) #23
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %7) #23
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %13, !prof !300

10:                                               ; preds = %1
  %11 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef %5) #23
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 6
  store i32 %5, ptr %12, align 4, !tbaa !262
  br label %13

13:                                               ; preds = %10, %1
  tail call void @df_mark_solutions_dirty() #21
  ret void
}

; Function Attrs: optsize
declare void @redirect_edge_var_map_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !301 !PGOFuncName !302 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !191
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !303

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 !prof !304 !PGOFuncName !305 {
  %3 = load i32, ptr %0, align 8, !tbaa !219
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !219
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !186
  store ptr %9, ptr %5, align 8, !tbaa !186
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_edge_succ(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !306 {
  tail call void @execute_on_shrinking_pred(ptr noundef %0) #21
  tail call fastcc void @disconnect_dest(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !256
  tail call fastcc void @connect_dest(ptr noundef %0) #23
  tail call void @execute_on_growing_pred(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @redirect_edge_succ_nodup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !307 {
  %3 = load ptr, ptr %0, align 8, !tbaa !254
  %4 = tail call ptr @find_edge(ptr noundef %3, ptr noundef %1) #21
  %5 = icmp eq ptr %4, null
  %6 = icmp eq ptr %4, %0
  %7 = or i1 %5, %6
  br i1 %7, label %28, label %8, !prof !308

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !257
  %11 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !257
  %13 = or i32 %12, %10
  store i32 %13, ptr %11, align 8, !tbaa !257
  %14 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 4, !tbaa !287
  %16 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !287
  %18 = add nsw i32 %17, %15
  %19 = icmp sgt i32 %18, 10000
  br i1 %19, label %20, label %21, !prof !309

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %20, %8
  %22 = phi i32 [ 10000, %20 ], [ %18, %8 ]
  store i32 %22, ptr %16, align 4, !tbaa !287
  %23 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %24 = load i64, ptr %23, align 8, !tbaa !289
  %25 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 9
  %26 = load i64, ptr %25, align 8, !tbaa !289
  %27 = add nsw i64 %26, %24
  store i64 %27, ptr %25, align 8, !tbaa !289
  tail call void @remove_edge(ptr noundef nonnull %0) #21
  tail call void @redirect_edge_var_map_dup(ptr noundef nonnull %4, ptr noundef nonnull %0) #21
  br label %29

28:                                               ; preds = %2
  tail call void @redirect_edge_succ(ptr noundef nonnull %0, ptr noundef %1) #23
  br label %29

29:                                               ; preds = %28, %21
  %30 = phi ptr [ %4, %21 ], [ %0, %28 ]
  ret ptr %30
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @redirect_edge_var_map_dup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_edge_pred(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !310 {
  tail call fastcc void @disconnect_src(ptr noundef %0) #23
  store ptr %1, ptr %0, align 8, !tbaa !254
  tail call fastcc void @connect_src(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_bb_flags() local_unnamed_addr #9 !prof !311 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !186
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = load ptr, ptr %3, align 8, !tbaa !186
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !312

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %12, %6 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 13
  %9 = load i32, ptr %8, align 8, !tbaa !313
  %10 = and i32 %9, 880
  store i32 %10, ptr %8, align 8, !tbaa !313
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !186
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !prof !314, !llvm.loop !315

14:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @check_bb_profile(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !316 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %5 = load ptr, ptr @cfun, align 8, !tbaa !186
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !169
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !317
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %133, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !182
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %73, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %16) #23
  store i32 0, ptr %4, align 8, !tbaa.struct !188
  %18 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %17, ptr %18, align 8, !tbaa.struct !190
  %19 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %3) #23, !range !191
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %15, %21
  %22 = phi i32 [ %26, %21 ], [ 0, %15 ]
  %23 = load ptr, ptr %3, align 8, !tbaa !186
  %24 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !287
  %26 = add nsw i32 %25, %22
  call fastcc void @ei_next(ptr noundef nonnull %4) #23
  %27 = load i32, ptr %4, align 8
  %28 = load ptr, ptr %18, align 8
  %29 = call fastcc zeroext i8 @ei_cond(i32 %27, ptr %28, ptr noundef nonnull %3) #23, !range !191
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %21, !llvm.loop !318

31:                                               ; preds = %21, %15
  %32 = phi i32 [ 0, %15 ], [ %26, %21 ]
  %33 = load ptr, ptr %16, align 8, !tbaa !196
  %34 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %33) #23
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = add nsw i32 %32, -10000
  %38 = tail call i32 @llvm.abs.i32(i32 %37, i1 true)
  %39 = icmp ugt i32 %38, 100
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = sitofp i32 %32 to double
  %42 = fmul double %41, 1.000000e+02
  %43 = fdiv double %42, 1.000000e+04
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, double noundef %43) #23
  br label %45

45:                                               ; preds = %40, %36, %31
  store i32 0, ptr %4, align 8, !tbaa.struct !188
  store ptr %17, ptr %18, align 8, !tbaa.struct !190
  %46 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %3) #23, !range !191
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %45, %48
  %49 = phi i64 [ %53, %48 ], [ 0, %45 ]
  %50 = load ptr, ptr %3, align 8, !tbaa !186
  %51 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 9
  %52 = load i64, ptr %51, align 8, !tbaa !289
  %53 = add nsw i64 %52, %49
  call fastcc void @ei_next(ptr noundef nonnull %4) #23
  %54 = load i32, ptr %4, align 8
  %55 = load ptr, ptr %18, align 8
  %56 = call fastcc zeroext i8 @ei_cond(i32 %54, ptr %55, ptr noundef nonnull %3) #23, !range !191
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %48, !llvm.loop !319

58:                                               ; preds = %48, %45
  %59 = phi i64 [ 0, %45 ], [ %53, %48 ]
  %60 = load ptr, ptr %16, align 8, !tbaa !196
  %61 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %60) #23
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %65 = load i64, ptr %64, align 8, !tbaa !288
  %66 = add i64 %59, -101
  %67 = sub i64 %66, %65
  %68 = icmp ult i64 %67, -201
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = trunc i64 %59 to i32
  %71 = trunc i64 %65 to i32
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %70, i32 noundef %71) #23
  br label %73

73:                                               ; preds = %63, %58, %69, %11
  %74 = load ptr, ptr @cfun, align 8, !tbaa !186
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !169
  %77 = load ptr, ptr %76, align 8, !tbaa !178
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %133, label %79

79:                                               ; preds = %73
  %80 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #23
  store i32 0, ptr %4, align 8, !tbaa.struct !188
  %81 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %80, ptr %81, align 8, !tbaa.struct !190
  %82 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %80, ptr noundef nonnull %3) #23, !range !191
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %79, %84
  %85 = phi i32 [ %95, %84 ], [ 0, %79 ]
  %86 = load ptr, ptr %3, align 8, !tbaa !186
  %87 = load ptr, ptr %86, align 8, !tbaa !254
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 11
  %89 = load i32, ptr %88, align 8, !tbaa !320
  %90 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 8
  %91 = load i32, ptr %90, align 4, !tbaa !287
  %92 = mul nsw i32 %91, %89
  %93 = add nsw i32 %92, 5000
  %94 = sdiv i32 %93, 10000
  %95 = add nsw i32 %94, %85
  call fastcc void @ei_next(ptr noundef nonnull %4) #23
  %96 = load i32, ptr %4, align 8
  %97 = load ptr, ptr %81, align 8
  %98 = call fastcc zeroext i8 @ei_cond(i32 %96, ptr %97, ptr noundef nonnull %3) #23, !range !191
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %84, !llvm.loop !321

100:                                              ; preds = %84, %79
  %101 = phi i32 [ 0, %79 ], [ %95, %84 ]
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %103 = load i32, ptr %102, align 8, !tbaa !320
  %104 = sub nsw i32 %101, %103
  %105 = tail call i32 @llvm.abs.i32(i32 %104, i1 true)
  %106 = icmp ugt i32 %105, 100
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %101, i32 noundef %103) #23
  br label %109

109:                                              ; preds = %107, %100
  store i32 0, ptr %4, align 8, !tbaa.struct !188
  store ptr %80, ptr %81, align 8, !tbaa.struct !190
  %110 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %80, ptr noundef nonnull %3) #23, !range !191
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %109, %112
  %113 = phi i64 [ %117, %112 ], [ 0, %109 ]
  %114 = load ptr, ptr %3, align 8, !tbaa !186
  %115 = getelementptr inbounds %struct.edge_def, ptr %114, i64 0, i32 9
  %116 = load i64, ptr %115, align 8, !tbaa !289
  %117 = add nsw i64 %116, %113
  call fastcc void @ei_next(ptr noundef nonnull %4) #23
  %118 = load i32, ptr %4, align 8
  %119 = load ptr, ptr %81, align 8
  %120 = call fastcc zeroext i8 @ei_cond(i32 %118, ptr %119, ptr noundef nonnull %3) #23, !range !191
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %112, !llvm.loop !322

122:                                              ; preds = %112, %109
  %123 = phi i64 [ 0, %109 ], [ %117, %112 ]
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %125 = load i64, ptr %124, align 8, !tbaa !288
  %126 = add i64 %123, -101
  %127 = sub i64 %126, %125
  %128 = icmp ult i64 %127, -201
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = trunc i64 %123 to i32
  %131 = trunc i64 %125 to i32
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %130, i32 noundef %131) #23
  br label %133

133:                                              ; preds = %73, %129, %122, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_regset(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #12 !prof !316 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @fputs(ptr noundef nonnull @.str.7, ptr noundef %1) #23
  br label %23

8:                                                ; preds = %2
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef nonnull %3) #23
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !191
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %8, %20
  %12 = load i32, ptr %3, align 4, !tbaa !189
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %12) #23
  %14 = icmp ult i32 %12, 53
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = zext nneg i32 %12 to i64
  %17 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !186
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef %18) #23
  br label %20

20:                                               ; preds = %11, %15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !191
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %11, !llvm.loop !323

23:                                               ; preds = %20, %8, %6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !316 !PGOFuncName !324 {
  %4 = load ptr, ptr %1, align 8, !tbaa !325
  store ptr %4, ptr %0, align 8, !tbaa !327
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !329
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !327
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !330
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !332
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !275
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !333
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !189
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 !prof !316 !PGOFuncName !334 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !333
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !189
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !335

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !189
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !189
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !332
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !327
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !332
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !275
  store i64 %35, ptr %3, align 8, !tbaa !333
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !189
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !189
  %40 = load i32, ptr %23, align 8, !tbaa !332
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !332
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !336

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !337
  store ptr %44, ptr %0, align 8, !tbaa !327
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !330
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !189
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !333
  store i32 %16, ptr %1, align 4, !tbaa !189
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !316 !PGOFuncName !338 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !333
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !333
  %6 = load i32, ptr %1, align 4, !tbaa !189
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !189
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_regset(ptr noundef %0) local_unnamed_addr #12 !prof !316 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !186
  tail call void @dump_regset(ptr noundef %0, ptr noundef %2) #23
  %3 = load ptr, ptr @stderr, align 8, !tbaa !186
  %4 = tail call i32 @putc(i32 noundef 10, ptr noundef %3) #23
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_bb_info(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !316 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #22
  %9 = icmp eq i8 %1, 0
  br i1 %9, label %80, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !179
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef %4, i32 noundef %12) #23
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !184
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !179
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %19) #23
  br label %21

21:                                               ; preds = %17, %10
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !183
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !179
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %27) #23
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %31 = load i32, ptr %30, align 4, !tbaa !339
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %31) #23
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %34 = load i64, ptr %33, align 8, !tbaa !288
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.14, i64 noundef %34) #23
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %37 = load i32, ptr %36, align 8, !tbaa !320
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef %37) #23
  %39 = load ptr, ptr @cfun, align 8, !tbaa !186
  %40 = icmp eq ptr %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %29
  %42 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef nonnull %0) #21
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call i32 @fputs(ptr noundef nonnull @.str.16, ptr noundef %5) #23
  br label %46

46:                                               ; preds = %44, %41
  %47 = load ptr, ptr @cfun, align 8, !tbaa !186
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = tail call zeroext i8 @probably_never_executed_bb_p(ptr noundef nonnull %0) #21
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @fputs(ptr noundef nonnull @.str.17, ptr noundef %5) #23
  br label %54

54:                                               ; preds = %29, %52, %49, %46
  %55 = tail call i32 @fputs(ptr noundef nonnull @.str.18, ptr noundef %5) #23
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.19, ptr noundef %4) #23
  %57 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #23
  store i32 0, ptr %8, align 8, !tbaa.struct !188
  %58 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr %57, ptr %58, align 8, !tbaa.struct !190
  %59 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %57, ptr noundef nonnull %7) #23, !range !191
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %54, %61
  %62 = load ptr, ptr %7, align 8, !tbaa !186
  tail call void @dump_edge_info(ptr noundef %5, ptr noundef %62, i32 noundef 0) #23
  call fastcc void @ei_next(ptr noundef nonnull %8) #23
  %63 = load i32, ptr %8, align 8
  %64 = load ptr, ptr %58, align 8
  %65 = call fastcc zeroext i8 @ei_cond(i32 %63, ptr %64, ptr noundef nonnull %7) #23, !range !191
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %61, !llvm.loop !340

67:                                               ; preds = %61, %54
  %68 = and i32 %3, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %72 = load i32, ptr %71, align 8, !tbaa !313
  %73 = and i32 %72, 512
  %74 = icmp ne i32 %73, 0
  %75 = load ptr, ptr @df, align 8
  %76 = icmp ne ptr %75, null
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = tail call i32 @putc(i32 noundef 10, ptr noundef %5) #23
  tail call void @df_dump_top(ptr noundef nonnull %0, ptr noundef %5) #21
  br label %80

80:                                               ; preds = %67, %70, %78, %6
  %81 = icmp eq i8 %2, 0
  br i1 %81, label %108, label %82

82:                                               ; preds = %80
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef %4) #23
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %85 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %84) #23
  store i32 0, ptr %8, align 8, !tbaa.struct !188
  %86 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr %85, ptr %86, align 8, !tbaa.struct !190
  %87 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %85, ptr noundef nonnull %7) #23, !range !191
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %82, %89
  %90 = load ptr, ptr %7, align 8, !tbaa !186
  tail call void @dump_edge_info(ptr noundef %5, ptr noundef %90, i32 noundef 1) #23
  call fastcc void @ei_next(ptr noundef nonnull %8) #23
  %91 = load i32, ptr %8, align 8
  %92 = load ptr, ptr %86, align 8
  %93 = call fastcc zeroext i8 @ei_cond(i32 %91, ptr %92, ptr noundef nonnull %7) #23, !range !191
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %89, !llvm.loop !341

95:                                               ; preds = %89, %82
  %96 = and i32 %3, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %100 = load i32, ptr %99, align 8, !tbaa !313
  %101 = and i32 %100, 512
  %102 = icmp ne i32 %101, 0
  %103 = load ptr, ptr @df, align 8
  %104 = icmp ne ptr %103, null
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = tail call i32 @putc(i32 noundef 10, ptr noundef %5) #23
  tail call void @df_dump_bottom(ptr noundef nonnull %0, ptr noundef %5) #21
  br label %108

108:                                              ; preds = %95, %98, %106, %80
  %109 = tail call i32 @putc(i32 noundef 10, ptr noundef %5) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @maybe_hot_bb_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @probably_never_executed_bb_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_edge_info(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #12 !prof !316 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %6 = select i1 %4, ptr %1, ptr %5
  %7 = load ptr, ptr %6, align 8, !tbaa !186
  %8 = load ptr, ptr @cfun, align 8, !tbaa !186
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !169
  %13 = load ptr, ptr %12, align 8, !tbaa !178
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call i32 @fputs(ptr noundef nonnull @.str.38, ptr noundef %0) #23
  br label %27

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  %20 = icmp eq ptr %7, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @fputs(ptr noundef nonnull @.str.39, ptr noundef %0) #23
  br label %27

23:                                               ; preds = %3, %17
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !179
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %25) #23
  br label %27

27:                                               ; preds = %21, %23, %15
  %28 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %29 = load i32, ptr %28, align 4, !tbaa !287
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = sitofp i32 %29 to double
  %33 = fmul double %32, 1.000000e+02
  %34 = fdiv double %33, 1.000000e+04
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, double noundef %34) #23
  br label %36

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 9
  %38 = load i64, ptr %37, align 8, !tbaa !289
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @fputs(ptr noundef nonnull @.str.41, ptr noundef %0) #23
  %42 = load i64, ptr %37, align 8, !tbaa !289
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %42) #23
  br label %44

44:                                               ; preds = %40, %36
  %45 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !257
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %79, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @fputs(ptr noundef nonnull @.str.55, ptr noundef %0) #23
  br label %50

50:                                               ; preds = %48, %72
  %51 = phi i64 [ 0, %48 ], [ %75, %72 ]
  %52 = phi i32 [ %46, %48 ], [ %74, %72 ]
  %53 = phi i32 [ 0, %48 ], [ %73, %72 ]
  %54 = trunc i64 %51 to i32
  %55 = shl nuw i32 1, %54
  %56 = and i32 %52, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %50
  %59 = xor i32 %55, -1
  %60 = and i32 %52, %59
  %61 = icmp eq i32 %53, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = tail call i32 @fputc(i32 noundef 44, ptr noundef %0) #23
  br label %64

64:                                               ; preds = %62, %58
  %65 = icmp ult i64 %51, 13
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = shl i64 %51, 2
  %68 = call ptr @llvm.load.relative.i64(ptr @reltable.dump_edge_info, i64 %67)
  %69 = tail call i32 @fputs(ptr noundef %68, ptr noundef %0) #23
  br label %72

70:                                               ; preds = %64
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %54) #23
  br label %72

72:                                               ; preds = %66, %70, %50
  %73 = phi i32 [ %53, %50 ], [ 1, %70 ], [ 1, %66 ]
  %74 = phi i32 [ %52, %50 ], [ %60, %70 ], [ %60, %66 ]
  %75 = add nuw i64 %51, 1
  %76 = icmp eq i32 %74, 0
  br i1 %76, label %77, label %50, !llvm.loop !342

77:                                               ; preds = %72
  %78 = tail call i32 @fputc(i32 noundef 41, ptr noundef %0) #23
  br label %79

79:                                               ; preds = %77, %44
  ret void
}

; Function Attrs: optsize
declare void @df_dump_top(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @df_dump_bottom(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_reg_info(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !316 {
  %2 = tail call i32 @max_reg_num() #21
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !189
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %169

5:                                                ; preds = %1
  %6 = load i64, ptr @reg_info_p_size, align 8, !tbaa !275
  %7 = zext i32 %2 to i64
  %8 = icmp ult i64 %6, %7
  %9 = trunc i64 %6 to i32
  %10 = select i1 %8, i32 %9, i32 %2
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %10) #23
  %12 = icmp ugt i32 %10, 53
  br i1 %12, label %13, label %169

13:                                               ; preds = %5
  %14 = zext i32 %10 to i64
  br label %15

15:                                               ; preds = %13, %165
  %16 = phi i64 [ 53, %13 ], [ %167, %165 ]
  %17 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !186
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = trunc i64 %16 to i32
  %21 = tail call fastcc i32 @REG_N_REFS(i32 noundef %20) #23
  %22 = load ptr, ptr @reg_info_p, align 8, !tbaa !186
  %23 = getelementptr inbounds %struct.reg_info_t, ptr %22, i64 %16, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !343
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %20, i32 noundef %21, i32 noundef %24) #23
  br label %48

26:                                               ; preds = %15
  %27 = load ptr, ptr @df, align 8, !tbaa !186
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !345
  %32 = getelementptr inbounds ptr, ptr %31, i64 %16
  %33 = load ptr, ptr %32, align 8, !tbaa !186
  %34 = getelementptr inbounds %struct.df_reg_info, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !348
  %36 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !350
  %38 = getelementptr inbounds ptr, ptr %37, i64 %16
  %39 = load ptr, ptr %38, align 8, !tbaa !186
  %40 = getelementptr inbounds %struct.df_reg_info, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !348
  %42 = add i32 %41, %35
  %43 = load ptr, ptr @reg_info_p, align 8, !tbaa !186
  %44 = getelementptr inbounds %struct.reg_info_t, ptr %43, i64 %16, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !343
  %46 = trunc i64 %16 to i32
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %46, i32 noundef %42, i32 noundef %45) #23
  br label %48

48:                                               ; preds = %26, %29, %19
  %49 = load ptr, ptr @reg_info_p, align 8, !tbaa !186
  %50 = getelementptr inbounds %struct.reg_info_t, ptr %49, i64 %16, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !351
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %51) #23
  br label %55

55:                                               ; preds = %53, %48
  %56 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !186
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = trunc i64 %16 to i32
  %60 = tail call fastcc i32 @REG_N_SETS(i32 noundef %59) #23
  br label %71

61:                                               ; preds = %55
  %62 = load ptr, ptr @df, align 8, !tbaa !186
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.df, ptr %62, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !350
  %67 = getelementptr inbounds ptr, ptr %66, i64 %16
  %68 = load ptr, ptr %67, align 8, !tbaa !186
  %69 = getelementptr inbounds %struct.df_reg_info, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !348
  br label %71

71:                                               ; preds = %58, %64
  %72 = phi i32 [ %70, %64 ], [ %60, %58 ]
  %73 = icmp eq i32 %72, 1
  %74 = select i1 %73, ptr @.str.25, ptr @.str.26
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %72, ptr noundef nonnull %74) #23
  br label %76

76:                                               ; preds = %71, %61
  %77 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !186
  %78 = getelementptr inbounds ptr, ptr %77, i64 %16
  %79 = load ptr, ptr %78, align 8, !tbaa !186
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = load i32, ptr %79, align 8
  %83 = and i32 %82, 134217728
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = tail call i32 @fputs(ptr noundef nonnull @.str.27, ptr noundef %0) #23
  br label %87

87:                                               ; preds = %85, %81, %76
  %88 = load ptr, ptr @reg_info_p, align 8, !tbaa !186
  %89 = getelementptr inbounds %struct.reg_info_t, ptr %88, i64 %16, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !352
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %90) #23
  %94 = load ptr, ptr @reg_info_p, align 8, !tbaa !186
  br label %95

95:                                               ; preds = %92, %87
  %96 = phi ptr [ %94, %92 ], [ %88, %87 ]
  %97 = getelementptr inbounds %struct.reg_info_t, ptr %96, i64 %16, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !353
  switch i32 %98, label %101 [
    i32 1, label %99
    i32 0, label %103
  ]

99:                                               ; preds = %95
  %100 = tail call i32 @fputs(ptr noundef nonnull @.str.29, ptr noundef %0) #23
  br label %103

101:                                              ; preds = %95
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %98) #23
  br label %103

103:                                              ; preds = %95, %101, %99
  %104 = load ptr, ptr @reg_info_p, align 8, !tbaa !186
  %105 = getelementptr inbounds %struct.reg_info_t, ptr %104, i64 %16, i32 4
  %106 = load i32, ptr %105, align 4, !tbaa !354
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %106) #23
  br label %110

110:                                              ; preds = %108, %103
  %111 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !186
  %112 = getelementptr inbounds ptr, ptr %111, i64 %16
  %113 = load ptr, ptr %112, align 8, !tbaa !186
  %114 = icmp eq ptr %113, null
  br i1 %114, label %126, label %115

115:                                              ; preds = %110
  %116 = load i32, ptr %113, align 8
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 255
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !285
  %122 = icmp eq i8 %121, 4
  br i1 %122, label %126, label %123

123:                                              ; preds = %115
  %124 = zext i8 %121 to i32
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %124) #23
  br label %126

126:                                              ; preds = %123, %115, %110
  %127 = trunc i64 %16 to i32
  %128 = tail call i32 @reg_preferred_class(i32 noundef %127) #21
  %129 = tail call i32 @reg_alternate_class(i32 noundef %127) #21
  %130 = icmp ne i32 %128, 13
  %131 = icmp ne i32 %129, 26
  %132 = select i1 %130, i1 true, i1 %131
  br i1 %132, label %133, label %154

133:                                              ; preds = %126
  %134 = icmp eq i32 %129, 26
  %135 = icmp eq i32 %128, 26
  %136 = select i1 %134, i1 true, i1 %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = sext i32 %128 to i64
  %139 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !186
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %140) #23
  br label %154

142:                                              ; preds = %133
  %143 = icmp eq i32 %129, 0
  %144 = sext i32 %128 to i64
  %145 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !186
  br i1 %143, label %147, label %149

147:                                              ; preds = %142
  %148 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %146) #23
  br label %154

149:                                              ; preds = %142
  %150 = sext i32 %129 to i64
  %151 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !186
  %153 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef %146, ptr noundef %152) #23
  br label %154

154:                                              ; preds = %137, %149, %147, %126
  %155 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !186
  %156 = getelementptr inbounds ptr, ptr %155, i64 %16
  %157 = load ptr, ptr %156, align 8, !tbaa !186
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %154
  %160 = load i32, ptr %157, align 8
  %161 = and i32 %160, 1073741824
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %159
  %164 = tail call i32 @fputs(ptr noundef nonnull @.str.36, ptr noundef %0) #23
  br label %165

165:                                              ; preds = %163, %159, %154
  %166 = tail call i32 @fputs(ptr noundef nonnull @.str.18, ptr noundef %0) #23
  %167 = add nuw nsw i64 %16, 1
  %168 = icmp eq i64 %167, %14
  br i1 %168, label %169, label %15, !llvm.loop !355

169:                                              ; preds = %165, %5, %1
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_REFS(i32 noundef %0) unnamed_addr #15 !prof !316 !PGOFuncName !356 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !186
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !357
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_SETS(i32 noundef %0) unnamed_addr #15 !prof !316 !PGOFuncName !359 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !186
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !360
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @reg_alternate_class(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_flow_info(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !316 {
  %3 = load i64, ptr @reg_info_p_size, align 8, !tbaa !275
  %4 = icmp eq i64 %3, 0
  %5 = and i32 %1, 8
  %6 = icmp eq i32 %5, 0
  %7 = or i1 %6, %4
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @dump_reg_info(ptr noundef %0) #23
  br label %9

9:                                                ; preds = %8, %2
  %10 = load ptr, ptr @cfun, align 8, !tbaa !186
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !169
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !244
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !176
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %14, i32 noundef %16) #23
  %18 = load ptr, ptr @cfun, align 8, !tbaa !186
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !169
  %21 = load ptr, ptr %20, align 8, !tbaa !186
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %9, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %9 ]
  tail call void @dump_bb_info(ptr noundef nonnull %24, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef %1, ptr noundef nonnull @.str.25, ptr noundef %0) #23
  tail call void @check_bb_profile(ptr noundef nonnull %24, ptr noundef %0) #23
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !186
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !361

28:                                               ; preds = %23, %9
  %29 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_flow_info() local_unnamed_addr #0 !prof !316 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !186
  tail call void @dump_flow_info(ptr noundef %1, i32 noundef 8) #23
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @alloc_aux_for_block(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !362 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !363
  %5 = icmp eq ptr %4, null
  %6 = load ptr, ptr @first_block_aux_obj, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %10, label %9, !prof !364

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 741, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %2, %9
  %11 = sext i32 %1 to i64
  store i64 %11, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !365
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !367
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, %11
  br i1 %17, label %18, label %21, !prof !369

18:                                               ; preds = %10
  tail call void @_obstack_newchunk(ptr noundef nonnull @block_aux_obstack, i32 noundef %1) #21
  %19 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !365
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  br label %21

21:                                               ; preds = %10, %18
  %22 = phi ptr [ %13, %10 ], [ %20, %18 ]
  %23 = phi i64 [ %11, %10 ], [ %19, %18 ]
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !370
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %30, !prof !371

27:                                               ; preds = %21
  %28 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 10), align 8
  %29 = or i8 %28, 2
  store i8 %29, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 10), align 8
  br label %30

30:                                               ; preds = %21, %27
  %31 = ptrtoint ptr %25 to i64
  store i64 %31, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !365
  %32 = ptrtoint ptr %24 to i64
  %33 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 6), align 8, !tbaa !372
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = xor i32 %33, -1
  %37 = sext i32 %36 to i64
  %38 = and i64 %35, %37
  %39 = inttoptr i64 %38 to ptr
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 1), align 8, !tbaa !373
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %38, %41
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !367
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %44, %41
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48, !prof !371

47:                                               ; preds = %30
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  br label %48

48:                                               ; preds = %30, %47
  %49 = phi ptr [ %39, %30 ], [ %43, %47 ]
  store ptr %49, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !370
  store ptr %25, ptr %3, align 8, !tbaa !363
  tail call void @llvm.memset.p0.i64(ptr align 1 %25, i8 0, i64 %11, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @alloc_aux_for_blocks(i32 noundef %0) local_unnamed_addr #0 !prof !374 {
  %2 = load i1, ptr @alloc_aux_for_blocks.initialized, align 4
  br i1 %2, label %5, label %3, !prof !375

3:                                                ; preds = %1
  %4 = tail call i32 @_obstack_begin(ptr noundef nonnull @block_aux_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #21
  store i1 true, ptr @alloc_aux_for_blocks.initialized, align 4
  br label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr @first_block_aux_obj, align 8, !tbaa !186
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !376

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 761, ptr noundef nonnull @.str.1) #21
  br label %9

9:                                                ; preds = %8, %5, %3
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !365
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !367
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19, !prof !377

16:                                               ; preds = %9
  tail call void @_obstack_newchunk(ptr noundef nonnull @block_aux_obstack, i32 noundef 0) #21
  %17 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !365
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  br label %19

19:                                               ; preds = %9, %16
  %20 = phi ptr [ %11, %9 ], [ %18, %16 ]
  %21 = phi i64 [ 0, %9 ], [ %17, %16 ]
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !370
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %28, !prof !378

25:                                               ; preds = %19
  %26 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 10), align 8
  %27 = or i8 %26, 2
  store i8 %27, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 10), align 8
  br label %28

28:                                               ; preds = %19, %25
  %29 = ptrtoint ptr %23 to i64
  store i64 %29, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !365
  %30 = ptrtoint ptr %22 to i64
  %31 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 6), align 8, !tbaa !372
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = xor i32 %31, -1
  %35 = sext i32 %34 to i64
  %36 = and i64 %33, %35
  %37 = inttoptr i64 %36 to ptr
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  %38 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 1), align 8, !tbaa !373
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %36, %39
  %41 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !367
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %42, %39
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %46, !prof !377

45:                                               ; preds = %28
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  br label %46

46:                                               ; preds = %28, %45
  %47 = phi ptr [ %37, %28 ], [ %41, %45 ]
  store ptr %47, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !370
  store ptr %23, ptr @first_block_aux_obj, align 8, !tbaa !186
  %48 = icmp eq i32 %0, 0
  br i1 %48, label %60, label %49, !prof !377

49:                                               ; preds = %46
  %50 = load ptr, ptr @cfun, align 8, !tbaa !186
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !169
  %53 = load ptr, ptr %52, align 8, !tbaa !186
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55, !prof !379

55:                                               ; preds = %49, %55
  %56 = phi ptr [ %58, %55 ], [ %53, %49 ]
  tail call void @alloc_aux_for_block(ptr noundef nonnull %56, i32 noundef %0) #23
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !186
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %55, !prof !380, !llvm.loop !381

60:                                               ; preds = %55, %49, %46
  ret void
}

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #17

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_aux_for_blocks() local_unnamed_addr #9 !prof !382 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !186
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = load ptr, ptr %3, align 8, !tbaa !186
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !383

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !363
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !186
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !prof !384, !llvm.loop !385

12:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_aux_for_blocks() local_unnamed_addr #0 !prof !374 {
  %1 = load ptr, ptr @first_block_aux_obj, align 8, !tbaa !186
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !377

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 790, ptr noundef nonnull @.str.1) #21
  %4 = load ptr, ptr @first_block_aux_obj, align 8, !tbaa !186
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %1, %0 ], [ %4, %3 ]
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 1), align 8, !tbaa !373
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  store i64 %10, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !365
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %19, !prof !386

12:                                               ; preds = %5
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !367
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %9
  %16 = icmp slt i64 %10, %15
  br i1 %16, label %17, label %19, !prof !387

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %7, i64 %10
  store ptr %18, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !370
  store ptr %18, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  br label %21

19:                                               ; preds = %12, %5
  %20 = getelementptr inbounds i8, ptr %7, i64 %10
  tail call void @obstack_free(ptr noundef nonnull @block_aux_obstack, ptr noundef %20) #21
  br label %21

21:                                               ; preds = %19, %17
  store ptr null, ptr @first_block_aux_obj, align 8, !tbaa !186
  tail call void @clear_aux_for_blocks() #23
  ret void
}

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @alloc_aux_for_edge(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !388 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !389
  %5 = icmp eq ptr %4, null
  %6 = load ptr, ptr @first_edge_aux_obj, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %10, label %9, !prof !390

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 804, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %2, %9
  %11 = sext i32 %1 to i64
  store i64 %11, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !365
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !367
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, %11
  br i1 %17, label %18, label %21, !prof !391

18:                                               ; preds = %10
  tail call void @_obstack_newchunk(ptr noundef nonnull @edge_aux_obstack, i32 noundef %1) #21
  %19 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !365
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  br label %21

21:                                               ; preds = %10, %18
  %22 = phi ptr [ %13, %10 ], [ %20, %18 ]
  %23 = phi i64 [ %11, %10 ], [ %19, %18 ]
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !370
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %30, !prof !392

27:                                               ; preds = %21
  %28 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 10), align 8
  %29 = or i8 %28, 2
  store i8 %29, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 10), align 8
  br label %30

30:                                               ; preds = %21, %27
  %31 = ptrtoint ptr %25 to i64
  store i64 %31, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !365
  %32 = ptrtoint ptr %24 to i64
  %33 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 6), align 8, !tbaa !372
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = xor i32 %33, -1
  %37 = sext i32 %36 to i64
  %38 = and i64 %35, %37
  %39 = inttoptr i64 %38 to ptr
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 1), align 8, !tbaa !373
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %38, %41
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !367
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %44, %41
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48, !prof !392

47:                                               ; preds = %30
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  br label %48

48:                                               ; preds = %30, %47
  %49 = phi ptr [ %39, %30 ], [ %43, %47 ]
  store ptr %49, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !370
  store ptr %25, ptr %3, align 8, !tbaa !389
  tail call void @llvm.memset.p0.i64(ptr align 1 %25, i8 0, i64 %11, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @alloc_aux_for_edges(i32 noundef %0) local_unnamed_addr #0 !prof !393 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load i1, ptr @alloc_aux_for_edges.initialized, align 4
  br i1 %4, label %7, label %5, !prof !394

5:                                                ; preds = %1
  %6 = tail call i32 @_obstack_begin(ptr noundef nonnull @edge_aux_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #21
  store i1 true, ptr @alloc_aux_for_edges.initialized, align 4
  br label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr @first_edge_aux_obj, align 8, !tbaa !186
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !395

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 824, ptr noundef nonnull @.str.1) #21
  br label %11

11:                                               ; preds = %10, %7, %5
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !365
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !367
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21, !prof !396

18:                                               ; preds = %11
  tail call void @_obstack_newchunk(ptr noundef nonnull @edge_aux_obstack, i32 noundef 0) #21
  %19 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !365
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  br label %21

21:                                               ; preds = %11, %18
  %22 = phi ptr [ %13, %11 ], [ %20, %18 ]
  %23 = phi i64 [ 0, %11 ], [ %19, %18 ]
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !370
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %30, !prof !397

27:                                               ; preds = %21
  %28 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 10), align 8
  %29 = or i8 %28, 2
  store i8 %29, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 10), align 8
  br label %30

30:                                               ; preds = %21, %27
  %31 = ptrtoint ptr %25 to i64
  store i64 %31, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !365
  %32 = ptrtoint ptr %24 to i64
  %33 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 6), align 8, !tbaa !372
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = xor i32 %33, -1
  %37 = sext i32 %36 to i64
  %38 = and i64 %35, %37
  %39 = inttoptr i64 %38 to ptr
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 1), align 8, !tbaa !373
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %38, %41
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !367
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %44, %41
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48, !prof !396

47:                                               ; preds = %30
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  br label %48

48:                                               ; preds = %30, %47
  %49 = phi ptr [ %39, %30 ], [ %43, %47 ]
  store ptr %49, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !370
  store ptr %25, ptr @first_edge_aux_obj, align 8, !tbaa !186
  %50 = icmp eq i32 %0, 0
  br i1 %50, label %82, label %51, !prof !396

51:                                               ; preds = %48
  %52 = load ptr, ptr @cfun, align 8, !tbaa !186
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !169
  %55 = load ptr, ptr %54, align 8, !tbaa !186
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %54, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !182
  %58 = icmp eq ptr %55, %57
  br i1 %58, label %82, label %59, !prof !398

59:                                               ; preds = %51
  %60 = getelementptr inbounds i8, ptr %3, i64 8
  br label %61

61:                                               ; preds = %59, %73
  %62 = phi ptr [ %55, %59 ], [ %75, %73 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 1
  %64 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %63) #23
  store i32 0, ptr %3, align 8, !tbaa.struct !188
  store ptr %64, ptr %60, align 8, !tbaa.struct !190
  %65 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %64, ptr noundef nonnull %2) #23, !range !191
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %73, label %67, !prof !399

67:                                               ; preds = %61, %67
  %68 = load ptr, ptr %2, align 8, !tbaa !186
  tail call void @alloc_aux_for_edge(ptr noundef %68, i32 noundef %0) #23
  call fastcc void @ei_next(ptr noundef nonnull %3) #23
  %69 = load i32, ptr %3, align 8
  %70 = load ptr, ptr %60, align 8
  %71 = call fastcc zeroext i8 @ei_cond(i32 %69, ptr %70, ptr noundef nonnull %2) #23, !range !191
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %67, !prof !400, !llvm.loop !401

73:                                               ; preds = %67, %61
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !186
  %76 = load ptr, ptr @cfun, align 8, !tbaa !186
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !169
  %79 = getelementptr inbounds %struct.control_flow_graph, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !182
  %81 = icmp eq ptr %75, %80
  br i1 %81, label %82, label %61, !prof !402, !llvm.loop !403

82:                                               ; preds = %73, %51, %48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clear_aux_for_edges() local_unnamed_addr #0 !prof !404 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %3 = load ptr, ptr @cfun, align 8, !tbaa !186
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !169
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !182
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %34, label %10, !prof !405

10:                                               ; preds = %0
  %11 = getelementptr inbounds i8, ptr %2, i64 8
  br label %12

12:                                               ; preds = %10, %25
  %13 = phi ptr [ %6, %10 ], [ %27, %25 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 1
  %15 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %14) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !188
  store ptr %15, ptr %11, align 8, !tbaa.struct !190
  %16 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %15, ptr noundef nonnull %1) #23, !range !191
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %25, label %18, !prof !406

18:                                               ; preds = %12, %18
  %19 = load ptr, ptr %1, align 8, !tbaa !186
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 3
  store ptr null, ptr %20, align 8, !tbaa !389
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %21 = load i32, ptr %2, align 8
  %22 = load ptr, ptr %11, align 8
  %23 = call fastcc zeroext i8 @ei_cond(i32 %21, ptr %22, ptr noundef nonnull %1) #23, !range !191
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %18, !prof !407, !llvm.loop !408

25:                                               ; preds = %18, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !186
  %28 = load ptr, ptr @cfun, align 8, !tbaa !186
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !169
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !182
  %33 = icmp eq ptr %27, %32
  br i1 %33, label %34, label %12, !prof !409, !llvm.loop !410

34:                                               ; preds = %25, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_aux_for_edges() local_unnamed_addr #0 !prof !393 {
  %1 = load ptr, ptr @first_edge_aux_obj, align 8, !tbaa !186
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !396

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 864, ptr noundef nonnull @.str.1) #21
  %4 = load ptr, ptr @first_edge_aux_obj, align 8, !tbaa !186
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %1, %0 ], [ %4, %3 ]
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 1), align 8, !tbaa !373
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  store i64 %10, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !365
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %19, !prof !411

12:                                               ; preds = %5
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !367
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %9
  %16 = icmp slt i64 %10, %15
  br i1 %16, label %17, label %19, !prof !412

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %7, i64 %10
  store ptr %18, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !370
  store ptr %18, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !368
  br label %21

19:                                               ; preds = %12, %5
  %20 = getelementptr inbounds i8, ptr %7, i64 %10
  tail call void @obstack_free(ptr noundef nonnull @edge_aux_obstack, ptr noundef %20) #21
  br label %21

21:                                               ; preds = %19, %17
  store ptr null, ptr @first_edge_aux_obj, align 8, !tbaa !186
  tail call void @clear_aux_for_edges() #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_bb(ptr noundef %0) local_unnamed_addr #0 !prof !316 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !186
  tail call void @dump_bb(ptr noundef %0, ptr noundef %2, i32 noundef 0) #21
  ret void
}

; Function Attrs: optsize
declare void @dump_bb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @debug_bb_n(i32 noundef %0) local_unnamed_addr #0 !prof !316 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !186
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !239
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #23
  %8 = load ptr, ptr @stderr, align 8, !tbaa !186
  tail call void @dump_bb(ptr noundef %7, ptr noundef %8, i32 noundef 0) #21
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !413 !PGOFuncName !414 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !186
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @brief_dump_cfg(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !316 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !186
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = load ptr, ptr %4, align 8, !tbaa !178
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !183
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %1, %11
  %12 = phi ptr [ %14, %11 ], [ %7, %1 ]
  tail call fastcc void @dump_cfg_bb_info(ptr noundef %0, ptr noundef %12) #23
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !183
  %15 = load ptr, ptr @cfun, align 8, !tbaa !186
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !169
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  %20 = icmp eq ptr %14, %19
  br i1 %20, label %21, label %11, !llvm.loop !415

21:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_cfg_bb_info(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !316 !PGOFuncName !416 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !179
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.69, i32 noundef %6) #23
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  br label %9

9:                                                ; preds = %20, %2
  %10 = phi i64 [ %25, %20 ], [ 0, %2 ]
  %11 = phi ptr [ @.str.70, %20 ], [ @.str.55, %2 ]
  %12 = phi i1 [ true, %20 ], [ false, %2 ]
  %13 = load i32, ptr %8, align 8, !tbaa !313
  br label %14

14:                                               ; preds = %9, %27
  %15 = phi i64 [ %28, %27 ], [ %10, %9 ]
  %16 = trunc i64 %15 to i32
  %17 = shl nuw nsw i32 1, %16
  %18 = and i32 %13, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @fputs(ptr noundef nonnull %11, ptr noundef %0) #23
  %22 = shl i64 %15, 2
  %23 = call ptr @llvm.load.relative.i64(ptr @reltable.dump_cfg_bb_info, i64 %22)
  %24 = tail call i32 @fputs(ptr noundef %23, ptr noundef %0) #23
  %25 = add nuw nsw i64 %15, 1
  %26 = icmp eq i64 %25, 12
  br i1 %26, label %31, label %9, !llvm.loop !417

27:                                               ; preds = %14
  %28 = add nuw nsw i64 %15, 1
  %29 = icmp eq i64 %28, 12
  br i1 %29, label %30, label %14, !llvm.loop !417

30:                                               ; preds = %27
  br i1 %12, label %31, label %33

31:                                               ; preds = %20, %30
  %32 = tail call i32 @putc(i32 noundef 41, ptr noundef %0) #23
  br label %33

33:                                               ; preds = %31, %30
  %34 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #23
  %35 = tail call i32 @fputs(ptr noundef nonnull @.str.71, ptr noundef %0) #23
  %36 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %1) #23
  store i32 0, ptr %3, align 8, !tbaa.struct !188
  %37 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %36, ptr %37, align 8, !tbaa.struct !190
  %38 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %36, ptr noundef nonnull %4) #23, !range !191
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33, %40
  %41 = load ptr, ptr %4, align 8, !tbaa !186
  tail call void @dump_edge_info(ptr noundef %0, ptr noundef %41, i32 noundef 0) #23
  call fastcc void @ei_next(ptr noundef nonnull %3) #23
  %42 = load i32, ptr %3, align 8
  %43 = load ptr, ptr %37, align 8
  %44 = call fastcc zeroext i8 @ei_cond(i32 %42, ptr %43, ptr noundef nonnull %4) #23, !range !191
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %40, !llvm.loop !418

46:                                               ; preds = %40, %33
  %47 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 13, i64 1, ptr %0)
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %49 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %48) #23
  store i32 0, ptr %3, align 8, !tbaa.struct !188
  store ptr %49, ptr %37, align 8, !tbaa.struct !190
  %50 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %49, ptr noundef nonnull %4) #23, !range !191
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46, %52
  %53 = load ptr, ptr %4, align 8, !tbaa !186
  tail call void @dump_edge_info(ptr noundef %0, ptr noundef %53, i32 noundef 1) #23
  call fastcc void @ei_next(ptr noundef nonnull %3) #23
  %54 = load i32, ptr %3, align 8
  %55 = load ptr, ptr %37, align 8
  %56 = call fastcc zeroext i8 @ei_cond(i32 %54, ptr %55, ptr noundef nonnull %4) #23, !range !191
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %52, !llvm.loop !419

58:                                               ; preds = %52, %46
  %59 = tail call i32 @fputs(ptr noundef nonnull @.str.73, ptr noundef %0) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @update_bb_profile_for_threading(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !prof !420 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %8 = load i64, ptr %7, align 8, !tbaa !288
  %9 = sub nsw i64 %8, %2
  store i64 %9, ptr %7, align 8, !tbaa !288
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %19, !prof !421

11:                                               ; preds = %4
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !186
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !179
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.74, i32 noundef %16) #23
  br label %18

18:                                               ; preds = %14, %11
  store i64 0, ptr %7, align 8, !tbaa !288
  br label %19

19:                                               ; preds = %18, %4
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %21 = load i32, ptr %20, align 8, !tbaa !320
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !422

23:                                               ; preds = %19
  %24 = mul nsw i32 %1, 10000
  %25 = sdiv i32 %24, %21
  br label %26

26:                                               ; preds = %19, %23
  %27 = phi i32 [ %25, %23 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 8
  %29 = load i32, ptr %28, align 4, !tbaa !287
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %45, !prof !423

31:                                               ; preds = %26
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !186
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34, !prof !424

34:                                               ; preds = %31
  %35 = load ptr, ptr %3, align 8, !tbaa !254
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !179
  %38 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !256
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !179
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %32, ptr noundef nonnull @.str.75, i32 noundef %37, i32 noundef %41, i32 noundef %29, i32 noundef %27) #23
  %43 = load i32, ptr %28, align 4, !tbaa !287
  %44 = load i32, ptr %20, align 8, !tbaa !320
  br label %45

45:                                               ; preds = %31, %34, %26
  %46 = phi i32 [ %21, %26 ], [ %44, %34 ], [ %21, %31 ]
  %47 = phi i32 [ %29, %26 ], [ %43, %34 ], [ %29, %31 ]
  %48 = phi i32 [ %27, %26 ], [ %43, %34 ], [ %29, %31 ]
  %49 = sub nsw i32 %47, %48
  store i32 %49, ptr %28, align 4, !tbaa !287
  %50 = sub nsw i32 10000, %48
  %51 = sub nsw i32 %46, %1
  %52 = tail call i32 @llvm.smax.i32(i32 %51, i32 0)
  store i32 %52, ptr %20, align 8, !tbaa !320
  %53 = icmp sgt i32 %48, 9999
  br i1 %53, label %54, label %79, !prof !425

54:                                               ; preds = %45
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !186
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57, !prof !426

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !179
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %55, ptr noundef nonnull @.str.76, i32 noundef %59, i32 noundef %52) #23
  br label %61

61:                                               ; preds = %57, %54
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !196
  %64 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %63, i32 noundef 0) #23
  %65 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 8
  store i32 10000, ptr %65, align 4, !tbaa !287
  %66 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %62) #23
  store i32 0, ptr %6, align 8, !tbaa.struct !188
  %67 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %66, ptr %67, align 8, !tbaa.struct !190
  call fastcc void @ei_next(ptr noundef nonnull %6) #23
  %68 = load i32, ptr %6, align 8
  %69 = load ptr, ptr %67, align 8
  %70 = tail call fastcc ptr @ei_safe_edge(i32 %68, ptr %69) #23
  %71 = icmp eq ptr %70, null
  br i1 %71, label %107, label %72, !prof !427

72:                                               ; preds = %61, %72
  %73 = phi ptr [ %77, %72 ], [ %70, %61 ]
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 8
  store i32 0, ptr %74, align 4, !tbaa !287
  call fastcc void @ei_next(ptr noundef nonnull %6) #23
  %75 = load i32, ptr %6, align 8
  %76 = load ptr, ptr %67, align 8
  %77 = tail call fastcc ptr @ei_safe_edge(i32 %75, ptr %76) #23
  %78 = icmp eq ptr %77, null
  br i1 %78, label %107, label %72, !prof !428, !llvm.loop !429

79:                                               ; preds = %45
  %80 = icmp eq i32 %48, 0
  br i1 %80, label %107, label %81, !prof !430

81:                                               ; preds = %79
  %82 = lshr i32 %50, 1
  %83 = add nuw nsw i32 %82, 655360000
  %84 = udiv i32 %83, %50
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %86 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %85) #23
  store i32 0, ptr %6, align 8, !tbaa.struct !188
  %87 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %86, ptr %87, align 8, !tbaa.struct !190
  %88 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %86, ptr noundef nonnull %5) #23, !range !191
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %107, label %90, !prof !431

90:                                               ; preds = %81, %101
  %91 = load ptr, ptr %5, align 8, !tbaa !186
  %92 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 8
  %93 = load i32, ptr %92, align 4, !tbaa !287
  %94 = icmp sgt i32 %93, %50
  br i1 %94, label %100, label %95, !prof !432

95:                                               ; preds = %90
  %96 = mul nsw i32 %93, %84
  %97 = add nsw i32 %96, 32768
  %98 = sdiv i32 %97, 65536
  %99 = icmp sgt i32 %96, 655392767
  br i1 %99, label %100, label %101, !prof !433

100:                                              ; preds = %95, %90
  br label %101

101:                                              ; preds = %100, %95
  %102 = phi i32 [ 10000, %100 ], [ %98, %95 ]
  store i32 %102, ptr %92, align 4, !tbaa !287
  call fastcc void @ei_next(ptr noundef nonnull %6) #23
  %103 = load i32, ptr %6, align 8
  %104 = load ptr, ptr %87, align 8
  %105 = call fastcc zeroext i8 @ei_cond(i32 %103, ptr %104, ptr noundef nonnull %5) #23, !range !191
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %90, !prof !434, !llvm.loop !435

107:                                              ; preds = %101, %72, %61, %81, %79
  %108 = load ptr, ptr %3, align 8, !tbaa !254
  %109 = icmp eq ptr %108, %0
  br i1 %109, label %111, label %110, !prof !436

110:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1016, ptr noundef nonnull @.str.1) #21
  br label %111

111:                                              ; preds = %107, %110
  %112 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 9
  %113 = load i64, ptr %112, align 8, !tbaa !289
  %114 = sub nsw i64 %113, %2
  store i64 %114, ptr %112, align 8, !tbaa !289
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %129, !prof !421

116:                                              ; preds = %111
  %117 = load ptr, ptr @dump_file, align 8, !tbaa !186
  %118 = icmp eq ptr %117, null
  br i1 %118, label %128, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr %3, align 8, !tbaa !254
  %121 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 9
  %122 = load i32, ptr %121, align 8, !tbaa !179
  %123 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !256
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 9
  %126 = load i32, ptr %125, align 8, !tbaa !179
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %117, ptr noundef nonnull @.str.77, i32 noundef %122, i32 noundef %126) #23
  br label %128

128:                                              ; preds = %119, %116
  store i64 0, ptr %112, align 8, !tbaa !289
  br label %129

129:                                              ; preds = %128, %111
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scale_bbs_frequencies_int(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !437 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %7 = icmp slt i32 %2, 0
  %8 = icmp sgt i32 %3, 1000
  br i1 %7, label %10, label %9, !prof !438

9:                                                ; preds = %4
  br i1 %8, label %11, label %19, !prof !439

10:                                               ; preds = %4
  br i1 %8, label %13, label %19, !prof !439

11:                                               ; preds = %9
  %12 = icmp ugt i32 %2, 1000000
  br i1 %12, label %69, label %13, !prof !440

13:                                               ; preds = %10, %11
  %14 = phi i32 [ %2, %11 ], [ 0, %10 ]
  %15 = mul nuw nsw i32 %14, 1000
  %16 = lshr i32 %3, 1
  %17 = add nuw nsw i32 %15, %16
  %18 = udiv i32 %17, %3
  br label %19

19:                                               ; preds = %10, %13, %9
  %20 = phi i32 [ 1000, %13 ], [ %3, %9 ], [ %3, %10 ]
  %21 = phi i32 [ %18, %13 ], [ %2, %9 ], [ 0, %10 ]
  %22 = mul nsw i32 %20, 100
  %23 = icmp sle i32 %21, %22
  %24 = icmp sgt i32 %1, 0
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %69, !prof !441

26:                                               ; preds = %19
  %27 = sdiv i32 %20, 2
  %28 = zext nneg i32 %21 to i64
  %29 = sext i32 %27 to i64
  %30 = sext i32 %20 to i64
  %31 = getelementptr inbounds i8, ptr %6, i64 8
  %32 = zext nneg i32 %1 to i64
  br label %33

33:                                               ; preds = %26, %66
  %34 = phi i64 [ 0, %26 ], [ %67, %66 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %35 = getelementptr inbounds ptr, ptr %0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !186
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 11
  %38 = load i32, ptr %37, align 8, !tbaa !320
  %39 = mul nsw i32 %38, %21
  %40 = add nsw i32 %39, %27
  %41 = sdiv i32 %40, %20
  %42 = icmp sgt i32 %41, 10000
  br i1 %42, label %43, label %44, !prof !442

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %33
  %45 = phi i32 [ 10000, %43 ], [ %41, %33 ]
  store i32 %45, ptr %37, align 8, !tbaa !320
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 8
  %47 = load i64, ptr %46, align 8, !tbaa !288
  %48 = mul nsw i64 %47, %28
  %49 = add nsw i64 %48, %29
  %50 = sdiv i64 %49, %30
  store i64 %50, ptr %46, align 8, !tbaa !288
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 1
  %52 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %51) #23
  store i32 0, ptr %6, align 8, !tbaa.struct !188
  store ptr %52, ptr %31, align 8, !tbaa.struct !190
  %53 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %52, ptr noundef nonnull %5) #23, !range !191
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %66, label %55, !prof !443

55:                                               ; preds = %44, %55
  %56 = load ptr, ptr %5, align 8, !tbaa !186
  %57 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 9
  %58 = load i64, ptr %57, align 8, !tbaa !289
  %59 = mul nsw i64 %58, %28
  %60 = add nsw i64 %59, %29
  %61 = sdiv i64 %60, %30
  store i64 %61, ptr %57, align 8, !tbaa !289
  call fastcc void @ei_next(ptr noundef nonnull %6) #23
  %62 = load i32, ptr %6, align 8
  %63 = load ptr, ptr %31, align 8
  %64 = call fastcc zeroext i8 @ei_cond(i32 %62, ptr %63, ptr noundef nonnull %5) #23, !range !191
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %55, !prof !444, !llvm.loop !445

66:                                               ; preds = %55, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  %67 = add nuw nsw i64 %34, 1
  %68 = icmp eq i64 %67, %32
  br i1 %68, label %69, label %33, !prof !446, !llvm.loop !447

69:                                               ; preds = %66, %19, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scale_bbs_frequencies_gcov_type(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !316 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %8 = shl nsw i64 %2, 16
  %9 = sdiv i64 %3, 2
  %10 = add nsw i64 %9, %8
  %11 = sdiv i64 %10, %3
  %12 = icmp sgt i64 %11, -1
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1079, ptr noundef nonnull @.str.1) #21
  br label %14

14:                                               ; preds = %4, %13
  %15 = icmp slt i64 %2, -2147483648
  %16 = icmp sgt i32 %1, 0
  br i1 %15, label %21, label %17

17:                                               ; preds = %14
  br i1 %16, label %18, label %104

18:                                               ; preds = %17
  %19 = getelementptr inbounds i8, ptr %7, i64 8
  %20 = zext nneg i32 %1 to i64
  br label %70

21:                                               ; preds = %14
  br i1 %16, label %22, label %104

22:                                               ; preds = %21
  %23 = getelementptr inbounds i8, ptr %6, i64 8
  %24 = zext nneg i32 %1 to i64
  br label %25

25:                                               ; preds = %22, %67
  %26 = phi i64 [ 0, %22 ], [ %68, %67 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %27 = getelementptr inbounds ptr, ptr %0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !186
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 11
  %30 = load i32, ptr %29, align 8, !tbaa !320
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, %2
  %33 = add nsw i64 %32, %9
  %34 = sdiv i64 %33, %3
  %35 = trunc i64 %34 to i32
  store i32 %35, ptr %29, align 8, !tbaa !320
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 8
  %37 = load i64, ptr %36, align 8, !tbaa !288
  %38 = icmp slt i64 %37, -2147483647
  %39 = select i1 %38, i64 %2, i64 %11
  %40 = select i1 %38, i64 %9, i64 32768
  %41 = select i1 %38, i64 %3, i64 65536
  %42 = mul nsw i64 %37, %39
  %43 = add nsw i64 %42, %40
  %44 = sdiv i64 %43, %41
  store i64 %44, ptr %36, align 8, !tbaa !288
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 1
  %46 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %45) #23
  store i32 0, ptr %6, align 8, !tbaa.struct !188
  store ptr %46, ptr %23, align 8, !tbaa.struct !190
  %47 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %5) #23, !range !191
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %25, %49
  %50 = load ptr, ptr %27, align 8, !tbaa !186
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 8
  %52 = load i64, ptr %51, align 8, !tbaa !288
  %53 = icmp slt i64 %52, -2147483647
  %54 = load ptr, ptr %5, align 8, !tbaa !186
  %55 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 9
  %56 = load i64, ptr %55, align 8, !tbaa !289
  %57 = select i1 %53, i64 %2, i64 %11
  %58 = select i1 %53, i64 %9, i64 32768
  %59 = select i1 %53, i64 %3, i64 65536
  %60 = mul nsw i64 %56, %57
  %61 = add nsw i64 %60, %58
  %62 = sdiv i64 %61, %59
  store i64 %62, ptr %55, align 8, !tbaa !289
  call fastcc void @ei_next(ptr noundef nonnull %6) #23
  %63 = load i32, ptr %6, align 8
  %64 = load ptr, ptr %23, align 8
  %65 = call fastcc zeroext i8 @ei_cond(i32 %63, ptr %64, ptr noundef nonnull %5) #23, !range !191
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %49, !llvm.loop !448

67:                                               ; preds = %49, %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  %68 = add nuw nsw i64 %26, 1
  %69 = icmp eq i64 %68, %24
  br i1 %69, label %104, label %25, !llvm.loop !449

70:                                               ; preds = %18, %101
  %71 = phi i64 [ 0, %18 ], [ %102, %101 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  %72 = getelementptr inbounds ptr, ptr %0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !186
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 11
  %75 = load i32, ptr %74, align 8, !tbaa !320
  %76 = sext i32 %75 to i64
  %77 = mul nsw i64 %76, %2
  %78 = add nsw i64 %77, %9
  %79 = sdiv i64 %78, %3
  %80 = trunc i64 %79 to i32
  store i32 %80, ptr %74, align 8, !tbaa !320
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 8
  %82 = load i64, ptr %81, align 8, !tbaa !288
  %83 = mul nsw i64 %82, %11
  %84 = add nsw i64 %83, 32768
  %85 = sdiv i64 %84, 65536
  store i64 %85, ptr %81, align 8, !tbaa !288
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 1
  %87 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %86) #23
  store i32 0, ptr %7, align 8, !tbaa.struct !188
  store ptr %87, ptr %19, align 8, !tbaa.struct !190
  %88 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %87, ptr noundef nonnull %5) #23, !range !191
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %70, %90
  %91 = load ptr, ptr %5, align 8, !tbaa !186
  %92 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 9
  %93 = load i64, ptr %92, align 8, !tbaa !289
  %94 = mul nsw i64 %93, %11
  %95 = add nsw i64 %94, 32768
  %96 = sdiv i64 %95, 65536
  store i64 %96, ptr %92, align 8, !tbaa !289
  call fastcc void @ei_next(ptr noundef nonnull %7) #23
  %97 = load i32, ptr %7, align 8
  %98 = load ptr, ptr %19, align 8
  %99 = call fastcc zeroext i8 @ei_cond(i32 %97, ptr %98, ptr noundef nonnull %5) #23, !range !191
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %90, !llvm.loop !450

101:                                              ; preds = %90, %70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  %102 = add nuw nsw i64 %71, 1
  %103 = icmp eq i64 %102, %20
  br i1 %103, label %104, label %70, !llvm.loop !451

104:                                              ; preds = %101, %67, %17, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @initialize_original_copy_tables() local_unnamed_addr #0 !prof !452 {
  %1 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !186
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !453

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1151, ptr noundef nonnull @.str.1) #21
  br label %4

4:                                                ; preds = %0, %3
  %5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.78, i64 noundef 8, i64 noundef 10) #21
  store ptr %5, ptr @original_copy_bb_pool, align 8, !tbaa !186
  %6 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @bb_copy_original_hash, ptr noundef nonnull @bb_copy_original_eq, ptr noundef null) #21
  store ptr %6, ptr @bb_original, align 8, !tbaa !186
  %7 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @bb_copy_original_hash, ptr noundef nonnull @bb_copy_original_eq, ptr noundef null) #21
  store ptr %7, ptr @bb_copy, align 8, !tbaa !186
  %8 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @bb_copy_original_hash, ptr noundef nonnull @bb_copy_original_eq, ptr noundef null) #21
  store ptr %8, ptr @loop_copy, align 8, !tbaa !186
  ret void
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @bb_copy_original_hash(ptr nocapture noundef readonly %0) #5 !prof !454 !PGOFuncName !455 {
  %2 = load i32, ptr %0, align 4, !tbaa !456
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @bb_copy_original_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !prof !458 !PGOFuncName !459 {
  %3 = load i32, ptr %0, align 4, !tbaa !456
  %4 = load i32, ptr %1, align 4, !tbaa !456
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_original_copy_tables() local_unnamed_addr #0 !prof !452 {
  %1 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !186
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !460

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1166, ptr noundef nonnull @.str.1) #21
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @bb_copy, align 8, !tbaa !186
  tail call void @htab_delete(ptr noundef %5) #21
  %6 = load ptr, ptr @bb_original, align 8, !tbaa !186
  tail call void @htab_delete(ptr noundef %6) #21
  %7 = load ptr, ptr @loop_copy, align 8, !tbaa !186
  tail call void @htab_delete(ptr noundef %7) #21
  %8 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !186
  tail call void @free_alloc_pool(ptr noundef %8) #21
  store ptr null, ptr @bb_copy, align 8, !tbaa !186
  store ptr null, ptr @bb_original, align 8, !tbaa !186
  store ptr null, ptr @loop_copy, align 8, !tbaa !186
  store ptr null, ptr @original_copy_bb_pool, align 8, !tbaa !186
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_bb_original(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !461 {
  %3 = load ptr, ptr @bb_original, align 8, !tbaa !186
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !179
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !179
  tail call fastcc void @copy_original_table_set(ptr noundef %3, i32 noundef %5, i32 noundef %7) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_original_table_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !462 !PGOFuncName !463 {
  %4 = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !186
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7, !prof !464

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 4, !tbaa !456
  %8 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1) #21
  %9 = load ptr, ptr %8, align 8, !tbaa !186
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14, !prof !465

11:                                               ; preds = %7
  %12 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !186
  %13 = call ptr @pool_alloc(ptr noundef %12) #21
  store ptr %13, ptr %8, align 8, !tbaa !186
  store i32 %1, ptr %13, align 4, !tbaa !456
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct.htab_bb_copy_original_entry, ptr %15, i64 0, i32 1
  store i32 %2, ptr %16, align 4, !tbaa !466
  br label %17

17:                                               ; preds = %3, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_bb_original(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !467 {
  %2 = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !186
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !468

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1237, ptr noundef nonnull @.str.1) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !179
  store i32 %8, ptr %2, align 4, !tbaa !456
  %9 = load ptr, ptr @bb_original, align 8, !tbaa !186
  %10 = call ptr @htab_find(ptr noundef %9, ptr noundef nonnull %2) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12, !prof !468

12:                                               ; preds = %6
  %13 = load ptr, ptr @cfun, align 8, !tbaa !186
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !169
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !239
  %18 = getelementptr inbounds %struct.htab_bb_copy_original_entry, ptr %10, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !466
  %20 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %17, i32 noundef %19) #23
  br label %21

21:                                               ; preds = %6, %12
  %22 = phi ptr [ %20, %12 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_bb_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !461 {
  %3 = load ptr, ptr @bb_copy, align 8, !tbaa !186
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !179
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !179
  tail call fastcc void @copy_original_table_set(ptr noundef %3, i32 noundef %5, i32 noundef %7) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_bb_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !469 {
  %2 = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !186
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !470

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1262, ptr noundef nonnull @.str.1) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !179
  store i32 %8, ptr %2, align 4, !tbaa !456
  %9 = load ptr, ptr @bb_copy, align 8, !tbaa !186
  %10 = call ptr @htab_find(ptr noundef %9, ptr noundef nonnull %2) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12, !prof !470

12:                                               ; preds = %6
  %13 = load ptr, ptr @cfun, align 8, !tbaa !186
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !169
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !239
  %18 = getelementptr inbounds %struct.htab_bb_copy_original_entry, ptr %10, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !466
  %20 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %17, i32 noundef %19) #23
  br label %21

21:                                               ; preds = %6, %12
  %22 = phi ptr [ %20, %12 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_loop_copy(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !471 {
  %3 = icmp eq ptr %1, null
  %4 = load ptr, ptr @loop_copy, align 8, !tbaa !186
  %5 = load i32, ptr %0, align 8, !tbaa !472
  br i1 %3, label %6, label %7, !prof !476

6:                                                ; preds = %2
  tail call fastcc void @copy_original_table_clear(ptr noundef %4, i32 noundef %5) #23
  br label %9

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8, !tbaa !472
  tail call fastcc void @copy_original_table_set(ptr noundef %4, i32 noundef %5, i32 noundef %8) #23
  br label %9

9:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_original_table_clear(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !477 !PGOFuncName !478 {
  %3 = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !186
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !479

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 4, !tbaa !456
  %7 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !479

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !186
  call void @htab_clear_slot(ptr noundef %0, ptr noundef nonnull %7) #21
  %11 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !186
  call void @pool_free(ptr noundef %11, ptr noundef %10) #21
  br label %12

12:                                               ; preds = %6, %2, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_loop_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !480 {
  %2 = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !186
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !481

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1292, ptr noundef nonnull @.str.1) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i32, ptr %0, align 8, !tbaa !472
  store i32 %7, ptr %2, align 4, !tbaa !456
  %8 = load ptr, ptr @loop_copy, align 8, !tbaa !186
  %9 = call ptr @htab_find(ptr noundef %8, ptr noundef nonnull %2) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !482

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.htab_bb_copy_original_entry, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !466
  %14 = call fastcc ptr @get_loop(i32 noundef %13) #23
  br label %15

15:                                               ; preds = %6, %11
  %16 = phi ptr [ %14, %11 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #15 !prof !483 !PGOFuncName !484 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !186
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !485
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !486
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #23
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !483 !PGOFuncName !488 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !186
  ret ptr %5
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }
attributes #23 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!167}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!36 = !{ptr @init_flow, ptr @ggc_alloc_cleared_stat, i64 32324}
!37 = !{ptr @clear_edges, ptr @ei_start_1, i64 100662}
!38 = !{ptr @clear_edges, ptr @ei_cond, i64 255443}
!39 = !{ptr @clear_edges, ptr @free_edge, i64 154781}
!40 = !{ptr @clear_edges, ptr @ei_next, i64 154781}
!41 = !{ptr @clear_edges, ptr @VEC_edge_base_truncate, i64 201324}
!42 = !{ptr @clear_edges, ptr @fancy_abort, i64 1}
!43 = !{ptr @ei_cond, ptr @ei_end_p, i64 8911506}
!44 = !{ptr @ei_cond, ptr @ei_edge, i64 5485135}
!45 = !{ptr @free_edge, ptr @ggc_free, i64 939866}
!46 = !{ptr @ei_next, ptr @ei_container, i64 11064689}
!47 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 5532345}
!48 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!49 = !{ptr @ei_end_p, ptr @ei_container, i64 19556644}
!50 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 9778457}
!51 = !{ptr @ei_edge, ptr @ei_container, i64 12700555}
!52 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 6350278}
!53 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!54 = !{ptr @alloc_block, ptr @ggc_alloc_cleared_stat, i64 979216}
!55 = !{ptr @compact_blocks, ptr @VEC_basic_block_base_replace, i64 8477464}
!56 = !{ptr @compact_blocks, ptr @df_compact_blocks, i64 101564}
!57 = !{ptr @compact_blocks, ptr @fancy_abort, i64 1}
!58 = !{ptr @expunge_block, ptr @unlink_block, i64 634191}
!59 = !{ptr @expunge_block, ptr @VEC_basic_block_base_replace, i64 634191}
!60 = !{ptr @unchecked_make_edge, ptr @ggc_alloc_cleared_stat, i64 1355048}
!61 = !{ptr @unchecked_make_edge, ptr @connect_src, i64 1355048}
!62 = !{ptr @unchecked_make_edge, ptr @connect_dest, i64 1355048}
!63 = !{ptr @unchecked_make_edge, ptr @execute_on_growing_pred, i64 1355048}
!64 = !{ptr @connect_src, ptr @VEC_edge_gc_safe_push, i64 1389740}
!65 = !{ptr @connect_src, ptr @df_mark_solutions_dirty, i64 1389740}
!66 = !{ptr @connect_dest, ptr @VEC_edge_gc_safe_push, i64 2564804}
!67 = !{ptr @connect_dest, ptr @VEC_edge_base_length, i64 2564804}
!68 = !{ptr @connect_dest, ptr @df_mark_solutions_dirty, i64 2564804}
!69 = !{ptr @VEC_edge_gc_safe_push, ptr @VEC_edge_gc_reserve, i64 3954544}
!70 = !{ptr @VEC_edge_gc_safe_push, ptr @VEC_edge_base_quick_push, i64 3954544}
!71 = !{ptr @VEC_edge_gc_reserve, ptr @VEC_edge_base_space, i64 3954544}
!72 = !{ptr @VEC_edge_gc_reserve, ptr @vec_gc_p_reserve, i64 2014390}
!73 = !{ptr @cached_make_edge, ptr @make_edge, i64 506700}
!74 = !{ptr @cached_make_edge, ptr @SET_BIT, i64 5385}
!75 = !{ptr @cached_make_edge, ptr @unchecked_make_edge, i64 5385}
!76 = !{ptr @cached_make_edge, ptr @find_edge, i64 30989}
!77 = !{ptr @make_edge, ptr @find_edge, i64 1762305}
!78 = !{ptr @make_edge, ptr @unchecked_make_edge, i64 1270599}
!79 = !{ptr @make_single_succ_edge, ptr @make_edge, i64 159152}
!80 = !{ptr @remove_edge_raw, ptr @remove_predictions_associated_with_edge, i64 785049}
!81 = !{ptr @remove_edge_raw, ptr @execute_on_shrinking_pred, i64 785049}
!82 = !{ptr @remove_edge_raw, ptr @disconnect_src, i64 785049}
!83 = !{ptr @remove_edge_raw, ptr @disconnect_dest, i64 785049}
!84 = !{ptr @remove_edge_raw, ptr @redirect_edge_var_map_clear, i64 785049}
!85 = !{ptr @remove_edge_raw, ptr @free_edge, i64 785049}
!86 = !{ptr @disconnect_src, ptr @ei_start_1, i64 819741}
!87 = !{ptr @disconnect_src, ptr @ei_safe_edge, i64 862995}
!88 = !{ptr @disconnect_src, ptr @VEC_edge_base_unordered_remove, i64 813337}
!89 = !{ptr @disconnect_src, ptr @ei_next, i64 43254}
!90 = !{ptr @disconnect_src, ptr @df_mark_solutions_dirty, i64 6404}
!91 = !{ptr @disconnect_src, ptr @fancy_abort, i64 6404}
!92 = !{ptr @disconnect_dest, ptr @VEC_edge_base_unordered_remove, i64 1994805}
!93 = !{ptr @disconnect_dest, ptr @VEC_edge_base_length, i64 1994805}
!94 = !{ptr @disconnect_dest, ptr @VEC_edge_base_index, i64 1109493}
!95 = !{ptr @disconnect_dest, ptr @df_mark_solutions_dirty, i64 1994805}
!96 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 866951}
!97 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 865142}
!98 = !{ptr @redirect_edge_succ, ptr @execute_on_shrinking_pred, i64 1209756}
!99 = !{ptr @redirect_edge_succ, ptr @disconnect_dest, i64 1209756}
!100 = !{ptr @redirect_edge_succ, ptr @connect_dest, i64 1209756}
!101 = !{ptr @redirect_edge_succ, ptr @execute_on_growing_pred, i64 1209756}
!102 = !{ptr @redirect_edge_succ_nodup, ptr @find_edge, i64 1160737}
!103 = !{ptr @redirect_edge_succ_nodup, ptr @remove_edge, i64 2898}
!104 = !{ptr @redirect_edge_succ_nodup, ptr @redirect_edge_var_map_dup, i64 2898}
!105 = !{ptr @redirect_edge_succ_nodup, ptr @redirect_edge_succ, i64 1157839}
!106 = !{ptr @redirect_edge_pred, ptr @disconnect_src, i64 34692}
!107 = !{ptr @redirect_edge_pred, ptr @connect_src, i64 34692}
!108 = !{ptr @alloc_aux_for_block, ptr @fancy_abort, i64 2}
!109 = !{ptr @alloc_aux_for_block, ptr @_obstack_newchunk, i64 1885}
!110 = !{ptr @alloc_aux_for_blocks, ptr @_obstack_begin, i64 2}
!111 = !{ptr @alloc_aux_for_blocks, ptr @fancy_abort, i64 1}
!112 = !{ptr @alloc_aux_for_blocks, ptr @_obstack_newchunk, i64 1}
!113 = !{ptr @alloc_aux_for_blocks, ptr @alloc_aux_for_block, i64 478708}
!114 = !{ptr @free_aux_for_blocks, ptr @fancy_abort, i64 1}
!115 = !{ptr @free_aux_for_blocks, ptr @obstack_free, i64 637}
!116 = !{ptr @free_aux_for_blocks, ptr @clear_aux_for_blocks, i64 11683}
!117 = !{ptr @alloc_aux_for_edge, ptr @fancy_abort, i64 2}
!118 = !{ptr @alloc_aux_for_edge, ptr @_obstack_newchunk, i64 3569}
!119 = !{ptr @alloc_aux_for_edges, ptr @_obstack_begin, i64 2}
!120 = !{ptr @alloc_aux_for_edges, ptr @fancy_abort, i64 1}
!121 = !{ptr @alloc_aux_for_edges, ptr @_obstack_newchunk, i64 1}
!122 = !{ptr @alloc_aux_for_edges, ptr @ei_start_1, i64 462600}
!123 = !{ptr @alloc_aux_for_edges, ptr @ei_cond, i64 1206765}
!124 = !{ptr @alloc_aux_for_edges, ptr @alloc_aux_for_edge, i64 744165}
!125 = !{ptr @alloc_aux_for_edges, ptr @ei_next, i64 744165}
!126 = !{ptr @clear_aux_for_edges, ptr @ei_start_1, i64 2802669}
!127 = !{ptr @clear_aux_for_edges, ptr @ei_cond, i64 7273520}
!128 = !{ptr @clear_aux_for_edges, ptr @ei_next, i64 4470851}
!129 = !{ptr @free_aux_for_edges, ptr @fancy_abort, i64 1}
!130 = !{ptr @free_aux_for_edges, ptr @obstack_free, i64 1043}
!131 = !{ptr @free_aux_for_edges, ptr @clear_aux_for_edges, i64 11640}
!132 = !{ptr @update_bb_profile_for_threading, ptr @fprintf, i64 4}
!133 = !{ptr @update_bb_profile_for_threading, ptr @VEC_edge_base_index, i64 1809}
!134 = !{ptr @update_bb_profile_for_threading, ptr @ei_start_1, i64 26248}
!135 = !{ptr @update_bb_profile_for_threading, ptr @ei_next, i64 53836}
!136 = !{ptr @update_bb_profile_for_threading, ptr @ei_safe_edge, i64 3618}
!137 = !{ptr @update_bb_profile_for_threading, ptr @ei_cond, i64 74657}
!138 = !{ptr @update_bb_profile_for_threading, ptr @fancy_abort, i64 1}
!139 = !{ptr @scale_bbs_frequencies_int, ptr @ei_start_1, i64 35839}
!140 = !{ptr @scale_bbs_frequencies_int, ptr @ei_cond, i64 100693}
!141 = !{ptr @scale_bbs_frequencies_int, ptr @ei_next, i64 64854}
!142 = !{ptr @initialize_original_copy_tables, ptr @fancy_abort, i64 1}
!143 = !{ptr @initialize_original_copy_tables, ptr @create_alloc_pool, i64 43156}
!144 = !{ptr @initialize_original_copy_tables, ptr @htab_create, i64 129468}
!145 = !{ptr @free_original_copy_tables, ptr @fancy_abort, i64 1}
!146 = !{ptr @free_original_copy_tables, ptr @htab_delete, i64 129468}
!147 = !{ptr @free_original_copy_tables, ptr @free_alloc_pool, i64 43156}
!148 = !{ptr @set_bb_original, ptr @copy_original_table_set, i64 44516}
!149 = !{ptr @copy_original_table_set, ptr @htab_find_slot, i64 91106}
!150 = !{ptr @copy_original_table_set, ptr @pool_alloc, i64 86508}
!151 = !{ptr @get_bb_original, ptr @fancy_abort, i64 1}
!152 = !{ptr @get_bb_original, ptr @htab_find, i64 25572}
!153 = !{ptr @get_bb_original, ptr @VEC_basic_block_base_index, i64 25571}
!154 = !{ptr @set_bb_copy, ptr @copy_original_table_set, i64 44516}
!155 = !{ptr @get_bb_copy, ptr @fancy_abort, i64 1}
!156 = !{ptr @get_bb_copy, ptr @htab_find, i64 30576}
!157 = !{ptr @get_bb_copy, ptr @VEC_basic_block_base_index, i64 30575}
!158 = !{ptr @set_loop_copy, ptr @copy_original_table_clear, i64 1298}
!159 = !{ptr @set_loop_copy, ptr @copy_original_table_set, i64 19352}
!160 = !{ptr @copy_original_table_clear, ptr @htab_find_slot, i64 1296}
!161 = !{ptr @copy_original_table_clear, ptr @htab_clear_slot, i64 1295}
!162 = !{ptr @copy_original_table_clear, ptr @pool_free, i64 1295}
!163 = !{ptr @get_loop_copy, ptr @fancy_abort, i64 1}
!164 = !{ptr @get_loop_copy, ptr @htab_find, i64 38874}
!165 = !{ptr @get_loop_copy, ptr @get_loop, i64 9991}
!166 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 9991}
!167 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!168 = !{!"function_entry_count", i64 10775}
!169 = !{!170, !171, i64 8}
!170 = !{!"function", !171, i64 0, !171, i64 8, !171, i64 16, !171, i64 24, !171, i64 32, !171, i64 40, !171, i64 48, !171, i64 56, !171, i64 64, !171, i64 72, !171, i64 80, !171, i64 88, !171, i64 96, !174, i64 104, !174, i64 108, !174, i64 112, !174, i64 116, !174, i64 120, !174, i64 124, !171, i64 128, !174, i64 136, !174, i64 137, !174, i64 138, !174, i64 138, !174, i64 138, !174, i64 138, !174, i64 138, !174, i64 138, !174, i64 138, !174, i64 139, !174, i64 139, !174, i64 139, !174, i64 139, !174, i64 139, !174, i64 139, !174, i64 139}
!171 = !{!"any pointer", !172, i64 0}
!172 = !{!"omnipotent char", !173, i64 0}
!173 = !{!"Simple C/C++ TBAA"}
!174 = !{!"int", !172, i64 0}
!175 = !{!"branch_weights", i32 10776, i32 1}
!176 = !{!177, !174, i64 28}
!177 = !{!"control_flow_graph", !171, i64 0, !171, i64 8, !171, i64 16, !174, i64 24, !174, i64 28, !174, i64 32, !171, i64 40, !174, i64 48, !172, i64 52, !172, i64 60, !174, i64 68, !174, i64 72}
!178 = !{!177, !171, i64 0}
!179 = !{!180, !174, i64 80}
!180 = !{!"basic_block_def", !171, i64 0, !171, i64 8, !171, i64 16, !171, i64 24, !172, i64 32, !171, i64 48, !171, i64 56, !172, i64 64, !181, i64 72, !174, i64 80, !174, i64 84, !174, i64 88, !174, i64 92, !174, i64 96}
!181 = !{!"long", !172, i64 0}
!182 = !{!177, !171, i64 8}
!183 = !{!180, !171, i64 56}
!184 = !{!180, !171, i64 48}
!185 = !{!"function_entry_count", i64 4123}
!186 = !{!171, !171, i64 0}
!187 = !{!"branch_weights", i32 1, i32 4123}
!188 = !{i64 0, i64 4, !189, i64 8, i64 8, !186}
!189 = !{!174, !174, i64 0}
!190 = !{i64 0, i64 8, !186}
!191 = !{i8 0, i8 2}
!192 = !{!"branch_weights", i32 1, i32 96561}
!193 = !{!"branch_weights", i32 96561, i32 54134}
!194 = distinct !{!194, !195}
!195 = !{!"llvm.loop.mustprogress"}
!196 = !{!180, !171, i64 8}
!197 = !{!180, !171, i64 0}
!198 = !{!"branch_weights", i32 4123, i32 92439}
!199 = distinct !{!199, !195}
!200 = !{!"branch_weights", i32 4123, i32 1}
!201 = distinct !{!201, !195}
!202 = !{!"branch_weights", i32 4124, i32 1}
!203 = !{!"function_entry_count", i64 4247920}
!204 = !{!"cfg.c:ei_start_1"}
!205 = !{!"function_entry_count", i64 8911506}
!206 = !{!"cfg.c:ei_cond"}
!207 = !{!"branch_weights", i32 5485136, i32 3426372}
!208 = !{!"function_entry_count", i64 939866}
!209 = !{!"cfg.c:free_edge"}
!210 = !{!"function_entry_count", i64 5532345}
!211 = !{!"cfg.c:ei_next"}
!212 = !{!"branch_weights", i32 1, i32 5532346}
!213 = !{!"branch_weights", i32 5532346, i32 1}
!214 = !{!215, !174, i64 0}
!215 = !{!"", !174, i64 0, !171, i64 8}
!216 = !{!"function_entry_count", i64 201368}
!217 = !{!"cfg.c:VEC_edge_base_truncate"}
!218 = !{!"branch_weights", i32 274, i32 201096}
!219 = !{!220, !174, i64 0}
!220 = !{!"VEC_edge_base", !174, i64 0, !174, i64 4, !172, i64 8}
!221 = !{!"function_entry_count", i64 9778457}
!222 = !{!"cfg.c:ei_end_p"}
!223 = !{!"branch_weights", i32 270, i32 9778189}
!224 = !{!"function_entry_count", i64 6350278}
!225 = !{!"cfg.c:ei_edge"}
!226 = !{!"branch_weights", i32 1, i32 6350279}
!227 = !{!"function_entry_count", i64 19870411}
!228 = !{!"cfg.c:VEC_edge_base_length"}
!229 = !{!"branch_weights", i32 270, i32 19870143}
!230 = !{!"function_entry_count", i64 43321891}
!231 = !{!"cfg.c:ei_container"}
!232 = !{!"branch_weights", i32 1, i32 43321892}
!233 = !{!"function_entry_count", i64 7461579}
!234 = !{!"cfg.c:VEC_edge_base_index"}
!235 = !{!"function_entry_count", i64 979216}
!236 = !{!"function_entry_count", i64 1013758}
!237 = !{!"function_entry_count", i64 668733}
!238 = !{!"function_entry_count", i64 274929}
!239 = !{!177, !171, i64 16}
!240 = !{!"branch_weights", i32 173366, i32 101565}
!241 = !{!"branch_weights", i32 1, i32 173365}
!242 = !{!"branch_weights", i32 173365, i32 7228100}
!243 = distinct !{!243, !195}
!244 = !{!177, !174, i64 24}
!245 = !{!"branch_weights", i32 173366, i32 1}
!246 = !{!177, !174, i64 32}
!247 = !{!"branch_weights", i32 173365, i32 1}
!248 = !{!"branch_weights", i32 352834, i32 173365}
!249 = distinct !{!249, !195}
!250 = !{!"function_entry_count", i64 9111711}
!251 = !{!"cfg.c:VEC_basic_block_base_replace"}
!252 = !{!"function_entry_count", i64 634191}
!253 = !{!"function_entry_count", i64 1355048}
!254 = !{!255, !171, i64 0}
!255 = !{!"edge_def", !171, i64 0, !171, i64 8, !172, i64 16, !171, i64 24, !171, i64 32, !174, i64 40, !174, i64 44, !174, i64 48, !174, i64 52, !181, i64 56}
!256 = !{!255, !171, i64 8}
!257 = !{!255, !174, i64 48}
!258 = !{!"function_entry_count", i64 1389740}
!259 = !{!"cfg.c:connect_src"}
!260 = !{!"function_entry_count", i64 2564804}
!261 = !{!"cfg.c:connect_dest"}
!262 = !{!255, !174, i64 44}
!263 = !{!"function_entry_count", i64 3954544}
!264 = !{!"cfg.c:VEC_edge_gc_safe_push"}
!265 = !{!"cfg.c:VEC_edge_gc_reserve"}
!266 = !{!"branch_weights", i32 2014391, i32 1940155}
!267 = !{!"cfg.c:VEC_edge_base_quick_push"}
!268 = !{!"cfg.c:VEC_edge_base_space"}
!269 = !{!"branch_weights", i32 1978354, i32 1976192}
!270 = !{!220, !174, i64 4}
!271 = !{!"function_entry_count", i64 618308}
!272 = !{!"branch_weights", i32 506119, i32 112191}
!273 = !{!"branch_weights", i32 1, i32 112191}
!274 = !{!"branch_weights", i32 582, i32 111610}
!275 = !{!181, !181, i64 0}
!276 = !{!"branch_weights", i32 5385, i32 106226}
!277 = !{!"branch_weights", i32 75237, i32 30990}
!278 = !{!"function_entry_count", i64 1762305}
!279 = !{!"branch_weights", i32 1270600, i32 491707}
!280 = !{!"function_entry_count", i64 5384}
!281 = !{!"cfg.c:SET_BIT"}
!282 = !{!283, !171, i64 0}
!283 = !{!"simple_bitmap_def", !171, i64 0, !174, i64 8, !174, i64 12, !172, i64 16}
!284 = !{!"branch_weights", i32 5385, i32 1}
!285 = !{!172, !172, i64 0}
!286 = !{!"function_entry_count", i64 159152}
!287 = !{!255, !174, i64 52}
!288 = !{!180, !181, i64 72}
!289 = !{!255, !181, i64 56}
!290 = !{!"function_entry_count", i64 785049}
!291 = !{!"function_entry_count", i64 819741}
!292 = !{!"cfg.c:disconnect_src"}
!293 = !{!"branch_weights", i32 1, i32 127}
!294 = !{!"branch_weights", i32 776147, i32 43595}
!295 = !{!"branch_weights", i32 43595, i32 0}
!296 = distinct !{!296, !195}
!297 = !{!"branch_weights", i32 127, i32 110506881}
!298 = !{!"function_entry_count", i64 1994805}
!299 = !{!"cfg.c:disconnect_dest"}
!300 = !{!"branch_weights", i32 1109494, i32 885313}
!301 = !{!"function_entry_count", i64 866951}
!302 = !{!"cfg.c:ei_safe_edge"}
!303 = !{!"branch_weights", i32 865144, i32 1809}
!304 = !{!"function_entry_count", i64 2814546}
!305 = !{!"cfg.c:VEC_edge_base_unordered_remove"}
!306 = !{!"function_entry_count", i64 1209756}
!307 = !{!"function_entry_count", i64 1160737}
!308 = !{!"branch_weights", i32 -880675055, i32 8545703}
!309 = !{!"branch_weights", i32 22, i32 2877}
!310 = !{!"function_entry_count", i64 34692}
!311 = !{!"function_entry_count", i64 21723}
!312 = !{!"branch_weights", i32 1, i32 21723}
!313 = !{!180, !174, i64 96}
!314 = !{!"branch_weights", i32 21723, i32 1020398}
!315 = distinct !{!315, !195}
!316 = !{!"function_entry_count", i64 0}
!317 = !{!177, !174, i64 48}
!318 = distinct !{!318, !195}
!319 = distinct !{!319, !195}
!320 = !{!180, !174, i64 88}
!321 = distinct !{!321, !195}
!322 = distinct !{!322, !195}
!323 = distinct !{!323, !195}
!324 = !{!"cfg.c:bmp_iter_set_init"}
!325 = !{!326, !171, i64 0}
!326 = !{!"bitmap_head_def", !171, i64 0, !171, i64 8, !174, i64 16, !171, i64 24}
!327 = !{!328, !171, i64 0}
!328 = !{!"", !171, i64 0, !171, i64 8, !174, i64 16, !181, i64 24}
!329 = !{!328, !171, i64 8}
!330 = !{!331, !174, i64 16}
!331 = !{!"bitmap_element_def", !171, i64 0, !171, i64 8, !174, i64 16, !172, i64 24}
!332 = !{!328, !174, i64 16}
!333 = !{!328, !181, i64 24}
!334 = !{!"cfg.c:bmp_iter_set"}
!335 = distinct !{!335, !195}
!336 = distinct !{!336, !195}
!337 = !{!331, !171, i64 0}
!338 = !{!"cfg.c:bmp_iter_next"}
!339 = !{!180, !174, i64 84}
!340 = distinct !{!340, !195}
!341 = distinct !{!341, !195}
!342 = distinct !{!342, !195}
!343 = !{!344, !174, i64 8}
!344 = !{!"reg_info_t", !174, i64 0, !174, i64 4, !174, i64 8, !174, i64 12, !174, i64 16, !174, i64 20, !174, i64 24}
!345 = !{!346, !171, i64 224}
!346 = !{!"df", !172, i64 0, !172, i64 64, !171, i64 128, !347, i64 136, !347, i64 176, !171, i64 216, !171, i64 224, !171, i64 232, !174, i64 240, !174, i64 244, !171, i64 248, !174, i64 256, !174, i64 260, !171, i64 264, !171, i64 272, !171, i64 280, !171, i64 288, !171, i64 296, !171, i64 304, !171, i64 312, !171, i64 320, !171, i64 328, !171, i64 336, !174, i64 344, !174, i64 348, !171, i64 352, !174, i64 360, !174, i64 364, !172, i64 365, !172, i64 366}
!347 = !{!"df_ref_info", !171, i64 0, !171, i64 8, !171, i64 16, !174, i64 24, !174, i64 28, !174, i64 32, !174, i64 36}
!348 = !{!349, !174, i64 8}
!349 = !{!"df_reg_info", !171, i64 0, !174, i64 8}
!350 = !{!346, !171, i64 216}
!351 = !{!344, !174, i64 24}
!352 = !{!344, !174, i64 4}
!353 = !{!344, !174, i64 12}
!354 = !{!344, !174, i64 16}
!355 = distinct !{!355, !195}
!356 = !{!"cfg.c:REG_N_REFS"}
!357 = !{!358, !174, i64 4}
!358 = !{!"regstat_n_sets_and_refs_t", !174, i64 0, !174, i64 4}
!359 = !{!"cfg.c:REG_N_SETS"}
!360 = !{!358, !174, i64 0}
!361 = distinct !{!361, !195}
!362 = !{!"function_entry_count", i64 478789}
!363 = !{!180, !171, i64 16}
!364 = !{!"branch_weights", i32 -713094420, i32 14962}
!365 = !{!366, !181, i64 40}
!366 = !{!"obstack", !181, i64 0, !171, i64 8, !171, i64 16, !171, i64 24, !171, i64 32, !181, i64 40, !174, i64 48, !171, i64 56, !171, i64 64, !171, i64 72, !174, i64 80, !174, i64 80, !174, i64 80}
!367 = !{!366, !171, i64 32}
!368 = !{!366, !171, i64 24}
!369 = !{!"branch_weights", i32 1885, i32 476906}
!370 = !{!366, !171, i64 16}
!371 = !{!"branch_weights", i32 1, i32 478790}
!372 = !{!366, !174, i64 48}
!373 = !{!366, !171, i64 8}
!374 = !{!"function_entry_count", i64 11683}
!375 = !{!"branch_weights", i32 11683, i32 2}
!376 = !{!"branch_weights", i32 11683, i32 1}
!377 = !{!"branch_weights", i32 1, i32 11684}
!378 = !{!"branch_weights", i32 11684, i32 1}
!379 = !{!"branch_weights", i32 1, i32 11683}
!380 = !{!"branch_weights", i32 11683, i32 467107}
!381 = distinct !{!381, !195}
!382 = !{!"function_entry_count", i64 60212}
!383 = !{!"branch_weights", i32 1, i32 60212}
!384 = !{!"branch_weights", i32 60212, i32 3047748}
!385 = distinct !{!385, !195}
!386 = !{!"branch_weights", i32 11049, i32 636}
!387 = !{!"branch_weights", i32 11049, i32 1}
!388 = !{!"function_entry_count", i64 744292}
!389 = !{!255, !171, i64 24}
!390 = !{!"branch_weights", i32 -2131013899, i32 5814}
!391 = !{!"branch_weights", i32 3569, i32 740725}
!392 = !{!"branch_weights", i32 1, i32 744293}
!393 = !{!"function_entry_count", i64 11640}
!394 = !{!"branch_weights", i32 11640, i32 2}
!395 = !{!"branch_weights", i32 11640, i32 1}
!396 = !{!"branch_weights", i32 1, i32 11641}
!397 = !{!"branch_weights", i32 11641, i32 1}
!398 = !{!"branch_weights", i32 1, i32 11640}
!399 = !{!"branch_weights", i32 1, i32 462678}
!400 = !{!"branch_weights", i32 462678, i32 281615}
!401 = distinct !{!401, !195}
!402 = !{!"branch_weights", i32 11640, i32 451039}
!403 = distinct !{!403, !195}
!404 = !{!"function_entry_count", i64 48133}
!405 = !{!"branch_weights", i32 1, i32 48133}
!406 = !{!"branch_weights", i32 1, i32 2802726}
!407 = !{!"branch_weights", i32 2802726, i32 1668218}
!408 = distinct !{!408, !195}
!409 = !{!"branch_weights", i32 48133, i32 2754594}
!410 = distinct !{!410, !195}
!411 = !{!"branch_weights", i32 10601, i32 1041}
!412 = !{!"branch_weights", i32 10600, i32 2}
!413 = !{!"function_entry_count", i64 56148}
!414 = !{!"cfg.c:VEC_basic_block_base_index"}
!415 = distinct !{!415, !195}
!416 = !{!"cfg.c:dump_cfg_bb_info"}
!417 = distinct !{!417, !195}
!418 = distinct !{!418, !195}
!419 = distinct !{!419, !195}
!420 = !{!"function_entry_count", i64 42963}
!421 = !{!"branch_weights", i32 1, i32 42964}
!422 = !{!"branch_weights", i32 5254, i32 37711}
!423 = !{!"branch_weights", i32 13247, i32 29718}
!424 = !{!"branch_weights", i32 13247, i32 1}
!425 = !{!"branch_weights", i32 1809, i32 41156}
!426 = !{!"branch_weights", i32 1809, i32 1}
!427 = !{!"branch_weights", i32 1, i32 1808}
!428 = !{!"branch_weights", i32 1808, i32 1}
!429 = distinct !{!429, !195}
!430 = !{!"branch_weights", i32 16716, i32 24441}
!431 = !{!"branch_weights", i32 1, i32 24440}
!432 = !{!"branch_weights", i32 71, i32 50152}
!433 = !{!"branch_weights", i32 1, i32 50152}
!434 = !{!"branch_weights", i32 24440, i32 25782}
!435 = distinct !{!435, !195}
!436 = !{!"branch_weights", i32 42964, i32 1}
!437 = !{!"function_entry_count", i64 21748}
!438 = !{!"branch_weights", i32 1, i32 21749}
!439 = !{!"branch_weights", i32 13421, i32 8329}
!440 = !{!"branch_weights", i32 160004, i32 2147323644}
!441 = !{!"branch_weights", i32 472997252, i32 43498}
!442 = !{!"branch_weights", i32 20, i32 35825}
!443 = !{!"branch_weights", i32 1, i32 35843}
!444 = !{!"branch_weights", i32 35843, i32 29020}
!445 = distinct !{!445, !195}
!446 = !{!"branch_weights", i32 21748, i32 14096}
!447 = distinct !{!447, !195}
!448 = distinct !{!448, !195}
!449 = distinct !{!449, !195}
!450 = distinct !{!450, !195}
!451 = distinct !{!451, !195}
!452 = !{!"function_entry_count", i64 43156}
!453 = !{!"branch_weights", i32 43157, i32 1}
!454 = !{!"function_entry_count", i64 221930}
!455 = !{!"cfg.c:bb_copy_original_hash"}
!456 = !{!457, !174, i64 0}
!457 = !{!"htab_bb_copy_original_entry", !174, i64 0, !174, i64 4}
!458 = !{!"function_entry_count", i64 86216}
!459 = !{!"cfg.c:bb_copy_original_eq"}
!460 = !{!"branch_weights", i32 1, i32 43157}
!461 = !{!"function_entry_count", i64 44516}
!462 = !{!"function_entry_count", i64 108385}
!463 = !{!"cfg.c:copy_original_table_set"}
!464 = !{!"branch_weights", i32 17279, i32 91108}
!465 = !{!"branch_weights", i32 86511, i32 4598}
!466 = !{!457, !174, i64 4}
!467 = !{!"function_entry_count", i64 25572}
!468 = !{!"branch_weights", i32 1, i32 25573}
!469 = !{!"function_entry_count", i64 30576}
!470 = !{!"branch_weights", i32 1, i32 30577}
!471 = !{!"function_entry_count", i64 20650}
!472 = !{!473, !174, i64 0}
!473 = !{!"loop", !174, i64 0, !174, i64 4, !171, i64 8, !171, i64 16, !474, i64 24, !174, i64 32, !174, i64 36, !171, i64 40, !171, i64 48, !171, i64 56, !171, i64 64, !171, i64 72, !475, i64 80, !475, i64 96, !172, i64 112, !172, i64 113, !174, i64 116, !171, i64 120, !171, i64 128, !172, i64 136, !171, i64 144}
!474 = !{!"lpt_decision", !174, i64 0, !174, i64 4}
!475 = !{!"", !181, i64 0, !181, i64 8}
!476 = !{!"branch_weights", i32 1298, i32 19354}
!477 = !{!"function_entry_count", i64 1297}
!478 = !{!"cfg.c:copy_original_table_clear"}
!479 = !{!"branch_weights", i32 1, i32 1298}
!480 = !{!"function_entry_count", i64 38874}
!481 = !{!"branch_weights", i32 1, i32 38875}
!482 = !{!"branch_weights", i32 28884, i32 9992}
!483 = !{!"function_entry_count", i64 9991}
!484 = !{!"cfg.c:get_loop"}
!485 = !{!170, !171, i64 32}
!486 = !{!487, !171, i64 8}
!487 = !{!"loops", !174, i64 0, !171, i64 8, !171, i64 16, !171, i64 24}
!488 = !{!"cfg.c:VEC_loop_p_base_index"}
