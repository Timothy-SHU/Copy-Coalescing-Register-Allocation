; ModuleID = 'tree-vect-generic.c'
source_filename = "tree-vect-generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"veclower\00", align 1
@pass_lower_vector = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr null, ptr @expand_vector_operations, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 19 } }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"veclower2\00", align 1
@pass_lower_vector_ssa = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr @gate_expand_vector_operations, ptr @expand_vector_operations, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 2077 } }, align 8
@vector_last_type = internal global ptr null, align 8
@vector_inner_type = internal global ptr null, align 8
@gt_ggc_r_gt_tree_vect_generic_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @vector_last_type, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @vector_inner_type, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16
@vector_last_nunits = internal global i32 0, align 4
@gt_pch_rs_gt_tree_vect_generic_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @vector_last_nunits, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"tree-vect-generic.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@flag_trapv = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@flag_tree_vectorize = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !38 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !39
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !39
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !39
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #13
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !39
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !39
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !38 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #13
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !38 {
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
  br i1 %23, label %7, label %24, !llvm.loop !55

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal noundef i32 @expand_vector_operations() #9 !prof !58 !PGOFuncName !59 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #13
  %2 = load ptr, ptr @cfun, align 8, !tbaa !39
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %799, label %11, !prof !67

11:                                               ; preds = %0
  %12 = getelementptr inbounds i8, ptr %1, i64 8
  %13 = getelementptr inbounds i8, ptr %1, i64 16
  br label %23

14:                                               ; preds = %794, %40
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = load ptr, ptr @cfun, align 8, !tbaa !39
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = icmp eq ptr %16, %21
  br i1 %22, label %799, label %23, !prof !68, !llvm.loop !69

23:                                               ; preds = %11, %14
  %24 = phi ptr [ %7, %11 ], [ %16, %14 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !70, !noalias !71
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35, !prof !74

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !50, !noalias !71
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !75

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !76, !noalias !71
  br label %35

35:                                               ; preds = %33, %29, %23
  %36 = phi ptr [ %34, %33 ], [ null, %29 ], [ null, %23 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !75

38:                                               ; preds = %35
  %39 = load ptr, ptr %36, align 8, !tbaa !78, !noalias !71
  br label %40

40:                                               ; preds = %35, %38
  %41 = phi ptr [ %39, %38 ], [ null, %35 ]
  store ptr %41, ptr %1, align 8, !tbaa.struct !80
  store ptr %36, ptr %12, align 8, !tbaa.struct !81
  store ptr %24, ptr %13, align 8, !tbaa.struct !82
  %42 = icmp eq ptr %41, null
  br i1 %42, label %14, label %43, !prof !83

43:                                               ; preds = %40, %794
  %44 = phi ptr [ %797, %794 ], [ %41, %40 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !84
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 255
  %48 = icmp eq i32 %47, 6
  br i1 %48, label %49, label %783, !prof !86

49:                                               ; preds = %43
  %50 = lshr i32 %46, 16
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !50
  %54 = icmp eq i8 %53, 3
  br i1 %54, label %55, label %71, !prof !87

55:                                               ; preds = %49
  %56 = zext nneg i32 %47 to i64
  %57 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !54
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !88
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64, !prof !89

63:                                               ; preds = %55
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %64

64:                                               ; preds = %63, %55
  %65 = getelementptr inbounds i8, ptr %45, i64 %61
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !39
  %68 = load i64, ptr %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = and i32 %69, 65535
  br label %71

71:                                               ; preds = %64, %49
  %72 = phi i32 [ %70, %64 ], [ %50, %49 ]
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !50
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %76, -3
  %78 = icmp ult i32 %77, -2
  br i1 %78, label %783, label %79, !prof !87

79:                                               ; preds = %71
  %80 = load i32, ptr %45, align 8
  %81 = and i32 %80, 255
  %82 = add nsw i32 %81, -10
  %83 = icmp ult i32 %82, -9
  br i1 %83, label %96, label %84, !prof !90

84:                                               ; preds = %79
  %85 = zext nneg i32 %81 to i64
  %86 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !54
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !88
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93, !prof !90

92:                                               ; preds = %84
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %93

93:                                               ; preds = %92, %84
  %94 = getelementptr inbounds i8, ptr %45, i64 %90
  %95 = load ptr, ptr %94, align 8, !tbaa !39
  br label %96

96:                                               ; preds = %93, %79
  %97 = phi ptr [ %95, %93 ], [ null, %79 ]
  %98 = load i32, ptr %45, align 8
  %99 = and i32 %98, 255
  %100 = add nsw i32 %99, -10
  %101 = icmp ult i32 %100, -9
  br i1 %101, label %115, label %102, !prof !90

102:                                              ; preds = %96
  %103 = zext nneg i32 %99 to i64
  %104 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !54
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !88
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111, !prof !90

110:                                              ; preds = %102
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %111

111:                                              ; preds = %110, %102
  %112 = getelementptr inbounds i8, ptr %45, i64 %108
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !39
  br label %115

115:                                              ; preds = %111, %96
  %116 = phi ptr [ %114, %111 ], [ null, %96 ]
  %117 = load i32, ptr %45, align 8
  %118 = trunc i32 %117 to i8
  switch i8 %118, label %189 [
    i8 8, label %119
    i8 6, label %140
    i8 1, label %190
  ], !prof !91

119:                                              ; preds = %115
  %120 = and i32 %117, 255
  %121 = add nsw i32 %120, -1
  %122 = icmp ult i32 %121, 9
  call void @llvm.assume(i1 %122)
  %123 = zext nneg i32 %120 to i64
  %124 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !54
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !88
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %131

131:                                              ; preds = %130, %119
  %132 = getelementptr inbounds i8, ptr %45, i64 %128
  %133 = getelementptr inbounds ptr, ptr %132, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !39
  %135 = getelementptr inbounds %struct.tree_common, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !50
  %137 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !50
  %139 = getelementptr inbounds %struct.tree_common, ptr %138, i64 0, i32 2
  br label %190

140:                                              ; preds = %115
  %141 = lshr i32 %117, 16
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !50
  %145 = icmp eq i8 %144, 3
  br i1 %145, label %146, label %165, !prof !90

146:                                              ; preds = %140
  %147 = and i32 %117, 255
  %148 = add nsw i32 %147, -1
  %149 = icmp ult i32 %148, 9
  call void @llvm.assume(i1 %149)
  %150 = zext nneg i32 %147 to i64
  %151 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !54
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %153
  %155 = load i64, ptr %154, align 8, !tbaa !88
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %146
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %158

158:                                              ; preds = %157, %146
  %159 = getelementptr inbounds i8, ptr %45, i64 %155
  %160 = getelementptr inbounds ptr, ptr %159, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !39
  %162 = load i64, ptr %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = and i32 %163, 65535
  br label %165

165:                                              ; preds = %158, %140
  %166 = phi i32 [ %164, %158 ], [ %141, %140 ]
  %167 = icmp eq i32 %166, 66
  br i1 %167, label %168, label %186, !prof !92

168:                                              ; preds = %165
  %169 = load i32, ptr %45, align 8
  %170 = and i32 %169, 255
  %171 = add nsw i32 %170, -1
  %172 = icmp ult i32 %171, 9
  call void @llvm.assume(i1 %172)
  %173 = zext nneg i32 %170 to i64
  %174 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !54
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !88
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181, !prof !93

180:                                              ; preds = %168
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %181

181:                                              ; preds = %180, %168
  %182 = getelementptr inbounds i8, ptr %45, i64 %178
  %183 = getelementptr inbounds ptr, ptr %182, i64 1
  %184 = load ptr, ptr %183, align 8, !tbaa !39
  %185 = getelementptr inbounds %struct.tree_common, ptr %184, i64 0, i32 2
  br label %190

186:                                              ; preds = %165
  %187 = call ptr @gimple_get_lhs(ptr noundef nonnull %45) #13
  %188 = getelementptr inbounds %struct.tree_common, ptr %187, i64 0, i32 2
  br label %190

189:                                              ; preds = %115
  br label %190

190:                                              ; preds = %189, %186, %181, %131, %115
  %191 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %189 ], [ %139, %131 ], [ %185, %181 ], [ %188, %186 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %115 ]
  %192 = load ptr, ptr %191, align 8, !tbaa !50
  %193 = icmp eq i8 %75, 1
  br i1 %193, label %194, label %216, !prof !94

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.gimple_statement_base, ptr %45, i64 0, i32 3
  %196 = load i32, ptr %195, align 4, !tbaa !50
  %197 = icmp ugt i32 %196, 2
  br i1 %197, label %198, label %216, !prof !95

198:                                              ; preds = %194
  %199 = load i32, ptr %45, align 8
  %200 = and i32 %199, 255
  %201 = add nsw i32 %200, -10
  %202 = icmp ult i32 %201, -9
  br i1 %202, label %216, label %203, !prof !96

203:                                              ; preds = %198
  %204 = zext nneg i32 %200 to i64
  %205 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !54
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %207
  %209 = load i64, ptr %208, align 8, !tbaa !88
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %212, !prof !96

211:                                              ; preds = %203
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %212

212:                                              ; preds = %211, %203
  %213 = getelementptr inbounds i8, ptr %45, i64 %209
  %214 = getelementptr inbounds ptr, ptr %213, i64 2
  %215 = load ptr, ptr %214, align 8, !tbaa !39
  br label %216

216:                                              ; preds = %212, %198, %194, %190
  %217 = phi ptr [ null, %190 ], [ null, %194 ], [ %215, %212 ], [ null, %198 ]
  %218 = load i64, ptr %192, align 8
  %219 = and i64 %218, 65535
  %220 = icmp eq i64 %219, 14
  br i1 %220, label %221, label %783, !prof !90

221:                                              ; preds = %216
  %222 = add nsw i32 %72, -77
  %223 = icmp ult i32 %222, 2
  %224 = and i32 %72, 65533
  %225 = icmp eq i32 %224, 116
  %226 = or i1 %225, %223
  br i1 %226, label %783, label %227

227:                                              ; preds = %221
  %228 = icmp eq i32 %72, 113
  br i1 %228, label %229, label %230

229:                                              ; preds = %227
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 426, ptr noundef nonnull @.str.3) #13
  br label %230

230:                                              ; preds = %229, %227
  %231 = and i32 %72, 65534
  %232 = icmp eq i32 %231, 176
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.tree_common, ptr %116, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !50
  br label %236

236:                                              ; preds = %233, %230
  %237 = phi ptr [ %235, %233 ], [ %192, %230 ]
  %238 = add nsw i32 %72, -83
  %239 = icmp ult i32 %238, 4
  br i1 %239, label %240, label %369

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.tree_common, ptr %217, i64 0, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !50
  %243 = load i64, ptr %242, align 8
  %244 = and i64 %243, 65535
  %245 = icmp eq i64 %244, 14
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = call i32 @vector_type_mode(ptr noundef nonnull %242) #13
  br label %253

248:                                              ; preds = %240
  %249 = getelementptr inbounds %struct.tree_type, ptr %242, i64 0, i32 6
  %250 = load i32, ptr %249, align 4
  %251 = lshr i32 %250, 16
  %252 = and i32 %251, 255
  br label %253

253:                                              ; preds = %248, %246
  %254 = phi i32 [ %247, %246 ], [ %252, %248 ]
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !50
  %258 = icmp eq i8 %257, 12
  br i1 %258, label %369, label %259

259:                                              ; preds = %253
  %260 = load ptr, ptr %241, align 8, !tbaa !50
  %261 = load i64, ptr %260, align 8
  %262 = and i64 %261, 65535
  %263 = icmp eq i64 %262, 14
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = call i32 @vector_type_mode(ptr noundef nonnull %260) #13
  br label %271

266:                                              ; preds = %259
  %267 = getelementptr inbounds %struct.tree_type, ptr %260, i64 0, i32 6
  %268 = load i32, ptr %267, align 4
  %269 = lshr i32 %268, 16
  %270 = and i32 %269, 255
  br label %271

271:                                              ; preds = %266, %264
  %272 = phi i32 [ %265, %264 ], [ %270, %266 ]
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !50
  %276 = icmp eq i8 %275, 17
  br i1 %276, label %369, label %277

277:                                              ; preds = %271
  %278 = load ptr, ptr %241, align 8, !tbaa !50
  %279 = load i64, ptr %278, align 8
  %280 = and i64 %279, 65535
  %281 = icmp eq i64 %280, 14
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = call i32 @vector_type_mode(ptr noundef nonnull %278) #13
  br label %289

284:                                              ; preds = %277
  %285 = getelementptr inbounds %struct.tree_type, ptr %278, i64 0, i32 6
  %286 = load i32, ptr %285, align 4
  %287 = lshr i32 %286, 16
  %288 = and i32 %287, 255
  br label %289

289:                                              ; preds = %284, %282
  %290 = phi i32 [ %283, %282 ], [ %288, %284 ]
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %291
  %293 = load i8, ptr %292, align 1, !tbaa !50
  %294 = icmp eq i8 %293, 13
  br i1 %294, label %369, label %295

295:                                              ; preds = %289
  %296 = load ptr, ptr %241, align 8, !tbaa !50
  %297 = load i64, ptr %296, align 8
  %298 = and i64 %297, 65535
  %299 = icmp eq i64 %298, 14
  br i1 %299, label %300, label %302

300:                                              ; preds = %295
  %301 = call i32 @vector_type_mode(ptr noundef nonnull %296) #13
  br label %307

302:                                              ; preds = %295
  %303 = getelementptr inbounds %struct.tree_type, ptr %296, i64 0, i32 6
  %304 = load i32, ptr %303, align 4
  %305 = lshr i32 %304, 16
  %306 = and i32 %305, 255
  br label %307

307:                                              ; preds = %302, %300
  %308 = phi i32 [ %301, %300 ], [ %306, %302 ]
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %309
  %311 = load i8, ptr %310, align 1, !tbaa !50
  %312 = icmp eq i8 %311, 14
  br i1 %312, label %369, label %313

313:                                              ; preds = %307
  %314 = load ptr, ptr %241, align 8, !tbaa !50
  %315 = load i64, ptr %314, align 8
  %316 = and i64 %315, 65535
  %317 = icmp eq i64 %316, 14
  br i1 %317, label %318, label %320

318:                                              ; preds = %313
  %319 = call i32 @vector_type_mode(ptr noundef nonnull %314) #13
  br label %325

320:                                              ; preds = %313
  %321 = getelementptr inbounds %struct.tree_type, ptr %314, i64 0, i32 6
  %322 = load i32, ptr %321, align 4
  %323 = lshr i32 %322, 16
  %324 = and i32 %323, 255
  br label %325

325:                                              ; preds = %320, %318
  %326 = phi i32 [ %319, %318 ], [ %324, %320 ]
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !50
  %330 = icmp eq i8 %329, 15
  br i1 %330, label %369, label %331

331:                                              ; preds = %325
  %332 = load ptr, ptr %241, align 8, !tbaa !50
  %333 = load i64, ptr %332, align 8
  %334 = and i64 %333, 65535
  %335 = icmp eq i64 %334, 14
  br i1 %335, label %336, label %338

336:                                              ; preds = %331
  %337 = call i32 @vector_type_mode(ptr noundef nonnull %332) #13
  br label %343

338:                                              ; preds = %331
  %339 = getelementptr inbounds %struct.tree_type, ptr %332, i64 0, i32 6
  %340 = load i32, ptr %339, align 4
  %341 = lshr i32 %340, 16
  %342 = and i32 %341, 255
  br label %343

343:                                              ; preds = %338, %336
  %344 = phi i32 [ %337, %336 ], [ %342, %338 ]
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !50
  %348 = icmp eq i8 %347, 16
  br i1 %348, label %369, label %349

349:                                              ; preds = %343
  %350 = call ptr @optab_for_tree_code(i32 noundef %72, ptr noundef %237, i32 noundef 1) #13
  %351 = icmp eq ptr %350, null
  br i1 %351, label %369, label %352

352:                                              ; preds = %349
  %353 = load i64, ptr %237, align 8
  %354 = and i64 %353, 65535
  %355 = icmp eq i64 %354, 14
  br i1 %355, label %356, label %358

356:                                              ; preds = %352
  %357 = call i32 @vector_type_mode(ptr noundef nonnull %237) #13
  br label %363

358:                                              ; preds = %352
  %359 = getelementptr inbounds %struct.tree_type, ptr %237, i64 0, i32 6
  %360 = load i32, ptr %359, align 4
  %361 = lshr i32 %360, 16
  %362 = and i32 %361, 255
  br label %363

363:                                              ; preds = %358, %356
  %364 = phi i32 [ %357, %356 ], [ %362, %358 ]
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.optab_d, ptr %350, i64 0, i32 4, i64 %365
  %367 = load i32, ptr %366, align 4, !tbaa !97
  %368 = icmp eq i32 %367, 2956
  br i1 %368, label %369, label %372

369:                                              ; preds = %236, %349, %363, %253, %271, %289, %307, %325, %343
  %370 = phi i32 [ 2, %343 ], [ 2, %325 ], [ 2, %307 ], [ 2, %289 ], [ 2, %271 ], [ 2, %253 ], [ 2, %363 ], [ 2, %349 ], [ 0, %236 ]
  %371 = call ptr @optab_for_tree_code(i32 noundef %72, ptr noundef %237, i32 noundef %370) #13
  br label %372

372:                                              ; preds = %369, %363
  %373 = phi ptr [ %350, %363 ], [ %371, %369 ]
  %374 = and i32 %72, 65531
  %375 = icmp eq i32 %374, 168
  %376 = add nsw i32 %72, -173
  %377 = icmp ult i32 %376, 3
  %378 = or i1 %375, %377
  %379 = icmp eq i32 %231, 178
  %380 = or i1 %379, %378
  %381 = icmp eq i32 %72, 180
  %382 = or i1 %381, %380
  br i1 %382, label %383, label %386

383:                                              ; preds = %372
  %384 = getelementptr inbounds %struct.tree_common, ptr %116, i64 0, i32 2
  %385 = load ptr, ptr %384, align 8, !tbaa !50
  br label %386

386:                                              ; preds = %383, %372
  %387 = phi ptr [ %385, %383 ], [ %237, %372 ]
  %388 = icmp eq ptr %373, null
  %389 = icmp eq i32 %72, 79
  %390 = and i1 %389, %388
  br i1 %390, label %391, label %401

391:                                              ; preds = %386
  %392 = getelementptr inbounds %struct.tree_common, ptr %387, i64 0, i32 2
  %393 = load ptr, ptr %392, align 8, !tbaa !50
  %394 = load i64, ptr %393, align 8
  %395 = trunc i64 %394 to i32
  %396 = and i32 %395, 65535
  %397 = add nsw i32 %396, -6
  %398 = icmp ult i32 %397, 3
  br i1 %398, label %399, label %401

399:                                              ; preds = %391
  %400 = call ptr @optab_for_tree_code(i32 noundef 64, ptr noundef %387, i32 noundef 0) #13
  br label %401

401:                                              ; preds = %399, %391, %386
  %402 = phi ptr [ %400, %399 ], [ %373, %386 ], [ null, %391 ]
  %403 = load i64, ptr %387, align 8
  %404 = and i64 %403, 65535
  %405 = icmp eq i64 %404, 14
  br i1 %405, label %406, label %408

406:                                              ; preds = %401
  %407 = call i32 @vector_type_mode(ptr noundef nonnull %387) #13
  br label %413

408:                                              ; preds = %401
  %409 = getelementptr inbounds %struct.tree_type, ptr %387, i64 0, i32 6
  %410 = load i32, ptr %409, align 4
  %411 = lshr i32 %410, 16
  %412 = and i32 %411, 255
  br label %413

413:                                              ; preds = %408, %406
  %414 = phi i32 [ %407, %406 ], [ %412, %408 ]
  %415 = icmp eq i32 %414, 1
  %416 = icmp ne ptr %402, null
  %417 = select i1 %415, i1 %416, i1 false
  br i1 %417, label %418, label %503

418:                                              ; preds = %413
  %419 = getelementptr inbounds %struct.tree_common, ptr %387, i64 0, i32 2
  %420 = load ptr, ptr %419, align 8, !tbaa !50
  %421 = load i64, ptr %420, align 8
  %422 = and i64 %421, 65535
  %423 = icmp eq i64 %422, 14
  br i1 %423, label %424, label %426

424:                                              ; preds = %418
  %425 = call i32 @vector_type_mode(ptr noundef nonnull %420) #13
  br label %431

426:                                              ; preds = %418
  %427 = getelementptr inbounds %struct.tree_type, ptr %420, i64 0, i32 6
  %428 = load i32, ptr %427, align 4
  %429 = lshr i32 %428, 16
  %430 = and i32 %429, 255
  br label %431

431:                                              ; preds = %426, %424
  %432 = phi i32 [ %425, %424 ], [ %430, %426 ]
  %433 = load ptr, ptr %419, align 8, !tbaa !50
  %434 = load i64, ptr %433, align 8
  %435 = trunc i64 %434 to i32
  %436 = lshr i32 %435, 31
  %437 = zext i32 %432 to i64
  %438 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %437
  %439 = load i8, ptr %438, align 1, !tbaa !50
  switch i8 %439, label %444 [
    i8 8, label %445
    i8 9, label %445
    i8 4, label %440
    i8 5, label %441
    i8 6, label %442
    i8 7, label %443
  ]

440:                                              ; preds = %431
  br label %445

441:                                              ; preds = %431
  br label %445

442:                                              ; preds = %431
  br label %445

443:                                              ; preds = %431
  br label %445

444:                                              ; preds = %431
  br label %445

445:                                              ; preds = %431, %444, %443, %442, %441, %440, %431
  %446 = phi i1 [ true, %440 ], [ true, %441 ], [ true, %442 ], [ true, %443 ], [ false, %444 ], [ false, %431 ], [ false, %431 ]
  %447 = phi i32 [ 0, %440 ], [ 0, %441 ], [ 0, %442 ], [ 0, %443 ], [ 55, %444 ], [ 78, %431 ], [ 78, %431 ]
  br i1 %446, label %475, label %448

448:                                              ; preds = %445, %468
  %449 = phi i32 [ %470, %468 ], [ 0, %445 ]
  %450 = phi i32 [ %473, %468 ], [ %447, %445 ]
  %451 = phi i32 [ %469, %468 ], [ 0, %445 ]
  %452 = zext nneg i32 %450 to i64
  %453 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %452
  %454 = load i8, ptr %453, align 1, !tbaa !50
  %455 = zext i8 %454 to i32
  %456 = icmp eq i32 %432, %455
  br i1 %456, label %457, label %468

457:                                              ; preds = %448
  %458 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %452
  %459 = load i8, ptr %458, align 1, !tbaa !50
  %460 = zext i8 %459 to i32
  %461 = icmp slt i32 %449, %460
  br i1 %461, label %462, label %468

462:                                              ; preds = %457
  %463 = getelementptr inbounds %struct.optab_d, ptr %402, i64 0, i32 4, i64 %452
  %464 = load i32, ptr %463, align 4, !tbaa !97
  %465 = icmp eq i32 %464, 2956
  %466 = select i1 %465, i32 %451, i32 %450
  %467 = select i1 %465, i32 %449, i32 %460
  br label %468

468:                                              ; preds = %462, %457, %448
  %469 = phi i32 [ %451, %457 ], [ %451, %448 ], [ %466, %462 ]
  %470 = phi i32 [ %449, %457 ], [ %449, %448 ], [ %467, %462 ]
  %471 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %452
  %472 = load i8, ptr %471, align 1, !tbaa !50
  %473 = zext i8 %472 to i32
  %474 = icmp eq i8 %472, 0
  br i1 %474, label %475, label %448, !llvm.loop !99

475:                                              ; preds = %468, %445
  %476 = phi i32 [ 0, %445 ], [ %469, %468 ]
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %487, label %478

478:                                              ; preds = %475
  %479 = zext i32 %476 to i64
  %480 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %479
  %481 = load i8, ptr %480, align 1, !tbaa !50
  switch i8 %481, label %482 [
    i8 4, label %483
    i8 13, label %483
    i8 6, label %483
    i8 15, label %483
    i8 5, label %483
    i8 14, label %483
    i8 7, label %483
    i8 16, label %483
  ]

482:                                              ; preds = %478
  br label %483

483:                                              ; preds = %478, %478, %478, %478, %478, %478, %478, %478, %482
  %484 = phi i32 [ 1, %482 ], [ %436, %478 ], [ %436, %478 ], [ %436, %478 ], [ %436, %478 ], [ %436, %478 ], [ %436, %478 ], [ %436, %478 ], [ %436, %478 ]
  %485 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !100
  %486 = call ptr %485(i32 noundef %476, i32 noundef %484) #13
  br label %487

487:                                              ; preds = %483, %475
  %488 = phi ptr [ null, %475 ], [ %486, %483 ]
  %489 = icmp eq ptr %488, null
  br i1 %489, label %503, label %490

490:                                              ; preds = %487
  %491 = getelementptr inbounds %struct.tree_type, ptr %488, i64 0, i32 6
  %492 = load i32, ptr %491, align 4
  %493 = and i32 %492, 1023
  %494 = zext nneg i32 %493 to i64
  %495 = shl nuw i64 1, %494
  %496 = getelementptr inbounds %struct.tree_type, ptr %387, i64 0, i32 6
  %497 = load i32, ptr %496, align 4
  %498 = and i32 %497, 1023
  %499 = zext nneg i32 %498 to i64
  %500 = shl nuw i64 1, %499
  %501 = icmp ult i64 %495, %500
  %502 = select i1 %501, ptr %488, ptr %387
  br label %503

503:                                              ; preds = %490, %487, %413
  %504 = phi ptr [ %387, %413 ], [ %387, %487 ], [ %502, %490 ]
  %505 = icmp eq ptr %504, %387
  br i1 %505, label %506, label %534

506:                                              ; preds = %503
  %507 = load i64, ptr %504, align 8
  %508 = and i64 %507, 65535
  %509 = icmp eq i64 %508, 14
  br i1 %509, label %510, label %512

510:                                              ; preds = %506
  %511 = call i32 @vector_type_mode(ptr noundef nonnull %504) #13
  br label %517

512:                                              ; preds = %506
  %513 = getelementptr inbounds %struct.tree_type, ptr %504, i64 0, i32 6
  %514 = load i32, ptr %513, align 4
  %515 = lshr i32 %514, 16
  %516 = and i32 %515, 255
  br label %517

517:                                              ; preds = %512, %510
  %518 = phi i32 [ %511, %510 ], [ %516, %512 ]
  %519 = zext i32 %518 to i64
  %520 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %519
  %521 = load i8, ptr %520, align 1, !tbaa !50
  switch i8 %521, label %522 [
    i8 12, label %525
    i8 17, label %525
    i8 13, label %525
    i8 14, label %525
    i8 15, label %525
  ]

522:                                              ; preds = %517
  %523 = icmp eq i8 %521, 16
  %524 = select i1 %523, i1 %416, i1 false
  br i1 %524, label %526, label %531

525:                                              ; preds = %517, %517, %517, %517, %517
  br i1 %416, label %526, label %531

526:                                              ; preds = %525, %522
  %527 = sext i32 %518 to i64
  %528 = getelementptr inbounds %struct.optab_d, ptr %402, i64 0, i32 4, i64 %527
  %529 = load i32, ptr %528, align 4, !tbaa !97
  %530 = icmp eq i32 %529, 2956
  br i1 %530, label %531, label %783

531:                                              ; preds = %526, %522, %525
  %532 = getelementptr inbounds %struct.tree_common, ptr %387, i64 0, i32 2
  %533 = load ptr, ptr %532, align 8, !tbaa !50
  br label %534

534:                                              ; preds = %531, %503
  %535 = phi ptr [ %533, %531 ], [ %504, %503 ]
  %536 = add nsw i32 %72, -172
  %537 = icmp ult i32 %536, -2
  br i1 %537, label %539, label %538

538:                                              ; preds = %534
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 511, ptr noundef nonnull @.str.3) #13
  br label %539

539:                                              ; preds = %538, %534
  %540 = load i64, ptr %535, align 8
  %541 = and i64 %540, 65535
  %542 = icmp eq i64 %541, 14
  br i1 %542, label %543, label %545

543:                                              ; preds = %539
  %544 = call i32 @vector_type_mode(ptr noundef nonnull %535) #13
  br label %550

545:                                              ; preds = %539
  %546 = getelementptr inbounds %struct.tree_type, ptr %535, i64 0, i32 6
  %547 = load i32, ptr %546, align 4
  %548 = lshr i32 %547, 16
  %549 = and i32 %548, 255
  br label %550

550:                                              ; preds = %545, %543
  %551 = phi i32 [ %544, %543 ], [ %549, %545 ]
  %552 = zext i32 %551 to i64
  %553 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %552
  %554 = load i8, ptr %553, align 1, !tbaa !50
  %555 = add i8 %554, -12
  %556 = icmp ult i8 %555, 6
  br i1 %556, label %703, label %557

557:                                              ; preds = %550
  %558 = trunc i32 %72 to i16
  switch i16 %558, label %703 [
    i16 63, label %559
    i16 64, label %559
    i16 79, label %610
    i16 89, label %638
    i16 87, label %638
    i16 88, label %638
    i16 90, label %682
  ]

559:                                              ; preds = %557, %557
  %560 = load i64, ptr %387, align 8
  %561 = and i64 %560, 2097152
  %562 = icmp eq i64 %561, 0
  %563 = load i32, ptr @flag_trapv, align 4
  %564 = icmp ne i32 %563, 0
  %565 = select i1 %562, i1 %564, i1 false
  br i1 %565, label %703, label %566

566:                                              ; preds = %559
  %567 = load i32, ptr %45, align 8
  %568 = and i32 %567, 255
  %569 = add nsw i32 %568, -10
  %570 = icmp ult i32 %569, -9
  br i1 %570, label %584, label %571

571:                                              ; preds = %566
  %572 = zext nneg i32 %568 to i64
  %573 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %572
  %574 = load i32, ptr %573, align 4, !tbaa !54
  %575 = zext i32 %574 to i64
  %576 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %575
  %577 = load i64, ptr %576, align 8, !tbaa !88
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %579, label %580

579:                                              ; preds = %571
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %580

580:                                              ; preds = %579, %571
  %581 = getelementptr inbounds i8, ptr %45, i64 %577
  %582 = getelementptr inbounds ptr, ptr %581, i64 1
  %583 = load ptr, ptr %582, align 8, !tbaa !39
  br label %584

584:                                              ; preds = %580, %566
  %585 = phi ptr [ %583, %580 ], [ null, %566 ]
  %586 = getelementptr inbounds %struct.gimple_statement_base, ptr %45, i64 0, i32 3
  %587 = load i32, ptr %586, align 4, !tbaa !50
  %588 = icmp ugt i32 %587, 2
  br i1 %588, label %589, label %607

589:                                              ; preds = %584
  %590 = load i32, ptr %45, align 8
  %591 = and i32 %590, 255
  %592 = add nsw i32 %591, -10
  %593 = icmp ult i32 %592, -9
  br i1 %593, label %607, label %594

594:                                              ; preds = %589
  %595 = zext nneg i32 %591 to i64
  %596 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %595
  %597 = load i32, ptr %596, align 4, !tbaa !54
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %598
  %600 = load i64, ptr %599, align 8, !tbaa !88
  %601 = icmp eq i64 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %594
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %603

603:                                              ; preds = %602, %594
  %604 = getelementptr inbounds i8, ptr %45, i64 %600
  %605 = getelementptr inbounds ptr, ptr %604, i64 2
  %606 = load ptr, ptr %605, align 8, !tbaa !39
  br label %607

607:                                              ; preds = %603, %589, %584
  %608 = phi ptr [ null, %584 ], [ %606, %603 ], [ null, %589 ]
  %609 = call fastcc ptr @expand_vector_addition(ptr noundef nonnull %1, ptr noundef nonnull @do_binop, ptr noundef nonnull @do_plus_minus, ptr noundef nonnull %387, ptr noundef %585, ptr noundef %608, i32 noundef %72)
  br label %768

610:                                              ; preds = %557
  %611 = load i64, ptr %387, align 8
  %612 = and i64 %611, 2097152
  %613 = icmp eq i64 %612, 0
  %614 = load i32, ptr @flag_trapv, align 4
  %615 = icmp ne i32 %614, 0
  %616 = select i1 %613, i1 %615, i1 false
  br i1 %616, label %703, label %617

617:                                              ; preds = %610
  %618 = load i32, ptr %45, align 8
  %619 = and i32 %618, 255
  %620 = add nsw i32 %619, -10
  %621 = icmp ult i32 %620, -9
  br i1 %621, label %635, label %622

622:                                              ; preds = %617
  %623 = zext nneg i32 %619 to i64
  %624 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %623
  %625 = load i32, ptr %624, align 4, !tbaa !54
  %626 = zext i32 %625 to i64
  %627 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %626
  %628 = load i64, ptr %627, align 8, !tbaa !88
  %629 = icmp eq i64 %628, 0
  br i1 %629, label %630, label %631

630:                                              ; preds = %622
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %631

631:                                              ; preds = %630, %622
  %632 = getelementptr inbounds i8, ptr %45, i64 %628
  %633 = getelementptr inbounds ptr, ptr %632, i64 1
  %634 = load ptr, ptr %633, align 8, !tbaa !39
  br label %635

635:                                              ; preds = %631, %617
  %636 = phi ptr [ %634, %631 ], [ null, %617 ]
  %637 = call fastcc ptr @expand_vector_addition(ptr noundef nonnull %1, ptr noundef nonnull @do_unop, ptr noundef nonnull @do_negate, ptr noundef nonnull %387, ptr noundef %636, ptr noundef null, i32 noundef 79)
  br label %768

638:                                              ; preds = %557, %557, %557
  %639 = load i32, ptr %45, align 8
  %640 = and i32 %639, 255
  %641 = add nsw i32 %640, -10
  %642 = icmp ult i32 %641, -9
  br i1 %642, label %656, label %643

643:                                              ; preds = %638
  %644 = zext nneg i32 %640 to i64
  %645 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %644
  %646 = load i32, ptr %645, align 4, !tbaa !54
  %647 = zext i32 %646 to i64
  %648 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %647
  %649 = load i64, ptr %648, align 8, !tbaa !88
  %650 = icmp eq i64 %649, 0
  br i1 %650, label %651, label %652

651:                                              ; preds = %643
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %652

652:                                              ; preds = %651, %643
  %653 = getelementptr inbounds i8, ptr %45, i64 %649
  %654 = getelementptr inbounds ptr, ptr %653, i64 1
  %655 = load ptr, ptr %654, align 8, !tbaa !39
  br label %656

656:                                              ; preds = %652, %638
  %657 = phi ptr [ %655, %652 ], [ null, %638 ]
  %658 = getelementptr inbounds %struct.gimple_statement_base, ptr %45, i64 0, i32 3
  %659 = load i32, ptr %658, align 4, !tbaa !50
  %660 = icmp ugt i32 %659, 2
  br i1 %660, label %661, label %679

661:                                              ; preds = %656
  %662 = load i32, ptr %45, align 8
  %663 = and i32 %662, 255
  %664 = add nsw i32 %663, -10
  %665 = icmp ult i32 %664, -9
  br i1 %665, label %679, label %666

666:                                              ; preds = %661
  %667 = zext nneg i32 %663 to i64
  %668 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %667
  %669 = load i32, ptr %668, align 4, !tbaa !54
  %670 = zext i32 %669 to i64
  %671 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %670
  %672 = load i64, ptr %671, align 8, !tbaa !88
  %673 = icmp eq i64 %672, 0
  br i1 %673, label %674, label %675

674:                                              ; preds = %666
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %675

675:                                              ; preds = %674, %666
  %676 = getelementptr inbounds i8, ptr %45, i64 %672
  %677 = getelementptr inbounds ptr, ptr %676, i64 2
  %678 = load ptr, ptr %677, align 8, !tbaa !39
  br label %679

679:                                              ; preds = %675, %661, %656
  %680 = phi ptr [ null, %656 ], [ %678, %675 ], [ null, %661 ]
  %681 = call fastcc ptr @expand_vector_parallel(ptr noundef nonnull %1, ptr noundef nonnull @do_binop, ptr noundef nonnull %387, ptr noundef %657, ptr noundef %680, i32 noundef %72)
  br label %768

682:                                              ; preds = %557
  %683 = load i32, ptr %45, align 8
  %684 = and i32 %683, 255
  %685 = add nsw i32 %684, -10
  %686 = icmp ult i32 %685, -9
  br i1 %686, label %700, label %687

687:                                              ; preds = %682
  %688 = zext nneg i32 %684 to i64
  %689 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %688
  %690 = load i32, ptr %689, align 4, !tbaa !54
  %691 = zext i32 %690 to i64
  %692 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %691
  %693 = load i64, ptr %692, align 8, !tbaa !88
  %694 = icmp eq i64 %693, 0
  br i1 %694, label %695, label %696

695:                                              ; preds = %687
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %696

696:                                              ; preds = %695, %687
  %697 = getelementptr inbounds i8, ptr %45, i64 %693
  %698 = getelementptr inbounds ptr, ptr %697, i64 1
  %699 = load ptr, ptr %698, align 8, !tbaa !39
  br label %700

700:                                              ; preds = %696, %682
  %701 = phi ptr [ %699, %696 ], [ null, %682 ]
  %702 = call fastcc ptr @expand_vector_parallel(ptr noundef nonnull %1, ptr noundef nonnull @do_unop, ptr noundef nonnull %387, ptr noundef %701, ptr noundef null, i32 noundef 90)
  br label %768

703:                                              ; preds = %559, %610, %557, %550
  %704 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %73
  %705 = load i32, ptr %704, align 4, !tbaa !54
  %706 = icmp eq i32 %705, 6
  %707 = load i32, ptr %45, align 8
  %708 = and i32 %707, 255
  %709 = add nsw i32 %708, -10
  %710 = icmp ult i32 %709, -9
  br i1 %706, label %711, label %728

711:                                              ; preds = %703
  br i1 %710, label %725, label %712

712:                                              ; preds = %711
  %713 = zext nneg i32 %708 to i64
  %714 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %713
  %715 = load i32, ptr %714, align 4, !tbaa !54
  %716 = zext i32 %715 to i64
  %717 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %716
  %718 = load i64, ptr %717, align 8, !tbaa !88
  %719 = icmp eq i64 %718, 0
  br i1 %719, label %720, label %721

720:                                              ; preds = %712
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %721

721:                                              ; preds = %720, %712
  %722 = getelementptr inbounds i8, ptr %45, i64 %718
  %723 = getelementptr inbounds ptr, ptr %722, i64 1
  %724 = load ptr, ptr %723, align 8, !tbaa !39
  br label %725

725:                                              ; preds = %721, %711
  %726 = phi ptr [ %724, %721 ], [ null, %711 ]
  %727 = call fastcc ptr @expand_vector_piecewise(ptr noundef nonnull %1, ptr noundef nonnull @do_unop, ptr noundef nonnull %387, ptr noundef nonnull %535, ptr noundef %726, ptr noundef null, i32 noundef %72)
  br label %768

728:                                              ; preds = %703
  br i1 %710, label %742, label %729

729:                                              ; preds = %728
  %730 = zext nneg i32 %708 to i64
  %731 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %730
  %732 = load i32, ptr %731, align 4, !tbaa !54
  %733 = zext i32 %732 to i64
  %734 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %733
  %735 = load i64, ptr %734, align 8, !tbaa !88
  %736 = icmp eq i64 %735, 0
  br i1 %736, label %737, label %738

737:                                              ; preds = %729
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %738

738:                                              ; preds = %737, %729
  %739 = getelementptr inbounds i8, ptr %45, i64 %735
  %740 = getelementptr inbounds ptr, ptr %739, i64 1
  %741 = load ptr, ptr %740, align 8, !tbaa !39
  br label %742

742:                                              ; preds = %738, %728
  %743 = phi ptr [ %741, %738 ], [ null, %728 ]
  %744 = getelementptr inbounds %struct.gimple_statement_base, ptr %45, i64 0, i32 3
  %745 = load i32, ptr %744, align 4, !tbaa !50
  %746 = icmp ugt i32 %745, 2
  br i1 %746, label %747, label %765

747:                                              ; preds = %742
  %748 = load i32, ptr %45, align 8
  %749 = and i32 %748, 255
  %750 = add nsw i32 %749, -10
  %751 = icmp ult i32 %750, -9
  br i1 %751, label %765, label %752

752:                                              ; preds = %747
  %753 = zext nneg i32 %749 to i64
  %754 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %753
  %755 = load i32, ptr %754, align 4, !tbaa !54
  %756 = zext i32 %755 to i64
  %757 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %756
  %758 = load i64, ptr %757, align 8, !tbaa !88
  %759 = icmp eq i64 %758, 0
  br i1 %759, label %760, label %761

760:                                              ; preds = %752
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #13
  br label %761

761:                                              ; preds = %760, %752
  %762 = getelementptr inbounds i8, ptr %45, i64 %758
  %763 = getelementptr inbounds ptr, ptr %762, i64 2
  %764 = load ptr, ptr %763, align 8, !tbaa !39
  br label %765

765:                                              ; preds = %761, %747, %742
  %766 = phi ptr [ null, %742 ], [ %764, %761 ], [ null, %747 ]
  %767 = call fastcc ptr @expand_vector_piecewise(ptr noundef nonnull %1, ptr noundef nonnull @do_binop, ptr noundef nonnull %387, ptr noundef nonnull %535, ptr noundef %743, ptr noundef %766, i32 noundef %72)
  br label %768

768:                                              ; preds = %765, %725, %700, %679, %635, %607
  %769 = phi ptr [ %727, %725 ], [ %767, %765 ], [ %702, %700 ], [ %681, %679 ], [ %637, %635 ], [ %609, %607 ]
  %770 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %771 = load ptr, ptr %770, align 8, !tbaa !50
  %772 = getelementptr inbounds %struct.tree_common, ptr %769, i64 0, i32 2
  %773 = load ptr, ptr %772, align 8, !tbaa !50
  %774 = call zeroext i8 @useless_type_conversion_p(ptr noundef %771, ptr noundef %773) #13
  %775 = icmp eq i8 %774, 0
  br i1 %775, label %776, label %779

776:                                              ; preds = %768
  %777 = load ptr, ptr %770, align 8, !tbaa !50
  %778 = call ptr @gimplify_build1(ptr noundef nonnull %1, i32 noundef 118, ptr noundef %777, ptr noundef %769) #13
  br label %779

779:                                              ; preds = %776, %768
  %780 = phi ptr [ %769, %768 ], [ %778, %776 ]
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %1, ptr noundef %780) #13
  %781 = load ptr, ptr %1, align 8
  %782 = load ptr, ptr %781, align 8, !tbaa !84
  call void @gimple_set_modified(ptr noundef %782, i8 noundef zeroext 1) #13
  br label %783

