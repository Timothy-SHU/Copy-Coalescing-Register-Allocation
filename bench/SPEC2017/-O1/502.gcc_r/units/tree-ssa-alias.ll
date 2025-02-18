; ModuleID = 'tree-ssa-alias.c'
source_filename = "tree-ssa-alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.ao_ref_s = type { ptr, ptr, i64, i64, i64, i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [28 x i8] c"\0AAlias oracle query stats:\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"  refs_may_alias_p: %ld disambiguations, %ld queries\0A\00", align 1
@alias_stats.0 = internal unnamed_addr global i64 0, align 8
@alias_stats.1 = internal unnamed_addr global i64 0, align 8
@alias_stats.2 = internal unnamed_addr global i64 0, align 8
@alias_stats.3 = internal unnamed_addr global i64 0, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"  ref_maybe_used_by_call_p: %ld disambiguations, %ld queries\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"  call_may_clobber_ref_p: %ld disambiguations, %ld queries\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"\0A\0AAlias information for %s\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Aliased symbols\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\0ACall clobber information\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\0AESCAPED\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"\0ACALLUSED\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"\0A\0AFlow-insensitive points-to information\0A\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"tree-ssa-alias.c\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c", points-to anything\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c", points-to non-local\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c", points-to escaped\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c", points-to NULL\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c", points-to vars: \00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c" (includes global vars)\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@flag_strict_aliasing = external local_unnamed_addr global i32, align 4
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@flag_errno_math = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !81 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !82
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !81 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !82
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !81 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !92

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !86
  %11 = load i8, ptr %3, align 1, !tbaa !93
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !81 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !92

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !86
  %11 = load i8, ptr %3, align 1, !tbaa !93
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !81 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !92

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !86
  %11 = load i8, ptr %3, align 1, !tbaa !93
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !81 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !82
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !81 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !92

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !94
  store i8 %12, ptr %4, align 1, !tbaa !93
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !81 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !92

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !94
  store i8 %12, ptr %4, align 1, !tbaa !93
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !81 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !82
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !92

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !94
  store i8 %12, ptr %4, align 1, !tbaa !93
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !81 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !81 {
  %2 = load i32, ptr %0, align 8, !tbaa !96
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !81 {
  %2 = load i32, ptr %0, align 8, !tbaa !96
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !81 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !97
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !81 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !97
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !81 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !81 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !81 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !81 {
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
  br i1 %23, label %7, label %24, !llvm.loop !98

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !81 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_alias_stats(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !81 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 27, i64 1, ptr %0)
  %3 = load i64, ptr @alias_stats.1, align 8, !tbaa !101
  %4 = load i64, ptr @alias_stats.0, align 8, !tbaa !103
  %5 = add i64 %4, %3
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef %3, i64 noundef %5)
  %7 = load i64, ptr @alias_stats.3, align 8, !tbaa !104
  %8 = load i64, ptr @alias_stats.1, align 8, !tbaa !101
  %9 = load i64, ptr @alias_stats.2, align 8, !tbaa !105
  %10 = add i64 %9, %8
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %7, i64 noundef %10)
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef 0, i64 noundef 0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ptr_deref_may_alias_global_p(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !106 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %11, !prof !107

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !108

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @pt_solution_includes_global(ptr noundef nonnull %7) #17
  br label %11

11:                                               ; preds = %5, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 1, %5 ]
  ret i8 %12
}

declare zeroext i8 @pt_solution_includes_global(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_alias_info(ptr noundef %0) local_unnamed_addr #11 !prof !81 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !109
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !82
  %4 = tail call ptr %2(ptr noundef %3, i32 noundef 2) #17
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %4)
  %6 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 17, i64 1, ptr %0)
  %7 = load ptr, ptr @cfun, align 8, !tbaa !82
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !119
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi ptr [ %12, %11 ], [ null, %1 ]
  %15 = getelementptr inbounds %struct.htab, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !123
  %17 = tail call i64 @htab_size(ptr noundef %14) #17
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  br label %19

19:                                               ; preds = %23, %13
  %20 = phi ptr [ %16, %13 ], [ %24, %23 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  %22 = icmp ult ptr %21, inttoptr (i64 2 to ptr)
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds ptr, ptr %20, i64 1
  %25 = icmp ult ptr %24, %18
  br i1 %25, label %19, label %26, !llvm.loop !125

26:                                               ; preds = %23, %19
  %27 = phi ptr [ %20, %19 ], [ %24, %23 ]
  %28 = icmp ult ptr %27, %18
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 8, !tbaa !82
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi ptr [ %30, %29 ], [ null, %26 ]
  %33 = icmp ult ptr %27, %18
  br i1 %33, label %34, label %90

34:                                               ; preds = %31, %87
  %35 = phi ptr [ %88, %87 ], [ %32, %31 ]
  %36 = phi ptr [ %81, %87 ], [ %27, %31 ]
  %37 = load i64, ptr %35, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 33
  br i1 %39, label %73, label %40

40:                                               ; preds = %34
  %41 = and i64 %37, 201326592
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 2
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 33554432
  %47 = icmp eq i64 %46, 0
  %48 = and i64 %37, 1048576
  %49 = icmp eq i64 %48, 0
  %50 = or i1 %49, %47
  br i1 %50, label %61, label %54

51:                                               ; preds = %40
  %52 = and i64 %37, 1048576
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %43, %51
  %55 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !93
  %57 = getelementptr inbounds %struct.tree_type, ptr %56, i64 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 2048
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %54, %51, %43
  %62 = and i64 %37, 134217728
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 2
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 33554432
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = lshr i64 %37, 18
  %71 = trunc i64 %70 to i8
  %72 = and i8 %71, 1
  br label %73

73:                                               ; preds = %34, %54, %61, %64, %69
  %74 = phi i8 [ 0, %54 ], [ 0, %34 ], [ 1, %64 ], [ 1, %61 ], [ %72, %69 ]
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @dump_variable(ptr noundef %0, ptr noundef nonnull %35) #17
  br label %77

77:                                               ; preds = %73, %76
  br label %78

78:                                               ; preds = %77, %83
  %79 = phi ptr [ %81, %83 ], [ %36, %77 ]
  %80 = phi ptr [ %86, %83 ], [ undef, %77 ]
  %81 = getelementptr inbounds ptr, ptr %79, i64 1
  %82 = icmp ult ptr %81, %18
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load ptr, ptr %81, align 8, !tbaa !82
  %85 = icmp ult ptr %84, inttoptr (i64 2 to ptr)
  %86 = select i1 %85, ptr %80, ptr %84
  br i1 %85, label %78, label %87

87:                                               ; preds = %83, %78
  %88 = phi ptr [ null, %78 ], [ %86, %83 ]
  %89 = icmp ult ptr %81, %18
  br i1 %89, label %34, label %90, !llvm.loop !126

90:                                               ; preds = %87, %31
  %91 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 26, i64 1, ptr %0)
  %92 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 8, i64 1, ptr %0)
  %93 = load ptr, ptr @cfun, align 8, !tbaa !82
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !117
  %96 = getelementptr inbounds %struct.gimple_df, ptr %95, i64 0, i32 4
  tail call void @dump_points_to_solution(ptr noundef %0, ptr noundef nonnull %96)
  %97 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 9, i64 1, ptr %0)
  %98 = load ptr, ptr @cfun, align 8, !tbaa !82
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !117
  %101 = getelementptr inbounds %struct.gimple_df, ptr %100, i64 0, i32 5
  tail call void @dump_points_to_solution(ptr noundef %0, ptr noundef nonnull %101)
  %102 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 42, i64 1, ptr %0)
  br label %103

103:                                              ; preds = %130, %90
  %104 = phi i64 [ 1, %90 ], [ %131, %130 ]
  %105 = load ptr, ptr @cfun, align 8, !tbaa !82
  %106 = getelementptr inbounds %struct.function, ptr %105, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !117
  %108 = getelementptr inbounds %struct.gimple_df, ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !127
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %103
  %112 = load i32, ptr %109, align 8, !tbaa !128
  br label %113

113:                                              ; preds = %103, %111
  %114 = phi i32 [ %112, %111 ], [ 0, %103 ]
  %115 = zext i32 %114 to i64
  %116 = icmp ult i64 %104, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.VEC_tree_base, ptr %109, i64 0, i32 2, i64 %104
  %119 = load ptr, ptr %118, align 8, !tbaa !82
  %120 = icmp eq ptr %119, null
  br i1 %120, label %130, label %121

121:                                              ; preds = %117
  %122 = load i64, ptr %119, align 8
  %123 = and i64 %122, 33554432
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.tree_ssa_name, ptr %119, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !93
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  tail call void @dump_points_to_info_for(ptr noundef %0, ptr noundef nonnull %119)
  br label %130

130:                                              ; preds = %125, %129, %117, %121
  %131 = add nuw nsw i64 %104, 1
  br label %103, !llvm.loop !130

132:                                              ; preds = %113
  %133 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

declare void @dump_variable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_points_to_solution(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !81 {
  %3 = load i8, ptr %1, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 20, i64 1, ptr %0)
  br label %8

8:                                                ; preds = %6, %2
  %9 = load i8, ptr %1, align 8
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr %0)
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i8, ptr %1, align 8
  %16 = and i8 %15, 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 19, i64 1, ptr %0)
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i8, ptr %1, align 8
  %22 = and i8 %21, 8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 16, i64 1, ptr %0)
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !131
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 18, i64 1, ptr %0)
  %32 = load ptr, ptr %27, align 8, !tbaa !131
  tail call void @dump_decl_set(ptr noundef %0, ptr noundef %32) #17
  %33 = load i8, ptr %1, align 8
  %34 = and i8 %33, 16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 23, i64 1, ptr %0)
  br label %38

38:                                               ; preds = %30, %36, %26
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_points_to_info_for(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !81 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !97
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef %5) #17
  %6 = icmp eq ptr %4, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @dump_points_to_solution(ptr noundef %0, ptr noundef nonnull %4)
  br label %10

8:                                                ; preds = %2
  %9 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 20, i64 1, ptr %0)
  br label %10

10:                                               ; preds = %8, %7
  %11 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_alias_info() local_unnamed_addr #11 !prof !81 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !82
  tail call void @dump_alias_info(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_ptr_info(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !132 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %6 [
    i16 10, label %7
    i16 12, label %7
  ], !prof !133

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 379, ptr noundef nonnull @.str.12) #17
  br label %7

7:                                                ; preds = %1, %1, %6
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13, !prof !134

11:                                               ; preds = %7
  %12 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 16) #17
  tail call void @pt_solution_reset(ptr noundef %12) #17
  store ptr %12, ptr %8, align 8, !tbaa !93
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  ret ptr %14
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

declare void @pt_solution_reset(ptr noundef) local_unnamed_addr #3

declare void @dump_decl_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_points_to_info_for(ptr noundef %0) local_unnamed_addr #11 !prof !81 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !82
  tail call void @dump_points_to_info_for(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ao_ref_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #12 !prof !135 {
  store ptr %1, ptr %0, align 8, !tbaa !136
  %3 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 -1, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ao_ref_base(ptr noundef %0) local_unnamed_addr #10 !prof !138 {
  %2 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !140

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !136
  %7 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %10 = tail call ptr @get_ref_base_and_extent(ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  store ptr %10, ptr %2, align 8, !tbaa !139
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi ptr [ %10, %5 ], [ %3, %1 ]
  ret ptr %12
}

declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @ao_ref_alias_set(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !81 {
  %2 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !141
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !136
  %7 = tail call i32 @get_alias_set(ptr noundef %6) #17
  store i32 %7, ptr %2, align 8, !tbaa !141
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ %3, %1 ]
  ret i32 %9
}

declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ao_ref_init_from_ptr_and_size(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !81 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  store ptr null, ptr %0, align 8, !tbaa !136
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 121
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %13 = call ptr @get_ref_base_and_extent(ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %14 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !139
  br label %20

15:                                               ; preds = %3
  %16 = load ptr, ptr @integer_types, align 16, !tbaa !82
  %17 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %16, ptr noundef nonnull %1) #17
  %18 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !139
  %19 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %19, align 8, !tbaa !142
  br label %20

20:                                               ; preds = %15, %9
  %21 = icmp eq ptr %2, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %20
  %23 = call i32 @host_integerp(ptr noundef nonnull %2, i32 noundef 0) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !93
  %28 = icmp ult i64 %27, 2305843009213693952
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = shl nuw i64 %27, 3
  %31 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  store i64 %30, ptr %31, align 8, !tbaa !143
  %32 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  store i64 %30, ptr %32, align 8, !tbaa !144
  br label %35

33:                                               ; preds = %25, %22, %20
  %34 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 -1, i64 16, i1 false)
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %36, align 8, !tbaa !141
  %37 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 6
  store i32 0, ptr %37, align 4, !tbaa !145
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @refs_may_alias_p_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #10 !prof !146 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !136
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9, !prof !147

9:                                                ; preds = %3
  %10 = load i64, ptr %7, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %30 [
    i16 32, label %18
    i16 34, label %18
    i16 36, label %18
    i16 141, label %12
    i16 42, label %18
    i16 41, label %18
    i16 45, label %18
    i16 46, label %18
    i16 118, label %18
    i16 43, label %18
    i16 44, label %18
    i16 47, label %18
    i16 48, label %18
    i16 49, label %18
    i16 152, label %18
    i16 33, label %18
  ], !prof !148

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !93
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %17 [
    i16 32, label %18
    i16 34, label %18
    i16 36, label %18
  ]

17:                                               ; preds = %12
  switch i16 %11, label %30 [
    i16 42, label %18
    i16 41, label %18
    i16 45, label %18
    i16 46, label %18
    i16 118, label %18
    i16 43, label %18
    i16 44, label %18
    i16 47, label %18
    i16 48, label %18
    i16 49, label %18
    i16 152, label %18
    i16 33, label %18
  ], !prof !149

18:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %12, %12, %12, %3
  %19 = load ptr, ptr %1, align 8, !tbaa !136
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21, !prof !150

21:                                               ; preds = %18
  %22 = load i64, ptr %19, align 8
  %23 = trunc i64 %22 to i16
  switch i16 %23, label %30 [
    i16 32, label %31
    i16 34, label %31
    i16 36, label %31
    i16 141, label %24
    i16 42, label %31
    i16 41, label %31
    i16 45, label %31
    i16 46, label %31
    i16 118, label %31
    i16 43, label %31
    i16 44, label %31
    i16 47, label %31
    i16 48, label %31
    i16 49, label %31
    i16 152, label %31
    i16 33, label %31
  ], !prof !151

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !93
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %29 [
    i16 32, label %31
    i16 34, label %31
    i16 36, label %31
  ]

29:                                               ; preds = %24
  switch i16 %23, label %30 [
    i16 42, label %31
    i16 41, label %31
    i16 45, label %31
    i16 46, label %31
    i16 118, label %31
    i16 43, label %31
    i16 44, label %31
    i16 47, label %31
    i16 48, label %31
    i16 49, label %31
    i16 152, label %31
    i16 33, label %31
  ], !prof !152

30:                                               ; preds = %21, %29, %9, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 786, ptr noundef nonnull @.str.12) #17
  br label %31

31:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %24, %24, %24, %18, %30
  %32 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !139
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %41, !prof !153

35:                                               ; preds = %31
  %36 = load ptr, ptr %0, align 8, !tbaa !136
  %37 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %38 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  %39 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %40 = tail call ptr @get_ref_base_and_extent(ptr noundef %36, ptr noundef nonnull %37, ptr noundef nonnull %38, ptr noundef nonnull %39) #17
  store ptr %40, ptr %32, align 8, !tbaa !139
  br label %41

41:                                               ; preds = %31, %35
  %42 = phi ptr [ %40, %35 ], [ %33, %31 ]
  %43 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !142
  %45 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %46 = load i64, ptr %45, align 8, !tbaa !144
  %47 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !139
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %56, !prof !154

50:                                               ; preds = %41
  %51 = load ptr, ptr %1, align 8, !tbaa !136
  %52 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 2
  %53 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 3
  %54 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 4
  %55 = tail call ptr @get_ref_base_and_extent(ptr noundef %51, ptr noundef nonnull %52, ptr noundef nonnull %53, ptr noundef nonnull %54) #17
  store ptr %55, ptr %47, align 8, !tbaa !139
  br label %56

56:                                               ; preds = %41, %50
  %57 = phi ptr [ %55, %50 ], [ %48, %41 ]
  %58 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !142
  %60 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 4
  %61 = load i64, ptr %60, align 8, !tbaa !144
  %62 = load i64, ptr %42, align 8
  %63 = freeze i64 %62
  %64 = trunc i64 %63 to i16
  switch i16 %64, label %65 [
    i16 141, label %584
    i16 33, label %584
  ], !prof !155

65:                                               ; preds = %56
  %66 = load i64, ptr %57, align 8
  %67 = trunc i64 %66 to i16
  switch i16 %67, label %68 [
    i16 141, label %584
    i16 33, label %584
  ], !prof !156

68:                                               ; preds = %65
  %69 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %42) #17
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %584, !prof !154

71:                                               ; preds = %68
  %72 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %57) #17
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %584, !prof !154

74:                                               ; preds = %71
  %75 = load i64, ptr %42, align 8
  %76 = trunc i64 %75 to i32
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 29
  br i1 %78, label %584, label %79, !prof !150

79:                                               ; preds = %74
  %80 = load i64, ptr %57, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 29
  br i1 %82, label %584, label %83, !prof !150

83:                                               ; preds = %79
  %84 = trunc i64 %75 to i16
  switch i16 %84, label %91 [
    i16 32, label %98
    i16 34, label %98
    i16 36, label %98
    i16 141, label %85
  ], !prof !157

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.tree_ssa_name, ptr %42, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !93
  %88 = load i64, ptr %87, align 8
  %89 = trunc i64 %88 to i16
  %90 = icmp ult i16 %89, 37
  br i1 %90, label %92, label %98

91:                                               ; preds = %83
  br label %98

92:                                               ; preds = %85
  %93 = trunc i64 %88 to i37
  %94 = and i37 %93, 65535
  %95 = lshr i37 -47244640256, %94
  %96 = and i37 %95, 1
  %97 = icmp ne i37 %96, 0
  br label %98

98:                                               ; preds = %85, %92, %83, %83, %83, %91
  %99 = phi i1 [ true, %83 ], [ false, %91 ], [ true, %83 ], [ true, %83 ], [ %97, %92 ], [ false, %85 ]
  %100 = trunc i64 %80 to i16
  switch i16 %100, label %107 [
    i16 32, label %114
    i16 34, label %114
    i16 36, label %114
    i16 141, label %101
  ], !prof !158

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.tree_ssa_name, ptr %57, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !93
  %104 = load i64, ptr %103, align 8
  %105 = trunc i64 %104 to i16
  %106 = icmp ult i16 %105, 37
  br i1 %106, label %108, label %114

107:                                              ; preds = %98
  br label %114

108:                                              ; preds = %101
  %109 = trunc i64 %104 to i37
  %110 = and i37 %109, 65535
  %111 = lshr i37 -47244640256, %110
  %112 = and i37 %111, 1
  %113 = icmp ne i37 %112, 0
  br label %114

114:                                              ; preds = %101, %108, %98, %98, %98, %107
  %115 = phi i1 [ true, %98 ], [ false, %107 ], [ true, %98 ], [ true, %98 ], [ %113, %108 ], [ false, %101 ]
  %116 = and i1 %99, %115
  br i1 %116, label %117, label %119, !prof !159

117:                                              ; preds = %114
  %118 = tail call fastcc zeroext i8 @decl_refs_may_alias_p(ptr noundef nonnull %42, i64 noundef %44, i64 noundef %46, ptr noundef nonnull %57, i64 noundef %59, i64 noundef %61), !range !160
  br label %584

119:                                              ; preds = %114
  %120 = add nsw i32 %77, -47
  %121 = icmp ult i32 %120, 3
  %122 = trunc i64 %80 to i32
  %123 = and i32 %122, 65535
  %124 = add nsw i32 %123, -47
  %125 = icmp ult i32 %124, 3
  %126 = and i1 %121, %115
  br i1 %126, label %127, label %128, !prof !161

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %119
  %129 = phi ptr [ %42, %127 ], [ %57, %119 ]
  %130 = phi i64 [ %59, %127 ], [ %44, %119 ]
  %131 = phi i64 [ %44, %127 ], [ %59, %119 ]
  %132 = phi i64 [ %61, %127 ], [ %46, %119 ]
  %133 = phi i64 [ %46, %127 ], [ %61, %119 ]
  %134 = phi i1 [ true, %127 ], [ %99, %119 ]
  %135 = phi i1 [ false, %127 ], [ %121, %119 ]
  %136 = phi i1 [ true, %127 ], [ %125, %119 ]
  %137 = phi ptr [ %57, %127 ], [ %42, %119 ]
  %138 = phi ptr [ %0, %127 ], [ %1, %119 ]
  %139 = phi ptr [ %1, %127 ], [ %0, %119 ]
  %140 = and i1 %134, %136
  %141 = load ptr, ptr @cfun, align 8
  %142 = icmp ne ptr %141, null
  %143 = select i1 %140, i1 %142, i1 false, !prof !162
  br i1 %143, label %144, label %333, !prof !162

