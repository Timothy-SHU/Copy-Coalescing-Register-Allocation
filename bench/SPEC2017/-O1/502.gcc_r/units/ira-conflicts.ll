; ModuleID = 'ira-conflicts.c'
source_filename = "ira-conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.ira_allocno = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i64, i64, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.ira_loop_tree_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, i8, [27 x i32], ptr, ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.sparseset_def = type { ptr, ptr, i32, i32, i32, i8, i8, [2 x i32] }
%struct.ira_allocno_live_range = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.ira_allocno_copy = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@ira_conflicts_p = external local_unnamed_addr global i8, align 1
@ira_loop_tree_root = external local_unnamed_addr global ptr, align 8
@flag_ira_region = external local_unnamed_addr global i32, align 4
@conflicts = internal unnamed_addr global ptr null, align 8
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@flag_caller_saves = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@no_caller_save_reg_set = external local_unnamed_addr global i64, align 8
@internal_flag_ira_verbose = external local_unnamed_addr global i32, align 4
@ira_dump_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c";; r%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c";; a%d(r%d,\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"b%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"l%d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" conflicts:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" r%d,\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" a%d(r%d,\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"b%d)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"l%d)\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\0A;;     total conflict hard regs:\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c";;     conflict hard regs:\00", align 1
@ira_conflict_id_allocno_map = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c" %d-%d\00", align 1
@ira_allocnos_num = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [58 x i8] c"+++Conflict table will be too big(>%dMB) -- don't use it\0A\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"+++Allocating %ld bytes for conflict table (uncompressed size %ld)\0A\00", align 1
@ira_max_point = external local_unnamed_addr global i32, align 4
@ira_start_point_ranges = external local_unnamed_addr global ptr, align 8
@ira_allocnos = external local_unnamed_addr global ptr, align 8
@ira_reg_classes_intersect_p = external local_unnamed_addr global [27 x [27 x i8]], align 16
@ira_finish_point_ranges = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [14 x i8] c"./sparseset.h\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@collected_conflict_allocnos = internal unnamed_addr global ptr null, align 8
@ira_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"ira-conflicts.c\00", align 1
@ira_curr_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@ira_curr_loop_tree_node = external local_unnamed_addr global ptr, align 8
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@reg_class_size = external local_unnamed_addr global [27 x i32], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@ira_class_hard_reg_index = external local_unnamed_addr global [27 x [53 x i16]], align 16
@ira_register_move_cost = external local_unnamed_addr global [87 x ptr], align 16
@ira_class_hard_regs_num = external local_unnamed_addr global [27 x i32], align 16
@ira_copies_num = external local_unnamed_addr global i32, align 4
@ira_copies = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !55 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !56
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !55 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !56
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !55 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !56
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !55 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !56
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !55 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !55 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !55 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !55 {
  %2 = load i32, ptr %0, align 8, !tbaa !70
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !55 {
  %2 = load i32, ptr %0, align 8, !tbaa !70
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !55 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !71
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !55 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !71
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !55 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
  br i1 %23, label %7, label %24, !llvm.loop !72

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @ira_debug_conflicts(i8 noundef zeroext %0) local_unnamed_addr #9 !prof !55 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !56
  tail call fastcc void @print_conflicts(ptr noundef %2, i8 noundef zeroext %0)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_conflicts(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !55 {
  %3 = icmp eq i8 %1, 0
  br label %4

4:                                                ; preds = %189, %2
  %5 = phi ptr [ undef, %2 ], [ %190, %189 ]
  %6 = phi i32 [ 0, %2 ], [ %38, %189 ]
  %7 = phi ptr [ undef, %2 ], [ %39, %189 ]
  %8 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !71
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %4
  %11 = load ptr, ptr @ira_allocnos, align 8, !tbaa !56
  %12 = sext i32 %6 to i64
  %13 = sext i32 %8 to i64
  %14 = getelementptr inbounds ptr, ptr %11, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %23

17:                                               ; preds = %29
  %18 = getelementptr inbounds ptr, ptr %11, i64 %31
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21, !llvm.loop !75

21:                                               ; preds = %17
  %22 = icmp slt i64 %31, %13
  br label %23

23:                                               ; preds = %21, %10
  %24 = phi i64 [ %12, %10 ], [ %31, %21 ]
  %25 = phi i1 [ %9, %10 ], [ %22, %21 ]
  %26 = phi ptr [ %15, %10 ], [ %19, %21 ]
  %27 = trunc i64 %24 to i32
  %28 = add nsw i32 %27, 1
  br label %36

29:                                               ; preds = %10, %17
  %30 = phi i64 [ %31, %17 ], [ %12, %10 ]
  %31 = add nsw i64 %30, 1
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %8, %32
  br i1 %33, label %34, label %17, !llvm.loop !75

34:                                               ; preds = %29
  %35 = icmp slt i64 %31, %13
  br label %36

36:                                               ; preds = %34, %4, %23
  %37 = phi i1 [ %25, %23 ], [ %9, %4 ], [ %35, %34 ]
  %38 = phi i32 [ %28, %23 ], [ %6, %4 ], [ %6, %34 ]
  %39 = phi ptr [ %26, %23 ], [ %7, %4 ], [ %7, %34 ]
  br i1 %37, label %40, label %212

40:                                               ; preds = %36
  br i1 %3, label %45, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !76
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %43)
  br label %65

45:                                               ; preds = %40
  %46 = load i32, ptr %39, align 8, !tbaa !78
  %47 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !76
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %46, i32 noundef %48)
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !79
  %52 = load ptr, ptr %51, align 8, !tbaa !80
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  br label %59

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %51, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !82
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi ptr [ %58, %56 ], [ %55, %54 ]
  %61 = phi ptr [ @.str.3, %56 ], [ @.str.2, %54 ]
  %62 = load i32, ptr %60, align 8, !tbaa !71
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %61, i32 noundef %62)
  %64 = tail call i32 @putc(i32 noundef 41, ptr noundef %0)
  br label %65

65:                                               ; preds = %59, %41
  %66 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 11, i64 1, ptr %0)
  %67 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 23
  %68 = load ptr, ptr %67, align 8, !tbaa !83
  %69 = icmp eq ptr %68, null
  br i1 %69, label %189, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 31
  %72 = load i16, ptr %71, align 4
  %73 = and i16 %72, 2048
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 21
  %77 = load i32, ptr %76, align 8, !tbaa !84
  %78 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 22
  %79 = load i32, ptr %78, align 4, !tbaa !85
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = sub i32 %79, %77
  %83 = add i32 %82, 64
  %84 = sdiv i32 %83, 64
  %85 = shl nsw i32 %84, 3
  br label %86

86:                                               ; preds = %75, %81
  %87 = phi i32 [ %85, %81 ], [ 0, %75 ]
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load i64, ptr %68, align 8, !tbaa !86
  br label %91

91:                                               ; preds = %86, %89, %70
  %92 = phi i64 [ 0, %70 ], [ %90, %89 ], [ 0, %86 ]
  %93 = phi i32 [ 0, %70 ], [ %77, %89 ], [ %77, %86 ]
  %94 = phi i32 [ 0, %70 ], [ %87, %89 ], [ %87, %86 ]
  %95 = zext i32 %94 to i64
  %96 = zext i1 %74 to i64
  %97 = zext i1 %74 to i32
  %98 = xor i1 %74, true
  %99 = zext i1 %98 to i32
  br label %100

100:                                              ; preds = %185, %91
  %101 = phi i64 [ %92, %91 ], [ %186, %185 ]
  %102 = phi i32 [ 0, %91 ], [ %187, %185 ]
  %103 = phi i32 [ 0, %91 ], [ %188, %185 ]
  %104 = phi ptr [ %5, %91 ], [ %159, %185 ]
  br i1 %74, label %105, label %112

105:                                              ; preds = %100
  %106 = icmp eq i64 %101, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %105
  %108 = add i32 %103, 1
  %109 = zext i32 %108 to i64
  %110 = shl nuw nsw i64 %109, 3
  %111 = icmp ult i64 %110, %95
  br i1 %111, label %132, label %155

112:                                              ; preds = %100
  %113 = zext i32 %103 to i64
  %114 = getelementptr inbounds ptr, ptr %68, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !56
  %116 = icmp ne ptr %115, null
  %117 = select i1 %116, ptr %115, ptr %104
  %118 = zext i1 %116 to i8
  br label %155

119:                                              ; preds = %132
  %120 = shl i32 %134, 6
  br label %121

121:                                              ; preds = %119, %105
  %122 = phi i64 [ %101, %105 ], [ %136, %119 ]
  %123 = phi i32 [ %102, %105 ], [ %120, %119 ]
  %124 = phi i32 [ %103, %105 ], [ %134, %119 ]
  %125 = and i64 %122, 1
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %138, label %145

127:                                              ; preds = %132
  %128 = add i32 %134, 1
  %129 = zext i32 %128 to i64
  %130 = shl nuw nsw i64 %129, 3
  %131 = icmp ult i64 %130, %95
  br i1 %131, label %132, label %153, !llvm.loop !87

132:                                              ; preds = %107, %127
  %133 = phi i64 [ %129, %127 ], [ %109, %107 ]
  %134 = phi i32 [ %128, %127 ], [ %108, %107 ]
  %135 = getelementptr inbounds i64, ptr %68, i64 %133
  %136 = load i64, ptr %135, align 8, !tbaa !86
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %127, label %119, !llvm.loop !87

138:                                              ; preds = %121, %138
  %139 = phi i32 [ %141, %138 ], [ %123, %121 ]
  %140 = phi i64 [ %142, %138 ], [ %122, %121 ]
  %141 = add i32 %139, 1
  %142 = lshr exact i64 %140, 1
  %143 = and i64 %140, 2
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %138, label %145, !llvm.loop !88

145:                                              ; preds = %138, %121
  %146 = phi i64 [ %122, %121 ], [ %142, %138 ]
  %147 = phi i32 [ %123, %121 ], [ %141, %138 ]
  %148 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !56
  %149 = add i32 %147, %93
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds ptr, ptr %148, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !56
  br label %155

153:                                              ; preds = %127
  %154 = shl i32 %134, 6
  br label %155

155:                                              ; preds = %153, %107, %112, %145
  %156 = phi i64 [ %146, %145 ], [ %101, %112 ], [ %101, %107 ], [ %136, %153 ]
  %157 = phi i32 [ %147, %145 ], [ %102, %112 ], [ %102, %107 ], [ %154, %153 ]
  %158 = phi i32 [ %124, %145 ], [ %103, %112 ], [ %108, %107 ], [ %128, %153 ]
  %159 = phi ptr [ %152, %145 ], [ %117, %112 ], [ %104, %107 ], [ %104, %153 ]
  %160 = phi i8 [ 1, %145 ], [ %118, %112 ], [ 0, %107 ], [ 0, %153 ]
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %189, label %162

162:                                              ; preds = %155
  br i1 %3, label %167, label %163

163:                                              ; preds = %162
  %164 = getelementptr inbounds %struct.ira_allocno, ptr %159, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !76
  %166 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %165)
  br label %185

167:                                              ; preds = %162
  %168 = load i32, ptr %159, align 8, !tbaa !78
  %169 = getelementptr inbounds %struct.ira_allocno, ptr %159, i64 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !76
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %168, i32 noundef %170)
  %172 = getelementptr inbounds %struct.ira_allocno, ptr %159, i64 0, i32 6
  %173 = load ptr, ptr %172, align 8, !tbaa !79
  %174 = load ptr, ptr %173, align 8, !tbaa !80
  %175 = icmp eq ptr %174, null
  br i1 %175, label %180, label %176

176:                                              ; preds = %167
  %177 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 9
  %178 = load i32, ptr %177, align 8, !tbaa !89
  %179 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %178)
  br label %185

180:                                              ; preds = %167
  %181 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %173, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !82
  %183 = load i32, ptr %182, align 8, !tbaa !91
  %184 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %183)
  br label %185

185:                                              ; preds = %163, %180, %176
  %186 = lshr i64 %156, %96
  %187 = add i32 %157, %97
  %188 = add i32 %158, %99
  br label %100, !llvm.loop !95

189:                                              ; preds = %155, %65
  %190 = phi ptr [ %5, %65 ], [ %159, %155 ]
  %191 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 27
  %192 = load i64, ptr %191, align 8, !tbaa !96
  %193 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !86
  %194 = xor i64 %193, -1
  %195 = and i64 %192, %194
  %196 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 9
  %197 = load i32, ptr %196, align 8, !tbaa !97
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %198
  %200 = load i64, ptr %199, align 8, !tbaa !86
  %201 = and i64 %195, %200
  tail call fastcc void @print_hard_reg_set(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %201)
  %202 = getelementptr inbounds %struct.ira_allocno, ptr %39, i64 0, i32 26
  %203 = load i64, ptr %202, align 8, !tbaa !98
  %204 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !86
  %205 = xor i64 %204, -1
  %206 = and i64 %203, %205
  %207 = load i32, ptr %196, align 8, !tbaa !97
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %208
  %210 = load i64, ptr %209, align 8, !tbaa !86
  %211 = and i64 %206, %210
  tail call fastcc void @print_hard_reg_set(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef %211)
  br label %4, !llvm.loop !99

212:                                              ; preds = %36
  %213 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_build_conflicts() local_unnamed_addr #10 !prof !100 {
  %1 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !67
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %712, label %3, !prof !101

3:                                                ; preds = %0
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !71
  %5 = add nsw i32 %4, 63
  %6 = sdiv i32 %5, 64
  %7 = load ptr, ptr @ira_allocnos, align 8
  %8 = load ptr, ptr @compiler_params, align 8
  %9 = getelementptr inbounds %struct.param_info, ptr %8, i64 106, i32 1
  br label %10

10:                                               ; preds = %53, %3
  %11 = phi ptr [ %45, %53 ], [ undef, %3 ]
  %12 = phi i32 [ %46, %53 ], [ 0, %3 ]
  %13 = phi i32 [ %57, %53 ], [ 0, %3 ]
  br label %14

14:                                               ; preds = %10, %47
  %15 = phi ptr [ %45, %47 ], [ %11, %10 ]
  %16 = phi i32 [ %46, %47 ], [ %12, %10 ]
  %17 = icmp slt i32 %16, %4
  br i1 %17, label %18, label %43, !prof !102

18:                                               ; preds = %14
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds ptr, ptr %7, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %29, !prof !103

23:                                               ; preds = %35
  %24 = getelementptr inbounds ptr, ptr %7, i64 %38
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27, !prof !103, !llvm.loop !75

27:                                               ; preds = %23
  %28 = icmp slt i64 %38, %37
  br label %29

29:                                               ; preds = %27, %18
  %30 = phi i64 [ %19, %18 ], [ %38, %27 ]
  %31 = phi i1 [ %17, %18 ], [ %28, %27 ]
  %32 = phi ptr [ %21, %18 ], [ %25, %27 ]
  %33 = trunc i64 %30 to i32
  %34 = add nsw i32 %33, 1
  br label %43

35:                                               ; preds = %18, %23
  %36 = phi i64 [ %38, %23 ], [ %19, %18 ]
  %37 = sext i32 %4 to i64
  %38 = add nsw i64 %36, 1
  %39 = trunc i64 %38 to i32
  %40 = icmp eq i32 %4, %39
  br i1 %40, label %41, label %23, !prof !104, !llvm.loop !75

41:                                               ; preds = %35
  %42 = icmp slt i64 %38, %37
  br label %43

43:                                               ; preds = %41, %14, %29
  %44 = phi i1 [ %31, %29 ], [ %17, %14 ], [ %42, %41 ]
  %45 = phi ptr [ %32, %29 ], [ %15, %14 ], [ %15, %41 ]
  %46 = phi i32 [ %34, %29 ], [ %16, %14 ], [ %16, %41 ]
  br i1 %44, label %47, label %72, !prof !105

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 22
  %49 = load i32, ptr %48, align 4, !tbaa !85
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 21
  %51 = load i32, ptr %50, align 8, !tbaa !84
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %14, label %53, !prof !106, !llvm.loop !107

53:                                               ; preds = %47
  %54 = add i32 %49, 64
  %55 = sub i32 %54, %51
  %56 = sdiv i32 %55, 64
  %57 = add nsw i32 %56, %13
  %58 = sext i32 %57 to i64
  %59 = shl nsw i64 %58, 3
  %60 = load i32, ptr %9, align 8, !tbaa !108
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 20
  %63 = icmp ugt i64 %59, %62
  br i1 %63, label %64, label %10, !prof !106, !llvm.loop !107

64:                                               ; preds = %53
  %65 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !71
  %66 = icmp sgt i32 %65, 0
  %67 = load ptr, ptr @ira_dump_file, align 8
  %68 = icmp ne ptr %67, null
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %280

