; ModuleID = 'tree-object-size.c'
source_filename = "tree-object-size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.object_size_info = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"tree-object-size.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@offset_limit = internal unnamed_addr global i64 0, align 8
@object_sizes = internal unnamed_addr global [4 x ptr] zeroinitializer, align 16
@computed = internal unnamed_addr global [4 x ptr] zeroinitializer, align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Computing %s %sobject size for \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"Reexamining \00", align 1
@unknown = internal unnamed_addr constant [4 x i64] [i64 -1, i64 -1, i64 0, i64 0], align 16
@.str.10 = private unnamed_addr constant [24 x i8] c": %s %sobject size %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"objsz\00", align 1
@pass_object_sizes = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.11, ptr null, ptr @compute_object_sizes, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.12 = private unnamed_addr constant [28 x i8] c"Found a dependency loop at \00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Visiting use-def links for \00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Need to reexamine \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"alloc_size\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Simplified\0A  \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"to\0A  \00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
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
  %5 = tail call ptr @__ctype_tolower_loc() #16
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
  %5 = tail call ptr @__ctype_toupper_loc() #16
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #16
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

; Function Attrs: cold nounwind uwtable
define dso_local i64 @compute_builtin_object_size(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !38 {
  %3 = alloca %struct.object_size_info, align 8
  %4 = icmp ult i32 %1, 4
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 463, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = load i64, ptr @offset_limit, align 8, !tbaa !58
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call fastcc void @init_offset_limit()
  br label %10

10:                                               ; preds = %9, %6
  %11 = load i64, ptr %0, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %588 [
    i16 121, label %13
    i16 141, label %15
  ]

13:                                               ; preds = %10
  %14 = tail call fastcc i64 @addr_object_size(ptr noundef null, ptr noundef nonnull %0, i32 noundef %1)
  br label %592

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %588 [
    i16 10, label %20
    i16 12, label %20
  ]

20:                                               ; preds = %15, %15
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = icmp eq ptr %23, null
  br i1 %24, label %588, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [4 x ptr], ptr @computed, i64 0, i64 %21
  %27 = load ptr, ptr %26, align 8, !tbaa !39
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !50
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %27, i32 noundef %29) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %582

32:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #16
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = and i32 %1, 2
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, ptr @.str.4, ptr @.str.3
  %39 = and i32 %1, 1
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, ptr @.str.6, ptr @.str.5
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %33, ptr noundef nonnull @.str.2, ptr noundef nonnull %38, ptr noundef nonnull %41)
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %44 = load i32, ptr @dump_flags, align 4, !tbaa !54
  tail call void @print_generic_expr(ptr noundef %43, ptr noundef nonnull %0, i32 noundef %44) #16
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %46 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %45)
  br label %47

47:                                               ; preds = %35, %32
  %48 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %49 = getelementptr inbounds %struct.object_size_info, ptr %3, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !59
  %50 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %51 = getelementptr inbounds %struct.object_size_info, ptr %3, i64 0, i32 2
  store ptr %50, ptr %51, align 8, !tbaa !61
  store i32 %1, ptr %3, align 8, !tbaa !62
  %52 = getelementptr inbounds %struct.object_size_info, ptr %3, i64 0, i32 5
  %53 = getelementptr inbounds %struct.object_size_info, ptr %3, i64 0, i32 6
  %54 = getelementptr inbounds %struct.object_size_info, ptr %3, i64 0, i32 7
  %55 = getelementptr inbounds %struct.object_size_info, ptr %3, i64 0, i32 3
  store i32 0, ptr %55, align 8, !tbaa !63
  %56 = getelementptr inbounds %struct.object_size_info, ptr %3, i64 0, i32 4
  store i8 0, ptr %56, align 4, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  call fastcc void @collect_object_sizes_for(ptr noundef nonnull %3, ptr noundef nonnull %0)
  %57 = load ptr, ptr %51, align 8, !tbaa !61
  %58 = load ptr, ptr %57, align 8, !tbaa !65
  %59 = icmp eq ptr %58, null
  br i1 %59, label %391, label %60

60:                                               ; preds = %47
  %61 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %62 = and i32 %1, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %277, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr @cfun, align 8, !tbaa !39
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !67
  %68 = getelementptr inbounds %struct.gimple_df, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !69
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i32, ptr %69, align 8, !tbaa !73
  %73 = zext i32 %72 to i64
  br label %74

74:                                               ; preds = %64, %71
  %75 = phi i64 [ %73, %71 ], [ 0, %64 ]
  %76 = call ptr @xcalloc(i64 noundef %75, i64 noundef 4) #16
  store ptr %76, ptr %52, align 8, !tbaa !75
  %77 = load ptr, ptr @cfun, align 8, !tbaa !39
  %78 = getelementptr inbounds %struct.function, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !67
  %80 = getelementptr inbounds %struct.gimple_df, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !69
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %74
  %84 = load i32, ptr %81, align 8, !tbaa !73
  %85 = zext i32 %84 to i64
  %86 = shl nuw nsw i64 %85, 2
  br label %87

87:                                               ; preds = %74, %83
  %88 = phi i64 [ %86, %83 ], [ 0, %74 ]
  %89 = call ptr @xmalloc(i64 noundef %88) #16
  store ptr %89, ptr %53, align 8, !tbaa !76
  store ptr %89, ptr %54, align 8, !tbaa !77
  store i32 1, ptr %55, align 8, !tbaa !63
  %90 = load ptr, ptr %51, align 8, !tbaa !61
  call void @bitmap_copy(ptr noundef %61, ptr noundef %90) #16
  %91 = load ptr, ptr %61, align 8, !tbaa !65
  %92 = icmp eq ptr %91, null
  %93 = select i1 %92, ptr @bitmap_zero_bits, ptr %91
  %94 = getelementptr inbounds %struct.bitmap_element_def, ptr %93, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !78
  %96 = shl i32 %95, 7
  %97 = getelementptr inbounds %struct.bitmap_element_def, ptr %93, i64 0, i32 3
  %98 = load i64, ptr %97, align 8, !tbaa !58
  %99 = icmp eq i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = or disjoint i32 %96, %100
  br label %102

102:                                              ; preds = %271, %87
  %103 = phi i64 [ %98, %87 ], [ %272, %271 ]
  %104 = phi i32 [ 0, %87 ], [ %159, %271 ]
  %105 = phi ptr [ %93, %87 ], [ %160, %271 ]
  %106 = phi i32 [ %101, %87 ], [ %273, %271 ]
  %107 = icmp eq i64 %103, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %136, %102
  %109 = phi i64 [ %103, %102 ], [ %141, %136 ]
  %110 = phi i32 [ %104, %102 ], [ %137, %136 ]
  %111 = phi ptr [ %105, %102 ], [ %128, %136 ]
  %112 = phi i32 [ %106, %102 ], [ %138, %136 ]
  %113 = and i64 %109, 1
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %157

115:                                              ; preds = %108, %115
  %116 = phi i32 [ %119, %115 ], [ %112, %108 ]
  %117 = phi i64 [ %118, %115 ], [ %109, %108 ]
  %118 = lshr exact i64 %117, 1
  %119 = add i32 %116, 1
  %120 = and i64 %117, 2
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %115, label %157, !llvm.loop !80

122:                                              ; preds = %102
  %123 = add i32 %106, 63
  %124 = and i32 %123, -64
  %125 = add i32 %104, 1
  br label %126

126:                                              ; preds = %153, %122
  %127 = phi i64 [ %103, %122 ], [ %148, %153 ]
  %128 = phi ptr [ %105, %122 ], [ %151, %153 ]
  %129 = phi i32 [ %124, %122 ], [ %156, %153 ]
  %130 = phi i32 [ %125, %122 ], [ 0, %153 ]
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %147, label %132

132:                                              ; preds = %126
  %133 = add i32 %129, 128
  %134 = shl i32 %130, 6
  %135 = sub i32 %133, %134
  br label %136

136:                                              ; preds = %132, %143
  %137 = phi i32 [ %145, %143 ], [ %130, %132 ]
  %138 = phi i32 [ %144, %143 ], [ %129, %132 ]
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds %struct.bitmap_element_def, ptr %128, i64 0, i32 3, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !58
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %108

143:                                              ; preds = %136
  %144 = add i32 %138, 64
  %145 = add i32 %137, 1
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %136, !llvm.loop !81

147:                                              ; preds = %143, %126
  %148 = phi i64 [ %127, %126 ], [ %141, %143 ]
  %149 = phi i32 [ %129, %126 ], [ %135, %143 ]
  %150 = phi i32 [ %130, %126 ], [ 2, %143 ]
  %151 = load ptr, ptr %128, align 8, !tbaa !82
  %152 = icmp eq ptr %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.bitmap_element_def, ptr %151, i64 0, i32 2
  %155 = load i32, ptr %154, align 8, !tbaa !78
  %156 = shl i32 %155, 7
  br label %126, !llvm.loop !83

157:                                              ; preds = %147, %115, %108
  %158 = phi i64 [ %109, %108 ], [ %118, %115 ], [ %148, %147 ]
  %159 = phi i32 [ %110, %108 ], [ %110, %115 ], [ %150, %147 ]
  %160 = phi ptr [ %111, %108 ], [ %111, %115 ], [ %151, %147 ]
  %161 = phi i32 [ %112, %108 ], [ %119, %115 ], [ %149, %147 ]
  %162 = phi i1 [ false, %108 ], [ false, %115 ], [ true, %147 ]
  br i1 %162, label %274, label %163

163:                                              ; preds = %157
  %164 = load ptr, ptr %51, align 8, !tbaa !61
  %165 = call i32 @bitmap_bit_p(ptr noundef %164, i32 noundef %161) #16
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %271, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr @cfun, align 8, !tbaa !39
  %169 = getelementptr inbounds %struct.function, ptr %168, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !67
  %171 = getelementptr inbounds %struct.gimple_df, ptr %170, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !69
  %173 = zext i32 %161 to i64
  %174 = getelementptr inbounds %struct.VEC_tree_base, ptr %172, i64 0, i32 2, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !39
  %176 = getelementptr inbounds %struct.tree_ssa_name, ptr %175, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !50
  %178 = load i32, ptr %177, align 8
  %179 = and i32 %178, 255
  %180 = icmp eq i32 %179, 6
  br i1 %180, label %181, label %271

181:                                              ; preds = %167
  %182 = lshr i32 %178, 16
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !50
  %186 = icmp eq i8 %185, 3
  br i1 %186, label %187, label %203

187:                                              ; preds = %181
  %188 = zext nneg i32 %179 to i64
  %189 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !54
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %191
  %193 = load i64, ptr %192, align 8, !tbaa !58
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %196

196:                                              ; preds = %195, %187
  %197 = getelementptr inbounds i8, ptr %177, i64 %193
  %198 = getelementptr inbounds ptr, ptr %197, i64 1
  %199 = load ptr, ptr %198, align 8, !tbaa !39
  %200 = load i64, ptr %199, align 8
  %201 = trunc i64 %200 to i32
  %202 = and i32 %201, 65535
  br label %203

203:                                              ; preds = %196, %181
  %204 = phi i32 [ %202, %196 ], [ %182, %181 ]
  %205 = icmp eq i32 %204, 66
  br i1 %205, label %206, label %271

206:                                              ; preds = %203
  %207 = load i32, ptr %177, align 8
  %208 = and i32 %207, 255
  %209 = add nsw i32 %208, -10
  %210 = icmp ult i32 %209, -9
  br i1 %210, label %224, label %211

211:                                              ; preds = %206
  %212 = zext nneg i32 %208 to i64
  %213 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !54
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %215
  %217 = load i64, ptr %216, align 8, !tbaa !58
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %211
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %220

220:                                              ; preds = %219, %211
  %221 = getelementptr inbounds i8, ptr %177, i64 %217
  %222 = getelementptr inbounds ptr, ptr %221, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !39
  br label %224

224:                                              ; preds = %220, %206
  %225 = phi ptr [ %223, %220 ], [ null, %206 ]
  %226 = getelementptr inbounds %struct.gimple_statement_base, ptr %177, i64 0, i32 3
  %227 = load i32, ptr %226, align 4, !tbaa !50
  %228 = icmp ugt i32 %227, 2
  br i1 %228, label %229, label %247

229:                                              ; preds = %224
  %230 = load i32, ptr %177, align 8
  %231 = and i32 %230, 255
  %232 = add nsw i32 %231, -10
  %233 = icmp ult i32 %232, -9
  br i1 %233, label %247, label %234

234:                                              ; preds = %229
  %235 = zext nneg i32 %231 to i64
  %236 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !54
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %238
  %240 = load i64, ptr %239, align 8, !tbaa !58
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %234
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %243

243:                                              ; preds = %242, %234
  %244 = getelementptr inbounds i8, ptr %177, i64 %240
  %245 = getelementptr inbounds ptr, ptr %244, i64 2
  %246 = load ptr, ptr %245, align 8, !tbaa !39
  br label %247

247:                                              ; preds = %243, %229, %224
  %248 = phi ptr [ null, %224 ], [ %246, %243 ], [ null, %229 ]
  %249 = load i64, ptr %248, align 8
  %250 = and i64 %249, 65535
  %251 = icmp eq i64 %250, 23
  br i1 %251, label %253, label %252

252:                                              ; preds = %247
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1115, ptr noundef nonnull @.str.1) #16
  br label %253

253:                                              ; preds = %252, %247
  %254 = call i32 @integer_zerop(ptr noundef nonnull %248) #16
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %271

256:                                              ; preds = %253
  %257 = load ptr, ptr %52, align 8, !tbaa !75
  %258 = getelementptr inbounds %struct.tree_ssa_name, ptr %225, i64 0, i32 3
  %259 = load i32, ptr %258, align 8, !tbaa !50
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, ptr %257, i64 %260
  store i32 1, ptr %261, align 4, !tbaa !54
  %262 = load i32, ptr %258, align 8, !tbaa !50
  %263 = load ptr, ptr %54, align 8, !tbaa !77
  %264 = getelementptr inbounds i32, ptr %263, i64 1
  store ptr %264, ptr %54, align 8, !tbaa !77
  store i32 %262, ptr %263, align 4, !tbaa !54
  call fastcc void @check_for_plus_in_loops_1(ptr noundef nonnull %3, ptr noundef %175, i32 noundef 2)
  %265 = load ptr, ptr %52, align 8, !tbaa !75
  %266 = load i32, ptr %258, align 8, !tbaa !50
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds i32, ptr %265, i64 %267
  store i32 0, ptr %268, align 4, !tbaa !54
  %269 = load ptr, ptr %54, align 8, !tbaa !77
  %270 = getelementptr inbounds i32, ptr %269, i64 -1
  store ptr %270, ptr %54, align 8, !tbaa !77
  br label %271

271:                                              ; preds = %256, %253, %203, %167, %163
  %272 = lshr i64 %158, 1
  %273 = add i32 %161, 1
  br label %102, !llvm.loop !84

