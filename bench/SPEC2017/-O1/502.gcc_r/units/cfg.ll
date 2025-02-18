; ModuleID = 'cfg.c'
source_filename = "cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_reg_info = type { ptr, i32 }
%struct.htab_bb_copy_original_entry = type { i32, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"cfg.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Invalid sum of outgoing probabilities %.1f%%\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Invalid sum of outgoing counts %i, should be %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Invalid sum of incoming frequencies %i, should be %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Invalid sum of incoming counts %i, should be %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" (nil)\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"\0A%sBasic block %d \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c", prev %d\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c", next %d\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c", loop_depth %d, count \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c", freq %i\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c", maybe hot\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c", probably never executed\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"%sPredecessors: \00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"\0A%sSuccessors: \00", align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@reg_info_p_size = external local_unnamed_addr global i64, align 8
@.str.20 = private unnamed_addr constant [15 x i8] c"%d registers.\0A\00", align 1
@regstat_n_sets_and_refs = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [43 x i8] c"\0ARegister %d used %d times across %d insns\00", align 1
@reg_info_p = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [13 x i8] c" in block %d\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"; set %d time%s\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [11 x i8] c"; user var\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"; dies in %d places\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"; crosses 1 call\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"; crosses %d calls\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"; crosses call with %d frequency\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.31 = private unnamed_addr constant [11 x i8] c"; %d bytes\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"; pref %s\00", align 1
@reg_class_names = external local_unnamed_addr global [0 x ptr], align 8
@.str.33 = private unnamed_addr constant [13 x i8] c"; %s or none\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"; pref %s, else %s\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"; pointer\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"\0A%d basic blocks, %d edges.\0A\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c" ENTRY\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c" EXIT\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c" [%.1f%%] \00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c" count:\00", align 1
@reltable.dump_edge_info = internal unnamed_addr constant [13 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.41 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.42 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.43 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.44 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.46 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.47 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.48 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.49 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.50 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.51 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.52 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.53 to i64), i64 ptrtoint (ptr @reltable.dump_edge_info to i64)) to i32)], align 4
@.str.41 = private unnamed_addr constant [9 x i8] c"fallthru\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"abcall\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"eh\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"fake\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"dfs_back\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"can_fallthru\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"irreducible\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"sibcall\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"loop_exit\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@first_block_aux_obj = internal unnamed_addr global ptr null, align 8
@block_aux_obstack = internal global %struct.obstack zeroinitializer, align 8
@alloc_aux_for_blocks.initialized = internal unnamed_addr global i1 false, align 4
@first_edge_aux_obj = internal unnamed_addr global ptr null, align 8
@edge_aux_obstack = internal global %struct.obstack zeroinitializer, align 8
@alloc_aux_for_edges.initialized = internal unnamed_addr global i1 false, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.56 = private unnamed_addr constant [44 x i8] c"bb %i count became negative after threading\00", align 1
@.str.57 = private unnamed_addr constant [86 x i8] c"Jump threading proved probability of edge %i->%i too small (it is %i, should be %i).\0A\00", align 1
@.str.58 = private unnamed_addr constant [94 x i8] c"Edge frequencies of bb %i has been reset, frequency of block should end up being 0, it is %i\0A\00", align 1
@.str.59 = private unnamed_addr constant [50 x i8] c"edge %i->%i count became negative after threading\00", align 1
@original_copy_bb_pool = internal unnamed_addr global ptr null, align 8
@.str.60 = private unnamed_addr constant [14 x i8] c"original_copy\00", align 1
@bb_original = internal unnamed_addr global ptr null, align 8
@bb_copy = internal unnamed_addr global ptr null, align 8
@loop_copy = internal unnamed_addr global ptr null, align 8
@reg_obstack = dso_local local_unnamed_addr global %struct.bitmap_obstack zeroinitializer, align 8
@.str.61 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@reltable.brief_dump_cfg = internal unnamed_addr constant [12 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.62 to i64), i64 ptrtoint (ptr @reltable.brief_dump_cfg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.63 to i64), i64 ptrtoint (ptr @reltable.brief_dump_cfg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.64 to i64), i64 ptrtoint (ptr @reltable.brief_dump_cfg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.65 to i64), i64 ptrtoint (ptr @reltable.brief_dump_cfg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.66 to i64), i64 ptrtoint (ptr @reltable.brief_dump_cfg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.67 to i64), i64 ptrtoint (ptr @reltable.brief_dump_cfg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.68 to i64), i64 ptrtoint (ptr @reltable.brief_dump_cfg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.69 to i64), i64 ptrtoint (ptr @reltable.brief_dump_cfg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.70 to i64), i64 ptrtoint (ptr @reltable.brief_dump_cfg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.71 to i64), i64 ptrtoint (ptr @reltable.brief_dump_cfg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.72 to i64), i64 ptrtoint (ptr @reltable.brief_dump_cfg to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.73 to i64), i64 ptrtoint (ptr @reltable.brief_dump_cfg to i64)) to i32)], align 4
@.str.62 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"reachable\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"irreducible_loop\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"superblock\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"nosched\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"hot\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"xlabel\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"rtl\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"fwdr\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"nothrd\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"Basic block %d\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"Predecessors: \00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"\0ASuccessors: \00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !86 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !87
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !86 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !87
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !86 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !97

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #25
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !91
  %11 = load i8, ptr %3, align 1, !tbaa !98
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !86 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !97

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #25
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !91
  %11 = load i8, ptr %3, align 1, !tbaa !98
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !86 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !97

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #25
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !91
  %11 = load i8, ptr %3, align 1, !tbaa !98
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !86 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !87
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !86 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !97

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #25
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !99
  store i8 %12, ptr %4, align 1, !tbaa !98
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !86 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !97

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #25
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !99
  store i8 %12, ptr %4, align 1, !tbaa !98
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !86 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !97

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #25
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !99
  store i8 %12, ptr %4, align 1, !tbaa !98
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !86 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #25
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !86 {
  %2 = load i32, ptr %0, align 8, !tbaa !101
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !86 {
  %2 = load i32, ptr %0, align 8, !tbaa !101
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !86 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #25
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !102
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !86 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #25
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !102
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !86 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !86 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !86 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !86 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #25
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !103

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !86 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @init_flow(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !106 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !109

5:                                                ; preds = %1
  %6 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 80) #25
  store ptr %6, ptr %2, align 8, !tbaa !107
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %2, align 8, !tbaa !107
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !110
  %10 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 104) #25
  %11 = load ptr, ptr %2, align 8, !tbaa !107
  store ptr %10, ptr %11, align 8, !tbaa !112
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  store i32 0, ptr %12, align 8, !tbaa !113
  %13 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 104) #25
  %14 = load ptr, ptr %2, align 8, !tbaa !107
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !115
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  store i32 1, ptr %16, align 8, !tbaa !113
  %17 = load ptr, ptr %14, align 8, !tbaa !112
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  store ptr %13, ptr %18, align 8, !tbaa !116
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 5
  store ptr %17, ptr %19, align 8, !tbaa !117
  ret void
}

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @clear_edges() local_unnamed_addr #9 !prof !118 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %60, label %10, !prof !119

10:                                               ; preds = %0, %51
  %11 = phi ptr [ %53, %51 ], [ %6, %0 ]
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  br label %13

13:                                               ; preds = %43, %10
  %14 = phi i32 [ 0, %10 ], [ %44, %43 ]
  %15 = load ptr, ptr %12, align 8, !tbaa !87
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !120

17:                                               ; preds = %13
  %18 = load i32, ptr %15, align 8, !tbaa !121
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i32 [ %18, %17 ], [ 0, %13 ]
  %21 = icmp eq i32 %20, %14
  br i1 %21, label %26, label %22, !prof !123

22:                                               ; preds = %19
  %23 = zext i32 %14 to i64
  %24 = getelementptr inbounds %struct.VEC_edge_base, ptr %15, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !87
  br label %26

26:                                               ; preds = %19, %22
  %27 = phi ptr [ %25, %22 ], [ null, %19 ]
  br i1 %21, label %45, label %28, !prof !123

28:                                               ; preds = %26
  %29 = load ptr, ptr @cfun, align 8, !tbaa !87
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !107
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !110
  %34 = add nsw i32 %33, -1
  store i32 %34, ptr %32, align 4, !tbaa !110
  tail call void @ggc_free(ptr noundef %27) #25
  %35 = load ptr, ptr %12, align 8, !tbaa !87
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !124

37:                                               ; preds = %28
  %38 = load i32, ptr %35, align 8, !tbaa !121
  br label %39

39:                                               ; preds = %37, %28
  %40 = phi i32 [ %38, %37 ], [ 0, %28 ]
  %41 = icmp ult i32 %14, %40
  br i1 %41, label %43, label %42, !prof !125

42:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %43

43:                                               ; preds = %39, %42
  %44 = add i32 %14, 1
  br label %13, !llvm.loop !126

45:                                               ; preds = %26
  br i1 %16, label %47, label %46, !prof !127

46:                                               ; preds = %45
  store i32 0, ptr %15, align 8, !tbaa !121
  br label %47

47:                                               ; preds = %45, %46
  %48 = load ptr, ptr %11, align 8, !tbaa !128
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50, !prof !129

50:                                               ; preds = %47
  store i32 0, ptr %48, align 8, !tbaa !121
  br label %51

51:                                               ; preds = %47, %50
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !116
  %54 = load ptr, ptr @cfun, align 8, !tbaa !87
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !107
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !115
  %59 = icmp eq ptr %53, %58
  br i1 %59, label %60, label %10, !prof !130, !llvm.loop !131

60:                                               ; preds = %51, %0
  %61 = phi ptr [ %3, %0 ], [ %56, %51 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !112
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 1
  br label %64

64:                                               ; preds = %94, %60
  %65 = phi i32 [ 0, %60 ], [ %95, %94 ]
  %66 = load ptr, ptr %63, align 8, !tbaa !87
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !132

68:                                               ; preds = %64
  %69 = load i32, ptr %66, align 8, !tbaa !121
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi i32 [ %69, %68 ], [ 0, %64 ]
  %72 = icmp eq i32 %71, %65
  br i1 %72, label %77, label %73, !prof !133

73:                                               ; preds = %70
  %74 = zext i32 %65 to i64
  %75 = getelementptr inbounds %struct.VEC_edge_base, ptr %66, i64 0, i32 2, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !87
  br label %77

77:                                               ; preds = %70, %73
  %78 = phi ptr [ %76, %73 ], [ null, %70 ]
  %79 = load ptr, ptr @cfun, align 8, !tbaa !87
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !107
  br i1 %72, label %96, label %82, !prof !133

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 4
  %84 = load i32, ptr %83, align 4, !tbaa !110
  %85 = add nsw i32 %84, -1
  store i32 %85, ptr %83, align 4, !tbaa !110
  tail call void @ggc_free(ptr noundef %78) #25
  %86 = load ptr, ptr %63, align 8, !tbaa !87
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88, !prof !134

88:                                               ; preds = %82
  %89 = load i32, ptr %86, align 8, !tbaa !121
  br label %90

90:                                               ; preds = %88, %82
  %91 = phi i32 [ %89, %88 ], [ 0, %82 ]
  %92 = icmp ult i32 %65, %91
  br i1 %92, label %94, label %93, !prof !135

93:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %94

94:                                               ; preds = %90, %93
  %95 = add i32 %65, 1
  br label %64, !llvm.loop !136

96:                                               ; preds = %77
  %97 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !115
  %99 = load ptr, ptr %98, align 8, !tbaa !128
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101, !prof !134

101:                                              ; preds = %96
  store i32 0, ptr %99, align 8, !tbaa !121
  br label %102

102:                                              ; preds = %96, %101
  %103 = load ptr, ptr %81, align 8, !tbaa !112
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !137
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107, !prof !134

107:                                              ; preds = %102
  store i32 0, ptr %105, align 8, !tbaa !121
  br label %108

108:                                              ; preds = %102, %107
  %109 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 4
  %110 = load i32, ptr %109, align 4, !tbaa !110
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112, !prof !135

112:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 133, ptr noundef nonnull @.str.1) #25
  br label %113

113:                                              ; preds = %108, %112
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @alloc_block() local_unnamed_addr #10 !prof !138 {
  %1 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 104) #25
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @link_block(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !139 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  store ptr %4, ptr %5, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  store ptr %1, ptr %6, align 8, !tbaa !117
  store ptr %0, ptr %3, align 8, !tbaa !116
  %7 = load ptr, ptr %5, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 5
  store ptr %0, ptr %8, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @unlink_block(ptr nocapture noundef %0) local_unnamed_addr #12 !prof !140 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  store ptr %3, ptr %6, align 8, !tbaa !117
  %7 = load ptr, ptr %2, align 8, !tbaa !117
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  store ptr %5, ptr %8, align 8, !tbaa !116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @compact_blocks() local_unnamed_addr #9 !prof !141 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !142
  %6 = load ptr, ptr %3, align 8, !tbaa !112
  %7 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %5, i64 0, i32 2, i64 0
  store ptr %6, ptr %7, align 8, !tbaa !87
  %8 = load ptr, ptr %2, align 8, !tbaa !107
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !142
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %10, i64 0, i32 2, i64 1
  store ptr %12, ptr %13, align 8, !tbaa !87
  %14 = load ptr, ptr @df, align 8, !tbaa !87
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !143

16:                                               ; preds = %0
  tail call void @df_compact_blocks() #25
  br label %78

17:                                               ; preds = %0
  %18 = load ptr, ptr %2, align 8, !tbaa !107
  %19 = load ptr, ptr %18, align 8, !tbaa !112
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !116
  %22 = load ptr, ptr @cfun, align 8, !tbaa !87
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !107
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !115
  %27 = icmp eq ptr %21, %26
  br i1 %27, label %48, label %28, !prof !144

28:                                               ; preds = %17, %28
  %29 = phi i64 [ %37, %28 ], [ 2, %17 ]
  %30 = phi ptr [ %42, %28 ], [ %24, %17 ]
  %31 = phi ptr [ %39, %28 ], [ %21, %17 ]
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !142
  %34 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %33, i64 0, i32 2, i64 %29
  store ptr %31, ptr %34, align 8, !tbaa !87
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %36 = trunc i64 %29 to i32
  store i32 %36, ptr %35, align 8, !tbaa !113
  %37 = add nuw i64 %29, 1
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !116
  %40 = load ptr, ptr @cfun, align 8, !tbaa !87
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !107
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !115
  %45 = icmp eq ptr %39, %44
  br i1 %45, label %46, label %28, !prof !145, !llvm.loop !146

46:                                               ; preds = %28
  %47 = trunc i64 %37 to i32
  br label %48

48:                                               ; preds = %46, %17
  %49 = phi i32 [ 2, %17 ], [ %47, %46 ]
  %50 = phi ptr [ %24, %17 ], [ %42, %46 ]
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !147
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %55, label %54, !prof !148

54:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @.str.1) #25
  br label %55

55:                                               ; preds = %48, %54
  %56 = load ptr, ptr @cfun, align 8, !tbaa !87
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !107
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !149
  %61 = icmp slt i32 %49, %60
  br i1 %61, label %62, label %78, !prof !150

62:                                               ; preds = %55
  %63 = zext i32 %49 to i64
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi i64 [ %63, %62 ], [ %70, %64 ]
  %66 = phi ptr [ %58, %62 ], [ %73, %64 ]
  %67 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !142
  %69 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %68, i64 0, i32 2, i64 %65
  store ptr null, ptr %69, align 8, !tbaa !87
  %70 = add nuw nsw i64 %65, 1
  %71 = load ptr, ptr @cfun, align 8, !tbaa !87
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !107
  %74 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !149
  %76 = trunc i64 %70 to i32
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %64, label %78, !prof !151, !llvm.loop !152

78:                                               ; preds = %64, %55, %16
  %79 = load ptr, ptr @cfun, align 8, !tbaa !87
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !107
  %82 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !147
  %84 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 5
  store i32 %83, ptr %84, align 8, !tbaa !149
  ret void
}

declare void @df_compact_blocks() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @expunge_block(ptr nocapture noundef %0) local_unnamed_addr #13 !prof !153 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  store ptr %3, ptr %6, align 8, !tbaa !117
  %7 = load ptr, ptr %2, align 8, !tbaa !117
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  store ptr %5, ptr %8, align 8, !tbaa !116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr @cfun, align 8, !tbaa !87
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !142
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !113
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %13, i64 0, i32 2, i64 %16
  store ptr null, ptr %17, align 8, !tbaa !87
  %18 = load ptr, ptr @cfun, align 8, !tbaa !87
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !107
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !147
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr %21, align 8, !tbaa !147
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @unchecked_make_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !154 {
  %4 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 64) #25
  %5 = load ptr, ptr @cfun, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !110
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !110
  store ptr %0, ptr %4, align 8, !tbaa !155
  %11 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !157
  %12 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 7
  store i32 %2, ptr %12, align 8, !tbaa !158
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16, !prof !159

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.VEC_edge_base, ptr %14, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !160
  %19 = load i32, ptr %14, align 8, !tbaa !121
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23, !prof !161

21:                                               ; preds = %16, %3
  %22 = tail call ptr @vec_gc_p_reserve(ptr noundef %14, i32 noundef 1) #25
  store ptr %22, ptr %13, align 8, !tbaa !87
  br label %23

