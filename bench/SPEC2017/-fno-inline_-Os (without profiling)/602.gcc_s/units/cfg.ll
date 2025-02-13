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
define dso_local void @init_flow(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 80) #21
  store ptr %6, ptr %2, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !12
  %10 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 104) #21
  %11 = load ptr, ptr %2, align 8, !tbaa !6
  store ptr %10, ptr %11, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  store i32 0, ptr %12, align 8, !tbaa !15
  %13 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 104) #21
  %14 = load ptr, ptr %2, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  store i32 1, ptr %16, align 8, !tbaa !15
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  store ptr %13, ptr %18, align 8, !tbaa !19
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 5
  store ptr %17, ptr %19, align 8, !tbaa !20
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clear_edges() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %3 = load ptr, ptr @cfun, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %39, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  br label %14

14:                                               ; preds = %12, %26
  %15 = phi ptr [ %8, %12 ], [ %30, %26 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 1
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %16) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !22
  store ptr %17, ptr %13, align 8, !tbaa.struct !24
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %1) #23, !range !25
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14, %20
  %21 = load ptr, ptr %1, align 8, !tbaa !21
  tail call fastcc void @free_edge(ptr noundef %21) #23
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %22 = load i32, ptr %2, align 8
  %23 = load ptr, ptr %13, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %1) #23, !range !25
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %20, !llvm.loop !26

26:                                               ; preds = %20, %14
  %27 = load ptr, ptr %16, align 8, !tbaa !28
  tail call fastcc void @VEC_edge_base_truncate(ptr noundef %27) #23
  %28 = load ptr, ptr %15, align 8, !tbaa !29
  tail call fastcc void @VEC_edge_base_truncate(ptr noundef %28) #23
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  %31 = load ptr, ptr @cfun, align 8, !tbaa !21
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !18
  %36 = icmp eq ptr %30, %35
  br i1 %36, label %37, label %14, !llvm.loop !30

37:                                               ; preds = %26
  %38 = load ptr, ptr %33, align 8, !tbaa !14
  br label %39

39:                                               ; preds = %37, %0
  %40 = phi ptr [ %6, %0 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 1
  %42 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %41) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !22
  %43 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %42, ptr %43, align 8, !tbaa.struct !24
  %44 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %42, ptr noundef nonnull %1) #23, !range !25
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %39, %46
  %47 = load ptr, ptr %1, align 8, !tbaa !21
  tail call fastcc void @free_edge(ptr noundef %47) #23
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %48 = load i32, ptr %2, align 8
  %49 = load ptr, ptr %43, align 8
  %50 = call fastcc zeroext i8 @ei_cond(i32 %48, ptr %49, ptr noundef nonnull %1) #23, !range !25
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %46, !llvm.loop !31

52:                                               ; preds = %46, %39
  %53 = load ptr, ptr @cfun, align 8, !tbaa !21
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !18
  %58 = load ptr, ptr %57, align 8, !tbaa !29
  tail call fastcc void @VEC_edge_base_truncate(ptr noundef %58) #23
  %59 = load ptr, ptr @cfun, align 8, !tbaa !21
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = load ptr, ptr %61, align 8, !tbaa !14
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !28
  tail call fastcc void @VEC_edge_base_truncate(ptr noundef %64) #23
  %65 = load ptr, ptr @cfun, align 8, !tbaa !21
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 4
  %69 = load i32, ptr %68, align 4, !tbaa !12
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !25
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #23
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !21
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_edge(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 4, !tbaa !12
  tail call void @ggc_free(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #23
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #23
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !32
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_edge_base_truncate(ptr noundef writeonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !34
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #23
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !34
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @alloc_block() local_unnamed_addr #0 {
  %1 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 104) #21
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @link_block(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  store ptr %4, ptr %5, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  store ptr %1, ptr %6, align 8, !tbaa !20
  store ptr %0, ptr %3, align 8, !tbaa !19
  %7 = load ptr, ptr %5, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 5
  store ptr %0, ptr %8, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @unlink_block(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  store ptr %3, ptr %6, align 8, !tbaa !20
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 6
  store ptr %5, ptr %7, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @compact_blocks() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !21
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = load ptr, ptr %3, align 8, !tbaa !14
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %5, i32 noundef 0, ptr noundef %6) #23
  %7 = load ptr, ptr @cfun, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %11, i32 noundef 1, ptr noundef %13) #23
  %14 = load ptr, ptr @df, align 8, !tbaa !21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %0
  tail call void @df_compact_blocks() #21
  %17 = load ptr, ptr @cfun, align 8, !tbaa !21
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  br label %74

20:                                               ; preds = %0
  %21 = load ptr, ptr @cfun, align 8, !tbaa !21
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = load ptr, ptr %23, align 8, !tbaa !14
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !18
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %46, label %30

30:                                               ; preds = %20, %30
  %31 = phi ptr [ %42, %30 ], [ %23, %20 ]
  %32 = phi ptr [ %39, %30 ], [ %26, %20 ]
  %33 = phi i32 [ %37, %30 ], [ 2, %20 ]
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !36
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %35, i32 noundef %33, ptr noundef %32) #23
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  store i32 %33, ptr %36, align 8, !tbaa !15
  %37 = add nuw nsw i32 %33, 1
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !19
  %40 = load ptr, ptr @cfun, align 8, !tbaa !21
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !18
  %45 = icmp eq ptr %39, %44
  br i1 %45, label %46, label %30, !llvm.loop !37

46:                                               ; preds = %30, %20
  %47 = phi ptr [ %21, %20 ], [ %40, %30 ]
  %48 = phi i32 [ 2, %20 ], [ %37, %30 ]
  %49 = phi ptr [ %23, %20 ], [ %42, %30 ]
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !38
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @.str.1) #21
  %54 = load ptr, ptr @cfun, align 8, !tbaa !21
  br label %55

55:                                               ; preds = %46, %53
  %56 = phi ptr [ %47, %46 ], [ %54, %53 ]
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !39
  %61 = icmp slt i32 %48, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %55, %62
  %63 = phi ptr [ %70, %62 ], [ %58, %55 ]
  %64 = phi i32 [ %67, %62 ], [ %48, %55 ]
  %65 = getelementptr inbounds %struct.control_flow_graph, ptr %63, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !36
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %66, i32 noundef %64, ptr noundef null) #23
  %67 = add nuw nsw i32 %64, 1
  %68 = load ptr, ptr @cfun, align 8, !tbaa !21
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %70, i64 0, i32 5
  %72 = load i32, ptr %71, align 8, !tbaa !39
  %73 = icmp slt i32 %67, %72
  br i1 %73, label %62, label %74, !llvm.loop !40

74:                                               ; preds = %62, %55, %16
  %75 = phi ptr [ %58, %55 ], [ %19, %16 ], [ %70, %62 ]
  %76 = getelementptr inbounds %struct.control_flow_graph, ptr %75, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !38
  %78 = getelementptr inbounds %struct.control_flow_graph, ptr %75, i64 0, i32 5
  store i32 %77, ptr %78, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !21
  ret void
}

; Function Attrs: optsize
declare void @df_compact_blocks() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @expunge_block(ptr nocapture noundef %0) local_unnamed_addr #8 {
  tail call void @unlink_block(ptr noundef %0) #23
  %2 = load ptr, ptr @cfun, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !15
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %6, i32 noundef %8, ptr noundef null) #23
  %9 = load ptr, ptr @cfun, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !38
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %12, align 8, !tbaa !38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @unchecked_make_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 64) #21
  %5 = load ptr, ptr @cfun, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !12
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !12
  store ptr %0, ptr %4, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 7
  store i32 %2, ptr %12, align 8, !tbaa !44
  tail call fastcc void @connect_src(ptr noundef nonnull %4) #23
  tail call fastcc void @connect_dest(ptr noundef nonnull %4) #23
  tail call void @execute_on_growing_pred(ptr noundef nonnull %4) #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @connect_src(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !41
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  tail call fastcc void @VEC_edge_gc_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %0) #23
  tail call void @df_mark_solutions_dirty() #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @connect_dest(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  tail call fastcc void @VEC_edge_gc_safe_push(ptr noundef %3, ptr noundef %0) #23
  %4 = load ptr, ptr %3, align 8, !tbaa !29
  %5 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %4) #23
  %6 = add i32 %5, -1
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  store i32 %6, ptr %7, align 4, !tbaa !45
  tail call void @df_mark_solutions_dirty() #21
  ret void
}

; Function Attrs: optsize
declare void @execute_on_growing_pred(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_edge_gc_reserve(ptr noundef %0) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !21
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %3, ptr noundef %1) #23
  ret void
}