274:                                              ; preds = %157
  %275 = load ptr, ptr %52, align 8, !tbaa !75
  call void @free(ptr noundef %275)
  store ptr null, ptr %52, align 8, !tbaa !75
  %276 = load ptr, ptr %53, align 8, !tbaa !76
  call void @free(ptr noundef %276)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %53, i8 0, i64 16, i1 false)
  br label %277

277:                                              ; preds = %274, %60
  br label %278

278:                                              ; preds = %277, %387
  store i32 2, ptr %55, align 8, !tbaa !63
  store i8 0, ptr %56, align 4, !tbaa !64
  %279 = load ptr, ptr %51, align 8, !tbaa !61
  call void @bitmap_copy(ptr noundef %61, ptr noundef %279) #16
  %280 = load ptr, ptr %61, align 8, !tbaa !65
  %281 = icmp eq ptr %280, null
  %282 = select i1 %281, ptr @bitmap_zero_bits, ptr %280
  %283 = getelementptr inbounds %struct.bitmap_element_def, ptr %282, i64 0, i32 2
  %284 = load i32, ptr %283, align 8, !tbaa !78
  %285 = shl i32 %284, 7
  %286 = getelementptr inbounds %struct.bitmap_element_def, ptr %282, i64 0, i32 3
  %287 = load i64, ptr %286, align 8, !tbaa !58
  %288 = icmp eq i64 %287, 0
  %289 = zext i1 %288 to i32
  %290 = or disjoint i32 %285, %289
  br label %291

291:                                              ; preds = %384, %278
  %292 = phi i64 [ %287, %278 ], [ %385, %384 ]
  %293 = phi i32 [ 0, %278 ], [ %348, %384 ]
  %294 = phi ptr [ %282, %278 ], [ %349, %384 ]
  %295 = phi i32 [ %290, %278 ], [ %386, %384 ]
  %296 = icmp eq i64 %292, 0
  br i1 %296, label %311, label %297

297:                                              ; preds = %325, %291
  %298 = phi i64 [ %292, %291 ], [ %330, %325 ]
  %299 = phi i32 [ %293, %291 ], [ %326, %325 ]
  %300 = phi ptr [ %294, %291 ], [ %317, %325 ]
  %301 = phi i32 [ %295, %291 ], [ %327, %325 ]
  %302 = and i64 %298, 1
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %346

304:                                              ; preds = %297, %304
  %305 = phi i32 [ %308, %304 ], [ %301, %297 ]
  %306 = phi i64 [ %307, %304 ], [ %298, %297 ]
  %307 = lshr exact i64 %306, 1
  %308 = add i32 %305, 1
  %309 = and i64 %306, 2
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %304, label %346, !llvm.loop !80

311:                                              ; preds = %291
  %312 = add i32 %295, 63
  %313 = and i32 %312, -64
  %314 = add i32 %293, 1
  br label %315

315:                                              ; preds = %342, %311
  %316 = phi i64 [ %292, %311 ], [ %337, %342 ]
  %317 = phi ptr [ %294, %311 ], [ %340, %342 ]
  %318 = phi i32 [ %313, %311 ], [ %345, %342 ]
  %319 = phi i32 [ %314, %311 ], [ 0, %342 ]
  %320 = icmp eq i32 %319, 2
  br i1 %320, label %336, label %321

321:                                              ; preds = %315
  %322 = add i32 %318, 128
  %323 = shl i32 %319, 6
  %324 = sub i32 %322, %323
  br label %325

325:                                              ; preds = %321, %332
  %326 = phi i32 [ %334, %332 ], [ %319, %321 ]
  %327 = phi i32 [ %333, %332 ], [ %318, %321 ]
  %328 = zext i32 %326 to i64
  %329 = getelementptr inbounds %struct.bitmap_element_def, ptr %317, i64 0, i32 3, i64 %328
  %330 = load i64, ptr %329, align 8, !tbaa !58
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %297

332:                                              ; preds = %325
  %333 = add i32 %327, 64
  %334 = add i32 %326, 1
  %335 = icmp eq i32 %334, 2
  br i1 %335, label %336, label %325, !llvm.loop !81

336:                                              ; preds = %332, %315
  %337 = phi i64 [ %316, %315 ], [ %330, %332 ]
  %338 = phi i32 [ %318, %315 ], [ %324, %332 ]
  %339 = phi i32 [ %319, %315 ], [ 2, %332 ]
  %340 = load ptr, ptr %317, align 8, !tbaa !82
  %341 = icmp eq ptr %340, null
  br i1 %341, label %346, label %342

342:                                              ; preds = %336
  %343 = getelementptr inbounds %struct.bitmap_element_def, ptr %340, i64 0, i32 2
  %344 = load i32, ptr %343, align 8, !tbaa !78
  %345 = shl i32 %344, 7
  br label %315, !llvm.loop !83

346:                                              ; preds = %336, %304, %297
  %347 = phi i64 [ %298, %297 ], [ %307, %304 ], [ %337, %336 ]
  %348 = phi i32 [ %299, %297 ], [ %299, %304 ], [ %339, %336 ]
  %349 = phi ptr [ %300, %297 ], [ %300, %304 ], [ %340, %336 ]
  %350 = phi i32 [ %301, %297 ], [ %308, %304 ], [ %338, %336 ]
  %351 = phi i1 [ false, %297 ], [ false, %304 ], [ true, %336 ]
  br i1 %351, label %387, label %352

352:                                              ; preds = %346
  %353 = load ptr, ptr %51, align 8, !tbaa !61
  %354 = call i32 @bitmap_bit_p(ptr noundef %353, i32 noundef %350) #16
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %384, label %356

356:                                              ; preds = %352
  %357 = load ptr, ptr @cfun, align 8, !tbaa !39
  %358 = getelementptr inbounds %struct.function, ptr %357, i64 0, i32 3
  %359 = load ptr, ptr %358, align 8, !tbaa !67
  %360 = getelementptr inbounds %struct.gimple_df, ptr %359, i64 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !69
  %362 = zext i32 %350 to i64
  %363 = getelementptr inbounds %struct.VEC_tree_base, ptr %361, i64 0, i32 2, i64 %362
  %364 = load ptr, ptr %363, align 8, !tbaa !39
  call fastcc void @collect_object_sizes_for(ptr noundef nonnull %3, ptr noundef %364)
  %365 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %366 = icmp eq ptr %365, null
  br i1 %366, label %384, label %367

367:                                              ; preds = %356
  %368 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %369 = and i32 %368, 8
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %384, label %371

371:                                              ; preds = %367
  %372 = call i64 @fwrite(ptr nonnull @.str.8, i64 12, i64 1, ptr nonnull %365)
  %373 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %374 = load ptr, ptr @cfun, align 8, !tbaa !39
  %375 = getelementptr inbounds %struct.function, ptr %374, i64 0, i32 3
  %376 = load ptr, ptr %375, align 8, !tbaa !67
  %377 = getelementptr inbounds %struct.gimple_df, ptr %376, i64 0, i32 2
  %378 = load ptr, ptr %377, align 8, !tbaa !69
  %379 = getelementptr inbounds %struct.VEC_tree_base, ptr %378, i64 0, i32 2, i64 %362
  %380 = load ptr, ptr %379, align 8, !tbaa !39
  %381 = load i32, ptr @dump_flags, align 4, !tbaa !54
  call void @print_generic_expr(ptr noundef %373, ptr noundef %380, i32 noundef %381) #16
  %382 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %383 = call i32 @fputc(i32 10, ptr %382)
  br label %384

384:                                              ; preds = %352, %371, %367, %356
  %385 = lshr i64 %347, 1
  %386 = add i32 %350, 1
  br label %291, !llvm.loop !85

387:                                              ; preds = %346
  %388 = load i8, ptr %56, align 4, !tbaa !64
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %390, label %278, !llvm.loop !86

390:                                              ; preds = %387
  call void @bitmap_obstack_free(ptr noundef nonnull %61) #16
  br label %391

391:                                              ; preds = %390, %47
  %392 = load ptr, ptr %51, align 8, !tbaa !61
  %393 = load ptr, ptr %392, align 8, !tbaa !65
  %394 = icmp eq ptr %393, null
  %395 = select i1 %394, ptr @bitmap_zero_bits, ptr %393
  %396 = getelementptr inbounds %struct.bitmap_element_def, ptr %395, i64 0, i32 2
  %397 = load i32, ptr %396, align 8, !tbaa !78
  %398 = shl i32 %397, 7
  %399 = getelementptr inbounds %struct.bitmap_element_def, ptr %395, i64 0, i32 3
  %400 = load i64, ptr %399, align 8, !tbaa !58
  %401 = icmp eq i64 %400, 0
  %402 = zext i1 %401 to i32
  %403 = or disjoint i32 %398, %402
  br label %404

404:                                              ; preds = %465, %391
  %405 = phi i64 [ %400, %391 ], [ %468, %465 ]
  %406 = phi i32 [ 0, %391 ], [ %461, %465 ]
  %407 = phi ptr [ %395, %391 ], [ %462, %465 ]
  %408 = phi i32 [ %403, %391 ], [ %469, %465 ]
  %409 = icmp eq i64 %405, 0
  br i1 %409, label %424, label %410

410:                                              ; preds = %438, %404
  %411 = phi i64 [ %405, %404 ], [ %443, %438 ]
  %412 = phi i32 [ %406, %404 ], [ %439, %438 ]
  %413 = phi ptr [ %407, %404 ], [ %430, %438 ]
  %414 = phi i32 [ %408, %404 ], [ %440, %438 ]
  %415 = and i64 %411, 1
  %416 = icmp eq i64 %415, 0
  br i1 %416, label %417, label %459

417:                                              ; preds = %410, %417
  %418 = phi i32 [ %421, %417 ], [ %414, %410 ]
  %419 = phi i64 [ %420, %417 ], [ %411, %410 ]
  %420 = lshr exact i64 %419, 1
  %421 = add i32 %418, 1
  %422 = and i64 %419, 2
  %423 = icmp eq i64 %422, 0
  br i1 %423, label %417, label %459, !llvm.loop !80

424:                                              ; preds = %404
  %425 = add i32 %408, 63
  %426 = and i32 %425, -64
  %427 = add i32 %406, 1
  br label %428

428:                                              ; preds = %455, %424
  %429 = phi i64 [ %405, %424 ], [ %450, %455 ]
  %430 = phi ptr [ %407, %424 ], [ %453, %455 ]
  %431 = phi i32 [ %426, %424 ], [ %458, %455 ]
  %432 = phi i32 [ %427, %424 ], [ 0, %455 ]
  %433 = icmp eq i32 %432, 2
  br i1 %433, label %449, label %434

434:                                              ; preds = %428
  %435 = add i32 %431, 128
  %436 = shl i32 %432, 6
  %437 = sub i32 %435, %436
  br label %438

438:                                              ; preds = %434, %445
  %439 = phi i32 [ %447, %445 ], [ %432, %434 ]
  %440 = phi i32 [ %446, %445 ], [ %431, %434 ]
  %441 = zext i32 %439 to i64
  %442 = getelementptr inbounds %struct.bitmap_element_def, ptr %430, i64 0, i32 3, i64 %441
  %443 = load i64, ptr %442, align 8, !tbaa !58
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %445, label %410

445:                                              ; preds = %438
  %446 = add i32 %440, 64
  %447 = add i32 %439, 1
  %448 = icmp eq i32 %447, 2
  br i1 %448, label %449, label %438, !llvm.loop !81

449:                                              ; preds = %445, %428
  %450 = phi i64 [ %429, %428 ], [ %443, %445 ]
  %451 = phi i32 [ %431, %428 ], [ %437, %445 ]
  %452 = phi i32 [ %432, %428 ], [ 2, %445 ]
  %453 = load ptr, ptr %430, align 8, !tbaa !82
  %454 = icmp eq ptr %453, null
  br i1 %454, label %459, label %455

455:                                              ; preds = %449
  %456 = getelementptr inbounds %struct.bitmap_element_def, ptr %453, i64 0, i32 2
  %457 = load i32, ptr %456, align 8, !tbaa !78
  %458 = shl i32 %457, 7
  br label %428, !llvm.loop !83

459:                                              ; preds = %449, %417, %410
  %460 = phi i64 [ %411, %410 ], [ %420, %417 ], [ %450, %449 ]
  %461 = phi i32 [ %412, %410 ], [ %412, %417 ], [ %452, %449 ]
  %462 = phi ptr [ %413, %410 ], [ %413, %417 ], [ %453, %449 ]
  %463 = phi i32 [ %414, %410 ], [ %421, %417 ], [ %451, %449 ]
  %464 = phi i1 [ false, %410 ], [ false, %417 ], [ true, %449 ]
  br i1 %464, label %470, label %465

465:                                              ; preds = %459
  %466 = load ptr, ptr %26, align 8, !tbaa !39
  %467 = call zeroext i8 @bitmap_set_bit(ptr noundef %466, i32 noundef %463) #16
  %468 = lshr i64 %460, 1
  %469 = add i32 %463, 1
  br label %404, !llvm.loop !87

470:                                              ; preds = %459
  %471 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %472 = icmp eq ptr %471, null
  br i1 %472, label %579, label %473

473:                                              ; preds = %470
  %474 = load ptr, ptr %49, align 8, !tbaa !59
  %475 = load ptr, ptr %474, align 8, !tbaa !65
  %476 = icmp eq ptr %475, null
  %477 = select i1 %476, ptr @bitmap_zero_bits, ptr %475
  %478 = getelementptr inbounds %struct.bitmap_element_def, ptr %477, i64 0, i32 2
  %479 = load i32, ptr %478, align 8, !tbaa !78
  %480 = shl i32 %479, 7
  %481 = getelementptr inbounds %struct.bitmap_element_def, ptr %477, i64 0, i32 3
  %482 = load i64, ptr %481, align 8, !tbaa !58
  %483 = icmp eq i64 %482, 0
  %484 = zext i1 %483 to i32
  %485 = or disjoint i32 %480, %484
  %486 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %21
  %487 = and i32 %1, 2
  %488 = icmp eq i32 %487, 0
  %489 = select i1 %488, ptr @.str.4, ptr @.str.3
  %490 = and i32 %1, 1
  %491 = icmp eq i32 %490, 0
  %492 = select i1 %491, ptr @.str.6, ptr @.str.5
  br label %493

493:                                              ; preds = %576, %473
  %494 = phi i64 [ %482, %473 ], [ %577, %576 ]
  %495 = phi i32 [ 0, %473 ], [ %550, %576 ]
  %496 = phi ptr [ %477, %473 ], [ %551, %576 ]
  %497 = phi i32 [ %485, %473 ], [ %578, %576 ]
  %498 = icmp eq i64 %494, 0
  br i1 %498, label %513, label %499

499:                                              ; preds = %527, %493
  %500 = phi i64 [ %494, %493 ], [ %532, %527 ]
  %501 = phi i32 [ %495, %493 ], [ %528, %527 ]
  %502 = phi ptr [ %496, %493 ], [ %519, %527 ]
  %503 = phi i32 [ %497, %493 ], [ %529, %527 ]
  %504 = and i64 %500, 1
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %506, label %548

