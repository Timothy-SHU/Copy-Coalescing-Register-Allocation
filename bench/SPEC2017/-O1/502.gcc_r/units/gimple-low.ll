; ModuleID = 'gimple-low.c'
source_filename = "gimple-low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.lower_data = type { ptr, ptr, i8, i8 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_return_statements_t_base = type { i32, i32, [1 x %struct.return_statements_t] }
%struct.return_statements_t = type { ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_try = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_catch = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_eh_filter = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@pass_lower_cf = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr null, ptr @lower_function_body, ptr null, ptr null, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0, i32 1 } }, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@current_function_decl = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"gimple-low.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"setjmpvar\00", align 1
@implicit_built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !61 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !62
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !61 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !62
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !61 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #13
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !61 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !62
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !61 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !61 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !61 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #13
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !61 {
  %2 = load i32, ptr %0, align 8, !tbaa !76
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !61 {
  %2 = load i32, ptr %0, align 8, !tbaa !76
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !61 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !77
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !61 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !77
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !61 {
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
  br i1 %23, label %7, label %24, !llvm.loop !78

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal noundef i32 @lower_function_body() #9 !prof !81 !PGOFuncName !82 {
  %1 = alloca %struct.lower_data, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #13
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %5 = tail call ptr @gimple_body(ptr noundef %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %9, !prof !83

7:                                                ; preds = %0
  %8 = load ptr, ptr %5, align 8, !tbaa !84
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ null, %0 ]
  br i1 %6, label %11, label %14, !prof !83

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gimple_seq_d, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  br label %14

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %13, %11 ], [ null, %9 ]
  %16 = icmp eq ptr %10, %15
  br i1 %16, label %17, label %23, !prof !83

17:                                               ; preds = %14
  tail call void @llvm.assume(i1 %6)
  %18 = load ptr, ptr %5, align 8, !tbaa !84, !nonnull !87, !noundef !87
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %24, label %23, !prof !83

23:                                               ; preds = %17, %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 109, ptr noundef nonnull @.str.2) #13
  br label %24

24:                                               ; preds = %17, %23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %25 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !73
  store ptr %27, ptr %1, align 8, !tbaa !90
  %28 = getelementptr inbounds %struct.tree_block, ptr %27, i64 0, i32 5
  store ptr null, ptr %28, align 8, !tbaa !73
  %29 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 1
  store ptr null, ptr %29, align 8, !tbaa !73
  %30 = load i64, ptr %27, align 8
  %31 = or i64 %30, 4194304
  store i64 %31, ptr %27, align 8
  %32 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 8, i64 noundef 8, i64 noundef 16) #13
  %33 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !92
  br i1 %6, label %34, label %36, !prof !83

34:                                               ; preds = %24
  %35 = load ptr, ptr %5, align 8, !tbaa !84
  br label %36

36:                                               ; preds = %34, %24
  %37 = phi ptr [ %35, %34 ], [ null, %24 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !93

39:                                               ; preds = %36
  %40 = load ptr, ptr %37, align 8, !tbaa !88
  br label %41

41:                                               ; preds = %36, %39
  %42 = phi ptr [ %40, %39 ], [ null, %36 ]
  store ptr null, ptr %2, align 8, !tbaa !62
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %42) #13
  %43 = load ptr, ptr %2, align 8, !tbaa !62
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !93

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !84, !noalias !94
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi ptr [ %46, %45 ], [ null, %41 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50, !prof !93

50:                                               ; preds = %47
  %51 = load ptr, ptr %48, align 8, !tbaa !88, !noalias !94
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53, !prof !93

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.gimple_statement_base, ptr %51, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !73, !noalias !94
  br label %56

56:                                               ; preds = %47, %50, %53
  %57 = phi ptr [ %55, %53 ], [ null, %50 ], [ null, %47 ]
  store ptr %48, ptr %3, align 8, !tbaa.struct !97
  %58 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %43, ptr %58, align 8, !tbaa.struct !98
  %59 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %57, ptr %59, align 8, !tbaa.struct !99
  call fastcc void @lower_gimple_bind(ptr noundef nonnull %3, ptr noundef nonnull %1)
  %60 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %61 = load ptr, ptr %2, align 8, !tbaa !62
  call void @gimple_set_body(ptr noundef %60, ptr noundef %61) #13
  %62 = load ptr, ptr %2, align 8, !tbaa !62
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64, !prof !93

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.gimple_seq_d, ptr %62, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !86, !noalias !100
  br label %67

67:                                               ; preds = %64, %56
  %68 = phi ptr [ %66, %64 ], [ null, %56 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70, !prof !93

70:                                               ; preds = %67
  %71 = load ptr, ptr %68, align 8, !tbaa !88, !noalias !100
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73, !prof !93

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.gimple_statement_base, ptr %71, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !73, !noalias !100
  br label %76

76:                                               ; preds = %67, %70, %73
  %77 = phi ptr [ %75, %73 ], [ null, %70 ], [ null, %67 ]
  store ptr %68, ptr %3, align 8, !tbaa.struct !97
  store ptr %62, ptr %58, align 8, !tbaa.struct !98
  store ptr %77, ptr %59, align 8, !tbaa.struct !99
  br i1 %63, label %81, label %78, !prof !93

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.gimple_seq_d, ptr %62, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !86
  br label %81

81:                                               ; preds = %78, %76
  %82 = phi ptr [ %80, %78 ], [ null, %76 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84, !prof !93

84:                                               ; preds = %81
  %85 = load ptr, ptr %82, align 8, !tbaa !88
  br label %86

86:                                               ; preds = %81, %84
  %87 = phi ptr [ %85, %84 ], [ null, %81 ]
  %88 = call zeroext i8 @gimple_stmt_may_fallthru(ptr noundef %87), !range !103
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %129, label %90, !prof !83

90:                                               ; preds = %86
  %91 = load ptr, ptr %33, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %119, label %93

93:                                               ; preds = %90
  %94 = load i32, ptr %91, align 8, !tbaa !104
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %119, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %91, align 8, !tbaa !104
  %98 = add i32 %97, -1
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.VEC_return_statements_t_base, ptr %91, i64 0, i32 2, i64 %99, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !106
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 255
  %104 = add nsw i32 %103, -10
  %105 = icmp ult i32 %104, -9
  br i1 %105, label %129, label %106

106:                                              ; preds = %96
  %107 = zext nneg i32 %103 to i64
  %108 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !77
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %110
  %112 = load i64, ptr %111, align 8, !tbaa !108
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %115

115:                                              ; preds = %114, %106
  %116 = getelementptr inbounds i8, ptr %101, i64 %112
  %117 = load ptr, ptr %116, align 8, !tbaa !62
  %118 = icmp eq ptr %117, null
  br i1 %118, label %129, label %119

119:                                              ; preds = %90, %115, %93
  %120 = call ptr @gimple_build_return(ptr noundef null) #13
  %121 = load ptr, ptr @cfun, align 8, !tbaa !62
  %122 = getelementptr inbounds %struct.function, ptr %121, i64 0, i32 16
  %123 = load i32, ptr %122, align 4, !tbaa !109
  %124 = getelementptr inbounds %struct.gimple_statement_base, ptr %120, i64 0, i32 2
  store i32 %123, ptr %124, align 8, !tbaa !73
  %125 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %126 = getelementptr inbounds %struct.tree_decl_common, ptr %125, i64 0, i32 5
  %127 = load ptr, ptr %126, align 8, !tbaa !73
  %128 = getelementptr inbounds %struct.gimple_statement_base, ptr %120, i64 0, i32 5
  store ptr %127, ptr %128, align 8, !tbaa !73
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %120, i32 noundef 2) #13
  br label %129

129:                                              ; preds = %96, %119, %115, %86
  %130 = load ptr, ptr %33, align 8
  %131 = icmp eq ptr %130, null
  br label %132

132:                                              ; preds = %138, %129
  br i1 %131, label %135, label %133, !prof !111

133:                                              ; preds = %132
  %134 = load i32, ptr %130, align 8, !tbaa !104
  br label %135

135:                                              ; preds = %132, %133
  %136 = phi i32 [ %134, %133 ], [ 0, %132 ]
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %148, label %138, !prof !112

138:                                              ; preds = %135
  %139 = load i32, ptr %130, align 8, !tbaa !104
  %140 = add i32 %139, -1
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.VEC_return_statements_t_base, ptr %130, i64 0, i32 2, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa.struct !98
  %144 = getelementptr inbounds i8, ptr %142, i64 8
  %145 = load ptr, ptr %144, align 8, !tbaa.struct !99
  store i32 %140, ptr %130, align 8, !tbaa !104
  %146 = call ptr @gimple_build_label(ptr noundef %143) #13
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %146, i32 noundef 2) #13
  %147 = getelementptr inbounds %struct.gimple_statement_base, ptr %145, i64 0, i32 2
  store i32 0, ptr %147, align 8, !tbaa !73
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %145, i32 noundef 2) #13
  br label %132, !llvm.loop !113