; Function Attrs: optsize
declare void @df_mark_solutions_dirty() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  %3 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !21
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !34
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !34
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = load i32, ptr %0, align 8, !tbaa !34
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
define dso_local noundef ptr @cached_make_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr @cfun, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %6, %4
  %17 = tail call ptr @make_edge(ptr noundef %1, ptr noundef %2, i32 noundef %3) #23
  br label %39

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !15
  %21 = lshr i32 %20, 6
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !47
  %25 = and i32 %20, 63
  %26 = zext nneg i32 %25 to i64
  %27 = shl nuw i64 1, %26
  %28 = and i64 %27, %24
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  tail call fastcc void @SET_BIT(ptr noundef nonnull %0, i32 noundef %20) #23
  %31 = tail call ptr @unchecked_make_edge(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3) #23
  br label %39

32:                                               ; preds = %18
  %33 = icmp eq i32 %3, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %32
  %35 = tail call ptr @find_edge(ptr noundef %1, ptr noundef nonnull %2) #21
  %36 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !44
  %38 = or i32 %37, %3
  store i32 %38, ptr %36, align 8, !tbaa !44
  br label %39

39:                                               ; preds = %32, %34, %30, %16
  %40 = phi ptr [ %17, %16 ], [ %31, %30 ], [ null, %34 ], [ null, %32 ]
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @find_edge(ptr noundef %0, ptr noundef %1) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = or i32 %8, %2
  store i32 %9, ptr %7, align 8, !tbaa !44
  br label %12

10:                                               ; preds = %3
  %11 = tail call ptr @unchecked_make_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2) #23
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ null, %6 ], [ %11, %10 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = load ptr, ptr %0, align 8, !tbaa !48
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
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !50
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !50
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !47
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_single_succ_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @make_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2) #23
  %5 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 8
  store i32 10000, ptr %5, align 4, !tbaa !51
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %7 = load i64, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 9
  store i64 %7, ptr %8, align 8, !tbaa !53
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_edge_raw(ptr noundef %0) local_unnamed_addr #0 {
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
define internal fastcc void @disconnect_src(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !22
  %6 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !24
  %7 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %5) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = icmp eq ptr %7, %0
  br i1 %10, label %13, label %16

11:                                               ; preds = %16
  %12 = icmp eq ptr %19, %0
  br i1 %12, label %13, label %16, !llvm.loop !54

13:                                               ; preds = %11, %9
  %14 = phi i32 [ 0, %9 ], [ %17, %11 ]
  %15 = load ptr, ptr %4, align 8, !tbaa !28
  tail call fastcc void @VEC_edge_base_unordered_remove(ptr noundef %15, i32 noundef %14) #23
  br label %22

16:                                               ; preds = %9, %11
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %17 = load i32, ptr %2, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = tail call fastcc ptr @ei_safe_edge(i32 %17, ptr %18) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11, !llvm.loop !54

21:                                               ; preds = %16, %1
  tail call void @df_mark_solutions_dirty() #21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @.str.1) #21
  br label %22

22:                                               ; preds = %21, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @disconnect_dest(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !45
  %6 = load ptr, ptr %3, align 8, !tbaa !29
  tail call fastcc void @VEC_edge_base_unordered_remove(ptr noundef %6, i32 noundef %5) #23
  %7 = load ptr, ptr %3, align 8, !tbaa !29
  %8 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %7) #23
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef %5) #23
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 6
  store i32 %5, ptr %12, align 4, !tbaa !45
  br label %13

13:                                               ; preds = %10, %1
  tail call void @df_mark_solutions_dirty() #21
  ret void
}

; Function Attrs: optsize
declare void @redirect_edge_var_map_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #23, !range !25
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #23
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !34
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !34
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  store ptr %9, ptr %5, align 8, !tbaa !21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_edge_succ(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @execute_on_shrinking_pred(ptr noundef %0) #21
  tail call fastcc void @disconnect_dest(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !43
  tail call fastcc void @connect_dest(ptr noundef %0) #23
  tail call void @execute_on_growing_pred(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @redirect_edge_succ_nodup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !41
  %4 = tail call ptr @find_edge(ptr noundef %3, ptr noundef %1) #21
  %5 = icmp eq ptr %4, null
  %6 = icmp eq ptr %4, %0
  %7 = or i1 %5, %6
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = or i32 %12, %10
  store i32 %13, ptr %11, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 4, !tbaa !51
  %16 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !51
  %18 = add nsw i32 %17, %15
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 10000)
  store i32 %19, ptr %16, align 4, !tbaa !51
  %20 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %21 = load i64, ptr %20, align 8, !tbaa !53
  %22 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 9
  %23 = load i64, ptr %22, align 8, !tbaa !53
  %24 = add nsw i64 %23, %21
  store i64 %24, ptr %22, align 8, !tbaa !53
  tail call void @remove_edge(ptr noundef nonnull %0) #21
  tail call void @redirect_edge_var_map_dup(ptr noundef nonnull %4, ptr noundef nonnull %0) #21
  br label %26

25:                                               ; preds = %2
  tail call void @redirect_edge_succ(ptr noundef nonnull %0, ptr noundef %1) #23
  br label %26

26:                                               ; preds = %25, %8
  %27 = phi ptr [ %4, %8 ], [ %0, %25 ]
  ret ptr %27
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @redirect_edge_var_map_dup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_edge_pred(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @disconnect_src(ptr noundef %0) #23
  store ptr %1, ptr %0, align 8, !tbaa !41
  tail call fastcc void @connect_src(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_bb_flags() local_unnamed_addr #9 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !21
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %12, %6 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 13
  %9 = load i32, ptr %8, align 8, !tbaa !55
  %10 = and i32 %9, 880
  store i32 %10, ptr %8, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !llvm.loop !56

14:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @check_bb_profile(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %5 = load ptr, ptr @cfun, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !57
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %133, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %73, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %16) #23
  store i32 0, ptr %4, align 8, !tbaa.struct !22
  %18 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %17, ptr %18, align 8, !tbaa.struct !24
  %19 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %3) #23, !range !25
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %15, %21
  %22 = phi i32 [ %26, %21 ], [ 0, %15 ]
  %23 = load ptr, ptr %3, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !51
  %26 = add nsw i32 %25, %22
  call fastcc void @ei_next(ptr noundef nonnull %4) #23
  %27 = load i32, ptr %4, align 8
  %28 = load ptr, ptr %18, align 8
  %29 = call fastcc zeroext i8 @ei_cond(i32 %27, ptr %28, ptr noundef nonnull %3) #23, !range !25
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %21, !llvm.loop !58

31:                                               ; preds = %21, %15
  %32 = phi i32 [ 0, %15 ], [ %26, %21 ]
  %33 = load ptr, ptr %16, align 8, !tbaa !28
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
  store i32 0, ptr %4, align 8, !tbaa.struct !22
  store ptr %17, ptr %18, align 8, !tbaa.struct !24
  %46 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %3) #23, !range !25
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %45, %48
  %49 = phi i64 [ %53, %48 ], [ 0, %45 ]
  %50 = load ptr, ptr %3, align 8, !tbaa !21
  %51 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 9
  %52 = load i64, ptr %51, align 8, !tbaa !53
  %53 = add nsw i64 %52, %49
  call fastcc void @ei_next(ptr noundef nonnull %4) #23
  %54 = load i32, ptr %4, align 8
  %55 = load ptr, ptr %18, align 8
  %56 = call fastcc zeroext i8 @ei_cond(i32 %54, ptr %55, ptr noundef nonnull %3) #23, !range !25
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %48, !llvm.loop !59

58:                                               ; preds = %48, %45
  %59 = phi i64 [ 0, %45 ], [ %53, %48 ]
  %60 = load ptr, ptr %16, align 8, !tbaa !28
  %61 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %60) #23
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %65 = load i64, ptr %64, align 8, !tbaa !52
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
  %74 = load ptr, ptr @cfun, align 8, !tbaa !21
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  %77 = load ptr, ptr %76, align 8, !tbaa !14
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %133, label %79

79:                                               ; preds = %73
  %80 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #23
  store i32 0, ptr %4, align 8, !tbaa.struct !22
  %81 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %80, ptr %81, align 8, !tbaa.struct !24
  %82 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %80, ptr noundef nonnull %3) #23, !range !25
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %79, %84
  %85 = phi i32 [ %95, %84 ], [ 0, %79 ]
  %86 = load ptr, ptr %3, align 8, !tbaa !21
  %87 = load ptr, ptr %86, align 8, !tbaa !41
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 11
  %89 = load i32, ptr %88, align 8, !tbaa !60
  %90 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 8
  %91 = load i32, ptr %90, align 4, !tbaa !51
  %92 = mul nsw i32 %91, %89
  %93 = add nsw i32 %92, 5000
  %94 = sdiv i32 %93, 10000
  %95 = add nsw i32 %94, %85
  call fastcc void @ei_next(ptr noundef nonnull %4) #23
  %96 = load i32, ptr %4, align 8
  %97 = load ptr, ptr %81, align 8
  %98 = call fastcc zeroext i8 @ei_cond(i32 %96, ptr %97, ptr noundef nonnull %3) #23, !range !25
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %84, !llvm.loop !61