506:                                              ; preds = %499, %506
  %507 = phi i32 [ %510, %506 ], [ %503, %499 ]
  %508 = phi i64 [ %509, %506 ], [ %500, %499 ]
  %509 = lshr exact i64 %508, 1
  %510 = add i32 %507, 1
  %511 = and i64 %508, 2
  %512 = icmp eq i64 %511, 0
  br i1 %512, label %506, label %548, !llvm.loop !80

513:                                              ; preds = %493
  %514 = add i32 %497, 63
  %515 = and i32 %514, -64
  %516 = add i32 %495, 1
  br label %517

517:                                              ; preds = %544, %513
  %518 = phi i64 [ %494, %513 ], [ %539, %544 ]
  %519 = phi ptr [ %496, %513 ], [ %542, %544 ]
  %520 = phi i32 [ %515, %513 ], [ %547, %544 ]
  %521 = phi i32 [ %516, %513 ], [ 0, %544 ]
  %522 = icmp eq i32 %521, 2
  br i1 %522, label %538, label %523

523:                                              ; preds = %517
  %524 = add i32 %520, 128
  %525 = shl i32 %521, 6
  %526 = sub i32 %524, %525
  br label %527

527:                                              ; preds = %523, %534
  %528 = phi i32 [ %536, %534 ], [ %521, %523 ]
  %529 = phi i32 [ %535, %534 ], [ %520, %523 ]
  %530 = zext i32 %528 to i64
  %531 = getelementptr inbounds %struct.bitmap_element_def, ptr %519, i64 0, i32 3, i64 %530
  %532 = load i64, ptr %531, align 8, !tbaa !58
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %534, label %499

534:                                              ; preds = %527
  %535 = add i32 %529, 64
  %536 = add i32 %528, 1
  %537 = icmp eq i32 %536, 2
  br i1 %537, label %538, label %527, !llvm.loop !81

538:                                              ; preds = %534, %517
  %539 = phi i64 [ %518, %517 ], [ %532, %534 ]
  %540 = phi i32 [ %520, %517 ], [ %526, %534 ]
  %541 = phi i32 [ %521, %517 ], [ 2, %534 ]
  %542 = load ptr, ptr %519, align 8, !tbaa !82
  %543 = icmp eq ptr %542, null
  br i1 %543, label %548, label %544

544:                                              ; preds = %538
  %545 = getelementptr inbounds %struct.bitmap_element_def, ptr %542, i64 0, i32 2
  %546 = load i32, ptr %545, align 8, !tbaa !78
  %547 = shl i32 %546, 7
  br label %517, !llvm.loop !83

548:                                              ; preds = %538, %506, %499
  %549 = phi i64 [ %500, %499 ], [ %509, %506 ], [ %539, %538 ]
  %550 = phi i32 [ %501, %499 ], [ %501, %506 ], [ %541, %538 ]
  %551 = phi ptr [ %502, %499 ], [ %502, %506 ], [ %542, %538 ]
  %552 = phi i32 [ %503, %499 ], [ %510, %506 ], [ %540, %538 ]
  %553 = phi i1 [ false, %499 ], [ false, %506 ], [ true, %538 ]
  br i1 %553, label %579, label %554

554:                                              ; preds = %548
  %555 = load ptr, ptr %22, align 8, !tbaa !39
  %556 = zext i32 %552 to i64
  %557 = getelementptr inbounds i64, ptr %555, i64 %556
  %558 = load i64, ptr %557, align 8, !tbaa !58
  %559 = load i64, ptr %486, align 8, !tbaa !58
  %560 = icmp eq i64 %558, %559
  br i1 %560, label %576, label %561

561:                                              ; preds = %554
  %562 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %563 = load ptr, ptr @cfun, align 8, !tbaa !39
  %564 = getelementptr inbounds %struct.function, ptr %563, i64 0, i32 3
  %565 = load ptr, ptr %564, align 8, !tbaa !67
  %566 = getelementptr inbounds %struct.gimple_df, ptr %565, i64 0, i32 2
  %567 = load ptr, ptr %566, align 8, !tbaa !69
  %568 = getelementptr inbounds %struct.VEC_tree_base, ptr %567, i64 0, i32 2, i64 %556
  %569 = load ptr, ptr %568, align 8, !tbaa !39
  %570 = load i32, ptr @dump_flags, align 4, !tbaa !54
  call void @print_generic_expr(ptr noundef %562, ptr noundef %569, i32 noundef %570) #16
  %571 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %572 = load ptr, ptr %22, align 8, !tbaa !39
  %573 = getelementptr inbounds i64, ptr %572, i64 %556
  %574 = load i64, ptr %573, align 8, !tbaa !58
  %575 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %571, ptr noundef nonnull @.str.10, ptr noundef nonnull %489, ptr noundef nonnull %492, i64 noundef %574)
  br label %576

576:                                              ; preds = %554, %561
  %577 = lshr i64 %549, 1
  %578 = add i32 %552, 1
  br label %493, !llvm.loop !88

579:                                              ; preds = %548, %470
  %580 = load ptr, ptr %51, align 8, !tbaa !61
  call void @bitmap_obstack_free(ptr noundef %580) #16
  store ptr null, ptr %51, align 8, !tbaa !61
  %581 = load ptr, ptr %49, align 8, !tbaa !59
  call void @bitmap_obstack_free(ptr noundef %581) #16
  store ptr null, ptr %49, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #16
  br label %582

582:                                              ; preds = %579, %25
  %583 = load ptr, ptr %22, align 8, !tbaa !39
  %584 = load i32, ptr %28, align 8, !tbaa !50
  %585 = zext i32 %584 to i64
  %586 = getelementptr inbounds i64, ptr %583, i64 %585
  %587 = load i64, ptr %586, align 8, !tbaa !58
  br label %592

588:                                              ; preds = %20, %15, %10
  %589 = sext i32 %1 to i64
  %590 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %589
  %591 = load i64, ptr %590, align 8, !tbaa !58
  br label %592

592:                                              ; preds = %588, %582, %13
  %593 = phi i64 [ %14, %13 ], [ %587, %582 ], [ %591, %588 ]
  ret i64 %593
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @init_offset_limit() unnamed_addr #9 !prof !38 {
  %1 = load ptr, ptr @sizetype_tab, align 16, !tbaa !39
  %2 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 1) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @sizetype_tab, align 16, !tbaa !39
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call i64 @tree_low_cst(ptr noundef %9, i32 noundef 1) #16
  %11 = lshr i64 %10, 1
  br label %12

12:                                               ; preds = %0, %6
  %13 = phi i64 [ %11, %6 ], [ 9223372036854775807, %0 ]
  store i64 %13, ptr @offset_limit, align 8, !tbaa !58
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @addr_object_size(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !38 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 121
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 161, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !54
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = tail call ptr @get_base_address(ptr noundef nonnull %10) #16
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi ptr [ %17, %16 ], [ %10, %8 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %108, label %21

21:                                               ; preds = %18
  %22 = load i64, ptr %19, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 47
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %79

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i16
  switch i16 %35, label %79 [
    i16 10, label %36
    i16 12, label %36
  ]

36:                                               ; preds = %31, %31
  %37 = icmp ne ptr %0, null
  %38 = and i32 %2, 1
  %39 = icmp eq i32 %38, 0
  %40 = and i1 %37, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = and i32 %2, -2
  %43 = tail call i64 @compute_builtin_object_size(ptr noundef nonnull %27, i32 noundef %42)
  br label %68

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !63
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call fastcc void @collect_object_sizes_for(ptr noundef nonnull %0, ptr noundef nonnull %27)
  br label %49

49:                                               ; preds = %48, %44
  %50 = sext i32 %2 to i64
  %51 = getelementptr inbounds [4 x ptr], ptr @computed, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !39
  %53 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !50
  %55 = tail call i32 @bitmap_bit_p(ptr noundef %52, i32 noundef %54) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %50
  %59 = load ptr, ptr %58, align 8, !tbaa !39
  %60 = load i32, ptr %53, align 8, !tbaa !50
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, ptr %59, i64 %61
  br label %65

63:                                               ; preds = %49
  %64 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %50
  br label %65

65:                                               ; preds = %63, %57
  %66 = phi ptr [ %62, %57 ], [ %64, %63 ]
  %67 = load i64, ptr %66, align 8, !tbaa !58
  br label %68

68:                                               ; preds = %65, %41
  %69 = phi i64 [ %43, %41 ], [ %67, %65 ]
  %70 = sext i32 %2 to i64
  %71 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !58
  %73 = icmp ne i64 %69, %72
  %74 = load i64, ptr @offset_limit, align 8
  %75 = icmp ult i64 %69, %74
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %112

77:                                               ; preds = %68
  %78 = tail call ptr @size_int_kind(i64 noundef %69, i32 noundef 0) #16
  br label %112

79:                                               ; preds = %21, %25, %31
  %80 = trunc i64 %22 to i16
  switch i16 %80, label %86 [
    i16 32, label %88
    i16 34, label %88
    i16 36, label %88
    i16 141, label %81
  ]

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !50
  %84 = load i64, ptr %83, align 8
  %85 = trunc i64 %84 to i16
  switch i16 %85, label %86 [
    i16 32, label %88
    i16 34, label %88
    i16 36, label %88
  ]

86:                                               ; preds = %81, %79
  %87 = icmp eq i64 %23, 28
  br i1 %87, label %88, label %108

88:                                               ; preds = %86, %81, %81, %79, %79, %81, %79
  %89 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !50
  %91 = getelementptr inbounds %struct.tree_type, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !50
  %93 = icmp eq ptr %92, null
  br i1 %93, label %108, label %94

94:                                               ; preds = %88
  %95 = tail call i32 @host_integerp(ptr noundef nonnull %92, i32 noundef 1) #16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %89, align 8, !tbaa !50
  %99 = getelementptr inbounds %struct.tree_type, ptr %98, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !50
  %101 = tail call i64 @tree_low_cst(ptr noundef %100, i32 noundef 1) #16
  %102 = load i64, ptr @offset_limit, align 8, !tbaa !58
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load ptr, ptr %89, align 8, !tbaa !50
  %106 = getelementptr inbounds %struct.tree_type, ptr %105, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !50
  br label %112

108:                                              ; preds = %86, %18, %97, %94, %88
  %109 = sext i32 %2 to i64
  %110 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !58
  br label %366

112:                                              ; preds = %68, %77, %104
  %113 = phi ptr [ %107, %104 ], [ %78, %77 ], [ null, %68 ]
  %114 = load ptr, ptr %9, align 8, !tbaa !50
  %115 = icmp eq ptr %19, %114
  br i1 %115, label %350, label %116

116:                                              ; preds = %112
  %117 = and i32 %2, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %285, label %119

119:                                              ; preds = %116
  %120 = icmp eq ptr %114, %19
  br i1 %120, label %138, label %121

121:                                              ; preds = %119, %128
  %122 = phi ptr [ %130, %128 ], [ %114, %119 ]
  %123 = load i64, ptr %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = and i32 %124, 65535
  %126 = add nsw i32 %125, -41
  %127 = icmp ult i32 %126, 6
  br i1 %127, label %132, label %128

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.tree_exp, ptr %122, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !50
  %131 = icmp eq ptr %130, %19
  br i1 %131, label %138, label %121, !llvm.loop !89

132:                                              ; preds = %121
  %133 = and i64 %123, 65535
  %134 = icmp eq i64 %133, 45
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.tree_exp, ptr %122, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !50
  br label %138

138:                                              ; preds = %128, %119, %135, %132
  %139 = phi ptr [ %137, %135 ], [ %122, %132 ], [ %114, %119 ], [ %130, %128 ]
  %140 = getelementptr inbounds %struct.tree_common, ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !50
  %142 = getelementptr inbounds %struct.tree_type, ptr %141, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !50
  %144 = icmp eq ptr %143, null
  br i1 %144, label %285, label %145

145:                                              ; preds = %138
  %146 = tail call i32 @host_integerp(ptr noundef nonnull %143, i32 noundef 1) #16
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %285, label %148

148:                                              ; preds = %145
  %149 = icmp eq ptr %113, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %148
  %151 = load ptr, ptr %140, align 8, !tbaa !50
  %152 = getelementptr inbounds %struct.tree_type, ptr %151, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !50
  %154 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %113, ptr noundef %153) #16
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %285

156:                                              ; preds = %150, %148
  %157 = icmp eq ptr %139, %19
  br i1 %157, label %285, label %158

158:                                              ; preds = %156
  %159 = load i64, ptr %19, align 8
  %160 = and i64 %159, 65535
  %161 = icmp eq i64 %160, 47
  br i1 %161, label %162, label %285

162:                                              ; preds = %158
  %163 = icmp ne ptr %139, null
  %164 = icmp ne ptr %139, %19
  %165 = and i1 %163, %164
  br i1 %165, label %166, label %281

166:                                              ; preds = %162, %276
  %167 = phi ptr [ %277, %276 ], [ %139, %162 ]
  %168 = load i64, ptr %167, align 8
  %169 = trunc i64 %168 to i16
  switch i16 %169, label %275 [
    i16 45, label %170
    i16 43, label %276
    i16 44, label %276
    i16 41, label %207
  ]

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.tree_exp, ptr %167, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !50
  %173 = getelementptr inbounds %struct.tree_common, ptr %172, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !50
  %175 = getelementptr inbounds %struct.tree_type, ptr %174, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !50
  %177 = icmp eq ptr %176, null
  br i1 %177, label %203, label %178

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.tree_exp, ptr %167, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !50
  %181 = load i64, ptr %180, align 8
  %182 = and i64 %181, 65535
  %183 = icmp eq i64 %182, 23
  br i1 %183, label %184, label %203

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.tree_type, ptr %174, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !50
  %187 = icmp eq ptr %186, null
  br i1 %187, label %199, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.tree_type, ptr %186, i64 0, i32 14
  %190 = load ptr, ptr %189, align 8, !tbaa !50
  %191 = icmp eq ptr %190, null
  br i1 %191, label %199, label %192

192:                                              ; preds = %188
  %193 = load i64, ptr %190, align 8
  %194 = and i64 %193, 65535
  %195 = icmp eq i64 %194, 23
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %180, ptr noundef nonnull %190) #16
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196, %192, %188, %184
  br label %200

200:                                              ; preds = %196, %199
  %201 = phi i1 [ true, %199 ], [ false, %196 ]
  %202 = phi ptr [ %167, %199 ], [ null, %196 ]
  br i1 %201, label %203, label %276

203:                                              ; preds = %200, %178, %170
  %204 = phi ptr [ %202, %200 ], [ %167, %178 ], [ %167, %170 ]
  %205 = getelementptr inbounds %struct.tree_exp, ptr %204, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !50
  br label %276

207:                                              ; preds = %166
  %208 = getelementptr inbounds %struct.tree_common, ptr %167, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !50
  %210 = load i64, ptr %209, align 8
  %211 = and i64 %210, 65535
  %212 = icmp eq i64 %211, 15
  br i1 %212, label %213, label %276