70:                                               ; preds = %64
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %67, ptr noundef nonnull @.str.14, i32 noundef %60)
  br label %280

72:                                               ; preds = %43
  %73 = tail call ptr @sparseset_alloc(i32 noundef %4) #17
  %74 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !71
  %75 = sext i32 %74 to i64
  %76 = shl nsw i64 %75, 3
  %77 = tail call ptr @ira_allocate(i64 noundef %76) #17
  store ptr %77, ptr @conflicts, align 8, !tbaa !56
  br label %78

78:                                               ; preds = %128, %72
  %79 = phi ptr [ %116, %128 ], [ %45, %72 ]
  %80 = phi i32 [ %117, %128 ], [ 0, %72 ]
  %81 = phi i32 [ %132, %128 ], [ 0, %72 ]
  %82 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !71
  %83 = load ptr, ptr @conflicts, align 8
  br label %84

84:                                               ; preds = %78, %125
  %85 = phi ptr [ %116, %125 ], [ %79, %78 ]
  %86 = phi i32 [ %117, %125 ], [ %80, %78 ]
  %87 = icmp slt i32 %86, %82
  br i1 %87, label %88, label %114, !prof !102

88:                                               ; preds = %84
  %89 = load ptr, ptr @ira_allocnos, align 8, !tbaa !56
  %90 = sext i32 %86 to i64
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !56
  %93 = icmp eq ptr %92, null
  br i1 %93, label %106, label %100, !prof !103

94:                                               ; preds = %106
  %95 = getelementptr inbounds ptr, ptr %89, i64 %109
  %96 = load ptr, ptr %95, align 8, !tbaa !56
  %97 = icmp eq ptr %96, null
  br i1 %97, label %106, label %98, !prof !103, !llvm.loop !75

98:                                               ; preds = %94
  %99 = icmp slt i64 %109, %108
  br label %100

100:                                              ; preds = %98, %88
  %101 = phi i64 [ %90, %88 ], [ %109, %98 ]
  %102 = phi i1 [ %87, %88 ], [ %99, %98 ]
  %103 = phi ptr [ %92, %88 ], [ %96, %98 ]
  %104 = trunc i64 %101 to i32
  %105 = add nsw i32 %104, 1
  br label %114

106:                                              ; preds = %88, %94
  %107 = phi i64 [ %109, %94 ], [ %90, %88 ]
  %108 = sext i32 %82 to i64
  %109 = add nsw i64 %107, 1
  %110 = trunc i64 %109 to i32
  %111 = icmp eq i32 %82, %110
  br i1 %111, label %112, label %94, !prof !104, !llvm.loop !75

112:                                              ; preds = %106
  %113 = icmp slt i64 %109, %108
  br label %114

114:                                              ; preds = %112, %84, %100
  %115 = phi i1 [ %102, %100 ], [ %87, %84 ], [ %113, %112 ]
  %116 = phi ptr [ %103, %100 ], [ %85, %84 ], [ %85, %112 ]
  %117 = phi i32 [ %105, %100 ], [ %86, %84 ], [ %86, %112 ]
  br i1 %115, label %118, label %139, !prof !105

118:                                              ; preds = %114
  %119 = load i32, ptr %116, align 8, !tbaa !78
  %120 = getelementptr inbounds %struct.ira_allocno, ptr %116, i64 0, i32 22
  %121 = load i32, ptr %120, align 4, !tbaa !85
  %122 = getelementptr inbounds %struct.ira_allocno, ptr %116, i64 0, i32 21
  %123 = load i32, ptr %122, align 8, !tbaa !84
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %128, !prof !106

125:                                              ; preds = %118
  %126 = sext i32 %119 to i64
  %127 = getelementptr inbounds ptr, ptr %83, i64 %126
  store ptr null, ptr %127, align 8, !tbaa !56
  br label %84, !llvm.loop !110

128:                                              ; preds = %118
  %129 = add i32 %121, 64
  %130 = sub i32 %129, %123
  %131 = sdiv i32 %130, 64
  %132 = add nsw i32 %131, %81
  %133 = sext i32 %131 to i64
  %134 = shl nsw i64 %133, 3
  %135 = tail call ptr @ira_allocate(i64 noundef %134) #17
  %136 = load ptr, ptr @conflicts, align 8, !tbaa !56
  %137 = sext i32 %119 to i64
  %138 = getelementptr inbounds ptr, ptr %136, i64 %137
  store ptr %135, ptr %138, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr align 8 %135, i8 0, i64 %134, i1 false), !prof !111
  br label %78, !llvm.loop !110

139:                                              ; preds = %114
  %140 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !71
  %141 = icmp sgt i32 %140, 0
  %142 = load ptr, ptr @ira_dump_file, align 8
  %143 = icmp ne ptr %142, null
  %144 = select i1 %141, i1 %143, i1 false, !prof !112
  br i1 %144, label %145, label %153, !prof !101

145:                                              ; preds = %139
  %146 = sext i32 %81 to i64
  %147 = shl nsw i64 %146, 3
  %148 = sext i32 %6 to i64
  %149 = sext i32 %82 to i64
  %150 = shl nsw i64 %148, 3
  %151 = mul nsw i64 %150, %149
  %152 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %142, ptr noundef nonnull @.str.15, i64 noundef %147, i64 noundef %151)
  br label %153

153:                                              ; preds = %145, %139
  %154 = load i32, ptr @ira_max_point, align 4, !tbaa !71
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %279, !prof !102

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.sparseset_def, ptr %73, i64 0, i32 3
  %158 = getelementptr inbounds %struct.sparseset_def, ptr %73, i64 0, i32 1
  %159 = getelementptr inbounds %struct.sparseset_def, ptr %73, i64 0, i32 2
  %160 = getelementptr inbounds %struct.sparseset_def, ptr %73, i64 0, i32 4
  %161 = getelementptr inbounds %struct.sparseset_def, ptr %73, i64 0, i32 5
  %162 = getelementptr inbounds %struct.sparseset_def, ptr %73, i64 0, i32 6
  br label %163

163:                                              ; preds = %156, %274
  %164 = phi i64 [ 0, %156 ], [ %275, %274 ]
  %165 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !56
  %166 = getelementptr inbounds ptr, ptr %165, i64 %164
  %167 = load ptr, ptr %166, align 8, !tbaa !56
  %168 = icmp eq ptr %167, null
  br i1 %168, label %262, label %169, !prof !113

169:                                              ; preds = %163, %210
  %170 = phi ptr [ %212, %210 ], [ %167, %163 ]
  %171 = load ptr, ptr %170, align 8, !tbaa !114
  %172 = load i32, ptr %171, align 8, !tbaa !78
  %173 = getelementptr inbounds %struct.ira_allocno, ptr %171, i64 0, i32 24
  %174 = load i32, ptr %173, align 8, !tbaa !116
  %175 = getelementptr inbounds %struct.ira_allocno, ptr %171, i64 0, i32 9
  %176 = load i32, ptr %175, align 8, !tbaa !97
  %177 = load i32, ptr %157, align 4, !tbaa !117
  %178 = icmp ugt i32 %177, %172
  br i1 %178, label %180, label %179, !prof !119

179:                                              ; preds = %169
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 85, ptr noundef nonnull @.str.17) #17
  br label %180

180:                                              ; preds = %179, %169
  %181 = load ptr, ptr %158, align 8, !tbaa !120
  %182 = zext i32 %172 to i64
  %183 = getelementptr inbounds i32, ptr %181, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !71
  %185 = load i32, ptr %159, align 8, !tbaa !121
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %187, label %193, !prof !122

187:                                              ; preds = %180
  %188 = load ptr, ptr %73, align 8, !tbaa !123
  %189 = zext i32 %184 to i64
  %190 = getelementptr inbounds i32, ptr %188, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !71
  %192 = icmp eq i32 %191, %172
  br i1 %192, label %198, label %193, !prof !124

193:                                              ; preds = %187, %180
  %194 = add i32 %185, 1
  store i32 %194, ptr %159, align 8, !tbaa !121
  store i32 %185, ptr %183, align 4, !tbaa !71
  %195 = load ptr, ptr %73, align 8, !tbaa !123
  %196 = zext i32 %185 to i64
  %197 = getelementptr inbounds i32, ptr %195, i64 %196
  store i32 %172, ptr %197, align 4, !tbaa !71
  br label %198

198:                                              ; preds = %193, %187
  store i32 0, ptr %160, align 8, !tbaa !125
  store i8 1, ptr %161, align 4, !tbaa !126
  store i8 1, ptr %162, align 1, !tbaa !127
  %199 = load i32, ptr %159, align 8, !tbaa !121
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %210, label %201, !prof !128

201:                                              ; preds = %198
  %202 = load ptr, ptr %73, align 8, !tbaa !123
  %203 = load ptr, ptr @ira_allocnos, align 8, !tbaa !56
  %204 = zext i32 %176 to i64
  %205 = getelementptr inbounds %struct.ira_allocno, ptr %171, i64 0, i32 21
  %206 = load ptr, ptr @conflicts, align 8
  %207 = sext i32 %172 to i64
  %208 = getelementptr inbounds ptr, ptr %206, i64 %207
  %209 = load i8, ptr %161, align 4, !tbaa !126
  br label %214

210:                                              ; preds = %258, %198
  store i8 0, ptr %162, align 1, !tbaa !127
  %211 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %170, i64 0, i32 4
  %212 = load ptr, ptr %211, align 8, !tbaa !56
  %213 = icmp eq ptr %212, null
  br i1 %213, label %262, label %169, !prof !119, !llvm.loop !129

214:                                              ; preds = %201, %258
  %215 = phi i8 [ %209, %201 ], [ 1, %258 ]
  %216 = phi i32 [ 0, %201 ], [ %260, %258 ]
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i32, ptr %202, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !71
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds ptr, ptr %203, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !56
  %223 = getelementptr inbounds %struct.ira_allocno, ptr %222, i64 0, i32 9
  %224 = load i32, ptr %223, align 8, !tbaa !97
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %204, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !67
  %228 = icmp eq i8 %227, 0
  %229 = icmp eq i32 %172, %219
  %230 = or i1 %229, %228
  br i1 %230, label %258, label %231, !prof !130

231:                                              ; preds = %214
  %232 = getelementptr inbounds %struct.ira_allocno, ptr %222, i64 0, i32 24
  %233 = load i32, ptr %232, align 8, !tbaa !116
  %234 = load i32, ptr %205, align 8, !tbaa !84
  %235 = sub nsw i32 %233, %234
  %236 = and i32 %235, 63
  %237 = zext nneg i32 %236 to i64
  %238 = shl nuw i64 1, %237
  %239 = load ptr, ptr %208, align 8, !tbaa !56
  %240 = lshr i32 %235, 6
  %241 = zext nneg i32 %240 to i64
  %242 = getelementptr inbounds i64, ptr %239, i64 %241
  %243 = load i64, ptr %242, align 8, !tbaa !86
  %244 = or i64 %238, %243
  store i64 %244, ptr %242, align 8, !tbaa !86
  %245 = getelementptr inbounds %struct.ira_allocno, ptr %222, i64 0, i32 21
  %246 = load i32, ptr %245, align 8, !tbaa !84
  %247 = sub nsw i32 %174, %246
  %248 = and i32 %247, 63
  %249 = zext nneg i32 %248 to i64
  %250 = shl nuw i64 1, %249
  %251 = getelementptr inbounds ptr, ptr %206, i64 %220
  %252 = load ptr, ptr %251, align 8, !tbaa !56
  %253 = lshr i32 %247, 6
  %254 = zext nneg i32 %253 to i64
  %255 = getelementptr inbounds i64, ptr %252, i64 %254
  %256 = load i64, ptr %255, align 8, !tbaa !86
  %257 = or i64 %250, %256
  store i64 %257, ptr %255, align 8, !tbaa !86
  br label %258

258:                                              ; preds = %231, %214
  %259 = zext i8 %215 to i32
  %260 = add i32 %216, %259
  store i32 %260, ptr %160, align 8, !tbaa !125
  store i8 1, ptr %161, align 4, !tbaa !126
  %261 = icmp ult i32 %260, %199
  br i1 %261, label %214, label %210, !prof !131, !llvm.loop !132

262:                                              ; preds = %210, %163
  %263 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !56
  %264 = getelementptr inbounds ptr, ptr %263, i64 %164
  %265 = load ptr, ptr %264, align 8, !tbaa !56
  %266 = icmp eq ptr %265, null
  br i1 %266, label %274, label %267, !prof !113

267:                                              ; preds = %262, %267
  %268 = phi ptr [ %272, %267 ], [ %265, %262 ]
  %269 = load ptr, ptr %268, align 8, !tbaa !114
  %270 = load i32, ptr %269, align 8, !tbaa !78
  tail call void @sparseset_clear_bit(ptr noundef %73, i32 noundef %270) #17
  %271 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %268, i64 0, i32 5
  %272 = load ptr, ptr %271, align 8, !tbaa !56
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %267, !prof !119, !llvm.loop !133

274:                                              ; preds = %267, %262
  %275 = add nuw nsw i64 %164, 1
  %276 = load i32, ptr @ira_max_point, align 4, !tbaa !71
  %277 = sext i32 %276 to i64
  %278 = icmp slt i64 %275, %277
  br i1 %278, label %163, label %279, !prof !134, !llvm.loop !135

279:                                              ; preds = %274, %153
  tail call void @free(ptr noundef %73)
  br label %280

280:                                              ; preds = %64, %70, %279
  %281 = phi i8 [ 1, %279 ], [ 0, %70 ], [ 0, %64 ]
  store i8 %281, ptr @ira_conflicts_p, align 1, !tbaa !67
  br i1 %44, label %712, label %282, !prof !101

282:                                              ; preds = %280
  %283 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !71
  %284 = sext i32 %283 to i64
  %285 = shl nsw i64 %284, 3
  %286 = tail call ptr @ira_allocate(i64 noundef %285) #17
  store ptr %286, ptr @collected_conflict_allocnos, align 8, !tbaa !56
  %287 = tail call i32 @max_reg_num() #17
  %288 = icmp sgt i32 %287, 53
  br i1 %288, label %289, label %548, !prof !102

289:                                              ; preds = %282
  %290 = zext nneg i32 %287 to i64
  br label %293

291:                                              ; preds = %544, %293
  %292 = icmp sgt i64 %294, 54
  br i1 %292, label %293, label %548, !prof !136, !llvm.loop !137

293:                                              ; preds = %289, %291
  %294 = phi i64 [ %290, %289 ], [ %295, %291 ]
  %295 = add nsw i64 %294, -1
  %296 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !56
  %297 = getelementptr inbounds ptr, ptr %296, i64 %295
  %298 = load ptr, ptr %297, align 8, !tbaa !56
  %299 = icmp eq ptr %298, null
  br i1 %299, label %291, label %300, !prof !138

300:                                              ; preds = %293, %544
  %301 = phi ptr [ %546, %544 ], [ %298, %293 ]
  %302 = load ptr, ptr @conflicts, align 8, !tbaa !56
  %303 = load i32, ptr %301, align 8, !tbaa !78
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds ptr, ptr %302, i64 %304
  %306 = load ptr, ptr %305, align 8, !tbaa !56
  %307 = getelementptr inbounds %struct.ira_allocno, ptr %301, i64 0, i32 21
  %308 = load i32, ptr %307, align 8, !tbaa !84
  %309 = getelementptr inbounds %struct.ira_allocno, ptr %301, i64 0, i32 22
  %310 = load i32, ptr %309, align 4, !tbaa !85
  %311 = icmp slt i32 %310, %308
  %312 = sub i32 %310, %308
  %313 = add i32 %312, 1
  %314 = select i1 %311, i32 0, i32 %313, !prof !106
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %318, label %316, !prof !106

316:                                              ; preds = %300
  %317 = load i64, ptr %306, align 8, !tbaa !86
  br label %318

318:                                              ; preds = %316, %300
  %319 = phi i64 [ %317, %316 ], [ 0, %300 ]
  %320 = load ptr, ptr @collected_conflict_allocnos, align 8
  br label %321

321:                                              ; preds = %373, %318
  %322 = phi i64 [ %378, %373 ], [ 0, %318 ]
  %323 = phi i32 [ %369, %373 ], [ undef, %318 ]
  %324 = phi i64 [ %380, %373 ], [ %319, %318 ]
  %325 = phi i32 [ %381, %373 ], [ 0, %318 ]
  %326 = phi i32 [ %372, %373 ], [ 0, %318 ]
  %327 = icmp eq i64 %324, 0
  br i1 %327, label %328, label %337, !prof !139

328:                                              ; preds = %321
  %329 = add i32 %326, 1
  %330 = shl i32 %329, 6
  %331 = icmp ult i32 %330, %314
  br i1 %331, label %332, label %367, !prof !140