148:                                              ; preds = %135
  %149 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 3
  %150 = load i8, ptr %149, align 1, !tbaa !114
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %202, label %152, !prof !83

152:                                              ; preds = %148
  %153 = load ptr, ptr @cfun, align 8, !tbaa !62
  %154 = getelementptr inbounds %struct.function, ptr %153, i64 0, i32 16
  %155 = load i32, ptr %154, align 4, !tbaa !109
  %156 = call ptr @create_artificial_label(i32 noundef %155) #13
  %157 = getelementptr inbounds %struct.tree_decl_common, ptr %156, i64 0, i32 2
  %158 = load i64, ptr %157, align 8
  %159 = or i64 %158, 256
  store i64 %159, ptr %157, align 8
  %160 = load ptr, ptr @cfun, align 8, !tbaa !62
  %161 = getelementptr inbounds %struct.function, ptr %160, i64 0, i32 20
  %162 = load i32, ptr %161, align 8
  %163 = or i32 %162, 1048576
  store i32 %163, ptr %161, align 8
  %164 = call ptr @gimple_build_label(ptr noundef %156) #13
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %164, i32 noundef 2) #13
  %165 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !62
  %166 = call ptr @create_tmp_var(ptr noundef %165, ptr noundef nonnull @.str.3) #13
  %167 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %168 = call ptr @build_addr(ptr noundef %156, ptr noundef %167) #13
  %169 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 524), align 16, !tbaa !62
  %170 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %169, i32 noundef 1, ptr noundef %168) #13
  %171 = load i32, ptr %170, align 8
  %172 = and i32 %171, 255
  %173 = add nsw i32 %172, -10
  %174 = icmp ult i32 %173, -9
  br i1 %174, label %179, label %175

175:                                              ; preds = %152
  %176 = getelementptr inbounds %struct.gimple_statement_base, ptr %170, i64 0, i32 3
  %177 = load i32, ptr %176, align 4, !tbaa !73
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %175, %152
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1665, ptr noundef nonnull @.str.2) #13
  br label %180

180:                                              ; preds = %179, %175
  %181 = load i32, ptr %170, align 8
  %182 = and i32 %181, 255
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !77
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %186
  %188 = load i64, ptr %187, align 8, !tbaa !108
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %180
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %191

191:                                              ; preds = %190, %180
  %192 = getelementptr inbounds i8, ptr %170, i64 %188
  store ptr %166, ptr %192, align 8, !tbaa !62
  %193 = icmp eq ptr %166, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %191
  %195 = load i64, ptr %166, align 8
  %196 = and i64 %195, 65535
  %197 = icmp eq i64 %196, 141
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.tree_ssa_name, ptr %166, i64 0, i32 2
  store ptr %170, ptr %199, align 8, !tbaa !73
  br label %200

200:                                              ; preds = %191, %194, %198
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef nonnull %170, i32 noundef 2) #13
  %201 = call ptr @gimple_build_goto(ptr noundef %166) #13
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %201, i32 noundef 2) #13
  br label %202

202:                                              ; preds = %200, %148
  %203 = load ptr, ptr %1, align 8, !tbaa !90
  %204 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %205 = getelementptr inbounds %struct.tree_decl_common, ptr %204, i64 0, i32 5
  %206 = load ptr, ptr %205, align 8, !tbaa !73
  %207 = icmp eq ptr %203, %206
  br i1 %207, label %209, label %208, !prof !83

208:                                              ; preds = %202
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 196, ptr noundef nonnull @.str.2) #13
  br label %209

209:                                              ; preds = %202, %208
  %210 = getelementptr inbounds %struct.tree_block, ptr %203, i64 0, i32 5
  %211 = load ptr, ptr %210, align 8, !tbaa !73
  %212 = call ptr @blocks_nreverse(ptr noundef %211) #13
  store ptr %212, ptr %210, align 8, !tbaa !73
  call void @clear_block_marks(ptr noundef %203) #13
  br i1 %131, label %214, label %213, !prof !93

213:                                              ; preds = %209
  call void @free(ptr noundef %130)
  br label %214