783:                                              ; preds = %43, %71, %216, %221, %526, %779
  %784 = load ptr, ptr %1, align 8
  %785 = load ptr, ptr %784, align 8, !tbaa !84
  %786 = load i32, ptr %785, align 8
  %787 = and i32 %786, 255
  %788 = add nsw i32 %787, -10
  %789 = icmp ult i32 %788, -9
  %790 = and i32 %786, 8192
  %791 = icmp eq i32 %790, 0
  %792 = or i1 %791, %789
  br i1 %792, label %794, label %793, !prof !108

793:                                              ; preds = %783
  call void @update_stmt_operands(ptr noundef nonnull %785) #13
  br label %794

794:                                              ; preds = %783, %793
  %795 = load ptr, ptr %1, align 8, !tbaa !109
  %796 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %795, i64 0, i32 2
  %797 = load ptr, ptr %796, align 8, !tbaa !111
  store ptr %797, ptr %1, align 8, !tbaa !109
  %798 = icmp eq ptr %797, null
  br i1 %798, label %14, label %43, !prof !112, !llvm.loop !113

799:                                              ; preds = %14, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_expand_vector_operations() #10 !prof !114 !PGOFuncName !115 {
  %1 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !54
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @optab_for_tree_code(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimplify_build1(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_vector_addition(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #11 !prof !38 {
  %8 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call i64 @tree_low_cst(ptr noundef %11, i32 noundef 1) #13
  %13 = sdiv i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %8, align 8, !tbaa !50
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65534
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %25, label %20

20:                                               ; preds = %7
  %21 = and i32 %17, 65535
  %22 = icmp eq i32 %21, 8
  %23 = icmp sgt i32 %14, 3
  %24 = and i1 %23, %22
  br i1 %24, label %27, label %34

25:                                               ; preds = %7
  %26 = icmp sgt i32 %14, 3
  br i1 %26, label %27, label %34

27:                                               ; preds = %20, %25
  %28 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1022
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @expand_vector_parallel(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6)
  br label %36

34:                                               ; preds = %27, %25, %20
  %35 = tail call fastcc ptr @expand_vector_piecewise(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %15, ptr noundef %4, ptr noundef %5, i32 noundef %6)
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ]
  ret ptr %37
}

; Function Attrs: cold nounwind uwtable
define internal ptr @do_binop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #11 !prof !38 {
  %8 = icmp eq ptr %4, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @gimplify_build3(ptr noundef %0, i32 noundef 42, ptr noundef %1, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4) #13
  br label %13

11:                                               ; preds = %7
  %12 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 118, ptr noundef %1, ptr noundef %2) #13
  br label %13