213:                                              ; preds = %207, %220
  %214 = phi ptr [ %222, %220 ], [ %167, %207 ]
  %215 = icmp eq ptr %214, %19
  br i1 %215, label %230, label %216

216:                                              ; preds = %213
  %217 = load i64, ptr %214, align 8
  %218 = and i64 %217, 65535
  %219 = icmp eq i64 %218, 41
  br i1 %219, label %220, label %230

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.tree_exp, ptr %214, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !50
  %223 = getelementptr inbounds %struct.tree_common, ptr %222, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !50
  %225 = load i64, ptr %224, align 8
  %226 = trunc i64 %225 to i32
  %227 = and i32 %226, 65535
  %228 = add nsw i32 %227, -17
  %229 = icmp ult i32 %228, 2
  br i1 %229, label %213, label %230, !llvm.loop !90

230:                                              ; preds = %220, %213, %216
  %231 = load i64, ptr %214, align 8
  %232 = and i64 %231, 65535
  %233 = icmp eq i64 %232, 41
  br i1 %233, label %234, label %256

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.tree_exp, ptr %214, i64 0, i32 3
  %236 = load ptr, ptr %235, align 8, !tbaa !50
  %237 = getelementptr inbounds %struct.tree_common, ptr %236, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !50
  %239 = load i64, ptr %238, align 8
  %240 = and i64 %239, 65535
  %241 = icmp eq i64 %240, 16
  br i1 %241, label %242, label %256

242:                                              ; preds = %234
  %243 = getelementptr inbounds %struct.tree_exp, ptr %214, i64 1
  %244 = load ptr, ptr %243, align 8, !tbaa !50
  br label %245

245:                                              ; preds = %250, %242
  %246 = phi ptr [ %244, %242 ], [ %248, %250 ]
  %247 = getelementptr inbounds %struct.tree_common, ptr %246, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !50
  %249 = icmp eq ptr %248, null
  br i1 %249, label %254, label %250

250:                                              ; preds = %245
  %251 = load i64, ptr %248, align 8
  %252 = and i64 %251, 65535
  %253 = icmp eq i64 %252, 31
  br i1 %253, label %254, label %245, !llvm.loop !91

254:                                              ; preds = %245, %250
  %255 = phi ptr [ null, %250 ], [ %236, %245 ]
  br i1 %249, label %256, label %276

256:                                              ; preds = %254, %234, %230
  %257 = phi ptr [ %255, %254 ], [ %214, %230 ], [ %214, %234 ]
  br label %258

258:                                              ; preds = %256, %265
  %259 = phi ptr [ %267, %265 ], [ %257, %256 ]
  %260 = icmp eq ptr %259, %19
  br i1 %260, label %276, label %261

261:                                              ; preds = %258
  %262 = load i64, ptr %259, align 8
  %263 = and i64 %262, 65535
  %264 = icmp eq i64 %263, 41
  br i1 %264, label %265, label %276

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.tree_exp, ptr %259, i64 0, i32 3
  %267 = load ptr, ptr %266, align 8, !tbaa !50
  %268 = getelementptr inbounds %struct.tree_common, ptr %267, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !50
  %270 = load i64, ptr %269, align 8
  %271 = trunc i64 %270 to i32
  %272 = and i32 %271, 65535
  %273 = add nsw i32 %272, -17
  %274 = icmp ult i32 %273, 2
  br i1 %274, label %258, label %276, !llvm.loop !92

275:                                              ; preds = %166
  br label %276

276:                                              ; preds = %265, %261, %258, %166, %254, %207, %166, %200, %275, %203
  %277 = phi ptr [ %19, %275 ], [ %255, %254 ], [ %202, %200 ], [ %206, %203 ], [ null, %166 ], [ null, %207 ], [ null, %166 ], [ %19, %258 ], [ null, %261 ], [ null, %265 ]
  %278 = icmp ne ptr %277, null
  %279 = icmp ne ptr %277, %19
  %280 = and i1 %278, %279
  br i1 %280, label %166, label %281, !llvm.loop !93

281:                                              ; preds = %276, %162
  %282 = phi ptr [ %139, %162 ], [ %277, %276 ]
  %283 = icmp eq ptr %282, %19
  %284 = select i1 %283, ptr %19, ptr %139
  br label %285

285:                                              ; preds = %156, %138, %116, %145, %150, %281, %158
  %286 = phi ptr [ %284, %281 ], [ %139, %158 ], [ %19, %150 ], [ %19, %145 ], [ %19, %116 ], [ %19, %138 ], [ %139, %156 ]
  %287 = icmp ne ptr %286, %19
  br i1 %287, label %288, label %293

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.tree_common, ptr %286, i64 0, i32 2
  %290 = load ptr, ptr %289, align 8, !tbaa !50
  %291 = getelementptr inbounds %struct.tree_type, ptr %290, i64 0, i32 3
  %292 = load ptr, ptr %291, align 8, !tbaa !50
  br label %299

293:                                              ; preds = %285
  %294 = icmp eq ptr %113, null
  br i1 %294, label %295, label %299

295:                                              ; preds = %293
  %296 = sext i32 %2 to i64
  %297 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %296
  %298 = load i64, ptr %297, align 8, !tbaa !58
  br label %346

299:                                              ; preds = %293, %288
  %300 = phi ptr [ %292, %288 ], [ %113, %293 ]
  %301 = load ptr, ptr %9, align 8, !tbaa !50
  %302 = tail call fastcc ptr @compute_object_offset(ptr noundef %301, ptr noundef %286)
  %303 = load ptr, ptr @global_trees, align 16, !tbaa !39
  %304 = icmp eq ptr %302, %303
  br i1 %304, label %316, label %305

305:                                              ; preds = %299
  %306 = load i64, ptr %302, align 8
  %307 = and i64 %306, 65535
  %308 = icmp eq i64 %307, 23
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = tail call i32 @tree_int_cst_lt(ptr noundef %300, ptr noundef nonnull %302) #16
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %314, label %312

312:                                              ; preds = %309
  %313 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !39
  br label %316

314:                                              ; preds = %309, %305
  %315 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %300, ptr noundef nonnull %302) #16
  br label %316

316:                                              ; preds = %312, %314, %299
  %317 = phi ptr [ %313, %312 ], [ %315, %314 ], [ %302, %299 ]
  %318 = icmp ne ptr %113, null
  %319 = select i1 %287, i1 %318, i1 false
  br i1 %319, label %320, label %346

320:                                              ; preds = %316
  %321 = load i64, ptr %19, align 8
  %322 = and i64 %321, 65535
  %323 = icmp ne i64 %322, 47
  %324 = load ptr, ptr @global_trees, align 16
  %325 = icmp eq ptr %317, %324
  %326 = select i1 %323, i1 true, i1 %325
  br i1 %326, label %346, label %327

327:                                              ; preds = %320
  %328 = load ptr, ptr %9, align 8, !tbaa !50
  %329 = tail call fastcc ptr @compute_object_offset(ptr noundef %328, ptr noundef nonnull %19)
  %330 = load ptr, ptr @global_trees, align 16, !tbaa !39
  %331 = icmp eq ptr %329, %330
  br i1 %331, label %346, label %332

332:                                              ; preds = %327
  %333 = load i64, ptr %329, align 8
  %334 = and i64 %333, 65535
  %335 = icmp eq i64 %334, 23
  br i1 %335, label %336, label %341

336:                                              ; preds = %332
  %337 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %113, ptr noundef nonnull %329) #16
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %341, label %339

339:                                              ; preds = %336
  %340 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !39
  br label %343

341:                                              ; preds = %336, %332
  %342 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %113, ptr noundef nonnull %329) #16
  br label %343

343:                                              ; preds = %341, %339
  %344 = phi ptr [ %340, %339 ], [ %342, %341 ]
  %345 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 80, ptr noundef %317, ptr noundef %344) #16
  br label %346

346:                                              ; preds = %316, %320, %343, %327, %295
  %347 = phi ptr [ undef, %295 ], [ %317, %320 ], [ %317, %316 ], [ %345, %343 ], [ %317, %327 ]
  %348 = phi i1 [ false, %295 ], [ true, %320 ], [ true, %316 ], [ true, %343 ], [ true, %327 ]
  %349 = phi i64 [ %298, %295 ], [ undef, %320 ], [ undef, %316 ], [ undef, %343 ], [ undef, %327 ]
  br i1 %348, label %356, label %366

350:                                              ; preds = %112
  %351 = icmp eq ptr %113, null
  br i1 %351, label %352, label %356

352:                                              ; preds = %350
  %353 = sext i32 %2 to i64
  %354 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %353
  %355 = load i64, ptr %354, align 8, !tbaa !58
  br label %366

356:                                              ; preds = %350, %346
  %357 = phi ptr [ %347, %346 ], [ %113, %350 ]
  %358 = tail call i32 @host_integerp(ptr noundef %357, i32 noundef 1) #16
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %362, label %360

360:                                              ; preds = %356
  %361 = tail call i64 @tree_low_cst(ptr noundef %357, i32 noundef 1) #16
  br label %366

362:                                              ; preds = %356
  %363 = sext i32 %2 to i64
  %364 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %363
  %365 = load i64, ptr %364, align 8, !tbaa !58
  br label %366

366:                                              ; preds = %346, %362, %360, %352, %108
  %367 = phi i64 [ %361, %360 ], [ %365, %362 ], [ %349, %346 ], [ %355, %352 ], [ %111, %108 ]
  ret i64 %367
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @collect_object_sizes_for(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !38 {
  %3 = load i32, ptr %0, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds [4 x ptr], ptr @computed, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %5) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %378

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !63
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = tail call i32 @bitmap_bit_p(ptr noundef %17, i32 noundef %5) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !59
  %22 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %21, i32 noundef %5) #16
  %23 = shl i32 %3, 30
  %24 = ashr i32 %23, 31
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %6
  %27 = load ptr, ptr %26, align 8, !tbaa !39
  %28 = zext i32 %5 to i64
  %29 = getelementptr inbounds i64, ptr %27, i64 %28
  store i64 %25, ptr %29, align 8, !tbaa !58
  br label %46

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !61
  %33 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %32, i32 noundef %5) #16
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %35 = icmp eq ptr %34, null
  br i1 %35, label %378, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %378, label %40

40:                                               ; preds = %36
  %41 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 27, i64 1, ptr nonnull %34)
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %43 = load i32, ptr @dump_flags, align 4, !tbaa !54
  tail call void @print_generic_expr(ptr noundef %42, ptr noundef %1, i32 noundef %43) #16
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %45 = tail call i32 @fputc(i32 10, ptr %44)
  br label %378

46:                                               ; preds = %20, %11
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 27, i64 1, ptr nonnull %47)
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %56 = load i32, ptr @dump_flags, align 4, !tbaa !54
  tail call void @print_generic_expr(ptr noundef %55, ptr noundef %1, i32 noundef %56) #16
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %58 = tail call i32 @fputc(i32 10, ptr %57)
  br label %59

59:                                               ; preds = %53, %49, %46
  %60 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !50
  %62 = load i32, ptr %61, align 8
  %63 = trunc i32 %62 to i8
  switch i8 %63, label %343 [
    i8 6, label %73
    i8 8, label %271
    i8 7, label %291
    i8 18, label %298
    i8 16, label %64
  ]

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.gimple_statement_phi, ptr %61, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !50
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %344, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.gimple_statement_phi, ptr %61, i64 0, i32 1
  %70 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %6
  %71 = zext i32 %5 to i64
  %72 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %6
  br label %315

73:                                               ; preds = %59
  %74 = lshr i32 %62, 16
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !50
  %78 = icmp eq i8 %77, 3
  br i1 %78, label %79, label %98

79:                                               ; preds = %73
  %80 = and i32 %62, 255
  %81 = add nsw i32 %80, -1
  %82 = icmp ult i32 %81, 9
  tail call void @llvm.assume(i1 %82)
  %83 = zext nneg i32 %80 to i64
  %84 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !54
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %86
  %88 = load i64, ptr %87, align 8, !tbaa !58
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %91

91:                                               ; preds = %90, %79
  %92 = getelementptr inbounds i8, ptr %61, i64 %88
  %93 = getelementptr inbounds ptr, ptr %92, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !39
  %95 = load i64, ptr %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = and i32 %96, 65535
  br label %98

98:                                               ; preds = %73, %91
  %99 = phi i32 [ %97, %91 ], [ %74, %73 ]
  %100 = icmp eq i32 %99, 66
  br i1 %100, label %101, label %229

101:                                              ; preds = %98
  %102 = load i32, ptr %0, align 8, !tbaa !62
  %103 = load i32, ptr %4, align 8, !tbaa !50
  %104 = load i32, ptr %61, align 8
  %105 = trunc i32 %104 to i8
  switch i8 %105, label %108 [
    i8 6, label %106
    i8 1, label %106
    i8 8, label %109
  ]

106:                                              ; preds = %101, %101
  %107 = lshr i32 %104, 16
  br label %109

108:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1446, ptr noundef nonnull @.str.1) #16
  br label %109

109:                                              ; preds = %108, %106, %101
  %110 = phi i32 [ %107, %106 ], [ 0, %108 ], [ 59, %101 ]
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !50
  %114 = icmp eq i8 %113, 3
  br i1 %114, label %115, label %135

115:                                              ; preds = %109
  %116 = load i32, ptr %61, align 8
  %117 = and i32 %116, 255
  %118 = add nsw i32 %117, -1
  %119 = icmp ult i32 %118, 9
  tail call void @llvm.assume(i1 %119)
  %120 = zext nneg i32 %117 to i64
  %121 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !54
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %123
  %125 = load i64, ptr %124, align 8, !tbaa !58
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %128

128:                                              ; preds = %127, %115
  %129 = getelementptr inbounds i8, ptr %61, i64 %125
  %130 = getelementptr inbounds ptr, ptr %129, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !39
  %132 = load i64, ptr %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = and i32 %133, 65535
  br label %135

135:                                              ; preds = %109, %128
  %136 = phi i32 [ %134, %128 ], [ %110, %109 ]
  %137 = icmp eq i32 %136, 66
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 748, ptr noundef nonnull @.str.1) #16
  br label %139

139:                                              ; preds = %138, %135
  %140 = load i32, ptr %61, align 8
  %141 = and i32 %140, 255
  %142 = add nsw i32 %141, -10
  %143 = icmp ult i32 %142, -9
  br i1 %143, label %157, label %144

144:                                              ; preds = %139
  %145 = zext nneg i32 %141 to i64
  %146 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !54
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %148
  %150 = load i64, ptr %149, align 8, !tbaa !58
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %153

153:                                              ; preds = %152, %144
  %154 = getelementptr inbounds i8, ptr %61, i64 %150
  %155 = getelementptr inbounds ptr, ptr %154, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !39
  br label %157