214:                                              ; preds = %209, %213
  store ptr null, ptr %33, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #13
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @gimple_check_call_args(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !115 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !73
  %4 = add i32 %3, -3
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -10
  %8 = icmp ult i32 %7, -9
  br i1 %8, label %22, label %9, !prof !116

9:                                                ; preds = %1
  %10 = zext nneg i32 %6 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !77
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !108
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18, !prof !116

17:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr inbounds i8, ptr %0, i64 %15
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  br label %22

22:                                               ; preds = %18, %1
  %23 = phi ptr [ %21, %18 ], [ null, %1 ]
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 121
  br i1 %26, label %27, label %30, !prof !117

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !73
  br label %30

30:                                               ; preds = %22, %27
  %31 = phi ptr [ %29, %27 ], [ null, %22 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %96, !prof !116

33:                                               ; preds = %30
  %34 = load i32, ptr %0, align 8
  %35 = and i32 %34, 255
  %36 = add nsw i32 %35, -1
  %37 = icmp ult i32 %36, 9
  tail call void @llvm.assume(i1 %37)
  %38 = zext nneg i32 %35 to i64
  %39 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !77
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !108
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %46

46:                                               ; preds = %45, %33
  %47 = getelementptr inbounds i8, ptr %0, i64 %43
  %48 = getelementptr inbounds ptr, ptr %47, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !62
  %50 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !73
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 10
  br i1 %54, label %77, label %55

55:                                               ; preds = %46
  %56 = load i32, ptr %0, align 8
  %57 = and i32 %56, 255
  %58 = add nsw i32 %57, -1
  %59 = icmp ult i32 %58, 9
  tail call void @llvm.assume(i1 %59)
  %60 = zext nneg i32 %57 to i64
  %61 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !77
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !108
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %68

68:                                               ; preds = %67, %55
  %69 = getelementptr inbounds i8, ptr %0, i64 %65
  %70 = getelementptr inbounds ptr, ptr %69, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !62
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !73
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 12
  br i1 %76, label %77, label %102

77:                                               ; preds = %68, %46
  %78 = load i32, ptr %0, align 8
  %79 = and i32 %78, 255
  %80 = add nsw i32 %79, -1
  %81 = icmp ult i32 %80, 9
  tail call void @llvm.assume(i1 %81)
  %82 = zext nneg i32 %79 to i64
  %83 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !77
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !108
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %90

90:                                               ; preds = %89, %77
  %91 = getelementptr inbounds i8, ptr %0, i64 %87
  %92 = getelementptr inbounds ptr, ptr %91, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !62
  %94 = getelementptr inbounds %struct.tree_common, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !73
  br label %96

96:                                               ; preds = %30, %90
  %97 = phi ptr [ %95, %90 ], [ %31, %30 ]
  %98 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !73
  %100 = getelementptr inbounds %struct.tree_type, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !73
  br label %102

102:                                              ; preds = %96, %68
  %103 = phi ptr [ null, %68 ], [ %101, %96 ]
  br i1 %32, label %174, label %104, !prof !116

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.tree_decl_non_common, ptr %31, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !73
  %107 = icmp eq ptr %106, null
  br i1 %107, label %174, label %108, !prof !116

108:                                              ; preds = %104
  %109 = icmp eq i32 %4, 0
  br i1 %109, label %248, label %110, !prof !118

110:                                              ; preds = %108
  %111 = zext i32 %4 to i64
  br label %112

112:                                              ; preds = %110, %167
  %113 = phi i64 [ 0, %110 ], [ %168, %167 ]
  %114 = phi ptr [ %106, %110 ], [ %170, %167 ]
  %115 = load ptr, ptr @global_trees, align 16, !tbaa !62
  %116 = icmp eq ptr %114, %115
  br i1 %116, label %249, label %117, !prof !116

117:                                              ; preds = %112
  %118 = trunc i64 %113 to i32
  %119 = add i32 %118, 3
  %120 = load i32, ptr %0, align 8
  %121 = and i32 %120, 255
  %122 = add nsw i32 %121, -10
  %123 = icmp ult i32 %122, -9
  br i1 %123, label %138, label %124, !prof !116

124:                                              ; preds = %117
  %125 = zext nneg i32 %121 to i64
  %126 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !77
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %128
  %130 = load i64, ptr %129, align 8, !tbaa !108
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133, !prof !116

132:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %133

133:                                              ; preds = %132, %124
  %134 = getelementptr inbounds i8, ptr %0, i64 %130
  %135 = zext i32 %119 to i64
  %136 = getelementptr inbounds ptr, ptr %134, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !62
  br label %138

138:                                              ; preds = %117, %133
  %139 = phi ptr [ %137, %133 ], [ null, %117 ]
  %140 = load ptr, ptr @global_trees, align 16, !tbaa !62
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %249, label %142, !prof !116

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.tree_decl_common, ptr %114, i64 0, i32 5
  %144 = load ptr, ptr %143, align 8, !tbaa !73
  %145 = load i32, ptr %0, align 8
  %146 = and i32 %145, 255
  %147 = add nsw i32 %146, -10
  %148 = icmp ult i32 %147, -9
  br i1 %148, label %163, label %149, !prof !116

149:                                              ; preds = %142
  %150 = zext nneg i32 %146 to i64
  %151 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !77
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %153
  %155 = load i64, ptr %154, align 8, !tbaa !108
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %158, !prof !116

157:                                              ; preds = %149
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %158

158:                                              ; preds = %157, %149
  %159 = getelementptr inbounds i8, ptr %0, i64 %155
  %160 = zext i32 %119 to i64
  %161 = getelementptr inbounds ptr, ptr %159, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !62
  br label %163

163:                                              ; preds = %142, %158
  %164 = phi ptr [ %162, %158 ], [ null, %142 ]
  %165 = tail call zeroext i8 @fold_convertible_p(ptr noundef %144, ptr noundef %164) #13
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %249, label %167, !prof !116

167:                                              ; preds = %163
  %168 = add nuw nsw i64 %113, 1
  %169 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !73
  %171 = icmp ult i64 %168, %111
  %172 = icmp ne ptr %170, null
  %173 = select i1 %171, i1 %172, i1 false, !prof !119
  br i1 %173, label %112, label %248, !prof !118, !llvm.loop !120

174:                                              ; preds = %104, %102
  %175 = icmp eq ptr %103, null
  %176 = icmp eq i32 %4, 0
  br i1 %175, label %247, label %177

177:                                              ; preds = %174
  br i1 %176, label %248, label %178

178:                                              ; preds = %177
  %179 = zext i32 %4 to i64
  br label %180

180:                                              ; preds = %178, %240
  %181 = phi i64 [ 0, %178 ], [ %241, %240 ]
  %182 = phi ptr [ %103, %178 ], [ %243, %240 ]
  %183 = getelementptr inbounds %struct.tree_list, ptr %182, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !73
  %185 = load ptr, ptr @global_trees, align 16, !tbaa !62
  %186 = icmp eq ptr %184, %185
  br i1 %186, label %249, label %187

187:                                              ; preds = %180
  %188 = trunc i64 %181 to i32
  %189 = add i32 %188, 3
  %190 = load i32, ptr %0, align 8
  %191 = and i32 %190, 255
  %192 = add nsw i32 %191, -10
  %193 = icmp ult i32 %192, -9
  br i1 %193, label %208, label %194

194:                                              ; preds = %187
  %195 = zext nneg i32 %191 to i64
  %196 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !77
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %198
  %200 = load i64, ptr %199, align 8, !tbaa !108
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %203

203:                                              ; preds = %202, %194
  %204 = getelementptr inbounds i8, ptr %0, i64 %200
  %205 = zext i32 %189 to i64
  %206 = getelementptr inbounds ptr, ptr %204, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !62
  br label %208

208:                                              ; preds = %187, %203
  %209 = phi ptr [ %207, %203 ], [ null, %187 ]
  %210 = load ptr, ptr @global_trees, align 16, !tbaa !62
  %211 = icmp eq ptr %209, %210
  br i1 %211, label %249, label %212

212:                                              ; preds = %208
  %213 = load ptr, ptr %183, align 8, !tbaa !73
  %214 = load i64, ptr %213, align 8
  %215 = and i64 %214, 65535
  %216 = icmp eq i64 %215, 19
  br i1 %216, label %249, label %217

217:                                              ; preds = %212
  %218 = load i32, ptr %0, align 8
  %219 = and i32 %218, 255
  %220 = add nsw i32 %219, -10
  %221 = icmp ult i32 %220, -9
  br i1 %221, label %236, label %222

222:                                              ; preds = %217
  %223 = zext nneg i32 %219 to i64
  %224 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !77
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %226
  %228 = load i64, ptr %227, align 8, !tbaa !108
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %231

231:                                              ; preds = %230, %222
  %232 = getelementptr inbounds i8, ptr %0, i64 %228
  %233 = zext i32 %189 to i64
  %234 = getelementptr inbounds ptr, ptr %232, i64 %233
  %235 = load ptr, ptr %234, align 8, !tbaa !62
  br label %236

236:                                              ; preds = %217, %231
  %237 = phi ptr [ %235, %231 ], [ null, %217 ]
  %238 = tail call zeroext i8 @fold_convertible_p(ptr noundef nonnull %213, ptr noundef %237) #13
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %249, label %240

240:                                              ; preds = %236
  %241 = add nuw nsw i64 %181, 1
  %242 = getelementptr inbounds %struct.tree_common, ptr %182, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !73
  %244 = icmp ult i64 %241, %179
  %245 = icmp ne ptr %243, null
  %246 = select i1 %244, i1 %245, i1 false
  br i1 %246, label %180, label %248, !llvm.loop !121

247:                                              ; preds = %174
  br i1 %176, label %248, label %249

248:                                              ; preds = %167, %240, %108, %177, %247
  br label %249

249:                                              ; preds = %112, %138, %163, %180, %208, %212, %236, %247, %248
  %250 = phi i8 [ 1, %248 ], [ 0, %247 ], [ 0, %236 ], [ 0, %212 ], [ 0, %208 ], [ 0, %180 ], [ 0, %163 ], [ 0, %138 ], [ 0, %112 ]
  ret i8 %250
}

declare zeroext i8 @fold_convertible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @block_may_fallthru(ptr noundef %0) local_unnamed_addr #9 !prof !122 {
  br label %2

2:                                                ; preds = %78, %63, %55, %24, %21, %1
  %3 = phi ptr [ %0, %1 ], [ %23, %21 ], [ %26, %24 ], [ %57, %55 ], [ %65, %63 ], [ %80, %78 ]
  %4 = tail call ptr @expr_last(ptr noundef %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !123

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = trunc i64 %7 to i16
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i16 [ %8, %6 ], [ 0, %2 ]
  switch i16 %10, label %81 [
    i16 134, label %82
    i16 135, label %82
    i16 138, label %11
    i16 56, label %16
    i16 58, label %24
    i16 130, label %27
    i16 131, label %58
    i16 53, label %66
    i16 59, label %72
    i16 61, label %78
  ], !prof !124

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = icmp eq ptr %13, null
  %15 = zext i1 %14 to i8
  br label %82

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = tail call zeroext i8 @block_may_fallthru(ptr noundef %18), !range !103
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %82, !prof !125

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  br label %2

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  br label %2

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !73
  %30 = tail call zeroext i8 @block_may_fallthru(ptr noundef %29), !range !103
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %82

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !73
  %35 = getelementptr inbounds %struct.tree_statement_list, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = getelementptr inbounds %struct.tree_statement_list_node, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !126
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i16
  switch i16 %40, label %82 [
    i16 142, label %41
    i16 143, label %55
  ]

41:                                               ; preds = %32
  %42 = icmp eq ptr %36, null
  br i1 %42, label %82, label %43

43:                                               ; preds = %41, %51
  %44 = phi ptr [ %53, %51 ], [ %36, %41 ]
  %45 = getelementptr inbounds %struct.tree_statement_list_node, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !126
  %47 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !73
  %49 = tail call zeroext i8 @block_may_fallthru(ptr noundef %48), !range !103
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.tree_statement_list_node, ptr %44, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !128
  %54 = icmp eq ptr %53, null
  br i1 %54, label %82, label %43, !llvm.loop !129

55:                                               ; preds = %32
  %56 = getelementptr inbounds %struct.tree_exp, ptr %38, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !73
  br label %2

58:                                               ; preds = %9
  %59 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !73
  %61 = tail call zeroext i8 @block_may_fallthru(ptr noundef %60), !range !103
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %82, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !73
  br label %2

66:                                               ; preds = %9
  %67 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !73
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 59
  br i1 %71, label %72, label %82, !prof !130

72:                                               ; preds = %66, %9
  %73 = phi ptr [ %4, %9 ], [ %68, %66 ]
  %74 = tail call i32 @call_expr_flags(ptr noundef %73) #13
  %75 = and i32 %74, 8
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i8
  br label %82

78:                                               ; preds = %9
  %79 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !73
  br label %2

81:                                               ; preds = %9
  br label %82

82:                                               ; preds = %43, %51, %41, %66, %9, %32, %27, %58, %16, %9, %81, %72, %11
  %83 = phi i8 [ 1, %81 ], [ %77, %72 ], [ %15, %11 ], [ 0, %9 ], [ 1, %16 ], [ 0, %58 ], [ 1, %27 ], [ 0, %32 ], [ 0, %9 ], [ 1, %66 ], [ 0, %41 ], [ 0, %51 ], [ 1, %43 ]
  ret i8 %83
}

declare ptr @expr_last(ptr noundef) local_unnamed_addr #3

declare i32 @call_expr_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @gimple_stmt_may_fallthru(ptr noundef %0) local_unnamed_addr #9 !prof !131 {
  br label %2

2:                                                ; preds = %113, %86, %20, %1
  %3 = phi ptr [ %0, %1 ], [ %21, %20 ], [ %87, %86 ], [ %114, %113 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %121, label %5, !prof !132

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = trunc i32 %6 to i8
  switch i8 %7, label %120 [
    i8 3, label %121
    i8 9, label %121
    i8 14, label %121
    i8 5, label %121
    i8 1, label %121
    i8 10, label %8
    i8 17, label %22
    i8 8, label %115
  ], !prof !133

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.gimple_statement_bind, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gimple_seq_d, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !88
  br label %20

20:                                               ; preds = %15, %18
  %21 = phi ptr [ %19, %18 ], [ null, %15 ]
  br label %2

22:                                               ; preds = %5
  %23 = and i32 %6, 196608
  %24 = icmp eq i32 %23, 65536
  %25 = getelementptr inbounds %struct.gimple_statement_try, ptr %3, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = icmp eq ptr %26, null
  br i1 %24, label %28, label %88

28:                                               ; preds = %22
  br i1 %27, label %32, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.gimple_seq_d, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi ptr [ %31, %29 ], [ null, %28 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 8, !tbaa !88
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi ptr [ %36, %35 ], [ null, %32 ]
  %39 = tail call zeroext i8 @gimple_stmt_may_fallthru(ptr noundef %38), !range !103
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %121

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.gimple_statement_try, ptr %3, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !73
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !84, !noalias !134
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi ptr [ %46, %45 ], [ null, %41 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !88
  %50 = load i32, ptr %49, align 8
  %51 = trunc i32 %50 to i8
  switch i8 %51, label %121 [
    i8 11, label %52
    i8 12, label %74
  ]

52:                                               ; preds = %47, %70
  %53 = phi ptr [ %72, %70 ], [ %48, %47 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !88
  %55 = getelementptr inbounds %struct.gimple_statement_catch, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !73
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.gimple_seq_d, ptr %56, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !86
  br label %61

61:                                               ; preds = %58, %52
  %62 = phi ptr [ %60, %58 ], [ null, %52 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %62, align 8, !tbaa !88
  br label %66

66:                                               ; preds = %61, %64
  %67 = phi ptr [ %65, %64 ], [ null, %61 ]
  %68 = tail call zeroext i8 @gimple_stmt_may_fallthru(ptr noundef %67), !range !103
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %121

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %53, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !137
  %73 = icmp eq ptr %72, null
  br i1 %73, label %121, label %52, !llvm.loop !138

74:                                               ; preds = %47
  %75 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %49, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !73
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.gimple_seq_d, ptr %76, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !86
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi ptr [ %80, %78 ], [ null, %74 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %82, align 8, !tbaa !88
  br label %86

86:                                               ; preds = %81, %84
  %87 = phi ptr [ %85, %84 ], [ null, %81 ]
  br label %2

88:                                               ; preds = %22
  br i1 %27, label %92, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.gimple_seq_d, ptr %26, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !86
  br label %92

92:                                               ; preds = %89, %88
  %93 = phi ptr [ %91, %89 ], [ null, %88 ]
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %93, align 8, !tbaa !88
  br label %97

97:                                               ; preds = %92, %95
  %98 = phi ptr [ %96, %95 ], [ null, %92 ]
  %99 = tail call zeroext i8 @gimple_stmt_may_fallthru(ptr noundef %98), !range !103
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.gimple_statement_try, ptr %3, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !73
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.gimple_seq_d, ptr %103, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !86
  br label %108

108:                                              ; preds = %105, %101
  %109 = phi ptr [ %107, %105 ], [ null, %101 ]
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %109, align 8, !tbaa !88
  br label %113

113:                                              ; preds = %108, %111
  %114 = phi ptr [ %112, %111 ], [ null, %108 ]
  br label %2

115:                                              ; preds = %5
  %116 = tail call i32 @gimple_call_flags(ptr noundef nonnull %3) #13
  %117 = and i32 %116, 8
  %118 = icmp eq i32 %117, 0
  %119 = zext i1 %118 to i8
  br label %121

120:                                              ; preds = %5
  br label %121

121:                                              ; preds = %70, %66, %5, %5, %5, %5, %47, %37, %97, %5, %2, %120, %115
  %122 = phi i8 [ 1, %120 ], [ %119, %115 ], [ 1, %2 ], [ 0, %5 ], [ 0, %97 ], [ 1, %37 ], [ 0, %47 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 1, %66 ], [ 0, %70 ]
  ret i8 %122
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @gimple_seq_may_fallthru(ptr noundef readonly %0) local_unnamed_addr #9 !prof !139 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !140

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !140

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !88
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ]
  %13 = tail call zeroext i8 @gimple_stmt_may_fallthru(ptr noundef %12), !range !103
  ret i8 %13
}

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @record_vars_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !61 {
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %8, label %5, !prof !141

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  tail call void @push_cfun(ptr noundef %7) #13
  br label %8

8:                                                ; preds = %5, %2
  %9 = icmp eq ptr %0, null
  br i1 %9, label %31, label %10, !prof !142

10:                                               ; preds = %8, %27
  %11 = phi ptr [ %29, %27 ], [ %0, %8 ]
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 32
  br i1 %14, label %15, label %27, !prof !143

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 33554432
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27, !prof !143

20:                                               ; preds = %15
  %21 = load ptr, ptr @cfun, align 8, !tbaa !62
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !144
  %24 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %11, ptr noundef %23) #13
  %25 = load ptr, ptr @cfun, align 8, !tbaa !62
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 9
  store ptr %24, ptr %26, align 8, !tbaa !144
  br label %27

27:                                               ; preds = %15, %10, %20
  %28 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !73
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %10, !prof !145, !llvm.loop !146

31:                                               ; preds = %27, %8
  %32 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %33 = icmp eq ptr %32, %1
  br i1 %33, label %35, label %34, !prof !141

34:                                               ; preds = %31
  tail call void @pop_cfun() #13
  br label %35

35:                                               ; preds = %34, %31
  ret void
}

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @record_vars(ptr noundef %0) local_unnamed_addr #9 !prof !147 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4, !prof !142

4:                                                ; preds = %1, %21
  %5 = phi ptr [ %23, %21 ], [ %0, %1 ]
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 32
  br i1 %8, label %9, label %21, !prof !143

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 33554432
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %21, !prof !143

14:                                               ; preds = %9
  %15 = load ptr, ptr @cfun, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !144
  %18 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %5, ptr noundef %17) #13
  %19 = load ptr, ptr @cfun, align 8, !tbaa !62
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 9
  store ptr %18, ptr %20, align 8, !tbaa !144
  br label %21

21:                                               ; preds = %14, %9, %4
  %22 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %4, !prof !145, !llvm.loop !146

25:                                               ; preds = %21, %1
  %26 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %27 = icmp eq ptr %26, %2
  br i1 %27, label %29, label %28, !prof !141

28:                                               ; preds = %25
  tail call void @pop_cfun() #13
  br label %29

29:                                               ; preds = %25, %28
  ret void
}

declare ptr @gimple_body(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @lower_gimple_bind(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !81 !PGOFuncName !148 {
  %3 = load ptr, ptr %1, align 8, !tbaa !90
  %4 = load ptr, ptr %0, align 1
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.gimple_statement_bind, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9, !prof !93

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, %3
  br i1 %10, label %11, label %17, !prof !83

11:                                               ; preds = %9
  %12 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = icmp eq ptr %7, %14
  br i1 %15, label %30, label %16, !prof !83

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 465, ptr noundef nonnull @.str.2) #13
  br label %30

17:                                               ; preds = %9
  %18 = load i64, ptr %7, align 8
  %19 = and i64 %18, 4194304
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 471, ptr noundef nonnull @.str.2) #13
  br label %22

22:                                               ; preds = %17, %21
  %23 = load i64, ptr %7, align 8
  %24 = or i64 %23, 4194304
  store i64 %24, ptr %7, align 8
  %25 = getelementptr inbounds %struct.tree_block, ptr %3, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !73
  store ptr %7, ptr %25, align 8, !tbaa !73
  %28 = getelementptr inbounds %struct.tree_block, ptr %7, i64 0, i32 5
  store ptr null, ptr %28, align 8, !tbaa !73
  %29 = getelementptr inbounds %struct.tree_block, ptr %7, i64 0, i32 6
  store ptr %3, ptr %29, align 8, !tbaa !73
  store ptr %7, ptr %1, align 8, !tbaa !90
  br label %30

30:                                               ; preds = %16, %11, %22, %2
  %31 = phi ptr [ %7, %22 ], [ null, %2 ], [ null, %11 ], [ null, %16 ]
  %32 = getelementptr inbounds %struct.gimple_statement_bind, ptr %5, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  %34 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %35 = icmp eq ptr %33, null
  br i1 %35, label %57, label %36, !prof !142

36:                                               ; preds = %30, %53
  %37 = phi ptr [ %55, %53 ], [ %33, %30 ]
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 32
  br i1 %40, label %41, label %53, !prof !143

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %37, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 33554432
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %53, !prof !143

46:                                               ; preds = %41
  %47 = load ptr, ptr @cfun, align 8, !tbaa !62
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !144
  %50 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %37, ptr noundef %49) #13
  %51 = load ptr, ptr @cfun, align 8, !tbaa !62
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 9
  store ptr %50, ptr %52, align 8, !tbaa !144
  br label %53

53:                                               ; preds = %46, %41, %36
  %54 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !73
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %36, !prof !145, !llvm.loop !146

57:                                               ; preds = %53, %30
  %58 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %59 = icmp eq ptr %58, %34
  br i1 %59, label %61, label %60, !prof !141

60:                                               ; preds = %57
  tail call void @pop_cfun() #13
  br label %61

61:                                               ; preds = %57, %60
  %62 = getelementptr inbounds %struct.gimple_statement_bind, ptr %5, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !73
  tail call fastcc void @lower_sequence(ptr noundef %63, ptr noundef nonnull %1)
  %64 = icmp eq ptr %31, null
  br i1 %64, label %73, label %65, !prof !83

65:                                               ; preds = %61
  %66 = load ptr, ptr %1, align 8, !tbaa !90
  %67 = icmp eq ptr %66, %31
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 491, ptr noundef nonnull @.str.2) #13
  br label %69

69:                                               ; preds = %65, %68
  %70 = getelementptr inbounds %struct.tree_block, ptr %31, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !73
  %72 = tail call ptr @blocks_nreverse(ptr noundef %71) #13
  store ptr %72, ptr %70, align 8, !tbaa !73
  store ptr %3, ptr %1, align 8, !tbaa !90
  br label %73

73:                                               ; preds = %69, %61
  %74 = load ptr, ptr %62, align 8, !tbaa !73
  tail call void @gsi_insert_seq_before(ptr noundef nonnull %0, ptr noundef %74, i32 noundef 1) #13
  tail call void @gsi_remove(ptr noundef nonnull %0, i8 noundef zeroext 0) #13
  ret void
}