332:                                              ; preds = %328
  %333 = zext i32 %329 to i64
  %334 = getelementptr inbounds i64, ptr %306, i64 %333
  %335 = load i64, ptr %334, align 8, !tbaa !86
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %344, label %337, !prof !141, !llvm.loop !142

337:                                              ; preds = %351, %332, %321
  %338 = phi i64 [ %324, %321 ], [ %335, %332 ], [ %354, %351 ]
  %339 = phi i32 [ %325, %321 ], [ %330, %332 ], [ %349, %351 ]
  %340 = phi i32 [ %326, %321 ], [ %329, %332 ], [ %348, %351 ]
  %341 = phi i1 [ %327, %321 ], [ %336, %332 ], [ %355, %351 ]
  %342 = and i64 %338, 1
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %356, label %363, !prof !139

344:                                              ; preds = %332, %351
  %345 = phi i1 [ %355, %351 ], [ %336, %332 ]
  %346 = phi i64 [ %354, %351 ], [ %335, %332 ]
  %347 = phi i32 [ %348, %351 ], [ %329, %332 ]
  %348 = add i32 %347, 1
  %349 = shl i32 %348, 6
  %350 = icmp ult i32 %349, %314
  br i1 %350, label %351, label %367, !prof !143, !llvm.loop !142

351:                                              ; preds = %344
  %352 = zext i32 %348 to i64
  %353 = getelementptr inbounds i64, ptr %306, i64 %352
  %354 = load i64, ptr %353, align 8, !tbaa !86
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %344, label %337, !prof !144, !llvm.loop !142

356:                                              ; preds = %337, %356
  %357 = phi i32 [ %359, %356 ], [ %339, %337 ]
  %358 = phi i64 [ %360, %356 ], [ %338, %337 ]
  %359 = add i32 %357, 1
  %360 = lshr exact i64 %358, 1
  %361 = and i64 %358, 2
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %356, label %363, !prof !145, !llvm.loop !146

363:                                              ; preds = %356, %337
  %364 = phi i64 [ %338, %337 ], [ %360, %356 ]
  %365 = phi i32 [ %339, %337 ], [ %359, %356 ]
  %366 = add nsw i32 %365, %308
  br label %367

367:                                              ; preds = %344, %328, %363
  %368 = phi i1 [ %341, %363 ], [ %327, %328 ], [ %345, %344 ]
  %369 = phi i32 [ %366, %363 ], [ %323, %328 ], [ %323, %344 ]
  %370 = phi i64 [ %364, %363 ], [ %324, %328 ], [ %346, %344 ]
  %371 = phi i32 [ %365, %363 ], [ %330, %328 ], [ %349, %344 ]
  %372 = phi i32 [ %340, %363 ], [ %329, %328 ], [ %348, %344 ]
  br i1 %368, label %382, label %373, !prof !147

373:                                              ; preds = %367
  %374 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !56
  %375 = sext i32 %369 to i64
  %376 = getelementptr inbounds ptr, ptr %374, i64 %375
  %377 = load ptr, ptr %376, align 8, !tbaa !56
  %378 = add nuw i64 %322, 1
  %379 = getelementptr inbounds ptr, ptr %320, i64 %322
  store ptr %377, ptr %379, align 8, !tbaa !56
  %380 = lshr i64 %370, 1
  %381 = add i32 %371, 1
  br label %321, !llvm.loop !148

382:                                              ; preds = %367
  %383 = trunc i64 %322 to i32
  %384 = tail call zeroext i8 @ira_conflict_vector_profitable_p(ptr noundef nonnull %301, i32 noundef %383) #17
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %394, label %386, !prof !149

386:                                              ; preds = %382
  tail call void @ira_allocate_allocno_conflict_vec(ptr noundef nonnull %301, i32 noundef %383) #17
  %387 = getelementptr inbounds %struct.ira_allocno, ptr %301, i64 0, i32 23
  %388 = load ptr, ptr %387, align 8, !tbaa !83
  %389 = load ptr, ptr @collected_conflict_allocnos, align 8, !tbaa !56
  %390 = and i64 %322, 4294967295
  %391 = shl nuw nsw i64 %390, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %388, ptr align 8 %389, i64 %391, i1 false), !prof !150
  %392 = getelementptr inbounds ptr, ptr %388, i64 %390
  store ptr null, ptr %392, align 8, !tbaa !56
  %393 = getelementptr inbounds %struct.ira_allocno, ptr %301, i64 0, i32 28
  store i32 %383, ptr %393, align 8, !tbaa !151
  br label %412

394:                                              ; preds = %382
  %395 = load ptr, ptr @conflicts, align 8, !tbaa !56
  %396 = load i32, ptr %301, align 8, !tbaa !78
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds ptr, ptr %395, i64 %397
  %399 = load ptr, ptr %398, align 8, !tbaa !56
  %400 = getelementptr inbounds %struct.ira_allocno, ptr %301, i64 0, i32 23
  store ptr %399, ptr %400, align 8, !tbaa !83
  %401 = load i32, ptr %309, align 4, !tbaa !85
  %402 = load i32, ptr %307, align 8, !tbaa !84
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %409, label %404, !prof !152

404:                                              ; preds = %394
  %405 = add i32 %401, 64
  %406 = sub i32 %405, %402
  %407 = sdiv i32 %406, 64
  %408 = shl nsw i32 %407, 3
  br label %409

409:                                              ; preds = %404, %394
  %410 = phi i32 [ %408, %404 ], [ 0, %394 ]
  %411 = getelementptr inbounds %struct.ira_allocno, ptr %301, i64 0, i32 25
  store i32 %410, ptr %411, align 4, !tbaa !153
  br label %412

412:                                              ; preds = %409, %386
  %413 = getelementptr inbounds %struct.ira_allocno, ptr %301, i64 0, i32 6
  %414 = load ptr, ptr %413, align 8, !tbaa !79
  %415 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %414, i64 0, i32 6
  %416 = load ptr, ptr %415, align 8, !tbaa !154
  %417 = getelementptr inbounds %struct.ira_allocno, ptr %301, i64 0, i32 16
  %418 = load ptr, ptr %417, align 8, !tbaa !155
  %419 = icmp eq ptr %418, null
  br i1 %419, label %420, label %431, !prof !156

420:                                              ; preds = %412
  %421 = icmp eq ptr %416, null
  br i1 %421, label %535, label %422, !prof !156

422:                                              ; preds = %420
  %423 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %416, i64 0, i32 9
  %424 = load ptr, ptr %423, align 8, !tbaa !157
  %425 = getelementptr inbounds %struct.ira_allocno, ptr %301, i64 0, i32 1
  %426 = load i32, ptr %425, align 4, !tbaa !76
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds ptr, ptr %424, i64 %427
  %429 = load ptr, ptr %428, align 8, !tbaa !56
  %430 = icmp eq ptr %429, null
  br i1 %430, label %535, label %431

431:                                              ; preds = %422, %412
  %432 = phi ptr [ %429, %422 ], [ %418, %412 ]
  %433 = load i32, ptr %432, align 8, !tbaa !78
  %434 = load i32, ptr %307, align 8, !tbaa !84
  %435 = load i32, ptr %309, align 4, !tbaa !85
  %436 = icmp slt i32 %435, %434
  %437 = sub i32 %435, %434
  %438 = add i32 %437, 1
  %439 = select i1 %436, i32 0, i32 %438
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %443, label %441

441:                                              ; preds = %431
  %442 = load i64, ptr %306, align 8, !tbaa !86
  br label %443

443:                                              ; preds = %441, %431
  %444 = phi i64 [ %442, %441 ], [ 0, %431 ]
  %445 = load ptr, ptr @ira_conflict_id_allocno_map, align 8
  %446 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %416, i64 0, i32 9
  %447 = getelementptr inbounds %struct.ira_allocno, ptr %432, i64 0, i32 21
  %448 = load ptr, ptr @conflicts, align 8
  %449 = sext i32 %433 to i64
  %450 = getelementptr inbounds ptr, ptr %448, i64 %449
  br label %451

451:                                              ; preds = %532, %443
  %452 = phi i32 [ %369, %443 ], [ %498, %532 ]
  %453 = phi i64 [ %444, %443 ], [ %533, %532 ]
  %454 = phi i32 [ 0, %443 ], [ %534, %532 ]
  %455 = phi i32 [ 0, %443 ], [ %501, %532 ]
  %456 = icmp eq i64 %453, 0
  br i1 %456, label %457, label %466

457:                                              ; preds = %451
  %458 = add i32 %455, 1
  %459 = shl i32 %458, 6
  %460 = icmp ult i32 %459, %439
  br i1 %460, label %461, label %496

461:                                              ; preds = %457
  %462 = zext i32 %458 to i64
  %463 = getelementptr inbounds i64, ptr %306, i64 %462
  %464 = load i64, ptr %463, align 8, !tbaa !86
  %465 = icmp eq i64 %464, 0
  br i1 %465, label %473, label %466, !llvm.loop !142

466:                                              ; preds = %480, %461, %451
  %467 = phi i64 [ %453, %451 ], [ %464, %461 ], [ %483, %480 ]
  %468 = phi i32 [ %454, %451 ], [ %459, %461 ], [ %478, %480 ]
  %469 = phi i32 [ %455, %451 ], [ %458, %461 ], [ %477, %480 ]
  %470 = phi i1 [ %456, %451 ], [ %465, %461 ], [ %484, %480 ]
  %471 = and i64 %467, 1
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %485, label %492

473:                                              ; preds = %461, %480
  %474 = phi i1 [ %484, %480 ], [ %465, %461 ]
  %475 = phi i64 [ %483, %480 ], [ %464, %461 ]
  %476 = phi i32 [ %477, %480 ], [ %458, %461 ]
  %477 = add i32 %476, 1
  %478 = shl i32 %477, 6
  %479 = icmp ult i32 %478, %439
  br i1 %479, label %480, label %496, !llvm.loop !142

480:                                              ; preds = %473
  %481 = zext i32 %477 to i64
  %482 = getelementptr inbounds i64, ptr %306, i64 %481
  %483 = load i64, ptr %482, align 8, !tbaa !86
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %473, label %466, !llvm.loop !142

485:                                              ; preds = %466, %485
  %486 = phi i32 [ %488, %485 ], [ %468, %466 ]
  %487 = phi i64 [ %489, %485 ], [ %467, %466 ]
  %488 = add i32 %486, 1
  %489 = lshr exact i64 %487, 1
  %490 = and i64 %487, 2
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %485, label %492, !llvm.loop !146

492:                                              ; preds = %485, %466
  %493 = phi i64 [ %467, %466 ], [ %489, %485 ]
  %494 = phi i32 [ %468, %466 ], [ %488, %485 ]
  %495 = add nsw i32 %494, %434
  br label %496

496:                                              ; preds = %473, %457, %492
  %497 = phi i1 [ %470, %492 ], [ %456, %457 ], [ %474, %473 ]
  %498 = phi i32 [ %495, %492 ], [ %452, %457 ], [ %452, %473 ]
  %499 = phi i64 [ %493, %492 ], [ %453, %457 ], [ %475, %473 ]
  %500 = phi i32 [ %494, %492 ], [ %459, %457 ], [ %478, %473 ]
  %501 = phi i32 [ %469, %492 ], [ %458, %457 ], [ %477, %473 ]
  br i1 %497, label %535, label %502

502:                                              ; preds = %496
  %503 = sext i32 %498 to i64
  %504 = getelementptr inbounds ptr, ptr %445, i64 %503
  %505 = load ptr, ptr %504, align 8, !tbaa !56
  %506 = getelementptr inbounds %struct.ira_allocno, ptr %505, i64 0, i32 16
  %507 = load ptr, ptr %506, align 8, !tbaa !155
  %508 = icmp eq ptr %507, null
  br i1 %508, label %509, label %517

509:                                              ; preds = %502
  %510 = load ptr, ptr %446, align 8, !tbaa !157
  %511 = getelementptr inbounds %struct.ira_allocno, ptr %505, i64 0, i32 1
  %512 = load i32, ptr %511, align 4, !tbaa !76
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds ptr, ptr %510, i64 %513
  %515 = load ptr, ptr %514, align 8, !tbaa !56
  %516 = icmp eq ptr %515, null
  br i1 %516, label %532, label %517

517:                                              ; preds = %509, %502
  %518 = phi ptr [ %515, %509 ], [ %507, %502 ]
  %519 = getelementptr inbounds %struct.ira_allocno, ptr %518, i64 0, i32 24
  %520 = load i32, ptr %519, align 8, !tbaa !116
  %521 = load i32, ptr %447, align 8, !tbaa !84
  %522 = sub nsw i32 %520, %521
  %523 = and i32 %522, 63
  %524 = zext nneg i32 %523 to i64
  %525 = shl nuw i64 1, %524
  %526 = load ptr, ptr %450, align 8, !tbaa !56
  %527 = lshr i32 %522, 6
  %528 = zext nneg i32 %527 to i64
  %529 = getelementptr inbounds i64, ptr %526, i64 %528
  %530 = load i64, ptr %529, align 8, !tbaa !86
  %531 = or i64 %525, %530
  store i64 %531, ptr %529, align 8, !tbaa !86
  br label %532

532:                                              ; preds = %517, %509
  %533 = lshr i64 %499, 1
  %534 = add i32 %500, 1
  br label %451, !llvm.loop !158

535:                                              ; preds = %496, %420, %422
  %536 = getelementptr inbounds %struct.ira_allocno, ptr %301, i64 0, i32 16
  %537 = load ptr, ptr %536, align 8, !tbaa !155
  %538 = icmp eq ptr %537, null
  br i1 %538, label %544, label %539, !prof !159

539:                                              ; preds = %535, %539
  %540 = phi ptr [ %542, %539 ], [ %537, %535 ]
  tail call fastcc void @build_allocno_conflicts(ptr noundef nonnull %540)
  %541 = getelementptr inbounds %struct.ira_allocno, ptr %540, i64 0, i32 16
  %542 = load ptr, ptr %541, align 8, !tbaa !155
  %543 = icmp eq ptr %542, null
  br i1 %543, label %544, label %539, !prof !159, !llvm.loop !160

544:                                              ; preds = %539, %535
  %545 = getelementptr inbounds %struct.ira_allocno, ptr %301, i64 0, i32 5
  %546 = load ptr, ptr %545, align 8, !tbaa !56
  %547 = icmp eq ptr %546, null
  br i1 %547, label %291, label %300, !prof !156, !llvm.loop !161

548:                                              ; preds = %291, %282
  %549 = load ptr, ptr @collected_conflict_allocnos, align 8, !tbaa !56
  tail call void @ira_free(ptr noundef %549) #17
  %550 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !56
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %550, ptr noundef null, ptr noundef nonnull @add_copies) #17
  %551 = load i32, ptr @flag_ira_region, align 4
  %552 = add i32 %551, -1
  %553 = icmp ult i32 %552, 2
  br i1 %553, label %555, label %554, !prof !112

554:                                              ; preds = %586, %548
  br label %664

555:                                              ; preds = %548, %653
  %556 = phi ptr [ %588, %653 ], [ undef, %548 ]
  %557 = phi i32 [ %589, %653 ], [ 0, %548 ]
  %558 = load i32, ptr @ira_copies_num, align 4, !tbaa !71
  %559 = icmp slt i32 %557, %558
  br i1 %559, label %560, label %586, !prof !102

560:                                              ; preds = %555
  %561 = load ptr, ptr @ira_copies, align 8, !tbaa !56
  %562 = sext i32 %557 to i64
  %563 = sext i32 %558 to i64
  %564 = getelementptr inbounds ptr, ptr %561, i64 %562
  %565 = load ptr, ptr %564, align 8, !tbaa !56
  %566 = icmp eq ptr %565, null
  br i1 %566, label %579, label %573, !prof !103

567:                                              ; preds = %579
  %568 = getelementptr inbounds ptr, ptr %561, i64 %581
  %569 = load ptr, ptr %568, align 8, !tbaa !56
  %570 = icmp eq ptr %569, null
  br i1 %570, label %579, label %571, !prof !103, !llvm.loop !162

571:                                              ; preds = %567
  %572 = icmp slt i64 %581, %563
  br label %573

573:                                              ; preds = %571, %560
  %574 = phi i64 [ %562, %560 ], [ %581, %571 ]
  %575 = phi i1 [ %559, %560 ], [ %572, %571 ]
  %576 = phi ptr [ %565, %560 ], [ %569, %571 ]
  %577 = trunc i64 %574 to i32
  %578 = add nsw i32 %577, 1
  br label %586

