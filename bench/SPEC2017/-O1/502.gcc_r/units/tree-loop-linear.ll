; ModuleID = 'tree-loop-linear.c'
source_filename = "tree-loop-linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.VEC_lambda_vector_base = type { i32, i32, [1 x ptr] }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.access_matrix = type { ptr, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [67 x i8] c"Won't transform loop. Optimal transform is the identity transform\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Can't transform loop, transform is illegal:\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Before:\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"After:\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Successfully transformed loop.\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@chrec_known = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"./tree-data-ref.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #13
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #13
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #13
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local i32 @perfect_loop_nest_depth(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @single_exit(ptr noundef %0) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %2, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %8, %20
  %12 = phi ptr [ %23, %20 ], [ %9, %8 ]
  %13 = phi i32 [ %21, %20 ], [ 1, %8 ]
  %14 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = tail call ptr @single_exit(ptr noundef nonnull %12) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = add i32 %13, 1
  %22 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %11, !llvm.loop !59

25:                                               ; preds = %17, %11, %20, %8, %1, %5
  %26 = phi i32 [ 0, %5 ], [ 0, %1 ], [ 1, %8 ], [ %21, %20 ], [ 0, %11 ], [ 0, %17 ]
  ret i32 %26
}

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @linear_transform_loops() local_unnamed_addr #9 !prof !34 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.double_int, align 8
  %4 = alloca %struct.double_int, align 8
  %5 = alloca %struct.double_int, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca %struct.obstack, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store ptr null, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  store ptr null, ptr %9, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  store ptr null, ptr %10, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  %15 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #13
  store ptr %15, ptr %11, align 8, !tbaa !35
  %16 = load ptr, ptr @cfun, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  %19 = icmp eq ptr %18, null
  br i1 %19, label %95, label %20

20:                                               ; preds = %0
  %21 = getelementptr inbounds %struct.loops, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %22, align 8, !tbaa !64
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %25, %24 ], [ 0, %20 ]
  %28 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %27, i64 noundef 8, i64 noundef 4) #13
  %29 = load ptr, ptr @cfun, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct.loops, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !66
  br label %34

34:                                               ; preds = %47, %26
  %35 = phi ptr [ %33, %26 ], [ %48, %47 ]
  %36 = load i32, ptr %35, align 8, !tbaa !67
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, ptr %28, align 4, !tbaa !68
  %40 = add i32 %39, 1
  store i32 %40, ptr %28, align 4, !tbaa !68
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds %struct.VEC_int_base, ptr %28, i64 0, i32 2, i64 %41
  store i32 %36, ptr %42, align 4, !tbaa !50
  br label %43

43:                                               ; preds = %38, %34
  %44 = getelementptr inbounds %struct.loop, ptr %35, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %52, %43
  %48 = phi ptr [ %45, %43 ], [ %55, %52 ]
  br label %34, !llvm.loop !70

49:                                               ; preds = %71
  %50 = icmp eq ptr %28, null
  %51 = getelementptr inbounds %struct.loops, ptr %31, i64 0, i32 1
  br label %74

52:                                               ; preds = %43, %71
  %53 = phi ptr [ %72, %71 ], [ %35, %43 ]
  %54 = getelementptr inbounds %struct.loop, ptr %53, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !58
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %47, !llvm.loop !70

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.loop, ptr %53, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !71
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr %59, align 8, !tbaa !64
  br label %63