144:                                              ; preds = %128
  %145 = getelementptr inbounds %struct.function, ptr %141, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !117
  %147 = icmp eq ptr %146, null
  br i1 %147, label %152, label %148, !prof !163

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.gimple_df, ptr %146, i64 0, i32 10
  %150 = load i8, ptr %149, align 8
  %151 = and i8 %150, 1
  br label %152

152:                                              ; preds = %144, %148
  %153 = phi i8 [ 0, %144 ], [ %151, %148 ]
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %333, label %155, !prof !163

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.tree_exp, ptr %129, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !93
  %158 = load i64, ptr %157, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 141
  br i1 %160, label %161, label %333, !prof !164

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.tree_ssa_name, ptr %157, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !93
  br label %164

164:                                              ; preds = %319, %161
  %165 = phi ptr [ %129, %161 ], [ %320, %319 ]
  %166 = phi i64 [ %131, %161 ], [ %321, %319 ]
  %167 = phi i64 [ %133, %161 ], [ %322, %319 ]
  %168 = phi i8 [ undef, %161 ], [ %324, %319 ]
  %169 = phi ptr [ %163, %161 ], [ %325, %319 ]
  %170 = load i32, ptr %169, align 8
  %171 = and i32 %170, 255
  %172 = icmp eq i32 %171, 6
  br i1 %172, label %173, label %327, !prof !165

173:                                              ; preds = %164
  %174 = lshr i32 %170, 16
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !93
  %178 = icmp eq i8 %177, 3
  br i1 %178, label %179, label %195, !prof !166

179:                                              ; preds = %173
  %180 = zext nneg i32 %171 to i64
  %181 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !97
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %183
  %185 = load i64, ptr %184, align 8, !tbaa !167
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %188, !prof !168

187:                                              ; preds = %179
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %188

188:                                              ; preds = %187, %179
  %189 = getelementptr inbounds i8, ptr %169, i64 %185
  %190 = getelementptr inbounds ptr, ptr %189, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !82
  %192 = load i64, ptr %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = and i32 %193, 65535
  br label %195

195:                                              ; preds = %173, %188
  %196 = phi i32 [ %194, %188 ], [ %174, %173 ]
  %197 = icmp eq i32 %196, 141
  br i1 %197, label %268, label %198, !prof !168

198:                                              ; preds = %195
  %199 = load i32, ptr %169, align 8
  %200 = trunc i32 %199 to i8
  switch i8 %200, label %203 [
    i8 6, label %201
    i8 1, label %201
    i8 8, label %204
  ], !prof !169

201:                                              ; preds = %198, %198
  %202 = lshr i32 %199, 16
  br label %204

203:                                              ; preds = %198
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1446, ptr noundef nonnull @.str.12) #17
  br label %204

204:                                              ; preds = %203, %201, %198
  %205 = phi i32 [ %202, %201 ], [ 0, %203 ], [ 59, %198 ]
  %206 = zext nneg i32 %205 to i64
  %207 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !93
  %209 = icmp eq i8 %208, 3
  br i1 %209, label %210, label %230, !prof !166

210:                                              ; preds = %204
  %211 = load i32, ptr %169, align 8
  %212 = and i32 %211, 255
  %213 = add nsw i32 %212, -1
  %214 = icmp ult i32 %213, 9
  call void @llvm.assume(i1 %214)
  %215 = zext nneg i32 %212 to i64
  %216 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !97
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %218
  %220 = load i64, ptr %219, align 8, !tbaa !167
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %223, !prof !168

222:                                              ; preds = %210
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %223

223:                                              ; preds = %222, %210
  %224 = getelementptr inbounds i8, ptr %169, i64 %220
  %225 = getelementptr inbounds ptr, ptr %224, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !82
  %227 = load i64, ptr %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = and i32 %228, 65535
  br label %230

230:                                              ; preds = %204, %223
  %231 = phi i32 [ %229, %223 ], [ %205, %204 ]
  %232 = icmp eq i32 %231, 116
  br i1 %232, label %268, label %233, !prof !168

233:                                              ; preds = %230
  %234 = load i32, ptr %169, align 8
  %235 = trunc i32 %234 to i8
  switch i8 %235, label %238 [
    i8 6, label %236
    i8 1, label %236
    i8 8, label %239
  ], !prof !169

236:                                              ; preds = %233, %233
  %237 = lshr i32 %234, 16
  br label %239

238:                                              ; preds = %233
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1446, ptr noundef nonnull @.str.12) #17
  br label %239

239:                                              ; preds = %238, %236, %233
  %240 = phi i32 [ %237, %236 ], [ 0, %238 ], [ 59, %233 ]
  %241 = zext nneg i32 %240 to i64
  %242 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !93
  %244 = icmp eq i8 %243, 3
  br i1 %244, label %245, label %265, !prof !166

245:                                              ; preds = %239
  %246 = load i32, ptr %169, align 8
  %247 = and i32 %246, 255
  %248 = add nsw i32 %247, -1
  %249 = icmp ult i32 %248, 9
  call void @llvm.assume(i1 %249)
  %250 = zext nneg i32 %247 to i64
  %251 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !97
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %253
  %255 = load i64, ptr %254, align 8, !tbaa !167
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %258, !prof !168

257:                                              ; preds = %245
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %258

258:                                              ; preds = %257, %245
  %259 = getelementptr inbounds i8, ptr %169, i64 %255
  %260 = getelementptr inbounds ptr, ptr %259, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !82
  %262 = load i64, ptr %261, align 8
  %263 = trunc i64 %262 to i32
  %264 = and i32 %263, 65535
  br label %265

265:                                              ; preds = %239, %258
  %266 = phi i32 [ %264, %258 ], [ %240, %239 ]
  %267 = icmp eq i32 %266, 113
  br i1 %267, label %268, label %327, !prof !168

268:                                              ; preds = %195, %230, %265
  %269 = load i32, ptr %169, align 8
  %270 = and i32 %269, 255
  %271 = add nsw i32 %270, -1
  %272 = icmp ult i32 %271, 9
  call void @llvm.assume(i1 %272)
  %273 = zext nneg i32 %270 to i64
  %274 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !97
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %276
  %278 = load i64, ptr %277, align 8, !tbaa !167
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %268
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %281

281:                                              ; preds = %280, %268
  %282 = getelementptr inbounds i8, ptr %169, i64 %278
  %283 = getelementptr inbounds ptr, ptr %282, i64 1
  %284 = load ptr, ptr %283, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %285 = load i64, ptr %284, align 8
  %286 = and i64 %285, 65535
  %287 = trunc i64 %285 to i16
  switch i16 %287, label %319 [
    i16 141, label %288
    i16 121, label %298
  ]

288:                                              ; preds = %281
  %289 = getelementptr inbounds %struct.tree_common, ptr %284, i64 0, i32 2
  %290 = load ptr, ptr %289, align 8, !tbaa !93
  %291 = load i64, ptr %290, align 8
  %292 = trunc i64 %291 to i16
  switch i16 %292, label %296 [
    i16 10, label %293
    i16 12, label %293
  ]

293:                                              ; preds = %288, %288
  %294 = getelementptr inbounds %struct.tree_ssa_name, ptr %284, i64 0, i32 2
  %295 = load ptr, ptr %294, align 8, !tbaa !93
  br label %319, !llvm.loop !170

296:                                              ; preds = %288
  %297 = icmp eq i64 %286, 121
  br i1 %297, label %298, label %319

298:                                              ; preds = %281, %296
  %299 = getelementptr inbounds %struct.tree_exp, ptr %284, i64 0, i32 3
  %300 = load ptr, ptr %299, align 8, !tbaa !93
  %301 = call ptr @get_ref_base_and_extent(ptr noundef %300, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %302 = load i64, ptr %301, align 8
  %303 = trunc i64 %302 to i16
  switch i16 %303, label %319 [
    i16 32, label %309
    i16 34, label %309
    i16 36, label %309
    i16 141, label %304
  ]

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.tree_ssa_name, ptr %301, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !93
  %307 = load i64, ptr %306, align 8
  %308 = trunc i64 %307 to i16
  switch i16 %308, label %319 [
    i16 32, label %309
    i16 34, label %309
    i16 36, label %309
  ]

309:                                              ; preds = %304, %304, %298, %298, %304, %298
  %310 = load i64, ptr %4, align 8, !tbaa !167
  %311 = add nsw i64 %310, %166
  %312 = load i64, ptr %5, align 8, !tbaa !167
  %313 = load i64, ptr %6, align 8
  %314 = icmp ne i64 %312, %313
  %315 = icmp eq i64 %313, -1
  %316 = or i1 %314, %315
  %317 = select i1 %316, i64 -1, i64 %167
  %318 = call fastcc zeroext i8 @decl_refs_may_alias_p(ptr noundef nonnull %137, i64 noundef %130, i64 noundef %132, ptr noundef nonnull %301, i64 noundef %311, i64 noundef %317), !range !160
  br label %319

319:                                              ; preds = %304, %281, %298, %296, %309, %293
  %320 = phi ptr [ %165, %293 ], [ %301, %309 ], [ %165, %296 ], [ %165, %298 ], [ %165, %281 ], [ %165, %304 ]
  %321 = phi i64 [ %166, %293 ], [ %311, %309 ], [ %166, %296 ], [ %166, %298 ], [ %166, %281 ], [ %166, %304 ]
  %322 = phi i64 [ %167, %293 ], [ %317, %309 ], [ %167, %296 ], [ %167, %298 ], [ %167, %281 ], [ %167, %304 ]
  %323 = phi i32 [ 2, %293 ], [ 1, %309 ], [ 3, %296 ], [ 3, %298 ], [ 3, %281 ], [ 3, %304 ]
  %324 = phi i8 [ %168, %293 ], [ %318, %309 ], [ %168, %296 ], [ %168, %298 ], [ %168, %281 ], [ %168, %304 ]
  %325 = phi ptr [ %295, %293 ], [ %169, %309 ], [ %169, %296 ], [ %169, %298 ], [ %169, %281 ], [ %169, %304 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  switch i32 %323, label %327 [
    i32 2, label %164
    i32 3, label %326
  ]

326:                                              ; preds = %319
  br label %327

327:                                              ; preds = %265, %164, %319, %326
  %328 = phi ptr [ %320, %319 ], [ %165, %164 ], [ %165, %265 ], [ %320, %326 ]
  %329 = phi i64 [ %321, %319 ], [ %166, %164 ], [ %166, %265 ], [ %321, %326 ]
  %330 = phi i64 [ %322, %319 ], [ %167, %164 ], [ %167, %265 ], [ %322, %326 ]
  %331 = phi i1 [ false, %319 ], [ true, %164 ], [ true, %265 ], [ true, %326 ]
  %332 = phi i8 [ %324, %319 ], [ %168, %164 ], [ %168, %265 ], [ %324, %326 ]
  br i1 %331, label %333, label %584, !prof !164

333:                                              ; preds = %327, %155, %152, %128
  %334 = phi ptr [ %328, %327 ], [ %129, %155 ], [ %129, %152 ], [ %129, %128 ]
  %335 = phi i64 [ %329, %327 ], [ %131, %155 ], [ %131, %152 ], [ %131, %128 ]
  %336 = phi i64 [ %330, %327 ], [ %133, %155 ], [ %133, %152 ], [ %133, %128 ]
  %337 = icmp ne i8 %2, 0
  %338 = load i32, ptr @flag_strict_aliasing, align 4
  %339 = icmp ne i32 %338, 0
  %340 = select i1 %337, i1 %339, i1 false, !prof !171
  br i1 %340, label %341, label %360, !prof !171

341:                                              ; preds = %333
  %342 = getelementptr inbounds %struct.ao_ref_s, ptr %139, i64 0, i32 5
  %343 = load i32, ptr %342, align 8, !tbaa !141
  %344 = icmp eq i32 %343, -1
  br i1 %344, label %345, label %348, !prof !172

345:                                              ; preds = %341
  %346 = load ptr, ptr %139, align 8, !tbaa !136
  %347 = call i32 @get_alias_set(ptr noundef %346) #17
  store i32 %347, ptr %342, align 8, !tbaa !141
  br label %348

348:                                              ; preds = %341, %345
  %349 = phi i32 [ %347, %345 ], [ %343, %341 ]
  %350 = getelementptr inbounds %struct.ao_ref_s, ptr %138, i64 0, i32 5
  %351 = load i32, ptr %350, align 8, !tbaa !141
  %352 = icmp eq i32 %351, -1
  br i1 %352, label %353, label %356, !prof !171

353:                                              ; preds = %348
  %354 = load ptr, ptr %138, align 8, !tbaa !136
  %355 = call i32 @get_alias_set(ptr noundef %354) #17
  store i32 %355, ptr %350, align 8, !tbaa !141
  br label %356

356:                                              ; preds = %348, %353
  %357 = phi i32 [ %355, %353 ], [ %351, %348 ]
  %358 = call i32 @alias_sets_conflict_p(i32 noundef %349, i32 noundef %357) #17
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %584, label %360, !prof !161

360:                                              ; preds = %356, %333
  %361 = load ptr, ptr %139, align 8, !tbaa !136
  %362 = icmp eq ptr %361, null
  br i1 %362, label %367, label %363, !prof !173

363:                                              ; preds = %360
  %364 = load i64, ptr %361, align 8
  %365 = and i64 %364, 65535
  %366 = icmp eq i64 %365, 152
  br i1 %366, label %584, label %367, !prof !174

367:                                              ; preds = %363, %360
  %368 = load ptr, ptr %138, align 8, !tbaa !136
  %369 = icmp eq ptr %368, null
  br i1 %369, label %374, label %370, !prof !161

370:                                              ; preds = %367
  %371 = load i64, ptr %368, align 8
  %372 = and i64 %371, 65535
  %373 = icmp eq i64 %372, 152
  br i1 %373, label %584, label %374, !prof !161

374:                                              ; preds = %370, %367
  br i1 %140, label %375, label %470, !prof !162

375:                                              ; preds = %374
  %376 = getelementptr inbounds %struct.tree_exp, ptr %334, i64 0, i32 3
  %377 = load ptr, ptr %376, align 8, !tbaa !93
  %378 = icmp eq i64 %132, -1
  br i1 %378, label %388, label %379, !prof !163

379:                                              ; preds = %375
  %380 = add nsw i64 %132, %130
  %381 = icmp eq i64 %380, -1
  %382 = icmp ugt i64 %380, %335
  %383 = or i1 %381, %382
  br i1 %383, label %388, label %384, !prof !165

384:                                              ; preds = %379
  %385 = icmp eq i64 %335, 0
  br i1 %385, label %386, label %584, !prof !175

386:                                              ; preds = %384
  %387 = icmp eq i64 %336, 0
  br i1 %387, label %584, label %388

388:                                              ; preds = %386, %379, %375
  %389 = call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr noundef %377, ptr noundef nonnull %137)
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %584, label %391, !prof !168

391:                                              ; preds = %388
  %392 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !97
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %584, label %394, !prof !168

394:                                              ; preds = %391
  br i1 %337, label %395, label %397, !prof !166

395:                                              ; preds = %394
  %396 = call i32 @get_deref_alias_set(ptr noundef %377) #17
  br label %397

397:                                              ; preds = %395, %394
  %398 = phi i32 [ %396, %395 ], [ 0, %394 ]
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %584, label %400, !prof !168

400:                                              ; preds = %397
  br i1 %337, label %401, label %403, !prof !166

401:                                              ; preds = %400
  %402 = call i32 @get_alias_set(ptr noundef nonnull %137) #17
  br label %403

403:                                              ; preds = %401, %400
  %404 = phi i32 [ %402, %401 ], [ 0, %400 ]
  %405 = getelementptr inbounds %struct.tree_common, ptr %377, i64 0, i32 2
  %406 = load ptr, ptr %405, align 8, !tbaa !93
  %407 = getelementptr inbounds %struct.tree_common, ptr %406, i64 0, i32 2
  %408 = load ptr, ptr %407, align 8, !tbaa !93
  %409 = getelementptr inbounds %struct.tree_common, ptr %137, i64 0, i32 2
  %410 = load ptr, ptr %409, align 8, !tbaa !93
  %411 = getelementptr inbounds %struct.tree_type, ptr %408, i64 0, i32 16
  %412 = load ptr, ptr %411, align 8, !tbaa !93
  %413 = getelementptr inbounds %struct.tree_type, ptr %410, i64 0, i32 16
  %414 = load ptr, ptr %413, align 8, !tbaa !93
  %415 = getelementptr inbounds %struct.tree_type, ptr %412, i64 0, i32 19
  %416 = load ptr, ptr %415, align 8, !tbaa !93
  %417 = icmp eq ptr %416, null
  br i1 %417, label %449, label %418, !prof !168

418:                                              ; preds = %403
  %419 = getelementptr inbounds %struct.tree_type, ptr %414, i64 0, i32 19
  %420 = load ptr, ptr %419, align 8, !tbaa !93
  %421 = icmp eq ptr %420, null
  br i1 %421, label %449, label %422, !prof !168

422:                                              ; preds = %418
  %423 = icmp eq ptr %416, %420
  br i1 %423, label %435, label %424, !prof !168

424:                                              ; preds = %422
  %425 = load i64, ptr %412, align 8
  %426 = and i64 %425, 65535
  %427 = icmp eq i64 %426, 15
  br i1 %427, label %428, label %432, !prof !168

428:                                              ; preds = %424
  %429 = load i64, ptr %414, align 8
  %430 = and i64 %429, 65535
  %431 = icmp eq i64 %430, 15
  br i1 %431, label %449, label %432

432:                                              ; preds = %428, %424
  %433 = call i32 @get_alias_set(ptr noundef nonnull %412) #17
  %434 = call i32 @get_alias_set(ptr noundef %414) #17
  br label %449

435:                                              ; preds = %422
  %436 = icmp ult i64 %335, %130
  br i1 %436, label %441, label %437

437:                                              ; preds = %435
  %438 = add i64 %132, %130
  %439 = icmp ugt i64 %438, %335
  %440 = or i1 %378, %439
  br i1 %440, label %584, label %441

441:                                              ; preds = %437, %435
  %442 = icmp ult i64 %130, %335
  br i1 %442, label %448, label %443

443:                                              ; preds = %441
  %444 = icmp eq i64 %336, -1
  %445 = add i64 %336, %335
  %446 = icmp ugt i64 %445, %130
  %447 = or i1 %444, %446
  br i1 %447, label %584, label %448

448:                                              ; preds = %443, %441
  br label %584

449:                                              ; preds = %432, %428, %418, %403
  %450 = icmp eq i32 %398, %404
  br i1 %450, label %454, label %451, !prof !168

451:                                              ; preds = %449
  %452 = call zeroext i8 @alias_set_subset_of(i32 noundef %398, i32 noundef %404) #17
  %453 = icmp eq i8 %452, 0
  br i1 %453, label %584, label %454, !prof !166

454:                                              ; preds = %451, %449
  %455 = icmp ne ptr %368, null
  %456 = icmp ne ptr %361, null
  %457 = and i1 %456, %455
  br i1 %457, label %458, label %584

458:                                              ; preds = %454
  %459 = load i64, ptr %368, align 8
  %460 = trunc i64 %459 to i16
  switch i16 %460, label %584 [
    i16 42, label %461
    i16 41, label %461
    i16 45, label %461
    i16 46, label %461
    i16 118, label %461
    i16 43, label %461
    i16 44, label %461
  ]

461:                                              ; preds = %458, %458, %458, %458, %458, %458, %458
  %462 = load i64, ptr %361, align 8
  %463 = trunc i64 %462 to i16
  switch i16 %463, label %584 [
    i16 42, label %464
    i16 41, label %464
    i16 45, label %464
    i16 46, label %464
    i16 118, label %464
    i16 43, label %464
    i16 44, label %464
  ]

464:                                              ; preds = %461, %461, %461, %461, %461, %461, %461
  %465 = load ptr, ptr %405, align 8, !tbaa !93
  %466 = getelementptr inbounds %struct.tree_common, ptr %465, i64 0, i32 2
  %467 = load ptr, ptr %466, align 8, !tbaa !93
  %468 = load ptr, ptr %409, align 8, !tbaa !93
  %469 = call fastcc zeroext i8 @aliasing_component_refs_p(ptr noundef nonnull %368, ptr noundef %467, i64 noundef %335, i64 noundef %336, ptr noundef nonnull %361, ptr noundef %468, i64 noundef %130, i64 noundef %132), !range !160
  br label %584

470:                                              ; preds = %374
  %471 = and i1 %135, %136
  br i1 %471, label %472, label %583, !prof !176

472:                                              ; preds = %470
  %473 = getelementptr inbounds %struct.tree_exp, ptr %137, i64 0, i32 3
  %474 = load ptr, ptr %473, align 8, !tbaa !93
  %475 = getelementptr inbounds %struct.tree_exp, ptr %334, i64 0, i32 3
  %476 = load ptr, ptr %475, align 8, !tbaa !93
  %477 = call i32 @operand_equal_p(ptr noundef %474, ptr noundef %476, i32 noundef 0) #17
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %494, label %479, !prof !177

479:                                              ; preds = %472
  %480 = icmp ult i64 %130, %335
  br i1 %480, label %486, label %481, !prof !178

481:                                              ; preds = %479
  %482 = icmp eq i64 %336, -1
  %483 = add i64 %336, %335
  %484 = icmp ugt i64 %483, %130
  %485 = or i1 %482, %484
  br i1 %485, label %584, label %486, !prof !179

486:                                              ; preds = %481, %479
  %487 = icmp ult i64 %335, %130
  br i1 %487, label %493, label %488, !prof !180

488:                                              ; preds = %486
  %489 = icmp eq i64 %132, -1
  %490 = add i64 %132, %130
  %491 = icmp ugt i64 %490, %335
  %492 = or i1 %489, %491
  br i1 %492, label %584, label %493, !prof !180

493:                                              ; preds = %488, %486
  br label %584

494:                                              ; preds = %472
  %495 = call fastcc zeroext i8 @ptr_derefs_may_alias_p(ptr noundef %474, ptr noundef %476)
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %584, label %497, !prof !181

497:                                              ; preds = %494
  %498 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !97
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %584, label %500, !prof !181

500:                                              ; preds = %497
  br i1 %337, label %501, label %503, !prof !182

501:                                              ; preds = %500
  %502 = call i32 @get_deref_alias_set(ptr noundef %474) #17
  br label %503

503:                                              ; preds = %501, %500
  %504 = phi i32 [ %502, %501 ], [ 0, %500 ]
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %584, label %506, !prof !181

506:                                              ; preds = %503
  br i1 %337, label %507, label %509, !prof !182

507:                                              ; preds = %506
  %508 = call i32 @get_deref_alias_set(ptr noundef %476) #17
  br label %509

509:                                              ; preds = %507, %506
  %510 = phi i32 [ %508, %507 ], [ 0, %506 ]
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %584, label %512, !prof !181

512:                                              ; preds = %509
  %513 = getelementptr inbounds %struct.tree_common, ptr %474, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !93
  %515 = getelementptr inbounds %struct.tree_common, ptr %514, i64 0, i32 2
  %516 = load ptr, ptr %515, align 8, !tbaa !93
  %517 = getelementptr inbounds %struct.tree_common, ptr %476, i64 0, i32 2
  %518 = load ptr, ptr %517, align 8, !tbaa !93
  %519 = getelementptr inbounds %struct.tree_common, ptr %518, i64 0, i32 2
  %520 = load ptr, ptr %519, align 8, !tbaa !93
  %521 = getelementptr inbounds %struct.tree_type, ptr %516, i64 0, i32 16
  %522 = load ptr, ptr %521, align 8, !tbaa !93
  %523 = getelementptr inbounds %struct.tree_type, ptr %520, i64 0, i32 16
  %524 = load ptr, ptr %523, align 8, !tbaa !93
  %525 = getelementptr inbounds %struct.tree_type, ptr %522, i64 0, i32 19
  %526 = load ptr, ptr %525, align 8, !tbaa !93
  %527 = icmp eq ptr %526, null
  br i1 %527, label %560, label %528, !prof !181

528:                                              ; preds = %512
  %529 = getelementptr inbounds %struct.tree_type, ptr %524, i64 0, i32 19
  %530 = load ptr, ptr %529, align 8, !tbaa !93
  %531 = icmp eq ptr %530, null
  br i1 %531, label %560, label %532, !prof !181

532:                                              ; preds = %528
  %533 = icmp eq ptr %526, %530
  br i1 %533, label %545, label %534, !prof !183

534:                                              ; preds = %532
  %535 = load i64, ptr %522, align 8
  %536 = and i64 %535, 65535
  %537 = icmp eq i64 %536, 15
  br i1 %537, label %538, label %542, !prof !184

538:                                              ; preds = %534
  %539 = load i64, ptr %524, align 8
  %540 = and i64 %539, 65535
  %541 = icmp eq i64 %540, 15
  br i1 %541, label %560, label %542

542:                                              ; preds = %538, %534
  %543 = call i32 @get_alias_set(ptr noundef nonnull %522) #17
  %544 = call i32 @get_alias_set(ptr noundef %524) #17
  br label %560

545:                                              ; preds = %532
  %546 = icmp ult i64 %130, %335
  br i1 %546, label %552, label %547, !prof !185

547:                                              ; preds = %545
  %548 = icmp eq i64 %336, -1
  %549 = add i64 %336, %335
  %550 = icmp ugt i64 %549, %130
  %551 = or i1 %548, %550
  br i1 %551, label %584, label %552, !prof !186

552:                                              ; preds = %547, %545
  %553 = icmp ult i64 %335, %130
  br i1 %553, label %559, label %554, !prof !187

554:                                              ; preds = %552
  %555 = icmp eq i64 %132, -1
  %556 = add i64 %132, %130
  %557 = icmp ugt i64 %556, %335
  %558 = or i1 %555, %557
  br i1 %558, label %584, label %559, !prof !188

559:                                              ; preds = %554, %552
  br label %584

560:                                              ; preds = %542, %538, %528, %512
  %561 = icmp eq i32 %504, %510
  br i1 %561, label %565, label %562, !prof !184

562:                                              ; preds = %560
  %563 = call i32 @alias_sets_conflict_p(i32 noundef %504, i32 noundef %510) #17
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %584, label %565, !prof !189

565:                                              ; preds = %562, %560
  %566 = icmp ne ptr %361, null
  %567 = icmp ne ptr %368, null
  %568 = and i1 %566, %567
  br i1 %568, label %569, label %584

569:                                              ; preds = %565
  %570 = load i64, ptr %361, align 8
  %571 = trunc i64 %570 to i16
  switch i16 %571, label %584 [
    i16 42, label %572
    i16 41, label %572
    i16 45, label %572
    i16 46, label %572
    i16 118, label %572
    i16 43, label %572
    i16 44, label %572
  ]

572:                                              ; preds = %569, %569, %569, %569, %569, %569, %569
  %573 = load i64, ptr %368, align 8
  %574 = trunc i64 %573 to i16
  switch i16 %574, label %584 [
    i16 42, label %575
    i16 41, label %575
    i16 45, label %575
    i16 46, label %575
    i16 118, label %575
    i16 43, label %575
    i16 44, label %575
  ]

575:                                              ; preds = %572, %572, %572, %572, %572, %572, %572
  %576 = load ptr, ptr %513, align 8, !tbaa !93
  %577 = getelementptr inbounds %struct.tree_common, ptr %576, i64 0, i32 2
  %578 = load ptr, ptr %577, align 8, !tbaa !93
  %579 = load ptr, ptr %517, align 8, !tbaa !93
  %580 = getelementptr inbounds %struct.tree_common, ptr %579, i64 0, i32 2
  %581 = load ptr, ptr %580, align 8, !tbaa !93
  %582 = call fastcc zeroext i8 @aliasing_component_refs_p(ptr noundef nonnull %361, ptr noundef %578, i64 noundef %130, i64 noundef %132, ptr noundef nonnull %368, ptr noundef %581, i64 noundef %335, i64 noundef %336), !range !160
  br label %584

583:                                              ; preds = %470
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 921, ptr noundef nonnull @.str.12) #17
  br label %584