579:                                              ; preds = %560, %567
  %580 = phi i64 [ %581, %567 ], [ %562, %560 ]
  %581 = add nsw i64 %580, 1
  %582 = trunc i64 %581 to i32
  %583 = icmp eq i32 %558, %582
  br i1 %583, label %584, label %567, !prof !163, !llvm.loop !162

584:                                              ; preds = %579
  %585 = icmp slt i64 %581, %563
  br label %586

586:                                              ; preds = %584, %555, %573
  %587 = phi i1 [ %575, %573 ], [ %559, %555 ], [ %585, %584 ]
  %588 = phi ptr [ %576, %573 ], [ %556, %555 ], [ %556, %584 ]
  %589 = phi i32 [ %578, %573 ], [ %557, %555 ], [ %557, %584 ]
  br i1 %587, label %590, label %554, !prof !164

590:                                              ; preds = %586
  %591 = getelementptr inbounds %struct.ira_allocno_copy, ptr %588, i64 0, i32 1
  %592 = load ptr, ptr %591, align 8, !tbaa !165
  %593 = getelementptr inbounds %struct.ira_allocno_copy, ptr %588, i64 0, i32 2
  %594 = load ptr, ptr %593, align 8, !tbaa !167
  %595 = getelementptr inbounds %struct.ira_allocno, ptr %592, i64 0, i32 6
  %596 = load ptr, ptr %595, align 8, !tbaa !79
  %597 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !56
  %598 = icmp eq ptr %596, %597
  br i1 %598, label %653, label %599, !prof !168

599:                                              ; preds = %590
  %600 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %596, i64 0, i32 6
  %601 = load ptr, ptr %600, align 8, !tbaa !154
  %602 = getelementptr inbounds %struct.ira_allocno, ptr %592, i64 0, i32 16
  %603 = load ptr, ptr %602, align 8, !tbaa !155
  %604 = icmp eq ptr %603, null
  br i1 %604, label %605, label %613

605:                                              ; preds = %599
  %606 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %601, i64 0, i32 9
  %607 = load ptr, ptr %606, align 8, !tbaa !157
  %608 = getelementptr inbounds %struct.ira_allocno, ptr %592, i64 0, i32 1
  %609 = load i32, ptr %608, align 4, !tbaa !76
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds ptr, ptr %607, i64 %610
  %612 = load ptr, ptr %611, align 8, !tbaa !56
  br label %613

613:                                              ; preds = %605, %599
  %614 = phi ptr [ %612, %605 ], [ %603, %599 ]
  %615 = getelementptr inbounds %struct.ira_allocno, ptr %594, i64 0, i32 16
  %616 = load ptr, ptr %615, align 8, !tbaa !155
  %617 = icmp eq ptr %616, null
  br i1 %617, label %618, label %626

618:                                              ; preds = %613
  %619 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %601, i64 0, i32 9
  %620 = load ptr, ptr %619, align 8, !tbaa !157
  %621 = getelementptr inbounds %struct.ira_allocno, ptr %594, i64 0, i32 1
  %622 = load i32, ptr %621, align 4, !tbaa !76
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds ptr, ptr %620, i64 %623
  %625 = load ptr, ptr %624, align 8, !tbaa !56
  br label %626

626:                                              ; preds = %618, %613
  %627 = phi ptr [ %625, %618 ], [ %616, %613 ]
  %628 = getelementptr inbounds %struct.ira_allocno, ptr %614, i64 0, i32 21
  %629 = load i32, ptr %628, align 8, !tbaa !84
  %630 = getelementptr inbounds %struct.ira_allocno, ptr %627, i64 0, i32 24
  %631 = load i32, ptr %630, align 8, !tbaa !116
  %632 = icmp sgt i32 %629, %631
  br i1 %632, label %654, label %633

633:                                              ; preds = %626
  %634 = getelementptr inbounds %struct.ira_allocno, ptr %614, i64 0, i32 22
  %635 = load i32, ptr %634, align 4, !tbaa !85
  %636 = icmp sgt i32 %631, %635
  br i1 %636, label %654, label %637

637:                                              ; preds = %633
  %638 = load ptr, ptr @conflicts, align 8, !tbaa !56
  %639 = load i32, ptr %614, align 8, !tbaa !78
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds ptr, ptr %638, i64 %640
  %642 = load ptr, ptr %641, align 8, !tbaa !56
  %643 = sub nsw i32 %631, %629
  %644 = lshr i32 %643, 6
  %645 = zext nneg i32 %644 to i64
  %646 = getelementptr inbounds i64, ptr %642, i64 %645
  %647 = load i64, ptr %646, align 8, !tbaa !86
  %648 = and i32 %643, 63
  %649 = zext nneg i32 %648 to i64
  %650 = shl nuw i64 1, %649
  %651 = and i64 %647, %650
  %652 = icmp eq i64 %651, 0
  br i1 %652, label %654, label %653

653:                                              ; preds = %637, %654, %590
  br label %555, !llvm.loop !169

654:                                              ; preds = %637, %633, %626
  %655 = getelementptr inbounds %struct.ira_allocno_copy, ptr %588, i64 0, i32 3
  %656 = load i32, ptr %655, align 8, !tbaa !170
  %657 = getelementptr inbounds %struct.ira_allocno_copy, ptr %588, i64 0, i32 4
  %658 = load i8, ptr %657, align 4, !tbaa !171
  %659 = getelementptr inbounds %struct.ira_allocno_copy, ptr %588, i64 0, i32 5
  %660 = load ptr, ptr %659, align 8, !tbaa !172
  %661 = getelementptr inbounds %struct.ira_allocno_copy, ptr %588, i64 0, i32 10
  %662 = load ptr, ptr %661, align 8, !tbaa !173
  %663 = tail call ptr @ira_add_allocno_copy(ptr noundef %614, ptr noundef %627, i32 noundef %656, i8 noundef zeroext %658, ptr noundef %660, ptr noundef %662) #17
  br label %653

664:                                              ; preds = %709, %554
  %665 = phi ptr [ undef, %554 ], [ %697, %709 ]
  %666 = phi i32 [ 0, %554 ], [ %698, %709 ]
  %667 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !71
  %668 = icmp slt i32 %666, %667
  br i1 %668, label %669, label %695, !prof !102

669:                                              ; preds = %664
  %670 = load ptr, ptr @ira_allocnos, align 8, !tbaa !56
  %671 = sext i32 %666 to i64
  %672 = sext i32 %667 to i64
  %673 = getelementptr inbounds ptr, ptr %670, i64 %671
  %674 = load ptr, ptr %673, align 8, !tbaa !56
  %675 = icmp eq ptr %674, null
  br i1 %675, label %688, label %682, !prof !103

676:                                              ; preds = %688
  %677 = getelementptr inbounds ptr, ptr %670, i64 %690
  %678 = load ptr, ptr %677, align 8, !tbaa !56
  %679 = icmp eq ptr %678, null
  br i1 %679, label %688, label %680, !prof !103, !llvm.loop !75

680:                                              ; preds = %676
  %681 = icmp slt i64 %690, %672
  br label %682

682:                                              ; preds = %680, %669
  %683 = phi i64 [ %671, %669 ], [ %690, %680 ]
  %684 = phi i1 [ %668, %669 ], [ %681, %680 ]
  %685 = phi ptr [ %674, %669 ], [ %678, %680 ]
  %686 = trunc i64 %683 to i32
  %687 = add nsw i32 %686, 1
  br label %695

688:                                              ; preds = %669, %676
  %689 = phi i64 [ %690, %676 ], [ %671, %669 ]
  %690 = add nsw i64 %689, 1
  %691 = trunc i64 %690 to i32
  %692 = icmp eq i32 %667, %691
  br i1 %692, label %693, label %676, !prof !104, !llvm.loop !75

693:                                              ; preds = %688
  %694 = icmp slt i64 %690, %672
  br label %695

695:                                              ; preds = %693, %664, %682
  %696 = phi i1 [ %684, %682 ], [ %668, %664 ], [ %694, %693 ]
  %697 = phi ptr [ %685, %682 ], [ %665, %664 ], [ %665, %693 ]
  %698 = phi i32 [ %687, %682 ], [ %666, %664 ], [ %666, %693 ]
  br i1 %696, label %699, label %710, !prof !105

699:                                              ; preds = %695
  %700 = getelementptr inbounds %struct.ira_allocno, ptr %697, i64 0, i32 23
  %701 = load ptr, ptr %700, align 8, !tbaa !83
  %702 = load ptr, ptr @conflicts, align 8, !tbaa !56
  %703 = load i32, ptr %697, align 8, !tbaa !78
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds ptr, ptr %702, i64 %704
  %706 = load ptr, ptr %705, align 8, !tbaa !56
  %707 = icmp eq ptr %701, %706
  br i1 %707, label %709, label %708, !prof !149

708:                                              ; preds = %699
  tail call void @ira_free(ptr noundef %706) #17
  br label %709

709:                                              ; preds = %708, %699
  br label %664, !llvm.loop !174

710:                                              ; preds = %695
  %711 = load ptr, ptr @conflicts, align 8, !tbaa !56
  tail call void @ira_free(ptr noundef %711) #17
  br label %712

712:                                              ; preds = %280, %710, %0
  %713 = phi ptr [ undef, %0 ], [ undef, %280 ], [ %697, %710 ]
  %714 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !71
  %715 = load ptr, ptr @ira_allocnos, align 8
  %716 = load i32, ptr @flag_caller_saves, align 4
  %717 = icmp eq i32 %716, 0
  %718 = load i32, ptr @optimize, align 4
  %719 = icmp eq i32 %718, 0
  %720 = load ptr, ptr @regno_reg_rtx, align 8
  %721 = load i64, ptr @call_used_reg_set, align 8
  %722 = load i64, ptr @no_caller_save_reg_set, align 8
  br label %723

723:                                              ; preds = %794, %712
  %724 = phi ptr [ %713, %712 ], [ %754, %794 ]
  %725 = phi i32 [ 0, %712 ], [ %755, %794 ]
  %726 = icmp slt i32 %725, %714
  br i1 %726, label %727, label %752, !prof !102

727:                                              ; preds = %723
  %728 = sext i32 %725 to i64
  %729 = getelementptr inbounds ptr, ptr %715, i64 %728
  %730 = load ptr, ptr %729, align 8, !tbaa !56
  %731 = icmp eq ptr %730, null
  br i1 %731, label %744, label %738, !prof !103

732:                                              ; preds = %744
  %733 = getelementptr inbounds ptr, ptr %715, i64 %747
  %734 = load ptr, ptr %733, align 8, !tbaa !56
  %735 = icmp eq ptr %734, null
  br i1 %735, label %744, label %736, !prof !103, !llvm.loop !75

736:                                              ; preds = %732
  %737 = icmp slt i64 %747, %746
  br label %738

738:                                              ; preds = %736, %727
  %739 = phi i64 [ %728, %727 ], [ %747, %736 ]
  %740 = phi i1 [ %726, %727 ], [ %737, %736 ]
  %741 = phi ptr [ %730, %727 ], [ %734, %736 ]
  %742 = trunc i64 %739 to i32
  %743 = add nsw i32 %742, 1
  br label %752

744:                                              ; preds = %727, %732
  %745 = phi i64 [ %747, %732 ], [ %728, %727 ]
  %746 = sext i32 %714 to i64
  %747 = add nsw i64 %745, 1
  %748 = trunc i64 %747 to i32
  %749 = icmp eq i32 %714, %748
  br i1 %749, label %750, label %732, !prof !104, !llvm.loop !75

750:                                              ; preds = %744
  %751 = icmp slt i64 %747, %746
  br label %752

752:                                              ; preds = %750, %723, %738
  %753 = phi i1 [ %740, %738 ], [ %726, %723 ], [ %751, %750 ]
  %754 = phi ptr [ %741, %738 ], [ %724, %723 ], [ %724, %750 ]
  %755 = phi i32 [ %743, %738 ], [ %725, %723 ], [ %725, %750 ]
  br i1 %753, label %756, label %795, !prof !105

756:                                              ; preds = %752
  br i1 %717, label %757, label %761, !prof !106

757:                                              ; preds = %756
  %758 = getelementptr inbounds %struct.ira_allocno, ptr %754, i64 0, i32 30
  %759 = load i32, ptr %758, align 8, !tbaa !175
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %761, label %786

761:                                              ; preds = %757, %756
  br i1 %719, label %762, label %782, !prof !106

762:                                              ; preds = %761
  %763 = getelementptr inbounds %struct.ira_allocno, ptr %754, i64 0, i32 1
  %764 = load i32, ptr %763, align 4, !tbaa !76
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds ptr, ptr %720, i64 %765
  %767 = load ptr, ptr %766, align 8, !tbaa !56
  %768 = getelementptr inbounds %struct.rtx_def, ptr %767, i64 0, i32 1, i32 0, i32 0, i64 2
  %769 = load ptr, ptr %768, align 8, !tbaa !67
  %770 = icmp eq ptr %769, null
  br i1 %770, label %782, label %771

771:                                              ; preds = %762
  %772 = load ptr, ptr %769, align 8, !tbaa !176
  %773 = icmp eq ptr %772, null
  br i1 %773, label %782, label %774

774:                                              ; preds = %771
  %775 = load i64, ptr %772, align 8
  %776 = trunc i64 %775 to i16
  switch i16 %776, label %782 [
    i16 32, label %777
    i16 29, label %777
  ]

777:                                              ; preds = %774, %774
  %778 = getelementptr inbounds %struct.tree_decl_common, ptr %772, i64 0, i32 2
  %779 = load i64, ptr %778, align 8
  %780 = and i64 %779, 4096
  %781 = icmp eq i64 %780, 0
  br i1 %781, label %786, label %782

782:                                              ; preds = %777, %774, %771, %762, %761
  %783 = getelementptr inbounds %struct.ira_allocno, ptr %754, i64 0, i32 30
  %784 = load i32, ptr %783, align 8, !tbaa !175
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %794, label %786, !prof !178

786:                                              ; preds = %782, %757, %777
  %787 = phi i64 [ %721, %777 ], [ %721, %757 ], [ %722, %782 ]
  %788 = getelementptr inbounds %struct.ira_allocno, ptr %754, i64 0, i32 27
  %789 = load i64, ptr %788, align 8, !tbaa !96
  %790 = or i64 %789, %787
  store i64 %790, ptr %788, align 8, !tbaa !96
  %791 = getelementptr inbounds %struct.ira_allocno, ptr %754, i64 0, i32 26
  %792 = load i64, ptr %791, align 8, !tbaa !98
  %793 = or i64 %792, %787
  store i64 %793, ptr %791, align 8, !tbaa !98
  br label %794

794:                                              ; preds = %786, %782
  br label %723, !llvm.loop !179

795:                                              ; preds = %752
  %796 = load i32, ptr @optimize, align 4, !tbaa !71
  %797 = icmp ne i32 %796, 0
  %798 = load i8, ptr @ira_conflicts_p, align 1
  %799 = icmp ne i8 %798, 0
  %800 = select i1 %797, i1 %799, i1 false, !prof !112
  %801 = load i32, ptr @internal_flag_ira_verbose, align 4
  %802 = icmp sgt i32 %801, 2
  %803 = select i1 %800, i1 %802, i1 false, !prof !112
  %804 = load ptr, ptr @ira_dump_file, align 8
  %805 = icmp ne ptr %804, null
  %806 = select i1 %803, i1 %805, i1 false, !prof !112
  br i1 %806, label %807, label %808, !prof !101

807:                                              ; preds = %795
  tail call fastcc void @print_conflicts(ptr noundef nonnull %804, i8 noundef zeroext 0)
  br label %808

808:                                              ; preds = %807, %795
  ret void
}

declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @add_copies(ptr nocapture noundef readonly %0) #11 !prof !180 !PGOFuncName !181 {
  %2 = alloca [30 x i8], align 16
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = icmp eq ptr %3, null
  br i1 %4, label %394, label %5, !prof !182

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %8, null
  br i1 %9, label %394, label %10, !prof !183

10:                                               ; preds = %5, %390
  %11 = phi ptr [ %392, %390 ], [ %8, %5 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.rtl_bb_info, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !184
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = icmp eq ptr %11, %16
  br i1 %17, label %394, label %18, !prof !186

18:                                               ; preds = %10
  %19 = load i32, ptr %11, align 8
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -11
  %22 = icmp ult i32 %21, -3
  br i1 %22, label %390, label %23, !prof !187

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %2) #17
  %24 = load i32, ptr @optimize_size, align 4, !tbaa !71
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46, !prof !188

26:                                               ; preds = %23
  %27 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !71
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29, !prof !188