23:                                               ; preds = %16, %21
  %24 = load ptr, ptr %13, align 8, !tbaa !87
  %25 = load i32, ptr %24, align 8, !tbaa !121
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !121
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds %struct.VEC_edge_base, ptr %24, i64 0, i32 2, i64 %27
  store ptr %4, ptr %28, align 8, !tbaa !87
  tail call void @df_mark_solutions_dirty() #25
  %29 = load ptr, ptr %11, align 8, !tbaa !157
  %30 = load ptr, ptr %29, align 8, !tbaa !87
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32, !prof !162

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.VEC_edge_base, ptr %30, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !160
  %35 = load i32, ptr %30, align 8, !tbaa !121
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39, !prof !163

37:                                               ; preds = %32, %23
  %38 = tail call ptr @vec_gc_p_reserve(ptr noundef %30, i32 noundef 1) #25
  store ptr %38, ptr %29, align 8, !tbaa !87
  br label %39

39:                                               ; preds = %37, %32
  %40 = load ptr, ptr %29, align 8, !tbaa !87
  %41 = load i32, ptr %40, align 8, !tbaa !121
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !121
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds %struct.VEC_edge_base, ptr %40, i64 0, i32 2, i64 %43
  store ptr %4, ptr %44, align 8, !tbaa !87
  %45 = load ptr, ptr %29, align 8, !tbaa !128
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47, !prof !164

47:                                               ; preds = %39
  %48 = load i32, ptr %45, align 8, !tbaa !121
  %49 = add i32 %48, -1
  br label %50

50:                                               ; preds = %39, %47
  %51 = phi i32 [ %49, %47 ], [ -1, %39 ]
  %52 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 6
  store i32 %51, ptr %52, align 4, !tbaa !165
  tail call void @df_mark_solutions_dirty() #25
  tail call void @execute_on_growing_pred(ptr noundef nonnull %4) #25
  ret ptr %4
}

