; ModuleID = 'ira-costs.c'
source_filename = "ira-costs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.costs = type { i32, [1 x i32] }
%struct.ira_allocno = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i64, i64, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.ira_loop_tree_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, i8, [27 x i32], ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.secondary_reload_info = type { i32, i32, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@init_cost = internal unnamed_addr global ptr null, align 8
@op_costs = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16
@this_op_costs = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16
@temp_costs = internal unnamed_addr global ptr null, align 8
@cost_classes = internal unnamed_addr global ptr null, align 8
@ira_important_classes_num = external local_unnamed_addr global i32, align 4
@max_struct_costs_size = internal unnamed_addr global i32 0, align 4
@allocno_p = internal unnamed_addr global i1 false, align 1
@ira_allocnos_num = external local_unnamed_addr global i32, align 4
@cost_elements_num = internal unnamed_addr global i32 0, align 4
@total_allocno_costs = internal unnamed_addr global ptr null, align 8
@ira_dump_file = external local_unnamed_addr global ptr, align 8
@flag_ira_verbose = external local_unnamed_addr global i32, align 4
@internal_flag_ira_verbose = external local_unnamed_addr global i32, align 4
@pseudo_classes_defined_p = internal unnamed_addr global i1 false, align 1
@ira_class_hard_regs_num = external local_unnamed_addr global [27 x i32], align 16
@ira_class_hard_regs = external local_unnamed_addr global [27 x [53 x i16]], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@ira_memory_move_cost = external local_unnamed_addr global [87 x [27 x [2 x i16]]], align 16
@costs = internal unnamed_addr global ptr null, align 8
@pref_buffer = internal unnamed_addr global ptr null, align 8
@regno_cover_class = internal unnamed_addr global ptr null, align 8
@pref = internal unnamed_addr global ptr null, align 8
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [44 x i8] c"\0APass %i for finding pseudo/allocno costs\0A\0A\00", align 1
@cost_class_nums = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@cost_classes_num = internal unnamed_addr global i32 0, align 4
@ira_important_classes = external local_unnamed_addr global [27 x i32], align 16
@struct_costs_size = internal unnamed_addr global i32 0, align 4
@ira_loop_tree_root = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@ira_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@flag_ira_region = external local_unnamed_addr global i32, align 4
@contains_reg_of_mode = external local_unnamed_addr global [27 x [87 x i8]], align 16
@ira_reg_class_union = external local_unnamed_addr global [27 x [27 x i32]], align 16
@reg_class_size = external local_unnamed_addr global [27 x i32], align 16
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@ira_class_translate = external local_unnamed_addr global [27 x i32], align 16
@flag_ira_algorithm = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"    r%d: preferred %s, alternative %s, cover %s\0A\00", align 1
@reg_class_names = external local_unnamed_addr global [0 x ptr], align 8
@ira_class_subset_p = external local_unnamed_addr global [27 x [27 x i32]], align 16
@.str.2 = private unnamed_addr constant [14 x i8] c"    a%d (r%d,\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"b%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"l%d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c") best %s, cover %s\0A\00", align 1
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@frequency = internal unnamed_addr global i32 0, align 4
@ira_curr_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@reg_renumber = external local_unnamed_addr global ptr, align 8
@ira_register_move_cost = external local_unnamed_addr global [87 x ptr], align 16
@ira_may_move_in_cost = external local_unnamed_addr global [87 x ptr], align 16
@ira_may_move_out_cost = external local_unnamed_addr global [87 x ptr], align 16
@ira_reg_class_intersect = external local_unnamed_addr global [27 x [27 x i32]], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@flag_pic = external local_unnamed_addr global i32, align 4
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@move_cost = external local_unnamed_addr global [87 x ptr], align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"  a%d(r%d,\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c") costs:\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" %s:%d\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" MEM:%i\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"  r%d costs:\00", align 1
@ira_available_class_regs = external local_unnamed_addr global [27 x i32], align 16
@optimize = external local_unnamed_addr global i32, align 4
@ira_class_hard_reg_index = external local_unnamed_addr global [27 x [53 x i16]], align 16
@ira_allocnos = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !88 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !89
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !88 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !89
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !88 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !99

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !93
  %11 = load i8, ptr %3, align 1, !tbaa !100
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !88 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !99

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !93
  %11 = load i8, ptr %3, align 1, !tbaa !100
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !88 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !89
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !99

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !93
  %11 = load i8, ptr %3, align 1, !tbaa !100
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !88 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !89
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !88 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !99

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !101
  store i8 %12, ptr %4, align 1, !tbaa !100
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !88 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !99

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !101
  store i8 %12, ptr %4, align 1, !tbaa !100
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !88 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !99

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !101
  store i8 %12, ptr %4, align 1, !tbaa !100
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !88 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !88 {
  %2 = load i32, ptr %0, align 8, !tbaa !103
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !88 {
  %2 = load i32, ptr %0, align 8, !tbaa !103
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !88 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !104
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !88 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !104
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !88 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !88 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !88 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !88 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #18
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
  br i1 %23, label %7, label %24, !llvm.loop !105

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !88 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @ira_init_costs_once() local_unnamed_addr #9 !prof !108 {
  store ptr null, ptr @init_cost, align 8, !tbaa !89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) @op_costs, i8 0, i64 240, i1 false), !tbaa !89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) @this_op_costs, i8 0, i64 240, i1 false), !tbaa !89
  store ptr null, ptr @temp_costs, align 8, !tbaa !89
  store ptr null, ptr @cost_classes, align 8, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_init_costs() local_unnamed_addr #10 !prof !108 {
  tail call fastcc void @free_ira_costs()
  %1 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !104
  %2 = shl i32 %1, 2
  %3 = add i32 %2, 4
  store i32 %3, ptr @max_struct_costs_size, align 4, !tbaa !104
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xmalloc(i64 noundef %4) #18
  store ptr %5, ptr @init_cost, align 8, !tbaa !89
  store i32 1000000, ptr %5, align 4, !tbaa !109
  %6 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !104
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %15, !prof !111

8:                                                ; preds = %0, %8
  %9 = phi i64 [ %11, %8 ], [ 0, %0 ]
  %10 = getelementptr inbounds %struct.costs, ptr %5, i64 0, i32 1, i64 %9
  store i32 1000000, ptr %10, align 4, !tbaa !104
  %11 = add nuw nsw i64 %9, 1
  %12 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !104
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %8, label %15, !prof !112, !llvm.loop !113

15:                                               ; preds = %8, %0
  br label %16

16:                                               ; preds = %15, %16
  %17 = phi i64 [ %26, %16 ], [ 0, %15 ]
  %18 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !104
  %19 = sext i32 %18 to i64
  %20 = tail call ptr @xmalloc(i64 noundef %19) #18
  %21 = getelementptr inbounds [30 x ptr], ptr @op_costs, i64 0, i64 %17
  store ptr %20, ptr %21, align 8, !tbaa !89
  %22 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !104
  %23 = sext i32 %22 to i64
  %24 = tail call ptr @xmalloc(i64 noundef %23) #18
  %25 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %17
  store ptr %24, ptr %25, align 8, !tbaa !89
  %26 = add nuw nsw i64 %17, 1
  %27 = icmp eq i64 %26, 30
  br i1 %27, label %28, label %16, !prof !114, !llvm.loop !115

28:                                               ; preds = %16
  %29 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !104
  %30 = sext i32 %29 to i64
  %31 = tail call ptr @xmalloc(i64 noundef %30) #18
  store ptr %31, ptr @temp_costs, align 8, !tbaa !89
  %32 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !104
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr @xmalloc(i64 noundef %34) #18
  store ptr %35, ptr @cost_classes, align 8, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_ira_costs() unnamed_addr #10 !prof !116 !PGOFuncName !117 {
  %1 = load ptr, ptr @init_cost, align 8, !tbaa !89
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !118

3:                                                ; preds = %0
  tail call void @free(ptr noundef %1)
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @init_cost, align 8, !tbaa !89
  br label %5

5:                                                ; preds = %4, %16
  %6 = phi i64 [ 0, %4 ], [ %17, %16 ]
  %7 = getelementptr inbounds [30 x ptr], ptr @op_costs, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !119

10:                                               ; preds = %5
  tail call void @free(ptr noundef %8)
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %6
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !119

15:                                               ; preds = %11
  tail call void @free(ptr noundef %13)
  br label %16

16:                                               ; preds = %15, %11
  store ptr null, ptr %12, align 8, !tbaa !89
  store ptr null, ptr %7, align 8, !tbaa !89
  %17 = add nuw nsw i64 %6, 1
  %18 = icmp eq i64 %17, 30
  br i1 %18, label %19, label %5, !prof !120, !llvm.loop !121

19:                                               ; preds = %16
  %20 = load ptr, ptr @temp_costs, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !118

22:                                               ; preds = %19
  tail call void @free(ptr noundef %20)
  br label %23

23:                                               ; preds = %22, %19
  store ptr null, ptr @temp_costs, align 8, !tbaa !89
  %24 = load ptr, ptr @cost_classes, align 8, !tbaa !89
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !118

26:                                               ; preds = %23
  tail call void @free(ptr noundef %24)
  br label %27

27:                                               ; preds = %26, %23
  store ptr null, ptr @cost_classes, align 8, !tbaa !89
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_finish_costs_once() local_unnamed_addr #11 !prof !108 {
  tail call fastcc void @free_ira_costs()
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_costs() local_unnamed_addr #10 !prof !122 {
  store i1 true, ptr @allocno_p, align 1
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !104
  store i32 %1, ptr @cost_elements_num, align 4, !tbaa !104
  tail call void @init_subregs_of_mode() #18
  %2 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !104
  %3 = load i32, ptr @cost_elements_num, align 4, !tbaa !104
  %4 = mul nsw i32 %3, %2
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #18
  store ptr %6, ptr @costs, align 8, !tbaa !89
  %7 = load i32, ptr @cost_elements_num, align 4, !tbaa !104
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  %10 = tail call ptr @ira_allocate(i64 noundef %9) #18
  store ptr %10, ptr @pref_buffer, align 8, !tbaa !89
  %11 = tail call i32 @max_reg_num() #18
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = tail call ptr @ira_allocate(i64 noundef %13) #18
  store ptr %14, ptr @regno_cover_class, align 8, !tbaa !89
  %15 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !104
  %16 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !104
  %17 = mul nsw i32 %16, %15
  %18 = sext i32 %17 to i64
  %19 = tail call ptr @ira_allocate(i64 noundef %18) #18
  store ptr %19, ptr @total_allocno_costs, align 8, !tbaa !89
  %20 = load ptr, ptr @ira_dump_file, align 8, !tbaa !89
  tail call fastcc void @find_costs_and_classes(ptr noundef %20)
  br label %21

21:                                               ; preds = %72, %0
  %22 = phi ptr [ undef, %0 ], [ %54, %72 ]
  %23 = phi i32 [ 0, %0 ], [ %55, %72 ]
  %24 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !104
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %52, !prof !123

26:                                               ; preds = %21
  %27 = load ptr, ptr @ira_allocnos, align 8, !tbaa !89
  %28 = sext i32 %23 to i64
  %29 = sext i32 %24 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !89
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %39, !prof !124

33:                                               ; preds = %45
  %34 = getelementptr inbounds ptr, ptr %27, i64 %47
  %35 = load ptr, ptr %34, align 8, !tbaa !89
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37, !prof !124, !llvm.loop !125

37:                                               ; preds = %33
  %38 = icmp slt i64 %47, %29
  br label %39

39:                                               ; preds = %37, %26
  %40 = phi i64 [ %28, %26 ], [ %47, %37 ]
  %41 = phi i1 [ %25, %26 ], [ %38, %37 ]
  %42 = phi ptr [ %31, %26 ], [ %35, %37 ]
  %43 = trunc i64 %40 to i32
  %44 = add nsw i32 %43, 1
  br label %52

45:                                               ; preds = %26, %33
  %46 = phi i64 [ %47, %33 ], [ %28, %26 ]
  %47 = add nsw i64 %46, 1
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %24, %48
  br i1 %49, label %50, label %33, !prof !126, !llvm.loop !125

50:                                               ; preds = %45
  %51 = icmp slt i64 %47, %29
  br label %52

52:                                               ; preds = %50, %21, %39
  %53 = phi i1 [ %41, %39 ], [ %25, %21 ], [ %51, %50 ]
  %54 = phi ptr [ %42, %39 ], [ %22, %21 ], [ %22, %50 ]
  %55 = phi i32 [ %44, %39 ], [ %23, %21 ], [ %23, %50 ]
  br i1 %53, label %56, label %137, !prof !127

56:                                               ; preds = %52
  %57 = load i32, ptr %54, align 8, !tbaa !128
  %58 = load ptr, ptr @regno_cover_class, align 8, !tbaa !89
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %54, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !130
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %58, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !104
  %64 = load ptr, ptr @costs, align 8, !tbaa !89
  %65 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %66 = mul nsw i32 %65, %57
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %64, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !109
  %70 = getelementptr inbounds %struct.ira_allocno, ptr %54, i64 0, i32 12
  store i32 %69, ptr %70, align 4, !tbaa !131
  tail call void @ira_set_allocno_cover_class(ptr noundef nonnull %54, i32 noundef %63) #18
  %71 = icmp eq i32 %63, 0
  br i1 %71, label %72, label %73, !prof !132

72:                                               ; preds = %132, %73, %80, %88, %56
  br label %21, !llvm.loop !133

73:                                               ; preds = %56
  %74 = zext i32 %63 to i64
  %75 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !104
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %54, i64 0, i32 38
  store i32 %76, ptr %77, align 4, !tbaa !134
  %78 = load i32, ptr @optimize, align 4, !tbaa !104
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %72, label %80, !prof !132

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.ira_allocno, ptr %54, i64 0, i32 9
  %82 = load i32, ptr %81, align 8, !tbaa !135
  %83 = load ptr, ptr @pref, align 8, !tbaa !89
  %84 = sext i32 %57 to i64
  %85 = getelementptr inbounds i32, ptr %83, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !104
  %87 = icmp eq i32 %82, %86
  br i1 %87, label %72, label %88, !prof !136

88:                                               ; preds = %80
  %89 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %74
  %90 = load i32, ptr %89, align 4, !tbaa !104
  %91 = tail call ptr @ira_allocate_cost_vector(i32 noundef %63) #18
  %92 = getelementptr inbounds %struct.ira_allocno, ptr %54, i64 0, i32 33
  store ptr %91, ptr %92, align 8, !tbaa !137
  %93 = icmp sgt i32 %90, 0
  br i1 %93, label %94, label %72, !prof !138

94:                                               ; preds = %88
  %95 = load ptr, ptr @pref, align 8, !tbaa !89
  %96 = getelementptr inbounds i32, ptr %95, i64 %84
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %54, i64 0, i32 10
  %98 = load ptr, ptr @costs, align 8
  %99 = load i32, ptr @struct_costs_size, align 4
  %100 = mul nsw i32 %99, %57
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %98, i64 %101
  %103 = zext nneg i32 %90 to i64
  br label %104

104:                                              ; preds = %94, %132
  %105 = phi i64 [ %103, %94 ], [ %106, %132 ]
  %106 = add nsw i64 %105, -1
  %107 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %74, i64 %106
  %108 = load i16, ptr %107, align 2, !tbaa !139
  %109 = sext i16 %108 to i64
  %110 = load i32, ptr %96, align 4, !tbaa !104
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %111
  %113 = load i64, ptr %112, align 8, !tbaa !140
  %114 = and i64 %109, 4294967295
  %115 = shl nuw i64 1, %114
  %116 = and i64 %113, %115
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %132, !prof !141

118:                                              ; preds = %104
  %119 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %109
  %120 = load i32, ptr %119, align 4, !tbaa !104
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [27 x i32], ptr @cost_class_nums, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !104
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128, !prof !142

125:                                              ; preds = %118
  %126 = getelementptr inbounds [27 x i32], ptr @cost_class_nums, i64 0, i64 %74
  %127 = load i32, ptr %126, align 4, !tbaa !104
  br label %128

128:                                              ; preds = %125, %118
  %129 = phi i32 [ %127, %125 ], [ %123, %118 ]
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.costs, ptr %102, i64 0, i32 1, i64 %130
  br label %132

132:                                              ; preds = %104, %128
  %133 = phi ptr [ %131, %128 ], [ %97, %104 ]
  %134 = load i32, ptr %133, align 4, !tbaa !104
  %135 = getelementptr inbounds i32, ptr %91, i64 %106
  store i32 %134, ptr %135, align 4, !tbaa !104
  %136 = icmp sgt i64 %105, 1
  br i1 %136, label %104, label %72, !prof !143, !llvm.loop !144

137:                                              ; preds = %52
  %138 = load i32, ptr @optimize, align 4, !tbaa !104
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140, !prof !145

140:                                              ; preds = %137
  %141 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !89
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %141, ptr noundef nonnull @process_bb_node_for_hard_reg_moves, ptr noundef null) #18
  br label %142

142:                                              ; preds = %137, %140
  %143 = load ptr, ptr @regno_cover_class, align 8, !tbaa !89
  tail call void @ira_free(ptr noundef %143) #18
  %144 = load ptr, ptr @pref_buffer, align 8, !tbaa !89
  tail call void @ira_free(ptr noundef %144) #18
  %145 = load ptr, ptr @costs, align 8, !tbaa !89
  tail call void @ira_free(ptr noundef %145) #18
  %146 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !89
  tail call void @ira_free(ptr noundef %146) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_costs() unnamed_addr #10 !prof !88 !PGOFuncName !146 {
  tail call void @init_subregs_of_mode() #18
  %1 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !104
  %2 = load i32, ptr @cost_elements_num, align 4, !tbaa !104
  %3 = mul nsw i32 %2, %1
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @ira_allocate(i64 noundef %4) #18
  store ptr %5, ptr @costs, align 8, !tbaa !89
  %6 = load i32, ptr @cost_elements_num, align 4, !tbaa !104
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call ptr @ira_allocate(i64 noundef %8) #18
  store ptr %9, ptr @pref_buffer, align 8, !tbaa !89
  %10 = tail call i32 @max_reg_num() #18
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr @ira_allocate(i64 noundef %12) #18
  store ptr %13, ptr @regno_cover_class, align 8, !tbaa !89
  ret void
}

declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @find_costs_and_classes(ptr noundef %0) unnamed_addr #10 !prof !122 !PGOFuncName !147 {
  tail call void @init_recog() #18
  store ptr null, ptr @pref, align 8, !tbaa !89
  %2 = tail call zeroext i8 @resize_reg_info() #18
  %3 = icmp eq i8 %2, 0
  %4 = load i1, ptr @allocno_p, align 1
  %5 = select i1 %3, i1 %4, i1 false, !prof !148
  %6 = load i1, ptr @pseudo_classes_defined_p, align 1
  %7 = select i1 %5, i1 %6, i1 false, !prof !148
  br i1 %7, label %8, label %57, !prof !145

8:                                                ; preds = %1
  %9 = load ptr, ptr @pref_buffer, align 8, !tbaa !89
  store ptr %9, ptr @pref, align 8, !tbaa !89
  br label %10

10:                                               ; preds = %45, %8
  %11 = phi ptr [ undef, %8 ], [ %43, %45 ]
  %12 = phi i32 [ 0, %8 ], [ %44, %45 ]
  %13 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !104
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = load ptr, ptr @ira_allocnos, align 8, !tbaa !89
  %17 = sext i32 %12 to i64
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %28

22:                                               ; preds = %34
  %23 = getelementptr inbounds ptr, ptr %16, i64 %36
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26, !llvm.loop !125

26:                                               ; preds = %22
  %27 = icmp slt i64 %36, %18
  br label %28

28:                                               ; preds = %26, %15
  %29 = phi i64 [ %17, %15 ], [ %36, %26 ]
  %30 = phi i1 [ %14, %15 ], [ %27, %26 ]
  %31 = phi ptr [ %20, %15 ], [ %24, %26 ]
  %32 = trunc i64 %29 to i32
  %33 = add nsw i32 %32, 1
  br label %41

34:                                               ; preds = %15, %22
  %35 = phi i64 [ %36, %22 ], [ %17, %15 ]
  %36 = add nsw i64 %35, 1
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %13, %37
  br i1 %38, label %39, label %22, !llvm.loop !125

39:                                               ; preds = %34
  %40 = icmp slt i64 %36, %18
  br label %41

41:                                               ; preds = %39, %10, %28
  %42 = phi i1 [ %30, %28 ], [ %14, %10 ], [ %40, %39 ]
  %43 = phi ptr [ %31, %28 ], [ %11, %10 ], [ %11, %39 ]
  %44 = phi i32 [ %33, %28 ], [ %12, %10 ], [ %12, %39 ]
  br i1 %42, label %45, label %53

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %43, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !130
  %48 = tail call i32 @reg_preferred_class(i32 noundef %47) #18
  %49 = load ptr, ptr @pref, align 8, !tbaa !89
  %50 = load i32, ptr %43, align 8, !tbaa !128
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %49, i64 %51
  store i32 %48, ptr %52, align 4, !tbaa !104
  br label %10, !llvm.loop !149

53:                                               ; preds = %41
  %54 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !104
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i32
  br label %57

57:                                               ; preds = %53, %1
  %58 = phi i32 [ %56, %53 ], [ 0, %1 ]
  %59 = load i1, ptr @allocno_p, align 1
  br i1 %59, label %60, label %61, !prof !148

60:                                               ; preds = %57
  store i1 false, ptr @pseudo_classes_defined_p, align 1
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !104
  %63 = icmp sgt i32 %58, %62
  br i1 %63, label %718, label %64, !prof !150

64:                                               ; preds = %61
  %65 = icmp ne ptr %0, null
  br label %66

66:                                               ; preds = %64, %714
  %67 = phi i32 [ %58, %64 ], [ %715, %714 ]
  %68 = load i1, ptr @allocno_p, align 1
  %69 = xor i1 %68, true
  %70 = load i32, ptr @internal_flag_ira_verbose, align 4
  %71 = icmp sgt i32 %70, 0
  %72 = select i1 %69, i1 true, i1 %71, !prof !151
  %73 = and i1 %65, %72
  br i1 %73, label %74, label %76, !prof !151

74:                                               ; preds = %66
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %67)
  br label %76

76:                                               ; preds = %66, %74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @cost_class_nums, i8 -1, i64 108, i1 false), !tbaa !104
  %77 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !104
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %95, !prof !123

79:                                               ; preds = %76
  %80 = load ptr, ptr @cost_classes, align 8, !tbaa !89
  br label %81

81:                                               ; preds = %79, %81
  %82 = phi i64 [ 0, %79 ], [ %89, %81 ]
  %83 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !104
  %85 = getelementptr inbounds i32, ptr %80, i64 %82
  store i32 %84, ptr %85, align 4, !tbaa !104
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds [27 x i32], ptr @cost_class_nums, i64 0, i64 %86
  %88 = trunc i64 %82 to i32
  store i32 %88, ptr %87, align 4, !tbaa !104
  %89 = add nuw nsw i64 %82, 1
  %90 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !104
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %81, label %93, !prof !152, !llvm.loop !153

93:                                               ; preds = %81
  %94 = trunc i64 %89 to i32
  br label %95

95:                                               ; preds = %93, %76
  %96 = phi i32 [ 0, %76 ], [ %94, %93 ]
  store i32 %96, ptr @cost_classes_num, align 4, !tbaa !104
  %97 = shl i32 %96, 2
  %98 = add i32 %97, 4
  store i32 %98, ptr @struct_costs_size, align 4, !tbaa !104
  %99 = load ptr, ptr @costs, align 8, !tbaa !89
  %100 = load i32, ptr @cost_elements_num, align 4, !tbaa !104
  %101 = mul nsw i32 %100, %98
  %102 = sext i32 %101 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %99, i8 0, i64 %102, i1 false), !prof !154
  %103 = load i1, ptr @allocno_p, align 1
  br i1 %103, label %104, label %112, !prof !155

104:                                              ; preds = %95
  %105 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !89
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %105, ptr noundef nonnull @process_bb_node_for_costs, ptr noundef null) #18
  %106 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !89
  %107 = load ptr, ptr @costs, align 8, !tbaa !89
  %108 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !104
  %109 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !104
  %110 = mul nsw i32 %109, %108
  %111 = sext i32 %110 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %106, ptr align 4 %107, i64 %111, i1 false), !prof !154
  br label %132

112:                                              ; preds = %95
  %113 = load ptr, ptr @cfun, align 8, !tbaa !89
  %114 = getelementptr inbounds %struct.function, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !156
  %116 = load ptr, ptr %115, align 8, !tbaa !158
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !160
  %119 = getelementptr inbounds %struct.control_flow_graph, ptr %115, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !162
  %121 = icmp eq ptr %118, %120
  br i1 %121, label %132, label %122

122:                                              ; preds = %112, %122
  %123 = phi ptr [ %125, %122 ], [ %118, %112 ]
  tail call fastcc void @process_bb_for_costs(ptr noundef %123)
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %123, i64 0, i32 6
  %125 = load ptr, ptr %124, align 8, !tbaa !160
  %126 = load ptr, ptr @cfun, align 8, !tbaa !89
  %127 = getelementptr inbounds %struct.function, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !156
  %129 = getelementptr inbounds %struct.control_flow_graph, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !162
  %131 = icmp eq ptr %125, %130
  br i1 %131, label %132, label %122, !llvm.loop !163

132:                                              ; preds = %122, %112, %104
  %133 = icmp eq i32 %67, 0
  br i1 %133, label %134, label %136, !prof !164

134:                                              ; preds = %132
  %135 = load ptr, ptr @pref_buffer, align 8, !tbaa !89
  store ptr %135, ptr @pref, align 8, !tbaa !89
  br label %136

136:                                              ; preds = %134, %132
  %137 = tail call i32 @max_reg_num() #18
  %138 = icmp sgt i32 %137, 53
  br i1 %138, label %139, label %527, !prof !123

139:                                              ; preds = %136
  %140 = zext nneg i32 %137 to i64
  br label %141

141:                                              ; preds = %139, %525
  %142 = phi i64 [ %140, %139 ], [ %143, %525 ]
  %143 = add nsw i64 %142, -1
  %144 = load i1, ptr @allocno_p, align 1
  br i1 %144, label %158, label %145, !prof !165

145:                                              ; preds = %141
  %146 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !89
  %147 = getelementptr inbounds ptr, ptr %146, i64 %143
  %148 = load ptr, ptr %147, align 8, !tbaa !89
  %149 = icmp eq ptr %148, null
  br i1 %149, label %525, label %150

150:                                              ; preds = %145
  %151 = load ptr, ptr @temp_costs, align 8, !tbaa !89
  %152 = load ptr, ptr @costs, align 8, !tbaa !89
  %153 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %154 = sext i32 %153 to i64
  %155 = mul nsw i64 %143, %154
  %156 = getelementptr inbounds i8, ptr %152, i64 %155
  %157 = sext i32 %153 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %151, ptr align 4 %156, i64 %157, i1 false)
  br label %262

158:                                              ; preds = %141
  %159 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !89
  %160 = getelementptr inbounds ptr, ptr %159, i64 %143
  %161 = load ptr, ptr %160, align 8, !tbaa !89
  %162 = icmp eq ptr %161, null
  br i1 %162, label %525, label %163, !prof !166

163:                                              ; preds = %158
  %164 = load ptr, ptr @temp_costs, align 8, !tbaa !89
  %165 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %166 = sext i32 %165 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %164, i8 0, i64 %166, i1 false), !prof !167
  %167 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !89
  %168 = getelementptr inbounds ptr, ptr %167, i64 %143
  %169 = load ptr, ptr %168, align 8, !tbaa !89
  %170 = icmp eq ptr %169, null
  br i1 %170, label %262, label %171, !prof !168

171:                                              ; preds = %163, %249
  %172 = phi ptr [ %260, %249 ], [ %169, %163 ]
  %173 = load i32, ptr %172, align 8, !tbaa !128
  %174 = load i32, ptr @flag_ira_region, align 4
  %175 = add i32 %174, -1
  %176 = icmp ult i32 %175, 2
  br i1 %176, label %177, label %229, !prof !169

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.ira_allocno, ptr %172, i64 0, i32 6
  %179 = load ptr, ptr %178, align 8, !tbaa !170
  %180 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %179, i64 0, i32 6
  %181 = load ptr, ptr %180, align 8, !tbaa !171
  %182 = icmp eq ptr %181, null
  br i1 %182, label %229, label %183, !prof !169

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %181, i64 0, i32 9
  %185 = load ptr, ptr %184, align 8, !tbaa !173
  %186 = getelementptr inbounds ptr, ptr %185, i64 %143
  %187 = load ptr, ptr %186, align 8, !tbaa !89
  %188 = icmp eq ptr %187, null
  br i1 %188, label %229, label %189

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %179, i64 0, i32 13
  %191 = load ptr, ptr %190, align 8, !tbaa !174
  %192 = tail call i32 @bitmap_bit_p(ptr noundef %191, i32 noundef %173) #18
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %229, label %194

194:                                              ; preds = %189
  %195 = load i32, ptr %187, align 8, !tbaa !128
  %196 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %217

198:                                              ; preds = %194
  %199 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !89
  %200 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %201 = mul nsw i32 %200, %173
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, ptr %199, i64 %202
  %204 = mul nsw i32 %200, %195
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, ptr %199, i64 %205
  %207 = zext nneg i32 %196 to i64
  br label %208

208:                                              ; preds = %198, %208
  %209 = phi i64 [ 0, %198 ], [ %215, %208 ]
  %210 = getelementptr inbounds %struct.costs, ptr %203, i64 0, i32 1, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !104
  %212 = getelementptr inbounds %struct.costs, ptr %206, i64 0, i32 1, i64 %209
  %213 = load i32, ptr %212, align 4, !tbaa !104
  %214 = add nsw i32 %213, %211
  store i32 %214, ptr %212, align 4, !tbaa !104
  %215 = add nuw nsw i64 %209, 1
  %216 = icmp eq i64 %215, %207
  br i1 %216, label %217, label %208, !llvm.loop !175

217:                                              ; preds = %208, %194
  %218 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !89
  %219 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %220 = mul nsw i32 %219, %173
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, ptr %218, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !109
  %224 = mul nsw i32 %219, %195
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, ptr %218, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !109
  %228 = add nsw i32 %227, %223
  store i32 %228, ptr %226, align 4, !tbaa !109
  br label %229

229:                                              ; preds = %171, %217, %189, %183, %177
  %230 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %249, !prof !176

232:                                              ; preds = %229
  %233 = load ptr, ptr @costs, align 8, !tbaa !89
  %234 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %235 = mul nsw i32 %234, %173
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, ptr %233, i64 %236
  %238 = load ptr, ptr @temp_costs, align 8, !tbaa !89
  %239 = zext nneg i32 %230 to i64
  br label %240

240:                                              ; preds = %232, %240
  %241 = phi i64 [ 0, %232 ], [ %247, %240 ]
  %242 = getelementptr inbounds %struct.costs, ptr %237, i64 0, i32 1, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !104
  %244 = getelementptr inbounds %struct.costs, ptr %238, i64 0, i32 1, i64 %241
  %245 = load i32, ptr %244, align 4, !tbaa !104
  %246 = add nsw i32 %245, %243
  store i32 %246, ptr %244, align 4, !tbaa !104
  %247 = add nuw nsw i64 %241, 1
  %248 = icmp eq i64 %247, %239
  br i1 %248, label %249, label %240, !prof !177, !llvm.loop !178

249:                                              ; preds = %240, %229
  %250 = load ptr, ptr @costs, align 8, !tbaa !89
  %251 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %252 = mul nsw i32 %251, %173
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, ptr %250, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !109
  %256 = load ptr, ptr @temp_costs, align 8, !tbaa !89
  %257 = load i32, ptr %256, align 4, !tbaa !109
  %258 = add nsw i32 %257, %255
  store i32 %258, ptr %256, align 4, !tbaa !109
  %259 = getelementptr inbounds %struct.ira_allocno, ptr %172, i64 0, i32 5
  %260 = load ptr, ptr %259, align 8, !tbaa !89
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %171, !prof !176, !llvm.loop !179

262:                                              ; preds = %249, %163, %150
  %263 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %327, !prof !176

265:                                              ; preds = %262
  %266 = trunc i64 %143 to i32
  br label %267

