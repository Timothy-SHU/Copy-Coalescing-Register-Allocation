; ModuleID = 'tree-vectorizer.c'
source_filename = "tree-vectorizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct._loop_vec_info = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@user_vect_verbosity_level = internal unnamed_addr global i32 10, align 4
@vect_verbosity_level = internal unnamed_addr global i32 10, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@vect_dump = dso_local local_unnamed_addr global ptr null, align 8
@vect_location = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"\0A%s:%d: note: \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Vectorized loops\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"vectorized %u loops in function.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"slp\00", align 1
@pass_slp_vectorize = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.3, ptr @gate_vect_slp, ptr @execute_vect_slp, ptr null, ptr null, i32 0, i32 90, i32 40, i32 0, i32 0, i32 0, i32 2071 } }, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"increase_alignment\00", align 1
@pass_ipa_increase_alignment = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str.4, ptr @gate_increase_alignment, ptr @increase_alignment, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@stmt_vec_info_vec = dso_local local_unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"tree-vectorizer.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@flag_tree_vectorize = external local_unnamed_addr global i32, align 4
@flag_tree_slp_vectorize = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"basic block vectorized using SLP\0A\00", align 1
@flag_section_anchors = external local_unnamed_addr global i32, align 4
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"Increasing alignment of decl: \00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !40 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !41
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !40 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !41
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !40 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !41
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !40 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !41
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !40 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !40 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !41
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !40 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !40 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !40 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !56
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !56
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !40 {
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
  br i1 %23, label %7, label %24, !llvm.loop !57

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree nounwind willreturn uwtable
define dso_local void @vect_set_verbosity_level(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !40 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 9)
  store i32 %4, ptr @user_vect_verbosity_level, align 4, !tbaa !56
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @vect_print_dump_info(i32 noundef %0) local_unnamed_addr #9 !prof !60 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = alloca %struct.expanded_location, align 8
  %4 = getelementptr inbounds %struct.expanded_location, ptr %3, i64 0, i32 1
  %5 = alloca %struct.expanded_location, align 8
  %6 = alloca %struct.expanded_location, align 8
  %7 = getelementptr inbounds %struct.expanded_location, ptr %6, i64 0, i32 1
  %8 = load i32, ptr @vect_verbosity_level, align 4, !tbaa !56
  %9 = icmp ult i32 %8, %0
  br i1 %9, label %34, label %10, !prof !61

10:                                               ; preds = %1
  %11 = load ptr, ptr @current_function_decl, align 8, !tbaa !41
  %12 = icmp ne ptr %11, null
  %13 = load ptr, ptr @vect_dump, align 8
  %14 = icmp ne ptr %13, null
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load i32, ptr @vect_location, align 4, !tbaa !56
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %11, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !52
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %21) #17
  %22 = load ptr, ptr %2, align 8, !tbaa !62
  %23 = load ptr, ptr @current_function_decl, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !52
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %25) #17
  br label %29

26:                                               ; preds = %16
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %17) #17
  %27 = load ptr, ptr %5, align 8, !tbaa !62
  %28 = load i32, ptr @vect_location, align 4, !tbaa !56
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %6, i32 noundef %28) #17
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi ptr [ %22, %19 ], [ %27, %26 ]
  %31 = phi ptr [ %4, %19 ], [ %7, %26 ]
  %32 = load i32, ptr %31, align 8, !tbaa !64
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str, ptr noundef %30, i32 noundef %32)
  br label %34

34:                                               ; preds = %29, %10, %1
  %35 = phi i8 [ 0, %1 ], [ 0, %10 ], [ 1, %29 ]
  ret i8 %35
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @vectorize_loops() local_unnamed_addr #10 !prof !40 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !41
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !69
  br label %11

11:                                               ; preds = %0, %5, %9
  %12 = phi i32 [ 0, %0 ], [ %10, %9 ], [ 0, %5 ]
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %197, label %14