declare void @execute_on_growing_pred(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @cached_make_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #10 !prof !166 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %16, label %6, !prof !167

6:                                                ; preds = %4
  %7 = load ptr, ptr @cfun, align 8, !tbaa !87
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %16, label %12, !prof !168

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %25, !prof !169

16:                                               ; preds = %12, %6, %4
  %17 = tail call ptr @find_edge(ptr noundef %1, ptr noundef %2) #25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !170

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !158
  %22 = or i32 %21, %3
  store i32 %22, ptr %20, align 8, !tbaa !158
  br label %55

23:                                               ; preds = %16
  %24 = tail call ptr @unchecked_make_edge(ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %55

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !113
  %28 = lshr i32 %27, 6
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !171
  %32 = and i32 %27, 63
  %33 = zext nneg i32 %32 to i64
  %34 = shl nuw i64 1, %33
  %35 = and i64 %34, %31
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %48, !prof !172

37:                                               ; preds = %25
  %38 = load ptr, ptr %0, align 8, !tbaa !173
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40, !prof !175

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, ptr %38, i64 %29
  %42 = load i8, ptr %41, align 1, !tbaa !98
  %43 = add i8 %42, 1
  store i8 %43, ptr %41, align 1, !tbaa !98
  br label %44

44:                                               ; preds = %37, %40
  %45 = load i64, ptr %30, align 8, !tbaa !171
  %46 = or i64 %45, %34
  store i64 %46, ptr %30, align 8, !tbaa !171
  %47 = tail call ptr @unchecked_make_edge(ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %55

48:                                               ; preds = %25
  %49 = icmp eq i32 %3, 0
  br i1 %49, label %55, label %50, !prof !176

50:                                               ; preds = %48
  %51 = tail call ptr @find_edge(ptr noundef %1, ptr noundef %2) #25
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !158
  %54 = or i32 %53, %3
  store i32 %54, ptr %52, align 8, !tbaa !158
  br label %55

55:                                               ; preds = %23, %19, %48, %50, %44
  %56 = phi ptr [ %47, %44 ], [ null, %50 ], [ null, %48 ], [ null, %19 ], [ %24, %23 ]
  ret ptr %56
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @make_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !177 {
  %4 = tail call ptr @find_edge(ptr noundef %0, ptr noundef %1) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !178

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !158
  %9 = or i32 %8, %2
  store i32 %9, ptr %7, align 8, !tbaa !158
  br label %60

10:                                               ; preds = %3
  %11 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 64) #25
  %12 = load ptr, ptr @cfun, align 8, !tbaa !87
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !107
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !110
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !110
  store ptr %0, ptr %11, align 8, !tbaa !155
  %18 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !157
  %19 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  store i32 %2, ptr %19, align 8, !tbaa !158
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23, !prof !159

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.VEC_edge_base, ptr %21, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !160
  %26 = load i32, ptr %21, align 8, !tbaa !121
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30, !prof !161

28:                                               ; preds = %23, %10
  %29 = tail call ptr @vec_gc_p_reserve(ptr noundef %21, i32 noundef 1) #25
  store ptr %29, ptr %20, align 8, !tbaa !87
  br label %30

30:                                               ; preds = %28, %23
  %31 = load ptr, ptr %20, align 8, !tbaa !87
  %32 = load i32, ptr %31, align 8, !tbaa !121
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8, !tbaa !121
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds %struct.VEC_edge_base, ptr %31, i64 0, i32 2, i64 %34
  store ptr %11, ptr %35, align 8, !tbaa !87
  tail call void @df_mark_solutions_dirty() #25
  %36 = load ptr, ptr %18, align 8, !tbaa !157
  %37 = load ptr, ptr %36, align 8, !tbaa !87
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39, !prof !162

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.VEC_edge_base, ptr %37, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !160
  %42 = load i32, ptr %37, align 8, !tbaa !121
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46, !prof !163

44:                                               ; preds = %39, %30
  %45 = tail call ptr @vec_gc_p_reserve(ptr noundef %37, i32 noundef 1) #25
  store ptr %45, ptr %36, align 8, !tbaa !87
  br label %46

46:                                               ; preds = %44, %39
  %47 = load ptr, ptr %36, align 8, !tbaa !87
  %48 = load i32, ptr %47, align 8, !tbaa !121
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !121
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.VEC_edge_base, ptr %47, i64 0, i32 2, i64 %50
  store ptr %11, ptr %51, align 8, !tbaa !87
  %52 = load ptr, ptr %36, align 8, !tbaa !128
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54, !prof !164

54:                                               ; preds = %46
  %55 = load i32, ptr %52, align 8, !tbaa !121
  %56 = add i32 %55, -1
  br label %57

57:                                               ; preds = %46, %54
  %58 = phi i32 [ %56, %54 ], [ -1, %46 ]
  %59 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 6
  store i32 %58, ptr %59, align 4, !tbaa !165
  tail call void @df_mark_solutions_dirty() #25
  tail call void @execute_on_growing_pred(ptr noundef nonnull %11) #25
  br label %60

60:                                               ; preds = %57, %6
  %61 = phi ptr [ null, %6 ], [ %11, %57 ]
  ret ptr %61
}

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @make_single_succ_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !179 {
  %4 = tail call ptr @find_edge(ptr noundef %0, ptr noundef %1) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !180

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !158
  %9 = or i32 %8, %2
  store i32 %9, ptr %7, align 8, !tbaa !158
  br label %12

10:                                               ; preds = %3
  %11 = tail call ptr @unchecked_make_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi ptr [ null, %6 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 8
  store i32 10000, ptr %14, align 4, !tbaa !181
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !182
  %17 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 9
  store i64 %16, ptr %17, align 8, !tbaa !183
  ret ptr %13
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @remove_edge_raw(ptr noundef %0) local_unnamed_addr #10 !prof !184 {
  tail call void @remove_predictions_associated_with_edge(ptr noundef %0) #25
  tail call void @execute_on_shrinking_pred(ptr noundef %0) #25
  %2 = load ptr, ptr %0, align 8, !tbaa !155
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  br label %4

4:                                                ; preds = %37, %1
  %5 = phi i32 [ 0, %1 ], [ %38, %37 ]
  %6 = load ptr, ptr %3, align 8, !tbaa !87
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !185

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8, !tbaa !121
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ 0, %4 ]
  %12 = icmp eq i32 %11, %5
  br i1 %12, label %17, label %13, !prof !185

13:                                               ; preds = %10
  %14 = zext i32 %5 to i64
  %15 = getelementptr inbounds %struct.VEC_edge_base, ptr %6, i64 0, i32 2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi ptr [ %16, %13 ], [ null, %10 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20, !prof !185

20:                                               ; preds = %17
  %21 = icmp eq ptr %18, %0
  br i1 %21, label %22, label %30, !prof !186

22:                                               ; preds = %20
  %23 = load i32, ptr %6, align 8, !tbaa !121
  %24 = zext i32 %5 to i64
  %25 = getelementptr inbounds %struct.VEC_edge_base, ptr %6, i64 0, i32 2, i64 %24
  %26 = add i32 %23, -1
  store i32 %26, ptr %6, align 8, !tbaa !121
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.VEC_edge_base, ptr %6, i64 0, i32 2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  store ptr %29, ptr %25, align 8, !tbaa !87
  br label %40

30:                                               ; preds = %20
  br i1 %7, label %33, label %31, !prof !187

31:                                               ; preds = %30
  %32 = load i32, ptr %6, align 8, !tbaa !121
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ %32, %31 ], [ 0, %30 ]
  %35 = icmp ult i32 %5, %34
  br i1 %35, label %37, label %36, !prof !188

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %37

37:                                               ; preds = %36, %33
  %38 = add i32 %5, 1
  br label %4, !llvm.loop !189

39:                                               ; preds = %17
  tail call void @df_mark_solutions_dirty() #25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @.str.1) #25
  br label %40

40:                                               ; preds = %22, %39
  %41 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !157
  %43 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !165
  %45 = load ptr, ptr %42, align 8, !tbaa !128
  %46 = load i32, ptr %45, align 8, !tbaa !121
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds %struct.VEC_edge_base, ptr %45, i64 0, i32 2, i64 %47
  %49 = add i32 %46, -1
  store i32 %49, ptr %45, align 8, !tbaa !121
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.VEC_edge_base, ptr %45, i64 0, i32 2, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !87
  store ptr %52, ptr %48, align 8, !tbaa !87
  %53 = load ptr, ptr %42, align 8, !tbaa !128
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55, !prof !190

55:                                               ; preds = %40
  %56 = load i32, ptr %53, align 8, !tbaa !121
  br label %57

57:                                               ; preds = %55, %40
  %58 = phi i32 [ %56, %55 ], [ 0, %40 ]
  %59 = icmp ult i32 %44, %58
  br i1 %59, label %60, label %64, !prof !191

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.VEC_edge_base, ptr %53, i64 0, i32 2, i64 %47
  %62 = load ptr, ptr %61, align 8, !tbaa !87
  %63 = getelementptr inbounds %struct.edge_def, ptr %62, i64 0, i32 6
  store i32 %44, ptr %63, align 4, !tbaa !165
  br label %64

64:                                               ; preds = %57, %60
  tail call void @df_mark_solutions_dirty() #25
  tail call void @redirect_edge_var_map_clear(ptr noundef nonnull %0) #25
  %65 = load ptr, ptr @cfun, align 8, !tbaa !87
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !107
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 4
  %69 = load i32, ptr %68, align 4, !tbaa !110
  %70 = add nsw i32 %69, -1
  store i32 %70, ptr %68, align 4, !tbaa !110
  tail call void @ggc_free(ptr noundef nonnull %0) #25
  ret void
}

declare void @remove_predictions_associated_with_edge(ptr noundef) local_unnamed_addr #3

declare void @execute_on_shrinking_pred(ptr noundef) local_unnamed_addr #3

declare void @redirect_edge_var_map_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @redirect_edge_succ(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !192 {
  tail call void @execute_on_shrinking_pred(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !165
  %7 = load ptr, ptr %4, align 8, !tbaa !128
  %8 = load i32, ptr %7, align 8, !tbaa !121
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %7, i64 0, i32 2, i64 %9
  %11 = add i32 %8, -1
  store i32 %11, ptr %7, align 8, !tbaa !121
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.VEC_edge_base, ptr %7, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  store ptr %14, ptr %10, align 8, !tbaa !87
  %15 = load ptr, ptr %4, align 8, !tbaa !128
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !193

17:                                               ; preds = %2
  %18 = load i32, ptr %15, align 8, !tbaa !121
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %21 = icmp ult i32 %6, %20
  br i1 %21, label %22, label %26, !prof !194

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.VEC_edge_base, ptr %15, i64 0, i32 2, i64 %9
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 6
  store i32 %6, ptr %25, align 4, !tbaa !165
  br label %26

26:                                               ; preds = %19, %22
  tail call void @df_mark_solutions_dirty() #25
  store ptr %1, ptr %3, align 8, !tbaa !157
  %27 = load ptr, ptr %1, align 8, !tbaa !87
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29, !prof !195

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.VEC_edge_base, ptr %27, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !160
  %32 = load i32, ptr %27, align 8, !tbaa !121
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36, !prof !196

34:                                               ; preds = %29, %26
  %35 = tail call ptr @vec_gc_p_reserve(ptr noundef %27, i32 noundef 1) #25
  store ptr %35, ptr %1, align 8, !tbaa !87
  br label %36

36:                                               ; preds = %34, %29
  %37 = load ptr, ptr %1, align 8, !tbaa !87
  %38 = load i32, ptr %37, align 8, !tbaa !121
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 8, !tbaa !121
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds %struct.VEC_edge_base, ptr %37, i64 0, i32 2, i64 %40
  store ptr %0, ptr %41, align 8, !tbaa !87
  %42 = load ptr, ptr %1, align 8, !tbaa !128
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44, !prof !193

44:                                               ; preds = %36
  %45 = load i32, ptr %42, align 8, !tbaa !121
  %46 = add i32 %45, -1
  br label %47

47:                                               ; preds = %36, %44
  %48 = phi i32 [ %46, %44 ], [ -1, %36 ]
  store i32 %48, ptr %5, align 4, !tbaa !165
  tail call void @df_mark_solutions_dirty() #25
  tail call void @execute_on_growing_pred(ptr noundef %0) #25
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @redirect_edge_succ_nodup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !197 {
  %3 = load ptr, ptr %0, align 8, !tbaa !155
  %4 = tail call ptr @find_edge(ptr noundef %3, ptr noundef %1) #25
  %5 = icmp eq ptr %4, null
  %6 = icmp eq ptr %4, %0
  %7 = or i1 %5, %6
  br i1 %7, label %25, label %8, !prof !198

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !158
  %11 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !158
  %13 = or i32 %12, %10
  store i32 %13, ptr %11, align 8, !tbaa !158
  %14 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 4, !tbaa !181
  %16 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !181
  %18 = add nsw i32 %17, %15
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 10000)
  store i32 %19, ptr %16, align 4, !tbaa !181
  %20 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %21 = load i64, ptr %20, align 8, !tbaa !183
  %22 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 9
  %23 = load i64, ptr %22, align 8, !tbaa !183
  %24 = add nsw i64 %23, %21
  store i64 %24, ptr %22, align 8, !tbaa !183
  tail call void @remove_edge(ptr noundef nonnull %0) #25
  tail call void @redirect_edge_var_map_dup(ptr noundef nonnull %4, ptr noundef nonnull %0) #25
  br label %72

25:                                               ; preds = %2
  tail call void @execute_on_shrinking_pred(ptr noundef nonnull %0) #25
  %26 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !157
  %28 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  %29 = load i32, ptr %28, align 4, !tbaa !165
  %30 = load ptr, ptr %27, align 8, !tbaa !128
  %31 = load i32, ptr %30, align 8, !tbaa !121
  %32 = zext i32 %29 to i64
  %33 = getelementptr inbounds %struct.VEC_edge_base, ptr %30, i64 0, i32 2, i64 %32
  %34 = add i32 %31, -1
  store i32 %34, ptr %30, align 8, !tbaa !121
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.VEC_edge_base, ptr %30, i64 0, i32 2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !87
  store ptr %37, ptr %33, align 8, !tbaa !87
  %38 = load ptr, ptr %27, align 8, !tbaa !128
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !193

40:                                               ; preds = %25
  %41 = load i32, ptr %38, align 8, !tbaa !121
  br label %42

42:                                               ; preds = %40, %25
  %43 = phi i32 [ %41, %40 ], [ 0, %25 ]
  %44 = icmp ult i32 %29, %43
  br i1 %44, label %45, label %49, !prof !194

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.VEC_edge_base, ptr %38, i64 0, i32 2, i64 %32
  %47 = load ptr, ptr %46, align 8, !tbaa !87
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 6
  store i32 %29, ptr %48, align 4, !tbaa !165
  br label %49

49:                                               ; preds = %45, %42
  tail call void @df_mark_solutions_dirty() #25
  store ptr %1, ptr %26, align 8, !tbaa !157
  %50 = load ptr, ptr %1, align 8, !tbaa !87
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52, !prof !195

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.VEC_edge_base, ptr %50, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !160
  %55 = load i32, ptr %50, align 8, !tbaa !121
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59, !prof !196

57:                                               ; preds = %52, %49
  %58 = tail call ptr @vec_gc_p_reserve(ptr noundef %50, i32 noundef 1) #25
  store ptr %58, ptr %1, align 8, !tbaa !87
  br label %59

59:                                               ; preds = %57, %52
  %60 = load ptr, ptr %1, align 8, !tbaa !87
  %61 = load i32, ptr %60, align 8, !tbaa !121
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !121
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds %struct.VEC_edge_base, ptr %60, i64 0, i32 2, i64 %63
  store ptr %0, ptr %64, align 8, !tbaa !87
  %65 = load ptr, ptr %1, align 8, !tbaa !128
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67, !prof !193

67:                                               ; preds = %59
  %68 = load i32, ptr %65, align 8, !tbaa !121
  %69 = add i32 %68, -1
  br label %70

70:                                               ; preds = %59, %67
  %71 = phi i32 [ %69, %67 ], [ -1, %59 ]
  store i32 %71, ptr %28, align 4, !tbaa !165
  tail call void @df_mark_solutions_dirty() #25
  tail call void @execute_on_growing_pred(ptr noundef nonnull %0) #25
  br label %72

72:                                               ; preds = %70, %8
  %73 = phi ptr [ %4, %8 ], [ %0, %70 ]
  ret ptr %73
}

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare void @redirect_edge_var_map_dup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @redirect_edge_pred(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !199 {
  %3 = load ptr, ptr %0, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  br label %5

5:                                                ; preds = %38, %2
  %6 = phi i32 [ 0, %2 ], [ %39, %38 ]
  %7 = load ptr, ptr %4, align 8, !tbaa !87
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !200

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !121
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ 0, %5 ]
  %13 = icmp eq i32 %12, %6
  br i1 %13, label %18, label %14, !prof !200

14:                                               ; preds = %11
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds %struct.VEC_edge_base, ptr %7, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi ptr [ %17, %14 ], [ null, %11 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21, !prof !200

21:                                               ; preds = %18
  %22 = icmp eq ptr %19, %0
  br i1 %22, label %23, label %31, !prof !201

23:                                               ; preds = %21
  %24 = load i32, ptr %7, align 8, !tbaa !121
  %25 = zext i32 %6 to i64
  %26 = getelementptr inbounds %struct.VEC_edge_base, ptr %7, i64 0, i32 2, i64 %25
  %27 = add i32 %24, -1
  store i32 %27, ptr %7, align 8, !tbaa !121
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.VEC_edge_base, ptr %7, i64 0, i32 2, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !87
  store ptr %30, ptr %26, align 8, !tbaa !87
  br label %41

31:                                               ; preds = %21
  br i1 %8, label %34, label %32, !prof !202

32:                                               ; preds = %31
  %33 = load i32, ptr %7, align 8, !tbaa !121
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ %33, %32 ], [ 0, %31 ]
  %36 = icmp ult i32 %6, %35
  br i1 %36, label %38, label %37, !prof !203

37:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %38

38:                                               ; preds = %37, %34
  %39 = add i32 %6, 1
  br label %5, !llvm.loop !189

40:                                               ; preds = %18
  tail call void @df_mark_solutions_dirty() #25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @.str.1) #25
  br label %41

41:                                               ; preds = %23, %40
  store ptr %1, ptr %0, align 8, !tbaa !155
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !87
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45, !prof !204

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.VEC_edge_base, ptr %43, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !160
  %48 = load i32, ptr %43, align 8, !tbaa !121
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %41
  %51 = tail call ptr @vec_gc_p_reserve(ptr noundef %43, i32 noundef 1) #25
  store ptr %51, ptr %42, align 8, !tbaa !87
  br label %52

52:                                               ; preds = %45, %50
  %53 = load ptr, ptr %42, align 8, !tbaa !87
  %54 = load i32, ptr %53, align 8, !tbaa !121
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 8, !tbaa !121
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds %struct.VEC_edge_base, ptr %53, i64 0, i32 2, i64 %56
  store ptr %0, ptr %57, align 8, !tbaa !87
  tail call void @df_mark_solutions_dirty() #25
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_bb_flags() local_unnamed_addr #14 !prof !205 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !206

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %12, %6 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 13
  %9 = load i32, ptr %8, align 8, !tbaa !207
  %10 = and i32 %9, 880
  store i32 %10, ptr %8, align 8, !tbaa !207
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !prof !208, !llvm.loop !209

14:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @check_bb_profile(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #15 !prof !86 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !210
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %194, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %101, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %15

15:                                               ; preds = %42, %13
  %16 = phi i32 [ 0, %13 ], [ %43, %42 ]
  %17 = phi i32 [ 0, %13 ], [ %34, %42 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !87
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %18, align 8, !tbaa !121
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi i32 [ %21, %20 ], [ 0, %15 ]
  %24 = icmp eq i32 %23, %16
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = zext i32 %16 to i64
  %27 = getelementptr inbounds %struct.VEC_edge_base, ptr %18, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  br label %29

29:                                               ; preds = %22, %25
  %30 = phi ptr [ %28, %25 ], [ null, %22 ]
  br i1 %24, label %44, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 8
  %33 = load i32, ptr %32, align 4, !tbaa !181
  %34 = add nsw i32 %33, %17
  %35 = icmp eq ptr %18, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, ptr %18, align 8, !tbaa !121
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi i32 [ %37, %36 ], [ 0, %31 ]
  %40 = icmp ult i32 %16, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %42

42:                                               ; preds = %38, %41
  %43 = add i32 %16, 1
  br label %15, !llvm.loop !211

44:                                               ; preds = %29
  br i1 %19, label %57, label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %18, align 8, !tbaa !121
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %45
  %49 = add nsw i32 %17, -10000
  %50 = tail call i32 @llvm.abs.i32(i32 %49, i1 true)
  %51 = icmp ugt i32 %50, 100
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = sitofp i32 %17 to double
  %54 = fmul double %53, 1.000000e+02
  %55 = fdiv double %54, 1.000000e+04
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.2, double noundef %55)
  br label %57

57:                                               ; preds = %44, %52, %48, %45
  br label %58

58:                                               ; preds = %57, %85
  %59 = phi i32 [ %86, %85 ], [ 0, %57 ]
  %60 = phi i64 [ %77, %85 ], [ 0, %57 ]
  %61 = load ptr, ptr %14, align 8, !tbaa !87
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %61, align 8, !tbaa !121
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi i32 [ %64, %63 ], [ 0, %58 ]
  %67 = icmp eq i32 %66, %59
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = zext i32 %59 to i64
  %70 = getelementptr inbounds %struct.VEC_edge_base, ptr %61, i64 0, i32 2, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !87
  br label %72

72:                                               ; preds = %65, %68
  %73 = phi ptr [ %71, %68 ], [ null, %65 ]
  br i1 %67, label %87, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 9
  %76 = load i64, ptr %75, align 8, !tbaa !183
  %77 = add nsw i64 %76, %60
  %78 = icmp eq ptr %61, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load i32, ptr %61, align 8, !tbaa !121
  br label %81

81:                                               ; preds = %79, %74
  %82 = phi i32 [ %80, %79 ], [ 0, %74 ]
  %83 = icmp ult i32 %59, %82
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %85

85:                                               ; preds = %81, %84
  %86 = add i32 %59, 1
  br label %58, !llvm.loop !212

87:                                               ; preds = %72
  br i1 %62, label %101, label %88

88:                                               ; preds = %87
  %89 = load i32, ptr %61, align 8, !tbaa !121
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %93 = load i64, ptr %92, align 8, !tbaa !182
  %94 = add i64 %60, -101
  %95 = sub i64 %94, %93
  %96 = icmp ult i64 %95, -201
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = trunc i64 %60 to i32
  %99 = trunc i64 %93 to i32
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %98, i32 noundef %99)
  br label %101

101:                                              ; preds = %87, %91, %88, %97, %9
  %102 = load ptr, ptr @cfun, align 8, !tbaa !87
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !107
  %105 = load ptr, ptr %104, align 8, !tbaa !112
  %106 = icmp eq ptr %105, %0
  br i1 %106, label %194, label %107

107:                                              ; preds = %101
  %108 = icmp eq ptr %0, null
  br label %109

109:                                              ; preds = %107, %144
  %110 = phi i32 [ %145, %144 ], [ 0, %107 ]
  %111 = phi i32 [ %136, %144 ], [ 0, %107 ]
  br i1 %108, label %112, label %113

112:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 687, ptr noundef nonnull @.str.1) #25
  br label %113

113:                                              ; preds = %112, %109
  %114 = load ptr, ptr %0, align 8, !tbaa !87
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr %114, align 8, !tbaa !121
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i32 [ %117, %116 ], [ 0, %113 ]
  %120 = icmp eq i32 %119, %110
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = zext i32 %110 to i64
  %123 = getelementptr inbounds %struct.VEC_edge_base, ptr %114, i64 0, i32 2, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !87
  br label %125

125:                                              ; preds = %118, %121
  %126 = phi ptr [ %124, %121 ], [ null, %118 ]
  br i1 %120, label %146, label %127

127:                                              ; preds = %125
  %128 = load ptr, ptr %126, align 8, !tbaa !155
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 11
  %130 = load i32, ptr %129, align 8, !tbaa !213
  %131 = getelementptr inbounds %struct.edge_def, ptr %126, i64 0, i32 8
  %132 = load i32, ptr %131, align 4, !tbaa !181
  %133 = mul nsw i32 %132, %130
  %134 = add nsw i32 %133, 5000
  %135 = sdiv i32 %134, 10000
  %136 = add nsw i32 %135, %111
  %137 = icmp eq ptr %114, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %127
  %139 = load i32, ptr %114, align 8, !tbaa !121
  br label %140

140:                                              ; preds = %138, %127
  %141 = phi i32 [ %139, %138 ], [ 0, %127 ]
  %142 = icmp ult i32 %110, %141
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %144

144:                                              ; preds = %140, %143
  %145 = add i32 %110, 1
  br label %109, !llvm.loop !214

146:                                              ; preds = %125
  %147 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %148 = load i32, ptr %147, align 8, !tbaa !213
  %149 = sub nsw i32 %111, %148
  %150 = tail call i32 @llvm.abs.i32(i32 %149, i1 true)
  %151 = icmp ugt i32 %150, 100
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %111, i32 noundef %148)
  br label %154

154:                                              ; preds = %152, %146
  br label %155

155:                                              ; preds = %154, %182
  %156 = phi i32 [ %183, %182 ], [ 0, %154 ]
  %157 = phi i64 [ %174, %182 ], [ 0, %154 ]
  %158 = load ptr, ptr %0, align 8, !tbaa !87
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = load i32, ptr %158, align 8, !tbaa !121
  br label %162

162:                                              ; preds = %160, %155
  %163 = phi i32 [ %161, %160 ], [ 0, %155 ]
  %164 = icmp eq i32 %163, %156
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = zext i32 %156 to i64
  %167 = getelementptr inbounds %struct.VEC_edge_base, ptr %158, i64 0, i32 2, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !87
  br label %169

169:                                              ; preds = %162, %165
  %170 = phi ptr [ %168, %165 ], [ null, %162 ]
  br i1 %164, label %184, label %171

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.edge_def, ptr %170, i64 0, i32 9
  %173 = load i64, ptr %172, align 8, !tbaa !183
  %174 = add nsw i64 %173, %157
  %175 = icmp eq ptr %158, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %171
  %177 = load i32, ptr %158, align 8, !tbaa !121
  br label %178

178:                                              ; preds = %176, %171
  %179 = phi i32 [ %177, %176 ], [ 0, %171 ]
  %180 = icmp ult i32 %156, %179
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %182

182:                                              ; preds = %178, %181
  %183 = add i32 %156, 1
  br label %155, !llvm.loop !215

184:                                              ; preds = %169
  %185 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %186 = load i64, ptr %185, align 8, !tbaa !182
  %187 = add i64 %157, -101
  %188 = sub i64 %187, %186
  %189 = icmp ult i64 %188, -201
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = trunc i64 %157 to i32
  %192 = trunc i64 %186 to i32
  %193 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %191, i32 noundef %192)
  br label %194

194:                                              ; preds = %101, %190, %184, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_regset(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #17 !prof !86 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 6, i64 1, ptr %1)
  br label %90

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !216
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @bitmap_zero_bits, ptr %7
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !218
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !171
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = or disjoint i32 %12, %16
  br label %18

18:                                               ; preds = %87, %6
  %19 = phi i64 [ %14, %6 ], [ %88, %87 ]
  %20 = phi i32 [ 0, %6 ], [ %75, %87 ]
  %21 = phi i32 [ %17, %6 ], [ %89, %87 ]
  %22 = phi ptr [ %9, %6 ], [ %77, %87 ]
  %23 = icmp eq i64 %19, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %52, %18
  %25 = phi i64 [ %19, %18 ], [ %57, %52 ]
  %26 = phi i32 [ %20, %18 ], [ %53, %52 ]
  %27 = phi i32 [ %21, %18 ], [ %54, %52 ]
  %28 = phi ptr [ %22, %18 ], [ %45, %52 ]
  %29 = and i64 %25, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %24, %31
  %32 = phi i32 [ %35, %31 ], [ %27, %24 ]
  %33 = phi i64 [ %34, %31 ], [ %25, %24 ]
  %34 = lshr exact i64 %33, 1
  %35 = add i32 %32, 1
  %36 = and i64 %33, 2
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %31, label %73, !llvm.loop !220

38:                                               ; preds = %18
  %39 = add i32 %21, 63
  %40 = and i32 %39, -64
  %41 = add i32 %20, 1
  br label %42

42:                                               ; preds = %69, %38
  %43 = phi i64 [ %19, %38 ], [ %64, %69 ]
  %44 = phi i32 [ %40, %38 ], [ %72, %69 ]
  %45 = phi ptr [ %22, %38 ], [ %67, %69 ]
  %46 = phi i32 [ %41, %38 ], [ 0, %69 ]
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %63, label %48

48:                                               ; preds = %42
  %49 = add i32 %44, 128
  %50 = shl i32 %46, 6
  %51 = sub i32 %49, %50
  br label %52

52:                                               ; preds = %48, %59
  %53 = phi i32 [ %61, %59 ], [ %46, %48 ]
  %54 = phi i32 [ %60, %59 ], [ %44, %48 ]
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 3, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !171
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %24

59:                                               ; preds = %52
  %60 = add i32 %54, 64
  %61 = add i32 %53, 1
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %52, !llvm.loop !221

63:                                               ; preds = %59, %42
  %64 = phi i64 [ %43, %42 ], [ %57, %59 ]
  %65 = phi i32 [ %44, %42 ], [ %51, %59 ]
  %66 = phi i32 [ %46, %42 ], [ 2, %59 ]
  %67 = load ptr, ptr %45, align 8, !tbaa !222
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %67, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !218
  %72 = shl i32 %71, 7
  br label %42, !llvm.loop !223

73:                                               ; preds = %63, %31, %24
  %74 = phi i64 [ %25, %24 ], [ %34, %31 ], [ %64, %63 ]
  %75 = phi i32 [ %26, %24 ], [ %26, %31 ], [ %66, %63 ]
  %76 = phi i32 [ %27, %24 ], [ %35, %31 ], [ %65, %63 ]
  %77 = phi ptr [ %28, %24 ], [ %28, %31 ], [ %67, %63 ]
  %78 = phi i1 [ false, %24 ], [ false, %31 ], [ true, %63 ]
  br i1 %78, label %90, label %79

79:                                               ; preds = %73
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %76)
  %81 = icmp ult i32 %76, 53
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = zext nneg i32 %76 to i64
  %84 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !87
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef %85)
  br label %87

87:                                               ; preds = %79, %82
  %88 = lshr i64 %74, 1
  %89 = add i32 %76, 1
  br label %18, !llvm.loop !224

90:                                               ; preds = %73, %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_regset(ptr noundef %0) local_unnamed_addr #17 !prof !86 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !87
  tail call void @dump_regset(ptr noundef %0, ptr noundef %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !87
  %4 = tail call i32 @putc(i32 noundef 10, ptr noundef %3)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_bb_info(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !prof !86 {
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %97, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !113
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef %4, i32 noundef %10)
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !117
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !113
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef %17)
  br label %19

19:                                               ; preds = %15, %8
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !116
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !113
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %29 = load i32, ptr %28, align 4, !tbaa !225
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %29)
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %32 = load i64, ptr %31, align 8, !tbaa !182
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.13, i64 noundef %32)
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !213
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef %35)
  %37 = load ptr, ptr @cfun, align 8, !tbaa !87
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %27
  %40 = tail call zeroext i8 @maybe_hot_bb_p(ptr noundef %0) #25
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 11, i64 1, ptr %5)
  br label %44

44:                                               ; preds = %42, %39, %27
  %45 = load ptr, ptr @cfun, align 8, !tbaa !87
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = tail call zeroext i8 @probably_never_executed_bb_p(ptr noundef %0) #25
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 25, i64 1, ptr %5)
  br label %52

52:                                               ; preds = %50, %47, %44
  %53 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 2, i64 1, ptr %5)
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.18, ptr noundef %4)
  %55 = icmp eq ptr %0, null
  br label %56

56:                                               ; preds = %82, %52
  %57 = phi i32 [ 0, %52 ], [ %83, %82 ]
  br i1 %55, label %58, label %59

58:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 687, ptr noundef nonnull @.str.1) #25
  br label %59

59:                                               ; preds = %58, %56
  %60 = load ptr, ptr %0, align 8, !tbaa !87
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %60, align 8, !tbaa !121
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %63, %62 ], [ 0, %59 ]
  %66 = icmp eq i32 %65, %57
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = zext i32 %57 to i64
  %69 = getelementptr inbounds %struct.VEC_edge_base, ptr %60, i64 0, i32 2, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !87
  br label %71

71:                                               ; preds = %64, %67
  %72 = phi ptr [ %70, %67 ], [ null, %64 ]
  br i1 %66, label %84, label %73

73:                                               ; preds = %71
  tail call void @dump_edge_info(ptr noundef %5, ptr noundef %72, i32 noundef 0)
  %74 = load ptr, ptr %0, align 8, !tbaa !87
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %74, align 8, !tbaa !121
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i32 [ %77, %76 ], [ 0, %73 ]
  %80 = icmp ult i32 %57, %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %82