584:                                              ; preds = %575, %572, %569, %565, %562, %559, %554, %547, %509, %503, %497, %494, %493, %488, %481, %464, %461, %458, %454, %451, %448, %443, %437, %397, %391, %388, %386, %384, %356, %327, %65, %56, %56, %65, %363, %370, %74, %79, %68, %71, %583, %117
  %585 = phi i8 [ %118, %117 ], [ 0, %583 ], [ 0, %71 ], [ 0, %68 ], [ 0, %56 ], [ 1, %79 ], [ 1, %74 ], [ 1, %370 ], [ 1, %363 ], [ 0, %65 ], [ 0, %56 ], [ 0, %65 ], [ %332, %327 ], [ 0, %356 ], [ %469, %464 ], [ 1, %391 ], [ 1, %397 ], [ 1, %454 ], [ 0, %448 ], [ 1, %437 ], [ 1, %443 ], [ 0, %388 ], [ 0, %451 ], [ 0, %386 ], [ 0, %384 ], [ 1, %458 ], [ 1, %461 ], [ %582, %575 ], [ 0, %494 ], [ 1, %497 ], [ 1, %503 ], [ 1, %509 ], [ 1, %565 ], [ 0, %493 ], [ 1, %481 ], [ 1, %488 ], [ 0, %559 ], [ 1, %547 ], [ 1, %554 ], [ 0, %562 ], [ 1, %569 ], [ 1, %572 ]
  ret i8 %585
}

declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @decl_refs_may_alias_p(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #10 !prof !190 !PGOFuncName !191 {
  %7 = load i64, ptr %0, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %22 [
    i16 32, label %14
    i16 34, label %14
    i16 36, label %14
    i16 141, label %9
  ], !prof !192

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %22 [
    i16 32, label %14
    i16 34, label %14
    i16 36, label %14
  ]

14:                                               ; preds = %9, %9, %6, %6, %9, %6
  %15 = load i64, ptr %3, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %22 [
    i16 32, label %23
    i16 34, label %23
    i16 36, label %23
    i16 141, label %17
  ], !prof !192

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !93
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %22 [
    i16 32, label %23
    i16 34, label %23
    i16 36, label %23
  ]

22:                                               ; preds = %17, %14, %9, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 629, ptr noundef nonnull @.str.12) #17
  br label %23

23:                                               ; preds = %17, %17, %14, %14, %17, %14, %22
  %24 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 0) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %41, label %26, !prof !193

26:                                               ; preds = %23
  %27 = icmp ult i64 %1, %4
  br i1 %27, label %33, label %28, !prof !193

28:                                               ; preds = %26
  %29 = icmp eq i64 %5, -1
  %30 = add i64 %5, %4
  %31 = icmp ugt i64 %30, %1
  %32 = or i1 %29, %31
  br i1 %32, label %41, label %33, !prof !194

33:                                               ; preds = %28, %26
  %34 = icmp ult i64 %4, %1
  br i1 %34, label %40, label %35

35:                                               ; preds = %33
  %36 = icmp eq i64 %2, -1
  %37 = add i64 %2, %1
  %38 = icmp ugt i64 %37, %4
  %39 = or i1 %36, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %33
  br label %41

41:                                               ; preds = %40, %35, %28, %23
  %42 = phi i8 [ 0, %23 ], [ 0, %40 ], [ 1, %28 ], [ 1, %35 ]
  ret i8 %42
}

declare i32 @alias_sets_conflict_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @refs_may_alias_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !195 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #17
  store ptr %0, ptr %3, align 8, !tbaa !136
  %5 = getelementptr inbounds %struct.ao_ref_s, ptr %3, i64 0, i32 1
  %6 = getelementptr inbounds %struct.ao_ref_s, ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 -1, i64 24, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !136
  %7 = getelementptr inbounds %struct.ao_ref_s, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.ao_ref_s, ptr %4, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 -1, i64 24, i1 false)
  %9 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 1)
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, ptr @alias_stats.1, ptr @alias_stats.0, !prof !196
  %12 = load i64, ptr %11, align 8, !tbaa !167
  %13 = add i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #17
  ret i8 %9
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @refs_anti_dependent_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !81 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #17
  store ptr %0, ptr %3, align 8, !tbaa !136
  %5 = getelementptr inbounds %struct.ao_ref_s, ptr %3, i64 0, i32 1
  %6 = getelementptr inbounds %struct.ao_ref_s, ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 -1, i64 24, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !136
  %7 = getelementptr inbounds %struct.ao_ref_s, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.ao_ref_s, ptr %4, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 -1, i64 24, i1 false)
  %9 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #17
  ret i8 %9
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @refs_output_dependent_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !81 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #17
  store ptr %0, ptr %3, align 8, !tbaa !136
  %5 = getelementptr inbounds %struct.ao_ref_s, ptr %3, i64 0, i32 1
  %6 = getelementptr inbounds %struct.ao_ref_s, ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 -1, i64 24, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !136
  %7 = getelementptr inbounds %struct.ao_ref_s, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.ao_ref_s, ptr %4, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 -1, i64 24, i1 false)
  %9 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #17
  ret i8 %9
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ref_maybe_used_by_stmt_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !197 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  %5 = alloca %struct.ao_ref_s, align 8
  %6 = alloca %struct.ao_ref_s, align 8
  %7 = alloca %struct.ao_ref_s, align 8
  %8 = alloca %struct.ao_ref_s, align 8
  %9 = load i32, ptr %0, align 8
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %541 [
    i8 6, label %11
    i8 8, label %84
  ], !prof !198

11:                                               ; preds = %2
  %12 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %541, label %14, !prof !186

14:                                               ; preds = %11
  %15 = load i32, ptr %0, align 8
  %16 = and i32 %15, 255
  %17 = add nsw i32 %16, -10
  %18 = icmp ult i32 %17, -9
  br i1 %18, label %32, label %19, !prof !186

19:                                               ; preds = %14
  %20 = zext nneg i32 %16 to i64
  %21 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !97
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !167
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28, !prof !186

27:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %28

28:                                               ; preds = %27, %19
  %29 = getelementptr inbounds i8, ptr %0, i64 %25
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !82
  br label %32

32:                                               ; preds = %14, %28
  %33 = phi ptr [ %31, %28 ], [ null, %14 ]
  %34 = tail call zeroext i8 @is_gimple_reg(ptr noundef %33) #17
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %541, !prof !199

36:                                               ; preds = %32
  %37 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %33) #17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %541, !prof !199

39:                                               ; preds = %36
  %40 = load i32, ptr %0, align 8
  %41 = trunc i32 %40 to i8
  switch i8 %41, label %44 [
    i8 6, label %42
    i8 1, label %42
    i8 8, label %45
  ], !prof !200

42:                                               ; preds = %39, %39
  %43 = lshr i32 %40, 16
  br label %45

44:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1446, ptr noundef nonnull @.str.12) #17
  br label %45

45:                                               ; preds = %44, %42, %39
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ], [ 59, %39 ]
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !93
  %50 = icmp eq i8 %49, 3
  br i1 %50, label %51, label %71, !prof !199

51:                                               ; preds = %45
  %52 = load i32, ptr %0, align 8
  %53 = and i32 %52, 255
  %54 = add nsw i32 %53, -1
  %55 = icmp ult i32 %54, 9
  tail call void @llvm.assume(i1 %55)
  %56 = zext nneg i32 %53 to i64
  %57 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !97
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !167
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64, !prof !186

63:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %64

64:                                               ; preds = %63, %51
  %65 = getelementptr inbounds i8, ptr %0, i64 %61
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !82
  %68 = load i64, ptr %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = and i32 %69, 65535
  br label %71

71:                                               ; preds = %45, %64
  %72 = phi i32 [ %70, %64 ], [ %46, %45 ]
  %73 = icmp eq i32 %72, 51
  br i1 %73, label %541, label %74, !prof !186

74:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #17
  store ptr %33, ptr %3, align 8, !tbaa !136
  %75 = getelementptr inbounds %struct.ao_ref_s, ptr %3, i64 0, i32 1
  %76 = getelementptr inbounds %struct.ao_ref_s, ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %76, i8 -1, i64 24, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !136
  %77 = getelementptr inbounds %struct.ao_ref_s, ptr %4, i64 0, i32 1
  %78 = getelementptr inbounds %struct.ao_ref_s, ptr %4, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %78, i8 -1, i64 24, i1 false)
  %79 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 1)
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, ptr @alias_stats.1, ptr @alias_stats.0, !prof !196
  %82 = load i64, ptr %81, align 8, !tbaa !167
  %83 = add i64 %82, 1
  store i64 %83, ptr %81, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #17
  br label %541

84:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #17
  store ptr %1, ptr %8, align 8, !tbaa !136
  %85 = getelementptr inbounds %struct.ao_ref_s, ptr %8, i64 0, i32 1
  %86 = getelementptr inbounds %struct.ao_ref_s, ptr %8, i64 0, i32 2
  %87 = getelementptr inbounds %struct.ao_ref_s, ptr %8, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %85, i8 0, i64 16, i1 false)
  %88 = getelementptr inbounds %struct.ao_ref_s, ptr %8, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %87, i8 -1, i64 24, i1 false)
  %89 = tail call i32 @gimple_call_flags(ptr noundef %0) #17
  %90 = load i32, ptr %0, align 8
  %91 = and i32 %90, 255
  %92 = add nsw i32 %91, -10
  %93 = icmp ult i32 %92, -9
  br i1 %93, label %107, label %94, !prof !201

94:                                               ; preds = %84
  %95 = zext nneg i32 %91 to i64
  %96 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !97
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !167
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103, !prof !201

102:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %103

103:                                              ; preds = %102, %94
  %104 = getelementptr inbounds i8, ptr %0, i64 %100
  %105 = getelementptr inbounds ptr, ptr %104, i64 2
  %106 = load ptr, ptr %105, align 8, !tbaa !82
  br label %107

107:                                              ; preds = %103, %84
  %108 = phi ptr [ %106, %103 ], [ null, %84 ]
  %109 = icmp ne ptr %108, null
  %110 = and i32 %89, 513
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %109, i1 true, i1 %111, !prof !201
  br i1 %112, label %113, label %485, !prof !202

113:                                              ; preds = %107
  %114 = load ptr, ptr %85, align 8, !tbaa !139
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %119, !prof !202

116:                                              ; preds = %113
  %117 = load ptr, ptr %8, align 8, !tbaa !136
  %118 = call ptr @get_ref_base_and_extent(ptr noundef %117, ptr noundef nonnull %86, ptr noundef nonnull %87, ptr noundef nonnull %88) #17
  store ptr %118, ptr %85, align 8, !tbaa !139
  br label %119

119:                                              ; preds = %116, %113
  %120 = phi ptr [ %118, %116 ], [ %114, %113 ]
  %121 = icmp eq ptr %120, null
  br i1 %121, label %535, label %122, !prof !201

122:                                              ; preds = %119
  %123 = load i64, ptr %120, align 8
  %124 = and i64 %123, 65535
  %125 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !97
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %178, !prof !201

128:                                              ; preds = %122
  %129 = icmp eq i64 %124, 33
  br i1 %129, label %163, label %130

130:                                              ; preds = %128
  %131 = and i64 %123, 201326592
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.tree_decl_common, ptr %120, i64 0, i32 2
  %135 = load i64, ptr %134, align 8
  %136 = and i64 %135, 33554432
  %137 = icmp eq i64 %136, 0
  %138 = and i64 %123, 1048576
  %139 = icmp eq i64 %138, 0
  %140 = or i1 %139, %137
  br i1 %140, label %151, label %144

141:                                              ; preds = %130
  %142 = and i64 %123, 1048576
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %133, %141
  %145 = getelementptr inbounds %struct.tree_common, ptr %120, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !93
  %147 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 6
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 2048
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %163, label %151

151:                                              ; preds = %144, %141, %133
  %152 = and i64 %123, 134217728
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.tree_decl_common, ptr %120, i64 0, i32 2
  %156 = load i64, ptr %155, align 8
  %157 = and i64 %156, 33554432
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = lshr i64 %123, 18
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  br label %163

163:                                              ; preds = %159, %154, %151, %144, %128
  %164 = phi i8 [ 0, %144 ], [ 0, %128 ], [ 1, %154 ], [ 1, %151 ], [ %162, %159 ]
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = and i64 %123, 67108864
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.tree_decl_common, ptr %120, i64 0, i32 2
  %171 = load i64, ptr %170, align 8
  %172 = lshr i64 %171, 25
  %173 = trunc i64 %172 to i8
  %174 = and i8 %173, 1
  br label %175

175:                                              ; preds = %169, %166
  %176 = phi i8 [ 1, %166 ], [ %174, %169 ]
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %485, label %178

178:                                              ; preds = %175, %163, %122
  %179 = load i32, ptr %0, align 8
  %180 = and i32 %179, 255
  %181 = add nsw i32 %180, -10
  %182 = icmp ult i32 %181, -9
  br i1 %182, label %196, label %183, !prof !201

183:                                              ; preds = %178
  %184 = zext nneg i32 %180 to i64
  %185 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !97
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %187
  %189 = load i64, ptr %188, align 8, !tbaa !167
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %192, !prof !201

191:                                              ; preds = %183
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %192

192:                                              ; preds = %191, %183
  %193 = getelementptr inbounds i8, ptr %0, i64 %189
  %194 = getelementptr inbounds ptr, ptr %193, i64 1
  %195 = load ptr, ptr %194, align 8, !tbaa !82
  br label %196

196:                                              ; preds = %192, %178
  %197 = phi ptr [ %195, %192 ], [ null, %178 ]
  %198 = load i64, ptr %197, align 8
  %199 = and i64 %198, 65535
  %200 = icmp eq i64 %199, 121
  br i1 %200, label %201, label %204, !prof !202

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.tree_exp, ptr %197, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !93
  br label %204

204:                                              ; preds = %201, %196
  %205 = phi ptr [ %203, %201 ], [ null, %196 ]
  %206 = icmp eq ptr %205, null
  br i1 %206, label %298, label %207, !prof !201

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.tree_function_decl, ptr %205, i64 0, i32 5
  %209 = load i32, ptr %208, align 8
  %210 = and i32 %209, 6144
  %211 = icmp eq i32 %210, 6144
  br i1 %211, label %212, label %298, !prof !201