declare void @gimple_set_body(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_return(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #3

declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare ptr @gimple_build_goto(ptr noundef) local_unnamed_addr #3

declare ptr @blocks_nreverse(ptr noundef) local_unnamed_addr #3

declare void @clear_block_marks(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @lower_sequence(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !81 !PGOFuncName !149 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5, !prof !93

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !84, !noalias !150
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !93

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8, !tbaa !88, !noalias !150
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !93

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gimple_statement_base, ptr %11, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !73, !noalias !150
  br label %16

16:                                               ; preds = %7, %10, %13
  %17 = phi ptr [ %15, %13 ], [ null, %10 ], [ null, %7 ]
  store ptr %8, ptr %3, align 8, !tbaa.struct !97
  %18 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %0, ptr %18, align 8, !tbaa.struct !98
  %19 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr %17, ptr %19, align 8, !tbaa.struct !99
  %20 = icmp eq ptr %8, null
  br i1 %20, label %296, label %21, !prof !153

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  %23 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  %24 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 1
  %25 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  %26 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  br label %27

27:                                               ; preds = %21, %293
  %28 = phi ptr [ %8, %21 ], [ %294, %293 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = load ptr, ptr %1, align 8, !tbaa !90
  %31 = getelementptr inbounds %struct.gimple_statement_base, ptr %29, i64 0, i32 5
  store ptr %30, ptr %31, align 8, !tbaa !73
  %32 = load i32, ptr %29, align 8
  %33 = and i32 %32, 255
  %34 = trunc i32 %32 to i8
  switch i8 %34, label %288 [
    i8 10, label %35
    i8 1, label %36
    i8 3, label %36
    i8 5, label %36
    i8 9, label %39
    i8 17, label %131
    i8 11, label %147
    i8 12, label %151
    i8 18, label %289
    i8 7, label %289
    i8 6, label %289
    i8 33, label %289
    i8 4, label %289
    i8 13, label %289
    i8 23, label %289
    i8 30, label %289
    i8 31, label %289
    i8 29, label %289
    i8 32, label %289
    i8 24, label %289
    i8 25, label %289
    i8 22, label %289
    i8 28, label %289
    i8 19, label %289
    i8 20, label %289
    i8 21, label %289
    i8 8, label %155
    i8 26, label %282
    i8 27, label %282
  ], !prof !154

35:                                               ; preds = %27
  call fastcc void @lower_gimple_bind(ptr noundef nonnull %3, ptr noundef nonnull %1)
  br label %293

36:                                               ; preds = %27, %27, %27
  store i8 1, ptr %25, align 8, !tbaa !155
  %37 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %28, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !137
  store ptr %38, ptr %3, align 8, !tbaa !156
  br label %293

39:                                               ; preds = %27
  %40 = load i8, ptr %23, align 8, !tbaa !155
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42, !prof !158

42:                                               ; preds = %39
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 0) #13
  br label %293

43:                                               ; preds = %39
  %44 = load ptr, ptr %28, align 8, !tbaa !88
  %45 = load ptr, ptr %24, align 8, !tbaa !92
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !159

47:                                               ; preds = %43
  %48 = load i32, ptr %45, align 8, !tbaa !104
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %48, %47 ], [ 0, %43 ]
  %51 = zext i32 %50 to i64
  br label %52

52:                                               ; preds = %98, %49
  %53 = phi i64 [ %54, %98 ], [ %51, %49 ]
  %54 = add nsw i64 %53, -1
  %55 = and i64 %54, 2147483648
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %101, !prof !160

57:                                               ; preds = %52
  %58 = load ptr, ptr %24, align 8, !tbaa !92
  %59 = and i64 %54, 2147483647
  %60 = getelementptr inbounds %struct.VEC_return_statements_t_base, ptr %58, i64 0, i32 2, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa.struct !98
  %62 = getelementptr inbounds i8, ptr %60, i64 8
  %63 = load ptr, ptr %62, align 8, !tbaa.struct !99
  %64 = load i32, ptr %44, align 8
  %65 = and i32 %64, 255
  %66 = add nsw i32 %65, -10
  %67 = icmp ult i32 %66, -9
  br i1 %67, label %80, label %68, !prof !161

68:                                               ; preds = %57
  %69 = zext nneg i32 %65 to i64
  %70 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !77
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !108
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77, !prof !161

76:                                               ; preds = %68
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %77

77:                                               ; preds = %76, %68
  %78 = getelementptr inbounds i8, ptr %44, i64 %74
  %79 = load ptr, ptr %78, align 8, !tbaa !62
  br label %80

80:                                               ; preds = %77, %57
  %81 = phi ptr [ %79, %77 ], [ null, %57 ]
  %82 = load i32, ptr %63, align 8
  %83 = and i32 %82, 255
  %84 = add nsw i32 %83, -10
  %85 = icmp ult i32 %84, -9
  br i1 %85, label %98, label %86, !prof !161

86:                                               ; preds = %80
  %87 = zext nneg i32 %83 to i64
  %88 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !77
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !108
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95, !prof !161

94:                                               ; preds = %86
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %95

95:                                               ; preds = %94, %86
  %96 = getelementptr inbounds i8, ptr %63, i64 %92
  %97 = load ptr, ptr %96, align 8, !tbaa !62
  br label %98

98:                                               ; preds = %95, %80
  %99 = phi ptr [ %97, %95 ], [ null, %80 ]
  %100 = icmp eq ptr %81, %99
  br i1 %100, label %122, label %52, !prof !162, !llvm.loop !163

101:                                              ; preds = %52
  %102 = load ptr, ptr @cfun, align 8, !tbaa !62
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 16
  %104 = load i32, ptr %103, align 4, !tbaa !109
  %105 = call ptr @create_artificial_label(i32 noundef %104) #13
  %106 = load ptr, ptr %24, align 8, !tbaa !62
  %107 = icmp eq ptr %106, null
  br i1 %107, label %113, label %108, !prof !93

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.VEC_return_statements_t_base, ptr %106, i64 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !164
  %111 = load i32, ptr %106, align 8, !tbaa !104
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %115, !prof !93

113:                                              ; preds = %108, %101
  %114 = call ptr @vec_heap_o_reserve(ptr noundef %106, i32 noundef 1, i64 noundef 8, i64 noundef 16) #13
  store ptr %114, ptr %24, align 8, !tbaa !62
  br label %115

115:                                              ; preds = %113, %108
  %116 = load ptr, ptr %24, align 8, !tbaa !62
  %117 = load i32, ptr %116, align 8, !tbaa !104
  %118 = add i32 %117, 1
  store i32 %118, ptr %116, align 8, !tbaa !104
  %119 = zext i32 %117 to i64
  %120 = getelementptr inbounds %struct.VEC_return_statements_t_base, ptr %116, i64 0, i32 2, i64 %119
  store ptr %105, ptr %120, align 8, !tbaa.struct !98
  %121 = getelementptr inbounds i8, ptr %120, i64 8
  store ptr %44, ptr %121, align 8, !tbaa.struct !99
  br label %122

122:                                              ; preds = %98, %115
  %123 = phi ptr [ %105, %115 ], [ %61, %98 ]
  %124 = call ptr @gimple_build_goto(ptr noundef %123) #13
  %125 = getelementptr inbounds %struct.gimple_statement_base, ptr %44, i64 0, i32 2
  %126 = load i32, ptr %125, align 8, !tbaa !73
  %127 = getelementptr inbounds %struct.gimple_statement_base, ptr %124, i64 0, i32 2
  store i32 %126, ptr %127, align 8, !tbaa !73
  %128 = getelementptr inbounds %struct.gimple_statement_base, ptr %44, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !73
  %130 = getelementptr inbounds %struct.gimple_statement_base, ptr %124, i64 0, i32 5
  store ptr %129, ptr %130, align 8, !tbaa !73
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %124, i32 noundef 1) #13
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 0) #13
  store i8 1, ptr %23, align 8, !tbaa !155
  br label %293

131:                                              ; preds = %27
  %132 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  %133 = getelementptr inbounds %struct.gimple_statement_try, ptr %29, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !73
  call fastcc void @lower_sequence(ptr noundef %134, ptr noundef nonnull %1)
  %135 = load i8, ptr %132, align 8, !tbaa !155
  store i8 0, ptr %132, align 8, !tbaa !155
  %136 = getelementptr inbounds %struct.gimple_statement_try, ptr %29, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !73
  call fastcc void @lower_sequence(ptr noundef %137, ptr noundef nonnull %1)
  %138 = load i32, ptr %29, align 8
  %139 = and i32 %138, 196608
  %140 = icmp eq i32 %139, 131072
  br i1 %140, label %141, label %289

141:                                              ; preds = %131
  %142 = load i8, ptr %132, align 8, !tbaa !155
  %143 = or i8 %142, %135
  store i8 %143, ptr %132, align 8, !tbaa !155
  %144 = load ptr, ptr %3, align 8, !tbaa !156
  %145 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %144, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !137
  store ptr %146, ptr %3, align 8, !tbaa !156
  br label %293

147:                                              ; preds = %27
  %148 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  store i8 0, ptr %148, align 8, !tbaa !155
  %149 = getelementptr inbounds %struct.gimple_statement_catch, ptr %29, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !73
  call fastcc void @lower_sequence(ptr noundef %150, ptr noundef nonnull %1)
  br label %289

151:                                              ; preds = %27
  %152 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  store i8 0, ptr %152, align 8, !tbaa !155
  %153 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %29, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !73
  call fastcc void @lower_sequence(ptr noundef %154, ptr noundef nonnull %1)
  br label %289

155:                                              ; preds = %27
  %156 = add nsw i32 %33, -10
  %157 = icmp ult i32 %156, -9
  br i1 %157, label %171, label %158, !prof !165

158:                                              ; preds = %155
  %159 = zext nneg i32 %33 to i64
  %160 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !77
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %162
  %164 = load i64, ptr %163, align 8, !tbaa !108
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %167, !prof !165

166:                                              ; preds = %158
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %167

167:                                              ; preds = %166, %158
  %168 = getelementptr inbounds i8, ptr %29, i64 %164
  %169 = getelementptr inbounds ptr, ptr %168, i64 1
  %170 = load ptr, ptr %169, align 8, !tbaa !62
  br label %171

171:                                              ; preds = %167, %155
  %172 = phi ptr [ %170, %167 ], [ null, %155 ]
  %173 = load i64, ptr %172, align 8
  %174 = and i64 %173, 65535
  %175 = icmp eq i64 %174, 121
  br i1 %175, label %176, label %179, !prof !166

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.tree_exp, ptr %172, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !73
  br label %179

179:                                              ; preds = %171, %176
  %180 = phi ptr [ %178, %176 ], [ null, %171 ]
  %181 = icmp eq ptr %180, null
  br i1 %181, label %289, label %182, !prof !165

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.tree_function_decl, ptr %180, i64 0, i32 5
  %184 = load i32, ptr %183, align 8
  %185 = and i32 %184, 8191
  %186 = icmp eq i32 %185, 6650
  br i1 %186, label %187, label %274, !prof !165

187:                                              ; preds = %182
  %188 = load ptr, ptr %3, align 8
  %189 = load ptr, ptr %188, align 8, !tbaa !88
  %190 = getelementptr inbounds %struct.gimple_statement_base, ptr %189, i64 0, i32 2
  %191 = load i32, ptr %190, align 8, !tbaa !73
  %192 = call ptr @create_artificial_label(i32 noundef %191) #13
  %193 = call ptr @create_artificial_label(i32 noundef %191) #13
  %194 = load i64, ptr %193, align 8
  %195 = or i64 %194, 65536
  store i64 %195, ptr %193, align 8
  %196 = load i32, ptr %189, align 8
  %197 = and i32 %196, 255
  %198 = add nsw i32 %197, -10
  %199 = icmp ult i32 %198, -9
  br i1 %199, label %212, label %200

200:                                              ; preds = %187
  %201 = zext nneg i32 %197 to i64
  %202 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !77
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %204
  %206 = load i64, ptr %205, align 8, !tbaa !108
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %209

209:                                              ; preds = %208, %200
  %210 = getelementptr inbounds i8, ptr %189, i64 %206
  %211 = load ptr, ptr %210, align 8, !tbaa !62
  br label %212

212:                                              ; preds = %209, %187
  %213 = phi ptr [ %211, %209 ], [ null, %187 ]
  %214 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %215 = call ptr @build_addr(ptr noundef nonnull %193, ptr noundef %214) #13
  %216 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 523), align 8, !tbaa !62
  %217 = load i32, ptr %189, align 8
  %218 = and i32 %217, 255
  %219 = add nsw i32 %218, -10
  %220 = icmp ult i32 %219, -9
  br i1 %220, label %234, label %221