29:                                               ; preds = %26
  %30 = load ptr, ptr @cfun, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !189
  %33 = load ptr, ptr %32, align 8, !tbaa !191
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !193
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %29, %26
  %38 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !67
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 11
  %41 = load i32, ptr %40, align 8, !tbaa !194
  %42 = add i32 %41, 9
  %43 = icmp ult i32 %42, 19
  br i1 %43, label %46, label %44, !prof !195

44:                                               ; preds = %37
  %45 = sdiv i32 %41, 10
  br label %46

46:                                               ; preds = %29, %44, %37, %23
  %47 = phi i32 [ 1000, %23 ], [ %45, %44 ], [ 1, %37 ], [ 1000, %29 ]
  %48 = tail call i32 @llvm.umax.i32(i32 %47, i32 1)
  %49 = add nsw i32 %20, -7
  %50 = icmp ult i32 %49, 4
  br i1 %50, label %51, label %59, !prof !188

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !67
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 23
  br i1 %56, label %59, label %57, !prof !196

57:                                               ; preds = %51
  %58 = tail call ptr @single_set_2(ptr noundef nonnull %11, ptr noundef nonnull %53) #17
  br label %59

59:                                               ; preds = %57, %51, %46
  %60 = phi ptr [ %58, %57 ], [ null, %46 ], [ %53, %51 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %102, label %62, !prof !197

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !67
  %65 = load i32, ptr %64, align 8
  %66 = trunc i32 %65 to i16
  switch i16 %66, label %102 [
    i16 37, label %73
    i16 39, label %67
  ], !prof !198

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !67
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 37
  br i1 %72, label %73, label %102

73:                                               ; preds = %67, %62
  %74 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !67
  %76 = load i32, ptr %75, align 8
  %77 = trunc i32 %76 to i16
  switch i16 %77, label %102 [
    i16 37, label %84
    i16 39, label %78
  ], !prof !199

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !67
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 37
  br i1 %83, label %84, label %102

84:                                               ; preds = %78, %73
  %85 = tail call i32 @side_effects_p(ptr noundef nonnull %60) #17
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %102, !prof !200

87:                                               ; preds = %84
  %88 = load ptr, ptr %74, align 8, !tbaa !67
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 37
  br i1 %91, label %95, label %92, !prof !200

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !67
  br label %95

95:                                               ; preds = %92, %87
  %96 = phi ptr [ %94, %92 ], [ %88, %87 ]
  %97 = tail call ptr @find_reg_note(ptr noundef nonnull %11, i32 noundef 1, ptr noundef %96) #17
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99, !prof !201

99:                                               ; preds = %95
  %100 = load ptr, ptr %63, align 8, !tbaa !67
  %101 = load ptr, ptr %74, align 8, !tbaa !67
  tail call fastcc void @process_regs_for_copy(ptr noundef %100, ptr noundef %101, i8 noundef zeroext 0, ptr noundef nonnull %11, i32 noundef %48)
  br label %389

102:                                              ; preds = %84, %78, %73, %67, %95, %62, %59
  %103 = tail call ptr @find_reg_note(ptr noundef nonnull %11, i32 noundef 1, ptr noundef null) #17
  %104 = icmp eq ptr %103, null
  br i1 %104, label %389, label %105, !prof !202

105:                                              ; preds = %102
  tail call void @extract_insn(ptr noundef nonnull %11) #17
  %106 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !203
  %107 = icmp sgt i8 %106, 0
  br i1 %107, label %108, label %110, !prof !205

108:                                              ; preds = %105
  %109 = zext nneg i8 %106 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %2, i8 0, i64 %109, i1 false), !tbaa !67
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !203
  %112 = icmp sgt i8 %111, 0
  br i1 %112, label %116, label %113, !prof !205

113:                                              ; preds = %311, %110
  %114 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !203
  %115 = icmp sgt i8 %114, 0
  br i1 %115, label %316, label %389, !prof !205

116:                                              ; preds = %110, %311
  %117 = phi i64 [ %312, %311 ], [ 0, %110 ]
  %118 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !56
  %120 = load i32, ptr %119, align 8
  %121 = trunc i32 %120 to i16
  switch i16 %121, label %311 [
    i16 37, label %128
    i16 39, label %122
  ], !prof !206

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !67
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 65535
  %127 = icmp eq i32 %126, 37
  br i1 %127, label %128, label %311, !prof !207

128:                                              ; preds = %122, %116
  br label %129

129:                                              ; preds = %128, %308
  %130 = phi i32 [ 0, %128 ], [ %309, %308 ]
  %131 = phi i1 [ true, %128 ], [ false, %308 ]
  %132 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %280, label %134, !prof !208

134:                                              ; preds = %129
  %135 = load ptr, ptr %118, align 8, !tbaa !56
  br i1 %131, label %185, label %136, !prof !209

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %117
  %138 = load ptr, ptr %137, align 8, !tbaa !56
  %139 = load i8, ptr %138, align 1, !tbaa !67
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %157, label %141, !prof !210

141:                                              ; preds = %136, %153
  %142 = phi i8 [ %155, %153 ], [ %139, %136 ]
  %143 = phi i8 [ %154, %153 ], [ 0, %136 ]
  %144 = phi ptr [ %147, %153 ], [ %138, %136 ]
  %145 = icmp eq i8 %142, 89
  %146 = select i1 %145, i64 2, i64 1, !prof !211
  %147 = getelementptr inbounds i8, ptr %144, i64 %146
  switch i8 %142, label %149 [
    i8 35, label %153
    i8 44, label %148
  ], !prof !212

148:                                              ; preds = %141
  br label %153

149:                                              ; preds = %141
  %150 = icmp eq i8 %143, 0
  %151 = icmp eq i8 %142, 37
  %152 = and i1 %150, %151
  br i1 %152, label %183, label %153, !prof !213

153:                                              ; preds = %149, %148, %141
  %154 = phi i8 [ 0, %148 ], [ %143, %149 ], [ 1, %141 ]
  %155 = load i8, ptr %147, align 1, !tbaa !67
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %141, !prof !214, !llvm.loop !215

157:                                              ; preds = %153, %136
  %158 = icmp eq i64 %117, 0
  br i1 %158, label %185, label %159, !prof !216

159:                                              ; preds = %157
  %160 = add nsw i64 %117, -1
  %161 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !56
  %163 = load i8, ptr %162, align 1, !tbaa !67
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %185, label %165, !prof !217

165:                                              ; preds = %159
  %166 = add nsw i64 %117, -1
  br label %167

167:                                              ; preds = %165, %179
  %168 = phi i8 [ %181, %179 ], [ %163, %165 ]
  %169 = phi i8 [ %180, %179 ], [ 0, %165 ]
  %170 = phi ptr [ %173, %179 ], [ %162, %165 ]
  %171 = icmp eq i8 %168, 89
  %172 = select i1 %171, i64 2, i64 1, !prof !218
  %173 = getelementptr inbounds i8, ptr %170, i64 %172
  switch i8 %168, label %175 [
    i8 35, label %179
    i8 44, label %174
  ], !prof !219

174:                                              ; preds = %167
  br label %179

175:                                              ; preds = %167
  %176 = icmp eq i8 %169, 0
  %177 = icmp eq i8 %168, 37
  %178 = and i1 %176, %177
  br i1 %178, label %185, label %179, !prof !220

179:                                              ; preds = %175, %174, %167
  %180 = phi i8 [ 0, %174 ], [ %169, %175 ], [ 1, %167 ]
  %181 = load i8, ptr %173, align 1, !tbaa !67
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %185, label %167, !prof !221, !llvm.loop !215

183:                                              ; preds = %149
  %184 = add nuw i64 %117, 1
  br label %185

185:                                              ; preds = %179, %175, %183, %159, %157, %134
  %186 = phi i1 [ false, %134 ], [ true, %157 ], [ %164, %159 ], [ false, %183 ], [ false, %175 ], [ %182, %179 ]
  %187 = phi i64 [ %117, %134 ], [ %117, %157 ], [ %117, %159 ], [ %184, %183 ], [ %166, %175 ], [ %117, %179 ]
  %188 = shl i64 %187, 32
  %189 = ashr exact i64 %188, 32
  %190 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !56
  br label %192

192:                                              ; preds = %219, %185
  %193 = phi i32 [ -1, %185 ], [ %220, %219 ]
  %194 = phi i8 [ 0, %185 ], [ %221, %219 ]
  %195 = phi ptr [ %191, %185 ], [ %224, %219 ]
  %196 = load i8, ptr %195, align 1, !tbaa !67
  %197 = sext i8 %196 to i32
  switch i8 %196, label %199 [
    i8 0, label %225
    i8 35, label %219
    i8 44, label %198
  ], !prof !222

198:                                              ; preds = %192
  br label %219

199:                                              ; preds = %192
  %200 = icmp eq i8 %194, 0
  br i1 %200, label %201, label %219, !prof !223

201:                                              ; preds = %199
  switch i8 %196, label %219 [
    i8 88, label %280
    i8 109, label %280
    i8 111, label %280
    i8 57, label %215
    i8 56, label %215
    i8 55, label %215
    i8 112, label %202
    i8 103, label %280
    i8 54, label %215
    i8 53, label %215
    i8 52, label %215
    i8 51, label %215
    i8 50, label %215
    i8 49, label %215
    i8 48, label %215
    i8 114, label %208
    i8 65, label %205
    i8 66, label %205
    i8 67, label %205
    i8 68, label %205
    i8 81, label %205
    i8 82, label %205
    i8 83, label %205
    i8 84, label %205
    i8 85, label %205
    i8 87, label %205
    i8 89, label %205
    i8 90, label %205
    i8 97, label %205
    i8 98, label %205
    i8 99, label %205
    i8 100, label %205
    i8 101, label %205
    i8 102, label %205
    i8 104, label %205
    i8 106, label %205
    i8 107, label %205
    i8 108, label %205
    i8 113, label %205
    i8 116, label %205
    i8 117, label %205
    i8 118, label %205
    i8 119, label %205
    i8 120, label %205
    i8 121, label %205
    i8 122, label %205
  ], !prof !224

202:                                              ; preds = %201
  %203 = tail call i32 @address_operand(ptr noundef %135, i32 noundef 0) #17
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %219, label %280

205:                                              ; preds = %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201, %201
  %206 = tail call i32 @lookup_constraint(ptr noundef nonnull %195) #17
  %207 = tail call i32 @regclass_for_constraint(i32 noundef %206) #17
  br label %208

208:                                              ; preds = %205, %201
  %209 = phi i32 [ %207, %205 ], [ 13, %201 ]
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %280, !prof !225

211:                                              ; preds = %208
  %212 = tail call i32 @lookup_constraint(ptr noundef nonnull %195) #17
  %213 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %135, i32 noundef %212) #17
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %219, label %280

215:                                              ; preds = %201, %201, %201, %201, %201, %201, %201, %201, %201, %201
  %216 = icmp eq i32 %193, -1
  %217 = icmp eq i32 %193, %197
  %218 = or i1 %216, %217
  br i1 %218, label %219, label %280, !prof !226

219:                                              ; preds = %201, %215, %211, %202, %199, %198, %192
  %220 = phi i32 [ %193, %198 ], [ %193, %199 ], [ %193, %211 ], [ %193, %202 ], [ %193, %192 ], [ %197, %215 ], [ %193, %201 ]
  %221 = phi i8 [ 0, %198 ], [ 1, %199 ], [ 0, %211 ], [ 0, %202 ], [ 1, %192 ], [ 0, %215 ], [ 0, %201 ]
  %222 = icmp eq i8 %196, 89
  %223 = select i1 %222, i64 2, i64 1, !prof !227
  %224 = getelementptr inbounds i8, ptr %195, i64 %223
  br label %192, !llvm.loop !228

225:                                              ; preds = %192
  %226 = icmp eq i32 %193, -1
  br i1 %226, label %280, label %227, !prof !229

227:                                              ; preds = %225
  %228 = add nsw i32 %193, -48
  br i1 %131, label %280, label %229, !prof !230

229:                                              ; preds = %227
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !56
  %233 = load i8, ptr %232, align 1, !tbaa !67
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %253, label %235, !prof !231

235:                                              ; preds = %229, %247
  %236 = phi i8 [ %249, %247 ], [ %233, %229 ]
  %237 = phi i8 [ %248, %247 ], [ 0, %229 ]
  %238 = phi ptr [ %241, %247 ], [ %232, %229 ]
  %239 = icmp eq i8 %236, 89
  %240 = select i1 %239, i64 2, i64 1, !prof !232
  %241 = getelementptr inbounds i8, ptr %238, i64 %240
  switch i8 %236, label %243 [
    i8 35, label %247
    i8 44, label %242
  ], !prof !233

242:                                              ; preds = %235
  br label %247

243:                                              ; preds = %235
  %244 = icmp eq i8 %237, 0
  %245 = icmp eq i8 %236, 37
  %246 = and i1 %244, %245
  br i1 %246, label %251, label %247, !prof !234

247:                                              ; preds = %243, %242, %235
  %248 = phi i8 [ 0, %242 ], [ %237, %243 ], [ 1, %235 ]
  %249 = load i8, ptr %241, align 1, !tbaa !67
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %253, label %235, !prof !235, !llvm.loop !215

251:                                              ; preds = %243
  %252 = add nsw i32 %193, -47
  br label %280

253:                                              ; preds = %247, %229
  %254 = icmp sgt i32 %193, 48
  br i1 %254, label %255, label %278, !prof !236

255:                                              ; preds = %253
  %256 = add nsw i32 %193, -49
  %257 = zext nneg i32 %256 to i64
  %258 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !56
  %260 = load i8, ptr %259, align 1, !tbaa !67
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %278, label %262

262:                                              ; preds = %255, %274
  %263 = phi i8 [ %276, %274 ], [ %260, %255 ]
  %264 = phi i8 [ %275, %274 ], [ 0, %255 ]
  %265 = phi ptr [ %268, %274 ], [ %259, %255 ]
  %266 = icmp eq i8 %263, 89
  %267 = select i1 %266, i64 2, i64 1
  %268 = getelementptr inbounds i8, ptr %265, i64 %267
  switch i8 %263, label %270 [
    i8 35, label %274
    i8 44, label %269
  ]

269:                                              ; preds = %262
  br label %274

270:                                              ; preds = %262
  %271 = icmp eq i8 %264, 0
  %272 = icmp eq i8 %263, 37
  %273 = and i1 %271, %272
  br i1 %273, label %280, label %274

274:                                              ; preds = %270, %269, %262
  %275 = phi i8 [ 0, %269 ], [ %264, %270 ], [ 1, %262 ]
  %276 = load i8, ptr %268, align 1, !tbaa !67
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %262, !llvm.loop !215

278:                                              ; preds = %274, %255, %253
  %279 = select i1 %186, i32 -1, i32 %228, !prof !237
  br label %280

280:                                              ; preds = %215, %211, %202, %201, %201, %201, %201, %208, %270, %278, %251, %227, %225, %129
  %281 = phi i32 [ -1, %129 ], [ -1, %225 ], [ %252, %251 ], [ %228, %227 ], [ %279, %278 ], [ %256, %270 ], [ -1, %208 ], [ -1, %201 ], [ -1, %201 ], [ -1, %201 ], [ -1, %201 ], [ -1, %202 ], [ -1, %211 ], [ -1, %215 ]
  %282 = icmp sgt i32 %281, -1
  br i1 %282, label %283, label %308, !prof !238

283:                                              ; preds = %280
  %284 = zext nneg i32 %281 to i64
  %285 = getelementptr inbounds [30 x i8], ptr %2, i64 0, i64 %284
  store i8 1, ptr %285, align 1, !tbaa !67
  %286 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %284
  %287 = load ptr, ptr %286, align 8, !tbaa !56
  %288 = load i32, ptr %287, align 8
  %289 = trunc i32 %288 to i16
  switch i16 %289, label %308 [
    i16 37, label %296
    i16 39, label %290
  ], !prof !239

290:                                              ; preds = %283
  %291 = getelementptr inbounds %struct.rtx_def, ptr %287, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !67
  %293 = load i32, ptr %292, align 8
  %294 = and i32 %293, 65535
  %295 = icmp eq i32 %294, 37
  br i1 %295, label %296, label %308

296:                                              ; preds = %290, %283
  %297 = load i32, ptr %119, align 8
  %298 = and i32 %297, 65535
  %299 = icmp eq i32 %298, 37
  br i1 %299, label %303, label %300, !prof !240

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !67
  br label %303

303:                                              ; preds = %300, %296
  %304 = phi ptr [ %302, %300 ], [ %119, %296 ]
  %305 = tail call ptr @find_reg_note(ptr noundef nonnull %11, i32 noundef 1, ptr noundef %304) #17
  %306 = icmp eq ptr %305, null
  br i1 %306, label %308, label %307, !prof !241