212:                                              ; preds = %207
  %213 = and i32 %209, 2047
  switch i32 %213, label %298 [
    i32 341, label %214
    i32 349, label %214
    i32 330, label %214
    i32 331, label %214
    i32 332, label %214
    i32 335, label %214
    i32 336, label %214
    i32 338, label %214
    i32 347, label %214
    i32 325, label %258
    i32 455, label %535
    i32 491, label %535
    i32 422, label %535
    i32 333, label %535
    i32 78, label %535
    i32 79, label %535
    i32 80, label %535
    i32 84, label %535
    i32 85, label %535
    i32 86, label %535
    i32 123, label %535
    i32 124, label %535
    i32 125, label %535
    i32 159, label %535
    i32 160, label %535
    i32 161, label %535
    i32 192, label %535
    i32 193, label %535
    i32 194, label %535
    i32 220, label %535
    i32 221, label %535
    i32 222, label %535
  ]

214:                                              ; preds = %212, %212, %212, %212, %212, %212, %212, %212, %212
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #17
  %215 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %216 = load i32, ptr %215, align 4, !tbaa !93
  %217 = icmp eq i32 %216, 6
  br i1 %217, label %218, label %236

218:                                              ; preds = %214
  %219 = load i32, ptr %0, align 8
  %220 = and i32 %219, 255
  %221 = add nsw i32 %220, -10
  %222 = icmp ult i32 %221, -9
  br i1 %222, label %236, label %223

223:                                              ; preds = %218
  %224 = zext nneg i32 %220 to i64
  %225 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %224
  %226 = load i32, ptr %225, align 4, !tbaa !97
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %227
  %229 = load i64, ptr %228, align 8, !tbaa !167
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %232

232:                                              ; preds = %231, %223
  %233 = getelementptr inbounds i8, ptr %0, i64 %229
  %234 = getelementptr inbounds ptr, ptr %233, i64 5
  %235 = load ptr, ptr %234, align 8, !tbaa !82
  br label %236

236:                                              ; preds = %232, %218, %214
  %237 = phi ptr [ null, %214 ], [ %235, %232 ], [ null, %218 ]
  %238 = load i32, ptr %0, align 8
  %239 = and i32 %238, 255
  %240 = add nsw i32 %239, -10
  %241 = icmp ult i32 %240, -9
  br i1 %241, label %255, label %242

242:                                              ; preds = %236
  %243 = zext nneg i32 %239 to i64
  %244 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %243
  %245 = load i32, ptr %244, align 4, !tbaa !97
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %246
  %248 = load i64, ptr %247, align 8, !tbaa !167
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %242
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %251

251:                                              ; preds = %250, %242
  %252 = getelementptr inbounds i8, ptr %0, i64 %248
  %253 = getelementptr inbounds ptr, ptr %252, i64 4
  %254 = load ptr, ptr %253, align 8, !tbaa !82
  br label %255

255:                                              ; preds = %251, %236
  %256 = phi ptr [ %254, %251 ], [ null, %236 ]
  call void @ao_ref_init_from_ptr_and_size(ptr noundef nonnull %5, ptr noundef %256, ptr noundef %237)
  %257 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %5, ptr noundef nonnull %8, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #17
  br label %535

258:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #17
  %259 = load i32, ptr %0, align 8
  %260 = and i32 %259, 255
  %261 = add nsw i32 %260, -10
  %262 = icmp ult i32 %261, -9
  br i1 %262, label %276, label %263

263:                                              ; preds = %258
  %264 = zext nneg i32 %260 to i64
  %265 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %264
  %266 = load i32, ptr %265, align 4, !tbaa !97
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %267
  %269 = load i64, ptr %268, align 8, !tbaa !167
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %263
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %272

272:                                              ; preds = %271, %263
  %273 = getelementptr inbounds i8, ptr %0, i64 %269
  %274 = getelementptr inbounds ptr, ptr %273, i64 5
  %275 = load ptr, ptr %274, align 8, !tbaa !82
  br label %276

276:                                              ; preds = %272, %258
  %277 = phi ptr [ %275, %272 ], [ null, %258 ]
  %278 = load i32, ptr %0, align 8
  %279 = and i32 %278, 255
  %280 = add nsw i32 %279, -10
  %281 = icmp ult i32 %280, -9
  br i1 %281, label %295, label %282

282:                                              ; preds = %276
  %283 = zext nneg i32 %279 to i64
  %284 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !97
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %286
  %288 = load i64, ptr %287, align 8, !tbaa !167
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %282
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %291

291:                                              ; preds = %290, %282
  %292 = getelementptr inbounds i8, ptr %0, i64 %288
  %293 = getelementptr inbounds ptr, ptr %292, i64 3
  %294 = load ptr, ptr %293, align 8, !tbaa !82
  br label %295

295:                                              ; preds = %291, %276
  %296 = phi ptr [ %294, %291 ], [ null, %276 ]
  call void @ao_ref_init_from_ptr_and_size(ptr noundef nonnull %6, ptr noundef %296, ptr noundef %277)
  %297 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %6, ptr noundef nonnull %8, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #17
  br label %535

298:                                              ; preds = %212, %207, %204
  %299 = load i64, ptr %120, align 8
  %300 = and i64 %299, 201392127
  %301 = icmp ne i64 %300, 67108896
  %302 = or i1 %206, %301
  br i1 %302, label %312, label %303, !prof !202

303:                                              ; preds = %298
  %304 = call ptr @cgraph_node(ptr noundef nonnull %205) #17
  %305 = call ptr @ipa_reference_get_not_read_global(ptr noundef %304) #17
  %306 = icmp eq ptr %305, null
  br i1 %306, label %312, label %307

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.tree_decl_minimal, ptr %120, i64 0, i32 2
  %309 = load i32, ptr %308, align 4, !tbaa !93
  %310 = call i32 @bitmap_bit_p(ptr noundef nonnull %305, i32 noundef %309) #17
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %485

312:                                              ; preds = %307, %303, %298
  %313 = and i32 %89, 519
  %314 = icmp eq i32 %313, 0
  %315 = load i64, ptr %120, align 8
  %316 = and i64 %315, 65535
  %317 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !97
  %319 = icmp eq i32 %318, 3
  br i1 %314, label %426, label %320, !prof !202

320:                                              ; preds = %312
  br i1 %319, label %321, label %394

321:                                              ; preds = %320
  %322 = and i64 %315, 67108864
  %323 = icmp eq i64 %322, 0
  br i1 %323, label %324, label %535

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.tree_decl_common, ptr %120, i64 0, i32 2
  %326 = load i64, ptr %325, align 8
  %327 = and i64 %326, 33554432
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %329, label %535

329:                                              ; preds = %324
  %330 = icmp eq i64 %316, 33
  br i1 %330, label %354, label %331

331:                                              ; preds = %329
  %332 = and i64 %315, 135266304
  %333 = icmp eq i64 %332, 135266304
  br i1 %333, label %334, label %344

334:                                              ; preds = %331
  %335 = getelementptr inbounds %struct.tree_common, ptr %120, i64 0, i32 2
  %336 = load ptr, ptr %335, align 8, !tbaa !93
  %337 = getelementptr inbounds %struct.tree_type, ptr %336, i64 0, i32 6
  %338 = load i32, ptr %337, align 4
  %339 = and i32 %338, 2048
  %340 = icmp eq i32 %339, 0
  %341 = and i64 %315, 134479872
  %342 = icmp eq i64 %341, 0
  %343 = or i1 %340, %342
  br i1 %343, label %354, label %347

344:                                              ; preds = %331
  %345 = and i64 %315, 134479872
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %354, label %347

347:                                              ; preds = %334, %344
  %348 = load ptr, ptr @cfun, align 8, !tbaa !82
  %349 = getelementptr inbounds %struct.function, ptr %348, i64 0, i32 3
  %350 = load ptr, ptr %349, align 8, !tbaa !117
  %351 = getelementptr inbounds %struct.gimple_df, ptr %350, i64 0, i32 4
  %352 = call zeroext i8 @pt_solution_includes(ptr noundef nonnull %351, ptr noundef nonnull %120) #17
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %354, label %535

354:                                              ; preds = %344, %347, %334, %329
  %355 = load i64, ptr %120, align 8
  %356 = and i64 %355, 65535
  %357 = icmp eq i64 %356, 33
  br i1 %357, label %485, label %358

358:                                              ; preds = %354
  %359 = and i64 %355, 201326592
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %368

361:                                              ; preds = %358
  %362 = load i64, ptr %325, align 8
  %363 = and i64 %362, 33554432
  %364 = icmp eq i64 %363, 0
  %365 = and i64 %355, 1048576
  %366 = icmp eq i64 %365, 0
  %367 = or i1 %366, %364
  br i1 %367, label %378, label %371

368:                                              ; preds = %358
  %369 = and i64 %355, 1048576
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %378, label %371

371:                                              ; preds = %361, %368
  %372 = getelementptr inbounds %struct.tree_common, ptr %120, i64 0, i32 2
  %373 = load ptr, ptr %372, align 8, !tbaa !93
  %374 = getelementptr inbounds %struct.tree_type, ptr %373, i64 0, i32 6
  %375 = load i32, ptr %374, align 4
  %376 = and i32 %375, 2048
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %485, label %378

378:                                              ; preds = %371, %368, %361
  %379 = and i64 %355, 134217728
  %380 = icmp eq i64 %379, 0
  br i1 %380, label %381, label %387

381:                                              ; preds = %378
  %382 = load i64, ptr %325, align 8
  %383 = and i64 %382, 33554432
  %384 = and i64 %355, 262144
  %385 = or disjoint i64 %383, %384
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %485, label %387

387:                                              ; preds = %381, %378
  %388 = load ptr, ptr @cfun, align 8, !tbaa !82
  %389 = getelementptr inbounds %struct.function, ptr %388, i64 0, i32 3
  %390 = load ptr, ptr %389, align 8, !tbaa !117
  %391 = getelementptr inbounds %struct.gimple_df, ptr %390, i64 0, i32 5
  %392 = call zeroext i8 @pt_solution_includes(ptr noundef nonnull %391, ptr noundef nonnull %120) #17
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %485, label %535

394:                                              ; preds = %320
  %395 = trunc i64 %315 to i32
  %396 = and i32 %395, 65535
  %397 = add nsw i32 %396, -47
  %398 = icmp ult i32 %397, 3
  br i1 %398, label %399, label %535

399:                                              ; preds = %394
  %400 = getelementptr inbounds %struct.tree_exp, ptr %120, i64 0, i32 3
  %401 = load ptr, ptr %400, align 8, !tbaa !93
  %402 = load i64, ptr %401, align 8
  %403 = and i64 %402, 65535
  %404 = icmp eq i64 %403, 141
  br i1 %404, label %405, label %535

405:                                              ; preds = %399
  %406 = getelementptr inbounds %struct.tree_ssa_name, ptr %401, i64 0, i32 4
  %407 = load ptr, ptr %406, align 8, !tbaa !93
  %408 = icmp eq ptr %407, null
  br i1 %408, label %535, label %409

409:                                              ; preds = %405
  %410 = call zeroext i8 @pt_solution_includes_global(ptr noundef nonnull %407) #17
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %412, label %535

412:                                              ; preds = %409
  %413 = load ptr, ptr @cfun, align 8, !tbaa !82
  %414 = getelementptr inbounds %struct.function, ptr %413, i64 0, i32 3
  %415 = load ptr, ptr %414, align 8, !tbaa !117
  %416 = getelementptr inbounds %struct.gimple_df, ptr %415, i64 0, i32 5
  %417 = call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %416, ptr noundef nonnull %407) #17
  %418 = icmp eq i8 %417, 0
  br i1 %418, label %419, label %535

419:                                              ; preds = %412
  %420 = load ptr, ptr @cfun, align 8, !tbaa !82
  %421 = getelementptr inbounds %struct.function, ptr %420, i64 0, i32 3
  %422 = load ptr, ptr %421, align 8, !tbaa !117
  %423 = getelementptr inbounds %struct.gimple_df, ptr %422, i64 0, i32 4
  %424 = call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %423, ptr noundef nonnull %407) #17
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %485, label %535

426:                                              ; preds = %312
  br i1 %319, label %427, label %460, !prof !201

427:                                              ; preds = %426
  %428 = and i64 %315, 67108864
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %430, label %535

430:                                              ; preds = %427
  %431 = getelementptr inbounds %struct.tree_decl_common, ptr %120, i64 0, i32 2
  %432 = load i64, ptr %431, align 8
  %433 = and i64 %432, 33554432
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %535

435:                                              ; preds = %430
  %436 = icmp eq i64 %316, 33
  br i1 %436, label %485, label %437

437:                                              ; preds = %435
  %438 = and i64 %315, 135266304
  %439 = icmp eq i64 %438, 135266304
  br i1 %439, label %440, label %450

440:                                              ; preds = %437
  %441 = getelementptr inbounds %struct.tree_common, ptr %120, i64 0, i32 2
  %442 = load ptr, ptr %441, align 8, !tbaa !93
  %443 = getelementptr inbounds %struct.tree_type, ptr %442, i64 0, i32 6
  %444 = load i32, ptr %443, align 4
  %445 = and i32 %444, 2048
  %446 = icmp eq i32 %445, 0
  %447 = and i64 %315, 134479872
  %448 = icmp eq i64 %447, 0
  %449 = or i1 %446, %448
  br i1 %449, label %485, label %453

450:                                              ; preds = %437
  %451 = and i64 %315, 134479872
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %485, label %453

453:                                              ; preds = %440, %450
  %454 = load ptr, ptr @cfun, align 8, !tbaa !82
  %455 = getelementptr inbounds %struct.function, ptr %454, i64 0, i32 3
  %456 = load ptr, ptr %455, align 8, !tbaa !117
  %457 = getelementptr inbounds %struct.gimple_df, ptr %456, i64 0, i32 4
  %458 = call zeroext i8 @pt_solution_includes(ptr noundef nonnull %457, ptr noundef nonnull %120) #17
  %459 = icmp eq i8 %458, 0
  br i1 %459, label %485, label %535

460:                                              ; preds = %426
  %461 = trunc i64 %315 to i32
  %462 = and i32 %461, 65535
  %463 = add nsw i32 %462, -47
  %464 = icmp ult i32 %463, 3
  br i1 %464, label %465, label %535, !prof !202

465:                                              ; preds = %460
  %466 = getelementptr inbounds %struct.tree_exp, ptr %120, i64 0, i32 3
  %467 = load ptr, ptr %466, align 8, !tbaa !93
  %468 = load i64, ptr %467, align 8
  %469 = and i64 %468, 65535
  %470 = icmp eq i64 %469, 141
  br i1 %470, label %471, label %535, !prof !202

471:                                              ; preds = %465
  %472 = getelementptr inbounds %struct.tree_ssa_name, ptr %467, i64 0, i32 4
  %473 = load ptr, ptr %472, align 8, !tbaa !93
  %474 = icmp eq ptr %473, null
  br i1 %474, label %535, label %475, !prof !201

475:                                              ; preds = %471
  %476 = call zeroext i8 @pt_solution_includes_global(ptr noundef nonnull %473) #17
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %478, label %535, !prof !201

478:                                              ; preds = %475
  %479 = load ptr, ptr @cfun, align 8, !tbaa !82
  %480 = getelementptr inbounds %struct.function, ptr %479, i64 0, i32 3
  %481 = load ptr, ptr %480, align 8, !tbaa !117
  %482 = getelementptr inbounds %struct.gimple_df, ptr %481, i64 0, i32 4
  %483 = call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %482, ptr noundef nonnull %473) #17
  %484 = icmp eq i8 %483, 0
  br i1 %484, label %485, label %535

485:                                              ; preds = %450, %478, %453, %419, %387, %381, %175, %440, %435, %371, %354, %307, %107
  %486 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %487 = load i32, ptr %486, align 4, !tbaa !93
  %488 = icmp eq i32 %487, 3
  br i1 %488, label %535, label %489

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.ao_ref_s, ptr %7, i64 0, i32 1
  %491 = getelementptr inbounds %struct.ao_ref_s, ptr %7, i64 0, i32 3
  br label %492

492:                                              ; preds = %489, %529
  %493 = phi i64 [ 0, %489 ], [ %530, %529 ]
  %494 = add nuw i64 %493, 3
  %495 = load i32, ptr %0, align 8
  %496 = and i32 %495, 255
  %497 = add nsw i32 %496, -1
  %498 = icmp ult i32 %497, 9
  call void @llvm.assume(i1 %498)
  %499 = zext nneg i32 %496 to i64
  %500 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %499
  %501 = load i32, ptr %500, align 4, !tbaa !97
  %502 = zext i32 %501 to i64
  %503 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %502
  %504 = load i64, ptr %503, align 8, !tbaa !167
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %506, label %507

506:                                              ; preds = %492
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %507

507:                                              ; preds = %506, %492
  %508 = getelementptr inbounds i8, ptr %0, i64 %504
  %509 = and i64 %494, 4294967295
  %510 = getelementptr inbounds ptr, ptr %508, i64 %509
  %511 = load ptr, ptr %510, align 8, !tbaa !82
  %512 = load i64, ptr %511, align 8
  %513 = and i64 %512, 65535
  %514 = icmp eq i64 %513, 150
  br i1 %514, label %515, label %518

515:                                              ; preds = %507
  %516 = getelementptr inbounds %struct.tree_exp, ptr %511, i64 0, i32 3
  %517 = load ptr, ptr %516, align 8, !tbaa !93
  br label %518

518:                                              ; preds = %515, %507
  %519 = phi ptr [ %517, %515 ], [ %511, %507 ]
  %520 = load i64, ptr %519, align 8
  %521 = and i64 %520, 65535
  %522 = icmp eq i64 %521, 141
  br i1 %522, label %529, label %523

523:                                              ; preds = %518
  %524 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %519) #17
  %525 = icmp eq i8 %524, 0
  br i1 %525, label %526, label %529

526:                                              ; preds = %523
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #17
  store ptr %519, ptr %7, align 8, !tbaa !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %490, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %491, i8 -1, i64 24, i1 false)
  %527 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 1)
  %528 = icmp eq i8 %527, 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #17
  br i1 %528, label %529, label %535

529:                                              ; preds = %526, %523, %518
  %530 = add nuw nsw i64 %493, 1
  %531 = load i32, ptr %486, align 4, !tbaa !93
  %532 = add i32 %531, -3
  %533 = zext i32 %532 to i64
  %534 = icmp ult i64 %530, %533
  br i1 %534, label %492, label %535, !llvm.loop !203

535:                                              ; preds = %529, %526, %485, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %478, %475, %471, %465, %460, %453, %430, %427, %419, %412, %409, %405, %399, %394, %387, %347, %324, %321, %295, %255, %212, %119
  %536 = phi i8 [ %297, %295 ], [ %257, %255 ], [ 1, %119 ], [ 0, %212 ], [ 1, %387 ], [ 1, %409 ], [ 1, %412 ], [ 1, %419 ], [ 1, %405 ], [ 1, %394 ], [ 1, %399 ], [ 1, %453 ], [ 1, %475 ], [ 1, %478 ], [ 1, %471 ], [ 1, %460 ], [ 1, %465 ], [ 1, %324 ], [ 1, %321 ], [ 1, %347 ], [ 1, %427 ], [ 1, %430 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %485 ], [ 1, %526 ], [ 0, %529 ]
  %537 = icmp eq i8 %536, 0
  %538 = select i1 %537, ptr @alias_stats.3, ptr @alias_stats.2, !prof !201
  %539 = load i64, ptr %538, align 8, !tbaa !167
  %540 = add i64 %539, 1
  store i64 %540, ptr %538, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #17
  br label %541

541:                                              ; preds = %2, %74, %11, %71, %36, %32, %535
  %542 = phi i8 [ %536, %535 ], [ %79, %74 ], [ 0, %11 ], [ 0, %71 ], [ 0, %36 ], [ 0, %32 ], [ 1, %2 ]
  ret i8 %542
}

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 !prof !204 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  %5 = alloca %struct.ao_ref_s, align 8
  %6 = alloca %struct.ao_ref_s, align 8
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 255
  %9 = trunc i32 %7 to i8
  switch i8 %9, label %515 [
    i8 8, label %10
    i8 6, label %495
  ], !prof !205

10:                                               ; preds = %2
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !97
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !167
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19, !prof !206

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %19

19:                                               ; preds = %18, %10
  %20 = getelementptr inbounds i8, ptr %0, i64 %16
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23, !prof !207

23:                                               ; preds = %19
  %24 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %21) #17
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31, !prof !208

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #17
  store ptr %21, ptr %5, align 8, !tbaa !136
  %27 = getelementptr inbounds %struct.ao_ref_s, ptr %5, i64 0, i32 1
  %28 = getelementptr inbounds %struct.ao_ref_s, ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 -1, i64 24, i1 false)
  %29 = call zeroext i8 @refs_may_alias_p_1(ptr noundef %1, ptr noundef nonnull %5, i8 noundef zeroext 1)
  %30 = icmp eq i8 %29, 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #17
  br i1 %30, label %31, label %518

31:                                               ; preds = %26, %23, %19
  %32 = call i32 @gimple_call_flags(ptr noundef %0) #17
  %33 = and i32 %32, 519
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %518, !prof !209

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !139
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %45, !prof !210