82:                                               ; preds = %78, %81
  %83 = add i32 %57, 1
  br label %56, !llvm.loop !226

84:                                               ; preds = %71
  %85 = and i32 %3, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %89 = load i32, ptr %88, align 8, !tbaa !207
  %90 = and i32 %89, 512
  %91 = icmp ne i32 %90, 0
  %92 = load ptr, ptr @df, align 8
  %93 = icmp ne ptr %92, null
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = tail call i32 @putc(i32 noundef 10, ptr noundef %5)
  tail call void @df_dump_top(ptr noundef nonnull %0, ptr noundef %5) #25
  br label %97

97:                                               ; preds = %84, %87, %95, %6
  %98 = icmp eq i8 %2, 0
  br i1 %98, label %141, label %99

99:                                               ; preds = %97
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.19, ptr noundef %4)
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %102

102:                                              ; preds = %126, %99
  %103 = phi i32 [ 0, %99 ], [ %127, %126 ]
  %104 = load ptr, ptr %101, align 8, !tbaa !87
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = load i32, ptr %104, align 8, !tbaa !121
  br label %108

108:                                              ; preds = %106, %102
  %109 = phi i32 [ %107, %106 ], [ 0, %102 ]
  %110 = icmp eq i32 %109, %103
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = zext i32 %103 to i64
  %113 = getelementptr inbounds %struct.VEC_edge_base, ptr %104, i64 0, i32 2, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !87
  br label %115

115:                                              ; preds = %108, %111
  %116 = phi ptr [ %114, %111 ], [ null, %108 ]
  br i1 %110, label %128, label %117

117:                                              ; preds = %115
  tail call void @dump_edge_info(ptr noundef %5, ptr noundef %116, i32 noundef 1)
  %118 = load ptr, ptr %101, align 8, !tbaa !87
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = load i32, ptr %118, align 8, !tbaa !121
  br label %122

122:                                              ; preds = %120, %117
  %123 = phi i32 [ %121, %120 ], [ 0, %117 ]
  %124 = icmp ult i32 %103, %123
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %126

126:                                              ; preds = %122, %125
  %127 = add i32 %103, 1
  br label %102, !llvm.loop !227

128:                                              ; preds = %115
  %129 = and i32 %3, 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %133 = load i32, ptr %132, align 8, !tbaa !207
  %134 = and i32 %133, 512
  %135 = icmp ne i32 %134, 0
  %136 = load ptr, ptr @df, align 8
  %137 = icmp ne ptr %136, null
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = tail call i32 @putc(i32 noundef 10, ptr noundef %5)
  tail call void @df_dump_bottom(ptr noundef %0, ptr noundef %5) #25
  br label %141

141:                                              ; preds = %128, %131, %139, %97
  %142 = tail call i32 @putc(i32 noundef 10, ptr noundef %5)
  ret void
}

declare zeroext i8 @maybe_hot_bb_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @probably_never_executed_bb_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_edge_info(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #17 !prof !86 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %6 = select i1 %4, ptr %1, ptr %5
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = load ptr, ptr @cfun, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = load ptr, ptr %12, align 8, !tbaa !112
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 6, i64 1, ptr %0)
  br label %30

17:                                               ; preds = %10
  br i1 %9, label %26, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !107
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !115
  %23 = icmp eq ptr %7, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 5, i64 1, ptr %0)
  br label %30

26:                                               ; preds = %3, %18, %17
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !113
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %28)
  br label %30

30:                                               ; preds = %24, %26, %15
  %31 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %32 = load i32, ptr %31, align 4, !tbaa !181
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = sitofp i32 %32 to double
  %36 = fmul double %35, 1.000000e+02
  %37 = fdiv double %36, 1.000000e+04
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, double noundef %37)
  br label %39

39:                                               ; preds = %34, %30
  %40 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 9
  %41 = load i64, ptr %40, align 8, !tbaa !183
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 7, i64 1, ptr %0)
  %45 = load i64, ptr %40, align 8, !tbaa !183
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %45)
  br label %47

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !158
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %83, label %51

51:                                               ; preds = %47
  %52 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 2, i64 1, ptr %0)
  br label %53

53:                                               ; preds = %51, %76
  %54 = phi i64 [ 0, %51 ], [ %79, %76 ]
  %55 = phi i32 [ %49, %51 ], [ %78, %76 ]
  %56 = phi i32 [ 0, %51 ], [ %77, %76 ]
  %57 = trunc i64 %54 to i32
  %58 = shl nuw i32 1, %57
  %59 = and i32 %55, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %53
  %62 = xor i32 %58, -1
  %63 = and i32 %55, %62
  %64 = icmp eq i32 %56, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call i32 @fputc(i32 noundef 44, ptr noundef %0)
  br label %67

67:                                               ; preds = %65, %61
  %68 = icmp ult i64 %54, 13
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  %70 = shl i64 %54, 2
  %71 = call ptr @llvm.load.relative.i64(ptr @reltable.dump_edge_info, i64 %70)
  %72 = tail call i32 @fputs(ptr noundef %71, ptr noundef %0)
  br label %76

73:                                               ; preds = %67
  %74 = trunc i64 %54 to i32
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %74)
  br label %76

76:                                               ; preds = %69, %73, %53
  %77 = phi i32 [ %56, %53 ], [ 1, %73 ], [ 1, %69 ]
  %78 = phi i32 [ %55, %53 ], [ %63, %73 ], [ %63, %69 ]
  %79 = add nuw i64 %54, 1
  %80 = icmp eq i32 %78, 0
  br i1 %80, label %81, label %53, !llvm.loop !228

81:                                               ; preds = %76
  %82 = tail call i32 @fputc(i32 noundef 41, ptr noundef %0)
  br label %83

83:                                               ; preds = %81, %47
  ret void
}

declare void @df_dump_top(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_dump_bottom(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_reg_info(ptr nocapture noundef %0) local_unnamed_addr #15 !prof !86 {
  %2 = tail call i32 @max_reg_num() #25
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !102
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %169

5:                                                ; preds = %1
  %6 = load i64, ptr @reg_info_p_size, align 8, !tbaa !171
  %7 = zext i32 %2 to i64
  %8 = icmp ult i64 %6, %7
  %9 = trunc i64 %6 to i32
  %10 = select i1 %8, i32 %9, i32 %2
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %10)
  %12 = icmp ugt i32 %10, 53
  br i1 %12, label %13, label %169

13:                                               ; preds = %5, %165
  %14 = phi i32 [ %167, %165 ], [ 53, %5 ]
  %15 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !87
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %15, i64 %18, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !229
  %21 = load ptr, ptr @reg_info_p, align 8, !tbaa !87
  %22 = zext i32 %14 to i64
  %23 = getelementptr inbounds %struct.reg_info_t, ptr %21, i64 %22, i32 2
  br label %44

24:                                               ; preds = %13
  %25 = load ptr, ptr @df, align 8, !tbaa !87
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !231
  %30 = zext i32 %14 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  %33 = getelementptr inbounds %struct.df_reg_info, ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !234
  %35 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !236
  %37 = getelementptr inbounds ptr, ptr %36, i64 %30
  %38 = load ptr, ptr %37, align 8, !tbaa !87
  %39 = getelementptr inbounds %struct.df_reg_info, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !234
  %41 = add i32 %40, %34
  %42 = load ptr, ptr @reg_info_p, align 8, !tbaa !87
  %43 = getelementptr inbounds %struct.reg_info_t, ptr %42, i64 %30, i32 2
  br label %44

44:                                               ; preds = %17, %27
  %45 = phi ptr [ %43, %27 ], [ %23, %17 ]
  %46 = phi i32 [ %41, %27 ], [ %20, %17 ]
  %47 = load i32, ptr %45, align 4, !tbaa !237
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %14, i32 noundef %46, i32 noundef %47)
  br label %49

49:                                               ; preds = %44, %24
  %50 = load ptr, ptr @reg_info_p, align 8, !tbaa !87
  %51 = zext i32 %14 to i64
  %52 = getelementptr inbounds %struct.reg_info_t, ptr %50, i64 %51, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !239
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %53)
  br label %57

57:                                               ; preds = %55, %49
  %58 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !87
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = sext i32 %14 to i64
  %62 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %58, i64 %61
  br label %72

63:                                               ; preds = %57
  %64 = load ptr, ptr @df, align 8, !tbaa !87
  %65 = icmp eq ptr %64, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.df, ptr %64, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !236
  %69 = getelementptr inbounds ptr, ptr %68, i64 %51
  %70 = load ptr, ptr %69, align 8, !tbaa !87
  %71 = getelementptr inbounds %struct.df_reg_info, ptr %70, i64 0, i32 1
  br label %72

72:                                               ; preds = %60, %66
  %73 = phi ptr [ %71, %66 ], [ %62, %60 ]
  %74 = load i32, ptr %73, align 4, !tbaa !102
  %75 = icmp eq i32 %74, 1
  %76 = select i1 %75, ptr @.str.24, ptr @.str.25
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %74, ptr noundef nonnull %76)
  br label %78

78:                                               ; preds = %72, %63
  %79 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !87
  %80 = getelementptr inbounds ptr, ptr %79, i64 %51
  %81 = load ptr, ptr %80, align 8, !tbaa !87
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load i32, ptr %81, align 8
  %85 = and i32 %84, 134217728
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 10, i64 1, ptr %0)
  br label %89

89:                                               ; preds = %87, %83, %78
  %90 = load ptr, ptr @reg_info_p, align 8, !tbaa !87
  %91 = getelementptr inbounds %struct.reg_info_t, ptr %90, i64 %51, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !240
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %92)
  br label %96

96:                                               ; preds = %94, %89
  %97 = load ptr, ptr @reg_info_p, align 8, !tbaa !87
  %98 = getelementptr inbounds %struct.reg_info_t, ptr %97, i64 %51, i32 3
  %99 = load i32, ptr %98, align 4, !tbaa !241
  switch i32 %99, label %102 [
    i32 1, label %100
    i32 0, label %104
  ]

100:                                              ; preds = %96
  %101 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 16, i64 1, ptr %0)
  br label %104

102:                                              ; preds = %96
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %99)
  br label %104

104:                                              ; preds = %96, %102, %100
  %105 = load ptr, ptr @reg_info_p, align 8, !tbaa !87
  %106 = getelementptr inbounds %struct.reg_info_t, ptr %105, i64 %51, i32 4
  %107 = load i32, ptr %106, align 4, !tbaa !242
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %107)
  br label %111

111:                                              ; preds = %109, %104
  %112 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !87
  %113 = getelementptr inbounds ptr, ptr %112, i64 %51
  %114 = load ptr, ptr %113, align 8, !tbaa !87
  %115 = icmp eq ptr %114, null
  br i1 %115, label %127, label %116

116:                                              ; preds = %111
  %117 = load i32, ptr %114, align 8
  %118 = lshr i32 %117, 16
  %119 = and i32 %118, 255
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !98
  %123 = icmp eq i8 %122, 4
  br i1 %123, label %127, label %124

124:                                              ; preds = %116
  %125 = zext i8 %122 to i32
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %125)
  br label %127

127:                                              ; preds = %124, %116, %111
  %128 = tail call i32 @reg_preferred_class(i32 noundef %14) #25
  %129 = tail call i32 @reg_alternate_class(i32 noundef %14) #25
  %130 = icmp ne i32 %128, 13
  %131 = icmp ne i32 %129, 26
  %132 = select i1 %130, i1 true, i1 %131
  br i1 %132, label %133, label %154

133:                                              ; preds = %127
  %134 = icmp eq i32 %129, 26
  %135 = icmp eq i32 %128, 26
  %136 = select i1 %134, i1 true, i1 %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = sext i32 %128 to i64
  %139 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !87
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %140)
  br label %154

142:                                              ; preds = %133
  %143 = icmp eq i32 %129, 0
  %144 = sext i32 %128 to i64
  %145 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !87
  br i1 %143, label %147, label %149

147:                                              ; preds = %142
  %148 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %146)
  br label %154

149:                                              ; preds = %142
  %150 = sext i32 %129 to i64
  %151 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !87
  %153 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %146, ptr noundef %152)
  br label %154

154:                                              ; preds = %137, %149, %147, %127
  %155 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !87
  %156 = getelementptr inbounds ptr, ptr %155, i64 %51
  %157 = load ptr, ptr %156, align 8, !tbaa !87
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %154
  %160 = load i32, ptr %157, align 8
  %161 = and i32 %160, 1073741824
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %159
  %164 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 9, i64 1, ptr %0)
  br label %165

165:                                              ; preds = %163, %159, %154
  %166 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 2, i64 1, ptr %0)
  %167 = add nuw i32 %14, 1
  %168 = icmp eq i32 %167, %10
  br i1 %168, label %169, label %13, !llvm.loop !243

169:                                              ; preds = %165, %5, %1
  ret void
}

declare i32 @max_reg_num() local_unnamed_addr #3

declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #3

declare i32 @reg_alternate_class(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_flow_info(ptr noundef %0, i32 noundef %1) local_unnamed_addr #15 !prof !86 {
  %3 = load i64, ptr @reg_info_p_size, align 8, !tbaa !171
  %4 = icmp eq i64 %3, 0
  %5 = and i32 %1, 8
  %6 = icmp eq i32 %5, 0
  %7 = or i1 %6, %4
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @dump_reg_info(ptr noundef %0)
  br label %9

9:                                                ; preds = %8, %2
  %10 = load ptr, ptr @cfun, align 8, !tbaa !87
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !147
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !110
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %14, i32 noundef %16)
  %18 = load ptr, ptr @cfun, align 8, !tbaa !87
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !107
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %9, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %9 ]
  tail call void @dump_bb_info(ptr noundef nonnull %24, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef %1, ptr noundef nonnull @.str.24, ptr noundef %0)
  tail call void @check_bb_profile(ptr noundef nonnull %24, ptr noundef %0)
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !244

28:                                               ; preds = %23, %9
  %29 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_flow_info() local_unnamed_addr #15 !prof !86 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !87
  tail call void @dump_flow_info(ptr noundef %1, i32 noundef 8)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @alloc_aux_for_block(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !86 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !245
  %5 = icmp eq ptr %4, null
  %6 = load ptr, ptr @first_block_aux_obj, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false, !prof !246
  br i1 %8, label %10, label %9, !prof !246

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 741, ptr noundef nonnull @.str.1) #25
  br label %10

10:                                               ; preds = %2, %9
  %11 = sext i32 %1 to i64
  store i64 %11, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !249
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, %11
  br i1 %17, label %18, label %19, !prof !251

18:                                               ; preds = %10
  tail call void @_obstack_newchunk(ptr noundef nonnull @block_aux_obstack, i32 noundef %1) #25
  br label %19

19:                                               ; preds = %10, %18
  %20 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %22 = getelementptr inbounds i8, ptr %21, i64 %20
  store ptr %22, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %23 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !252
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %28, !prof !253

25:                                               ; preds = %19
  %26 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 10), align 8
  %27 = or i8 %26, 2
  store i8 %27, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 10), align 8
  br label %28

28:                                               ; preds = %19, %25
  %29 = ptrtoint ptr %23 to i64
  store i64 %29, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %30 = ptrtoint ptr %22 to i64
  %31 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 6), align 8, !tbaa !254
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = xor i32 %31, -1
  %35 = sext i32 %34 to i64
  %36 = and i64 %33, %35
  %37 = inttoptr i64 %36 to ptr
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %38 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 1), align 8, !tbaa !255
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %36, %39
  %41 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !249
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %42, %39
  %44 = icmp sgt i64 %40, %43
  %45 = select i1 %44, ptr %41, ptr %37, !prof !253
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !252
  store ptr %23, ptr %3, align 8, !tbaa !245
  tail call void @llvm.memset.p0.i64(ptr align 1 %23, i8 0, i64 %11, i1 false), !prof !256
  ret void
}

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nounwind uwtable
define dso_local void @alloc_aux_for_blocks(i32 noundef %0) local_unnamed_addr #9 !prof !257 {
  %2 = load i1, ptr @alloc_aux_for_blocks.initialized, align 4
  br i1 %2, label %5, label %3, !prof !258

3:                                                ; preds = %1
  %4 = tail call i32 @_obstack_begin(ptr noundef nonnull @block_aux_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #25
  store i1 true, ptr @alloc_aux_for_blocks.initialized, align 4
  br label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr @first_block_aux_obj, align 8, !tbaa !87
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !259

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 761, ptr noundef nonnull @.str.1) #25
  br label %9

9:                                                ; preds = %8, %5, %3
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !249
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17, !prof !260

16:                                               ; preds = %9
  tail call void @_obstack_newchunk(ptr noundef nonnull @block_aux_obstack, i32 noundef 0) #25
  br label %17

17:                                               ; preds = %9, %16
  %18 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %19 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %20 = getelementptr inbounds i8, ptr %19, i64 %18
  store ptr %20, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !252
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %26, !prof !261

23:                                               ; preds = %17
  %24 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 10), align 8
  %25 = or i8 %24, 2
  store i8 %25, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 10), align 8
  br label %26

26:                                               ; preds = %17, %23
  %27 = ptrtoint ptr %21 to i64
  store i64 %27, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %28 = ptrtoint ptr %20 to i64
  %29 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 6), align 8, !tbaa !254
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = xor i32 %29, -1
  %33 = sext i32 %32 to i64
  %34 = and i64 %31, %33
  %35 = inttoptr i64 %34 to ptr
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %36 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 1), align 8, !tbaa !255
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %34, %37
  %39 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !249
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %40, %37
  %42 = icmp sgt i64 %38, %41
  %43 = select i1 %42, ptr %39, ptr %35, !prof !260
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !252
  store ptr %21, ptr @first_block_aux_obj, align 8, !tbaa !87
  %44 = icmp eq i32 %0, 0
  br i1 %44, label %100, label %45, !prof !260