100:                                              ; preds = %84, %79
  %101 = phi i32 [ 0, %79 ], [ %95, %84 ]
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %103 = load i32, ptr %102, align 8, !tbaa !60
  %104 = sub nsw i32 %101, %103
  %105 = tail call i32 @llvm.abs.i32(i32 %104, i1 true)
  %106 = icmp ugt i32 %105, 100
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %101, i32 noundef %103) #23
  br label %109

109:                                              ; preds = %107, %100
  store i32 0, ptr %4, align 8, !tbaa.struct !22
  store ptr %80, ptr %81, align 8, !tbaa.struct !24
  %110 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %80, ptr noundef nonnull %3) #23, !range !25
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %109, %112
  %113 = phi i64 [ %117, %112 ], [ 0, %109 ]
  %114 = load ptr, ptr %3, align 8, !tbaa !21
  %115 = getelementptr inbounds %struct.edge_def, ptr %114, i64 0, i32 9
  %116 = load i64, ptr %115, align 8, !tbaa !53
  %117 = add nsw i64 %116, %113
  call fastcc void @ei_next(ptr noundef nonnull %4) #23
  %118 = load i32, ptr %4, align 8
  %119 = load ptr, ptr %81, align 8
  %120 = call fastcc zeroext i8 @ei_cond(i32 %118, ptr %119, ptr noundef nonnull %3) #23, !range !25
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %112, !llvm.loop !62

122:                                              ; preds = %112, %109
  %123 = phi i64 [ 0, %109 ], [ %117, %112 ]
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %125 = load i64, ptr %124, align 8, !tbaa !52
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
define dso_local void @dump_regset(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #12 {
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
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %8, %20
  %12 = load i32, ptr %3, align 4, !tbaa !23
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %12) #23
  %14 = icmp ult i32 %12, 53
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = zext nneg i32 %12 to i64
  %17 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef %18) #23
  br label %20

20:                                               ; preds = %11, %15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %11, !llvm.loop !63

23:                                               ; preds = %20, %8, %6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 {
  %4 = load ptr, ptr %1, align 8, !tbaa !64
  store ptr %4, ptr %0, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !68
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !66
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !69
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !72
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !72
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !23
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !73

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !23
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !23
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !71
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !66
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !71
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !47
  store i64 %35, ptr %3, align 8, !tbaa !72
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !23
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !23
  %40 = load i32, ptr %23, align 8, !tbaa !71
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !71
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !74

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !75
  store ptr %44, ptr %0, align 8, !tbaa !66
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !69
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !23
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !72
  store i32 %16, ptr %1, align 4, !tbaa !23
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !72
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !72
  %6 = load i32, ptr %1, align 4, !tbaa !23
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_regset(ptr noundef %0) local_unnamed_addr #12 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !21
  tail call void @dump_regset(ptr noundef %0, ptr noundef %2) #23
  %3 = load ptr, ptr @stderr, align 8, !tbaa !21
  %4 = tail call i32 @putc(i32 noundef 10, ptr noundef %3) #23
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_bb_info(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #22
  %9 = icmp eq i8 %1, 0
  br i1 %9, label %80, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !15
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef %4, i32 noundef %12) #23
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !15
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %19) #23
  br label %21

21:                                               ; preds = %17, %10
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !15
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %27) #23
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %31 = load i32, ptr %30, align 4, !tbaa !76
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %31) #23
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %34 = load i64, ptr %33, align 8, !tbaa !52
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.14, i64 noundef %34) #23
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %37 = load i32, ptr %36, align 8, !tbaa !60
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef %37) #23
  %39 = load ptr, ptr @cfun, align 8, !tbaa !21
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
  %47 = load ptr, ptr @cfun, align 8, !tbaa !21
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
  store i32 0, ptr %8, align 8, !tbaa.struct !22
  %58 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr %57, ptr %58, align 8, !tbaa.struct !24
  %59 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %57, ptr noundef nonnull %7) #23, !range !25
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %54, %61
  %62 = load ptr, ptr %7, align 8, !tbaa !21
  tail call void @dump_edge_info(ptr noundef %5, ptr noundef %62, i32 noundef 0) #23
  call fastcc void @ei_next(ptr noundef nonnull %8) #23
  %63 = load i32, ptr %8, align 8
  %64 = load ptr, ptr %58, align 8
  %65 = call fastcc zeroext i8 @ei_cond(i32 %63, ptr %64, ptr noundef nonnull %7) #23, !range !25
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %61, !llvm.loop !77

67:                                               ; preds = %61, %54
  %68 = and i32 %3, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %72 = load i32, ptr %71, align 8, !tbaa !55
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
  store i32 0, ptr %8, align 8, !tbaa.struct !22
  %86 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr %85, ptr %86, align 8, !tbaa.struct !24
  %87 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %85, ptr noundef nonnull %7) #23, !range !25
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %82, %89
  %90 = load ptr, ptr %7, align 8, !tbaa !21
  tail call void @dump_edge_info(ptr noundef %5, ptr noundef %90, i32 noundef 1) #23
  call fastcc void @ei_next(ptr noundef nonnull %8) #23
  %91 = load i32, ptr %8, align 8
  %92 = load ptr, ptr %86, align 8
  %93 = call fastcc zeroext i8 @ei_cond(i32 %91, ptr %92, ptr noundef nonnull %7) #23, !range !25
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %89, !llvm.loop !78

95:                                               ; preds = %89, %82
  %96 = and i32 %3, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %100 = load i32, ptr %99, align 8, !tbaa !55
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
define dso_local void @dump_edge_info(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %6 = select i1 %4, ptr %1, ptr %5
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = load ptr, ptr @cfun, align 8, !tbaa !21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call i32 @fputs(ptr noundef nonnull @.str.38, ptr noundef %0) #23
  br label %27

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  %20 = icmp eq ptr %7, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @fputs(ptr noundef nonnull @.str.39, ptr noundef %0) #23
  br label %27

23:                                               ; preds = %3, %17
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !15
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %25) #23
  br label %27

27:                                               ; preds = %21, %23, %15
  %28 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %29 = load i32, ptr %28, align 4, !tbaa !51
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
  %38 = load i64, ptr %37, align 8, !tbaa !53
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @fputs(ptr noundef nonnull @.str.41, ptr noundef %0) #23
  %42 = load i64, ptr %37, align 8, !tbaa !53
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %42) #23
  br label %44

44:                                               ; preds = %40, %36
  %45 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !44
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
  br i1 %76, label %77, label %50, !llvm.loop !79

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
define dso_local void @dump_reg_info(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @max_reg_num() #21
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %169

5:                                                ; preds = %1
  %6 = load i64, ptr @reg_info_p_size, align 8, !tbaa !47
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
  %17 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = trunc i64 %16 to i32
  %21 = tail call fastcc i32 @REG_N_REFS(i32 noundef %20) #23
  %22 = load ptr, ptr @reg_info_p, align 8, !tbaa !21
  %23 = getelementptr inbounds %struct.reg_info_t, ptr %22, i64 %16, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !80
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %20, i32 noundef %21, i32 noundef %24) #23
  br label %48

26:                                               ; preds = %15
  %27 = load ptr, ptr @df, align 8, !tbaa !21
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !82
  %32 = getelementptr inbounds ptr, ptr %31, i64 %16
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = getelementptr inbounds %struct.df_reg_info, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !85
  %36 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !87
  %38 = getelementptr inbounds ptr, ptr %37, i64 %16
  %39 = load ptr, ptr %38, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct.df_reg_info, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !85
  %42 = add i32 %41, %35
  %43 = load ptr, ptr @reg_info_p, align 8, !tbaa !21
  %44 = getelementptr inbounds %struct.reg_info_t, ptr %43, i64 %16, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !80
  %46 = trunc i64 %16 to i32
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %46, i32 noundef %42, i32 noundef %45) #23
  br label %48

48:                                               ; preds = %26, %29, %19
  %49 = load ptr, ptr @reg_info_p, align 8, !tbaa !21
  %50 = getelementptr inbounds %struct.reg_info_t, ptr %49, i64 %16, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !88
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %51) #23
  br label %55

55:                                               ; preds = %53, %48
  %56 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !21
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = trunc i64 %16 to i32
  %60 = tail call fastcc i32 @REG_N_SETS(i32 noundef %59) #23
  br label %71

61:                                               ; preds = %55
  %62 = load ptr, ptr @df, align 8, !tbaa !21
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.df, ptr %62, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !87
  %67 = getelementptr inbounds ptr, ptr %66, i64 %16
  %68 = load ptr, ptr %67, align 8, !tbaa !21
  %69 = getelementptr inbounds %struct.df_reg_info, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !85
  br label %71