39:                                               ; preds = %35
  %40 = load ptr, ptr %1, align 8, !tbaa !136
  %41 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 2
  %42 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 3
  %43 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 4
  %44 = call ptr @get_ref_base_and_extent(ptr noundef %40, ptr noundef nonnull %41, ptr noundef nonnull %42, ptr noundef nonnull %43) #17
  store ptr %44, ptr %36, align 8, !tbaa !139
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi ptr [ %44, %39 ], [ %37, %35 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %518, label %48, !prof !206

48:                                               ; preds = %45
  %49 = load i64, ptr %46, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 141
  br i1 %51, label %518, label %52, !prof !206

52:                                               ; preds = %48
  %53 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %50
  %54 = load i32, ptr %53, align 4, !tbaa !97
  switch i32 %54, label %108 [
    i32 1, label %518
    i32 3, label %55
  ], !prof !211

55:                                               ; preds = %52
  %56 = icmp eq i64 %50, 33
  br i1 %56, label %90, label %57, !prof !212

57:                                               ; preds = %55
  %58 = and i64 %49, 201326592
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %68, !prof !212

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 2
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 33554432
  %64 = icmp eq i64 %63, 0
  %65 = and i64 %49, 1048576
  %66 = icmp eq i64 %65, 0
  %67 = or i1 %66, %64
  br i1 %67, label %78, label %71, !prof !213

68:                                               ; preds = %57
  %69 = and i64 %49, 1048576
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %78, label %71, !prof !214

71:                                               ; preds = %60, %68
  %72 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !93
  %74 = getelementptr inbounds %struct.tree_type, ptr %73, i64 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 2048
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %71, %68, %60
  %79 = and i64 %49, 134217728
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %90, !prof !212

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 2
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 33554432
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = lshr i64 %49, 18
  %88 = trunc i64 %87 to i8
  %89 = and i8 %88, 1
  br label %90

90:                                               ; preds = %86, %81, %78, %71, %55
  %91 = phi i8 [ 0, %71 ], [ 0, %55 ], [ 1, %81 ], [ 1, %78 ], [ %89, %86 ]
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %108, !prof !212

93:                                               ; preds = %90
  %94 = and i64 %49, 1048576
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %518

96:                                               ; preds = %93
  %97 = and i64 %49, 67108864
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 2
  %101 = load i64, ptr %100, align 8
  %102 = lshr i64 %101, 25
  %103 = trunc i64 %102 to i8
  %104 = and i8 %103, 1
  br label %105

105:                                              ; preds = %99, %96
  %106 = phi i8 [ 1, %96 ], [ %104, %99 ]
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %518, label %108

108:                                              ; preds = %105, %90, %52
  %109 = load i32, ptr %0, align 8
  %110 = and i32 %109, 255
  %111 = add nsw i32 %110, -10
  %112 = icmp ult i32 %111, -9
  br i1 %112, label %126, label %113, !prof !206

113:                                              ; preds = %108
  %114 = zext nneg i32 %110 to i64
  %115 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !97
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %117
  %119 = load i64, ptr %118, align 8, !tbaa !167
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122, !prof !206

121:                                              ; preds = %113
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %122

122:                                              ; preds = %121, %113
  %123 = getelementptr inbounds i8, ptr %0, i64 %119
  %124 = getelementptr inbounds ptr, ptr %123, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !82
  br label %126

126:                                              ; preds = %122, %108
  %127 = phi ptr [ %125, %122 ], [ null, %108 ]
  %128 = load i64, ptr %127, align 8
  %129 = and i64 %128, 65535
  %130 = icmp eq i64 %129, 121
  br i1 %130, label %131, label %134, !prof !209

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.tree_exp, ptr %127, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !93
  br label %134

134:                                              ; preds = %131, %126
  %135 = phi ptr [ %133, %131 ], [ null, %126 ]
  %136 = icmp eq ptr %135, null
  br i1 %136, label %410, label %137, !prof !206

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.tree_function_decl, ptr %135, i64 0, i32 5
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 6144
  %141 = icmp eq i32 %140, 6144
  br i1 %141, label %142, label %410, !prof !206

142:                                              ; preds = %137
  %143 = and i32 %139, 2047
  switch i32 %143, label %410 [
    i32 341, label %144
    i32 349, label %144
    i32 330, label %144
    i32 331, label %144
    i32 332, label %144
    i32 335, label %144
    i32 336, label %144
    i32 338, label %144
    i32 347, label %144
    i32 333, label %144
    i32 325, label %188
    i32 491, label %228
    i32 422, label %228
    i32 455, label %269
    i32 84, label %290
    i32 85, label %290
    i32 86, label %290
    i32 123, label %290
    i32 124, label %290
    i32 125, label %290
    i32 78, label %317
    i32 79, label %317
    i32 80, label %317
    i32 159, label %317
    i32 160, label %317
    i32 161, label %317
    i32 192, label %338
    i32 193, label %338
    i32 194, label %338
    i32 220, label %365
    i32 221, label %365
    i32 222, label %365
  ]

144:                                              ; preds = %142, %142, %142, %142, %142, %142, %142, %142, %142, %142
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #17
  %145 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %146 = load i32, ptr %145, align 4, !tbaa !93
  %147 = icmp eq i32 %146, 6
  br i1 %147, label %148, label %166

148:                                              ; preds = %144
  %149 = load i32, ptr %0, align 8
  %150 = and i32 %149, 255
  %151 = add nsw i32 %150, -10
  %152 = icmp ult i32 %151, -9
  br i1 %152, label %166, label %153

153:                                              ; preds = %148
  %154 = zext nneg i32 %150 to i64
  %155 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !97
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %157
  %159 = load i64, ptr %158, align 8, !tbaa !167
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %162

162:                                              ; preds = %161, %153
  %163 = getelementptr inbounds i8, ptr %0, i64 %159
  %164 = getelementptr inbounds ptr, ptr %163, i64 5
  %165 = load ptr, ptr %164, align 8, !tbaa !82
  br label %166

166:                                              ; preds = %162, %148, %144
  %167 = phi ptr [ null, %144 ], [ %165, %162 ], [ null, %148 ]
  %168 = load i32, ptr %0, align 8
  %169 = and i32 %168, 255
  %170 = add nsw i32 %169, -10
  %171 = icmp ult i32 %170, -9
  br i1 %171, label %185, label %172

172:                                              ; preds = %166
  %173 = zext nneg i32 %169 to i64
  %174 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !97
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !167
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %181

181:                                              ; preds = %180, %172
  %182 = getelementptr inbounds i8, ptr %0, i64 %178
  %183 = getelementptr inbounds ptr, ptr %182, i64 3
  %184 = load ptr, ptr %183, align 8, !tbaa !82
  br label %185

185:                                              ; preds = %181, %166
  %186 = phi ptr [ %184, %181 ], [ null, %166 ]
  call void @ao_ref_init_from_ptr_and_size(ptr noundef nonnull %3, ptr noundef %186, ptr noundef %167)
  %187 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #17
  br label %518

188:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #17
  %189 = load i32, ptr %0, align 8
  %190 = and i32 %189, 255
  %191 = add nsw i32 %190, -10
  %192 = icmp ult i32 %191, -9
  br i1 %192, label %206, label %193

193:                                              ; preds = %188
  %194 = zext nneg i32 %190 to i64
  %195 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !97
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %197
  %199 = load i64, ptr %198, align 8, !tbaa !167
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %202

202:                                              ; preds = %201, %193
  %203 = getelementptr inbounds i8, ptr %0, i64 %199
  %204 = getelementptr inbounds ptr, ptr %203, i64 5
  %205 = load ptr, ptr %204, align 8, !tbaa !82
  br label %206

206:                                              ; preds = %202, %188
  %207 = phi ptr [ %205, %202 ], [ null, %188 ]
  %208 = load i32, ptr %0, align 8
  %209 = and i32 %208, 255
  %210 = add nsw i32 %209, -10
  %211 = icmp ult i32 %210, -9
  br i1 %211, label %225, label %212

212:                                              ; preds = %206
  %213 = zext nneg i32 %209 to i64
  %214 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !97
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %216
  %218 = load i64, ptr %217, align 8, !tbaa !167
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %212
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %221

221:                                              ; preds = %220, %212
  %222 = getelementptr inbounds i8, ptr %0, i64 %218
  %223 = getelementptr inbounds ptr, ptr %222, i64 4
  %224 = load ptr, ptr %223, align 8, !tbaa !82
  br label %225

225:                                              ; preds = %221, %206
  %226 = phi ptr [ %224, %221 ], [ null, %206 ]
  call void @ao_ref_init_from_ptr_and_size(ptr noundef nonnull %4, ptr noundef %226, ptr noundef %207)
  %227 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #17
  br label %518

228:                                              ; preds = %142, %142
  %229 = load i32, ptr @flag_errno_math, align 4, !tbaa !97
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %268, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !93
  %234 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !82
  %235 = icmp eq ptr %233, %234
  br i1 %235, label %236, label %268

236:                                              ; preds = %231
  %237 = load i64, ptr %46, align 8
  %238 = and i64 %237, 65535
  %239 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !97
  %241 = icmp eq i32 %240, 3
  %242 = and i64 %237, 67108864
  %243 = icmp eq i64 %242, 0
  %244 = and i1 %241, %243
  br i1 %244, label %265, label %245

245:                                              ; preds = %236
  %246 = trunc i64 %237 to i32
  %247 = and i32 %246, 65535
  %248 = add nsw i32 %247, -47
  %249 = icmp ult i32 %248, 3
  br i1 %249, label %250, label %265

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8, !tbaa !93
  %253 = load i64, ptr %252, align 8
  %254 = and i64 %253, 65535
  %255 = icmp eq i64 %254, 141
  br i1 %255, label %256, label %265

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.tree_ssa_name, ptr %252, i64 0, i32 4
  %258 = load ptr, ptr %257, align 8, !tbaa !93
  %259 = icmp eq ptr %258, null
  br i1 %259, label %265, label %260

260:                                              ; preds = %256
  %261 = load i8, ptr %258, align 8
  %262 = and i8 %261, 3
  %263 = icmp ne i8 %262, 0
  %264 = zext i1 %263 to i8
  br label %265

265:                                              ; preds = %260, %256, %250, %245, %236
  %266 = phi i1 [ false, %260 ], [ false, %236 ], [ true, %245 ], [ true, %250 ], [ true, %256 ]
  %267 = phi i8 [ %264, %260 ], [ 1, %236 ], [ undef, %245 ], [ undef, %250 ], [ undef, %256 ]
  br i1 %266, label %268, label %518

268:                                              ; preds = %265, %231, %228
  br label %518

269:                                              ; preds = %142
  %270 = load i32, ptr %0, align 8
  %271 = and i32 %270, 255
  %272 = add nsw i32 %271, -10
  %273 = icmp ult i32 %272, -9
  br i1 %273, label %287, label %274

274:                                              ; preds = %269
  %275 = zext nneg i32 %271 to i64
  %276 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %275
  %277 = load i32, ptr %276, align 4, !tbaa !97
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %278
  %280 = load i64, ptr %279, align 8, !tbaa !167
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %283

283:                                              ; preds = %282, %274
  %284 = getelementptr inbounds i8, ptr %0, i64 %280
  %285 = getelementptr inbounds ptr, ptr %284, i64 3
  %286 = load ptr, ptr %285, align 8, !tbaa !82
  br label %287

287:                                              ; preds = %283, %269
  %288 = phi ptr [ %286, %283 ], [ null, %269 ]
  %289 = call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %288, ptr noundef %1)
  br label %518

290:                                              ; preds = %142, %142, %142, %142, %142, %142
  %291 = load i32, ptr %0, align 8
  %292 = and i32 %291, 255
  %293 = add nsw i32 %292, -10
  %294 = icmp ult i32 %293, -9
  br i1 %294, label %308, label %295

295:                                              ; preds = %290
  %296 = zext nneg i32 %292 to i64
  %297 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %296
  %298 = load i32, ptr %297, align 4, !tbaa !97
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %299
  %301 = load i64, ptr %300, align 8, !tbaa !167
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %295
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %304

304:                                              ; preds = %303, %295
  %305 = getelementptr inbounds i8, ptr %0, i64 %301
  %306 = getelementptr inbounds ptr, ptr %305, i64 4
  %307 = load ptr, ptr %306, align 8, !tbaa !82
  br label %308

308:                                              ; preds = %304, %290
  %309 = phi ptr [ %307, %304 ], [ null, %290 ]
  %310 = call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %309, ptr noundef %1)
  %311 = icmp eq i8 %310, 0
  %312 = load i32, ptr @flag_errno_math, align 4
  %313 = icmp ne i32 %312, 0
  %314 = select i1 %311, i1 %313, i1 false
  %315 = xor i1 %311, true
  %316 = zext i1 %315 to i8
  br i1 %314, label %410, label %518

317:                                              ; preds = %142, %142, %142, %142, %142, %142
  %318 = load i32, ptr %0, align 8
  %319 = and i32 %318, 255
  %320 = add nsw i32 %319, -10
  %321 = icmp ult i32 %320, -9
  br i1 %321, label %335, label %322

322:                                              ; preds = %317
  %323 = zext nneg i32 %319 to i64
  %324 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %323
  %325 = load i32, ptr %324, align 4, !tbaa !97
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %326
  %328 = load i64, ptr %327, align 8, !tbaa !167
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %322
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %331

331:                                              ; preds = %330, %322
  %332 = getelementptr inbounds i8, ptr %0, i64 %328
  %333 = getelementptr inbounds ptr, ptr %332, i64 4
  %334 = load ptr, ptr %333, align 8, !tbaa !82
  br label %335

335:                                              ; preds = %331, %317
  %336 = phi ptr [ %334, %331 ], [ null, %317 ]
  %337 = call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %336, ptr noundef %1)
  br label %518

338:                                              ; preds = %142, %142, %142
  %339 = load i32, ptr %0, align 8
  %340 = and i32 %339, 255
  %341 = add nsw i32 %340, -10
  %342 = icmp ult i32 %341, -9
  br i1 %342, label %356, label %343

343:                                              ; preds = %338
  %344 = zext nneg i32 %340 to i64
  %345 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !97
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %347
  %349 = load i64, ptr %348, align 8, !tbaa !167
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %343
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %352

352:                                              ; preds = %351, %343
  %353 = getelementptr inbounds i8, ptr %0, i64 %349
  %354 = getelementptr inbounds ptr, ptr %353, i64 5
  %355 = load ptr, ptr %354, align 8, !tbaa !82
  br label %356

356:                                              ; preds = %352, %338
  %357 = phi ptr [ %355, %352 ], [ null, %338 ]
  %358 = call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %357, ptr noundef %1)
  %359 = icmp eq i8 %358, 0
  %360 = load i32, ptr @flag_errno_math, align 4
  %361 = icmp ne i32 %360, 0
  %362 = select i1 %359, i1 %361, i1 false
  %363 = xor i1 %359, true
  %364 = zext i1 %363 to i8
  br i1 %362, label %410, label %518

365:                                              ; preds = %142, %142, %142
  %366 = load i32, ptr %0, align 8
  %367 = and i32 %366, 255
  %368 = add nsw i32 %367, -10
  %369 = icmp ult i32 %368, -9
  br i1 %369, label %383, label %370

370:                                              ; preds = %365
  %371 = zext nneg i32 %367 to i64
  %372 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %371
  %373 = load i32, ptr %372, align 4, !tbaa !97
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %374
  %376 = load i64, ptr %375, align 8, !tbaa !167
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %370
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %379

379:                                              ; preds = %378, %370
  %380 = getelementptr inbounds i8, ptr %0, i64 %376
  %381 = getelementptr inbounds ptr, ptr %380, i64 4
  %382 = load ptr, ptr %381, align 8, !tbaa !82
  br label %383

383:                                              ; preds = %379, %365
  %384 = phi ptr [ %382, %379 ], [ null, %365 ]
  %385 = load i32, ptr %0, align 8
  %386 = and i32 %385, 255
  %387 = add nsw i32 %386, -10
  %388 = icmp ult i32 %387, -9
  br i1 %388, label %402, label %389

389:                                              ; preds = %383
  %390 = zext nneg i32 %386 to i64
  %391 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %390
  %392 = load i32, ptr %391, align 4, !tbaa !97
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %393
  %395 = load i64, ptr %394, align 8, !tbaa !167
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %389
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %398

398:                                              ; preds = %397, %389
  %399 = getelementptr inbounds i8, ptr %0, i64 %395
  %400 = getelementptr inbounds ptr, ptr %399, i64 5
  %401 = load ptr, ptr %400, align 8, !tbaa !82
  br label %402

402:                                              ; preds = %383, %398
  %403 = phi ptr [ %401, %398 ], [ null, %383 ]
  %404 = call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %384, ptr noundef %1)
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %406, label %518

406:                                              ; preds = %402
  %407 = call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %403, ptr noundef %1)
  %408 = icmp ne i8 %407, 0
  %409 = zext i1 %408 to i8
  br label %518

410:                                              ; preds = %356, %142, %308, %137, %134
  %411 = phi i8 [ %316, %308 ], [ undef, %137 ], [ undef, %134 ], [ undef, %142 ], [ %364, %356 ]
  br i1 %136, label %429, label %412, !prof !206

412:                                              ; preds = %410
  %413 = load i64, ptr %46, align 8
  %414 = and i64 %413, 201392127
  %415 = icmp eq i64 %414, 67108896
  br i1 %415, label %416, label %429, !prof !206

416:                                              ; preds = %412
  %417 = call ptr @cgraph_node(ptr noundef nonnull %135) #17
  %418 = call ptr @ipa_reference_get_not_written_global(ptr noundef %417) #17
  %419 = icmp eq ptr %418, null
  br i1 %419, label %425, label %420

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct.tree_decl_minimal, ptr %46, i64 0, i32 2
  %422 = load i32, ptr %421, align 4, !tbaa !93
  %423 = call i32 @bitmap_bit_p(ptr noundef nonnull %418, i32 noundef %422) #17
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %420, %416
  br label %426

426:                                              ; preds = %425, %420
  %427 = phi i1 [ true, %425 ], [ false, %420 ]
  %428 = phi i8 [ %411, %425 ], [ 0, %420 ]
  br i1 %427, label %429, label %518

429:                                              ; preds = %426, %412, %410
  %430 = load i64, ptr %46, align 8
  %431 = and i64 %430, 65535
  %432 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %431
  %433 = load i32, ptr %432, align 4, !tbaa !97
  %434 = icmp eq i32 %433, 3
  br i1 %434, label %435, label %469, !prof !215

435:                                              ; preds = %429
  %436 = and i64 %430, 67108864
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %438, label %518, !prof !214

438:                                              ; preds = %435
  %439 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 2
  %440 = load i64, ptr %439, align 8
  %441 = and i64 %440, 33554432
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %443, label %518, !prof !212

443:                                              ; preds = %438
  %444 = icmp eq i64 %431, 33
  br i1 %444, label %518, label %445

445:                                              ; preds = %443
  %446 = and i64 %430, 135266304
  %447 = icmp eq i64 %446, 135266304
  br i1 %447, label %448, label %458

448:                                              ; preds = %445
  %449 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %450 = load ptr, ptr %449, align 8, !tbaa !93
  %451 = getelementptr inbounds %struct.tree_type, ptr %450, i64 0, i32 6
  %452 = load i32, ptr %451, align 4
  %453 = and i32 %452, 2048
  %454 = icmp eq i32 %453, 0
  %455 = and i64 %430, 134479872
  %456 = icmp eq i64 %455, 0
  %457 = or i1 %454, %456
  br i1 %457, label %518, label %461

458:                                              ; preds = %445
  %459 = and i64 %430, 134479872
  %460 = icmp eq i64 %459, 0
  br i1 %460, label %518, label %461

461:                                              ; preds = %448, %458
  %462 = load ptr, ptr @cfun, align 8, !tbaa !82
  %463 = getelementptr inbounds %struct.function, ptr %462, i64 0, i32 3
  %464 = load ptr, ptr %463, align 8, !tbaa !117
  %465 = getelementptr inbounds %struct.gimple_df, ptr %464, i64 0, i32 4
  %466 = call zeroext i8 @pt_solution_includes(ptr noundef nonnull %465, ptr noundef nonnull %46) #17
  %467 = icmp ne i8 %466, 0
  %468 = zext i1 %467 to i8
  br label %518

469:                                              ; preds = %429
  %470 = trunc i64 %430 to i32
  %471 = and i32 %470, 65535
  %472 = add nsw i32 %471, -47
  %473 = icmp ult i32 %472, 3
  br i1 %473, label %474, label %518, !prof !216

474:                                              ; preds = %469
  %475 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %476 = load ptr, ptr %475, align 8, !tbaa !93
  %477 = load i64, ptr %476, align 8
  %478 = and i64 %477, 65535
  %479 = icmp eq i64 %478, 141
  br i1 %479, label %480, label %518, !prof !216

480:                                              ; preds = %474
  %481 = getelementptr inbounds %struct.tree_ssa_name, ptr %476, i64 0, i32 4
  %482 = load ptr, ptr %481, align 8, !tbaa !93
  %483 = icmp eq ptr %482, null
  br i1 %483, label %518, label %484, !prof !217