221:                                              ; preds = %212
  %222 = zext nneg i32 %218 to i64
  %223 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !77
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %225
  %227 = load i64, ptr %226, align 8, !tbaa !108
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %221
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %230

230:                                              ; preds = %229, %221
  %231 = getelementptr inbounds i8, ptr %189, i64 %227
  %232 = getelementptr inbounds ptr, ptr %231, i64 3
  %233 = load ptr, ptr %232, align 8, !tbaa !62
  br label %234

234:                                              ; preds = %230, %212
  %235 = phi ptr [ %233, %230 ], [ null, %212 ]
  %236 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %216, i32 noundef 2, ptr noundef %235, ptr noundef %215) #13
  %237 = getelementptr inbounds %struct.gimple_statement_base, ptr %236, i64 0, i32 2
  store i32 %191, ptr %237, align 8, !tbaa !73
  %238 = getelementptr inbounds %struct.gimple_statement_base, ptr %189, i64 0, i32 5
  %239 = load ptr, ptr %238, align 8, !tbaa !73
  %240 = getelementptr inbounds %struct.gimple_statement_base, ptr %236, i64 0, i32 5
  store ptr %239, ptr %240, align 8, !tbaa !73
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %236, i32 noundef 1) #13
  %241 = icmp eq ptr %213, null
  br i1 %241, label %251, label %242