45:                                               ; preds = %26
  %46 = load ptr, ptr @cfun, align 8, !tbaa !87
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !107
  %49 = load ptr, ptr %48, align 8, !tbaa !87
  %50 = icmp eq ptr %49, null
  br i1 %50, label %100, label %51, !prof !262

51:                                               ; preds = %45
  %52 = sext i32 %0 to i64
  br label %53

53:                                               ; preds = %51, %79
  %54 = phi ptr [ %49, %51 ], [ %98, %79 ]
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !245
  %57 = icmp eq ptr %56, null
  %58 = load ptr, ptr @first_block_aux_obj, align 8
  %59 = icmp ne ptr %58, null
  %60 = select i1 %57, i1 %59, i1 false, !prof !246
  br i1 %60, label %62, label %61, !prof !246

61:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 741, ptr noundef nonnull @.str.1) #25
  br label %62

62:                                               ; preds = %61, %53
  store i64 %52, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %63 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !249
  %64 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %65 = ptrtoint ptr %63 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = sub i64 %65, %66
  %68 = icmp slt i64 %67, %52
  br i1 %68, label %69, label %70, !prof !251

69:                                               ; preds = %62
  tail call void @_obstack_newchunk(ptr noundef nonnull @block_aux_obstack, i32 noundef %0) #25
  br label %70

70:                                               ; preds = %69, %62
  %71 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %72 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %73 = getelementptr inbounds i8, ptr %72, i64 %71
  store ptr %73, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %74 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !252
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %76, label %79, !prof !253

76:                                               ; preds = %70
  %77 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 10), align 8
  %78 = or i8 %77, 2
  store i8 %78, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 10), align 8
  br label %79

79:                                               ; preds = %70, %76
  %80 = ptrtoint ptr %74 to i64
  store i64 %80, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %81 = ptrtoint ptr %73 to i64
  %82 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 6), align 8, !tbaa !254
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = xor i32 %82, -1
  %86 = sext i32 %85 to i64
  %87 = and i64 %84, %86
  %88 = inttoptr i64 %87 to ptr
  store ptr %88, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %89 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 1), align 8, !tbaa !255
  %90 = ptrtoint ptr %89 to i64
  %91 = sub i64 %87, %90
  %92 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !249
  %93 = ptrtoint ptr %92 to i64
  %94 = sub i64 %93, %90
  %95 = icmp sgt i64 %91, %94
  %96 = select i1 %95, ptr %92, ptr %88, !prof !253
  store ptr %96, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8
  store ptr %96, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !252
  store ptr %74, ptr %55, align 8, !tbaa !245
  tail call void @llvm.memset.p0.i64(ptr align 1 %74, i8 0, i64 %52, i1 false), !prof !263
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !87
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %53, !prof !264, !llvm.loop !265

100:                                              ; preds = %79, %45, %26
  ret void
}

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #19

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_aux_for_blocks() local_unnamed_addr #14 !prof !266 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !267

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !245
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !prof !268, !llvm.loop !269

12:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_aux_for_blocks() local_unnamed_addr #9 !prof !257 {
  %1 = load ptr, ptr @first_block_aux_obj, align 8, !tbaa !87
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !260

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 790, ptr noundef nonnull @.str.1) #25
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @first_block_aux_obj, align 8, !tbaa !87
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 1), align 8, !tbaa !255
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  store i64 %9, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %18, !prof !270

11:                                               ; preds = %4
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 4), align 8, !tbaa !249
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = icmp slt i64 %9, %14
  br i1 %15, label %16, label %18, !prof !271

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %6, i64 %9
  store ptr %17, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 2), align 8, !tbaa !252
  store ptr %17, ptr getelementptr inbounds (%struct.obstack, ptr @block_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  br label %20

18:                                               ; preds = %11, %4
  %19 = getelementptr inbounds i8, ptr %6, i64 %9
  tail call void @obstack_free(ptr noundef nonnull @block_aux_obstack, ptr noundef %19) #25
  br label %20

20:                                               ; preds = %18, %16
  store ptr null, ptr @first_block_aux_obj, align 8, !tbaa !87
  %21 = load ptr, ptr @cfun, align 8, !tbaa !87
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !107
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26, !prof !262

26:                                               ; preds = %20, %26
  %27 = phi ptr [ %30, %26 ], [ %24, %20 ]
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 2
  store ptr null, ptr %28, align 8, !tbaa !245
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !87
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %26, !prof !264, !llvm.loop !269

32:                                               ; preds = %26, %20
  ret void
}

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @alloc_aux_for_edge(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !86 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !272
  %5 = icmp eq ptr %4, null
  %6 = load ptr, ptr @first_edge_aux_obj, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false, !prof !273
  br i1 %8, label %10, label %9, !prof !273

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 804, ptr noundef nonnull @.str.1) #25
  br label %10

10:                                               ; preds = %2, %9
  %11 = sext i32 %1 to i64
  store i64 %11, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !249
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, %11
  br i1 %17, label %18, label %19, !prof !274

18:                                               ; preds = %10
  tail call void @_obstack_newchunk(ptr noundef nonnull @edge_aux_obstack, i32 noundef %1) #25
  br label %19

19:                                               ; preds = %10, %18
  %20 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %22 = getelementptr inbounds i8, ptr %21, i64 %20
  store ptr %22, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %23 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !252
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %28, !prof !275

25:                                               ; preds = %19
  %26 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 10), align 8
  %27 = or i8 %26, 2
  store i8 %27, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 10), align 8
  br label %28

28:                                               ; preds = %19, %25
  %29 = ptrtoint ptr %23 to i64
  store i64 %29, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %30 = ptrtoint ptr %22 to i64
  %31 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 6), align 8, !tbaa !254
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = xor i32 %31, -1
  %35 = sext i32 %34 to i64
  %36 = and i64 %33, %35
  %37 = inttoptr i64 %36 to ptr
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %38 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 1), align 8, !tbaa !255
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %36, %39
  %41 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !249
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %42, %39
  %44 = icmp sgt i64 %40, %43
  %45 = select i1 %44, ptr %41, ptr %37, !prof !275
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !252
  store ptr %23, ptr %3, align 8, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr align 1 %23, i8 0, i64 %11, i1 false), !prof !276
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @alloc_aux_for_edges(i32 noundef %0) local_unnamed_addr #9 !prof !257 {
  %2 = load i1, ptr @alloc_aux_for_edges.initialized, align 4
  br i1 %2, label %5, label %3, !prof !258

3:                                                ; preds = %1
  %4 = tail call i32 @_obstack_begin(ptr noundef nonnull @edge_aux_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #25
  store i1 true, ptr @alloc_aux_for_edges.initialized, align 4
  br label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr @first_edge_aux_obj, align 8, !tbaa !87
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !259

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 824, ptr noundef nonnull @.str.1) #25
  br label %9

9:                                                ; preds = %8, %5, %3
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !249
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17, !prof !260

16:                                               ; preds = %9
  tail call void @_obstack_newchunk(ptr noundef nonnull @edge_aux_obstack, i32 noundef 0) #25
  br label %17

17:                                               ; preds = %9, %16
  %18 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %19 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %20 = getelementptr inbounds i8, ptr %19, i64 %18
  store ptr %20, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !252
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %26, !prof !261

23:                                               ; preds = %17
  %24 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 10), align 8
  %25 = or i8 %24, 2
  store i8 %25, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 10), align 8
  br label %26

26:                                               ; preds = %17, %23
  %27 = ptrtoint ptr %21 to i64
  store i64 %27, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %28 = ptrtoint ptr %20 to i64
  %29 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 6), align 8, !tbaa !254
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = xor i32 %29, -1
  %33 = sext i32 %32 to i64
  %34 = and i64 %31, %33
  %35 = inttoptr i64 %34 to ptr
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %36 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 1), align 8, !tbaa !255
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %34, %37
  %39 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !249
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %40, %37
  %42 = icmp sgt i64 %38, %41
  %43 = select i1 %42, ptr %39, ptr %35, !prof !260
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !252
  store ptr %21, ptr @first_edge_aux_obj, align 8, !tbaa !87
  %44 = icmp eq i32 %0, 0
  br i1 %44, label %135, label %45, !prof !260

45:                                               ; preds = %26
  %46 = load ptr, ptr @cfun, align 8, !tbaa !87
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !107
  %49 = load ptr, ptr %48, align 8, !tbaa !87
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !115
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %135, label %53, !prof !262

53:                                               ; preds = %45
  %54 = sext i32 %0 to i64
  br label %55

55:                                               ; preds = %53, %126
  %56 = phi ptr [ %49, %53 ], [ %128, %126 ]
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 1
  br label %58

58:                                               ; preds = %124, %55
  %59 = phi i32 [ 0, %55 ], [ %125, %124 ]
  %60 = load ptr, ptr %57, align 8, !tbaa !87
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62, !prof !277

62:                                               ; preds = %58
  %63 = load i32, ptr %60, align 8, !tbaa !121
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i32 [ %63, %62 ], [ 0, %58 ]
  %66 = icmp eq i32 %65, %59
  br i1 %66, label %71, label %67, !prof !278

67:                                               ; preds = %64
  %68 = zext i32 %59 to i64
  %69 = getelementptr inbounds %struct.VEC_edge_base, ptr %60, i64 0, i32 2, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !87
  br label %71

71:                                               ; preds = %64, %67
  %72 = phi ptr [ %70, %67 ], [ null, %64 ]
  br i1 %66, label %126, label %73, !prof !278

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !272
  %76 = icmp eq ptr %75, null
  %77 = load ptr, ptr @first_edge_aux_obj, align 8
  %78 = icmp ne ptr %77, null
  %79 = select i1 %76, i1 %78, i1 false, !prof !273
  br i1 %79, label %81, label %80, !prof !273

80:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 804, ptr noundef nonnull @.str.1) #25
  br label %81

81:                                               ; preds = %80, %73
  store i64 %54, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %82 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !249
  %83 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %84 = ptrtoint ptr %82 to i64
  %85 = ptrtoint ptr %83 to i64
  %86 = sub i64 %84, %85
  %87 = icmp slt i64 %86, %54
  br i1 %87, label %88, label %89, !prof !274

88:                                               ; preds = %81
  tail call void @_obstack_newchunk(ptr noundef nonnull @edge_aux_obstack, i32 noundef %0) #25
  br label %89

89:                                               ; preds = %88, %81
  %90 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %91 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %92 = getelementptr inbounds i8, ptr %91, i64 %90
  store ptr %92, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %93 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !252
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %98, !prof !275

95:                                               ; preds = %89
  %96 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 10), align 8
  %97 = or i8 %96, 2
  store i8 %97, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 10), align 8
  br label %98

98:                                               ; preds = %89, %95
  %99 = ptrtoint ptr %93 to i64
  store i64 %99, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %100 = ptrtoint ptr %92 to i64
  %101 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 6), align 8, !tbaa !254
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = xor i32 %101, -1
  %105 = sext i32 %104 to i64
  %106 = and i64 %103, %105
  %107 = inttoptr i64 %106 to ptr
  store ptr %107, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  %108 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 1), align 8, !tbaa !255
  %109 = ptrtoint ptr %108 to i64
  %110 = sub i64 %106, %109
  %111 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !249
  %112 = ptrtoint ptr %111 to i64
  %113 = sub i64 %112, %109
  %114 = icmp sgt i64 %110, %113
  %115 = select i1 %114, ptr %111, ptr %107, !prof !275
  store ptr %115, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8
  store ptr %115, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !252
  store ptr %93, ptr %74, align 8, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr align 1 %93, i8 0, i64 %54, i1 false), !prof !279
  %116 = load ptr, ptr %57, align 8, !tbaa !87
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118, !prof !275

118:                                              ; preds = %98
  %119 = load i32, ptr %116, align 8, !tbaa !121
  br label %120

120:                                              ; preds = %118, %98
  %121 = phi i32 [ %119, %118 ], [ 0, %98 ]
  %122 = icmp ult i32 %59, %121
  br i1 %122, label %124, label %123, !prof !273

123:                                              ; preds = %120
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %124

124:                                              ; preds = %120, %123
  %125 = add i32 %59, 1
  br label %58, !llvm.loop !280

126:                                              ; preds = %71
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !87
  %129 = load ptr, ptr @cfun, align 8, !tbaa !87
  %130 = getelementptr inbounds %struct.function, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !107
  %132 = getelementptr inbounds %struct.control_flow_graph, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !115
  %134 = icmp eq ptr %128, %133
  br i1 %134, label %135, label %55, !prof !281, !llvm.loop !282

135:                                              ; preds = %126, %45, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clear_aux_for_edges() local_unnamed_addr #9 !prof !283 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %47, label %8, !prof !284

8:                                                ; preds = %0, %38
  %9 = phi ptr [ %40, %38 ], [ %4, %0 ]
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 1
  br label %11

11:                                               ; preds = %36, %8
  %12 = phi i32 [ 0, %8 ], [ %37, %36 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !87
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !285

15:                                               ; preds = %11
  %16 = load i32, ptr %13, align 8, !tbaa !121
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ 0, %11 ]
  %19 = icmp eq i32 %18, %12
  br i1 %19, label %24, label %20, !prof !286

20:                                               ; preds = %17
  %21 = zext i32 %12 to i64
  %22 = getelementptr inbounds %struct.VEC_edge_base, ptr %13, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  br label %24

24:                                               ; preds = %17, %20
  %25 = phi ptr [ %23, %20 ], [ null, %17 ]
  br i1 %19, label %38, label %26, !prof !286

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 3
  store ptr null, ptr %27, align 8, !tbaa !272
  %28 = load ptr, ptr %10, align 8, !tbaa !87
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !287

30:                                               ; preds = %26
  %31 = load i32, ptr %28, align 8, !tbaa !121
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %31, %30 ], [ 0, %26 ]
  %34 = icmp ult i32 %12, %33
  br i1 %34, label %36, label %35, !prof !288

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %36

36:                                               ; preds = %32, %35
  %37 = add i32 %12, 1
  br label %11, !llvm.loop !289

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !87
  %41 = load ptr, ptr @cfun, align 8, !tbaa !87
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !107
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !115
  %46 = icmp eq ptr %40, %45
  br i1 %46, label %47, label %8, !prof !290, !llvm.loop !291

47:                                               ; preds = %38, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_aux_for_edges() local_unnamed_addr #9 !prof !257 {
  %1 = load ptr, ptr @first_edge_aux_obj, align 8, !tbaa !87
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !260

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 864, ptr noundef nonnull @.str.1) #25
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @first_edge_aux_obj, align 8, !tbaa !87
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 1), align 8, !tbaa !255
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  store i64 %9, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 5), align 8, !tbaa !247
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %18, !prof !292

11:                                               ; preds = %4
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 4), align 8, !tbaa !249
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %8
  %15 = icmp slt i64 %9, %14
  br i1 %15, label %16, label %18, !prof !293

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %6, i64 %9
  store ptr %17, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 2), align 8, !tbaa !252
  store ptr %17, ptr getelementptr inbounds (%struct.obstack, ptr @edge_aux_obstack, i64 0, i32 3), align 8, !tbaa !250
  br label %20

18:                                               ; preds = %11, %4
  %19 = getelementptr inbounds i8, ptr %6, i64 %9
  tail call void @obstack_free(ptr noundef nonnull @edge_aux_obstack, ptr noundef %19) #25
  br label %20

20:                                               ; preds = %18, %16
  store ptr null, ptr @first_edge_aux_obj, align 8, !tbaa !87
  %21 = load ptr, ptr @cfun, align 8, !tbaa !87
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !107
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !115
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %67, label %28, !prof !284

28:                                               ; preds = %20, %58
  %29 = phi ptr [ %60, %58 ], [ %24, %20 ]
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  br label %31

31:                                               ; preds = %56, %28
  %32 = phi i32 [ 0, %28 ], [ %57, %56 ]
  %33 = load ptr, ptr %30, align 8, !tbaa !87
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !285

35:                                               ; preds = %31
  %36 = load i32, ptr %33, align 8, !tbaa !121
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %36, %35 ], [ 0, %31 ]
  %39 = icmp eq i32 %38, %32
  br i1 %39, label %44, label %40, !prof !286

40:                                               ; preds = %37
  %41 = zext i32 %32 to i64
  %42 = getelementptr inbounds %struct.VEC_edge_base, ptr %33, i64 0, i32 2, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !87
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi ptr [ %43, %40 ], [ null, %37 ]
  br i1 %39, label %58, label %46, !prof !286

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 3
  store ptr null, ptr %47, align 8, !tbaa !272
  %48 = load ptr, ptr %30, align 8, !tbaa !87
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50, !prof !287

50:                                               ; preds = %46
  %51 = load i32, ptr %48, align 8, !tbaa !121
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %51, %50 ], [ 0, %46 ]
  %54 = icmp ult i32 %32, %53
  br i1 %54, label %56, label %55, !prof !288

55:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %56

56:                                               ; preds = %55, %52
  %57 = add i32 %32, 1
  br label %31, !llvm.loop !289

58:                                               ; preds = %44
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !87
  %61 = load ptr, ptr @cfun, align 8, !tbaa !87
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !107
  %64 = getelementptr inbounds %struct.control_flow_graph, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !115
  %66 = icmp eq ptr %60, %65
  br i1 %66, label %67, label %28, !prof !290, !llvm.loop !291