484:                                              ; preds = %480
  %485 = call zeroext i8 @pt_solution_includes_global(ptr noundef nonnull %482) #17
  %486 = icmp eq i8 %485, 0
  br i1 %486, label %487, label %518, !prof !217

487:                                              ; preds = %484
  %488 = load ptr, ptr @cfun, align 8, !tbaa !82
  %489 = getelementptr inbounds %struct.function, ptr %488, i64 0, i32 3
  %490 = load ptr, ptr %489, align 8, !tbaa !117
  %491 = getelementptr inbounds %struct.gimple_df, ptr %490, i64 0, i32 4
  %492 = call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %491, ptr noundef nonnull %482) #17
  %493 = icmp ne i8 %492, 0
  %494 = zext i1 %493 to i8
  br label %518

495:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #17
  %496 = add nsw i32 %8, -10
  %497 = icmp ult i32 %496, -9
  br i1 %497, label %510, label %498, !prof !218

498:                                              ; preds = %495
  %499 = zext nneg i32 %8 to i64
  %500 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %499
  %501 = load i32, ptr %500, align 4, !tbaa !97
  %502 = zext i32 %501 to i64
  %503 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %502
  %504 = load i64, ptr %503, align 8, !tbaa !167
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %506, label %507, !prof !218

506:                                              ; preds = %498
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #17
  br label %507

507:                                              ; preds = %506, %498
  %508 = getelementptr inbounds i8, ptr %0, i64 %504
  %509 = load ptr, ptr %508, align 8, !tbaa !82
  br label %510

510:                                              ; preds = %495, %507
  %511 = phi ptr [ %509, %507 ], [ null, %495 ]
  store ptr %511, ptr %6, align 8, !tbaa !136
  %512 = getelementptr inbounds %struct.ao_ref_s, ptr %6, i64 0, i32 1
  %513 = getelementptr inbounds %struct.ao_ref_s, ptr %6, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %512, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %513, i8 -1, i64 24, i1 false)
  %514 = call zeroext i8 @refs_may_alias_p_1(ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #17
  br label %518

515:                                              ; preds = %2
  %516 = icmp eq i32 %8, 7
  %517 = zext i1 %516 to i8
  br label %518

518:                                              ; preds = %458, %426, %356, %308, %265, %105, %487, %484, %480, %474, %469, %461, %448, %443, %438, %435, %406, %402, %335, %287, %268, %225, %185, %93, %52, %48, %45, %31, %515, %26, %510
  %519 = phi i8 [ %514, %510 ], [ 1, %26 ], [ %517, %515 ], [ %337, %335 ], [ %289, %287 ], [ 0, %268 ], [ %227, %225 ], [ %187, %185 ], [ 0, %31 ], [ 1, %45 ], [ 0, %52 ], [ 0, %48 ], [ 0, %93 ], [ 1, %402 ], [ %409, %406 ], [ 1, %480 ], [ 1, %484 ], [ %494, %487 ], [ 1, %469 ], [ 1, %474 ], [ 1, %438 ], [ %468, %461 ], [ 1, %435 ], [ 0, %443 ], [ 0, %448 ], [ 0, %105 ], [ %267, %265 ], [ %316, %308 ], [ %364, %356 ], [ %428, %426 ], [ 0, %458 ]
  ret i8 %519
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @stmt_may_clobber_ref_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !219 {
  %3 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8, !tbaa !136
  %4 = getelementptr inbounds %struct.ao_ref_s, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct.ao_ref_s, ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 -1, i64 24, i1 false)
  %6 = call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #17
  ret i8 %6
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @get_continuation_for_phi(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #13 !prof !220 {
  %4 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !93
  switch i32 %5, label %91 [
    i32 1, label %6
    i32 2, label %10
  ], !prof !221

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  br label %92

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !222
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = load i32, ptr %11, align 8, !tbaa !93
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !224

17:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 3103, ptr noundef nonnull @.str.12) #17
  br label %18

18:                                               ; preds = %10, %17
  %19 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 1, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !222
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !93
  %26 = icmp eq ptr %14, %21
  br i1 %26, label %88, label %27, !prof !224

27:                                               ; preds = %18
  %28 = load i32, ptr %23, align 8
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 18
  br i1 %30, label %42, label %31, !prof !225

31:                                               ; preds = %27
  %32 = load i32, ptr %25, align 8
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 18
  br i1 %34, label %45, label %35, !prof !226

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gimple_statement_base, ptr %25, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !93
  %38 = getelementptr inbounds %struct.gimple_statement_base, ptr %23, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !93
  %40 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %37, ptr noundef %39) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42, !prof !227

42:                                               ; preds = %35, %27
  %43 = tail call fastcc zeroext i8 @maybe_skip_until(ptr noundef %0, ptr noundef %14, ptr noundef %1, ptr noundef %21, ptr noundef %2)
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %87, label %88, !prof !228

45:                                               ; preds = %35, %31
  %46 = load i32, ptr %25, align 8
  %47 = and i32 %46, 255
  %48 = icmp eq i32 %47, 18
  br i1 %48, label %56, label %49, !prof !229

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.gimple_statement_base, ptr %23, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !93
  %52 = getelementptr inbounds %struct.gimple_statement_base, ptr %25, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !93
  %54 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %51, ptr noundef %53) #17
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56, !prof !230

56:                                               ; preds = %49, %45
  %57 = tail call fastcc zeroext i8 @maybe_skip_until(ptr noundef %0, ptr noundef %21, ptr noundef %1, ptr noundef %14, ptr noundef %2)
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %87, label %88, !prof !231

59:                                               ; preds = %49
  %60 = load i32, ptr %23, align 8
  %61 = and i32 %60, 254
  %62 = add nsw i32 %61, -10
  %63 = icmp ult i32 %62, -4
  br i1 %63, label %67, label %64, !prof !232

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %23, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !93
  br label %67

67:                                               ; preds = %59, %64
  %68 = phi ptr [ %66, %64 ], [ null, %59 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %87, label %70, !prof !232

70:                                               ; preds = %67
  %71 = load i32, ptr %25, align 8
  %72 = and i32 %71, 254
  %73 = add nsw i32 %72, -10
  %74 = icmp ult i32 %73, -4
  br i1 %74, label %78, label %75, !prof !233

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %25, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !93
  br label %78

78:                                               ; preds = %70, %75
  %79 = phi ptr [ %77, %75 ], [ null, %70 ]
  %80 = icmp eq ptr %68, %79
  br i1 %80, label %81, label %87, !prof !234

81:                                               ; preds = %78
  %82 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef nonnull %23, ptr noundef %1)
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef nonnull %25, ptr noundef %1)
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %56, %42, %67, %78, %84, %81
  br label %88

88:                                               ; preds = %84, %56, %42, %18, %87
  %89 = phi i1 [ true, %87 ], [ false, %18 ], [ false, %42 ], [ false, %56 ], [ false, %84 ]
  %90 = phi ptr [ undef, %87 ], [ %14, %18 ], [ %14, %42 ], [ %21, %56 ], [ %68, %84 ]
  br i1 %89, label %91, label %92, !prof !235

91:                                               ; preds = %3, %88
  br label %92

92:                                               ; preds = %88, %91, %6
  %93 = phi ptr [ %9, %6 ], [ null, %91 ], [ %90, %88 ]
  ret ptr %93
}

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @maybe_skip_until(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #10 !prof !236 !PGOFuncName !237 {
  %6 = load ptr, ptr %4, align 8, !tbaa !82
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !238

8:                                                ; preds = %5
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %9, ptr %4, align 8, !tbaa !82
  br label %10

10:                                               ; preds = %8, %5
  %11 = load ptr, ptr %4, align 8, !tbaa !82
  %12 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !93
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %15) #17
  br label %17

17:                                               ; preds = %49, %10
  %18 = phi ptr [ %3, %10 ], [ %50, %49 ]
  %19 = phi i8 [ undef, %10 ], [ %51, %49 ]
  %20 = icmp eq ptr %18, %1
  br i1 %20, label %53, label %21, !prof !239

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i8
  switch i8 %25, label %38 [
    i8 16, label %26
    i8 18, label %49
  ], !prof !240

26:                                               ; preds = %21
  %27 = load ptr, ptr %4, align 8, !tbaa !82
  %28 = getelementptr inbounds %struct.gimple_statement_phi, ptr %23, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !82
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %29, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !93
  %32 = tail call i32 @bitmap_bit_p(ptr noundef %27, i32 noundef %31) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %49, !prof !241

34:                                               ; preds = %26
  %35 = tail call ptr @get_continuation_for_phi(ptr noundef nonnull %23, ptr noundef %2, ptr noundef nonnull %4)
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, i8 0, i8 %19, !prof !241
  br label %49

38:                                               ; preds = %21
  %39 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef nonnull %23, ptr noundef %2)
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %49, !prof !242

41:                                               ; preds = %38
  %42 = load i32, ptr %23, align 8
  %43 = and i32 %42, 254
  %44 = add nsw i32 %43, -10
  %45 = icmp ult i32 %44, -4
  br i1 %45, label %49, label %46, !prof !243

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %23, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !93
  br label %49

49:                                               ; preds = %21, %46, %41, %38, %34, %26
  %50 = phi ptr [ %18, %26 ], [ %35, %34 ], [ %18, %38 ], [ %48, %46 ], [ null, %41 ], [ %18, %21 ]
  %51 = phi i8 [ 1, %26 ], [ %37, %34 ], [ 0, %38 ], [ %19, %46 ], [ %19, %41 ], [ 0, %21 ]
  %52 = phi i1 [ true, %26 ], [ %36, %34 ], [ true, %38 ], [ false, %46 ], [ false, %41 ], [ true, %21 ]
  br i1 %52, label %53, label %17, !prof !244

53:                                               ; preds = %49, %17
  %54 = phi i8 [ 1, %17 ], [ %51, %49 ]
  ret i8 %54
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @walk_non_aliased_vuses(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, ptr noundef %4) local_unnamed_addr #13 !prof !245 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store ptr null, ptr %6, align 8, !tbaa !82
  %7 = load i8, ptr @timevar_enable, align 1, !tbaa !93
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !246

9:                                                ; preds = %5
  tail call void @timevar_push_1(i32 noundef 39) #17
  br label %10

10:                                               ; preds = %9, %5
  br label %11

11:                                               ; preds = %126, %10
  %12 = phi ptr [ %1, %10 ], [ %128, %126 ]
  %13 = tail call ptr %2(ptr noundef %0, ptr noundef %12, ptr noundef %4) #17, !prof !247
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %126, !prof !248

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  %18 = load i32, ptr %17, align 8
  %19 = trunc i32 %18 to i8
  switch i8 %19, label %109 [
    i8 18, label %126
    i8 16, label %20
  ], !prof !249

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.gimple_statement_phi, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !93
  switch i32 %22, label %108 [
    i32 1, label %23
    i32 2, label %27
  ], !prof !221

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.gimple_statement_phi, ptr %17, i64 0, i32 4, i64 0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !222
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  br label %126

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.gimple_statement_phi, ptr %17, i64 0, i32 1
  %29 = getelementptr inbounds %struct.gimple_statement_phi, ptr %17, i64 0, i32 4, i64 0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !222
  %31 = load ptr, ptr %30, align 8, !tbaa !82
  %32 = load i32, ptr %28, align 8, !tbaa !93
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35, !prof !224

34:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 3103, ptr noundef nonnull @.str.12) #17
  br label %35

35:                                               ; preds = %34, %27
  %36 = getelementptr inbounds %struct.gimple_statement_phi, ptr %17, i64 1, i32 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !222
  %38 = load ptr, ptr %37, align 8, !tbaa !82
  %39 = getelementptr inbounds %struct.tree_ssa_name, ptr %31, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !93
  %41 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !93
  %43 = icmp eq ptr %31, %38
  br i1 %43, label %105, label %44, !prof !224

44:                                               ; preds = %35
  %45 = load i32, ptr %40, align 8
  %46 = and i32 %45, 255
  %47 = icmp eq i32 %46, 18
  br i1 %47, label %59, label %48, !prof !225

48:                                               ; preds = %44
  %49 = load i32, ptr %42, align 8
  %50 = and i32 %49, 255
  %51 = icmp eq i32 %50, 18
  br i1 %51, label %62, label %52, !prof !226

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.gimple_statement_base, ptr %42, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !93
  %55 = getelementptr inbounds %struct.gimple_statement_base, ptr %40, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !93
  %57 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %54, ptr noundef %56) #17
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59, !prof !227

59:                                               ; preds = %52, %44
  %60 = call fastcc zeroext i8 @maybe_skip_until(ptr noundef nonnull %17, ptr noundef %31, ptr noundef %0, ptr noundef %38, ptr noundef nonnull %6) #18
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %104, label %105, !prof !228

62:                                               ; preds = %52, %48
  %63 = load i32, ptr %42, align 8
  %64 = and i32 %63, 255
  %65 = icmp eq i32 %64, 18
  br i1 %65, label %73, label %66, !prof !229

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.gimple_statement_base, ptr %40, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !93
  %69 = getelementptr inbounds %struct.gimple_statement_base, ptr %42, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !93
  %71 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %68, ptr noundef %70) #17
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73, !prof !230

73:                                               ; preds = %66, %62
  %74 = call fastcc zeroext i8 @maybe_skip_until(ptr noundef nonnull %17, ptr noundef %38, ptr noundef %0, ptr noundef %31, ptr noundef nonnull %6) #18
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %104, label %105, !prof !231

76:                                               ; preds = %66
  %77 = load i32, ptr %40, align 8
  %78 = and i32 %77, 254
  %79 = add nsw i32 %78, -10
  %80 = icmp ult i32 %79, -4
  br i1 %80, label %84, label %81, !prof !232

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %40, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !93
  br label %84

84:                                               ; preds = %81, %76
  %85 = phi ptr [ %83, %81 ], [ null, %76 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %104, label %87, !prof !232

87:                                               ; preds = %84
  %88 = load i32, ptr %42, align 8
  %89 = and i32 %88, 254
  %90 = add nsw i32 %89, -10
  %91 = icmp ult i32 %90, -4
  br i1 %91, label %95, label %92, !prof !233

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %42, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !93
  br label %95

95:                                               ; preds = %92, %87
  %96 = phi ptr [ %94, %92 ], [ null, %87 ]
  %97 = icmp eq ptr %85, %96
  br i1 %97, label %98, label %104, !prof !234

98:                                               ; preds = %95
  %99 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef nonnull %40, ptr noundef %0)
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef nonnull %42, ptr noundef %0)
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101, %98, %95, %84, %73, %59
  br label %105

105:                                              ; preds = %104, %101, %73, %59, %35
  %106 = phi i1 [ true, %104 ], [ false, %35 ], [ false, %59 ], [ false, %73 ], [ false, %101 ]
  %107 = phi ptr [ undef, %104 ], [ %31, %35 ], [ %31, %59 ], [ %38, %73 ], [ %85, %101 ]
  br i1 %106, label %108, label %126, !prof !235

108:                                              ; preds = %105, %20
  br label %126

109:                                              ; preds = %15
  %110 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef nonnull %17, ptr noundef %0)
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %118, label %112, !prof !250

112:                                              ; preds = %109
  %113 = icmp eq ptr %3, null
  br i1 %113, label %126, label %114, !prof !251

114:                                              ; preds = %112
  %115 = tail call ptr %3(ptr noundef %0, ptr noundef %12, ptr noundef %4) #17, !prof !252
  %116 = ptrtoint ptr %115 to i64
  switch i64 %116, label %117 [
    i64 -1, label %126
    i64 0, label %118
  ], !prof !253

117:                                              ; preds = %114
  br label %126

118:                                              ; preds = %114, %109
  %119 = load i32, ptr %17, align 8
  %120 = and i32 %119, 254
  %121 = add nsw i32 %120, -10
  %122 = icmp ult i32 %121, -4
  br i1 %122, label %126, label %123, !prof !254

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %17, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !93
  br label %126

126:                                              ; preds = %108, %105, %23, %15, %11, %123, %118, %114, %112, %117
  %127 = phi ptr [ %115, %117 ], [ null, %15 ], [ null, %112 ], [ null, %114 ], [ null, %118 ], [ null, %123 ], [ %13, %11 ], [ null, %23 ], [ null, %105 ], [ null, %108 ]
  %128 = phi ptr [ %12, %117 ], [ %12, %15 ], [ %12, %112 ], [ %12, %114 ], [ null, %118 ], [ %125, %123 ], [ %12, %11 ], [ %26, %23 ], [ %107, %105 ], [ null, %108 ]
  %129 = phi i1 [ true, %117 ], [ true, %15 ], [ true, %112 ], [ true, %114 ], [ false, %118 ], [ false, %123 ], [ true, %11 ], [ false, %23 ], [ false, %105 ], [ false, %108 ]
  %130 = icmp eq ptr %128, null
  %131 = select i1 %129, i1 true, i1 %130, !prof !255
  br i1 %131, label %132, label %11, !prof !256, !llvm.loop !257

132:                                              ; preds = %126
  %133 = load ptr, ptr %6, align 8, !tbaa !82
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135, !prof !258

135:                                              ; preds = %132
  tail call void @bitmap_obstack_free(ptr noundef nonnull %133) #17
  store ptr null, ptr %6, align 8, !tbaa !82
  br label %136

136:                                              ; preds = %132, %135
  %137 = load i8, ptr @timevar_enable, align 1, !tbaa !93
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %140, label %139, !prof !246

139:                                              ; preds = %136
  tail call void @timevar_pop_1(i32 noundef 39) #17
  br label %140

140:                                              ; preds = %139, %136
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret ptr %127
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @walk_aliased_vdefs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #13 !prof !259 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store ptr null, ptr %6, align 8, !tbaa !82
  %7 = load i8, ptr @timevar_enable, align 1, !tbaa !93
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !260

9:                                                ; preds = %5
  tail call void @timevar_push_1(i32 noundef 39) #17
  br label %10

10:                                               ; preds = %9, %5
  %11 = icmp eq ptr %4, null
  %12 = select i1 %11, ptr %6, ptr %4, !prof !261
  %13 = call fastcc i32 @walk_aliased_vdefs_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %12)
  %14 = load ptr, ptr %6, align 8, !tbaa !82
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !260

16:                                               ; preds = %10
  tail call void @bitmap_obstack_free(ptr noundef nonnull %14) #17
  store ptr null, ptr %6, align 8, !tbaa !82
  br label %17

17:                                               ; preds = %10, %16
  %18 = load i8, ptr @timevar_enable, align 1, !tbaa !93
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20, !prof !260

20:                                               ; preds = %17
  tail call void @timevar_pop_1(i32 noundef 39) #17
  br label %21

21:                                               ; preds = %20, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret i32 %13
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @walk_aliased_vdefs_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #13 !prof !262 !PGOFuncName !263 {
  br label %6

6:                                                ; preds = %67, %5
  %7 = phi ptr [ %1, %5 ], [ %68, %67 ]
  %8 = phi i32 [ 0, %5 ], [ %69, %67 ]
  %9 = phi i32 [ undef, %5 ], [ %70, %67 ]
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = load ptr, ptr %4, align 8, !tbaa !82
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !prof !264

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !93
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %12, i32 noundef %16) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %67, label %19, !prof !265

19:                                               ; preds = %6, %14
  %20 = load i32, ptr %11, align 8
  %21 = trunc i32 %20 to i8
  switch i8 %21, label %50 [
    i8 18, label %67
    i8 16, label %22
  ], !prof !266

22:                                               ; preds = %19
  %23 = load ptr, ptr %4, align 8, !tbaa !82
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27, !prof !267

25:                                               ; preds = %22
  %26 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %26, ptr %4, align 8, !tbaa !82
  br label %27

27:                                               ; preds = %25, %22
  %28 = getelementptr inbounds %struct.gimple_statement_phi, ptr %11, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !93
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %67, label %31, !prof !268

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gimple_statement_phi, ptr %11, i64 0, i32 1
  br label %33

33:                                               ; preds = %31, %40
  %34 = phi i64 [ 0, %31 ], [ %46, %40 ]
  %35 = phi i32 [ %8, %31 ], [ %45, %40 ]
  %36 = load i32, ptr %32, align 8, !tbaa !93
  %37 = zext i32 %36 to i64
  %38 = icmp ugt i64 %34, %37
  br i1 %38, label %39, label %40, !prof !269

39:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 3103, ptr noundef nonnull @.str.12) #17
  br label %40

40:                                               ; preds = %33, %39
  %41 = getelementptr inbounds %struct.gimple_statement_phi, ptr %11, i64 0, i32 4, i64 %34, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !222
  %43 = load ptr, ptr %42, align 8, !tbaa !82
  %44 = tail call fastcc i32 @walk_aliased_vdefs_1(ptr noundef %0, ptr noundef %43, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4)
  %45 = add i32 %44, %35
  %46 = add nuw nsw i64 %34, 1
  %47 = load i32, ptr %28, align 4, !tbaa !93
  %48 = zext i32 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %33, label %67, !prof !270, !llvm.loop !271

50:                                               ; preds = %19
  %51 = icmp eq ptr %0, null
  %52 = add i32 %8, 1
  br i1 %51, label %56, label %53, !prof !272

