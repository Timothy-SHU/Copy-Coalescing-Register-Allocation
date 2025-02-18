; ModuleID = 'ira-build.c'
source_filename = "ira-build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.loops = type { i32, ptr, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.ira_allocno = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i64, i64, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.ira_loop_tree_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, i8, [27 x i32], ptr, ptr, ptr, ptr }
%struct.VEC_ira_allocno_t_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.ira_allocno_live_range = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.ira_allocno_copy = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_ira_copy_t_base = type { i32, i32, [1 x ptr] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.sparseset_def = type { ptr, ptr, i32, i32, i32, i8, i8, [2 x i32] }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_ira_loop_tree_node_t_base = type { i32, i32, [1 x ptr] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@allocno_pool = internal unnamed_addr global ptr null, align 8
@ira_regno_allocno_map = dso_local local_unnamed_addr global ptr null, align 8
@ira_allocnos_num = dso_local local_unnamed_addr global i32 0, align 4
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@allocno_vec = internal unnamed_addr global ptr null, align 8
@ira_allocnos = dso_local local_unnamed_addr global ptr null, align 8
@ira_conflict_id_allocno_map_vec = internal unnamed_addr global ptr null, align 8
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
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@df = external local_unnamed_addr global ptr, align 8
@children_vec = internal unnamed_addr global ptr null, align 8
@removed_loop_vec = internal unnamed_addr global ptr null, align 8
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #30
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #30
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #30
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #30
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #30
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #30
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #30
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
  %5 = tail call ptr @__ctype_tolower_loc() #30
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
  %5 = tail call ptr @__ctype_toupper_loc() #30
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #30
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @ira_create_allocno(i32 noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #9 !prof !106 {
  %4 = load ptr, ptr @allocno_pool, align 8, !tbaa !87
  %5 = tail call ptr @pool_alloc(ptr noundef %4) #30
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 1
  store i32 %0, ptr %6, align 4, !tbaa !107
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 6
  store ptr %2, ptr %7, align 8, !tbaa !109
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %9, label %21, !prof !110

9:                                                ; preds = %3
  %10 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  %11 = sext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !111
  store ptr %5, ptr %12, align 8, !tbaa !87
  %15 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %2, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = getelementptr inbounds ptr, ptr %16, i64 %11
  %18 = load ptr, ptr %17, align 8, !tbaa !87
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !110

20:                                               ; preds = %9
  store ptr %5, ptr %17, align 8, !tbaa !87
  br label %21

21:                                               ; preds = %9, %20, %3
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %23 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  store i32 %23, ptr %5, align 8, !tbaa !114
  %24 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %2, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !115
  %26 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %25, i32 noundef %23) #30
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 23
  store ptr null, ptr %27, align 8, !tbaa !116
  %28 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 28
  store i32 0, ptr %28, align 8, !tbaa !117
  %29 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !118
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 26
  store i64 %29, ptr %30, align 8, !tbaa !119
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 27
  store i64 %29, ptr %31, align 8, !tbaa !120
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 7
  store i32 0, ptr %32, align 8, !tbaa !121
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 8
  store i32 0, ptr %33, align 4, !tbaa !122
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 3
  store i32 -1, ptr %34, align 4, !tbaa !123
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 29
  store i32 0, ptr %35, align 4, !tbaa !124
  %36 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 30
  store i32 0, ptr %36, align 8, !tbaa !125
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 31
  %38 = load i16, ptr %37, align 4
  %39 = and i16 %38, -49
  store i16 %39, ptr %37, align 4
  %40 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 32
  store ptr null, ptr %40, align 8, !tbaa !126
  %41 = and i16 %38, -4096
  store i16 %41, ptr %37, align 4
  %42 = icmp slt i32 %0, 0
  br i1 %42, label %51, label %43, !prof !127

43:                                               ; preds = %21
  %44 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !87
  %45 = zext nneg i32 %0 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !87
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  br label %51

51:                                               ; preds = %21, %43
  %52 = phi i32 [ %50, %43 ], [ 0, %21 ]
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 2
  store i32 %52, ptr %53, align 8, !tbaa !128
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 15
  store ptr null, ptr %54, align 8, !tbaa !129
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 33
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %55, i8 0, i64 32, i1 false)
  store i32 -1, ptr %56, align 8, !tbaa !130
  %57 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 9
  %58 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 39
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  store ptr %5, ptr %59, align 8, !tbaa !131
  %60 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 19
  store ptr %5, ptr %60, align 8, !tbaa !132
  %61 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 20
  store ptr null, ptr %61, align 8, !tbaa !133
  %62 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 21
  store i32 2147483647, ptr %62, align 8, !tbaa !134
  %63 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 22
  store i32 -1, ptr %63, align 4, !tbaa !135
  %64 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 24
  store i32 %64, ptr %65, align 8, !tbaa !136
  %66 = load ptr, ptr @allocno_vec, align 8, !tbaa !87
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68, !prof !127

68:                                               ; preds = %51
  %69 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %66, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !137
  %71 = load i32, ptr %66, align 8, !tbaa !139
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75, !prof !127

73:                                               ; preds = %51, %68
  %74 = tail call ptr @vec_heap_p_reserve(ptr noundef %66, i32 noundef 1) #30
  store ptr %74, ptr @allocno_vec, align 8, !tbaa !87
  br label %75

75:                                               ; preds = %68, %73
  %76 = load ptr, ptr @allocno_vec, align 8
  %77 = load i32, ptr %76, align 8, !tbaa !139
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 8, !tbaa !139
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %76, i64 0, i32 2, i64 %79
  store ptr %5, ptr %80, align 8, !tbaa !87
  %81 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %76, i64 0, i32 2
  store ptr %81, ptr @ira_allocnos, align 8, !tbaa !87
  store i32 %78, ptr @ira_allocnos_num, align 4, !tbaa !102
  %82 = load ptr, ptr @ira_conflict_id_allocno_map_vec, align 8, !tbaa !87
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84, !prof !127

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %82, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !137
  %87 = load i32, ptr %82, align 8, !tbaa !139
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91, !prof !127

89:                                               ; preds = %75, %84
  %90 = tail call ptr @vec_heap_p_reserve(ptr noundef %82, i32 noundef 1) #30
  store ptr %90, ptr @ira_conflict_id_allocno_map_vec, align 8, !tbaa !87
  br label %91

91:                                               ; preds = %84, %89
  %92 = load ptr, ptr @ira_conflict_id_allocno_map_vec, align 8
  %93 = load i32, ptr %92, align 8, !tbaa !139
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 8, !tbaa !139
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %92, i64 0, i32 2, i64 %95
  store ptr %5, ptr %96, align 8, !tbaa !87
  %97 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %92, i64 0, i32 2
  store ptr %97, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !87
  ret ptr %5
}

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_set_allocno_cover_class(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !140 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  store i32 %1, ptr %3, align 8, !tbaa !141
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !118
  %7 = xor i64 %6, -1
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 26
  %9 = load i64, ptr %8, align 8, !tbaa !119
  %10 = or i64 %9, %7
  store i64 %10, ptr %8, align 8, !tbaa !119
  %11 = load i64, ptr %5, align 8, !tbaa !118
  %12 = xor i64 %11, -1
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 27
  %14 = load i64, ptr %13, align 8, !tbaa !120
  %15 = or i64 %14, %12
  store i64 %15, ptr %13, align 8, !tbaa !120
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ira_conflict_vector_profitable_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 !prof !140 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 4, !tbaa !135
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %6 = load i32, ptr %5, align 8, !tbaa !134
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %20, label %8, !prof !127

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

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @ira_allocate_allocno_conflict_vec(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !142 {
  %3 = shl i32 %1, 3
  %4 = add i32 %3, 8
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #30
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  store ptr %6, ptr %7, align 8, !tbaa !116
  store ptr null, ptr %6, align 8, !tbaa !87
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  store i32 0, ptr %8, align 8, !tbaa !117
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  store i32 %4, ptr %9, align 4, !tbaa !143
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %11 = load i16, ptr %10, align 4
  %12 = or i16 %11, 2048
  store i16 %12, ptr %10, align 4
  ret void
}

declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_allocate_allocno_conflicts(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !86 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 4, !tbaa !135
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %6 = load i32, ptr %5, align 8, !tbaa !134
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %30, label %8

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
  br i1 %18, label %19, label %30

19:                                               ; preds = %8
  %20 = shl i32 %1, 3
  %21 = add i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = tail call ptr @ira_allocate(i64 noundef %22) #30
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  store ptr %23, ptr %24, align 8, !tbaa !116
  store ptr null, ptr %23, align 8, !tbaa !87
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  store i32 0, ptr %25, align 8, !tbaa !117
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  store i32 %21, ptr %26, align 4, !tbaa !143
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %28 = load i16, ptr %27, align 4
  %29 = or i16 %28, 2048
  store i16 %29, ptr %27, align 4
  br label %42

30:                                               ; preds = %2, %8
  %31 = add i32 %4, 64
  %32 = sub i32 %31, %6
  %33 = sdiv i32 %32, 64
  %34 = shl nsw i32 %33, 3
  %35 = zext i32 %34 to i64
  %36 = tail call ptr @ira_allocate(i64 noundef %35) #30
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  store ptr %36, ptr %37, align 8, !tbaa !116
  tail call void @llvm.memset.p0.i64(ptr align 1 %36, i8 0, i64 %35, i1 false)
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  store i32 %34, ptr %38, align 4, !tbaa !143
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %40 = load i16, ptr %39, align 4
  %41 = and i16 %40, -2049
  store i16 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %30, %19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_add_allocno_conflict(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !86 {
  tail call fastcc void @add_to_allocno_conflicts(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @add_to_allocno_conflicts(ptr noundef %1, ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_to_allocno_conflicts(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #12 !prof !86 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 2048
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  %9 = load i32, ptr %8, align 8, !tbaa !117
  %10 = add nsw i32 %9, 2
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  %12 = load i32, ptr %11, align 4, !tbaa !143
  %13 = zext i32 %12 to i64
  %14 = sext i32 %10 to i64
  %15 = shl nsw i64 %14, 3
  %16 = icmp ugt i64 %15, %13
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  br label %33

20:                                               ; preds = %7
  %21 = mul nsw i32 %10, 3
  %22 = sdiv i32 %21, 2
  %23 = shl i32 %22, 3
  %24 = add i32 %23, 8
  %25 = zext i32 %24 to i64
  %26 = tail call ptr @ira_allocate(i64 noundef %25) #30
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %28 = load ptr, ptr %27, align 8, !tbaa !116
  %29 = load i32, ptr %8, align 8, !tbaa !117
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %26, ptr align 1 %28, i64 %31, i1 false)
  %32 = load ptr, ptr %27, align 8, !tbaa !116
  tail call void @ira_free(ptr noundef %32) #30
  store ptr %26, ptr %27, align 8, !tbaa !116
  store i32 %24, ptr %11, align 4, !tbaa !143
  br label %33

33:                                               ; preds = %20, %17
  %34 = phi ptr [ %19, %17 ], [ %26, %20 ]
  %35 = sext i32 %9 to i64
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  store ptr %1, ptr %36, align 8, !tbaa !87
  %37 = add nsw i32 %9, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %34, i64 %38
  store ptr null, ptr %39, align 8, !tbaa !87
  %40 = load i32, ptr %8, align 8, !tbaa !117
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %8, align 8, !tbaa !117
  br label %136

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 24
  %44 = load i32, ptr %43, align 8, !tbaa !136
  %45 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %46 = load ptr, ptr %45, align 8, !tbaa !116
  %47 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %48 = load i32, ptr %47, align 8, !tbaa !134
  %49 = icmp sgt i32 %48, %44
  br i1 %49, label %50, label %94

50:                                               ; preds = %42
  %51 = xor i32 %44, -1
  %52 = add i32 %48, %51
  %53 = sdiv i32 %52, 64
  %54 = add nsw i32 %53, 1
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %56 = load i32, ptr %55, align 4, !tbaa !135
  %57 = sub nsw i32 %56, %48
  %58 = sdiv i32 %57, 64
  %59 = add nsw i32 %58, 1
  %60 = add nsw i32 %59, %54
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 3
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  %65 = load i32, ptr %64, align 4, !tbaa !143
  %66 = icmp ult i32 %65, %63
  br i1 %66, label %73, label %67

67:                                               ; preds = %50
  %68 = sext i32 %54 to i64
  %69 = shl nsw i64 %68, 3
  %70 = getelementptr inbounds i8, ptr %46, i64 %69
  %71 = sext i32 %59 to i64
  %72 = shl nsw i64 %71, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %70, ptr align 8 %46, i64 %72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %46, i8 0, i64 %69, i1 false)
  br label %89

73:                                               ; preds = %50
  %74 = mul nsw i32 %60, 3
  %75 = sdiv i32 %74, 2
  %76 = shl nsw i32 %75, 3
  %77 = add i32 %76, 8
  %78 = zext i32 %77 to i64
  %79 = tail call ptr @ira_allocate(i64 noundef %78) #30
  %80 = sext i32 %54 to i64
  %81 = shl nsw i64 %80, 3
  %82 = getelementptr inbounds i8, ptr %79, i64 %81
  %83 = load ptr, ptr %45, align 8, !tbaa !116
  %84 = sext i32 %59 to i64
  %85 = shl nsw i64 %84, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %82, ptr align 1 %83, i64 %85, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 8 %79, i8 0, i64 %81, i1 false)
  %86 = getelementptr inbounds i8, ptr %79, i64 %62
  %87 = sub nsw i64 %78, %62
  tail call void @llvm.memset.p0.i64(ptr align 1 %86, i8 0, i64 %87, i1 false)
  %88 = load ptr, ptr %45, align 8, !tbaa !116
  tail call void @ira_free(ptr noundef %88) #30
  store ptr %79, ptr %45, align 8, !tbaa !116
  store i32 %77, ptr %64, align 4, !tbaa !143
  br label %89

89:                                               ; preds = %73, %67
  %90 = phi ptr [ %46, %67 ], [ %79, %73 ]
  %91 = shl nsw i32 %54, 6
  %92 = load i32, ptr %47, align 8, !tbaa !134
  %93 = sub nsw i32 %92, %91
  store i32 %93, ptr %47, align 8, !tbaa !134
  br label %124

94:                                               ; preds = %42
  %95 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %96 = load i32, ptr %95, align 4, !tbaa !135
  %97 = icmp slt i32 %96, %44
  br i1 %97, label %98, label %124

98:                                               ; preds = %94
  %99 = sub nsw i32 %44, %48
  %100 = sdiv i32 %99, 64
  %101 = add nsw i32 %100, 1
  %102 = shl nsw i32 %101, 3
  %103 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  %104 = load i32, ptr %103, align 4, !tbaa !143
  %105 = icmp ult i32 %104, %102
  br i1 %105, label %106, label %122

106:                                              ; preds = %98
  %107 = mul nsw i32 %101, 3
  %108 = sdiv i32 %107, 2
  %109 = shl nsw i32 %108, 3
  %110 = add i32 %109, 8
  %111 = zext i32 %110 to i64
  %112 = tail call ptr @ira_allocate(i64 noundef %111) #30
  %113 = load ptr, ptr %45, align 8, !tbaa !116
  %114 = load i32, ptr %103, align 4, !tbaa !143
  %115 = zext i32 %114 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %112, ptr align 1 %113, i64 %115, i1 false)
  %116 = load i32, ptr %103, align 4, !tbaa !143
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %112, i64 %117
  %119 = sub i32 %110, %116
  %120 = zext i32 %119 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %118, i8 0, i64 %120, i1 false)
  %121 = load ptr, ptr %45, align 8, !tbaa !116
  tail call void @ira_free(ptr noundef %121) #30
  store ptr %112, ptr %45, align 8, !tbaa !116
  store i32 %110, ptr %103, align 4, !tbaa !143
  br label %122

122:                                              ; preds = %106, %98
  %123 = phi ptr [ %112, %106 ], [ %46, %98 ]
  store i32 %44, ptr %95, align 4, !tbaa !135
  br label %124

124:                                              ; preds = %94, %122, %89
  %125 = phi ptr [ %90, %89 ], [ %123, %122 ], [ %46, %94 ]
  %126 = load i32, ptr %47, align 8, !tbaa !134
  %127 = sub nsw i32 %44, %126
  %128 = and i32 %127, 63
  %129 = zext nneg i32 %128 to i64
  %130 = shl nuw i64 1, %129
  %131 = lshr i32 %127, 6
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds i64, ptr %125, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !118
  %135 = or i64 %130, %134
  store i64 %135, ptr %133, align 8, !tbaa !118
  br label %136

136:                                              ; preds = %124, %33
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @ira_print_expanded_allocno(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !86 {
  %2 = load ptr, ptr @ira_dump_file, align 8, !tbaa !87
  %3 = load i32, ptr %0, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !107
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %5)
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = load ptr, ptr %8, align 8, !tbaa !144
  %10 = icmp eq ptr %9, null
  %11 = load ptr, ptr @ira_dump_file, align 8, !tbaa !87
  br i1 %10, label %14, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  br label %17

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !145
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %16, %14 ], [ %13, %12 ]
  %19 = phi ptr [ @.str.2, %14 ], [ @.str.1, %12 ]
  %20 = load i32, ptr %18, align 8, !tbaa !102
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull %19, i32 noundef %20)
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !146
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr @ira_dump_file, align 8, !tbaa !87
  %27 = tail call i32 @fputc(i32 58, ptr %26)
  %28 = load ptr, ptr %22, align 8, !tbaa !146
  tail call void @ira_print_expanded_allocno(ptr noundef %28)
  br label %29

29:                                               ; preds = %25, %17
  %30 = load ptr, ptr @ira_dump_file, align 8, !tbaa !87
  %31 = tail call i32 @fputc(i32 41, ptr %30)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @ira_create_allocno_live_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !147 {
  %5 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !87
  %6 = tail call ptr @pool_alloc(ptr noundef %5) #30
  store ptr %0, ptr %6, align 8, !tbaa !148
  %7 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %6, i64 0, i32 1
  store i32 %1, ptr %7, align 8, !tbaa !150
  %8 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %6, i64 0, i32 2
  store i32 %2, ptr %8, align 4, !tbaa !151
  %9 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %6, i64 0, i32 3
  store ptr %3, ptr %9, align 8, !tbaa !152
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ira_copy_allocno_live_range_list(ptr noundef readonly %0) local_unnamed_addr #14 !prof !153 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !154

3:                                                ; preds = %1, %12
  %4 = phi ptr [ %8, %12 ], [ null, %1 ]
  %5 = phi ptr [ %13, %12 ], [ null, %1 ]
  %6 = phi ptr [ %15, %12 ], [ %0, %1 ]
  %7 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !87
  %8 = tail call ptr @pool_alloc(ptr noundef %7) #30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !155
  %9 = icmp eq ptr %5, null
  br i1 %9, label %12, label %10, !prof !156

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %4, i64 0, i32 3
  store ptr %8, ptr %11, align 8, !tbaa !152
  br label %12

12:                                               ; preds = %3, %10
  %13 = phi ptr [ %5, %10 ], [ %8, %3 ]
  %14 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %6, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !152
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %3, !prof !156, !llvm.loop !157

17:                                               ; preds = %12, %1
  %18 = phi ptr [ null, %1 ], [ %13, %12 ]
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ira_merge_allocno_live_ranges(ptr noundef %0, ptr noundef %1) local_unnamed_addr #14 !prof !153 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %74, label %4, !prof !158

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %74, label %6, !prof !159

6:                                                ; preds = %4, %57
  %7 = phi ptr [ %61, %57 ], [ null, %4 ]
  %8 = phi ptr [ %60, %57 ], [ null, %4 ]
  %9 = phi ptr [ %59, %57 ], [ %1, %4 ]
  %10 = phi ptr [ %58, %57 ], [ %0, %4 ]
  %11 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !150
  %13 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %9, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !150
  %15 = icmp slt i32 %12, %14
  %16 = select i1 %15, ptr %9, ptr %10, !prof !160
  %17 = select i1 %15, ptr %10, ptr %9, !prof !160
  %18 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %16, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !150
  %20 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !151
  %22 = add nsw i32 %21, 1
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %39, label %24, !prof !161

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !150
  store i32 %26, ptr %18, align 8, !tbaa !150
  %27 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %16, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !151
  %29 = icmp slt i32 %28, %21
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 %21, ptr %27, align 4, !tbaa !151
  br label %31

31:                                               ; preds = %30, %24
  %32 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !152
  %34 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %34, ptr noundef nonnull %17) #30
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %16, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !152
  br label %51

39:                                               ; preds = %6
  %40 = icmp eq ptr %8, null
  br i1 %40, label %43, label %41, !prof !162

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %7, i64 0, i32 3
  store ptr %16, ptr %42, align 8, !tbaa !152
  br label %43

43:                                               ; preds = %39, %41
  %44 = phi ptr [ %8, %41 ], [ %16, %39 ]
  %45 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %16, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !152
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %57, !prof !163

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %17, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !152
  br label %51

51:                                               ; preds = %36, %48
  %52 = phi ptr [ %49, %48 ], [ %37, %36 ]
  %53 = phi ptr [ %50, %48 ], [ %16, %36 ]
  %54 = phi ptr [ %17, %48 ], [ %38, %36 ]
  %55 = phi ptr [ %44, %48 ], [ %8, %36 ]
  %56 = phi ptr [ %16, %48 ], [ %7, %36 ]
  store ptr null, ptr %52, align 8, !tbaa !152
  br label %57

57:                                               ; preds = %51, %43, %31
  %58 = phi ptr [ %16, %31 ], [ %46, %43 ], [ %53, %51 ]
  %59 = phi ptr [ %33, %31 ], [ %17, %43 ], [ %54, %51 ]
  %60 = phi ptr [ %8, %31 ], [ %44, %43 ], [ %55, %51 ]
  %61 = phi ptr [ %7, %31 ], [ %16, %43 ], [ %56, %51 ]
  %62 = icmp ne ptr %58, null
  %63 = icmp ne ptr %59, null
  %64 = select i1 %62, i1 %63, i1 false, !prof !164
  br i1 %64, label %6, label %65, !prof !165, !llvm.loop !166

65:                                               ; preds = %57
  br i1 %62, label %66, label %68, !prof !159

66:                                               ; preds = %65
  %67 = icmp eq ptr %60, null
  br i1 %67, label %74, label %71

68:                                               ; preds = %65
  br i1 %63, label %69, label %74, !prof !167

69:                                               ; preds = %68
  %70 = icmp eq ptr %60, null
  br i1 %70, label %74, label %71, !prof !159

71:                                               ; preds = %69, %66
  %72 = phi ptr [ %58, %66 ], [ %59, %69 ]
  %73 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %61, i64 0, i32 3
  store ptr %72, ptr %73, align 8, !tbaa !152
  br label %74

74:                                               ; preds = %71, %68, %66, %69, %4, %2
  %75 = phi ptr [ %1, %2 ], [ %0, %4 ], [ %60, %68 ], [ %58, %66 ], [ %59, %69 ], [ %60, %71 ]
  ret ptr %75
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_finish_allocno_live_range(ptr noundef %0) local_unnamed_addr #12 !prof !86 {
  %2 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %2, ptr noundef %0) #30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ira_allocno_live_ranges_intersect_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #15 !prof !168 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %32, !prof !169

6:                                                ; preds = %2, %26
  %7 = phi ptr [ %28, %26 ], [ %1, %2 ]
  %8 = phi ptr [ %27, %26 ], [ %0, %2 ]
  %9 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !150
  %11 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %7, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !151
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17, !prof !170

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %8, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !152
  br label %26

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %7, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !150
  %20 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %8, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !151
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %32, !prof !171

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %7, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !152
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi ptr [ %16, %14 ], [ %8, %23 ]
  %28 = phi ptr [ %7, %14 ], [ %25, %23 ]
  %29 = icmp ne ptr %27, null
  %30 = icmp ne ptr %28, null
  %31 = select i1 %29, i1 %30, i1 false, !prof !172
  br i1 %31, label %6, label %32, !prof !173, !llvm.loop !174

32:                                               ; preds = %17, %26, %2
  %33 = phi i8 [ 0, %2 ], [ 1, %17 ], [ 0, %26 ]
  ret i8 %33
}

declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @ira_finish_allocno_live_range_list(ptr noundef %0) local_unnamed_addr #9 !prof !140 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !175

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !152
  %7 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %7, ptr noundef nonnull %4) #30
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %3, !prof !156, !llvm.loop !176

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @ira_free_allocno_updated_costs(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !177 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !141
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 34
  %5 = load ptr, ptr %4, align 8, !tbaa !178
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !179

7:                                                ; preds = %1
  %8 = zext i32 %3 to i64
  %9 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %10, ptr noundef nonnull %5) #30
  br label %11

11:                                               ; preds = %7, %1
  store ptr null, ptr %4, align 8, !tbaa !178
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 36
  %13 = load ptr, ptr %12, align 8, !tbaa !180
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !181

15:                                               ; preds = %11
  %16 = zext i32 %3 to i64
  %17 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %18, ptr noundef nonnull %13) #30
  br label %19

19:                                               ; preds = %15, %11
  store ptr null, ptr %12, align 8, !tbaa !180
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_free_cost_vector(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !86 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %5, ptr noundef %0) #30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ira_create_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #14 !prof !86 {
  %7 = load ptr, ptr @copy_pool, align 8, !tbaa !87
  %8 = tail call ptr @pool_alloc(ptr noundef %7) #30
  %9 = load i32, ptr @ira_copies_num, align 4, !tbaa !102
  store i32 %9, ptr %8, align 8, !tbaa !182
  %10 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 1
  store ptr %0, ptr %10, align 8, !tbaa !184
  %11 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 2
  store ptr %1, ptr %11, align 8, !tbaa !185
  %12 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 3
  store i32 %2, ptr %12, align 8, !tbaa !186
  %13 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 4
  store i8 %3, ptr %13, align 4, !tbaa !187
  %14 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 5
  store ptr %4, ptr %14, align 8, !tbaa !188
  %15 = getelementptr inbounds %struct.ira_allocno_copy, ptr %8, i64 0, i32 10
  store ptr %5, ptr %15, align 8, !tbaa !189
  %16 = load ptr, ptr @copy_vec, align 8, !tbaa !87
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18, !prof !190

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.VEC_ira_copy_t_base, ptr %16, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !191
  %21 = load i32, ptr %16, align 8, !tbaa !193
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25, !prof !190

23:                                               ; preds = %6, %18
  %24 = tail call ptr @vec_heap_p_reserve(ptr noundef %16, i32 noundef 1) #30
  store ptr %24, ptr @copy_vec, align 8, !tbaa !87
  br label %25

25:                                               ; preds = %18, %23
  %26 = load ptr, ptr @copy_vec, align 8
  %27 = load i32, ptr %26, align 8, !tbaa !193
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !193
  %29 = zext i32 %27 to i64
  %30 = getelementptr inbounds %struct.VEC_ira_copy_t_base, ptr %26, i64 0, i32 2, i64 %29
  store ptr %8, ptr %30, align 8, !tbaa !87
  %31 = getelementptr inbounds %struct.VEC_ira_copy_t_base, ptr %26, i64 0, i32 2
  store ptr %31, ptr @ira_copies, align 8, !tbaa !87
  store i32 %28, ptr @ira_copies_num, align 4, !tbaa !102
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_add_allocno_copy_to_list(ptr noundef %0) local_unnamed_addr #16 !prof !86 {
  %2 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !185
  %6 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 6
  store ptr null, ptr %6, align 8, !tbaa !194
  %7 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 8
  store ptr null, ptr %7, align 8, !tbaa !195
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 7
  store ptr %9, ptr %10, align 8, !tbaa !196
  %11 = icmp eq ptr %9, null
  br i1 %11, label %19, label %12, !prof !197

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !184
  %15 = icmp eq ptr %14, %3
  %16 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 6
  %17 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 8
  %18 = select i1 %15, ptr %16, ptr %17, !prof !198
  store ptr %0, ptr %18, align 8, !tbaa !87
  br label %19

19:                                               ; preds = %12, %1
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  %22 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 9
  store ptr %21, ptr %22, align 8, !tbaa !199
  %23 = icmp eq ptr %21, null
  br i1 %23, label %34, label %24, !prof !200

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ira_allocno_copy, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !185
  %27 = icmp eq ptr %26, %5
  br i1 %27, label %28, label %30, !prof !201

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ira_allocno_copy, ptr %21, i64 0, i32 8
  br label %32

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ira_allocno_copy, ptr %21, i64 0, i32 6
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %29, %28 ], [ %31, %30 ]
  store ptr %0, ptr %33, align 8, !tbaa !87
  br label %34

34:                                               ; preds = %32, %19
  store ptr %0, ptr %8, align 8, !tbaa !129
  store ptr %0, ptr %20, align 8, !tbaa !129
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_remove_allocno_copy_from_list(ptr nocapture noundef %0) local_unnamed_addr #17 !prof !86 {
  %2 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !185
  %6 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !194
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 15
  br label %21

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !184
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
  store ptr %7, ptr %22, align 8, !tbaa !87
  %23 = icmp eq ptr %7, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ira_allocno_copy, ptr %7, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !184
  %27 = icmp eq ptr %26, %3
  %28 = getelementptr inbounds %struct.ira_allocno_copy, ptr %7, i64 0, i32 6
  %29 = getelementptr inbounds %struct.ira_allocno_copy, ptr %7, i64 0, i32 8
  %30 = select i1 %27, ptr %28, ptr %29
  store ptr %9, ptr %30, align 8, !tbaa !87
  br label %31

31:                                               ; preds = %24, %21
  %32 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %33 = load ptr, ptr %32, align 8, !tbaa !199
  %34 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !195
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 15
  br label %47

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.ira_allocno_copy, ptr %35, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !185
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
  store ptr %33, ptr %48, align 8, !tbaa !87
  %49 = icmp eq ptr %33, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ira_allocno_copy, ptr %33, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !185
  %53 = icmp eq ptr %52, %5
  %54 = getelementptr inbounds %struct.ira_allocno_copy, ptr %33, i64 0, i32 8
  %55 = getelementptr inbounds %struct.ira_allocno_copy, ptr %33, i64 0, i32 6
  %56 = select i1 %53, ptr %54, ptr %55
  store ptr %35, ptr %56, align 8, !tbaa !87
  br label %57

57:                                               ; preds = %50, %47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ira_swap_allocno_copy_ends_if_necessary(ptr nocapture noundef %0) local_unnamed_addr #18 !prof !86 {
  %2 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = load i32, ptr %3, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !185
  %7 = load i32, ptr %6, align 8, !tbaa !114
  %8 = icmp sgt i32 %4, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  store ptr %6, ptr %2, align 8, !tbaa !184
  store ptr %3, ptr %5, align 8, !tbaa !185
  %10 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !194
  %12 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !195
  store ptr %13, ptr %10, align 8, !tbaa !194
  store ptr %11, ptr %12, align 8, !tbaa !195
  %14 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = getelementptr inbounds %struct.ira_allocno_copy, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !199
  store ptr %17, ptr %14, align 8, !tbaa !196
  store ptr %15, ptr %16, align 8, !tbaa !199
  br label %18

18:                                               ; preds = %1, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ira_add_allocno_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #14 !prof !202 {
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10, !prof !203

10:                                               ; preds = %6, %42
  %11 = phi ptr [ %32, %42 ], [ undef, %6 ]
  %12 = phi ptr [ %31, %42 ], [ undef, %6 ]
  %13 = phi ptr [ %31, %42 ], [ %8, %6 ]
  %14 = getelementptr inbounds %struct.ira_allocno_copy, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !184
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %22, !prof !204

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ira_allocno_copy, ptr %13, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !196
  %20 = getelementptr inbounds %struct.ira_allocno_copy, ptr %13, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !185
  br label %30

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.ira_allocno_copy, ptr %13, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !185
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %29, !prof !205

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ira_allocno_copy, ptr %13, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !199
  br label %30

29:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1062, ptr noundef nonnull @.str.12) #30
  br label %30

30:                                               ; preds = %29, %26, %17
  %31 = phi ptr [ %19, %17 ], [ %28, %26 ], [ %12, %29 ]
  %32 = phi ptr [ %21, %17 ], [ %15, %26 ], [ %11, %29 ]
  %33 = icmp eq ptr %32, %1
  br i1 %33, label %34, label %42, !prof !206

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ira_allocno_copy, ptr %13, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !188
  %37 = icmp eq ptr %36, %4
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ira_allocno_copy, ptr %13, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !189
  %41 = icmp eq ptr %40, %5
  br i1 %41, label %44, label %42

42:                                               ; preds = %38, %34, %30
  %43 = icmp eq ptr %31, null
  br i1 %43, label %44, label %10, !prof !207, !llvm.loop !208

44:                                               ; preds = %38, %42, %6
  %45 = phi ptr [ null, %6 ], [ %13, %38 ], [ null, %42 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47, !prof !209

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ira_allocno_copy, ptr %45, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !186
  %50 = add nsw i32 %49, %2
  store i32 %50, ptr %48, align 8, !tbaa !186
  br label %114

51:                                               ; preds = %44
  %52 = load ptr, ptr @copy_pool, align 8, !tbaa !87
  %53 = tail call ptr @pool_alloc(ptr noundef %52) #30
  %54 = load i32, ptr @ira_copies_num, align 4, !tbaa !102
  store i32 %54, ptr %53, align 8, !tbaa !182
  %55 = getelementptr inbounds %struct.ira_allocno_copy, ptr %53, i64 0, i32 1
  store ptr %0, ptr %55, align 8, !tbaa !184
  %56 = getelementptr inbounds %struct.ira_allocno_copy, ptr %53, i64 0, i32 2
  store ptr %1, ptr %56, align 8, !tbaa !185
  %57 = getelementptr inbounds %struct.ira_allocno_copy, ptr %53, i64 0, i32 3
  store i32 %2, ptr %57, align 8, !tbaa !186
  %58 = getelementptr inbounds %struct.ira_allocno_copy, ptr %53, i64 0, i32 4
  store i8 %3, ptr %58, align 4, !tbaa !187
  %59 = getelementptr inbounds %struct.ira_allocno_copy, ptr %53, i64 0, i32 5
  store ptr %4, ptr %59, align 8, !tbaa !188
  %60 = getelementptr inbounds %struct.ira_allocno_copy, ptr %53, i64 0, i32 10
  store ptr %5, ptr %60, align 8, !tbaa !189
  %61 = load ptr, ptr @copy_vec, align 8, !tbaa !87
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63, !prof !190

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.VEC_ira_copy_t_base, ptr %61, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !191
  %66 = load i32, ptr %61, align 8, !tbaa !193
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70, !prof !190

68:                                               ; preds = %63, %51
  %69 = tail call ptr @vec_heap_p_reserve(ptr noundef %61, i32 noundef 1) #30
  store ptr %69, ptr @copy_vec, align 8, !tbaa !87
  br label %70

70:                                               ; preds = %63, %68
  %71 = load ptr, ptr @copy_vec, align 8
  %72 = load i32, ptr %71, align 8, !tbaa !193
  %73 = add i32 %72, 1
  store i32 %73, ptr %71, align 8, !tbaa !193
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds %struct.VEC_ira_copy_t_base, ptr %71, i64 0, i32 2, i64 %74
  store ptr %53, ptr %75, align 8, !tbaa !87
  %76 = getelementptr inbounds %struct.VEC_ira_copy_t_base, ptr %71, i64 0, i32 2
  store ptr %76, ptr @ira_copies, align 8, !tbaa !87
  store i32 %73, ptr @ira_copies_num, align 4, !tbaa !102
  %77 = load ptr, ptr %55, align 8, !tbaa !184
  %78 = load ptr, ptr %56, align 8, !tbaa !185
  %79 = getelementptr inbounds %struct.ira_allocno_copy, ptr %53, i64 0, i32 6
  store ptr null, ptr %79, align 8, !tbaa !194
  %80 = getelementptr inbounds %struct.ira_allocno_copy, ptr %53, i64 0, i32 8
  store ptr null, ptr %80, align 8, !tbaa !195
  %81 = getelementptr inbounds %struct.ira_allocno, ptr %77, i64 0, i32 15
  %82 = load ptr, ptr %81, align 8, !tbaa !129
  %83 = getelementptr inbounds %struct.ira_allocno_copy, ptr %53, i64 0, i32 7
  store ptr %82, ptr %83, align 8, !tbaa !196
  %84 = icmp eq ptr %82, null
  br i1 %84, label %92, label %85, !prof !197

85:                                               ; preds = %70
  %86 = getelementptr inbounds %struct.ira_allocno_copy, ptr %82, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !184
  %88 = icmp eq ptr %87, %77
  %89 = getelementptr inbounds %struct.ira_allocno_copy, ptr %82, i64 0, i32 8
  %90 = getelementptr inbounds %struct.ira_allocno_copy, ptr %82, i64 0, i32 6
  %91 = select i1 %88, ptr %90, ptr %89, !prof !198
  store ptr %53, ptr %91, align 8, !tbaa !87
  br label %92

92:                                               ; preds = %85, %70
  %93 = getelementptr inbounds %struct.ira_allocno, ptr %78, i64 0, i32 15
  %94 = load ptr, ptr %93, align 8, !tbaa !129
  %95 = getelementptr inbounds %struct.ira_allocno_copy, ptr %53, i64 0, i32 9
  store ptr %94, ptr %95, align 8, !tbaa !199
  %96 = icmp eq ptr %94, null
  br i1 %96, label %107, label %97, !prof !200

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.ira_allocno_copy, ptr %94, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !185
  %100 = icmp eq ptr %99, %78
  br i1 %100, label %101, label %103, !prof !201

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.ira_allocno_copy, ptr %94, i64 0, i32 8
  br label %105

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.ira_allocno_copy, ptr %94, i64 0, i32 6
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi ptr [ %102, %101 ], [ %104, %103 ]
  store ptr %53, ptr %106, align 8, !tbaa !87
  br label %107

107:                                              ; preds = %105, %92
  store ptr %53, ptr %81, align 8, !tbaa !129
  store ptr %53, ptr %93, align 8, !tbaa !129
  %108 = load i32, ptr %77, align 8, !tbaa !114
  %109 = load i32, ptr %78, align 8, !tbaa !114
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %114, !prof !210

111:                                              ; preds = %107
  store ptr %78, ptr %55, align 8, !tbaa !184
  store ptr %77, ptr %56, align 8, !tbaa !185
  %112 = load ptr, ptr %79, align 8, !tbaa !194
  %113 = load ptr, ptr %80, align 8, !tbaa !195
  store ptr %113, ptr %79, align 8, !tbaa !194
  store ptr %112, ptr %80, align 8, !tbaa !195
  store ptr %94, ptr %83, align 8, !tbaa !196
  store ptr %82, ptr %95, align 8, !tbaa !199
  br label %114

114:                                              ; preds = %111, %107, %47
  %115 = phi ptr [ %45, %47 ], [ %53, %107 ], [ %53, %111 ]
  ret ptr %115
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @ira_debug_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !86 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !87
  tail call fastcc void @print_copy(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !prof !86 {
  %3 = load i32, ptr %1, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !184
  %6 = load i32, ptr %5, align 8, !tbaa !114
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %5, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !107
  %9 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !185
  %11 = load i32, ptr %10, align 8, !tbaa !114
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !107
  %14 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !186
  %16 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !188
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1, i64 0, i32 4
  %21 = load i8, ptr %20, align 4, !tbaa !187
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, ptr @.str.16, ptr @.str.15
  br label %24

24:                                               ; preds = %2, %19
  %25 = phi ptr [ %23, %19 ], [ @.str.14, %2 ]
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef %6, i32 noundef %8, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %25)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @ira_debug_copies() local_unnamed_addr #13 !prof !86 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !87
  br label %2

2:                                                ; preds = %37, %0
  %3 = phi ptr [ undef, %0 ], [ %35, %37 ]
  %4 = phi i32 [ 0, %0 ], [ %36, %37 ]
  %5 = load i32, ptr @ira_copies_num, align 4, !tbaa !102
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load ptr, ptr @ira_copies, align 8, !tbaa !87
  %9 = sext i32 %4 to i64
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %20

14:                                               ; preds = %26
  %15 = getelementptr inbounds ptr, ptr %8, i64 %28
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !llvm.loop !211

18:                                               ; preds = %14
  %19 = icmp slt i64 %28, %10
  br label %20

20:                                               ; preds = %18, %7
  %21 = phi i64 [ %9, %7 ], [ %28, %18 ]
  %22 = phi i1 [ %6, %7 ], [ %19, %18 ]
  %23 = phi ptr [ %12, %7 ], [ %16, %18 ]
  %24 = trunc i64 %21 to i32
  %25 = add nsw i32 %24, 1
  br label %33

26:                                               ; preds = %7, %14
  %27 = phi i64 [ %28, %14 ], [ %9, %7 ]
  %28 = add nsw i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %5, %29
  br i1 %30, label %31, label %14, !llvm.loop !211

31:                                               ; preds = %26
  %32 = icmp slt i64 %28, %10
  br label %33

33:                                               ; preds = %31, %2, %20
  %34 = phi i1 [ %22, %20 ], [ %6, %2 ], [ %32, %31 ]
  %35 = phi ptr [ %23, %20 ], [ %3, %2 ], [ %3, %31 ]
  %36 = phi i32 [ %25, %20 ], [ %4, %2 ], [ %4, %31 ]
  br i1 %34, label %37, label %38

37:                                               ; preds = %33
  tail call fastcc void @print_copy(ptr noundef %1, ptr noundef %35)
  br label %2, !llvm.loop !212

38:                                               ; preds = %33
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_debug_allocno_copies(ptr noundef readonly %0) local_unnamed_addr #12 !prof !86 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !87
  %3 = load i32, ptr %0, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !107
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %3, i32 noundef %5) #31
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %1, %30
  %11 = phi ptr [ %32, %30 ], [ undef, %1 ]
  %12 = phi ptr [ %32, %30 ], [ %8, %1 ]
  %13 = phi ptr [ %31, %30 ], [ undef, %1 ]
  %14 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !184
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !196
  %20 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !185
  br label %30

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !185
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !199
  br label %30

29:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1268, ptr noundef nonnull @.str.12) #30
  br label %30

30:                                               ; preds = %29, %26, %17
  %31 = phi ptr [ %21, %17 ], [ %15, %26 ], [ %13, %29 ]
  %32 = phi ptr [ %19, %17 ], [ %28, %26 ], [ %11, %29 ]
  %33 = load i32, ptr %12, align 8, !tbaa !182
  %34 = load i32, ptr %31, align 8, !tbaa !114
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %31, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !107
  %37 = getelementptr inbounds %struct.ira_allocno_copy, ptr %12, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !186
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %33, i32 noundef %34, i32 noundef %36, i32 noundef %38) #31
  %40 = icmp eq ptr %32, null
  br i1 %40, label %41, label %10, !llvm.loop !213

41:                                               ; preds = %30, %1
  %42 = tail call i32 @fputc(i32 10, ptr %2)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @ira_allocate_cost_vector(i32 noundef %0) local_unnamed_addr #9 !prof !214 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = tail call ptr @pool_alloc(ptr noundef %4) #30
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_traverse_loop_tree(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 !prof !215 {
  store ptr %1, ptr @ira_curr_loop_tree_node, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  store ptr %6, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !87
  %7 = icmp eq ptr %2, null
  br i1 %7, label %9, label %8, !prof !216

8:                                                ; preds = %4
  tail call void %2(ptr noundef %1) #30, !prof !217
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq i8 %0, 0
  br i1 %10, label %29, label %11, !prof !218

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15, !prof !219

15:                                               ; preds = %11
  %16 = icmp eq ptr %3, null
  br label %17

17:                                               ; preds = %15, %25
  %18 = phi ptr [ %13, %15 ], [ %27, %25 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !144
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !220

21:                                               ; preds = %17
  br i1 %7, label %23, label %22, !prof !221

22:                                               ; preds = %21
  tail call void %2(ptr noundef nonnull %18) #30, !prof !222
  br label %23

23:                                               ; preds = %22, %21
  br i1 %16, label %25, label %24, !prof !223

24:                                               ; preds = %23
  tail call void %3(ptr noundef nonnull %18) #30, !prof !224
  br label %25

25:                                               ; preds = %17, %24, %23
  %26 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %18, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17, !prof !225, !llvm.loop !226

29:                                               ; preds = %25, %11, %9
  %30 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33, !prof !227

33:                                               ; preds = %29, %33
  %34 = phi ptr [ %36, %33 ], [ %31, %29 ]
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext %0, ptr noundef nonnull %34, ptr noundef %2, ptr noundef %3)
  %35 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !87
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %33, !prof !227, !llvm.loop !228

38:                                               ; preds = %33, %29
  store ptr %1, ptr @ira_curr_loop_tree_node, align 8, !tbaa !87
  %39 = load ptr, ptr %5, align 8, !tbaa !112
  store ptr %39, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !87
  %40 = icmp eq ptr %3, null
  br i1 %40, label %42, label %41, !prof !229

41:                                               ; preds = %38
  tail call void %3(ptr noundef %1) #30, !prof !230
  br label %42

42:                                               ; preds = %41, %38
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_flattening(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !86 {
  %3 = tail call i32 @max_reg_num() #30
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #30
  store ptr %6, ptr @regno_top_level_allocno_map, align 8, !tbaa !87
  %7 = tail call i32 @max_reg_num() #30
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %9, i1 false)
  %10 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %11 = load ptr, ptr @ira_allocnos, align 8
  %12 = sext i32 %10 to i64
  br label %13

13:                                               ; preds = %63, %2
  %14 = phi ptr [ undef, %2 ], [ %43, %63 ]
  %15 = phi i32 [ 0, %2 ], [ %44, %63 ]
  %16 = icmp slt i32 %15, %10
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds ptr, ptr %11, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !87
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %28

22:                                               ; preds = %34
  %23 = getelementptr inbounds ptr, ptr %11, i64 %36
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26, !llvm.loop !231

26:                                               ; preds = %22
  %27 = icmp slt i64 %36, %12
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi i64 [ %18, %17 ], [ %36, %26 ]
  %30 = phi i1 [ %16, %17 ], [ %27, %26 ]
  %31 = phi ptr [ %20, %17 ], [ %24, %26 ]
  %32 = trunc i64 %29 to i32
  %33 = add nsw i32 %32, 1
  br label %41

34:                                               ; preds = %17, %22
  %35 = phi i64 [ %36, %22 ], [ %18, %17 ]
  %36 = add nsw i64 %35, 1
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %10, %37
  br i1 %38, label %39, label %22, !llvm.loop !231

39:                                               ; preds = %34
  %40 = icmp slt i64 %36, %12
  br label %41

41:                                               ; preds = %39, %13, %28
  %42 = phi i1 [ %30, %28 ], [ %16, %13 ], [ %40, %39 ]
  %43 = phi ptr [ %31, %28 ], [ %14, %13 ], [ %14, %39 ]
  %44 = phi i32 [ %33, %28 ], [ %15, %13 ], [ %15, %39 ]
  br i1 %42, label %49, label %45

45:                                               ; preds = %41
  %46 = icmp sgt i32 %0, 53
  br i1 %46, label %47, label %459

47:                                               ; preds = %45
  %48 = zext nneg i32 %0 to i64
  br label %64

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %43, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !146
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %43, i64 0, i32 26
  %55 = load i64, ptr %54, align 8, !tbaa !119
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %43, i64 0, i32 27
  store i64 %55, ptr %56, align 8, !tbaa !120
  %57 = getelementptr inbounds %struct.ira_allocno, ptr %43, i64 0, i32 31
  %58 = load i16, ptr %57, align 4
  %59 = shl i16 %58, 1
  %60 = and i16 %59, 32
  %61 = and i16 %58, -33
  %62 = or disjoint i16 %60, %61
  store i16 %62, ptr %57, align 4
  br label %63

63:                                               ; preds = %53, %49
  br label %13, !llvm.loop !232

64:                                               ; preds = %47, %453
  %65 = phi i64 [ %48, %47 ], [ %68, %453 ]
  %66 = phi i8 [ 0, %47 ], [ %302, %453 ]
  %67 = phi i8 [ 0, %47 ], [ %454, %453 ]
  %68 = add nsw i64 %65, -1
  %69 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  %70 = getelementptr inbounds ptr, ptr %69, i64 %68
  %71 = load ptr, ptr %70, align 8, !tbaa !87
  %72 = icmp eq ptr %71, null
  br i1 %72, label %299, label %73

73:                                               ; preds = %64, %292
  %74 = phi ptr [ %297, %292 ], [ %71, %64 ]
  %75 = phi i8 [ %295, %292 ], [ %66, %64 ]
  %76 = phi i8 [ %294, %292 ], [ %67, %64 ]
  %77 = phi i8 [ %293, %292 ], [ 0, %64 ]
  %78 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 31
  %79 = load i16, ptr %78, align 4
  %80 = and i16 %79, 2
  %81 = icmp eq i16 %80, 0
  %82 = select i1 %81, i8 %75, i8 1
  %83 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 16
  %84 = load ptr, ptr %83, align 8, !tbaa !233
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %101

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !109
  %89 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %88, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !234
  %91 = icmp eq ptr %90, null
  br i1 %91, label %101, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %90, i64 0, i32 9
  %94 = load ptr, ptr %93, align 8, !tbaa !112
  %95 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !107
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %94, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !87
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %92, %86, %73
  %102 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 15
  store ptr null, ptr %102, align 8, !tbaa !129
  %103 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !87
  %104 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !235
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !98
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %103, i64 %108
  store ptr %74, ptr %109, align 8, !tbaa !87
  br label %292

110:                                              ; preds = %92
  %111 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 32
  %112 = load ptr, ptr %111, align 8, !tbaa !126
  %113 = icmp eq ptr %112, null
  %114 = select i1 %113, i8 %77, i8 1
  %115 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !235
  %117 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !98
  %119 = getelementptr inbounds %struct.ira_allocno, ptr %99, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !235
  %121 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !98
  %123 = icmp eq i32 %118, %122
  br i1 %123, label %138, label %124

124:                                              ; preds = %110
  %125 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 7
  %126 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 8
  %127 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 29
  %128 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 30
  %129 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 14
  %130 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 33
  %131 = load ptr, ptr %130, align 8, !tbaa !236
  %132 = icmp eq ptr %131, null
  %133 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 35
  %134 = load ptr, ptr %133, align 8, !tbaa !237
  %135 = icmp eq ptr %134, null
  %136 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 10
  %137 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 12
  br label %197

138:                                              ; preds = %110
  %139 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 27
  %140 = load i64, ptr %139, align 8, !tbaa !120
  %141 = getelementptr inbounds %struct.ira_allocno, ptr %99, i64 0, i32 27
  %142 = load i64, ptr %141, align 8, !tbaa !120
  %143 = or i64 %142, %140
  store i64 %143, ptr %141, align 8, !tbaa !120
  %144 = load i16, ptr %78, align 4
  %145 = and i16 %144, 32
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %138
  %148 = getelementptr inbounds %struct.ira_allocno, ptr %99, i64 0, i32 31
  %149 = load i16, ptr %148, align 4
  %150 = or i16 %149, 32
  store i16 %150, ptr %148, align 4
  br label %151

151:                                              ; preds = %147, %138
  %152 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !102
  %153 = icmp sgt i32 %152, 4
  %154 = load ptr, ptr @ira_dump_file, align 8
  %155 = icmp ne ptr %154, null
  %156 = select i1 %153, i1 %155, i1 false
  br i1 %156, label %157, label %170

157:                                              ; preds = %151
  %158 = load i32, ptr %74, align 8, !tbaa !114
  %159 = load ptr, ptr %115, align 8, !tbaa !235
  %160 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1
  %161 = load i32, ptr %160, align 8, !tbaa !98
  %162 = load i32, ptr %99, align 8, !tbaa !114
  %163 = load ptr, ptr %119, align 8, !tbaa !235
  %164 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1
  %165 = load i32, ptr %164, align 8, !tbaa !98
  %166 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %154, ptr noundef nonnull @.str.5, i32 noundef %158, i32 noundef %161, i32 noundef %162, i32 noundef %165)
  %167 = load ptr, ptr @ira_dump_file, align 8, !tbaa !87
  %168 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 20
  %169 = load ptr, ptr %168, align 8, !tbaa !133
  tail call void @ira_print_live_range_list(ptr noundef %167, ptr noundef %169) #30
  br label %170

170:                                              ; preds = %157, %151
  %171 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 20
  %172 = load ptr, ptr %171, align 8, !tbaa !87
  %173 = icmp eq ptr %172, null
  br i1 %173, label %179, label %174

174:                                              ; preds = %170, %174
  %175 = phi ptr [ %177, %174 ], [ %172, %170 ]
  store ptr %99, ptr %175, align 8, !tbaa !148
  %176 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %175, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !87
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %174, !llvm.loop !238

179:                                              ; preds = %174, %170
  %180 = load ptr, ptr %171, align 8, !tbaa !133
  %181 = getelementptr inbounds %struct.ira_allocno, ptr %99, i64 0, i32 20
  %182 = load ptr, ptr %181, align 8, !tbaa !133
  %183 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %180, ptr noundef %182)
  store ptr %183, ptr %181, align 8, !tbaa !133
  store ptr null, ptr %171, align 8, !tbaa !133
  %184 = getelementptr inbounds %struct.ira_allocno, ptr %99, i64 0, i32 31
  %185 = load i16, ptr %184, align 4
  %186 = and i16 %185, 1
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %179
  %189 = load i16, ptr %78, align 4
  %190 = and i16 %189, 1
  %191 = icmp ne i16 %190, 0
  br label %192

192:                                              ; preds = %188, %179
  %193 = phi i1 [ true, %179 ], [ %191, %188 ]
  %194 = zext i1 %193 to i16
  %195 = and i16 %185, -2
  %196 = or disjoint i16 %195, %194
  store i16 %196, ptr %184, align 4
  br label %292

197:                                              ; preds = %124, %277
  %198 = phi ptr [ %284, %277 ], [ %99, %124 ]
  %199 = load i32, ptr %125, align 8, !tbaa !121
  %200 = getelementptr inbounds %struct.ira_allocno, ptr %198, i64 0, i32 7
  %201 = load i32, ptr %200, align 8, !tbaa !121
  %202 = sub nsw i32 %201, %199
  store i32 %202, ptr %200, align 8, !tbaa !121
  %203 = load i32, ptr %126, align 4, !tbaa !122
  %204 = getelementptr inbounds %struct.ira_allocno, ptr %198, i64 0, i32 8
  %205 = load i32, ptr %204, align 4, !tbaa !122
  %206 = sub nsw i32 %205, %203
  store i32 %206, ptr %204, align 4, !tbaa !122
  %207 = load i32, ptr %127, align 4, !tbaa !124
  %208 = getelementptr inbounds %struct.ira_allocno, ptr %198, i64 0, i32 29
  %209 = load i32, ptr %208, align 4, !tbaa !124
  %210 = sub nsw i32 %209, %207
  store i32 %210, ptr %208, align 4, !tbaa !124
  %211 = load i32, ptr %128, align 8, !tbaa !125
  %212 = getelementptr inbounds %struct.ira_allocno, ptr %198, i64 0, i32 30
  %213 = load i32, ptr %212, align 8, !tbaa !125
  %214 = sub nsw i32 %213, %211
  store i32 %214, ptr %212, align 8, !tbaa !125
  %215 = load i32, ptr %129, align 4, !tbaa !239
  %216 = getelementptr inbounds %struct.ira_allocno, ptr %198, i64 0, i32 14
  %217 = load i32, ptr %216, align 4, !tbaa !239
  %218 = sub nsw i32 %217, %215
  store i32 %218, ptr %216, align 4, !tbaa !239
  %219 = getelementptr inbounds %struct.ira_allocno, ptr %198, i64 0, i32 9
  %220 = load i32, ptr %219, align 8, !tbaa !141
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !102
  br i1 %132, label %241, label %224

224:                                              ; preds = %197
  %225 = getelementptr inbounds %struct.ira_allocno, ptr %198, i64 0, i32 33
  %226 = load ptr, ptr %225, align 8, !tbaa !236
  %227 = icmp ne ptr %226, null
  %228 = icmp sgt i32 %223, 0
  %229 = select i1 %227, i1 %228, i1 false
  br i1 %229, label %230, label %241

230:                                              ; preds = %224
  %231 = zext i32 %223 to i64
  br label %232

232:                                              ; preds = %230, %232
  %233 = phi i64 [ 0, %230 ], [ %239, %232 ]
  %234 = getelementptr inbounds i32, ptr %131, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !102
  %236 = getelementptr inbounds i32, ptr %226, i64 %233
  %237 = load i32, ptr %236, align 4, !tbaa !102
  %238 = sub nsw i32 %237, %235
  store i32 %238, ptr %236, align 4, !tbaa !102
  %239 = add nuw nsw i64 %233, 1
  %240 = icmp eq i64 %239, %231
  br i1 %240, label %241, label %232, !llvm.loop !240

241:                                              ; preds = %232, %224, %197
  br i1 %135, label %259, label %242

242:                                              ; preds = %241
  %243 = getelementptr inbounds %struct.ira_allocno, ptr %198, i64 0, i32 35
  %244 = load ptr, ptr %243, align 8, !tbaa !237
  %245 = icmp ne ptr %244, null
  %246 = icmp sgt i32 %223, 0
  %247 = select i1 %245, i1 %246, i1 false
  br i1 %247, label %248, label %259

248:                                              ; preds = %242
  %249 = zext i32 %223 to i64
  br label %250

250:                                              ; preds = %248, %250
  %251 = phi i64 [ 0, %248 ], [ %257, %250 ]
  %252 = getelementptr inbounds i32, ptr %134, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !102
  %254 = getelementptr inbounds i32, ptr %244, i64 %251
  %255 = load i32, ptr %254, align 4, !tbaa !102
  %256 = sub nsw i32 %255, %253
  store i32 %256, ptr %254, align 4, !tbaa !102
  %257 = add nuw nsw i64 %251, 1
  %258 = icmp eq i64 %257, %249
  br i1 %258, label %259, label %250, !llvm.loop !241

259:                                              ; preds = %250, %242, %241
  %260 = load i32, ptr %136, align 4, !tbaa !242
  %261 = getelementptr inbounds %struct.ira_allocno, ptr %198, i64 0, i32 10
  %262 = load i32, ptr %261, align 4, !tbaa !242
  %263 = sub nsw i32 %262, %260
  store i32 %263, ptr %261, align 4, !tbaa !242
  %264 = load i32, ptr %137, align 4, !tbaa !243
  %265 = getelementptr inbounds %struct.ira_allocno, ptr %198, i64 0, i32 12
  %266 = load i32, ptr %265, align 4, !tbaa !243
  %267 = sub nsw i32 %266, %264
  store i32 %267, ptr %265, align 4, !tbaa !243
  %268 = getelementptr inbounds %struct.ira_allocno, ptr %198, i64 0, i32 16
  %269 = load ptr, ptr %268, align 8, !tbaa !233
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %286

271:                                              ; preds = %259
  %272 = getelementptr inbounds %struct.ira_allocno, ptr %198, i64 0, i32 6
  %273 = load ptr, ptr %272, align 8, !tbaa !109
  %274 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %273, i64 0, i32 6
  %275 = load ptr, ptr %274, align 8, !tbaa !234
  %276 = icmp eq ptr %275, null
  br i1 %276, label %286, label %277

277:                                              ; preds = %271
  %278 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %275, i64 0, i32 9
  %279 = load ptr, ptr %278, align 8, !tbaa !112
  %280 = getelementptr inbounds %struct.ira_allocno, ptr %198, i64 0, i32 1
  %281 = load i32, ptr %280, align 4, !tbaa !107
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds ptr, ptr %279, i64 %282
  %284 = load ptr, ptr %283, align 8, !tbaa !87
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %197, !llvm.loop !244

286:                                              ; preds = %277, %259, %271
  %287 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 15
  store ptr null, ptr %287, align 8, !tbaa !129
  %288 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !87
  %289 = load i32, ptr %117, align 8, !tbaa !98
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds ptr, ptr %288, i64 %290
  store ptr %74, ptr %291, align 8, !tbaa !87
  br label %292

292:                                              ; preds = %286, %192, %101
  %293 = phi i8 [ %77, %101 ], [ %114, %192 ], [ %114, %286 ]
  %294 = phi i8 [ %76, %101 ], [ 1, %192 ], [ %76, %286 ]
  %295 = phi i8 [ %82, %101 ], [ %82, %192 ], [ 1, %286 ]
  %296 = getelementptr inbounds %struct.ira_allocno, ptr %74, i64 0, i32 5
  %297 = load ptr, ptr %296, align 8, !tbaa !87
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %73, !llvm.loop !245

299:                                              ; preds = %292, %64
  %300 = phi i8 [ 0, %64 ], [ %293, %292 ]
  %301 = phi i8 [ %67, %64 ], [ %294, %292 ]
  %302 = phi i8 [ %66, %64 ], [ %295, %292 ]
  %303 = phi ptr [ %71, %64 ], [ %297, %292 ]
  %304 = icmp eq i8 %300, 0
  br i1 %304, label %453, label %305

305:                                              ; preds = %299
  %306 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  %307 = getelementptr inbounds ptr, ptr %306, i64 %68
  %308 = load ptr, ptr %307, align 8, !tbaa !87
  %309 = icmp eq ptr %308, null
  br i1 %309, label %449, label %310

310:                                              ; preds = %305, %443
  %311 = phi ptr [ %447, %443 ], [ %308, %305 ]
  %312 = phi i8 [ %445, %443 ], [ 0, %305 ]
  %313 = phi ptr [ %444, %443 ], [ null, %305 ]
  %314 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !87
  %315 = getelementptr inbounds %struct.ira_allocno, ptr %311, i64 0, i32 4
  %316 = load ptr, ptr %315, align 8, !tbaa !235
  %317 = getelementptr inbounds %struct.rtx_def, ptr %316, i64 0, i32 1
  %318 = load i32, ptr %317, align 8, !tbaa !98
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds ptr, ptr %314, i64 %319
  %321 = load ptr, ptr %320, align 8, !tbaa !87
  %322 = icmp eq ptr %311, %321
  br i1 %322, label %323, label %443

323:                                              ; preds = %310
  %324 = getelementptr inbounds %struct.ira_allocno, ptr %311, i64 0, i32 6
  %325 = load ptr, ptr %324, align 8, !tbaa !109
  %326 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %325, i64 0, i32 6
  %327 = load ptr, ptr %326, align 8, !tbaa !234
  %328 = icmp eq ptr %327, null
  br i1 %328, label %362, label %329

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %327, i64 0, i32 9
  %331 = load ptr, ptr %330, align 8, !tbaa !112
  %332 = getelementptr inbounds ptr, ptr %331, i64 %68
  %333 = load ptr, ptr %332, align 8, !tbaa !87
  %334 = icmp eq ptr %333, null
  br i1 %334, label %362, label %341

335:                                              ; preds = %358
  %336 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %360, i64 0, i32 9
  %337 = load ptr, ptr %336, align 8, !tbaa !112
  %338 = getelementptr inbounds ptr, ptr %337, i64 %68
  %339 = load ptr, ptr %338, align 8, !tbaa !87
  %340 = icmp eq ptr %339, null
  br i1 %340, label %362, label %341, !llvm.loop !246

341:                                              ; preds = %329, %335
  %342 = phi ptr [ %339, %335 ], [ %333, %329 ]
  %343 = phi ptr [ %360, %335 ], [ %327, %329 ]
  %344 = phi i1 [ %361, %335 ], [ %328, %329 ]
  %345 = getelementptr inbounds %struct.ira_allocno, ptr %342, i64 0, i32 4
  %346 = load ptr, ptr %345, align 8, !tbaa !235
  %347 = getelementptr inbounds %struct.rtx_def, ptr %346, i64 0, i32 1
  %348 = load i32, ptr %347, align 8, !tbaa !98
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds ptr, ptr %314, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !87
  %352 = icmp eq ptr %342, %351
  br i1 %352, label %353, label %358

353:                                              ; preds = %341
  %354 = getelementptr inbounds %struct.ira_allocno, ptr %342, i64 0, i32 31
  %355 = load i16, ptr %354, align 4
  %356 = and i16 %355, 1
  %357 = icmp eq i16 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %353, %341
  %359 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %343, i64 0, i32 6
  %360 = load ptr, ptr %359, align 8, !tbaa !234
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %335, !llvm.loop !246

362:                                              ; preds = %353, %335, %358, %329, %323
  %363 = phi i1 [ %328, %323 ], [ %328, %329 ], [ %361, %358 ], [ %361, %335 ], [ %344, %353 ]
  %364 = phi ptr [ %313, %323 ], [ null, %329 ], [ %342, %358 ], [ null, %335 ], [ %342, %353 ]
  %365 = icmp eq ptr %364, null
  %366 = select i1 %363, i1 true, i1 %365
  br i1 %366, label %443, label %367

367:                                              ; preds = %362
  %368 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !102
  %369 = icmp sgt i32 %368, 4
  %370 = load ptr, ptr @ira_dump_file, align 8
  %371 = icmp ne ptr %370, null
  %372 = select i1 %369, i1 %371, i1 false
  br i1 %372, label %373, label %384

373:                                              ; preds = %367
  %374 = load i32, ptr %311, align 8, !tbaa !114
  %375 = load i32, ptr %364, align 8, !tbaa !114
  %376 = getelementptr inbounds %struct.ira_allocno, ptr %364, i64 0, i32 4
  %377 = load ptr, ptr %376, align 8, !tbaa !235
  %378 = getelementptr inbounds %struct.rtx_def, ptr %377, i64 0, i32 1
  %379 = load i32, ptr %378, align 8, !tbaa !98
  %380 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %370, ptr noundef nonnull @.str.20, i32 noundef %374, i32 noundef %318, i32 noundef %375, i32 noundef %379)
  %381 = load ptr, ptr @ira_dump_file, align 8, !tbaa !87
  %382 = getelementptr inbounds %struct.ira_allocno, ptr %311, i64 0, i32 20
  %383 = load ptr, ptr %382, align 8, !tbaa !133
  tail call void @ira_print_live_range_list(ptr noundef %381, ptr noundef %383) #30
  br label %384

384:                                              ; preds = %373, %367
  %385 = getelementptr inbounds %struct.ira_allocno, ptr %311, i64 0, i32 20
  %386 = load ptr, ptr %385, align 8, !tbaa !133
  %387 = icmp eq ptr %386, null
  br i1 %387, label %402, label %388

388:                                              ; preds = %384, %397
  %389 = phi ptr [ %393, %397 ], [ null, %384 ]
  %390 = phi ptr [ %398, %397 ], [ null, %384 ]
  %391 = phi ptr [ %400, %397 ], [ %386, %384 ]
  %392 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !87
  %393 = tail call ptr @pool_alloc(ptr noundef %392) #30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %393, ptr noundef nonnull align 8 dereferenceable(40) %391, i64 40, i1 false), !tbaa.struct !155
  %394 = icmp eq ptr %390, null
  br i1 %394, label %397, label %395

395:                                              ; preds = %388
  %396 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %389, i64 0, i32 3
  store ptr %393, ptr %396, align 8, !tbaa !152
  br label %397

397:                                              ; preds = %395, %388
  %398 = phi ptr [ %390, %395 ], [ %393, %388 ]
  %399 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %391, i64 0, i32 3
  %400 = load ptr, ptr %399, align 8, !tbaa !152
  %401 = icmp eq ptr %400, null
  br i1 %401, label %402, label %388, !llvm.loop !157

402:                                              ; preds = %397, %384
  %403 = phi ptr [ null, %384 ], [ %398, %397 ]
  %404 = icmp eq ptr %403, null
  br i1 %404, label %410, label %405

405:                                              ; preds = %402, %405
  %406 = phi ptr [ %408, %405 ], [ %403, %402 ]
  store ptr %364, ptr %406, align 8, !tbaa !148
  %407 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %406, i64 0, i32 3
  %408 = load ptr, ptr %407, align 8, !tbaa !152
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %405, !llvm.loop !238

410:                                              ; preds = %405, %402
  %411 = getelementptr inbounds %struct.ira_allocno, ptr %364, i64 0, i32 20
  %412 = load ptr, ptr %411, align 8, !tbaa !133
  %413 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %403, ptr noundef %412)
  store ptr %413, ptr %411, align 8, !tbaa !133
  %414 = getelementptr inbounds %struct.ira_allocno, ptr %311, i64 0, i32 27
  %415 = load i64, ptr %414, align 8, !tbaa !120
  %416 = getelementptr inbounds %struct.ira_allocno, ptr %364, i64 0, i32 27
  %417 = load i64, ptr %416, align 8, !tbaa !120
  %418 = or i64 %417, %415
  store i64 %418, ptr %416, align 8, !tbaa !120
  %419 = getelementptr inbounds %struct.ira_allocno, ptr %311, i64 0, i32 31
  %420 = load i16, ptr %419, align 4
  %421 = and i16 %420, 32
  %422 = icmp eq i16 %421, 0
  br i1 %422, label %427, label %423

423:                                              ; preds = %410
  %424 = getelementptr inbounds %struct.ira_allocno, ptr %364, i64 0, i32 31
  %425 = load i16, ptr %424, align 4
  %426 = or i16 %425, 32
  store i16 %426, ptr %424, align 4
  br label %427

427:                                              ; preds = %423, %410
  %428 = getelementptr inbounds %struct.ira_allocno, ptr %311, i64 0, i32 29
  %429 = load i32, ptr %428, align 4, !tbaa !124
  %430 = getelementptr inbounds %struct.ira_allocno, ptr %364, i64 0, i32 29
  %431 = load i32, ptr %430, align 4, !tbaa !124
  %432 = add nsw i32 %431, %429
  store i32 %432, ptr %430, align 4, !tbaa !124
  %433 = getelementptr inbounds %struct.ira_allocno, ptr %311, i64 0, i32 30
  %434 = load i32, ptr %433, align 8, !tbaa !125
  %435 = getelementptr inbounds %struct.ira_allocno, ptr %364, i64 0, i32 30
  %436 = load i32, ptr %435, align 8, !tbaa !125
  %437 = add nsw i32 %436, %434
  store i32 %437, ptr %435, align 8, !tbaa !125
  %438 = getelementptr inbounds %struct.ira_allocno, ptr %311, i64 0, i32 14
  %439 = load i32, ptr %438, align 4, !tbaa !239
  %440 = getelementptr inbounds %struct.ira_allocno, ptr %364, i64 0, i32 14
  %441 = load i32, ptr %440, align 4, !tbaa !239
  %442 = add nsw i32 %441, %439
  store i32 %442, ptr %440, align 4, !tbaa !239
  br label %443

443:                                              ; preds = %427, %362, %310
  %444 = phi ptr [ %313, %310 ], [ %364, %362 ], [ %364, %427 ]
  %445 = phi i8 [ %312, %310 ], [ %312, %362 ], [ 1, %427 ]
  %446 = getelementptr inbounds %struct.ira_allocno, ptr %311, i64 0, i32 5
  %447 = load ptr, ptr %446, align 8, !tbaa !87
  %448 = icmp eq ptr %447, null
  br i1 %448, label %449, label %310, !llvm.loop !247

449:                                              ; preds = %443, %305
  %450 = phi i8 [ 0, %305 ], [ %445, %443 ]
  %451 = icmp eq i8 %450, 0
  %452 = select i1 %451, i8 %301, i8 1
  br label %453

453:                                              ; preds = %449, %299
  %454 = phi i8 [ %301, %299 ], [ %452, %449 ]
  %455 = icmp sgt i64 %65, 54
  br i1 %455, label %64, label %456, !llvm.loop !248

456:                                              ; preds = %453
  %457 = icmp eq i8 %454, 0
  %458 = icmp eq i8 %302, 0
  br label %459

459:                                              ; preds = %456, %45
  %460 = phi ptr [ %43, %45 ], [ %303, %456 ]
  %461 = phi i1 [ true, %45 ], [ %457, %456 ]
  %462 = phi i1 [ true, %45 ], [ %458, %456 ]
  %463 = load i32, ptr @ira_max_point, align 4
  %464 = icmp eq i32 %463, %1
  %465 = select i1 %461, i1 %464, i1 false
  br i1 %465, label %467, label %466

466:                                              ; preds = %459
  tail call void @ira_rebuild_start_finish_chains() #30
  br label %467

467:                                              ; preds = %459, %466
  br i1 %462, label %743, label %468

468:                                              ; preds = %467, %542
  %469 = phi ptr [ %501, %542 ], [ %460, %467 ]
  %470 = phi i32 [ %502, %542 ], [ 0, %467 ]
  %471 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %472 = icmp slt i32 %470, %471
  br i1 %472, label %473, label %499

473:                                              ; preds = %468
  %474 = load ptr, ptr @ira_allocnos, align 8, !tbaa !87
  %475 = sext i32 %470 to i64
  %476 = sext i32 %471 to i64
  %477 = getelementptr inbounds ptr, ptr %474, i64 %475
  %478 = load ptr, ptr %477, align 8, !tbaa !87
  %479 = icmp eq ptr %478, null
  br i1 %479, label %492, label %486

480:                                              ; preds = %492
  %481 = getelementptr inbounds ptr, ptr %474, i64 %494
  %482 = load ptr, ptr %481, align 8, !tbaa !87
  %483 = icmp eq ptr %482, null
  br i1 %483, label %492, label %484, !llvm.loop !231

484:                                              ; preds = %480
  %485 = icmp slt i64 %494, %476
  br label %486

486:                                              ; preds = %484, %473
  %487 = phi i64 [ %475, %473 ], [ %494, %484 ]
  %488 = phi i1 [ %472, %473 ], [ %485, %484 ]
  %489 = phi ptr [ %478, %473 ], [ %482, %484 ]
  %490 = trunc i64 %487 to i32
  %491 = add nsw i32 %490, 1
  br label %499

492:                                              ; preds = %473, %480
  %493 = phi i64 [ %494, %480 ], [ %475, %473 ]
  %494 = add nsw i64 %493, 1
  %495 = trunc i64 %494 to i32
  %496 = icmp eq i32 %471, %495
  br i1 %496, label %497, label %480, !llvm.loop !231

497:                                              ; preds = %492
  %498 = icmp slt i64 %494, %476
  br label %499

499:                                              ; preds = %497, %468, %486
  %500 = phi i1 [ %488, %486 ], [ %472, %468 ], [ %498, %497 ]
  %501 = phi ptr [ %489, %486 ], [ %469, %468 ], [ %469, %497 ]
  %502 = phi i32 [ %491, %486 ], [ %470, %468 ], [ %470, %497 ]
  br i1 %500, label %503, label %543

503:                                              ; preds = %499
  %504 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !87
  %505 = getelementptr inbounds %struct.ira_allocno, ptr %501, i64 0, i32 4
  %506 = load ptr, ptr %505, align 8, !tbaa !235
  %507 = getelementptr inbounds %struct.rtx_def, ptr %506, i64 0, i32 1
  %508 = load i32, ptr %507, align 8, !tbaa !98
  %509 = zext i32 %508 to i64
  %510 = getelementptr inbounds ptr, ptr %504, i64 %509
  %511 = load ptr, ptr %510, align 8, !tbaa !87
  %512 = icmp eq ptr %501, %511
  br i1 %512, label %513, label %542

513:                                              ; preds = %503
  %514 = getelementptr inbounds %struct.ira_allocno, ptr %501, i64 0, i32 17
  %515 = load ptr, ptr %514, align 8, !tbaa !146
  %516 = icmp eq ptr %515, null
  br i1 %516, label %517, label %542

517:                                              ; preds = %513
  %518 = getelementptr inbounds %struct.ira_allocno, ptr %501, i64 0, i32 31
  %519 = load i16, ptr %518, align 4
  %520 = and i16 %519, 2048
  %521 = icmp eq i16 %520, 0
  br i1 %521, label %526, label %522

522:                                              ; preds = %517
  %523 = getelementptr inbounds %struct.ira_allocno, ptr %501, i64 0, i32 28
  store i32 0, ptr %523, align 8, !tbaa !117
  %524 = getelementptr inbounds %struct.ira_allocno, ptr %501, i64 0, i32 23
  %525 = load ptr, ptr %524, align 8, !tbaa !116
  store ptr null, ptr %525, align 8, !tbaa !87
  br label %542

526:                                              ; preds = %517
  %527 = getelementptr inbounds %struct.ira_allocno, ptr %501, i64 0, i32 25
  %528 = load i32, ptr %527, align 4, !tbaa !143
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %542, label %530

530:                                              ; preds = %526
  %531 = getelementptr inbounds %struct.ira_allocno, ptr %501, i64 0, i32 22
  %532 = load i32, ptr %531, align 4, !tbaa !135
  %533 = getelementptr inbounds %struct.ira_allocno, ptr %501, i64 0, i32 21
  %534 = load i32, ptr %533, align 8, !tbaa !134
  %535 = sub nsw i32 %532, %534
  %536 = sdiv i32 %535, 64
  %537 = add nsw i32 %536, 1
  %538 = getelementptr inbounds %struct.ira_allocno, ptr %501, i64 0, i32 23
  %539 = load ptr, ptr %538, align 8, !tbaa !116
  %540 = sext i32 %537 to i64
  %541 = shl nsw i64 %540, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %539, i8 0, i64 %541, i1 false)
  br label %542

542:                                              ; preds = %530, %526, %522, %503, %513
  br label %468, !llvm.loop !249

543:                                              ; preds = %499
  %544 = tail call ptr @sparseset_alloc(i32 noundef %471) #30
  %545 = load i32, ptr @ira_max_point, align 4, !tbaa !102
  %546 = icmp sgt i32 %545, 0
  br i1 %546, label %547, label %657

547:                                              ; preds = %543
  %548 = getelementptr inbounds %struct.sparseset_def, ptr %544, i64 0, i32 3
  %549 = getelementptr inbounds %struct.sparseset_def, ptr %544, i64 0, i32 1
  %550 = getelementptr inbounds %struct.sparseset_def, ptr %544, i64 0, i32 2
  %551 = getelementptr inbounds %struct.sparseset_def, ptr %544, i64 0, i32 4
  %552 = getelementptr inbounds %struct.sparseset_def, ptr %544, i64 0, i32 5
  %553 = getelementptr inbounds %struct.sparseset_def, ptr %544, i64 0, i32 6
  br label %554

554:                                              ; preds = %547, %652
  %555 = phi i64 [ 0, %547 ], [ %653, %652 ]
  %556 = phi ptr [ %501, %547 ], [ %640, %652 ]
  %557 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !87
  %558 = getelementptr inbounds ptr, ptr %557, i64 %555
  %559 = load ptr, ptr %558, align 8, !tbaa !87
  %560 = icmp eq ptr %559, null
  br i1 %560, label %639, label %561

561:                                              ; preds = %554, %635
  %562 = phi ptr [ %637, %635 ], [ %559, %554 ]
  %563 = load ptr, ptr %562, align 8, !tbaa !148
  %564 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !87
  %565 = getelementptr inbounds %struct.ira_allocno, ptr %563, i64 0, i32 4
  %566 = load ptr, ptr %565, align 8, !tbaa !235
  %567 = getelementptr inbounds %struct.rtx_def, ptr %566, i64 0, i32 1
  %568 = load i32, ptr %567, align 8, !tbaa !98
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds ptr, ptr %564, i64 %569
  %571 = load ptr, ptr %570, align 8, !tbaa !87
  %572 = icmp eq ptr %563, %571
  br i1 %572, label %573, label %635

573:                                              ; preds = %561
  %574 = getelementptr inbounds %struct.ira_allocno, ptr %563, i64 0, i32 17
  %575 = load ptr, ptr %574, align 8, !tbaa !146
  %576 = icmp eq ptr %575, null
  br i1 %576, label %577, label %635

577:                                              ; preds = %573
  %578 = load i32, ptr %563, align 8, !tbaa !114
  %579 = getelementptr inbounds %struct.ira_allocno, ptr %563, i64 0, i32 9
  %580 = load i32, ptr %579, align 8, !tbaa !141
  %581 = load i32, ptr %548, align 4, !tbaa !250
  %582 = icmp ugt i32 %581, %578
  br i1 %582, label %584, label %583

583:                                              ; preds = %577
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 85, ptr noundef nonnull @.str.12) #30
  br label %584

584:                                              ; preds = %583, %577
  %585 = load ptr, ptr %549, align 8, !tbaa !252
  %586 = zext i32 %578 to i64
  %587 = getelementptr inbounds i32, ptr %585, i64 %586
  %588 = load i32, ptr %587, align 4, !tbaa !102
  %589 = load i32, ptr %550, align 8, !tbaa !253
  %590 = icmp ult i32 %588, %589
  br i1 %590, label %591, label %597

591:                                              ; preds = %584
  %592 = load ptr, ptr %544, align 8, !tbaa !254
  %593 = zext i32 %588 to i64
  %594 = getelementptr inbounds i32, ptr %592, i64 %593
  %595 = load i32, ptr %594, align 4, !tbaa !102
  %596 = icmp eq i32 %595, %578
  br i1 %596, label %602, label %597

597:                                              ; preds = %584, %591
  %598 = add i32 %589, 1
  store i32 %598, ptr %550, align 8, !tbaa !253
  store i32 %589, ptr %587, align 4, !tbaa !102
  %599 = load ptr, ptr %544, align 8, !tbaa !254
  %600 = zext i32 %589 to i64
  %601 = getelementptr inbounds i32, ptr %599, i64 %600
  store i32 %578, ptr %601, align 4, !tbaa !102
  br label %602

602:                                              ; preds = %591, %597
  store i32 0, ptr %551, align 8, !tbaa !255
  store i8 1, ptr %552, align 4, !tbaa !256
  store i8 1, ptr %553, align 1, !tbaa !257
  %603 = zext i32 %580 to i64
  br label %604

604:                                              ; preds = %602, %628
  %605 = load i32, ptr %551, align 8, !tbaa !255
  %606 = load i32, ptr %550, align 8, !tbaa !253
  %607 = icmp ult i32 %605, %606
  br i1 %607, label %609, label %608

608:                                              ; preds = %628, %604
  store i8 0, ptr %553, align 1, !tbaa !257
  br label %635

609:                                              ; preds = %604
  %610 = load ptr, ptr %544, align 8, !tbaa !254
  %611 = load i32, ptr %551, align 8, !tbaa !255
  %612 = zext i32 %611 to i64
  %613 = getelementptr inbounds i32, ptr %610, i64 %612
  %614 = load i32, ptr %613, align 4, !tbaa !102
  %615 = load ptr, ptr @ira_allocnos, align 8, !tbaa !87
  %616 = zext i32 %614 to i64
  %617 = getelementptr inbounds ptr, ptr %615, i64 %616
  %618 = load ptr, ptr %617, align 8, !tbaa !87
  %619 = getelementptr inbounds %struct.ira_allocno, ptr %618, i64 0, i32 9
  %620 = load i32, ptr %619, align 8, !tbaa !141
  %621 = zext i32 %620 to i64
  %622 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %603, i64 %621
  %623 = load i8, ptr %622, align 1, !tbaa !98
  %624 = icmp eq i8 %623, 0
  %625 = icmp eq i32 %578, %614
  %626 = or i1 %625, %624
  br i1 %626, label %628, label %627

627:                                              ; preds = %609
  tail call fastcc void @add_to_allocno_conflicts(ptr noundef nonnull %563, ptr noundef %618)
  tail call fastcc void @add_to_allocno_conflicts(ptr noundef %618, ptr noundef nonnull %563)
  br label %628

628:                                              ; preds = %627, %609
  %629 = load i8, ptr %552, align 4, !tbaa !256
  %630 = zext i8 %629 to i32
  %631 = load i32, ptr %551, align 8, !tbaa !255
  %632 = add i32 %631, %630
  store i32 %632, ptr %551, align 8, !tbaa !255
  store i8 1, ptr %552, align 4, !tbaa !256
  %633 = load i8, ptr %553, align 1, !tbaa !257
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %608, label %604, !llvm.loop !258

635:                                              ; preds = %608, %561, %573
  %636 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %562, i64 0, i32 4
  %637 = load ptr, ptr %636, align 8, !tbaa !87
  %638 = icmp eq ptr %637, null
  br i1 %638, label %639, label %561, !llvm.loop !259

639:                                              ; preds = %635, %554
  %640 = phi ptr [ %556, %554 ], [ %563, %635 ]
  %641 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !87
  %642 = getelementptr inbounds ptr, ptr %641, i64 %555
  %643 = load ptr, ptr %642, align 8, !tbaa !87
  %644 = icmp eq ptr %643, null
  br i1 %644, label %652, label %645

645:                                              ; preds = %639, %645
  %646 = phi ptr [ %650, %645 ], [ %643, %639 ]
  %647 = load ptr, ptr %646, align 8, !tbaa !148
  %648 = load i32, ptr %647, align 8, !tbaa !114
  tail call void @sparseset_clear_bit(ptr noundef %544, i32 noundef %648) #30
  %649 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %646, i64 0, i32 5
  %650 = load ptr, ptr %649, align 8, !tbaa !87
  %651 = icmp eq ptr %650, null
  br i1 %651, label %652, label %645, !llvm.loop !260

652:                                              ; preds = %645, %639
  %653 = add nuw nsw i64 %555, 1
  %654 = load i32, ptr @ira_max_point, align 4, !tbaa !102
  %655 = sext i32 %654 to i64
  %656 = icmp slt i64 %653, %655
  br i1 %656, label %554, label %657, !llvm.loop !261

657:                                              ; preds = %652, %543
  %658 = phi ptr [ %501, %543 ], [ %640, %652 ]
  tail call void @free(ptr noundef %544)
  %659 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %660 = sext i32 %659 to i64
  %661 = shl nsw i64 %660, 2
  %662 = tail call ptr @ira_allocate(i64 noundef %661) #30
  store ptr %662, ptr @allocno_conflict_check, align 8, !tbaa !87
  %663 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %664 = sext i32 %663 to i64
  %665 = shl nsw i64 %664, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %662, i8 0, i64 %665, i1 false)
  br label %666

666:                                              ; preds = %736, %657
  %667 = phi i32 [ %713, %736 ], [ 0, %657 ]
  %668 = phi ptr [ %703, %736 ], [ undef, %657 ]
  %669 = phi i32 [ %704, %736 ], [ 0, %657 ]
  %670 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %671 = load ptr, ptr @ira_allocnos, align 8
  %672 = sext i32 %670 to i64
  br label %673

673:                                              ; preds = %666, %705
  %674 = phi ptr [ %703, %705 ], [ %668, %666 ]
  %675 = phi i32 [ %704, %705 ], [ %669, %666 ]
  %676 = icmp slt i32 %675, %670
  br i1 %676, label %677, label %701

677:                                              ; preds = %673
  %678 = sext i32 %675 to i64
  %679 = getelementptr inbounds ptr, ptr %671, i64 %678
  %680 = load ptr, ptr %679, align 8, !tbaa !87
  %681 = icmp eq ptr %680, null
  br i1 %681, label %694, label %688

682:                                              ; preds = %694
  %683 = getelementptr inbounds ptr, ptr %671, i64 %696
  %684 = load ptr, ptr %683, align 8, !tbaa !87
  %685 = icmp eq ptr %684, null
  br i1 %685, label %694, label %686, !llvm.loop !231

686:                                              ; preds = %682
  %687 = icmp slt i64 %696, %672
  br label %688

688:                                              ; preds = %686, %677
  %689 = phi i64 [ %678, %677 ], [ %696, %686 ]
  %690 = phi i1 [ %676, %677 ], [ %687, %686 ]
  %691 = phi ptr [ %680, %677 ], [ %684, %686 ]
  %692 = trunc i64 %689 to i32
  %693 = add nsw i32 %692, 1
  br label %701

694:                                              ; preds = %677, %682
  %695 = phi i64 [ %696, %682 ], [ %678, %677 ]
  %696 = add nsw i64 %695, 1
  %697 = trunc i64 %696 to i32
  %698 = icmp eq i32 %670, %697
  br i1 %698, label %699, label %682, !llvm.loop !231

699:                                              ; preds = %694
  %700 = icmp slt i64 %696, %672
  br label %701

701:                                              ; preds = %699, %673, %688
  %702 = phi i1 [ %690, %688 ], [ %676, %673 ], [ %700, %699 ]
  %703 = phi ptr [ %691, %688 ], [ %674, %673 ], [ %674, %699 ]
  %704 = phi i32 [ %693, %688 ], [ %675, %673 ], [ %675, %699 ]
  br i1 %702, label %705, label %741

705:                                              ; preds = %701
  %706 = getelementptr inbounds %struct.ira_allocno, ptr %703, i64 0, i32 31
  %707 = load i16, ptr %706, align 4
  %708 = and i16 %707, 2048
  %709 = icmp eq i16 %708, 0
  br i1 %709, label %673, label %710, !llvm.loop !262

710:                                              ; preds = %705
  %711 = getelementptr inbounds %struct.ira_allocno, ptr %703, i64 0, i32 23
  %712 = load ptr, ptr %711, align 8, !tbaa !116
  %713 = add nuw nsw i32 %667, 1
  %714 = load ptr, ptr %712, align 8, !tbaa !87
  %715 = icmp eq ptr %714, null
  br i1 %715, label %736, label %716

716:                                              ; preds = %710, %730
  %717 = phi i64 [ %732, %730 ], [ 0, %710 ]
  %718 = phi ptr [ %734, %730 ], [ %714, %710 ]
  %719 = phi i32 [ %731, %730 ], [ 0, %710 ]
  %720 = load ptr, ptr @allocno_conflict_check, align 8, !tbaa !87
  %721 = load i32, ptr %718, align 8, !tbaa !114
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds i32, ptr %720, i64 %722
  %724 = load i32, ptr %723, align 4, !tbaa !102
  %725 = icmp eq i32 %724, %713
  br i1 %725, label %730, label %726

726:                                              ; preds = %716
  store i32 %713, ptr %723, align 4, !tbaa !102
  %727 = add nsw i32 %719, 1
  %728 = sext i32 %719 to i64
  %729 = getelementptr inbounds ptr, ptr %712, i64 %728
  store ptr %718, ptr %729, align 8, !tbaa !87
  br label %730

730:                                              ; preds = %726, %716
  %731 = phi i32 [ %727, %726 ], [ %719, %716 ]
  %732 = add nuw nsw i64 %717, 1
  %733 = getelementptr inbounds ptr, ptr %712, i64 %732
  %734 = load ptr, ptr %733, align 8, !tbaa !87
  %735 = icmp eq ptr %734, null
  br i1 %735, label %736, label %716, !llvm.loop !263

736:                                              ; preds = %730, %710
  %737 = phi i32 [ 0, %710 ], [ %731, %730 ]
  %738 = getelementptr inbounds %struct.ira_allocno, ptr %703, i64 0, i32 28
  store i32 %737, ptr %738, align 8, !tbaa !117
  %739 = sext i32 %737 to i64
  %740 = getelementptr inbounds ptr, ptr %712, i64 %739
  store ptr null, ptr %740, align 8, !tbaa !87
  br label %666, !llvm.loop !262

741:                                              ; preds = %701
  %742 = load ptr, ptr @allocno_conflict_check, align 8, !tbaa !87
  tail call void @ira_free(ptr noundef %742) #30
  br label %743

743:                                              ; preds = %741, %467
  %744 = phi ptr [ %460, %467 ], [ %658, %741 ]
  br label %745

745:                                              ; preds = %879, %743
  %746 = phi ptr [ undef, %743 ], [ %778, %879 ]
  %747 = phi i32 [ 0, %743 ], [ %779, %879 ]
  %748 = load i32, ptr @ira_copies_num, align 4, !tbaa !102
  %749 = icmp slt i32 %747, %748
  br i1 %749, label %750, label %776

750:                                              ; preds = %745
  %751 = load ptr, ptr @ira_copies, align 8, !tbaa !87
  %752 = sext i32 %747 to i64
  %753 = sext i32 %748 to i64
  %754 = getelementptr inbounds ptr, ptr %751, i64 %752
  %755 = load ptr, ptr %754, align 8, !tbaa !87
  %756 = icmp eq ptr %755, null
  br i1 %756, label %769, label %763

757:                                              ; preds = %769
  %758 = getelementptr inbounds ptr, ptr %751, i64 %771
  %759 = load ptr, ptr %758, align 8, !tbaa !87
  %760 = icmp eq ptr %759, null
  br i1 %760, label %769, label %761, !llvm.loop !211

761:                                              ; preds = %757
  %762 = icmp slt i64 %771, %753
  br label %763

763:                                              ; preds = %761, %750
  %764 = phi i64 [ %752, %750 ], [ %771, %761 ]
  %765 = phi i1 [ %749, %750 ], [ %762, %761 ]
  %766 = phi ptr [ %755, %750 ], [ %759, %761 ]
  %767 = trunc i64 %764 to i32
  %768 = add nsw i32 %767, 1
  br label %776

769:                                              ; preds = %750, %757
  %770 = phi i64 [ %771, %757 ], [ %752, %750 ]
  %771 = add nsw i64 %770, 1
  %772 = trunc i64 %771 to i32
  %773 = icmp eq i32 %748, %772
  br i1 %773, label %774, label %757, !llvm.loop !211

774:                                              ; preds = %769
  %775 = icmp slt i64 %771, %753
  br label %776

776:                                              ; preds = %774, %745, %763
  %777 = phi i1 [ %765, %763 ], [ %749, %745 ], [ %775, %774 ]
  %778 = phi ptr [ %766, %763 ], [ %746, %745 ], [ %746, %774 ]
  %779 = phi i32 [ %768, %763 ], [ %747, %745 ], [ %747, %774 ]
  br i1 %777, label %780, label %893

780:                                              ; preds = %776
  %781 = getelementptr inbounds %struct.ira_allocno_copy, ptr %778, i64 0, i32 1
  %782 = load ptr, ptr %781, align 8, !tbaa !184
  %783 = getelementptr inbounds %struct.ira_allocno, ptr %782, i64 0, i32 17
  %784 = load ptr, ptr %783, align 8, !tbaa !146
  %785 = icmp eq ptr %784, null
  br i1 %785, label %786, label %792

786:                                              ; preds = %780
  %787 = getelementptr inbounds %struct.ira_allocno_copy, ptr %778, i64 0, i32 2
  %788 = load ptr, ptr %787, align 8, !tbaa !185
  %789 = getelementptr inbounds %struct.ira_allocno, ptr %788, i64 0, i32 17
  %790 = load ptr, ptr %789, align 8, !tbaa !146
  %791 = icmp eq ptr %790, null
  br i1 %791, label %820, label %792

792:                                              ; preds = %786, %780
  %793 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !102
  %794 = icmp sgt i32 %793, 4
  %795 = load ptr, ptr @ira_dump_file, align 8
  %796 = icmp ne ptr %795, null
  %797 = select i1 %794, i1 %796, i1 false
  br i1 %797, label %798, label %818

798:                                              ; preds = %792
  %799 = load i32, ptr %778, align 8, !tbaa !182
  %800 = select i1 %785, i32 97, i32 99
  %801 = load i32, ptr %782, align 8, !tbaa !114
  %802 = getelementptr inbounds %struct.ira_allocno, ptr %782, i64 0, i32 4
  %803 = load ptr, ptr %802, align 8, !tbaa !235
  %804 = getelementptr inbounds %struct.rtx_def, ptr %803, i64 0, i32 1
  %805 = load i32, ptr %804, align 8, !tbaa !98
  %806 = getelementptr inbounds %struct.ira_allocno_copy, ptr %778, i64 0, i32 2
  %807 = load ptr, ptr %806, align 8, !tbaa !185
  %808 = getelementptr inbounds %struct.ira_allocno, ptr %807, i64 0, i32 17
  %809 = load ptr, ptr %808, align 8, !tbaa !146
  %810 = icmp eq ptr %809, null
  %811 = select i1 %810, i32 97, i32 99
  %812 = load i32, ptr %807, align 8, !tbaa !114
  %813 = getelementptr inbounds %struct.ira_allocno, ptr %807, i64 0, i32 4
  %814 = load ptr, ptr %813, align 8, !tbaa !235
  %815 = getelementptr inbounds %struct.rtx_def, ptr %814, i64 0, i32 1
  %816 = load i32, ptr %815, align 8, !tbaa !98
  %817 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %795, ptr noundef nonnull @.str.6, i32 noundef %799, i32 noundef %800, i32 noundef %801, i32 noundef %805, i32 noundef %811, i32 noundef %812, i32 noundef %816)
  br label %818

818:                                              ; preds = %798, %792
  %819 = getelementptr inbounds %struct.ira_allocno_copy, ptr %778, i64 0, i32 10
  store ptr null, ptr %819, align 8, !tbaa !189
  br label %879

820:                                              ; preds = %786
  %821 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !87
  %822 = getelementptr inbounds %struct.ira_allocno, ptr %782, i64 0, i32 4
  %823 = load ptr, ptr %822, align 8, !tbaa !235
  %824 = getelementptr inbounds %struct.rtx_def, ptr %823, i64 0, i32 1
  %825 = load i32, ptr %824, align 8, !tbaa !98
  %826 = zext i32 %825 to i64
  %827 = getelementptr inbounds ptr, ptr %821, i64 %826
  %828 = load ptr, ptr %827, align 8, !tbaa !87
  %829 = getelementptr inbounds %struct.ira_allocno, ptr %788, i64 0, i32 4
  %830 = load ptr, ptr %829, align 8, !tbaa !235
  %831 = getelementptr inbounds %struct.rtx_def, ptr %830, i64 0, i32 1
  %832 = load i32, ptr %831, align 8, !tbaa !98
  %833 = zext i32 %832 to i64
  %834 = getelementptr inbounds ptr, ptr %821, i64 %833
  %835 = load ptr, ptr %834, align 8, !tbaa !87
  %836 = getelementptr inbounds %struct.ira_allocno_copy, ptr %778, i64 0, i32 10
  %837 = load ptr, ptr %836, align 8, !tbaa !189
  %838 = icmp eq ptr %837, null
  br i1 %838, label %874, label %839

839:                                              ; preds = %820
  %840 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %837, i64 0, i32 9
  %841 = load ptr, ptr %840, align 8, !tbaa !112
  %842 = getelementptr inbounds %struct.ira_allocno, ptr %782, i64 0, i32 1
  %843 = load i32, ptr %842, align 4, !tbaa !107
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds ptr, ptr %841, i64 %844
  %846 = load ptr, ptr %845, align 8, !tbaa !87
  %847 = getelementptr inbounds %struct.ira_allocno, ptr %828, i64 0, i32 4
  %848 = load ptr, ptr %847, align 8, !tbaa !235
  %849 = getelementptr inbounds %struct.rtx_def, ptr %848, i64 0, i32 1
  %850 = load i32, ptr %849, align 8, !tbaa !98
  %851 = getelementptr inbounds %struct.ira_allocno, ptr %846, i64 0, i32 4
  %852 = load ptr, ptr %851, align 8, !tbaa !235
  %853 = getelementptr inbounds %struct.rtx_def, ptr %852, i64 0, i32 1
  %854 = load i32, ptr %853, align 8, !tbaa !98
  %855 = icmp eq i32 %850, %854
  br i1 %855, label %856, label %871

856:                                              ; preds = %839
  %857 = getelementptr inbounds %struct.ira_allocno, ptr %788, i64 0, i32 1
  %858 = load i32, ptr %857, align 4, !tbaa !107
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds ptr, ptr %841, i64 %859
  %861 = load ptr, ptr %860, align 8, !tbaa !87
  %862 = getelementptr inbounds %struct.ira_allocno, ptr %835, i64 0, i32 4
  %863 = load ptr, ptr %862, align 8, !tbaa !235
  %864 = getelementptr inbounds %struct.rtx_def, ptr %863, i64 0, i32 1
  %865 = load i32, ptr %864, align 8, !tbaa !98
  %866 = getelementptr inbounds %struct.ira_allocno, ptr %861, i64 0, i32 4
  %867 = load ptr, ptr %866, align 8, !tbaa !235
  %868 = getelementptr inbounds %struct.rtx_def, ptr %867, i64 0, i32 1
  %869 = load i32, ptr %868, align 8, !tbaa !98
  %870 = icmp eq i32 %865, %869
  br label %871

871:                                              ; preds = %856, %839
  %872 = phi i1 [ false, %839 ], [ %870, %856 ]
  %873 = zext i1 %872 to i8
  br label %874

874:                                              ; preds = %820, %871
  %875 = phi i8 [ %873, %871 ], [ 1, %820 ]
  %876 = icmp eq i8 %875, 0
  br i1 %876, label %880, label %877

877:                                              ; preds = %874
  %878 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !87
  store ptr %878, ptr %836, align 8, !tbaa !189
  store ptr %828, ptr %781, align 8, !tbaa !184
  store ptr %835, ptr %787, align 8, !tbaa !185
  br label %879

879:                                              ; preds = %877, %886, %880, %818
  br label %745, !llvm.loop !264

880:                                              ; preds = %874
  store ptr null, ptr %836, align 8, !tbaa !189
  %881 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !102
  %882 = icmp sgt i32 %881, 4
  %883 = load ptr, ptr @ira_dump_file, align 8
  %884 = icmp ne ptr %883, null
  %885 = select i1 %882, i1 %884, i1 false
  br i1 %885, label %886, label %879

886:                                              ; preds = %880
  %887 = load i32, ptr %778, align 8, !tbaa !182
  %888 = load i32, ptr %782, align 8, !tbaa !114
  %889 = load i32, ptr %824, align 8, !tbaa !98
  %890 = load i32, ptr %788, align 8, !tbaa !114
  %891 = load i32, ptr %831, align 8, !tbaa !98
  %892 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %883, ptr noundef nonnull @.str.7, i32 noundef %887, i32 noundef %888, i32 noundef %889, i32 noundef %890, i32 noundef %891)
  br label %879

893:                                              ; preds = %776, %968
  %894 = phi ptr [ %926, %968 ], [ %744, %776 ]
  %895 = phi i32 [ %927, %968 ], [ 0, %776 ]
  %896 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %897 = icmp slt i32 %895, %896
  br i1 %897, label %898, label %924

898:                                              ; preds = %893
  %899 = load ptr, ptr @ira_allocnos, align 8, !tbaa !87
  %900 = sext i32 %895 to i64
  %901 = sext i32 %896 to i64
  %902 = getelementptr inbounds ptr, ptr %899, i64 %900
  %903 = load ptr, ptr %902, align 8, !tbaa !87
  %904 = icmp eq ptr %903, null
  br i1 %904, label %917, label %911

905:                                              ; preds = %917
  %906 = getelementptr inbounds ptr, ptr %899, i64 %919
  %907 = load ptr, ptr %906, align 8, !tbaa !87
  %908 = icmp eq ptr %907, null
  br i1 %908, label %917, label %909, !llvm.loop !231

909:                                              ; preds = %905
  %910 = icmp slt i64 %919, %901
  br label %911

911:                                              ; preds = %909, %898
  %912 = phi i64 [ %900, %898 ], [ %919, %909 ]
  %913 = phi i1 [ %897, %898 ], [ %910, %909 ]
  %914 = phi ptr [ %903, %898 ], [ %907, %909 ]
  %915 = trunc i64 %912 to i32
  %916 = add nsw i32 %915, 1
  br label %924

917:                                              ; preds = %898, %905
  %918 = phi i64 [ %919, %905 ], [ %900, %898 ]
  %919 = add nsw i64 %918, 1
  %920 = trunc i64 %919 to i32
  %921 = icmp eq i32 %896, %920
  br i1 %921, label %922, label %905, !llvm.loop !231

922:                                              ; preds = %917
  %923 = icmp slt i64 %919, %901
  br label %924

924:                                              ; preds = %922, %893, %911
  %925 = phi i1 [ %913, %911 ], [ %897, %893 ], [ %923, %922 ]
  %926 = phi ptr [ %914, %911 ], [ %894, %893 ], [ %894, %922 ]
  %927 = phi i32 [ %916, %911 ], [ %895, %893 ], [ %895, %922 ]
  br i1 %925, label %928, label %970

928:                                              ; preds = %924
  %929 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !87
  %930 = getelementptr inbounds %struct.ira_allocno, ptr %926, i64 0, i32 4
  %931 = load ptr, ptr %930, align 8, !tbaa !235
  %932 = getelementptr inbounds %struct.rtx_def, ptr %931, i64 0, i32 1
  %933 = load i32, ptr %932, align 8, !tbaa !98
  %934 = zext i32 %933 to i64
  %935 = getelementptr inbounds ptr, ptr %929, i64 %934
  %936 = load ptr, ptr %935, align 8, !tbaa !87
  %937 = icmp eq ptr %926, %936
  br i1 %937, label %938, label %942

938:                                              ; preds = %928
  %939 = getelementptr inbounds %struct.ira_allocno, ptr %926, i64 0, i32 17
  %940 = load ptr, ptr %939, align 8, !tbaa !146
  %941 = icmp eq ptr %940, null
  br i1 %941, label %952, label %942

942:                                              ; preds = %938, %928
  %943 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !102
  %944 = icmp sgt i32 %943, 4
  %945 = load ptr, ptr @ira_dump_file, align 8
  %946 = icmp ne ptr %945, null
  %947 = select i1 %944, i1 %946, i1 false
  br i1 %947, label %948, label %951

948:                                              ; preds = %942
  %949 = load i32, ptr %926, align 8, !tbaa !114
  %950 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %945, ptr noundef nonnull @.str.8, i32 noundef %949, i32 noundef %933)
  br label %951

951:                                              ; preds = %948, %942
  tail call fastcc void @finish_allocno(ptr noundef %926)
  br label %968

952:                                              ; preds = %938
  %953 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !87
  %954 = getelementptr inbounds %struct.ira_allocno, ptr %926, i64 0, i32 6
  store ptr %953, ptr %954, align 8, !tbaa !109
  %955 = load i32, ptr %932, align 8, !tbaa !98
  %956 = getelementptr inbounds %struct.ira_allocno, ptr %926, i64 0, i32 1
  store i32 %955, ptr %956, align 4, !tbaa !107
  %957 = getelementptr inbounds %struct.ira_allocno, ptr %926, i64 0, i32 16
  store ptr null, ptr %957, align 8, !tbaa !233
  %958 = getelementptr inbounds %struct.ira_allocno, ptr %926, i64 0, i32 12
  %959 = load i32, ptr %958, align 4, !tbaa !243
  %960 = getelementptr inbounds %struct.ira_allocno, ptr %926, i64 0, i32 13
  store i32 %959, ptr %960, align 8, !tbaa !265
  %961 = getelementptr inbounds %struct.ira_allocno, ptr %926, i64 0, i32 10
  %962 = load i32, ptr %961, align 4, !tbaa !242
  %963 = getelementptr inbounds %struct.ira_allocno, ptr %926, i64 0, i32 11
  store i32 %962, ptr %963, align 8, !tbaa !266
  %964 = getelementptr inbounds %struct.ira_allocno, ptr %926, i64 0, i32 31
  %965 = load i16, ptr %964, align 4
  %966 = and i16 %965, 256
  %967 = icmp eq i16 %966, 0
  br i1 %967, label %969, label %968

968:                                              ; preds = %952, %969, %951
  br label %893, !llvm.loop !267

969:                                              ; preds = %952
  tail call void @ira_free_allocno_updated_costs(ptr noundef %926)
  br label %968

970:                                              ; preds = %924, %1032
  %971 = phi ptr [ %1003, %1032 ], [ %778, %924 ]
  %972 = phi i32 [ %1004, %1032 ], [ 0, %924 ]
  %973 = load i32, ptr @ira_copies_num, align 4, !tbaa !102
  %974 = icmp slt i32 %972, %973
  br i1 %974, label %975, label %1001

975:                                              ; preds = %970
  %976 = load ptr, ptr @ira_copies, align 8, !tbaa !87
  %977 = sext i32 %972 to i64
  %978 = sext i32 %973 to i64
  %979 = getelementptr inbounds ptr, ptr %976, i64 %977
  %980 = load ptr, ptr %979, align 8, !tbaa !87
  %981 = icmp eq ptr %980, null
  br i1 %981, label %994, label %988

982:                                              ; preds = %994
  %983 = getelementptr inbounds ptr, ptr %976, i64 %996
  %984 = load ptr, ptr %983, align 8, !tbaa !87
  %985 = icmp eq ptr %984, null
  br i1 %985, label %994, label %986, !llvm.loop !211

986:                                              ; preds = %982
  %987 = icmp slt i64 %996, %978
  br label %988

988:                                              ; preds = %986, %975
  %989 = phi i64 [ %977, %975 ], [ %996, %986 ]
  %990 = phi i1 [ %974, %975 ], [ %987, %986 ]
  %991 = phi ptr [ %980, %975 ], [ %984, %986 ]
  %992 = trunc i64 %989 to i32
  %993 = add nsw i32 %992, 1
  br label %1001

994:                                              ; preds = %975, %982
  %995 = phi i64 [ %996, %982 ], [ %977, %975 ]
  %996 = add nsw i64 %995, 1
  %997 = trunc i64 %996 to i32
  %998 = icmp eq i32 %973, %997
  br i1 %998, label %999, label %982, !llvm.loop !211

999:                                              ; preds = %994
  %1000 = icmp slt i64 %996, %978
  br label %1001

1001:                                             ; preds = %999, %970, %988
  %1002 = phi i1 [ %990, %988 ], [ %974, %970 ], [ %1000, %999 ]
  %1003 = phi ptr [ %991, %988 ], [ %971, %970 ], [ %971, %999 ]
  %1004 = phi i32 [ %993, %988 ], [ %972, %970 ], [ %972, %999 ]
  br i1 %1002, label %1005, label %1033

1005:                                             ; preds = %1001
  %1006 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1003, i64 0, i32 10
  %1007 = load ptr, ptr %1006, align 8, !tbaa !189
  %1008 = icmp eq ptr %1007, null
  br i1 %1008, label %1009, label %1015

1009:                                             ; preds = %1005
  %1010 = load ptr, ptr @ira_copies, align 8, !tbaa !87
  %1011 = load i32, ptr %1003, align 8, !tbaa !182
  %1012 = sext i32 %1011 to i64
  %1013 = getelementptr inbounds ptr, ptr %1010, i64 %1012
  store ptr null, ptr %1013, align 8, !tbaa !87
  %1014 = load ptr, ptr @copy_pool, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %1014, ptr noundef nonnull %1003) #30
  br label %1032

1015:                                             ; preds = %1005
  tail call void @ira_add_allocno_copy_to_list(ptr noundef %1003)
  %1016 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1003, i64 0, i32 1
  %1017 = load ptr, ptr %1016, align 8, !tbaa !184
  %1018 = load i32, ptr %1017, align 8, !tbaa !114
  %1019 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1003, i64 0, i32 2
  %1020 = load ptr, ptr %1019, align 8, !tbaa !185
  %1021 = load i32, ptr %1020, align 8, !tbaa !114
  %1022 = icmp sgt i32 %1018, %1021
  br i1 %1022, label %1023, label %1032

1023:                                             ; preds = %1015
  store ptr %1020, ptr %1016, align 8, !tbaa !184
  store ptr %1017, ptr %1019, align 8, !tbaa !185
  %1024 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1003, i64 0, i32 6
  %1025 = load ptr, ptr %1024, align 8, !tbaa !194
  %1026 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1003, i64 0, i32 8
  %1027 = load ptr, ptr %1026, align 8, !tbaa !195
  store ptr %1027, ptr %1024, align 8, !tbaa !194
  store ptr %1025, ptr %1026, align 8, !tbaa !195
  %1028 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1003, i64 0, i32 7
  %1029 = load ptr, ptr %1028, align 8, !tbaa !196
  %1030 = getelementptr inbounds %struct.ira_allocno_copy, ptr %1003, i64 0, i32 9
  %1031 = load ptr, ptr %1030, align 8, !tbaa !199
  store ptr %1031, ptr %1028, align 8, !tbaa !196
  store ptr %1029, ptr %1030, align 8, !tbaa !199
  br label %1032

1032:                                             ; preds = %1023, %1015, %1009
  br label %970, !llvm.loop !268

1033:                                             ; preds = %1001
  %1034 = tail call i32 @max_reg_num() #30
  %1035 = sext i32 %1034 to i64
  %1036 = shl nsw i64 %1035, 3
  br label %1037

1037:                                             ; preds = %1061, %1033
  %1038 = phi i32 [ 0, %1033 ], [ %1062, %1061 ]
  %1039 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %1040 = icmp eq ptr %1039, null
  br i1 %1040, label %1045, label %1041

1041:                                             ; preds = %1037
  %1042 = load i32, ptr %1039, align 8, !tbaa !269
  %1043 = icmp ugt i32 %1042, %1038
  %1044 = zext i1 %1043 to i32
  br label %1045

1045:                                             ; preds = %1041, %1037
  %1046 = phi i32 [ 0, %1037 ], [ %1044, %1041 ]
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1063, label %1048

1048:                                             ; preds = %1045
  %1049 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %1050 = zext i32 %1038 to i64
  %1051 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1049, i64 %1050, i32 9
  %1052 = load ptr, ptr %1051, align 8, !tbaa !112
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %1061, label %1054

1054:                                             ; preds = %1048
  tail call void @ira_free(ptr noundef nonnull %1052) #30
  %1055 = tail call ptr @ira_allocate(i64 noundef %1036) #30
  %1056 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %1057 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1056, i64 %1050, i32 9
  store ptr %1055, ptr %1057, align 8, !tbaa !112
  %1058 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %1059 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1058, i64 %1050, i32 9
  %1060 = load ptr, ptr %1059, align 8, !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr align 8 %1060, i8 0, i64 %1036, i1 false)
  br label %1061

1061:                                             ; preds = %1054, %1048
  %1062 = add i32 %1038, 1
  br label %1037, !llvm.loop !271

1063:                                             ; preds = %1045
  %1064 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  tail call void @ira_free(ptr noundef %1064) #30
  %1065 = sext i32 %1034 to i64
  %1066 = shl nsw i64 %1065, 3
  %1067 = tail call ptr @ira_allocate(i64 noundef %1066) #30
  store ptr %1067, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr align 8 %1067, i8 0, i64 %1066, i1 false)
  %1068 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %1069 = sext i32 %1068 to i64
  br label %1070

1070:                                             ; preds = %1122, %1063
  %1071 = phi ptr [ undef, %1063 ], [ %1101, %1122 ]
  %1072 = phi i32 [ 0, %1063 ], [ %1102, %1122 ]
  %1073 = icmp slt i32 %1072, %1068
  br i1 %1073, label %1074, label %1099

1074:                                             ; preds = %1070
  %1075 = load ptr, ptr @ira_allocnos, align 8, !tbaa !87
  %1076 = sext i32 %1072 to i64
  %1077 = getelementptr inbounds ptr, ptr %1075, i64 %1076
  %1078 = load ptr, ptr %1077, align 8, !tbaa !87
  %1079 = icmp eq ptr %1078, null
  br i1 %1079, label %1092, label %1086

1080:                                             ; preds = %1092
  %1081 = getelementptr inbounds ptr, ptr %1075, i64 %1094
  %1082 = load ptr, ptr %1081, align 8, !tbaa !87
  %1083 = icmp eq ptr %1082, null
  br i1 %1083, label %1092, label %1084, !llvm.loop !231

1084:                                             ; preds = %1080
  %1085 = icmp slt i64 %1094, %1069
  br label %1086

1086:                                             ; preds = %1084, %1074
  %1087 = phi i64 [ %1076, %1074 ], [ %1094, %1084 ]
  %1088 = phi i1 [ %1073, %1074 ], [ %1085, %1084 ]
  %1089 = phi ptr [ %1078, %1074 ], [ %1082, %1084 ]
  %1090 = trunc i64 %1087 to i32
  %1091 = add nsw i32 %1090, 1
  br label %1099

1092:                                             ; preds = %1074, %1080
  %1093 = phi i64 [ %1094, %1080 ], [ %1076, %1074 ]
  %1094 = add nsw i64 %1093, 1
  %1095 = trunc i64 %1094 to i32
  %1096 = icmp eq i32 %1068, %1095
  br i1 %1096, label %1097, label %1080, !llvm.loop !231

1097:                                             ; preds = %1092
  %1098 = icmp slt i64 %1094, %1069
  br label %1099

1099:                                             ; preds = %1097, %1070, %1086
  %1100 = phi i1 [ %1088, %1086 ], [ %1073, %1070 ], [ %1098, %1097 ]
  %1101 = phi ptr [ %1089, %1086 ], [ %1071, %1070 ], [ %1071, %1097 ]
  %1102 = phi i32 [ %1091, %1086 ], [ %1072, %1070 ], [ %1072, %1097 ]
  br i1 %1100, label %1103, label %1124

1103:                                             ; preds = %1099
  %1104 = getelementptr inbounds %struct.ira_allocno, ptr %1101, i64 0, i32 17
  %1105 = load ptr, ptr %1104, align 8, !tbaa !146
  %1106 = icmp eq ptr %1105, null
  br i1 %1106, label %1107, label %1122

1107:                                             ; preds = %1103
  %1108 = getelementptr inbounds %struct.ira_allocno, ptr %1101, i64 0, i32 1
  %1109 = load i32, ptr %1108, align 4, !tbaa !107
  %1110 = getelementptr inbounds %struct.ira_allocno, ptr %1101, i64 0, i32 6
  %1111 = load ptr, ptr %1110, align 8, !tbaa !109
  %1112 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  %1113 = sext i32 %1109 to i64
  %1114 = getelementptr inbounds ptr, ptr %1112, i64 %1113
  %1115 = load ptr, ptr %1114, align 8, !tbaa !87
  %1116 = getelementptr inbounds %struct.ira_allocno, ptr %1101, i64 0, i32 5
  store ptr %1115, ptr %1116, align 8, !tbaa !111
  store ptr %1101, ptr %1114, align 8, !tbaa !87
  %1117 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1111, i64 0, i32 9
  %1118 = load ptr, ptr %1117, align 8, !tbaa !112
  %1119 = getelementptr inbounds ptr, ptr %1118, i64 %1113
  %1120 = load ptr, ptr %1119, align 8, !tbaa !87
  %1121 = icmp eq ptr %1120, null
  br i1 %1121, label %1123, label %1122

1122:                                             ; preds = %1107, %1123, %1103
  br label %1070, !llvm.loop !272

1123:                                             ; preds = %1107
  store ptr %1101, ptr %1119, align 8, !tbaa !87
  br label %1122

1124:                                             ; preds = %1099
  %1125 = load i32, ptr @ira_max_point, align 4, !tbaa !102
  %1126 = icmp eq i32 %1125, %1
  br i1 %1126, label %1128, label %1127

1127:                                             ; preds = %1124
  tail call void @ira_compress_allocno_live_ranges() #30
  br label %1128

1128:                                             ; preds = %1127, %1124
  %1129 = load ptr, ptr @regno_top_level_allocno_map, align 8, !tbaa !87
  tail call void @ira_free(ptr noundef %1129) #30
  ret void
}

declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

declare void @ira_print_live_range_list(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ira_rebuild_start_finish_chains() local_unnamed_addr #3

declare ptr @sparseset_alloc(i32 noundef) local_unnamed_addr #3

declare void @sparseset_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @finish_allocno(ptr noundef %0) unnamed_addr #9 !prof !86 !PGOFuncName !273 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !141
  %4 = load ptr, ptr @ira_allocnos, align 8, !tbaa !87
  %5 = load i32, ptr %0, align 8, !tbaa !114
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  store ptr null, ptr %7, align 8, !tbaa !87
  %8 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !87
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 24
  %10 = load i32, ptr %9, align 8, !tbaa !136
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  store ptr null, ptr %12, align 8, !tbaa !87
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !116
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !127

16:                                               ; preds = %1
  tail call void @ira_free(ptr noundef nonnull %14) #30
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 33
  %19 = load ptr, ptr %18, align 8, !tbaa !236
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !274

21:                                               ; preds = %17
  %22 = zext i32 %3 to i64
  %23 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %24, ptr noundef nonnull %19) #30
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 35
  %27 = load ptr, ptr %26, align 8, !tbaa !237
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29, !prof !275

29:                                               ; preds = %25
  %30 = zext i32 %3 to i64
  %31 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %32, ptr noundef nonnull %27) #30
  br label %33

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 34
  %35 = load ptr, ptr %34, align 8, !tbaa !178
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37, !prof !110

37:                                               ; preds = %33
  %38 = zext i32 %3 to i64
  %39 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %40, ptr noundef nonnull %35) #30
  br label %41

41:                                               ; preds = %37, %33
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 36
  %43 = load ptr, ptr %42, align 8, !tbaa !180
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45, !prof !110

45:                                               ; preds = %41
  %46 = zext i32 %3 to i64
  %47 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %48, ptr noundef nonnull %43) #30
  br label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 20
  %51 = load ptr, ptr %50, align 8, !tbaa !133
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53, !prof !276

53:                                               ; preds = %49, %53
  %54 = phi ptr [ %56, %53 ], [ %51, %49 ]
  %55 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !152
  %57 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %57, ptr noundef nonnull %54) #30
  %58 = icmp eq ptr %56, null
  br i1 %58, label %59, label %53, !prof !277, !llvm.loop !176

59:                                               ; preds = %53, %49
  %60 = load ptr, ptr @allocno_pool, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %60, ptr noundef nonnull %0) #30
  ret void
}

declare void @ira_compress_allocno_live_ranges() local_unnamed_addr #3

declare void @ira_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ira_build(i8 noundef zeroext %0) local_unnamed_addr #14 !prof !278 {
  %2 = alloca [27 x %struct.bitmap_head_def], align 16
  tail call void @df_analyze() #30
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !102
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %20, !prof !279

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %16, %5 ], [ 0, %1 ]
  %7 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !102
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !102
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.22, i64 noundef %13, i64 noundef 100) #30
  %15 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %9
  store ptr %14, ptr %15, align 8, !tbaa !87
  %16 = add nuw nsw i64 %6, 1
  %17 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !102
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %5, label %20, !prof !280, !llvm.loop !281

20:                                               ; preds = %5, %1
  %21 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.23, i64 noundef 40, i64 noundef 100) #30
  store ptr %21, ptr @allocno_live_range_pool, align 8, !tbaa !87
  %22 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.24, i64 noundef 248, i64 noundef 100) #30
  store ptr %22, ptr @allocno_pool, align 8, !tbaa !87
  %23 = tail call i32 @max_reg_num() #30
  %24 = shl nsw i32 %23, 1
  %25 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %24) #30
  store ptr %25, ptr @allocno_vec, align 8, !tbaa !87
  store ptr null, ptr @ira_allocnos, align 8, !tbaa !87
  store i32 0, ptr @ira_allocnos_num, align 4, !tbaa !102
  %26 = tail call i32 @max_reg_num() #30
  %27 = shl nsw i32 %26, 1
  %28 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %27) #30
  store ptr %28, ptr @ira_conflict_id_allocno_map_vec, align 8, !tbaa !87
  store ptr null, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !87
  %29 = tail call i32 @max_reg_num() #30
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 3
  %32 = tail call ptr @ira_allocate(i64 noundef %31) #30
  store ptr %32, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  %33 = tail call i32 @max_reg_num() #30
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %32, i8 0, i64 %35, i1 false), !prof !282
  %36 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.25, i64 noundef 80, i64 noundef 100) #30
  store ptr %36, ptr @copy_pool, align 8, !tbaa !87
  %37 = tail call i32 @get_max_uid() #30
  %38 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %37) #30
  store ptr %38, ptr @copy_vec, align 8, !tbaa !87
  store ptr null, ptr @ira_copies, align 8, !tbaa !87
  store i32 0, ptr @ira_copies_num, align 4, !tbaa !102
  %39 = load ptr, ptr @cfun, align 8, !tbaa !87
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !283
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !285
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %44, 216
  %46 = tail call ptr @ira_allocate(i64 noundef %45) #30
  store ptr %46, ptr @ira_bb_nodes, align 8, !tbaa !87
  %47 = load ptr, ptr @cfun, align 8, !tbaa !87
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !283
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !285
  store i32 %51, ptr @last_basic_block_before_change, align 4, !tbaa !102
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %72, label %53, !prof !287

53:                                               ; preds = %20, %53
  %54 = phi i64 [ %64, %53 ], [ 0, %20 ]
  %55 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !87
  %56 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %55, i64 %54, i32 9
  store ptr null, ptr %56, align 8, !tbaa !112
  %57 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !87
  %58 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %57, i64 %54, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %58, i8 0, i64 116, i1 false)
  %59 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %57, i64 %54, i32 14
  store ptr null, ptr %59, align 8, !tbaa !288
  %60 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !87
  %61 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %60, i64 %54, i32 13
  store ptr null, ptr %61, align 8, !tbaa !289
  %62 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !87
  %63 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %62, i64 %54, i32 15
  store ptr null, ptr %63, align 8, !tbaa !290
  %64 = add nuw nsw i64 %54, 1
  %65 = load ptr, ptr @cfun, align 8, !tbaa !87
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !283
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 5
  %69 = load i32, ptr %68, align 8, !tbaa !285
  %70 = zext i32 %69 to i64
  %71 = icmp ult i64 %64, %70
  br i1 %71, label %53, label %72, !prof !291, !llvm.loop !292

72:                                               ; preds = %53, %20
  %73 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75, !prof !293

75:                                               ; preds = %72
  %76 = load i32, ptr %73, align 8, !tbaa !269
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi i32 [ %76, %75 ], [ 0, %72 ]
  %79 = zext i32 %78 to i64
  %80 = mul nuw nsw i64 %79, 216
  %81 = tail call ptr @ira_allocate(i64 noundef %80) #30
  store ptr %81, ptr @ira_loop_nodes, align 8, !tbaa !87
  %82 = tail call i32 @max_reg_num() #30
  br label %83

83:                                               ; preds = %234, %77
  %84 = phi i32 [ 0, %77 ], [ %235, %234 ]
  %85 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87, !prof !294

87:                                               ; preds = %83
  %88 = load i32, ptr %85, align 8, !tbaa !269
  %89 = icmp ugt i32 %88, %84
  br i1 %89, label %90, label %94, !prof !295

90:                                               ; preds = %87
  %91 = zext i32 %84 to i64
  %92 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %85, i64 0, i32 2, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !87
  br label %94

94:                                               ; preds = %90, %87, %83
  %95 = phi ptr [ %93, %90 ], [ null, %87 ], [ null, %83 ]
  %96 = phi i1 [ false, %90 ], [ true, %87 ], [ true, %83 ]
  br i1 %96, label %236, label %97, !prof !295

97:                                               ; preds = %94
  %98 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 3), align 8, !tbaa !296
  %99 = icmp eq ptr %95, %98
  br i1 %99, label %210, label %100, !prof !298

100:                                              ; preds = %97
  %101 = icmp eq i8 %0, 0
  %102 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %103 = zext i32 %84 to i64
  %104 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %102, i64 %103, i32 9
  store ptr null, ptr %104, align 8, !tbaa !112
  br i1 %101, label %234, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.loop, ptr %95, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !299
  %108 = icmp eq ptr %107, null
  %109 = getelementptr inbounds %struct.loop, ptr %95, i64 0, i32 3
  br label %110

110:                                              ; preds = %162, %105
  %111 = phi i32 [ 0, %105 ], [ %163, %162 ]
  br i1 %108, label %112, label %113

112:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 687, ptr noundef nonnull @.str.12) #30
  br label %113

113:                                              ; preds = %112, %110
  %114 = load ptr, ptr %107, align 8, !tbaa !87
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr %114, align 8, !tbaa !303
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi i32 [ %117, %116 ], [ 0, %113 ]
  %120 = icmp eq i32 %119, %111
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = zext i32 %111 to i64
  %123 = getelementptr inbounds %struct.VEC_edge_base, ptr %114, i64 0, i32 2, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !87
  br label %125

125:                                              ; preds = %121, %118
  %126 = phi ptr [ %124, %121 ], [ null, %118 ]
  br i1 %120, label %164, label %127

127:                                              ; preds = %125
  %128 = load ptr, ptr %126, align 8, !tbaa !305
  %129 = load ptr, ptr %109, align 8, !tbaa !307
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %155, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.edge_def, ptr %126, i64 0, i32 7
  %133 = load i32, ptr %132, align 8, !tbaa !308
  %134 = and i32 %133, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %155, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !309
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = load i32, ptr %138, align 8, !tbaa !303
  br label %142

142:                                              ; preds = %140, %136
  %143 = phi i32 [ %141, %140 ], [ 0, %136 ]
  %144 = icmp ugt i32 %143, 1
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.edge_def, ptr %126, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !311
  %148 = load ptr, ptr %147, align 8, !tbaa !312
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = load i32, ptr %148, align 8, !tbaa !303
  br label %152

152:                                              ; preds = %150, %145
  %153 = phi i32 [ %151, %150 ], [ 0, %145 ]
  %154 = icmp ugt i32 %153, 1
  br i1 %154, label %234, label %155

155:                                              ; preds = %152, %142, %131, %127
  br i1 %115, label %158, label %156

156:                                              ; preds = %155
  %157 = load i32, ptr %114, align 8, !tbaa !303
  br label %158

158:                                              ; preds = %156, %155
  %159 = phi i32 [ %157, %156 ], [ 0, %155 ]
  %160 = icmp ult i32 %111, %159
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 738, ptr noundef nonnull @.str.12) #30
  br label %162

162:                                              ; preds = %161, %158
  %163 = add i32 %111, 1
  br label %110, !llvm.loop !313

164:                                              ; preds = %125
  %165 = tail call ptr @get_loop_exit_edges(ptr noundef %95) #30
  %166 = icmp eq ptr %165, null
  br label %167

167:                                              ; preds = %204, %164
  %168 = phi i32 [ 0, %164 ], [ %205, %204 ]
  br i1 %166, label %176, label %169

169:                                              ; preds = %167
  %170 = load i32, ptr %165, align 8, !tbaa !303
  %171 = icmp ugt i32 %170, %168
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = zext i32 %168 to i64
  %174 = getelementptr inbounds %struct.VEC_edge_base, ptr %165, i64 0, i32 2, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !87
  br label %176

176:                                              ; preds = %172, %169, %167
  %177 = phi ptr [ %175, %172 ], [ null, %169 ], [ null, %167 ]
  %178 = phi i1 [ false, %172 ], [ true, %169 ], [ true, %167 ]
  br i1 %178, label %208, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.edge_def, ptr %177, i64 0, i32 7
  %181 = load i32, ptr %180, align 8, !tbaa !308
  %182 = and i32 %181, 2
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %204, label %184

184:                                              ; preds = %179
  %185 = load ptr, ptr %177, align 8, !tbaa !305
  %186 = getelementptr inbounds %struct.basic_block_def, ptr %185, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !309
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %184
  %190 = load i32, ptr %187, align 8, !tbaa !303
  br label %191

191:                                              ; preds = %189, %184
  %192 = phi i32 [ %190, %189 ], [ 0, %184 ]
  %193 = icmp ugt i32 %192, 1
  br i1 %193, label %194, label %204

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.edge_def, ptr %177, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !311
  %197 = load ptr, ptr %196, align 8, !tbaa !312
  %198 = icmp eq ptr %197, null
  br i1 %198, label %201, label %199

199:                                              ; preds = %194
  %200 = load i32, ptr %197, align 8, !tbaa !303
  br label %201

201:                                              ; preds = %199, %194
  %202 = phi i32 [ %200, %199 ], [ 0, %194 ]
  %203 = icmp ugt i32 %202, 1
  br i1 %203, label %206, label %204

204:                                              ; preds = %201, %191, %179
  %205 = add i32 %168, 1
  br label %167, !llvm.loop !314

206:                                              ; preds = %201
  br i1 %166, label %234, label %207

207:                                              ; preds = %206
  tail call void @free(ptr noundef %165)
  br label %234

208:                                              ; preds = %176
  br i1 %166, label %210, label %209

209:                                              ; preds = %208
  tail call void @free(ptr noundef %165)
  br label %210

210:                                              ; preds = %209, %208, %97
  %211 = sext i32 %82 to i64
  %212 = shl nsw i64 %211, 3
  %213 = tail call ptr @ira_allocate(i64 noundef %212) #30
  %214 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %215 = zext i32 %84 to i64
  %216 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %214, i64 %215, i32 9
  store ptr %213, ptr %216, align 8, !tbaa !112
  %217 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %218 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %217, i64 %215, i32 9
  %219 = load ptr, ptr %218, align 8, !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr align 8 %219, i8 0, i64 %212, i1 false), !prof !282
  %220 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %221 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %220, i64 %215, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(108) %221, i8 0, i64 108, i1 false)
  %222 = tail call ptr @ira_allocate_bitmap() #30
  %223 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %224 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %223, i64 %215, i32 12
  store ptr %222, ptr %224, align 8, !tbaa !115
  %225 = tail call ptr @ira_allocate_bitmap() #30
  %226 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %227 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %226, i64 %215, i32 14
  store ptr %225, ptr %227, align 8, !tbaa !288
  %228 = tail call ptr @ira_allocate_bitmap() #30
  %229 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %230 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %229, i64 %215, i32 13
  store ptr %228, ptr %230, align 8, !tbaa !289
  %231 = tail call ptr @ira_allocate_bitmap() #30
  %232 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %233 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %232, i64 %215, i32 15
  store ptr %231, ptr %233, align 8, !tbaa !290
  br label %234

234:                                              ; preds = %152, %210, %207, %206, %100
  %235 = add i32 %84, 1
  br label %83, !llvm.loop !315

236:                                              ; preds = %94, %257
  %237 = phi i32 [ %258, %257 ], [ 0, %94 ]
  %238 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %239 = icmp eq ptr %238, null
  br i1 %239, label %244, label %240, !prof !294

240:                                              ; preds = %236
  %241 = load i32, ptr %238, align 8, !tbaa !269
  %242 = icmp ugt i32 %241, %237
  %243 = zext i1 %242 to i32
  br label %244

244:                                              ; preds = %240, %236
  %245 = phi i32 [ 0, %236 ], [ %243, %240 ]
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %259, label %247, !prof !295

247:                                              ; preds = %244
  %248 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %249 = zext i32 %237 to i64
  %250 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %248, i64 %249, i32 9
  %251 = load ptr, ptr %250, align 8, !tbaa !112
  %252 = icmp eq ptr %251, null
  br i1 %252, label %257, label %253, !prof !293

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %248, i64 %249, i32 5
  store ptr null, ptr %254, align 8, !tbaa !316
  %255 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %256 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %255, i64 %249, i32 4
  store ptr null, ptr %256, align 8, !tbaa !317
  br label %257

257:                                              ; preds = %253, %247
  %258 = add i32 %237, 1
  br label %236, !llvm.loop !318

259:                                              ; preds = %244
  %260 = load ptr, ptr @cfun, align 8, !tbaa !87
  %261 = getelementptr inbounds %struct.function, ptr %260, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !283
  %263 = load ptr, ptr %262, align 8, !tbaa !319
  %264 = getelementptr inbounds %struct.basic_block_def, ptr %263, i64 0, i32 6
  %265 = load ptr, ptr %264, align 8, !tbaa !320
  %266 = getelementptr inbounds %struct.control_flow_graph, ptr %262, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !321
  %268 = icmp eq ptr %265, %267
  br i1 %268, label %324, label %269, !prof !287

269:                                              ; preds = %259, %307
  %270 = phi ptr [ %317, %307 ], [ %265, %259 ]
  %271 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !87
  %272 = getelementptr inbounds %struct.basic_block_def, ptr %270, i64 0, i32 9
  %273 = load i32, ptr %272, align 8, !tbaa !322
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %271, i64 %274
  store ptr %270, ptr %275, align 8, !tbaa !144
  %276 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %271, i64 %274, i32 1
  %277 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %271, i64 %274, i32 3
  %278 = getelementptr inbounds %struct.basic_block_def, ptr %270, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %276, i8 0, i64 40, i1 false)
  %279 = load ptr, ptr %278, align 8, !tbaa !323
  %280 = icmp eq ptr %279, null
  br i1 %280, label %307, label %281, !prof !324

281:                                              ; preds = %269
  %282 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  br label %283

283:                                              ; preds = %281, %304
  %284 = phi ptr [ %279, %281 ], [ %305, %304 ]
  %285 = load i32, ptr %284, align 8, !tbaa !325
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %282, i64 %286, i32 9
  %288 = load ptr, ptr %287, align 8, !tbaa !112
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %307, !prof !326

290:                                              ; preds = %283
  %291 = getelementptr inbounds %struct.loop, ptr %284, i64 0, i32 7
  %292 = load ptr, ptr %291, align 8, !tbaa !327
  %293 = icmp eq ptr %292, null
  br i1 %293, label %296, label %294

294:                                              ; preds = %290
  %295 = load i32, ptr %292, align 8, !tbaa !269
  br label %296

296:                                              ; preds = %294, %290
  %297 = phi i32 [ %295, %294 ], [ 0, %290 ]
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %296
  %300 = add i32 %297, -1
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %292, i64 0, i32 2, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !87
  br label %304

304:                                              ; preds = %299, %296
  %305 = phi ptr [ %303, %299 ], [ null, %296 ]
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %283, !prof !326, !llvm.loop !328

307:                                              ; preds = %304, %283, %269
  %308 = phi ptr [ %279, %269 ], [ %305, %304 ], [ %284, %283 ]
  tail call fastcc void @add_loop_to_tree(ptr noundef %308)
  %309 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %310 = load i32, ptr %308, align 8, !tbaa !325
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %309, i64 %311
  %313 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %309, i64 %311, i32 5
  %314 = load ptr, ptr %313, align 8, !tbaa !316
  store ptr %314, ptr %277, align 8, !tbaa !329
  %315 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %271, i64 %274, i32 6
  store ptr %312, ptr %315, align 8, !tbaa !234
  store ptr %275, ptr %313, align 8, !tbaa !316
  %316 = getelementptr inbounds %struct.basic_block_def, ptr %270, i64 0, i32 6
  %317 = load ptr, ptr %316, align 8, !tbaa !320
  %318 = load ptr, ptr @cfun, align 8, !tbaa !87
  %319 = getelementptr inbounds %struct.function, ptr %318, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !283
  %321 = getelementptr inbounds %struct.control_flow_graph, ptr %320, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !321
  %323 = icmp eq ptr %317, %322
  br i1 %323, label %324, label %269, !prof !330, !llvm.loop !331

324:                                              ; preds = %307, %259
  %325 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %326 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 3), align 8, !tbaa !296
  %327 = load i32, ptr %326, align 8, !tbaa !325
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %325, i64 %328
  store ptr %329, ptr @ira_loop_tree_root, align 8, !tbaa !87
  %330 = tail call fastcc i32 @setup_loop_tree_level(ptr noundef %329, i32 noundef 0)
  store i32 %330, ptr @ira_loop_tree_height, align 4, !tbaa !102
  %331 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !87
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %331, ptr noundef nonnull @create_loop_tree_node_allocnos, ptr noundef null)
  %332 = load i32, ptr @optimize, align 4, !tbaa !102
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %336, label %334, !prof !293

334:                                              ; preds = %324
  %335 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !87
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 0, ptr noundef %335, ptr noundef null, ptr noundef nonnull @propagate_modified_regnos)
  br label %336

336:                                              ; preds = %324, %334
  tail call void @ira_costs() #30
  tail call void @ira_create_allocno_live_ranges() #30
  tail call fastcc void @remove_unnecessary_regions(i8 noundef zeroext 0)
  tail call void @ira_compress_allocno_live_ranges() #30
  call void @llvm.lifetime.start.p0(i64 864, ptr nonnull %2) #30
  %337 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !102
  %338 = icmp sgt i32 %337, 0
  br i1 %338, label %339, label %350, !prof !279

339:                                              ; preds = %336
  %340 = zext nneg i32 %337 to i64
  br label %341

341:                                              ; preds = %339, %341
  %342 = phi i64 [ 0, %339 ], [ %348, %341 ]
  %343 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !102
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds [27 x %struct.bitmap_head_def], ptr %2, i64 0, i64 %345
  %347 = getelementptr inbounds [27 x %struct.bitmap_head_def], ptr %2, i64 0, i64 %345, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %346, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %347, align 8, !tbaa !332
  %348 = add nuw nsw i64 %342, 1
  %349 = icmp eq i64 %348, %340
  br i1 %349, label %350, label %341, !prof !334, !llvm.loop !335

350:                                              ; preds = %341, %336
  br label %351

351:                                              ; preds = %350, %390
  %352 = phi ptr [ %384, %390 ], [ undef, %350 ]
  %353 = phi i32 [ %385, %390 ], [ 0, %350 ]
  %354 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %355 = icmp slt i32 %353, %354
  br i1 %355, label %356, label %382, !prof !279

356:                                              ; preds = %351
  %357 = load ptr, ptr @ira_allocnos, align 8, !tbaa !87
  %358 = sext i32 %353 to i64
  %359 = sext i32 %354 to i64
  %360 = getelementptr inbounds ptr, ptr %357, i64 %358
  %361 = load ptr, ptr %360, align 8, !tbaa !87
  %362 = icmp eq ptr %361, null
  br i1 %362, label %375, label %369, !prof !324

363:                                              ; preds = %375
  %364 = getelementptr inbounds ptr, ptr %357, i64 %377
  %365 = load ptr, ptr %364, align 8, !tbaa !87
  %366 = icmp eq ptr %365, null
  br i1 %366, label %375, label %367, !prof !324, !llvm.loop !231

367:                                              ; preds = %363
  %368 = icmp slt i64 %377, %359
  br label %369

369:                                              ; preds = %367, %356
  %370 = phi i64 [ %358, %356 ], [ %377, %367 ]
  %371 = phi i1 [ %355, %356 ], [ %368, %367 ]
  %372 = phi ptr [ %361, %356 ], [ %365, %367 ]
  %373 = trunc i64 %370 to i32
  %374 = add nsw i32 %373, 1
  br label %382

375:                                              ; preds = %356, %363
  %376 = phi i64 [ %377, %363 ], [ %358, %356 ]
  %377 = add nsw i64 %376, 1
  %378 = trunc i64 %377 to i32
  %379 = icmp eq i32 %354, %378
  br i1 %379, label %380, label %363, !prof !336, !llvm.loop !231

380:                                              ; preds = %375
  %381 = icmp slt i64 %377, %359
  br label %382

382:                                              ; preds = %380, %351, %369
  %383 = phi i1 [ %371, %369 ], [ %355, %351 ], [ %381, %380 ]
  %384 = phi ptr [ %372, %369 ], [ %352, %351 ], [ %352, %380 ]
  %385 = phi i32 [ %374, %369 ], [ %353, %351 ], [ %353, %380 ]
  br i1 %383, label %386, label %406, !prof !337

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.ira_allocno, ptr %384, i64 0, i32 9
  %388 = load i32, ptr %387, align 8, !tbaa !141
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %391, !prof !127

390:                                              ; preds = %398, %391, %386
  br label %351, !llvm.loop !338

391:                                              ; preds = %386
  %392 = getelementptr inbounds %struct.ira_allocno, ptr %384, i64 0, i32 20
  %393 = load ptr, ptr %392, align 8, !tbaa !87
  %394 = icmp eq ptr %393, null
  br i1 %394, label %390, label %395, !prof !276, !llvm.loop !338

395:                                              ; preds = %391
  %396 = zext i32 %388 to i64
  %397 = getelementptr inbounds [27 x %struct.bitmap_head_def], ptr %2, i64 0, i64 %396
  br label %398

398:                                              ; preds = %395, %398
  %399 = phi ptr [ %393, %395 ], [ %404, %398 ]
  %400 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %399, i64 0, i32 2
  %401 = load i32, ptr %400, align 4, !tbaa !151
  %402 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %397, i32 noundef %401) #30
  %403 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %399, i64 0, i32 3
  %404 = load ptr, ptr %403, align 8, !tbaa !87
  %405 = icmp eq ptr %404, null
  br i1 %405, label %390, label %398, !prof !277, !llvm.loop !339

406:                                              ; preds = %382, %448
  %407 = phi ptr [ %439, %448 ], [ %384, %382 ]
  %408 = phi i32 [ %440, %448 ], [ 0, %382 ]
  %409 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %410 = icmp slt i32 %408, %409
  br i1 %410, label %411, label %437, !prof !279

411:                                              ; preds = %406
  %412 = load ptr, ptr @ira_allocnos, align 8, !tbaa !87
  %413 = sext i32 %408 to i64
  %414 = sext i32 %409 to i64
  %415 = getelementptr inbounds ptr, ptr %412, i64 %413
  %416 = load ptr, ptr %415, align 8, !tbaa !87
  %417 = icmp eq ptr %416, null
  br i1 %417, label %430, label %424, !prof !324

418:                                              ; preds = %430
  %419 = getelementptr inbounds ptr, ptr %412, i64 %432
  %420 = load ptr, ptr %419, align 8, !tbaa !87
  %421 = icmp eq ptr %420, null
  br i1 %421, label %430, label %422, !prof !324, !llvm.loop !231

422:                                              ; preds = %418
  %423 = icmp slt i64 %432, %414
  br label %424

424:                                              ; preds = %422, %411
  %425 = phi i64 [ %413, %411 ], [ %432, %422 ]
  %426 = phi i1 [ %410, %411 ], [ %423, %422 ]
  %427 = phi ptr [ %416, %411 ], [ %420, %422 ]
  %428 = trunc i64 %425 to i32
  %429 = add nsw i32 %428, 1
  br label %437

430:                                              ; preds = %411, %418
  %431 = phi i64 [ %432, %418 ], [ %413, %411 ]
  %432 = add nsw i64 %431, 1
  %433 = trunc i64 %432 to i32
  %434 = icmp eq i32 %409, %433
  br i1 %434, label %435, label %418, !prof !336, !llvm.loop !231

435:                                              ; preds = %430
  %436 = icmp slt i64 %432, %414
  br label %437

437:                                              ; preds = %435, %406, %424
  %438 = phi i1 [ %426, %424 ], [ %410, %406 ], [ %436, %435 ]
  %439 = phi ptr [ %427, %424 ], [ %407, %406 ], [ %407, %435 ]
  %440 = phi i32 [ %429, %424 ], [ %408, %406 ], [ %408, %435 ]
  br i1 %438, label %444, label %441, !prof !337

441:                                              ; preds = %437
  %442 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !102
  %443 = icmp sgt i32 %442, 0
  br i1 %443, label %484, label %494, !prof !279

444:                                              ; preds = %437
  %445 = getelementptr inbounds %struct.ira_allocno, ptr %439, i64 0, i32 9
  %446 = load i32, ptr %445, align 8, !tbaa !141
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %449, !prof !127

448:                                              ; preds = %458, %481, %454, %444, %449
  br label %406, !llvm.loop !340

449:                                              ; preds = %444
  %450 = getelementptr inbounds %struct.ira_allocno, ptr %439, i64 0, i32 31
  %451 = load i16, ptr %450, align 4
  %452 = and i16 %451, 64
  %453 = icmp eq i16 %452, 0
  br i1 %453, label %448, label %454, !prof !341

454:                                              ; preds = %449
  %455 = getelementptr inbounds %struct.ira_allocno, ptr %439, i64 0, i32 20
  %456 = load ptr, ptr %455, align 8, !tbaa !87
  %457 = icmp eq ptr %456, null
  br i1 %457, label %448, label %462, !prof !342

458:                                              ; preds = %477
  %459 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %463, i64 0, i32 3
  %460 = load ptr, ptr %459, align 8, !tbaa !87
  %461 = icmp eq ptr %460, null
  br i1 %461, label %448, label %462, !prof !343, !llvm.loop !344

462:                                              ; preds = %454, %458
  %463 = phi ptr [ %460, %458 ], [ %456, %454 ]
  %464 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %463, i64 0, i32 1
  %465 = load i32, ptr %464, align 8, !tbaa !150
  %466 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %463, i64 0, i32 2
  br label %467

467:                                              ; preds = %472, %462
  %468 = phi i32 [ %465, %462 ], [ %469, %472 ]
  %469 = add nsw i32 %468, 1
  %470 = load i32, ptr %466, align 4, !tbaa !151
  %471 = icmp slt i32 %469, %470
  br i1 %471, label %472, label %477, !prof !345

472:                                              ; preds = %467
  %473 = zext i32 %446 to i64
  %474 = getelementptr inbounds [27 x %struct.bitmap_head_def], ptr %2, i64 0, i64 %473
  %475 = call i32 @bitmap_bit_p(ptr noundef nonnull %474, i32 noundef %469) #30
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %467, label %477, !prof !346, !llvm.loop !347

477:                                              ; preds = %472, %467
  %478 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %463, i64 0, i32 2
  %479 = load i32, ptr %478, align 4, !tbaa !151
  %480 = icmp slt i32 %469, %479
  br i1 %480, label %481, label %458, !prof !348

481:                                              ; preds = %477
  %482 = load i16, ptr %450, align 4
  %483 = and i16 %482, -65
  store i16 %483, ptr %450, align 4
  br label %448

484:                                              ; preds = %441, %484
  %485 = phi i64 [ %490, %484 ], [ 0, %441 ]
  %486 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %485
  %487 = load i32, ptr %486, align 4, !tbaa !102
  %488 = zext i32 %487 to i64
  %489 = getelementptr inbounds [27 x %struct.bitmap_head_def], ptr %2, i64 0, i64 %488
  call void @bitmap_clear(ptr noundef nonnull %489) #30
  %490 = add nuw nsw i64 %485, 1
  %491 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !102
  %492 = sext i32 %491 to i64
  %493 = icmp slt i64 %490, %492
  br i1 %493, label %484, label %494, !prof !280, !llvm.loop !349

494:                                              ; preds = %484, %441
  call void @llvm.lifetime.end.p0(i64 864, ptr nonnull %2) #30
  %495 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %496 = icmp eq ptr %495, null
  br label %497

497:                                              ; preds = %506, %494
  %498 = phi i32 [ 0, %494 ], [ %516, %506 ]
  br i1 %496, label %503, label %499, !prof !294

499:                                              ; preds = %497
  %500 = load i32, ptr %495, align 8, !tbaa !269
  %501 = icmp ugt i32 %500, %498
  %502 = zext i1 %501 to i32
  br label %503

503:                                              ; preds = %499, %497
  %504 = phi i32 [ 0, %497 ], [ %502, %499 ]
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %517, label %506, !prof !295

506:                                              ; preds = %503
  %507 = load ptr, ptr @ira_loop_nodes, align 8
  %508 = load ptr, ptr @ira_loop_tree_root, align 8
  %509 = zext i32 %498 to i64
  %510 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %507, i64 %509, i32 9
  %511 = load ptr, ptr %510, align 8, !tbaa !112
  %512 = icmp eq ptr %511, null
  %513 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %507, i64 %509
  %514 = icmp eq ptr %508, %513
  %515 = select i1 %512, i1 true, i1 %514
  %516 = add i32 %498, 1
  br i1 %515, label %497, label %517, !prof !350, !llvm.loop !351

517:                                              ; preds = %506, %503
  %518 = phi i8 [ 0, %503 ], [ 1, %506 ]
  br i1 %505, label %740, label %519, !prof !298

519:                                              ; preds = %517
  %520 = load i32, ptr @flag_ira_region, align 4
  %521 = add i32 %520, -3
  %522 = icmp ult i32 %521, -2
  br i1 %522, label %523, label %524

523:                                              ; preds = %529, %524, %519
  br label %683

524:                                              ; preds = %519
  %525 = call i32 @max_reg_num() #30
  %526 = icmp sgt i32 %525, 53
  br i1 %526, label %527, label %523

527:                                              ; preds = %524
  %528 = zext nneg i32 %525 to i64
  br label %531

529:                                              ; preds = %679, %531
  %530 = icmp sgt i64 %532, 54
  br i1 %530, label %531, label %523, !llvm.loop !352

531:                                              ; preds = %527, %529
  %532 = phi i64 [ %528, %527 ], [ %533, %529 ]
  %533 = add nsw i64 %532, -1
  %534 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  %535 = getelementptr inbounds ptr, ptr %534, i64 %533
  %536 = load ptr, ptr %535, align 8, !tbaa !87
  %537 = icmp eq ptr %536, null
  br i1 %537, label %529, label %538

538:                                              ; preds = %531, %679
  %539 = phi ptr [ %681, %679 ], [ %536, %531 ]
  %540 = getelementptr inbounds %struct.ira_allocno, ptr %539, i64 0, i32 6
  %541 = load ptr, ptr %540, align 8, !tbaa !109
  %542 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %541, i64 0, i32 6
  %543 = load ptr, ptr %542, align 8, !tbaa !234
  %544 = icmp eq ptr %543, null
  br i1 %544, label %679, label %545

545:                                              ; preds = %538
  %546 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %543, i64 0, i32 9
  %547 = load ptr, ptr %546, align 8, !tbaa !112
  %548 = getelementptr inbounds ptr, ptr %547, i64 %533
  %549 = load ptr, ptr %548, align 8, !tbaa !87
  %550 = icmp eq ptr %549, null
  br i1 %550, label %679, label %551

551:                                              ; preds = %545
  %552 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %541, i64 0, i32 13
  %553 = load ptr, ptr %552, align 8, !tbaa !289
  %554 = load i32, ptr %539, align 8, !tbaa !114
  %555 = call i32 @bitmap_bit_p(ptr noundef %553, i32 noundef %554) #30
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %679, label %557

557:                                              ; preds = %551
  %558 = getelementptr inbounds %struct.ira_allocno, ptr %539, i64 0, i32 31
  %559 = load i16, ptr %558, align 4
  %560 = and i16 %559, 64
  %561 = icmp eq i16 %560, 0
  br i1 %561, label %562, label %566

562:                                              ; preds = %557
  %563 = getelementptr inbounds %struct.ira_allocno, ptr %549, i64 0, i32 31
  %564 = load i16, ptr %563, align 4
  %565 = and i16 %564, -65
  store i16 %565, ptr %563, align 4
  br label %566

566:                                              ; preds = %562, %557
  %567 = getelementptr inbounds %struct.ira_allocno, ptr %539, i64 0, i32 7
  %568 = load i32, ptr %567, align 8, !tbaa !121
  %569 = getelementptr inbounds %struct.ira_allocno, ptr %549, i64 0, i32 7
  %570 = load i32, ptr %569, align 8, !tbaa !121
  %571 = add nsw i32 %570, %568
  store i32 %571, ptr %569, align 8, !tbaa !121
  %572 = getelementptr inbounds %struct.ira_allocno, ptr %539, i64 0, i32 8
  %573 = load i32, ptr %572, align 4, !tbaa !122
  %574 = getelementptr inbounds %struct.ira_allocno, ptr %549, i64 0, i32 8
  %575 = load i32, ptr %574, align 4, !tbaa !122
  %576 = add nsw i32 %575, %573
  store i32 %576, ptr %574, align 4, !tbaa !122
  %577 = getelementptr inbounds %struct.ira_allocno, ptr %539, i64 0, i32 29
  %578 = load i32, ptr %577, align 4, !tbaa !124
  %579 = getelementptr inbounds %struct.ira_allocno, ptr %549, i64 0, i32 29
  %580 = load i32, ptr %579, align 4, !tbaa !124
  %581 = add nsw i32 %580, %578
  store i32 %581, ptr %579, align 4, !tbaa !124
  %582 = load i16, ptr %558, align 4
  %583 = and i16 %582, 32
  %584 = icmp eq i16 %583, 0
  br i1 %584, label %589, label %585

585:                                              ; preds = %566
  %586 = getelementptr inbounds %struct.ira_allocno, ptr %549, i64 0, i32 31
  %587 = load i16, ptr %586, align 4
  %588 = or i16 %587, 32
  store i16 %588, ptr %586, align 4
  br label %589

589:                                              ; preds = %585, %566
  %590 = getelementptr inbounds %struct.ira_allocno, ptr %539, i64 0, i32 27
  %591 = load i64, ptr %590, align 8, !tbaa !120
  %592 = getelementptr inbounds %struct.ira_allocno, ptr %549, i64 0, i32 27
  %593 = load i64, ptr %592, align 8, !tbaa !120
  %594 = or i64 %593, %591
  store i64 %594, ptr %592, align 8, !tbaa !120
  %595 = getelementptr inbounds %struct.ira_allocno, ptr %539, i64 0, i32 30
  %596 = load i32, ptr %595, align 8, !tbaa !125
  %597 = getelementptr inbounds %struct.ira_allocno, ptr %549, i64 0, i32 30
  %598 = load i32, ptr %597, align 8, !tbaa !125
  %599 = add nsw i32 %598, %596
  store i32 %599, ptr %597, align 8, !tbaa !125
  %600 = getelementptr inbounds %struct.ira_allocno, ptr %539, i64 0, i32 14
  %601 = load i32, ptr %600, align 4, !tbaa !239
  %602 = getelementptr inbounds %struct.ira_allocno, ptr %549, i64 0, i32 14
  %603 = load i32, ptr %602, align 4, !tbaa !239
  %604 = add nsw i32 %603, %601
  store i32 %604, ptr %602, align 4, !tbaa !239
  %605 = getelementptr inbounds %struct.ira_allocno, ptr %539, i64 0, i32 9
  %606 = load i32, ptr %605, align 8, !tbaa !141
  %607 = getelementptr inbounds %struct.ira_allocno, ptr %549, i64 0, i32 33
  %608 = getelementptr inbounds %struct.ira_allocno, ptr %539, i64 0, i32 33
  %609 = load ptr, ptr %608, align 8, !tbaa !236
  %610 = icmp eq ptr %609, null
  br i1 %610, label %637, label %611

611:                                              ; preds = %589
  %612 = zext i32 %606 to i64
  %613 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %612
  %614 = load i32, ptr %613, align 4, !tbaa !102
  %615 = load ptr, ptr %607, align 8, !tbaa !87
  %616 = icmp eq ptr %615, null
  br i1 %616, label %617, label %623

617:                                              ; preds = %611
  %618 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %612
  %619 = load ptr, ptr %618, align 8, !tbaa !87
  %620 = call ptr @pool_alloc(ptr noundef %619) #30
  store ptr %620, ptr %607, align 8, !tbaa !87
  %621 = sext i32 %614 to i64
  %622 = shl nsw i64 %621, 2
  call void @llvm.memset.p0.i64(ptr align 4 %620, i8 0, i64 %622, i1 false)
  br label %623

623:                                              ; preds = %617, %611
  %624 = icmp sgt i32 %614, 0
  br i1 %624, label %625, label %637

625:                                              ; preds = %623
  %626 = load ptr, ptr %607, align 8, !tbaa !87
  %627 = zext nneg i32 %614 to i64
  br label %628

628:                                              ; preds = %625, %628
  %629 = phi i64 [ 0, %625 ], [ %635, %628 ]
  %630 = getelementptr inbounds i32, ptr %609, i64 %629
  %631 = load i32, ptr %630, align 4, !tbaa !102
  %632 = getelementptr inbounds i32, ptr %626, i64 %629
  %633 = load i32, ptr %632, align 4, !tbaa !102
  %634 = add nsw i32 %633, %631
  store i32 %634, ptr %632, align 4, !tbaa !102
  %635 = add nuw nsw i64 %629, 1
  %636 = icmp eq i64 %635, %627
  br i1 %636, label %637, label %628, !llvm.loop !353

637:                                              ; preds = %628, %623, %589
  %638 = getelementptr inbounds %struct.ira_allocno, ptr %549, i64 0, i32 35
  %639 = getelementptr inbounds %struct.ira_allocno, ptr %539, i64 0, i32 35
  %640 = load ptr, ptr %639, align 8, !tbaa !237
  %641 = icmp eq ptr %640, null
  br i1 %641, label %668, label %642

642:                                              ; preds = %637
  %643 = zext i32 %606 to i64
  %644 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %643
  %645 = load i32, ptr %644, align 4, !tbaa !102
  %646 = load ptr, ptr %638, align 8, !tbaa !87
  %647 = icmp eq ptr %646, null
  br i1 %647, label %648, label %654

648:                                              ; preds = %642
  %649 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %643
  %650 = load ptr, ptr %649, align 8, !tbaa !87
  %651 = call ptr @pool_alloc(ptr noundef %650) #30
  store ptr %651, ptr %638, align 8, !tbaa !87
  %652 = sext i32 %645 to i64
  %653 = shl nsw i64 %652, 2
  call void @llvm.memset.p0.i64(ptr align 4 %651, i8 0, i64 %653, i1 false)
  br label %654

654:                                              ; preds = %648, %642
  %655 = icmp sgt i32 %645, 0
  br i1 %655, label %656, label %668

656:                                              ; preds = %654
  %657 = load ptr, ptr %638, align 8, !tbaa !87
  %658 = zext nneg i32 %645 to i64
  br label %659

659:                                              ; preds = %656, %659
  %660 = phi i64 [ 0, %656 ], [ %666, %659 ]
  %661 = getelementptr inbounds i32, ptr %640, i64 %660
  %662 = load i32, ptr %661, align 4, !tbaa !102
  %663 = getelementptr inbounds i32, ptr %657, i64 %660
  %664 = load i32, ptr %663, align 4, !tbaa !102
  %665 = add nsw i32 %664, %662
  store i32 %665, ptr %663, align 4, !tbaa !102
  %666 = add nuw nsw i64 %660, 1
  %667 = icmp eq i64 %666, %658
  br i1 %667, label %668, label %659, !llvm.loop !353

668:                                              ; preds = %659, %654, %637
  %669 = getelementptr inbounds %struct.ira_allocno, ptr %539, i64 0, i32 10
  %670 = load i32, ptr %669, align 4, !tbaa !242
  %671 = getelementptr inbounds %struct.ira_allocno, ptr %549, i64 0, i32 10
  %672 = load i32, ptr %671, align 4, !tbaa !242
  %673 = add nsw i32 %672, %670
  store i32 %673, ptr %671, align 4, !tbaa !242
  %674 = getelementptr inbounds %struct.ira_allocno, ptr %539, i64 0, i32 12
  %675 = load i32, ptr %674, align 4, !tbaa !243
  %676 = getelementptr inbounds %struct.ira_allocno, ptr %549, i64 0, i32 12
  %677 = load i32, ptr %676, align 4, !tbaa !243
  %678 = add nsw i32 %677, %675
  store i32 %678, ptr %676, align 4, !tbaa !243
  br label %679

679:                                              ; preds = %668, %551, %545, %538
  %680 = getelementptr inbounds %struct.ira_allocno, ptr %539, i64 0, i32 5
  %681 = load ptr, ptr %680, align 8, !tbaa !87
  %682 = icmp eq ptr %681, null
  br i1 %682, label %529, label %538, !llvm.loop !354

683:                                              ; preds = %728, %523
  %684 = phi ptr [ undef, %523 ], [ %716, %728 ]
  %685 = phi i32 [ 0, %523 ], [ %717, %728 ]
  %686 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %687 = icmp slt i32 %685, %686
  br i1 %687, label %688, label %714

688:                                              ; preds = %683
  %689 = load ptr, ptr @ira_allocnos, align 8, !tbaa !87
  %690 = sext i32 %685 to i64
  %691 = sext i32 %686 to i64
  %692 = getelementptr inbounds ptr, ptr %689, i64 %690
  %693 = load ptr, ptr %692, align 8, !tbaa !87
  %694 = icmp eq ptr %693, null
  br i1 %694, label %707, label %701

695:                                              ; preds = %707
  %696 = getelementptr inbounds ptr, ptr %689, i64 %709
  %697 = load ptr, ptr %696, align 8, !tbaa !87
  %698 = icmp eq ptr %697, null
  br i1 %698, label %707, label %699, !llvm.loop !231

699:                                              ; preds = %695
  %700 = icmp slt i64 %709, %691
  br label %701

701:                                              ; preds = %699, %688
  %702 = phi i64 [ %690, %688 ], [ %709, %699 ]
  %703 = phi i1 [ %687, %688 ], [ %700, %699 ]
  %704 = phi ptr [ %693, %688 ], [ %697, %699 ]
  %705 = trunc i64 %702 to i32
  %706 = add nsw i32 %705, 1
  br label %714

707:                                              ; preds = %688, %695
  %708 = phi i64 [ %709, %695 ], [ %690, %688 ]
  %709 = add nsw i64 %708, 1
  %710 = trunc i64 %709 to i32
  %711 = icmp eq i32 %686, %710
  br i1 %711, label %712, label %695, !llvm.loop !231

712:                                              ; preds = %707
  %713 = icmp slt i64 %709, %691
  br label %714

714:                                              ; preds = %712, %683, %701
  %715 = phi i1 [ %703, %701 ], [ %687, %683 ], [ %713, %712 ]
  %716 = phi ptr [ %704, %701 ], [ %684, %683 ], [ %684, %712 ]
  %717 = phi i32 [ %706, %701 ], [ %685, %683 ], [ %685, %712 ]
  br i1 %715, label %718, label %740

718:                                              ; preds = %714
  %719 = getelementptr inbounds %struct.ira_allocno, ptr %716, i64 0, i32 6
  %720 = load ptr, ptr %719, align 8, !tbaa !109
  %721 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !87
  %722 = icmp eq ptr %720, %721
  br i1 %722, label %728, label %723

723:                                              ; preds = %718
  %724 = getelementptr inbounds %struct.ira_allocno, ptr %716, i64 0, i32 17
  %725 = load ptr, ptr %724, align 8, !tbaa !146
  %726 = icmp eq ptr %725, null
  br i1 %726, label %729, label %727

727:                                              ; preds = %723
  call fastcc void @create_cap_allocno(ptr noundef %716)
  br label %728

728:                                              ; preds = %727, %729, %733, %739, %718
  br label %683, !llvm.loop !355

729:                                              ; preds = %723
  %730 = getelementptr inbounds %struct.ira_allocno, ptr %716, i64 0, i32 16
  %731 = load ptr, ptr %730, align 8, !tbaa !233
  %732 = icmp eq ptr %731, null
  br i1 %732, label %733, label %728

733:                                              ; preds = %729
  %734 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %720, i64 0, i32 13
  %735 = load ptr, ptr %734, align 8, !tbaa !289
  %736 = load i32, ptr %716, align 8, !tbaa !114
  %737 = call i32 @bitmap_bit_p(ptr noundef %735, i32 noundef %736) #30
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %728

739:                                              ; preds = %733
  call fastcc void @create_cap_allocno(ptr noundef nonnull %716)
  br label %728

740:                                              ; preds = %714, %517
  call void @ira_tune_allocno_costs_and_cover_classes() #30
  %741 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %742 = load ptr, ptr @ira_allocnos, align 8
  br label %743

743:                                              ; preds = %780, %740
  %744 = phi ptr [ undef, %740 ], [ %774, %780 ]
  %745 = phi i32 [ 0, %740 ], [ %775, %780 ]
  %746 = icmp slt i32 %745, %741
  br i1 %746, label %747, label %772, !prof !279

747:                                              ; preds = %743
  %748 = sext i32 %745 to i64
  %749 = getelementptr inbounds ptr, ptr %742, i64 %748
  %750 = load ptr, ptr %749, align 8, !tbaa !87
  %751 = icmp eq ptr %750, null
  br i1 %751, label %764, label %758, !prof !324

752:                                              ; preds = %764
  %753 = getelementptr inbounds ptr, ptr %742, i64 %767
  %754 = load ptr, ptr %753, align 8, !tbaa !87
  %755 = icmp eq ptr %754, null
  br i1 %755, label %764, label %756, !prof !324, !llvm.loop !231

756:                                              ; preds = %752
  %757 = icmp slt i64 %767, %766
  br label %758

758:                                              ; preds = %756, %747
  %759 = phi i64 [ %748, %747 ], [ %767, %756 ]
  %760 = phi i1 [ %746, %747 ], [ %757, %756 ]
  %761 = phi ptr [ %750, %747 ], [ %754, %756 ]
  %762 = trunc i64 %759 to i32
  %763 = add nsw i32 %762, 1
  br label %772

764:                                              ; preds = %747, %752
  %765 = phi i64 [ %767, %752 ], [ %748, %747 ]
  %766 = sext i32 %741 to i64
  %767 = add nsw i64 %765, 1
  %768 = trunc i64 %767 to i32
  %769 = icmp eq i32 %741, %768
  br i1 %769, label %770, label %752, !prof !336, !llvm.loop !231

770:                                              ; preds = %764
  %771 = icmp slt i64 %767, %766
  br label %772

772:                                              ; preds = %770, %743, %758
  %773 = phi i1 [ %760, %758 ], [ %746, %743 ], [ %771, %770 ]
  %774 = phi ptr [ %761, %758 ], [ %744, %743 ], [ %744, %770 ]
  %775 = phi i32 [ %763, %758 ], [ %745, %743 ], [ %745, %770 ]
  br i1 %773, label %776, label %794, !prof !337

776:                                              ; preds = %772
  %777 = getelementptr inbounds %struct.ira_allocno, ptr %774, i64 0, i32 20
  %778 = load ptr, ptr %777, align 8, !tbaa !133
  %779 = icmp eq ptr %778, null
  br i1 %779, label %780, label %781, !prof !127

780:                                              ; preds = %776, %790
  br label %743, !llvm.loop !356

781:                                              ; preds = %776
  %782 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %778, i64 0, i32 2
  %783 = load i32, ptr %782, align 4, !tbaa !151
  %784 = getelementptr inbounds %struct.ira_allocno, ptr %774, i64 0, i32 22
  store i32 %783, ptr %784, align 4, !tbaa !135
  br label %785

785:                                              ; preds = %785, %781
  %786 = phi ptr [ %778, %781 ], [ %788, %785 ]
  %787 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %786, i64 0, i32 3
  %788 = load ptr, ptr %787, align 8, !tbaa !152
  %789 = icmp eq ptr %788, null
  br i1 %789, label %790, label %785, !prof !357, !llvm.loop !358

790:                                              ; preds = %785
  %791 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %786, i64 0, i32 1
  %792 = load i32, ptr %791, align 8, !tbaa !150
  %793 = getelementptr inbounds %struct.ira_allocno, ptr %774, i64 0, i32 21
  store i32 %792, ptr %793, align 8, !tbaa !134
  br label %780

794:                                              ; preds = %772
  %795 = call i32 @max_reg_num() #30
  %796 = icmp sgt i32 %795, 53
  br i1 %796, label %797, label %802, !prof !279

797:                                              ; preds = %794
  %798 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  %799 = zext nneg i32 %795 to i64
  br label %804

800:                                              ; preds = %860, %804
  %801 = icmp sgt i64 %805, 54
  br i1 %801, label %804, label %802, !prof !359, !llvm.loop !360

802:                                              ; preds = %800, %794
  %803 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  br label %864

804:                                              ; preds = %797, %800
  %805 = phi i64 [ %799, %797 ], [ %806, %800 ]
  %806 = add nsw i64 %805, -1
  %807 = getelementptr inbounds ptr, ptr %798, i64 %806
  %808 = load ptr, ptr %807, align 8, !tbaa !87
  %809 = icmp eq ptr %808, null
  br i1 %809, label %800, label %810, !prof !361

810:                                              ; preds = %804, %860
  %811 = phi ptr [ %862, %860 ], [ %808, %804 ]
  %812 = getelementptr inbounds %struct.ira_allocno, ptr %811, i64 0, i32 22
  %813 = load i32, ptr %812, align 4, !tbaa !135
  %814 = icmp slt i32 %813, 0
  br i1 %814, label %860, label %815, !prof !127

815:                                              ; preds = %810
  %816 = getelementptr inbounds %struct.ira_allocno, ptr %811, i64 0, i32 16
  %817 = load ptr, ptr %816, align 8, !tbaa !233
  %818 = icmp eq ptr %817, null
  br i1 %818, label %838, label %819, !prof !110

819:                                              ; preds = %815
  %820 = getelementptr inbounds %struct.ira_allocno, ptr %811, i64 0, i32 21
  br label %821

821:                                              ; preds = %819, %834
  %822 = phi ptr [ %817, %819 ], [ %836, %834 ]
  %823 = getelementptr inbounds %struct.ira_allocno, ptr %822, i64 0, i32 22
  %824 = load i32, ptr %823, align 4, !tbaa !135
  %825 = load i32, ptr %812, align 4, !tbaa !135
  %826 = icmp slt i32 %824, %825
  br i1 %826, label %827, label %828

827:                                              ; preds = %821
  store i32 %825, ptr %823, align 4, !tbaa !135
  br label %828

828:                                              ; preds = %827, %821
  %829 = getelementptr inbounds %struct.ira_allocno, ptr %822, i64 0, i32 21
  %830 = load i32, ptr %829, align 8, !tbaa !134
  %831 = load i32, ptr %820, align 8, !tbaa !134
  %832 = icmp sgt i32 %830, %831
  br i1 %832, label %833, label %834

833:                                              ; preds = %828
  store i32 %831, ptr %829, align 8, !tbaa !134
  br label %834

834:                                              ; preds = %833, %828
  %835 = getelementptr inbounds %struct.ira_allocno, ptr %822, i64 0, i32 16
  %836 = load ptr, ptr %835, align 8, !tbaa !233
  %837 = icmp eq ptr %836, null
  br i1 %837, label %860, label %821, !llvm.loop !362

838:                                              ; preds = %815
  %839 = getelementptr inbounds %struct.ira_allocno, ptr %811, i64 0, i32 6
  %840 = load ptr, ptr %839, align 8, !tbaa !109
  %841 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %840, i64 0, i32 6
  %842 = load ptr, ptr %841, align 8, !tbaa !234
  %843 = icmp eq ptr %842, null
  br i1 %843, label %860, label %844, !prof !110

844:                                              ; preds = %838
  %845 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %842, i64 0, i32 9
  %846 = load ptr, ptr %845, align 8, !tbaa !112
  %847 = getelementptr inbounds ptr, ptr %846, i64 %806
  %848 = load ptr, ptr %847, align 8, !tbaa !87
  %849 = getelementptr inbounds %struct.ira_allocno, ptr %848, i64 0, i32 22
  %850 = load i32, ptr %849, align 4, !tbaa !135
  %851 = icmp slt i32 %850, %813
  br i1 %851, label %852, label %853

852:                                              ; preds = %844
  store i32 %813, ptr %849, align 4, !tbaa !135
  br label %853

853:                                              ; preds = %852, %844
  %854 = getelementptr inbounds %struct.ira_allocno, ptr %848, i64 0, i32 21
  %855 = load i32, ptr %854, align 8, !tbaa !134
  %856 = getelementptr inbounds %struct.ira_allocno, ptr %811, i64 0, i32 21
  %857 = load i32, ptr %856, align 8, !tbaa !134
  %858 = icmp sgt i32 %855, %857
  br i1 %858, label %859, label %860

859:                                              ; preds = %853
  store i32 %857, ptr %854, align 8, !tbaa !134
  br label %860

860:                                              ; preds = %834, %859, %853, %838, %810
  %861 = getelementptr inbounds %struct.ira_allocno, ptr %811, i64 0, i32 5
  %862 = load ptr, ptr %861, align 8, !tbaa !87
  %863 = icmp eq ptr %862, null
  br i1 %863, label %800, label %810, !prof !110, !llvm.loop !363

864:                                              ; preds = %802, %900
  %865 = phi i32 [ 0, %802 ], [ %904, %900 ]
  %866 = phi i64 [ 0, %802 ], [ %902, %900 ]
  %867 = phi ptr [ undef, %802 ], [ %898, %900 ]
  %868 = phi i32 [ 0, %802 ], [ %899, %900 ]
  %869 = icmp slt i32 %868, %803
  br i1 %869, label %870, label %896, !prof !279

870:                                              ; preds = %864
  %871 = load ptr, ptr @ira_allocnos, align 8, !tbaa !87
  %872 = sext i32 %868 to i64
  %873 = getelementptr inbounds ptr, ptr %871, i64 %872
  %874 = load ptr, ptr %873, align 8, !tbaa !87
  %875 = icmp eq ptr %874, null
  br i1 %875, label %888, label %882, !prof !324

876:                                              ; preds = %888
  %877 = getelementptr inbounds ptr, ptr %871, i64 %891
  %878 = load ptr, ptr %877, align 8, !tbaa !87
  %879 = icmp eq ptr %878, null
  br i1 %879, label %888, label %880, !prof !324, !llvm.loop !231

880:                                              ; preds = %876
  %881 = icmp slt i64 %891, %890
  br label %882

882:                                              ; preds = %880, %870
  %883 = phi i64 [ %872, %870 ], [ %891, %880 ]
  %884 = phi i1 [ %869, %870 ], [ %881, %880 ]
  %885 = phi ptr [ %874, %870 ], [ %878, %880 ]
  %886 = trunc i64 %883 to i32
  %887 = add nsw i32 %886, 1
  br label %896

888:                                              ; preds = %870, %876
  %889 = phi i64 [ %891, %876 ], [ %872, %870 ]
  %890 = sext i32 %803 to i64
  %891 = add nsw i64 %889, 1
  %892 = trunc i64 %891 to i32
  %893 = icmp eq i32 %803, %892
  br i1 %893, label %894, label %876, !prof !336, !llvm.loop !231

894:                                              ; preds = %888
  %895 = icmp slt i64 %891, %890
  br label %896

896:                                              ; preds = %894, %864, %882
  %897 = phi i1 [ %884, %882 ], [ %869, %864 ], [ %895, %894 ]
  %898 = phi ptr [ %885, %882 ], [ %867, %864 ], [ %867, %894 ]
  %899 = phi i32 [ %887, %882 ], [ %868, %864 ], [ %868, %894 ]
  br i1 %897, label %900, label %905, !prof !337

900:                                              ; preds = %896
  %901 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !87
  %902 = add nuw i64 %866, 1
  %903 = getelementptr inbounds ptr, ptr %901, i64 %866
  store ptr %898, ptr %903, align 8, !tbaa !87
  %904 = add nuw i32 %865, 1
  br label %864, !llvm.loop !364

905:                                              ; preds = %896
  %906 = trunc i64 %866 to i32
  %907 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !87
  %908 = and i64 %866, 4294967295
  call void @spec_qsort(ptr noundef %907, i64 noundef %908, i64 noundef 8, ptr noundef nonnull @allocno_range_compare_func) #30
  %909 = icmp eq i32 %906, 0
  br i1 %909, label %913, label %910, !prof !287

910:                                              ; preds = %905
  %911 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !87
  %912 = zext i32 %865 to i64
  br label %916

913:                                              ; preds = %924, %905
  %914 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %915 = icmp sgt i32 %914, %906
  br i1 %915, label %927, label %934, !prof !324

916:                                              ; preds = %910, %924
  %917 = phi i64 [ 0, %910 ], [ %925, %924 ]
  %918 = getelementptr inbounds ptr, ptr %911, i64 %917
  %919 = load ptr, ptr %918, align 8, !tbaa !87
  %920 = icmp eq ptr %919, null
  br i1 %920, label %924, label %921, !prof !127

921:                                              ; preds = %916
  %922 = getelementptr inbounds %struct.ira_allocno, ptr %919, i64 0, i32 24
  %923 = trunc i64 %917 to i32
  store i32 %923, ptr %922, align 8, !tbaa !136
  br label %924

924:                                              ; preds = %921, %916
  %925 = add nuw nsw i64 %917, 1
  %926 = icmp eq i64 %925, %912
  br i1 %926, label %913, label %916, !prof !336, !llvm.loop !365

927:                                              ; preds = %913, %927
  %928 = phi i64 [ %932, %927 ], [ %866, %913 ]
  %929 = zext i32 %914 to i64
  %930 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !87
  %931 = getelementptr inbounds ptr, ptr %930, i64 %928
  store ptr null, ptr %931, align 8, !tbaa !87
  %932 = add nuw i64 %928, 1
  %933 = icmp eq i64 %932, %929
  br i1 %933, label %934, label %927, !prof !227, !llvm.loop !366

934:                                              ; preds = %927, %913
  %935 = sext i32 %914 to i64
  %936 = shl nsw i64 %935, 2
  %937 = call ptr @ira_allocate(i64 noundef %936) #30
  %938 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %939 = icmp sgt i32 %938, 0
  br i1 %939, label %940, label %999, !prof !279

940:                                              ; preds = %934
  %941 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !87
  br label %942

942:                                              ; preds = %940, %992
  %943 = phi i64 [ 0, %940 ], [ %995, %992 ]
  %944 = phi i32 [ -1, %940 ], [ %994, %992 ]
  %945 = phi i32 [ -1, %940 ], [ %993, %992 ]
  %946 = getelementptr inbounds ptr, ptr %941, i64 %943
  %947 = load ptr, ptr %946, align 8, !tbaa !87
  %948 = icmp eq ptr %947, null
  br i1 %948, label %992, label %949, !prof !127

949:                                              ; preds = %942
  %950 = icmp slt i32 %944, 0
  br i1 %950, label %958, label %951, !prof !367

951:                                              ; preds = %949
  %952 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !102
  %953 = icmp eq i32 %952, 1
  br i1 %953, label %962, label %954, !prof !368

954:                                              ; preds = %951
  %955 = getelementptr inbounds %struct.ira_allocno, ptr %947, i64 0, i32 9
  %956 = load i32, ptr %955, align 8, !tbaa !141
  %957 = icmp eq i32 %944, %956
  br i1 %957, label %962, label %958, !prof !369

958:                                              ; preds = %954, %949
  %959 = getelementptr inbounds %struct.ira_allocno, ptr %947, i64 0, i32 9
  %960 = load i32, ptr %959, align 8, !tbaa !141
  %961 = trunc i64 %943 to i32
  br label %982

962:                                              ; preds = %954, %951
  %963 = getelementptr inbounds %struct.ira_allocno, ptr %947, i64 0, i32 21
  %964 = load i32, ptr %963, align 8, !tbaa !134
  %965 = sext i32 %945 to i64
  %966 = icmp sgt i64 %943, %965
  br i1 %966, label %967, label %982, !prof !227

967:                                              ; preds = %962
  %968 = sext i32 %945 to i64
  br label %969

969:                                              ; preds = %967, %976
  %970 = phi i64 [ %968, %967 ], [ %977, %976 ]
  %971 = getelementptr inbounds ptr, ptr %941, i64 %970
  %972 = load ptr, ptr %971, align 8, !tbaa !87
  %973 = getelementptr inbounds %struct.ira_allocno, ptr %972, i64 0, i32 22
  %974 = load i32, ptr %973, align 4, !tbaa !135
  %975 = icmp sgt i32 %964, %974
  br i1 %975, label %976, label %979, !prof !370

976:                                              ; preds = %969
  %977 = add nsw i64 %970, 1
  %978 = icmp slt i64 %977, %943
  br i1 %978, label %969, label %979, !prof !371, !llvm.loop !372

979:                                              ; preds = %969, %976
  %980 = phi i64 [ %970, %969 ], [ %943, %976 ]
  %981 = trunc i64 %980 to i32
  br label %982

982:                                              ; preds = %979, %962, %958
  %983 = phi i32 [ %961, %958 ], [ %945, %962 ], [ %981, %979 ]
  %984 = phi i32 [ %960, %958 ], [ %944, %962 ], [ %944, %979 ]
  %985 = zext i32 %983 to i64
  %986 = icmp eq i64 %943, %985
  %987 = zext i1 %986 to i32
  %988 = add nsw i32 %983, %987
  %989 = getelementptr inbounds %struct.ira_allocno, ptr %947, i64 0, i32 21
  %990 = load i32, ptr %989, align 8, !tbaa !134
  %991 = getelementptr inbounds i32, ptr %937, i64 %943
  store i32 %990, ptr %991, align 4, !tbaa !102
  store i32 %988, ptr %989, align 8, !tbaa !134
  br label %992

992:                                              ; preds = %982, %942
  %993 = phi i32 [ %945, %942 ], [ %983, %982 ]
  %994 = phi i32 [ %944, %942 ], [ %984, %982 ]
  %995 = add nuw nsw i64 %943, 1
  %996 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %997 = sext i32 %996 to i64
  %998 = icmp slt i64 %995, %997
  br i1 %998, label %942, label %999, !prof !373, !llvm.loop !374

999:                                              ; preds = %992, %934
  %1000 = load i32, ptr @ira_max_point, align 4, !tbaa !102
  %1001 = sext i32 %1000 to i64
  %1002 = shl nsw i64 %1001, 2
  %1003 = call ptr @ira_allocate(i64 noundef %1002) #30
  %1004 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %1005 = icmp sgt i32 %1004, 0
  br i1 %1005, label %1006, label %1069, !prof !279

1006:                                             ; preds = %999
  %1007 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !87
  %1008 = zext nneg i32 %1004 to i64
  br label %1009

1009:                                             ; preds = %1006, %1065
  %1010 = phi i64 [ %1008, %1006 ], [ %1013, %1065 ]
  %1011 = phi i32 [ -1, %1006 ], [ %1067, %1065 ]
  %1012 = phi i32 [ -1, %1006 ], [ %1066, %1065 ]
  %1013 = add nsw i64 %1010, -1
  %1014 = getelementptr inbounds ptr, ptr %1007, i64 %1013
  %1015 = load ptr, ptr %1014, align 8, !tbaa !87
  %1016 = icmp eq ptr %1015, null
  br i1 %1016, label %1065, label %1017, !prof !127

1017:                                             ; preds = %1009
  %1018 = icmp slt i32 %1011, 0
  br i1 %1018, label %1026, label %1019, !prof !367

1019:                                             ; preds = %1017
  %1020 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !102
  %1021 = icmp eq i32 %1020, 1
  br i1 %1021, label %1038, label %1022, !prof !368

1022:                                             ; preds = %1019
  %1023 = getelementptr inbounds %struct.ira_allocno, ptr %1015, i64 0, i32 9
  %1024 = load i32, ptr %1023, align 8, !tbaa !141
  %1025 = icmp eq i32 %1011, %1024
  br i1 %1025, label %1038, label %1026, !prof !369

1026:                                             ; preds = %1022, %1017
  %1027 = getelementptr inbounds %struct.ira_allocno, ptr %1015, i64 0, i32 9
  %1028 = load i32, ptr %1027, align 8, !tbaa !141
  %1029 = load i32, ptr @ira_max_point, align 4, !tbaa !102
  %1030 = icmp sgt i32 %1029, 0
  br i1 %1030, label %1031, label %1038, !prof !279

1031:                                             ; preds = %1026, %1031
  %1032 = phi i64 [ %1034, %1031 ], [ 0, %1026 ]
  %1033 = getelementptr inbounds i32, ptr %1003, i64 %1032
  store i32 -1, ptr %1033, align 4, !tbaa !102
  %1034 = add nuw nsw i64 %1032, 1
  %1035 = load i32, ptr @ira_max_point, align 4, !tbaa !102
  %1036 = sext i32 %1035 to i64
  %1037 = icmp slt i64 %1034, %1036
  br i1 %1037, label %1031, label %1038, !prof !375, !llvm.loop !376

1038:                                             ; preds = %1031, %1026, %1022, %1019
  %1039 = phi i32 [ %1012, %1022 ], [ %1012, %1019 ], [ %1029, %1026 ], [ %1035, %1031 ]
  %1040 = phi i32 [ %1011, %1022 ], [ %1011, %1019 ], [ %1028, %1026 ], [ %1028, %1031 ]
  %1041 = getelementptr inbounds i32, ptr %937, i64 %1013
  %1042 = load i32, ptr %1041, align 4, !tbaa !102
  %1043 = getelementptr inbounds %struct.ira_allocno, ptr %1015, i64 0, i32 22
  %1044 = load i32, ptr %1043, align 4, !tbaa !135
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds i32, ptr %1003, i64 %1045
  %1047 = load i32, ptr %1046, align 4, !tbaa !102
  %1048 = icmp slt i32 %1047, 0
  br i1 %1048, label %1049, label %1053, !prof !377

1049:                                             ; preds = %1038
  %1050 = getelementptr inbounds %struct.ira_allocno, ptr %1015, i64 0, i32 24
  %1051 = load i32, ptr %1050, align 8, !tbaa !136
  %1052 = add nsw i32 %1051, -1
  br label %1053

1053:                                             ; preds = %1049, %1038
  %1054 = phi i32 [ %1052, %1049 ], [ %1047, %1038 ]
  store i32 %1054, ptr %1043, align 4, !tbaa !135
  %1055 = icmp slt i32 %1042, %1039
  br i1 %1055, label %1056, label %1065, !prof !378

1056:                                             ; preds = %1053
  %1057 = sext i32 %1042 to i64
  %1058 = sext i32 %1039 to i64
  %1059 = trunc i64 %1013 to i32
  br label %1060

1060:                                             ; preds = %1056, %1060
  %1061 = phi i64 [ %1057, %1056 ], [ %1063, %1060 ]
  %1062 = getelementptr inbounds i32, ptr %1003, i64 %1061
  store i32 %1059, ptr %1062, align 4, !tbaa !102
  %1063 = add nsw i64 %1061, 1
  %1064 = icmp eq i64 %1063, %1058
  br i1 %1064, label %1065, label %1060, !prof !379, !llvm.loop !380

1065:                                             ; preds = %1060, %1053, %1009
  %1066 = phi i32 [ %1012, %1009 ], [ %1042, %1053 ], [ %1042, %1060 ]
  %1067 = phi i32 [ %1011, %1009 ], [ %1040, %1053 ], [ %1040, %1060 ]
  %1068 = icmp sgt i64 %1010, 1
  br i1 %1068, label %1009, label %1069, !prof !373, !llvm.loop !381

1069:                                             ; preds = %1065, %999
  call void @ira_free(ptr noundef %1003) #30
  call void @ira_free(ptr noundef %937) #30
  call void @ira_build_conflicts() #30
  %1070 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !98
  %1071 = icmp eq i8 %1070, 0
  br i1 %1071, label %1072, label %1123, !prof !293

1072:                                             ; preds = %1069
  br i1 %505, label %1074, label %1073

1073:                                             ; preds = %1072
  call fastcc void @remove_unnecessary_regions(i8 noundef zeroext 1)
  br label %1074

1074:                                             ; preds = %1073, %1072
  %1075 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %1076 = load ptr, ptr @ira_allocnos, align 8
  %1077 = load i64, ptr @call_used_reg_set, align 8
  %1078 = sext i32 %1075 to i64
  br label %1079

1079:                                             ; preds = %1122, %1074
  %1080 = phi ptr [ undef, %1074 ], [ %1109, %1122 ]
  %1081 = phi i32 [ 0, %1074 ], [ %1110, %1122 ]
  %1082 = icmp slt i32 %1081, %1075
  br i1 %1082, label %1083, label %1107

1083:                                             ; preds = %1079
  %1084 = sext i32 %1081 to i64
  %1085 = getelementptr inbounds ptr, ptr %1076, i64 %1084
  %1086 = load ptr, ptr %1085, align 8, !tbaa !87
  %1087 = icmp eq ptr %1086, null
  br i1 %1087, label %1100, label %1094

1088:                                             ; preds = %1100
  %1089 = getelementptr inbounds ptr, ptr %1076, i64 %1102
  %1090 = load ptr, ptr %1089, align 8, !tbaa !87
  %1091 = icmp eq ptr %1090, null
  br i1 %1091, label %1100, label %1092, !llvm.loop !231

1092:                                             ; preds = %1088
  %1093 = icmp slt i64 %1102, %1078
  br label %1094

1094:                                             ; preds = %1092, %1083
  %1095 = phi i64 [ %1084, %1083 ], [ %1102, %1092 ]
  %1096 = phi i1 [ %1082, %1083 ], [ %1093, %1092 ]
  %1097 = phi ptr [ %1086, %1083 ], [ %1090, %1092 ]
  %1098 = trunc i64 %1095 to i32
  %1099 = add nsw i32 %1098, 1
  br label %1107

1100:                                             ; preds = %1083, %1088
  %1101 = phi i64 [ %1102, %1088 ], [ %1084, %1083 ]
  %1102 = add nsw i64 %1101, 1
  %1103 = trunc i64 %1102 to i32
  %1104 = icmp eq i32 %1075, %1103
  br i1 %1104, label %1105, label %1088, !llvm.loop !231

1105:                                             ; preds = %1100
  %1106 = icmp slt i64 %1102, %1078
  br label %1107

1107:                                             ; preds = %1105, %1079, %1094
  %1108 = phi i1 [ %1096, %1094 ], [ %1082, %1079 ], [ %1106, %1105 ]
  %1109 = phi ptr [ %1097, %1094 ], [ %1080, %1079 ], [ %1080, %1105 ]
  %1110 = phi i32 [ %1099, %1094 ], [ %1081, %1079 ], [ %1081, %1105 ]
  br i1 %1108, label %1111, label %1123

1111:                                             ; preds = %1107
  %1112 = getelementptr inbounds %struct.ira_allocno, ptr %1109, i64 0, i32 30
  %1113 = load i32, ptr %1112, align 8, !tbaa !125
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1122, label %1115

1115:                                             ; preds = %1111
  %1116 = getelementptr inbounds %struct.ira_allocno, ptr %1109, i64 0, i32 27
  %1117 = load i64, ptr %1116, align 8, !tbaa !120
  %1118 = or i64 %1117, %1077
  store i64 %1118, ptr %1116, align 8, !tbaa !120
  %1119 = getelementptr inbounds %struct.ira_allocno, ptr %1109, i64 0, i32 26
  %1120 = load i64, ptr %1119, align 8, !tbaa !119
  %1121 = or i64 %1120, %1077
  store i64 %1121, ptr %1119, align 8, !tbaa !119
  br label %1122

1122:                                             ; preds = %1115, %1111
  br label %1079, !llvm.loop !382

1123:                                             ; preds = %1107, %1069
  %1124 = phi i8 [ %518, %1069 ], [ 0, %1107 ]
  %1125 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !102
  %1126 = icmp sgt i32 %1125, 2
  %1127 = load ptr, ptr @ira_dump_file, align 8
  %1128 = icmp ne ptr %1127, null
  %1129 = select i1 %1126, i1 %1128, i1 false, !prof !298
  br i1 %1129, label %1130, label %1166, !prof !293

1130:                                             ; preds = %1123, %1165
  %1131 = phi ptr [ %1163, %1165 ], [ undef, %1123 ]
  %1132 = phi i32 [ %1164, %1165 ], [ 0, %1123 ]
  %1133 = load i32, ptr @ira_copies_num, align 4, !tbaa !102
  %1134 = icmp slt i32 %1132, %1133
  br i1 %1134, label %1135, label %1161

1135:                                             ; preds = %1130
  %1136 = load ptr, ptr @ira_copies, align 8, !tbaa !87
  %1137 = sext i32 %1132 to i64
  %1138 = sext i32 %1133 to i64
  %1139 = sext i32 %1133 to i64
  %1140 = getelementptr inbounds ptr, ptr %1136, i64 %1137
  %1141 = load ptr, ptr %1140, align 8, !tbaa !87
  %1142 = icmp eq ptr %1141, null
  br i1 %1142, label %1155, label %1149

1143:                                             ; preds = %1155
  %1144 = getelementptr inbounds ptr, ptr %1136, i64 %1157
  %1145 = load ptr, ptr %1144, align 8, !tbaa !87
  %1146 = icmp eq ptr %1145, null
  br i1 %1146, label %1155, label %1147, !llvm.loop !211

1147:                                             ; preds = %1143
  %1148 = icmp slt i64 %1157, %1138
  br label %1149

1149:                                             ; preds = %1147, %1135
  %1150 = phi i64 [ %1137, %1135 ], [ %1157, %1147 ]
  %1151 = phi i1 [ %1134, %1135 ], [ %1148, %1147 ]
  %1152 = phi ptr [ %1141, %1135 ], [ %1145, %1147 ]
  %1153 = trunc i64 %1150 to i32
  %1154 = add nsw i32 %1153, 1
  br label %1161

1155:                                             ; preds = %1135, %1143
  %1156 = phi i64 [ %1157, %1143 ], [ %1137, %1135 ]
  %1157 = add nsw i64 %1156, 1
  %1158 = icmp eq i64 %1157, %1139
  br i1 %1158, label %1159, label %1143, !llvm.loop !211

1159:                                             ; preds = %1155
  %1160 = icmp slt i64 %1157, %1138
  br label %1161

1161:                                             ; preds = %1159, %1130, %1149
  %1162 = phi i1 [ %1151, %1149 ], [ %1134, %1130 ], [ %1160, %1159 ]
  %1163 = phi ptr [ %1152, %1149 ], [ %1131, %1130 ], [ %1131, %1159 ]
  %1164 = phi i32 [ %1154, %1149 ], [ %1132, %1130 ], [ %1132, %1159 ]
  br i1 %1162, label %1165, label %1166

1165:                                             ; preds = %1161
  call fastcc void @print_copy(ptr noundef nonnull %1127, ptr noundef %1163)
  br label %1130, !llvm.loop !212

1166:                                             ; preds = %1161, %1123
  %1167 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !102
  %1168 = icmp sgt i32 %1167, 0
  %1169 = load ptr, ptr @ira_dump_file, align 8
  %1170 = icmp ne ptr %1169, null
  %1171 = select i1 %1168, i1 %1170, i1 false, !prof !298
  br i1 %1171, label %1172, label %1280, !prof !293

1172:                                             ; preds = %1166
  %1173 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %1174 = load ptr, ptr @ira_allocnos, align 8
  %1175 = sext i32 %1173 to i64
  %1176 = sext i32 %1173 to i64
  br label %1177

1177:                                             ; preds = %1172, %1213
  %1178 = phi ptr [ %1207, %1213 ], [ undef, %1172 ]
  %1179 = phi i32 [ %1208, %1213 ], [ 0, %1172 ]
  %1180 = phi i32 [ %1216, %1213 ], [ 0, %1172 ]
  %1181 = icmp slt i32 %1179, %1173
  br i1 %1181, label %1182, label %1205

1182:                                             ; preds = %1177
  %1183 = sext i32 %1179 to i64
  %1184 = getelementptr inbounds ptr, ptr %1174, i64 %1183
  %1185 = load ptr, ptr %1184, align 8, !tbaa !87
  %1186 = icmp eq ptr %1185, null
  br i1 %1186, label %1199, label %1193

1187:                                             ; preds = %1199
  %1188 = getelementptr inbounds ptr, ptr %1174, i64 %1201
  %1189 = load ptr, ptr %1188, align 8, !tbaa !87
  %1190 = icmp eq ptr %1189, null
  br i1 %1190, label %1199, label %1191, !llvm.loop !231

1191:                                             ; preds = %1187
  %1192 = icmp slt i64 %1201, %1175
  br label %1193

1193:                                             ; preds = %1191, %1182
  %1194 = phi i64 [ %1183, %1182 ], [ %1201, %1191 ]
  %1195 = phi i1 [ %1181, %1182 ], [ %1192, %1191 ]
  %1196 = phi ptr [ %1185, %1182 ], [ %1189, %1191 ]
  %1197 = trunc i64 %1194 to i32
  %1198 = add nsw i32 %1197, 1
  br label %1205

1199:                                             ; preds = %1182, %1187
  %1200 = phi i64 [ %1201, %1187 ], [ %1183, %1182 ]
  %1201 = add nsw i64 %1200, 1
  %1202 = icmp eq i64 %1201, %1176
  br i1 %1202, label %1203, label %1187, !llvm.loop !231

1203:                                             ; preds = %1199
  %1204 = icmp slt i64 %1201, %1175
  br label %1205

1205:                                             ; preds = %1203, %1177, %1193
  %1206 = phi i1 [ %1195, %1193 ], [ %1181, %1177 ], [ %1204, %1203 ]
  %1207 = phi ptr [ %1196, %1193 ], [ %1178, %1177 ], [ %1178, %1203 ]
  %1208 = phi i32 [ %1198, %1193 ], [ %1179, %1177 ], [ %1179, %1203 ]
  br i1 %1206, label %1213, label %1209

1209:                                             ; preds = %1205
  %1210 = load ptr, ptr @ira_allocnos, align 8
  %1211 = sext i32 %1173 to i64
  %1212 = sext i32 %1173 to i64
  br label %1219

1213:                                             ; preds = %1205
  %1214 = getelementptr inbounds %struct.ira_allocno, ptr %1207, i64 0, i32 28
  %1215 = load i32, ptr %1214, align 8, !tbaa !117
  %1216 = add nsw i32 %1215, %1180
  br label %1177, !llvm.loop !383

1217:                                             ; preds = %1255, %1251
  %1218 = phi i32 [ %1222, %1251 ], [ %1258, %1255 ]
  br label %1219, !llvm.loop !384

1219:                                             ; preds = %1209, %1217
  %1220 = phi ptr [ %1249, %1217 ], [ %1207, %1209 ]
  %1221 = phi i32 [ %1250, %1217 ], [ 0, %1209 ]
  %1222 = phi i32 [ %1218, %1217 ], [ 0, %1209 ]
  %1223 = icmp slt i32 %1221, %1173
  br i1 %1223, label %1224, label %1247

1224:                                             ; preds = %1219
  %1225 = sext i32 %1221 to i64
  %1226 = getelementptr inbounds ptr, ptr %1210, i64 %1225
  %1227 = load ptr, ptr %1226, align 8, !tbaa !87
  %1228 = icmp eq ptr %1227, null
  br i1 %1228, label %1241, label %1235

1229:                                             ; preds = %1241
  %1230 = getelementptr inbounds ptr, ptr %1210, i64 %1243
  %1231 = load ptr, ptr %1230, align 8, !tbaa !87
  %1232 = icmp eq ptr %1231, null
  br i1 %1232, label %1241, label %1233, !llvm.loop !231

1233:                                             ; preds = %1229
  %1234 = icmp slt i64 %1243, %1211
  br label %1235

1235:                                             ; preds = %1233, %1224
  %1236 = phi i64 [ %1225, %1224 ], [ %1243, %1233 ]
  %1237 = phi i1 [ %1223, %1224 ], [ %1234, %1233 ]
  %1238 = phi ptr [ %1227, %1224 ], [ %1231, %1233 ]
  %1239 = trunc i64 %1236 to i32
  %1240 = add nsw i32 %1239, 1
  br label %1247

1241:                                             ; preds = %1224, %1229
  %1242 = phi i64 [ %1243, %1229 ], [ %1225, %1224 ]
  %1243 = add nsw i64 %1242, 1
  %1244 = icmp eq i64 %1243, %1212
  br i1 %1244, label %1245, label %1229, !llvm.loop !231

1245:                                             ; preds = %1241
  %1246 = icmp slt i64 %1243, %1211
  br label %1247

1247:                                             ; preds = %1245, %1219, %1235
  %1248 = phi i1 [ %1237, %1235 ], [ %1223, %1219 ], [ %1246, %1245 ]
  %1249 = phi ptr [ %1238, %1235 ], [ %1220, %1219 ], [ %1220, %1245 ]
  %1250 = phi i32 [ %1240, %1235 ], [ %1221, %1219 ], [ %1221, %1245 ]
  br i1 %1248, label %1251, label %1262

1251:                                             ; preds = %1247
  %1252 = getelementptr inbounds %struct.ira_allocno, ptr %1249, i64 0, i32 20
  %1253 = load ptr, ptr %1252, align 8, !tbaa !87
  %1254 = icmp eq ptr %1253, null
  br i1 %1254, label %1217, label %1255

1255:                                             ; preds = %1251, %1255
  %1256 = phi ptr [ %1260, %1255 ], [ %1253, %1251 ]
  %1257 = phi i32 [ %1258, %1255 ], [ %1222, %1251 ]
  %1258 = add nsw i32 %1257, 1
  %1259 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %1256, i64 0, i32 3
  %1260 = load ptr, ptr %1259, align 8, !tbaa !87
  %1261 = icmp eq ptr %1260, null
  br i1 %1261, label %1217, label %1255, !llvm.loop !385

1262:                                             ; preds = %1247
  %1263 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %1264 = icmp eq ptr %1263, null
  br i1 %1264, label %1267, label %1265

1265:                                             ; preds = %1262
  %1266 = load i32, ptr %1263, align 8, !tbaa !269
  br label %1267

1267:                                             ; preds = %1262, %1265
  %1268 = phi i32 [ %1266, %1265 ], [ 0, %1262 ]
  %1269 = load ptr, ptr @cfun, align 8, !tbaa !87
  %1270 = getelementptr inbounds %struct.function, ptr %1269, i64 0, i32 1
  %1271 = load ptr, ptr %1270, align 8, !tbaa !283
  %1272 = getelementptr inbounds %struct.control_flow_graph, ptr %1271, i64 0, i32 3
  %1273 = load i32, ptr %1272, align 8, !tbaa !386
  %1274 = load i32, ptr @ira_max_point, align 4, !tbaa !102
  %1275 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1169, ptr noundef nonnull @.str.9, i32 noundef %1268, i32 noundef %1273, i32 noundef %1274)
  %1276 = load ptr, ptr @ira_dump_file, align 8, !tbaa !87
  %1277 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %1278 = load i32, ptr @ira_copies_num, align 4, !tbaa !102
  %1279 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1276, ptr noundef nonnull @.str.10, i32 noundef %1277, i32 noundef %1278, i32 noundef %1180, i32 noundef %1222)
  br label %1280

1280:                                             ; preds = %1267, %1166
  ret i8 %1124
}

declare void @df_analyze() local_unnamed_addr #3

declare void @ira_costs() local_unnamed_addr #3

declare void @ira_create_allocno_live_ranges() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_unnecessary_regions(i8 noundef zeroext %0) unnamed_addr #14 !prof !278 !PGOFuncName !387 {
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %52, label %3, !prof !298

3:                                                ; preds = %1, %50
  %4 = phi i64 [ %51, %50 ], [ 0, %1 ]
  %5 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8, !tbaa !269
  %9 = zext i32 %8 to i64
  %10 = icmp ult i64 %4, %9
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ 0, %3 ], [ %11, %7 ]
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %230, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %17 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %16, i64 %4, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !112
  %19 = icmp eq ptr %18, null
  br i1 %19, label %50, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %16, i64 %4, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !234
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %16, i64 %4, i32 8
  br i1 %23, label %25, label %26

25:                                               ; preds = %20
  store i8 0, ptr %24, align 4, !tbaa !388
  br label %50

26:                                               ; preds = %20
  store i8 1, ptr %24, align 4, !tbaa !388
  %27 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !102
  %28 = icmp sgt i32 %27, 1
  %29 = load ptr, ptr @ira_dump_file, align 8
  %30 = icmp ne ptr %29, null
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %16, i64 %4, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !145
  %35 = load i32, ptr %34, align 8, !tbaa !325
  %36 = getelementptr inbounds %struct.loop, ptr %34, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !299
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !322
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 11
  %41 = load i32, ptr %40, align 8, !tbaa !389
  %42 = getelementptr inbounds %struct.loop, ptr %34, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !327
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %32
  %46 = load i32, ptr %43, align 8, !tbaa !269
  br label %47

47:                                               ; preds = %45, %32
  %48 = phi i32 [ %46, %45 ], [ 0, %32 ]
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.27, i32 noundef %35, i32 noundef %39, i32 noundef %41, i32 noundef %48)
  br label %50

50:                                               ; preds = %47, %26, %25, %15
  %51 = add nuw i64 %4, 1
  br label %3, !llvm.loop !390

52:                                               ; preds = %1
  %53 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55, !prof !293

55:                                               ; preds = %52
  %56 = load i32, ptr %53, align 8, !tbaa !269
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi i32 [ %56, %55 ], [ 0, %52 ]
  %59 = zext i32 %58 to i64
  %60 = shl nuw nsw i64 %59, 3
  %61 = tail call ptr @ira_allocate(i64 noundef %60) #30
  %62 = load i32, ptr @ira_reg_class_cover_size, align 4
  br label %63

63:                                               ; preds = %140, %57
  %64 = phi i64 [ %142, %140 ], [ 0, %57 ]
  %65 = phi i32 [ %141, %140 ], [ 0, %57 ]
  %66 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68, !prof !294

68:                                               ; preds = %63
  %69 = load i32, ptr %66, align 8, !tbaa !269
  %70 = zext i32 %69 to i64
  %71 = icmp ult i64 %64, %70
  %72 = zext i1 %71 to i32
  br label %73

73:                                               ; preds = %68, %63
  %74 = phi i32 [ 0, %63 ], [ %72, %68 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %143, label %76, !prof !295

76:                                               ; preds = %73
  %77 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %78 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %77, i64 %64
  %79 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %77, i64 %64, i32 9
  %80 = load ptr, ptr %79, align 8, !tbaa !112
  %81 = icmp eq ptr %80, null
  br i1 %81, label %140, label %82, !prof !293

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %77, i64 %64, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !234
  %85 = icmp eq ptr %84, null
  br i1 %85, label %135, label %86, !prof !298

86:                                               ; preds = %82
  %87 = add nsw i32 %65, 1
  %88 = sext i32 %65 to i64
  %89 = getelementptr inbounds ptr, ptr %61, i64 %88
  store ptr %78, ptr %89, align 8, !tbaa !87
  %90 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %91 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %90, i64 %64, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !234
  %93 = load ptr, ptr %92, align 8, !tbaa !144
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %135

95:                                               ; preds = %86
  %96 = icmp sgt i32 %62, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %95
  %98 = zext nneg i32 %62 to i64
  br label %102

99:                                               ; preds = %102
  %100 = add nuw nsw i64 %103, 1
  %101 = icmp eq i64 %100, %98
  br i1 %101, label %112, label %102, !llvm.loop !391

102:                                              ; preds = %97, %99
  %103 = phi i64 [ 0, %97 ], [ %100, %99 ]
  %104 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !102
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %92, i64 0, i32 11, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !102
  %109 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %106
  %110 = load i32, ptr %109, align 4, !tbaa !102
  %111 = icmp sgt i32 %108, %110
  br i1 %111, label %135, label %99

112:                                              ; preds = %99, %95
  %113 = icmp slt i32 %62, 1
  %114 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %90, i64 %64
  %115 = load ptr, ptr %114, align 8, !tbaa !144
  %116 = icmp ne ptr %115, null
  %117 = select i1 %116, i1 true, i1 %113
  %118 = xor i1 %116, true
  %119 = zext i1 %118 to i8
  br i1 %117, label %135, label %120

120:                                              ; preds = %112
  %121 = zext i32 %62 to i64
  br label %125

122:                                              ; preds = %125
  %123 = add nuw nsw i64 %126, 1
  %124 = icmp eq i64 %123, %121
  br i1 %124, label %135, label %125, !llvm.loop !391

125:                                              ; preds = %120, %122
  %126 = phi i64 [ 0, %120 ], [ %123, %122 ]
  %127 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !102
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %90, i64 %64, i32 11, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !102
  %132 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %129
  %133 = load i32, ptr %132, align 4, !tbaa !102
  %134 = icmp sgt i32 %131, %133
  br i1 %134, label %135, label %122

135:                                              ; preds = %102, %122, %125, %86, %112, %82
  %136 = phi ptr [ %77, %82 ], [ %90, %112 ], [ %90, %86 ], [ %90, %125 ], [ %90, %122 ], [ %90, %102 ]
  %137 = phi i8 [ 0, %82 ], [ %119, %112 ], [ 0, %86 ], [ 1, %122 ], [ 0, %125 ], [ 0, %102 ]
  %138 = phi i32 [ %65, %82 ], [ %87, %112 ], [ %87, %86 ], [ %87, %125 ], [ %87, %122 ], [ %87, %102 ]
  %139 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %136, i64 %64, i32 8
  store i8 %137, ptr %139, align 4, !tbaa !388
  br label %140

140:                                              ; preds = %135, %76
  %141 = phi i32 [ %65, %76 ], [ %138, %135 ]
  %142 = add nuw i64 %64, 1
  br label %63, !llvm.loop !392

143:                                              ; preds = %73
  %144 = sext i32 %65 to i64
  tail call void @spec_qsort(ptr noundef %61, i64 noundef %144, i64 noundef 8, ptr noundef nonnull @loop_compare_func) #30
  %145 = load ptr, ptr @compiler_params, align 8, !tbaa !87
  %146 = getelementptr inbounds %struct.param_info, ptr %145, i64 105, i32 1
  %147 = load i32, ptr %146, align 8, !tbaa !393
  %148 = icmp slt i32 %65, %147
  br i1 %148, label %229, label %149, !prof !227

149:                                              ; preds = %143, %221
  %150 = phi i64 [ %222, %221 ], [ 0, %143 ]
  %151 = getelementptr inbounds ptr, ptr %61, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !87
  %153 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %152, i64 0, i32 8
  store i8 1, ptr %153, align 4, !tbaa !388
  %154 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !102
  %155 = icmp sgt i32 %154, 1
  %156 = load ptr, ptr @ira_dump_file, align 8
  %157 = icmp ne ptr %156, null
  %158 = select i1 %155, i1 %157, i1 false
  br i1 %158, label %159, label %221

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %152, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !145
  %162 = load i32, ptr %161, align 8, !tbaa !325
  %163 = getelementptr inbounds %struct.loop, ptr %161, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !299
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %164, i64 0, i32 9
  %166 = load i32, ptr %165, align 8, !tbaa !322
  %167 = getelementptr inbounds %struct.basic_block_def, ptr %164, i64 0, i32 11
  %168 = load i32, ptr %167, align 8, !tbaa !389
  %169 = getelementptr inbounds %struct.loop, ptr %161, i64 0, i32 7
  %170 = load ptr, ptr %169, align 8, !tbaa !327
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %159
  %173 = load i32, ptr %170, align 8, !tbaa !269
  br label %174

174:                                              ; preds = %172, %159
  %175 = phi i32 [ %173, %172 ], [ 0, %159 ]
  %176 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %152, i64 0, i32 6
  %177 = load ptr, ptr %176, align 8, !tbaa !234
  %178 = load ptr, ptr %177, align 8, !tbaa !144
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %218

180:                                              ; preds = %174
  %181 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !102
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %198

183:                                              ; preds = %180
  %184 = zext nneg i32 %181 to i64
  br label %188

185:                                              ; preds = %188
  %186 = add nuw nsw i64 %189, 1
  %187 = icmp eq i64 %186, %184
  br i1 %187, label %198, label %188, !llvm.loop !391

188:                                              ; preds = %183, %185
  %189 = phi i64 [ 0, %183 ], [ %186, %185 ]
  %190 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !102
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %177, i64 0, i32 11, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !102
  %195 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %192
  %196 = load i32, ptr %195, align 4, !tbaa !102
  %197 = icmp sgt i32 %194, %196
  br i1 %197, label %218, label %185

198:                                              ; preds = %185, %180
  %199 = load ptr, ptr %152, align 8, !tbaa !144
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %218

201:                                              ; preds = %198
  %202 = icmp sgt i32 %181, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %201
  %204 = zext nneg i32 %181 to i64
  br label %208

205:                                              ; preds = %208
  %206 = add nuw nsw i64 %209, 1
  %207 = icmp eq i64 %206, %204
  br i1 %207, label %218, label %208, !llvm.loop !391

208:                                              ; preds = %203, %205
  %209 = phi i64 [ 0, %203 ], [ %206, %205 ]
  %210 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !102
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %152, i64 0, i32 11, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !102
  %215 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %212
  %216 = load i32, ptr %215, align 4, !tbaa !102
  %217 = icmp sgt i32 %214, %216
  br i1 %217, label %218, label %205

218:                                              ; preds = %188, %208, %205, %201, %174, %198
  %219 = phi ptr [ @.str.30, %198 ], [ @.str.30, %174 ], [ @.str.29, %201 ], [ @.str.29, %205 ], [ @.str.30, %208 ], [ @.str.30, %188 ]
  %220 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %156, ptr noundef nonnull @.str.28, i32 noundef %162, i32 noundef %166, i32 noundef %168, i32 noundef %175, ptr noundef nonnull %219)
  br label %221

221:                                              ; preds = %218, %149
  %222 = add nuw i64 %150, 1
  %223 = trunc i64 %222 to i32
  %224 = sub nsw i32 %65, %223
  %225 = load ptr, ptr @compiler_params, align 8, !tbaa !87
  %226 = getelementptr inbounds %struct.param_info, ptr %225, i64 105, i32 1
  %227 = load i32, ptr %226, align 8, !tbaa !393
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %149, !prof !227, !llvm.loop !395

229:                                              ; preds = %221, %143
  tail call void @ira_free(ptr noundef %61) #30
  br label %230

230:                                              ; preds = %12, %229
  %231 = load ptr, ptr @cfun, align 8, !tbaa !87
  %232 = getelementptr inbounds %struct.function, ptr %231, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !283
  %234 = getelementptr inbounds %struct.control_flow_graph, ptr %233, i64 0, i32 5
  %235 = load i32, ptr %234, align 8, !tbaa !285
  %236 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %237 = icmp eq ptr %236, null
  br i1 %237, label %240, label %238, !prof !293

238:                                              ; preds = %230
  %239 = load i32, ptr %236, align 8, !tbaa !269
  br label %240

240:                                              ; preds = %230, %238
  %241 = phi i32 [ %239, %238 ], [ 0, %230 ]
  %242 = add i32 %241, %235
  %243 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %242) #30
  store ptr %243, ptr @children_vec, align 8, !tbaa !87
  %244 = load ptr, ptr @cfun, align 8, !tbaa !87
  %245 = getelementptr inbounds %struct.function, ptr %244, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !283
  %247 = getelementptr inbounds %struct.control_flow_graph, ptr %246, i64 0, i32 5
  %248 = load i32, ptr %247, align 8, !tbaa !285
  %249 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %250 = icmp eq ptr %249, null
  br i1 %250, label %253, label %251, !prof !293

251:                                              ; preds = %240
  %252 = load i32, ptr %249, align 8, !tbaa !269
  br label %253

253:                                              ; preds = %240, %251
  %254 = phi i32 [ %252, %251 ], [ 0, %240 ]
  %255 = add i32 %254, %248
  %256 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %255) #30
  store ptr %256, ptr @removed_loop_vec, align 8, !tbaa !87
  %257 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !87
  tail call fastcc void @remove_uneccesary_loop_nodes_from_loop_tree(ptr noundef %257)
  %258 = load ptr, ptr @children_vec, align 8, !tbaa !87
  %259 = icmp eq ptr %258, null
  br i1 %259, label %261, label %260, !prof !293

260:                                              ; preds = %253
  tail call void @free(ptr noundef %258)
  br label %261

261:                                              ; preds = %253, %260
  store ptr null, ptr @children_vec, align 8, !tbaa !87
  br i1 %2, label %441, label %262, !prof !298

262:                                              ; preds = %261, %345
  %263 = phi ptr [ %299, %345 ], [ undef, %261 ]
  %264 = phi i32 [ %300, %345 ], [ 0, %261 ]
  %265 = phi i1 [ false, %345 ], [ true, %261 ]
  %266 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %267 = sext i32 %266 to i64
  br label %268

268:                                              ; preds = %309, %262
  %269 = phi ptr [ %263, %262 ], [ %299, %309 ]
  %270 = phi i32 [ %264, %262 ], [ %300, %309 ]
  %271 = icmp slt i32 %270, %266
  br i1 %271, label %272, label %297

272:                                              ; preds = %268
  %273 = load ptr, ptr @ira_allocnos, align 8, !tbaa !87
  %274 = sext i32 %270 to i64
  %275 = getelementptr inbounds ptr, ptr %273, i64 %274
  %276 = load ptr, ptr %275, align 8, !tbaa !87
  %277 = icmp eq ptr %276, null
  br i1 %277, label %290, label %284

278:                                              ; preds = %290
  %279 = getelementptr inbounds ptr, ptr %273, i64 %292
  %280 = load ptr, ptr %279, align 8, !tbaa !87
  %281 = icmp eq ptr %280, null
  br i1 %281, label %290, label %282, !llvm.loop !231

282:                                              ; preds = %278
  %283 = icmp slt i64 %292, %267
  br label %284

284:                                              ; preds = %282, %272
  %285 = phi i64 [ %274, %272 ], [ %292, %282 ]
  %286 = phi i1 [ %271, %272 ], [ %283, %282 ]
  %287 = phi ptr [ %276, %272 ], [ %280, %282 ]
  %288 = trunc i64 %285 to i32
  %289 = add nsw i32 %288, 1
  br label %297

290:                                              ; preds = %272, %278
  %291 = phi i64 [ %292, %278 ], [ %274, %272 ]
  %292 = add nsw i64 %291, 1
  %293 = trunc i64 %292 to i32
  %294 = icmp eq i32 %266, %293
  br i1 %294, label %295, label %278, !llvm.loop !231

295:                                              ; preds = %290
  %296 = icmp slt i64 %292, %267
  br label %297

297:                                              ; preds = %295, %268, %284
  %298 = phi i1 [ %286, %284 ], [ %271, %268 ], [ %296, %295 ]
  %299 = phi ptr [ %287, %284 ], [ %269, %268 ], [ %269, %295 ]
  %300 = phi i32 [ %289, %284 ], [ %270, %268 ], [ %270, %295 ]
  br i1 %298, label %304, label %301

301:                                              ; preds = %297
  %302 = load ptr, ptr @ira_allocnos, align 8
  %303 = sext i32 %266 to i64
  br label %346

304:                                              ; preds = %297
  %305 = getelementptr inbounds %struct.ira_allocno, ptr %299, i64 0, i32 6
  %306 = load ptr, ptr %305, align 8, !tbaa !109
  %307 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !87
  %308 = icmp eq ptr %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %304, %310, %323
  br label %268, !llvm.loop !396

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.ira_allocno, ptr %299, i64 0, i32 17
  %312 = load ptr, ptr %311, align 8, !tbaa !146
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %309

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.ira_allocno, ptr %299, i64 0, i32 1
  %316 = load i32, ptr %315, align 4, !tbaa !107
  %317 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %307, i64 0, i32 9
  %318 = load ptr, ptr %317, align 8, !tbaa !112
  %319 = sext i32 %316 to i64
  %320 = getelementptr inbounds ptr, ptr %318, i64 %319
  %321 = load ptr, ptr %320, align 8, !tbaa !87
  %322 = icmp eq ptr %321, null
  br i1 %322, label %323, label %324

323:                                              ; preds = %314
  store ptr %307, ptr %305, align 8, !tbaa !109
  store ptr %299, ptr %320, align 8, !tbaa !87
  br label %309

324:                                              ; preds = %314
  %325 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %306, i64 0, i32 6
  %326 = load ptr, ptr %325, align 8, !tbaa !234
  %327 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %326, i64 0, i32 9
  %328 = load ptr, ptr %327, align 8, !tbaa !112
  %329 = getelementptr inbounds ptr, ptr %328, i64 %319
  %330 = load ptr, ptr %329, align 8, !tbaa !87
  %331 = icmp eq ptr %330, null
  %332 = getelementptr inbounds %struct.ira_allocno, ptr %299, i64 0, i32 20
  %333 = load ptr, ptr %332, align 8, !tbaa !133
  %334 = icmp eq ptr %333, null
  br i1 %334, label %340, label %335

335:                                              ; preds = %324, %335
  %336 = phi ptr [ %338, %335 ], [ %333, %324 ]
  store ptr %321, ptr %336, align 8, !tbaa !148
  %337 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %336, i64 0, i32 3
  %338 = load ptr, ptr %337, align 8, !tbaa !152
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %335, !llvm.loop !238

340:                                              ; preds = %335, %324
  %341 = getelementptr inbounds %struct.ira_allocno, ptr %321, i64 0, i32 20
  %342 = load ptr, ptr %341, align 8, !tbaa !133
  %343 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %333, ptr noundef %342)
  store ptr %343, ptr %341, align 8, !tbaa !133
  store ptr null, ptr %332, align 8, !tbaa !133
  br i1 %331, label %344, label %345

344:                                              ; preds = %340
  tail call fastcc void @propagate_some_info_from_allocno(ptr noundef nonnull %321, ptr noundef %299)
  br label %345

345:                                              ; preds = %344, %340
  br label %262, !llvm.loop !396

346:                                              ; preds = %374, %301
  %347 = phi ptr [ %299, %301 ], [ %376, %374 ]
  %348 = phi i32 [ 0, %301 ], [ %377, %374 ]
  %349 = icmp slt i32 %348, %266
  br i1 %349, label %350, label %374

350:                                              ; preds = %346
  %351 = sext i32 %348 to i64
  %352 = getelementptr inbounds ptr, ptr %302, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !87
  %354 = icmp eq ptr %353, null
  br i1 %354, label %367, label %361

355:                                              ; preds = %367
  %356 = getelementptr inbounds ptr, ptr %302, i64 %369
  %357 = load ptr, ptr %356, align 8, !tbaa !87
  %358 = icmp eq ptr %357, null
  br i1 %358, label %367, label %359, !llvm.loop !231

359:                                              ; preds = %355
  %360 = icmp slt i64 %369, %303
  br label %361

361:                                              ; preds = %359, %350
  %362 = phi i64 [ %351, %350 ], [ %369, %359 ]
  %363 = phi i1 [ %349, %350 ], [ %360, %359 ]
  %364 = phi ptr [ %353, %350 ], [ %357, %359 ]
  %365 = trunc i64 %362 to i32
  %366 = add nsw i32 %365, 1
  br label %374

367:                                              ; preds = %350, %355
  %368 = phi i64 [ %369, %355 ], [ %351, %350 ]
  %369 = add nsw i64 %368, 1
  %370 = trunc i64 %369 to i32
  %371 = icmp eq i32 %266, %370
  br i1 %371, label %372, label %355, !llvm.loop !231

372:                                              ; preds = %367
  %373 = icmp slt i64 %369, %303
  br label %374

374:                                              ; preds = %372, %346, %361
  %375 = phi i1 [ %363, %361 ], [ %349, %346 ], [ %373, %372 ]
  %376 = phi ptr [ %364, %361 ], [ %347, %346 ], [ %347, %372 ]
  %377 = phi i32 [ %366, %361 ], [ %348, %346 ], [ %348, %372 ]
  br i1 %375, label %346, label %378, !llvm.loop !397

378:                                              ; preds = %374, %438
  %379 = phi ptr [ %411, %438 ], [ %376, %374 ]
  %380 = phi i32 [ %412, %438 ], [ 0, %374 ]
  %381 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %409

383:                                              ; preds = %378
  %384 = load ptr, ptr @ira_allocnos, align 8, !tbaa !87
  %385 = sext i32 %380 to i64
  %386 = sext i32 %381 to i64
  %387 = getelementptr inbounds ptr, ptr %384, i64 %385
  %388 = load ptr, ptr %387, align 8, !tbaa !87
  %389 = icmp eq ptr %388, null
  br i1 %389, label %402, label %396

390:                                              ; preds = %402
  %391 = getelementptr inbounds ptr, ptr %384, i64 %404
  %392 = load ptr, ptr %391, align 8, !tbaa !87
  %393 = icmp eq ptr %392, null
  br i1 %393, label %402, label %394, !llvm.loop !231

394:                                              ; preds = %390
  %395 = icmp slt i64 %404, %386
  br label %396

396:                                              ; preds = %394, %383
  %397 = phi i64 [ %385, %383 ], [ %404, %394 ]
  %398 = phi i1 [ %382, %383 ], [ %395, %394 ]
  %399 = phi ptr [ %388, %383 ], [ %392, %394 ]
  %400 = trunc i64 %397 to i32
  %401 = add nsw i32 %400, 1
  br label %409

402:                                              ; preds = %383, %390
  %403 = phi i64 [ %404, %390 ], [ %385, %383 ]
  %404 = add nsw i64 %403, 1
  %405 = trunc i64 %404 to i32
  %406 = icmp eq i32 %381, %405
  br i1 %406, label %407, label %390, !llvm.loop !231

407:                                              ; preds = %402
  %408 = icmp slt i64 %404, %386
  br label %409

409:                                              ; preds = %407, %378, %396
  %410 = phi i1 [ %398, %396 ], [ %382, %378 ], [ %408, %407 ]
  %411 = phi ptr [ %399, %396 ], [ %379, %378 ], [ %379, %407 ]
  %412 = phi i32 [ %401, %396 ], [ %380, %378 ], [ %380, %407 ]
  br i1 %410, label %413, label %439

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.ira_allocno, ptr %411, i64 0, i32 1
  %415 = load i32, ptr %414, align 4, !tbaa !107
  %416 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !87
  %417 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %416, i64 0, i32 9
  %418 = load ptr, ptr %417, align 8, !tbaa !112
  %419 = sext i32 %415 to i64
  %420 = getelementptr inbounds ptr, ptr %418, i64 %419
  %421 = load ptr, ptr %420, align 8, !tbaa !87
  %422 = icmp eq ptr %421, %411
  br i1 %422, label %423, label %437

423:                                              ; preds = %413
  %424 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  %425 = getelementptr inbounds ptr, ptr %424, i64 %419
  store ptr %411, ptr %425, align 8, !tbaa !87
  %426 = getelementptr inbounds %struct.ira_allocno, ptr %411, i64 0, i32 5
  store ptr null, ptr %426, align 8, !tbaa !111
  %427 = getelementptr inbounds %struct.ira_allocno, ptr %411, i64 0, i32 17
  store ptr null, ptr %427, align 8, !tbaa !146
  %428 = getelementptr inbounds %struct.ira_allocno, ptr %411, i64 0, i32 27
  %429 = load i64, ptr %428, align 8, !tbaa !120
  %430 = getelementptr inbounds %struct.ira_allocno, ptr %411, i64 0, i32 26
  store i64 %429, ptr %430, align 8, !tbaa !119
  %431 = getelementptr inbounds %struct.ira_allocno, ptr %411, i64 0, i32 31
  %432 = load i16, ptr %431, align 4
  %433 = and i16 %432, 32
  %434 = icmp eq i16 %433, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %423
  %436 = or i16 %432, 16
  store i16 %436, ptr %431, align 4
  br label %438

437:                                              ; preds = %413
  tail call fastcc void @finish_allocno(ptr noundef %411)
  br label %438

438:                                              ; preds = %437, %435, %423
  br label %378, !llvm.loop !398

439:                                              ; preds = %409
  br i1 %265, label %580, label %440

440:                                              ; preds = %439
  tail call void @ira_rebuild_start_finish_chains() #30
  br label %580

441:                                              ; preds = %261
  store ptr null, ptr @regno_allocnos, align 8, !tbaa !87
  %442 = tail call i32 @max_reg_num() #30
  %443 = icmp sgt i32 %442, 53
  br i1 %443, label %444, label %576, !prof !279

444:                                              ; preds = %441
  %445 = zext nneg i32 %442 to i64
  br label %446

446:                                              ; preds = %444, %571
  %447 = phi i64 [ %445, %444 ], [ %449, %571 ]
  %448 = phi i8 [ 0, %444 ], [ %510, %571 ]
  %449 = add nsw i64 %447, -1
  %450 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  %451 = getelementptr inbounds ptr, ptr %450, i64 %449
  %452 = load ptr, ptr %451, align 8, !tbaa !87
  %453 = icmp eq ptr %452, null
  br i1 %453, label %508, label %454, !prof !361

454:                                              ; preds = %446, %503
  %455 = phi i8 [ %506, %503 ], [ %448, %446 ]
  %456 = phi i8 [ %505, %503 ], [ 0, %446 ]
  %457 = phi ptr [ %460, %503 ], [ %452, %446 ]
  %458 = phi ptr [ %504, %503 ], [ null, %446 ]
  %459 = getelementptr inbounds %struct.ira_allocno, ptr %457, i64 0, i32 5
  %460 = load ptr, ptr %459, align 8, !tbaa !111
  %461 = getelementptr inbounds %struct.ira_allocno, ptr %457, i64 0, i32 6
  %462 = load ptr, ptr %461, align 8, !tbaa !109
  %463 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %462, i64 0, i32 8
  %464 = load i8, ptr %463, align 4, !tbaa !388
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %503, label %466, !prof !110

466:                                              ; preds = %454, %475
  %467 = phi ptr [ %469, %475 ], [ %462, %454 ]
  %468 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %467, i64 0, i32 6
  %469 = load ptr, ptr %468, align 8, !tbaa !234
  %470 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %469, i64 0, i32 9
  %471 = load ptr, ptr %470, align 8, !tbaa !112
  %472 = getelementptr inbounds ptr, ptr %471, i64 %449
  %473 = load ptr, ptr %472, align 8, !tbaa !87
  %474 = icmp eq ptr %473, null
  br i1 %474, label %475, label %485

475:                                              ; preds = %466
  %476 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %469, i64 0, i32 8
  %477 = load i8, ptr %476, align 4, !tbaa !388
  %478 = icmp eq i8 %477, 0
  br i1 %478, label %479, label %466, !llvm.loop !399

479:                                              ; preds = %475
  %480 = getelementptr inbounds ptr, ptr %471, i64 %449
  store ptr %469, ptr %461, align 8, !tbaa !109
  store ptr %457, ptr %480, align 8, !tbaa !87
  %481 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %469, i64 0, i32 12
  %482 = load ptr, ptr %481, align 8, !tbaa !115
  %483 = load i32, ptr %457, align 8, !tbaa !114
  %484 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %482, i32 noundef %483) #30
  br label %503

485:                                              ; preds = %466
  %486 = icmp eq ptr %458, null
  %487 = getelementptr inbounds %struct.ira_allocno, ptr %458, i64 0, i32 5
  %488 = load ptr, ptr @ira_regno_allocno_map, align 8
  %489 = getelementptr inbounds ptr, ptr %488, i64 %449
  %490 = select i1 %486, ptr %489, ptr %487
  store ptr %460, ptr %490, align 8, !tbaa !87
  %491 = getelementptr inbounds %struct.ira_allocno, ptr %457, i64 0, i32 20
  %492 = load ptr, ptr %491, align 8, !tbaa !133
  %493 = icmp eq ptr %492, null
  br i1 %493, label %499, label %494

494:                                              ; preds = %485, %494
  %495 = phi ptr [ %497, %494 ], [ %492, %485 ]
  store ptr %473, ptr %495, align 8, !tbaa !148
  %496 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %495, i64 0, i32 3
  %497 = load ptr, ptr %496, align 8, !tbaa !152
  %498 = icmp eq ptr %497, null
  br i1 %498, label %499, label %494, !llvm.loop !238

499:                                              ; preds = %494, %485
  %500 = getelementptr inbounds %struct.ira_allocno, ptr %473, i64 0, i32 20
  %501 = load ptr, ptr %500, align 8, !tbaa !133
  %502 = tail call ptr @ira_merge_allocno_live_ranges(ptr noundef %492, ptr noundef %501)
  store ptr %502, ptr %500, align 8, !tbaa !133
  store ptr null, ptr %491, align 8, !tbaa !133
  tail call fastcc void @propagate_some_info_from_allocno(ptr noundef nonnull %473, ptr noundef nonnull %457)
  tail call fastcc void @finish_allocno(ptr noundef nonnull %457)
  br label %503

503:                                              ; preds = %499, %479, %454
  %504 = phi ptr [ %457, %479 ], [ %458, %499 ], [ %457, %454 ]
  %505 = phi i8 [ 1, %479 ], [ %456, %499 ], [ %456, %454 ]
  %506 = phi i8 [ %455, %479 ], [ 1, %499 ], [ %455, %454 ]
  %507 = icmp eq ptr %460, null
  br i1 %507, label %508, label %454, !prof !110, !llvm.loop !400

508:                                              ; preds = %503, %446
  %509 = phi i8 [ 0, %446 ], [ %505, %503 ]
  %510 = phi i8 [ %448, %446 ], [ %506, %503 ]
  %511 = icmp eq i8 %509, 0
  br i1 %511, label %571, label %512, !prof !401

512:                                              ; preds = %508
  %513 = load ptr, ptr @regno_allocnos, align 8, !tbaa !87
  %514 = icmp eq ptr %513, null
  br i1 %514, label %515, label %520

515:                                              ; preds = %512
  %516 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %517 = sext i32 %516 to i64
  %518 = shl nsw i64 %517, 3
  %519 = tail call ptr @ira_allocate(i64 noundef %518) #30
  store ptr %519, ptr @regno_allocnos, align 8, !tbaa !87
  br label %520

520:                                              ; preds = %515, %512
  %521 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  %522 = getelementptr inbounds ptr, ptr %521, i64 %449
  %523 = load ptr, ptr %522, align 8, !tbaa !87
  %524 = icmp eq ptr %523, null
  br i1 %524, label %537, label %525

525:                                              ; preds = %520
  %526 = load ptr, ptr @regno_allocnos, align 8, !tbaa !87
  br label %527

527:                                              ; preds = %525, %527
  %528 = phi i64 [ 0, %525 ], [ %530, %527 ]
  %529 = phi ptr [ %523, %525 ], [ %533, %527 ]
  %530 = add nuw i64 %528, 1
  %531 = getelementptr inbounds ptr, ptr %526, i64 %528
  store ptr %529, ptr %531, align 8, !tbaa !87
  %532 = getelementptr inbounds %struct.ira_allocno, ptr %529, i64 0, i32 5
  %533 = load ptr, ptr %532, align 8, !tbaa !87
  %534 = icmp eq ptr %533, null
  br i1 %534, label %535, label %527, !llvm.loop !402

535:                                              ; preds = %527
  %536 = trunc i64 %530 to i32
  br label %537

537:                                              ; preds = %535, %520
  %538 = phi i32 [ 0, %520 ], [ %536, %535 ]
  %539 = load ptr, ptr @regno_allocnos, align 8, !tbaa !87
  %540 = zext nneg i32 %538 to i64
  tail call void @spec_qsort(ptr noundef %539, i64 noundef %540, i64 noundef 8, ptr noundef nonnull @regno_allocno_order_compare_func) #30
  %541 = icmp ugt i32 %538, 1
  br i1 %541, label %542, label %554

542:                                              ; preds = %537
  %543 = load ptr, ptr @regno_allocnos, align 8, !tbaa !87
  %544 = zext i32 %538 to i64
  br label %545

545:                                              ; preds = %542, %545
  %546 = phi i64 [ 1, %542 ], [ %552, %545 ]
  %547 = getelementptr inbounds ptr, ptr %543, i64 %546
  %548 = load ptr, ptr %547, align 8, !tbaa !87
  %549 = getelementptr ptr, ptr %547, i64 -1
  %550 = load ptr, ptr %549, align 8, !tbaa !87
  %551 = getelementptr inbounds %struct.ira_allocno, ptr %550, i64 0, i32 5
  store ptr %548, ptr %551, align 8, !tbaa !111
  %552 = add nuw nsw i64 %546, 1
  %553 = icmp eq i64 %552, %544
  br i1 %553, label %554, label %545, !llvm.loop !403

554:                                              ; preds = %545, %537
  %555 = load ptr, ptr @regno_allocnos, align 8, !tbaa !87
  %556 = getelementptr ptr, ptr %555, i64 %540
  %557 = getelementptr ptr, ptr %556, i64 -1
  %558 = load ptr, ptr %557, align 8, !tbaa !87
  %559 = getelementptr inbounds %struct.ira_allocno, ptr %558, i64 0, i32 5
  store ptr null, ptr %559, align 8, !tbaa !111
  %560 = load ptr, ptr %555, align 8, !tbaa !87
  %561 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  %562 = getelementptr inbounds ptr, ptr %561, i64 %449
  store ptr %560, ptr %562, align 8, !tbaa !87
  %563 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !102
  %564 = icmp sgt i32 %563, 1
  %565 = load ptr, ptr @ira_dump_file, align 8
  %566 = icmp ne ptr %565, null
  %567 = select i1 %564, i1 %566, i1 false
  br i1 %567, label %568, label %571

568:                                              ; preds = %554
  %569 = trunc i64 %449 to i32
  %570 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %565, ptr noundef nonnull @.str.31, i32 noundef %569)
  br label %571

571:                                              ; preds = %568, %554, %508
  %572 = icmp sgt i64 %447, 54
  br i1 %572, label %446, label %573, !prof !359, !llvm.loop !404

573:                                              ; preds = %571
  %574 = icmp eq i8 %510, 0
  br i1 %574, label %576, label %575, !prof !298

575:                                              ; preds = %573
  tail call void @ira_rebuild_start_finish_chains() #30
  br label %576

576:                                              ; preds = %441, %575, %573
  %577 = load ptr, ptr @regno_allocnos, align 8, !tbaa !87
  %578 = icmp eq ptr %577, null
  br i1 %578, label %580, label %579, !prof !298

579:                                              ; preds = %576
  tail call void @ira_free(ptr noundef nonnull %577) #30
  br label %580

580:                                              ; preds = %579, %576, %440, %439
  br label %581

581:                                              ; preds = %580, %589
  %582 = load ptr, ptr @removed_loop_vec, align 8
  %583 = icmp eq ptr %582, null
  br i1 %583, label %586, label %584, !prof !293

584:                                              ; preds = %581
  %585 = load i32, ptr %582, align 8, !tbaa !405
  br label %586

586:                                              ; preds = %581, %584
  %587 = phi i32 [ %585, %584 ], [ 0, %581 ]
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %595, label %589, !prof !298

589:                                              ; preds = %586
  %590 = load i32, ptr %582, align 8, !tbaa !405
  %591 = add i32 %590, -1
  store i32 %591, ptr %582, align 8, !tbaa !405
  %592 = zext i32 %591 to i64
  %593 = getelementptr inbounds %struct.VEC_ira_loop_tree_node_t_base, ptr %582, i64 0, i32 2, i64 %592
  %594 = load ptr, ptr %593, align 8, !tbaa !87
  tail call fastcc void @finish_loop_tree_node(ptr noundef %594)
  br label %581, !llvm.loop !407

595:                                              ; preds = %586
  br i1 %583, label %597, label %596, !prof !293

596:                                              ; preds = %595
  tail call void @free(ptr noundef %582)
  br label %597

597:                                              ; preds = %595, %596
  store ptr null, ptr @removed_loop_vec, align 8, !tbaa !87
  ret void
}

declare void @ira_tune_allocno_costs_and_cover_classes() local_unnamed_addr #3

declare void @ira_build_conflicts() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ira_destroy() local_unnamed_addr #14 !prof !278 {
  br label %1

1:                                                ; preds = %28, %0
  %2 = phi i32 [ 0, %0 ], [ %29, %28 ]
  %3 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !294

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !269
  %7 = icmp ugt i32 %6, %2
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %5 ]
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  br i1 %11, label %30, label %13, !prof !295

13:                                               ; preds = %9
  %14 = zext i32 %2 to i64
  %15 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %12, i64 %14, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18, !prof !293

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %12, i64 %14, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !290
  tail call void @ira_free_bitmap(ptr noundef %20) #30
  %21 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %12, i64 %14, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !289
  tail call void @ira_free_bitmap(ptr noundef %22) #30
  %23 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %12, i64 %14, i32 14
  %24 = load ptr, ptr %23, align 8, !tbaa !288
  tail call void @ira_free_bitmap(ptr noundef %24) #30
  %25 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %12, i64 %14, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !115
  tail call void @ira_free_bitmap(ptr noundef %26) #30
  %27 = load ptr, ptr %15, align 8, !tbaa !112
  tail call void @ira_free(ptr noundef %27) #30
  store ptr null, ptr %15, align 8, !tbaa !112
  br label %28

28:                                               ; preds = %13, %18
  %29 = add i32 %2, 1
  br label %1, !llvm.loop !408

30:                                               ; preds = %9
  tail call void @ira_free(ptr noundef %12) #30
  %31 = load i32, ptr @last_basic_block_before_change, align 4, !tbaa !102
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %69, label %33, !prof !287

33:                                               ; preds = %30, %64
  %34 = phi i64 [ %65, %64 ], [ 0, %30 ]
  %35 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !87
  %36 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %35, i64 %34, i32 15
  %37 = load ptr, ptr %36, align 8, !tbaa !290
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !409

39:                                               ; preds = %33
  tail call void @ira_free_bitmap(ptr noundef nonnull %37) #30
  br label %40

40:                                               ; preds = %39, %33
  %41 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !87
  %42 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %41, i64 %34, i32 13
  %43 = load ptr, ptr %42, align 8, !tbaa !289
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !409

45:                                               ; preds = %40
  tail call void @ira_free_bitmap(ptr noundef nonnull %43) #30
  br label %46

46:                                               ; preds = %45, %40
  %47 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !87
  %48 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %47, i64 %34, i32 14
  %49 = load ptr, ptr %48, align 8, !tbaa !288
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51, !prof !409

51:                                               ; preds = %46
  tail call void @ira_free_bitmap(ptr noundef nonnull %49) #30
  br label %52

52:                                               ; preds = %51, %46
  %53 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !87
  %54 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %53, i64 %34, i32 12
  %55 = load ptr, ptr %54, align 8, !tbaa !115
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57, !prof !409

57:                                               ; preds = %52
  tail call void @ira_free_bitmap(ptr noundef nonnull %55) #30
  br label %58

58:                                               ; preds = %57, %52
  %59 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !87
  %60 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %59, i64 %34, i32 9
  %61 = load ptr, ptr %60, align 8, !tbaa !112
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63, !prof !409

63:                                               ; preds = %58
  tail call void @ira_free(ptr noundef nonnull %61) #30
  br label %64

64:                                               ; preds = %63, %58
  %65 = add nuw nsw i64 %34, 1
  %66 = load i32, ptr @last_basic_block_before_change, align 4, !tbaa !102
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %33, label %69, !prof !291, !llvm.loop !410

69:                                               ; preds = %64, %30
  %70 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !87
  tail call void @ira_free(ptr noundef %70) #30
  br label %71

71:                                               ; preds = %106, %69
  %72 = phi ptr [ undef, %69 ], [ %104, %106 ]
  %73 = phi i32 [ 0, %69 ], [ %105, %106 ]
  %74 = load i32, ptr @ira_copies_num, align 4, !tbaa !102
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %102, !prof !279

76:                                               ; preds = %71
  %77 = load ptr, ptr @ira_copies, align 8, !tbaa !87
  %78 = sext i32 %73 to i64
  %79 = sext i32 %74 to i64
  %80 = getelementptr inbounds ptr, ptr %77, i64 %78
  %81 = load ptr, ptr %80, align 8, !tbaa !87
  %82 = icmp eq ptr %81, null
  br i1 %82, label %95, label %89, !prof !324

83:                                               ; preds = %95
  %84 = getelementptr inbounds ptr, ptr %77, i64 %97
  %85 = load ptr, ptr %84, align 8, !tbaa !87
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87, !prof !324, !llvm.loop !211

87:                                               ; preds = %83
  %88 = icmp slt i64 %97, %79
  br label %89

89:                                               ; preds = %87, %76
  %90 = phi i64 [ %78, %76 ], [ %97, %87 ]
  %91 = phi i1 [ %75, %76 ], [ %88, %87 ]
  %92 = phi ptr [ %81, %76 ], [ %85, %87 ]
  %93 = trunc i64 %90 to i32
  %94 = add nsw i32 %93, 1
  br label %102

95:                                               ; preds = %76, %83
  %96 = phi i64 [ %97, %83 ], [ %78, %76 ]
  %97 = add nsw i64 %96, 1
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %74, %98
  br i1 %99, label %100, label %83, !prof !411, !llvm.loop !211

100:                                              ; preds = %95
  %101 = icmp slt i64 %97, %79
  br label %102

102:                                              ; preds = %100, %71, %89
  %103 = phi i1 [ %91, %89 ], [ %75, %71 ], [ %101, %100 ]
  %104 = phi ptr [ %92, %89 ], [ %72, %71 ], [ %72, %100 ]
  %105 = phi i32 [ %94, %89 ], [ %73, %71 ], [ %73, %100 ]
  br i1 %103, label %106, label %108, !prof !412

106:                                              ; preds = %102
  %107 = load ptr, ptr @copy_pool, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %107, ptr noundef %104) #30
  br label %71, !llvm.loop !413

108:                                              ; preds = %102
  %109 = load ptr, ptr @copy_vec, align 8, !tbaa !87
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111, !prof !293

111:                                              ; preds = %108
  tail call void @free(ptr noundef %109)
  br label %112

112:                                              ; preds = %108, %111
  store ptr null, ptr @copy_vec, align 8, !tbaa !87
  %113 = load ptr, ptr @copy_pool, align 8, !tbaa !87
  tail call void @free_alloc_pool(ptr noundef %113) #30
  br label %114

114:                                              ; preds = %207, %112
  %115 = phi ptr [ undef, %112 ], [ %147, %207 ]
  %116 = phi i32 [ 0, %112 ], [ %148, %207 ]
  %117 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %145, !prof !279

119:                                              ; preds = %114
  %120 = load ptr, ptr @ira_allocnos, align 8, !tbaa !87
  %121 = sext i32 %116 to i64
  %122 = sext i32 %117 to i64
  %123 = getelementptr inbounds ptr, ptr %120, i64 %121
  %124 = load ptr, ptr %123, align 8, !tbaa !87
  %125 = icmp eq ptr %124, null
  br i1 %125, label %138, label %132, !prof !324

126:                                              ; preds = %138
  %127 = getelementptr inbounds ptr, ptr %120, i64 %140
  %128 = load ptr, ptr %127, align 8, !tbaa !87
  %129 = icmp eq ptr %128, null
  br i1 %129, label %138, label %130, !prof !324, !llvm.loop !231

130:                                              ; preds = %126
  %131 = icmp slt i64 %140, %122
  br label %132

132:                                              ; preds = %130, %119
  %133 = phi i64 [ %121, %119 ], [ %140, %130 ]
  %134 = phi i1 [ %118, %119 ], [ %131, %130 ]
  %135 = phi ptr [ %124, %119 ], [ %128, %130 ]
  %136 = trunc i64 %133 to i32
  %137 = add nsw i32 %136, 1
  br label %145

138:                                              ; preds = %119, %126
  %139 = phi i64 [ %140, %126 ], [ %121, %119 ]
  %140 = add nsw i64 %139, 1
  %141 = trunc i64 %140 to i32
  %142 = icmp eq i32 %117, %141
  br i1 %142, label %143, label %126, !prof !336, !llvm.loop !231

143:                                              ; preds = %138
  %144 = icmp slt i64 %140, %122
  br label %145

145:                                              ; preds = %143, %114, %132
  %146 = phi i1 [ %134, %132 ], [ %118, %114 ], [ %144, %143 ]
  %147 = phi ptr [ %135, %132 ], [ %115, %114 ], [ %115, %143 ]
  %148 = phi i32 [ %137, %132 ], [ %116, %114 ], [ %116, %143 ]
  br i1 %146, label %149, label %209, !prof !337

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.ira_allocno, ptr %147, i64 0, i32 9
  %151 = load i32, ptr %150, align 8, !tbaa !141
  %152 = load ptr, ptr @ira_allocnos, align 8, !tbaa !87
  %153 = load i32, ptr %147, align 8, !tbaa !114
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %152, i64 %154
  store ptr null, ptr %155, align 8, !tbaa !87
  %156 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !87
  %157 = getelementptr inbounds %struct.ira_allocno, ptr %147, i64 0, i32 24
  %158 = load i32, ptr %157, align 8, !tbaa !136
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %156, i64 %159
  store ptr null, ptr %160, align 8, !tbaa !87
  %161 = getelementptr inbounds %struct.ira_allocno, ptr %147, i64 0, i32 23
  %162 = load ptr, ptr %161, align 8, !tbaa !116
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164, !prof !127

164:                                              ; preds = %149
  tail call void @ira_free(ptr noundef nonnull %162) #30
  br label %165

165:                                              ; preds = %164, %149
  %166 = getelementptr inbounds %struct.ira_allocno, ptr %147, i64 0, i32 33
  %167 = load ptr, ptr %166, align 8, !tbaa !236
  %168 = icmp eq ptr %167, null
  br i1 %168, label %173, label %169, !prof !274

169:                                              ; preds = %165
  %170 = zext i32 %151 to i64
  %171 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %172, ptr noundef nonnull %167) #30
  br label %173

173:                                              ; preds = %169, %165
  %174 = getelementptr inbounds %struct.ira_allocno, ptr %147, i64 0, i32 35
  %175 = load ptr, ptr %174, align 8, !tbaa !237
  %176 = icmp eq ptr %175, null
  br i1 %176, label %181, label %177, !prof !275

177:                                              ; preds = %173
  %178 = zext i32 %151 to i64
  %179 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %180, ptr noundef nonnull %175) #30
  br label %181

181:                                              ; preds = %177, %173
  %182 = getelementptr inbounds %struct.ira_allocno, ptr %147, i64 0, i32 34
  %183 = load ptr, ptr %182, align 8, !tbaa !178
  %184 = icmp eq ptr %183, null
  br i1 %184, label %189, label %185, !prof !110

185:                                              ; preds = %181
  %186 = zext i32 %151 to i64
  %187 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %188, ptr noundef nonnull %183) #30
  br label %189

189:                                              ; preds = %185, %181
  %190 = getelementptr inbounds %struct.ira_allocno, ptr %147, i64 0, i32 36
  %191 = load ptr, ptr %190, align 8, !tbaa !180
  %192 = icmp eq ptr %191, null
  br i1 %192, label %197, label %193, !prof !110

193:                                              ; preds = %189
  %194 = zext i32 %151 to i64
  %195 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %196, ptr noundef nonnull %191) #30
  br label %197

197:                                              ; preds = %193, %189
  %198 = getelementptr inbounds %struct.ira_allocno, ptr %147, i64 0, i32 20
  %199 = load ptr, ptr %198, align 8, !tbaa !133
  %200 = icmp eq ptr %199, null
  br i1 %200, label %207, label %201, !prof !276

201:                                              ; preds = %197, %201
  %202 = phi ptr [ %204, %201 ], [ %199, %197 ]
  %203 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %202, i64 0, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !152
  %205 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %205, ptr noundef nonnull %202) #30
  %206 = icmp eq ptr %204, null
  br i1 %206, label %207, label %201, !prof !277, !llvm.loop !176

207:                                              ; preds = %201, %197
  %208 = load ptr, ptr @allocno_pool, align 8, !tbaa !87
  tail call void @pool_free(ptr noundef %208, ptr noundef nonnull %147) #30
  br label %114, !llvm.loop !414

209:                                              ; preds = %145
  %210 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  tail call void @ira_free(ptr noundef %210) #30
  %211 = load ptr, ptr @ira_conflict_id_allocno_map_vec, align 8, !tbaa !87
  %212 = icmp eq ptr %211, null
  br i1 %212, label %214, label %213, !prof !293

213:                                              ; preds = %209
  tail call void @free(ptr noundef %211)
  br label %214

214:                                              ; preds = %213, %209
  store ptr null, ptr @ira_conflict_id_allocno_map_vec, align 8, !tbaa !87
  %215 = load ptr, ptr @allocno_vec, align 8, !tbaa !87
  %216 = icmp eq ptr %215, null
  br i1 %216, label %218, label %217, !prof !293

217:                                              ; preds = %214
  tail call void @free(ptr noundef %215)
  br label %218

218:                                              ; preds = %214, %217
  store ptr null, ptr @allocno_vec, align 8, !tbaa !87
  %219 = load ptr, ptr @allocno_pool, align 8, !tbaa !87
  tail call void @free_alloc_pool(ptr noundef %219) #30
  %220 = load ptr, ptr @allocno_live_range_pool, align 8, !tbaa !87
  tail call void @free_alloc_pool(ptr noundef %220) #30
  %221 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !102
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %234, !prof !279

223:                                              ; preds = %218, %223
  %224 = phi i64 [ %230, %223 ], [ 0, %218 ]
  %225 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %224
  %226 = load i32, ptr %225, align 4, !tbaa !102
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !87
  tail call void @free_alloc_pool(ptr noundef %229) #30
  %230 = add nuw nsw i64 %224, 1
  %231 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !102
  %232 = sext i32 %231 to i64
  %233 = icmp slt i64 %230, %232
  br i1 %233, label %223, label %234, !prof !280, !llvm.loop !415

234:                                              ; preds = %223, %218
  tail call void @ira_finish_allocno_live_ranges() #30
  ret void
}

declare void @ira_finish_allocno_live_ranges() local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #21

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_max_uid() local_unnamed_addr #3

declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #3

declare ptr @ira_allocate_bitmap() local_unnamed_addr #3

; Function Attrs: inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_loop_to_tree(ptr noundef %0) unnamed_addr #22 !prof !416 !PGOFuncName !417 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !327
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !418

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !269
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %29, label %10, !prof !418

10:                                               ; preds = %7
  %11 = add i32 %8, -1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %3, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16, !prof !418

16:                                               ; preds = %10
  br i1 %4, label %19, label %17

17:                                               ; preds = %16
  %18 = load i32, ptr %3, align 8, !tbaa !269
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ %18, %17 ], [ 0, %16 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = add i32 %20, -1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %3, i64 0, i32 2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  br label %27

27:                                               ; preds = %19, %22
  %28 = phi ptr [ %26, %22 ], [ null, %19 ]
  tail call fastcc void @add_loop_to_tree(ptr noundef %28)
  br label %29

29:                                               ; preds = %7, %27, %10
  %30 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  %31 = load i32, ptr %0, align 8, !tbaa !325
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %30, i64 %32
  %34 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %30, i64 %32, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !112
  %36 = icmp eq ptr %35, null
  br i1 %36, label %96, label %37, !prof !326

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %30, i64 %32, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !316
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %96, !prof !419

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %30, i64 %32, i32 1
  store ptr %0, ptr %42, align 8, !tbaa !145
  store ptr null, ptr %33, align 8, !tbaa !144
  %43 = load ptr, ptr %2, align 8, !tbaa !327
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !298

45:                                               ; preds = %41
  %46 = load i32, ptr %43, align 8, !tbaa !269
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %46, %45 ], [ 0, %41 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50, !prof !298

50:                                               ; preds = %47
  %51 = add i32 %48, -1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %43, i64 0, i32 2, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !87
  br label %55

55:                                               ; preds = %47, %50
  %56 = phi ptr [ %54, %50 ], [ null, %47 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %84, label %58, !prof !227

58:                                               ; preds = %55
  %59 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !87
  br label %60

60:                                               ; preds = %58, %81
  %61 = phi ptr [ %56, %58 ], [ %82, %81 ]
  %62 = load i32, ptr %61, align 8, !tbaa !325
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %59, i64 %63, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !112
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.loop, ptr %61, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !327
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %69, align 8, !tbaa !269
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi i32 [ %72, %71 ], [ 0, %67 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = add i32 %74, -1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %69, i64 0, i32 2, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !87
  br label %81

81:                                               ; preds = %73, %76
  %82 = phi ptr [ %80, %76 ], [ null, %73 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %60, !prof !227, !llvm.loop !420

84:                                               ; preds = %81, %55
  %85 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %30, i64 %32, i32 2
  %86 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %30, i64 %32, i32 6
  store ptr null, ptr %86, align 8, !tbaa !234
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %85, i8 0, i64 16, i1 false)
  br label %96

87:                                               ; preds = %60
  %88 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %59, i64 %63
  %89 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %59, i64 %63, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !316
  %91 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %30, i64 %32, i32 3
  store ptr %90, ptr %91, align 8, !tbaa !329
  store ptr %33, ptr %89, align 8, !tbaa !316
  %92 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %59, i64 %63, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !317
  %94 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %30, i64 %32, i32 2
  store ptr %93, ptr %94, align 8, !tbaa !421
  store ptr %33, ptr %92, align 8, !tbaa !317
  %95 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %30, i64 %32, i32 6
  store ptr %88, ptr %95, align 8, !tbaa !234
  br label %96

96:                                               ; preds = %84, %87, %37, %29
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @setup_loop_tree_level(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #23 !prof !278 !PGOFuncName !422 {
  %3 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 7
  store i32 %1, ptr %3, align 8, !tbaa !423
  %4 = add nsw i32 %1, 1
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !227

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %14, %8 ], [ %6, %2 ]
  %10 = phi i32 [ %12, %8 ], [ %4, %2 ]
  %11 = tail call fastcc i32 @setup_loop_tree_level(ptr noundef nonnull %9, i32 noundef %4)
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 %10)
  %13 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %9, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !prof !227, !llvm.loop !424

16:                                               ; preds = %8, %2
  %17 = phi i32 [ %4, %2 ], [ %12, %8 ]
  ret i32 %17
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @create_loop_tree_node_allocnos(ptr noundef readonly %0) #9 !prof !425 !PGOFuncName !426 {
  %2 = load ptr, ptr %0, align 8, !tbaa !144
  %3 = icmp eq ptr %2, null
  br i1 %3, label %134, label %4, !prof !427

4:                                                ; preds = %1
  store ptr %2, ptr @curr_bb, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10, !prof !324

10:                                               ; preds = %4, %25
  %11 = phi ptr [ %27, %25 ], [ %8, %4 ]
  %12 = load ptr, ptr %5, align 8, !tbaa !98
  %13 = load ptr, ptr %12, align 8, !tbaa !428
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = icmp eq ptr %11, %15
  br i1 %16, label %29, label %17, !prof !430

17:                                               ; preds = %10
  %18 = load i32, ptr %11, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -11
  %21 = icmp ult i32 %20, -3
  br i1 %21, label %25, label %22, !prof !431

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !98
  tail call fastcc void @create_insn_allocnos(ptr noundef %24, i8 noundef zeroext 0)
  br label %25

25:                                               ; preds = %22, %17
  %26 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !98
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10, !prof !432, !llvm.loop !433

29:                                               ; preds = %25, %10, %4
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !322
  %32 = load ptr, ptr @df, align 8, !tbaa !87
  %33 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 1, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !87
  %35 = getelementptr inbounds %struct.dataflow, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !434
  %37 = icmp ugt i32 %36, %31
  tail call void @llvm.assume(i1 %37)
  %38 = getelementptr inbounds %struct.dataflow, ptr %34, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !436
  %40 = zext i32 %31 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !87
  %43 = getelementptr inbounds %struct.df_lr_bb_info, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !437
  %45 = load ptr, ptr %44, align 8, !tbaa !439
  %46 = icmp eq ptr %45, null
  %47 = select i1 %46, ptr @bitmap_zero_bits, ptr %45, !prof !326
  %48 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !440
  %50 = icmp eq i32 %49, 0
  %51 = shl i32 %49, 7
  %52 = select i1 %50, i32 53, i32 %51, !prof !418
  %53 = getelementptr inbounds %struct.bitmap_element_def, ptr %47, i64 0, i32 3
  %54 = load i64, ptr %53, align 8, !tbaa !118
  %55 = and i32 %52, 53
  %56 = zext nneg i32 %55 to i64
  %57 = lshr i64 %54, %56
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = add nuw nsw i32 %52, %59
  br label %61

61:                                               ; preds = %131, %29
  %62 = phi i64 [ %57, %29 ], [ %132, %131 ]
  %63 = phi i32 [ 0, %29 ], [ %118, %131 ]
  %64 = phi i32 [ %60, %29 ], [ %133, %131 ]
  %65 = phi ptr [ %47, %29 ], [ %120, %131 ]
  %66 = icmp eq i64 %62, 0
  br i1 %66, label %81, label %67, !prof !442

67:                                               ; preds = %95, %61
  %68 = phi i64 [ %62, %61 ], [ %100, %95 ]
  %69 = phi i32 [ %63, %61 ], [ %96, %95 ]
  %70 = phi i32 [ %64, %61 ], [ %97, %95 ]
  %71 = phi ptr [ %65, %61 ], [ %88, %95 ]
  %72 = and i64 %68, 1
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %116, !prof !443

74:                                               ; preds = %67, %74
  %75 = phi i32 [ %78, %74 ], [ %70, %67 ]
  %76 = phi i64 [ %77, %74 ], [ %68, %67 ]
  %77 = lshr exact i64 %76, 1
  %78 = add i32 %75, 1
  %79 = and i64 %76, 2
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %74, label %116, !prof !444, !llvm.loop !445

81:                                               ; preds = %61
  %82 = add i32 %64, 63
  %83 = and i32 %82, -64
  %84 = add i32 %63, 1
  br label %85

85:                                               ; preds = %112, %81
  %86 = phi i64 [ %62, %81 ], [ %107, %112 ]
  %87 = phi i32 [ %83, %81 ], [ %115, %112 ]
  %88 = phi ptr [ %65, %81 ], [ %110, %112 ]
  %89 = phi i32 [ %84, %81 ], [ 0, %112 ]
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %106, label %91, !prof !446

91:                                               ; preds = %85
  %92 = add i32 %87, 128
  %93 = shl i32 %89, 6
  %94 = sub i32 %92, %93
  br label %95

95:                                               ; preds = %91, %102
  %96 = phi i32 [ %104, %102 ], [ %89, %91 ]
  %97 = phi i32 [ %103, %102 ], [ %87, %91 ]
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds %struct.bitmap_element_def, ptr %88, i64 0, i32 3, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !118
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %67, !prof !447

102:                                              ; preds = %95
  %103 = add i32 %97, 64
  %104 = add i32 %96, 1
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %95, !prof !448, !llvm.loop !449

106:                                              ; preds = %102, %85
  %107 = phi i64 [ %86, %85 ], [ %100, %102 ]
  %108 = phi i32 [ %87, %85 ], [ %94, %102 ]
  %109 = phi i32 [ %89, %85 ], [ 2, %102 ]
  %110 = load ptr, ptr %88, align 8, !tbaa !450
  %111 = icmp eq ptr %110, null
  br i1 %111, label %116, label %112, !prof !451

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.bitmap_element_def, ptr %110, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !440
  %115 = shl i32 %114, 7
  br label %85, !llvm.loop !452

116:                                              ; preds = %106, %74, %67
  %117 = phi i64 [ %68, %67 ], [ %77, %74 ], [ %107, %106 ]
  %118 = phi i32 [ %69, %67 ], [ %69, %74 ], [ %109, %106 ]
  %119 = phi i32 [ %70, %67 ], [ %78, %74 ], [ %108, %106 ]
  %120 = phi ptr [ %71, %67 ], [ %71, %74 ], [ %110, %106 ]
  %121 = phi i1 [ false, %67 ], [ false, %74 ], [ true, %106 ]
  br i1 %121, label %198, label %122, !prof !453

122:                                              ; preds = %116
  %123 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !87
  %124 = zext i32 %119 to i64
  %125 = getelementptr inbounds ptr, ptr %123, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !87
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %131, !prof !454

128:                                              ; preds = %122
  %129 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !87
  %130 = tail call ptr @ira_create_allocno(i32 noundef %119, i8 noundef zeroext 0, ptr noundef %129)
  br label %131

131:                                              ; preds = %128, %122
  %132 = lshr i64 %117, 1
  %133 = add i32 %119, 1
  br label %61, !llvm.loop !455

134:                                              ; preds = %1
  %135 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !87
  %136 = icmp eq ptr %135, %0
  br i1 %136, label %198, label %137, !prof !298

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !145
  %140 = getelementptr inbounds %struct.loop, ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !299
  %142 = icmp eq ptr %141, null
  br label %143

143:                                              ; preds = %176, %137
  %144 = phi i32 [ 0, %137 ], [ %177, %176 ]
  br i1 %142, label %145, label %146

145:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 687, ptr noundef nonnull @.str.12) #30
  br label %146

146:                                              ; preds = %145, %143
  %147 = load ptr, ptr %141, align 8, !tbaa !87
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = load i32, ptr %147, align 8, !tbaa !303
  br label %151

151:                                              ; preds = %149, %146
  %152 = phi i32 [ %150, %149 ], [ 0, %146 ]
  %153 = icmp eq i32 %152, %144
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = zext i32 %144 to i64
  %156 = getelementptr inbounds %struct.VEC_edge_base, ptr %147, i64 0, i32 2, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !87
  br label %158

158:                                              ; preds = %151, %154
  %159 = phi ptr [ %157, %154 ], [ null, %151 ]
  br i1 %153, label %178, label %160

160:                                              ; preds = %158
  %161 = load ptr, ptr %159, align 8, !tbaa !305
  %162 = load ptr, ptr %138, align 8, !tbaa !145
  %163 = getelementptr inbounds %struct.loop, ptr %162, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !307
  %165 = icmp eq ptr %161, %164
  br i1 %165, label %167, label %166

166:                                              ; preds = %160
  tail call fastcc void @create_loop_allocnos(ptr noundef nonnull %159)
  br label %167

167:                                              ; preds = %166, %160
  %168 = load ptr, ptr %141, align 8, !tbaa !87
  %169 = icmp eq ptr %168, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %167
  %171 = load i32, ptr %168, align 8, !tbaa !303
  br label %172

172:                                              ; preds = %170, %167
  %173 = phi i32 [ %171, %170 ], [ 0, %167 ]
  %174 = icmp ult i32 %144, %173
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 738, ptr noundef nonnull @.str.12) #30
  br label %176

176:                                              ; preds = %172, %175
  %177 = add i32 %144, 1
  br label %143, !llvm.loop !456

178:                                              ; preds = %158
  %179 = load ptr, ptr %138, align 8, !tbaa !145
  %180 = tail call ptr @get_loop_exit_edges(ptr noundef %179) #30
  %181 = icmp eq ptr %180, null
  br label %182

182:                                              ; preds = %194, %178
  %183 = phi i64 [ %195, %194 ], [ 0, %178 ]
  br i1 %181, label %191, label %184

184:                                              ; preds = %182
  %185 = load i32, ptr %180, align 8, !tbaa !303
  %186 = zext i32 %185 to i64
  %187 = icmp ult i64 %183, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.VEC_edge_base, ptr %180, i64 0, i32 2, i64 %183
  %190 = load ptr, ptr %189, align 8, !tbaa !87
  br label %191

191:                                              ; preds = %182, %184, %188
  %192 = phi ptr [ %190, %188 ], [ null, %184 ], [ null, %182 ]
  %193 = phi i1 [ false, %188 ], [ true, %184 ], [ true, %182 ]
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  tail call fastcc void @create_loop_allocnos(ptr noundef %192)
  %195 = add nuw i64 %183, 1
  br label %182, !llvm.loop !457

196:                                              ; preds = %191
  br i1 %181, label %198, label %197

197:                                              ; preds = %196
  tail call void @free(ptr noundef %180)
  br label %198

198:                                              ; preds = %116, %197, %196, %134
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @propagate_modified_regnos(ptr noundef readonly %0) #14 !prof !278 !PGOFuncName !458 {
  %2 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !87
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %12, label %4, !prof !298

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !234
  %7 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %6, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !288
  %9 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !288
  %11 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %8, ptr noundef %10) #30
  br label %12

12:                                               ; preds = %1, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @create_loop_allocnos(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !86 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !311
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !322
  %6 = load ptr, ptr @df, align 8, !tbaa !87
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !434
  %11 = icmp ugt i32 %10, %5
  tail call void @llvm.assume(i1 %11)
  %12 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !436
  %14 = zext i32 %5 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = getelementptr inbounds %struct.df_lr_bb_info, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !437
  %19 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !87
  %20 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %19, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !289
  %22 = load ptr, ptr %0, align 8, !tbaa !305
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !322
  %25 = icmp ugt i32 %10, %24
  tail call void @llvm.assume(i1 %25)
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds ptr, ptr %13, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  %29 = getelementptr inbounds %struct.df_lr_bb_info, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !459
  %31 = load ptr, ptr %30, align 8, !tbaa !439
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr @bitmap_zero_bits, ptr %31
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !440
  %36 = icmp eq i32 %35, 0
  %37 = shl i32 %35, 7
  %38 = select i1 %36, i32 53, i32 %37
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !118
  %41 = and i32 %38, 53
  %42 = zext nneg i32 %41 to i64
  %43 = lshr i64 %40, %42
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = add nuw nsw i32 %38, %45
  br label %47

47:                                               ; preds = %139, %1
  %48 = phi i64 [ %43, %1 ], [ %140, %139 ]
  %49 = phi i32 [ 0, %1 ], [ %104, %139 ]
  %50 = phi i32 [ %46, %1 ], [ %141, %139 ]
  %51 = phi ptr [ %33, %1 ], [ %106, %139 ]
  %52 = icmp eq i64 %48, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %81, %47
  %54 = phi i64 [ %48, %47 ], [ %86, %81 ]
  %55 = phi i32 [ %49, %47 ], [ %82, %81 ]
  %56 = phi i32 [ %50, %47 ], [ %83, %81 ]
  %57 = phi ptr [ %51, %47 ], [ %74, %81 ]
  %58 = and i64 %54, 1
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %102

60:                                               ; preds = %53, %60
  %61 = phi i32 [ %64, %60 ], [ %56, %53 ]
  %62 = phi i64 [ %63, %60 ], [ %54, %53 ]
  %63 = lshr exact i64 %62, 1
  %64 = add i32 %61, 1
  %65 = and i64 %62, 2
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %60, label %102, !llvm.loop !445

67:                                               ; preds = %47
  %68 = add i32 %50, 63
  %69 = and i32 %68, -64
  %70 = add i32 %49, 1
  br label %71

71:                                               ; preds = %98, %67
  %72 = phi i64 [ %48, %67 ], [ %93, %98 ]
  %73 = phi i32 [ %69, %67 ], [ %101, %98 ]
  %74 = phi ptr [ %51, %67 ], [ %96, %98 ]
  %75 = phi i32 [ %70, %67 ], [ 0, %98 ]
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %92, label %77

77:                                               ; preds = %71
  %78 = add i32 %73, 128
  %79 = shl i32 %75, 6
  %80 = sub i32 %78, %79
  br label %81

81:                                               ; preds = %77, %88
  %82 = phi i32 [ %90, %88 ], [ %75, %77 ]
  %83 = phi i32 [ %89, %88 ], [ %73, %77 ]
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds %struct.bitmap_element_def, ptr %74, i64 0, i32 3, i64 %84
  %86 = load i64, ptr %85, align 8, !tbaa !118
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %53

88:                                               ; preds = %81
  %89 = add i32 %83, 64
  %90 = add i32 %82, 1
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %81, !llvm.loop !449

92:                                               ; preds = %88, %71
  %93 = phi i64 [ %72, %71 ], [ %86, %88 ]
  %94 = phi i32 [ %73, %71 ], [ %80, %88 ]
  %95 = phi i32 [ %75, %71 ], [ 2, %88 ]
  %96 = load ptr, ptr %74, align 8, !tbaa !450
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.bitmap_element_def, ptr %96, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !440
  %101 = shl i32 %100, 7
  br label %71, !llvm.loop !452

102:                                              ; preds = %92, %60, %53
  %103 = phi i64 [ %54, %53 ], [ %63, %60 ], [ %93, %92 ]
  %104 = phi i32 [ %55, %53 ], [ %55, %60 ], [ %95, %92 ]
  %105 = phi i32 [ %56, %53 ], [ %64, %60 ], [ %94, %92 ]
  %106 = phi ptr [ %57, %53 ], [ %57, %60 ], [ %96, %92 ]
  %107 = phi i1 [ false, %53 ], [ false, %60 ], [ true, %92 ]
  br i1 %107, label %142, label %108

108:                                              ; preds = %102
  %109 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %105) #30
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %139, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !87
  %113 = zext i32 %105 to i64
  %114 = getelementptr inbounds ptr, ptr %112, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !87
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %133

117:                                              ; preds = %111
  %118 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !87
  %119 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %118, i64 0, i32 6
  %120 = load ptr, ptr %119, align 8, !tbaa !234
  %121 = icmp eq ptr %120, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %120, i64 0, i32 9
  %124 = load ptr, ptr %123, align 8, !tbaa !112
  %125 = getelementptr inbounds ptr, ptr %124, i64 %113
  %126 = load ptr, ptr %125, align 8, !tbaa !87
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = tail call ptr @ira_create_allocno(i32 noundef %105, i8 noundef zeroext 0, ptr noundef nonnull %120)
  br label %130

130:                                              ; preds = %128, %122, %117
  %131 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !87
  %132 = tail call ptr @ira_create_allocno(i32 noundef %105, i8 noundef zeroext 0, ptr noundef %131)
  br label %133

133:                                              ; preds = %130, %111
  %134 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !87
  %135 = getelementptr inbounds ptr, ptr %134, i64 %113
  %136 = load ptr, ptr %135, align 8, !tbaa !87
  %137 = load i32, ptr %136, align 8, !tbaa !114
  %138 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %21, i32 noundef %137) #30
  br label %139

139:                                              ; preds = %108, %133
  %140 = lshr i64 %103, 1
  %141 = add i32 %105, 1
  br label %47, !llvm.loop !460

142:                                              ; preds = %102
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @create_insn_allocnos(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !461 !PGOFuncName !462 {
  br label %3

3:                                                ; preds = %158, %153, %150, %145, %2
  %4 = phi ptr [ %0, %2 ], [ %149, %145 ], [ %152, %150 ], [ %155, %153 ], [ %161, %158 ]
  %5 = phi i8 [ %1, %2 ], [ 0, %145 ], [ 1, %150 ], [ 0, %153 ], [ 0, %158 ]
  %6 = load i32, ptr %4, align 8
  %7 = and i32 %6, 65535
  %8 = trunc i32 %6 to i16
  switch i16 %8, label %156 [
    i16 37, label %9
    i16 23, label %145
    i16 25, label %150
    i16 43, label %153
  ], !prof !463

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !98
  %12 = icmp sgt i32 %11, 52
  br i1 %12, label %13, label %198, !prof !464

13:                                               ; preds = %9
  %14 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !87
  %15 = zext nneg i32 %11 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %108, !prof !465

19:                                               ; preds = %13
  %20 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !87
  %21 = load ptr, ptr @allocno_pool, align 8, !tbaa !87
  %22 = tail call ptr @pool_alloc(ptr noundef %21) #30
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 1
  store i32 %11, ptr %23, align 4, !tbaa !107
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 6
  store ptr %20, ptr %24, align 8, !tbaa !109
  %25 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !87
  %26 = zext nneg i32 %11 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 5
  store ptr %28, ptr %29, align 8, !tbaa !111
  store ptr %22, ptr %27, align 8, !tbaa !87
  %30 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %20, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !112
  %32 = getelementptr inbounds ptr, ptr %31, i64 %26
  %33 = load ptr, ptr %32, align 8, !tbaa !87
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !110

35:                                               ; preds = %19
  store ptr %22, ptr %32, align 8, !tbaa !87
  br label %36

36:                                               ; preds = %35, %19
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %38 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  store i32 %38, ptr %22, align 8, !tbaa !114
  %39 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %20, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !115
  %41 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %40, i32 noundef %38) #30
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 23
  store ptr null, ptr %42, align 8, !tbaa !116
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 28
  store i32 0, ptr %43, align 8, !tbaa !117
  %44 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !118
  %45 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 26
  store i64 %44, ptr %45, align 8, !tbaa !119
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 27
  store i64 %44, ptr %46, align 8, !tbaa !120
  %47 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 7
  store i32 0, ptr %47, align 8, !tbaa !121
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 8
  store i32 0, ptr %48, align 4, !tbaa !122
  %49 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 3
  store i32 -1, ptr %49, align 4, !tbaa !123
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 29
  store i32 0, ptr %50, align 4, !tbaa !124
  %51 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 30
  store i32 0, ptr %51, align 8, !tbaa !125
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 31
  %53 = load i16, ptr %52, align 4
  %54 = and i16 %53, -49
  store i16 %54, ptr %52, align 4
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 32
  store ptr null, ptr %55, align 8, !tbaa !126
  %56 = and i16 %53, -4096
  store i16 %56, ptr %52, align 4
  %57 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !87
  %58 = getelementptr inbounds ptr, ptr %57, i64 %15
  %59 = load ptr, ptr %58, align 8, !tbaa !87
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 2
  store i32 %62, ptr %63, align 8, !tbaa !128
  %64 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 15
  store ptr null, ptr %64, align 8, !tbaa !129
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 33
  %66 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %65, i8 0, i64 32, i1 false)
  store i32 -1, ptr %66, align 8, !tbaa !130
  %67 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 9
  %68 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 39
  %69 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %67, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, i8 0, i64 16, i1 false)
  store ptr %22, ptr %69, align 8, !tbaa !131
  %70 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 19
  store ptr %22, ptr %70, align 8, !tbaa !132
  %71 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 20
  store ptr null, ptr %71, align 8, !tbaa !133
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 21
  store i32 2147483647, ptr %72, align 8, !tbaa !134
  %73 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 22
  store i32 -1, ptr %73, align 4, !tbaa !135
  %74 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !102
  %75 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 24
  store i32 %74, ptr %75, align 8, !tbaa !136
  %76 = load ptr, ptr @allocno_vec, align 8, !tbaa !87
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78, !prof !127

78:                                               ; preds = %36
  %79 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %76, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !137
  %81 = load i32, ptr %76, align 8, !tbaa !139
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85, !prof !127

83:                                               ; preds = %78, %36
  %84 = tail call ptr @vec_heap_p_reserve(ptr noundef %76, i32 noundef 1) #30
  store ptr %84, ptr @allocno_vec, align 8, !tbaa !87
  br label %85

85:                                               ; preds = %83, %78
  %86 = load ptr, ptr @allocno_vec, align 8
  %87 = load i32, ptr %86, align 8, !tbaa !139
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 8, !tbaa !139
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %86, i64 0, i32 2, i64 %89
  store ptr %22, ptr %90, align 8, !tbaa !87
  %91 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %86, i64 0, i32 2
  store ptr %91, ptr @ira_allocnos, align 8, !tbaa !87
  store i32 %88, ptr @ira_allocnos_num, align 4, !tbaa !102
  %92 = load ptr, ptr @ira_conflict_id_allocno_map_vec, align 8, !tbaa !87
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94, !prof !127

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %92, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !137
  %97 = load i32, ptr %92, align 8, !tbaa !139
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %101, !prof !127

99:                                               ; preds = %94, %85
  %100 = tail call ptr @vec_heap_p_reserve(ptr noundef %92, i32 noundef 1) #30
  store ptr %100, ptr @ira_conflict_id_allocno_map_vec, align 8, !tbaa !87
  br label %101

101:                                              ; preds = %94, %99
  %102 = load ptr, ptr @ira_conflict_id_allocno_map_vec, align 8
  %103 = load i32, ptr %102, align 8, !tbaa !139
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 8, !tbaa !139
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %102, i64 0, i32 2, i64 %105
  store ptr %22, ptr %106, align 8, !tbaa !87
  %107 = getelementptr inbounds %struct.VEC_ira_allocno_t_base, ptr %102, i64 0, i32 2
  store ptr %107, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !87
  br label %108

108:                                              ; preds = %101, %13
  %109 = phi ptr [ %22, %101 ], [ %17, %13 ]
  %110 = getelementptr inbounds %struct.ira_allocno, ptr %109, i64 0, i32 7
  %111 = load i32, ptr %110, align 8, !tbaa !121
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %110, align 8, !tbaa !121
  %113 = load i32, ptr @optimize_size, align 4, !tbaa !102
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %134, !prof !466

115:                                              ; preds = %108
  %116 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !102
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %126, label %118, !prof !466

118:                                              ; preds = %115
  %119 = load ptr, ptr @cfun, align 8, !tbaa !87
  %120 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !283
  %122 = load ptr, ptr %121, align 8, !tbaa !319
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 8
  %124 = load i64, ptr %123, align 8, !tbaa !467
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %118, %115
  %127 = load ptr, ptr @curr_bb, align 8, !tbaa !87
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 11
  %129 = load i32, ptr %128, align 8, !tbaa !389
  %130 = add i32 %129, 9
  %131 = icmp ult i32 %130, 19
  br i1 %131, label %134, label %132, !prof !468

132:                                              ; preds = %126
  %133 = sdiv i32 %129, 10
  br label %134

134:                                              ; preds = %118, %132, %126, %108
  %135 = phi i32 [ 1000, %108 ], [ %133, %132 ], [ 1, %126 ], [ 1000, %118 ]
  %136 = getelementptr inbounds %struct.ira_allocno, ptr %109, i64 0, i32 8
  %137 = load i32, ptr %136, align 4, !tbaa !122
  %138 = add nsw i32 %137, %135
  store i32 %138, ptr %136, align 4, !tbaa !122
  %139 = icmp eq i8 %5, 0
  br i1 %139, label %198, label %140, !prof !469

140:                                              ; preds = %134
  %141 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !87
  %142 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %141, i64 0, i32 14
  %143 = load ptr, ptr %142, align 8, !tbaa !288
  %144 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %143, i32 noundef %11) #30
  br label %198

145:                                              ; preds = %3
  %146 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !98
  tail call fastcc void @create_insn_allocnos(ptr noundef %147, i8 noundef zeroext 1)
  %148 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !98
  br label %3

150:                                              ; preds = %3
  %151 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !98
  br label %3

153:                                              ; preds = %3
  %154 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !98
  br label %3

156:                                              ; preds = %3
  %157 = and i16 %8, -2
  switch i16 %157, label %162 [
    i16 78, label %158
    i16 76, label %158
    i16 74, label %158
  ], !prof !470

158:                                              ; preds = %156, %156, %156
  %159 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !98
  tail call fastcc void @create_insn_allocnos(ptr noundef %160, i8 noundef zeroext 1)
  %161 = load ptr, ptr %159, align 8, !tbaa !98
  br label %3

162:                                              ; preds = %156
  %163 = zext nneg i32 %7 to i64
  %164 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !87
  %166 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %163
  %167 = load i8, ptr %166, align 1, !tbaa !98
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %198, label %169, !prof !471

169:                                              ; preds = %162
  %170 = zext i8 %167 to i64
  br label %171

171:                                              ; preds = %169, %196
  %172 = phi i64 [ %170, %169 ], [ %173, %196 ]
  %173 = add nsw i64 %172, -1
  %174 = getelementptr inbounds i8, ptr %165, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !98
  switch i8 %175, label %196 [
    i8 101, label %182
    i8 69, label %176
  ], !prof !472

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %178 = getelementptr inbounds [1 x %union.rtunion_def], ptr %177, i64 0, i64 %173
  %179 = load ptr, ptr %178, align 8, !tbaa !98
  %180 = load i32, ptr %179, align 8, !tbaa !473
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %186, label %196, !prof !475

182:                                              ; preds = %171
  %183 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %184 = getelementptr inbounds [1 x %union.rtunion_def], ptr %183, i64 0, i64 %173
  %185 = load ptr, ptr %184, align 8, !tbaa !98
  tail call fastcc void @create_insn_allocnos(ptr noundef %185, i8 noundef zeroext %5)
  br label %196

186:                                              ; preds = %176, %186
  %187 = phi i64 [ %191, %186 ], [ 0, %176 ]
  %188 = phi ptr [ %192, %186 ], [ %179, %176 ]
  %189 = getelementptr inbounds %struct.rtvec_def, ptr %188, i64 0, i32 1, i64 %187
  %190 = load ptr, ptr %189, align 8, !tbaa !87
  tail call fastcc void @create_insn_allocnos(ptr noundef %190, i8 noundef zeroext %5)
  %191 = add nuw nsw i64 %187, 1
  %192 = load ptr, ptr %178, align 8, !tbaa !98
  %193 = load i32, ptr %192, align 8, !tbaa !473
  %194 = sext i32 %193 to i64
  %195 = icmp slt i64 %191, %194
  br i1 %195, label %186, label %196, !prof !476, !llvm.loop !477

196:                                              ; preds = %186, %176, %171, %182
  %197 = icmp sgt i64 %172, 1
  br i1 %197, label %171, label %198, !prof !478, !llvm.loop !479

198:                                              ; preds = %196, %162, %9, %140, %134
  ret void
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_uneccesary_loop_nodes_from_loop_tree(ptr noundef %0) unnamed_addr #14 !prof !278 !PGOFuncName !480 {
  %2 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 4, !tbaa !388
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %21, !prof !298

5:                                                ; preds = %1
  %6 = load ptr, ptr @children_vec, align 8, !tbaa !87
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8, !prof !293

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.VEC_ira_loop_tree_node_t_base, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !481
  %11 = load i32, ptr %6, align 8, !tbaa !405
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15, !prof !293

13:                                               ; preds = %5, %8
  %14 = tail call ptr @vec_heap_p_reserve(ptr noundef %6, i32 noundef 1) #30
  store ptr %14, ptr @children_vec, align 8, !tbaa !87
  br label %15

15:                                               ; preds = %8, %13
  %16 = load ptr, ptr @children_vec, align 8, !tbaa !87
  %17 = load i32, ptr %16, align 8, !tbaa !405
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !405
  %19 = zext i32 %17 to i64
  %20 = getelementptr inbounds %struct.VEC_ira_loop_tree_node_t_base, ptr %16, i64 0, i32 2, i64 %19
  store ptr %0, ptr %20, align 8, !tbaa !87
  br label %21

21:                                               ; preds = %15, %1
  %22 = load ptr, ptr @children_vec, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !293

24:                                               ; preds = %21
  %25 = load i32, ptr %22, align 8, !tbaa !405
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi i32 [ %25, %24 ], [ 0, %21 ]
  %28 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  %30 = icmp eq ptr %29, null
  br i1 %30, label %56, label %31, !prof !287

31:                                               ; preds = %26, %52
  %32 = phi ptr [ %54, %52 ], [ %29, %26 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !144
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !326

35:                                               ; preds = %31
  tail call fastcc void @remove_uneccesary_loop_nodes_from_loop_tree(ptr noundef nonnull %32)
  br label %52

36:                                               ; preds = %31
  %37 = load ptr, ptr @children_vec, align 8, !tbaa !87
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39, !prof !326

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.VEC_ira_loop_tree_node_t_base, ptr %37, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !481
  %42 = load i32, ptr %37, align 8, !tbaa !405
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46, !prof !326

44:                                               ; preds = %36, %39
  %45 = tail call ptr @vec_heap_p_reserve(ptr noundef %37, i32 noundef 1) #30
  store ptr %45, ptr @children_vec, align 8, !tbaa !87
  br label %46

46:                                               ; preds = %39, %44
  %47 = load ptr, ptr @children_vec, align 8, !tbaa !87
  %48 = load i32, ptr %47, align 8, !tbaa !405
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !405
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.VEC_ira_loop_tree_node_t_base, ptr %47, i64 0, i32 2, i64 %50
  store ptr %32, ptr %51, align 8, !tbaa !87
  br label %52

52:                                               ; preds = %35, %46
  %53 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %32, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !87
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %31, !prof !330, !llvm.loop !482

56:                                               ; preds = %52, %26
  %57 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  br i1 %4, label %58, label %61, !prof !298

58:                                               ; preds = %56
  %59 = load ptr, ptr @children_vec, align 8
  %60 = icmp eq ptr %59, null
  br label %77

61:                                               ; preds = %56
  %62 = load ptr, ptr @removed_loop_vec, align 8, !tbaa !87
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.VEC_ira_loop_tree_node_t_base, ptr %62, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !481
  %67 = load i32, ptr %62, align 8, !tbaa !405
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61, %64
  %70 = tail call ptr @vec_heap_p_reserve(ptr noundef %62, i32 noundef 1) #30
  store ptr %70, ptr @removed_loop_vec, align 8, !tbaa !87
  br label %71

71:                                               ; preds = %64, %69
  %72 = load ptr, ptr @removed_loop_vec, align 8, !tbaa !87
  %73 = load i32, ptr %72, align 8, !tbaa !405
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 8, !tbaa !405
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds %struct.VEC_ira_loop_tree_node_t_base, ptr %72, i64 0, i32 2, i64 %75
  store ptr %0, ptr %76, align 8, !tbaa !87
  br label %98

77:                                               ; preds = %97, %58
  br i1 %60, label %80, label %78, !prof !483

78:                                               ; preds = %77
  %79 = load i32, ptr %59, align 8, !tbaa !405
  br label %80

80:                                               ; preds = %77, %78
  %81 = phi i32 [ %79, %78 ], [ 0, %77 ]
  %82 = icmp ugt i32 %81, %27
  br i1 %82, label %83, label %98, !prof !484

83:                                               ; preds = %80
  %84 = load i32, ptr %59, align 8, !tbaa !405
  %85 = add i32 %84, -1
  store i32 %85, ptr %59, align 8, !tbaa !405
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.VEC_ira_loop_tree_node_t_base, ptr %59, i64 0, i32 2, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !87
  %89 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %88, i64 0, i32 6
  store ptr %0, ptr %89, align 8, !tbaa !234
  %90 = load ptr, ptr %28, align 8, !tbaa !316
  %91 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %88, i64 0, i32 3
  store ptr %90, ptr %91, align 8, !tbaa !329
  store ptr %88, ptr %28, align 8, !tbaa !316
  %92 = load ptr, ptr %88, align 8, !tbaa !144
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %97, !prof !326

94:                                               ; preds = %83
  %95 = load ptr, ptr %57, align 8, !tbaa !317
  %96 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %88, i64 0, i32 2
  store ptr %95, ptr %96, align 8, !tbaa !421
  store ptr %88, ptr %57, align 8, !tbaa !317
  br label %97

97:                                               ; preds = %94, %83
  br label %77, !llvm.loop !485

98:                                               ; preds = %80, %71
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @finish_loop_tree_node(ptr nocapture noundef %0) unnamed_addr #14 !prof !86 !PGOFuncName !486 {
  %2 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5, !prof !293

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !290
  tail call void @ira_free_bitmap(ptr noundef %7) #30
  %8 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !289
  tail call void @ira_free_bitmap(ptr noundef %9) #30
  %10 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !288
  tail call void @ira_free_bitmap(ptr noundef %11) #30
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  tail call void @ira_free_bitmap(ptr noundef %13) #30
  %14 = load ptr, ptr %2, align 8, !tbaa !112
  tail call void @ira_free(ptr noundef %14) #30
  store ptr null, ptr %2, align 8, !tbaa !112
  br label %15

15:                                               ; preds = %5, %1
  ret void
}

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @loop_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #24 !prof !86 {
  %3 = load ptr, ptr %0, align 8, !tbaa !87
  %4 = load ptr, ptr %1, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %3, i64 0, i32 8
  %6 = load i8, ptr %5, align 4, !tbaa !388
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 0, i32 8
  %10 = load i8, ptr %9, align 4, !tbaa !388
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %53, label %12

12:                                               ; preds = %8
  br i1 %7, label %13, label %17

13:                                               ; preds = %2, %12
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 0, i32 8
  %15 = load i8, ptr %14, align 4, !tbaa !388
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %13, %12
  %18 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !145
  %20 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !299
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 11
  %23 = load i32, ptr %22, align 8, !tbaa !389
  %24 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !145
  %26 = getelementptr inbounds %struct.loop, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !299
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 11
  %29 = load i32, ptr %28, align 8, !tbaa !389
  %30 = sub nsw i32 %23, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !327
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 8, !tbaa !269
  br label %38

38:                                               ; preds = %32, %36
  %39 = phi i32 [ %37, %36 ], [ 0, %32 ]
  %40 = getelementptr inbounds %struct.loop, ptr %25, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !327
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, ptr %41, align 8, !tbaa !269
  br label %45

45:                                               ; preds = %38, %43
  %46 = phi i32 [ %44, %43 ], [ 0, %38 ]
  %47 = sub nsw i32 %39, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, ptr %19, align 8, !tbaa !325
  %51 = load i32, ptr %25, align 8, !tbaa !325
  %52 = sub nsw i32 %50, %51
  br label %53

53:                                               ; preds = %8, %45, %17, %13, %49
  %54 = phi i32 [ %52, %49 ], [ 1, %13 ], [ %30, %17 ], [ %47, %45 ], [ -1, %8 ]
  ret i32 %54
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @propagate_some_info_from_allocno(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !prof !86 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 26
  %4 = load i64, ptr %3, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 26
  %6 = load i64, ptr %5, align 8, !tbaa !119
  %7 = or i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !119
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
  %18 = load i32, ptr %17, align 8, !tbaa !121
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !121
  %21 = add nsw i32 %20, %18
  store i32 %21, ptr %19, align 8, !tbaa !121
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !122
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !122
  %26 = add nsw i32 %25, %23
  store i32 %26, ptr %24, align 4, !tbaa !122
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 29
  %28 = load i32, ptr %27, align 4, !tbaa !124
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 29
  %30 = load i32, ptr %29, align 4, !tbaa !124
  %31 = add nsw i32 %30, %28
  store i32 %31, ptr %29, align 4, !tbaa !124
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 27
  %33 = load i64, ptr %32, align 8, !tbaa !120
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 27
  %35 = load i64, ptr %34, align 8, !tbaa !120
  %36 = or i64 %35, %33
  store i64 %36, ptr %34, align 8, !tbaa !120
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 30
  %38 = load i32, ptr %37, align 8, !tbaa !125
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 30
  %40 = load i32, ptr %39, align 8, !tbaa !125
  %41 = add nsw i32 %40, %38
  store i32 %41, ptr %39, align 8, !tbaa !125
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 14
  %43 = load i32, ptr %42, align 4, !tbaa !239
  %44 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 14
  %45 = load i32, ptr %44, align 4, !tbaa !239
  %46 = add nsw i32 %45, %43
  store i32 %46, ptr %44, align 4, !tbaa !239
  %47 = load i16, ptr %8, align 4
  %48 = and i16 %47, 64
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %16
  %51 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %52 = load i16, ptr %51, align 4
  %53 = and i16 %52, -65
  store i16 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %50, %16
  %55 = load i16, ptr %8, align 4
  %56 = and i16 %55, 32
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %60 = load i16, ptr %59, align 4
  %61 = or i16 %60, 32
  store i16 %61, ptr %59, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !141
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 33
  %66 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 33
  %67 = load ptr, ptr %66, align 8, !tbaa !236
  %68 = icmp eq ptr %67, null
  br i1 %68, label %95, label %69

69:                                               ; preds = %62
  %70 = zext i32 %64 to i64
  %71 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !102
  %73 = load ptr, ptr %65, align 8, !tbaa !87
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %70
  %77 = load ptr, ptr %76, align 8, !tbaa !87
  %78 = tail call ptr @pool_alloc(ptr noundef %77) #30
  store ptr %78, ptr %65, align 8, !tbaa !87
  %79 = sext i32 %72 to i64
  %80 = shl nsw i64 %79, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %78, i8 0, i64 %80, i1 false)
  br label %81

81:                                               ; preds = %75, %69
  %82 = icmp sgt i32 %72, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %81
  %84 = load ptr, ptr %65, align 8, !tbaa !87
  %85 = zext nneg i32 %72 to i64
  br label %86

86:                                               ; preds = %83, %86
  %87 = phi i64 [ 0, %83 ], [ %93, %86 ]
  %88 = getelementptr inbounds i32, ptr %67, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !102
  %90 = getelementptr inbounds i32, ptr %84, i64 %87
  %91 = load i32, ptr %90, align 4, !tbaa !102
  %92 = add nsw i32 %91, %89
  store i32 %92, ptr %90, align 4, !tbaa !102
  %93 = add nuw nsw i64 %87, 1
  %94 = icmp eq i64 %93, %85
  br i1 %94, label %95, label %86, !llvm.loop !353

95:                                               ; preds = %86, %81, %62
  %96 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 35
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 35
  %98 = load ptr, ptr %97, align 8, !tbaa !237
  %99 = icmp eq ptr %98, null
  br i1 %99, label %126, label %100

100:                                              ; preds = %95
  %101 = zext i32 %64 to i64
  %102 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !102
  %104 = load ptr, ptr %96, align 8, !tbaa !87
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %101
  %108 = load ptr, ptr %107, align 8, !tbaa !87
  %109 = tail call ptr @pool_alloc(ptr noundef %108) #30
  store ptr %109, ptr %96, align 8, !tbaa !87
  %110 = sext i32 %103 to i64
  %111 = shl nsw i64 %110, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %109, i8 0, i64 %111, i1 false)
  br label %112

112:                                              ; preds = %106, %100
  %113 = icmp sgt i32 %103, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %112
  %115 = load ptr, ptr %96, align 8, !tbaa !87
  %116 = zext nneg i32 %103 to i64
  br label %117

117:                                              ; preds = %114, %117
  %118 = phi i64 [ 0, %114 ], [ %124, %117 ]
  %119 = getelementptr inbounds i32, ptr %98, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !102
  %121 = getelementptr inbounds i32, ptr %115, i64 %118
  %122 = load i32, ptr %121, align 4, !tbaa !102
  %123 = add nsw i32 %122, %120
  store i32 %123, ptr %121, align 4, !tbaa !102
  %124 = add nuw nsw i64 %118, 1
  %125 = icmp eq i64 %124, %116
  br i1 %125, label %126, label %117, !llvm.loop !353

126:                                              ; preds = %117, %112, %95
  %127 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 10
  %128 = load i32, ptr %127, align 4, !tbaa !242
  %129 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 10
  %130 = load i32, ptr %129, align 4, !tbaa !242
  %131 = add nsw i32 %130, %128
  store i32 %131, ptr %129, align 4, !tbaa !242
  %132 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 12
  %133 = load i32, ptr %132, align 4, !tbaa !243
  %134 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 12
  %135 = load i32, ptr %134, align 4, !tbaa !243
  %136 = add nsw i32 %135, %133
  store i32 %136, ptr %134, align 4, !tbaa !243
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @regno_allocno_order_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #25 !prof !86 {
  %3 = load ptr, ptr %0, align 8, !tbaa !87
  %4 = load ptr, ptr %1, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  br label %9

9:                                                ; preds = %14, %2
  %10 = phi ptr [ %6, %2 ], [ %12, %14 ]
  %11 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !234
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = icmp eq ptr %12, %8
  br i1 %15, label %16, label %9, !llvm.loop !487

16:                                               ; preds = %14
  br i1 %13, label %17, label %30

17:                                               ; preds = %9, %16
  br label %18

18:                                               ; preds = %17, %23
  %19 = phi ptr [ %21, %23 ], [ %8, %17 ]
  %20 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !234
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = icmp eq ptr %21, %6
  br i1 %24, label %25, label %18, !llvm.loop !487

25:                                               ; preds = %23
  br i1 %22, label %26, label %30

26:                                               ; preds = %18, %25
  %27 = load i32, ptr %4, align 8, !tbaa !114
  %28 = load i32, ptr %3, align 8, !tbaa !114
  %29 = sub nsw i32 %27, %28
  br label %30

30:                                               ; preds = %25, %16, %26
  %31 = phi i32 [ %29, %26 ], [ -1, %16 ], [ 1, %25 ]
  ret i32 %31
}

declare void @ira_free_bitmap(ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @create_cap_allocno(ptr noundef %0) unnamed_addr #12 !prof !86 {
  %2 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !234
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !107
  %8 = tail call ptr @ira_create_allocno(i32 noundef %7, i8 noundef zeroext 1, ptr noundef %5)
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !128
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 2
  store i32 %10, ptr %11, align 8, !tbaa !128
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !141
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 9
  store i32 %13, ptr %14, align 8, !tbaa !141
  %15 = zext i32 %13 to i64
  %16 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !118
  %18 = xor i64 %17, -1
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 26
  %20 = load i64, ptr %19, align 8, !tbaa !119
  %21 = or i64 %20, %18
  store i64 %21, ptr %19, align 8, !tbaa !119
  %22 = load i64, ptr %16, align 8, !tbaa !118
  %23 = xor i64 %22, -1
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 27
  %25 = load i64, ptr %24, align 8, !tbaa !120
  %26 = or i64 %25, %23
  store i64 %26, ptr %24, align 8, !tbaa !120
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 38
  %28 = load i32, ptr %27, align 4, !tbaa !488
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 38
  store i32 %28, ptr %29, align 4, !tbaa !488
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 17
  store ptr %0, ptr %30, align 8, !tbaa !146
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 16
  store ptr %8, ptr %31, align 8, !tbaa !233
  %32 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 10
  %33 = load i32, ptr %32, align 4, !tbaa !242
  %34 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 10
  store i32 %33, ptr %34, align 4, !tbaa !242
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 12
  %36 = load i32, ptr %35, align 4, !tbaa !243
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 12
  store i32 %36, ptr %37, align 4, !tbaa !243
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 33
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 33
  %40 = load ptr, ptr %39, align 8, !tbaa !236
  %41 = load ptr, ptr %38, align 8, !tbaa !87
  %42 = icmp ne ptr %41, null
  %43 = icmp eq ptr %40, null
  %44 = or i1 %43, %42
  br i1 %44, label %53, label %45

45:                                               ; preds = %1
  %46 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %15
  %47 = load ptr, ptr %46, align 8, !tbaa !87
  %48 = tail call ptr @pool_alloc(ptr noundef %47) #30
  store ptr %48, ptr %38, align 8, !tbaa !87
  %49 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %15
  %50 = load i32, ptr %49, align 4, !tbaa !102
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %48, ptr align 4 %40, i64 %52, i1 false)
  br label %53

53:                                               ; preds = %1, %45
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 35
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 35
  %56 = load ptr, ptr %55, align 8, !tbaa !237
  %57 = load ptr, ptr %54, align 8, !tbaa !87
  %58 = icmp ne ptr %57, null
  %59 = icmp eq ptr %56, null
  %60 = or i1 %59, %58
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds [27 x ptr], ptr @cost_vector_pool, i64 0, i64 %15
  %63 = load ptr, ptr %62, align 8, !tbaa !87
  %64 = tail call ptr @pool_alloc(ptr noundef %63) #30
  store ptr %64, ptr %54, align 8, !tbaa !87
  %65 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %15
  %66 = load i32, ptr %65, align 4, !tbaa !102
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %64, ptr align 4 %56, i64 %68, i1 false)
  br label %69

69:                                               ; preds = %53, %61
  %70 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 31
  %71 = load i16, ptr %70, align 4
  %72 = and i16 %71, 64
  %73 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 31
  %74 = load i16, ptr %73, align 4
  %75 = and i16 %74, -65
  %76 = or disjoint i16 %75, %72
  store i16 %76, ptr %73, align 4
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !121
  %79 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 7
  store i32 %78, ptr %79, align 8, !tbaa !121
  %80 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 8
  %81 = load i32, ptr %80, align 4, !tbaa !122
  %82 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 8
  store i32 %81, ptr %82, align 4, !tbaa !122
  %83 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 29
  %84 = load i32, ptr %83, align 4, !tbaa !124
  %85 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 29
  store i32 %84, ptr %85, align 4, !tbaa !124
  %86 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 26
  %87 = load i64, ptr %86, align 8, !tbaa !119
  %88 = load i64, ptr %19, align 8, !tbaa !119
  %89 = or i64 %88, %87
  store i64 %89, ptr %19, align 8, !tbaa !119
  %90 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 27
  %91 = load i64, ptr %90, align 8, !tbaa !120
  %92 = load i64, ptr %24, align 8, !tbaa !120
  %93 = or i64 %92, %91
  store i64 %93, ptr %24, align 8, !tbaa !120
  %94 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 30
  %95 = load i32, ptr %94, align 8, !tbaa !125
  %96 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 30
  store i32 %95, ptr %96, align 8, !tbaa !125
  %97 = load i16, ptr %70, align 4
  %98 = and i16 %97, 16
  %99 = and i16 %76, -17
  %100 = or disjoint i16 %98, %99
  store i16 %100, ptr %73, align 4
  %101 = load i16, ptr %70, align 4
  %102 = and i16 %101, 32
  %103 = and i16 %100, -33
  %104 = or disjoint i16 %103, %102
  store i16 %104, ptr %73, align 4
  %105 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !102
  %106 = icmp sgt i32 %105, 2
  %107 = load ptr, ptr @ira_dump_file, align 8
  %108 = icmp ne ptr %107, null
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %114

110:                                              ; preds = %69
  %111 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 17, i64 1, ptr nonnull %107)
  tail call void @ira_print_expanded_allocno(ptr noundef %8)
  %112 = load ptr, ptr @ira_dump_file, align 8, !tbaa !87
  %113 = tail call i32 @fputc(i32 10, ptr %112)
  br label %114

114:                                              ; preds = %110, %69
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @allocno_range_compare_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #26 !prof !489 !PGOFuncName !490 {
  %3 = load ptr, ptr %0, align 8, !tbaa !87
  %4 = load ptr, ptr %1, align 8, !tbaa !87
  %5 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !102
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %14, label %7, !prof !491

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !141
  %10 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !141
  %12 = sub i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %32, !prof !492

14:                                               ; preds = %7, %2
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 21
  %16 = load i32, ptr %15, align 8, !tbaa !134
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 21
  %18 = load i32, ptr %17, align 8, !tbaa !134
  %19 = sub nsw i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32, !prof !493

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %3, i64 0, i32 22
  %23 = load i32, ptr %22, align 4, !tbaa !135
  %24 = getelementptr inbounds %struct.ira_allocno, ptr %4, i64 0, i32 22
  %25 = load i32, ptr %24, align 4, !tbaa !135
  %26 = sub nsw i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32, !prof !494

28:                                               ; preds = %21
  %29 = load i32, ptr %3, align 8, !tbaa !114
  %30 = load i32, ptr %4, align 8, !tbaa !114
  %31 = sub nsw i32 %29, %30
  br label %32

32:                                               ; preds = %21, %14, %7, %28
  %33 = phi i32 [ %31, %28 ], [ %12, %7 ], [ %19, %14 ], [ %26, %21 ]
  ret i32 %33
}

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nounwind }
attributes #31 = { cold }

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
!35 = !{ptr @ira_create_allocno, ptr @pool_alloc, i64 14}
!36 = !{ptr @ira_create_allocno, ptr @bitmap_set_bit, i64 14}
!37 = !{ptr @ira_allocate_allocno_conflict_vec, ptr @ira_allocate, i64 105696}
!38 = !{ptr @ira_create_allocno_live_range, ptr @pool_alloc, i64 169185}
!39 = !{ptr @ira_copy_allocno_live_range_list, ptr @pool_alloc, i64 302}
!40 = !{ptr @ira_finish_allocno_live_range_list, ptr @pool_free, i64 302}
!41 = !{ptr @ira_free_allocno_updated_costs, ptr @pool_free, i64 133911}
!42 = !{ptr @ira_add_allocno_copy, ptr @pool_alloc, i64 1725}
!43 = !{ptr @ira_allocate_cost_vector, ptr @pool_alloc, i64 268583}
!44 = !{ptr @ira_traverse_loop_tree, ptr @create_loop_tree_node_allocnos, i64 155692}
!45 = !{ptr @ira_traverse_loop_tree, ptr @propagate_modified_regnos, i64 38}
!46 = !{ptr @ira_build, ptr @df_analyze, i64 38}
!47 = !{ptr @ira_build, ptr @create_alloc_pool, i64 190}
!48 = !{ptr @ira_build, ptr @max_reg_num, i64 228}
!49 = !{ptr @ira_build, ptr @vec_heap_p_reserve_exact, i64 114}
!50 = !{ptr @ira_build, ptr @ira_allocate, i64 228}
!51 = !{ptr @ira_build, ptr @get_max_uid, i64 38}
!52 = !{ptr @ira_build, ptr @ira_allocate_bitmap, i64 152}
!53 = !{ptr @ira_build, ptr @add_loop_to_tree, i64 155654}
!54 = !{ptr @ira_build, ptr @setup_loop_tree_level, i64 38}
!55 = !{ptr @ira_build, ptr @ira_traverse_loop_tree, i64 76}
!56 = !{ptr @ira_build, ptr @ira_costs, i64 38}
!57 = !{ptr @ira_build, ptr @ira_create_allocno_live_ranges, i64 38}
!58 = !{ptr @ira_build, ptr @remove_unnecessary_regions, i64 38}
!59 = !{ptr @ira_build, ptr @ira_compress_allocno_live_ranges, i64 38}
!60 = !{ptr @ira_build, ptr @bitmap_set_bit, i64 169185}
!61 = !{ptr @ira_build, ptr @bitmap_bit_p, i64 9051}
!62 = !{ptr @ira_build, ptr @bitmap_clear, i64 76}
!63 = !{ptr @ira_build, ptr @ira_tune_allocno_costs_and_cover_classes, i64 38}
!64 = !{ptr @ira_build, ptr @spec_qsort, i64 38}
!65 = !{ptr @ira_build, ptr @ira_free, i64 76}
!66 = !{ptr @ira_build, ptr @ira_build_conflicts, i64 38}
!67 = !{ptr @remove_unnecessary_regions, ptr @ira_allocate, i64 38}
!68 = !{ptr @remove_unnecessary_regions, ptr @spec_qsort, i64 38}
!69 = !{ptr @remove_unnecessary_regions, ptr @ira_free, i64 38}
!70 = !{ptr @remove_unnecessary_regions, ptr @vec_heap_p_reserve_exact, i64 76}
!71 = !{ptr @remove_unnecessary_regions, ptr @remove_uneccesary_loop_nodes_from_loop_tree, i64 38}
!72 = !{ptr @remove_unnecessary_regions, ptr @free, i64 76}
!73 = !{ptr @remove_unnecessary_regions, ptr @max_reg_num, i64 38}
!74 = !{ptr @ira_destroy, ptr @ira_free_bitmap, i64 152}
!75 = !{ptr @ira_destroy, ptr @ira_free, i64 107585}
!76 = !{ptr @ira_destroy, ptr @pool_free, i64 413015}
!77 = !{ptr @ira_destroy, ptr @free, i64 114}
!78 = !{ptr @ira_destroy, ptr @free_alloc_pool, i64 190}
!79 = !{ptr @ira_destroy, ptr @ira_finish_allocno_live_ranges, i64 38}
!80 = !{ptr @create_loop_tree_node_allocnos, ptr @create_insn_allocnos, i64 623676}
!81 = !{ptr @create_loop_tree_node_allocnos, ptr @ira_create_allocno, i64 14}
!82 = !{ptr @create_insn_allocnos, ptr @pool_alloc, i64 143516}
!83 = !{ptr @create_insn_allocnos, ptr @bitmap_set_bit, i64 366144}
!84 = !{ptr @create_insn_allocnos, ptr @create_insn_allocnos, i64 2578328}
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
!106 = !{!"function_entry_count", i64 14}
!107 = !{!108, !93, i64 4}
!108 = !{!"ira_allocno", !93, i64 0, !93, i64 4, !93, i64 8, !93, i64 12, !88, i64 16, !88, i64 24, !88, i64 32, !93, i64 40, !93, i64 44, !93, i64 48, !93, i64 52, !93, i64 56, !93, i64 60, !93, i64 64, !93, i64 68, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !88, i64 104, !88, i64 112, !93, i64 120, !93, i64 124, !88, i64 128, !93, i64 136, !93, i64 140, !94, i64 144, !94, i64 152, !93, i64 160, !93, i64 164, !93, i64 168, !93, i64 172, !93, i64 172, !93, i64 172, !93, i64 172, !93, i64 172, !93, i64 172, !93, i64 172, !93, i64 172, !93, i64 173, !93, i64 173, !93, i64 173, !93, i64 173, !88, i64 176, !88, i64 184, !88, i64 192, !88, i64 200, !88, i64 208, !93, i64 216, !93, i64 220, !88, i64 224, !88, i64 232, !93, i64 240}
!109 = !{!108, !88, i64 32}
!110 = !{!"branch_weights", i32 107433, i32 0}
!111 = !{!108, !88, i64 24}
!112 = !{!113, !88, i64 64}
!113 = !{!"ira_loop_tree_node", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !93, i64 56, !89, i64 60, !88, i64 64, !89, i64 72, !89, i64 76, !88, i64 184, !88, i64 192, !88, i64 200, !88, i64 208}
!114 = !{!108, !93, i64 0}
!115 = !{!113, !88, i64 184}
!116 = !{!108, !88, i64 128}
!117 = !{!108, !93, i64 160}
!118 = !{!94, !94, i64 0}
!119 = !{!108, !94, i64 144}
!120 = !{!108, !94, i64 152}
!121 = !{!108, !93, i64 40}
!122 = !{!108, !93, i64 44}
!123 = !{!108, !93, i64 12}
!124 = !{!108, !93, i64 164}
!125 = !{!108, !93, i64 168}
!126 = !{!108, !88, i64 176}
!127 = !{!"branch_weights", i32 0, i32 107433}
!128 = !{!108, !93, i64 8}
!129 = !{!108, !88, i64 72}
!130 = !{!108, !93, i64 216}
!131 = !{!108, !88, i64 96}
!132 = !{!108, !88, i64 104}
!133 = !{!108, !88, i64 112}
!134 = !{!108, !93, i64 120}
!135 = !{!108, !93, i64 124}
!136 = !{!108, !93, i64 136}
!137 = !{!138, !93, i64 4}
!138 = !{!"VEC_ira_allocno_t_base", !93, i64 0, !93, i64 4, !89, i64 8}
!139 = !{!138, !93, i64 0}
!140 = !{!"function_entry_count", i64 107433}
!141 = !{!108, !93, i64 48}
!142 = !{!"function_entry_count", i64 105696}
!143 = !{!108, !93, i64 140}
!144 = !{!113, !88, i64 0}
!145 = !{!113, !88, i64 8}
!146 = !{!108, !88, i64 88}
!147 = !{!"function_entry_count", i64 169185}
!148 = !{!149, !88, i64 0}
!149 = !{!"ira_allocno_live_range", !88, i64 0, !93, i64 8, !93, i64 12, !88, i64 16, !88, i64 24, !88, i64 32}
!150 = !{!149, !93, i64 8}
!151 = !{!149, !93, i64 12}
!152 = !{!149, !88, i64 16}
!153 = !{!"function_entry_count", i64 302}
!154 = !{!"branch_weights", i32 0, i32 302}
!155 = !{i64 0, i64 8, !87, i64 8, i64 4, !102, i64 12, i64 4, !102, i64 16, i64 8, !87, i64 24, i64 8, !87, i64 32, i64 8, !87}
!156 = !{!"branch_weights", i32 302, i32 0}
!157 = distinct !{!157, !104, !105}
!158 = !{!"branch_weights", i32 8, i32 294}
!159 = !{!"branch_weights", i32 0, i32 294}
!160 = !{!"branch_weights", i32 2614, i32 3332}
!161 = !{!"branch_weights", i32 5946, i32 0}
!162 = !{!"branch_weights", i32 294, i32 5652}
!163 = !{!"branch_weights", i32 2616, i32 3330}
!164 = !{!"branch_weights", i32 5946, i32 294}
!165 = !{!"branch_weights", i32 5652, i32 294}
!166 = distinct !{!166, !104, !105}
!167 = !{!"branch_weights", i32 294, i32 0}
!168 = !{!"function_entry_count", i64 678}
!169 = !{!"branch_weights", i32 293, i32 1}
!170 = !{!"branch_weights", i32 7538, i32 676}
!171 = !{!"branch_weights", i32 292, i32 384}
!172 = !{!"branch_weights", i32 8506, i32 2}
!173 = !{!"branch_weights", i32 7921, i32 293}
!174 = distinct !{!174, !104, !105}
!175 = !{!"branch_weights", i32 107131, i32 302}
!176 = distinct !{!176, !104, !105}
!177 = !{!"function_entry_count", i64 214866}
!178 = !{!108, !88, i64 192}
!179 = !{!"branch_weights", i32 146319, i32 68547}
!180 = !{!108, !88, i64 208}
!181 = !{!"branch_weights", i32 149502, i32 65364}
!182 = !{!183, !93, i64 0}
!183 = !{!"ira_allocno_copy", !93, i64 0, !88, i64 8, !88, i64 16, !93, i64 24, !89, i64 28, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72}
!184 = !{!183, !88, i64 8}
!185 = !{!183, !88, i64 16}
!186 = !{!183, !93, i64 24}
!187 = !{!183, !89, i64 28}
!188 = !{!183, !88, i64 32}
!189 = !{!183, !88, i64 72}
!190 = !{!"branch_weights", i32 0, i32 1725}
!191 = !{!192, !93, i64 4}
!192 = !{!"VEC_ira_copy_t_base", !93, i64 0, !93, i64 4, !89, i64 8}
!193 = !{!192, !93, i64 0}
!194 = !{!183, !88, i64 40}
!195 = !{!183, !88, i64 56}
!196 = !{!183, !88, i64 48}
!197 = !{!"branch_weights", i32 1268, i32 457}
!198 = !{!"branch_weights", i32 449, i32 8}
!199 = !{!183, !88, i64 64}
!200 = !{!"branch_weights", i32 832, i32 893}
!201 = !{!"branch_weights", i32 0, i32 893}
!202 = !{!"function_entry_count", i64 1725}
!203 = !{!"branch_weights", i32 706, i32 1019}
!204 = !{!"branch_weights", i32 986, i32 33}
!205 = !{!"branch_weights", i32 33, i32 0}
!206 = !{!"branch_weights", i32 0, i32 1019}
!207 = !{!"branch_weights", i32 1019, i32 0}
!208 = distinct !{!208, !104, !105}
!209 = !{!"branch_weights", i32 1725, i32 0}
!210 = !{!"branch_weights", i32 1567, i32 158}
!211 = distinct !{!211, !104, !105}
!212 = distinct !{!212, !104, !105}
!213 = distinct !{!213, !104, !105}
!214 = !{!"function_entry_count", i64 268583}
!215 = !{!"function_entry_count", i64 304}
!216 = !{!"branch_weights", i32 114, i32 190}
!217 = !{!"VP", i32 0, i64 190, i64 -5339611287833892715, i64 76, i64 8891620091352781493, i64 38, i64 7174794662314589738, i64 38}
!218 = !{!"branch_weights", i32 76, i32 228}
!219 = !{!"branch_weights", i32 1, i32 227}
!220 = !{!"branch_weights", i32 0, i32 933924}
!221 = !{!"branch_weights", i32 311308, i32 622616}
!222 = !{!"VP", i32 0, i64 622616, i64 -5339611287833892715, i64 311308, i64 8891620091352781493, i64 155654, i64 7174794662314589738, i64 155654}
!223 = !{!"branch_weights", i32 622616, i32 311308}
!224 = !{!"VP", i32 0, i64 311308, i64 4605701705067312555, i64 155654, i64 4410615707090390941, i64 155654}
!225 = !{!"branch_weights", i32 227, i32 933697}
!226 = distinct !{!226, !104, !105}
!227 = !{!"branch_weights", i32 1, i32 0}
!228 = distinct !{!228, !104, !105}
!229 = !{!"branch_weights", i32 190, i32 114}
!230 = !{!"VP", i32 0, i64 114, i64 -4045736540864842243, i64 38, i64 4605701705067312555, i64 38, i64 4410615707090390941, i64 38}
!231 = distinct !{!231, !104, !105}
!232 = distinct !{!232, !104, !105}
!233 = !{!108, !88, i64 80}
!234 = !{!113, !88, i64 48}
!235 = !{!108, !88, i64 16}
!236 = !{!108, !88, i64 184}
!237 = !{!108, !88, i64 200}
!238 = distinct !{!238, !104, !105}
!239 = !{!108, !93, i64 68}
!240 = distinct !{!240, !104, !105}
!241 = distinct !{!241, !104, !105}
!242 = !{!108, !93, i64 52}
!243 = !{!108, !93, i64 60}
!244 = distinct !{!244, !105}
!245 = distinct !{!245, !104, !105}
!246 = distinct !{!246, !104, !105}
!247 = distinct !{!247, !104, !105}
!248 = distinct !{!248, !104, !105}
!249 = distinct !{!249, !104, !105}
!250 = !{!251, !93, i64 20}
!251 = !{!"sparseset_def", !88, i64 0, !88, i64 8, !93, i64 16, !93, i64 20, !93, i64 24, !89, i64 28, !89, i64 29, !89, i64 32}
!252 = !{!251, !88, i64 8}
!253 = !{!251, !93, i64 16}
!254 = !{!251, !88, i64 0}
!255 = !{!251, !93, i64 24}
!256 = !{!251, !89, i64 28}
!257 = !{!251, !89, i64 29}
!258 = distinct !{!258, !104, !105}
!259 = distinct !{!259, !104, !105}
!260 = distinct !{!260, !104, !105}
!261 = distinct !{!261, !104, !105}
!262 = distinct !{!262, !104, !105}
!263 = distinct !{!263, !104, !105}
!264 = distinct !{!264, !104, !105}
!265 = !{!108, !93, i64 64}
!266 = !{!108, !93, i64 56}
!267 = distinct !{!267, !104, !105}
!268 = distinct !{!268, !104, !105}
!269 = !{!270, !93, i64 0}
!270 = !{!"VEC_loop_p_base", !93, i64 0, !93, i64 4, !89, i64 8}
!271 = distinct !{!271, !104, !105}
!272 = distinct !{!272, !104, !105}
!273 = !{!"ira-build.c;finish_allocno"}
!274 = !{!"branch_weights", i32 39559, i32 67874}
!275 = !{!"branch_weights", i32 40635, i32 66798}
!276 = !{!"branch_weights", i32 1, i32 107432}
!277 = !{!"branch_weights", i32 107432, i32 61753}
!278 = !{!"function_entry_count", i64 38}
!279 = !{!"branch_weights", i32 151, i32 1}
!280 = !{!"branch_weights", i32 153, i32 151}
!281 = distinct !{!281, !104, !105}
!282 = !{!"VP", i32 1, i64 38, i64 513, i64 38}
!283 = !{!284, !88, i64 8}
!284 = !{!"function", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !93, i64 104, !93, i64 108, !93, i64 112, !93, i64 116, !93, i64 120, !93, i64 124, !88, i64 128, !93, i64 136, !93, i64 137, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 138, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139, !93, i64 139}
!285 = !{!286, !93, i64 32}
!286 = !{!"control_flow_graph", !88, i64 0, !88, i64 8, !88, i64 16, !93, i64 24, !93, i64 28, !93, i64 32, !88, i64 40, !93, i64 48, !89, i64 52, !89, i64 60, !93, i64 68, !93, i64 72}
!287 = !{!"branch_weights", i32 1, i32 151}
!288 = !{!113, !88, i64 200}
!289 = !{!113, !88, i64 192}
!290 = !{!113, !88, i64 208}
!291 = !{!"branch_weights", i32 622769, i32 151}
!292 = distinct !{!292, !104, !105}
!293 = !{!"branch_weights", i32 0, i32 38}
!294 = !{!"branch_weights", i32 0, i32 76}
!295 = !{!"branch_weights", i32 38, i32 38}
!296 = !{!297, !88, i64 24}
!297 = !{!"loops", !93, i64 0, !88, i64 8, !88, i64 16, !88, i64 24}
!298 = !{!"branch_weights", i32 38, i32 0}
!299 = !{!300, !88, i64 8}
!300 = !{!"loop", !93, i64 0, !93, i64 4, !88, i64 8, !88, i64 16, !301, i64 24, !93, i64 32, !93, i64 36, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !302, i64 80, !302, i64 96, !89, i64 112, !89, i64 113, !93, i64 116, !88, i64 120, !88, i64 128, !89, i64 136, !88, i64 144}
!301 = !{!"lpt_decision", !93, i64 0, !93, i64 4}
!302 = !{!"", !94, i64 0, !94, i64 8}
!303 = !{!304, !93, i64 0}
!304 = !{!"VEC_edge_base", !93, i64 0, !93, i64 4, !89, i64 8}
!305 = !{!306, !88, i64 0}
!306 = !{!"edge_def", !88, i64 0, !88, i64 8, !89, i64 16, !88, i64 24, !88, i64 32, !93, i64 40, !93, i64 44, !93, i64 48, !93, i64 52, !94, i64 56}
!307 = !{!300, !88, i64 16}
!308 = !{!306, !93, i64 48}
!309 = !{!310, !88, i64 8}
!310 = !{!"basic_block_def", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !89, i64 32, !88, i64 48, !88, i64 56, !89, i64 64, !94, i64 72, !93, i64 80, !93, i64 84, !93, i64 88, !93, i64 92, !93, i64 96}
!311 = !{!306, !88, i64 8}
!312 = !{!310, !88, i64 0}
!313 = distinct !{!313, !104, !105}
!314 = distinct !{!314, !104, !105}
!315 = distinct !{!315, !104, !105}
!316 = !{!113, !88, i64 40}
!317 = !{!113, !88, i64 32}
!318 = distinct !{!318, !104, !105}
!319 = !{!286, !88, i64 0}
!320 = !{!310, !88, i64 56}
!321 = !{!286, !88, i64 8}
!322 = !{!310, !93, i64 80}
!323 = !{!310, !88, i64 24}
!324 = !{!"branch_weights", i32 0, i32 1}
!325 = !{!300, !93, i64 0}
!326 = !{!"branch_weights", i32 0, i32 155654}
!327 = !{!300, !88, i64 40}
!328 = distinct !{!328, !104, !105}
!329 = !{!113, !88, i64 24}
!330 = !{!"branch_weights", i32 151, i32 622465}
!331 = distinct !{!331, !104, !105}
!332 = !{!333, !88, i64 24}
!333 = !{!"bitmap_head_def", !88, i64 0, !88, i64 8, !93, i64 16, !88, i64 24}
!334 = !{!"branch_weights", i32 151, i32 153}
!335 = distinct !{!335, !104, !105}
!336 = !{!"branch_weights", i32 151, i32 429581}
!337 = !{!"branch_weights", i32 107433, i32 38}
!338 = distinct !{!338, !104, !105}
!339 = distinct !{!339, !104, !105}
!340 = distinct !{!340, !104, !105}
!341 = !{!"branch_weights", i32 94188, i32 13245}
!342 = !{!"branch_weights", i32 1, i32 7157}
!343 = !{!"branch_weights", i32 7157, i32 6446}
!344 = distinct !{!344, !104, !105}
!345 = !{!"branch_weights", i32 6863, i32 7516}
!346 = !{!"branch_weights", i32 776, i32 6087}
!347 = distinct !{!347, !104, !105}
!348 = !{!"branch_weights", i32 6087, i32 7516}
!349 = distinct !{!349, !104, !105}
!350 = !{!"branch_weights", i32 1444, i32 0}
!351 = distinct !{!351, !104, !105}
!352 = distinct !{!352, !104, !105}
!353 = distinct !{!353, !104, !105}
!354 = distinct !{!354, !104, !105}
!355 = distinct !{!355, !104, !105}
!356 = distinct !{!356, !104, !105}
!357 = !{!"branch_weights", i32 107433, i32 61752}
!358 = distinct !{!358, !104, !105}
!359 = !{!"branch_weights", i32 1159801, i32 151}
!360 = distinct !{!360, !104, !105}
!361 = !{!"branch_weights", i32 182555, i32 107433}
!362 = distinct !{!362, !104, !105}
!363 = distinct !{!363, !104, !105}
!364 = distinct !{!364, !104, !105}
!365 = distinct !{!365, !104, !105}
!366 = distinct !{!366, !104, !105}
!367 = !{!"branch_weights", i32 38, i32 107395}
!368 = !{!"branch_weights", i32 0, i32 107395}
!369 = !{!"branch_weights", i32 107395, i32 0}
!370 = !{!"branch_weights", i32 96, i32 107395}
!371 = !{!"branch_weights", i32 107491, i32 0}
!372 = distinct !{!372, !104, !105}
!373 = !{!"branch_weights", i32 429581, i32 151}
!374 = distinct !{!374, !104, !105}
!375 = !{!"branch_weights", i32 1315345, i32 151}
!376 = distinct !{!376, !104, !105}
!377 = !{!"branch_weights", i32 95258, i32 12175}
!378 = !{!"branch_weights", i32 107432, i32 1}
!379 = !{!"branch_weights", i32 107432, i32 221442}
!380 = distinct !{!380, !104, !105}
!381 = distinct !{!381, !104, !105}
!382 = distinct !{!382, !104, !105}
!383 = distinct !{!383, !104, !105}
!384 = distinct !{!384, !104, !105}
!385 = distinct !{!385, !104, !105}
!386 = !{!286, !93, i64 24}
!387 = !{!"ira-build.c;remove_unnecessary_regions"}
!388 = !{!113, !89, i64 60}
!389 = !{!310, !93, i64 88}
!390 = distinct !{!390, !104, !105}
!391 = distinct !{!391, !104, !105}
!392 = distinct !{!392, !104, !105}
!393 = !{!394, !93, i64 8}
!394 = !{!"param_info", !88, i64 0, !93, i64 8, !89, i64 12, !93, i64 16, !93, i64 20, !88, i64 24}
!395 = distinct !{!395, !104, !105}
!396 = distinct !{!396, !104, !105}
!397 = distinct !{!397, !104, !105}
!398 = distinct !{!398, !104, !105}
!399 = distinct !{!399, !104, !105}
!400 = distinct !{!400, !104, !105}
!401 = !{!"branch_weights", i32 289988, i32 0}
!402 = distinct !{!402, !104, !105}
!403 = distinct !{!403, !104, !105}
!404 = distinct !{!404, !104, !105}
!405 = !{!406, !93, i64 0}
!406 = !{!"VEC_ira_loop_tree_node_t_base", !93, i64 0, !93, i64 4, !89, i64 8}
!407 = distinct !{!407, !104, !105}
!408 = distinct !{!408, !104, !105}
!409 = !{!"branch_weights", i32 155730, i32 0}
!410 = distinct !{!410, !104, !105}
!411 = !{!"branch_weights", i32 151, i32 6749}
!412 = !{!"branch_weights", i32 1725, i32 38}
!413 = distinct !{!413, !104, !105}
!414 = distinct !{!414, !104, !105}
!415 = distinct !{!415, !104, !105}
!416 = !{!"function_entry_count", i64 155654}
!417 = !{!"ira-build.c;add_loop_to_tree"}
!418 = !{!"branch_weights", i32 155654, i32 0}
!419 = !{!"branch_weights", i32 38, i32 155616}
!420 = distinct !{!420, !104, !105}
!421 = !{!113, !88, i64 16}
!422 = !{!"ira-build.c;setup_loop_tree_level"}
!423 = !{!113, !93, i64 56}
!424 = distinct !{!424, !104, !105}
!425 = !{!"function_entry_count", i64 155692}
!426 = !{!"ira-build.c;create_loop_tree_node_allocnos"}
!427 = !{!"branch_weights", i32 38, i32 155654}
!428 = !{!429, !88, i64 0}
!429 = !{!"rtl_bb_info", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !93, i64 32}
!430 = !{!"branch_weights", i32 155654, i32 893503}
!431 = !{!"branch_weights", i32 269827, i32 623676}
!432 = !{!"branch_weights", i32 0, i32 1049157}
!433 = distinct !{!433, !104, !105}
!434 = !{!435, !93, i64 16}
!435 = !{!"dataflow", !88, i64 0, !88, i64 8, !93, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !93, i64 48, !89, i64 52, !89, i64 53, !89, i64 54}
!436 = !{!435, !88, i64 8}
!437 = !{!438, !88, i64 16}
!438 = !{!"df_lr_bb_info", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24}
!439 = !{!333, !88, i64 0}
!440 = !{!441, !93, i64 16}
!441 = !{!"bitmap_element_def", !88, i64 0, !88, i64 8, !93, i64 16, !89, i64 24}
!442 = !{!"branch_weights", i32 322931, i32 15510}
!443 = !{!"branch_weights", i32 182786, i32 1}
!444 = !{!"branch_weights", i32 3015181, i32 182786}
!445 = distinct !{!445, !104, !105}
!446 = !{!"branch_weights", i32 1, i32 321913}
!447 = !{!"branch_weights", i32 320897, i32 167277}
!448 = !{!"branch_weights", i32 321913, i32 166261}
!449 = distinct !{!449, !104, !105}
!450 = !{!441, !88, i64 0}
!451 = !{!"branch_weights", i32 155654, i32 166260}
!452 = distinct !{!452, !105}
!453 = !{!"branch_weights", i32 155654, i32 182787}
!454 = !{!"branch_weights", i32 14, i32 182773}
!455 = distinct !{!455, !104, !105}
!456 = distinct !{!456, !104, !105}
!457 = distinct !{!457, !104, !105}
!458 = !{!"ira-build.c;propagate_modified_regnos"}
!459 = !{!438, !88, i64 24}
!460 = distinct !{!460, !104, !105}
!461 = !{!"function_entry_count", i64 3411586}
!462 = !{!"ira-build.c;create_insn_allocnos"}
!463 = !{!"branch_weights", i32 1670481, i32 883018, i32 621592, i32 8244, i32 228251}
!464 = !{!"branch_weights", i32 357248, i32 525770}
!465 = !{!"branch_weights", i32 107419, i32 249829}
!466 = !{!"branch_weights", i32 357248, i32 0}
!467 = !{!310, !94, i64 72}
!468 = !{!"branch_weights", i32 315179, i32 42069}
!469 = !{!"branch_weights", i32 190616, i32 166632}
!470 = !{!"branch_weights", i32 1670481, i32 0, i32 0, i32 0}
!471 = !{!"branch_weights", i32 1, i32 1670480}
!472 = !{!"branch_weights", i32 1077583, i32 1291389, i32 8421}
!473 = !{!474, !93, i64 0}
!474 = !{!"rtvec_def", !93, i64 0, !89, i64 8}
!475 = !{!"branch_weights", i32 8420, i32 1}
!476 = !{!"branch_weights", i32 8422, i32 8420}
!477 = distinct !{!477, !104, !105}
!478 = !{!"branch_weights", i32 706913, i32 1670480}
!479 = distinct !{!479, !104, !105}
!480 = !{!"ira-build.c;remove_uneccesary_loop_nodes_from_loop_tree"}
!481 = !{!406, !93, i64 4}
!482 = distinct !{!482, !104, !105}
!483 = !{!"branch_weights", i32 0, i32 155692}
!484 = !{!"branch_weights", i32 155654, i32 38}
!485 = distinct !{!485, !104, !105}
!486 = !{!"ira-build.c;finish_loop_tree_node"}
!487 = distinct !{!487, !104, !105}
!488 = !{!108, !93, i64 220}
!489 = !{!"function_entry_count", i64 323797}
!490 = !{!"ira-build.c;allocno_range_compare_func"}
!491 = !{!"branch_weights", i32 0, i32 323797}
!492 = !{!"branch_weights", i32 323797, i32 0}
!493 = !{!"branch_weights", i32 6097, i32 317700}
!494 = !{!"branch_weights", i32 0, i32 6097}