67:                                               ; preds = %58, %20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_bb(ptr noundef %0) local_unnamed_addr #15 !prof !86 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !87
  tail call void @dump_bb(ptr noundef %0, ptr noundef %2, i32 noundef 0) #25
  ret void
}

declare void @dump_bb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @debug_bb_n(i32 noundef %0) local_unnamed_addr #15 !prof !86 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %6, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = load ptr, ptr @stderr, align 8, !tbaa !87
  tail call void @dump_bb(ptr noundef %9, ptr noundef %10, i32 noundef 0) #25
  ret ptr %9
}

; Function Attrs: cold nounwind uwtable
define dso_local void @brief_dump_cfg(ptr nocapture noundef %0) local_unnamed_addr #15 !prof !86 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %111, label %11

11:                                               ; preds = %1, %101
  %12 = phi ptr [ %104, %101 ], [ %7, %1 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !113
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef %14)
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 13
  br label %17

17:                                               ; preds = %11, %32
  %18 = phi i64 [ 0, %11 ], [ %34, %32 ]
  %19 = phi i8 [ 1, %11 ], [ %33, %32 ]
  %20 = load i32, ptr %16, align 8, !tbaa !207
  %21 = trunc i64 %18 to i32
  %22 = shl nuw nsw i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %17
  %26 = icmp eq i8 %19, 0
  %27 = select i1 %26, ptr @.str.75, ptr @.str.54
  %28 = tail call i64 @fwrite(ptr nonnull %27, i64 2, i64 1, ptr %0)
  %29 = shl i64 %18, 2
  %30 = call ptr @llvm.load.relative.i64(ptr @reltable.brief_dump_cfg, i64 %29)
  %31 = tail call i32 @fputs(ptr noundef %30, ptr noundef %0)
  br label %32

32:                                               ; preds = %25, %17
  %33 = phi i8 [ 0, %25 ], [ %19, %17 ]
  %34 = add nuw nsw i64 %18, 1
  %35 = icmp eq i64 %34, 12
  br i1 %35, label %36, label %17, !llvm.loop !294

36:                                               ; preds = %32
  %37 = icmp eq i8 %33, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = tail call i32 @putc(i32 noundef 41, ptr noundef %0)
  br label %40

40:                                               ; preds = %38, %36
  %41 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  %42 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 14, i64 1, ptr %0)
  %43 = icmp eq ptr %12, null
  br label %44

44:                                               ; preds = %70, %40
  %45 = phi i32 [ 0, %40 ], [ %71, %70 ]
  br i1 %43, label %46, label %47

46:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 687, ptr noundef nonnull @.str.1) #25
  br label %47

47:                                               ; preds = %46, %44
  %48 = load ptr, ptr %12, align 8, !tbaa !87
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %48, align 8, !tbaa !121
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %51, %50 ], [ 0, %47 ]
  %54 = icmp eq i32 %53, %45
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = zext i32 %45 to i64
  %57 = getelementptr inbounds %struct.VEC_edge_base, ptr %48, i64 0, i32 2, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !87
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi ptr [ %58, %55 ], [ null, %52 ]
  br i1 %54, label %72, label %61

61:                                               ; preds = %59
  tail call void @dump_edge_info(ptr noundef %0, ptr noundef %60, i32 noundef 0)
  %62 = load ptr, ptr %12, align 8, !tbaa !87
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %62, align 8, !tbaa !121
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i32 [ %65, %64 ], [ 0, %61 ]
  %68 = icmp ult i32 %45, %67
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %70

70:                                               ; preds = %69, %66
  %71 = add i32 %45, 1
  br label %44, !llvm.loop !295

72:                                               ; preds = %59
  %73 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 13, i64 1, ptr %0)
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 1
  br label %75

75:                                               ; preds = %99, %72
  %76 = phi i32 [ 0, %72 ], [ %100, %99 ]
  %77 = load ptr, ptr %74, align 8, !tbaa !87
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %77, align 8, !tbaa !121
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi i32 [ %80, %79 ], [ 0, %75 ]
  %83 = icmp eq i32 %82, %76
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = zext i32 %76 to i64
  %86 = getelementptr inbounds %struct.VEC_edge_base, ptr %77, i64 0, i32 2, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !87
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi ptr [ %87, %84 ], [ null, %81 ]
  br i1 %83, label %101, label %90

90:                                               ; preds = %88
  tail call void @dump_edge_info(ptr noundef %0, ptr noundef %89, i32 noundef 1)
  %91 = load ptr, ptr %74, align 8, !tbaa !87
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = load i32, ptr %91, align 8, !tbaa !121
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi i32 [ %94, %93 ], [ 0, %90 ]
  %97 = icmp ult i32 %76, %96
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %99

99:                                               ; preds = %98, %95
  %100 = add i32 %76, 1
  br label %75, !llvm.loop !296

101:                                              ; preds = %88
  %102 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 2, i64 1, ptr %0)
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %104 = load ptr, ptr %103, align 8, !tbaa !116
  %105 = load ptr, ptr @cfun, align 8, !tbaa !87
  %106 = getelementptr inbounds %struct.function, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !107
  %108 = getelementptr inbounds %struct.control_flow_graph, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !115
  %110 = icmp eq ptr %104, %109
  br i1 %110, label %111, label %11, !llvm.loop !297

111:                                              ; preds = %101, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @update_bb_profile_for_threading(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #9 !prof !298 {
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %6 = load i64, ptr %5, align 8, !tbaa !182
  %7 = sub nsw i64 %6, %2
  store i64 %7, ptr %5, align 8, !tbaa !182
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %17, !prof !299

9:                                                ; preds = %4
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !87
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !113
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.56, i32 noundef %14)
  br label %16

16:                                               ; preds = %12, %9
  store i64 0, ptr %5, align 8, !tbaa !182
  br label %17

17:                                               ; preds = %16, %4
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %19 = load i32, ptr %18, align 8, !tbaa !213
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21, !prof !300

21:                                               ; preds = %17
  %22 = mul nsw i32 %1, 10000
  %23 = sdiv i32 %22, %19
  br label %24

24:                                               ; preds = %17, %21
  %25 = phi i32 [ %23, %21 ], [ 0, %17 ]
  %26 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 8
  %27 = load i32, ptr %26, align 4, !tbaa !181
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %43, !prof !301

29:                                               ; preds = %24
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !87
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32, !prof !302

32:                                               ; preds = %29
  %33 = load ptr, ptr %3, align 8, !tbaa !155
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !113
  %36 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !157
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !113
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %30, ptr noundef nonnull @.str.57, i32 noundef %35, i32 noundef %39, i32 noundef %27, i32 noundef %25)
  br label %41

41:                                               ; preds = %32, %29
  %42 = load i32, ptr %26, align 4, !tbaa !181
  br label %43

43:                                               ; preds = %41, %24
  %44 = phi i32 [ %42, %41 ], [ %25, %24 ]
  %45 = load i32, ptr %26, align 4, !tbaa !181
  %46 = sub nsw i32 %45, %44
  store i32 %46, ptr %26, align 4, !tbaa !181
  %47 = sub nsw i32 10000, %44
  %48 = load i32, ptr %18, align 8, !tbaa !213
  %49 = sub nsw i32 %48, %1
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0)
  store i32 %50, ptr %18, align 8, !tbaa !213
  %51 = icmp sgt i32 %44, 9999
  br i1 %51, label %52, label %98, !prof !303

52:                                               ; preds = %43
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !87
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55, !prof !304

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !113
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %53, ptr noundef nonnull @.str.58, i32 noundef %57, i32 noundef %50)
  br label %59

59:                                               ; preds = %55, %52
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !87
  %62 = getelementptr inbounds %struct.VEC_edge_base, ptr %61, i64 0, i32 2, i64 0
  %63 = load ptr, ptr %62, align 8, !tbaa !87
  %64 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 8
  store i32 10000, ptr %64, align 4, !tbaa !181
  %65 = icmp eq ptr %61, null
  br i1 %65, label %69, label %66, !prof !305

66:                                               ; preds = %59
  %67 = load i32, ptr %61, align 8, !tbaa !121
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70, !prof !305

69:                                               ; preds = %59, %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %70

70:                                               ; preds = %66, %69
  br label %71

71:                                               ; preds = %70, %96
  %72 = phi i32 [ %97, %96 ], [ 1, %70 ]
  %73 = load ptr, ptr %60, align 8, !tbaa !87
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75, !prof !306

75:                                               ; preds = %71
  %76 = load i32, ptr %73, align 8, !tbaa !121
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi i32 [ %76, %75 ], [ 0, %71 ]
  %79 = icmp eq i32 %78, %72
  br i1 %79, label %84, label %80, !prof !307

80:                                               ; preds = %77
  %81 = zext i32 %72 to i64
  %82 = getelementptr inbounds %struct.VEC_edge_base, ptr %73, i64 0, i32 2, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !87
  br label %84

84:                                               ; preds = %77, %80
  %85 = phi ptr [ %83, %80 ], [ null, %77 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %141, label %87, !prof !307

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 8
  store i32 0, ptr %88, align 4, !tbaa !181
  %89 = icmp eq ptr %73, null
  br i1 %89, label %92, label %90, !prof !305

90:                                               ; preds = %87
  %91 = load i32, ptr %73, align 8, !tbaa !121
  br label %92

92:                                               ; preds = %90, %87
  %93 = phi i32 [ %91, %90 ], [ 0, %87 ]
  %94 = icmp ult i32 %72, %93
  br i1 %94, label %96, label %95, !prof !304

95:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %96

96:                                               ; preds = %92, %95
  %97 = add i32 %72, 1
  br label %71, !llvm.loop !308

98:                                               ; preds = %43
  %99 = icmp eq i32 %44, 0
  br i1 %99, label %141, label %100, !prof !309

100:                                              ; preds = %98
  %101 = lshr i32 %47, 1
  %102 = add nuw nsw i32 %101, 655360000
  %103 = udiv i32 %102, %47
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %105

105:                                              ; preds = %139, %100
  %106 = phi i32 [ 0, %100 ], [ %140, %139 ]
  %107 = load ptr, ptr %104, align 8, !tbaa !87
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109, !prof !310

109:                                              ; preds = %105
  %110 = load i32, ptr %107, align 8, !tbaa !121
  br label %111

111:                                              ; preds = %109, %105
  %112 = phi i32 [ %110, %109 ], [ 0, %105 ]
  %113 = icmp eq i32 %112, %106
  br i1 %113, label %118, label %114, !prof !311

114:                                              ; preds = %111
  %115 = zext i32 %106 to i64
  %116 = getelementptr inbounds %struct.VEC_edge_base, ptr %107, i64 0, i32 2, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !87
  br label %118

118:                                              ; preds = %111, %114
  %119 = phi ptr [ %117, %114 ], [ null, %111 ]
  br i1 %113, label %141, label %120, !prof !311

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.edge_def, ptr %119, i64 0, i32 8
  %122 = load i32, ptr %121, align 4, !tbaa !181
  %123 = icmp sgt i32 %122, %47
  br i1 %123, label %129, label %124, !prof !312

124:                                              ; preds = %120
  %125 = mul nsw i32 %122, %103
  %126 = add nsw i32 %125, 32768
  %127 = sdiv i32 %126, 65536
  %128 = tail call i32 @llvm.smin.i32(i32 %127, i32 10000)
  br label %129

129:                                              ; preds = %120, %124
  %130 = phi i32 [ %128, %124 ], [ 10000, %120 ]
  store i32 %130, ptr %121, align 4
  %131 = load ptr, ptr %104, align 8, !tbaa !87
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133, !prof !313

133:                                              ; preds = %129
  %134 = load i32, ptr %131, align 8, !tbaa !121
  br label %135

135:                                              ; preds = %133, %129
  %136 = phi i32 [ %134, %133 ], [ 0, %129 ]
  %137 = icmp ult i32 %106, %136
  br i1 %137, label %139, label %138, !prof !314

138:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %139

139:                                              ; preds = %135, %138
  %140 = add i32 %106, 1
  br label %105, !llvm.loop !315

141:                                              ; preds = %118, %84, %98
  %142 = load ptr, ptr %3, align 8, !tbaa !155
  %143 = icmp eq ptr %142, %0
  br i1 %143, label %145, label %144, !prof !316

144:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1016, ptr noundef nonnull @.str.1) #25
  br label %145

145:                                              ; preds = %141, %144
  %146 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 9
  %147 = load i64, ptr %146, align 8, !tbaa !183
  %148 = sub nsw i64 %147, %2
  store i64 %148, ptr %146, align 8, !tbaa !183
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %163, !prof !299

150:                                              ; preds = %145
  %151 = load ptr, ptr @dump_file, align 8, !tbaa !87
  %152 = icmp eq ptr %151, null
  br i1 %152, label %162, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr %3, align 8, !tbaa !155
  %155 = getelementptr inbounds %struct.basic_block_def, ptr %154, i64 0, i32 9
  %156 = load i32, ptr %155, align 8, !tbaa !113
  %157 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !157
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %158, i64 0, i32 9
  %160 = load i32, ptr %159, align 8, !tbaa !113
  %161 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %151, ptr noundef nonnull @.str.59, i32 noundef %156, i32 noundef %160)
  br label %162

162:                                              ; preds = %153, %150
  store i64 0, ptr %146, align 8, !tbaa !183
  br label %163

163:                                              ; preds = %162, %145
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @scale_bbs_frequencies_int(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #15 !prof !86 {
  %5 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %6 = icmp sgt i32 %3, 1000
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = icmp sgt i32 %2, 1000000
  br i1 %8, label %76, label %9

9:                                                ; preds = %7
  %10 = mul nsw i32 %5, 1000
  %11 = lshr i32 %3, 1
  %12 = add nuw nsw i32 %10, %11
  %13 = udiv i32 %12, %3
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi i32 [ 1000, %9 ], [ %3, %4 ]
  %16 = phi i32 [ %13, %9 ], [ %5, %4 ]
  %17 = mul nsw i32 %15, 100
  %18 = icmp sle i32 %16, %17
  %19 = icmp sgt i32 %1, 0
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %14
  %22 = sdiv i32 %15, 2
  %23 = sext i32 %16 to i64
  %24 = sext i32 %22 to i64
  %25 = sext i32 %15 to i64
  %26 = zext i32 %1 to i64
  br label %27

27:                                               ; preds = %21, %73
  %28 = phi i64 [ 0, %21 ], [ %74, %73 ]
  %29 = getelementptr inbounds ptr, ptr %0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !87
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 11
  %32 = load i32, ptr %31, align 8, !tbaa !213
  %33 = mul nsw i32 %32, %16
  %34 = add nsw i32 %33, %22
  %35 = sdiv i32 %34, %15
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 10000)
  store i32 %36, ptr %31, align 8
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 8
  %38 = load i64, ptr %37, align 8, !tbaa !182
  %39 = mul nsw i64 %38, %23
  %40 = add nsw i64 %39, %24
  %41 = sdiv i64 %40, %25
  store i64 %41, ptr %37, align 8, !tbaa !182
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 1
  br label %43

43:                                               ; preds = %71, %27
  %44 = phi i32 [ 0, %27 ], [ %72, %71 ]
  %45 = load ptr, ptr %42, align 8, !tbaa !87
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %45, align 8, !tbaa !121
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %48, %47 ], [ 0, %43 ]
  %51 = icmp eq i32 %50, %44
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = zext i32 %44 to i64
  %54 = getelementptr inbounds %struct.VEC_edge_base, ptr %45, i64 0, i32 2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !87
  br label %56

56:                                               ; preds = %49, %52
  %57 = phi ptr [ %55, %52 ], [ null, %49 ]
  br i1 %51, label %73, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 9
  %60 = load i64, ptr %59, align 8, !tbaa !183
  %61 = mul nsw i64 %60, %23
  %62 = add nsw i64 %61, %24
  %63 = sdiv i64 %62, %25
  store i64 %63, ptr %59, align 8, !tbaa !183
  %64 = icmp eq ptr %45, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = load i32, ptr %45, align 8, !tbaa !121
  br label %67

67:                                               ; preds = %65, %58
  %68 = phi i32 [ %66, %65 ], [ 0, %58 ]
  %69 = icmp ult i32 %44, %68
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %71

71:                                               ; preds = %67, %70
  %72 = add i32 %44, 1
  br label %43, !llvm.loop !317

73:                                               ; preds = %56
  %74 = add nuw nsw i64 %28, 1
  %75 = icmp eq i64 %74, %26
  br i1 %75, label %76, label %27, !llvm.loop !318

76:                                               ; preds = %73, %14, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @scale_bbs_frequencies_gcov_type(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #15 !prof !86 {
  %5 = shl nsw i64 %2, 16
  %6 = sdiv i64 %3, 2
  %7 = add nsw i64 %6, %5
  %8 = sdiv i64 %7, %3
  %9 = icmp sgt i64 %8, -1
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1079, ptr noundef nonnull @.str.1) #25
  br label %11

11:                                               ; preds = %4, %10
  %12 = icmp slt i64 %2, -2147483648
  %13 = icmp sgt i32 %1, 0
  br i1 %12, label %17, label %14

14:                                               ; preds = %11
  br i1 %13, label %15, label %131

15:                                               ; preds = %14
  %16 = zext nneg i32 %1 to i64
  br label %81

17:                                               ; preds = %11
  br i1 %13, label %18, label %131