53:                                               ; preds = %50
  %54 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef nonnull %11, ptr noundef nonnull %0)
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53, %50
  %57 = tail call zeroext i8 %2(ptr noundef %0, ptr noundef %7, ptr noundef %3) #17, !prof !273
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %67, !prof !272

59:                                               ; preds = %53, %56
  %60 = load i32, ptr %11, align 8
  %61 = and i32 %60, 254
  %62 = add nsw i32 %61, -10
  %63 = icmp ult i32 %62, -4
  br i1 %63, label %67, label %64, !prof !274

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %11, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !93
  br label %67

67:                                               ; preds = %40, %27, %59, %19, %14, %64, %56
  %68 = phi ptr [ %7, %19 ], [ %7, %56 ], [ %66, %64 ], [ %7, %14 ], [ null, %59 ], [ %7, %27 ], [ %7, %40 ]
  %69 = phi i32 [ %8, %19 ], [ %52, %56 ], [ %52, %64 ], [ %8, %14 ], [ %52, %59 ], [ %8, %27 ], [ %45, %40 ]
  %70 = phi i32 [ %8, %19 ], [ %52, %56 ], [ %9, %64 ], [ %8, %14 ], [ %9, %59 ], [ %8, %27 ], [ %45, %40 ]
  %71 = phi i1 [ false, %19 ], [ false, %56 ], [ true, %64 ], [ false, %14 ], [ true, %59 ], [ false, %27 ], [ false, %40 ]
  br i1 %71, label %6, label %72, !prof !275

72:                                               ; preds = %67
  ret i32 %70
}

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #10 !prof !276 !PGOFuncName !277 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %8 [
    i16 141, label %5
    i16 121, label %5
    i16 23, label %5
  ], !prof !169

5:                                                ; preds = %2, %2, %2
  %6 = load i64, ptr %1, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %8 [
    i16 32, label %9
    i16 34, label %9
    i16 36, label %9
  ], !prof !169

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 176, ptr noundef nonnull @.str.12) #17
  br label %9

9:                                                ; preds = %5, %5, %5, %8
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 33
  br i1 %12, label %116, label %13, !prof !168

13:                                               ; preds = %9
  %14 = and i64 %10, 201326592
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24, !prof !168

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 33554432
  %20 = icmp eq i64 %19, 0
  %21 = and i64 %10, 1048576
  %22 = icmp eq i64 %21, 0
  %23 = or i1 %22, %20
  br i1 %23, label %34, label %27, !prof !278

24:                                               ; preds = %13
  %25 = and i64 %10, 1048576
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %34, label %27, !prof !166

27:                                               ; preds = %16, %24
  %28 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !93
  %30 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %116, label %34

34:                                               ; preds = %27, %24, %16
  %35 = and i64 %10, 134217728
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44, !prof !168

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 33554432
  %41 = and i64 %10, 262144
  %42 = or disjoint i64 %40, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %116, label %44, !prof !279

44:                                               ; preds = %37, %34
  %45 = load i64, ptr %0, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 121
  br i1 %47, label %48, label %82, !prof !168

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !93
  %51 = tail call ptr @get_base_address(ptr noundef %50) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %77, label %53

53:                                               ; preds = %48
  %54 = load i64, ptr %51, align 8
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 65535
  %57 = add nsw i32 %56, -47
  %58 = icmp ult i32 %57, 3
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !93
  br label %78

62:                                               ; preds = %53
  %63 = trunc i64 %54 to i16
  switch i16 %63, label %72 [
    i16 32, label %69
    i16 34, label %69
    i16 36, label %69
    i16 141, label %64
  ]

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.tree_ssa_name, ptr %51, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !93
  %67 = load i64, ptr %66, align 8
  %68 = trunc i64 %67 to i16
  switch i16 %68, label %72 [
    i16 32, label %69
    i16 34, label %69
    i16 36, label %69
  ]

69:                                               ; preds = %64, %64, %62, %62, %64, %62
  %70 = tail call i32 @operand_equal_p(ptr noundef nonnull %51, ptr noundef nonnull %1, i32 noundef 0) #17
  %71 = trunc i32 %70 to i8
  br label %78

72:                                               ; preds = %64, %62
  %73 = and i64 %54, 65535
  %74 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !97
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %78, label %77

77:                                               ; preds = %48, %72
  br label %78

78:                                               ; preds = %72, %59, %77, %69
  %79 = phi ptr [ %61, %59 ], [ %0, %69 ], [ %0, %77 ], [ %0, %72 ]
  %80 = phi i1 [ true, %59 ], [ false, %69 ], [ false, %77 ], [ false, %72 ]
  %81 = phi i8 [ undef, %59 ], [ %71, %69 ], [ 1, %77 ], [ 0, %72 ]
  br i1 %80, label %82, label %116

82:                                               ; preds = %78, %44
  %83 = phi ptr [ %79, %78 ], [ %0, %44 ]
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 23
  br i1 %86, label %116, label %87, !prof !168

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.tree_ssa_name, ptr %83, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !93
  %90 = icmp eq ptr %89, null
  br i1 %90, label %116, label %91, !prof !168

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 536870912
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %114, label %96, !prof !166

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !93
  %99 = getelementptr inbounds %struct.tree_type, ptr %98, i64 0, i32 6
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 8192
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %96
  %104 = load i8, ptr %89, align 8
  %105 = and i8 %104, 32
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.pt_solution, ptr %89, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !280
  %110 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !93
  %112 = tail call i32 @bitmap_bit_p(ptr noundef %109, i32 noundef %111) #17
  %113 = trunc i32 %112 to i8
  br label %116

114:                                              ; preds = %103, %96, %91
  %115 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %89, ptr noundef nonnull %1) #17
  br label %116

116:                                              ; preds = %37, %27, %9, %78, %87, %82, %114, %107
  %117 = phi i8 [ %113, %107 ], [ %115, %114 ], [ 1, %82 ], [ 1, %87 ], [ %81, %78 ], [ 0, %9 ], [ 0, %27 ], [ 0, %37 ]
  ret i8 %117
}