157:                                              ; preds = %139, %153
  %158 = phi ptr [ %156, %153 ], [ null, %139 ]
  %159 = getelementptr inbounds %struct.gimple_statement_base, ptr %61, i64 0, i32 3
  %160 = load i32, ptr %159, align 4, !tbaa !50
  %161 = icmp ugt i32 %160, 2
  br i1 %161, label %162, label %180

162:                                              ; preds = %157
  %163 = load i32, ptr %61, align 8
  %164 = and i32 %163, 255
  %165 = add nsw i32 %164, -10
  %166 = icmp ult i32 %165, -9
  br i1 %166, label %180, label %167

167:                                              ; preds = %162
  %168 = zext nneg i32 %164 to i64
  %169 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !54
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %171
  %173 = load i64, ptr %172, align 8, !tbaa !58
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %176

176:                                              ; preds = %175, %167
  %177 = getelementptr inbounds i8, ptr %61, i64 %173
  %178 = getelementptr inbounds ptr, ptr %177, i64 2
  %179 = load ptr, ptr %178, align 8, !tbaa !39
  br label %180

180:                                              ; preds = %157, %162, %176
  %181 = phi ptr [ null, %157 ], [ %179, %176 ], [ null, %162 ]
  %182 = sext i32 %102 to i64
  %183 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !39
  %185 = zext i32 %103 to i64
  %186 = getelementptr inbounds i64, ptr %184, i64 %185
  %187 = load i64, ptr %186, align 8, !tbaa !58
  %188 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %182
  %189 = load i64, ptr %188, align 8, !tbaa !58
  %190 = icmp eq i64 %187, %189
  br i1 %190, label %344, label %191

191:                                              ; preds = %180
  %192 = load i64, ptr %181, align 8
  %193 = and i64 %192, 65535
  %194 = icmp eq i64 %193, 23
  br i1 %194, label %195, label %216

195:                                              ; preds = %191
  %196 = load i64, ptr %158, align 8
  %197 = trunc i64 %196 to i16
  switch i16 %197, label %216 [
    i16 141, label %198
    i16 121, label %198
  ]

198:                                              ; preds = %195, %195
  %199 = tail call i32 @host_integerp(ptr noundef nonnull %181, i32 noundef 1) #16
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %216, label %201

201:                                              ; preds = %198
  %202 = load i64, ptr %158, align 8
  %203 = and i64 %202, 65535
  %204 = icmp eq i64 %203, 141
  %205 = tail call i64 @tree_low_cst(ptr noundef nonnull %181, i32 noundef 1) #16
  br i1 %204, label %206, label %208

206:                                              ; preds = %201
  %207 = tail call fastcc zeroext i8 @merge_object_sizes(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %158, i64 noundef %205)
  br label %344

208:                                              ; preds = %201
  %209 = tail call fastcc i64 @addr_object_size(ptr noundef nonnull %0, ptr noundef nonnull %158, i32 noundef %102)
  %210 = icmp eq i64 %209, %189
  br i1 %210, label %216, label %211

211:                                              ; preds = %208
  %212 = load i64, ptr @offset_limit, align 8, !tbaa !58
  %213 = icmp ugt i64 %205, %212
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = tail call i64 @llvm.usub.sat.i64(i64 %209, i64 %205)
  br label %216

216:                                              ; preds = %191, %195, %198, %214, %211, %208
  %217 = phi i64 [ %209, %208 ], [ %189, %211 ], [ %215, %214 ], [ %189, %198 ], [ %189, %195 ], [ %189, %191 ]
  %218 = and i32 %102, 2
  %219 = icmp eq i32 %218, 0
  %220 = load ptr, ptr %183, align 8, !tbaa !39
  %221 = getelementptr inbounds i64, ptr %220, i64 %185
  %222 = load i64, ptr %221, align 8, !tbaa !58
  br i1 %219, label %223, label %226

223:                                              ; preds = %216
  %224 = icmp ult i64 %222, %217
  br i1 %224, label %225, label %344

225:                                              ; preds = %223
  store i64 %217, ptr %221, align 8, !tbaa !58
  br label %344

226:                                              ; preds = %216
  %227 = icmp ugt i64 %222, %217
  br i1 %227, label %228, label %344

228:                                              ; preds = %226
  store i64 %217, ptr %221, align 8, !tbaa !58
  br label %344

229:                                              ; preds = %98
  %230 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %61) #16
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = tail call zeroext i8 @gimple_assign_unary_nop_p(ptr noundef nonnull %61) #16
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %270, label %235

235:                                              ; preds = %232, %229
  %236 = load i32, ptr %61, align 8
  %237 = and i32 %236, 255
  %238 = add nsw i32 %237, -10
  %239 = icmp ult i32 %238, -9
  br i1 %239, label %253, label %240

240:                                              ; preds = %235
  %241 = zext nneg i32 %237 to i64
  %242 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !54
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %244
  %246 = load i64, ptr %245, align 8, !tbaa !58
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %240
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %249

249:                                              ; preds = %248, %240
  %250 = getelementptr inbounds i8, ptr %61, i64 %246
  %251 = getelementptr inbounds ptr, ptr %250, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !39
  br label %253

253:                                              ; preds = %235, %249
  %254 = phi ptr [ %252, %249 ], [ null, %235 ]
  %255 = load i64, ptr %254, align 8
  %256 = and i64 %255, 65535
  %257 = trunc i64 %255 to i16
  switch i16 %257, label %269 [
    i16 141, label %258
    i16 56, label %267
  ]

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.tree_common, ptr %254, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !50
  %261 = load i64, ptr %260, align 8
  %262 = trunc i64 %261 to i16
  switch i16 %262, label %265 [
    i16 10, label %263
    i16 12, label %263
  ]

263:                                              ; preds = %258, %258
  %264 = tail call fastcc zeroext i8 @merge_object_sizes(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %254, i64 noundef 0)
  br label %344

265:                                              ; preds = %258
  %266 = icmp eq i64 %256, 56
  br i1 %266, label %267, label %269

267:                                              ; preds = %253, %265
  %268 = tail call fastcc zeroext i8 @cond_expr_object_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %254)
  br label %344

269:                                              ; preds = %253, %265
  tail call fastcc void @expr_object_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %254)
  br label %344

270:                                              ; preds = %232
  tail call fastcc void @unknown_object_size(ptr noundef nonnull %0, ptr noundef %1)
  br label %344

271:                                              ; preds = %59
  %272 = tail call fastcc ptr @pass_through_call(ptr noundef nonnull %61)
  %273 = icmp eq ptr %272, null
  br i1 %273, label %290, label %274

274:                                              ; preds = %271
  %275 = load i64, ptr %272, align 8
  %276 = and i64 %275, 65535
  %277 = trunc i64 %275 to i16
  switch i16 %277, label %289 [
    i16 141, label %278
    i16 56, label %287
  ]

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.tree_common, ptr %272, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !50
  %281 = load i64, ptr %280, align 8
  %282 = trunc i64 %281 to i16
  switch i16 %282, label %285 [
    i16 10, label %283
    i16 12, label %283
  ]

283:                                              ; preds = %278, %278
  %284 = tail call fastcc zeroext i8 @merge_object_sizes(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %272, i64 noundef 0)
  br label %344

285:                                              ; preds = %278
  %286 = icmp eq i64 %276, 56
  br i1 %286, label %287, label %289

287:                                              ; preds = %274, %285
  %288 = tail call fastcc zeroext i8 @cond_expr_object_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %272)
  br label %344

289:                                              ; preds = %274, %285
  tail call fastcc void @expr_object_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %272)
  br label %344

290:                                              ; preds = %271
  tail call fastcc void @call_object_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %61)
  br label %344

291:                                              ; preds = %59
  %292 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %6
  %293 = load i64, ptr %292, align 8, !tbaa !58
  %294 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %6
  %295 = load ptr, ptr %294, align 8, !tbaa !39
  %296 = zext i32 %5 to i64
  %297 = getelementptr inbounds i64, ptr %295, i64 %296
  store i64 %293, ptr %297, align 8, !tbaa !58
  br label %344

298:                                              ; preds = %59
  %299 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !50
  %301 = load i64, ptr %300, align 8
  %302 = and i64 %301, 65535
  %303 = icmp eq i64 %302, 34
  br i1 %303, label %309, label %304

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.tree_decl_common, ptr %300, i64 0, i32 5
  %306 = load ptr, ptr %305, align 8, !tbaa !50
  %307 = icmp eq ptr %306, null
  br i1 %307, label %309, label %308

308:                                              ; preds = %304
  tail call fastcc void @expr_object_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %306)
  br label %344

309:                                              ; preds = %304, %298
  tail call fastcc void @expr_object_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %300)
  br label %344

310:                                              ; preds = %341
  %311 = add nuw nsw i64 %316, 1
  %312 = load i32, ptr %65, align 4, !tbaa !50
  %313 = zext i32 %312 to i64
  %314 = icmp ult i64 %311, %313
  br i1 %314, label %315, label %344, !llvm.loop !94

315:                                              ; preds = %68, %310
  %316 = phi i64 [ 0, %68 ], [ %311, %310 ]
  %317 = phi i8 [ 0, %68 ], [ %342, %310 ]
  %318 = load i32, ptr %69, align 8, !tbaa !50
  %319 = zext i32 %318 to i64
  %320 = icmp ugt i64 %316, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %315
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 3103, ptr noundef nonnull @.str.1) #16
  br label %322

322:                                              ; preds = %315, %321
  %323 = getelementptr inbounds %struct.gimple_statement_phi, ptr %61, i64 0, i32 4, i64 %316, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !95
  %325 = load ptr, ptr %70, align 8, !tbaa !39
  %326 = getelementptr inbounds i64, ptr %325, i64 %71
  %327 = load i64, ptr %326, align 8, !tbaa !58
  %328 = load i64, ptr %72, align 8, !tbaa !58
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %341, label %330

330:                                              ; preds = %322
  %331 = load i64, ptr %324, align 8
  %332 = and i64 %331, 65535
  %333 = icmp eq i64 %332, 141
  br i1 %333, label %334, label %337

334:                                              ; preds = %330
  %335 = tail call fastcc zeroext i8 @merge_object_sizes(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %324, i64 noundef 0)
  %336 = or i8 %335, %317
  br label %341

337:                                              ; preds = %330
  %338 = load i32, ptr %12, align 8, !tbaa !63
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %337
  tail call fastcc void @expr_object_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %324)
  br label %341

341:                                              ; preds = %334, %340, %337, %322
  %342 = phi i8 [ %317, %322 ], [ %317, %337 ], [ %317, %340 ], [ %336, %334 ]
  br i1 %329, label %344, label %310

343:                                              ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 974, ptr noundef nonnull @.str.1) #16
  br label %344

344:                                              ; preds = %341, %310, %64, %228, %226, %225, %223, %206, %180, %308, %309, %290, %287, %289, %283, %263, %269, %267, %270, %343, %291
  %345 = phi i8 [ 0, %343 ], [ 0, %291 ], [ 0, %270 ], [ %264, %263 ], [ %268, %267 ], [ 0, %269 ], [ %284, %283 ], [ %288, %287 ], [ 0, %289 ], [ 0, %290 ], [ 0, %309 ], [ 0, %308 ], [ %207, %206 ], [ 0, %180 ], [ 0, %226 ], [ 0, %228 ], [ 0, %223 ], [ 0, %225 ], [ 0, %64 ], [ %342, %310 ], [ %342, %341 ]
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %356, label %347

347:                                              ; preds = %344
  %348 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %6
  %349 = load ptr, ptr %348, align 8, !tbaa !39
  %350 = zext i32 %5 to i64
  %351 = getelementptr inbounds i64, ptr %349, i64 %350
  %352 = load i64, ptr %351, align 8, !tbaa !58
  %353 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %6
  %354 = load i64, ptr %353, align 8, !tbaa !58
  %355 = icmp eq i64 %352, %354
  br i1 %355, label %356, label %362

356:                                              ; preds = %347, %344
  %357 = load ptr, ptr %7, align 8, !tbaa !39
  %358 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %357, i32 noundef %5) #16
  %359 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !61
  %361 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %360, i32 noundef %5) #16
  br label %378

362:                                              ; preds = %347
  %363 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 2
  %364 = load ptr, ptr %363, align 8, !tbaa !61
  %365 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %364, i32 noundef %5) #16
  %366 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %367 = icmp eq ptr %366, null
  br i1 %367, label %378, label %368

368:                                              ; preds = %362
  %369 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %370 = and i32 %369, 8
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %378, label %372

372:                                              ; preds = %368
  %373 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 18, i64 1, ptr nonnull %366)
  %374 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %375 = load i32, ptr @dump_flags, align 4, !tbaa !54
  tail call void @print_generic_expr(ptr noundef %374, ptr noundef %1, i32 noundef %375) #16
  %376 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %377 = tail call i32 @fputc(i32 10, ptr %376)
  br label %378

378:                                              ; preds = %356, %372, %368, %362, %30, %36, %40, %2
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @init_object_sizes() local_unnamed_addr #9 !prof !38 {
  %1 = load ptr, ptr @object_sizes, align 16, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %24

3:                                                ; preds = %0, %13
  %4 = phi i64 [ %21, %13 ], [ 0, %0 ]
  %5 = load ptr, ptr @cfun, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, ptr %9, align 8, !tbaa !73
  br label %13

13:                                               ; preds = %3, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %3 ]
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = tail call ptr @xmalloc(i64 noundef %16) #16
  %18 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %4
  store ptr %17, ptr %18, align 8, !tbaa !39
  %19 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %20 = getelementptr inbounds [4 x ptr], ptr @computed, i64 0, i64 %4
  store ptr %19, ptr %20, align 8, !tbaa !39
  %21 = add nuw nsw i64 %4, 1
  %22 = icmp eq i64 %21, 4
  br i1 %22, label %23, label %3, !llvm.loop !98

23:                                               ; preds = %13
  tail call fastcc void @init_offset_limit()
  br label %24

24:                                               ; preds = %0, %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fini_object_sizes() local_unnamed_addr #11 !prof !38 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %7, %1 ]
  %3 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  tail call void @free(ptr noundef %4)
  %5 = getelementptr inbounds [4 x ptr], ptr @computed, i64 0, i64 %2
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  tail call void @bitmap_obstack_free(ptr noundef %6) #16
  store ptr null, ptr %5, align 8, !tbaa !39
  store ptr null, ptr %3, align 8, !tbaa !39
  %7 = add nuw nsw i64 %2, 1
  %8 = icmp eq i64 %7, 4
  br i1 %8, label %9, label %1, !prof !99, !llvm.loop !100

9:                                                ; preds = %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @compute_object_sizes() #11 !prof !101 !PGOFuncName !102 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !39
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %197, label %11, !prof !109

11:                                               ; preds = %0
  %12 = getelementptr inbounds i8, ptr %1, i64 8
  %13 = getelementptr inbounds i8, ptr %1, i64 16
  br label %14