18:                                               ; preds = %17
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %18, %78
  %21 = phi i64 [ 0, %18 ], [ %79, %78 ]
  %22 = getelementptr inbounds ptr, ptr %0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 11
  %25 = load i32, ptr %24, align 8, !tbaa !213
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %26, %2
  %28 = add nsw i64 %27, %6
  %29 = sdiv i64 %28, %3
  %30 = trunc i64 %29 to i32
  store i32 %30, ptr %24, align 8, !tbaa !213
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 8
  %32 = load i64, ptr %31, align 8, !tbaa !182
  %33 = icmp slt i64 %32, -2147483647
  %34 = select i1 %33, i64 %2, i64 %8
  %35 = select i1 %33, i64 %6, i64 32768
  %36 = select i1 %33, i64 %3, i64 65536
  %37 = mul nsw i64 %32, %34
  %38 = add nsw i64 %37, %35
  %39 = sdiv i64 %38, %36
  store i64 %39, ptr %31, align 8, !tbaa !182
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 1
  br label %41

41:                                               ; preds = %76, %20
  %42 = phi i32 [ 0, %20 ], [ %77, %76 ]
  %43 = load ptr, ptr %40, align 8, !tbaa !87
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %43, align 8, !tbaa !121
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %46, %45 ], [ 0, %41 ]
  %49 = icmp eq i32 %48, %42
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = zext i32 %42 to i64
  %52 = getelementptr inbounds %struct.VEC_edge_base, ptr %43, i64 0, i32 2, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !87
  br label %54

54:                                               ; preds = %47, %50
  %55 = phi ptr [ %53, %50 ], [ null, %47 ]
  br i1 %49, label %78, label %56

56:                                               ; preds = %54
  %57 = load ptr, ptr %22, align 8, !tbaa !87
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 8
  %59 = load i64, ptr %58, align 8, !tbaa !182
  %60 = icmp slt i64 %59, -2147483647
  %61 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 9
  %62 = load i64, ptr %61, align 8, !tbaa !183
  %63 = select i1 %60, i64 %2, i64 %8
  %64 = select i1 %60, i64 %6, i64 32768
  %65 = select i1 %60, i64 %3, i64 65536
  %66 = mul nsw i64 %62, %63
  %67 = add nsw i64 %66, %64
  %68 = sdiv i64 %67, %65
  store i64 %68, ptr %61, align 8, !tbaa !183
  %69 = icmp eq ptr %43, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %56
  %71 = load i32, ptr %43, align 8, !tbaa !121
  br label %72

72:                                               ; preds = %70, %56
  %73 = phi i32 [ %71, %70 ], [ 0, %56 ]
  %74 = icmp ult i32 %42, %73
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %76

76:                                               ; preds = %72, %75
  %77 = add i32 %42, 1
  br label %41, !llvm.loop !319

78:                                               ; preds = %54
  %79 = add nuw nsw i64 %21, 1
  %80 = icmp eq i64 %79, %19
  br i1 %80, label %131, label %20, !llvm.loop !320

81:                                               ; preds = %15, %128
  %82 = phi i64 [ 0, %15 ], [ %129, %128 ]
  %83 = getelementptr inbounds ptr, ptr %0, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !87
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 11
  %86 = load i32, ptr %85, align 8, !tbaa !213
  %87 = sext i32 %86 to i64
  %88 = mul nsw i64 %87, %2
  %89 = add nsw i64 %88, %6
  %90 = sdiv i64 %89, %3
  %91 = trunc i64 %90 to i32
  store i32 %91, ptr %85, align 8, !tbaa !213
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 8
  %93 = load i64, ptr %92, align 8, !tbaa !182
  %94 = mul nsw i64 %93, %8
  %95 = add nsw i64 %94, 32768
  %96 = sdiv i64 %95, 65536
  store i64 %96, ptr %92, align 8, !tbaa !182
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 1
  br label %98

98:                                               ; preds = %126, %81
  %99 = phi i32 [ 0, %81 ], [ %127, %126 ]
  %100 = load ptr, ptr %97, align 8, !tbaa !87
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load i32, ptr %100, align 8, !tbaa !121
  br label %104

104:                                              ; preds = %102, %98
  %105 = phi i32 [ %103, %102 ], [ 0, %98 ]
  %106 = icmp eq i32 %105, %99
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = zext i32 %99 to i64
  %109 = getelementptr inbounds %struct.VEC_edge_base, ptr %100, i64 0, i32 2, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !87
  br label %111

111:                                              ; preds = %104, %107
  %112 = phi ptr [ %110, %107 ], [ null, %104 ]
  br i1 %106, label %128, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.edge_def, ptr %112, i64 0, i32 9
  %115 = load i64, ptr %114, align 8, !tbaa !183
  %116 = mul nsw i64 %115, %8
  %117 = add nsw i64 %116, 32768
  %118 = sdiv i64 %117, 65536
  store i64 %118, ptr %114, align 8, !tbaa !183
  %119 = icmp eq ptr %100, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %113
  %121 = load i32, ptr %100, align 8, !tbaa !121
  br label %122

122:                                              ; preds = %120, %113
  %123 = phi i32 [ %121, %120 ], [ 0, %113 ]
  %124 = icmp ult i32 %99, %123
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str.61, i32 noundef 738, ptr noundef nonnull @.str.1) #25
  br label %126

126:                                              ; preds = %122, %125
  %127 = add i32 %99, 1
  br label %98, !llvm.loop !321

128:                                              ; preds = %111
  %129 = add nuw nsw i64 %82, 1
  %130 = icmp eq i64 %129, %16
  br i1 %130, label %131, label %81, !llvm.loop !322

131:                                              ; preds = %128, %78, %14, %17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @initialize_original_copy_tables() local_unnamed_addr #9 !prof !323 {
  %1 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !87
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !324

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1151, ptr noundef nonnull @.str.1) #25
  br label %4