307:                                              ; preds = %303
  tail call fastcc void @process_regs_for_copy(ptr noundef nonnull %119, ptr noundef nonnull %287, i8 noundef zeroext 1, ptr noundef null, i32 noundef %48)
  br label %308

308:                                              ; preds = %303, %290, %307, %283, %280
  %309 = add nuw nsw i32 %130, 1
  %310 = icmp eq i32 %130, 0
  br i1 %310, label %129, label %311, !prof !209, !llvm.loop !242

311:                                              ; preds = %308, %122, %116
  %312 = add nuw nsw i64 %117, 1
  %313 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !203
  %314 = sext i8 %313 to i64
  %315 = icmp slt i64 %312, %314
  br i1 %315, label %116, label %113, !prof !243, !llvm.loop !244

316:                                              ; preds = %113, %384
  %317 = phi i64 [ %385, %384 ], [ 0, %113 ]
  %318 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !56
  %320 = load i32, ptr %319, align 8
  %321 = trunc i32 %320 to i16
  switch i16 %321, label %384 [
    i16 37, label %328
    i16 39, label %322
  ], !prof !206

322:                                              ; preds = %316
  %323 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !67
  %325 = load i32, ptr %324, align 8
  %326 = and i32 %325, 65535
  %327 = icmp eq i32 %326, 37
  br i1 %327, label %328, label %384, !prof !207

328:                                              ; preds = %322, %316
  %329 = and i32 %320, 65535
  %330 = icmp eq i32 %329, 37
  br i1 %330, label %334, label %331, !prof !245

331:                                              ; preds = %328
  %332 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !67
  br label %334

334:                                              ; preds = %331, %328
  %335 = phi ptr [ %333, %331 ], [ %319, %328 ]
  %336 = tail call ptr @find_reg_note(ptr noundef nonnull %11, i32 noundef 1, ptr noundef %335) #17
  %337 = icmp eq ptr %336, null
  br i1 %337, label %384, label %338, !prof !246

338:                                              ; preds = %334
  %339 = load i32, ptr %319, align 8
  %340 = trunc i32 %339 to i16
  switch i16 %340, label %347 [
    i16 37, label %348
    i16 39, label %341
  ], !prof !247

341:                                              ; preds = %338
  %342 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !67
  %344 = load i32, ptr %343, align 8
  %345 = and i32 %344, 65535
  %346 = icmp eq i32 %345, 37
  br i1 %346, label %348, label %347, !prof !207

347:                                              ; preds = %341, %338
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 430, ptr noundef nonnull @.str.17) #17
  br label %348

348:                                              ; preds = %347, %341, %338
  %349 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !203
  %350 = icmp sgt i8 %349, 0
  br i1 %350, label %351, label %384, !prof !248

351:                                              ; preds = %348, %379
  %352 = phi i64 [ %380, %379 ], [ 0, %348 ]
  %353 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !56
  %355 = load i32, ptr %354, align 8
  %356 = trunc i32 %355 to i16
  switch i16 %356, label %379 [
    i16 37, label %365
    i16 39, label %357
  ], !prof !249

357:                                              ; preds = %351
  %358 = getelementptr inbounds %struct.rtx_def, ptr %354, i64 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !67
  %360 = load i32, ptr %359, align 8
  %361 = and i32 %360, 65535
  %362 = icmp ne i32 %361, 37
  %363 = icmp eq i64 %352, %317
  %364 = or i1 %363, %362
  br i1 %364, label %379, label %367, !prof !250

365:                                              ; preds = %351
  %366 = icmp eq i64 %352, %317
  br i1 %366, label %379, label %367, !prof !251

367:                                              ; preds = %365, %357
  %368 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %352
  %369 = load i32, ptr %368, align 4, !tbaa !71
  %370 = icmp eq i32 %369, 1
  br i1 %370, label %371, label %379, !prof !252

371:                                              ; preds = %367
  %372 = getelementptr inbounds i8, ptr %2, i64 %352
  %373 = load i8, ptr %372, align 1, !tbaa !67
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %375, label %379, !prof !253

375:                                              ; preds = %371
  %376 = icmp slt i32 %48, 8
  %377 = lshr i32 %48, 3
  %378 = select i1 %376, i32 1, i32 %377
  tail call fastcc void @process_regs_for_copy(ptr noundef nonnull %319, ptr noundef nonnull %354, i8 noundef zeroext 0, ptr noundef null, i32 noundef %378)
  br label %379

379:                                              ; preds = %367, %375, %371, %365, %357, %351
  %380 = add nuw nsw i64 %352, 1
  %381 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !203
  %382 = sext i8 %381 to i64
  %383 = icmp slt i64 %380, %382
  br i1 %383, label %351, label %384, !prof !254, !llvm.loop !255

384:                                              ; preds = %379, %348, %334, %322, %316
  %385 = add nuw nsw i64 %317, 1
  %386 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !203
  %387 = sext i8 %386 to i64
  %388 = icmp slt i64 %385, %387
  br i1 %388, label %316, label %389, !prof !243, !llvm.loop !256

389:                                              ; preds = %384, %113, %99, %102
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %2) #17
  br label %390

390:                                              ; preds = %18, %389
  %391 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %392 = load ptr, ptr %391, align 8, !tbaa !67
  %393 = icmp eq ptr %392, null
  br i1 %393, label %394, label %10, !prof !257, !llvm.loop !258

394:                                              ; preds = %390, %10, %5, %1
  ret void
}

declare void @ira_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_hard_reg_set(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #9 !prof !55 {
  %4 = tail call i32 @fputs(ptr noundef %1, ptr noundef %0)
  br label %5

5:                                                ; preds = %3, %42
  %6 = phi i64 [ 0, %3 ], [ %44, %42 ]
  %7 = phi i32 [ -1, %3 ], [ %43, %42 ]
  %8 = shl nuw i64 1, %6
  %9 = and i64 %8, %2
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = icmp eq i64 %6, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = add nsw i64 %6, -1
  %15 = shl nuw i64 1, %14
  %16 = and i64 %15, %2
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %11
  %19 = trunc i64 %6 to i32
  br label %20

20:                                               ; preds = %13, %18, %5
  %21 = phi i32 [ %19, %18 ], [ %7, %13 ], [ %7, %5 ]
  %22 = icmp sgt i32 %21, -1
  %23 = icmp eq i64 %6, 52
  %24 = or i1 %23, %10
  %25 = and i1 %24, %22
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = add nsw i64 %6, -1
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %21, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %21)
  br label %42

32:                                               ; preds = %26
  %33 = trunc i64 %6 to i32
  %34 = add i32 %33, -2
  %35 = icmp eq i32 %21, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = add nuw nsw i32 %21, 1
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %21, i32 noundef %37)
  br label %42

39:                                               ; preds = %32
  %40 = trunc i64 %27 to i32
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %21, i32 noundef %40)
  br label %42

42:                                               ; preds = %30, %39, %36, %20
  %43 = phi i32 [ %21, %20 ], [ -1, %36 ], [ -1, %39 ], [ -1, %30 ]
  %44 = add nuw nsw i64 %6, 1
  %45 = icmp eq i64 %44, 53
  br i1 %45, label %46, label %5, !llvm.loop !259

46:                                               ; preds = %42
  %47 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  ret void
}

declare ptr @sparseset_alloc(i32 noundef) local_unnamed_addr #3

declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

declare void @sparseset_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @build_allocno_conflicts(ptr noundef %0) unnamed_addr #11 !prof !55 !PGOFuncName !260 {
  %2 = load ptr, ptr @conflicts, align 8, !tbaa !56
  %3 = load i32, ptr %0, align 8, !tbaa !78
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds ptr, ptr %2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %8 = load i32, ptr %7, align 8, !tbaa !84
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %10 = load i32, ptr %9, align 4, !tbaa !85
  %11 = icmp slt i32 %10, %8
  %12 = sub i32 %10, %8
  %13 = add i32 %12, 1
  %14 = select i1 %11, i32 0, i32 %13, !prof !106
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !106

16:                                               ; preds = %1
  %17 = load i64, ptr %6, align 8, !tbaa !86
  br label %18

18:                                               ; preds = %1, %16
  %19 = phi i64 [ %17, %16 ], [ 0, %1 ]
  %20 = load ptr, ptr @collected_conflict_allocnos, align 8
  br label %21

21:                                               ; preds = %67, %18
  %22 = phi i64 [ %72, %67 ], [ 0, %18 ]
  %23 = phi i32 [ %63, %67 ], [ undef, %18 ]
  %24 = phi i64 [ %74, %67 ], [ %19, %18 ]
  %25 = phi i32 [ %75, %67 ], [ 0, %18 ]
  %26 = phi i32 [ %66, %67 ], [ 0, %18 ]
  %27 = icmp eq i64 %24, 0
  br i1 %27, label %28, label %32, !prof !139

28:                                               ; preds = %21
  %29 = add i32 %26, 1
  %30 = shl i32 %29, 6
  %31 = icmp ult i32 %30, %14
  br i1 %31, label %43, label %61, !prof !140

32:                                               ; preds = %43, %21
  %33 = phi i64 [ %24, %21 ], [ %48, %43 ]
  %34 = phi i32 [ %25, %21 ], [ %44, %43 ]
  %35 = phi i32 [ %26, %21 ], [ %45, %43 ]
  %36 = phi i1 [ %27, %21 ], [ %49, %43 ]
  %37 = and i64 %33, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %50, label %57, !prof !139

39:                                               ; preds = %43
  %40 = add i32 %45, 1
  %41 = shl i32 %40, 6
  %42 = icmp ult i32 %41, %14
  br i1 %42, label %43, label %61, !prof !143, !llvm.loop !142

43:                                               ; preds = %28, %39
  %44 = phi i32 [ %41, %39 ], [ %30, %28 ]
  %45 = phi i32 [ %40, %39 ], [ %29, %28 ]
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, ptr %6, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !86
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %39, label %32, !prof !261, !llvm.loop !142

50:                                               ; preds = %32, %50
  %51 = phi i32 [ %53, %50 ], [ %34, %32 ]
  %52 = phi i64 [ %54, %50 ], [ %33, %32 ]
  %53 = add i32 %51, 1
  %54 = lshr exact i64 %52, 1
  %55 = and i64 %52, 2
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %50, label %57, !prof !145, !llvm.loop !146

57:                                               ; preds = %50, %32
  %58 = phi i64 [ %33, %32 ], [ %54, %50 ]
  %59 = phi i32 [ %34, %32 ], [ %53, %50 ]
  %60 = add nsw i32 %59, %8
  br label %61

61:                                               ; preds = %39, %28, %57
  %62 = phi i1 [ %36, %57 ], [ %27, %28 ], [ %49, %39 ]
  %63 = phi i32 [ %60, %57 ], [ %23, %28 ], [ %23, %39 ]
  %64 = phi i64 [ %58, %57 ], [ %24, %28 ], [ %48, %39 ]
  %65 = phi i32 [ %59, %57 ], [ %30, %28 ], [ %41, %39 ]
  %66 = phi i32 [ %35, %57 ], [ %29, %28 ], [ %40, %39 ]
  br i1 %62, label %76, label %67, !prof !147

67:                                               ; preds = %61
  %68 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !56
  %69 = sext i32 %63 to i64
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !56
  %72 = add nuw i64 %22, 1
  %73 = getelementptr inbounds ptr, ptr %20, i64 %22
  store ptr %71, ptr %73, align 8, !tbaa !56
  %74 = lshr i64 %64, 1
  %75 = add i32 %65, 1
  br label %21, !llvm.loop !148

76:                                               ; preds = %61
  %77 = trunc i64 %22 to i32
  %78 = tail call zeroext i8 @ira_conflict_vector_profitable_p(ptr noundef nonnull %0, i32 noundef %77) #17
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %88, label %80, !prof !149

80:                                               ; preds = %76
  tail call void @ira_allocate_allocno_conflict_vec(ptr noundef nonnull %0, i32 noundef %77) #17
  %81 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %82 = load ptr, ptr %81, align 8, !tbaa !83
  %83 = load ptr, ptr @collected_conflict_allocnos, align 8, !tbaa !56
  %84 = and i64 %22, 4294967295
  %85 = shl nuw nsw i64 %84, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %82, ptr align 8 %83, i64 %85, i1 false), !prof !262
  %86 = getelementptr inbounds ptr, ptr %82, i64 %84
  store ptr null, ptr %86, align 8, !tbaa !56
  %87 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  store i32 %77, ptr %87, align 8, !tbaa !151
  br label %106

88:                                               ; preds = %76
  %89 = load ptr, ptr @conflicts, align 8, !tbaa !56
  %90 = load i32, ptr %0, align 8, !tbaa !78
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %89, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !56
  %94 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  store ptr %93, ptr %94, align 8, !tbaa !83
  %95 = load i32, ptr %9, align 4, !tbaa !85
  %96 = load i32, ptr %7, align 8, !tbaa !84
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %103, label %98, !prof !152

98:                                               ; preds = %88
  %99 = add i32 %95, 64
  %100 = sub i32 %99, %96
  %101 = sdiv i32 %100, 64
  %102 = shl nsw i32 %101, 3
  br label %103

103:                                              ; preds = %88, %98
  %104 = phi i32 [ %102, %98 ], [ 0, %88 ]
  %105 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  store i32 %104, ptr %105, align 4, !tbaa !153
  br label %106

106:                                              ; preds = %103, %80
  %107 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !79
  %109 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %108, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !154
  %111 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 16
  %112 = load ptr, ptr %111, align 8, !tbaa !155
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %125, !prof !156

114:                                              ; preds = %106
  %115 = icmp eq ptr %110, null
  br i1 %115, label %223, label %116, !prof !156

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %110, i64 0, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !157
  %119 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !76
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %118, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !56
  %124 = icmp eq ptr %123, null
  br i1 %124, label %223, label %125

125:                                              ; preds = %116, %106
  %126 = phi ptr [ %123, %116 ], [ %112, %106 ]
  %127 = load i32, ptr %126, align 8, !tbaa !78
  %128 = load i32, ptr %7, align 8, !tbaa !84
  %129 = load i32, ptr %9, align 4, !tbaa !85
  %130 = icmp slt i32 %129, %128
  %131 = sub i32 %129, %128
  %132 = add i32 %131, 1
  %133 = select i1 %130, i32 0, i32 %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %125
  %136 = load i64, ptr %6, align 8, !tbaa !86
  br label %137

137:                                              ; preds = %125, %135
  %138 = phi i64 [ %136, %135 ], [ 0, %125 ]
  %139 = load ptr, ptr @ira_conflict_id_allocno_map, align 8
  %140 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %110, i64 0, i32 9
  %141 = getelementptr inbounds %struct.ira_allocno, ptr %126, i64 0, i32 21
  %142 = load ptr, ptr @conflicts, align 8
  %143 = sext i32 %127 to i64
  %144 = getelementptr inbounds ptr, ptr %142, i64 %143
  br label %145

145:                                              ; preds = %220, %137
  %146 = phi i32 [ %63, %137 ], [ %186, %220 ]
  %147 = phi i64 [ %138, %137 ], [ %221, %220 ]
  %148 = phi i32 [ 0, %137 ], [ %222, %220 ]
  %149 = phi i32 [ 0, %137 ], [ %189, %220 ]
  %150 = icmp eq i64 %147, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = add i32 %149, 1
  %153 = shl i32 %152, 6
  %154 = icmp ult i32 %153, %133
  br i1 %154, label %166, label %184

155:                                              ; preds = %166, %145
  %156 = phi i64 [ %147, %145 ], [ %171, %166 ]
  %157 = phi i32 [ %148, %145 ], [ %167, %166 ]
  %158 = phi i32 [ %149, %145 ], [ %168, %166 ]
  %159 = phi i1 [ %150, %145 ], [ %172, %166 ]
  %160 = and i64 %156, 1
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %173, label %180

162:                                              ; preds = %166
  %163 = add i32 %168, 1
  %164 = shl i32 %163, 6
  %165 = icmp ult i32 %164, %133
  br i1 %165, label %166, label %184, !llvm.loop !142

166:                                              ; preds = %151, %162
  %167 = phi i32 [ %164, %162 ], [ %153, %151 ]
  %168 = phi i32 [ %163, %162 ], [ %152, %151 ]
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i64, ptr %6, i64 %169
  %171 = load i64, ptr %170, align 8, !tbaa !86
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %162, label %155, !llvm.loop !142

173:                                              ; preds = %155, %173
  %174 = phi i32 [ %176, %173 ], [ %157, %155 ]
  %175 = phi i64 [ %177, %173 ], [ %156, %155 ]
  %176 = add i32 %174, 1
  %177 = lshr exact i64 %175, 1
  %178 = and i64 %175, 2
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %173, label %180, !llvm.loop !146