13:                                               ; preds = %9, %11
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  br i1 %8, label %17, label %15

15:                                               ; preds = %13
  %16 = tail call ptr @gimplify_build3(ptr noundef %0, i32 noundef 42, ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef nonnull %4) #13
  br label %19

17:                                               ; preds = %13
  %18 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 118, ptr noundef %1, ptr noundef %3) #13
  br label %19

19:                                               ; preds = %15, %17
  %20 = phi ptr [ %16, %15 ], [ %18, %17 ]
  %21 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %14, ptr noundef %20) #13
  ret ptr %21
}

; Function Attrs: cold nounwind uwtable
define internal ptr @do_plus_minus(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #11 !prof !38 {
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 14
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #13
  br label %22

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i32 [ %16, %15 ], [ %21, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !88
  %27 = lshr i64 %26, 1
  %28 = tail call fastcc ptr @build_replicated_const(ptr noundef %1, ptr noundef nonnull %11, i64 noundef %27)
  %29 = xor i64 %27, -1
  %30 = and i64 %26, %29
  %31 = tail call fastcc ptr @build_replicated_const(ptr noundef %1, ptr noundef nonnull %11, i64 noundef %30)
  %32 = icmp eq ptr %4, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  %34 = tail call ptr @gimplify_build3(ptr noundef %0, i32 noundef 42, ptr noundef %1, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4) #13
  br label %37

35:                                               ; preds = %22
  %36 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 118, ptr noundef %1, ptr noundef %2) #13
  br label %37

37:                                               ; preds = %33, %35
  %38 = phi ptr [ %34, %33 ], [ %36, %35 ]
  br i1 %32, label %41, label %39

39:                                               ; preds = %37
  %40 = tail call ptr @gimplify_build3(ptr noundef %0, i32 noundef 42, ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef nonnull %4) #13
  br label %43

41:                                               ; preds = %37
  %42 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 118, ptr noundef %1, ptr noundef %3) #13
  br label %43