267:                                              ; preds = %265, %319
  %268 = phi i64 [ %323, %319 ], [ 0, %265 ]
  %269 = phi i32 [ %322, %319 ], [ 0, %265 ]
  %270 = phi i32 [ %321, %319 ], [ 26, %265 ]
  %271 = phi i32 [ %320, %319 ], [ 1073741823, %265 ]
  %272 = load ptr, ptr @cost_classes, align 8, !tbaa !89
  %273 = getelementptr inbounds i32, ptr %272, i64 %268
  %274 = load i32, ptr %273, align 4, !tbaa !104
  %275 = sext i32 %274 to i64
  %276 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !89
  %277 = getelementptr inbounds ptr, ptr %276, i64 %143
  %278 = load ptr, ptr %277, align 8, !tbaa !89
  %279 = load i32, ptr %278, align 8
  %280 = lshr i32 %279, 16
  %281 = and i32 %280, 255
  %282 = zext nneg i32 %281 to i64
  %283 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %275, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !100
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %319, label %286, !prof !180

286:                                              ; preds = %267
  %287 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %266, i32 noundef %274, i32 noundef %281) #18
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %289, label %319, !prof !181

289:                                              ; preds = %286
  %290 = load ptr, ptr @temp_costs, align 8, !tbaa !89
  %291 = getelementptr inbounds %struct.costs, ptr %290, i64 0, i32 1, i64 %268
  %292 = load i32, ptr %291, align 4, !tbaa !104
  %293 = icmp slt i32 %292, %271
  br i1 %293, label %300, label %294, !prof !182

294:                                              ; preds = %289
  %295 = icmp eq i32 %292, %271
  br i1 %295, label %296, label %300, !prof !183

296:                                              ; preds = %294
  %297 = zext i32 %270 to i64
  %298 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %297, i64 %275
  %299 = load i32, ptr %298, align 4, !tbaa !104
  br label %300

300:                                              ; preds = %289, %294, %296
  %301 = phi i32 [ %271, %296 ], [ %271, %294 ], [ %292, %289 ]
  %302 = phi i32 [ %299, %296 ], [ %270, %294 ], [ %274, %289 ]
  %303 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !104
  %304 = icmp eq i32 %67, %303
  br i1 %304, label %305, label %319, !prof !184

305:                                              ; preds = %300
  %306 = load i32, ptr %290, align 4, !tbaa !109
  %307 = icmp slt i32 %292, %306
  br i1 %307, label %308, label %319, !prof !185

308:                                              ; preds = %305
  %309 = zext i32 %269 to i64
  %310 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %309, i64 %275
  %311 = load i32, ptr %310, align 4, !tbaa !104
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !104
  %315 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %309
  %316 = load i32, ptr %315, align 4, !tbaa !104
  %317 = icmp ugt i32 %314, %316
  %318 = select i1 %317, i32 %311, i32 %269, !prof !186
  br label %319

319:                                              ; preds = %308, %300, %305, %267, %286
  %320 = phi i32 [ %271, %286 ], [ %301, %305 ], [ %301, %300 ], [ %271, %267 ], [ %301, %308 ]
  %321 = phi i32 [ %270, %286 ], [ %302, %305 ], [ %302, %300 ], [ %270, %267 ], [ %302, %308 ]
  %322 = phi i32 [ %269, %286 ], [ %269, %305 ], [ %269, %300 ], [ %269, %267 ], [ %318, %308 ]
  %323 = add nuw nsw i64 %268, 1
  %324 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %325 = sext i32 %324 to i64
  %326 = icmp slt i64 %323, %325
  br i1 %326, label %267, label %327, !prof !187, !llvm.loop !188

327:                                              ; preds = %319, %262
  %328 = phi i32 [ 1073741823, %262 ], [ %320, %319 ]
  %329 = phi i32 [ 26, %262 ], [ %321, %319 ]
  %330 = phi i32 [ 0, %262 ], [ %322, %319 ]
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %331
  %333 = load i32, ptr %332, align 4, !tbaa !104
  %334 = load ptr, ptr @temp_costs, align 8, !tbaa !89
  %335 = load i32, ptr %334, align 4, !tbaa !109
  %336 = icmp sgt i32 %328, %335
  br i1 %336, label %347, label %337, !prof !189

337:                                              ; preds = %327
  %338 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !104
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %340, label %343, !prof !189

340:                                              ; preds = %337
  %341 = icmp eq i32 %333, 0
  %342 = select i1 %341, i32 %329, i32 %333
  br label %347

343:                                              ; preds = %337
  %344 = zext i32 %329 to i64
  %345 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !104
  br label %347

347:                                              ; preds = %327, %340, %343
  %348 = phi i32 [ %342, %340 ], [ %346, %343 ], [ 0, %327 ]
  %349 = load ptr, ptr @regno_cover_class, align 8, !tbaa !89
  %350 = getelementptr inbounds i32, ptr %349, i64 %143
  store i32 %348, ptr %350, align 4, !tbaa !104
  %351 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !104
  %352 = icmp eq i32 %67, %351
  br i1 %352, label %353, label %385, !prof !190

353:                                              ; preds = %347
  %354 = load i32, ptr %334, align 4, !tbaa !109
  %355 = icmp sgt i32 %328, %354
  %356 = icmp eq i32 %329, %333
  %357 = select i1 %355, i32 0, i32 %329, !prof !132
  %358 = select i1 %355, i1 true, i1 %356, !prof !132
  %359 = select i1 %358, i32 0, i32 %333, !prof !136
  %360 = load ptr, ptr @regno_cover_class, align 8, !tbaa !89
  %361 = getelementptr inbounds i32, ptr %360, i64 %143
  %362 = load i32, ptr %361, align 4, !tbaa !104
  %363 = trunc i64 %143 to i32
  tail call void @setup_reg_classes(i32 noundef %363, i32 noundef %357, i32 noundef %359, i32 noundef %362) #18
  %364 = load i1, ptr @allocno_p, align 1
  %365 = xor i1 %364, true
  %366 = load i32, ptr @internal_flag_ira_verbose, align 4
  %367 = icmp sgt i32 %366, 2
  %368 = select i1 %365, i1 true, i1 %367, !prof !132
  %369 = and i1 %65, %368
  br i1 %369, label %370, label %385, !prof !132

370:                                              ; preds = %353
  %371 = zext i32 %357 to i64
  %372 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %371
  %373 = load ptr, ptr %372, align 8, !tbaa !89
  %374 = zext i32 %359 to i64
  %375 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !89
  %377 = load ptr, ptr @regno_cover_class, align 8, !tbaa !89
  %378 = getelementptr inbounds i32, ptr %377, i64 %143
  %379 = load i32, ptr %378, align 4, !tbaa !104
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %380
  %382 = load ptr, ptr %381, align 8, !tbaa !89
  %383 = trunc i64 %143 to i32
  %384 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %383, ptr noundef %373, ptr noundef %376, ptr noundef %382)
  br label %385

385:                                              ; preds = %370, %353, %347
  %386 = phi i32 [ %357, %370 ], [ %357, %353 ], [ %329, %347 ]
  %387 = load i1, ptr @allocno_p, align 1
  br i1 %387, label %395, label %388, !prof !169

388:                                              ; preds = %385
  %389 = load ptr, ptr @temp_costs, align 8, !tbaa !89
  %390 = load i32, ptr %389, align 4, !tbaa !109
  %391 = icmp sgt i32 %328, %390
  %392 = select i1 %391, i32 0, i32 %386
  %393 = load ptr, ptr @pref, align 8, !tbaa !89
  %394 = getelementptr inbounds i32, ptr %393, i64 %143
  store i32 %392, ptr %394, align 4, !tbaa !104
  br label %525

395:                                              ; preds = %385
  %396 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !89
  %397 = getelementptr inbounds ptr, ptr %396, i64 %143
  %398 = load ptr, ptr %397, align 8, !tbaa !89
  %399 = icmp eq ptr %398, null
  br i1 %399, label %525, label %400, !prof !168

400:                                              ; preds = %395, %518
  %401 = phi ptr [ %523, %518 ], [ %398, %395 ]
  %402 = load i32, ptr %401, align 8, !tbaa !128
  %403 = load ptr, ptr @regno_cover_class, align 8, !tbaa !89
  %404 = getelementptr inbounds i32, ptr %403, i64 %143
  %405 = load i32, ptr %404, align 4, !tbaa !104
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %479, label %407, !prof !189

407:                                              ; preds = %400
  %408 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %410, label %475, !prof !176

410:                                              ; preds = %407
  %411 = trunc i64 %143 to i32
  br label %412

412:                                              ; preds = %410, %467
  %413 = phi i64 [ %471, %467 ], [ 0, %410 ]
  %414 = phi i32 [ %470, %467 ], [ 26, %410 ]
  %415 = phi i32 [ %469, %467 ], [ 1073741823, %410 ]
  %416 = phi i32 [ %468, %467 ], [ 1073741823, %410 ]
  %417 = load ptr, ptr @cost_classes, align 8, !tbaa !89
  %418 = getelementptr inbounds i32, ptr %417, i64 %413
  %419 = load i32, ptr %418, align 4, !tbaa !104
  %420 = sext i32 %419 to i64
  %421 = load ptr, ptr @regno_cover_class, align 8, !tbaa !89
  %422 = getelementptr inbounds i32, ptr %421, i64 %143
  %423 = load i32, ptr %422, align 4, !tbaa !104
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %420, i64 %424
  %426 = load i32, ptr %425, align 4, !tbaa !104
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %467, label %428, !prof !180

428:                                              ; preds = %412
  %429 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !89
  %430 = getelementptr inbounds ptr, ptr %429, i64 %143
  %431 = load ptr, ptr %430, align 8, !tbaa !89
  %432 = load i32, ptr %431, align 8
  %433 = lshr i32 %432, 16
  %434 = and i32 %433, 255
  %435 = zext nneg i32 %434 to i64
  %436 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %420, i64 %435
  %437 = load i8, ptr %436, align 1, !tbaa !100
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %467, label %439, !prof !191

439:                                              ; preds = %428
  %440 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %411, i32 noundef %419, i32 noundef %434) #18
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %442, label %467, !prof !181

442:                                              ; preds = %439
  %443 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !89
  %444 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %445 = mul nsw i32 %444, %402
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i8, ptr %443, i64 %446
  %448 = getelementptr inbounds %struct.costs, ptr %447, i64 0, i32 1, i64 %413
  %449 = load i32, ptr %448, align 4, !tbaa !104
  %450 = icmp slt i32 %449, %416
  br i1 %450, label %451, label %456, !prof !182

451:                                              ; preds = %442
  %452 = load ptr, ptr @costs, align 8, !tbaa !89
  %453 = getelementptr inbounds i8, ptr %452, i64 %446
  %454 = getelementptr inbounds %struct.costs, ptr %453, i64 0, i32 1, i64 %413
  %455 = load i32, ptr %454, align 4, !tbaa !104
  br label %467

456:                                              ; preds = %442
  %457 = icmp eq i32 %449, %416
  br i1 %457, label %458, label %467, !prof !183

458:                                              ; preds = %456
  %459 = zext i32 %414 to i64
  %460 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %459, i64 %420
  %461 = load i32, ptr %460, align 4, !tbaa !104
  %462 = load ptr, ptr @costs, align 8, !tbaa !89
  %463 = getelementptr inbounds i8, ptr %462, i64 %446
  %464 = getelementptr inbounds %struct.costs, ptr %463, i64 0, i32 1, i64 %413
  %465 = load i32, ptr %464, align 4, !tbaa !104
  %466 = tail call i32 @llvm.smax.i32(i32 %415, i32 %465)
  br label %467

467:                                              ; preds = %439, %428, %456, %458, %451, %412
  %468 = phi i32 [ %416, %439 ], [ %449, %451 ], [ %416, %458 ], [ %416, %456 ], [ %416, %428 ], [ %416, %412 ]
  %469 = phi i32 [ %415, %439 ], [ %455, %451 ], [ %466, %458 ], [ %415, %456 ], [ %415, %428 ], [ %415, %412 ]
  %470 = phi i32 [ %414, %439 ], [ %419, %451 ], [ %461, %458 ], [ %414, %456 ], [ %414, %428 ], [ %414, %412 ]
  %471 = add nuw nsw i64 %413, 1
  %472 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %473 = sext i32 %472 to i64
  %474 = icmp slt i64 %471, %473
  br i1 %474, label %412, label %475, !prof !187, !llvm.loop !192

475:                                              ; preds = %467, %407
  %476 = phi i32 [ 1073741823, %407 ], [ %469, %467 ]
  %477 = phi i32 [ 26, %407 ], [ %470, %467 ]
  %478 = getelementptr inbounds %struct.ira_allocno, ptr %401, i64 0, i32 10
  store i32 %476, ptr %478, align 4, !tbaa !193
  br label %479

479:                                              ; preds = %400, %475
  %480 = phi i32 [ %477, %475 ], [ 0, %400 ]
  %481 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !104
  %482 = icmp sgt i32 %481, 2
  %483 = and i1 %65, %482
  br i1 %483, label %484, label %518, !prof !189

484:                                              ; preds = %479
  br i1 %133, label %491, label %485

485:                                              ; preds = %484
  %486 = load ptr, ptr @pref, align 8, !tbaa !89
  %487 = sext i32 %402 to i64
  %488 = getelementptr inbounds i32, ptr %486, i64 %487
  %489 = load i32, ptr %488, align 4, !tbaa !104
  %490 = icmp eq i32 %489, %480
  br i1 %490, label %518, label %491

491:                                              ; preds = %485, %484
  %492 = trunc i64 %143 to i32
  %493 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %402, i32 noundef %492)
  %494 = getelementptr inbounds %struct.ira_allocno, ptr %401, i64 0, i32 6
  %495 = load ptr, ptr %494, align 8, !tbaa !170
  %496 = load ptr, ptr %495, align 8, !tbaa !194
  %497 = icmp eq ptr %496, null
  br i1 %497, label %500, label %498

498:                                              ; preds = %491
  %499 = getelementptr inbounds %struct.basic_block_def, ptr %496, i64 0, i32 9
  br label %503

500:                                              ; preds = %491
  %501 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %495, i64 0, i32 1
  %502 = load ptr, ptr %501, align 8, !tbaa !195
  br label %503

503:                                              ; preds = %500, %498
  %504 = phi ptr [ %502, %500 ], [ %499, %498 ]
  %505 = phi ptr [ @.str.4, %500 ], [ @.str.3, %498 ]
  %506 = load i32, ptr %504, align 8, !tbaa !104
  %507 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull %505, i32 noundef %506)
  %508 = zext i32 %480 to i64
  %509 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %508
  %510 = load ptr, ptr %509, align 8, !tbaa !89
  %511 = load ptr, ptr @regno_cover_class, align 8, !tbaa !89
  %512 = getelementptr inbounds i32, ptr %511, i64 %143
  %513 = load i32, ptr %512, align 4, !tbaa !104
  %514 = zext i32 %513 to i64
  %515 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %514
  %516 = load ptr, ptr %515, align 8, !tbaa !89
  %517 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef %510, ptr noundef %516)
  br label %518

518:                                              ; preds = %503, %485, %479
  %519 = load ptr, ptr @pref, align 8, !tbaa !89
  %520 = sext i32 %402 to i64
  %521 = getelementptr inbounds i32, ptr %519, i64 %520
  store i32 %480, ptr %521, align 4, !tbaa !104
  %522 = getelementptr inbounds %struct.ira_allocno, ptr %401, i64 0, i32 5
  %523 = load ptr, ptr %522, align 8, !tbaa !89
  %524 = icmp eq ptr %523, null
  br i1 %524, label %525, label %400, !prof !176, !llvm.loop !196

525:                                              ; preds = %518, %395, %158, %145, %388
  %526 = icmp sgt i64 %142, 54
  br i1 %526, label %141, label %527, !prof !197, !llvm.loop !198

527:                                              ; preds = %525, %136
  %528 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !104
  %529 = icmp sgt i32 %528, 4
  %530 = and i1 %65, %529
  br i1 %530, label %531, label %714, !prof !151

531:                                              ; preds = %527
  %532 = load i1, ptr @allocno_p, align 1
  %533 = tail call i32 @fputc(i32 10, ptr nonnull %0)
  br i1 %532, label %534, label %648

534:                                              ; preds = %531, %640
  %535 = phi ptr [ %567, %640 ], [ undef, %531 ]
  %536 = phi i32 [ %568, %640 ], [ 0, %531 ]
  %537 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !104
  %538 = icmp slt i32 %536, %537
  br i1 %538, label %539, label %565

539:                                              ; preds = %534
  %540 = load ptr, ptr @ira_allocnos, align 8, !tbaa !89
  %541 = sext i32 %536 to i64
  %542 = sext i32 %537 to i64
  %543 = sext i32 %537 to i64
  %544 = getelementptr inbounds ptr, ptr %540, i64 %541
  %545 = load ptr, ptr %544, align 8, !tbaa !89
  %546 = icmp eq ptr %545, null
  br i1 %546, label %559, label %553

547:                                              ; preds = %559
  %548 = getelementptr inbounds ptr, ptr %540, i64 %561
  %549 = load ptr, ptr %548, align 8, !tbaa !89
  %550 = icmp eq ptr %549, null
  br i1 %550, label %559, label %551, !llvm.loop !125

551:                                              ; preds = %547
  %552 = icmp slt i64 %561, %542
  br label %553

553:                                              ; preds = %551, %539
  %554 = phi i64 [ %541, %539 ], [ %561, %551 ]
  %555 = phi i1 [ %538, %539 ], [ %552, %551 ]
  %556 = phi ptr [ %545, %539 ], [ %549, %551 ]
  %557 = trunc i64 %554 to i32
  %558 = add nsw i32 %557, 1
  br label %565

559:                                              ; preds = %539, %547
  %560 = phi i64 [ %561, %547 ], [ %541, %539 ]
  %561 = add nsw i64 %560, 1
  %562 = icmp eq i64 %561, %543
  br i1 %562, label %563, label %547, !llvm.loop !125

563:                                              ; preds = %559
  %564 = icmp slt i64 %561, %542
  br label %565

565:                                              ; preds = %563, %534, %553
  %566 = phi i1 [ %555, %553 ], [ %538, %534 ], [ %564, %563 ]
  %567 = phi ptr [ %556, %553 ], [ %535, %534 ], [ %535, %563 ]
  %568 = phi i32 [ %558, %553 ], [ %536, %534 ], [ %536, %563 ]
  br i1 %566, label %569, label %712

569:                                              ; preds = %565
  %570 = getelementptr inbounds %struct.ira_allocno, ptr %567, i64 0, i32 1
  %571 = load i32, ptr %570, align 4, !tbaa !130
  %572 = load i32, ptr %567, align 8, !tbaa !128
  %573 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i32 noundef %572, i32 noundef %571)
  %574 = getelementptr inbounds %struct.ira_allocno, ptr %567, i64 0, i32 6
  %575 = load ptr, ptr %574, align 8, !tbaa !170
  %576 = load ptr, ptr %575, align 8, !tbaa !194
  %577 = icmp eq ptr %576, null
  br i1 %577, label %580, label %578

578:                                              ; preds = %569
  %579 = getelementptr inbounds %struct.basic_block_def, ptr %576, i64 0, i32 9
  br label %583

580:                                              ; preds = %569
  %581 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %575, i64 0, i32 1
  %582 = load ptr, ptr %581, align 8, !tbaa !195
  br label %583

583:                                              ; preds = %580, %578
  %584 = phi ptr [ %582, %580 ], [ %579, %578 ]
  %585 = phi ptr [ @.str.4, %580 ], [ @.str.3, %578 ]
  %586 = load i32, ptr %584, align 8, !tbaa !104
  %587 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull %585, i32 noundef %586)
  %588 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 8, i64 1, ptr nonnull %0)
  %589 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %590 = icmp sgt i32 %589, 0
  br i1 %590, label %591, label %640

591:                                              ; preds = %583
  %592 = sext i32 %571 to i64
  br label %593

593:                                              ; preds = %591, %635
  %594 = phi i64 [ 0, %591 ], [ %636, %635 ]
  %595 = load ptr, ptr @cost_classes, align 8, !tbaa !89
  %596 = getelementptr inbounds i32, ptr %595, i64 %594
  %597 = load i32, ptr %596, align 4, !tbaa !104
  %598 = sext i32 %597 to i64
  %599 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !89
  %600 = getelementptr inbounds ptr, ptr %599, i64 %592
  %601 = load ptr, ptr %600, align 8, !tbaa !89
  %602 = load i32, ptr %601, align 8
  %603 = lshr i32 %602, 16
  %604 = and i32 %603, 255
  %605 = zext nneg i32 %604 to i64
  %606 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %598, i64 %605
  %607 = load i8, ptr %606, align 1, !tbaa !100
  %608 = icmp eq i8 %607, 0
  br i1 %608, label %635, label %609

609:                                              ; preds = %593
  %610 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %571, i32 noundef %597, i32 noundef %604) #18
  %611 = icmp eq i8 %610, 0
  br i1 %611, label %612, label %635

612:                                              ; preds = %609
  %613 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %598
  %614 = load ptr, ptr %613, align 8, !tbaa !89
  %615 = load ptr, ptr @costs, align 8, !tbaa !89
  %616 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %617 = mul nsw i32 %616, %572
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i8, ptr %615, i64 %618
  %620 = getelementptr inbounds %struct.costs, ptr %619, i64 0, i32 1, i64 %594
  %621 = load i32, ptr %620, align 4, !tbaa !104
  %622 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, ptr noundef %614, i32 noundef %621)
  %623 = load i32, ptr @flag_ira_region, align 4
  %624 = add i32 %623, -1
  %625 = icmp ult i32 %624, 2
  br i1 %625, label %626, label %635

626:                                              ; preds = %612
  %627 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !89
  %628 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %629 = mul nsw i32 %628, %572
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i8, ptr %627, i64 %630
  %632 = getelementptr inbounds %struct.costs, ptr %631, i64 0, i32 1, i64 %594
  %633 = load i32, ptr %632, align 4, !tbaa !104
  %634 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i32 noundef %633)
  br label %635

635:                                              ; preds = %626, %612, %609, %593
  %636 = add nuw nsw i64 %594, 1
  %637 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %638 = sext i32 %637 to i64
  %639 = icmp slt i64 %636, %638
  br i1 %639, label %593, label %640, !llvm.loop !199

640:                                              ; preds = %635, %583
  %641 = load ptr, ptr @costs, align 8, !tbaa !89
  %642 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %643 = mul nsw i32 %642, %572
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds i8, ptr %641, i64 %644
  %646 = load i32, ptr %645, align 4, !tbaa !109
  %647 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef %646)
  br label %534, !llvm.loop !200

648:                                              ; preds = %531
  %649 = tail call i32 @max_reg_num() #18
  %650 = icmp sgt i32 %649, 53
  br i1 %650, label %651, label %712

651:                                              ; preds = %648
  %652 = zext nneg i32 %649 to i64
  br label %653

653:                                              ; preds = %651, %710
  %654 = phi i64 [ %652, %651 ], [ %655, %710 ]
  %655 = add nsw i64 %654, -1
  %656 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !89
  %657 = getelementptr inbounds ptr, ptr %656, i64 %655
  %658 = load ptr, ptr %657, align 8, !tbaa !89
  %659 = icmp eq ptr %658, null
  br i1 %659, label %710, label %660

660:                                              ; preds = %653
  %661 = trunc i64 %655 to i32
  %662 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i32 noundef %661)
  %663 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %664 = icmp sgt i32 %663, 0
  br i1 %664, label %665, label %702

665:                                              ; preds = %660
  %666 = trunc i64 %655 to i32
  br label %667

667:                                              ; preds = %665, %697
  %668 = phi i64 [ %698, %697 ], [ 0, %665 ]
  %669 = load ptr, ptr @cost_classes, align 8, !tbaa !89
  %670 = getelementptr inbounds i32, ptr %669, i64 %668
  %671 = load i32, ptr %670, align 4, !tbaa !104
  %672 = sext i32 %671 to i64
  %673 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !89
  %674 = getelementptr inbounds ptr, ptr %673, i64 %655
  %675 = load ptr, ptr %674, align 8, !tbaa !89
  %676 = load i32, ptr %675, align 8
  %677 = lshr i32 %676, 16
  %678 = and i32 %677, 255
  %679 = zext nneg i32 %678 to i64
  %680 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %672, i64 %679
  %681 = load i8, ptr %680, align 1, !tbaa !100
  %682 = icmp eq i8 %681, 0
  br i1 %682, label %697, label %683

683:                                              ; preds = %667
  %684 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %666, i32 noundef %671, i32 noundef %678) #18
  %685 = icmp eq i8 %684, 0
  br i1 %685, label %686, label %697

686:                                              ; preds = %683
  %687 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %672
  %688 = load ptr, ptr %687, align 8, !tbaa !89
  %689 = load ptr, ptr @costs, align 8, !tbaa !89
  %690 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %691 = sext i32 %690 to i64
  %692 = mul nsw i64 %655, %691
  %693 = getelementptr inbounds i8, ptr %689, i64 %692
  %694 = getelementptr inbounds %struct.costs, ptr %693, i64 0, i32 1, i64 %668
  %695 = load i32, ptr %694, align 4, !tbaa !104
  %696 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, ptr noundef %688, i32 noundef %695)
  br label %697

697:                                              ; preds = %686, %683, %667
  %698 = add nuw nsw i64 %668, 1
  %699 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %700 = sext i32 %699 to i64
  %701 = icmp slt i64 %698, %700
  br i1 %701, label %667, label %702, !llvm.loop !201

702:                                              ; preds = %697, %660
  %703 = load ptr, ptr @costs, align 8, !tbaa !89
  %704 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %705 = sext i32 %704 to i64
  %706 = mul nsw i64 %655, %705
  %707 = getelementptr inbounds i8, ptr %703, i64 %706
  %708 = load i32, ptr %707, align 4, !tbaa !109
  %709 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef %708)
  br label %710

710:                                              ; preds = %702, %653
  %711 = icmp sgt i64 %654, 54
  br i1 %711, label %653, label %712, !llvm.loop !202

712:                                              ; preds = %710, %565, %648
  %713 = tail call i32 @fputc(i32 10, ptr nonnull %0)
  br label %714

714:                                              ; preds = %527, %712
  %715 = add nuw nsw i32 %67, 1
  %716 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !104
  %717 = icmp slt i32 %67, %716
  br i1 %717, label %66, label %718, !prof !203, !llvm.loop !204

718:                                              ; preds = %714, %61
  ret void
}

declare void @ira_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ira_set_pseudo_classes(ptr noundef %0) local_unnamed_addr #11 !prof !88 {
  store i1 false, ptr @allocno_p, align 1
  %2 = load i32, ptr @flag_ira_verbose, align 4, !tbaa !104
  store i32 %2, ptr @internal_flag_ira_verbose, align 4, !tbaa !104
  %3 = tail call i32 @max_reg_num() #18
  store i32 %3, ptr @cost_elements_num, align 4, !tbaa !104
  tail call fastcc void @init_costs()
  tail call fastcc void @find_costs_and_classes(ptr noundef %0)
  store i1 true, ptr @pseudo_classes_defined_p, align 1
  %4 = load ptr, ptr @regno_cover_class, align 8, !tbaa !89
  tail call void @ira_free(ptr noundef %4) #18
  %5 = load ptr, ptr @pref_buffer, align 8, !tbaa !89
  tail call void @ira_free(ptr noundef %5) #18
  %6 = load ptr, ptr @costs, align 8, !tbaa !89
  tail call void @ira_free(ptr noundef %6) #18
  ret void
}

declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ira_tune_allocno_costs_and_cover_classes() local_unnamed_addr #10 !prof !122 {
  br label %1

1:                                                ; preds = %118, %0
  %2 = phi ptr [ undef, %0 ], [ %34, %118 ]
  %3 = phi i32 [ 0, %0 ], [ %35, %118 ]
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !104
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %32, !prof !123

6:                                                ; preds = %1
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !89
  %8 = sext i32 %3 to i64
  %9 = sext i32 %4 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %19, !prof !124

13:                                               ; preds = %25
  %14 = getelementptr inbounds ptr, ptr %7, i64 %27
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17, !prof !124, !llvm.loop !125

17:                                               ; preds = %13
  %18 = icmp slt i64 %27, %9
  br label %19

19:                                               ; preds = %17, %6
  %20 = phi i64 [ %8, %6 ], [ %27, %17 ]
  %21 = phi i1 [ %5, %6 ], [ %18, %17 ]
  %22 = phi ptr [ %11, %6 ], [ %15, %17 ]
  %23 = trunc i64 %20 to i32
  %24 = add nsw i32 %23, 1
  br label %32

25:                                               ; preds = %6, %13
  %26 = phi i64 [ %27, %13 ], [ %8, %6 ]
  %27 = add nsw i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %4, %28
  br i1 %29, label %30, label %13, !prof !126, !llvm.loop !125

30:                                               ; preds = %25
  %31 = icmp slt i64 %27, %9
  br label %32

32:                                               ; preds = %30, %1, %19
  %33 = phi i1 [ %21, %19 ], [ %5, %1 ], [ %31, %30 ]
  %34 = phi ptr [ %22, %19 ], [ %2, %1 ], [ %2, %30 ]
  %35 = phi i32 [ %24, %19 ], [ %3, %1 ], [ %3, %30 ]
  br i1 %33, label %36, label %121, !prof !127

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !135
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %118, label %40, !prof !132

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !205
  %43 = zext i32 %38 to i64
  %44 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 30
  %45 = load i32, ptr %44, align 8, !tbaa !206
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %115, label %47, !prof !207

47:                                               ; preds = %40
  %48 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %43
  %49 = load i32, ptr %48, align 4, !tbaa !104
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 33
  %51 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 10
  %52 = load i32, ptr %51, align 4, !tbaa !193
  %53 = load ptr, ptr %50, align 8, !tbaa !89
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %66, !prof !208

55:                                               ; preds = %47
  %56 = tail call ptr @ira_allocate_cost_vector(i32 noundef %38) #18
  store ptr %56, ptr %50, align 8, !tbaa !89
  %57 = load i32, ptr %48, align 4, !tbaa !104
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %66, !prof !209

59:                                               ; preds = %55
  %60 = zext nneg i32 %57 to i64
  br label %61

61:                                               ; preds = %59, %61
  %62 = phi i64 [ 0, %59 ], [ %64, %61 ]
  %63 = getelementptr inbounds i32, ptr %56, i64 %62
  store i32 %52, ptr %63, align 4, !tbaa !104
  %64 = add nuw nsw i64 %62, 1
  %65 = icmp eq i64 %64, %60
  br i1 %65, label %66, label %61, !prof !210, !llvm.loop !211

66:                                               ; preds = %61, %55, %47
  %67 = load ptr, ptr %50, align 8, !tbaa !137
  %68 = icmp sgt i32 %49, 0
  br i1 %68, label %69, label %115, !prof !212

69:                                               ; preds = %66
  %70 = load i64, ptr @call_used_reg_set, align 8, !tbaa !140
  %71 = zext i32 %42 to i64
  %72 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 29
  %73 = zext nneg i32 %49 to i64
  br label %74

74:                                               ; preds = %69, %108
  %75 = phi i64 [ %73, %69 ], [ %77, %108 ]
  %76 = phi i32 [ 2147483647, %69 ], [ %113, %108 ]
  %77 = add nsw i64 %75, -1
  %78 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %43, i64 %77
  %79 = load i16, ptr %78, align 2, !tbaa !139
  %80 = sext i16 %79 to i64
  %81 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !104
  %83 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %80, i64 %71
  %84 = load i8, ptr %83, align 1, !tbaa !100
  %85 = zext i8 %84 to i64
  br label %86

86:                                               ; preds = %89, %74
  %87 = phi i64 [ %91, %89 ], [ %85, %74 ]
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %108, !prof !213

89:                                               ; preds = %86
  %90 = sext i16 %79 to i64
  %91 = add nsw i64 %87, -1
  %92 = add nsw i64 %91, %90
  %93 = shl nuw i64 1, %92
  %94 = and i64 %93, %70
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %86, label %96, !prof !214, !llvm.loop !215

96:                                               ; preds = %89
  br i1 %88, label %97, label %108, !prof !214