180:                                              ; preds = %173, %155
  %181 = phi i64 [ %156, %155 ], [ %177, %173 ]
  %182 = phi i32 [ %157, %155 ], [ %176, %173 ]
  %183 = add nsw i32 %182, %128
  br label %184

184:                                              ; preds = %162, %151, %180
  %185 = phi i1 [ %159, %180 ], [ %150, %151 ], [ %172, %162 ]
  %186 = phi i32 [ %183, %180 ], [ %146, %151 ], [ %146, %162 ]
  %187 = phi i64 [ %181, %180 ], [ %147, %151 ], [ %171, %162 ]
  %188 = phi i32 [ %182, %180 ], [ %153, %151 ], [ %164, %162 ]
  %189 = phi i32 [ %158, %180 ], [ %152, %151 ], [ %163, %162 ]
  br i1 %185, label %223, label %190

190:                                              ; preds = %184
  %191 = sext i32 %186 to i64
  %192 = getelementptr inbounds ptr, ptr %139, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !56
  %194 = getelementptr inbounds %struct.ira_allocno, ptr %193, i64 0, i32 16
  %195 = load ptr, ptr %194, align 8, !tbaa !155
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %205

197:                                              ; preds = %190
  %198 = load ptr, ptr %140, align 8, !tbaa !157
  %199 = getelementptr inbounds %struct.ira_allocno, ptr %193, i64 0, i32 1
  %200 = load i32, ptr %199, align 4, !tbaa !76
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds ptr, ptr %198, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !56
  %204 = icmp eq ptr %203, null
  br i1 %204, label %220, label %205

205:                                              ; preds = %197, %190
  %206 = phi ptr [ %203, %197 ], [ %195, %190 ]
  %207 = getelementptr inbounds %struct.ira_allocno, ptr %206, i64 0, i32 24
  %208 = load i32, ptr %207, align 8, !tbaa !116
  %209 = load i32, ptr %141, align 8, !tbaa !84
  %210 = sub nsw i32 %208, %209
  %211 = and i32 %210, 63
  %212 = zext nneg i32 %211 to i64
  %213 = shl nuw i64 1, %212
  %214 = load ptr, ptr %144, align 8, !tbaa !56
  %215 = lshr i32 %210, 6
  %216 = zext nneg i32 %215 to i64
  %217 = getelementptr inbounds i64, ptr %214, i64 %216
  %218 = load i64, ptr %217, align 8, !tbaa !86
  %219 = or i64 %213, %218
  store i64 %219, ptr %217, align 8, !tbaa !86
  br label %220

220:                                              ; preds = %197, %205
  %221 = lshr i64 %187, 1
  %222 = add i32 %188, 1
  br label %145, !llvm.loop !158

223:                                              ; preds = %184, %114, %116
  ret void
}

declare zeroext i8 @ira_conflict_vector_profitable_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ira_allocate_allocno_conflict_vec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @process_regs_for_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) unnamed_addr #10 !prof !263 !PGOFuncName !264 {
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %23 [
    i16 37, label %14
    i16 39, label %8
  ], !prof !265

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %23

14:                                               ; preds = %5, %8
  %15 = load i32, ptr %1, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %23 [
    i16 37, label %24
    i16 39, label %17
  ], !prof !265

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %14, %8, %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 351, ptr noundef nonnull @.str.17) #17
  br label %24

24:                                               ; preds = %14, %17, %23
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %28, label %32, !prof !266

28:                                               ; preds = %24
  %29 = load i32, ptr %1, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 37
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %27, label %53, label %34, !prof !267

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !67
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !67
  %39 = icmp ult i32 %38, 53
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i32, ptr %36, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load i32, ptr %44, align 8, !tbaa !67
  %46 = lshr i32 %25, 16
  %47 = and i32 %46, 255
  %48 = tail call i32 @subreg_regno_offset(i32 noundef %38, i32 noundef %43, i32 noundef %45, i32 noundef %47) #17
  br label %53

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load i32, ptr %50, align 8, !tbaa !67
  %52 = lshr i32 %51, 2
  br label %53

53:                                               ; preds = %40, %49, %32
  %54 = phi i32 [ 0, %32 ], [ %52, %49 ], [ %48, %40 ]
  %55 = phi ptr [ %0, %32 ], [ %36, %49 ], [ %36, %40 ]
  %56 = load i32, ptr %1, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 37
  br i1 %58, label %78, label %59, !prof !267

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !67
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !67
  %64 = icmp ult i32 %63, 53
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load i32, ptr %61, align 8
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load i32, ptr %69, align 8, !tbaa !67
  %71 = lshr i32 %56, 16
  %72 = and i32 %71, 255
  %73 = tail call i32 @subreg_regno_offset(i32 noundef %63, i32 noundef %68, i32 noundef %70, i32 noundef %72) #17
  br label %78

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load i32, ptr %75, align 8, !tbaa !67
  %77 = lshr i32 %76, 2
  br label %78

78:                                               ; preds = %65, %74, %53
  %79 = phi i32 [ 0, %53 ], [ %77, %74 ], [ %73, %65 ]
  %80 = phi ptr [ %1, %53 ], [ %61, %74 ], [ %61, %65 ]
  %81 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !67
  %83 = icmp ult i32 %82, 53
  %84 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !67
  %86 = icmp ult i32 %85, 53
  br i1 %83, label %87, label %91, !prof !268

87:                                               ; preds = %78
  br i1 %86, label %277, label %88, !prof !269

88:                                               ; preds = %87
  %89 = sub i32 %54, %79
  %90 = add i32 %89, %82
  br label %140

91:                                               ; preds = %78
  br i1 %86, label %92, label %95, !prof !270

92:                                               ; preds = %91
  %93 = sub i32 %79, %54
  %94 = add i32 %93, %85
  br label %140

95:                                               ; preds = %91
  %96 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !56
  %97 = zext i32 %82 to i64
  %98 = getelementptr inbounds ptr, ptr %96, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !56
  %100 = getelementptr inbounds %struct.ira_allocno, ptr %99, i64 0, i32 21
  %101 = load i32, ptr %100, align 8, !tbaa !84
  %102 = zext i32 %85 to i64
  %103 = getelementptr inbounds ptr, ptr %96, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !56
  %105 = getelementptr inbounds %struct.ira_allocno, ptr %104, i64 0, i32 24
  %106 = load i32, ptr %105, align 8, !tbaa !116
  %107 = icmp sgt i32 %101, %106
  br i1 %107, label %130, label %108, !prof !271

108:                                              ; preds = %95
  %109 = getelementptr inbounds %struct.ira_allocno, ptr %99, i64 0, i32 22
  %110 = load i32, ptr %109, align 4, !tbaa !85
  %111 = icmp sgt i32 %106, %110
  br i1 %111, label %130, label %112, !prof !272

112:                                              ; preds = %108
  %113 = load ptr, ptr @conflicts, align 8, !tbaa !56
  %114 = load i32, ptr %99, align 8, !tbaa !78
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds ptr, ptr %113, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !56
  %118 = sub nsw i32 %106, %101
  %119 = lshr i32 %118, 6
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds i64, ptr %117, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !86
  %123 = and i32 %118, 63
  %124 = zext nneg i32 %123 to i64
  %125 = shl nuw i64 1, %124
  %126 = and i64 %122, %125
  %127 = icmp eq i64 %126, 0
  %128 = icmp eq i32 %54, %79
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %132, label %277, !prof !273

130:                                              ; preds = %108, %95
  %131 = icmp eq i32 %54, %79
  br i1 %131, label %132, label %277, !prof !168

132:                                              ; preds = %112, %130
  %133 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !56
  %134 = tail call ptr @ira_add_allocno_copy(ptr noundef %99, ptr noundef %104, i32 noundef %4, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %133) #17
  %135 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !56
  %136 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %135, i64 0, i32 15
  %137 = load ptr, ptr %136, align 8, !tbaa !274
  %138 = load i32, ptr %134, align 8, !tbaa !275
  %139 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %137, i32 noundef %138) #17
  br label %277

140:                                              ; preds = %92, %88
  %141 = phi i32 [ %82, %92 ], [ %85, %88 ]
  %142 = phi i32 [ %94, %92 ], [ %90, %88 ]
  %143 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !56
  %144 = zext i32 %141 to i64
  %145 = getelementptr inbounds ptr, ptr %143, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !56
  %147 = sext i32 %142 to i64
  %148 = icmp ult i32 %142, 53
  br i1 %148, label %149, label %277, !prof !276

149:                                              ; preds = %140
  %150 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %147
  %151 = load i32, ptr %150, align 4, !tbaa !71
  %152 = getelementptr inbounds %struct.ira_allocno, ptr %146, i64 0, i32 2
  %153 = load i32, ptr %152, align 8, !tbaa !277
  %154 = getelementptr inbounds %struct.ira_allocno, ptr %146, i64 0, i32 9
  %155 = load i32, ptr %154, align 8, !tbaa !97
  %156 = icmp ne ptr %3, null
  %157 = and i1 %156, %33
  br i1 %157, label %158, label %183, !prof !276

158:                                              ; preds = %149
  %159 = zext i32 %151 to i64
  %160 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !71
  %162 = tail call i32 @reg_classes_intersect_p(i32 noundef %151, i32 noundef 13) #17
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %171, !prof !278

164:                                              ; preds = %158
  %165 = zext i32 %153 to i64
  %166 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !67
  %168 = and i8 %167, -2
  %169 = icmp eq i8 %168, 10
  %170 = select i1 %169, i32 2, i32 1
  br label %180

171:                                              ; preds = %158
  %172 = icmp eq i32 %153, 40
  br i1 %172, label %180, label %173, !prof !278

173:                                              ; preds = %171
  %174 = zext i32 %153 to i64
  %175 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !67
  %177 = zext i8 %176 to i32
  %178 = add nuw nsw i32 %177, 3
  %179 = lshr i32 %178, 2
  br label %180

180:                                              ; preds = %173, %171, %164
  %181 = phi i32 [ %170, %164 ], [ %179, %173 ], [ 3, %171 ]
  %182 = icmp ugt i32 %161, %181
  br i1 %182, label %183, label %277, !prof !278

183:                                              ; preds = %180, %149
  %184 = zext i32 %155 to i64
  %185 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %184, i64 %147
  %186 = load i16, ptr %185, align 2, !tbaa !279
  %187 = sext i16 %186 to i64
  %188 = icmp slt i16 %186, 0
  br i1 %188, label %277, label %189

189:                                              ; preds = %183
  %190 = load i32, ptr %81, align 8, !tbaa !67
  %191 = icmp ult i32 %190, 53
  %192 = zext i32 %153 to i64
  %193 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !56
  %195 = icmp eq ptr %194, null
  br i1 %191, label %196, label %200

196:                                              ; preds = %189
  br i1 %195, label %197, label %198

197:                                              ; preds = %196
  tail call void @ira_init_register_move_cost(i32 noundef %153) #17
  br label %198

198:                                              ; preds = %196, %197
  %199 = zext i32 %151 to i64
  br label %204

200:                                              ; preds = %189
  br i1 %195, label %201, label %202

201:                                              ; preds = %200
  tail call void @ira_init_register_move_cost(i32 noundef %153) #17
  br label %202

202:                                              ; preds = %200, %201
  %203 = zext i32 %151 to i64
  br label %204

204:                                              ; preds = %202, %198
  %205 = phi i64 [ %184, %202 ], [ %199, %198 ]
  %206 = phi i64 [ %203, %202 ], [ %184, %198 ]
  %207 = load ptr, ptr %193, align 8, !tbaa !56
  %208 = getelementptr inbounds [27 x i16], ptr %207, i64 %206, i64 %205
  %209 = load i16, ptr %208, align 2, !tbaa !279
  %210 = zext i16 %209 to i32
  %211 = mul nsw i32 %210, %4
  %212 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %184
  %213 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %184
  br label %214

214:                                              ; preds = %260, %204
  %215 = phi ptr [ %146, %204 ], [ %261, %260 ]
  %216 = getelementptr inbounds %struct.ira_allocno, ptr %215, i64 0, i32 33
  %217 = getelementptr inbounds %struct.ira_allocno, ptr %215, i64 0, i32 10
  %218 = load i32, ptr %217, align 4, !tbaa !280
  %219 = load ptr, ptr %216, align 8, !tbaa !56
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %232

221:                                              ; preds = %214
  %222 = tail call ptr @ira_allocate_cost_vector(i32 noundef %155) #17
  store ptr %222, ptr %216, align 8, !tbaa !56
  %223 = load i32, ptr %212, align 4, !tbaa !71
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %221
  %226 = zext nneg i32 %223 to i64
  br label %227

227:                                              ; preds = %225, %227
  %228 = phi i64 [ 0, %225 ], [ %230, %227 ]
  %229 = getelementptr inbounds i32, ptr %222, i64 %228
  store i32 %218, ptr %229, align 4, !tbaa !71
  %230 = add nuw nsw i64 %228, 1
  %231 = icmp eq i64 %230, %226
  br i1 %231, label %232, label %227, !llvm.loop !281

232:                                              ; preds = %227, %221, %214
  %233 = getelementptr inbounds %struct.ira_allocno, ptr %215, i64 0, i32 35
  %234 = load ptr, ptr %233, align 8, !tbaa !56
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %243

236:                                              ; preds = %232
  %237 = tail call ptr @ira_allocate_cost_vector(i32 noundef %155) #17
  store ptr %237, ptr %233, align 8, !tbaa !56
  %238 = load i32, ptr %213, align 4, !tbaa !71
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = zext nneg i32 %238 to i64
  %242 = shl nuw nsw i64 %241, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %237, i8 0, i64 %242, i1 false), !tbaa !71
  br label %243

243:                                              ; preds = %240, %236, %232
  %244 = load ptr, ptr %216, align 8, !tbaa !282
  %245 = getelementptr inbounds i32, ptr %244, i64 %187
  %246 = load i32, ptr %245, align 4, !tbaa !71
  %247 = sub nsw i32 %246, %211
  store i32 %247, ptr %245, align 4, !tbaa !71
  %248 = load ptr, ptr %233, align 8, !tbaa !283
  %249 = getelementptr inbounds i32, ptr %248, i64 %187
  %250 = load i32, ptr %249, align 4, !tbaa !71
  %251 = sub nsw i32 %250, %211
  store i32 %251, ptr %249, align 4, !tbaa !71
  %252 = load i32, ptr %245, align 4, !tbaa !71
  %253 = load i32, ptr %217, align 4, !tbaa !280
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %243
  store i32 %252, ptr %217, align 4, !tbaa !280
  br label %256

256:                                              ; preds = %255, %243
  %257 = getelementptr inbounds %struct.ira_allocno, ptr %215, i64 0, i32 16
  %258 = load ptr, ptr %257, align 8, !tbaa !155
  %259 = icmp eq ptr %258, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %256, %268
  %261 = phi ptr [ %275, %268 ], [ %258, %256 ]
  br label %214, !llvm.loop !284

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.ira_allocno, ptr %215, i64 0, i32 6
  %264 = load ptr, ptr %263, align 8, !tbaa !79
  %265 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %264, i64 0, i32 6
  %266 = load ptr, ptr %265, align 8, !tbaa !154
  %267 = icmp eq ptr %266, null
  br i1 %267, label %277, label %268

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %266, i64 0, i32 9
  %270 = load ptr, ptr %269, align 8, !tbaa !157
  %271 = getelementptr inbounds %struct.ira_allocno, ptr %215, i64 0, i32 1
  %272 = load i32, ptr %271, align 4, !tbaa !76
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds ptr, ptr %270, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !56
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %260

277:                                              ; preds = %268, %262, %180, %183, %140, %112, %130, %87, %132
  ret void
}

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