14:                                               ; preds = %11, %188
  %15 = phi ptr [ %7, %11 ], [ %190, %188 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #16
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !110, !noalias !111
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26, !prof !114

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !50, !noalias !111
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !115

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 8, !tbaa !116, !noalias !111
  br label %26

26:                                               ; preds = %24, %20, %14
  %27 = phi ptr [ %25, %24 ], [ null, %20 ], [ null, %14 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !115

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 8, !tbaa !118, !noalias !111
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi ptr [ %30, %29 ], [ null, %26 ]
  store ptr %32, ptr %1, align 8, !tbaa.struct !120
  store ptr %27, ptr %12, align 8, !tbaa.struct !121
  store ptr %15, ptr %13, align 8, !tbaa.struct !122
  %33 = icmp eq ptr %32, null
  br i1 %33, label %188, label %34, !prof !123

34:                                               ; preds = %31, %183
  %35 = phi ptr [ %186, %183 ], [ %32, %31 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !124
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %38, 8
  br i1 %39, label %40, label %183, !prof !126

40:                                               ; preds = %34
  %41 = zext nneg i32 %38 to i64
  %42 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !54
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !58
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49, !prof !127

48:                                               ; preds = %40
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %49

49:                                               ; preds = %48, %40
  %50 = getelementptr inbounds i8, ptr %36, i64 %46
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !39
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 121
  br i1 %55, label %56, label %59, !prof !128

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.tree_exp, ptr %52, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !50
  br label %59

59:                                               ; preds = %49, %56
  %60 = phi ptr [ %58, %56 ], [ null, %49 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %183, label %62, !prof !127

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.tree_function_decl, ptr %60, i64 0, i32 5
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 8191
  %66 = icmp eq i32 %65, 6672
  br i1 %66, label %67, label %183, !prof !127

67:                                               ; preds = %62
  call void @init_object_sizes()
  %68 = call ptr @fold_call_stmt(ptr noundef nonnull %36, i8 noundef zeroext 0) #16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %154

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.gimple_statement_base, ptr %36, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !50
  %73 = icmp eq i32 %72, 5
  br i1 %73, label %74, label %151

74:                                               ; preds = %70
  %75 = load i32, ptr %36, align 8
  %76 = and i32 %75, 255
  %77 = add nsw i32 %76, -1
  %78 = icmp ult i32 %77, 9
  call void @llvm.assume(i1 %78)
  %79 = zext nneg i32 %76 to i64
  %80 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !54
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %82
  %84 = load i64, ptr %83, align 8, !tbaa !58
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %87

87:                                               ; preds = %86, %74
  %88 = getelementptr inbounds i8, ptr %36, i64 %84
  %89 = getelementptr inbounds ptr, ptr %88, i64 3
  %90 = load ptr, ptr %89, align 8, !tbaa !39
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !50
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 10
  br i1 %95, label %118, label %96

96:                                               ; preds = %87
  %97 = load i32, ptr %36, align 8
  %98 = and i32 %97, 255
  %99 = add nsw i32 %98, -1
  %100 = icmp ult i32 %99, 9
  call void @llvm.assume(i1 %100)
  %101 = zext nneg i32 %98 to i64
  %102 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !54
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !58
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %109

109:                                              ; preds = %108, %96
  %110 = getelementptr inbounds i8, ptr %36, i64 %106
  %111 = getelementptr inbounds ptr, ptr %110, i64 3
  %112 = load ptr, ptr %111, align 8, !tbaa !39
  %113 = getelementptr inbounds %struct.tree_common, ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !50
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 12
  br i1 %117, label %118, label %151

118:                                              ; preds = %109, %87
  %119 = load i32, ptr %36, align 8
  %120 = and i32 %119, 255
  %121 = add nsw i32 %120, -10
  %122 = icmp ult i32 %121, -9
  br i1 %122, label %136, label %123

123:                                              ; preds = %118
  %124 = zext nneg i32 %120 to i64
  %125 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !54
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !58
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %132

132:                                              ; preds = %131, %123
  %133 = getelementptr inbounds i8, ptr %36, i64 %129
  %134 = getelementptr inbounds ptr, ptr %133, i64 4
  %135 = load ptr, ptr %134, align 8, !tbaa !39
  br label %136

136:                                              ; preds = %118, %132
  %137 = phi ptr [ %135, %132 ], [ null, %118 ]
  %138 = call i32 @host_integerp(ptr noundef %137, i32 noundef 1) #16
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %136
  %141 = call i64 @tree_low_cst(ptr noundef %137, i32 noundef 1) #16
  %142 = icmp ult i64 %141, 2
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !39
  %145 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !39
  %146 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %144, ptr noundef %145) #16
  br label %151

147:                                              ; preds = %140
  %148 = icmp ult i64 %141, 4
  %149 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8
  %150 = select i1 %148, ptr %149, ptr null
  br label %151

151:                                              ; preds = %109, %147, %136, %143, %70
  %152 = phi ptr [ null, %70 ], [ null, %136 ], [ %146, %143 ], [ %150, %147 ], [ null, %109 ]
  %153 = icmp eq ptr %152, null
  br i1 %153, label %183, label %154

154:                                              ; preds = %151, %67
  %155 = phi ptr [ %68, %67 ], [ %152, %151 ]
  %156 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %157 = icmp eq ptr %156, null
  br i1 %157, label %166, label %158

158:                                              ; preds = %154
  %159 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %160 = and i32 %159, 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = call i64 @fwrite(ptr nonnull @.str.17, i64 13, i64 1, ptr nonnull %156)
  %164 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %165 = load i32, ptr @dump_flags, align 4, !tbaa !54
  call void @print_gimple_stmt(ptr noundef %164, ptr noundef nonnull %36, i32 noundef 0, i32 noundef %165) #16
  br label %166

166:                                              ; preds = %162, %158, %154
  %167 = call zeroext i8 @update_call_from_tree(ptr noundef nonnull %1, ptr noundef nonnull %155) #16
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1221, ptr noundef nonnull @.str.1) #16
  br label %170

170:                                              ; preds = %169, %166
  %171 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %172 = icmp eq ptr %171, null
  br i1 %172, label %183, label %173

173:                                              ; preds = %170
  %174 = load i32, ptr @dump_flags, align 4, !tbaa !54
  %175 = and i32 %174, 8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %173
  %178 = call i64 @fwrite(ptr nonnull @.str.18, i64 5, i64 1, ptr nonnull %171)
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %180 = load i32, ptr @dump_flags, align 4, !tbaa !54
  call void @print_gimple_stmt(ptr noundef %179, ptr noundef nonnull %36, i32 noundef 0, i32 noundef %180) #16
  %181 = load ptr, ptr @dump_file, align 8, !tbaa !39
  %182 = call i32 @fputc(i32 10, ptr %181)
  br label %183

183:                                              ; preds = %151, %170, %173, %177, %59, %62, %34
  %184 = load ptr, ptr %1, align 8, !tbaa !129
  %185 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %184, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !131
  store ptr %186, ptr %1, align 8, !tbaa !129
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %34, !prof !132, !llvm.loop !133

188:                                              ; preds = %183, %31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #16
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %190 = load ptr, ptr %189, align 8, !tbaa !106
  %191 = load ptr, ptr @cfun, align 8, !tbaa !39
  %192 = getelementptr inbounds %struct.function, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !103
  %194 = getelementptr inbounds %struct.control_flow_graph, ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !108
  %196 = icmp eq ptr %190, %195
  br i1 %196, label %197, label %14, !prof !134, !llvm.loop !135

197:                                              ; preds = %188, %0
  br label %198

198:                                              ; preds = %197, %198
  %199 = phi i64 [ %204, %198 ], [ 0, %197 ]
  %200 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !39
  call void @free(ptr noundef %201)
  %202 = getelementptr inbounds [4 x ptr], ptr @computed, i64 0, i64 %199
  %203 = load ptr, ptr %202, align 8, !tbaa !39
  call void @bitmap_obstack_free(ptr noundef %203) #16
  store ptr null, ptr %202, align 8, !tbaa !39
  store ptr null, ptr %200, align 8, !tbaa !39
  %204 = add nuw nsw i64 %199, 1
  %205 = icmp eq i64 %204, 4
  br i1 %205, label %206, label %198, !prof !99, !llvm.loop !100

206:                                              ; preds = %198
  ret i32 0
}

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @compute_object_offset(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !38 {
  br label %3

3:                                                ; preds = %28, %2
  %4 = phi ptr [ %0, %2 ], [ %30, %28 ]
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !39
  br label %78

8:                                                ; preds = %3
  %9 = load i64, ptr %4, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %71 [
    i16 41, label %11
    i16 43, label %28
    i16 116, label %28
    i16 113, label %28
    i16 118, label %28
    i16 117, label %28
    i16 44, label %31
    i16 45, label %42
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = tail call fastcc ptr @compute_object_offset(ptr noundef %13, ptr noundef %1)
  %15 = load ptr, ptr @global_trees, align 16, !tbaa !39
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %78, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.tree_field_decl, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.tree_field_decl, ptr %19, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = tail call i64 @tree_low_cst(ptr noundef %23, i32 noundef 1) #16
  %25 = sdiv i64 %24, 8
  %26 = tail call ptr @size_int_kind(i64 noundef %25, i32 noundef 0) #16
  %27 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %21, ptr noundef %26) #16
  br label %73

28:                                               ; preds = %8, %8, %8, %8, %8
  %29 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !50
  br label %3

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = tail call fastcc ptr @compute_object_offset(ptr noundef %33, ptr noundef %1)
  %35 = load ptr, ptr @global_trees, align 16, !tbaa !39
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %78, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  %40 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  br label %73

42:                                               ; preds = %8
  %43 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !50
  %45 = tail call fastcc ptr @compute_object_offset(ptr noundef %44, ptr noundef %1)
  %46 = load ptr, ptr @global_trees, align 16, !tbaa !39
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %78, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !50
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 23
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %50) #16
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !50
  %60 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %59, ptr noundef nonnull %50) #16
  br label %61

61:                                               ; preds = %57, %54, %48
  %62 = phi i32 [ 64, %57 ], [ 63, %54 ], [ 63, %48 ]
  %63 = phi ptr [ %60, %57 ], [ %50, %54 ], [ %50, %48 ]
  %64 = load ptr, ptr @sizetype_tab, align 16, !tbaa !39
  %65 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %64, ptr noundef %63) #16
  %66 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !50
  %68 = getelementptr inbounds %struct.tree_type, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !50
  %70 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %69, ptr noundef %65) #16
  br label %73

71:                                               ; preds = %8
  %72 = load ptr, ptr @global_trees, align 16, !tbaa !39
  br label %78

73:                                               ; preds = %61, %37, %17
  %74 = phi i32 [ %62, %61 ], [ 63, %37 ], [ 63, %17 ]
  %75 = phi ptr [ %45, %61 ], [ %34, %37 ], [ %14, %17 ]
  %76 = phi ptr [ %70, %61 ], [ %41, %37 ], [ %27, %17 ]
  %77 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef %74, ptr noundef %75, ptr noundef %76) #16
  br label %78

78:                                               ; preds = %42, %31, %11, %73, %71, %6
  %79 = phi ptr [ %7, %6 ], [ %72, %71 ], [ %77, %73 ], [ %14, %11 ], [ %34, %31 ], [ %45, %42 ]
  ret ptr %79
}

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_assign_unary_nop_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @merge_object_sizes(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i64 noundef %3) unnamed_addr #9 !prof !38 {
  %5 = load i32, ptr %0, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  %11 = zext i32 %7 to i64
  %12 = getelementptr inbounds i64, ptr %10, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %8
  %15 = load i64, ptr %14, align 8, !tbaa !58
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %52, label %17

17:                                               ; preds = %4
  %18 = load i64, ptr @offset_limit, align 8, !tbaa !58
  %19 = icmp ugt i64 %18, %3
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i64 %15, ptr %12, align 8, !tbaa !58
  br label %52

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !63
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call fastcc void @collect_object_sizes_for(ptr noundef nonnull %0, ptr noundef %2)
  br label %26

26:                                               ; preds = %25, %21
  %27 = load ptr, ptr %9, align 8, !tbaa !39
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !50
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, ptr %27, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !58
  %33 = icmp eq i64 %32, %15
  %34 = tail call i64 @llvm.usub.sat.i64(i64 %32, i64 %3)
  %35 = select i1 %33, i64 %32, i64 %34
  %36 = and i32 %5, 2
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds i64, ptr %27, i64 %11
  %39 = load i64, ptr %38, align 8, !tbaa !58
  br i1 %37, label %40, label %42

40:                                               ; preds = %26
  %41 = icmp ult i64 %39, %35
  br i1 %41, label %44, label %46

42:                                               ; preds = %26
  %43 = icmp ugt i64 %39, %35
  br i1 %43, label %44, label %46

44:                                               ; preds = %42, %40
  store i64 %35, ptr %38, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 4
  store i8 1, ptr %45, align 4, !tbaa !64
  br label %46

46:                                               ; preds = %44, %42, %40
  %47 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  %49 = load i32, ptr %28, align 8, !tbaa !50
  %50 = tail call i32 @bitmap_bit_p(ptr noundef %48, i32 noundef %49) #16
  %51 = trunc i32 %50 to i8
  br label %52

52:                                               ; preds = %4, %46, %20
  %53 = phi i8 [ 0, %20 ], [ %51, %46 ], [ 0, %4 ]
  ret i8 %53
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @cond_expr_object_size(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !38 {
  %4 = load i32, ptr %0, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 56
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 810, ptr noundef nonnull @.str.1) #16
  br label %11

11:                                               ; preds = %3, %10
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds i64, ptr %14, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !58
  %18 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %12
  %19 = load i64, ptr %18, align 8, !tbaa !58
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %41, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 141
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = tail call fastcc zeroext i8 @merge_object_sizes(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %23, i64 noundef 0)
  br label %32

31:                                               ; preds = %21
  tail call fastcc void @expr_object_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %23)
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i8 [ %30, %29 ], [ 0, %31 ]
  %34 = load i64, ptr %25, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = tail call fastcc zeroext i8 @merge_object_sizes(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %25, i64 noundef 0)
  %39 = or i8 %38, %33
  br label %41

40:                                               ; preds = %32
  tail call fastcc void @expr_object_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %25)
  br label %41

41:                                               ; preds = %37, %40, %11
  %42 = phi i8 [ 0, %11 ], [ %39, %37 ], [ %33, %40 ]
  ret i8 %42
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @expr_object_size(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !38 {
  %4 = load i32, ptr %0, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = zext i32 %6 to i64
  %11 = getelementptr inbounds i64, ptr %9, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !58
  %13 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %7
  %14 = load i64, ptr %13, align 8, !tbaa !58
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 603, ptr noundef nonnull @.str.1) #16
  br label %17

17:                                               ; preds = %3, %16
  %18 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !63
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 604, ptr noundef nonnull @.str.1) #16
  br label %22

22:                                               ; preds = %17, %21
  %23 = load i64, ptr %2, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 150
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %28, %26 ], [ %2, %22 ]
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 141
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i16
  switch i16 %38, label %40 [
    i16 10, label %39
    i16 12, label %39
  ]