4:                                                ; preds = %0, %3
  %5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.60, i64 noundef 8, i64 noundef 10) #25
  store ptr %5, ptr @original_copy_bb_pool, align 8, !tbaa !87
  %6 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @bb_copy_original_hash, ptr noundef nonnull @bb_copy_original_eq, ptr noundef null) #25
  store ptr %6, ptr @bb_original, align 8, !tbaa !87
  %7 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @bb_copy_original_hash, ptr noundef nonnull @bb_copy_original_eq, ptr noundef null) #25
  store ptr %7, ptr @bb_copy, align 8, !tbaa !87
  %8 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @bb_copy_original_hash, ptr noundef nonnull @bb_copy_original_eq, ptr noundef null) #25
  store ptr %8, ptr @loop_copy, align 8, !tbaa !87
  ret void
}

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @bb_copy_original_hash(ptr nocapture noundef readonly %0) #20 !prof !325 !PGOFuncName !326 {
  %2 = load i32, ptr %0, align 4, !tbaa !327
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @bb_copy_original_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #21 !prof !329 !PGOFuncName !330 {
  %3 = load i32, ptr %0, align 4, !tbaa !327
  %4 = load i32, ptr %1, align 4, !tbaa !327
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @free_original_copy_tables() local_unnamed_addr #9 !prof !323 {
  %1 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !87
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !331

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1166, ptr noundef nonnull @.str.1) #25
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @bb_copy, align 8, !tbaa !87
  tail call void @htab_delete(ptr noundef %5) #25
  %6 = load ptr, ptr @bb_original, align 8, !tbaa !87
  tail call void @htab_delete(ptr noundef %6) #25
  %7 = load ptr, ptr @loop_copy, align 8, !tbaa !87
  tail call void @htab_delete(ptr noundef %7) #25
  %8 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !87
  tail call void @free_alloc_pool(ptr noundef %8) #25
  store ptr null, ptr @bb_copy, align 8, !tbaa !87
  store ptr null, ptr @bb_original, align 8, !tbaa !87
  store ptr null, ptr @loop_copy, align 8, !tbaa !87
  store ptr null, ptr @original_copy_bb_pool, align 8, !tbaa !87
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @set_bb_original(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !332 {
  %3 = alloca %struct.htab_bb_copy_original_entry, align 4
  %4 = load ptr, ptr @bb_original, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !113
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %9 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !87
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11, !prof !333

11:                                               ; preds = %2
  store i32 %6, ptr %3, align 4, !tbaa !327
  %12 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1) #25
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !334

15:                                               ; preds = %11
  %16 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !87
  %17 = call ptr @pool_alloc(ptr noundef %16) #25
  store ptr %17, ptr %12, align 8, !tbaa !87
  store i32 %6, ptr %17, align 4, !tbaa !327
  br label %18

18:                                               ; preds = %15, %11
  %19 = load ptr, ptr %12, align 8, !tbaa !87
  %20 = getelementptr inbounds %struct.htab_bb_copy_original_entry, ptr %19, i64 0, i32 1
  store i32 %8, ptr %20, align 4, !tbaa !335
  br label %21

21:                                               ; preds = %2, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_original_table_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !86 !PGOFuncName !336 {
  %4 = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !87
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7, !prof !333

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 4, !tbaa !327
  %8 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1) #25
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14, !prof !334

11:                                               ; preds = %7
  %12 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !87
  %13 = call ptr @pool_alloc(ptr noundef %12) #25
  store ptr %13, ptr %8, align 8, !tbaa !87
  store i32 %1, ptr %13, align 4, !tbaa !327
  br label %14

14:                                               ; preds = %11, %7
  %15 = load ptr, ptr %8, align 8, !tbaa !87
  %16 = getelementptr inbounds %struct.htab_bb_copy_original_entry, ptr %15, i64 0, i32 1
  store i32 %2, ptr %16, align 4, !tbaa !335
  br label %17

17:                                               ; preds = %3, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_bb_original(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !86 {
  %2 = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1237, ptr noundef nonnull @.str.1) #25
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !113
  store i32 %8, ptr %2, align 4, !tbaa !327
  %9 = load ptr, ptr @bb_original, align 8, !tbaa !87
  %10 = call ptr @htab_find(ptr noundef %9, ptr noundef nonnull %2) #25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @cfun, align 8, !tbaa !87
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !142
  %18 = getelementptr inbounds %struct.htab_bb_copy_original_entry, ptr %10, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !335
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %17, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !87
  br label %23

23:                                               ; preds = %6, %12
  %24 = phi ptr [ %22, %12 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %24
}

declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @set_bb_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !332 {
  %3 = alloca %struct.htab_bb_copy_original_entry, align 4
  %4 = load ptr, ptr @bb_copy, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !113
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %9 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !87
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11, !prof !333

11:                                               ; preds = %2
  store i32 %6, ptr %3, align 4, !tbaa !327
  %12 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1) #25
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !334

15:                                               ; preds = %11
  %16 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !87
  %17 = call ptr @pool_alloc(ptr noundef %16) #25
  store ptr %17, ptr %12, align 8, !tbaa !87
  store i32 %6, ptr %17, align 4, !tbaa !327
  br label %18

18:                                               ; preds = %15, %11
  %19 = load ptr, ptr %12, align 8, !tbaa !87
  %20 = getelementptr inbounds %struct.htab_bb_copy_original_entry, ptr %19, i64 0, i32 1
  store i32 %8, ptr %20, align 4, !tbaa !335
  br label %21

21:                                               ; preds = %2, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_bb_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !86 {
  %2 = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1262, ptr noundef nonnull @.str.1) #25
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !113
  store i32 %8, ptr %2, align 4, !tbaa !327
  %9 = load ptr, ptr @bb_copy, align 8, !tbaa !87
  %10 = call ptr @htab_find(ptr noundef %9, ptr noundef nonnull %2) #25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @cfun, align 8, !tbaa !87
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !142
  %18 = getelementptr inbounds %struct.htab_bb_copy_original_entry, ptr %10, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !335
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %17, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !87
  br label %23

23:                                               ; preds = %6, %12
  %24 = phi ptr [ %22, %12 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %24
}

; Function Attrs: cold nounwind uwtable
define dso_local void @set_loop_copy(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #15 !prof !86 {
  %3 = alloca %struct.htab_bb_copy_original_entry, align 4
  %4 = icmp eq ptr %1, null
  %5 = load ptr, ptr @loop_copy, align 8, !tbaa !87
  %6 = load i32, ptr %0, align 8, !tbaa !337
  br i1 %4, label %7, label %17

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %8 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  store i32 %6, ptr %3, align 4, !tbaa !327
  %11 = call ptr @htab_find_slot(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 0) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !tbaa !87
  call void @htab_clear_slot(ptr noundef %5, ptr noundef nonnull %11) #25
  %15 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !87
  call void @pool_free(ptr noundef %15, ptr noundef %14) #25
  br label %16

16:                                               ; preds = %7, %10, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  br label %19

17:                                               ; preds = %2
  %18 = load i32, ptr %1, align 8, !tbaa !337
  tail call fastcc void @copy_original_table_set(ptr noundef %5, i32 noundef %6, i32 noundef %18)
  br label %19

19:                                               ; preds = %17, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_loop_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !341 {
  %2 = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @original_copy_bb_pool, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !342

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1292, ptr noundef nonnull @.str.1) #25
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i32, ptr %0, align 8, !tbaa !337
  store i32 %7, ptr %2, align 4, !tbaa !327
  %8 = load ptr, ptr @loop_copy, align 8, !tbaa !87
  %9 = call ptr @htab_find(ptr noundef %8, ptr noundef nonnull %2) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11, !prof !343

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.htab_bb_copy_original_entry, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !335
  %14 = load ptr, ptr @cfun, align 8, !tbaa !87
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !344
  %17 = getelementptr inbounds %struct.loops, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !345
  %19 = zext i32 %13 to i64
  %20 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %18, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  br label %22

22:                                               ; preds = %6, %11
  %23 = phi ptr [ %21, %11 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %23
}

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

declare void @df_mark_solutions_dirty() local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #24

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!85}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!35 = !{ptr @init_flow, ptr @ggc_alloc_cleared_stat, i64 123}
!36 = !{ptr @clear_edges, ptr @ggc_free, i64 19}
!37 = !{ptr @alloc_block, ptr @ggc_alloc_cleared_stat, i64 575834}
!38 = !{ptr @compact_blocks, ptr @df_compact_blocks, i64 629}
!39 = !{ptr @unchecked_make_edge, ptr @ggc_alloc_cleared_stat, i64 189541}
!40 = !{ptr @unchecked_make_edge, ptr @vec_gc_p_reserve, i64 180384}
!41 = !{ptr @unchecked_make_edge, ptr @df_mark_solutions_dirty, i64 379082}
!42 = !{ptr @unchecked_make_edge, ptr @execute_on_growing_pred, i64 189541}
!43 = !{ptr @cached_make_edge, ptr @find_edge, i64 158563}
!44 = !{ptr @cached_make_edge, ptr @unchecked_make_edge, i64 37228}
!45 = !{ptr @make_edge, ptr @find_edge, i64 647807}
!46 = !{ptr @make_edge, ptr @ggc_alloc_cleared_stat, i64 641425}
!47 = !{ptr @make_edge, ptr @vec_gc_p_reserve, i64 610437}
!48 = !{ptr @make_edge, ptr @df_mark_solutions_dirty, i64 1282850}
!49 = !{ptr @make_edge, ptr @execute_on_growing_pred, i64 641425}
!50 = !{ptr @make_single_succ_edge, ptr @find_edge, i64 81355}
!51 = !{ptr @make_single_succ_edge, ptr @unchecked_make_edge, i64 81355}
!52 = !{ptr @remove_edge_raw, ptr @remove_predictions_associated_with_edge, i64 493114}
!53 = !{ptr @remove_edge_raw, ptr @execute_on_shrinking_pred, i64 493114}
!54 = !{ptr @remove_edge_raw, ptr @df_mark_solutions_dirty, i64 493114}
!55 = !{ptr @remove_edge_raw, ptr @redirect_edge_var_map_clear, i64 493114}
!56 = !{ptr @remove_edge_raw, ptr @ggc_free, i64 493114}
!57 = !{ptr @redirect_edge_succ, ptr @execute_on_shrinking_pred, i64 63576}
!58 = !{ptr @redirect_edge_succ, ptr @df_mark_solutions_dirty, i64 127152}
!59 = !{ptr @redirect_edge_succ, ptr @vec_gc_p_reserve, i64 21881}
!60 = !{ptr @redirect_edge_succ, ptr @execute_on_growing_pred, i64 63576}
!61 = !{ptr @redirect_edge_succ_nodup, ptr @find_edge, i64 836059}
!62 = !{ptr @redirect_edge_succ_nodup, ptr @remove_edge, i64 668}
!63 = !{ptr @redirect_edge_succ_nodup, ptr @redirect_edge_var_map_dup, i64 668}
!64 = !{ptr @redirect_edge_succ_nodup, ptr @execute_on_shrinking_pred, i64 835391}
!65 = !{ptr @redirect_edge_succ_nodup, ptr @df_mark_solutions_dirty, i64 1670782}
!66 = !{ptr @redirect_edge_succ_nodup, ptr @vec_gc_p_reserve, i64 287512}
!67 = !{ptr @redirect_edge_succ_nodup, ptr @execute_on_growing_pred, i64 835391}
!68 = !{ptr @redirect_edge_pred, ptr @vec_gc_p_reserve, i64 69074}
!69 = !{ptr @redirect_edge_pred, ptr @df_mark_solutions_dirty, i64 69074}
!70 = !{ptr @alloc_aux_for_blocks, ptr @_obstack_begin, i64 1}
!71 = !{ptr @alloc_aux_for_blocks, ptr @_obstack_newchunk, i64 2298}
!72 = !{ptr @free_aux_for_blocks, ptr @obstack_free, i64 40}
!73 = !{ptr @alloc_aux_for_edges, ptr @_obstack_begin, i64 1}
!74 = !{ptr @alloc_aux_for_edges, ptr @_obstack_newchunk, i64 4612}
!75 = !{ptr @free_aux_for_edges, ptr @obstack_free, i64 46}
!76 = !{ptr @initialize_original_copy_tables, ptr @create_alloc_pool, i64 249}
!77 = !{ptr @initialize_original_copy_tables, ptr @htab_create, i64 747}
!78 = !{ptr @free_original_copy_tables, ptr @htab_delete, i64 747}
!79 = !{ptr @free_original_copy_tables, ptr @free_alloc_pool, i64 249}
!80 = !{ptr @set_bb_original, ptr @htab_find_slot, i64 39719}
!81 = !{ptr @set_bb_original, ptr @pool_alloc, i64 39684}
!82 = !{ptr @set_bb_copy, ptr @htab_find_slot, i64 39719}
!83 = !{ptr @set_bb_copy, ptr @pool_alloc, i64 39684}
!84 = !{ptr @get_loop_copy, ptr @htab_find, i64 39461}
!85 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!86 = !{!"function_entry_count", i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"any pointer", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !{!92, !88, i64 8}
!92 = !{!"_IO_FILE", !93, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !88, i64 104, !93, i64 112, !93, i64 116, !94, i64 120, !95, i64 128, !89, i64 130, !89, i64 131, !88, i64 136, !94, i64 144, !88, i64 152, !88, i64 160, !88, i64 168, !88, i64 176, !94, i64 184, !93, i64 192, !89, i64 196}
!93 = !{!"int", !89, i64 0}
!94 = !{!"long", !89, i64 0}
!95 = !{!"short", !89, i64 0}
!96 = !{!92, !88, i64 16}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{!89, !89, i64 0}
!99 = !{!92, !88, i64 40}
!100 = !{!92, !88, i64 48}
!101 = !{!92, !93, i64 0}
!102 = !{!93, !93, i64 0}
!103 = distinct !{!103, !104, !105}
!104 = !{!"llvm.loop.mustprogress"}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = !{!"function_entry_count", i64 41}
!107 = !{!108, !88, i64 8}
!108 = !{!"function", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !93, i64 104, !93, i64 108, !93, i64 112, !93, i64 116, !93, i64 120, !93, i64 124, !88, i64 128, !93, i64 136, !93, i64 137, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139}
!109 = !{!"branch_weights", i32 41, i32 0}
!110 = !{!111, !93, i64 28}
!111 = !{!"control_flow_graph", !88, i64 0, !88, i64 8, !88, i64 16, !93, i64 24, !93, i64 28, !93, i64 32, !88, i64 40, !93, i64 48, !89, i64 52, !89, i64 60, !93, i64 68, !93, i64 72}
!112 = !{!111, !88, i64 0}
!113 = !{!114, !93, i64 80}
!114 = !{!"basic_block_def", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !89, i64 32, !88, i64 48, !88, i64 56, !89, i64 64, !94, i64 72, !93, i64 80, !93, i64 84, !93, i64 88, !93, i64 92, !93, i64 96}
!115 = !{!111, !88, i64 8}
!116 = !{!114, !88, i64 56}
!117 = !{!114, !88, i64 48}
!118 = !{!"function_entry_count", i64 3}
!119 = !{!"branch_weights", i32 1, i32 191}
!120 = !{!"branch_weights", i32 1, i32 27}
!121 = !{!122, !93, i64 0}
!122 = !{!"VEC_edge_base", !93, i64 0, !93, i64 4, !89, i64 8}
!123 = !{!"branch_weights", i32 12, i32 16}
!124 = !{!"branch_weights", i32 0, i32 16}
!125 = !{!"branch_weights", i32 16, i32 0}
!126 = distinct !{!126, !104, !105}
!127 = !{!"branch_weights", i32 1, i32 11}
!128 = !{!114, !88, i64 0}
!129 = !{!"branch_weights", i32 0, i32 12}
!130 = !{!"branch_weights", i32 191, i32 577}
!131 = distinct !{!131, !104, !105}
!132 = !{!"branch_weights", i32 0, i32 6}
!133 = !{!"branch_weights", i32 3, i32 3}
!134 = !{!"branch_weights", i32 0, i32 3}
!135 = !{!"branch_weights", i32 3, i32 0}
!136 = distinct !{!136, !104, !105}
!137 = !{!114, !88, i64 8}
!138 = !{!"function_entry_count", i64 575834}
!139 = !{!"function_entry_count", i64 576698}
!140 = !{!"function_entry_count", i64 864}
!141 = !{!"function_entry_count", i64 1611}
!142 = !{!111, !88, i64 16}
!143 = !{!"branch_weights", i32 982, i32 629}
!144 = !{!"branch_weights", i32 1, i32 981}
!145 = !{!"branch_weights", i32 981, i32 4670370}
!146 = distinct !{!146, !104, !105}
!147 = !{!111, !93, i64 24}
!148 = !{!"branch_weights", i32 982, i32 0}
!149 = !{!111, !93, i64 32}
!150 = !{!"branch_weights", i32 981, i32 1}
!151 = !{!"branch_weights", i32 288225, i32 981}
!152 = distinct !{!152, !104, !105}
!153 = !{!"function_entry_count", i64 388799}
!154 = !{!"function_entry_count", i64 189541}
!155 = !{!156, !88, i64 0}
!156 = !{!"edge_def", !88, i64 0, !88, i64 8, !89, i64 16, !88, i64 24, !88, i64 32, !93, i64 40, !93, i64 44, !93, i64 48, !93, i64 52, !94, i64 56}
!157 = !{!156, !88, i64 8}
!158 = !{!156, !93, i64 48}
!159 = !{!"branch_weights", i32 506800, i32 324166}
!160 = !{!122, !93, i64 4}
!161 = !{!"branch_weights", i32 174, i32 323992}
!162 = !{!"branch_weights", i32 276264, i32 554702}
!163 = !{!"branch_weights", i32 7583, i32 547119}
!164 = !{!"branch_weights", i32 0, i32 830966}
!165 = !{!156, !93, i64 44}
!166 = !{!"function_entry_count", i64 449739}
!167 = !{!"branch_weights", i32 2533, i32 447206}
!168 = !{!"branch_weights", i32 0, i32 447206}
!169 = !{!"branch_weights", i32 46, i32 447160}
!170 = !{!"branch_weights", i32 1626, i32 953}
!171 = !{!94, !94, i64 0}
!172 = !{!"branch_weights", i32 35602, i32 411558}
!173 = !{!174, !88, i64 0}
!174 = !{!"simple_bitmap_def", !88, i64 0, !93, i64 8, !93, i64 12, !89, i64 16}
!175 = !{!"branch_weights", i32 35602, i32 0}
!176 = !{!"branch_weights", i32 255574, i32 155984}
!177 = !{!"function_entry_count", i64 647807}
!178 = !{!"branch_weights", i32 641425, i32 6382}
!179 = !{!"function_entry_count", i64 81355}
!180 = !{!"branch_weights", i32 81355, i32 0}
!181 = !{!156, !93, i64 52}
!182 = !{!114, !94, i64 72}
!183 = !{!156, !94, i64 56}
!184 = !{!"function_entry_count", i64 493114}
!185 = !{!"branch_weights", i32 0, i32 504996}
!186 = !{!"branch_weights", i32 493114, i32 11882}
!187 = !{!"branch_weights", i32 0, i32 11882}
!188 = !{!"branch_weights", i32 11882, i32 0}
!189 = distinct !{!189, !104, !105}
!190 = !{!"branch_weights", i32 0, i32 493114}
!191 = !{!"branch_weights", i32 390259, i32 102855}
!192 = !{!"function_entry_count", i64 63576}
!193 = !{!"branch_weights", i32 0, i32 898967}
!194 = !{!"branch_weights", i32 480642, i32 418325}
!195 = !{!"branch_weights", i32 299588, i32 599379}
!196 = !{!"branch_weights", i32 9805, i32 589574}
!197 = !{!"function_entry_count", i64 836059}
!198 = !{!"branch_weights", i32 835391, i32 668}
!199 = !{!"function_entry_count", i64 69074}
!200 = !{!"branch_weights", i32 0, i32 73842}
!201 = !{!"branch_weights", i32 69074, i32 4768}
!202 = !{!"branch_weights", i32 0, i32 4768}
!203 = !{!"branch_weights", i32 4768, i32 0}
!204 = !{!"branch_weights", i32 69074, i32 0}
!205 = !{!"function_entry_count", i64 143}
!206 = !{!"branch_weights", i32 1, i32 142}
!207 = !{!114, !93, i64 96}
!208 = !{!"branch_weights", i32 142, i32 680464}
!209 = distinct !{!209, !104, !105}
!210 = !{!111, !93, i64 48}
!211 = distinct !{!211, !104, !105}
!212 = distinct !{!212, !104, !105}
!213 = !{!114, !93, i64 88}
!214 = distinct !{!214, !104, !105}
!215 = distinct !{!215, !104, !105}
!216 = !{!217, !88, i64 0}
!217 = !{!"bitmap_head_def", !88, i64 0, !88, i64 8, !93, i64 16, !88, i64 24}
!218 = !{!219, !93, i64 16}
!219 = !{!"bitmap_element_def", !88, i64 0, !88, i64 8, !93, i64 16, !89, i64 24}
!220 = distinct !{!220, !104, !105}
!221 = distinct !{!221, !104, !105}
!222 = !{!219, !88, i64 0}
!223 = distinct !{!223, !105}
!224 = distinct !{!224, !104, !105}
!225 = !{!114, !93, i64 84}
!226 = distinct !{!226, !104, !105}
!227 = distinct !{!227, !104, !105}
!228 = distinct !{!228, !104, !105}
!229 = !{!230, !93, i64 4}
!230 = !{!"regstat_n_sets_and_refs_t", !93, i64 0, !93, i64 4}
!231 = !{!232, !88, i64 224}
!232 = !{!"df", !89, i64 0, !89, i64 64, !88, i64 128, !233, i64 136, !233, i64 176, !88, i64 216, !88, i64 224, !88, i64 232, !93, i64 240, !93, i64 244, !88, i64 248, !93, i64 256, !93, i64 260, !88, i64 264, !88, i64 272, !88, i64 280, !88, i64 288, !88, i64 296, !88, i64 304, !88, i64 312, !88, i64 320, !88, i64 328, !88, i64 336, !93, i64 344, !93, i64 348, !88, i64 352, !93, i64 360, !93, i64 364, !89, i64 365, !89, i64 366}
!233 = !{!"df_ref_info", !88, i64 0, !88, i64 8, !88, i64 16, !93, i64 24, !93, i64 28, !93, i64 32, !93, i64 36}
!234 = !{!235, !93, i64 8}
!235 = !{!"df_reg_info", !88, i64 0, !93, i64 8}
!236 = !{!232, !88, i64 216}
!237 = !{!238, !93, i64 8}
!238 = !{!"reg_info_t", !93, i64 0, !93, i64 4, !93, i64 8, !93, i64 12, !93, i64 16, !93, i64 20, !93, i64 24}
!239 = !{!238, !93, i64 24}
!240 = !{!238, !93, i64 4}
!241 = !{!238, !93, i64 12}
!242 = !{!238, !93, i64 16}
!243 = distinct !{!243, !104, !105}
!244 = distinct !{!244, !104, !105}
!245 = !{!114, !88, i64 16}
!246 = !{!"branch_weights", i32 293386, i32 0}
!247 = !{!248, !94, i64 40}
!248 = !{!"obstack", !94, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !94, i64 40, !93, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !93, i64 80, !93, i64 80, !93, i64 80}
!249 = !{!248, !88, i64 32}
!250 = !{!248, !88, i64 24}
!251 = !{!"branch_weights", i32 2298, i32 291088}
!252 = !{!248, !88, i64 16}
!253 = !{!"branch_weights", i32 0, i32 293386}
!254 = !{!248, !93, i64 48}
!255 = !{!248, !88, i64 8}
!256 = !{!"VP", i32 1, i64 0, i64 32, i64 0}
!257 = !{!"function_entry_count", i64 78}
!258 = !{!"branch_weights", i32 77, i32 1}
!259 = !{!"branch_weights", i32 77, i32 0}
!260 = !{!"branch_weights", i32 0, i32 78}
!261 = !{!"branch_weights", i32 78, i32 0}
!262 = !{!"branch_weights", i32 1, i32 155}
!263 = !{!"VP", i32 1, i64 293386, i64 32, i64 293386}
!264 = !{!"branch_weights", i32 155, i32 586617}
!265 = distinct !{!265, !104, !105}
!266 = !{!"function_entry_count", i64 269}
!267 = !{!"branch_weights", i32 1, i32 268}
!268 = !{!"branch_weights", i32 268, i32 491063}
!269 = distinct !{!269, !104, !105}
!270 = !{!"branch_weights", i32 38, i32 40}
!271 = !{!"branch_weights", i32 38, i32 0}
!272 = !{!156, !88, i64 24}
!273 = !{!"branch_weights", i32 585702, i32 0}
!274 = !{!"branch_weights", i32 4612, i32 581090}
!275 = !{!"branch_weights", i32 0, i32 585702}
!276 = !{!"VP", i32 1, i64 0, i64 17, i64 0}
!277 = !{!"branch_weights", i32 0, i32 879010}
!278 = !{!"branch_weights", i32 293308, i32 585702}
!279 = !{!"VP", i32 1, i64 585702, i64 17, i64 585702}
!280 = distinct !{!280, !104, !105}
!281 = !{!"branch_weights", i32 155, i32 586461}
!282 = distinct !{!282, !104, !105}
!283 = !{!"function_entry_count", i64 186}
!284 = !{!"branch_weights", i32 1, i32 263}
!285 = !{!"branch_weights", i32 0, i32 970251}
!286 = !{!"branch_weights", i32 327553, i32 642698}
!287 = !{!"branch_weights", i32 0, i32 642698}
!288 = !{!"branch_weights", i32 642698, i32 0}
!289 = distinct !{!289, !104, !105}
!290 = !{!"branch_weights", i32 263, i32 327290}
!291 = distinct !{!291, !104, !105}
!292 = !{!"branch_weights", i32 32, i32 46}
!293 = !{!"branch_weights", i32 32, i32 0}
!294 = distinct !{!294, !104, !105}
!295 = distinct !{!295, !104, !105}
!296 = distinct !{!296, !104, !105}
!297 = distinct !{!297, !104, !105}
!298 = !{!"function_entry_count", i64 53661}
!299 = !{!"branch_weights", i32 0, i32 53661}
!300 = !{!"branch_weights", i32 4373, i32 49288}
!301 = !{!"branch_weights", i32 18088, i32 35573}
!302 = !{!"branch_weights", i32 18088, i32 0}
!303 = !{!"branch_weights", i32 1504, i32 52157}
!304 = !{!"branch_weights", i32 1504, i32 0}
!305 = !{!"branch_weights", i32 0, i32 1504}
!306 = !{!"branch_weights", i32 0, i32 3008}
!307 = !{!"branch_weights", i32 1504, i32 1504}
!308 = distinct !{!308, !104, !105}
!309 = !{!"branch_weights", i32 16543, i32 35614}
!310 = !{!"branch_weights", i32 0, i32 106842}
!311 = !{!"branch_weights", i32 35614, i32 71228}
!312 = !{!"branch_weights", i32 15, i32 71213}
!313 = !{!"branch_weights", i32 0, i32 71228}
!314 = !{!"branch_weights", i32 71228, i32 0}
!315 = distinct !{!315, !104, !105}
!316 = !{!"branch_weights", i32 53661, i32 0}
!317 = distinct !{!317, !104, !105}
!318 = distinct !{!318, !104, !105}
!319 = distinct !{!319, !104, !105}
!320 = distinct !{!320, !104, !105}
!321 = distinct !{!321, !104, !105}
!322 = distinct !{!322, !104, !105}
!323 = !{!"function_entry_count", i64 249}
!324 = !{!"branch_weights", i32 249, i32 0}
!325 = !{!"function_entry_count", i64 238721}
!326 = !{!"cfg.c;bb_copy_original_hash"}
!327 = !{!328, !93, i64 0}
!328 = !{!"htab_bb_copy_original_entry", !93, i64 0, !93, i64 4}
!329 = !{!"function_entry_count", i64 48974}
!330 = !{!"cfg.c;bb_copy_original_eq"}
!331 = !{!"branch_weights", i32 0, i32 249}
!332 = !{!"function_entry_count", i64 39719}
!333 = !{!"branch_weights", i32 0, i32 79438}
!334 = !{!"branch_weights", i32 79368, i32 70}
!335 = !{!328, !93, i64 4}
!336 = !{!"cfg.c;copy_original_table_set"}
!337 = !{!338, !93, i64 0}
!338 = !{!"loop", !93, i64 0, !93, i64 4, !88, i64 8, !88, i64 16, !339, i64 24, !93, i64 32, !93, i64 36, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !340, i64 80, !340, i64 96, !89, i64 112, !89, i64 113, !93, i64 116, !88, i64 120, !88, i64 128, !89, i64 136, !88, i64 144}
!339 = !{!"lpt_decision", !93, i64 0, !93, i64 4}
!340 = !{!"", !94, i64 0, !94, i64 8}
!341 = !{!"function_entry_count", i64 39461}
!342 = !{!"branch_weights", i32 0, i32 39461}
!343 = !{!"branch_weights", i32 39461, i32 0}
!344 = !{!108, !88, i64 32}
!345 = !{!346, !88, i64 8}
!346 = !{!"loops", !93, i64 0, !88, i64 8, !88, i64 16, !88, i64 24}