63:                                               ; preds = %61, %57
  %64 = phi i32 [ %62, %61 ], [ 0, %57 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = add i32 %64, -1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %59, i64 0, i32 2, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  br label %71

71:                                               ; preds = %66, %63
  %72 = phi ptr [ %70, %66 ], [ null, %63 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %49, label %52, !llvm.loop !72

74:                                               ; preds = %49, %86
  %75 = phi i32 [ %87, %86 ], [ 0, %49 ]
  br i1 %50, label %83, label %76

76:                                               ; preds = %74
  %77 = load i32, ptr %28, align 4, !tbaa !68
  %78 = icmp ugt i32 %77, %75
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = zext i32 %75 to i64
  %81 = getelementptr inbounds %struct.VEC_int_base, ptr %28, i64 0, i32 2, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !50
  br label %83

83:                                               ; preds = %79, %76, %74
  %84 = phi i32 [ %82, %79 ], [ 0, %76 ], [ 0, %74 ]
  %85 = phi i1 [ false, %79 ], [ true, %76 ], [ true, %74 ]
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = add i32 %75, 1
  %88 = load ptr, ptr %51, align 8, !tbaa !62
  %89 = zext i32 %84 to i64
  %90 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %88, i64 0, i32 2, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  %92 = icmp eq ptr %91, null
  br i1 %92, label %74, label %95, !llvm.loop !73

93:                                               ; preds = %83
  br i1 %50, label %95, label %94

94:                                               ; preds = %93
  tail call void @free(ptr noundef %28)
  br label %95

95:                                               ; preds = %86, %93, %94, %0
  %96 = phi ptr [ null, %0 ], [ null, %94 ], [ null, %93 ], [ %28, %86 ]
  %97 = phi ptr [ null, %0 ], [ null, %94 ], [ null, %93 ], [ %91, %86 ]
  %98 = phi i32 [ 0, %0 ], [ %75, %94 ], [ %75, %93 ], [ %87, %86 ]
  %99 = icmp eq ptr %97, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.obstack, ptr %14, i64 0, i32 1
  %102 = getelementptr inbounds %struct.obstack, ptr %14, i64 0, i32 5
  %103 = getelementptr inbounds %struct.obstack, ptr %14, i64 0, i32 4
  br label %108

104:                                              ; preds = %414
  %105 = icmp eq i8 %387, 0
  br label %106

106:                                              ; preds = %104, %95
  %107 = phi i1 [ true, %95 ], [ %105, %104 ]
  br label %419

108:                                              ; preds = %100, %414
  %109 = phi i8 [ 0, %100 ], [ %387, %414 ]
  %110 = phi i32 [ %98, %100 ], [ %417, %414 ]
  %111 = phi ptr [ %97, %100 ], [ %416, %414 ]
  %112 = phi ptr [ %96, %100 ], [ %415, %414 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %14) #13
  %113 = call i32 @perfect_loop_nest_depth(ptr noundef nonnull %111)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %386, label %115

115:                                              ; preds = %108
  %116 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #13
  br label %117

117:                                              ; preds = %115, %128
  %118 = phi ptr [ %111, %115 ], [ %135, %128 ]
  %119 = phi ptr [ %116, %115 ], [ %129, %128 ]
  %120 = icmp eq ptr %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %119, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !74
  %124 = load i32, ptr %119, align 8, !tbaa !64
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %117, %121
  %127 = call ptr @vec_heap_p_reserve(ptr noundef %119, i32 noundef 1) #13
  br label %128

128:                                              ; preds = %121, %126
  %129 = phi ptr [ %127, %126 ], [ %119, %121 ]
  %130 = load i32, ptr %129, align 8, !tbaa !64
  %131 = add i32 %130, 1
  store i32 %131, ptr %129, align 8, !tbaa !64
  %132 = zext i32 %130 to i64
  %133 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %129, i64 0, i32 2, i64 %132
  store ptr %118, ptr %133, align 8, !tbaa !35
  %134 = getelementptr inbounds %struct.loop, ptr %118, i64 0, i32 8
  %135 = load ptr, ptr %134, align 8, !tbaa !35
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %117, !llvm.loop !75

137:                                              ; preds = %128
  %138 = call i32 @_obstack_begin(ptr noundef nonnull %14, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #13
  %139 = load ptr, ptr %8, align 8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  store i32 0, ptr %139, align 8, !tbaa !76
  br label %142

142:                                              ; preds = %137, %141
  %143 = load ptr, ptr %9, align 8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  store i32 0, ptr %143, align 8, !tbaa !76
  br label %146

146:                                              ; preds = %142, %145
  %147 = load ptr, ptr %10, align 8
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  store i32 0, ptr %147, align 8, !tbaa !76
  br label %150

150:                                              ; preds = %146, %149
  %151 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #13
  store ptr %151, ptr %13, align 8, !tbaa !35
  %152 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 100) #13
  store ptr %152, ptr %12, align 8, !tbaa !35
  %153 = call zeroext i8 @compute_data_dependences_for_loop(ptr noundef nonnull %111, i8 noundef zeroext 1, ptr noundef nonnull %13, ptr noundef nonnull %12) #13
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %366, label %155

155:                                              ; preds = %150
  %156 = load ptr, ptr %13, align 8, !tbaa !35
  call void @lambda_collect_parameters(ptr noundef %156, ptr noundef nonnull %10) #13
  %157 = load ptr, ptr %13, align 8, !tbaa !35
  %158 = load ptr, ptr %10, align 8, !tbaa !35
  %159 = call zeroext i8 @lambda_compute_access_matrices(ptr noundef %157, ptr noundef %158, ptr noundef nonnull %129) #13
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %366, label %161

161:                                              ; preds = %155
  %162 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %163 = icmp eq ptr %162, null
  br i1 %163, label %170, label %164

164:                                              ; preds = %161
  %165 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %166 = and i32 %165, 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr %12, align 8, !tbaa !35
  call void @dump_ddrs(ptr noundef nonnull %162, ptr noundef %169) #13
  br label %170

170:                                              ; preds = %168, %164, %161
  %171 = call ptr @lambda_trans_matrix_new(i32 noundef %113, i32 noundef %113) #13
  %172 = load ptr, ptr %171, align 8, !tbaa !78
  call void @lambda_matrix_id(ptr noundef %172, i32 noundef %113) #13
  %173 = load ptr, ptr %12, align 8, !tbaa !35
  %174 = load ptr, ptr %13, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  %175 = icmp eq ptr %173, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %170
  %177 = load i32, ptr %173, align 8, !tbaa !80
  br label %178

178:                                              ; preds = %176, %170
  %179 = phi i32 [ %177, %176 ], [ 0, %170 ]
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %326, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %173, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !35
  %184 = icmp eq ptr %183, null
  br i1 %184, label %326, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.data_dependence_relation, ptr %183, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !82
  %188 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %189 = icmp eq ptr %187, %188
  br i1 %189, label %326, label %190

190:                                              ; preds = %185
  %191 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %192 = getelementptr inbounds %struct.param_info, ptr %191, i64 99, i32 1
  %193 = load i32, ptr %192, align 8, !tbaa !84
  %194 = shl nsw i32 %193, 10
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.param_info, ptr %191, i64 101, i32 1
  %197 = load i32, ptr %196, align 8, !tbaa !84
  %198 = shl nsw i32 %197, 10
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.loop, ptr %111, i64 0, i32 8
  %201 = load ptr, ptr %200, align 8, !tbaa !54
  %202 = icmp eq ptr %201, null
  br i1 %202, label %326, label %203

203:                                              ; preds = %190
  %204 = getelementptr inbounds { i64, i64 }, ptr %3, i64 0, i32 1
  %205 = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  %206 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %207 = getelementptr inbounds %struct.loop, ptr %111, i64 0, i32 7
  br label %212

208:                                              ; preds = %228
  %209 = getelementptr inbounds %struct.loop, ptr %213, i64 0, i32 8
  %210 = load ptr, ptr %209, align 8, !tbaa !54
  %211 = icmp eq ptr %210, null
  br i1 %211, label %326, label %212, !llvm.loop !86

212:                                              ; preds = %203, %208
  %213 = phi ptr [ %201, %203 ], [ %210, %208 ]
  %214 = getelementptr inbounds %struct.loop, ptr %213, i64 0, i32 7
  br label %215

215:                                              ; preds = %212, %323
  %216 = phi ptr [ %325, %323 ], [ %111, %212 ]
  %217 = getelementptr inbounds %struct.loop, ptr %216, i64 0, i32 7
  %218 = load ptr, ptr %217, align 8, !tbaa !71
  %219 = icmp eq ptr %218, null
  br i1 %219, label %222, label %220

220:                                              ; preds = %215
  %221 = load i32, ptr %218, align 8, !tbaa !64
  br label %222

222:                                              ; preds = %220, %215
  %223 = phi i32 [ %221, %220 ], [ 0, %215 ]
  %224 = load ptr, ptr %214, align 8, !tbaa !71
  %225 = icmp eq ptr %224, null
  br i1 %225, label %228, label %226

226:                                              ; preds = %222
  %227 = load i32, ptr %224, align 8, !tbaa !64
  br label %228

228:                                              ; preds = %226, %222
  %229 = phi i32 [ %227, %226 ], [ 0, %222 ]
  %230 = icmp ult i32 %223, %229
  br i1 %230, label %231, label %208

231:                                              ; preds = %228
  call fastcc void @gather_interchange_stats(ptr noundef %173, ptr noundef %174, ptr noundef %216, ptr noundef nonnull %111, ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef nonnull %3)
  call fastcc void @gather_interchange_stats(ptr noundef %173, ptr noundef %174, ptr noundef nonnull %213, ptr noundef nonnull %111, ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %4)
  %232 = load i64, ptr %3, align 8
  %233 = load i64, ptr %204, align 8
  %234 = load i64, ptr %4, align 8
  %235 = load i64, ptr %205, align 8
  %236 = call i32 @double_int_ucmp(i64 %232, i64 %233, i64 %234, i64 %235) #13
  %237 = icmp slt i32 %236, 0
  %238 = select i1 %237, i64 %233, i64 %235
  %239 = select i1 %237, i64 %232, i64 %234
  %240 = select i1 %237, i64 %235, i64 %233
  %241 = select i1 %237, i64 %234, i64 %232
  %242 = call i32 @double_int_ucmp(i64 %239, i64 %238, i64 %199, i64 0) #13
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %323, label %244

244:                                              ; preds = %231
  br i1 %237, label %245, label %247

245:                                              ; preds = %244
  %246 = call zeroext i8 @estimated_loop_iterations(ptr noundef nonnull %213, i8 noundef zeroext 0, ptr noundef nonnull %5) #13
  br label %249

247:                                              ; preds = %244
  %248 = call zeroext i8 @estimated_loop_iterations(ptr noundef %216, i8 noundef zeroext 0, ptr noundef nonnull %5) #13
  br label %249

249:                                              ; preds = %247, %245
  %250 = phi i8 [ %246, %245 ], [ %248, %247 ]
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %260, label %252

252:                                              ; preds = %249
  %253 = load i64, ptr %5, align 8
  %254 = load i64, ptr %206, align 8
  %255 = call { i64, i64 } @double_int_mul(i64 %241, i64 %240, i64 %253, i64 %254) #13
  %256 = extractvalue { i64, i64 } %255, 0
  %257 = extractvalue { i64, i64 } %255, 1
  %258 = call i32 @double_int_ucmp(i64 %256, i64 %257, i64 %195, i64 0) #13
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %323, label %260

260:                                              ; preds = %252, %249
  %261 = load i32, ptr %1, align 4, !tbaa !50
  %262 = load i32, ptr %2, align 4, !tbaa !50
  %263 = icmp ult i32 %261, %262
  br i1 %263, label %269, label %264

264:                                              ; preds = %260
  %265 = load i32, ptr %6, align 4, !tbaa !50
  %266 = load i32, ptr %7, align 4, !tbaa !50
  %267 = icmp ugt i32 %265, %266
  %268 = or i1 %237, %267
  br i1 %268, label %269, label %323

269:                                              ; preds = %264, %260
  %270 = load ptr, ptr %171, align 8, !tbaa !78
  %271 = load ptr, ptr %217, align 8, !tbaa !71
  %272 = icmp eq ptr %271, null
  br i1 %272, label %275, label %273

273:                                              ; preds = %269
  %274 = load i32, ptr %271, align 8, !tbaa !64
  br label %275

275:                                              ; preds = %273, %269
  %276 = phi i32 [ %274, %273 ], [ 0, %269 ]
  %277 = load ptr, ptr %207, align 8, !tbaa !71
  %278 = icmp eq ptr %277, null
  br i1 %278, label %281, label %279

279:                                              ; preds = %275
  %280 = load i32, ptr %277, align 8, !tbaa !64
  br label %281

281:                                              ; preds = %279, %275
  %282 = phi i32 [ %280, %279 ], [ 0, %275 ]
  %283 = sub i32 %276, %282
  %284 = load ptr, ptr %214, align 8, !tbaa !71
  %285 = icmp eq ptr %284, null
  br i1 %285, label %288, label %286

286:                                              ; preds = %281
  %287 = load i32, ptr %284, align 8, !tbaa !64
  br label %288

288:                                              ; preds = %286, %281
  %289 = phi i32 [ %287, %286 ], [ 0, %281 ]
  br i1 %278, label %292, label %290

290:                                              ; preds = %288
  %291 = load i32, ptr %277, align 8, !tbaa !64
  br label %292

292:                                              ; preds = %288, %290
  %293 = phi i32 [ %291, %290 ], [ 0, %288 ]
  %294 = sub i32 %289, %293
  call void @lambda_matrix_row_exchange(ptr noundef %270, i32 noundef %283, i32 noundef %294) #13
  %295 = call zeroext i8 @lambda_transform_legal_p(ptr noundef nonnull %171, i32 noundef %113, ptr noundef %173) #13
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %297, label %323

297:                                              ; preds = %292
  %298 = load ptr, ptr %171, align 8, !tbaa !78
  %299 = load ptr, ptr %217, align 8, !tbaa !71
  %300 = icmp eq ptr %299, null
  br i1 %300, label %303, label %301

301:                                              ; preds = %297
  %302 = load i32, ptr %299, align 8, !tbaa !64
  br label %303

303:                                              ; preds = %301, %297
  %304 = phi i32 [ %302, %301 ], [ 0, %297 ]
  %305 = load ptr, ptr %207, align 8, !tbaa !71
  %306 = icmp eq ptr %305, null
  br i1 %306, label %309, label %307

307:                                              ; preds = %303
  %308 = load i32, ptr %305, align 8, !tbaa !64
  br label %309

309:                                              ; preds = %307, %303
  %310 = phi i32 [ %308, %307 ], [ 0, %303 ]
  %311 = sub i32 %304, %310
  %312 = load ptr, ptr %214, align 8, !tbaa !71
  %313 = icmp eq ptr %312, null
  br i1 %313, label %316, label %314

314:                                              ; preds = %309
  %315 = load i32, ptr %312, align 8, !tbaa !64
  br label %316

316:                                              ; preds = %314, %309
  %317 = phi i32 [ %315, %314 ], [ 0, %309 ]
  br i1 %306, label %320, label %318

318:                                              ; preds = %316
  %319 = load i32, ptr %305, align 8, !tbaa !64
  br label %320

320:                                              ; preds = %318, %316
  %321 = phi i32 [ %319, %318 ], [ 0, %316 ]
  %322 = sub i32 %317, %321
  call void @lambda_matrix_row_exchange(ptr noundef %298, i32 noundef %311, i32 noundef %322) #13
  br label %323

323:                                              ; preds = %264, %320, %292, %252, %231
  %324 = getelementptr inbounds %struct.loop, ptr %216, i64 0, i32 8
  %325 = load ptr, ptr %324, align 8, !tbaa !54
  br label %215, !llvm.loop !87

326:                                              ; preds = %208, %190, %178, %181, %185
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #13
  %327 = call zeroext i8 @lambda_trans_matrix_id_p(ptr noundef nonnull %171) #13
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %326
  %330 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %331 = icmp eq ptr %330, null
  br i1 %331, label %366, label %332

332:                                              ; preds = %329
  %333 = call i64 @fwrite(ptr nonnull @.str, i64 66, i64 1, ptr nonnull %330)
  br label %366

334:                                              ; preds = %326
  %335 = load ptr, ptr %12, align 8, !tbaa !35
  %336 = call zeroext i8 @lambda_transform_legal_p(ptr noundef nonnull %171, i32 noundef %113, ptr noundef %335) #13
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %334
  %339 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %340 = icmp eq ptr %339, null
  br i1 %340, label %366, label %341

341:                                              ; preds = %338
  %342 = call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr nonnull %339)
  br label %366

343:                                              ; preds = %334
  %344 = call ptr @gcc_loopnest_to_lambda_loopnest(ptr noundef nonnull %111, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %14) #13
  %345 = icmp eq ptr %344, null
  br i1 %345, label %366, label %346

346:                                              ; preds = %343
  %347 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %348 = icmp eq ptr %347, null
  br i1 %348, label %352, label %349

349:                                              ; preds = %346
  %350 = call i64 @fwrite(ptr nonnull @.str.2, i64 8, i64 1, ptr nonnull %347)
  %351 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_lambda_loopnest(ptr noundef %351, ptr noundef nonnull %344, i8 noundef signext 105) #13
  br label %352

352:                                              ; preds = %349, %346
  %353 = call ptr @lambda_loopnest_transform(ptr noundef nonnull %344, ptr noundef nonnull %171, ptr noundef nonnull %14) #13
  %354 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %355 = icmp eq ptr %354, null
  br i1 %355, label %359, label %356

356:                                              ; preds = %352
  %357 = call i64 @fwrite(ptr nonnull @.str.3, i64 7, i64 1, ptr nonnull %354)
  %358 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_lambda_loopnest(ptr noundef %358, ptr noundef %353, i8 noundef signext 117) #13
  br label %359

359:                                              ; preds = %356, %352
  %360 = load ptr, ptr %8, align 8, !tbaa !35
  %361 = load ptr, ptr %9, align 8, !tbaa !35
  call void @lambda_loopnest_to_gcc_loopnest(ptr noundef nonnull %111, ptr noundef %360, ptr noundef %361, ptr noundef nonnull %11, ptr noundef %353, ptr noundef nonnull %171, ptr noundef nonnull %14) #13
  %362 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %363 = icmp eq ptr %362, null
  br i1 %363, label %366, label %364

364:                                              ; preds = %359
  %365 = call i64 @fwrite(ptr nonnull @.str.4, i64 31, i64 1, ptr nonnull %362)
  br label %366

366:                                              ; preds = %359, %364, %343, %338, %341, %329, %332, %155, %150
  %367 = phi i8 [ %109, %332 ], [ %109, %329 ], [ 1, %364 ], [ 1, %359 ], [ %109, %343 ], [ %109, %341 ], [ %109, %338 ], [ %109, %155 ], [ %109, %150 ]
  %368 = load ptr, ptr %101, align 8, !tbaa !88
  %369 = ptrtoint ptr %368 to i64
  %370 = sub i64 0, %369
  store i64 %370, ptr %102, align 8, !tbaa !90
  %371 = icmp sgt i64 %370, 0
  br i1 %371, label %372, label %381

372:                                              ; preds = %366
  %373 = load ptr, ptr %103, align 8, !tbaa !91
  %374 = ptrtoint ptr %373 to i64
  %375 = sub i64 %374, %369
  %376 = icmp sgt i64 %375, %370
  br i1 %376, label %377, label %381

377:                                              ; preds = %372
  %378 = getelementptr inbounds %struct.obstack, ptr %14, i64 0, i32 2
  %379 = getelementptr inbounds %struct.obstack, ptr %14, i64 0, i32 3
  %380 = getelementptr inbounds i8, ptr %368, i64 %370
  store ptr %380, ptr %378, align 8, !tbaa !92
  store ptr %380, ptr %379, align 8, !tbaa !93
  br label %383

381:                                              ; preds = %372, %366
  %382 = getelementptr inbounds i8, ptr %368, i64 %370
  call void @obstack_free(ptr noundef nonnull %14, ptr noundef %382) #13
  br label %383

383:                                              ; preds = %381, %377
  %384 = load ptr, ptr %12, align 8, !tbaa !35
  call void @free_dependence_relations(ptr noundef %384) #13
  %385 = load ptr, ptr %13, align 8, !tbaa !35
  call void @free_data_refs(ptr noundef %385) #13
  call void @free(ptr noundef %129)
  br label %386

386:                                              ; preds = %383, %108
  %387 = phi i8 [ %109, %108 ], [ %367, %383 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  %388 = icmp eq ptr %112, null
  %389 = load ptr, ptr @cfun, align 8
  %390 = getelementptr inbounds %struct.function, ptr %389, i64 0, i32 4
  br label %391

391:                                              ; preds = %403, %386
  %392 = phi i32 [ %110, %386 ], [ %404, %403 ]
  br i1 %388, label %400, label %393

393:                                              ; preds = %391
  %394 = load i32, ptr %112, align 4, !tbaa !68
  %395 = icmp ugt i32 %394, %392
  br i1 %395, label %396, label %400

396:                                              ; preds = %393
  %397 = zext i32 %392 to i64
  %398 = getelementptr inbounds %struct.VEC_int_base, ptr %112, i64 0, i32 2, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !50
  br label %400

400:                                              ; preds = %396, %393, %391
  %401 = phi i32 [ %399, %396 ], [ 0, %393 ], [ 0, %391 ]
  %402 = phi i1 [ false, %396 ], [ true, %393 ], [ true, %391 ]
  br i1 %402, label %412, label %403

403:                                              ; preds = %400
  %404 = add i32 %392, 1
  %405 = load ptr, ptr %390, align 8, !tbaa !60
  %406 = getelementptr inbounds %struct.loops, ptr %405, i64 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !62
  %408 = zext i32 %401 to i64
  %409 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %407, i64 0, i32 2, i64 %408
  %410 = load ptr, ptr %409, align 8, !tbaa !35
  %411 = icmp eq ptr %410, null
  br i1 %411, label %391, label %414, !llvm.loop !73

412:                                              ; preds = %400
  br i1 %388, label %414, label %413

413:                                              ; preds = %412
  call void @free(ptr noundef %112)
  br label %414

414:                                              ; preds = %403, %412, %413
  %415 = phi ptr [ null, %413 ], [ null, %412 ], [ %112, %403 ]
  %416 = phi ptr [ null, %413 ], [ null, %412 ], [ %410, %403 ]
  %417 = phi i32 [ %392, %413 ], [ %392, %412 ], [ %404, %403 ]
  %418 = icmp eq ptr %416, null
  br i1 %418, label %104, label %108, !llvm.loop !94

419:                                              ; preds = %106, %433
  %420 = phi i32 [ %434, %433 ], [ 0, %106 ]
  %421 = load ptr, ptr %11, align 8
  %422 = icmp eq ptr %421, null
  br i1 %422, label %430, label %423

423:                                              ; preds = %419
  %424 = load i32, ptr %421, align 8, !tbaa !95
  %425 = icmp ugt i32 %424, %420
  br i1 %425, label %426, label %430

426:                                              ; preds = %423
  %427 = zext i32 %420 to i64
  %428 = getelementptr inbounds %struct.VEC_gimple_base, ptr %421, i64 0, i32 2, i64 %427
  %429 = load ptr, ptr %428, align 8, !tbaa !35
  br label %430

430:                                              ; preds = %419, %423, %426
  %431 = phi ptr [ %429, %426 ], [ null, %423 ], [ null, %419 ]
  %432 = phi i1 [ false, %426 ], [ true, %423 ], [ true, %419 ]
  br i1 %432, label %435, label %433

433:                                              ; preds = %430
  call void @remove_iv(ptr noundef %431) #13
  %434 = add i32 %420, 1
  br label %419, !llvm.loop !97

435:                                              ; preds = %430
  %436 = load ptr, ptr %8, align 8, !tbaa !35
  %437 = icmp eq ptr %436, null
  br i1 %437, label %439, label %438

438:                                              ; preds = %435
  call void @free(ptr noundef %436)
  br label %439

439:                                              ; preds = %435, %438
  store ptr null, ptr %8, align 8, !tbaa !35
  %440 = load ptr, ptr %9, align 8, !tbaa !35
  %441 = icmp eq ptr %440, null
  br i1 %441, label %443, label %442

442:                                              ; preds = %439
  call void @free(ptr noundef %440)
  br label %443

443:                                              ; preds = %439, %442
  store ptr null, ptr %9, align 8, !tbaa !35
  %444 = load ptr, ptr %11, align 8, !tbaa !35
  %445 = icmp eq ptr %444, null
  br i1 %445, label %447, label %446

446:                                              ; preds = %443
  call void @free(ptr noundef %444)
  br label %447

447:                                              ; preds = %443, %446
  store ptr null, ptr %11, align 8, !tbaa !35
  call void @scev_reset() #13
  br i1 %107, label %449, label %448

448:                                              ; preds = %447
  call void @rewrite_into_loop_closed_ssa(ptr noundef null, i32 noundef 8192) #13
  br label %449

449:                                              ; preds = %448, %447
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  ret void
}

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #10

declare zeroext i8 @compute_data_dependences_for_loop(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lambda_collect_parameters(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @lambda_compute_access_matrices(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dump_ddrs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lambda_trans_matrix_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @lambda_matrix_id(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @lambda_trans_matrix_id_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @lambda_transform_legal_p(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gcc_loopnest_to_lambda_loopnest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_lambda_loopnest(ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #3

declare ptr @lambda_loopnest_transform(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lambda_loopnest_to_gcc_loopnest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_dependence_relations(ptr noundef) local_unnamed_addr #3

declare void @free_data_refs(ptr noundef) local_unnamed_addr #3

declare void @remove_iv(ptr noundef) local_unnamed_addr #3

declare void @scev_reset() local_unnamed_addr #3

declare void @rewrite_into_loop_closed_ssa(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gather_interchange_stats(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) unnamed_addr #9 !prof !34 {
  store i32 0, ptr %4, align 4, !tbaa !50
  store i32 0, ptr %5, align 4, !tbaa !50
  %8 = getelementptr inbounds i8, ptr %6, i64 8
  %9 = icmp eq ptr %0, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %10 = load ptr, ptr @chrec_dont_know, align 8
  %11 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 7
  %12 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 7
  br label %13

13:                                               ; preds = %84, %7
  %14 = phi i32 [ 0, %7 ], [ %85, %84 ]
  br i1 %9, label %22, label %15

15:                                               ; preds = %13
  %16 = load i32, ptr %0, align 8, !tbaa !80
  %17 = icmp ugt i32 %16, %14
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = zext i32 %14 to i64
  %20 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  br label %22

22:                                               ; preds = %13, %15, %18
  %23 = phi ptr [ %21, %18 ], [ null, %15 ], [ null, %13 ]
  %24 = phi i1 [ false, %18 ], [ true, %15 ], [ true, %13 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = icmp eq ptr %1, null
  %27 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 8
  br label %86

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.data_dependence_relation, ptr %23, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  %31 = icmp eq ptr %30, %10
  %32 = load ptr, ptr @chrec_known, align 8
  %33 = icmp eq ptr %30, %32
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %84, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.data_dependence_relation, ptr %23, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !98
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %37, align 8, !tbaa !99
  br label %41

41:                                               ; preds = %35, %39
  %42 = phi i32 [ %40, %39 ], [ 0, %35 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %84, label %44

44:                                               ; preds = %41, %82
  %45 = phi i64 [ %83, %82 ], [ 0, %41 ]
  br i1 %38, label %48, label %46

46:                                               ; preds = %44
  %47 = load i32, ptr %37, align 8, !tbaa !99
  br label %48

48:                                               ; preds = %44, %46
  %49 = phi i32 [ %47, %46 ], [ 0, %44 ]
  %50 = zext i32 %49 to i64
  %51 = icmp ult i64 %45, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %37, i64 0, i32 2, i64 %45
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = load ptr, ptr %11, align 8, !tbaa !71
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i32, ptr %55, align 8, !tbaa !64
  br label %59

59:                                               ; preds = %52, %57
  %60 = phi i32 [ %58, %57 ], [ 0, %52 ]
  %61 = load ptr, ptr %12, align 8, !tbaa !71
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %61, align 8, !tbaa !64
  br label %65

65:                                               ; preds = %59, %63
  %66 = phi i32 [ %64, %63 ], [ 0, %59 ]
  %67 = sub i32 %60, %66
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %54, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !50
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, ptr %5, align 4, !tbaa !50
  %74 = add i32 %73, 1
  store i32 %74, ptr %5, align 4, !tbaa !50
  br label %82

75:                                               ; preds = %65
  %76 = icmp slt i32 %70, 0
  %77 = load i32, ptr %4, align 4, !tbaa !50
  br i1 %76, label %78, label %80

78:                                               ; preds = %75
  %79 = sub i32 %77, %70
  store i32 %79, ptr %4, align 4, !tbaa !50
  br label %82

80:                                               ; preds = %75
  %81 = add i32 %77, %70
  store i32 %81, ptr %4, align 4, !tbaa !50
  br label %82

82:                                               ; preds = %78, %80, %72
  %83 = add nuw nsw i64 %45, 1
  br label %44, !llvm.loop !101

84:                                               ; preds = %48, %41, %28
  %85 = add i32 %14, 1
  br label %13, !llvm.loop !102

86:                                               ; preds = %25, %189
  %87 = phi i32 [ %190, %189 ], [ 0, %25 ]
  br i1 %26, label %95, label %88

88:                                               ; preds = %86
  %89 = load i32, ptr %1, align 8, !tbaa !103
  %90 = icmp ugt i32 %89, %87
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = zext i32 %87 to i64
  %93 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %1, i64 0, i32 2, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !35
  br label %95

95:                                               ; preds = %86, %88, %91
  %96 = phi ptr [ %94, %91 ], [ null, %88 ], [ null, %86 ]
  %97 = phi i1 [ false, %91 ], [ true, %88 ], [ true, %86 ]
  br i1 %97, label %191, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.data_reference, ptr %96, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !105
  %101 = load ptr, ptr %96, align 8, !tbaa !110
  %102 = getelementptr inbounds %struct.gimple_statement_base, ptr %101, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %103, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !111
  br label %108

108:                                              ; preds = %98, %105
  %109 = phi ptr [ %107, %105 ], [ null, %98 ]
  %110 = load ptr, ptr %27, align 8, !tbaa !54
  %111 = icmp eq ptr %110, %109
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %110, ptr noundef %109) #13
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %189, label %115

115:                                              ; preds = %112, %108
  %116 = getelementptr inbounds %struct.data_reference, ptr %96, i64 0, i32 5, i32 1
  %117 = getelementptr inbounds %struct.data_reference, ptr %96, i64 0, i32 7
  br label %118

118:                                              ; preds = %185, %115
  %119 = phi i64 [ %186, %185 ], [ 0, %115 ]
  %120 = phi ptr [ %188, %185 ], [ %100, %115 ]
  %121 = load ptr, ptr %116, align 8, !tbaa !113
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = load i32, ptr %121, align 8, !tbaa !76
  br label %125

125:                                              ; preds = %118, %123
  %126 = phi i32 [ %124, %123 ], [ 0, %118 ]
  %127 = zext i32 %126 to i64
  %128 = icmp ult i64 %119, %127
  br i1 %128, label %129, label %189

129:                                              ; preds = %125
  %130 = load ptr, ptr %117, align 8, !tbaa !114
  %131 = load i32, ptr %2, align 8, !tbaa !67
  %132 = load ptr, ptr %130, align 8, !tbaa !115
  %133 = icmp eq ptr %132, null
  br label %134

134:                                              ; preds = %149, %129
  %135 = phi i64 [ %150, %149 ], [ 0, %129 ]
  br i1 %133, label %143, label %136

136:                                              ; preds = %134
  %137 = load i32, ptr %132, align 8, !tbaa !64
  %138 = zext i32 %137 to i64
  %139 = icmp ult i64 %135, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %132, i64 0, i32 2, i64 %135
  %142 = load ptr, ptr %141, align 8, !tbaa !35
  br label %143

143:                                              ; preds = %140, %136, %134
  %144 = phi ptr [ %142, %140 ], [ null, %136 ], [ null, %134 ]
  %145 = phi i1 [ false, %140 ], [ true, %136 ], [ true, %134 ]
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = load i32, ptr %144, align 8, !tbaa !67
  %148 = icmp eq i32 %147, %131
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = add nuw i64 %135, 1
  br label %134, !llvm.loop !117

151:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 157, ptr noundef nonnull @.str.6) #13
  br label %152

152:                                              ; preds = %146, %151
  %153 = phi i64 [ 0, %151 ], [ %135, %146 ]
  %154 = load ptr, ptr %117, align 8, !tbaa !114
  %155 = getelementptr inbounds %struct.access_matrix, ptr %154, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !118
  %157 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %156, i64 0, i32 2, i64 %119
  %158 = load ptr, ptr %157, align 8, !tbaa !35
  %159 = and i64 %153, 4294967295
  %160 = getelementptr inbounds i32, ptr %158, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !50
  %162 = getelementptr inbounds %struct.tree_common, ptr %120, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !46
  %164 = getelementptr inbounds %struct.tree_type, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !46
  %166 = icmp eq ptr %165, null
  br i1 %166, label %185, label %167

167:                                              ; preds = %152
  %168 = load i64, ptr %165, align 8
  %169 = and i64 %168, 65535
  %170 = icmp eq i64 %169, 23
  br i1 %170, label %171, label %185

171:                                              ; preds = %167
  %172 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %165) #13
  %173 = extractvalue { i64, i64 } %172, 0
  %174 = extractvalue { i64, i64 } %172, 1
  %175 = sext i32 %161 to i64
  %176 = ashr i64 %175, 63
  %177 = tail call { i64, i64 } @double_int_mul(i64 %173, i64 %174, i64 %175, i64 %176) #13
  %178 = extractvalue { i64, i64 } %177, 0
  %179 = extractvalue { i64, i64 } %177, 1
  %180 = load i64, ptr %6, align 8
  %181 = load i64, ptr %8, align 8
  %182 = tail call { i64, i64 } @double_int_add(i64 %180, i64 %181, i64 %178, i64 %179) #13
  %183 = extractvalue { i64, i64 } %182, 0
  %184 = extractvalue { i64, i64 } %182, 1
  store i64 %183, ptr %6, align 8, !tbaa.struct !119
  store i64 %184, ptr %8, align 8, !tbaa.struct !121
  br label %185

185:                                              ; preds = %152, %167, %171
  %186 = add nuw nsw i64 %119, 1
  %187 = getelementptr inbounds %struct.tree_exp, ptr %120, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !46
  br label %118, !llvm.loop !122

189:                                              ; preds = %125, %112
  %190 = add i32 %87, 1
  br label %86, !llvm.loop !123

191:                                              ; preds = %95
  ret void
}

declare i32 @double_int_ucmp(i64, i64, i64, i64) local_unnamed_addr #3

declare zeroext i8 @estimated_loop_iterations(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @double_int_mul(i64, i64, i64, i64) local_unnamed_addr #3

declare void @lambda_matrix_row_exchange(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !36, i64 48}
!55 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !56, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !57, i64 80, !57, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!56 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!57 = !{!"", !42, i64 0, !42, i64 8}
!58 = !{!55, !36, i64 56}
!59 = distinct !{!59, !52, !53}
!60 = !{!61, !36, i64 32}
!61 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!62 = !{!63, !36, i64 8}
!63 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!64 = !{!65, !41, i64 0}
!65 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!66 = !{!63, !36, i64 24}
!67 = !{!55, !41, i64 0}
!68 = !{!69, !41, i64 0}
!69 = !{!"VEC_int_base", !41, i64 0, !41, i64 4, !37, i64 8}
!70 = distinct !{!70, !53}
!71 = !{!55, !36, i64 40}
!72 = distinct !{!72, !52, !53}
!73 = distinct !{!73, !52, !53}
!74 = !{!65, !41, i64 4}
!75 = distinct !{!75, !52, !53}
!76 = !{!77, !41, i64 0}
!77 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!78 = !{!79, !36, i64 0}
!79 = !{!"lambda_trans_matrix_s", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16}
!80 = !{!81, !41, i64 0}
!81 = !{!"VEC_ddr_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!82 = !{!83, !36, i64 16}
!83 = !{!"data_dependence_relation", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !37, i64 60, !37, i64 61, !37, i64 62}
!84 = !{!85, !41, i64 8}
!85 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!86 = distinct !{!86, !52, !53}
!87 = distinct !{!87, !52, !53}
!88 = !{!89, !36, i64 8}
!89 = !{!"obstack", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !42, i64 40, !41, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 80, !41, i64 80}
!90 = !{!89, !42, i64 40}
!91 = !{!89, !36, i64 32}
!92 = !{!89, !36, i64 16}
!93 = !{!89, !36, i64 24}
!94 = distinct !{!94, !52, !53}
!95 = !{!96, !41, i64 0}
!96 = !{!"VEC_gimple_base", !41, i64 0, !41, i64 4, !37, i64 8}
!97 = distinct !{!97, !52, !53}
!98 = !{!83, !36, i64 48}
!99 = !{!100, !41, i64 0}
!100 = !{!"VEC_lambda_vector_base", !41, i64 0, !41, i64 4, !37, i64 8}
!101 = distinct !{!101, !52, !53}
!102 = distinct !{!102, !52, !53}
!103 = !{!104, !41, i64 0}
!104 = !{!"VEC_data_reference_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!105 = !{!106, !36, i64 8}
!106 = !{!"data_reference", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !107, i64 32, !108, i64 72, !109, i64 88, !36, i64 104}
!107 = !{!"innermost_loop_behavior", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!108 = !{!"indices", !36, i64 0, !36, i64 8}
!109 = !{!"dr_alias", !36, i64 0, !36, i64 8}
!110 = !{!106, !36, i64 0}
!111 = !{!112, !36, i64 24}
!112 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!113 = !{!106, !36, i64 80}
!114 = !{!106, !36, i64 104}
!115 = !{!116, !36, i64 0}
!116 = !{!"access_matrix", !36, i64 0, !41, i64 8, !36, i64 16, !36, i64 24}
!117 = distinct !{!117, !52, !53}
!118 = !{!116, !36, i64 24}
!119 = !{i64 0, i64 8, !120, i64 8, i64 8, !120}
!120 = !{!42, !42, i64 0}
!121 = !{i64 0, i64 8, !120}
!122 = distinct !{!122, !52, !53}
!123 = distinct !{!123, !52, !53}