39:                                               ; preds = %34, %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 611, ptr noundef nonnull @.str.1) #16
  br label %40

40:                                               ; preds = %34, %29, %39
  %41 = load i64, ptr %30, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 121
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = tail call fastcc i64 @addr_object_size(ptr noundef nonnull %0, ptr noundef nonnull %30, i32 noundef %4)
  br label %46

46:                                               ; preds = %40, %44
  %47 = phi i64 [ %45, %44 ], [ %14, %40 ]
  %48 = and i32 %4, 2
  %49 = icmp eq i32 %48, 0
  %50 = load ptr, ptr %8, align 8, !tbaa !39
  %51 = getelementptr inbounds i64, ptr %50, i64 %10
  %52 = load i64, ptr %51, align 8, !tbaa !58
  br i1 %49, label %53, label %55

53:                                               ; preds = %46
  %54 = icmp ult i64 %52, %47
  br i1 %54, label %57, label %58

55:                                               ; preds = %46
  %56 = icmp ugt i64 %52, %47
  br i1 %56, label %57, label %58

57:                                               ; preds = %55, %53
  store i64 %47, ptr %51, align 8, !tbaa !58
  br label %58

58:                                               ; preds = %57, %55, %53
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @unknown_object_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !38 {
  %3 = load i32, ptr %0, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds i64, ptr %8, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %6
  %13 = load i64, ptr %12, align 8, !tbaa !58
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 671, ptr noundef nonnull @.str.1) #16
  br label %16

16:                                               ; preds = %2, %15
  %17 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !63
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 672, ptr noundef nonnull @.str.1) #16
  br label %21

21:                                               ; preds = %16, %20
  %22 = and i32 %3, 2
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr %7, align 8, !tbaa !39
  %25 = getelementptr inbounds i64, ptr %24, i64 %9
  %26 = load i64, ptr %25, align 8, !tbaa !58
  br i1 %23, label %27, label %29

27:                                               ; preds = %21
  %28 = icmp ult i64 %26, %13
  br i1 %28, label %31, label %32

29:                                               ; preds = %21
  %30 = icmp ugt i64 %26, %13
  br i1 %30, label %31, label %32

31:                                               ; preds = %29, %27
  store i64 %13, ptr %25, align 8, !tbaa !58
  br label %32

32:                                               ; preds = %31, %29, %27
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @pass_through_call(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !38 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = add nsw i32 %3, -10
  %5 = icmp ult i32 %4, -9
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = zext nneg i32 %3 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !58
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %15

15:                                               ; preds = %14, %6
  %16 = getelementptr inbounds i8, ptr %0, i64 %12
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi ptr [ %18, %15 ], [ null, %1 ]
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 121
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !50
  br label %27

27:                                               ; preds = %19, %24
  %28 = phi ptr [ %26, %24 ], [ null, %19 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %59, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tree_function_decl, ptr %28, i64 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 6144
  %34 = icmp eq i32 %33, 6144
  br i1 %34, label %35, label %59

35:                                               ; preds = %30
  %36 = and i32 %32, 2047
  switch i32 %36, label %59 [
    i32 330, label %37
    i32 331, label %37
    i32 333, label %37
    i32 341, label %37
    i32 349, label %37
    i32 338, label %37
    i32 347, label %37
    i32 529, label %37
    i32 530, label %37
    i32 532, label %37
    i32 535, label %37
    i32 537, label %37
    i32 534, label %37
    i32 536, label %37
  ]

37:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35
  %38 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !50
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %59, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %0, align 8
  %43 = and i32 %42, 255
  %44 = add nsw i32 %43, -10
  %45 = icmp ult i32 %44, -9
  br i1 %45, label %59, label %46

46:                                               ; preds = %41
  %47 = zext nneg i32 %43 to i64
  %48 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !54
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !58
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %55

55:                                               ; preds = %54, %46
  %56 = getelementptr inbounds i8, ptr %0, i64 %52
  %57 = getelementptr inbounds ptr, ptr %56, i64 3
  %58 = load ptr, ptr %57, align 8, !tbaa !39
  br label %59

59:                                               ; preds = %35, %55, %41, %27, %30, %37
  %60 = phi ptr [ null, %37 ], [ null, %30 ], [ null, %27 ], [ %58, %55 ], [ null, %41 ], [ null, %35 ]
  ret ptr %60
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @call_object_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !38 {
  %4 = load i32, ptr %0, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 640, ptr noundef nonnull @.str.1) #16
  br label %11

11:                                               ; preds = %3, %10
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds i64, ptr %14, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !58
  %18 = getelementptr inbounds [4 x i64], ptr @unknown, i64 0, i64 %12
  %19 = load i64, ptr %18, align 8, !tbaa !58
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 643, ptr noundef nonnull @.str.1) #16
  br label %22

22:                                               ; preds = %11, %21
  %23 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !63
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 644, ptr noundef nonnull @.str.1) #16
  br label %27

27:                                               ; preds = %22, %26
  %28 = load i32, ptr %2, align 8
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 369, ptr noundef nonnull @.str.1) #16
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, ptr %2, align 8
  %34 = and i32 %33, 255
  %35 = add nsw i32 %34, -10
  %36 = icmp ult i32 %35, -9
  br i1 %36, label %50, label %37

37:                                               ; preds = %32
  %38 = zext nneg i32 %34 to i64
  %39 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !54
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !58
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %46

46:                                               ; preds = %45, %37
  %47 = getelementptr inbounds i8, ptr %2, i64 %43
  %48 = getelementptr inbounds ptr, ptr %47, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !39
  br label %50

50:                                               ; preds = %46, %32
  %51 = phi ptr [ %49, %46 ], [ null, %32 ]
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 121
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !50
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi ptr [ %57, %55 ], [ null, %50 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %233, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.tree_common, ptr %59, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !50
  %64 = getelementptr inbounds %struct.tree_type, ptr %63, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !50
  %66 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.16, ptr noundef %65) #16
  %67 = icmp eq ptr %66, null
  br i1 %67, label %89, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.tree_list, ptr %66, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !50
  %71 = icmp eq ptr %70, null
  br i1 %71, label %89, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.tree_list, ptr %70, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !50
  %75 = getelementptr inbounds %struct.tree_int_cst, ptr %74, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !50
  %77 = trunc i64 %76 to i32
  %78 = add i32 %77, -1
  %79 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !50
  %81 = icmp eq ptr %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.tree_list, ptr %80, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !50
  %85 = getelementptr inbounds %struct.tree_int_cst, ptr %84, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !50
  %87 = trunc i64 %86 to i32
  %88 = add i32 %87, -1
  br label %89

89:                                               ; preds = %82, %72, %68, %61
  %90 = phi i32 [ -1, %68 ], [ -1, %61 ], [ %78, %82 ], [ %78, %72 ]
  %91 = phi i32 [ -1, %68 ], [ -1, %61 ], [ %88, %82 ], [ -1, %72 ]
  %92 = getelementptr inbounds %struct.tree_function_decl, ptr %59, i64 0, i32 5
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 6144
  %95 = icmp eq i32 %94, 6144
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = and i32 %93, 2047
  switch i32 %97, label %100 [
    i32 422, label %98
    i32 491, label %99
    i32 415, label %99
  ]

98:                                               ; preds = %96
  br label %100

99:                                               ; preds = %96, %96
  br label %100

100:                                              ; preds = %99, %98, %96, %89
  %101 = phi i32 [ %90, %96 ], [ %90, %89 ], [ 0, %98 ], [ 0, %99 ]
  %102 = phi i32 [ %91, %96 ], [ %91, %89 ], [ 1, %98 ], [ %91, %99 ]
  %103 = icmp slt i32 %101, 0
  br i1 %103, label %233, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 3
  %106 = load i32, ptr %105, align 4, !tbaa !50
  %107 = add i32 %106, -3
  %108 = icmp slt i32 %101, %107
  br i1 %108, label %109, label %233

109:                                              ; preds = %104
  %110 = add nuw i32 %101, 3
  %111 = load i32, ptr %2, align 8
  %112 = and i32 %111, 255
  %113 = add nsw i32 %112, -1
  %114 = icmp ult i32 %113, 9
  tail call void @llvm.assume(i1 %114)
  %115 = zext nneg i32 %112 to i64
  %116 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !54
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !58
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %123

123:                                              ; preds = %122, %109
  %124 = getelementptr inbounds i8, ptr %2, i64 %120
  %125 = zext i32 %110 to i64
  %126 = getelementptr inbounds ptr, ptr %124, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !39
  %128 = load i64, ptr %127, align 8
  %129 = and i64 %128, 65535
  %130 = icmp eq i64 %129, 23
  br i1 %130, label %131, label %233

131:                                              ; preds = %123
  %132 = icmp sgt i32 %102, -1
  br i1 %132, label %133, label %203

133:                                              ; preds = %131
  %134 = load i32, ptr %105, align 4, !tbaa !50
  %135 = add i32 %134, -3
  %136 = icmp slt i32 %102, %135
  br i1 %136, label %137, label %233

137:                                              ; preds = %133
  %138 = add nuw i32 %102, 3
  %139 = load i32, ptr %2, align 8
  %140 = and i32 %139, 255
  %141 = add nsw i32 %140, -1
  %142 = icmp ult i32 %141, 9
  tail call void @llvm.assume(i1 %142)
  %143 = zext nneg i32 %140 to i64
  %144 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !54
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %146
  %148 = load i64, ptr %147, align 8, !tbaa !58
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %151

151:                                              ; preds = %150, %137
  %152 = getelementptr inbounds i8, ptr %2, i64 %148
  %153 = zext i32 %138 to i64
  %154 = getelementptr inbounds ptr, ptr %152, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !39
  %156 = load i64, ptr %155, align 8
  %157 = and i64 %156, 65535
  %158 = icmp eq i64 %157, 23
  br i1 %158, label %159, label %233

159:                                              ; preds = %151
  %160 = load ptr, ptr @sizetype_tab, align 16, !tbaa !39
  %161 = load i32, ptr %2, align 8
  %162 = and i32 %161, 255
  %163 = add nsw i32 %162, -10
  %164 = icmp ult i32 %163, -9
  br i1 %164, label %178, label %165

165:                                              ; preds = %159
  %166 = zext nneg i32 %162 to i64
  %167 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !54
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %169
  %171 = load i64, ptr %170, align 8, !tbaa !58
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %174

174:                                              ; preds = %173, %165
  %175 = getelementptr inbounds i8, ptr %2, i64 %171
  %176 = getelementptr inbounds ptr, ptr %175, i64 %125
  %177 = load ptr, ptr %176, align 8, !tbaa !39
  br label %178

178:                                              ; preds = %174, %159
  %179 = phi ptr [ %177, %174 ], [ null, %159 ]
  %180 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %160, ptr noundef %179) #16
  %181 = load ptr, ptr @sizetype_tab, align 16, !tbaa !39
  %182 = load i32, ptr %2, align 8
  %183 = and i32 %182, 255
  %184 = add nsw i32 %183, -10
  %185 = icmp ult i32 %184, -9
  br i1 %185, label %199, label %186

186:                                              ; preds = %178
  %187 = zext nneg i32 %183 to i64
  %188 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !54
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %190
  %192 = load i64, ptr %191, align 8, !tbaa !58
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %195

195:                                              ; preds = %194, %186
  %196 = getelementptr inbounds i8, ptr %2, i64 %192
  %197 = getelementptr inbounds ptr, ptr %196, i64 %153
  %198 = load ptr, ptr %197, align 8, !tbaa !39
  br label %199

199:                                              ; preds = %195, %178
  %200 = phi ptr [ %198, %195 ], [ null, %178 ]
  %201 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %181, ptr noundef %200) #16
  %202 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %180, ptr noundef %201) #16
  br label %225

203:                                              ; preds = %131
  %204 = load ptr, ptr @sizetype_tab, align 16, !tbaa !39
  %205 = load i32, ptr %2, align 8
  %206 = and i32 %205, 255
  %207 = add nsw i32 %206, -10
  %208 = icmp ult i32 %207, -9
  br i1 %208, label %222, label %209

209:                                              ; preds = %203
  %210 = zext nneg i32 %206 to i64
  %211 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %210
  %212 = load i32, ptr %211, align 4, !tbaa !54
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %213
  %215 = load i64, ptr %214, align 8, !tbaa !58
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %209
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %218

218:                                              ; preds = %217, %209
  %219 = getelementptr inbounds i8, ptr %2, i64 %215
  %220 = getelementptr inbounds ptr, ptr %219, i64 %125
  %221 = load ptr, ptr %220, align 8, !tbaa !39
  br label %222

222:                                              ; preds = %218, %203
  %223 = phi ptr [ %221, %218 ], [ null, %203 ]
  %224 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %204, ptr noundef %223) #16
  br label %225

225:                                              ; preds = %222, %199
  %226 = phi ptr [ %202, %199 ], [ %224, %222 ]
  %227 = icmp eq ptr %226, null
  br i1 %227, label %233, label %228

228:                                              ; preds = %225
  %229 = tail call i32 @host_integerp(ptr noundef nonnull %226, i32 noundef 1) #16
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %228
  %232 = tail call i64 @tree_low_cst(ptr noundef nonnull %226, i32 noundef 1) #16
  br label %233

233:                                              ; preds = %225, %228, %100, %104, %123, %133, %151, %58, %231
  %234 = phi i64 [ %232, %231 ], [ %19, %58 ], [ %19, %151 ], [ %19, %133 ], [ %19, %123 ], [ %19, %104 ], [ %19, %100 ], [ %19, %228 ], [ %19, %225 ]
  %235 = and i32 %4, 2
  %236 = icmp eq i32 %235, 0
  %237 = load ptr, ptr %13, align 8, !tbaa !39
  %238 = getelementptr inbounds i64, ptr %237, i64 %15
  %239 = load i64, ptr %238, align 8, !tbaa !58
  br i1 %236, label %240, label %242

240:                                              ; preds = %233
  %241 = icmp ult i64 %239, %234
  br i1 %241, label %244, label %245

242:                                              ; preds = %233
  %243 = icmp ugt i64 %239, %234
  br i1 %243, label %244, label %245

244:                                              ; preds = %242, %240
  store i64 %234, ptr %238, align 8, !tbaa !58
  br label %245

245:                                              ; preds = %244, %242, %240
  ret void
}

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_for_plus_in_loops_1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !38 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !54
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %3
  %15 = icmp eq i32 %12, %2
  br i1 %15, label %230, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 6
  %20 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 2
  br label %21

21:                                               ; preds = %25, %16
  %22 = phi ptr [ %18, %16 ], [ %26, %25 ]
  %23 = load ptr, ptr %19, align 8, !tbaa !76
  %24 = icmp ugt ptr %22, %23
  br i1 %24, label %25, label %230