14:                                               ; preds = %11
  tail call fastcc void @vect_set_dump_settings(i8 noundef zeroext 0)
  tail call void @init_stmt_vec_info_vec() #17
  %15 = load ptr, ptr @cfun, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = icmp eq ptr %17, null
  br i1 %18, label %94, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.loops, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 8, !tbaa !69
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %24, %23 ], [ 0, %19 ]
  %27 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %26, i64 noundef 8, i64 noundef 4) #17
  %28 = load ptr, ptr @cfun, align 8, !tbaa !41
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !65
  %31 = getelementptr inbounds %struct.loops, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !71
  br label %33

33:                                               ; preds = %46, %25
  %34 = phi ptr [ %32, %25 ], [ %47, %46 ]
  %35 = load i32, ptr %34, align 8, !tbaa !72
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, ptr %27, align 4, !tbaa !76
  %39 = add i32 %38, 1
  store i32 %39, ptr %27, align 4, !tbaa !76
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds %struct.VEC_int_base, ptr %27, i64 0, i32 2, i64 %40
  store i32 %35, ptr %41, align 4, !tbaa !56
  br label %42

42:                                               ; preds = %37, %33
  %43 = getelementptr inbounds %struct.loop, ptr %34, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !78
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %51, %42
  %47 = phi ptr [ %44, %42 ], [ %54, %51 ]
  br label %33, !llvm.loop !79

48:                                               ; preds = %70
  %49 = icmp eq ptr %27, null
  %50 = getelementptr inbounds %struct.loops, ptr %30, i64 0, i32 1
  br label %73