242:                                              ; preds = %234
  %243 = getelementptr inbounds %struct.tree_common, ptr %213, i64 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !73
  %245 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !62
  %246 = call ptr @fold_convert_loc(i32 noundef %191, ptr noundef %244, ptr noundef %245) #13
  %247 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %213, ptr noundef %246) #13
  %248 = getelementptr inbounds %struct.gimple_statement_base, ptr %247, i64 0, i32 2
  store i32 %191, ptr %248, align 8, !tbaa !73
  %249 = load ptr, ptr %238, align 8, !tbaa !73
  %250 = getelementptr inbounds %struct.gimple_statement_base, ptr %247, i64 0, i32 5
  store ptr %249, ptr %250, align 8, !tbaa !73
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %247, i32 noundef 1) #13
  br label %251

251:                                              ; preds = %242, %234
  %252 = call ptr @gimple_build_goto(ptr noundef %192) #13
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %252, i32 noundef 1) #13
  %253 = call ptr @gimple_build_label(ptr noundef nonnull %193) #13
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %253, i32 noundef 1) #13
  %254 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %255 = call ptr @build_addr(ptr noundef nonnull %193, ptr noundef %254) #13
  %256 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 525), align 8, !tbaa !62
  %257 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %256, i32 noundef 1, ptr noundef %255) #13
  %258 = getelementptr inbounds %struct.gimple_statement_base, ptr %257, i64 0, i32 2
  store i32 %191, ptr %258, align 8, !tbaa !73
  %259 = load ptr, ptr %238, align 8, !tbaa !73
  %260 = getelementptr inbounds %struct.gimple_statement_base, ptr %257, i64 0, i32 5
  store ptr %259, ptr %260, align 8, !tbaa !73
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %257, i32 noundef 1) #13
  br i1 %241, label %270, label %261