97:                                               ; preds = %96
  %98 = load i32, ptr %72, align 4, !tbaa !216
  %99 = zext i32 %82 to i64
  %100 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %71, i64 %99
  %101 = load i16, ptr %100, align 4, !tbaa !139
  %102 = sext i16 %101 to i32
  %103 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %71, i64 %99, i64 1
  %104 = load i16, ptr %103, align 2, !tbaa !139
  %105 = sext i16 %104 to i32
  %106 = add nsw i32 %105, %102
  %107 = mul nsw i32 %106, %98
  br label %108

108:                                              ; preds = %86, %97, %96
  %109 = phi i32 [ 0, %96 ], [ %107, %97 ], [ 0, %86 ]
  %110 = getelementptr inbounds i32, ptr %67, i64 %77
  %111 = load i32, ptr %110, align 4, !tbaa !104
  %112 = add nsw i32 %111, %109
  store i32 %112, ptr %110, align 4, !tbaa !104
  %113 = tail call i32 @llvm.smin.i32(i32 %76, i32 %112)
  %114 = icmp sgt i64 %75, 1
  br i1 %114, label %74, label %115, !prof !217, !llvm.loop !218

115:                                              ; preds = %108, %66, %40
  %116 = phi i32 [ 2147483647, %40 ], [ 2147483647, %66 ], [ %113, %108 ]
  %117 = icmp eq i32 %116, 2147483647
  br i1 %117, label %118, label %119, !prof !207

118:                                              ; preds = %115, %119, %36
  br label %1, !llvm.loop !219

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.ira_allocno, ptr %34, i64 0, i32 10
  store i32 %116, ptr %120, align 4, !tbaa !193
  br label %118

121:                                              ; preds = %32
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

declare void @init_subregs_of_mode() local_unnamed_addr #3

declare void @init_recog() local_unnamed_addr #3

declare zeroext i8 @resize_reg_info() local_unnamed_addr #3

declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @process_bb_node_for_costs(ptr nocapture noundef readonly %0) #14 !prof !220 !PGOFuncName !221 {
  %2 = load ptr, ptr %0, align 8, !tbaa !194
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !222

4:                                                ; preds = %1
  tail call fastcc void @process_bb_for_costs(ptr noundef nonnull %2)
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @process_bb_for_costs(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !223 !PGOFuncName !224 {
  %2 = alloca [30 x i32], align 16
  %3 = alloca [30 x i32], align 16
  %4 = alloca [30 x i32], align 16
  %5 = alloca [30 x ptr], align 16
  %6 = alloca [30 x i32], align 16
  %7 = alloca [30 x ptr], align 16
  %8 = load i32, ptr @optimize_size, align 4, !tbaa !104
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28, !prof !225

10:                                               ; preds = %1
  %11 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !104
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13, !prof !225

13:                                               ; preds = %10
  %14 = load ptr, ptr @cfun, align 8, !tbaa !89
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !156
  %17 = load ptr, ptr %16, align 8, !tbaa !158
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !226
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %13, %10
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %23 = load i32, ptr %22, align 8, !tbaa !227
  %24 = add i32 %23, 9
  %25 = icmp ult i32 %24, 19
  br i1 %25, label %28, label %26, !prof !228

26:                                               ; preds = %21
  %27 = sdiv i32 %23, 10
  br label %28

28:                                               ; preds = %13, %26, %21, %1
  %29 = phi i32 [ 1000, %1 ], [ %27, %26 ], [ 1, %21 ], [ 1000, %13 ]
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 1)
  store i32 %30, ptr @frequency, align 4
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !100
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  %34 = icmp eq ptr %33, null
  br i1 %34, label %1114, label %35, !prof !229

35:                                               ; preds = %28, %1110
  %36 = phi ptr [ %1112, %1110 ], [ %33, %28 ]
  %37 = load ptr, ptr %31, align 8, !tbaa !100
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !230
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !100
  %42 = icmp eq ptr %36, %41
  br i1 %42, label %1114, label %43, !prof !232

43:                                               ; preds = %35
  %44 = load i32, ptr %36, align 8
  %45 = and i32 %44, 65535
  %46 = add nsw i32 %45, -11
  %47 = icmp ult i32 %46, -3
  br i1 %47, label %1110, label %48, !prof !233

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !100
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = and i32 %51, 65534
  %54 = icmp eq i32 %53, 24
  %55 = and i32 %51, 65531
  %56 = icmp eq i32 %55, 16
  %57 = or i1 %54, %56
  %58 = icmp eq i32 %52, 21
  %59 = or i1 %58, %57
  br i1 %59, label %1110, label %60, !prof !234

60:                                               ; preds = %48
  %61 = add nsw i32 %45, -8
  %62 = icmp ult i32 %61, 3
  br i1 %62, label %63, label %67, !prof !235

63:                                               ; preds = %60
  %64 = icmp eq i32 %52, 23
  br i1 %64, label %67, label %65, !prof !236

65:                                               ; preds = %63
  %66 = tail call ptr @single_set_2(ptr noundef nonnull %36, ptr noundef nonnull %50) #18
  br label %67

67:                                               ; preds = %65, %63, %60
  %68 = phi ptr [ %66, %65 ], [ null, %60 ], [ %50, %63 ]
  tail call void @extract_insn(ptr noundef nonnull %36) #18
  %69 = icmp eq ptr %68, null
  br i1 %69, label %135, label %70, !prof !237

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !100
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 37
  br i1 %75, label %76, label %135, !prof !238

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !100
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 43
  br i1 %81, label %82, label %135, !prof !239

82:                                               ; preds = %76
  %83 = tail call ptr @find_reg_note(ptr noundef nonnull %36, i32 noundef 3, ptr noundef null) #18
  %84 = icmp eq ptr %83, null
  br i1 %84, label %135, label %85, !prof !240

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !100
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 43
  br i1 %90, label %91, label %135, !prof !241

91:                                               ; preds = %85
  %92 = load ptr, ptr %71, align 8, !tbaa !100
  %93 = load i1, ptr @allocno_p, align 1
  br i1 %93, label %94, label %101, !prof !241

94:                                               ; preds = %91
  %95 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !89
  %96 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !100
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %95, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !89
  br label %103

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  br label %103

103:                                              ; preds = %101, %94
  %104 = phi ptr [ %100, %94 ], [ %102, %101 ]
  %105 = load i32, ptr %104, align 8, !tbaa !100
  %106 = load ptr, ptr @pref, align 8, !tbaa !89
  %107 = icmp eq ptr %106, null
  br i1 %107, label %113, label %108, !prof !242

108:                                              ; preds = %103
  %109 = sext i32 %105 to i64
  %110 = getelementptr inbounds i32, ptr %106, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !104
  %112 = zext i32 %111 to i64
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi i64 [ %112, %108 ], [ 13, %103 ]
  %115 = load i32, ptr %92, align 8
  %116 = lshr i32 %115, 16
  %117 = and i32 %116, 255
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %118, i64 %114, i64 1
  %120 = load i16, ptr %119, align 2, !tbaa !139
  %121 = sext i16 %120 to i32
  %122 = load i32, ptr @frequency, align 4, !tbaa !104
  %123 = mul nsw i32 %122, %121
  %124 = load ptr, ptr @costs, align 8, !tbaa !89
  %125 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %126 = mul nsw i32 %125, %105
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, ptr %124, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !109
  %130 = sub nsw i32 %129, %123
  store i32 %130, ptr %128, align 4, !tbaa !109
  %131 = load ptr, ptr %77, align 8, !tbaa !100
  %132 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !100
  %134 = shl nsw i32 %122, 1
  tail call fastcc void @record_address_regs(ptr noundef %133, i32 noundef 0, i32 noundef %134)
  br label %135

135:                                              ; preds = %113, %85, %82, %76, %70, %67
  %136 = load ptr, ptr @pref, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #18
  %137 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !243
  %138 = icmp sgt i8 %137, 0
  br i1 %138, label %139, label %144, !prof !245

139:                                              ; preds = %135
  %140 = zext nneg i8 %137 to i64
  %141 = shl nuw nsw i64 %140, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 0), i64 %141, i1 false), !tbaa !89
  %142 = zext nneg i8 %137 to i64
  %143 = shl nuw nsw i64 %142, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 0), i64 %143, i1 false), !tbaa !104
  br label %144

144:                                              ; preds = %139, %135
  %145 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !243
  %146 = icmp sgt i8 %145, 0
  br i1 %146, label %151, label %147, !prof !245

147:                                              ; preds = %184, %144
  %148 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !243
  %149 = sext i8 %148 to i32
  %150 = icmp sgt i8 %148, 1
  br i1 %150, label %189, label %216, !prof !245

151:                                              ; preds = %144, %184
  %152 = phi i64 [ %185, %184 ], [ 0, %144 ]
  %153 = getelementptr inbounds ptr, ptr @op_costs, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !89
  %155 = load ptr, ptr @init_cost, align 8, !tbaa !89
  %156 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %157 = sext i32 %156 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %154, ptr align 4 %155, i64 %157, i1 false), !prof !246
  %158 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %152
  %159 = load ptr, ptr %158, align 8, !tbaa !89
  %160 = load i32, ptr %159, align 8
  %161 = and i32 %160, 65535
  %162 = icmp eq i32 %161, 39
  br i1 %162, label %163, label %166, !prof !247

163:                                              ; preds = %151
  %164 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !100
  store ptr %165, ptr %158, align 8, !tbaa !89
  br label %166

166:                                              ; preds = %163, %151
  %167 = load ptr, ptr %158, align 8, !tbaa !89
  %168 = load i32, ptr %167, align 8
  %169 = and i32 %168, 65535
  %170 = icmp eq i32 %169, 43
  br i1 %170, label %171, label %176, !prof !248

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !100
  %174 = load i32, ptr @frequency, align 4, !tbaa !104
  %175 = shl nsw i32 %174, 1
  tail call fastcc void @record_address_regs(ptr noundef %173, i32 noundef 0, i32 noundef %175)
  br label %184

176:                                              ; preds = %166
  %177 = getelementptr inbounds [30 x ptr], ptr %5, i64 0, i64 %152
  %178 = load ptr, ptr %177, align 8, !tbaa !89
  %179 = load i8, ptr %178, align 1, !tbaa !100
  %180 = icmp eq i8 %179, 112
  br i1 %180, label %181, label %184, !prof !249

181:                                              ; preds = %176
  %182 = load i32, ptr @frequency, align 4, !tbaa !104
  %183 = shl nsw i32 %182, 1
  tail call fastcc void @record_address_regs(ptr noundef nonnull %167, i32 noundef 0, i32 noundef %183)
  br label %184

184:                                              ; preds = %181, %176, %171
  %185 = add nuw nsw i64 %152, 1
  %186 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !243
  %187 = sext i8 %186 to i64
  %188 = icmp slt i64 %185, %187
  br i1 %188, label %151, label %147, !prof !250, !llvm.loop !251

189:                                              ; preds = %147, %209
  %190 = phi i64 [ %210, %209 ], [ 0, %147 ]
  %191 = phi i32 [ %212, %209 ], [ %149, %147 ]
  %192 = getelementptr inbounds [30 x ptr], ptr %5, i64 0, i64 %190
  %193 = load ptr, ptr %192, align 8, !tbaa !89
  %194 = load i8, ptr %193, align 1, !tbaa !100
  %195 = icmp eq i8 %194, 37
  br i1 %195, label %196, label %209, !prof !252

196:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %7) #18
  %197 = icmp sgt i32 %191, 0
  br i1 %197, label %198, label %201, !prof !253

198:                                              ; preds = %196
  %199 = zext nneg i32 %191 to i64
  %200 = shl nuw nsw i64 %199, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %7, ptr nonnull align 16 %5, i64 %200, i1 false), !tbaa !89
  br label %201

201:                                              ; preds = %198, %196
  %202 = add nuw nsw i64 %190, 1
  %203 = getelementptr inbounds [30 x ptr], ptr %5, i64 0, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !89
  %205 = getelementptr inbounds [30 x ptr], ptr %7, i64 0, i64 %190
  store ptr %204, ptr %205, align 8, !tbaa !89
  %206 = getelementptr inbounds [30 x ptr], ptr %7, i64 0, i64 %202
  store ptr %193, ptr %206, align 8, !tbaa !89
  %207 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !254
  %208 = sext i8 %207 to i32
  call fastcc void @record_reg_classes(i32 noundef %208, i32 noundef %191, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %36, ptr noundef %136)
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %7) #18
  br label %209

209:                                              ; preds = %201, %189
  %210 = add nuw nsw i64 %190, 1
  %211 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !243
  %212 = sext i8 %211 to i32
  %213 = add nsw i32 %212, -1
  %214 = sext i32 %213 to i64
  %215 = icmp slt i64 %210, %214
  br i1 %215, label %189, label %216, !prof !255, !llvm.loop !256

216:                                              ; preds = %209, %147
  %217 = phi i8 [ %148, %147 ], [ %211, %209 ]
  %218 = phi i32 [ %149, %147 ], [ %212, %209 ]
  %219 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !254
  %220 = sext i8 %219 to i32
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #18
  %221 = icmp sgt i8 %217, 0
  br i1 %221, label %222, label %225, !prof !257

222:                                              ; preds = %216
  %223 = shl nuw nsw i32 %218, 2
  %224 = zext nneg i32 %223 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %2, i8 0, i64 %224, i1 false), !tbaa !104
  br label %225

225:                                              ; preds = %222, %216
  %226 = icmp sgt i8 %219, 0
  br i1 %226, label %227, label %889, !prof !257

227:                                              ; preds = %225
  %228 = icmp eq ptr %136, null
  %229 = zext nneg i32 %218 to i64
  %230 = zext nneg i32 %218 to i64
  br label %231

231:                                              ; preds = %886, %227
  %232 = phi i32 [ 0, %227 ], [ %887, %886 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #18
  br i1 %221, label %233, label %835, !prof !258

233:                                              ; preds = %231, %830
  %234 = phi i64 [ %833, %830 ], [ 0, %231 ]
  %235 = phi i32 [ %832, %830 ], [ 0, %231 ]
  %236 = phi i32 [ %831, %830 ], [ 0, %231 ]
  %237 = getelementptr inbounds ptr, ptr %5, i64 %234
  %238 = load ptr, ptr %237, align 8, !tbaa !89
  %239 = getelementptr inbounds ptr, ptr @recog_data, i64 %234
  %240 = load ptr, ptr %239, align 8, !tbaa !89
  %241 = getelementptr inbounds i32, ptr %6, i64 %234
  %242 = load i32, ptr %241, align 4, !tbaa !104
  %243 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %234
  store i32 0, ptr %243, align 4, !tbaa !104
  %244 = getelementptr inbounds [30 x i32], ptr %4, i64 0, i64 %234
  store i32 0, ptr %244, align 4, !tbaa !104
  %245 = load i8, ptr %238, align 1, !tbaa !100
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %247, label %260, !prof !259

247:                                              ; preds = %233
  %248 = load i32, ptr %240, align 8
  %249 = and i32 %248, 65535
  %250 = icmp eq i32 %249, 37
  br i1 %250, label %251, label %830, !prof !260

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.rtx_def, ptr %240, i64 0, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !100
  %254 = icmp ugt i32 %253, 52
  br i1 %254, label %255, label %830

255:                                              ; preds = %251
  %256 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %234
  %257 = load ptr, ptr %256, align 8, !tbaa !89
  %258 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %259 = sext i32 %258 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %257, i8 0, i64 %259, i1 false)
  br label %830

260:                                              ; preds = %233, %263
  %261 = phi ptr [ %264, %263 ], [ %238, %233 ]
  %262 = load i8, ptr %261, align 1, !tbaa !100
  switch i8 %262, label %265 [
    i8 37, label %263
    i8 61, label %263
    i8 43, label %263
    i8 38, label %263
  ], !prof !261

263:                                              ; preds = %260, %260, %260, %260
  %264 = getelementptr inbounds i8, ptr %261, i64 1
  br label %260, !llvm.loop !262

265:                                              ; preds = %260
  %266 = sext i8 %262 to i32
  %267 = icmp slt i8 %262, 48
  %268 = trunc i64 %234 to i32
  %269 = add i32 %268, 48
  %270 = icmp slt i32 %269, %266
  %271 = or i1 %267, %270
  br i1 %271, label %478, label %272, !prof !263

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %261, i64 1
  %274 = load i8, ptr %273, align 1, !tbaa !100
  switch i8 %274, label %478 [
    i8 44, label %275
    i8 0, label %275
  ], !prof !264

275:                                              ; preds = %272, %272
  %276 = sext i8 %262 to i64
  %277 = add nsw i64 %276, -48
  %278 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %277
  %279 = load i32, ptr %278, align 4, !tbaa !104
  store i32 %279, ptr %243, align 4, !tbaa !104
  %280 = getelementptr inbounds [30 x i32], ptr %4, i64 0, i64 %277
  %281 = load i32, ptr %280, align 4, !tbaa !104
  store i32 %281, ptr %244, align 4, !tbaa !104
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %285, label %283, !prof !265

283:                                              ; preds = %275
  %284 = getelementptr inbounds [30 x i32], ptr %2, i64 0, i64 %234
  store i32 1, ptr %284, align 4, !tbaa !104
  br label %285

285:                                              ; preds = %283, %275
  %286 = load i32, ptr %240, align 8
  %287 = and i32 %286, 65535
  %288 = icmp eq i32 %287, 37
  br i1 %288, label %289, label %293, !prof !266

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.rtx_def, ptr %240, i64 0, i32 1
  %291 = load i32, ptr %290, align 8, !tbaa !100
  %292 = icmp ult i32 %291, 53
  br i1 %292, label %293, label %304, !prof !267

293:                                              ; preds = %289, %285
  %294 = getelementptr inbounds ptr, ptr @recog_data, i64 %277
  %295 = load ptr, ptr %294, align 8, !tbaa !89
  %296 = tail call i32 @rtx_equal_p(ptr noundef %295, ptr noundef nonnull %240) #18
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %478, !prof !268

298:                                              ; preds = %293
  %299 = load i32, ptr %278, align 4, !tbaa !104
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %478, label %301, !prof !269

301:                                              ; preds = %298
  %302 = tail call fastcc i32 @copy_cost(ptr noundef nonnull %240, i32 noundef %242, i32 noundef %299, i8 noundef zeroext 1, ptr noundef null)
  %303 = add nsw i32 %302, %236
  br label %478

304:                                              ; preds = %289
  %305 = getelementptr inbounds ptr, ptr @recog_data, i64 %277
  %306 = load ptr, ptr %305, align 8, !tbaa !89
  %307 = load i32, ptr %306, align 8
  %308 = and i32 %307, 65535
  %309 = icmp eq i32 %308, 37
  br i1 %309, label %310, label %314, !prof !270

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.rtx_def, ptr %306, i64 0, i32 1
  %312 = load i32, ptr %311, align 8, !tbaa !100
  %313 = icmp ult i32 %312, 53
  br i1 %313, label %314, label %320, !prof !267

314:                                              ; preds = %310, %304
  %315 = load i32, ptr %278, align 4, !tbaa !104
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %478, label %317

317:                                              ; preds = %314
  %318 = tail call fastcc i32 @copy_cost(ptr noundef nonnull %306, i32 noundef %242, i32 noundef %315, i8 noundef zeroext 1, ptr noundef null)
  %319 = add nsw i32 %318, %236
  br label %478

320:                                              ; preds = %310
  %321 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %234
  %322 = load ptr, ptr %321, align 8, !tbaa !89
  %323 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %373, !prof !271

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %234
  %327 = zext i32 %242 to i64
  %328 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %327
  %329 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_in_cost, i64 0, i64 %327
  %330 = zext i32 %279 to i64
  br label %331

331:                                              ; preds = %363, %325
  %332 = phi i64 [ 0, %325 ], [ %369, %363 ]
  %333 = load ptr, ptr @cost_classes, align 8, !tbaa !89
  %334 = getelementptr inbounds i32, ptr %333, i64 %332
  %335 = load i32, ptr %334, align 4, !tbaa !104
  %336 = load i32, ptr %326, align 4, !tbaa !104
  %337 = icmp eq i32 %336, 1
  br i1 %337, label %348, label %338, !prof !272

338:                                              ; preds = %331
  %339 = load ptr, ptr %328, align 8, !tbaa !89
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %342, !prof !272

341:                                              ; preds = %338
  tail call void @ira_init_register_move_cost(i32 noundef %242) #18
  br label %342

342:                                              ; preds = %341, %338
  %343 = load ptr, ptr %329, align 8, !tbaa !89
  %344 = zext i32 %335 to i64
  %345 = getelementptr inbounds [27 x i16], ptr %343, i64 %344, i64 %330
  %346 = load i16, ptr %345, align 2, !tbaa !139
  %347 = zext i16 %346 to i32
  br label %348

348:                                              ; preds = %342, %331
  %349 = phi i32 [ %347, %342 ], [ 0, %331 ]
  %350 = load i32, ptr %326, align 4, !tbaa !104
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %363, label %352, !prof !273

352:                                              ; preds = %348
  %353 = load ptr, ptr %328, align 8, !tbaa !89
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %356

355:                                              ; preds = %352
  tail call void @ira_init_register_move_cost(i32 noundef %242) #18
  br label %356

356:                                              ; preds = %355, %352
  %357 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_out_cost, i64 0, i64 %327
  %358 = load ptr, ptr %357, align 8, !tbaa !89
  %359 = zext i32 %335 to i64
  %360 = getelementptr inbounds [27 x i16], ptr %358, i64 %330, i64 %359
  %361 = load i16, ptr %360, align 2, !tbaa !139
  %362 = zext i16 %361 to i32
  br label %363

363:                                              ; preds = %356, %348
  %364 = phi i32 [ %362, %356 ], [ 0, %348 ]
  %365 = add nuw nsw i32 %364, %349
  %366 = load i32, ptr @frequency, align 4, !tbaa !104
  %367 = mul nsw i32 %365, %366
  %368 = getelementptr inbounds %struct.costs, ptr %322, i64 0, i32 1, i64 %332
  store i32 %367, ptr %368, align 4, !tbaa !104
  %369 = add nuw nsw i64 %332, 1
  %370 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %371 = sext i32 %370 to i64
  %372 = icmp slt i64 %369, %371
  br i1 %372, label %331, label %373, !prof !274, !llvm.loop !275

373:                                              ; preds = %363, %320
  %374 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %234
  %375 = load i32, ptr %374, align 4, !tbaa !104
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %383, label %377, !prof !270

377:                                              ; preds = %373
  %378 = zext i32 %242 to i64
  %379 = zext i32 %279 to i64
  %380 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %378, i64 %379
  %381 = load i16, ptr %380, align 4, !tbaa !139
  %382 = sext i16 %381 to i32
  br label %383

383:                                              ; preds = %377, %373
  %384 = phi i32 [ %382, %377 ], [ 0, %373 ]
  %385 = icmp eq i32 %375, 1
  br i1 %385, label %392, label %386, !prof !267

386:                                              ; preds = %383
  %387 = zext i32 %242 to i64
  %388 = zext i32 %279 to i64
  %389 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %387, i64 %388, i64 1
  %390 = load i16, ptr %389, align 2, !tbaa !139
  %391 = sext i16 %390 to i32
  br label %392

392:                                              ; preds = %386, %383
  %393 = phi i32 [ %391, %386 ], [ 0, %383 ]
  %394 = sub i32 %384, %281
  %395 = add i32 %394, %393
  %396 = load i32, ptr @frequency, align 4, !tbaa !104
  %397 = mul nsw i32 %395, %396
  store i32 %397, ptr %322, align 4, !tbaa !109
  br i1 %228, label %453, label %398, !prof !276

398:                                              ; preds = %392
  %399 = load i1, ptr @allocno_p, align 1
  br i1 %399, label %400, label %406, !prof !277

400:                                              ; preds = %398
  %401 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !89
  %402 = load i32, ptr %290, align 8, !tbaa !100
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds ptr, ptr %401, i64 %403
  %405 = load ptr, ptr %404, align 8, !tbaa !89
  br label %406

406:                                              ; preds = %400, %398
  %407 = phi ptr [ %405, %400 ], [ %290, %398 ]
  %408 = load i32, ptr %407, align 8, !tbaa !100
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, ptr %136, i64 %409
  %411 = load i32, ptr %410, align 4, !tbaa !104
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %435, !prof !278

413:                                              ; preds = %406
  %414 = load i32, ptr %374, align 4, !tbaa !104
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %422, label %416

416:                                              ; preds = %413
  %417 = zext i32 %242 to i64
  %418 = zext i32 %279 to i64
  %419 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %417, i64 %418
  %420 = load i16, ptr %419, align 4, !tbaa !139
  %421 = sext i16 %420 to i32
  br label %422

422:                                              ; preds = %416, %413
  %423 = phi i32 [ %421, %416 ], [ 0, %413 ]
  %424 = icmp eq i32 %414, 1
  br i1 %424, label %431, label %425

425:                                              ; preds = %422
  %426 = zext i32 %242 to i64
  %427 = zext i32 %279 to i64
  %428 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %426, i64 %427, i64 1
  %429 = load i16, ptr %428, align 2, !tbaa !139
  %430 = sext i16 %429 to i32
  br label %431

431:                                              ; preds = %425, %422
  %432 = phi i32 [ %430, %425 ], [ 0, %422 ]
  %433 = add i32 %423, %236
  %434 = add i32 %433, %432
  br label %453

435:                                              ; preds = %406
  %436 = zext i32 %411 to i64
  %437 = zext i32 %279 to i64
  %438 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_intersect, i64 0, i64 %436, i64 %437
  %439 = load i32, ptr %438, align 4, !tbaa !104
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %453, !prof !279

441:                                              ; preds = %435
  %442 = zext i32 %242 to i64
  %443 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %442
  %444 = load ptr, ptr %443, align 8, !tbaa !89
  %445 = icmp eq ptr %444, null
  br i1 %445, label %446, label %447, !prof !280

446:                                              ; preds = %441
  tail call void @ira_init_register_move_cost(i32 noundef %242) #18
  br label %447

447:                                              ; preds = %446, %441
  %448 = load ptr, ptr %443, align 8, !tbaa !89
  %449 = getelementptr inbounds [27 x i16], ptr %448, i64 %436, i64 %437
  %450 = load i16, ptr %449, align 2, !tbaa !139
  %451 = zext i16 %450 to i32
  %452 = add nsw i32 %236, %451
  br label %453

453:                                              ; preds = %447, %435, %431, %392
  %454 = phi i32 [ %236, %392 ], [ %434, %431 ], [ %452, %447 ], [ %236, %435 ]
  %455 = load ptr, ptr %239, align 8, !tbaa !89
  %456 = getelementptr inbounds %struct.rtx_def, ptr %455, i64 0, i32 1
  %457 = load i32, ptr %456, align 8, !tbaa !100
  %458 = load ptr, ptr %305, align 8, !tbaa !89
  %459 = getelementptr inbounds %struct.rtx_def, ptr %458, i64 0, i32 1
  %460 = load i32, ptr %459, align 8, !tbaa !100
  %461 = icmp eq i32 %457, %460
  br i1 %461, label %467, label %462, !prof !281

462:                                              ; preds = %453
  %463 = tail call ptr @find_reg_note(ptr noundef nonnull %36, i32 noundef 1, ptr noundef nonnull %240) #18
  %464 = icmp eq ptr %463, null
  %465 = add nsw i32 %454, 2
  %466 = select i1 %464, i32 %465, i32 %454, !prof !282
  br label %467

467:                                              ; preds = %462, %453
  %468 = phi i32 [ %454, %453 ], [ %466, %462 ]
  br label %469

469:                                              ; preds = %473, %467
  %470 = phi ptr [ %261, %467 ], [ %474, %473 ]
  %471 = load i8, ptr %470, align 1, !tbaa !100
  %472 = icmp eq i8 %471, 0
  br i1 %472, label %476, label %473, !prof !283

473:                                              ; preds = %469
  %474 = getelementptr inbounds i8, ptr %470, i64 1
  %475 = icmp eq i8 %471, 44
  br i1 %475, label %476, label %469, !prof !284, !llvm.loop !285

476:                                              ; preds = %473, %469
  %477 = phi ptr [ %470, %469 ], [ %474, %473 ]
  store ptr %477, ptr %237, align 8, !tbaa !89
  br label %830

478:                                              ; preds = %317, %314, %301, %298, %293, %272, %265
  %479 = phi i32 [ 1, %301 ], [ 0, %298 ], [ 0, %317 ], [ 0, %265 ], [ 0, %272 ], [ 1, %293 ], [ 0, %314 ]
  %480 = phi i32 [ %303, %301 ], [ %236, %298 ], [ %319, %317 ], [ %236, %265 ], [ %236, %272 ], [ %236, %293 ], [ %236, %314 ]
  %481 = phi i32 [ %235, %301 ], [ %235, %298 ], [ %235, %317 ], [ %235, %265 ], [ %235, %272 ], [ %235, %293 ], [ 1, %314 ]
  %482 = getelementptr inbounds %struct.rtx_def, ptr %240, i64 0, i32 1
  br label %483

483:                                              ; preds = %627, %478
  %484 = phi i32 [ %479, %478 ], [ %628, %627 ]
  %485 = phi i32 [ 0, %478 ], [ %629, %627 ]
  %486 = phi ptr [ %261, %478 ], [ %635, %627 ]
  %487 = phi i32 [ %480, %478 ], [ %632, %627 ]
  %488 = load i8, ptr %486, align 1, !tbaa !100
  switch i8 %488, label %610 [
    i8 0, label %637
    i8 44, label %627
    i8 42, label %489
    i8 63, label %492
    i8 33, label %627
    i8 35, label %627
    i8 38, label %627
    i8 48, label %627
    i8 49, label %627
    i8 50, label %627
    i8 51, label %627
    i8 52, label %627
    i8 53, label %627
    i8 54, label %627
    i8 55, label %627
    i8 56, label %627
    i8 57, label %627
    i8 112, label %494
    i8 109, label %503
    i8 111, label %503
    i8 86, label %503
    i8 60, label %509
    i8 62, label %518
    i8 69, label %527
    i8 70, label %527
    i8 71, label %538
    i8 72, label %538
    i8 115, label %547
    i8 105, label %553
    i8 110, label %567
    i8 73, label %574
    i8 74, label %574
    i8 75, label %574
    i8 76, label %574
    i8 77, label %574
    i8 78, label %574
    i8 79, label %574
    i8 80, label %574
    i8 88, label %584
    i8 103, label %585
    i8 114, label %604
  ], !prof !286

489:                                              ; preds = %483
  %490 = getelementptr inbounds i8, ptr %486, i64 1
  %491 = load i8, ptr %490, align 1, !tbaa !100
  br label %627

492:                                              ; preds = %483
  %493 = add nsw i32 %487, 2
  br label %627

494:                                              ; preds = %483
  %495 = load i32, ptr %240, align 8
  %496 = lshr i32 %495, 16
  %497 = and i32 %496, 255
  %498 = tail call i32 @address_operand(ptr noundef nonnull %240, i32 noundef %497) #18
  %499 = load i32, ptr %243, align 4, !tbaa !104
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %500, i64 13
  %502 = load i32, ptr %501, align 4, !tbaa !104
  store i32 %502, ptr %243, align 4, !tbaa !104
  br label %627

503:                                              ; preds = %483, %483, %483
  %504 = getelementptr inbounds [30 x i32], ptr %2, i64 0, i64 %234
  store i32 1, ptr %244, align 4, !tbaa !104
  store i32 1, ptr %504, align 4, !tbaa !104
  %505 = load i32, ptr %240, align 8
  %506 = and i32 %505, 65535
  %507 = icmp eq i32 %506, 43
  %508 = select i1 %507, i32 1, i32 %484, !prof !287
  br label %627

509:                                              ; preds = %483
  %510 = load i32, ptr %240, align 8
  %511 = and i32 %510, 65535
  %512 = icmp eq i32 %511, 43
  br i1 %512, label %513, label %627

513:                                              ; preds = %509
  %514 = load ptr, ptr %482, align 8, !tbaa !100
  %515 = load i32, ptr %514, align 8
  %516 = trunc i32 %515 to i16
  switch i16 %516, label %627 [
    i16 74, label %517
    i16 76, label %517
  ]