51:                                               ; preds = %42, %70
  %52 = phi ptr [ %71, %70 ], [ %34, %42 ]
  %53 = getelementptr inbounds %struct.loop, ptr %52, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !80
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %46, !llvm.loop !79

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.loop, ptr %52, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !81
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %58, align 8, !tbaa !69
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi i32 [ %61, %60 ], [ 0, %56 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = add i32 %63, -1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %58, i64 0, i32 2, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !41
  br label %70

70:                                               ; preds = %65, %62
  %71 = phi ptr [ %69, %65 ], [ null, %62 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %48, label %51, !llvm.loop !82

73:                                               ; preds = %48, %85
  %74 = phi i32 [ %86, %85 ], [ 0, %48 ]
  br i1 %49, label %82, label %75

75:                                               ; preds = %73
  %76 = load i32, ptr %27, align 4, !tbaa !76
  %77 = icmp ugt i32 %76, %74
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = zext i32 %74 to i64
  %80 = getelementptr inbounds %struct.VEC_int_base, ptr %27, i64 0, i32 2, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !56
  br label %82

82:                                               ; preds = %78, %75, %73
  %83 = phi i32 [ %81, %78 ], [ 0, %75 ], [ 0, %73 ]
  %84 = phi i1 [ false, %78 ], [ true, %75 ], [ true, %73 ]
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = add i32 %74, 1
  %87 = load ptr, ptr %50, align 8, !tbaa !67
  %88 = zext i32 %83 to i64
  %89 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %87, i64 0, i32 2, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !41
  %91 = icmp eq ptr %90, null
  br i1 %91, label %73, label %94, !llvm.loop !83

92:                                               ; preds = %82
  br i1 %49, label %94, label %93

93:                                               ; preds = %92
  tail call void @free(ptr noundef %27)
  br label %94

94:                                               ; preds = %85, %92, %93, %14
  %95 = phi i32 [ 0, %14 ], [ %74, %93 ], [ %74, %92 ], [ %86, %85 ]
  %96 = phi ptr [ null, %14 ], [ null, %93 ], [ null, %92 ], [ %27, %85 ]
  %97 = phi ptr [ null, %14 ], [ null, %93 ], [ null, %92 ], [ %90, %85 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %150, label %99

99:                                               ; preds = %94, %145
  %100 = phi i32 [ %118, %145 ], [ 0, %94 ]
  %101 = phi ptr [ %148, %145 ], [ %97, %94 ]
  %102 = phi ptr [ %147, %145 ], [ %96, %94 ]
  %103 = phi i32 [ %146, %145 ], [ %95, %94 ]
  %104 = tail call zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef nonnull %101) #17
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %99
  %107 = tail call i32 @find_loop_location(ptr noundef nonnull %101) #17
  store i32 %107, ptr @vect_location, align 4, !tbaa !56
  %108 = tail call ptr @vect_analyze_loop(ptr noundef nonnull %101) #17
  %109 = getelementptr inbounds %struct.loop, ptr %101, i64 0, i32 10
  store ptr %108, ptr %109, align 8, !tbaa !84
  %110 = icmp eq ptr %108, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct._loop_vec_info, ptr %108, i64 0, i32 5
  %113 = load i8, ptr %112, align 4, !tbaa !85
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  tail call void @vect_transform_loop(ptr noundef nonnull %108) #17
  %116 = add i32 %100, 1
  br label %117

117:                                              ; preds = %115, %111, %106, %99
  %118 = phi i32 [ %100, %99 ], [ %116, %115 ], [ %100, %111 ], [ %100, %106 ]
  %119 = icmp eq ptr %102, null
  %120 = load ptr, ptr @cfun, align 8
  %121 = getelementptr inbounds %struct.function, ptr %120, i64 0, i32 4
  br label %122

122:                                              ; preds = %134, %117
  %123 = phi i32 [ %103, %117 ], [ %135, %134 ]
  br i1 %119, label %131, label %124

124:                                              ; preds = %122
  %125 = load i32, ptr %102, align 4, !tbaa !76
  %126 = icmp ugt i32 %125, %123
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = zext i32 %123 to i64
  %129 = getelementptr inbounds %struct.VEC_int_base, ptr %102, i64 0, i32 2, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !56
  br label %131

131:                                              ; preds = %127, %124, %122
  %132 = phi i32 [ %130, %127 ], [ 0, %124 ], [ 0, %122 ]
  %133 = phi i1 [ false, %127 ], [ true, %124 ], [ true, %122 ]
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = add i32 %123, 1
  %136 = load ptr, ptr %121, align 8, !tbaa !65
  %137 = getelementptr inbounds %struct.loops, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !67
  %139 = zext i32 %132 to i64
  %140 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %138, i64 0, i32 2, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !41
  %142 = icmp eq ptr %141, null
  br i1 %142, label %122, label %145, !llvm.loop !83

143:                                              ; preds = %131
  br i1 %119, label %145, label %144

144:                                              ; preds = %143
  tail call void @free(ptr noundef %102)
  br label %145

145:                                              ; preds = %134, %143, %144
  %146 = phi i32 [ %123, %144 ], [ %123, %143 ], [ %135, %134 ]
  %147 = phi ptr [ null, %144 ], [ null, %143 ], [ %102, %134 ]
  %148 = phi ptr [ null, %144 ], [ null, %143 ], [ %141, %134 ]
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %99, !llvm.loop !87

150:                                              ; preds = %145, %94
  %151 = phi i32 [ 0, %94 ], [ %118, %145 ]
  store i32 0, ptr @vect_location, align 4, !tbaa !56
  %152 = load ptr, ptr @cfun, align 8, !tbaa !41
  tail call void @statistics_counter_event(ptr noundef %152, ptr noundef nonnull @.str.1, i32 noundef %151) #17
  %153 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2), !range !88
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = icmp eq i32 %151, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %155
  %158 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 1), !range !88
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157, %150
  %161 = load ptr, ptr @vect_dump, align 8, !tbaa !41
  %162 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef nonnull @.str.2, i32 noundef %151)
  br label %163

163:                                              ; preds = %160, %157, %155
  %164 = load ptr, ptr @cfun, align 8, !tbaa !41
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.function, ptr %164, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !89
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %166, %163
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 51, ptr noundef nonnull @.str.6) #17
  br label %171