71:                                               ; preds = %58, %64
  %72 = phi i32 [ %70, %64 ], [ %60, %58 ]
  %73 = icmp eq i32 %72, 1
  %74 = select i1 %73, ptr @.str.25, ptr @.str.26
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %72, ptr noundef nonnull %74) #23
  br label %76

76:                                               ; preds = %71, %61
  %77 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %78 = getelementptr inbounds ptr, ptr %77, i64 %16
  %79 = load ptr, ptr %78, align 8, !tbaa !21
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
  %88 = load ptr, ptr @reg_info_p, align 8, !tbaa !21
  %89 = getelementptr inbounds %struct.reg_info_t, ptr %88, i64 %16, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !89
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %90) #23
  %94 = load ptr, ptr @reg_info_p, align 8, !tbaa !21
  br label %95

95:                                               ; preds = %92, %87
  %96 = phi ptr [ %94, %92 ], [ %88, %87 ]
  %97 = getelementptr inbounds %struct.reg_info_t, ptr %96, i64 %16, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !90
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
  %104 = load ptr, ptr @reg_info_p, align 8, !tbaa !21
  %105 = getelementptr inbounds %struct.reg_info_t, ptr %104, i64 %16, i32 4
  %106 = load i32, ptr %105, align 4, !tbaa !91
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %106) #23
  br label %110

110:                                              ; preds = %108, %103
  %111 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %112 = getelementptr inbounds ptr, ptr %111, i64 %16
  %113 = load ptr, ptr %112, align 8, !tbaa !21
  %114 = icmp eq ptr %113, null
  br i1 %114, label %126, label %115

115:                                              ; preds = %110
  %116 = load i32, ptr %113, align 8
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 255
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !50
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
  %140 = load ptr, ptr %139, align 8, !tbaa !21
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %140) #23
  br label %154

142:                                              ; preds = %133
  %143 = icmp eq i32 %129, 0
  %144 = sext i32 %128 to i64
  %145 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !21
  br i1 %143, label %147, label %149

147:                                              ; preds = %142
  %148 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %146) #23
  br label %154

149:                                              ; preds = %142
  %150 = sext i32 %129 to i64
  %151 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !21
  %153 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef %146, ptr noundef %152) #23
  br label %154

154:                                              ; preds = %137, %149, %147, %126
  %155 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !21
  %156 = getelementptr inbounds ptr, ptr %155, i64 %16
  %157 = load ptr, ptr %156, align 8, !tbaa !21
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
  br i1 %168, label %169, label %15, !llvm.loop !92

169:                                              ; preds = %165, %5, %1
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_REFS(i32 noundef %0) unnamed_addr #15 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !21
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !93
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_SETS(i32 noundef %0) unnamed_addr #15 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !21
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !95
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @reg_alternate_class(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_flow_info(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr @reg_info_p_size, align 8, !tbaa !47
  %4 = icmp eq i64 %3, 0
  %5 = and i32 %1, 8
  %6 = icmp eq i32 %5, 0
  %7 = or i1 %6, %4
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @dump_reg_info(ptr noundef %0) #23
  br label %9

9:                                                ; preds = %8, %2
  %10 = load ptr, ptr @cfun, align 8, !tbaa !21
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !12
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %14, i32 noundef %16) #23
  %18 = load ptr, ptr @cfun, align 8, !tbaa !21
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %9, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %9 ]
  tail call void @dump_bb_info(ptr noundef nonnull %24, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef %1, ptr noundef nonnull @.str.25, ptr noundef %0) #23
  tail call void @check_bb_profile(ptr noundef nonnull %24, ptr noundef %0) #23
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !96

28:                                               ; preds = %23, %9
  %29 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_flow_info() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !21
  tail call void @dump_flow_info(ptr noundef %1, i32 noundef 8) #23
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @alloc_aux_for_block(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = icmp eq ptr %4, null
  %6 = load ptr, ptr @first_block_aux_obj, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 741, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %2, %9
  %11 = sext i32 %1 to i64
  store i64 %11, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !98
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !100
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !101
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, %11
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  tail call void @_obstack_newchunk(ptr noundef nonnull @block_aux_obstack, i32 noundef %1) #21
  %19 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !98
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !101
  br label %21

21:                                               ; preds = %10, %18
  %22 = phi ptr [ %13, %10 ], [ %20, %18 ]
  %23 = phi i64 [ %11, %10 ], [ %19, %18 ]
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !102
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 10), align 8
  %29 = or i8 %28, 2
  store i8 %29, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 10), align 8
  br label %30

30:                                               ; preds = %21, %27
  %31 = ptrtoint ptr %25 to i64
  store i64 %31, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !98
  %32 = ptrtoint ptr %24 to i64
  %33 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 6), align 8, !tbaa !103
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = xor i32 %33, -1
  %37 = sext i32 %36 to i64
  %38 = and i64 %35, %37
  %39 = inttoptr i64 %38 to ptr
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 1), align 8, !tbaa !104
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %38, %41
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !100
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %44, %41
  %46 = icmp sgt i64 %42, %45
  %47 = select i1 %46, ptr %43, ptr %39
  store ptr %47, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8
  store ptr %47, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !102
  store ptr %25, ptr %3, align 8, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr align 1 %25, i8 0, i64 %11, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @alloc_aux_for_blocks(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i1, ptr @alloc_aux_for_blocks.initialized, align 4
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @_obstack_begin(ptr noundef nonnull @block_aux_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #21
  store i1 true, ptr @alloc_aux_for_blocks.initialized, align 4
  br label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr @first_block_aux_obj, align 8, !tbaa !21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 761, ptr noundef nonnull @.str.1) #21
  br label %9

9:                                                ; preds = %8, %5, %3
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !98
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !100
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !101
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  tail call void @_obstack_newchunk(ptr noundef nonnull @block_aux_obstack, i32 noundef 0) #21
  %17 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !98
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !101
  br label %19

19:                                               ; preds = %9, %16
  %20 = phi ptr [ %11, %9 ], [ %18, %16 ]
  %21 = phi i64 [ 0, %9 ], [ %17, %16 ]
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !102
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 10), align 8
  %27 = or i8 %26, 2
  store i8 %27, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 10), align 8
  br label %28

28:                                               ; preds = %19, %25
  %29 = ptrtoint ptr %23 to i64
  store i64 %29, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !98
  %30 = ptrtoint ptr %22 to i64
  %31 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 6), align 8, !tbaa !103
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = xor i32 %31, -1
  %35 = sext i32 %34 to i64
  %36 = and i64 %33, %35
  %37 = inttoptr i64 %36 to ptr
  %38 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 1), align 8, !tbaa !104
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %36, %39
  %41 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !100
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %42, %39
  %44 = icmp sgt i64 %40, %43
  %45 = select i1 %44, ptr %41, ptr %37
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !102
  store ptr %23, ptr @first_block_aux_obj, align 8, !tbaa !21
  %46 = icmp eq i32 %0, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %28
  %48 = load ptr, ptr @cfun, align 8, !tbaa !21
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = load ptr, ptr %50, align 8, !tbaa !21
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %47, %53
  %54 = phi ptr [ %56, %53 ], [ %51, %47 ]
  tail call void @alloc_aux_for_block(ptr noundef nonnull %54, i32 noundef %0) #23
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !21
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %53, !llvm.loop !105

58:                                               ; preds = %53, %47, %28
  ret void
}

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #17

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_aux_for_blocks() local_unnamed_addr #9 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !21
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !97
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !106

12:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_aux_for_blocks() local_unnamed_addr #0 {
  %1 = load ptr, ptr @first_block_aux_obj, align 8, !tbaa !21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 790, ptr noundef nonnull @.str.1) #21
  %4 = load ptr, ptr @first_block_aux_obj, align 8, !tbaa !21
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %1, %0 ], [ %4, %3 ]
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 1), align 8, !tbaa !104
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  store i64 %10, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !98
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !100
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %9
  %16 = icmp slt i64 %10, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %7, i64 %10
  store ptr %18, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !102
  store ptr %18, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !101
  br label %21

19:                                               ; preds = %12, %5
  %20 = getelementptr inbounds i8, ptr %7, i64 %10
  tail call void @obstack_free(ptr noundef nonnull @block_aux_obstack, ptr noundef %20) #21
  br label %21

21:                                               ; preds = %19, %17
  store ptr null, ptr @first_block_aux_obj, align 8, !tbaa !21
  tail call void @clear_aux_for_blocks() #23
  ret void
}

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @alloc_aux_for_edge(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = icmp eq ptr %4, null
  %6 = load ptr, ptr @first_edge_aux_obj, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 804, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %2, %9
  %11 = sext i32 %1 to i64
  store i64 %11, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !98
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !100
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !101
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, %11
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  tail call void @_obstack_newchunk(ptr noundef nonnull @edge_aux_obstack, i32 noundef %1) #21
  %19 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !98
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !101
  br label %21

21:                                               ; preds = %10, %18
  %22 = phi ptr [ %13, %10 ], [ %20, %18 ]
  %23 = phi i64 [ %11, %10 ], [ %19, %18 ]
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !102
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 10), align 8
  %29 = or i8 %28, 2
  store i8 %29, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 10), align 8
  br label %30