261:                                              ; preds = %251
  %262 = getelementptr inbounds %struct.tree_common, ptr %213, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !73
  %264 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !62
  %265 = call ptr @fold_convert_loc(i32 noundef %191, ptr noundef %263, ptr noundef %264) #13
  %266 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %213, ptr noundef %265) #13
  %267 = getelementptr inbounds %struct.gimple_statement_base, ptr %266, i64 0, i32 2
  store i32 %191, ptr %267, align 8, !tbaa !73
  %268 = load ptr, ptr %238, align 8, !tbaa !73
  %269 = getelementptr inbounds %struct.gimple_statement_base, ptr %266, i64 0, i32 5
  store ptr %268, ptr %269, align 8, !tbaa !73
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %266, i32 noundef 1) #13
  br label %270

270:                                              ; preds = %251, %261
  %271 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  %272 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 3
  %273 = call ptr @gimple_build_label(ptr noundef %192) #13
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %273, i32 noundef 1) #13
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 0) #13
  store i8 0, ptr %271, align 8, !tbaa !155
  store i8 1, ptr %272, align 1, !tbaa !114
  br label %293

274:                                              ; preds = %182
  %275 = call i32 @flags_from_decl_or_type(ptr noundef nonnull %180) #13
  %276 = and i32 %275, 8
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %289, label %278, !prof !167

278:                                              ; preds = %274
  store i8 1, ptr %22, align 8, !tbaa !155
  %279 = load ptr, ptr %3, align 8, !tbaa !156
  %280 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %279, i64 0, i32 2
  %281 = load ptr, ptr %280, align 8, !tbaa !137
  store ptr %281, ptr %3, align 8, !tbaa !156
  br label %293

282:                                              ; preds = %27, %27
  %283 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  store i8 0, ptr %283, align 8, !tbaa !155
  %284 = load ptr, ptr %28, align 8, !tbaa !88
  %285 = getelementptr inbounds %struct.gimple_statement_omp, ptr %284, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !73
  call fastcc void @lower_sequence(ptr noundef %286, ptr noundef nonnull %1)
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %284, i32 noundef 1) #13
  %287 = load ptr, ptr %285, align 8, !tbaa !73
  call void @gsi_insert_seq_before(ptr noundef nonnull %3, ptr noundef %287, i32 noundef 1) #13
  store ptr null, ptr %285, align 8, !tbaa !73
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 0) #13
  store i8 0, ptr %283, align 8, !tbaa !155
  br label %293

288:                                              ; preds = %27
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 442, ptr noundef nonnull @.str.2) #13
  br label %289

289:                                              ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %288, %274, %179, %151, %147, %131, %27
  store i8 0, ptr %26, align 8, !tbaa !155
  %290 = load ptr, ptr %3, align 8, !tbaa !156
  %291 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %290, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8, !tbaa !137
  store ptr %292, ptr %3, align 8, !tbaa !156
  br label %293

293:                                              ; preds = %35, %36, %42, %122, %141, %270, %278, %282, %289
  %294 = load ptr, ptr %3, align 8
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %27, !prof !168, !llvm.loop !169