171:                                              ; preds = %166, %170
  %172 = getelementptr inbounds %struct.function, ptr %164, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !89
  %174 = getelementptr inbounds %struct.gimple_df, ptr %173, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !90
  tail call void @mark_sym_for_renaming(ptr noundef %175) #17
  %176 = tail call i32 @llvm.umax.i32(i32 %12, i32 2)
  %177 = zext i32 %176 to i64
  br label %178

178:                                              ; preds = %171, %191
  %179 = phi i64 [ 1, %171 ], [ %192, %191 ]
  %180 = load ptr, ptr @cfun, align 8, !tbaa !41
  %181 = getelementptr inbounds %struct.function, ptr %180, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8, !tbaa !65
  %183 = getelementptr inbounds %struct.loops, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !67
  %185 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %184, i64 0, i32 2, i64 %179
  %186 = load ptr, ptr %185, align 8, !tbaa !41
  %187 = icmp eq ptr %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %178
  %189 = getelementptr inbounds %struct.loop, ptr %186, i64 0, i32 10
  %190 = load ptr, ptr %189, align 8, !tbaa !84
  tail call void @destroy_loop_vec_info(ptr noundef %190, i8 noundef zeroext 1) #17
  store ptr null, ptr %189, align 8, !tbaa !84
  br label %191

191:                                              ; preds = %178, %188
  %192 = add nuw nsw i64 %179, 1
  %193 = icmp eq i64 %192, %177
  br i1 %193, label %194, label %178, !llvm.loop !94

194:                                              ; preds = %191
  tail call void @free_stmt_vec_info_vec() #17
  %195 = icmp eq i32 %151, 0
  %196 = select i1 %195, i32 0, i32 32
  br label %197

197:                                              ; preds = %11, %194
  %198 = phi i32 [ %196, %194 ], [ 0, %11 ]
  ret i32 %198
}

; Function Attrs: nounwind uwtable
define internal fastcc void @vect_set_dump_settings(i8 noundef zeroext %0) unnamed_addr #11 !prof !40 !PGOFuncName !95 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !41
  store ptr %2, ptr @vect_dump, align 8, !tbaa !41
  %3 = load i32, ptr @user_vect_verbosity_level, align 4, !tbaa !56
  %4 = icmp eq i32 %3, 10
  br i1 %4, label %22, label %5, !prof !96

5:                                                ; preds = %1
  store i32 %3, ptr @vect_verbosity_level, align 4, !tbaa !56
  %6 = icmp eq ptr %2, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !56
  %9 = and i32 %8, 8
  %10 = icmp ne i32 %9, 0
  %11 = icmp ugt i32 %3, 8
  %12 = and i1 %11, %10
  br i1 %12, label %40, label %13

13:                                               ; preds = %7
  %14 = and i32 %8, 16
  %15 = icmp ne i32 %14, 0
  %16 = icmp ugt i32 %3, 1
  %17 = and i1 %16, %15
  br i1 %17, label %40, label %22

18:                                               ; preds = %5
  %19 = icmp eq i8 %0, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %18
  %21 = load ptr, ptr @stderr, align 8, !tbaa !41
  store ptr %21, ptr @vect_dump, align 8, !tbaa !41
  br label %40

22:                                               ; preds = %13, %1
  %23 = icmp eq ptr %2, null
  br i1 %23, label %33, label %24, !prof !96

24:                                               ; preds = %22
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !56
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  br i1 %23, label %33, label %29, !prof !96

29:                                               ; preds = %28
  %30 = load i32, ptr @dump_flags, align 4, !tbaa !56
  %31 = and i32 %30, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22, %29, %28
  br label %34

34:                                               ; preds = %29, %24, %33
  %35 = phi i1 [ true, %33 ], [ false, %24 ], [ false, %29 ]
  %36 = phi i32 [ 0, %33 ], [ 9, %24 ], [ 2, %29 ]
  store i32 %36, ptr @vect_verbosity_level, align 4, !tbaa !56
  %37 = icmp ne ptr %2, null
  %38 = or i1 %37, %35
  br i1 %38, label %40, label %39, !prof !96

39:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 155, ptr noundef nonnull @.str.6) #17
  br label %40

40:                                               ; preds = %39, %34, %18, %20, %7, %13
  ret void
}

declare void @init_stmt_vec_info_vec() local_unnamed_addr #3

declare zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef) local_unnamed_addr #3

declare i32 @find_loop_location(ptr noundef) local_unnamed_addr #3

declare ptr @vect_analyze_loop(ptr noundef) local_unnamed_addr #3

declare void @vect_transform_loop(ptr noundef) local_unnamed_addr #3

declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @destroy_loop_vec_info(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @free_stmt_vec_info_vec() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_vect_slp() #12 !prof !97 !PGOFuncName !98 {
  %1 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !56
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_tree_slp_vectorize, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !96
  %6 = icmp eq i32 %3, 1
  %7 = select i1 %5, i1 true, i1 %6, !prof !96
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @execute_vect_slp() #11 !prof !97 !PGOFuncName !99 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !41
  store ptr %1, ptr @vect_dump, align 8, !tbaa !41
  %2 = load i32, ptr @user_vect_verbosity_level, align 4, !tbaa !56
  %3 = icmp eq i32 %2, 10
  br i1 %3, label %17, label %4, !prof !96

4:                                                ; preds = %0
  store i32 %2, ptr @vect_verbosity_level, align 4, !tbaa !56
  %5 = icmp eq ptr %1, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !56
  %8 = and i32 %7, 8
  %9 = icmp ne i32 %8, 0
  %10 = icmp ugt i32 %2, 8
  %11 = and i1 %10, %9
  br i1 %11, label %33, label %12

12:                                               ; preds = %6
  %13 = and i32 %7, 16
  %14 = icmp ne i32 %13, 0
  %15 = icmp ugt i32 %2, 1
  %16 = and i1 %15, %14
  br i1 %16, label %33, label %17

17:                                               ; preds = %12, %0
  %18 = icmp eq ptr %1, null
  br i1 %18, label %26, label %19, !prof !96

19:                                               ; preds = %17
  %20 = load i32, ptr @dump_flags, align 4, !tbaa !56
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = and i32 %20, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %17
  br label %27

27:                                               ; preds = %23, %19, %26
  %28 = phi i1 [ true, %26 ], [ false, %19 ], [ false, %23 ]
  %29 = phi i32 [ 0, %26 ], [ 9, %19 ], [ 2, %23 ]
  store i32 %29, ptr @vect_verbosity_level, align 4, !tbaa !56
  %30 = icmp ne ptr %1, null
  %31 = or i1 %30, %28
  br i1 %31, label %33, label %32, !prof !96

32:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 155, ptr noundef nonnull @.str.6) #17
  br label %33

33:                                               ; preds = %4, %6, %12, %27, %32
  tail call void @init_stmt_vec_info_vec() #17
  %34 = load ptr, ptr @cfun, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !100
  %37 = load ptr, ptr %36, align 8, !tbaa !101
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !103
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !105
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %63, label %43, !prof !106

43:                                               ; preds = %33, %54
  %44 = phi ptr [ %56, %54 ], [ %39, %33 ]
  %45 = tail call i32 @find_bb_location(ptr noundef %44) #17
  store i32 %45, ptr @vect_location, align 4, !tbaa !56
  %46 = tail call ptr @vect_slp_analyze_bb(ptr noundef %44) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48, !prof !107

48:                                               ; preds = %43
  tail call void @vect_slp_transform_bb(ptr noundef %44) #17
  %49 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 1), !range !88
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @vect_dump, align 8, !tbaa !41
  %53 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 33, i64 1, ptr %52)
  br label %54

54:                                               ; preds = %43, %51, %48
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !103
  %57 = load ptr, ptr @cfun, align 8, !tbaa !41
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !100
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !105
  %62 = icmp eq ptr %56, %61
  br i1 %62, label %63, label %43, !prof !108, !llvm.loop !109