517:                                              ; preds = %513, %513
  br label %627

518:                                              ; preds = %483
  %519 = load i32, ptr %240, align 8
  %520 = and i32 %519, 65535
  %521 = icmp eq i32 %520, 43
  br i1 %521, label %522, label %627

522:                                              ; preds = %518
  %523 = load ptr, ptr %482, align 8, !tbaa !100
  %524 = load i32, ptr %523, align 8
  %525 = trunc i32 %524 to i16
  switch i16 %525, label %627 [
    i16 75, label %526
    i16 77, label %526
  ]

526:                                              ; preds = %522, %522
  br label %627

527:                                              ; preds = %483, %483
  %528 = load i32, ptr %240, align 8
  %529 = trunc i32 %528 to i16
  switch i16 %529, label %627 [
    i16 32, label %537
    i16 33, label %530
  ]

530:                                              ; preds = %527
  %531 = lshr i32 %528, 16
  %532 = and i32 %531, 255
  %533 = zext nneg i32 %532 to i64
  %534 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %533
  %535 = load i8, ptr %534, align 1, !tbaa !100
  %536 = icmp eq i8 %535, 17
  br i1 %536, label %537, label %627

537:                                              ; preds = %530, %527
  br label %627

538:                                              ; preds = %483, %483
  %539 = load i32, ptr %240, align 8
  %540 = and i32 %539, 65535
  %541 = icmp eq i32 %540, 32
  br i1 %541, label %542, label %627

542:                                              ; preds = %538
  %543 = tail call i32 @lookup_constraint(ptr noundef %486) #18
  %544 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %240, i32 noundef %543) #18
  %545 = icmp eq i8 %544, 0
  %546 = select i1 %545, i32 %484, i32 1
  br label %627

547:                                              ; preds = %483
  %548 = load i32, ptr %240, align 8
  %549 = trunc i32 %548 to i16
  switch i16 %549, label %553 [
    i16 30, label %627
    i16 32, label %550
  ]

550:                                              ; preds = %547
  %551 = and i32 %548, 16711680
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %627, label %553

553:                                              ; preds = %550, %547, %483
  %554 = load i32, ptr %240, align 8
  %555 = and i32 %554, 65535
  %556 = zext nneg i32 %555 to i64
  %557 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %556
  %558 = load i32, ptr %557, align 4, !tbaa !104
  %559 = icmp eq i32 %558, 9
  br i1 %559, label %560, label %627, !prof !288

560:                                              ; preds = %553
  %561 = load i32, ptr @flag_pic, align 4, !tbaa !104
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %566, label %563, !prof !289

563:                                              ; preds = %560
  %564 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %240) #18
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %627, label %566

566:                                              ; preds = %563, %560
  br label %627

567:                                              ; preds = %483
  %568 = load i32, ptr %240, align 8
  %569 = trunc i32 %568 to i16
  switch i16 %569, label %627 [
    i16 30, label %573
    i16 32, label %570
  ], !prof !290

570:                                              ; preds = %567
  %571 = and i32 %568, 16711680
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %627

573:                                              ; preds = %570, %567
  br label %627

574:                                              ; preds = %483, %483, %483, %483, %483, %483, %483, %483
  %575 = load i32, ptr %240, align 8
  %576 = and i32 %575, 65535
  %577 = icmp eq i32 %576, 30
  br i1 %577, label %578, label %627, !prof !291

578:                                              ; preds = %574
  %579 = load i64, ptr %482, align 8, !tbaa !100
  %580 = tail call i32 @lookup_constraint(ptr noundef %486) #18
  %581 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %579, i32 noundef %580) #18
  %582 = icmp eq i8 %581, 0
  %583 = select i1 %582, i32 %484, i32 1, !prof !292
  br label %627

584:                                              ; preds = %483
  br label %627

585:                                              ; preds = %483
  %586 = load i32, ptr %240, align 8
  %587 = and i32 %586, 65535
  %588 = icmp eq i32 %587, 43
  br i1 %588, label %600, label %589, !prof !293

589:                                              ; preds = %585
  %590 = zext nneg i32 %587 to i64
  %591 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %590
  %592 = load i32, ptr %591, align 4, !tbaa !104
  %593 = icmp eq i32 %592, 9
  br i1 %593, label %594, label %601, !prof !294

594:                                              ; preds = %589
  %595 = load i32, ptr @flag_pic, align 4, !tbaa !104
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %600, label %597, !prof !295

597:                                              ; preds = %594
  %598 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef %240) #18
  %599 = icmp eq i8 %598, 0
  br i1 %599, label %601, label %600

600:                                              ; preds = %597, %594, %585
  br label %601

601:                                              ; preds = %600, %597, %589
  %602 = phi i32 [ 1, %600 ], [ %484, %597 ], [ %484, %589 ]
  %603 = getelementptr inbounds [30 x i32], ptr %2, i64 0, i64 %234
  store i32 1, ptr %244, align 4, !tbaa !104
  store i32 1, ptr %603, align 4, !tbaa !104
  br label %604

604:                                              ; preds = %601, %483
  %605 = phi i32 [ %602, %601 ], [ %484, %483 ]
  %606 = load i32, ptr %243, align 4, !tbaa !104
  %607 = zext i32 %606 to i64
  %608 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %607, i64 13
  %609 = load i32, ptr %608, align 4, !tbaa !104
  store i32 %609, ptr %243, align 4, !tbaa !104
  br label %627

610:                                              ; preds = %483
  %611 = tail call i32 @lookup_constraint(ptr noundef %486) #18
  %612 = tail call i32 @regclass_for_constraint(i32 noundef %611) #18
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %622, label %614, !prof !296

614:                                              ; preds = %610
  %615 = load i32, ptr %243, align 4, !tbaa !104
  %616 = zext i32 %615 to i64
  %617 = tail call i32 @lookup_constraint(ptr noundef %486) #18
  %618 = tail call i32 @regclass_for_constraint(i32 noundef %617) #18
  %619 = zext i32 %618 to i64
  %620 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %616, i64 %619
  %621 = load i32, ptr %620, align 4, !tbaa !104
  store i32 %621, ptr %243, align 4, !tbaa !104
  br label %627

622:                                              ; preds = %610
  %623 = tail call i32 @lookup_constraint(ptr noundef %486) #18
  %624 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %240, i32 noundef %623) #18
  %625 = icmp eq i8 %624, 0
  %626 = select i1 %625, i32 %484, i32 1, !prof !297
  br label %627

627:                                              ; preds = %622, %614, %604, %584, %578, %574, %573, %570, %567, %566, %563, %553, %550, %547, %542, %538, %537, %530, %527, %526, %522, %518, %517, %513, %509, %503, %494, %492, %489, %483, %483, %483, %483, %483, %483, %483, %483, %483, %483, %483, %483, %483, %483
  %628 = phi i32 [ %484, %614 ], [ %605, %604 ], [ 1, %584 ], [ 1, %573 ], [ %484, %570 ], [ 1, %566 ], [ %484, %563 ], [ 1, %537 ], [ 1, %526 ], [ %484, %518 ], [ 1, %517 ], [ %484, %509 ], [ %498, %494 ], [ %484, %492 ], [ %484, %489 ], [ %508, %503 ], [ %484, %513 ], [ %484, %522 ], [ %546, %542 ], [ %484, %567 ], [ %583, %578 ], [ %626, %622 ], [ %484, %483 ], [ %484, %483 ], [ %484, %483 ], [ %484, %483 ], [ %484, %483 ], [ %484, %483 ], [ %484, %483 ], [ %484, %483 ], [ %484, %483 ], [ %484, %483 ], [ %484, %483 ], [ %484, %483 ], [ %484, %483 ], [ %484, %483 ], [ %484, %527 ], [ %484, %530 ], [ %484, %538 ], [ %484, %547 ], [ %484, %550 ], [ %484, %553 ], [ %484, %574 ]
  %629 = phi i32 [ %485, %614 ], [ %485, %604 ], [ %485, %584 ], [ %485, %573 ], [ %485, %570 ], [ %485, %566 ], [ %485, %563 ], [ %485, %537 ], [ %485, %526 ], [ %485, %518 ], [ %485, %517 ], [ %485, %509 ], [ 1, %494 ], [ %485, %492 ], [ %485, %489 ], [ %485, %503 ], [ %485, %513 ], [ %485, %522 ], [ %485, %542 ], [ %485, %567 ], [ %485, %578 ], [ %485, %622 ], [ %485, %483 ], [ %485, %483 ], [ %485, %483 ], [ %485, %483 ], [ %485, %483 ], [ %485, %483 ], [ %485, %483 ], [ %485, %483 ], [ %485, %483 ], [ %485, %483 ], [ %485, %483 ], [ %485, %483 ], [ %485, %483 ], [ %485, %483 ], [ %485, %527 ], [ %485, %530 ], [ %485, %538 ], [ %485, %547 ], [ %485, %550 ], [ %485, %553 ], [ %485, %574 ]
  %630 = phi ptr [ %486, %614 ], [ %486, %604 ], [ %486, %584 ], [ %486, %573 ], [ %486, %570 ], [ %486, %566 ], [ %486, %563 ], [ %486, %537 ], [ %486, %526 ], [ %486, %518 ], [ %486, %517 ], [ %486, %509 ], [ %486, %494 ], [ %486, %492 ], [ %490, %489 ], [ %486, %503 ], [ %486, %513 ], [ %486, %522 ], [ %486, %542 ], [ %486, %567 ], [ %486, %578 ], [ %486, %622 ], [ %486, %483 ], [ %486, %483 ], [ %486, %483 ], [ %486, %483 ], [ %486, %483 ], [ %486, %483 ], [ %486, %483 ], [ %486, %483 ], [ %486, %483 ], [ %486, %483 ], [ %486, %483 ], [ %486, %483 ], [ %486, %483 ], [ %486, %483 ], [ %486, %527 ], [ %486, %530 ], [ %486, %538 ], [ %486, %547 ], [ %486, %550 ], [ %486, %553 ], [ %486, %574 ]
  %631 = phi i8 [ %488, %614 ], [ %488, %604 ], [ %488, %584 ], [ %488, %573 ], [ %488, %570 ], [ %488, %566 ], [ %488, %563 ], [ %488, %537 ], [ %488, %526 ], [ %488, %518 ], [ %488, %517 ], [ %488, %509 ], [ %488, %494 ], [ %488, %492 ], [ %491, %489 ], [ %488, %503 ], [ %488, %513 ], [ %488, %522 ], [ %488, %542 ], [ %488, %567 ], [ %488, %578 ], [ %488, %622 ], [ %488, %483 ], [ %488, %483 ], [ %488, %483 ], [ %488, %483 ], [ %488, %483 ], [ %488, %483 ], [ %488, %483 ], [ %488, %483 ], [ %488, %483 ], [ %488, %483 ], [ %488, %483 ], [ %488, %483 ], [ %488, %483 ], [ %488, %483 ], [ %488, %527 ], [ %488, %530 ], [ %488, %538 ], [ %488, %547 ], [ %488, %550 ], [ %488, %553 ], [ %488, %574 ]
  %632 = phi i32 [ %487, %614 ], [ %487, %604 ], [ %487, %584 ], [ %487, %573 ], [ %487, %570 ], [ %487, %566 ], [ %487, %563 ], [ %487, %537 ], [ %487, %526 ], [ %487, %518 ], [ %487, %517 ], [ %487, %509 ], [ %487, %494 ], [ %493, %492 ], [ %487, %489 ], [ %487, %503 ], [ %487, %513 ], [ %487, %522 ], [ %487, %542 ], [ %487, %567 ], [ %487, %578 ], [ %487, %622 ], [ %487, %483 ], [ %487, %483 ], [ %487, %483 ], [ %487, %483 ], [ %487, %483 ], [ %487, %483 ], [ %487, %483 ], [ %487, %483 ], [ %487, %483 ], [ %487, %483 ], [ %487, %483 ], [ %487, %483 ], [ %487, %483 ], [ %487, %483 ], [ %487, %527 ], [ %487, %530 ], [ %487, %538 ], [ %487, %547 ], [ %487, %550 ], [ %487, %553 ], [ %487, %574 ]
  %633 = icmp eq i8 %631, 89
  %634 = select i1 %633, i64 2, i64 1, !prof !298
  %635 = getelementptr inbounds i8, ptr %630, i64 %634
  %636 = icmp eq i8 %631, 44
  br i1 %636, label %637, label %483, !prof !299, !llvm.loop !300

637:                                              ; preds = %627, %483
  %638 = phi i32 [ %628, %627 ], [ %484, %483 ]
  %639 = phi i32 [ %629, %627 ], [ %485, %483 ]
  %640 = phi ptr [ %635, %627 ], [ %486, %483 ]
  %641 = phi i32 [ %632, %627 ], [ %487, %483 ]
  store ptr %640, ptr %237, align 8, !tbaa !89
  %642 = load i32, ptr %240, align 8
  %643 = and i32 %642, 65535
  %644 = icmp eq i32 %643, 37
  br i1 %644, label %645, label %785, !prof !301

645:                                              ; preds = %637
  %646 = load i32, ptr %482, align 8, !tbaa !100
  %647 = icmp ugt i32 %646, 52
  br i1 %647, label %648, label %785, !prof !302

648:                                              ; preds = %645
  %649 = load i32, ptr %243, align 4, !tbaa !104
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %830, label %651, !prof !303

651:                                              ; preds = %648
  %652 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %234
  %653 = load ptr, ptr %652, align 8, !tbaa !89
  %654 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %655 = icmp sgt i32 %654, 0
  br i1 %655, label %656, label %704, !prof !304

656:                                              ; preds = %651
  %657 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %234
  %658 = zext i32 %242 to i64
  %659 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %658
  %660 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_in_cost, i64 0, i64 %658
  %661 = zext i32 %649 to i64
  %662 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_out_cost, i64 0, i64 %658
  br label %663

663:                                              ; preds = %694, %656
  %664 = phi i64 [ 0, %656 ], [ %700, %694 ]
  %665 = load ptr, ptr @cost_classes, align 8, !tbaa !89
  %666 = getelementptr inbounds i32, ptr %665, i64 %664
  %667 = load i32, ptr %666, align 4, !tbaa !104
  %668 = load i32, ptr %657, align 4, !tbaa !104
  %669 = icmp eq i32 %668, 1
  br i1 %669, label %680, label %670, !prof !305

670:                                              ; preds = %663
  %671 = load ptr, ptr %659, align 8, !tbaa !89
  %672 = icmp eq ptr %671, null
  br i1 %672, label %673, label %674, !prof !306

673:                                              ; preds = %670
  tail call void @ira_init_register_move_cost(i32 noundef %242) #18
  br label %674

674:                                              ; preds = %673, %670
  %675 = load ptr, ptr %660, align 8, !tbaa !89
  %676 = zext i32 %667 to i64
  %677 = getelementptr inbounds [27 x i16], ptr %675, i64 %676, i64 %661
  %678 = load i16, ptr %677, align 2, !tbaa !139
  %679 = zext i16 %678 to i32
  br label %680

680:                                              ; preds = %674, %663
  %681 = phi i32 [ %679, %674 ], [ 0, %663 ]
  %682 = load i32, ptr %657, align 4, !tbaa !104
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %694, label %684, !prof !307

684:                                              ; preds = %680
  %685 = load ptr, ptr %659, align 8, !tbaa !89
  %686 = icmp eq ptr %685, null
  br i1 %686, label %687, label %688, !prof !308

687:                                              ; preds = %684
  tail call void @ira_init_register_move_cost(i32 noundef %242) #18
  br label %688

688:                                              ; preds = %687, %684
  %689 = load ptr, ptr %662, align 8, !tbaa !89
  %690 = zext i32 %667 to i64
  %691 = getelementptr inbounds [27 x i16], ptr %689, i64 %661, i64 %690
  %692 = load i16, ptr %691, align 2, !tbaa !139
  %693 = zext i16 %692 to i32
  br label %694

694:                                              ; preds = %688, %680
  %695 = phi i32 [ %693, %688 ], [ 0, %680 ]
  %696 = add nuw nsw i32 %695, %681
  %697 = load i32, ptr @frequency, align 4, !tbaa !104
  %698 = mul nsw i32 %696, %697
  %699 = getelementptr inbounds %struct.costs, ptr %653, i64 0, i32 1, i64 %664
  store i32 %698, ptr %699, align 4, !tbaa !104
  %700 = add nuw nsw i64 %664, 1
  %701 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %702 = sext i32 %701 to i64
  %703 = icmp slt i64 %700, %702
  br i1 %703, label %663, label %704, !prof !309, !llvm.loop !310

704:                                              ; preds = %694, %651
  %705 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %234
  %706 = load i32, ptr %705, align 4, !tbaa !104
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %714, label %708, !prof !311

708:                                              ; preds = %704
  %709 = zext i32 %242 to i64
  %710 = zext i32 %649 to i64
  %711 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %709, i64 %710
  %712 = load i16, ptr %711, align 4, !tbaa !139
  %713 = sext i16 %712 to i32
  br label %714

714:                                              ; preds = %708, %704
  %715 = phi i32 [ %713, %708 ], [ 0, %704 ]
  %716 = icmp eq i32 %706, 1
  br i1 %716, label %723, label %717, !prof !312

717:                                              ; preds = %714
  %718 = zext i32 %242 to i64
  %719 = zext i32 %649 to i64
  %720 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %718, i64 %719, i64 1
  %721 = load i16, ptr %720, align 2, !tbaa !139
  %722 = sext i16 %721 to i32
  br label %723

723:                                              ; preds = %717, %714
  %724 = phi i32 [ %722, %717 ], [ 0, %714 ]
  %725 = add nsw i32 %724, %715
  %726 = load i32, ptr %244, align 4, !tbaa !104
  %727 = sub i32 %725, %726
  %728 = load i32, ptr @frequency, align 4, !tbaa !104
  %729 = mul nsw i32 %727, %728
  store i32 %729, ptr %653, align 4, !tbaa !109
  br i1 %228, label %830, label %730, !prof !313

730:                                              ; preds = %723
  %731 = load i1, ptr @allocno_p, align 1
  br i1 %731, label %732, label %738, !prof !314

732:                                              ; preds = %730
  %733 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !89
  %734 = load i32, ptr %482, align 8, !tbaa !100
  %735 = zext i32 %734 to i64
  %736 = getelementptr inbounds ptr, ptr %733, i64 %735
  %737 = load ptr, ptr %736, align 8, !tbaa !89
  br label %738

738:                                              ; preds = %732, %730
  %739 = phi ptr [ %737, %732 ], [ %482, %730 ]
  %740 = load i32, ptr %739, align 8, !tbaa !100
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds i32, ptr %136, i64 %741
  %743 = load i32, ptr %742, align 4, !tbaa !104
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %767, !prof !315

745:                                              ; preds = %738
  %746 = load i32, ptr %705, align 4, !tbaa !104
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %754, label %748

748:                                              ; preds = %745
  %749 = zext i32 %242 to i64
  %750 = zext i32 %649 to i64
  %751 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %749, i64 %750
  %752 = load i16, ptr %751, align 4, !tbaa !139
  %753 = sext i16 %752 to i32
  br label %754

754:                                              ; preds = %748, %745
  %755 = phi i32 [ %753, %748 ], [ 0, %745 ]
  %756 = icmp eq i32 %746, 1
  br i1 %756, label %763, label %757

757:                                              ; preds = %754
  %758 = zext i32 %242 to i64
  %759 = zext i32 %649 to i64
  %760 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %758, i64 %759, i64 1
  %761 = load i16, ptr %760, align 2, !tbaa !139
  %762 = sext i16 %761 to i32
  br label %763

763:                                              ; preds = %757, %754
  %764 = phi i32 [ %762, %757 ], [ 0, %754 ]
  %765 = add i32 %755, %641
  %766 = add i32 %765, %764
  br label %830

767:                                              ; preds = %738
  %768 = zext i32 %743 to i64
  %769 = zext i32 %649 to i64
  %770 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_intersect, i64 0, i64 %768, i64 %769
  %771 = load i32, ptr %770, align 4, !tbaa !104
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %773, label %830, !prof !315

773:                                              ; preds = %767
  %774 = zext i32 %242 to i64
  %775 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %774
  %776 = load ptr, ptr %775, align 8, !tbaa !89
  %777 = icmp eq ptr %776, null
  br i1 %777, label %778, label %779

778:                                              ; preds = %773
  tail call void @ira_init_register_move_cost(i32 noundef %242) #18
  br label %779

779:                                              ; preds = %778, %773
  %780 = load ptr, ptr %775, align 8, !tbaa !89
  %781 = getelementptr inbounds [27 x i16], ptr %780, i64 %768, i64 %769
  %782 = load i16, ptr %781, align 2, !tbaa !139
  %783 = zext i16 %782 to i32
  %784 = add nsw i32 %641, %783
  br label %830

785:                                              ; preds = %645, %637
  %786 = icmp eq i32 %638, 0
  br i1 %786, label %787, label %830, !prof !316

787:                                              ; preds = %785
  br i1 %644, label %788, label %794, !prof !317

788:                                              ; preds = %787
  %789 = load i32, ptr %243, align 4, !tbaa !104
  %790 = lshr i32 %642, 16
  %791 = and i32 %790, 255
  %792 = tail call i32 @reg_fits_class_p(ptr noundef %240, i32 noundef %789, i32 noundef 0, i32 noundef %791) #18
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %794, label %830, !prof !318

794:                                              ; preds = %788, %787
  %795 = load i32, ptr %243, align 4, !tbaa !104
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %811, label %797, !prof !319

797:                                              ; preds = %794
  %798 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %234
  %799 = load i32, ptr %798, align 4, !tbaa !104
  %800 = icmp eq i32 %799, 1
  br i1 %800, label %804, label %801, !prof !320

801:                                              ; preds = %797
  %802 = tail call fastcc i32 @copy_cost(ptr noundef %240, i32 noundef %242, i32 noundef %795, i8 noundef zeroext 1, ptr noundef null)
  %803 = add nsw i32 %802, %641
  br label %804

804:                                              ; preds = %801, %797
  %805 = phi i32 [ %803, %801 ], [ %641, %797 ]
  %806 = load i32, ptr %798, align 4, !tbaa !104
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %830, label %808, !prof !321

808:                                              ; preds = %804
  %809 = tail call fastcc i32 @copy_cost(ptr noundef %240, i32 noundef %242, i32 noundef %795, i8 noundef zeroext 0, ptr noundef null)
  %810 = add nsw i32 %809, %805
  br label %830

811:                                              ; preds = %794
  %812 = load i32, ptr %240, align 8
  %813 = and i32 %812, 65535
  %814 = zext nneg i32 %813 to i64
  %815 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %814
  %816 = load i32, ptr %815, align 4, !tbaa !104
  %817 = icmp eq i32 %816, 9
  br i1 %817, label %818, label %830, !prof !322

818:                                              ; preds = %811
  %819 = icmp eq i32 %639, 0
  br i1 %819, label %820, label %823, !prof !323

820:                                              ; preds = %818
  %821 = load i32, ptr %244, align 4, !tbaa !104
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %830, label %823, !prof !324

823:                                              ; preds = %820, %818
  %824 = zext i32 %242 to i64
  %825 = zext nneg i32 %795 to i64
  %826 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %824, i64 %825, i64 1
  %827 = load i16, ptr %826, align 2, !tbaa !139
  %828 = sext i16 %827 to i32
  %829 = add nsw i32 %641, %828
  br label %830

830:                                              ; preds = %823, %820, %811, %808, %804, %788, %785, %779, %767, %763, %723, %648, %476, %255, %251, %247
  %831 = phi i32 [ %468, %476 ], [ %236, %255 ], [ %236, %251 ], [ %236, %247 ], [ %641, %785 ], [ %641, %788 ], [ %810, %808 ], [ %805, %804 ], [ %829, %823 ], [ %641, %648 ], [ %641, %723 ], [ %766, %763 ], [ %784, %779 ], [ %641, %767 ], [ %641, %820 ], [ %641, %811 ]
  %832 = phi i32 [ %235, %476 ], [ %235, %255 ], [ %235, %251 ], [ %235, %247 ], [ %481, %785 ], [ %481, %788 ], [ %481, %808 ], [ %481, %804 ], [ %481, %823 ], [ 1, %648 ], [ %481, %723 ], [ %481, %763 ], [ %481, %779 ], [ %481, %767 ], [ 1, %820 ], [ 1, %811 ]
  %833 = add nuw nsw i64 %234, 1
  %834 = icmp eq i64 %833, %229
  br i1 %834, label %835, label %233, !prof !325, !llvm.loop !326

835:                                              ; preds = %830, %231
  %836 = phi i32 [ 0, %231 ], [ %831, %830 ]
  %837 = phi i32 [ 0, %231 ], [ %832, %830 ]
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %839, label %886, !prof !327

839:                                              ; preds = %835
  %840 = load i32, ptr @frequency, align 4, !tbaa !104
  %841 = mul nsw i32 %840, %836
  br i1 %221, label %842, label %886, !prof !328

842:                                              ; preds = %839
  %843 = load i32, ptr @cost_classes_num, align 4
  br label %844

844:                                              ; preds = %883, %842
  %845 = phi i64 [ 0, %842 ], [ %884, %883 ]
  %846 = getelementptr inbounds ptr, ptr @recog_data, i64 %845
  %847 = load ptr, ptr %846, align 8, !tbaa !89
  %848 = load i32, ptr %847, align 8
  %849 = and i32 %848, 65535
  %850 = icmp eq i32 %849, 37
  br i1 %850, label %851, label %883, !prof !329

851:                                              ; preds = %844
  %852 = getelementptr inbounds %struct.rtx_def, ptr %847, i64 0, i32 1
  %853 = load i32, ptr %852, align 8, !tbaa !100
  %854 = icmp ugt i32 %853, 52
  br i1 %854, label %855, label %883, !prof !330

855:                                              ; preds = %851
  %856 = icmp sgt i32 %843, 0
  %857 = getelementptr inbounds ptr, ptr @op_costs, i64 %845
  %858 = load ptr, ptr %857, align 8, !tbaa !89
  %859 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %845
  %860 = load ptr, ptr %859, align 8, !tbaa !89
  %861 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %845
  %862 = load i32, ptr %861, align 4, !tbaa !104
  %863 = icmp eq i32 %862, 2
  %864 = load i32, ptr %858, align 4, !tbaa !109
  %865 = load i32, ptr %860, align 4, !tbaa !109
  %866 = add nsw i32 %865, %841
  %867 = zext i1 %863 to i32
  %868 = shl i32 %866, %867
  %869 = tail call i32 @llvm.smin.i32(i32 %864, i32 %868)
  store i32 %869, ptr %858, align 4, !tbaa !109
  br i1 %856, label %870, label %883, !prof !331

870:                                              ; preds = %855
  %871 = zext nneg i32 %843 to i64
  br label %872

872:                                              ; preds = %870, %872
  %873 = phi i64 [ %881, %872 ], [ 0, %870 ]
  %874 = getelementptr inbounds %struct.costs, ptr %858, i64 0, i32 1, i64 %873
  %875 = load i32, ptr %874, align 4, !tbaa !104
  %876 = getelementptr inbounds %struct.costs, ptr %860, i64 0, i32 1, i64 %873
  %877 = load i32, ptr %876, align 4, !tbaa !104
  %878 = add nsw i32 %877, %841
  %879 = shl i32 %878, %867
  %880 = tail call i32 @llvm.smin.i32(i32 %875, i32 %879)
  store i32 %880, ptr %874, align 4, !tbaa !104
  %881 = add nuw nsw i64 %873, 1
  %882 = icmp eq i64 %881, %871
  br i1 %882, label %883, label %872, !prof !332, !llvm.loop !333

883:                                              ; preds = %872, %855, %851, %844
  %884 = add nuw nsw i64 %845, 1
  %885 = icmp eq i64 %884, %230
  br i1 %885, label %886, label %844, !prof !334, !llvm.loop !335

886:                                              ; preds = %883, %839, %835
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #18
  %887 = add nuw nsw i32 %232, 1
  %888 = icmp eq i32 %887, %220
  br i1 %888, label %889, label %231, !prof !336, !llvm.loop !337

889:                                              ; preds = %886, %225
  %890 = load i1, ptr @allocno_p, align 1
  %891 = and i1 %221, %890
  br i1 %891, label %892, label %923, !prof !338

892:                                              ; preds = %889
  %893 = load ptr, ptr @ira_curr_regno_allocno_map, align 8
  %894 = zext i32 %218 to i64
  br label %895

895:                                              ; preds = %920, %892
  %896 = phi i64 [ 0, %892 ], [ %921, %920 ]
  %897 = getelementptr inbounds ptr, ptr @recog_data, i64 %896
  %898 = load ptr, ptr %897, align 8, !tbaa !89
  %899 = load i32, ptr %898, align 8
  %900 = and i32 %899, 65535
  %901 = icmp eq i32 %900, 37
  br i1 %901, label %902, label %920, !prof !339

902:                                              ; preds = %895
  %903 = getelementptr inbounds %struct.rtx_def, ptr %898, i64 0, i32 1
  %904 = load i32, ptr %903, align 8, !tbaa !100
  %905 = icmp ult i32 %904, 53
  br i1 %905, label %920, label %906, !prof !340

906:                                              ; preds = %902
  %907 = zext i32 %904 to i64
  %908 = getelementptr inbounds ptr, ptr %893, i64 %907
  %909 = load ptr, ptr %908, align 8, !tbaa !89
  %910 = getelementptr inbounds %struct.ira_allocno, ptr %909, i64 0, i32 31
  %911 = load i16, ptr %910, align 4
  %912 = and i16 %911, 64
  %913 = icmp eq i16 %912, 0
  br i1 %913, label %914, label %920, !prof !341

914:                                              ; preds = %906
  %915 = getelementptr inbounds [30 x i32], ptr %2, i64 0, i64 %896
  %916 = load i32, ptr %915, align 4, !tbaa !104
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %918, label %920, !prof !342

918:                                              ; preds = %914
  %919 = or disjoint i16 %911, 64
  store i16 %919, ptr %910, align 4
  br label %920

920:                                              ; preds = %918, %914, %906, %902, %895
  %921 = add nuw nsw i64 %896, 1
  %922 = icmp eq i64 %921, %894
  br i1 %922, label %923, label %895, !prof !343, !llvm.loop !344

923:                                              ; preds = %920, %889
  %924 = load i32, ptr %36, align 8
  %925 = and i32 %924, 65535
  %926 = add nsw i32 %925, -7
  %927 = icmp ult i32 %926, 4
  br i1 %927, label %928, label %935, !prof !345

928:                                              ; preds = %923
  %929 = load ptr, ptr %49, align 8, !tbaa !100
  %930 = load i32, ptr %929, align 8
  %931 = and i32 %930, 65535
  %932 = icmp eq i32 %931, 23
  br i1 %932, label %935, label %933, !prof !346

933:                                              ; preds = %928
  %934 = tail call ptr @single_set_2(ptr noundef nonnull %36, ptr noundef nonnull %929) #18
  br label %935

935:                                              ; preds = %933, %928, %923
  %936 = phi ptr [ %934, %933 ], [ null, %923 ], [ %929, %928 ]
  %937 = icmp eq ptr %936, null
  br i1 %937, label %1058, label %938, !prof !347

938:                                              ; preds = %935
  %939 = load ptr, ptr @recog_data, align 8, !tbaa !89
  %940 = getelementptr inbounds %struct.rtx_def, ptr %936, i64 0, i32 1
  %941 = load ptr, ptr %940, align 8, !tbaa !100
  %942 = icmp eq ptr %939, %941
  br i1 %942, label %943, label %1058, !prof !348

943:                                              ; preds = %938
  %944 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !89
  %945 = getelementptr inbounds %struct.rtx_def, ptr %936, i64 0, i32 1, i32 0, i32 0, i64 1
  %946 = load ptr, ptr %945, align 8, !tbaa !100
  %947 = icmp eq ptr %944, %946
  br i1 %947, label %948, label %1058, !prof !349

948:                                              ; preds = %943
  %949 = load i32, ptr %939, align 8
  %950 = and i32 %949, 65535
  %951 = icmp eq i32 %950, 37
  br i1 %951, label %952, label %1058, !prof !350