43:                                               ; preds = %39, %41
  %44 = phi ptr [ %40, %39 ], [ %42, %41 ]
  %45 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 88, ptr noundef %1, ptr noundef %38, ptr noundef %44) #13
  %46 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 89, ptr noundef %1, ptr noundef %44, ptr noundef %28) #13
  %47 = icmp eq i32 %6, 63
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 89, ptr noundef %1, ptr noundef %38, ptr noundef %28) #13
  br label %53

50:                                               ; preds = %43
  %51 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 87, ptr noundef %1, ptr noundef %38, ptr noundef %31) #13
  %52 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 90, ptr noundef %1, ptr noundef %45) #13
  br label %53

53:                                               ; preds = %50, %48
  %54 = phi ptr [ %49, %48 ], [ %51, %50 ]
  %55 = phi ptr [ %45, %48 ], [ %52, %50 ]
  %56 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 89, ptr noundef %1, ptr noundef %55, ptr noundef %31) #13
  %57 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %54, ptr noundef %46) #13
  %58 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 88, ptr noundef %1, ptr noundef %57, ptr noundef %56) #13
  ret ptr %58
}

; Function Attrs: cold nounwind uwtable
define internal ptr @do_unop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #11 !prof !38 {
  %8 = icmp eq ptr %4, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @gimplify_build3(ptr noundef %0, i32 noundef 42, ptr noundef %1, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4) #13
  br label %13