296:                                              ; preds = %293, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @flags_from_decl_or_type(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!60}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!35 = !{ptr @lower_function_body, ptr @gimple_body, i64 40}
!36 = !{ptr @lower_function_body, ptr @vec_heap_o_reserve_exact, i64 40}
!37 = !{ptr @lower_function_body, ptr @gimple_seq_add_stmt, i64 40}
!38 = !{ptr @lower_function_body, ptr @lower_gimple_bind, i64 40}
!39 = !{ptr @lower_function_body, ptr @gimple_set_body, i64 40}
!40 = !{ptr @lower_function_body, ptr @gimple_stmt_may_fallthru, i64 40}
!41 = !{ptr @lower_function_body, ptr @gimple_build_label, i64 40}
!42 = !{ptr @lower_function_body, ptr @gsi_insert_after, i64 80}
!43 = !{ptr @lower_function_body, ptr @blocks_nreverse, i64 40}
!44 = !{ptr @lower_function_body, ptr @clear_block_marks, i64 40}
!45 = !{ptr @lower_function_body, ptr @free, i64 40}
!46 = !{ptr @gimple_check_call_args, ptr @fold_convertible_p, i64 41}
!47 = !{ptr @block_may_fallthru, ptr @expr_last, i64 37943}
!48 = !{ptr @block_may_fallthru, ptr @block_may_fallthru, i64 6}
!49 = !{ptr @gimple_seq_may_fallthru, ptr @gimple_stmt_may_fallthru, i64 2932}
!50 = !{ptr @record_vars, ptr @tree_cons_stat, i64 110027}
!51 = !{ptr @lower_gimple_bind, ptr @tree_cons_stat, i64 2778}
!52 = !{ptr @lower_gimple_bind, ptr @lower_sequence, i64 40}
!53 = !{ptr @lower_gimple_bind, ptr @gsi_insert_seq_before, i64 40}
!54 = !{ptr @lower_gimple_bind, ptr @gsi_remove, i64 40}
!55 = !{ptr @lower_sequence, ptr @create_artificial_label, i64 40}
!56 = !{ptr @lower_sequence, ptr @gimple_build_goto, i64 43508}
!57 = !{ptr @lower_sequence, ptr @gsi_insert_before, i64 43508}
!58 = !{ptr @lower_sequence, ptr @gsi_remove, i64 43508}
!59 = !{ptr @lower_sequence, ptr @flags_from_decl_or_type, i64 69244}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = !{!"function_entry_count", i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"any pointer", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !{!67, !63, i64 8}
!67 = !{!"_IO_FILE", !68, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !68, i64 112, !68, i64 116, !69, i64 120, !70, i64 128, !64, i64 130, !64, i64 131, !63, i64 136, !69, i64 144, !63, i64 152, !63, i64 160, !63, i64 168, !63, i64 176, !69, i64 184, !68, i64 192, !64, i64 196}
!68 = !{!"int", !64, i64 0}
!69 = !{!"long", !64, i64 0}
!70 = !{!"short", !64, i64 0}
!71 = !{!67, !63, i64 16}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{!64, !64, i64 0}
!74 = !{!67, !63, i64 40}
!75 = !{!67, !63, i64 48}
!76 = !{!67, !68, i64 0}
!77 = !{!68, !68, i64 0}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!"function_entry_count", i64 40}
!82 = !{!"gimple-low.c;lower_function_body"}
!83 = !{!"branch_weights", i32 40, i32 0}
!84 = !{!85, !63, i64 0}
!85 = !{!"gimple_seq_d", !63, i64 0, !63, i64 8, !63, i64 16}
!86 = !{!85, !63, i64 8}
!87 = !{}
!88 = !{!89, !63, i64 0}
!89 = !{!"gimple_seq_node_d", !63, i64 0, !63, i64 8, !63, i64 16}
!90 = !{!91, !63, i64 0}
!91 = !{!"lower_data", !63, i64 0, !63, i64 8, !64, i64 16, !64, i64 17}
!92 = !{!91, !63, i64 8}
!93 = !{!"branch_weights", i32 0, i32 40}
!94 = !{!95}
!95 = distinct !{!95, !96, !"gsi_start: argument 0"}
!96 = distinct !{!96, !"gsi_start"}
!97 = !{i64 0, i64 8, !62, i64 8, i64 8, !62, i64 16, i64 8, !62}
!98 = !{i64 0, i64 8, !62, i64 8, i64 8, !62}
!99 = !{i64 0, i64 8, !62}
!100 = !{!101}
!101 = distinct !{!101, !102, !"gsi_last: argument 0"}
!102 = distinct !{!102, !"gsi_last"}
!103 = !{i8 0, i8 2}
!104 = !{!105, !68, i64 0}
!105 = !{!"VEC_return_statements_t_base", !68, i64 0, !68, i64 4, !64, i64 8}
!106 = !{!107, !63, i64 8}
!107 = !{!"return_statements_t", !63, i64 0, !63, i64 8}
!108 = !{!69, !69, i64 0}
!109 = !{!110, !68, i64 116}
!110 = !{!"function", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !68, i64 104, !68, i64 108, !68, i64 112, !68, i64 116, !68, i64 120, !68, i64 124, !63, i64 128, !68, i64 136, !68, i64 137, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139}
!111 = !{!"branch_weights", i32 0, i32 80}
!112 = !{!"branch_weights", i32 40, i32 40}
!113 = distinct !{!113, !79, !80}
!114 = !{!91, !64, i64 17}
!115 = !{!"function_entry_count", i64 41}
!116 = !{!"branch_weights", i32 0, i32 41}
!117 = !{!"branch_weights", i32 41, i32 0}
!118 = !{!"branch_weights", i32 1, i32 163}
!119 = !{!"branch_weights", i32 41, i32 41}
!120 = distinct !{!120, !79, !80}
!121 = distinct !{!121, !79, !80}
!122 = !{!"function_entry_count", i64 37937}
!123 = !{!"branch_weights", i32 5, i32 37932}
!124 = !{!"branch_weights", i32 6, i32 0, i32 37712, i32 0, i32 6, i32 0, i32 0, i32 0, i32 213, i32 0, i32 0}
!125 = !{!"branch_weights", i32 6, i32 0}
!126 = !{!127, !63, i64 16}
!127 = !{!"tree_statement_list_node", !63, i64 0, !63, i64 8, !63, i64 16}
!128 = !{!127, !63, i64 8}
!129 = distinct !{!129, !79, !80}
!130 = !{!"branch_weights", i32 0, i32 213}
!131 = !{!"function_entry_count", i64 2972}
!132 = !{!"branch_weights", i32 0, i32 2972}
!133 = !{!"branch_weights", i32 19, i32 40, i32 2913, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!134 = !{!135}
!135 = distinct !{!135, !136, !"gsi_start: argument 0"}
!136 = distinct !{!136, !"gsi_start"}
!137 = !{!89, !63, i64 16}
!138 = distinct !{!138, !79, !80}
!139 = !{!"function_entry_count", i64 2932}
!140 = !{!"branch_weights", i32 0, i32 2932}
!141 = !{!"branch_weights", i32 1624, i32 0}
!142 = !{!"branch_weights", i32 1, i32 1623}
!143 = !{!"branch_weights", i32 112805, i32 0}
!144 = !{!110, !63, i64 72}
!145 = !{!"branch_weights", i32 1623, i32 111182}
!146 = distinct !{!146, !79, !80}
!147 = !{!"function_entry_count", i64 1584}
!148 = !{!"gimple-low.c;lower_gimple_bind"}
!149 = !{!"gimple-low.c;lower_sequence"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"gsi_start: argument 0"}
!152 = distinct !{!152, !"gsi_start"}
!153 = !{!"branch_weights", i32 1, i32 159}
!154 = !{!"branch_weights", i32 0, i32 0, i32 143772, i32 225, i32 38, i32 43508, i32 0, i32 0, i32 0, i32 0, i32 0, i32 188599, i32 0, i32 210565, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69244, i32 0, i32 0}
!155 = !{!91, !64, i64 16}
!156 = !{!157, !63, i64 0}
!157 = !{!"", !63, i64 0, !63, i64 8, !63, i64 16}
!158 = !{!"branch_weights", i32 43508, i32 0}
!159 = !{!"branch_weights", i32 0, i32 43508}
!160 = !{!"branch_weights", i32 43468, i32 40}
!161 = !{!"branch_weights", i32 0, i32 43468}
!162 = !{!"branch_weights", i32 43468, i32 0}
!163 = distinct !{!163, !79, !80}
!164 = !{!105, !68, i64 4}
!165 = !{!"branch_weights", i32 0, i32 69244}
!166 = !{!"branch_weights", i32 69244, i32 0}
!167 = !{!"branch_weights", i32 69183, i32 61}
!168 = !{!"branch_weights", i32 159, i32 2623645}
!169 = distinct !{!169, !79, !80}