952:                                              ; preds = %948
  %953 = load i32, ptr %944, align 8
  %954 = and i32 %953, 65535
  %955 = icmp eq i32 %954, 37
  br i1 %955, label %956, label %1058, !prof !351

956:                                              ; preds = %952
  %957 = getelementptr inbounds %struct.rtx_def, ptr %944, i64 0, i32 1
  %958 = load i32, ptr %957, align 8, !tbaa !100
  %959 = tail call ptr @find_regno_note(ptr noundef nonnull %36, i32 noundef 1, i32 noundef %958) #18
  %960 = icmp eq ptr %959, null
  br i1 %960, label %1058, label %961, !prof !352

961:                                              ; preds = %956, %1055
  %962 = phi i64 [ %1056, %1055 ], [ 0, %956 ]
  %963 = getelementptr inbounds ptr, ptr @recog_data, i64 %962
  %964 = load ptr, ptr %963, align 8, !tbaa !89
  %965 = getelementptr inbounds %struct.rtx_def, ptr %964, i64 0, i32 1
  %966 = load i32, ptr %965, align 8, !tbaa !100
  %967 = icmp ugt i32 %966, 52
  br i1 %967, label %968, label %1055, !prof !353

968:                                              ; preds = %961
  %969 = xor i64 %962, 1
  %970 = getelementptr inbounds ptr, ptr @recog_data, i64 %969
  %971 = load ptr, ptr %970, align 8, !tbaa !89
  %972 = getelementptr inbounds %struct.rtx_def, ptr %971, i64 0, i32 1
  %973 = load i32, ptr %972, align 8, !tbaa !100
  %974 = icmp ult i32 %973, 53
  %975 = load i32, ptr @cost_classes_num, align 4
  %976 = icmp sgt i32 %975, 0
  %977 = select i1 %974, i1 %976, i1 false
  br i1 %977, label %978, label %1055, !prof !354

978:                                              ; preds = %968
  %979 = load i32, ptr %971, align 8
  %980 = lshr i32 %979, 16
  %981 = and i32 %980, 255
  %982 = zext nneg i32 %973 to i64
  %983 = shl nuw nsw i64 1, %982
  %984 = icmp eq i32 %981, 40
  %985 = zext nneg i32 %981 to i64
  %986 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %985
  %987 = getelementptr inbounds ptr, ptr @op_costs, i64 %962
  br label %988

988:                                              ; preds = %1050, %978
  %989 = phi i64 [ 0, %978 ], [ %1051, %1050 ]
  %990 = load ptr, ptr @cost_classes, align 8, !tbaa !89
  %991 = getelementptr inbounds i32, ptr %990, i64 %989
  %992 = load i32, ptr %991, align 4, !tbaa !104
  %993 = zext i32 %992 to i64
  %994 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %993
  %995 = load i64, ptr %994, align 8, !tbaa !140
  %996 = and i64 %995, %983
  %997 = icmp eq i64 %996, 0
  br i1 %997, label %1050, label %998, !prof !355

998:                                              ; preds = %988
  %999 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %993
  %1000 = load i32, ptr %999, align 4, !tbaa !104
  %1001 = tail call i32 @reg_classes_intersect_p(i32 noundef %992, i32 noundef 13) #18
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1003, label %1009, !prof !356

1003:                                             ; preds = %998
  %1004 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %985
  %1005 = load i8, ptr %1004, align 1, !tbaa !100
  %1006 = and i8 %1005, -2
  %1007 = icmp eq i8 %1006, 10
  %1008 = select i1 %1007, i32 2, i32 1
  br label %1017

1009:                                             ; preds = %998
  br i1 %984, label %1013, label %1010, !prof !356

1010:                                             ; preds = %1009
  %1011 = load i8, ptr %986, align 1, !tbaa !100
  %1012 = zext i8 %1011 to i32
  br label %1013

1013:                                             ; preds = %1010, %1009
  %1014 = phi i32 [ %1012, %1010 ], [ 12, %1009 ]
  %1015 = add nuw nsw i32 %1014, 3
  %1016 = lshr i32 %1015, 2
  br label %1017

1017:                                             ; preds = %1013, %1003
  %1018 = phi i32 [ %1008, %1003 ], [ %1016, %1013 ]
  %1019 = icmp eq i32 %1000, %1018
  br i1 %1019, label %1020, label %1050, !prof !357

1020:                                             ; preds = %1017
  %1021 = load i32, ptr %999, align 4, !tbaa !104
  %1022 = icmp eq i32 %1021, 1
  br i1 %1022, label %1045, label %1023, !prof !358

1023:                                             ; preds = %1020
  %1024 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %982, i64 %985
  %1025 = load i8, ptr %1024, align 1, !tbaa !100
  %1026 = zext i8 %1025 to i32
  %1027 = icmp eq i8 %1025, 0
  br i1 %1027, label %1042, label %1028

1028:                                             ; preds = %1023
  %1029 = load i64, ptr %994, align 8, !tbaa !140
  %1030 = zext i8 %1025 to i64
  br label %1031

1031:                                             ; preds = %1037, %1028
  %1032 = phi i64 [ 0, %1028 ], [ %1038, %1037 ]
  %1033 = add nuw nsw i64 %1032, %982
  %1034 = shl nuw i64 1, %1033
  %1035 = and i64 %1034, %1029
  %1036 = icmp eq i64 %1035, 0
  br i1 %1036, label %1040, label %1037

1037:                                             ; preds = %1031
  %1038 = add nuw nsw i64 %1032, 1
  %1039 = icmp eq i64 %1038, %1030
  br i1 %1039, label %1042, label %1031, !llvm.loop !359

1040:                                             ; preds = %1031
  %1041 = trunc i64 %1032 to i32
  br label %1042

1042:                                             ; preds = %1037, %1040, %1023
  %1043 = phi i32 [ 0, %1023 ], [ %1041, %1040 ], [ %1026, %1037 ]
  %1044 = icmp eq i32 %1043, %1026
  br i1 %1044, label %1045, label %1050

1045:                                             ; preds = %1042, %1020
  %1046 = load i32, ptr @frequency, align 4, !tbaa !104
  %1047 = sub nsw i32 0, %1046
  %1048 = load ptr, ptr %987, align 8, !tbaa !89
  %1049 = getelementptr inbounds %struct.costs, ptr %1048, i64 0, i32 1, i64 %989
  store i32 %1047, ptr %1049, align 4, !tbaa !104
  br label %1050

1050:                                             ; preds = %1045, %1042, %1017, %988
  %1051 = add nuw nsw i64 %989, 1
  %1052 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %1053 = sext i32 %1052 to i64
  %1054 = icmp slt i64 %1051, %1053
  br i1 %1054, label %988, label %1055, !prof !360, !llvm.loop !361

1055:                                             ; preds = %1050, %968, %961
  %1056 = add nuw nsw i64 %962, 1
  %1057 = icmp eq i64 %962, 0
  br i1 %1057, label %961, label %1058, !prof !362, !llvm.loop !363

1058:                                             ; preds = %1055, %935, %938, %943, %948, %952, %956
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %5) #18
  %1059 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !243
  %1060 = icmp sgt i8 %1059, 0
  br i1 %1060, label %1061, label %1110, !prof !245

1061:                                             ; preds = %1058
  %1062 = zext nneg i8 %1059 to i64
  %1063 = load ptr, ptr @costs, align 8
  %1064 = load i1, ptr @allocno_p, align 1
  %1065 = load ptr, ptr @ira_curr_regno_allocno_map, align 8
  %1066 = load i32, ptr @struct_costs_size, align 4
  %1067 = load i32, ptr @cost_classes_num, align 4
  br label %1068

1068:                                             ; preds = %1061, %1107
  %1069 = phi i64 [ 0, %1061 ], [ %1108, %1107 ]
  %1070 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1069
  %1071 = load ptr, ptr %1070, align 8, !tbaa !89
  %1072 = load i32, ptr %1071, align 8
  %1073 = and i32 %1072, 65535
  %1074 = icmp eq i32 %1073, 37
  br i1 %1074, label %1075, label %1107, !prof !364

1075:                                             ; preds = %1068
  %1076 = getelementptr inbounds %struct.rtx_def, ptr %1071, i64 0, i32 1
  %1077 = load i32, ptr %1076, align 8, !tbaa !100
  %1078 = icmp ugt i32 %1077, 52
  br i1 %1078, label %1079, label %1107, !prof !365

1079:                                             ; preds = %1075
  br i1 %1064, label %1080, label %1085, !prof !366

1080:                                             ; preds = %1079
  %1081 = sext i32 %1077 to i64
  %1082 = getelementptr inbounds ptr, ptr %1065, i64 %1081
  %1083 = load ptr, ptr %1082, align 8, !tbaa !89
  %1084 = load i32, ptr %1083, align 8, !tbaa !128
  br label %1085

1085:                                             ; preds = %1080, %1079
  %1086 = phi i32 [ %1084, %1080 ], [ %1077, %1079 ]
  %1087 = icmp sgt i32 %1067, 0
  %1088 = mul nsw i32 %1066, %1086
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds i8, ptr %1063, i64 %1089
  %1091 = getelementptr inbounds [30 x ptr], ptr @op_costs, i64 0, i64 %1069
  %1092 = load ptr, ptr %1091, align 8, !tbaa !89
  %1093 = load i32, ptr %1092, align 4, !tbaa !109
  %1094 = load i32, ptr %1090, align 4, !tbaa !109
  %1095 = add nsw i32 %1094, %1093
  store i32 %1095, ptr %1090, align 4, !tbaa !109
  br i1 %1087, label %1096, label %1107, !prof !367

1096:                                             ; preds = %1085
  %1097 = zext nneg i32 %1067 to i64
  br label %1098

1098:                                             ; preds = %1096, %1098
  %1099 = phi i64 [ 0, %1096 ], [ %1105, %1098 ]
  %1100 = getelementptr inbounds %struct.costs, ptr %1092, i64 0, i32 1, i64 %1099
  %1101 = load i32, ptr %1100, align 4, !tbaa !104
  %1102 = getelementptr inbounds %struct.costs, ptr %1090, i64 0, i32 1, i64 %1099
  %1103 = load i32, ptr %1102, align 4, !tbaa !104
  %1104 = add nsw i32 %1103, %1101
  store i32 %1104, ptr %1102, align 4, !tbaa !104
  %1105 = add nuw nsw i64 %1099, 1
  %1106 = icmp eq i64 %1105, %1097
  br i1 %1106, label %1107, label %1098, !prof !368, !llvm.loop !369

1107:                                             ; preds = %1098, %1085, %1075, %1068
  %1108 = add nuw nsw i64 %1069, 1
  %1109 = icmp eq i64 %1108, %1062
  br i1 %1109, label %1110, label %1068, !prof !370, !llvm.loop !371

1110:                                             ; preds = %1107, %1058, %43, %48
  %1111 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  %1112 = load ptr, ptr %1111, align 8, !tbaa !100
  %1113 = icmp eq ptr %1112, null
  br i1 %1113, label %1114, label %35, !prof !372, !llvm.loop !373

1114:                                             ; preds = %35, %1110, %28
  ret void
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @invalid_mode_change_p(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @setup_reg_classes(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @record_address_regs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 !prof !374 !PGOFuncName !375 {
  br label %4

4:                                                ; preds = %194, %41, %205, %192, %191, %181, %170, %111, %40, %3
  %5 = phi ptr [ %0, %3 ], [ %29, %40 ], [ %37, %111 ], [ %29, %170 ], [ %37, %181 ], [ %37, %191 ], [ %37, %192 ], [ %207, %205 ], [ %29, %41 ], [ %201, %194 ]
  %6 = phi i32 [ %1, %3 ], [ %6, %40 ], [ %112, %111 ], [ %171, %170 ], [ 1, %181 ], [ 0, %191 ], [ 1, %192 ], [ 0, %205 ], [ 1, %41 ], [ 1, %194 ]
  %7 = phi i32 [ %2, %3 ], [ %7, %40 ], [ %7, %111 ], [ %7, %170 ], [ %7, %181 ], [ %7, %191 ], [ %193, %192 ], [ %208, %205 ], [ %7, %41 ], [ %198, %194 ]
  %8 = load i32, ptr %5, align 8
  %9 = icmp eq i32 %6, 1
  %10 = select i1 %9, i64 11, i64 13, !prof !376
  %11 = trunc i32 %8 to i16
  switch i16 %11, label %270 [
    i16 30, label %292
    i16 35, label %292
    i16 46, label %292
    i16 36, label %292
    i16 45, label %292
    i16 44, label %292
    i16 49, label %12
    i16 79, label %194
    i16 78, label %194
    i16 77, label %205
    i16 75, label %205
    i16 76, label %205
    i16 74, label %205
    i16 37, label %209
  ], !prof !377

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %18, 39
  br i1 %21, label %22, label %27, !prof !378

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !100
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  br label %27

27:                                               ; preds = %22, %12
  %28 = phi i32 [ %26, %22 ], [ %18, %12 ]
  %29 = phi ptr [ %24, %22 ], [ %14, %12 ]
  %30 = icmp eq i32 %20, 39
  br i1 %30, label %31, label %36, !prof !378

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi ptr [ %33, %31 ], [ %16, %27 ]
  %38 = phi i32 [ %35, %31 ], [ %20, %27 ]
  %39 = trunc i32 %38 to i16
  switch i16 %39, label %41 [
    i16 32, label %40
    i16 30, label %40
  ], !prof !379

40:                                               ; preds = %36, %36
  br label %4

41:                                               ; preds = %36
  %42 = icmp eq i32 %38, 35
  %43 = and i32 %38, 65534
  %44 = icmp eq i32 %43, 44
  %45 = or i1 %42, %44
  br i1 %45, label %4, label %46, !prof !380

46:                                               ; preds = %41
  %47 = icmp eq i32 %28, 37
  %48 = icmp eq i32 %38, 37
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %172, !prof !381

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !100
  %53 = icmp ult i32 %52, 53
  br i1 %53, label %54, label %113, !prof !382

54:                                               ; preds = %50
  %55 = add nsw i32 %52, -53
  %56 = icmp ult i32 %55, -45
  br i1 %56, label %74, label %57

57:                                               ; preds = %54
  %58 = zext nneg i32 %52 to i64
  %59 = add nsw i64 %58, -37
  %60 = icmp ult i64 %59, 8
  %61 = and i32 %52, 59
  %62 = icmp eq i32 %61, 16
  %63 = or i1 %62, %60
  br i1 %63, label %74, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr @reg_renumber, align 8, !tbaa !89
  %66 = getelementptr inbounds i16, ptr %65, i64 %58
  %67 = load i16, ptr %66, align 2, !tbaa !139
  %68 = icmp ult i16 %67, 8
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = sext i16 %67 to i64
  %71 = and i64 %70, 4294967295
  %72 = add nsw i64 %71, -37
  %73 = icmp ult i64 %72, 8
  br label %74

74:                                               ; preds = %54, %57, %64, %69
  %75 = phi i1 [ true, %54 ], [ true, %57 ], [ true, %64 ], [ %73, %69 ]
  %76 = icmp ult i32 %55, -46
  %77 = or i1 %76, %75
  br i1 %77, label %92, label %78

78:                                               ; preds = %74
  %79 = zext nneg i32 %52 to i64
  %80 = add nsw i64 %79, -37
  %81 = icmp ult i64 %80, 8
  br i1 %81, label %92, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr @reg_renumber, align 8, !tbaa !89
  %84 = getelementptr inbounds i16, ptr %83, i64 %79
  %85 = load i16, ptr %84, align 2, !tbaa !139
  %86 = icmp ult i16 %85, 7
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = sext i16 %85 to i64
  %89 = and i64 %88, 4294967295
  %90 = add nsw i64 %89, -45
  %91 = icmp ult i64 %90, -8
  br i1 %91, label %113, label %92

92:                                               ; preds = %82, %78, %87, %74
  br i1 %56, label %111, label %93

93:                                               ; preds = %92
  %94 = zext nneg i32 %52 to i64
  %95 = add nsw i64 %94, -37
  %96 = icmp ult i64 %95, 8
  %97 = and i32 %52, 59
  %98 = icmp eq i32 %97, 16
  %99 = or i1 %98, %96
  br i1 %99, label %111, label %100

100:                                              ; preds = %93
  %101 = load ptr, ptr @reg_renumber, align 8, !tbaa !89
  %102 = getelementptr inbounds i16, ptr %101, i64 %94
  %103 = load i16, ptr %102, align 2, !tbaa !139
  %104 = icmp ult i16 %103, 8
  br i1 %104, label %111, label %105

105:                                              ; preds = %100
  %106 = sext i16 %103 to i64
  %107 = and i64 %106, 4294967295
  %108 = add nsw i64 %107, -37
  %109 = icmp ult i64 %108, 8
  %110 = zext i1 %109 to i32
  br label %111

111:                                              ; preds = %92, %93, %100, %105
  %112 = phi i32 [ 1, %92 ], [ 1, %93 ], [ 1, %100 ], [ %110, %105 ]
  br label %4

113:                                              ; preds = %50, %87
  %114 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !100
  %116 = icmp ult i32 %115, 53
  br i1 %116, label %117, label %172, !prof !382

117:                                              ; preds = %113
  %118 = add nsw i32 %115, -53
  %119 = icmp ult i32 %118, -45
  br i1 %119, label %170, label %120

120:                                              ; preds = %117
  %121 = zext nneg i32 %115 to i64
  %122 = add nsw i64 %121, -37
  %123 = icmp ult i64 %122, 8
  %124 = and i32 %115, 59
  %125 = icmp eq i32 %124, 16
  %126 = or i1 %125, %123
  br i1 %126, label %151, label %127

127:                                              ; preds = %120
  %128 = load ptr, ptr @reg_renumber, align 8, !tbaa !89
  %129 = getelementptr inbounds i16, ptr %128, i64 %121
  %130 = load i16, ptr %129, align 2, !tbaa !139
  %131 = icmp ult i16 %130, 8
  br i1 %131, label %151, label %132

132:                                              ; preds = %127
  %133 = sext i16 %130 to i64
  %134 = and i64 %133, 4294967295
  %135 = add nsw i64 %134, -37
  %136 = icmp ult i64 %135, 8
  br i1 %136, label %151, label %137

137:                                              ; preds = %132
  %138 = zext nneg i32 %115 to i64
  %139 = add nsw i64 %138, -37
  %140 = icmp ult i64 %139, 8
  br i1 %140, label %151, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr @reg_renumber, align 8, !tbaa !89
  %143 = getelementptr inbounds i16, ptr %142, i64 %138
  %144 = load i16, ptr %143, align 2, !tbaa !139
  %145 = icmp ult i16 %144, 7
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = sext i16 %144 to i64
  %148 = and i64 %147, 4294967295
  %149 = add nsw i64 %148, -45
  %150 = icmp ult i64 %149, -8
  br i1 %150, label %172, label %151

151:                                              ; preds = %141, %137, %120, %127, %146, %132
  br i1 %119, label %170, label %152

152:                                              ; preds = %151
  %153 = zext nneg i32 %115 to i64
  %154 = add nsw i64 %153, -37
  %155 = icmp ult i64 %154, 8
  %156 = and i32 %115, 59
  %157 = icmp eq i32 %156, 16
  %158 = or i1 %157, %155
  br i1 %158, label %170, label %159

159:                                              ; preds = %152
  %160 = load ptr, ptr @reg_renumber, align 8, !tbaa !89
  %161 = getelementptr inbounds i16, ptr %160, i64 %153
  %162 = load i16, ptr %161, align 2, !tbaa !139
  %163 = icmp ult i16 %162, 8
  br i1 %163, label %170, label %164

164:                                              ; preds = %159
  %165 = sext i16 %162 to i64
  %166 = and i64 %165, 4294967295
  %167 = add nsw i64 %166, -37
  %168 = icmp ult i64 %167, 8
  %169 = zext i1 %168 to i32
  br label %170

170:                                              ; preds = %117, %151, %152, %159, %164
  %171 = phi i32 [ 1, %151 ], [ 1, %152 ], [ 1, %159 ], [ %169, %164 ], [ 1, %117 ]
  br label %4

172:                                              ; preds = %46, %146, %113
  br i1 %47, label %173, label %179, !prof !381

173:                                              ; preds = %172
  %174 = load i32, ptr %29, align 8
  %175 = and i32 %174, 1073741824
  %176 = icmp ne i32 %175, 0
  %177 = icmp eq i32 %38, 52
  %178 = or i1 %177, %176
  br i1 %178, label %181, label %182, !prof !382

179:                                              ; preds = %172
  %180 = icmp eq i32 %38, 52
  br i1 %180, label %181, label %182, !prof !383

181:                                              ; preds = %179, %173
  tail call fastcc void @record_address_regs(ptr noundef nonnull %29, i32 noundef 0, i32 noundef %7)
  br label %4

182:                                              ; preds = %179, %173
  br i1 %48, label %183, label %189, !prof !384

183:                                              ; preds = %182
  %184 = load i32, ptr %37, align 8
  %185 = and i32 %184, 1073741824
  %186 = icmp ne i32 %185, 0
  %187 = icmp eq i32 %28, 52
  %188 = select i1 %186, i1 true, i1 %187, !prof !385
  br i1 %188, label %191, label %192, !prof !386

189:                                              ; preds = %182
  %190 = icmp eq i32 %28, 52
  br i1 %190, label %191, label %192

191:                                              ; preds = %189, %183
  tail call fastcc void @record_address_regs(ptr noundef nonnull %29, i32 noundef 1, i32 noundef %7)
  br label %4

192:                                              ; preds = %189, %183
  %193 = sdiv i32 %7, 2
  tail call fastcc void @record_address_regs(ptr noundef nonnull %29, i32 noundef 0, i32 noundef %193)
  tail call fastcc void @record_address_regs(ptr noundef nonnull %29, i32 noundef 1, i32 noundef %193)
  tail call fastcc void @record_address_regs(ptr noundef nonnull %37, i32 noundef 0, i32 noundef %193)
  br label %4

194:                                              ; preds = %4, %4
  %195 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !100
  %197 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %198 = shl nsw i32 %7, 1
  tail call fastcc void @record_address_regs(ptr noundef %196, i32 noundef 0, i32 noundef %198)
  %199 = load ptr, ptr %197, align 8, !tbaa !100
  %200 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 0, i32 1, i32 0, i32 0, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !100
  %202 = load i32, ptr %201, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 37
  br i1 %204, label %4, label %292

205:                                              ; preds = %4, %4, %4, %4
  %206 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !100
  %208 = shl nsw i32 %7, 1
  br label %4

209:                                              ; preds = %4
  %210 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %211 = load i32, ptr %210, align 8, !tbaa !100
  %212 = icmp ult i32 %211, 53
  br i1 %212, label %292, label %213, !prof !387

213:                                              ; preds = %209
  %214 = load i1, ptr @allocno_p, align 1
  br i1 %214, label %215, label %223, !prof !388

215:                                              ; preds = %213
  %216 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !89
  %217 = zext i32 %211 to i64
  %218 = getelementptr inbounds ptr, ptr %216, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !89
  %220 = getelementptr inbounds %struct.ira_allocno, ptr %219, i64 0, i32 31
  %221 = load i16, ptr %220, align 4
  %222 = or i16 %221, 64
  store i16 %222, ptr %220, align 4
  br label %223

223:                                              ; preds = %215, %213
  %224 = load ptr, ptr @costs, align 8, !tbaa !89
  br i1 %214, label %225, label %231, !prof !388

225:                                              ; preds = %223
  %226 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !89
  %227 = load i32, ptr %210, align 8, !tbaa !100
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds ptr, ptr %226, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !89
  br label %231

231:                                              ; preds = %223, %225
  %232 = phi ptr [ %230, %225 ], [ %210, %223 ]
  %233 = load i32, ptr %232, align 8, !tbaa !100
  %234 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %235 = mul nsw i32 %234, %233
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, ptr %224, i64 %236
  %238 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 16, i64 %10, i64 1
  %239 = load i16, ptr %238, align 2, !tbaa !139
  %240 = sext i16 %239 to i32
  %241 = mul nsw i32 %240, %7
  %242 = sdiv i32 %241, 2
  %243 = load i32, ptr %237, align 4, !tbaa !109
  %244 = add nsw i32 %242, %243
  store i32 %244, ptr %237, align 4, !tbaa !109
  %245 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %292, !prof !389

247:                                              ; preds = %231, %255
  %248 = phi i64 [ %266, %255 ], [ 0, %231 ]
  %249 = load ptr, ptr @cost_classes, align 8, !tbaa !89
  %250 = getelementptr inbounds i32, ptr %249, i64 %248
  %251 = load i32, ptr %250, align 4, !tbaa !104
  %252 = load ptr, ptr getelementptr inbounds ([87 x ptr], ptr @ira_register_move_cost, i64 0, i64 16), align 16, !tbaa !89
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %255, !prof !390

254:                                              ; preds = %247
  tail call void @ira_init_register_move_cost(i32 noundef 16) #18
  br label %255

255:                                              ; preds = %247, %254
  %256 = load ptr, ptr getelementptr inbounds ([87 x ptr], ptr @ira_may_move_in_cost, i64 0, i64 16), align 16, !tbaa !89
  %257 = zext i32 %251 to i64
  %258 = getelementptr inbounds [27 x i16], ptr %256, i64 %257, i64 %10
  %259 = load i16, ptr %258, align 2, !tbaa !139
  %260 = zext i16 %259 to i32
  %261 = mul nsw i32 %260, %7
  %262 = sdiv i32 %261, 2
  %263 = getelementptr inbounds %struct.costs, ptr %237, i64 0, i32 1, i64 %248
  %264 = load i32, ptr %263, align 4, !tbaa !104
  %265 = add nsw i32 %262, %264
  store i32 %265, ptr %263, align 4, !tbaa !104
  %266 = add nuw nsw i64 %248, 1
  %267 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %268 = sext i32 %267 to i64
  %269 = icmp slt i64 %266, %268
  br i1 %269, label %247, label %292, !prof !391, !llvm.loop !392

270:                                              ; preds = %4
  %271 = and i32 %8, 65535
  %272 = zext nneg i32 %271 to i64
  %273 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %272
  %274 = load ptr, ptr %273, align 8, !tbaa !89
  %275 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %272
  %276 = load i8, ptr %275, align 1, !tbaa !100
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %292, label %278, !prof !393

278:                                              ; preds = %270
  %279 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %280 = zext i8 %276 to i64
  br label %281

281:                                              ; preds = %278, %290
  %282 = phi i64 [ %280, %278 ], [ %283, %290 ]
  %283 = add nsw i64 %282, -1
  %284 = getelementptr inbounds i8, ptr %274, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !100
  %286 = icmp eq i8 %285, 101
  br i1 %286, label %287, label %290, !prof !394

287:                                              ; preds = %281
  %288 = getelementptr inbounds [1 x %union.rtunion_def], ptr %279, i64 0, i64 %283
  %289 = load ptr, ptr %288, align 8, !tbaa !100
  tail call fastcc void @record_address_regs(ptr noundef %289, i32 noundef %6, i32 noundef %7)
  br label %290

290:                                              ; preds = %281, %287
  %291 = icmp sgt i64 %282, 1
  br i1 %291, label %281, label %292, !prof !395, !llvm.loop !396

292:                                              ; preds = %255, %290, %231, %270, %194, %4, %4, %4, %4, %4, %209, %4
  ret void
}

declare void @ira_init_register_move_cost(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @record_reg_classes(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef readonly %5) unnamed_addr #14 !prof !397 !PGOFuncName !398 {
  %7 = alloca [30 x i32], align 16
  %8 = alloca [30 x i32], align 16
  %9 = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #18
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %14, !prof !257

11:                                               ; preds = %6
  %12 = zext nneg i32 %1 to i64
  %13 = shl nuw nsw i64 %12, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %7, i8 0, i64 %13, i1 false), !tbaa !104
  br label %14

14:                                               ; preds = %11, %6
  %15 = icmp sgt i32 %0, 0
  br i1 %15, label %16, label %690, !prof !257

16:                                               ; preds = %14
  %17 = icmp sgt i32 %1, 0
  %18 = icmp eq ptr %5, null
  %19 = icmp sgt i32 %1, 0
  %20 = zext nneg i32 %1 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %16, %687
  %23 = phi i32 [ 0, %16 ], [ %688, %687 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %9) #18
  br i1 %17, label %24, label %636, !prof !258

24:                                               ; preds = %22, %631
  %25 = phi i64 [ %634, %631 ], [ 0, %22 ]
  %26 = phi i32 [ %633, %631 ], [ 0, %22 ]
  %27 = phi i32 [ %632, %631 ], [ 0, %22 ]
  %28 = getelementptr inbounds ptr, ptr %3, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !89
  %30 = getelementptr inbounds ptr, ptr @recog_data, i64 %25
  %31 = load ptr, ptr %30, align 8, !tbaa !89
  %32 = getelementptr inbounds i32, ptr %2, i64 %25
  %33 = load i32, ptr %32, align 4, !tbaa !104
  %34 = getelementptr inbounds [30 x i32], ptr %8, i64 0, i64 %25
  store i32 0, ptr %34, align 4, !tbaa !104
  %35 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %25
  store i32 0, ptr %35, align 4, !tbaa !104
  %36 = load i8, ptr %29, align 1, !tbaa !100
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %51, !prof !259

38:                                               ; preds = %24
  %39 = load i32, ptr %31, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 37
  br i1 %41, label %42, label %631, !prof !260

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !100
  %45 = icmp ugt i32 %44, 52
  br i1 %45, label %46, label %631

46:                                               ; preds = %42
  %47 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %25
  %48 = load ptr, ptr %47, align 8, !tbaa !89
  %49 = load i32, ptr @struct_costs_size, align 4, !tbaa !104
  %50 = sext i32 %49 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %48, i8 0, i64 %50, i1 false)
  br label %631

51:                                               ; preds = %24, %54
  %52 = phi ptr [ %55, %54 ], [ %29, %24 ]
  %53 = load i8, ptr %52, align 1, !tbaa !100
  switch i8 %53, label %56 [
    i8 37, label %54
    i8 61, label %54
    i8 43, label %54
    i8 38, label %54
  ], !prof !261

54:                                               ; preds = %51, %51, %51, %51
  %55 = getelementptr inbounds i8, ptr %52, i64 1
  br label %51, !llvm.loop !262

56:                                               ; preds = %51
  %57 = sext i8 %53 to i32
  %58 = icmp slt i8 %53, 48
  %59 = trunc i64 %25 to i32
  %60 = add i32 %59, 48
  %61 = icmp slt i32 %60, %57
  %62 = or i1 %58, %61
  br i1 %62, label %273, label %63, !prof !263

63:                                               ; preds = %56
  %64 = getelementptr inbounds i8, ptr %52, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !100
  switch i8 %65, label %273 [
    i8 44, label %66
    i8 0, label %66
  ], !prof !264

66:                                               ; preds = %63, %63
  %67 = sext i8 %53 to i64
  %68 = add nsw i64 %67, -48
  %69 = getelementptr inbounds [30 x i32], ptr %8, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !104
  store i32 %70, ptr %34, align 4, !tbaa !104
  %71 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %68
  %72 = load i32, ptr %71, align 4, !tbaa !104
  store i32 %72, ptr %35, align 4, !tbaa !104
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74, !prof !265

74:                                               ; preds = %66
  %75 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %25
  store i32 1, ptr %75, align 4, !tbaa !104
  br label %76

76:                                               ; preds = %66, %74
  %77 = load i32, ptr %31, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 37
  br i1 %79, label %80, label %84, !prof !266

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !100
  %83 = icmp ult i32 %82, 53
  br i1 %83, label %84, label %95, !prof !267

84:                                               ; preds = %80, %76
  %85 = getelementptr inbounds ptr, ptr @recog_data, i64 %68
  %86 = load ptr, ptr %85, align 8, !tbaa !89
  %87 = tail call i32 @rtx_equal_p(ptr noundef %86, ptr noundef nonnull %31) #18
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %273, !prof !268

89:                                               ; preds = %84
  %90 = load i32, ptr %69, align 4, !tbaa !104
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %273, label %92, !prof !269

92:                                               ; preds = %89
  %93 = tail call fastcc i32 @copy_cost(ptr noundef nonnull %31, i32 noundef %33, i32 noundef %90, i8 noundef zeroext 1, ptr noundef null)
  %94 = add nsw i32 %93, %27
  br label %273

95:                                               ; preds = %80
  %96 = getelementptr inbounds ptr, ptr @recog_data, i64 %68
  %97 = load ptr, ptr %96, align 8, !tbaa !89
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 37
  br i1 %100, label %101, label %105, !prof !270

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !100
  %104 = icmp ult i32 %103, 53
  br i1 %104, label %105, label %111, !prof !267

105:                                              ; preds = %101, %95
  %106 = load i32, ptr %69, align 4, !tbaa !104
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %273, label %108

108:                                              ; preds = %105
  %109 = tail call fastcc i32 @copy_cost(ptr noundef nonnull %97, i32 noundef %33, i32 noundef %106, i8 noundef zeroext 1, ptr noundef null)
  %110 = add nsw i32 %109, %27
  br label %273

111:                                              ; preds = %101
  %112 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %25
  %113 = load ptr, ptr %112, align 8, !tbaa !89
  %114 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %167, !prof !271

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %25
  %118 = zext i32 %33 to i64
  %119 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %118
  %120 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_in_cost, i64 0, i64 %118
  %121 = zext i32 %70 to i64
  br label %122

122:                                              ; preds = %116, %157
  %123 = phi i64 [ 0, %116 ], [ %163, %157 ]
  %124 = load ptr, ptr @cost_classes, align 8, !tbaa !89
  %125 = getelementptr inbounds i32, ptr %124, i64 %123
  %126 = load i32, ptr %125, align 4, !tbaa !104
  %127 = load i32, ptr %117, align 4, !tbaa !104
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %139, label %129, !prof !272

129:                                              ; preds = %122
  %130 = load ptr, ptr %119, align 8, !tbaa !89
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %133, !prof !272

132:                                              ; preds = %129
  tail call void @ira_init_register_move_cost(i32 noundef %33) #18
  br label %133

133:                                              ; preds = %129, %132
  %134 = load ptr, ptr %120, align 8, !tbaa !89
  %135 = zext i32 %126 to i64
  %136 = getelementptr inbounds [27 x i16], ptr %134, i64 %135, i64 %121
  %137 = load i16, ptr %136, align 2, !tbaa !139
  %138 = zext i16 %137 to i32
  br label %139

139:                                              ; preds = %122, %133
  %140 = phi i32 [ %138, %133 ], [ 0, %122 ]
  %141 = load i32, ptr %117, align 4, !tbaa !104
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %157, label %143, !prof !273

143:                                              ; preds = %139
  %144 = zext i32 %33 to i64
  %145 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !89
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  tail call void @ira_init_register_move_cost(i32 noundef %33) #18
  br label %149

149:                                              ; preds = %143, %148
  %150 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_out_cost, i64 0, i64 %144
  %151 = zext i32 %70 to i64
  %152 = load ptr, ptr %150, align 8, !tbaa !89
  %153 = zext i32 %126 to i64
  %154 = getelementptr inbounds [27 x i16], ptr %152, i64 %151, i64 %153
  %155 = load i16, ptr %154, align 2, !tbaa !139
  %156 = zext i16 %155 to i32
  br label %157

157:                                              ; preds = %139, %149
  %158 = phi i32 [ %156, %149 ], [ 0, %139 ]
  %159 = add nuw nsw i32 %158, %140
  %160 = load i32, ptr @frequency, align 4, !tbaa !104
  %161 = mul nsw i32 %159, %160
  %162 = getelementptr inbounds %struct.costs, ptr %113, i64 0, i32 1, i64 %123
  store i32 %161, ptr %162, align 4, !tbaa !104
  %163 = add nuw nsw i64 %123, 1
  %164 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %165 = sext i32 %164 to i64
  %166 = icmp slt i64 %163, %165
  br i1 %166, label %122, label %167, !prof !274, !llvm.loop !275

167:                                              ; preds = %157, %111
  %168 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %25
  %169 = load i32, ptr %168, align 4, !tbaa !104
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %177, label %171, !prof !270

171:                                              ; preds = %167
  %172 = zext i32 %33 to i64
  %173 = zext i32 %70 to i64
  %174 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %172, i64 %173
  %175 = load i16, ptr %174, align 4, !tbaa !139
  %176 = sext i16 %175 to i32
  br label %177

177:                                              ; preds = %167, %171
  %178 = phi i32 [ %176, %171 ], [ 0, %167 ]
  %179 = icmp eq i32 %169, 1
  br i1 %179, label %186, label %180, !prof !267

180:                                              ; preds = %177
  %181 = zext i32 %33 to i64
  %182 = zext i32 %70 to i64
  %183 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %181, i64 %182, i64 1
  %184 = load i16, ptr %183, align 2, !tbaa !139
  %185 = sext i16 %184 to i32
  br label %186

186:                                              ; preds = %177, %180
  %187 = phi i32 [ %185, %180 ], [ 0, %177 ]
  %188 = icmp eq ptr %5, null
  %189 = sub i32 %178, %72
  %190 = add i32 %189, %187
  %191 = load i32, ptr @frequency, align 4, !tbaa !104
  %192 = mul nsw i32 %190, %191
  store i32 %192, ptr %113, align 4, !tbaa !109
  br i1 %188, label %248, label %193, !prof !276

193:                                              ; preds = %186
  %194 = load i1, ptr @allocno_p, align 1
  br i1 %194, label %195, label %201, !prof !277

195:                                              ; preds = %193
  %196 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !89
  %197 = load i32, ptr %81, align 8, !tbaa !100
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds ptr, ptr %196, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !89
  br label %201

201:                                              ; preds = %193, %195
  %202 = phi ptr [ %200, %195 ], [ %81, %193 ]
  %203 = load i32, ptr %202, align 8, !tbaa !100
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, ptr %5, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !104
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %230, !prof !278

208:                                              ; preds = %201
  %209 = load i32, ptr %168, align 4, !tbaa !104
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %208
  %212 = zext i32 %33 to i64
  %213 = zext i32 %70 to i64
  %214 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %212, i64 %213
  %215 = load i16, ptr %214, align 4, !tbaa !139
  %216 = sext i16 %215 to i32
  br label %217

217:                                              ; preds = %208, %211
  %218 = phi i32 [ %216, %211 ], [ 0, %208 ]
  %219 = icmp eq i32 %209, 1
  br i1 %219, label %226, label %220

220:                                              ; preds = %217
  %221 = zext i32 %33 to i64
  %222 = zext i32 %70 to i64
  %223 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %221, i64 %222, i64 1
  %224 = load i16, ptr %223, align 2, !tbaa !139
  %225 = sext i16 %224 to i32
  br label %226

226:                                              ; preds = %217, %220
  %227 = phi i32 [ %225, %220 ], [ 0, %217 ]
  %228 = add i32 %218, %27
  %229 = add i32 %228, %227
  br label %248

230:                                              ; preds = %201
  %231 = zext i32 %206 to i64
  %232 = zext i32 %70 to i64
  %233 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_intersect, i64 0, i64 %231, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !104
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %248, !prof !279

236:                                              ; preds = %230
  %237 = zext i32 %33 to i64
  %238 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !89
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %242, !prof !280

241:                                              ; preds = %236
  tail call void @ira_init_register_move_cost(i32 noundef %33) #18
  br label %242

242:                                              ; preds = %236, %241
  %243 = load ptr, ptr %238, align 8, !tbaa !89
  %244 = getelementptr inbounds [27 x i16], ptr %243, i64 %231, i64 %232
  %245 = load i16, ptr %244, align 2, !tbaa !139
  %246 = zext i16 %245 to i32
  %247 = add nsw i32 %27, %246
  br label %248

248:                                              ; preds = %226, %242, %230, %186
  %249 = phi i32 [ %27, %186 ], [ %229, %226 ], [ %247, %242 ], [ %27, %230 ]
  %250 = load ptr, ptr %30, align 8, !tbaa !89
  %251 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1
  %252 = load i32, ptr %251, align 8, !tbaa !100
  %253 = load ptr, ptr %96, align 8, !tbaa !89
  %254 = getelementptr inbounds %struct.rtx_def, ptr %253, i64 0, i32 1
  %255 = load i32, ptr %254, align 8, !tbaa !100
  %256 = icmp eq i32 %252, %255
  br i1 %256, label %262, label %257, !prof !281

257:                                              ; preds = %248
  %258 = tail call ptr @find_reg_note(ptr noundef %4, i32 noundef 1, ptr noundef nonnull %31) #18
  %259 = icmp eq ptr %258, null
  %260 = add nsw i32 %249, 2
  %261 = select i1 %259, i32 %260, i32 %249, !prof !282
  br label %262

262:                                              ; preds = %257, %248
  %263 = phi i32 [ %249, %248 ], [ %261, %257 ]
  br label %264

264:                                              ; preds = %268, %262
  %265 = phi ptr [ %52, %262 ], [ %269, %268 ]
  %266 = load i8, ptr %265, align 1, !tbaa !100
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %271, label %268, !prof !283

268:                                              ; preds = %264
  %269 = getelementptr inbounds i8, ptr %265, i64 1
  %270 = icmp eq i8 %266, 44
  br i1 %270, label %271, label %264, !prof !284, !llvm.loop !285

271:                                              ; preds = %268, %264
  %272 = phi ptr [ %265, %264 ], [ %269, %268 ]
  store ptr %272, ptr %28, align 8, !tbaa !89
  br label %631

273:                                              ; preds = %105, %84, %63, %89, %92, %108, %56
  %274 = phi i32 [ 1, %92 ], [ 0, %89 ], [ 0, %108 ], [ 0, %56 ], [ 0, %63 ], [ 1, %84 ], [ 0, %105 ]
  %275 = phi i32 [ %94, %92 ], [ %27, %89 ], [ %110, %108 ], [ %27, %56 ], [ %27, %63 ], [ %27, %84 ], [ %27, %105 ]
  %276 = phi i32 [ %26, %92 ], [ %26, %89 ], [ %26, %108 ], [ %26, %56 ], [ %26, %63 ], [ %26, %84 ], [ 1, %105 ]
  br label %277

277:                                              ; preds = %424, %273
  %278 = phi i32 [ %274, %273 ], [ %425, %424 ]
  %279 = phi i32 [ 0, %273 ], [ %426, %424 ]
  %280 = phi ptr [ %52, %273 ], [ %432, %424 ]
  %281 = phi i32 [ %275, %273 ], [ %429, %424 ]
  %282 = load i8, ptr %280, align 1, !tbaa !100
  switch i8 %282, label %407 [
    i8 0, label %434
    i8 44, label %424
    i8 42, label %283
    i8 63, label %286
    i8 33, label %424
    i8 35, label %424
    i8 38, label %424
    i8 48, label %424
    i8 49, label %424
    i8 50, label %424
    i8 51, label %424
    i8 52, label %424
    i8 53, label %424
    i8 54, label %424
    i8 55, label %424
    i8 56, label %424
    i8 57, label %424
    i8 112, label %288
    i8 109, label %297
    i8 111, label %297
    i8 86, label %297
    i8 60, label %303
    i8 62, label %313
    i8 69, label %323
    i8 70, label %323
    i8 71, label %334
    i8 72, label %334
    i8 115, label %343
    i8 105, label %349
    i8 110, label %363
    i8 73, label %370
    i8 74, label %370
    i8 75, label %370
    i8 76, label %370
    i8 77, label %370
    i8 78, label %370
    i8 79, label %370
    i8 80, label %370
    i8 88, label %381
    i8 103, label %382
    i8 114, label %401
  ], !prof !286

283:                                              ; preds = %277
  %284 = getelementptr inbounds i8, ptr %280, i64 1
  %285 = load i8, ptr %284, align 1, !tbaa !100
  br label %424

286:                                              ; preds = %277
  %287 = add nsw i32 %281, 2
  br label %424

288:                                              ; preds = %277
  %289 = load i32, ptr %31, align 8
  %290 = lshr i32 %289, 16
  %291 = and i32 %290, 255
  %292 = tail call i32 @address_operand(ptr noundef nonnull %31, i32 noundef %291) #18
  %293 = load i32, ptr %34, align 4, !tbaa !104
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %294, i64 13
  %296 = load i32, ptr %295, align 4, !tbaa !104
  store i32 %296, ptr %34, align 4, !tbaa !104
  br label %424

297:                                              ; preds = %277, %277, %277
  %298 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %25
  store i32 1, ptr %35, align 4, !tbaa !104
  store i32 1, ptr %298, align 4, !tbaa !104
  %299 = load i32, ptr %31, align 8
  %300 = and i32 %299, 65535
  %301 = icmp eq i32 %300, 43
  %302 = select i1 %301, i32 1, i32 %278, !prof !287
  br label %424

303:                                              ; preds = %277
  %304 = load i32, ptr %31, align 8
  %305 = and i32 %304, 65535
  %306 = icmp eq i32 %305, 43
  br i1 %306, label %307, label %424

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !100
  %310 = load i32, ptr %309, align 8
  %311 = trunc i32 %310 to i16
  switch i16 %311, label %424 [
    i16 74, label %312
    i16 76, label %312
  ]

312:                                              ; preds = %307, %307
  br label %424

313:                                              ; preds = %277
  %314 = load i32, ptr %31, align 8
  %315 = and i32 %314, 65535
  %316 = icmp eq i32 %315, 43
  br i1 %316, label %317, label %424

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !100
  %320 = load i32, ptr %319, align 8
  %321 = trunc i32 %320 to i16
  switch i16 %321, label %424 [
    i16 75, label %322
    i16 77, label %322
  ]

322:                                              ; preds = %317, %317
  br label %424

323:                                              ; preds = %277, %277
  %324 = load i32, ptr %31, align 8
  %325 = trunc i32 %324 to i16
  switch i16 %325, label %424 [
    i16 32, label %333
    i16 33, label %326
  ]

326:                                              ; preds = %323
  %327 = lshr i32 %324, 16
  %328 = and i32 %327, 255
  %329 = zext nneg i32 %328 to i64
  %330 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !100
  %332 = icmp eq i8 %331, 17
  br i1 %332, label %333, label %424

333:                                              ; preds = %323, %326
  br label %424

334:                                              ; preds = %277, %277
  %335 = load i32, ptr %31, align 8
  %336 = and i32 %335, 65535
  %337 = icmp eq i32 %336, 32
  br i1 %337, label %338, label %424

338:                                              ; preds = %334
  %339 = tail call i32 @lookup_constraint(ptr noundef %280) #18
  %340 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %31, i32 noundef %339) #18
  %341 = icmp eq i8 %340, 0
  %342 = select i1 %341, i32 %278, i32 1
  br label %424