63:                                               ; preds = %54, %33
  tail call void @free_stmt_vec_info_vec() #17
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_increase_alignment() #13 !prof !110 !PGOFuncName !111 {
  %1 = load i32, ptr @flag_section_anchors, align 4, !tbaa !56
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_tree_vectorize, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !112
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @increase_alignment() #10 !prof !40 {
  %1 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !41
  %2 = icmp eq ptr %1, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %0, %35
  %4 = phi ptr [ %37, %35 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 15
  br i1 %10, label %11, label %35

11:                                               ; preds = %3
  %12 = tail call ptr @strip_array_types(ptr noundef nonnull %7) #17
  %13 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %12) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !52
  %20 = icmp ult i32 %19, %17
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = tail call zeroext i8 @vect_can_force_dr_alignment_p(ptr noundef %5, i32 noundef %17) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %16, align 8, !tbaa !52
  store i32 %25, ptr %18, align 8, !tbaa !52
  %26 = load i64, ptr %5, align 8
  %27 = or i64 %26, 4398046511104
  store i64 %27, ptr %5, align 8
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 30, i64 1, ptr nonnull %28)
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !41
  tail call void @print_generic_expr(ptr noundef %32, ptr noundef nonnull %5, i32 noundef 2) #17
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %34 = tail call i32 @fputc(i32 10, ptr %33)
  br label %35

35:                                               ; preds = %21, %30, %24, %15, %11, %3
  %36 = getelementptr inbounds %struct.varpool_node, ptr %4, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !41
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %3, !llvm.loop !115

39:                                               ; preds = %35, %0
  ret i32 0
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare i32 @find_bb_location(ptr noundef) local_unnamed_addr #3

declare ptr @vect_slp_analyze_bb(ptr noundef) local_unnamed_addr #3

declare void @vect_slp_transform_bb(ptr noundef) local_unnamed_addr #3

declare ptr @get_vectype_for_scalar_type(ptr noundef) local_unnamed_addr #3