30:                                               ; preds = %21, %27
  %31 = ptrtoint ptr %25 to i64
  store i64 %31, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !98
  %32 = ptrtoint ptr %24 to i64
  %33 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 6), align 8, !tbaa !103
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = xor i32 %33, -1
  %37 = sext i32 %36 to i64
  %38 = and i64 %35, %37
  %39 = inttoptr i64 %38 to ptr
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 1), align 8, !tbaa !104
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %38, %41
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !100
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %44, %41
  %46 = icmp sgt i64 %42, %45
  %47 = select i1 %46, ptr %43, ptr %39
  store ptr %47, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8
  store ptr %47, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !102
  store ptr %25, ptr %3, align 8, !tbaa !107
  tail call void @llvm.memset.p0.i64(ptr align 1 %25, i8 0, i64 %11, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @alloc_aux_for_edges(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load i1, ptr @alloc_aux_for_edges.initialized, align 4
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_obstack_begin(ptr noundef nonnull @edge_aux_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #21
  store i1 true, ptr @alloc_aux_for_edges.initialized, align 4
  br label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr @first_edge_aux_obj, align 8, !tbaa !21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 824, ptr noundef nonnull @.str.1) #21
  br label %11

11:                                               ; preds = %10, %7, %5
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !98
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !100
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !101
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  tail call void @_obstack_newchunk(ptr noundef nonnull @edge_aux_obstack, i32 noundef 0) #21
  %19 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !98
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !101
  br label %21

21:                                               ; preds = %11, %18
  %22 = phi ptr [ %13, %11 ], [ %20, %18 ]
  %23 = phi i64 [ 0, %11 ], [ %19, %18 ]
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !102
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 10), align 8
  %29 = or i8 %28, 2
  store i8 %29, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 10), align 8
  br label %30

30:                                               ; preds = %21, %27
  %31 = ptrtoint ptr %25 to i64
  store i64 %31, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !98
  %32 = ptrtoint ptr %24 to i64
  %33 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 6), align 8, !tbaa !103
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = xor i32 %33, -1
  %37 = sext i32 %36 to i64
  %38 = and i64 %35, %37
  %39 = inttoptr i64 %38 to ptr
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 1), align 8, !tbaa !104
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %38, %41
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !100
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %44, %41
  %46 = icmp sgt i64 %42, %45
  %47 = select i1 %46, ptr %43, ptr %39
  store ptr %47, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8
  store ptr %47, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !102
  store ptr %25, ptr @first_edge_aux_obj, align 8, !tbaa !21
  %48 = icmp eq i32 %0, 0
  br i1 %48, label %80, label %49

49:                                               ; preds = %30
  %50 = load ptr, ptr @cfun, align 8, !tbaa !21
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = load ptr, ptr %52, align 8, !tbaa !21
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !18
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %80, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds i8, ptr %3, i64 8
  br label %59

59:                                               ; preds = %57, %71
  %60 = phi ptr [ %53, %57 ], [ %73, %71 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 1
  %62 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %61) #23
  store i32 0, ptr %3, align 8, !tbaa.struct !22
  store ptr %62, ptr %58, align 8, !tbaa.struct !24
  %63 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %62, ptr noundef nonnull %2) #23, !range !25
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59, %65
  %66 = load ptr, ptr %2, align 8, !tbaa !21
  tail call void @alloc_aux_for_edge(ptr noundef %66, i32 noundef %0) #23
  call fastcc void @ei_next(ptr noundef nonnull %3) #23
  %67 = load i32, ptr %3, align 8
  %68 = load ptr, ptr %58, align 8
  %69 = call fastcc zeroext i8 @ei_cond(i32 %67, ptr %68, ptr noundef nonnull %2) #23, !range !25
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %65, !llvm.loop !108

71:                                               ; preds = %65, %59
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !21
  %74 = load ptr, ptr @cfun, align 8, !tbaa !21
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !18
  %79 = icmp eq ptr %73, %78
  br i1 %79, label %80, label %59, !llvm.loop !109

80:                                               ; preds = %71, %49, %30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clear_aux_for_edges() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %3 = load ptr, ptr @cfun, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %34, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds i8, ptr %2, i64 8
  br label %12

12:                                               ; preds = %10, %25
  %13 = phi ptr [ %6, %10 ], [ %27, %25 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 1
  %15 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %14) #23
  store i32 0, ptr %2, align 8, !tbaa.struct !22
  store ptr %15, ptr %11, align 8, !tbaa.struct !24
  %16 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %15, ptr noundef nonnull %1) #23, !range !25
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12, %18
  %19 = load ptr, ptr %1, align 8, !tbaa !21
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 3
  store ptr null, ptr %20, align 8, !tbaa !107
  call fastcc void @ei_next(ptr noundef nonnull %2) #23
  %21 = load i32, ptr %2, align 8
  %22 = load ptr, ptr %11, align 8
  %23 = call fastcc zeroext i8 @ei_cond(i32 %21, ptr %22, ptr noundef nonnull %1) #23, !range !25
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %18, !llvm.loop !110

25:                                               ; preds = %18, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = load ptr, ptr @cfun, align 8, !tbaa !21
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !18
  %33 = icmp eq ptr %27, %32
  br i1 %33, label %34, label %12, !llvm.loop !111

34:                                               ; preds = %25, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_aux_for_edges() local_unnamed_addr #0 {
  %1 = load ptr, ptr @first_edge_aux_obj, align 8, !tbaa !21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 864, ptr noundef nonnull @.str.1) #21
  %4 = load ptr, ptr @first_edge_aux_obj, align 8, !tbaa !21
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %1, %0 ], [ %4, %3 ]
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 1), align 8, !tbaa !104
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  store i64 %10, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !98
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !100
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %9
  %16 = icmp slt i64 %10, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %7, i64 %10
  store ptr %18, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !102
  store ptr %18, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !101
  br label %21

19:                                               ; preds = %12, %5
  %20 = getelementptr inbounds i8, ptr %7, i64 %10
  tail call void @obstack_free(ptr noundef nonnull @edge_aux_obstack, ptr noundef %20) #21
  br label %21

21:                                               ; preds = %19, %17
  store ptr null, ptr @first_edge_aux_obj, align 8, !tbaa !21
  tail call void @clear_aux_for_edges() #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_bb(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !21
  tail call void @dump_bb(ptr noundef %0, ptr noundef %2, i32 noundef 0) #21
  ret void
}

; Function Attrs: optsize
declare void @dump_bb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @debug_bb_n(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #23
  %8 = load ptr, ptr @stderr, align 8, !tbaa !21
  tail call void @dump_bb(ptr noundef %7, ptr noundef %8, i32 noundef 0) #21
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @brief_dump_cfg(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %1, %11
  %12 = phi ptr [ %14, %11 ], [ %7, %1 ]
  tail call fastcc void @dump_cfg_bb_info(ptr noundef %0, ptr noundef %12) #23
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = load ptr, ptr @cfun, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  %20 = icmp eq ptr %14, %19
  br i1 %20, label %21, label %11, !llvm.loop !112

21:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_cfg_bb_info(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !15
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.69, i32 noundef %6) #23
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  br label %9

9:                                                ; preds = %20, %2
  %10 = phi i64 [ %25, %20 ], [ 0, %2 ]
  %11 = phi ptr [ @.str.70, %20 ], [ @.str.55, %2 ]
  %12 = phi i1 [ true, %20 ], [ false, %2 ]
  %13 = load i32, ptr %8, align 8, !tbaa !55
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
  br i1 %26, label %31, label %9, !llvm.loop !113

27:                                               ; preds = %14
  %28 = add nuw nsw i64 %15, 1
  %29 = icmp eq i64 %28, 12
  br i1 %29, label %30, label %14, !llvm.loop !113

30:                                               ; preds = %27
  br i1 %12, label %31, label %33

31:                                               ; preds = %20, %30
  %32 = tail call i32 @putc(i32 noundef 41, ptr noundef %0) #23
  br label %33

33:                                               ; preds = %31, %30
  %34 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #23
  %35 = tail call i32 @fputs(ptr noundef nonnull @.str.71, ptr noundef %0) #23
  %36 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %1) #23
  store i32 0, ptr %3, align 8, !tbaa.struct !22
  %37 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %36, ptr %37, align 8, !tbaa.struct !24
  %38 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %36, ptr noundef nonnull %4) #23, !range !25
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33, %40
  %41 = load ptr, ptr %4, align 8, !tbaa !21
  tail call void @dump_edge_info(ptr noundef %0, ptr noundef %41, i32 noundef 0) #23
  call fastcc void @ei_next(ptr noundef nonnull %3) #23
  %42 = load i32, ptr %3, align 8
  %43 = load ptr, ptr %37, align 8
  %44 = call fastcc zeroext i8 @ei_cond(i32 %42, ptr %43, ptr noundef nonnull %4) #23, !range !25
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %40, !llvm.loop !114