343:                                              ; preds = %277
  %344 = load i32, ptr %31, align 8
  %345 = trunc i32 %344 to i16
  switch i16 %345, label %349 [
    i16 30, label %424
    i16 32, label %346
  ]

346:                                              ; preds = %343
  %347 = and i32 %344, 16711680
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %424, label %349

349:                                              ; preds = %343, %277, %346
  %350 = load i32, ptr %31, align 8
  %351 = and i32 %350, 65535
  %352 = zext nneg i32 %351 to i64
  %353 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %352
  %354 = load i32, ptr %353, align 4, !tbaa !104
  %355 = icmp eq i32 %354, 9
  br i1 %355, label %356, label %424, !prof !288

356:                                              ; preds = %349
  %357 = load i32, ptr @flag_pic, align 4, !tbaa !104
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %362, label %359, !prof !289

359:                                              ; preds = %356
  %360 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %31) #18
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %424, label %362

362:                                              ; preds = %359, %356
  br label %424

363:                                              ; preds = %277
  %364 = load i32, ptr %31, align 8
  %365 = trunc i32 %364 to i16
  switch i16 %365, label %424 [
    i16 30, label %369
    i16 32, label %366
  ], !prof !290

366:                                              ; preds = %363
  %367 = and i32 %364, 16711680
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %424

369:                                              ; preds = %366, %363
  br label %424

370:                                              ; preds = %277, %277, %277, %277, %277, %277, %277, %277
  %371 = load i32, ptr %31, align 8
  %372 = and i32 %371, 65535
  %373 = icmp eq i32 %372, 30
  br i1 %373, label %374, label %424, !prof !291

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %376 = load i64, ptr %375, align 8, !tbaa !100
  %377 = tail call i32 @lookup_constraint(ptr noundef %280) #18
  %378 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %376, i32 noundef %377) #18
  %379 = icmp eq i8 %378, 0
  %380 = select i1 %379, i32 %278, i32 1, !prof !292
  br label %424

381:                                              ; preds = %277
  br label %424

382:                                              ; preds = %277
  %383 = load i32, ptr %31, align 8
  %384 = and i32 %383, 65535
  %385 = icmp eq i32 %384, 43
  br i1 %385, label %397, label %386, !prof !293

386:                                              ; preds = %382
  %387 = zext nneg i32 %384 to i64
  %388 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %387
  %389 = load i32, ptr %388, align 4, !tbaa !104
  %390 = icmp eq i32 %389, 9
  br i1 %390, label %391, label %398, !prof !294

391:                                              ; preds = %386
  %392 = load i32, ptr @flag_pic, align 4, !tbaa !104
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %397, label %394, !prof !295

394:                                              ; preds = %391
  %395 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef %31) #18
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %398, label %397

397:                                              ; preds = %394, %391, %382
  br label %398

398:                                              ; preds = %397, %394, %386
  %399 = phi i32 [ 1, %397 ], [ %278, %394 ], [ %278, %386 ]
  %400 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %25
  store i32 1, ptr %35, align 4, !tbaa !104
  store i32 1, ptr %400, align 4, !tbaa !104
  br label %401

401:                                              ; preds = %277, %398
  %402 = phi i32 [ %399, %398 ], [ %278, %277 ]
  %403 = load i32, ptr %34, align 4, !tbaa !104
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %404, i64 13
  %406 = load i32, ptr %405, align 4, !tbaa !104
  store i32 %406, ptr %34, align 4, !tbaa !104
  br label %424

407:                                              ; preds = %277
  %408 = tail call i32 @lookup_constraint(ptr noundef %280) #18
  %409 = tail call i32 @regclass_for_constraint(i32 noundef %408) #18
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %419, label %411, !prof !296

411:                                              ; preds = %407
  %412 = load i32, ptr %34, align 4, !tbaa !104
  %413 = zext i32 %412 to i64
  %414 = tail call i32 @lookup_constraint(ptr noundef %280) #18
  %415 = tail call i32 @regclass_for_constraint(i32 noundef %414) #18
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %413, i64 %416
  %418 = load i32, ptr %417, align 4, !tbaa !104
  store i32 %418, ptr %34, align 4, !tbaa !104
  br label %424

419:                                              ; preds = %407
  %420 = tail call i32 @lookup_constraint(ptr noundef %280) #18
  %421 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %31, i32 noundef %420) #18
  %422 = icmp eq i8 %421, 0
  %423 = select i1 %422, i32 %278, i32 1, !prof !297
  br label %424

424:                                              ; preds = %370, %349, %346, %343, %334, %326, %323, %277, %277, %277, %277, %277, %277, %277, %277, %277, %277, %277, %277, %277, %277, %419, %374, %338, %297, %363, %317, %307, %411, %366, %369, %359, %362, %333, %313, %322, %303, %312, %286, %401, %381, %288, %283
  %425 = phi i32 [ %278, %411 ], [ %402, %401 ], [ 1, %381 ], [ 1, %369 ], [ %278, %366 ], [ 1, %362 ], [ %278, %359 ], [ 1, %333 ], [ 1, %322 ], [ %278, %313 ], [ 1, %312 ], [ %278, %303 ], [ %292, %288 ], [ %278, %286 ], [ %278, %283 ], [ %302, %297 ], [ %278, %307 ], [ %278, %317 ], [ %342, %338 ], [ %278, %363 ], [ %380, %374 ], [ %423, %419 ], [ %278, %277 ], [ %278, %277 ], [ %278, %277 ], [ %278, %277 ], [ %278, %277 ], [ %278, %277 ], [ %278, %277 ], [ %278, %277 ], [ %278, %277 ], [ %278, %277 ], [ %278, %277 ], [ %278, %277 ], [ %278, %277 ], [ %278, %277 ], [ %278, %323 ], [ %278, %326 ], [ %278, %334 ], [ %278, %343 ], [ %278, %346 ], [ %278, %349 ], [ %278, %370 ]
  %426 = phi i32 [ %279, %411 ], [ %279, %401 ], [ %279, %381 ], [ %279, %369 ], [ %279, %366 ], [ %279, %362 ], [ %279, %359 ], [ %279, %333 ], [ %279, %322 ], [ %279, %313 ], [ %279, %312 ], [ %279, %303 ], [ 1, %288 ], [ %279, %286 ], [ %279, %283 ], [ %279, %297 ], [ %279, %307 ], [ %279, %317 ], [ %279, %338 ], [ %279, %363 ], [ %279, %374 ], [ %279, %419 ], [ %279, %277 ], [ %279, %277 ], [ %279, %277 ], [ %279, %277 ], [ %279, %277 ], [ %279, %277 ], [ %279, %277 ], [ %279, %277 ], [ %279, %277 ], [ %279, %277 ], [ %279, %277 ], [ %279, %277 ], [ %279, %277 ], [ %279, %277 ], [ %279, %323 ], [ %279, %326 ], [ %279, %334 ], [ %279, %343 ], [ %279, %346 ], [ %279, %349 ], [ %279, %370 ]
  %427 = phi ptr [ %280, %411 ], [ %280, %401 ], [ %280, %381 ], [ %280, %369 ], [ %280, %366 ], [ %280, %362 ], [ %280, %359 ], [ %280, %333 ], [ %280, %322 ], [ %280, %313 ], [ %280, %312 ], [ %280, %303 ], [ %280, %288 ], [ %280, %286 ], [ %284, %283 ], [ %280, %297 ], [ %280, %307 ], [ %280, %317 ], [ %280, %338 ], [ %280, %363 ], [ %280, %374 ], [ %280, %419 ], [ %280, %277 ], [ %280, %277 ], [ %280, %277 ], [ %280, %277 ], [ %280, %277 ], [ %280, %277 ], [ %280, %277 ], [ %280, %277 ], [ %280, %277 ], [ %280, %277 ], [ %280, %277 ], [ %280, %277 ], [ %280, %277 ], [ %280, %277 ], [ %280, %323 ], [ %280, %326 ], [ %280, %334 ], [ %280, %343 ], [ %280, %346 ], [ %280, %349 ], [ %280, %370 ]
  %428 = phi i8 [ %282, %411 ], [ %282, %401 ], [ %282, %381 ], [ %282, %369 ], [ %282, %366 ], [ %282, %362 ], [ %282, %359 ], [ %282, %333 ], [ %282, %322 ], [ %282, %313 ], [ %282, %312 ], [ %282, %303 ], [ %282, %288 ], [ %282, %286 ], [ %285, %283 ], [ %282, %297 ], [ %282, %307 ], [ %282, %317 ], [ %282, %338 ], [ %282, %363 ], [ %282, %374 ], [ %282, %419 ], [ %282, %277 ], [ %282, %277 ], [ %282, %277 ], [ %282, %277 ], [ %282, %277 ], [ %282, %277 ], [ %282, %277 ], [ %282, %277 ], [ %282, %277 ], [ %282, %277 ], [ %282, %277 ], [ %282, %277 ], [ %282, %277 ], [ %282, %277 ], [ %282, %323 ], [ %282, %326 ], [ %282, %334 ], [ %282, %343 ], [ %282, %346 ], [ %282, %349 ], [ %282, %370 ]
  %429 = phi i32 [ %281, %411 ], [ %281, %401 ], [ %281, %381 ], [ %281, %369 ], [ %281, %366 ], [ %281, %362 ], [ %281, %359 ], [ %281, %333 ], [ %281, %322 ], [ %281, %313 ], [ %281, %312 ], [ %281, %303 ], [ %281, %288 ], [ %287, %286 ], [ %281, %283 ], [ %281, %297 ], [ %281, %307 ], [ %281, %317 ], [ %281, %338 ], [ %281, %363 ], [ %281, %374 ], [ %281, %419 ], [ %281, %277 ], [ %281, %277 ], [ %281, %277 ], [ %281, %277 ], [ %281, %277 ], [ %281, %277 ], [ %281, %277 ], [ %281, %277 ], [ %281, %277 ], [ %281, %277 ], [ %281, %277 ], [ %281, %277 ], [ %281, %277 ], [ %281, %277 ], [ %281, %323 ], [ %281, %326 ], [ %281, %334 ], [ %281, %343 ], [ %281, %346 ], [ %281, %349 ], [ %281, %370 ]
  %430 = icmp eq i8 %428, 89
  %431 = select i1 %430, i64 2, i64 1, !prof !298
  %432 = getelementptr inbounds i8, ptr %427, i64 %431
  %433 = icmp eq i8 %428, 44
  br i1 %433, label %434, label %277, !prof !299, !llvm.loop !300

434:                                              ; preds = %277, %424
  %435 = phi i32 [ %425, %424 ], [ %278, %277 ]
  %436 = phi i32 [ %426, %424 ], [ %279, %277 ]
  %437 = phi ptr [ %432, %424 ], [ %280, %277 ]
  %438 = phi i32 [ %429, %424 ], [ %281, %277 ]
  store ptr %437, ptr %28, align 8, !tbaa !89
  %439 = load i32, ptr %31, align 8
  %440 = and i32 %439, 65535
  %441 = icmp eq i32 %440, 37
  br i1 %441, label %442, label %586, !prof !301

442:                                              ; preds = %434
  %443 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %444 = load i32, ptr %443, align 8, !tbaa !100
  %445 = icmp ugt i32 %444, 52
  br i1 %445, label %446, label %586, !prof !302

446:                                              ; preds = %442
  %447 = load i32, ptr %34, align 4, !tbaa !104
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %631, label %449, !prof !303

449:                                              ; preds = %446
  %450 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %25
  %451 = load ptr, ptr %450, align 8, !tbaa !89
  %452 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %453 = icmp sgt i32 %452, 0
  br i1 %453, label %454, label %505, !prof !304

454:                                              ; preds = %449
  %455 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %25
  %456 = zext i32 %33 to i64
  %457 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %456
  %458 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_in_cost, i64 0, i64 %456
  %459 = zext i32 %447 to i64
  %460 = zext i32 %33 to i64
  %461 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %460
  %462 = getelementptr inbounds [87 x ptr], ptr @ira_may_move_out_cost, i64 0, i64 %460
  %463 = zext i32 %447 to i64
  br label %464

464:                                              ; preds = %454, %495
  %465 = phi i64 [ 0, %454 ], [ %501, %495 ]
  %466 = load ptr, ptr @cost_classes, align 8, !tbaa !89
  %467 = getelementptr inbounds i32, ptr %466, i64 %465
  %468 = load i32, ptr %467, align 4, !tbaa !104
  %469 = load i32, ptr %455, align 4, !tbaa !104
  %470 = icmp eq i32 %469, 1
  br i1 %470, label %481, label %471, !prof !305

471:                                              ; preds = %464
  %472 = load ptr, ptr %457, align 8, !tbaa !89
  %473 = icmp eq ptr %472, null
  br i1 %473, label %474, label %475, !prof !306

474:                                              ; preds = %471
  tail call void @ira_init_register_move_cost(i32 noundef %33) #18
  br label %475

475:                                              ; preds = %471, %474
  %476 = load ptr, ptr %458, align 8, !tbaa !89
  %477 = zext i32 %468 to i64
  %478 = getelementptr inbounds [27 x i16], ptr %476, i64 %477, i64 %459
  %479 = load i16, ptr %478, align 2, !tbaa !139
  %480 = zext i16 %479 to i32
  br label %481

481:                                              ; preds = %464, %475
  %482 = phi i32 [ %480, %475 ], [ 0, %464 ]
  %483 = load i32, ptr %455, align 4, !tbaa !104
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %495, label %485, !prof !307

485:                                              ; preds = %481
  %486 = load ptr, ptr %461, align 8, !tbaa !89
  %487 = icmp eq ptr %486, null
  br i1 %487, label %488, label %489, !prof !308

488:                                              ; preds = %485
  tail call void @ira_init_register_move_cost(i32 noundef %33) #18
  br label %489

489:                                              ; preds = %485, %488
  %490 = load ptr, ptr %462, align 8, !tbaa !89
  %491 = zext i32 %468 to i64
  %492 = getelementptr inbounds [27 x i16], ptr %490, i64 %463, i64 %491
  %493 = load i16, ptr %492, align 2, !tbaa !139
  %494 = zext i16 %493 to i32
  br label %495

495:                                              ; preds = %481, %489
  %496 = phi i32 [ %494, %489 ], [ 0, %481 ]
  %497 = add nuw nsw i32 %496, %482
  %498 = load i32, ptr @frequency, align 4, !tbaa !104
  %499 = mul nsw i32 %497, %498
  %500 = getelementptr inbounds %struct.costs, ptr %451, i64 0, i32 1, i64 %465
  store i32 %499, ptr %500, align 4, !tbaa !104
  %501 = add nuw nsw i64 %465, 1
  %502 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %503 = sext i32 %502 to i64
  %504 = icmp slt i64 %501, %503
  br i1 %504, label %464, label %505, !prof !309, !llvm.loop !310

505:                                              ; preds = %495, %449
  %506 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %25
  %507 = load i32, ptr %506, align 4, !tbaa !104
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %515, label %509, !prof !311

509:                                              ; preds = %505
  %510 = zext i32 %33 to i64
  %511 = zext i32 %447 to i64
  %512 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %510, i64 %511
  %513 = load i16, ptr %512, align 4, !tbaa !139
  %514 = sext i16 %513 to i32
  br label %515

515:                                              ; preds = %505, %509
  %516 = phi i32 [ %514, %509 ], [ 0, %505 ]
  %517 = icmp eq i32 %507, 1
  br i1 %517, label %524, label %518, !prof !312

518:                                              ; preds = %515
  %519 = zext i32 %33 to i64
  %520 = zext i32 %447 to i64
  %521 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %519, i64 %520, i64 1
  %522 = load i16, ptr %521, align 2, !tbaa !139
  %523 = sext i16 %522 to i32
  br label %524

524:                                              ; preds = %515, %518
  %525 = phi i32 [ %523, %518 ], [ 0, %515 ]
  %526 = add nsw i32 %525, %516
  %527 = load i32, ptr %35, align 4, !tbaa !104
  %528 = sub i32 %526, %527
  %529 = load i32, ptr @frequency, align 4, !tbaa !104
  %530 = mul nsw i32 %528, %529
  store i32 %530, ptr %451, align 4, !tbaa !109
  br i1 %18, label %631, label %531, !prof !313

531:                                              ; preds = %524
  %532 = load i1, ptr @allocno_p, align 1
  br i1 %532, label %533, label %539, !prof !314

533:                                              ; preds = %531
  %534 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !89
  %535 = load i32, ptr %443, align 8, !tbaa !100
  %536 = zext i32 %535 to i64
  %537 = getelementptr inbounds ptr, ptr %534, i64 %536
  %538 = load ptr, ptr %537, align 8, !tbaa !89
  br label %539

539:                                              ; preds = %531, %533
  %540 = phi ptr [ %538, %533 ], [ %443, %531 ]
  %541 = load i32, ptr %540, align 8, !tbaa !100
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, ptr %5, i64 %542
  %544 = load i32, ptr %543, align 4, !tbaa !104
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %568, !prof !315

546:                                              ; preds = %539
  %547 = load i32, ptr %506, align 4, !tbaa !104
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %555, label %549

549:                                              ; preds = %546
  %550 = zext i32 %33 to i64
  %551 = zext i32 %447 to i64
  %552 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %550, i64 %551
  %553 = load i16, ptr %552, align 4, !tbaa !139
  %554 = sext i16 %553 to i32
  br label %555

555:                                              ; preds = %546, %549
  %556 = phi i32 [ %554, %549 ], [ 0, %546 ]
  %557 = icmp eq i32 %547, 1
  br i1 %557, label %564, label %558

558:                                              ; preds = %555
  %559 = zext i32 %33 to i64
  %560 = zext i32 %447 to i64
  %561 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %559, i64 %560, i64 1
  %562 = load i16, ptr %561, align 2, !tbaa !139
  %563 = sext i16 %562 to i32
  br label %564

564:                                              ; preds = %555, %558
  %565 = phi i32 [ %563, %558 ], [ 0, %555 ]
  %566 = add i32 %556, %438
  %567 = add i32 %566, %565
  br label %631