11:                                               ; preds = %7
  %12 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 118, ptr noundef %1, ptr noundef %2) #13
  br label %13

13:                                               ; preds = %9, %11
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  %15 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %14) #13
  ret ptr %15
}

; Function Attrs: cold nounwind uwtable
define internal ptr @do_negate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef %4, ptr noundef %5, i32 %6) #11 !prof !38 {
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 14
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #13
  br label %22

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i32 [ %16, %15 ], [ %21, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !88
  %27 = ashr i64 %26, 1
  %28 = tail call fastcc ptr @build_replicated_const(ptr noundef %1, ptr noundef nonnull %11, i64 noundef %27)
  %29 = xor i64 %27, -1
  %30 = and i64 %26, %29
  %31 = tail call fastcc ptr @build_replicated_const(ptr noundef %1, ptr noundef nonnull %11, i64 noundef %30)
  %32 = icmp eq ptr %4, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  %34 = tail call ptr @gimplify_build3(ptr noundef %0, i32 noundef 42, ptr noundef %1, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4) #13
  br label %37

35:                                               ; preds = %22
  %36 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 118, ptr noundef %1, ptr noundef %2) #13
  br label %37

37:                                               ; preds = %33, %35
  %38 = phi ptr [ %34, %33 ], [ %36, %35 ]
  %39 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 89, ptr noundef %1, ptr noundef %38, ptr noundef %28) #13
  %40 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 90, ptr noundef %1, ptr noundef %38) #13
  %41 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 89, ptr noundef %1, ptr noundef %40, ptr noundef %31) #13
  %42 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 64, ptr noundef %1, ptr noundef %31, ptr noundef %39) #13
  %43 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 88, ptr noundef %1, ptr noundef %42, ptr noundef %41) #13
  ret ptr %43
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_vector_parallel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #11 !prof !38 {
  %7 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call i64 @tree_low_cst(ptr noundef %8, i32 noundef 1) #13
  %10 = sdiv i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 14
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #13
  br label %24

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i32 [ %18, %17 ], [ %23, %19 ]
  %26 = load i32, ptr @word_mode, align 4, !tbaa !54
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load ptr, ptr %12, align 8, !tbaa !50
  %30 = tail call fastcc ptr @expand_vector_piecewise(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %29, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %69

31:                                               ; preds = %24
  %32 = icmp sgt i32 %11, 1
  br i1 %32, label %33, label %60

33:                                               ; preds = %31
  %34 = load ptr, ptr @vector_inner_type, align 8, !tbaa !39
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !100
  %38 = tail call ptr %37(i32 noundef %26, i32 noundef 1) #13
  store ptr %38, ptr @vector_inner_type, align 8, !tbaa !39
  br label %50

39:                                               ; preds = %33
  %40 = load i32, ptr @vector_last_nunits, align 4, !tbaa !54
  %41 = icmp eq i32 %40, %11
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load ptr, ptr @vector_last_type, align 8, !tbaa !39
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 14
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 87, ptr noundef nonnull @.str.3) #13
  br label %48