46:                                               ; preds = %40, %33
  %47 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 13, i64 1, ptr %0)
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %49 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %48) #23
  store i32 0, ptr %3, align 8, !tbaa.struct !22
  store ptr %49, ptr %37, align 8, !tbaa.struct !24
  %50 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %49, ptr noundef nonnull %4) #23, !range !25
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46, %52
  %53 = load ptr, ptr %4, align 8, !tbaa !21
  tail call void @dump_edge_info(ptr noundef %0, ptr noundef %53, i32 noundef 1) #23
  call fastcc void @ei_next(ptr noundef nonnull %3) #23
  %54 = load i32, ptr %3, align 8
  %55 = load ptr, ptr %37, align 8
  %56 = call fastcc zeroext i8 @ei_cond(i32 %54, ptr %55, ptr noundef nonnull %4) #23, !range !25
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %52, !llvm.loop !115

58:                                               ; preds = %52, %46
  %59 = tail call i32 @fputs(ptr noundef nonnull @.str.73, ptr noundef %0) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @update_bb_profile_for_threading(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %8 = load i64, ptr %7, align 8, !tbaa !52
  %9 = sub nsw i64 %8, %2
  store i64 %9, ptr %7, align 8, !tbaa !52
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !15
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.74, i32 noundef %16) #23
  br label %18

18:                                               ; preds = %14, %11
  store i64 0, ptr %7, align 8, !tbaa !52
  br label %19

19:                                               ; preds = %18, %4
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %21 = load i32, ptr %20, align 8, !tbaa !60
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = mul nsw i32 %1, 10000
  %25 = sdiv i32 %24, %21
  br label %26

26:                                               ; preds = %19, %23
  %27 = phi i32 [ %25, %23 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 8
  %29 = load i32, ptr %28, align 4, !tbaa !51
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %3, align 8, !tbaa !41
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !15
  %38 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !15
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %32, ptr noundef nonnull @.str.75, i32 noundef %37, i32 noundef %41, i32 noundef %29, i32 noundef %27) #23
  %43 = load i32, ptr %28, align 4, !tbaa !51
  %44 = load i32, ptr %20, align 8, !tbaa !60
  br label %45

45:                                               ; preds = %31, %34, %26
  %46 = phi i32 [ %21, %26 ], [ %44, %34 ], [ %21, %31 ]
  %47 = phi i32 [ %29, %26 ], [ %43, %34 ], [ %29, %31 ]
  %48 = phi i32 [ %27, %26 ], [ %43, %34 ], [ %29, %31 ]
  %49 = sub nsw i32 %47, %48
  store i32 %49, ptr %28, align 4, !tbaa !51
  %50 = sub nsw i32 10000, %48
  %51 = sub nsw i32 %46, %1
  %52 = tail call i32 @llvm.smax.i32(i32 %51, i32 0)
  store i32 %52, ptr %20, align 8, !tbaa !60
  %53 = icmp sgt i32 %48, 9999
  br i1 %53, label %54, label %79

54:                                               ; preds = %45
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !15
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %55, ptr noundef nonnull @.str.76, i32 noundef %59, i32 noundef %52) #23
  br label %61

61:                                               ; preds = %57, %54
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !28
  %64 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %63, i32 noundef 0) #23
  %65 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 8
  store i32 10000, ptr %65, align 4, !tbaa !51
  %66 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %62) #23
  store i32 0, ptr %6, align 8, !tbaa.struct !22
  %67 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %66, ptr %67, align 8, !tbaa.struct !24
  call fastcc void @ei_next(ptr noundef nonnull %6) #23
  %68 = load i32, ptr %6, align 8
  %69 = load ptr, ptr %67, align 8
  %70 = tail call fastcc ptr @ei_safe_edge(i32 %68, ptr %69) #23
  %71 = icmp eq ptr %70, null
  br i1 %71, label %106, label %72

72:                                               ; preds = %61, %72
  %73 = phi ptr [ %77, %72 ], [ %70, %61 ]
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 8
  store i32 0, ptr %74, align 4, !tbaa !51
  call fastcc void @ei_next(ptr noundef nonnull %6) #23
  %75 = load i32, ptr %6, align 8
  %76 = load ptr, ptr %67, align 8
  %77 = tail call fastcc ptr @ei_safe_edge(i32 %75, ptr %76) #23
  %78 = icmp eq ptr %77, null
  br i1 %78, label %106, label %72, !llvm.loop !116

79:                                               ; preds = %45
  %80 = icmp eq i32 %48, 0
  br i1 %80, label %106, label %81

81:                                               ; preds = %79
  %82 = lshr i32 %50, 1
  %83 = add nuw nsw i32 %82, 655360000
  %84 = udiv i32 %83, %50
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %86 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %85) #23
  store i32 0, ptr %6, align 8, !tbaa.struct !22
  %87 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %86, ptr %87, align 8, !tbaa.struct !24
  %88 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %86, ptr noundef nonnull %5) #23, !range !25
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %81, %100
  %91 = load ptr, ptr %5, align 8, !tbaa !21
  %92 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 8
  %93 = load i32, ptr %92, align 4, !tbaa !51
  %94 = icmp sgt i32 %93, %50
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = mul nsw i32 %93, %84
  %97 = add nsw i32 %96, 32768
  %98 = sdiv i32 %97, 65536
  %99 = tail call i32 @llvm.smin.i32(i32 %98, i32 10000)
  br label %100

100:                                              ; preds = %90, %95
  %101 = phi i32 [ %99, %95 ], [ 10000, %90 ]
  store i32 %101, ptr %92, align 4
  call fastcc void @ei_next(ptr noundef nonnull %6) #23
  %102 = load i32, ptr %6, align 8
  %103 = load ptr, ptr %87, align 8
  %104 = call fastcc zeroext i8 @ei_cond(i32 %102, ptr %103, ptr noundef nonnull %5) #23, !range !25
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %90, !llvm.loop !117

106:                                              ; preds = %100, %72, %61, %81, %79
  %107 = load ptr, ptr %3, align 8, !tbaa !41
  %108 = icmp eq ptr %107, %0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1016, ptr noundef nonnull @.str.1) #21
  br label %110

110:                                              ; preds = %106, %109
  %111 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 9
  %112 = load i64, ptr %111, align 8, !tbaa !53
  %113 = sub nsw i64 %112, %2
  store i64 %113, ptr %111, align 8, !tbaa !53
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %117 = icmp eq ptr %116, null
  br i1 %117, label %127, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %3, align 8, !tbaa !41
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 9
  %121 = load i32, ptr %120, align 8, !tbaa !15
  %122 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !43
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %123, i64 0, i32 9
  %125 = load i32, ptr %124, align 8, !tbaa !15
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %116, ptr noundef nonnull @.str.77, i32 noundef %121, i32 noundef %125) #23
  br label %127

127:                                              ; preds = %118, %115
  store i64 0, ptr %111, align 8, !tbaa !53
  br label %128

128:                                              ; preds = %127, %110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scale_bbs_frequencies_int(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %7 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %8 = icmp sgt i32 %3, 1000
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = icmp sgt i32 %2, 1000000
  br i1 %10, label %63, label %11

11:                                               ; preds = %9
  %12 = mul nsw i32 %7, 1000
  %13 = lshr i32 %3, 1
  %14 = add nuw nsw i32 %12, %13
  %15 = udiv i32 %14, %3
  br label %16

16:                                               ; preds = %11, %4
  %17 = phi i32 [ 1000, %11 ], [ %3, %4 ]
  %18 = phi i32 [ %15, %11 ], [ %7, %4 ]
  %19 = mul nsw i32 %17, 100
  %20 = icmp sle i32 %18, %19
  %21 = icmp sgt i32 %1, 0
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %16
  %24 = sdiv i32 %17, 2
  %25 = zext nneg i32 %18 to i64
  %26 = sext i32 %24 to i64
  %27 = sext i32 %17 to i64
  %28 = getelementptr inbounds i8, ptr %6, i64 8
  %29 = zext nneg i32 %1 to i64
  br label %30

30:                                               ; preds = %23, %60
  %31 = phi i64 [ 0, %23 ], [ %61, %60 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %32 = getelementptr inbounds ptr, ptr %0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !60
  %36 = mul nsw i32 %35, %18
  %37 = add nsw i32 %36, %24
  %38 = sdiv i32 %37, %17
  %39 = tail call i32 @llvm.smin.i32(i32 %38, i32 10000)
  store i32 %39, ptr %34, align 8
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !52
  %42 = mul nsw i64 %41, %25
  %43 = add nsw i64 %42, %26
  %44 = sdiv i64 %43, %27
  store i64 %44, ptr %40, align 8, !tbaa !52
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 1
  %46 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %45) #23
  store i32 0, ptr %6, align 8, !tbaa.struct !22
  store ptr %46, ptr %28, align 8, !tbaa.struct !24
  %47 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %5) #23, !range !25
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %30, %49
  %50 = load ptr, ptr %5, align 8, !tbaa !21
  %51 = getelementptr inbounds %struct.edge_def, ptr %50, i64 0, i32 9
  %52 = load i64, ptr %51, align 8, !tbaa !53
  %53 = mul nsw i64 %52, %25
  %54 = add nsw i64 %53, %26
  %55 = sdiv i64 %54, %27
  store i64 %55, ptr %51, align 8, !tbaa !53
  call fastcc void @ei_next(ptr noundef nonnull %6) #23
  %56 = load i32, ptr %6, align 8
  %57 = load ptr, ptr %28, align 8
  %58 = call fastcc zeroext i8 @ei_cond(i32 %56, ptr %57, ptr noundef nonnull %5) #23, !range !25
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %49, !llvm.loop !118