568:                                              ; preds = %539
  %569 = zext i32 %544 to i64
  %570 = zext i32 %447 to i64
  %571 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_intersect, i64 0, i64 %569, i64 %570
  %572 = load i32, ptr %571, align 4, !tbaa !104
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %631, !prof !315

574:                                              ; preds = %568
  %575 = zext i32 %33 to i64
  %576 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %575
  %577 = load ptr, ptr %576, align 8, !tbaa !89
  %578 = icmp eq ptr %577, null
  br i1 %578, label %579, label %580

579:                                              ; preds = %574
  tail call void @ira_init_register_move_cost(i32 noundef %33) #18
  br label %580

580:                                              ; preds = %574, %579
  %581 = load ptr, ptr %576, align 8, !tbaa !89
  %582 = getelementptr inbounds [27 x i16], ptr %581, i64 %569, i64 %570
  %583 = load i16, ptr %582, align 2, !tbaa !139
  %584 = zext i16 %583 to i32
  %585 = add nsw i32 %438, %584
  br label %631

586:                                              ; preds = %442, %434
  %587 = icmp eq i32 %435, 0
  br i1 %587, label %588, label %631, !prof !316

588:                                              ; preds = %586
  br i1 %441, label %589, label %595, !prof !317

589:                                              ; preds = %588
  %590 = load i32, ptr %34, align 4, !tbaa !104
  %591 = lshr i32 %439, 16
  %592 = and i32 %591, 255
  %593 = tail call i32 @reg_fits_class_p(ptr noundef %31, i32 noundef %590, i32 noundef 0, i32 noundef %592) #18
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %595, label %631, !prof !318

595:                                              ; preds = %589, %588
  %596 = load i32, ptr %34, align 4, !tbaa !104
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %612, label %598, !prof !319

598:                                              ; preds = %595
  %599 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %25
  %600 = load i32, ptr %599, align 4, !tbaa !104
  %601 = icmp eq i32 %600, 1
  br i1 %601, label %605, label %602, !prof !320

602:                                              ; preds = %598
  %603 = tail call fastcc i32 @copy_cost(ptr noundef %31, i32 noundef %33, i32 noundef %596, i8 noundef zeroext 1, ptr noundef null)
  %604 = add nsw i32 %603, %438
  br label %605

605:                                              ; preds = %602, %598
  %606 = phi i32 [ %604, %602 ], [ %438, %598 ]
  %607 = load i32, ptr %599, align 4, !tbaa !104
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %631, label %609, !prof !321

609:                                              ; preds = %605
  %610 = tail call fastcc i32 @copy_cost(ptr noundef %31, i32 noundef %33, i32 noundef %596, i8 noundef zeroext 0, ptr noundef null)
  %611 = add nsw i32 %610, %606
  br label %631

612:                                              ; preds = %595
  %613 = load i32, ptr %31, align 8
  %614 = and i32 %613, 65535
  %615 = zext nneg i32 %614 to i64
  %616 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %615
  %617 = load i32, ptr %616, align 4, !tbaa !104
  %618 = icmp eq i32 %617, 9
  br i1 %618, label %619, label %631, !prof !322

619:                                              ; preds = %612
  %620 = icmp eq i32 %436, 0
  br i1 %620, label %621, label %624, !prof !323

621:                                              ; preds = %619
  %622 = load i32, ptr %35, align 4, !tbaa !104
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %631, label %624, !prof !324

624:                                              ; preds = %621, %619
  %625 = zext i32 %33 to i64
  %626 = zext nneg i32 %596 to i64
  %627 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %625, i64 %626, i64 1
  %628 = load i16, ptr %627, align 2, !tbaa !139
  %629 = sext i16 %628 to i32
  %630 = add nsw i32 %438, %629
  br label %631

631:                                              ; preds = %609, %605, %624, %586, %589, %446, %564, %580, %568, %524, %621, %612, %38, %42, %46, %271
  %632 = phi i32 [ %263, %271 ], [ %27, %46 ], [ %27, %42 ], [ %27, %38 ], [ %438, %586 ], [ %438, %589 ], [ %611, %609 ], [ %606, %605 ], [ %630, %624 ], [ %438, %446 ], [ %438, %524 ], [ %567, %564 ], [ %585, %580 ], [ %438, %568 ], [ %438, %621 ], [ %438, %612 ]
  %633 = phi i32 [ %26, %271 ], [ %26, %46 ], [ %26, %42 ], [ %26, %38 ], [ %276, %586 ], [ %276, %589 ], [ %276, %609 ], [ %276, %605 ], [ %276, %624 ], [ 1, %446 ], [ %276, %524 ], [ %276, %564 ], [ %276, %580 ], [ %276, %568 ], [ 1, %621 ], [ 1, %612 ]
  %634 = add nuw nsw i64 %25, 1
  %635 = icmp eq i64 %634, %20
  br i1 %635, label %636, label %24, !prof !325, !llvm.loop !326

636:                                              ; preds = %631, %22
  %637 = phi i32 [ 0, %22 ], [ %632, %631 ]
  %638 = phi i32 [ 0, %22 ], [ %633, %631 ]
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %687, !prof !327

640:                                              ; preds = %636
  %641 = load i32, ptr @frequency, align 4, !tbaa !104
  %642 = mul nsw i32 %641, %637
  br i1 %19, label %643, label %687, !prof !328

643:                                              ; preds = %640
  %644 = load i32, ptr @cost_classes_num, align 4
  br label %645

645:                                              ; preds = %643, %684
  %646 = phi i64 [ 0, %643 ], [ %685, %684 ]
  %647 = getelementptr inbounds ptr, ptr @recog_data, i64 %646
  %648 = load ptr, ptr %647, align 8, !tbaa !89
  %649 = load i32, ptr %648, align 8
  %650 = and i32 %649, 65535
  %651 = icmp eq i32 %650, 37
  br i1 %651, label %652, label %684, !prof !329

652:                                              ; preds = %645
  %653 = getelementptr inbounds %struct.rtx_def, ptr %648, i64 0, i32 1
  %654 = load i32, ptr %653, align 8, !tbaa !100
  %655 = icmp ugt i32 %654, 52
  br i1 %655, label %656, label %684, !prof !330

656:                                              ; preds = %652
  %657 = icmp sgt i32 %644, 0
  %658 = getelementptr inbounds ptr, ptr @op_costs, i64 %646
  %659 = load ptr, ptr %658, align 8, !tbaa !89
  %660 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %646
  %661 = load ptr, ptr %660, align 8, !tbaa !89
  %662 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %646
  %663 = load i32, ptr %662, align 4, !tbaa !104
  %664 = icmp eq i32 %663, 2
  %665 = load i32, ptr %659, align 4, !tbaa !109
  %666 = load i32, ptr %661, align 4, !tbaa !109
  %667 = add nsw i32 %666, %642
  %668 = zext i1 %664 to i32
  %669 = shl i32 %667, %668
  %670 = tail call i32 @llvm.smin.i32(i32 %665, i32 %669)
  store i32 %670, ptr %659, align 4, !tbaa !109
  br i1 %657, label %671, label %684, !prof !331

671:                                              ; preds = %656
  %672 = zext nneg i32 %644 to i64
  br label %673

673:                                              ; preds = %671, %673
  %674 = phi i64 [ 0, %671 ], [ %682, %673 ]
  %675 = getelementptr inbounds %struct.costs, ptr %659, i64 0, i32 1, i64 %674
  %676 = load i32, ptr %675, align 4, !tbaa !104
  %677 = getelementptr inbounds %struct.costs, ptr %661, i64 0, i32 1, i64 %674
  %678 = load i32, ptr %677, align 4, !tbaa !104
  %679 = add nsw i32 %678, %642
  %680 = shl i32 %679, %668
  %681 = tail call i32 @llvm.smin.i32(i32 %676, i32 %680)
  store i32 %681, ptr %675, align 4, !tbaa !104
  %682 = add nuw nsw i64 %674, 1
  %683 = icmp eq i64 %682, %672
  br i1 %683, label %684, label %673, !prof !332, !llvm.loop !333

684:                                              ; preds = %673, %656, %645, %652
  %685 = add nuw nsw i64 %646, 1
  %686 = icmp eq i64 %685, %21
  br i1 %686, label %687, label %645, !prof !334, !llvm.loop !335

687:                                              ; preds = %684, %640, %636
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #18
  %688 = add nuw nsw i32 %23, 1
  %689 = icmp eq i32 %688, %0
  br i1 %689, label %690, label %22, !prof !336, !llvm.loop !337

690:                                              ; preds = %687, %14
  %691 = load i1, ptr @allocno_p, align 1
  %692 = icmp sgt i32 %1, 0
  %693 = and i1 %691, %692
  br i1 %693, label %694, label %725, !prof !338

694:                                              ; preds = %690
  %695 = load ptr, ptr @ira_curr_regno_allocno_map, align 8
  %696 = zext i32 %1 to i64
  br label %697

697:                                              ; preds = %694, %722
  %698 = phi i64 [ 0, %694 ], [ %723, %722 ]
  %699 = getelementptr inbounds ptr, ptr @recog_data, i64 %698
  %700 = load ptr, ptr %699, align 8, !tbaa !89
  %701 = load i32, ptr %700, align 8
  %702 = and i32 %701, 65535
  %703 = icmp eq i32 %702, 37
  br i1 %703, label %704, label %722, !prof !339

704:                                              ; preds = %697
  %705 = getelementptr inbounds %struct.rtx_def, ptr %700, i64 0, i32 1
  %706 = load i32, ptr %705, align 8, !tbaa !100
  %707 = icmp ult i32 %706, 53
  br i1 %707, label %722, label %708, !prof !340

708:                                              ; preds = %704
  %709 = zext i32 %706 to i64
  %710 = getelementptr inbounds ptr, ptr %695, i64 %709
  %711 = load ptr, ptr %710, align 8, !tbaa !89
  %712 = getelementptr inbounds %struct.ira_allocno, ptr %711, i64 0, i32 31
  %713 = load i16, ptr %712, align 4
  %714 = and i16 %713, 64
  %715 = icmp eq i16 %714, 0
  br i1 %715, label %716, label %722, !prof !341

716:                                              ; preds = %708
  %717 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %698
  %718 = load i32, ptr %717, align 4, !tbaa !104
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %720, label %722, !prof !342

720:                                              ; preds = %716
  %721 = or disjoint i16 %713, 64
  store i16 %721, ptr %712, align 4
  br label %722

722:                                              ; preds = %708, %716, %720, %697, %704
  %723 = add nuw nsw i64 %698, 1
  %724 = icmp eq i64 %723, %696
  br i1 %724, label %725, label %697, !prof !343, !llvm.loop !344

725:                                              ; preds = %722, %690
  %726 = load i32, ptr %4, align 8
  %727 = and i32 %726, 65535
  %728 = add nsw i32 %727, -7
  %729 = icmp ult i32 %728, 4
  br i1 %729, label %730, label %738, !prof !345

730:                                              ; preds = %725
  %731 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %732 = load ptr, ptr %731, align 8, !tbaa !100
  %733 = load i32, ptr %732, align 8
  %734 = and i32 %733, 65535
  %735 = icmp eq i32 %734, 23
  br i1 %735, label %738, label %736, !prof !346

736:                                              ; preds = %730
  %737 = tail call ptr @single_set_2(ptr noundef nonnull %4, ptr noundef nonnull %732) #18
  br label %738

738:                                              ; preds = %725, %730, %736
  %739 = phi ptr [ %737, %736 ], [ null, %725 ], [ %732, %730 ]
  %740 = icmp eq ptr %739, null
  br i1 %740, label %865, label %741, !prof !347

741:                                              ; preds = %738
  %742 = load ptr, ptr @recog_data, align 8, !tbaa !89
  %743 = getelementptr inbounds %struct.rtx_def, ptr %739, i64 0, i32 1
  %744 = load ptr, ptr %743, align 8, !tbaa !100
  %745 = icmp eq ptr %742, %744
  br i1 %745, label %746, label %865, !prof !348

746:                                              ; preds = %741
  %747 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !89
  %748 = getelementptr inbounds %struct.rtx_def, ptr %739, i64 0, i32 1, i32 0, i32 0, i64 1
  %749 = load ptr, ptr %748, align 8, !tbaa !100
  %750 = icmp eq ptr %747, %749
  br i1 %750, label %751, label %865, !prof !349

751:                                              ; preds = %746
  %752 = load i32, ptr %742, align 8
  %753 = and i32 %752, 65535
  %754 = icmp eq i32 %753, 37
  br i1 %754, label %755, label %865, !prof !350

755:                                              ; preds = %751
  %756 = load i32, ptr %747, align 8
  %757 = and i32 %756, 65535
  %758 = icmp eq i32 %757, 37
  br i1 %758, label %759, label %865, !prof !351

759:                                              ; preds = %755
  %760 = getelementptr inbounds %struct.rtx_def, ptr %747, i64 0, i32 1
  %761 = load i32, ptr %760, align 8, !tbaa !100
  %762 = tail call ptr @find_regno_note(ptr noundef nonnull %4, i32 noundef 1, i32 noundef %761) #18
  %763 = icmp eq ptr %762, null
  br i1 %763, label %865, label %764, !prof !352

764:                                              ; preds = %759, %862
  %765 = phi i64 [ %863, %862 ], [ 0, %759 ]
  %766 = getelementptr inbounds ptr, ptr @recog_data, i64 %765
  %767 = load ptr, ptr %766, align 8, !tbaa !89
  %768 = getelementptr inbounds %struct.rtx_def, ptr %767, i64 0, i32 1
  %769 = load i32, ptr %768, align 8, !tbaa !100
  %770 = icmp ugt i32 %769, 52
  br i1 %770, label %771, label %862, !prof !353

771:                                              ; preds = %764
  %772 = and i64 %765, 4294967295
  %773 = xor i64 %772, 1
  %774 = getelementptr inbounds ptr, ptr @recog_data, i64 %773
  %775 = load ptr, ptr %774, align 8, !tbaa !89
  %776 = getelementptr inbounds %struct.rtx_def, ptr %775, i64 0, i32 1
  %777 = load i32, ptr %776, align 8, !tbaa !100
  %778 = icmp ult i32 %777, 53
  %779 = load i32, ptr @cost_classes_num, align 4
  %780 = icmp sgt i32 %779, 0
  %781 = select i1 %778, i1 %780, i1 false
  br i1 %781, label %782, label %862, !prof !354

782:                                              ; preds = %771
  %783 = load i32, ptr %775, align 8
  %784 = lshr i32 %783, 16
  %785 = and i32 %784, 255
  %786 = zext nneg i32 %777 to i64
  %787 = shl nuw nsw i64 1, %786
  %788 = icmp eq i32 %785, 40
  %789 = zext nneg i32 %785 to i64
  %790 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %789
  %791 = getelementptr inbounds ptr, ptr @op_costs, i64 %765
  br label %792

792:                                              ; preds = %782, %857
  %793 = phi i64 [ 0, %782 ], [ %858, %857 ]
  %794 = load ptr, ptr @cost_classes, align 8, !tbaa !89
  %795 = getelementptr inbounds i32, ptr %794, i64 %793
  %796 = load i32, ptr %795, align 4, !tbaa !104
  %797 = zext i32 %796 to i64
  %798 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %797
  %799 = load i64, ptr %798, align 8, !tbaa !140
  %800 = and i64 %799, %787
  %801 = icmp eq i64 %800, 0
  br i1 %801, label %857, label %802, !prof !355

802:                                              ; preds = %792
  %803 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %797
  %804 = load i32, ptr %803, align 4, !tbaa !104
  %805 = tail call i32 @reg_classes_intersect_p(i32 noundef %796, i32 noundef 13) #18
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %807, label %814, !prof !356

807:                                              ; preds = %802
  %808 = zext nneg i32 %785 to i64
  %809 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %808
  %810 = load i8, ptr %809, align 1, !tbaa !100
  %811 = and i8 %810, -2
  %812 = icmp eq i8 %811, 10
  %813 = select i1 %812, i32 2, i32 1
  br label %822

814:                                              ; preds = %802
  br i1 %788, label %818, label %815, !prof !356

815:                                              ; preds = %814
  %816 = load i8, ptr %790, align 1, !tbaa !100
  %817 = zext i8 %816 to i32
  br label %818

818:                                              ; preds = %814, %815
  %819 = phi i32 [ %817, %815 ], [ 12, %814 ]
  %820 = add nuw nsw i32 %819, 3
  %821 = lshr i32 %820, 2
  br label %822

822:                                              ; preds = %818, %807
  %823 = phi i32 [ %813, %807 ], [ %821, %818 ]
  %824 = icmp eq i32 %804, %823
  br i1 %824, label %825, label %857, !prof !357

825:                                              ; preds = %822
  %826 = load i32, ptr %803, align 4, !tbaa !104
  %827 = icmp eq i32 %826, 1
  br i1 %827, label %852, label %828, !prof !358

828:                                              ; preds = %825
  %829 = zext nneg i32 %785 to i64
  %830 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %786, i64 %829
  %831 = load i8, ptr %830, align 1, !tbaa !100
  %832 = zext i8 %831 to i32
  %833 = icmp eq i8 %831, 0
  br i1 %833, label %849, label %834

834:                                              ; preds = %828
  %835 = zext i32 %777 to i64
  %836 = load i64, ptr %798, align 8, !tbaa !140
  %837 = zext i8 %831 to i64
  br label %838

838:                                              ; preds = %834, %844
  %839 = phi i64 [ 0, %834 ], [ %845, %844 ]
  %840 = add nuw nsw i64 %839, %835
  %841 = shl nuw i64 1, %840
  %842 = and i64 %836, %841
  %843 = icmp eq i64 %842, 0
  br i1 %843, label %847, label %844

844:                                              ; preds = %838
  %845 = add nuw nsw i64 %839, 1
  %846 = icmp eq i64 %845, %837
  br i1 %846, label %849, label %838, !llvm.loop !359

847:                                              ; preds = %838
  %848 = trunc i64 %839 to i32
  br label %849

849:                                              ; preds = %847, %844, %828
  %850 = phi i32 [ 0, %828 ], [ %848, %847 ], [ %832, %844 ]
  %851 = icmp eq i32 %850, %832
  br i1 %851, label %852, label %857

852:                                              ; preds = %849, %825
  %853 = load i32, ptr @frequency, align 4, !tbaa !104
  %854 = sub nsw i32 0, %853
  %855 = load ptr, ptr %791, align 8, !tbaa !89
  %856 = getelementptr inbounds %struct.costs, ptr %855, i64 0, i32 1, i64 %793
  store i32 %854, ptr %856, align 4, !tbaa !104
  br label %857

857:                                              ; preds = %852, %792, %822, %849
  %858 = add nuw nsw i64 %793, 1
  %859 = load i32, ptr @cost_classes_num, align 4, !tbaa !104
  %860 = sext i32 %859 to i64
  %861 = icmp slt i64 %858, %860
  br i1 %861, label %792, label %862, !prof !360, !llvm.loop !361

862:                                              ; preds = %857, %771, %764
  %863 = add nuw nsw i64 %765, 1
  %864 = icmp eq i64 %765, 0
  br i1 %864, label %764, label %865, !prof !362, !llvm.loop !363