48:                                               ; preds = %47, %42
  %49 = load ptr, ptr @vector_last_type, align 8, !tbaa !39
  br label %54

50:                                               ; preds = %39, %36
  store i32 %11, ptr @vector_last_nunits, align 4, !tbaa !54
  %51 = load ptr, ptr @vector_inner_type, align 8, !tbaa !39
  %52 = tail call ptr @build_vector_type(ptr noundef %51, i32 noundef %11) #13
  %53 = tail call ptr @type_hash_canon(i32 noundef %11, ptr noundef %52) #13
  store ptr %53, ptr @vector_last_type, align 8, !tbaa !39
  br label %54

54:                                               ; preds = %48, %50
  %55 = phi ptr [ %49, %48 ], [ %53, %50 ]
  %56 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !50
  %58 = tail call fastcc ptr @expand_vector_piecewise(ptr noundef %0, ptr noundef %1, ptr noundef %55, ptr noundef %57, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %59 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %58, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #13
  br label %69

60:                                               ; preds = %31
  %61 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !50
  %63 = tail call i64 @tree_low_cst(ptr noundef %62, i32 noundef 1) #13
  %64 = trunc i64 %63 to i32
  %65 = tail call i32 @mode_for_size(i32 noundef %64, i32 noundef 2, i32 noundef 0) #13
  %66 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !100
  %67 = tail call ptr %66(i32 noundef %65, i32 noundef 1) #13
  %68 = tail call ptr %1(ptr noundef %0, ptr noundef %67, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null, i32 noundef %5) #13, !callees !116
  br label %69

69:                                               ; preds = %60, %54, %28
  %70 = phi ptr [ %30, %28 ], [ %59, %54 ], [ %68, %60 ]
  ret ptr %70
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_vector_piecewise(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #11 !prof !38 {
  %8 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 2) #13
  %11 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1023
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = trunc i64 %15 to i32
  %17 = tail call i64 @tree_low_cst(ptr noundef %9, i32 noundef 1) #13
  %18 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = tail call i64 @tree_low_cst(ptr noundef %21, i32 noundef 1) #13
  %23 = sdiv i64 %17, %22
  %24 = trunc i64 %23 to i32
  %25 = add i32 %16, -1
  %26 = add i32 %25, %24
  %27 = sdiv i32 %26, %24
  %28 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %27, i64 noundef 8, i64 noundef 16) #13
  %29 = icmp sgt i32 %16, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %7, %30
  %31 = phi ptr [ %40, %30 ], [ %10, %7 ]
  %32 = phi i32 [ %39, %30 ], [ 0, %7 ]
  %33 = tail call ptr %1(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %31, ptr noundef %9, i32 noundef %6) #13, !callees !116
  %34 = load i32, ptr %28, align 8, !tbaa !117
  %35 = add i32 %34, 1
  store i32 %35, ptr %28, align 8, !tbaa !117
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %28, i64 0, i32 2, i64 %36
  store ptr null, ptr %37, align 8, !tbaa !119
  %38 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %28, i64 0, i32 2, i64 %36, i32 1
  store ptr %33, ptr %38, align 8, !tbaa !121
  %39 = add nsw i32 %32, %24
  %40 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %31, ptr noundef %9, i32 noundef 0) #13
  %41 = icmp slt i32 %39, %16
  br i1 %41, label %30, label %42, !llvm.loop !122