60:                                               ; preds = %49, %30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  %61 = add nuw nsw i64 %31, 1
  %62 = icmp eq i64 %61, %29
  br i1 %62, label %63, label %30, !llvm.loop !119

63:                                               ; preds = %60, %16, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scale_bbs_frequencies_gcov_type(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
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
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 11
  %30 = load i32, ptr %29, align 8, !tbaa !60
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, %2
  %33 = add nsw i64 %32, %9
  %34 = sdiv i64 %33, %3
  %35 = trunc i64 %34 to i32
  store i32 %35, ptr %29, align 8, !tbaa !60
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 8
  %37 = load i64, ptr %36, align 8, !tbaa !52
  %38 = icmp slt i64 %37, -2147483647
  %39 = select i1 %38, i64 %2, i64 %11
  %40 = select i1 %38, i64 %9, i64 32768
  %41 = select i1 %38, i64 %3, i64 65536
  %42 = mul nsw i64 %37, %39
  %43 = add nsw i64 %42, %40
  %44 = sdiv i64 %43, %41
  store i64 %44, ptr %36, align 8, !tbaa !52
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 1
  %46 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %45) #23
  store i32 0, ptr %6, align 8, !tbaa.struct !22
  store ptr %46, ptr %23, align 8, !tbaa.struct !24
  %47 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %5) #23, !range !25
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %25, %49
  %50 = load ptr, ptr %27, align 8, !tbaa !21
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 8
  %52 = load i64, ptr %51, align 8, !tbaa !52
  %53 = icmp slt i64 %52, -2147483647
  %54 = load ptr, ptr %5, align 8, !tbaa !21
  %55 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 9
  %56 = load i64, ptr %55, align 8, !tbaa !53
  %57 = select i1 %53, i64 %2, i64 %11
  %58 = select i1 %53, i64 %9, i64 32768
  %59 = select i1 %53, i64 %3, i64 65536
  %60 = mul nsw i64 %56, %57
  %61 = add nsw i64 %60, %58
  %62 = sdiv i64 %61, %59
  store i64 %62, ptr %55, align 8, !tbaa !53
  call fastcc void @ei_next(ptr noundef nonnull %6) #23
  %63 = load i32, ptr %6, align 8
  %64 = load ptr, ptr %23, align 8
  %65 = call fastcc zeroext i8 @ei_cond(i32 %63, ptr %64, ptr noundef nonnull %5) #23, !range !25
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %49, !llvm.loop !120

67:                                               ; preds = %49, %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  %68 = add nuw nsw i64 %26, 1
  %69 = icmp eq i64 %68, %24
  br i1 %69, label %104, label %25, !llvm.loop !121

70:                                               ; preds = %18, %101
  %71 = phi i64 [ 0, %18 ], [ %102, %101 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #22
  %72 = getelementptr inbounds ptr, ptr %0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !21
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 11
  %75 = load i32, ptr %74, align 8, !tbaa !60
  %76 = sext i32 %75 to i64
  %77 = mul nsw i64 %76, %2
  %78 = add nsw i64 %77, %9
  %79 = sdiv i64 %78, %3
  %80 = trunc i64 %79 to i32
  store i32 %80, ptr %74, align 8, !tbaa !60
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 8
  %82 = load i64, ptr %81, align 8, !tbaa !52
  %83 = mul nsw i64 %82, %11
  %84 = add nsw i64 %83, 32768
  %85 = sdiv i64 %84, 65536
  store i64 %85, ptr %81, align 8, !tbaa !52
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 1
  %87 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %86) #23
  store i32 0, ptr %7, align 8, !tbaa.struct !22
  store ptr %87, ptr %19, align 8, !tbaa.struct !24
  %88 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %87, ptr noundef nonnull %5) #23, !range !25
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %70, %90
  %91 = load ptr, ptr %5, align 8, !tbaa !21
  %92 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 9
  %93 = load i64, ptr %92, align 8, !tbaa !53
  %94 = mul nsw i64 %93, %11
  %95 = add nsw i64 %94, 32768
  %96 = sdiv i64 %95, 65536
  store i64 %96, ptr %92, align 8, !tbaa !53
  call fastcc void @ei_next(ptr noundef nonnull %7) #23
  %97 = load i32, ptr %7, align 8
  %98 = load ptr, ptr %19, align 8
  %99 = call fastcc zeroext i8 @ei_cond(i32 %97, ptr %98, ptr noundef nonnull %5) #23, !range !25
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %90, !llvm.loop !122

101:                                              ; preds = %90, %70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #22
  %102 = add nuw nsw i64 %71, 1
  %103 = icmp eq i64 %102, %20
  br i1 %103, label %104, label %70, !llvm.loop !123

104:                                              ; preds = %101, %67, %17, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @initialize_original_copy_tables() local_unnamed_addr #0 {
  %1 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1151, ptr noundef nonnull @.str.1) #21
  br label %4

4:                                                ; preds = %0, %3
  %5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.78, i64 noundef 8, i64 noundef 10) #21
  store ptr %5, ptr @original_copy_bb_pool, align 8, !tbaa !21
  %6 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @bb_copy_original_hash, ptr noundef nonnull @bb_copy_original_eq, ptr noundef null) #21
  store ptr %6, ptr @bb_original, align 8, !tbaa !21
  %7 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @bb_copy_original_hash, ptr noundef nonnull @bb_copy_original_eq, ptr noundef null) #21
  store ptr %7, ptr @bb_copy, align 8, !tbaa !21
  %8 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @bb_copy_original_hash, ptr noundef nonnull @bb_copy_original_eq, ptr noundef null) #21
  store ptr %8, ptr @loop_copy, align 8, !tbaa !21
  ret void
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @bb_copy_original_hash(ptr nocapture noundef readonly %0) #5 {
  %2 = load i32, ptr %0, align 4, !tbaa !124
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @bb_copy_original_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !124
  %4 = load i32, ptr %1, align 4, !tbaa !124
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_original_copy_tables() local_unnamed_addr #0 {
  %1 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1166, ptr noundef nonnull @.str.1) #21
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @bb_copy, align 8, !tbaa !21
  tail call void @htab_delete(ptr noundef %5) #21
  %6 = load ptr, ptr @bb_original, align 8, !tbaa !21
  tail call void @htab_delete(ptr noundef %6) #21
  %7 = load ptr, ptr @loop_copy, align 8, !tbaa !21
  tail call void @htab_delete(ptr noundef %7) #21
  %8 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !21
  tail call void @free_alloc_pool(ptr noundef %8) #21
  store ptr null, ptr @bb_copy, align 8, !tbaa !21
  store ptr null, ptr @bb_original, align 8, !tbaa !21
  store ptr null, ptr @loop_copy, align 8, !tbaa !21
  store ptr null, ptr @original_copy_bb_pool, align 8, !tbaa !21
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_bb_original(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @bb_original, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !15
  tail call fastcc void @copy_original_table_set(ptr noundef %3, i32 noundef %5, i32 noundef %7) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_original_table_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 4, !tbaa !124
  %8 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1) #21
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !21
  %13 = call ptr @pool_alloc(ptr noundef %12) #21
  store ptr %13, ptr %8, align 8, !tbaa !21
  store i32 %1, ptr %13, align 4, !tbaa !124
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct.htab_bb_copy_original_entry, ptr %15, i64 0, i32 1
  store i32 %2, ptr %16, align 4, !tbaa !126
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
define dso_local ptr @get_bb_original(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1237, ptr noundef nonnull @.str.1) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !15
  store i32 %8, ptr %2, align 4, !tbaa !124
  %9 = load ptr, ptr @bb_original, align 8, !tbaa !21
  %10 = call ptr @htab_find(ptr noundef %9, ptr noundef nonnull %2) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @cfun, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  %18 = getelementptr inbounds %struct.htab_bb_copy_original_entry, ptr %10, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !126
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
define dso_local void @set_bb_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @bb_copy, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !15
  tail call fastcc void @copy_original_table_set(ptr noundef %3, i32 noundef %5, i32 noundef %7) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_bb_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1262, ptr noundef nonnull @.str.1) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !15
  store i32 %8, ptr %2, align 4, !tbaa !124
  %9 = load ptr, ptr @bb_copy, align 8, !tbaa !21
  %10 = call ptr @htab_find(ptr noundef %9, ptr noundef nonnull %2) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @cfun, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  %18 = getelementptr inbounds %struct.htab_bb_copy_original_entry, ptr %10, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !126
  %20 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %17, i32 noundef %19) #23
  br label %21