25:                                               ; preds = %21
  %26 = getelementptr inbounds i32, ptr %22, i64 -1
  %27 = load ptr, ptr %20, align 8, !tbaa !61
  %28 = load i32, ptr %26, align 4, !tbaa !54
  %29 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %27, i32 noundef %28) #16
  %30 = load i32, ptr %0, align 8, !tbaa !62
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x ptr], ptr @computed, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !39
  %34 = load i32, ptr %26, align 4, !tbaa !54
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %33, i32 noundef %34) #16
  %36 = load i32, ptr %0, align 8, !tbaa !62
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x ptr], ptr @object_sizes, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !39
  %40 = load i32, ptr %26, align 4, !tbaa !54
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, ptr %39, i64 %41
  store i64 0, ptr %42, align 8, !tbaa !58
  %43 = icmp eq i32 %40, %7
  br i1 %43, label %230, label %21, !llvm.loop !136

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !61
  %47 = tail call i32 @bitmap_bit_p(ptr noundef %46, i32 noundef %7) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %230, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %8, align 8, !tbaa !75
  %51 = getelementptr inbounds i32, ptr %50, i64 %10
  store i32 %2, ptr %51, align 4, !tbaa !54
  %52 = getelementptr inbounds %struct.object_size_info, ptr %0, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !77
  %54 = getelementptr inbounds i32, ptr %53, i64 1
  store ptr %54, ptr %52, align 8, !tbaa !77
  store i32 %7, ptr %53, align 4, !tbaa !54
  %55 = load i32, ptr %5, align 8
  %56 = trunc i32 %55 to i8
  switch i8 %56, label %224 [
    i8 6, label %63
    i8 8, label %197
    i8 16, label %57
  ]

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !50
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %225, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 1
  br label %206

63:                                               ; preds = %49
  %64 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef nonnull %5) #16
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = tail call zeroext i8 @gimple_assign_unary_nop_p(ptr noundef nonnull %5) #16
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %109, label %69

69:                                               ; preds = %66, %63
  %70 = load i32, ptr %5, align 8
  %71 = and i32 %70, 255
  %72 = add nsw i32 %71, -1
  %73 = icmp ult i32 %72, 9
  tail call void @llvm.assume(i1 %73)
  %74 = zext nneg i32 %71 to i64
  %75 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !54
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !58
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %82

82:                                               ; preds = %81, %69
  %83 = getelementptr inbounds i8, ptr %5, i64 %79
  %84 = getelementptr inbounds ptr, ptr %83, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !39
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 141
  br i1 %88, label %89, label %109

89:                                               ; preds = %82
  %90 = load i32, ptr %5, align 8
  %91 = and i32 %90, 255
  %92 = add nsw i32 %91, -10
  %93 = icmp ult i32 %92, -9
  br i1 %93, label %107, label %94

94:                                               ; preds = %89
  %95 = zext nneg i32 %91 to i64
  %96 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !54
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !58
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %103

103:                                              ; preds = %102, %94
  %104 = getelementptr inbounds i8, ptr %5, i64 %100
  %105 = getelementptr inbounds ptr, ptr %104, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !39
  br label %107

107:                                              ; preds = %89, %103
  %108 = phi ptr [ %106, %103 ], [ null, %89 ]
  tail call fastcc void @check_for_plus_in_loops_1(ptr noundef %0, ptr noundef %108, i32 noundef %2)
  br label %225

109:                                              ; preds = %66, %82
  %110 = load i32, ptr %5, align 8
  %111 = trunc i32 %110 to i8
  switch i8 %111, label %114 [
    i8 6, label %112
    i8 1, label %112
    i8 8, label %115
  ]

112:                                              ; preds = %109, %109
  %113 = lshr i32 %110, 16
  br label %115

114:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1446, ptr noundef nonnull @.str.1) #16
  br label %115

115:                                              ; preds = %114, %112, %109
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ], [ 59, %109 ]
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !50
  %120 = icmp eq i8 %119, 3
  br i1 %120, label %121, label %141

121:                                              ; preds = %115
  %122 = load i32, ptr %5, align 8
  %123 = and i32 %122, 255
  %124 = add nsw i32 %123, -1
  %125 = icmp ult i32 %124, 9
  tail call void @llvm.assume(i1 %125)
  %126 = zext nneg i32 %123 to i64
  %127 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !54
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !58
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %134

134:                                              ; preds = %133, %121
  %135 = getelementptr inbounds i8, ptr %5, i64 %131
  %136 = getelementptr inbounds ptr, ptr %135, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !39
  %138 = load i64, ptr %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = and i32 %139, 65535
  br label %141

141:                                              ; preds = %115, %134
  %142 = phi i32 [ %140, %134 ], [ %116, %115 ]
  %143 = icmp eq i32 %142, 66
  br i1 %143, label %144, label %196

144:                                              ; preds = %141
  %145 = load i32, ptr %5, align 8
  %146 = and i32 %145, 255
  %147 = add nsw i32 %146, -10
  %148 = icmp ult i32 %147, -9
  br i1 %148, label %162, label %149

149:                                              ; preds = %144
  %150 = zext nneg i32 %146 to i64
  %151 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !54
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %153
  %155 = load i64, ptr %154, align 8, !tbaa !58
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %158

158:                                              ; preds = %157, %149
  %159 = getelementptr inbounds i8, ptr %5, i64 %155
  %160 = getelementptr inbounds ptr, ptr %159, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !39
  br label %162

162:                                              ; preds = %144, %158
  %163 = phi ptr [ %161, %158 ], [ null, %144 ]
  %164 = getelementptr inbounds %struct.gimple_statement_base, ptr %5, i64 0, i32 3
  %165 = load i32, ptr %164, align 4, !tbaa !50
  %166 = icmp ugt i32 %165, 2
  br i1 %166, label %167, label %185

167:                                              ; preds = %162
  %168 = load i32, ptr %5, align 8
  %169 = and i32 %168, 255
  %170 = add nsw i32 %169, -10
  %171 = icmp ult i32 %170, -9
  br i1 %171, label %185, label %172

172:                                              ; preds = %167
  %173 = zext nneg i32 %169 to i64
  %174 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !54
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !58
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %181

181:                                              ; preds = %180, %172
  %182 = getelementptr inbounds i8, ptr %5, i64 %178
  %183 = getelementptr inbounds ptr, ptr %182, i64 2
  %184 = load ptr, ptr %183, align 8, !tbaa !39
  br label %185

185:                                              ; preds = %162, %167, %181
  %186 = phi ptr [ null, %162 ], [ %184, %181 ], [ null, %167 ]
  %187 = load i64, ptr %186, align 8
  %188 = and i64 %187, 65535
  %189 = icmp eq i64 %188, 23
  br i1 %189, label %191, label %190

190:                                              ; preds = %185
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1049, ptr noundef nonnull @.str.1) #16
  br label %191

191:                                              ; preds = %185, %190
  %192 = tail call i32 @integer_zerop(ptr noundef nonnull %186) #16
  %193 = icmp eq i32 %192, 0
  %194 = zext i1 %193 to i32
  %195 = add i32 %194, %2
  tail call fastcc void @check_for_plus_in_loops_1(ptr noundef %0, ptr noundef %163, i32 noundef %195)
  br label %225

196:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1055, ptr noundef nonnull @.str.1) #16
  br label %225

197:                                              ; preds = %49
  %198 = tail call fastcc ptr @pass_through_call(ptr noundef nonnull %5)
  %199 = icmp eq ptr %198, null
  br i1 %199, label %225, label %200

200:                                              ; preds = %197
  %201 = load i64, ptr %198, align 8
  %202 = and i64 %201, 65535
  %203 = icmp eq i64 %202, 141
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  tail call fastcc void @check_for_plus_in_loops_1(ptr noundef %0, ptr noundef nonnull %198, i32 noundef %2)
  br label %225

205:                                              ; preds = %200
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1067, ptr noundef nonnull @.str.1) #16
  br label %225

206:                                              ; preds = %61, %219
  %207 = phi i64 [ 0, %61 ], [ %220, %219 ]
  %208 = load i32, ptr %62, align 8, !tbaa !50
  %209 = zext i32 %208 to i64
  %210 = icmp ugt i64 %207, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 3103, ptr noundef nonnull @.str.1) #16
  br label %212

212:                                              ; preds = %206, %211
  %213 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 4, i64 %207, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !95
  %215 = load i64, ptr %214, align 8
  %216 = and i64 %215, 65535
  %217 = icmp eq i64 %216, 141
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  tail call fastcc void @check_for_plus_in_loops_1(ptr noundef %0, ptr noundef nonnull %214, i32 noundef %2)
  br label %219

219:                                              ; preds = %218, %212
  %220 = add nuw nsw i64 %207, 1
  %221 = load i32, ptr %58, align 4, !tbaa !50
  %222 = zext i32 %221 to i64
  %223 = icmp ult i64 %220, %222
  br i1 %223, label %206, label %225, !llvm.loop !137

224:                                              ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1087, ptr noundef nonnull @.str.1) #16
  br label %225

225:                                              ; preds = %219, %57, %197, %205, %204, %107, %196, %191, %224
  %226 = load ptr, ptr %8, align 8, !tbaa !75
  %227 = getelementptr inbounds i32, ptr %226, i64 %10
  store i32 0, ptr %227, align 4, !tbaa !54
  %228 = load ptr, ptr %52, align 8, !tbaa !77
  %229 = getelementptr inbounds i32, ptr %228, i64 -1
  store ptr %229, ptr %52, align 8, !tbaa !77
  br label %230

230:                                              ; preds = %25, %21, %44, %14, %225
  ret void
}

declare ptr @fold_call_stmt(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @update_call_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

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
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }

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
!35 = !{ptr @compute_object_sizes, ptr @free, i64 152}
!36 = !{ptr @compute_object_sizes, ptr @bitmap_obstack_free, i64 152}
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
!58 = !{!46, !46, i64 0}
!59 = !{!60, !40, i64 8}
!60 = !{!"object_size_info", !45, i64 0, !40, i64 8, !40, i64 16, !45, i64 24, !41, i64 28, !40, i64 32, !40, i64 40, !40, i64 48}
!61 = !{!60, !40, i64 16}
!62 = !{!60, !45, i64 0}
!63 = !{!60, !45, i64 24}
!64 = !{!60, !41, i64 28}
!65 = !{!66, !40, i64 0}
!66 = !{!"bitmap_head_def", !40, i64 0, !40, i64 8, !45, i64 16, !40, i64 24}
!67 = !{!68, !40, i64 24}
!68 = !{!"function", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !40, i64 128, !45, i64 136, !45, i64 137, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 138, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139, !45, i64 139}
!69 = !{!70, !40, i64 16}
!70 = !{!"gimple_df", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !71, i64 32, !71, i64 48, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !45, i64 96, !72, i64 104}
!71 = !{!"pt_solution", !45, i64 0, !45, i64 0, !45, i64 0, !45, i64 0, !45, i64 0, !45, i64 0, !40, i64 8}
!72 = !{!"ssa_operands", !40, i64 0, !45, i64 8, !45, i64 12, !41, i64 16, !40, i64 24, !40, i64 32}
!73 = !{!74, !45, i64 0}
!74 = !{!"VEC_tree_base", !45, i64 0, !45, i64 4, !41, i64 8}
!75 = !{!60, !40, i64 32}
!76 = !{!60, !40, i64 40}
!77 = !{!60, !40, i64 48}
!78 = !{!79, !45, i64 16}
!79 = !{!"bitmap_element_def", !40, i64 0, !40, i64 8, !45, i64 16, !41, i64 24}
!80 = distinct !{!80, !56, !57}
!81 = distinct !{!81, !56, !57}
!82 = !{!79, !40, i64 0}
!83 = distinct !{!83, !57}
!84 = distinct !{!84, !56, !57}
!85 = distinct !{!85, !56, !57}
!86 = distinct !{!86, !56, !57}
!87 = distinct !{!87, !56, !57}
!88 = distinct !{!88, !56, !57}
!89 = distinct !{!89, !56, !57}
!90 = distinct !{!90, !56, !57}
!91 = distinct !{!91, !56, !57}
!92 = distinct !{!92, !56, !57}
!93 = distinct !{!93, !56, !57}
!94 = distinct !{!94, !56, !57}
!95 = !{!96, !40, i64 32}
!96 = !{!"phi_arg_d", !97, i64 0, !40, i64 32, !45, i64 40}
!97 = !{!"ssa_use_operand_d", !40, i64 0, !40, i64 8, !41, i64 16, !40, i64 24}
!98 = distinct !{!98, !56, !57}
!99 = !{!"branch_weights", i32 38, i32 114}
!100 = distinct !{!100, !56, !57}
!101 = !{!"function_entry_count", i64 38}
!102 = !{!"tree-object-size.c;compute_object_sizes"}
!103 = !{!68, !40, i64 8}
!104 = !{!105, !40, i64 0}
!105 = !{!"control_flow_graph", !40, i64 0, !40, i64 8, !40, i64 16, !45, i64 24, !45, i64 28, !45, i64 32, !40, i64 40, !45, i64 48, !41, i64 52, !41, i64 60, !45, i64 68, !45, i64 72}
!106 = !{!107, !40, i64 56}
!107 = !{!"basic_block_def", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !40, i64 48, !40, i64 56, !41, i64 64, !46, i64 72, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !45, i64 96}
!108 = !{!105, !40, i64 8}
!109 = !{!"branch_weights", i32 1, i32 151}
!110 = !{!107, !45, i64 96}
!111 = !{!112}
!112 = distinct !{!112, !113, !"gsi_start_bb: argument 0"}
!113 = distinct !{!113, !"gsi_start_bb"}
!114 = !{!"branch_weights", i32 157312, i32 0}
!115 = !{!"branch_weights", i32 0, i32 157312}
!116 = !{!117, !40, i64 0}
!117 = !{!"gimple_bb_info", !40, i64 0, !40, i64 8}
!118 = !{!119, !40, i64 0}
!119 = !{!"gimple_seq_d", !40, i64 0, !40, i64 8, !40, i64 16}
!120 = !{i64 0, i64 8, !39, i64 8, i64 8, !39, i64 16, i64 8, !39}
!121 = !{i64 0, i64 8, !39, i64 8, i64 8, !39}
!122 = !{i64 0, i64 8, !39}
!123 = !{!"branch_weights", i32 1, i32 157311}
!124 = !{!125, !40, i64 0}
!125 = !{!"gimple_seq_node_d", !40, i64 0, !40, i64 8, !40, i64 16}
!126 = !{!"branch_weights", i32 69129, i32 271763}
!127 = !{!"branch_weights", i32 0, i32 69129}
!128 = !{!"branch_weights", i32 69129, i32 0}
!129 = !{!130, !40, i64 0}
!130 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16}
!131 = !{!125, !40, i64 16}
!132 = !{!"branch_weights", i32 157311, i32 183581}
!133 = distinct !{!133, !56, !57}
!134 = !{!"branch_weights", i32 151, i32 629097}
!135 = distinct !{!135, !56, !57}
!136 = distinct !{!136, !56, !57}
!137 = distinct !{!137, !56, !57}