865:                                              ; preds = %862, %759, %755, %751, %746, %741, %738
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #18
  ret void
}

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @copy_cost(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #14 !prof !399 !PGOFuncName !400 {
  %6 = alloca %struct.secondary_reload_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 38
  br i1 %9, label %75, label %10, !prof !401

10:                                               ; preds = %5
  %11 = tail call i32 @ix86_preferred_reload_class(ptr noundef nonnull %0, i32 noundef %2) #18
  %12 = getelementptr inbounds %struct.secondary_reload_info, ptr %6, i64 0, i32 2
  store ptr %4, ptr %12, align 8, !tbaa !402
  %13 = getelementptr inbounds %struct.secondary_reload_info, ptr %6, i64 0, i32 1
  store i32 0, ptr %13, align 4, !tbaa !404
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !405
  %15 = call i32 %14(i8 noundef zeroext %3, ptr noundef nonnull %0, i32 noundef %11, i32 noundef %1, ptr noundef nonnull %6) #18, !prof !417
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %34, label %17, !prof !418

17:                                               ; preds = %10
  %18 = zext i32 %1 to i64
  %19 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @init_move_cost(i32 noundef %1) #18
  br label %23

23:                                               ; preds = %22, %17
  %24 = load ptr, ptr %19, align 8, !tbaa !89
  %25 = zext i32 %15 to i64
  %26 = zext i32 %11 to i64
  %27 = getelementptr inbounds [27 x i16], ptr %24, i64 %25, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !139
  %29 = zext i16 %28 to i32
  %30 = load i32, ptr %13, align 4, !tbaa !404
  %31 = add nsw i32 %30, %29
  %32 = call fastcc i32 @copy_cost(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %15, i8 noundef zeroext %3, ptr noundef nonnull %6)
  %33 = add nsw i32 %31, %32
  br label %75

34:                                               ; preds = %10
  %35 = load i32, ptr %0, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 43
  %38 = icmp eq i32 %11, 0
  %39 = or i1 %38, %37
  br i1 %39, label %40, label %50, !prof !419

40:                                               ; preds = %34
  %41 = load i32, ptr %13, align 4, !tbaa !404
  %42 = zext i32 %1 to i64
  %43 = zext i32 %11 to i64
  %44 = icmp ne i8 %3, 0
  %45 = zext i1 %44 to i64
  %46 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %42, i64 %43, i64 %45
  %47 = load i16, ptr %46, align 2, !tbaa !139
  %48 = sext i16 %47 to i32
  %49 = add nsw i32 %41, %48
  br label %75

50:                                               ; preds = %34
  %51 = icmp eq i32 %36, 37
  br i1 %51, label %52, label %72, !prof !420

52:                                               ; preds = %50
  %53 = zext i32 %1 to i64
  %54 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !89
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  call void @init_move_cost(i32 noundef %1) #18
  br label %58

58:                                               ; preds = %57, %52
  %59 = load i32, ptr %13, align 4, !tbaa !404
  %60 = load ptr, ptr %54, align 8, !tbaa !89
  %61 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !100
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !104
  %66 = zext i32 %65 to i64
  %67 = zext i32 %11 to i64
  %68 = getelementptr inbounds [27 x i16], ptr %60, i64 %66, i64 %67
  %69 = load i16, ptr %68, align 2, !tbaa !139
  %70 = zext i16 %69 to i32
  %71 = add nsw i32 %59, %70
  br label %75

72:                                               ; preds = %50
  %73 = load i32, ptr %13, align 4, !tbaa !404
  %74 = add nsw i32 %73, 4
  br label %75

75:                                               ; preds = %5, %72, %58, %40, %23
  %76 = phi i32 [ %33, %23 ], [ %49, %40 ], [ %71, %58 ], [ %74, %72 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  ret i32 %76
}

declare i32 @address_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @constraint_satisfied_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @legitimate_pic_operand_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

declare i32 @reg_fits_class_p(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ix86_preferred_reload_class(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @init_move_cost(i32 noundef) local_unnamed_addr #3

declare void @ira_set_allocno_cover_class(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ira_allocate_cost_vector(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @process_bb_node_for_hard_reg_moves(ptr nocapture noundef readonly %0) #14 !prof !421 !PGOFuncName !422 {
  %2 = load ptr, ptr %0, align 8, !tbaa !194
  %3 = icmp eq ptr %2, null
  br i1 %3, label %171, label %4, !prof !423

4:                                                ; preds = %1
  %5 = load i32, ptr @optimize_size, align 4, !tbaa !104
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25, !prof !424

7:                                                ; preds = %4
  %8 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !104
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !prof !424

10:                                               ; preds = %7
  %11 = load ptr, ptr @cfun, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !156
  %14 = load ptr, ptr %13, align 8, !tbaa !158
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !226
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %10, %7
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !227
  %21 = add i32 %20, 9
  %22 = icmp ult i32 %21, 19
  br i1 %22, label %25, label %23, !prof !425

23:                                               ; preds = %18
  %24 = sdiv i32 %20, 10
  br label %25

25:                                               ; preds = %10, %23, %18, %4
  %26 = phi i32 [ 1000, %4 ], [ %24, %23 ], [ 1, %18 ], [ 1000, %10 ]
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 1)
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !100
  %30 = load ptr, ptr %29, align 8, !tbaa !100
  %31 = icmp eq ptr %30, null
  br i1 %31, label %171, label %32, !prof !229

32:                                               ; preds = %25, %167
  %33 = phi ptr [ %169, %167 ], [ %30, %25 ]
  %34 = load ptr, ptr %28, align 8, !tbaa !100
  %35 = getelementptr inbounds %struct.rtl_bb_info, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !230
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !100
  %39 = icmp eq ptr %33, %38
  br i1 %39, label %171, label %40, !prof !426

40:                                               ; preds = %32
  %41 = load i32, ptr %33, align 8
  %42 = and i32 %41, 65535
  %43 = add nsw i32 %42, -7
  %44 = icmp ult i32 %43, 4
  br i1 %44, label %45, label %167, !prof !427

45:                                               ; preds = %40
  switch i32 %42, label %54 [
    i32 7, label %167
    i32 8, label %46
    i32 9, label %46
    i32 10, label %46
  ], !prof !428

46:                                               ; preds = %45, %45, %45
  %47 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !100
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 23
  br i1 %51, label %54, label %52, !prof !429

52:                                               ; preds = %46
  %53 = tail call ptr @single_set_2(ptr noundef nonnull %33, ptr noundef nonnull %48) #18
  br label %54

54:                                               ; preds = %45, %46, %52
  %55 = phi ptr [ %53, %52 ], [ %48, %46 ], [ null, %45 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %167, label %57, !prof !430

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !100
  %60 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !100
  %62 = load i32, ptr %59, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 37
  br i1 %64, label %65, label %167, !prof !431

65:                                               ; preds = %57
  %66 = load i32, ptr %61, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 37
  br i1 %68, label %69, label %167, !prof !432

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !100
  %72 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !100
  %74 = icmp slt i32 %71, 53
  %75 = icmp sgt i32 %73, 52
  %76 = select i1 %74, i1 true, i1 %75, !prof !433
  br i1 %76, label %77, label %79, !prof !434

77:                                               ; preds = %69
  %78 = and i1 %74, %75
  br i1 %78, label %79, label %167, !prof !435

79:                                               ; preds = %77, %69
  %80 = phi i32 [ %71, %69 ], [ %73, %77 ]
  %81 = phi i32 [ %73, %69 ], [ %71, %77 ]
  %82 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !89
  %83 = zext nneg i32 %80 to i64
  %84 = getelementptr inbounds ptr, ptr %82, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !89
  %86 = getelementptr inbounds %struct.ira_allocno, ptr %85, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !135
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !140
  %91 = zext nneg i32 %81 to i64
  %92 = shl nuw i64 1, %91
  %93 = and i64 %90, %92
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %167, label %95, !prof !436

95:                                               ; preds = %79
  %96 = sext i32 %81 to i64
  %97 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %88, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !139
  %99 = sext i16 %98 to i64
  %100 = icmp slt i16 %98, 0
  br i1 %100, label %167, label %101, !prof !436

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.ira_allocno, ptr %85, i64 0, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !205
  %104 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %96
  %105 = load i32, ptr %104, align 4, !tbaa !104
  %106 = zext i32 %103 to i64
  %107 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !89
  %109 = icmp eq ptr %108, null
  br i1 %76, label %114, label %110, !prof !437

110:                                              ; preds = %101
  br i1 %109, label %111, label %112, !prof !438

111:                                              ; preds = %110
  tail call void @ira_init_register_move_cost(i32 noundef %103) #18
  br label %112

112:                                              ; preds = %110, %111
  %113 = zext i32 %105 to i64
  br label %118

114:                                              ; preds = %101
  br i1 %109, label %115, label %116, !prof !439

115:                                              ; preds = %114
  tail call void @ira_init_register_move_cost(i32 noundef %103) #18
  br label %116

116:                                              ; preds = %114, %115
  %117 = zext i32 %105 to i64
  br label %118

118:                                              ; preds = %116, %112
  %119 = phi i64 [ %117, %116 ], [ %88, %112 ]
  %120 = phi i64 [ %88, %116 ], [ %113, %112 ]
  %121 = load ptr, ptr %107, align 8, !tbaa !89
  %122 = getelementptr inbounds [27 x i16], ptr %121, i64 %120, i64 %119
  %123 = load i16, ptr %122, align 2, !tbaa !139
  %124 = zext i16 %123 to i32
  %125 = mul nsw i32 %27, %124
  %126 = getelementptr inbounds %struct.ira_allocno, ptr %85, i64 0, i32 33
  %127 = getelementptr inbounds %struct.ira_allocno, ptr %85, i64 0, i32 10
  %128 = load i32, ptr %127, align 4, !tbaa !193
  %129 = load ptr, ptr %126, align 8, !tbaa !89
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %143, !prof !436

131:                                              ; preds = %118
  %132 = tail call ptr @ira_allocate_cost_vector(i32 noundef %87) #18
  store ptr %132, ptr %126, align 8, !tbaa !89
  %133 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %88
  %134 = load i32, ptr %133, align 4, !tbaa !104
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = zext nneg i32 %134 to i64
  br label %138

138:                                              ; preds = %136, %138
  %139 = phi i64 [ 0, %136 ], [ %141, %138 ]
  %140 = getelementptr inbounds i32, ptr %132, i64 %139
  store i32 %128, ptr %140, align 4, !tbaa !104
  %141 = add nuw nsw i64 %139, 1
  %142 = icmp eq i64 %141, %137
  br i1 %142, label %143, label %138, !llvm.loop !211

143:                                              ; preds = %138, %131, %118
  %144 = getelementptr inbounds %struct.ira_allocno, ptr %85, i64 0, i32 35
  %145 = load ptr, ptr %144, align 8, !tbaa !89
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %155, !prof !440

147:                                              ; preds = %143
  %148 = tail call ptr @ira_allocate_cost_vector(i32 noundef %87) #18
  store ptr %148, ptr %144, align 8, !tbaa !89
  %149 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %88
  %150 = load i32, ptr %149, align 4, !tbaa !104
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %155, !prof !441

152:                                              ; preds = %147
  %153 = zext nneg i32 %150 to i64
  %154 = shl nuw nsw i64 %153, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %148, i8 0, i64 %154, i1 false), !tbaa !104
  br label %155

155:                                              ; preds = %152, %147, %143
  %156 = load ptr, ptr %126, align 8, !tbaa !137
  %157 = getelementptr inbounds i32, ptr %156, i64 %99
  %158 = load i32, ptr %157, align 4, !tbaa !104
  %159 = sub nsw i32 %158, %125
  store i32 %159, ptr %157, align 4, !tbaa !104
  %160 = load ptr, ptr %144, align 8, !tbaa !442
  %161 = getelementptr inbounds i32, ptr %160, i64 %99
  %162 = load i32, ptr %161, align 4, !tbaa !104
  %163 = sub nsw i32 %162, %125
  store i32 %163, ptr %161, align 4, !tbaa !104
  %164 = load i32, ptr %127, align 4, !tbaa !193
  %165 = load i32, ptr %157, align 4, !tbaa !104
  %166 = tail call i32 @llvm.smin.i32(i32 %164, i32 %165)
  store i32 %166, ptr %127, align 4, !tbaa !193
  br label %167

167:                                              ; preds = %45, %40, %95, %79, %77, %57, %65, %54, %155
  %168 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %169 = load ptr, ptr %168, align 8, !tbaa !100
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %32, !prof !372, !llvm.loop !443

171:                                              ; preds = %167, %32, %25, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!87}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!35 = !{ptr @ira_init_costs, ptr @free_ira_costs, i64 1}
!36 = !{ptr @ira_init_costs, ptr @xmalloc, i64 63}
!37 = !{ptr @free_ira_costs, ptr @free, i64 63}
!38 = !{ptr @ira_finish_costs_once, ptr @free_ira_costs, i64 1}
!39 = !{ptr @ira_costs, ptr @init_subregs_of_mode, i64 38}
!40 = !{ptr @ira_costs, ptr @ira_allocate, i64 152}
!41 = !{ptr @ira_costs, ptr @max_reg_num, i64 38}
!42 = !{ptr @ira_costs, ptr @find_costs_and_classes, i64 38}
!43 = !{ptr @ira_costs, ptr @ira_set_allocno_cover_class, i64 107433}
!44 = !{ptr @ira_costs, ptr @ira_allocate_cost_vector, i64 67513}
!45 = !{ptr @ira_costs, ptr @ira_traverse_loop_tree, i64 38}
!46 = !{ptr @ira_costs, ptr @ira_free, i64 152}
!47 = !{ptr @find_costs_and_classes, ptr @init_recog, i64 38}
!48 = !{ptr @find_costs_and_classes, ptr @resize_reg_info, i64 38}
!49 = !{ptr @find_costs_and_classes, ptr @ira_traverse_loop_tree, i64 76}
!50 = !{ptr @find_costs_and_classes, ptr @max_reg_num, i64 76}
!51 = !{ptr @find_costs_and_classes, ptr @invalid_mode_change_p, i64 4727046}
!52 = !{ptr @find_costs_and_classes, ptr @setup_reg_classes, i64 107433}
!53 = !{ptr @ira_tune_allocno_costs_and_cover_classes, ptr @ira_allocate_cost_vector, i64 361}
!54 = !{ptr @process_bb_node_for_costs, ptr @process_bb_for_costs, i64 311308}
!55 = !{ptr @process_bb_for_costs, ptr @single_set_2, i64 55526}
!56 = !{ptr @process_bb_for_costs, ptr @extract_insn, i64 1242284}
!57 = !{ptr @process_bb_for_costs, ptr @find_reg_note, i64 87375}
!58 = !{ptr @process_bb_for_costs, ptr @record_address_regs, i64 355641}
!59 = !{ptr @process_bb_for_costs, ptr @record_reg_classes, i64 15930}
!60 = !{ptr @process_bb_for_costs, ptr @rtx_equal_p, i64 32086}
!61 = !{ptr @process_bb_for_costs, ptr @copy_cost, i64 1096484}
!62 = !{ptr @process_bb_for_costs, ptr @address_operand, i64 478}
!63 = !{ptr @process_bb_for_costs, ptr @lookup_constraint, i64 2043366}
!64 = !{ptr @process_bb_for_costs, ptr @insn_const_int_ok_for_constraint, i64 3745}
!65 = !{ptr @process_bb_for_costs, ptr @regclass_for_constraint, i64 1111224}
!66 = !{ptr @process_bb_for_costs, ptr @constraint_satisfied_p, i64 928397}
!67 = !{ptr @process_bb_for_costs, ptr @ira_init_register_move_cost, i64 2}
!68 = !{ptr @process_bb_for_costs, ptr @reg_fits_class_p, i64 1558603}
!69 = !{ptr @process_bb_for_costs, ptr @find_regno_note, i64 131381}
!70 = !{ptr @process_bb_for_costs, ptr @reg_classes_intersect_p, i64 655939}
!71 = !{ptr @record_address_regs, ptr @record_address_regs, i64 1614}
!72 = !{ptr @record_reg_classes, ptr @rtx_equal_p, i64 413}
!73 = !{ptr @record_reg_classes, ptr @copy_cost, i64 14117}
!74 = !{ptr @record_reg_classes, ptr @find_reg_note, i64 314}
!75 = !{ptr @record_reg_classes, ptr @address_operand, i64 6}
!76 = !{ptr @record_reg_classes, ptr @lookup_constraint, i64 26308}
!77 = !{ptr @record_reg_classes, ptr @insn_const_int_ok_for_constraint, i64 48}
!78 = !{ptr @record_reg_classes, ptr @regclass_for_constraint, i64 14307}
!79 = !{ptr @record_reg_classes, ptr @constraint_satisfied_p, i64 11953}
!80 = !{ptr @record_reg_classes, ptr @reg_fits_class_p, i64 20066}
!81 = !{ptr @record_reg_classes, ptr @single_set_2, i64 442}
!82 = !{ptr @record_reg_classes, ptr @find_regno_note, i64 1691}
!83 = !{ptr @record_reg_classes, ptr @reg_classes_intersect_p, i64 8445}
!84 = !{ptr @copy_cost, ptr @ix86_preferred_reload_class, i64 1115006}
!85 = !{ptr @process_bb_node_for_hard_reg_moves, ptr @single_set_2, i64 10616}
!86 = !{ptr @process_bb_node_for_hard_reg_moves, ptr @ira_allocate_cost_vector, i64 66329}
!87 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!88 = !{!"function_entry_count", i64 0}
!89 = !{!90, !90, i64 0}
!90 = !{!"any pointer", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = !{!94, !90, i64 8}
!94 = !{!"_IO_FILE", !95, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !90, i64 72, !90, i64 80, !90, i64 88, !90, i64 96, !90, i64 104, !95, i64 112, !95, i64 116, !96, i64 120, !97, i64 128, !91, i64 130, !91, i64 131, !90, i64 136, !96, i64 144, !90, i64 152, !90, i64 160, !90, i64 168, !90, i64 176, !96, i64 184, !95, i64 192, !91, i64 196}
!95 = !{!"int", !91, i64 0}
!96 = !{!"long", !91, i64 0}
!97 = !{!"short", !91, i64 0}
!98 = !{!94, !90, i64 16}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{!91, !91, i64 0}
!101 = !{!94, !90, i64 40}
!102 = !{!94, !90, i64 48}
!103 = !{!94, !95, i64 0}
!104 = !{!95, !95, i64 0}
!105 = distinct !{!105, !106, !107}
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !{!"function_entry_count", i64 1}
!109 = !{!110, !95, i64 0}
!110 = !{!"costs", !95, i64 0, !91, i64 4}
!111 = !{!"branch_weights", i32 127, i32 1}
!112 = !{!"branch_weights", i32 1921, i32 127}
!113 = distinct !{!113, !106, !107}
!114 = !{!"branch_weights", i32 1, i32 29}
!115 = distinct !{!115, !106, !107}
!116 = !{!"function_entry_count", i64 2}
!117 = !{!"ira-costs.c;free_ira_costs"}
!118 = !{!"branch_weights", i32 1, i32 1}
!119 = !{!"branch_weights", i32 30, i32 30}
!120 = !{!"branch_weights", i32 2, i32 58}
!121 = distinct !{!121, !106, !107}
!122 = !{!"function_entry_count", i64 38}
!123 = !{!"branch_weights", i32 151, i32 1}
!124 = !{!"branch_weights", i32 0, i32 1}
!125 = distinct !{!125, !106, !107}
!126 = !{!"branch_weights", i32 151, i32 429581}
!127 = !{!"branch_weights", i32 107433, i32 38}
!128 = !{!129, !95, i64 0}
!129 = !{!"ira_allocno", !95, i64 0, !95, i64 4, !95, i64 8, !95, i64 12, !90, i64 16, !90, i64 24, !90, i64 32, !95, i64 40, !95, i64 44, !95, i64 48, !95, i64 52, !95, i64 56, !95, i64 60, !95, i64 64, !95, i64 68, !90, i64 72, !90, i64 80, !90, i64 88, !90, i64 96, !90, i64 104, !90, i64 112, !95, i64 120, !95, i64 124, !90, i64 128, !95, i64 136, !95, i64 140, !96, i64 144, !96, i64 152, !95, i64 160, !95, i64 164, !95, i64 168, !95, i64 172, !95, i64 172, !95, i64 172, !95, i64 172, !95, i64 172, !95, i64 172, !95, i64 172, !95, i64 172, !95, i64 173, !95, i64 173, !95, i64 173, !95, i64 173, !90, i64 176, !90, i64 184, !90, i64 192, !90, i64 200, !90, i64 208, !95, i64 216, !95, i64 220, !90, i64 224, !90, i64 232, !95, i64 240}
!130 = !{!129, !95, i64 4}
!131 = !{!129, !95, i64 60}
!132 = !{!"branch_weights", i32 0, i32 107433}
!133 = distinct !{!133, !106, !107}
!134 = !{!129, !95, i64 220}
!135 = !{!129, !95, i64 48}
!136 = !{!"branch_weights", i32 39920, i32 67513}
!137 = !{!129, !90, i64 184}
!138 = !{!"branch_weights", i32 67512, i32 1}
!139 = !{!97, !97, i64 0}
!140 = !{!96, !96, i64 0}
!141 = !{!"branch_weights", i32 335420, i32 69658}
!142 = !{!"branch_weights", i32 0, i32 335420}
!143 = !{!"branch_weights", i32 337566, i32 67512}
!144 = distinct !{!144, !106, !107}
!145 = !{!"branch_weights", i32 0, i32 38}
!146 = !{!"ira-costs.c;init_costs"}
!147 = !{!"ira-costs.c;find_costs_and_classes"}
!148 = !{!"branch_weights", i32 38, i32 0}
!149 = distinct !{!149, !106, !107}
!150 = !{!"branch_weights", i32 1, i32 151}
!151 = !{!"branch_weights", i32 0, i32 76}
!152 = !{!"branch_weights", i32 2281, i32 151}
!153 = distinct !{!153, !106, !107}
!154 = !{!"VP", i32 1, i64 76, i64 513, i64 66, i64 257, i64 10}
!155 = !{!"branch_weights", i32 76, i32 0}
!156 = !{!157, !90, i64 8}
!157 = !{!"function", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !90, i64 72, !90, i64 80, !90, i64 88, !90, i64 96, !95, i64 104, !95, i64 108, !95, i64 112, !95, i64 116, !95, i64 120, !95, i64 124, !90, i64 128, !95, i64 136, !95, i64 137, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139}
!158 = !{!159, !90, i64 0}
!159 = !{!"control_flow_graph", !90, i64 0, !90, i64 8, !90, i64 16, !95, i64 24, !95, i64 28, !95, i64 32, !90, i64 40, !95, i64 48, !91, i64 52, !91, i64 60, !95, i64 68, !95, i64 72}
!160 = !{!161, !90, i64 56}
!161 = !{!"basic_block_def", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !91, i64 32, !90, i64 48, !90, i64 56, !91, i64 64, !96, i64 72, !95, i64 80, !95, i64 84, !95, i64 88, !95, i64 92, !95, i64 96}
!162 = !{!159, !90, i64 8}
!163 = distinct !{!163, !106, !107}
!164 = !{!"branch_weights", i32 38, i32 38}
!165 = !{!"branch_weights", i32 579976, i32 0}
!166 = !{!"branch_weights", i32 365110, i32 214866}
!167 = !{!"VP", i32 1, i64 214866, i64 65, i64 214866}
!168 = !{!"branch_weights", i32 1, i32 214865}
!169 = !{!"branch_weights", i32 214866, i32 0}
!170 = !{!129, !90, i64 32}
!171 = !{!172, !90, i64 48}
!172 = !{!"ira_loop_tree_node", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !95, i64 56, !91, i64 60, !90, i64 64, !91, i64 72, !91, i64 76, !90, i64 184, !90, i64 192, !90, i64 200, !90, i64 208}
!173 = !{!172, !90, i64 64}
!174 = !{!172, !90, i64 192}
!175 = distinct !{!175, !106, !107}
!176 = !{!"branch_weights", i32 214865, i32 1}
!177 = !{!"branch_weights", i32 214865, i32 3222991}
!178 = distinct !{!178, !106, !107}
!179 = distinct !{!179, !106, !107}
!180 = !{!"branch_weights", i32 1074330, i32 2363526}
!181 = !{!"branch_weights", i32 2363526, i32 0}
!182 = !{!"branch_weights", i32 215270, i32 2148256}
!183 = !{!"branch_weights", i32 807384, i32 1340872}
!184 = !{!"branch_weights", i32 1181763, i32 1181763}
!185 = !{!"branch_weights", i32 1181763, i32 0}
!186 = !{!"branch_weights", i32 537165, i32 644598}
!187 = !{!"branch_weights", i32 3222991, i32 214865}
!188 = distinct !{!188, !106, !107}
!189 = !{!"branch_weights", i32 0, i32 214866}
!190 = !{!"branch_weights", i32 107433, i32 107433}
!191 = !{!"branch_weights", i32 0, i32 2363526}
!192 = distinct !{!192, !106, !107}
!193 = !{!129, !95, i64 52}
!194 = !{!172, !90, i64 0}
!195 = !{!172, !90, i64 8}
!196 = distinct !{!196, !106, !107}
!197 = !{!"branch_weights", i32 1159801, i32 151}
!198 = distinct !{!198, !106, !107}
!199 = distinct !{!199, !106, !107}
!200 = distinct !{!200, !106, !107}
!201 = distinct !{!201, !106, !107}
!202 = distinct !{!202, !106, !107}
!203 = !{!"branch_weights", i32 153, i32 151}
!204 = distinct !{!204, !106, !107}
!205 = !{!129, !95, i64 8}
!206 = !{!129, !95, i64 168}
!207 = !{!"branch_weights", i32 106401, i32 1032}
!208 = !{!"branch_weights", i32 361, i32 671}
!209 = !{!"branch_weights", i32 360, i32 1}
!210 = !{!"branch_weights", i32 360, i32 1806}
!211 = distinct !{!211, !106, !107}
!212 = !{!"branch_weights", i32 1031, i32 1}
!213 = !{!"branch_weights", i32 6192, i32 3096}
!214 = !{!"branch_weights", i32 3096, i32 3096}
!215 = distinct !{!215, !106, !107}
!216 = !{!129, !95, i64 164}
!217 = !{!"branch_weights", i32 5161, i32 1031}
!218 = distinct !{!218, !106, !107}
!219 = distinct !{!219, !106, !107}
!220 = !{!"function_entry_count", i64 311384}
!221 = !{!"ira-costs.c;process_bb_node_for_costs"}
!222 = !{!"branch_weights", i32 76, i32 311308}
!223 = !{!"function_entry_count", i64 311308}
!224 = !{!"ira-costs.c;process_bb_for_costs"}
!225 = !{!"branch_weights", i32 311308, i32 0}
!226 = !{!161, !96, i64 72}
!227 = !{!161, !95, i64 88}
!228 = !{!"branch_weights", i32 262876, i32 48432}
!229 = !{!"branch_weights", i32 1, i32 247}
!230 = !{!231, !90, i64 8}
!231 = !{!"rtl_bb_info", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !95, i64 32}
!232 = !{!"branch_weights", i32 311246, i32 1787006}
!233 = !{!"branch_weights", i32 539654, i32 1247352}
!234 = !{!"branch_weights", i32 76, i32 1247276}
!235 = !{!"branch_weights", i32 1247276, i32 0}
!236 = !{!"branch_weights", i32 1226034, i32 21242}
!237 = !{!"branch_weights", i32 4708, i32 1242568}
!238 = !{!"branch_weights", i32 768494, i32 474074}
!239 = !{!"branch_weights", i32 63240, i32 705254}
!240 = !{!"branch_weights", i32 25242, i32 37998}
!241 = !{!"branch_weights", i32 37998, i32 0}
!242 = !{!"branch_weights", i32 18999, i32 18999}
!243 = !{!244, !91, i64 1086}
!244 = !{!"recog_data", !91, i64 0, !91, i64 240, !91, i64 480, !91, i64 720, !91, i64 840, !91, i64 960, !91, i64 1072, !91, i64 1086, !91, i64 1087, !91, i64 1088, !91, i64 1089, !90, i64 1120}
!245 = !{!"branch_weights", i32 1247275, i32 1}
!246 = !{!"VP", i32 1, i64 2628072, i64 65, i64 2628072}
!247 = !{!"branch_weights", i32 404, i32 2627668}
!248 = !{!"branch_weights", i32 318586, i32 2309486}
!249 = !{!"branch_weights", i32 486, i32 2309000}
!250 = !{!"branch_weights", i32 1380797, i32 1247275}
!251 = distinct !{!251, !106, !107}
!252 = !{!"branch_weights", i32 15994, i32 1364802}
!253 = !{!"branch_weights", i32 15993, i32 1}
!254 = !{!244, !91, i64 1088}
!255 = !{!"branch_weights", i32 133521, i32 1247275}
!256 = distinct !{!256, !106, !107}
!257 = !{!"branch_weights", i32 1263269, i32 1}
!258 = !{!"branch_weights", i32 6399959, i32 1}
!259 = !{!"branch_weights", i32 135876, i32 12765816}
!260 = !{!"branch_weights", i32 0, i32 135876}
!261 = !{!"branch_weights", i32 12765816, i32 31988, i32 510464, i32 0, i32 0}
!262 = distinct !{!262, !106, !107}
!263 = !{!"branch_weights", i32 12689594, i32 76222}
!264 = !{!"branch_weights", i32 0, i32 73806, i32 2416}
!265 = !{!"branch_weights", i32 47308, i32 28914}
!266 = !{!"branch_weights", i32 43594, i32 32628}
!267 = !{!"branch_weights", i32 0, i32 43594}
!268 = !{!"branch_weights", i32 32628, i32 0}
!269 = !{!"branch_weights", i32 0, i32 32628}
!270 = !{!"branch_weights", i32 43594, i32 0}
!271 = !{!"branch_weights", i32 43593, i32 1}
!272 = !{!"branch_weights", i32 0, i32 697504}
!273 = !{!"branch_weights", i32 697504, i32 0}
!274 = !{!"branch_weights", i32 653911, i32 43593}
!275 = distinct !{!275, !106, !107}
!276 = !{!"branch_weights", i32 21797, i32 21797}
!277 = !{!"branch_weights", i32 21797, i32 0}
!278 = !{!"branch_weights", i32 0, i32 21797}
!279 = !{!"branch_weights", i32 292, i32 21505}
!280 = !{!"branch_weights", i32 0, i32 292}
!281 = !{!"branch_weights", i32 18794, i32 24800}
!282 = !{!"branch_weights", i32 14922, i32 9878}
!283 = !{!"branch_weights", i32 2392, i32 84796}
!284 = !{!"branch_weights", i32 41202, i32 43594}
!285 = distinct !{!285, !106, !107}
!286 = !{!"branch_weights", i32 1037038, i32 1584082, i32 11138140, i32 5669052, i32 1956250, i32 4572, i32 0, i32 0, i32 32628, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 486, i32 2927150, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 738454, i32 30752, i32 538, i32 0, i32 0, i32 7080, i32 134, i32 13676, i32 0, i32 0, i32 0, i32 491176, i32 4050690}
!287 = !{!"branch_weights", i32 708658, i32 2218492}
!288 = !{!"branch_weights", i32 381880, i32 356574}
!289 = !{!"branch_weights", i32 381880, i32 0}
!290 = !{!"branch_weights", i32 21546, i32 9206, i32 0}
!291 = !{!"branch_weights", i32 3808, i32 17620}
!292 = !{!"branch_weights", i32 3540, i32 268}
!293 = !{!"branch_weights", i32 63238, i32 427938}
!294 = !{!"branch_weights", i32 148884, i32 279054}
!295 = !{!"branch_weights", i32 148884, i32 0}
!296 = !{!"branch_weights", i32 944080, i32 92958}
!297 = !{!"branch_weights", i32 913236, i32 30844}
!298 = !{!"branch_weights", i32 944080, i32 27153736}
!299 = !{!"branch_weights", i32 11138140, i32 16959676}
!300 = distinct !{!300, !106, !107}
!301 = !{!"branch_weights", i32 7570308, i32 5151914}
!302 = !{!"branch_weights", i32 5985376, i32 1584932}
!303 = !{!"branch_weights", i32 3891152, i32 2094224}
!304 = !{!"branch_weights", i32 2094223, i32 1}
!305 = !{!"branch_weights", i32 16855168, i32 16652416}
!306 = !{!"branch_weights", i32 2, i32 16652414}
!307 = !{!"branch_weights", i32 16652416, i32 16855168}
!308 = !{!"branch_weights", i32 0, i32 16855168}
!309 = !{!"branch_weights", i32 31413361, i32 2094223}
!310 = distinct !{!310, !106, !107}
!311 = !{!"branch_weights", i32 1040776, i32 1053448}
!312 = !{!"branch_weights", i32 1053448, i32 1040776}
!313 = !{!"branch_weights", i32 1047112, i32 1047112}
!314 = !{!"branch_weights", i32 1047112, i32 0}
!315 = !{!"branch_weights", i32 0, i32 1047112}
!316 = !{!"branch_weights", i32 5360754, i32 1376092}
!317 = !{!"branch_weights", i32 1584932, i32 3775822}
!318 = !{!"branch_weights", i32 1041820, i32 543112}
!319 = !{!"branch_weights", i32 3735264, i32 1082378}
!320 = !{!"branch_weights", i32 326832, i32 755546}
!321 = !{!"branch_weights", i32 755546, i32 326832}
!322 = !{!"branch_weights", i32 1097862, i32 2637402}
!323 = !{!"branch_weights", i32 1097862, i32 0}
!324 = !{!"branch_weights", i32 957502, i32 140360}
!325 = !{!"branch_weights", i32 6399959, i32 6501733}
!326 = distinct !{!326, !106, !107}
!327 = !{!"branch_weights", i32 1350572, i32 5049388}
!328 = !{!"branch_weights", i32 1350571, i32 1}
!329 = !{!"branch_weights", i32 1380602, i32 1414246}
!330 = !{!"branch_weights", i32 1231256, i32 149346}
!331 = !{!"branch_weights", i32 1231255, i32 1}
!332 = !{!"branch_weights", i32 1231255, i32 18468841}
!333 = distinct !{!333, !106, !107}
!334 = !{!"branch_weights", i32 1350571, i32 1444277}
!335 = distinct !{!335, !106, !107}
!336 = !{!"branch_weights", i32 1263269, i32 5136691}
!337 = distinct !{!337, !106, !107}
!338 = !{!"branch_weights", i32 -1178073098, i32 2467}
!339 = !{!"branch_weights", i32 1008416, i32 1665352}
!340 = !{!"branch_weights", i32 266922, i32 741494}
!341 = !{!"branch_weights", i32 473977, i32 267517}
!342 = !{!"branch_weights", i32 12874, i32 461103}
!343 = !{!"branch_weights", i32 1263269, i32 1410499}
!344 = distinct !{!344, !106, !107}
!345 = !{!"branch_weights", i32 1263270, i32 0}
!346 = !{!"branch_weights", i32 1228320, i32 34950}
!347 = !{!"branch_weights", i32 5016, i32 1258254}
!348 = !{!"branch_weights", i32 643364, i32 614890}
!349 = !{!"branch_weights", i32 479492, i32 163872}
!350 = !{!"branch_weights", i32 316076, i32 163416}
!351 = !{!"branch_weights", i32 133600, i32 182476}
!352 = !{!"branch_weights", i32 74, i32 133526}
!353 = !{!"branch_weights", i32 133648, i32 133404}
!354 = !{!"branch_weights", i32 -2070405570, i32 4085497}
!355 = !{!"branch_weights", i32 1467444, i32 667020}
!356 = !{!"branch_weights", i32 0, i32 667020}
!357 = !{!"branch_weights", i32 133404, i32 533616}
!358 = !{!"branch_weights", i32 133404, i32 0}
!359 = distinct !{!359, !106, !107}
!360 = !{!"branch_weights", i32 2001061, i32 133403}
!361 = distinct !{!361, !106, !107}
!362 = !{!"branch_weights", i32 133526, i32 133526}
!363 = distinct !{!363, !106, !107}
!364 = !{!"branch_weights", i32 979322, i32 1648750}
!365 = !{!"branch_weights", i32 712400, i32 266922}
!366 = !{!"branch_weights", i32 712400, i32 0}
!367 = !{!"branch_weights", i32 712399, i32 1}
!368 = !{!"branch_weights", i32 712399, i32 10686001}
!369 = distinct !{!369, !106, !107}
!370 = !{!"branch_weights", i32 1247275, i32 1380797}
!371 = distinct !{!371, !106, !107}
!372 = !{!"branch_weights", i32 247, i32 8392761}
!373 = distinct !{!373, !106, !107}
!374 = !{!"function_entry_count", i64 385300}
!375 = !{!"ira-costs.c;record_address_regs"}
!376 = !{!"branch_weights", i32 1164, i32 384136}
!377 = !{!"branch_weights", i32 328, i32 328, i32 41664, i32 0, i32 0, i32 150760, i32 0, i32 26728, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 165492}
!378 = !{!"branch_weights", i32 0, i32 26728}
!379 = !{!"branch_weights", i32 460, i32 0, i32 26268}
!380 = !{!"branch_weights", i32 46, i32 414}
!381 = !{!"branch_weights", i32 216, i32 198}
!382 = !{!"branch_weights", i32 0, i32 216}
!383 = !{!"branch_weights", i32 0, i32 198}
!384 = !{!"branch_weights", i32 414, i32 0}
!385 = !{!"branch_weights", i32 12, i32 402}
!386 = !{!"branch_weights", i32 198, i32 216}
!387 = !{!"branch_weights", i32 163486, i32 2006}
!388 = !{!"branch_weights", i32 2006, i32 0}
!389 = !{!"branch_weights", i32 2005, i32 1}
!390 = !{!"branch_weights", i32 0, i32 32096}
!391 = !{!"branch_weights", i32 30091, i32 2005}
!392 = distinct !{!392, !106, !107}
!393 = !{!"branch_weights", i32 1, i32 327}
!394 = !{!"branch_weights", i32 656, i32 0}
!395 = !{!"branch_weights", i32 329, i32 327}
!396 = distinct !{!396, !106, !107}
!397 = !{!"function_entry_count", i64 15994}
!398 = !{!"ira-costs.c;record_reg_classes"}
!399 = !{!"function_entry_count", i64 1115006}
!400 = !{!"ira-costs.c;copy_cost"}
!401 = !{!"branch_weights", i32 0, i32 1115006}
!402 = !{!403, !90, i64 8}
!403 = !{!"secondary_reload_info", !95, i64 0, !95, i64 4, !90, i64 8, !95, i64 16}
!404 = !{!403, !95, i64 4}
!405 = !{!406, !90, i64 1728}
!406 = !{!"gcc_target", !407, i64 0, !409, i64 368, !410, i64 664, !95, i64 744, !90, i64 752, !90, i64 760, !90, i64 768, !90, i64 776, !90, i64 784, !90, i64 792, !90, i64 800, !90, i64 808, !90, i64 816, !90, i64 824, !90, i64 832, !90, i64 840, !90, i64 848, !90, i64 856, !90, i64 864, !90, i64 872, !90, i64 880, !90, i64 888, !90, i64 896, !90, i64 904, !90, i64 912, !90, i64 920, !90, i64 928, !90, i64 936, !90, i64 944, !90, i64 952, !90, i64 960, !90, i64 968, !90, i64 976, !90, i64 984, !90, i64 992, !90, i64 1000, !90, i64 1008, !90, i64 1016, !90, i64 1024, !90, i64 1032, !90, i64 1040, !90, i64 1048, !90, i64 1056, !96, i64 1064, !96, i64 1072, !90, i64 1080, !90, i64 1088, !90, i64 1096, !90, i64 1104, !90, i64 1112, !90, i64 1120, !90, i64 1128, !90, i64 1136, !90, i64 1144, !90, i64 1152, !90, i64 1160, !90, i64 1168, !411, i64 1176, !90, i64 1232, !90, i64 1240, !90, i64 1248, !90, i64 1256, !90, i64 1264, !90, i64 1272, !90, i64 1280, !90, i64 1288, !90, i64 1296, !90, i64 1304, !90, i64 1312, !90, i64 1320, !90, i64 1328, !90, i64 1336, !90, i64 1344, !90, i64 1352, !90, i64 1360, !90, i64 1368, !90, i64 1376, !90, i64 1384, !90, i64 1392, !90, i64 1400, !90, i64 1408, !90, i64 1416, !90, i64 1424, !90, i64 1432, !90, i64 1440, !90, i64 1448, !90, i64 1456, !96, i64 1464, !412, i64 1472, !90, i64 1664, !90, i64 1672, !90, i64 1680, !90, i64 1688, !90, i64 1696, !90, i64 1704, !90, i64 1712, !90, i64 1720, !90, i64 1728, !90, i64 1736, !90, i64 1744, !90, i64 1752, !90, i64 1760, !90, i64 1768, !90, i64 1776, !413, i64 1784, !414, i64 1792, !415, i64 1896, !416, i64 1968, !90, i64 2016, !91, i64 2024, !91, i64 2025, !91, i64 2026, !91, i64 2027, !91, i64 2028, !91, i64 2029, !91, i64 2030, !91, i64 2031, !91, i64 2032, !91, i64 2033, !91, i64 2034, !91, i64 2035}
!407 = !{!"asm_out", !90, i64 0, !90, i64 8, !90, i64 16, !408, i64 24, !408, i64 56, !90, i64 88, !90, i64 96, !90, i64 104, !90, i64 112, !90, i64 120, !90, i64 128, !90, i64 136, !90, i64 144, !90, i64 152, !90, i64 160, !90, i64 168, !90, i64 176, !90, i64 184, !90, i64 192, !90, i64 200, !90, i64 208, !90, i64 216, !90, i64 224, !90, i64 232, !90, i64 240, !90, i64 248, !90, i64 256, !90, i64 264, !90, i64 272, !90, i64 280, !90, i64 288, !90, i64 296, !90, i64 304, !90, i64 312, !90, i64 320, !90, i64 328, !90, i64 336, !90, i64 344, !90, i64 352, !90, i64 360}
!408 = !{!"asm_int_op", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24}
!409 = !{!"sched", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !90, i64 72, !90, i64 80, !90, i64 88, !90, i64 96, !90, i64 104, !90, i64 112, !90, i64 120, !90, i64 128, !90, i64 136, !90, i64 144, !90, i64 152, !90, i64 160, !90, i64 168, !90, i64 176, !90, i64 184, !90, i64 192, !90, i64 200, !90, i64 208, !90, i64 216, !90, i64 224, !90, i64 232, !90, i64 240, !90, i64 248, !90, i64 256, !90, i64 264, !90, i64 272, !90, i64 280, !90, i64 288}
!410 = !{!"vectorize", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !90, i64 72}
!411 = !{!"addr_space", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48}
!412 = !{!"calls", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !90, i64 72, !90, i64 80, !90, i64 88, !90, i64 96, !90, i64 104, !90, i64 112, !90, i64 120, !90, i64 128, !90, i64 136, !90, i64 144, !90, i64 152, !90, i64 160, !90, i64 168, !90, i64 176, !90, i64 184}
!413 = !{!"c", !90, i64 0}
!414 = !{!"cxx", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !90, i64 72, !90, i64 80, !90, i64 88, !90, i64 96}
!415 = !{!"emutls", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !91, i64 64, !91, i64 65}
!416 = !{!"target_option_hooks", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40}
!417 = !{!"VP", i32 0, i64 1115006, i64 900717389841131052, i64 1115006}
!418 = !{!"branch_weights", i32 1115006, i32 0}
!419 = !{!"branch_weights", i32 549702, i32 565304}
!420 = !{!"branch_weights", i32 0, i32 565304}
!421 = !{!"function_entry_count", i64 155692}
!422 = !{!"ira-costs.c;process_bb_node_for_hard_reg_moves"}
!423 = !{!"branch_weights", i32 38, i32 155654}
!424 = !{!"branch_weights", i32 155654, i32 0}
!425 = !{!"branch_weights", i32 131438, i32 24216}
!426 = !{!"branch_weights", i32 155623, i32 893503}
!427 = !{!"branch_weights", i32 623676, i32 269827}
!428 = !{!"branch_weights", i32 0, i32 0, i32 399389, i32 155329, i32 68958}
!429 = !{!"branch_weights", i32 613017, i32 10659}
!430 = !{!"branch_weights", i32 2392, i32 621284}
!431 = !{!"branch_weights", i32 384247, i32 237037}
!432 = !{!"branch_weights", i32 66800, i32 317447}
!433 = !{!"branch_weights", i32 37, i32 66763}
!434 = !{!"branch_weights", i32 135, i32 66665}
!435 = !{!"branch_weights", i32 37, i32 98}
!436 = !{!"branch_weights", i32 0, i32 66702}
!437 = !{!"branch_weights", i32 37, i32 66665}
!438 = !{!"branch_weights", i32 0, i32 66665}
!439 = !{!"branch_weights", i32 0, i32 37}
!440 = !{!"branch_weights", i32 66596, i32 106}
!441 = !{!"branch_weights", i32 66595, i32 1}
!442 = !{!129, !90, i64 200}
!443 = distinct !{!443, !106, !107}