21:                                               ; preds = %6, %12
  %22 = phi ptr [ %20, %12 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_loop_copy(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = load ptr, ptr @loop_copy, align 8, !tbaa !21
  %5 = load i32, ptr %0, align 8, !tbaa !127
  br i1 %3, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @copy_original_table_clear(ptr noundef %4, i32 noundef %5) #23
  br label %9

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8, !tbaa !127
  tail call fastcc void @copy_original_table_set(ptr noundef %4, i32 noundef %5, i32 noundef %8) #23
  br label %9

9:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_original_table_clear(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 4, !tbaa !124
  %7 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !21
  call void @htab_clear_slot(ptr noundef %0, ptr noundef nonnull %7) #21
  %11 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !21
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
define dso_local ptr @get_loop_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %3 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1292, ptr noundef nonnull @.str.1) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i32, ptr %0, align 8, !tbaa !127
  store i32 %7, ptr %2, align 4, !tbaa !124
  %8 = load ptr, ptr @loop_copy, align 8, !tbaa !21
  %9 = call ptr @htab_find(ptr noundef %8, ptr noundef nonnull %2) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.htab_bb_copy_original_entry, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !126
  %14 = call fastcc ptr @get_loop(i32 noundef %13) #23
  br label %15

15:                                               ; preds = %6, %11
  %16 = phi ptr [ %14, %11 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #15 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !132
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #23
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 8}
!7 = !{!"function", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !8, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!13, !11, i64 28}
!13 = !{!"control_flow_graph", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !8, i64 40, !11, i64 48, !9, i64 52, !9, i64 60, !11, i64 68, !11, i64 72}
!14 = !{!13, !8, i64 0}
!15 = !{!16, !11, i64 80}
!16 = !{!"basic_block_def", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !8, i64 48, !8, i64 56, !9, i64 64, !17, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!17 = !{!"long", !9, i64 0}
!18 = !{!13, !8, i64 8}
!19 = !{!16, !8, i64 56}
!20 = !{!16, !8, i64 48}
!21 = !{!8, !8, i64 0}
!22 = !{i64 0, i64 4, !23, i64 8, i64 8, !21}
!23 = !{!11, !11, i64 0}
!24 = !{i64 0, i64 8, !21}
!25 = !{i8 0, i8 2}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!16, !8, i64 8}
!29 = !{!16, !8, i64 0}
!30 = distinct !{!30, !27}
!31 = distinct !{!31, !27}
!32 = !{!33, !11, i64 0}
!33 = !{!"", !11, i64 0, !8, i64 8}
!34 = !{!35, !11, i64 0}
!35 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !9, i64 8}
!36 = !{!13, !8, i64 16}
!37 = distinct !{!37, !27}
!38 = !{!13, !11, i64 24}
!39 = !{!13, !11, i64 32}
!40 = distinct !{!40, !27}
!41 = !{!42, !8, i64 0}
!42 = !{!"edge_def", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !17, i64 56}
!43 = !{!42, !8, i64 8}
!44 = !{!42, !11, i64 48}
!45 = !{!42, !11, i64 44}
!46 = !{!35, !11, i64 4}
!47 = !{!17, !17, i64 0}
!48 = !{!49, !8, i64 0}
!49 = !{!"simple_bitmap_def", !8, i64 0, !11, i64 8, !11, i64 12, !9, i64 16}
!50 = !{!9, !9, i64 0}
!51 = !{!42, !11, i64 52}
!52 = !{!16, !17, i64 72}
!53 = !{!42, !17, i64 56}
!54 = distinct !{!54, !27}
!55 = !{!16, !11, i64 96}
!56 = distinct !{!56, !27}
!57 = !{!13, !11, i64 48}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = !{!16, !11, i64 88}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !27}
!63 = distinct !{!63, !27}
!64 = !{!65, !8, i64 0}
!65 = !{!"bitmap_head_def", !8, i64 0, !8, i64 8, !11, i64 16, !8, i64 24}
!66 = !{!67, !8, i64 0}
!67 = !{!"", !8, i64 0, !8, i64 8, !11, i64 16, !17, i64 24}
!68 = !{!67, !8, i64 8}
!69 = !{!70, !11, i64 16}
!70 = !{!"bitmap_element_def", !8, i64 0, !8, i64 8, !11, i64 16, !9, i64 24}
!71 = !{!67, !11, i64 16}
!72 = !{!67, !17, i64 24}
!73 = distinct !{!73, !27}
!74 = distinct !{!74, !27}
!75 = !{!70, !8, i64 0}
!76 = !{!16, !11, i64 84}
!77 = distinct !{!77, !27}
!78 = distinct !{!78, !27}
!79 = distinct !{!79, !27}
!80 = !{!81, !11, i64 8}
!81 = !{!"reg_info_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24}
!82 = !{!83, !8, i64 224}
!83 = !{!"df", !9, i64 0, !9, i64 64, !8, i64 128, !84, i64 136, !84, i64 176, !8, i64 216, !8, i64 224, !8, i64 232, !11, i64 240, !11, i64 244, !8, i64 248, !11, i64 256, !11, i64 260, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !11, i64 344, !11, i64 348, !8, i64 352, !11, i64 360, !11, i64 364, !9, i64 365, !9, i64 366}
!84 = !{!"df_ref_info", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!85 = !{!86, !11, i64 8}
!86 = !{!"df_reg_info", !8, i64 0, !11, i64 8}
!87 = !{!83, !8, i64 216}
!88 = !{!81, !11, i64 24}
!89 = !{!81, !11, i64 4}
!90 = !{!81, !11, i64 12}
!91 = !{!81, !11, i64 16}
!92 = distinct !{!92, !27}
!93 = !{!94, !11, i64 4}
!94 = !{!"regstat_n_sets_and_refs_t", !11, i64 0, !11, i64 4}
!95 = !{!94, !11, i64 0}
!96 = distinct !{!96, !27}
!97 = !{!16, !8, i64 16}
!98 = !{!99, !17, i64 40}
!99 = !{!"obstack", !17, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !17, i64 40, !11, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !11, i64 80, !11, i64 80, !11, i64 80}
!100 = !{!99, !8, i64 32}
!101 = !{!99, !8, i64 24}
!102 = !{!99, !8, i64 16}
!103 = !{!99, !11, i64 48}
!104 = !{!99, !8, i64 8}
!105 = distinct !{!105, !27}
!106 = distinct !{!106, !27}
!107 = !{!42, !8, i64 24}
!108 = distinct !{!108, !27}
!109 = distinct !{!109, !27}
!110 = distinct !{!110, !27}
!111 = distinct !{!111, !27}
!112 = distinct !{!112, !27}
!113 = distinct !{!113, !27}
!114 = distinct !{!114, !27}
!115 = distinct !{!115, !27}
!116 = distinct !{!116, !27}
!117 = distinct !{!117, !27}
!118 = distinct !{!118, !27}
!119 = distinct !{!119, !27}
!120 = distinct !{!120, !27}
!121 = distinct !{!121, !27}
!122 = distinct !{!122, !27}
!123 = distinct !{!123, !27}
!124 = !{!125, !11, i64 0}
!125 = !{!"htab_bb_copy_original_entry", !11, i64 0, !11, i64 4}
!126 = !{!125, !11, i64 4}
!127 = !{!128, !11, i64 0}
!128 = !{!"loop", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 16, !129, i64 24, !11, i64 32, !11, i64 36, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !130, i64 80, !130, i64 96, !9, i64 112, !9, i64 113, !11, i64 116, !8, i64 120, !8, i64 128, !9, i64 136, !8, i64 144}
!129 = !{!"lpt_decision", !11, i64 0, !11, i64 4}
!130 = !{!"", !17, i64 0, !17, i64 8}
!131 = !{!7, !8, i64 32}
!132 = !{!133, !8, i64 8}
!133 = !{!"loops", !11, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