declare ptr @ira_add_allocno_copy(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ira_init_register_move_cost(i32 noundef) local_unnamed_addr #3

declare ptr @ira_allocate_cost_vector(i32 noundef) local_unnamed_addr #3

declare i32 @address_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @constraint_satisfied_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!54}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !{ptr @ira_build_conflicts, ptr @sparseset_alloc, i64 38}
!36 = !{ptr @ira_build_conflicts, ptr @ira_allocate, i64 107509}
!37 = !{ptr @ira_build_conflicts, ptr @sparseset_clear_bit, i64 169185}
!38 = !{ptr @ira_build_conflicts, ptr @free, i64 38}
!39 = !{ptr @ira_build_conflicts, ptr @max_reg_num, i64 38}
!40 = !{ptr @ira_build_conflicts, ptr @ira_conflict_vector_profitable_p, i64 107433}
!41 = !{ptr @ira_build_conflicts, ptr @ira_allocate_allocno_conflict_vec, i64 105696}
!42 = !{ptr @ira_build_conflicts, ptr @ira_free, i64 105772}
!43 = !{ptr @ira_build_conflicts, ptr @ira_traverse_loop_tree, i64 38}
!44 = !{ptr @add_copies, ptr @single_set_2, i64 10616}
!45 = !{ptr @add_copies, ptr @side_effects_p, i64 66533}
!46 = !{ptr @add_copies, ptr @find_reg_note, i64 738037}
!47 = !{ptr @add_copies, ptr @process_regs_for_copy, i64 68313}
!48 = !{ptr @add_copies, ptr @extract_insn, i64 254420}
!49 = !{ptr @add_copies, ptr @lookup_constraint, i64 9045}
!50 = !{ptr @add_copies, ptr @regclass_for_constraint, i64 9045}
!51 = !{ptr @process_regs_for_copy, ptr @ira_add_allocno_copy, i64 1725}
!52 = !{ptr @process_regs_for_copy, ptr @bitmap_set_bit, i64 1725}
!53 = !{ptr @process_regs_for_copy, ptr @reg_classes_intersect_p, i64 66702}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !{!61, !57, i64 8}
!61 = !{!"_IO_FILE", !62, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !57, i64 104, !62, i64 112, !62, i64 116, !63, i64 120, !64, i64 128, !58, i64 130, !58, i64 131, !57, i64 136, !63, i64 144, !57, i64 152, !57, i64 160, !57, i64 168, !57, i64 176, !63, i64 184, !62, i64 192, !58, i64 196}
!62 = !{!"int", !58, i64 0}
!63 = !{!"long", !58, i64 0}
!64 = !{!"short", !58, i64 0}
!65 = !{!61, !57, i64 16}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{!58, !58, i64 0}
!68 = !{!61, !57, i64 40}
!69 = !{!61, !57, i64 48}
!70 = !{!61, !62, i64 0}
!71 = !{!62, !62, i64 0}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = distinct !{!75, !73, !74}
!76 = !{!77, !62, i64 4}
!77 = !{!"ira_allocno", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !57, i64 16, !57, i64 24, !57, i64 32, !62, i64 40, !62, i64 44, !62, i64 48, !62, i64 52, !62, i64 56, !62, i64 60, !62, i64 64, !62, i64 68, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !57, i64 104, !57, i64 112, !62, i64 120, !62, i64 124, !57, i64 128, !62, i64 136, !62, i64 140, !63, i64 144, !63, i64 152, !62, i64 160, !62, i64 164, !62, i64 168, !62, i64 172, !62, i64 172, !62, i64 172, !62, i64 172, !62, i64 172, !62, i64 172, !62, i64 172, !62, i64 172, !62, i64 173, !62, i64 173, !62, i64 173, !62, i64 173, !57, i64 176, !57, i64 184, !57, i64 192, !57, i64 200, !57, i64 208, !62, i64 216, !62, i64 220, !57, i64 224, !57, i64 232, !62, i64 240}
!78 = !{!77, !62, i64 0}
!79 = !{!77, !57, i64 32}
!80 = !{!81, !57, i64 0}
!81 = !{!"ira_loop_tree_node", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !62, i64 56, !58, i64 60, !57, i64 64, !58, i64 72, !58, i64 76, !57, i64 184, !57, i64 192, !57, i64 200, !57, i64 208}
!82 = !{!81, !57, i64 8}
!83 = !{!77, !57, i64 128}
!84 = !{!77, !62, i64 120}
!85 = !{!77, !62, i64 124}
!86 = !{!63, !63, i64 0}
!87 = distinct !{!87, !73, !74}
!88 = distinct !{!88, !73, !74}
!89 = !{!90, !62, i64 80}
!90 = !{!"basic_block_def", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !58, i64 32, !57, i64 48, !57, i64 56, !58, i64 64, !63, i64 72, !62, i64 80, !62, i64 84, !62, i64 88, !62, i64 92, !62, i64 96}
!91 = !{!92, !62, i64 0}
!92 = !{!"loop", !62, i64 0, !62, i64 4, !57, i64 8, !57, i64 16, !93, i64 24, !62, i64 32, !62, i64 36, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !94, i64 80, !94, i64 96, !58, i64 112, !58, i64 113, !62, i64 116, !57, i64 120, !57, i64 128, !58, i64 136, !57, i64 144}
!93 = !{!"lpt_decision", !62, i64 0, !62, i64 4}
!94 = !{!"", !63, i64 0, !63, i64 8}
!95 = distinct !{!95, !73, !74}
!96 = !{!77, !63, i64 152}
!97 = !{!77, !62, i64 48}
!98 = !{!77, !63, i64 144}
!99 = distinct !{!99, !73, !74}
!100 = !{!"function_entry_count", i64 38}
!101 = !{!"branch_weights", i32 0, i32 38}
!102 = !{!"branch_weights", i32 151, i32 1}
!103 = !{!"branch_weights", i32 0, i32 1}
!104 = !{!"branch_weights", i32 151, i32 429581}
!105 = !{!"branch_weights", i32 107433, i32 38}
!106 = !{!"branch_weights", i32 0, i32 107433}
!107 = distinct !{!107, !73, !74}
!108 = !{!109, !62, i64 8}
!109 = !{!"param_info", !57, i64 0, !62, i64 8, !58, i64 12, !62, i64 16, !62, i64 20, !57, i64 24}
!110 = distinct !{!110, !73, !74}
!111 = !{!"VP", i32 1, i64 107433, i64 513, i64 74802, i64 257, i64 14021, i64 129, i64 6749, i64 65, i64 3611}
!112 = !{!"branch_weights", i32 38, i32 0}
!113 = !{!"branch_weights", i32 159689, i32 169185}
!114 = !{!115, !57, i64 0}
!115 = !{!"ira_allocno_live_range", !57, i64 0, !62, i64 8, !62, i64 12, !57, i64 16, !57, i64 24, !57, i64 32}
!116 = !{!77, !62, i64 136}
!117 = !{!118, !62, i64 20}
!118 = !{!"sparseset_def", !57, i64 0, !57, i64 8, !62, i64 16, !62, i64 20, !62, i64 24, !58, i64 28, !58, i64 29, !58, i64 32}
!119 = !{!"branch_weights", i32 169185, i32 0}
!120 = !{!118, !57, i64 8}
!121 = !{!118, !62, i64 16}
!122 = !{!"branch_weights", i32 109406, i32 59779}
!123 = !{!118, !57, i64 0}
!124 = !{!"branch_weights", i32 0, i32 109406}
!125 = !{!118, !62, i64 24}
!126 = !{!118, !58, i64 28}
!127 = !{!118, !58, i64 29}
!128 = !{!"branch_weights", i32 1, i32 169184}
!129 = distinct !{!129, !73, !74}
!130 = !{!"branch_weights", i32 169185, i32 217383}
!131 = !{!"branch_weights", i32 217384, i32 169184}
!132 = distinct !{!132, !73, !74}
!133 = distinct !{!133, !73, !74}
!134 = !{!"branch_weights", i32 1315345, i32 151}
!135 = distinct !{!135, !73, !74}
!136 = !{!"branch_weights", i32 1159801, i32 151}
!137 = distinct !{!137, !73, !74}
!138 = !{!"branch_weights", i32 182555, i32 107433}
!139 = !{!"branch_weights", i32 335287, i32 1}
!140 = !{!"branch_weights", i32 107432, i32 1}
!141 = !{!"branch_weights", i32 335286, i32 1}
!142 = distinct !{!142, !73, !74}
!143 = !{!"branch_weights", i32 11814467, i32 107432}
!144 = !{!"branch_weights", i32 11358759, i32 335286}
!145 = !{!"branch_weights", i32 551907, i32 335287}
!146 = distinct !{!146, !73, !74}
!147 = !{!"branch_weights", i32 107433, i32 335288}
!148 = distinct !{!148, !73, !74}
!149 = !{!"branch_weights", i32 1737, i32 105696}
!150 = !{!"VP", i32 1, i64 105696, i64 16, i64 58654, i64 8, i64 35678, i64 0, i64 5203, i64 17, i64 3232}
!151 = !{!77, !62, i64 160}
!152 = !{!"branch_weights", i32 0, i32 1737}
!153 = !{!77, !62, i64 140}
!154 = !{!81, !57, i64 48}
!155 = !{!77, !57, i64 80}
!156 = !{!"branch_weights", i32 107433, i32 0}
!157 = !{!81, !57, i64 64}
!158 = distinct !{!158, !73, !74}
!159 = !{!"branch_weights", i32 1, i32 0}
!160 = distinct !{!160, !73, !74}
!161 = distinct !{!161, !73, !74}
!162 = distinct !{!162, !73, !74}
!163 = !{!"branch_weights", i32 151, i32 6749}
!164 = !{!"branch_weights", i32 1725, i32 38}
!165 = !{!166, !57, i64 8}
!166 = !{!"ira_allocno_copy", !62, i64 0, !57, i64 8, !57, i64 16, !62, i64 24, !58, i64 28, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72}
!167 = !{!166, !57, i64 16}
!168 = !{!"branch_weights", i32 1725, i32 0}
!169 = distinct !{!169, !73, !74}
!170 = !{!166, !62, i64 24}
!171 = !{!166, !58, i64 28}
!172 = !{!166, !57, i64 32}
!173 = !{!166, !57, i64 72}
!174 = distinct !{!174, !73, !74}
!175 = !{!77, !62, i64 168}
!176 = !{!177, !57, i64 0}
!177 = !{!"reg_attrs", !57, i64 0, !63, i64 8}
!178 = !{!"branch_weights", i32 106401, i32 1032}
!179 = distinct !{!179, !73, !74}
!180 = !{!"function_entry_count", i64 155692}
!181 = !{!"ira-conflicts.c;add_copies"}
!182 = !{!"branch_weights", i32 38, i32 155654}
!183 = !{!"branch_weights", i32 1, i32 247}
!184 = !{!185, !57, i64 8}
!185 = !{!"rtl_bb_info", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !62, i64 32}
!186 = !{!"branch_weights", i32 155623, i32 893503}
!187 = !{!"branch_weights", i32 269827, i32 623676}
!188 = !{!"branch_weights", i32 623676, i32 0}
!189 = !{!190, !57, i64 8}
!190 = !{!"function", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !62, i64 104, !62, i64 108, !62, i64 112, !62, i64 116, !62, i64 120, !62, i64 124, !57, i64 128, !62, i64 136, !62, i64 137, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 138, !62, i64 139, !62, i64 139, !62, i64 139, !62, i64 139, !62, i64 139, !62, i64 139, !62, i64 139}
!191 = !{!192, !57, i64 0}
!192 = !{!"control_flow_graph", !57, i64 0, !57, i64 8, !57, i64 16, !62, i64 24, !62, i64 28, !62, i64 32, !57, i64 40, !62, i64 48, !58, i64 52, !58, i64 60, !62, i64 68, !62, i64 72}
!193 = !{!90, !63, i64 72}
!194 = !{!90, !62, i64 88}
!195 = !{!"branch_weights", i32 546649, i32 77027}
!196 = !{!"branch_weights", i32 613017, i32 10659}
!197 = !{!"branch_weights", i32 2392, i32 621284}
!198 = !{!"branch_weights", i32 237037, i32 384247, i32 0}
!199 = !{!"branch_weights", i32 317447, i32 66800, i32 0}
!200 = !{!"branch_weights", i32 66800, i32 0}
!201 = !{!"branch_weights", i32 37, i32 66763}
!202 = !{!"branch_weights", i32 301471, i32 255442}
!203 = !{!204, !58, i64 1086}
!204 = !{!"recog_data", !58, i64 0, !58, i64 240, !58, i64 480, !58, i64 720, !58, i64 840, !58, i64 960, !58, i64 1072, !58, i64 1086, !58, i64 1087, !58, i64 1088, !58, i64 1089, !57, i64 1120}
!205 = !{!"branch_weights", i32 255441, i32 1}
!206 = !{!"branch_weights", i32 395640, i32 116279, i32 202}
!207 = !{!"branch_weights", i32 202, i32 0}
!208 = !{!"branch_weights", i32 0, i32 232962}
!209 = !{!"branch_weights", i32 116481, i32 116481}
!210 = !{!"branch_weights", i32 1, i32 115436}
!211 = !{!"branch_weights", i32 16778, i32 874333}
!212 = !{!"branch_weights", i32 621868, i32 0, i32 269243}
!213 = !{!"branch_weights", i32 1044, i32 620824}
!214 = !{!"branch_weights", i32 115436, i32 775675}
!215 = distinct !{!215, !74}
!216 = !{!"branch_weights", i32 90491, i32 24946}
!217 = !{!"branch_weights", i32 1, i32 24123}
!218 = !{!"branch_weights", i32 16766, i32 596794}
!219 = !{!"branch_weights", i32 428600, i32 0, i32 184960}
!220 = !{!"branch_weights", i32 822, i32 427778}
!221 = !{!"branch_weights", i32 24123, i32 589437}
!222 = !{!"branch_weights", i32 248056, i32 1016, i32 0, i32 4244}
!223 = !{!"branch_weights", i32 248056, i32 0}
!224 = !{!"branch_weights", i32 11284, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34781, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4826, i32 188084, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 0, i32 404, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8662, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!225 = !{!"branch_weights", i32 0, i32 197165}
!226 = !{!"branch_weights", i32 4826, i32 0}
!227 = !{!"branch_weights", i32 0, i32 20354}
!228 = distinct !{!228, !74}
!229 = !{!"branch_weights", i32 0, i32 1016}
!230 = !{!"branch_weights", i32 508, i32 508}
!231 = !{!"branch_weights", i32 1, i32 507}
!232 = !{!"branch_weights", i32 0, i32 2888}
!233 = !{!"branch_weights", i32 2234, i32 0, i32 654}
!234 = !{!"branch_weights", i32 0, i32 2234}
!235 = !{!"branch_weights", i32 507, i32 2381}
!236 = !{!"branch_weights", i32 0, i32 508}
!237 = !{!"branch_weights", i32 208, i32 300}
!238 = !{!"branch_weights", i32 808, i32 232154}
!239 = !{!"branch_weights", i32 0, i32 808, i32 0}
!240 = !{!"branch_weights", i32 808, i32 0}
!241 = !{!"branch_weights", i32 339, i32 469}
!242 = distinct !{!242, !73, !74}
!243 = !{!"branch_weights", i32 256680, i32 255441}
!244 = distinct !{!244, !73, !74}
!245 = !{!"branch_weights", i32 116279, i32 202}
!246 = !{!"branch_weights", i32 6309, i32 110172}
!247 = !{!"branch_weights", i32 0, i32 109970, i32 202}
!248 = !{!"branch_weights", i32 110171, i32 1}
!249 = !{!"branch_weights", i32 96164, i32 125897, i32 211}
!250 = !{!"branch_weights", i32 202, i32 9}
!251 = !{!"branch_weights", i32 109970, i32 15927}
!252 = !{!"branch_weights", i32 2032, i32 13904}
!253 = !{!"branch_weights", i32 1355, i32 677}
!254 = !{!"branch_weights", i32 112101, i32 110171}
!255 = distinct !{!255, !73, !74}
!256 = distinct !{!256, !73, !74}
!257 = !{!"branch_weights", i32 247, i32 8392761}
!258 = distinct !{!258, !73, !74}
!259 = distinct !{!259, !73, !74}
!260 = !{!"ira-conflicts.c;build_allocno_conflicts"}
!261 = !{!"branch_weights", i32 11694045, i32 335287}
!262 = !{!"VP", i32 1, i64 0, i64 16, i64 0, i64 8, i64 0, i64 0, i64 0, i64 17, i64 0}
!263 = !{!"function_entry_count", i64 68587}
!264 = !{!"ira-conflicts.c;process_regs_for_copy"}
!265 = !{!"branch_weights", i32 0, i32 68587, i32 0}
!266 = !{!"branch_weights", i32 68587, i32 0}
!267 = !{!"branch_weights", i32 137174, i32 0}
!268 = !{!"branch_weights", i32 37, i32 68550}
!269 = !{!"branch_weights", i32 0, i32 37}
!270 = !{!"branch_weights", i32 66665, i32 1885}
!271 = !{!"branch_weights", i32 0, i32 1885}
!272 = !{!"branch_weights", i32 47, i32 1838}
!273 = !{!"branch_weights", i32 2894550, i32 276000}
!274 = !{!81, !57, i64 208}
!275 = !{!166, !62, i64 0}
!276 = !{!"branch_weights", i32 66702, i32 0}
!277 = !{!77, !62, i64 8}
!278 = !{!"branch_weights", i32 0, i32 66702}
!279 = !{!64, !64, i64 0}
!280 = !{!77, !62, i64 52}
!281 = distinct !{!281, !73, !74}
!282 = !{!77, !57, i64 184}
!283 = !{!77, !57, i64 200}
!284 = distinct !{!284, !74}