declare ptr @strip_array_types(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @vect_can_force_dr_alignment_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

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
attributes #8 = { cold mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @execute_vect_slp, ptr @init_stmt_vec_info_vec, i64 38}
!36 = !{ptr @execute_vect_slp, ptr @find_bb_location, i64 155395}
!37 = !{ptr @execute_vect_slp, ptr @vect_slp_analyze_bb, i64 155395}
!38 = !{ptr @execute_vect_slp, ptr @free_stmt_vec_info_vec, i64 38}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !42, i64 8}
!46 = !{!"_IO_FILE", !47, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !47, i64 112, !47, i64 116, !48, i64 120, !49, i64 128, !43, i64 130, !43, i64 131, !42, i64 136, !48, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !48, i64 184, !47, i64 192, !43, i64 196}
!47 = !{!"int", !43, i64 0}
!48 = !{!"long", !43, i64 0}
!49 = !{!"short", !43, i64 0}
!50 = !{!46, !42, i64 16}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!43, !43, i64 0}
!53 = !{!46, !42, i64 40}
!54 = !{!46, !42, i64 48}
!55 = !{!46, !47, i64 0}
!56 = !{!47, !47, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!"function_entry_count", i64 612120}
!61 = !{!"branch_weights", i32 612120, i32 0}
!62 = !{!63, !42, i64 0}
!63 = !{!"", !42, i64 0, !47, i64 8, !47, i64 12, !43, i64 16}
!64 = !{!63, !47, i64 8}
!65 = !{!66, !42, i64 32}
!66 = !{!"function", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !47, i64 104, !47, i64 108, !47, i64 112, !47, i64 116, !47, i64 120, !47, i64 124, !42, i64 128, !47, i64 136, !47, i64 137, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 138, !47, i64 139, !47, i64 139, !47, i64 139, !47, i64 139, !47, i64 139, !47, i64 139, !47, i64 139}
!67 = !{!68, !42, i64 8}
!68 = !{!"loops", !47, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!69 = !{!70, !47, i64 0}
!70 = !{!"VEC_loop_p_base", !47, i64 0, !47, i64 4, !43, i64 8}
!71 = !{!68, !42, i64 24}
!72 = !{!73, !47, i64 0}
!73 = !{!"loop", !47, i64 0, !47, i64 4, !42, i64 8, !42, i64 16, !74, i64 24, !47, i64 32, !47, i64 36, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !75, i64 80, !75, i64 96, !43, i64 112, !43, i64 113, !47, i64 116, !42, i64 120, !42, i64 128, !43, i64 136, !42, i64 144}
!74 = !{!"lpt_decision", !47, i64 0, !47, i64 4}
!75 = !{!"", !48, i64 0, !48, i64 8}
!76 = !{!77, !47, i64 0}
!77 = !{!"VEC_int_base", !47, i64 0, !47, i64 4, !43, i64 8}
!78 = !{!73, !42, i64 48}
!79 = distinct !{!79, !59}
!80 = !{!73, !42, i64 56}
!81 = !{!73, !42, i64 40}
!82 = distinct !{!82, !58, !59}
!83 = distinct !{!83, !58, !59}
!84 = !{!73, !42, i64 64}
!85 = !{!86, !43, i64 36}
!86 = !{!"_loop_vec_info", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !47, i64 32, !43, i64 36, !47, i64 40, !42, i64 48, !47, i64 56, !47, i64 60, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !47, i64 96, !42, i64 104, !42, i64 112, !47, i64 120}
!87 = distinct !{!87, !58, !59}
!88 = !{i8 0, i8 2}
!89 = !{!66, !42, i64 24}
!90 = !{!91, !42, i64 24}
!91 = !{!"gimple_df", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !92, i64 32, !92, i64 48, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !47, i64 96, !93, i64 104}
!92 = !{!"pt_solution", !47, i64 0, !47, i64 0, !47, i64 0, !47, i64 0, !47, i64 0, !47, i64 0, !42, i64 8}
!93 = !{!"ssa_operands", !42, i64 0, !47, i64 8, !47, i64 12, !43, i64 16, !42, i64 24, !42, i64 32}
!94 = distinct !{!94, !58, !59}
!95 = !{!"tree-vectorizer.c;vect_set_dump_settings"}
!96 = !{!"branch_weights", i32 38, i32 0}
!97 = !{!"function_entry_count", i64 38}
!98 = !{!"tree-vectorizer.c;gate_vect_slp"}
!99 = !{!"tree-vectorizer.c;execute_vect_slp"}
!100 = !{!66, !42, i64 8}
!101 = !{!102, !42, i64 0}
!102 = !{!"control_flow_graph", !42, i64 0, !42, i64 8, !42, i64 16, !47, i64 24, !47, i64 28, !47, i64 32, !42, i64 40, !47, i64 48, !43, i64 52, !43, i64 60, !47, i64 68, !47, i64 72}
!103 = !{!104, !42, i64 56}
!104 = !{!"basic_block_def", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !43, i64 32, !42, i64 48, !42, i64 56, !43, i64 64, !48, i64 72, !47, i64 80, !47, i64 84, !47, i64 88, !47, i64 92, !47, i64 96}
!105 = !{!102, !42, i64 8}
!106 = !{!"branch_weights", i32 1, i32 151}
!107 = !{!"branch_weights", i32 155395, i32 0}
!108 = !{!"branch_weights", i32 151, i32 621429}
!109 = distinct !{!109, !58, !59}
!110 = !{!"function_entry_count", i64 1}
!111 = !{!"tree-vectorizer.c;gate_increase_alignment"}
!112 = !{!"branch_weights", i32 0, i32 1}
!113 = !{!114, !42, i64 0}
!114 = !{!"varpool_node", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !47, i64 32, !47, i64 36, !47, i64 36, !47, i64 36, !47, i64 36, !47, i64 36, !47, i64 36, !47, i64 36}
!115 = distinct !{!115, !58, !59}