declare i32 @get_deref_alias_set(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @alias_set_subset_of(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @aliasing_component_refs_p(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i64 noundef %6, i64 noundef %7) unnamed_addr #11 !prof !81 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store ptr %0, ptr %9, align 8, !tbaa !82
  store ptr %4, ptr %10, align 8, !tbaa !82
  %17 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  br label %18

18:                                               ; preds = %54, %8
  %19 = phi ptr [ %10, %8 ], [ %56, %54 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !82
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %57 [
    i16 42, label %23
    i16 41, label %23
    i16 45, label %23
    i16 46, label %23
    i16 118, label %23
    i16 43, label %23
    i16 44, label %23
  ]

23:                                               ; preds = %18, %18, %18, %18, %18, %18, %18
  %24 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !93
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !93
  %28 = load ptr, ptr %17, align 8, !tbaa !93
  %29 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !93
  %31 = icmp eq ptr %30, null
  br i1 %31, label %51, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !93
  %35 = icmp eq ptr %34, null
  %36 = icmp eq ptr %30, %34
  %37 = or i1 %35, %36
  br i1 %37, label %51, label %38

38:                                               ; preds = %32
  %39 = load i64, ptr %27, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 15
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, ptr %28, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 15
  br i1 %45, label %51, label %46

46:                                               ; preds = %42, %38
  %47 = tail call i32 @get_alias_set(ptr noundef nonnull %27) #17
  %48 = tail call i32 @get_alias_set(ptr noundef %28) #17
  %49 = icmp eq i32 %47, %48
  %50 = sext i1 %49 to i32
  br label %51

51:                                               ; preds = %23, %32, %42, %46
  %52 = phi i32 [ -1, %32 ], [ -1, %23 ], [ -1, %42 ], [ %50, %46 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load ptr, ptr %19, align 8, !tbaa !82
  %56 = getelementptr inbounds %struct.tree_exp, ptr %55, i64 0, i32 3
  br label %18, !llvm.loop !282

57:                                               ; preds = %18, %51
  %58 = load ptr, ptr %19, align 8, !tbaa !82
  %59 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !93
  %61 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 16
  %62 = load ptr, ptr %61, align 8, !tbaa !93
  %63 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %64 = load ptr, ptr %63, align 8, !tbaa !93
  %65 = getelementptr inbounds %struct.tree_type, ptr %62, i64 0, i32 19
  %66 = load ptr, ptr %65, align 8, !tbaa !93
  %67 = icmp eq ptr %66, null
  br i1 %67, label %87, label %68

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 19
  %70 = load ptr, ptr %69, align 8, !tbaa !93
  %71 = icmp eq ptr %70, null
  br i1 %71, label %87, label %72

72:                                               ; preds = %68
  %73 = icmp eq ptr %66, %70
  br i1 %73, label %87, label %74

74:                                               ; preds = %72
  %75 = load i64, ptr %62, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 15
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i64, ptr %64, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 15
  br i1 %81, label %87, label %82

82:                                               ; preds = %78, %74
  %83 = tail call i32 @get_alias_set(ptr noundef nonnull %62) #17
  %84 = tail call i32 @get_alias_set(ptr noundef %64) #17
  %85 = icmp eq i32 %83, %84
  %86 = sext i1 %85 to i32
  br label %87

87:                                               ; preds = %57, %68, %72, %78, %82
  %88 = phi i32 [ -1, %68 ], [ -1, %57 ], [ 1, %72 ], [ -1, %78 ], [ %86, %82 ]
  switch i32 %88, label %89 [
    i32 -1, label %205
    i32 1, label %91
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 16
  br label %112

91:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  %92 = load ptr, ptr %19, align 8, !tbaa !82
  %93 = call ptr @get_ref_base_and_extent(ptr noundef %92, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  %94 = load i64, ptr %11, align 8, !tbaa !167
  %95 = sub nsw i64 %6, %94
  %96 = icmp ugt i64 %95, %2
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = icmp eq i64 %7, -1
  %99 = add i64 %95, %7
  %100 = icmp ugt i64 %99, %2
  %101 = or i1 %98, %100
  br i1 %101, label %110, label %102

102:                                              ; preds = %97, %91
  %103 = icmp ult i64 %95, %2
  br i1 %103, label %109, label %104

104:                                              ; preds = %102
  %105 = icmp eq i64 %3, -1
  %106 = add i64 %3, %2
  %107 = icmp ugt i64 %106, %95
  %108 = or i1 %105, %107
  br i1 %108, label %110, label %109

109:                                              ; preds = %104, %102
  br label %110

110:                                              ; preds = %97, %104, %109
  %111 = phi i8 [ 0, %109 ], [ 1, %97 ], [ 1, %104 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  br label %205

112:                                              ; preds = %89, %148
  %113 = phi ptr [ %150, %148 ], [ %9, %89 ]
  %114 = load ptr, ptr %113, align 8, !tbaa !82
  %115 = load i64, ptr %114, align 8
  %116 = trunc i64 %115 to i16
  switch i16 %116, label %151 [
    i16 42, label %117
    i16 41, label %117
    i16 45, label %117
    i16 46, label %117
    i16 118, label %117
    i16 43, label %117
    i16 44, label %117
  ]

117:                                              ; preds = %112, %112, %112, %112, %112, %112, %112
  %118 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !93
  %120 = getelementptr inbounds %struct.tree_type, ptr %119, i64 0, i32 16
  %121 = load ptr, ptr %120, align 8, !tbaa !93
  %122 = load ptr, ptr %90, align 8, !tbaa !93
  %123 = getelementptr inbounds %struct.tree_type, ptr %121, i64 0, i32 19
  %124 = load ptr, ptr %123, align 8, !tbaa !93
  %125 = icmp eq ptr %124, null
  br i1 %125, label %145, label %126

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.tree_type, ptr %122, i64 0, i32 19
  %128 = load ptr, ptr %127, align 8, !tbaa !93
  %129 = icmp eq ptr %128, null
  %130 = icmp eq ptr %124, %128
  %131 = or i1 %129, %130
  br i1 %131, label %145, label %132

132:                                              ; preds = %126
  %133 = load i64, ptr %121, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 15
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i64, ptr %122, align 8
  %138 = and i64 %137, 65535
  %139 = icmp eq i64 %138, 15
  br i1 %139, label %145, label %140

140:                                              ; preds = %136, %132
  %141 = tail call i32 @get_alias_set(ptr noundef nonnull %121) #17
  %142 = tail call i32 @get_alias_set(ptr noundef %122) #17
  %143 = icmp eq i32 %141, %142
  %144 = sext i1 %143 to i32
  br label %145

145:                                              ; preds = %117, %126, %136, %140
  %146 = phi i32 [ -1, %126 ], [ -1, %117 ], [ -1, %136 ], [ %144, %140 ]
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load ptr, ptr %113, align 8, !tbaa !82
  %150 = getelementptr inbounds %struct.tree_exp, ptr %149, i64 0, i32 3
  br label %112, !llvm.loop !283

151:                                              ; preds = %112, %145
  %152 = load ptr, ptr %113, align 8, !tbaa !82
  %153 = getelementptr inbounds %struct.tree_common, ptr %152, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !93
  %155 = getelementptr inbounds %struct.tree_type, ptr %154, i64 0, i32 16
  %156 = load ptr, ptr %155, align 8, !tbaa !93
  %157 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 16
  %158 = load ptr, ptr %157, align 8, !tbaa !93
  %159 = getelementptr inbounds %struct.tree_type, ptr %156, i64 0, i32 19
  %160 = load ptr, ptr %159, align 8, !tbaa !93
  %161 = icmp eq ptr %160, null
  br i1 %161, label %181, label %162

162:                                              ; preds = %151
  %163 = getelementptr inbounds %struct.tree_type, ptr %158, i64 0, i32 19
  %164 = load ptr, ptr %163, align 8, !tbaa !93
  %165 = icmp eq ptr %164, null
  br i1 %165, label %181, label %166

166:                                              ; preds = %162
  %167 = icmp eq ptr %160, %164
  br i1 %167, label %181, label %168

168:                                              ; preds = %166
  %169 = load i64, ptr %156, align 8
  %170 = and i64 %169, 65535
  %171 = icmp eq i64 %170, 15
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i64, ptr %158, align 8
  %174 = and i64 %173, 65535
  %175 = icmp eq i64 %174, 15
  br i1 %175, label %181, label %176

176:                                              ; preds = %172, %168
  %177 = tail call i32 @get_alias_set(ptr noundef nonnull %156) #17
  %178 = tail call i32 @get_alias_set(ptr noundef %158) #17
  %179 = icmp eq i32 %177, %178
  %180 = sext i1 %179 to i32
  br label %181

181:                                              ; preds = %151, %162, %166, %172, %176
  %182 = phi i32 [ -1, %162 ], [ -1, %151 ], [ 1, %166 ], [ -1, %172 ], [ %180, %176 ]
  switch i32 %182, label %204 [
    i32 -1, label %205
    i32 1, label %183
  ]

183:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #17
  %184 = load ptr, ptr %113, align 8, !tbaa !82
  %185 = call ptr @get_ref_base_and_extent(ptr noundef %184, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #17
  %186 = load i64, ptr %14, align 8, !tbaa !167
  %187 = sub nsw i64 %2, %186
  %188 = icmp ult i64 %187, %6
  br i1 %188, label %194, label %189

189:                                              ; preds = %183
  %190 = icmp eq i64 %7, -1
  %191 = add i64 %7, %6
  %192 = icmp ugt i64 %191, %187
  %193 = or i1 %190, %192
  br i1 %193, label %202, label %194

194:                                              ; preds = %189, %183
  %195 = icmp ugt i64 %187, %6
  br i1 %195, label %201, label %196

196:                                              ; preds = %194
  %197 = icmp eq i64 %3, -1
  %198 = add i64 %187, %3
  %199 = icmp ugt i64 %198, %6
  %200 = or i1 %197, %199
  br i1 %200, label %202, label %201

201:                                              ; preds = %196, %194
  br label %202

202:                                              ; preds = %189, %196, %201
  %203 = phi i8 [ 0, %201 ], [ 1, %189 ], [ 1, %196 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  br label %205

204:                                              ; preds = %181
  br label %205

205:                                              ; preds = %181, %87, %204, %202, %110
  %206 = phi i8 [ %111, %110 ], [ %203, %202 ], [ 0, %204 ], [ 1, %87 ], [ 1, %181 ]
  ret i8 %206
}

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @pt_solution_includes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ptr_derefs_may_alias_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #10 !prof !284 !PGOFuncName !285 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %8 [
    i16 141, label %5
    i16 121, label %5
    i16 23, label %5
  ], !prof !286

5:                                                ; preds = %2, %2, %2
  %6 = load i64, ptr %1, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %8 [
    i16 141, label %9
    i16 121, label %9
    i16 23, label %9
  ], !prof !286

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 236, ptr noundef nonnull @.str.12) #17
  br label %9

9:                                                ; preds = %5, %5, %5, %8
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 121
  br i1 %12, label %13, label %40, !prof !181

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = tail call ptr @get_base_address(ptr noundef %15) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %13
  %19 = load i64, ptr %16, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 65535
  %22 = add nsw i32 %21, -47
  %23 = icmp ult i32 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !93
  br label %36

27:                                               ; preds = %18
  %28 = trunc i64 %19 to i16
  switch i16 %28, label %36 [
    i16 32, label %34
    i16 34, label %34
    i16 36, label %34
    i16 141, label %29
  ]

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !93
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i16
  switch i16 %33, label %36 [
    i16 32, label %34
    i16 34, label %34
    i16 36, label %34
  ]

34:                                               ; preds = %29, %29, %27, %27, %29, %27
  %35 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr noundef %1, ptr noundef nonnull %16)
  br label %36

36:                                               ; preds = %29, %27, %13, %24, %34
  %37 = phi ptr [ %26, %24 ], [ %0, %34 ], [ %0, %13 ], [ %0, %27 ], [ %0, %29 ]
  %38 = phi i1 [ true, %24 ], [ false, %34 ], [ false, %13 ], [ false, %27 ], [ false, %29 ]
  %39 = phi i8 [ undef, %24 ], [ %35, %34 ], [ 1, %13 ], [ 1, %27 ], [ 1, %29 ]
  br i1 %38, label %40, label %111

40:                                               ; preds = %36, %9
  %41 = phi ptr [ %37, %36 ], [ %0, %9 ]
  %42 = phi i8 [ %39, %36 ], [ undef, %9 ]
  %43 = load i64, ptr %1, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 121
  br i1 %45, label %46, label %73, !prof !181

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !93
  %49 = tail call ptr @get_base_address(ptr noundef %48) #17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %69, label %51

51:                                               ; preds = %46
  %52 = load i64, ptr %49, align 8
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 65535
  %55 = add nsw i32 %54, -47
  %56 = icmp ult i32 %55, 3
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.tree_exp, ptr %49, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !93
  br label %69

60:                                               ; preds = %51
  %61 = trunc i64 %52 to i16
  switch i16 %61, label %69 [
    i16 32, label %67
    i16 34, label %67
    i16 36, label %67
    i16 141, label %62
  ]

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %49, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !93
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i16
  switch i16 %66, label %69 [
    i16 32, label %67
    i16 34, label %67
    i16 36, label %67
  ]

67:                                               ; preds = %62, %62, %60, %60, %62, %60
  %68 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr noundef %41, ptr noundef nonnull %49)
  br label %69

69:                                               ; preds = %62, %60, %46, %57, %67
  %70 = phi ptr [ %59, %57 ], [ %1, %67 ], [ %1, %46 ], [ %1, %60 ], [ %1, %62 ]
  %71 = phi i1 [ true, %57 ], [ false, %67 ], [ false, %46 ], [ false, %60 ], [ false, %62 ]
  %72 = phi i8 [ %42, %57 ], [ %68, %67 ], [ 1, %46 ], [ 1, %60 ], [ 1, %62 ]
  br i1 %71, label %73, label %111

73:                                               ; preds = %69, %40
  %74 = phi ptr [ %70, %69 ], [ %1, %40 ]
  %75 = load i64, ptr %41, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 23
  br i1 %77, label %111, label %78, !prof !181

78:                                               ; preds = %73
  %79 = load i64, ptr %74, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 23
  %82 = icmp eq ptr %41, %74
  %83 = select i1 %81, i1 true, i1 %82, !prof !181
  br i1 %83, label %111, label %84, !prof !181

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.tree_ssa_name, ptr %41, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !93
  %87 = getelementptr inbounds %struct.tree_ssa_name, ptr %74, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !93
  %89 = icmp ne ptr %86, null
  %90 = icmp ne ptr %88, null
  %91 = select i1 %89, i1 %90, i1 false, !prof !182
  br i1 %91, label %92, label %111, !prof !182

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !93
  %95 = getelementptr inbounds %struct.tree_type, ptr %94, i64 0, i32 6
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 8192
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %109, label %99, !prof !182

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !93
  %102 = getelementptr inbounds %struct.tree_type, ptr %101, i64 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 8192
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = tail call zeroext i8 @pt_solutions_same_restrict_base(ptr noundef nonnull %86, ptr noundef nonnull %88) #17
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106, %99, %92
  %110 = tail call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %86, ptr noundef nonnull %88) #17
  br label %111

111:                                              ; preds = %69, %36, %106, %84, %73, %78, %109
  %112 = phi i8 [ %110, %109 ], [ 1, %78 ], [ 1, %73 ], [ 1, %84 ], [ 0, %106 ], [ %39, %36 ], [ %72, %69 ]
  ret i8 %112
}

declare zeroext i8 @pt_solutions_same_restrict_base(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @pt_solutions_intersect(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare ptr @ipa_reference_get_not_read_global(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !81 {
  %3 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !136
  %8 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 2
  %9 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 3
  %10 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 4
  %11 = tail call ptr @get_ref_base_and_extent(ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  store ptr %11, ptr %3, align 8, !tbaa !139
  br label %12

12:                                               ; preds = %2, %6
  %13 = phi ptr [ %11, %6 ], [ %4, %2 ]
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %27 [
    i16 47, label %16
    i16 48, label %16
    i16 49, label %16
    i16 32, label %25
    i16 34, label %25
    i16 36, label %25
    i16 141, label %20
  ]

16:                                               ; preds = %12, %12, %12
  %17 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = tail call fastcc zeroext i8 @ptr_derefs_may_alias_p(ptr noundef %0, ptr noundef %18)
  br label %27

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %13, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !93
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i16
  switch i16 %24, label %27 [
    i16 32, label %25
    i16 34, label %25
    i16 36, label %25
  ]

25:                                               ; preds = %20, %20, %12, %12, %20, %12
  %26 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr noundef %0, ptr noundef nonnull %13)
  br label %27

27:                                               ; preds = %20, %12, %25, %16
  %28 = phi i8 [ %19, %16 ], [ %26, %25 ], [ 1, %12 ], [ 1, %20 ]
  ret i8 %28
}

declare ptr @ipa_reference_get_not_written_global(ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

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
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!80}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!35 = !{ptr @ptr_deref_may_alias_global_p, ptr @pt_solution_includes_global, i64 828}
!36 = !{ptr @get_ptr_info, ptr @ggc_alloc_cleared_stat, i64 14255}
!37 = !{ptr @get_ptr_info, ptr @pt_solution_reset, i64 14255}
!38 = !{ptr @ao_ref_base, ptr @get_ref_base_and_extent, i64 1179}
!39 = !{ptr @refs_may_alias_p_1, ptr @get_ref_base_and_extent, i64 124260}
!40 = !{ptr @refs_may_alias_p_1, ptr @is_gimple_min_invariant, i64 124398}
!41 = !{ptr @refs_may_alias_p_1, ptr @decl_refs_may_alias_p, i64 61380}
!42 = !{ptr @refs_may_alias_p_1, ptr @get_alias_set, i64 1620}
!43 = !{ptr @refs_may_alias_p_1, ptr @alias_sets_conflict_p, i64 825}
!44 = !{ptr @refs_may_alias_p_1, ptr @ptr_deref_may_alias_decl_p, i64 36}
!45 = !{ptr @refs_may_alias_p_1, ptr @get_deref_alias_set, i64 354}
!46 = !{ptr @refs_may_alias_p_1, ptr @alias_set_subset_of, i64 36}
!47 = !{ptr @refs_may_alias_p_1, ptr @operand_equal_p, i64 752}
!48 = !{ptr @refs_may_alias_p_1, ptr @ptr_derefs_may_alias_p, i64 159}
!49 = !{ptr @decl_refs_may_alias_p, ptr @operand_equal_p, i64 61380}
!50 = !{ptr @refs_may_alias_p, ptr @refs_may_alias_p_1, i64 61643}
!51 = !{ptr @ref_maybe_used_by_stmt_p, ptr @gimple_assign_single_p, i64 40}
!52 = !{ptr @ref_maybe_used_by_stmt_p, ptr @is_gimple_reg, i64 40}
!53 = !{ptr @ref_maybe_used_by_stmt_p, ptr @is_gimple_min_invariant, i64 40}
!54 = !{ptr @ref_maybe_used_by_stmt_p, ptr @refs_may_alias_p_1, i64 40}
!55 = !{ptr @ref_maybe_used_by_stmt_p, ptr @gimple_call_flags, i64 14}
!56 = !{ptr @ref_maybe_used_by_stmt_p, ptr @get_ref_base_and_extent, i64 14}
!57 = !{ptr @ref_maybe_used_by_stmt_p, ptr @pt_solution_includes_global, i64 14}
!58 = !{ptr @stmt_may_clobber_ref_p_1, ptr @is_gimple_reg, i64 81143}
!59 = !{ptr @stmt_may_clobber_ref_p_1, ptr @gimple_call_flags, i64 87605}
!60 = !{ptr @stmt_may_clobber_ref_p_1, ptr @get_ref_base_and_extent, i64 84433}
!61 = !{ptr @stmt_may_clobber_ref_p_1, ptr @pt_solution_includes_global, i64 599}
!62 = !{ptr @stmt_may_clobber_ref_p_1, ptr @refs_may_alias_p_1, i64 516}
!63 = !{ptr @stmt_may_clobber_ref_p, ptr @stmt_may_clobber_ref_p_1, i64 80}
!64 = !{ptr @get_continuation_for_phi, ptr @dominated_by_p, i64 1973}
!65 = !{ptr @get_continuation_for_phi, ptr @maybe_skip_until, i64 1466}
!66 = !{ptr @maybe_skip_until, ptr @bitmap_obstack_alloc_stat, i64 44214}
!67 = !{ptr @maybe_skip_until, ptr @bitmap_set_bit, i64 46571}
!68 = !{ptr @maybe_skip_until, ptr @bitmap_bit_p, i64 2664}
!69 = !{ptr @maybe_skip_until, ptr @get_continuation_for_phi, i64 2664}
!70 = !{ptr @maybe_skip_until, ptr @stmt_may_clobber_ref_p_1, i64 44235}
!71 = !{ptr @walk_non_aliased_vuses, ptr @dominated_by_p, i64 60707}
!72 = !{ptr @walk_non_aliased_vuses, ptr @maybe_skip_until, i64 45105}
!73 = !{ptr @walk_non_aliased_vuses, ptr @stmt_may_clobber_ref_p_1, i64 41874}
!74 = !{ptr @walk_non_aliased_vuses, ptr @bitmap_obstack_free, i64 43735}
!75 = !{ptr @walk_aliased_vdefs, ptr @walk_aliased_vdefs_1, i64 896766}
!76 = !{ptr @walk_aliased_vdefs_1, ptr @bitmap_set_bit, i64 1986185}
!77 = !{ptr @walk_aliased_vdefs_1, ptr @walk_aliased_vdefs_1, i64 685316}
!78 = !{ptr @ptr_deref_may_alias_decl_p, ptr @pt_solution_includes, i64 36}
!79 = !{ptr @ptr_derefs_may_alias_p, ptr @pt_solutions_intersect, i64 159}
!80 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!81 = !{!"function_entry_count", i64 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"any pointer", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !{!87, !83, i64 8}
!87 = !{!"_IO_FILE", !88, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !83, i64 104, !88, i64 112, !88, i64 116, !89, i64 120, !90, i64 128, !84, i64 130, !84, i64 131, !83, i64 136, !89, i64 144, !83, i64 152, !83, i64 160, !83, i64 168, !83, i64 176, !89, i64 184, !88, i64 192, !84, i64 196}
!88 = !{!"int", !84, i64 0}
!89 = !{!"long", !84, i64 0}
!90 = !{!"short", !84, i64 0}
!91 = !{!87, !83, i64 16}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{!84, !84, i64 0}
!94 = !{!87, !83, i64 40}
!95 = !{!87, !83, i64 48}
!96 = !{!87, !88, i64 0}
!97 = !{!88, !88, i64 0}
!98 = distinct !{!98, !99, !100}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!102, !89, i64 8}
!102 = !{!"", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !89, i64 32, !89, i64 40}
!103 = !{!102, !89, i64 0}
!104 = !{!102, !89, i64 24}
!105 = !{!102, !89, i64 16}
!106 = !{!"function_entry_count", i64 828}
!107 = !{!"branch_weights", i32 828, i32 0}
!108 = !{!"branch_weights", i32 0, i32 828}
!109 = !{!110, !83, i64 176}
!110 = !{!"lang_hooks", !83, i64 0, !89, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !83, i64 104, !83, i64 112, !83, i64 120, !83, i64 128, !83, i64 136, !83, i64 144, !83, i64 152, !83, i64 160, !83, i64 168, !83, i64 176, !83, i64 184, !83, i64 192, !83, i64 200, !83, i64 208, !83, i64 216, !83, i64 224, !83, i64 232, !111, i64 240, !112, i64 248, !113, i64 256, !114, i64 272, !115, i64 432, !116, i64 560, !83, i64 584, !83, i64 592, !83, i64 600, !83, i64 608, !83, i64 616, !83, i64 624, !83, i64 632, !83, i64 640, !83, i64 648, !83, i64 656, !83, i64 664, !84, i64 672}
!111 = !{!"lang_hooks_for_tree_inlining", !83, i64 0}
!112 = !{!"lang_hooks_for_callgraph", !83, i64 0}
!113 = !{!"lang_hooks_for_tree_dump", !83, i64 0, !83, i64 8}
!114 = !{!"lang_hooks_for_decls", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !83, i64 104, !83, i64 112, !83, i64 120, !83, i64 128, !83, i64 136, !83, i64 144, !83, i64 152}
!115 = !{!"lang_hooks_for_types", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !83, i64 104, !83, i64 112, !84, i64 120}
!116 = !{!"lang_hooks_for_lto", !83, i64 0, !83, i64 8, !83, i64 16}
!117 = !{!118, !83, i64 24}
!118 = !{!"function", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !88, i64 104, !88, i64 108, !88, i64 112, !88, i64 116, !88, i64 120, !88, i64 124, !83, i64 128, !88, i64 136, !88, i64 137, !88, i64 138, !88, i64 138, !88, i64 138, !88, i64 138, !88, i64 138, !88, i64 138, !88, i64 138, !88, i64 139, !88, i64 139, !88, i64 139, !88, i64 139, !88, i64 139, !88, i64 139, !88, i64 139}
!119 = !{!120, !83, i64 0}
!120 = !{!"gimple_df", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !121, i64 32, !121, i64 48, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !88, i64 96, !122, i64 104}
!121 = !{!"pt_solution", !88, i64 0, !88, i64 0, !88, i64 0, !88, i64 0, !88, i64 0, !88, i64 0, !83, i64 8}
!122 = !{!"ssa_operands", !83, i64 0, !88, i64 8, !88, i64 12, !84, i64 16, !83, i64 24, !83, i64 32}
!123 = !{!124, !83, i64 24}
!124 = !{!"htab", !83, i64 0, !83, i64 8, !83, i64 16, !83, i64 24, !89, i64 32, !89, i64 40, !89, i64 48, !88, i64 56, !88, i64 60, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !88, i64 104}
!125 = distinct !{!125, !99, !100}
!126 = distinct !{!126, !99, !100}
!127 = !{!120, !83, i64 16}
!128 = !{!129, !88, i64 0}
!129 = !{!"VEC_tree_base", !88, i64 0, !88, i64 4, !84, i64 8}
!130 = distinct !{!130, !99, !100}
!131 = !{!121, !83, i64 8}
!132 = !{!"function_entry_count", i64 42575}
!133 = !{!"branch_weights", i32 0, i32 42575, i32 0}
!134 = !{!"branch_weights", i32 14255, i32 28320}
!135 = !{!"function_entry_count", i64 343232}
!136 = !{!137, !83, i64 0}
!137 = !{!"ao_ref_s", !83, i64 0, !83, i64 8, !89, i64 16, !89, i64 24, !89, i64 32, !88, i64 40, !88, i64 44}
!138 = !{!"function_entry_count", i64 43051}
!139 = !{!137, !83, i64 8}
!140 = !{!"branch_weights", i32 1179, i32 41872}
!141 = !{!137, !88, i64 40}
!142 = !{!137, !89, i64 16}
!143 = !{!137, !89, i64 24}
!144 = !{!137, !89, i64 32}
!145 = !{!137, !88, i64 44}
!146 = !{!"function_entry_count", i64 62199}
!147 = !{!"branch_weights", i32 138, i32 62061}
!148 = !{!"branch_weights", i32 0, i32 967765644, i32 0, i32 0, i32 0, i32 0, i32 9996804, i32 34328340, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!149 = !{!"branch_weights", i32 0, i32 0, i32 3678, i32 12630, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!150 = !{!"branch_weights", i32 0, i32 62199}
!151 = !{!"branch_weights", i32 0, i32 1025370948, i32 0, i32 0, i32 0, i32 0, i32 13915230, i32 35885736, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!152 = !{!"branch_weights", i32 0, i32 0, i32 4830, i32 12456, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!153 = !{!"branch_weights", i32 62061, i32 138}
!154 = !{!"branch_weights", i32 62199, i32 0}
!155 = !{!"branch_weights", i32 -426251695, i32 0, i32 0}
!156 = !{!"branch_weights", i32 62199, i32 0, i32 0}
!157 = !{!"branch_weights", i32 752, i32 61447, i32 0, i32 0, i32 0}
!158 = !{!"branch_weights", i32 819, i32 61380, i32 0, i32 0, i32 0}
!159 = !{!"branch_weights", i32 61380, i32 819}
!160 = !{i8 0, i8 2}
!161 = !{!"branch_weights", i32 0, i32 819}
!162 = !{!"branch_weights", i32 67, i32 752}
!163 = !{!"branch_weights", i32 0, i32 67}
!164 = !{!"branch_weights", i32 67, i32 0}
!165 = !{!"branch_weights", i32 36, i32 31}
!166 = !{!"branch_weights", i32 36, i32 0}
!167 = !{!89, !89, i64 0}
!168 = !{!"branch_weights", i32 0, i32 36}
!169 = !{!"branch_weights", i32 0, i32 36, i32 0, i32 0}
!170 = distinct !{!170, !99, !100}
!171 = !{!"branch_weights", i32 819, i32 0}
!172 = !{!"branch_weights", i32 681, i32 138}
!173 = !{!"branch_weights", i32 138, i32 681}
!174 = !{!"branch_weights", i32 0, i32 681}
!175 = !{!"branch_weights", i32 0, i32 31}
!176 = !{!"branch_weights", i32 752, i32 0}
!177 = !{!"branch_weights", i32 159, i32 593}
!178 = !{!"branch_weights", i32 193, i32 400}
!179 = !{!"branch_weights", i32 400, i32 0}
!180 = !{!"branch_weights", i32 0, i32 193}
!181 = !{!"branch_weights", i32 0, i32 159}
!182 = !{!"branch_weights", i32 159, i32 0}
!183 = !{!"branch_weights", i32 153, i32 6}
!184 = !{!"branch_weights", i32 0, i32 6}
!185 = !{!"branch_weights", i32 113, i32 40}
!186 = !{!"branch_weights", i32 0, i32 40}
!187 = !{!"branch_weights", i32 40, i32 113}
!188 = !{!"branch_weights", i32 0, i32 113}
!189 = !{!"branch_weights", i32 6, i32 0}
!190 = !{!"function_entry_count", i64 61380}
!191 = !{!"tree-ssa-alias.c;decl_refs_may_alias_p"}
!192 = !{!"branch_weights", i32 0, i32 61380, i32 0, i32 0, i32 0}
!193 = !{!"branch_weights", i32 0, i32 61380}
!194 = !{!"branch_weights", i32 61380, i32 0}
!195 = !{!"function_entry_count", i64 61643}
!196 = !{!"branch_weights", i32 89, i32 61594}
!197 = !{!"function_entry_count", i64 54}
!198 = !{!"branch_weights", i32 0, i32 560, i32 196}
!199 = !{!"branch_weights", i32 40, i32 0}
!200 = !{!"branch_weights", i32 0, i32 40, i32 0, i32 0}
!201 = !{!"branch_weights", i32 0, i32 14}
!202 = !{!"branch_weights", i32 14, i32 0}
!203 = distinct !{!203, !99, !100}
!204 = !{!"function_entry_count", i64 88201}
!205 = !{!"branch_weights", i32 47680, i32 52212580, i32 307536}
!206 = !{!"branch_weights", i32 0, i32 87605}
!207 = !{!"branch_weights", i32 6462, i32 81143}
!208 = !{!"branch_weights", i32 0, i32 81143}
!209 = !{!"branch_weights", i32 87605, i32 0}
!210 = !{!"branch_weights", i32 84433, i32 3172}
!211 = !{!"branch_weights", i32 599, i32 0, i32 87006}
!212 = !{!"branch_weights", i32 0, i32 87006}
!213 = !{!"branch_weights", i32 174012, i32 0}
!214 = !{!"branch_weights", i32 87006, i32 0}
!215 = !{!"branch_weights", i32 87006, i32 599}
!216 = !{!"branch_weights", i32 599, i32 0}
!217 = !{!"branch_weights", i32 0, i32 599}
!218 = !{!"branch_weights", i32 0, i32 516}
!219 = !{!"function_entry_count", i64 80}
!220 = !{!"function_entry_count", i64 3552}
!221 = !{!"branch_weights", i32 64104, i32 0, i32 48753}
!222 = !{!223, !83, i64 24}
!223 = !{!"ssa_use_operand_d", !83, i64 0, !83, i64 8, !84, i64 16, !83, i64 24}
!224 = !{!"branch_weights", i32 0, i32 48753}
!225 = !{!"branch_weights", i32 488, i32 48265}
!226 = !{!"branch_weights", i32 0, i32 48265}
!227 = !{!"branch_weights", i32 14415, i32 33850}
!228 = !{!"branch_weights", i32 34338, i32 0}
!229 = !{!"branch_weights", i32 0, i32 14415}
!230 = !{!"branch_weights", i32 2182, i32 12233}
!231 = !{!"branch_weights", i32 12233, i32 0}
!232 = !{!"branch_weights", i32 1594, i32 588}
!233 = !{!"branch_weights", i32 75, i32 513}
!234 = !{!"branch_weights", i32 0, i32 588}
!235 = !{!"branch_weights", i32 48753, i32 0}
!236 = !{!"function_entry_count", i64 46571}
!237 = !{!"tree-ssa-alias.c;maybe_skip_until"}
!238 = !{!"branch_weights", i32 44214, i32 2357}
!239 = !{!"branch_weights", i32 0, i32 46899}
!240 = !{!"branch_weights", i32 1956735225, i32 117842040, i32 0}
!241 = !{!"branch_weights", i32 2664, i32 0}
!242 = !{!"branch_weights", i32 328, i32 43907}
!243 = !{!"branch_weights", i32 0, i32 328}
!244 = !{!"branch_weights", i32 46571, i32 328}
!245 = !{!"function_entry_count", i64 342624}
!246 = !{!"branch_weights", i32 342624, i32 0}
!247 = !{!"VP", i32 0, i64 342626, i64 -7683741054642896279, i64 342626}
!248 = !{!"branch_weights", i32 151440, i32 191186}
!249 = !{!"branch_weights", i32 1582617361, i32 9864429, i32 -163812148}
!250 = !{!"branch_weights", i32 2, i32 41872}
!251 = !{!"branch_weights", i32 0, i32 41872}
!252 = !{!"VP", i32 0, i64 41872, i64 -8595041765858319137, i64 41872}
!253 = !{!"branch_weights", i32 0, i32 41872, i32 0}
!254 = !{!"branch_weights", i32 0, i32 2}
!255 = !{!"branch_weights", i32 233319, i32 109307}
!256 = !{!"branch_weights", i32 342624, i32 2}
!257 = distinct !{!257, !99, !100}
!258 = !{!"branch_weights", i32 298889, i32 43735}
!259 = !{!"function_entry_count", i64 896766}
!260 = !{!"branch_weights", i32 896766, i32 0}
!261 = !{!"branch_weights", i32 0, i32 896766}
!262 = !{!"function_entry_count", i64 1582082}
!263 = !{!"tree-ssa-alias.c;walk_aliased_vdefs_1"}
!264 = !{!"branch_weights", i32 0, i32 1986185}
!265 = !{!"branch_weights", i32 1316923, i32 669262}
!266 = !{!"branch_weights", i32 -70619759, i32 2393883, i32 -1525484286}
!267 = !{!"branch_weights", i32 0, i32 264930}
!268 = !{!"branch_weights", i32 1, i32 264929}
!269 = !{!"branch_weights", i32 0, i32 685316}
!270 = !{!"branch_weights", i32 420387, i32 264929}
!271 = distinct !{!271, !99, !100}
!272 = !{!"branch_weights", i32 404103, i32 0}
!273 = !{!"VP", i32 0, i64 404103, i64 5975146767835731639, i64 404103}
!274 = !{!"branch_weights", i32 0, i32 404103}
!275 = !{!"branch_weights", i32 404103, i32 1582082}
!276 = !{!"function_entry_count", i64 36}
!277 = !{!"tree-ssa-alias.c;ptr_deref_may_alias_decl_p"}
!278 = !{!"branch_weights", i32 72, i32 0}
!279 = !{!"branch_weights", i32 0, i32 72}
!280 = !{!281, !83, i64 8}
!281 = !{!"ptr_info_def", !121, i64 0}
!282 = distinct !{!282, !99, !100}
!283 = distinct !{!283, !99, !100}
!284 = !{!"function_entry_count", i64 159}
!285 = !{!"tree-ssa-alias.c;ptr_derefs_may_alias_p"}
!286 = !{!"branch_weights", i32 0, i32 159, i32 0, i32 0}