42:                                               ; preds = %30, %7
  %43 = tail call ptr @build_constructor(ptr noundef %2, ptr noundef %28) #13
  ret ptr %43
}

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimplify_build2(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimplify_build3(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @build_replicated_const(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #11 !prof !38 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = tail call i64 @tree_low_cst(ptr noundef %5, i32 noundef 1) #13
  %7 = trunc i64 %6 to i32
  %8 = sdiv i32 64, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 51, ptr noundef nonnull @.str.3) #13
  br label %11

11:                                               ; preds = %3, %10
  %12 = icmp eq i32 %7, 64
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = and i64 %6, 4294967295
  %15 = shl nsw i64 -1, %14
  %16 = xor i64 %15, -1
  %17 = udiv i64 -1, %16
  %18 = and i64 %16, %2
  %19 = mul i64 %17, %18
  br label %20

20:                                               ; preds = %11, %13
  %21 = phi i64 [ %19, %13 ], [ %2, %11 ]
  %22 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1023
  %25 = icmp ult i32 %24, 64
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = zext nneg i32 %24 to i64
  %28 = shl nsw i64 -1, %27
  %29 = xor i64 %28, -1
  %30 = and i64 %21, %29
  br label %34

31:                                               ; preds = %20
  switch i32 %24, label %33 [
    i32 64, label %34
    i32 128, label %32
  ]

32:                                               ; preds = %31
  br label %34

33:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 68, ptr noundef nonnull @.str.3) #13
  unreachable

34:                                               ; preds = %31, %32, %26
  %35 = phi i64 [ 0, %26 ], [ %21, %32 ], [ 0, %31 ]
  %36 = phi i64 [ %30, %26 ], [ %21, %32 ], [ %21, %31 ]
  %37 = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %36, i64 noundef %35) #13
  ret ptr %37
}

declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @type_hash_canon(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_vector_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_constructor(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

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
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @expand_vector_operations, ptr @gimple_get_lhs, i64 100977}
!36 = !{ptr @expand_vector_operations, ptr @update_stmt_operands, i64 403812}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !40, i64 8}
!44 = !{!"_IO_FILE", !45, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !45, i64 112, !45, i64 116, !46, i64 120, !47, i64 128, !41, i64 130, !41, i64 131, !40, i64 136, !46, i64 144, !40, i64 152, !40, i64 160, !40, i64 168, !40, i64 176, !46, i64 184, !45, i64 192, !41, i64 196}
!45 = !{!"int", !41, i64 0}
!46 = !{!"long", !41, i64 0}
!47 = !{!"short", !41, i64 0}
!48 = !{!44, !40, i64 16}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{!41, !41, i64 0}
!51 = !{!44, !40, i64 40}
!52 = !{!44, !40, i64 48}
!53 = !{!44, !45, i64 0}
!54 = !{!45, !45, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!"function_entry_count", i64 78}
!59 = !{!"tree-vect-generic.c;expand_vector_operations"}
!60 = !{!61, !40, i64 8}
!61 = !{!"function", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !40, i64 128, !45, i64 136, !45, i64 137, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139}
!62 = !{!63, !40, i64 0}
!63 = !{!"control_flow_graph", !40, i64 0, !40, i64 8, !40, i64 16, !45, i64 24, !45, i64 28, !45, i64 32, !40, i64 40, !45, i64 48, !41, i64 52, !41, i64 60, !45, i64 68, !45, i64 72}
!64 = !{!65, !40, i64 56}
!65 = !{!"basic_block_def", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !40, i64 48, !40, i64 56, !41, i64 64, !46, i64 72, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !45, i64 96}
!66 = !{!63, !40, i64 8}
!67 = !{!"branch_weights", i32 1, i32 155}
!68 = !{!"branch_weights", i32 155, i32 685287}
!69 = distinct !{!69, !56, !57}
!70 = !{!65, !45, i64 96}
!71 = !{!72}
!72 = distinct !{!72, !73, !"gsi_start_bb: argument 0"}
!73 = distinct !{!73, !"gsi_start_bb"}
!74 = !{!"branch_weights", i32 342721, i32 0}
!75 = !{!"branch_weights", i32 0, i32 342721}
!76 = !{!77, !40, i64 0}
!77 = !{!"gimple_bb_info", !40, i64 0, !40, i64 8}
!78 = !{!79, !40, i64 0}
!79 = !{!"gimple_seq_d", !40, i64 0, !40, i64 8, !40, i64 16}
!80 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 8, !39}
!81 = !{i64 0, i64 8, !39, i64 8, i64 8, !39}
!82 = !{i64 0, i64 8, !39}
!83 = !{!"branch_weights", i32 1, i32 342720}
!84 = !{!85, !40, i64 0}
!85 = !{!"gimple_seq_node_d", !40, i64 0, !40, i64 8, !40, i64 16}
!86 = !{!"branch_weights", i32 313446, i32 428739}
!87 = !{!"branch_weights", i32 212463, i32 100983}
!88 = !{!46, !46, i64 0}
!89 = !{!"branch_weights", i32 0, i32 212463}
!90 = !{!"branch_weights", i32 0, i32 100983}
!91 = !{!"branch_weights", i32 0, i32 0, i32 100983, i32 0}
!92 = !{!"branch_weights", i32 6, i32 100977}
!93 = !{!"branch_weights", i32 0, i32 6}
!94 = !{!"branch_weights", i32 95925, i32 5058}
!95 = !{!"branch_weights", i32 95925, i32 0}
!96 = !{!"branch_weights", i32 0, i32 95925}
!97 = !{!98, !45, i64 0}
!98 = !{!"optab_handlers", !45, i64 0}
!99 = distinct !{!99, !56, !57}
!100 = !{!101, !40, i64 448}
!101 = !{!"lang_hooks", !40, i64 0, !46, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !40, i64 160, !40, i64 168, !40, i64 176, !40, i64 184, !40, i64 192, !40, i64 200, !40, i64 208, !40, i64 216, !40, i64 224, !40, i64 232, !102, i64 240, !103, i64 248, !104, i64 256, !105, i64 272, !106, i64 432, !107, i64 560, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !40, i64 616, !40, i64 624, !40, i64 632, !40, i64 640, !40, i64 648, !40, i64 656, !40, i64 664, !41, i64 672}
!102 = !{!"lang_hooks_for_tree_inlining", !40, i64 0}
!103 = !{!"lang_hooks_for_callgraph", !40, i64 0}
!104 = !{!"lang_hooks_for_tree_dump", !40, i64 0, !40, i64 8}
!105 = !{!"lang_hooks_for_decls", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152}
!106 = !{!"lang_hooks_for_types", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !41, i64 120}
!107 = !{!"lang_hooks_for_lto", !40, i64 0, !40, i64 8, !40, i64 16}
!108 = !{!"branch_weights", i32 338373, i32 403812}
!109 = !{!110, !40, i64 0}
!110 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16}
!111 = !{!85, !40, i64 16}
!112 = !{!"branch_weights", i32 342720, i32 399465}
!113 = distinct !{!113, !56, !57}
!114 = !{!"function_entry_count", i64 38}
!115 = !{!"tree-vect-generic.c;gate_expand_vector_operations"}
!116 = !{ptr @do_binop, ptr @do_negate, ptr @do_plus_minus, ptr @do_unop}
!117 = !{!118, !45, i64 0}
!118 = !{!"VEC_constructor_elt_base", !45, i64 0, !45, i64 4, !41, i64 8}
!119 = !{!120, !40, i64 0}
!120 = !{!"constructor_elt_d", !40, i64 0, !40, i64 8}
!121 = !{!120, !40, i64 8}
!122 = distinct !{!122, !56, !57}
