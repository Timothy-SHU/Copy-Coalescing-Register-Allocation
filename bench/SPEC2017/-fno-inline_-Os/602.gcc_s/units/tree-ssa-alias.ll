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
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
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
@.str.19 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@flag_errno_math = external local_unnamed_addr global i32, align 4
@timevar_enable = external local_unnamed_addr global i8, align 1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_alias_stats(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !233 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 27, i64 1, ptr %0)
  %3 = load i64, ptr @alias_stats.1, align 8, !tbaa !234
  %4 = load i64, ptr @alias_stats.0, align 8, !tbaa !239
  %5 = add i64 %4, %3
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef %3, i64 noundef %5) #12
  %7 = load i64, ptr @alias_stats.3, align 8, !tbaa !240
  %8 = load i64, ptr @alias_stats.1, align 8, !tbaa !234
  %9 = load i64, ptr @alias_stats.2, align 8, !tbaa !241
  %10 = add i64 %9, %8
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %7, i64 noundef %10) #12
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef 0, i64 noundef 0) #12
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ptr_deref_may_alias_global_p(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !242 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %11, !prof !243

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !244
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !245

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @pt_solution_includes_global(ptr noundef nonnull %7) #13
  br label %11

11:                                               ; preds = %5, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 1, %5 ]
  ret i8 %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare zeroext i8 @pt_solution_includes_global(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_alias_info(ptr noundef %0) local_unnamed_addr #2 !prof !233 {
  %2 = alloca %struct.referenced_var_iterator, align 8
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !246
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !255
  %5 = tail call ptr %3(ptr noundef %4, i32 noundef 2) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %5) #12
  %7 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 17, i64 1, ptr %0)
  %8 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %2) #12
  %9 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #12, !range !256
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1, %16
  %12 = phi ptr [ %17, %16 ], [ %8, %1 ]
  %13 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %12) #12, !range !256
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @dump_variable(ptr noundef %0, ptr noundef %12) #13
  br label %16

16:                                               ; preds = %11, %15
  %17 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %2) #12
  %18 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %2) #12, !range !256
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %11, label %20, !llvm.loop !257

20:                                               ; preds = %16, %1
  %21 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 26, i64 1, ptr %0)
  %22 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 8, i64 1, ptr %0)
  %23 = load ptr, ptr @cfun, align 8, !tbaa !255
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !259
  %26 = getelementptr inbounds %struct.gimple_df, ptr %25, i64 0, i32 4
  tail call void @dump_points_to_solution(ptr noundef %0, ptr noundef nonnull %26) #12
  %27 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 9, i64 1, ptr %0)
  %28 = load ptr, ptr @cfun, align 8, !tbaa !255
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !259
  %31 = getelementptr inbounds %struct.gimple_df, ptr %30, i64 0, i32 5
  tail call void @dump_points_to_solution(ptr noundef %0, ptr noundef nonnull %31) #12
  %32 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 42, i64 1, ptr %0)
  %33 = load ptr, ptr @cfun, align 8, !tbaa !255
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !259
  %36 = getelementptr inbounds %struct.gimple_df, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !262
  %38 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %37) #12
  %39 = icmp ugt i32 %38, 1
  br i1 %39, label %40, label %67

40:                                               ; preds = %20, %57
  %41 = phi ptr [ %58, %57 ], [ %33, %20 ]
  %42 = phi ptr [ %63, %57 ], [ %37, %20 ]
  %43 = phi i64 [ %59, %57 ], [ 1, %20 ]
  %44 = trunc i64 %43 to i32
  %45 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %42, i32 noundef %44) #12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %40
  %48 = load i64, ptr %45, align 8
  %49 = and i64 %48, 33554432
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !244
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  tail call void @dump_points_to_info_for(ptr noundef %0, ptr noundef nonnull %45) #12
  %56 = load ptr, ptr @cfun, align 8, !tbaa !255
  br label %57

57:                                               ; preds = %51, %55, %40, %47
  %58 = phi ptr [ %41, %51 ], [ %56, %55 ], [ %41, %40 ], [ %41, %47 ]
  %59 = add nuw nsw i64 %43, 1
  %60 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !259
  %62 = getelementptr inbounds %struct.gimple_df, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !262
  %64 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %63) #12
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %59, %65
  br i1 %66, label %40, label %67, !llvm.loop !266

67:                                               ; preds = %57, %20
  %68 = tail call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #2 !prof !233 !PGOFuncName !267 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !255
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #12
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !233 !PGOFuncName !268 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #12, !range !256
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !269 !PGOFuncName !270 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 33
  br i1 %4, label %37, label %5, !prof !271

5:                                                ; preds = %1
  %6 = and i64 %2, 134217728
  %7 = icmp eq i64 %6, 0
  %8 = and i64 %2, 201326592
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15, !prof !272

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %29, label %15, !prof !273

15:                                               ; preds = %10, %5
  %16 = and i64 %2, 1048576
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %25, label %18, !prof !274

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !244
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25, !prof !275

25:                                               ; preds = %18, %15
  br i1 %7, label %26, label %37, !prof !276

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %28 = load i64, ptr %27, align 8
  br label %29

29:                                               ; preds = %26, %10
  %30 = phi i64 [ %28, %26 ], [ %12, %10 ]
  %31 = and i64 %30, 33554432
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37, !prof !277

33:                                               ; preds = %29
  %34 = lshr i64 %2, 18
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  br label %37

37:                                               ; preds = %25, %29, %33, %18, %1
  %38 = phi i8 [ 0, %18 ], [ 0, %1 ], [ 1, %29 ], [ 1, %25 ], [ %36, %33 ]
  ret i8 %38
}

; Function Attrs: optsize
declare void @dump_variable(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #7 !prof !233 !PGOFuncName !278 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_points_to_solution(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !233 {
  %3 = load i8, ptr %1, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 20, i64 1, ptr %0)
  %8 = load i8, ptr %1, align 8
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i8 [ %8, %6 ], [ %3, %2 ]
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr %0)
  %15 = load i8, ptr %1, align 8
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i8 [ %15, %13 ], [ %10, %9 ]
  %18 = and i8 %17, 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 19, i64 1, ptr %0)
  %22 = load i8, ptr %1, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i8 [ %22, %20 ], [ %17, %16 ]
  %25 = and i8 %24, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 16, i64 1, ptr %0)
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !279
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 18, i64 1, ptr %0)
  %35 = load ptr, ptr %30, align 8, !tbaa !279
  tail call void @dump_decl_set(ptr noundef %0, ptr noundef %35) #13
  %36 = load i8, ptr %1, align 8
  %37 = and i8 %36, 16
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 23, i64 1, ptr %0)
  br label %41

41:                                               ; preds = %33, %39, %29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !233 !PGOFuncName !280 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !281
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !233 !PGOFuncName !283 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !255
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_points_to_info_for(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !233 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !244
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !284
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef %5) #13
  %6 = icmp eq ptr %4, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @dump_points_to_solution(ptr noundef %0, ptr noundef nonnull %4) #12
  br label %10

8:                                                ; preds = %2
  %9 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 20, i64 1, ptr %0)
  br label %10

10:                                               ; preds = %8, %7
  %11 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !prof !233 !PGOFuncName !285 {
  store ptr %1, ptr %0, align 8, !tbaa !286
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !288
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !290
  %6 = tail call i64 @htab_size(ptr noundef %1) #13
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !291
  %9 = load ptr, ptr %5, align 8, !tbaa !290
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !255
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !290
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !llvm.loop !292

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !255
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !233 !PGOFuncName !293 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !294
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !233 !PGOFuncName !295 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !291
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #7 !prof !233 !PGOFuncName !296 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !291
  %5 = load ptr, ptr %2, align 8, !tbaa !290
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !290
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !255
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_alias_info() local_unnamed_addr #2 !prof !233 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !255
  tail call void @dump_alias_info(ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_ptr_info(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !297 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !244
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %6 [
    i16 10, label %7
    i16 12, label %7
  ], !prof !298

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 379, ptr noundef nonnull @.str.12) #13
  br label %7

7:                                                ; preds = %1, %1, %6
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !244
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13, !prof !299

11:                                               ; preds = %7
  %12 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 16) #13
  tail call void @pt_solution_reset(ptr noundef %12) #13
  store ptr %12, ptr %8, align 8, !tbaa !244
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  ret ptr %14
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @pt_solution_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @dump_decl_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_points_to_info_for(ptr noundef %0) local_unnamed_addr #2 !prof !233 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !255
  tail call void @dump_points_to_info_for(ptr noundef %2, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ao_ref_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #8 !prof !300 {
  store ptr %1, ptr %0, align 8, !tbaa !301
  %3 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 -1, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ao_ref_base(ptr noundef %0) local_unnamed_addr #2 !prof !303 {
  %2 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !304
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !305

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !301
  %7 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %10 = tail call ptr @get_ref_base_and_extent(ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  store ptr %10, ptr %2, align 8, !tbaa !304
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi ptr [ %10, %5 ], [ %3, %1 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ao_ref_alias_set(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !306 {
  %2 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !307
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %8, !prof !308

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !301
  %7 = tail call i32 @get_alias_set(ptr noundef %6) #13
  store i32 %7, ptr %2, align 8, !tbaa !307
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ %3, %1 ]
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ao_ref_init_from_ptr_and_size(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !309 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store ptr null, ptr %0, align 8, !tbaa !301
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 121
  %9 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  br i1 %8, label %10, label %14, !prof !310

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !244
  %13 = call ptr @get_ref_base_and_extent(ptr noundef %12, ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  br label %17

14:                                               ; preds = %3
  %15 = load ptr, ptr @integer_types, align 16, !tbaa !255
  %16 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %15, ptr noundef nonnull %1) #13
  store i64 0, ptr %9, align 8, !tbaa !311
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %13, %10 ], [ %16, %14 ]
  %19 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 1
  store ptr %18, ptr %19, align 8
  %20 = icmp eq ptr %2, null
  br i1 %20, label %32, label %21, !prof !312

21:                                               ; preds = %17
  %22 = call i32 @host_integerp(ptr noundef nonnull %2, i32 noundef 0) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24, !prof !313

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !244
  %27 = icmp ult i64 %26, 2305843009213693952
  br i1 %27, label %28, label %32, !prof !314

28:                                               ; preds = %24
  %29 = shl nuw i64 %26, 3
  %30 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  store i64 %29, ptr %30, align 8, !tbaa !315
  %31 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  store i64 %29, ptr %31, align 8, !tbaa !316
  br label %34

32:                                               ; preds = %24, %21, %17
  %33 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 -1, i64 16, i1 false)
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %35, align 8, !tbaa !307
  %36 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 6
  store i32 0, ptr %36, align 4, !tbaa !317
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @refs_may_alias_p_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 !prof !318 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !301
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9, !prof !319

9:                                                ; preds = %3
  %10 = load i64, ptr %7, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %17 [
    i16 32, label %21
    i16 34, label %21
    i16 36, label %21
    i16 141, label %12
  ], !prof !320

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !244
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %17 [
    i16 32, label %21
    i16 34, label %21
    i16 36, label %21
  ]

17:                                               ; preds = %12, %9
  %18 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %7) #12, !range !256
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21, !prof !321

20:                                               ; preds = %17
  switch i16 %11, label %36 [
    i16 47, label %21
    i16 48, label %21
    i16 49, label %21
    i16 152, label %21
    i16 33, label %21
  ], !prof !322

21:                                               ; preds = %20, %20, %20, %20, %20, %12, %12, %12, %9, %9, %9, %17, %3
  %22 = load ptr, ptr %1, align 8, !tbaa !301
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24, !prof !323

24:                                               ; preds = %21
  %25 = load i64, ptr %22, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %32 [
    i16 32, label %37
    i16 34, label %37
    i16 36, label %37
    i16 141, label %27
  ], !prof !324

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %22, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !244
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %32 [
    i16 32, label %37
    i16 34, label %37
    i16 36, label %37
  ]

32:                                               ; preds = %27, %24
  %33 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %22) #12, !range !256
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %37, !prof !325

35:                                               ; preds = %32
  switch i16 %26, label %36 [
    i16 47, label %37
    i16 48, label %37
    i16 49, label %37
    i16 152, label %37
    i16 33, label %37
  ], !prof !326

36:                                               ; preds = %35, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 786, ptr noundef nonnull @.str.12) #13
  br label %37

37:                                               ; preds = %35, %35, %35, %35, %35, %27, %27, %27, %24, %24, %24, %21, %32, %36
  %38 = tail call ptr @ao_ref_base(ptr noundef nonnull %0) #12
  %39 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !311
  %41 = getelementptr inbounds %struct.ao_ref_s, ptr %0, i64 0, i32 4
  %42 = load i64, ptr %41, align 8, !tbaa !316
  %43 = tail call ptr @ao_ref_base(ptr noundef %1) #12
  %44 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !311
  %46 = getelementptr inbounds %struct.ao_ref_s, ptr %1, i64 0, i32 4
  %47 = load i64, ptr %46, align 8, !tbaa !316
  %48 = load i64, ptr %38, align 8
  %49 = freeze i64 %48
  %50 = trunc i64 %49 to i16
  switch i16 %50, label %51 [
    i16 141, label %233
    i16 33, label %233
  ], !prof !327

51:                                               ; preds = %37
  %52 = load i64, ptr %43, align 8
  %53 = trunc i64 %52 to i16
  switch i16 %53, label %54 [
    i16 141, label %233
    i16 33, label %233
  ]

54:                                               ; preds = %51
  %55 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %38) #13
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %233, !prof !328

57:                                               ; preds = %54
  %58 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %43) #13
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %233, !prof !329

60:                                               ; preds = %57
  %61 = load i64, ptr %38, align 8
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 29
  br i1 %64, label %233, label %65, !prof !330

65:                                               ; preds = %60
  %66 = load i64, ptr %43, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 29
  br i1 %68, label %233, label %69, !prof !330

69:                                               ; preds = %65
  %70 = trunc i64 %61 to i16
  switch i16 %70, label %77 [
    i16 32, label %84
    i16 34, label %84
    i16 36, label %84
    i16 141, label %71
  ], !prof !331

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !244
  %74 = load i64, ptr %73, align 8
  %75 = trunc i64 %74 to i16
  %76 = icmp ult i16 %75, 37
  br i1 %76, label %78, label %84

77:                                               ; preds = %69
  br label %84

78:                                               ; preds = %71
  %79 = trunc i64 %74 to i37
  %80 = and i37 %79, 65535
  %81 = lshr i37 -47244640256, %80
  %82 = and i37 %81, 1
  %83 = icmp ne i37 %82, 0
  br label %84

84:                                               ; preds = %71, %78, %69, %69, %69, %77
  %85 = phi i1 [ true, %69 ], [ true, %69 ], [ true, %69 ], [ false, %77 ], [ %83, %78 ], [ false, %71 ]
  %86 = trunc i64 %66 to i32
  %87 = and i32 %86, 65535
  %88 = trunc i64 %66 to i16
  switch i16 %88, label %97 [
    i16 32, label %94
    i16 34, label %94
    i16 36, label %94
    i16 141, label %89
  ], !prof !332

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.tree_ssa_name, ptr %43, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !244
  %92 = load i64, ptr %91, align 8
  %93 = trunc i64 %92 to i16
  switch i16 %93, label %97 [
    i16 32, label %94
    i16 34, label %94
    i16 36, label %94
  ]

94:                                               ; preds = %89, %89, %89, %84, %84, %84
  br i1 %85, label %95, label %102, !prof !333

95:                                               ; preds = %94
  %96 = tail call fastcc zeroext i8 @decl_refs_may_alias_p(ptr noundef nonnull %38, i64 noundef %40, i64 noundef %42, ptr noundef nonnull %43, i64 noundef %45, i64 noundef %47) #12, !range !256
  br label %233

97:                                               ; preds = %89, %84
  %98 = add nsw i32 %63, -47
  %99 = icmp ult i32 %98, 3
  %100 = add nsw i32 %87, -47
  %101 = icmp ult i32 %100, 3
  br label %107

102:                                              ; preds = %94
  %103 = add nsw i32 %63, -47
  %104 = icmp ult i32 %103, 3
  %105 = add nsw i32 %87, -47
  %106 = icmp ult i32 %105, 3
  br i1 %104, label %107, label %183, !prof !334

107:                                              ; preds = %102, %97
  %108 = phi ptr [ %43, %97 ], [ %38, %102 ]
  %109 = phi i64 [ %40, %97 ], [ %45, %102 ]
  %110 = phi i64 [ %45, %97 ], [ %40, %102 ]
  %111 = phi i64 [ %42, %97 ], [ %47, %102 ]
  %112 = phi i64 [ %47, %97 ], [ %42, %102 ]
  %113 = phi i1 [ %85, %97 ], [ true, %102 ]
  %114 = phi i1 [ %99, %97 ], [ false, %102 ]
  %115 = phi i1 [ %101, %97 ], [ true, %102 ]
  %116 = phi ptr [ %38, %97 ], [ %43, %102 ]
  %117 = phi ptr [ %1, %97 ], [ %0, %102 ]
  %118 = phi ptr [ %0, %97 ], [ %1, %102 ]
  %119 = and i1 %113, %115
  %120 = load ptr, ptr @cfun, align 8
  %121 = icmp ne ptr %120, null
  %122 = select i1 %119, i1 %121, i1 false
  br i1 %122, label %123, label %183, !prof !335

123:                                              ; preds = %107
  %124 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef nonnull %120) #12, !range !256
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %183, label %126, !prof !336

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.tree_exp, ptr %108, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !244
  %129 = load i64, ptr %128, align 8
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 141
  br i1 %131, label %132, label %183, !prof !337

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.tree_ssa_name, ptr %128, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !244
  %135 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %134) #12, !range !256
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %183, label %137, !prof !338

137:                                              ; preds = %132, %167
  %138 = phi ptr [ %169, %167 ], [ %134, %132 ]
  %139 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %138) #12, !range !339
  %140 = icmp eq i32 %139, 141
  br i1 %140, label %147, label %141, !prof !340

141:                                              ; preds = %137
  %142 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %138) #12, !range !339
  %143 = icmp eq i32 %142, 116
  br i1 %143, label %147, label %144, !prof !341

144:                                              ; preds = %141
  %145 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %138) #12, !range !339
  %146 = icmp eq i32 %145, 113
  br i1 %146, label %147, label %183, !prof !342

147:                                              ; preds = %137, %141, %144
  %148 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %138) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %149 = load i64, ptr %148, align 8
  %150 = trunc i64 %149 to i16
  switch i16 %150, label %172 [
    i16 141, label %151
    i16 121, label %156
  ], !prof !343

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !244
  %154 = load i64, ptr %153, align 8
  %155 = trunc i64 %154 to i16
  switch i16 %155, label %172 [
    i16 10, label %167
    i16 12, label %167
  ], !prof !344

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.tree_exp, ptr %148, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !244
  %159 = call ptr @get_ref_base_and_extent(ptr noundef %158, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %160 = load i64, ptr %159, align 8
  %161 = trunc i64 %160 to i16
  switch i16 %161, label %172 [
    i16 32, label %173
    i16 34, label %173
    i16 36, label %173
    i16 141, label %162
  ], !prof !345

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.tree_ssa_name, ptr %159, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !244
  %165 = load i64, ptr %164, align 8
  %166 = trunc i64 %165 to i16
  switch i16 %166, label %172 [
    i16 32, label %173
    i16 34, label %173
    i16 36, label %173
  ]

167:                                              ; preds = %151, %151
  %168 = getelementptr inbounds %struct.tree_ssa_name, ptr %148, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %170 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %169) #12, !range !256
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %183, label %137, !prof !346

172:                                              ; preds = %147, %151, %162, %156
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %183

173:                                              ; preds = %156, %156, %156, %162, %162, %162
  %174 = load i64, ptr %4, align 8, !tbaa !347
  %175 = add nsw i64 %174, %110
  %176 = load i64, ptr %5, align 8, !tbaa !347
  %177 = load i64, ptr %6, align 8
  %178 = icmp ne i64 %176, %177
  %179 = icmp eq i64 %177, -1
  %180 = or i1 %178, %179
  %181 = select i1 %180, i64 -1, i64 %112, !prof !348
  %182 = call fastcc zeroext i8 @decl_refs_may_alias_p(ptr noundef nonnull %116, i64 noundef %109, i64 noundef %111, ptr noundef nonnull %159, i64 noundef %175, i64 noundef %181) #12, !range !256
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %233

183:                                              ; preds = %167, %144, %102, %132, %172, %126, %123, %107
  %184 = phi i1 [ %119, %132 ], [ %119, %172 ], [ %119, %126 ], [ %119, %123 ], [ %119, %107 ], [ false, %102 ], [ %119, %144 ], [ %119, %167 ]
  %185 = phi ptr [ %118, %132 ], [ %118, %172 ], [ %118, %126 ], [ %118, %123 ], [ %118, %107 ], [ %0, %102 ], [ %118, %144 ], [ %118, %167 ]
  %186 = phi ptr [ %117, %132 ], [ %117, %172 ], [ %117, %126 ], [ %117, %123 ], [ %117, %107 ], [ %1, %102 ], [ %117, %144 ], [ %117, %167 ]
  %187 = phi ptr [ %116, %132 ], [ %116, %172 ], [ %116, %126 ], [ %116, %123 ], [ %116, %107 ], [ %38, %102 ], [ %116, %144 ], [ %116, %167 ]
  %188 = phi i1 [ %115, %132 ], [ %115, %172 ], [ %115, %126 ], [ %115, %123 ], [ %115, %107 ], [ %106, %102 ], [ %115, %144 ], [ %115, %167 ]
  %189 = phi i1 [ %114, %132 ], [ %114, %172 ], [ %114, %126 ], [ %114, %123 ], [ %114, %107 ], [ %104, %102 ], [ %114, %144 ], [ %114, %167 ]
  %190 = phi i64 [ %112, %132 ], [ %112, %172 ], [ %112, %126 ], [ %112, %123 ], [ %112, %107 ], [ %47, %102 ], [ %112, %144 ], [ %112, %167 ]
  %191 = phi i64 [ %111, %132 ], [ %111, %172 ], [ %111, %126 ], [ %111, %123 ], [ %111, %107 ], [ %42, %102 ], [ %111, %144 ], [ %111, %167 ]
  %192 = phi i64 [ %110, %132 ], [ %110, %172 ], [ %110, %126 ], [ %110, %123 ], [ %110, %107 ], [ %45, %102 ], [ %110, %144 ], [ %110, %167 ]
  %193 = phi i64 [ %109, %132 ], [ %109, %172 ], [ %109, %126 ], [ %109, %123 ], [ %109, %107 ], [ %40, %102 ], [ %109, %144 ], [ %109, %167 ]
  %194 = phi ptr [ %108, %132 ], [ %108, %172 ], [ %108, %126 ], [ %108, %123 ], [ %108, %107 ], [ %43, %102 ], [ %108, %144 ], [ %108, %167 ]
  %195 = icmp ne i8 %2, 0
  %196 = load i32, ptr @flag_strict_aliasing, align 4
  %197 = icmp ne i32 %196, 0
  %198 = select i1 %195, i1 %197, i1 false
  br i1 %198, label %199, label %204, !prof !349

199:                                              ; preds = %183
  %200 = call i32 @ao_ref_alias_set(ptr noundef %185) #12
  %201 = call i32 @ao_ref_alias_set(ptr noundef %186) #12
  %202 = call i32 @alias_sets_conflict_p(i32 noundef %200, i32 noundef %201) #13
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %233, label %204, !prof !350

204:                                              ; preds = %199, %183
  %205 = load ptr, ptr %185, align 8, !tbaa !301
  %206 = icmp eq ptr %205, null
  br i1 %206, label %211, label %207, !prof !351

207:                                              ; preds = %204
  %208 = load i64, ptr %205, align 8
  %209 = and i64 %208, 65535
  %210 = icmp eq i64 %209, 152
  br i1 %210, label %233, label %211, !prof !352

211:                                              ; preds = %207, %204
  %212 = load ptr, ptr %186, align 8, !tbaa !301
  %213 = icmp eq ptr %212, null
  br i1 %213, label %218, label %214, !prof !353

214:                                              ; preds = %211
  %215 = load i64, ptr %212, align 8
  %216 = and i64 %215, 65535
  %217 = icmp eq i64 %216, 152
  br i1 %217, label %233, label %218, !prof !354

218:                                              ; preds = %214, %211
  %219 = sext i1 %195 to i32
  br i1 %184, label %220, label %224, !prof !355

220:                                              ; preds = %218
  %221 = getelementptr inbounds %struct.tree_exp, ptr %194, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !244
  %223 = call fastcc zeroext i8 @indirect_ref_may_alias_decl_p(ptr noundef %212, ptr noundef %222, i64 noundef %192, i64 noundef %190, i32 noundef %219, ptr noundef %205, ptr noundef nonnull %187, i64 noundef %193, i64 noundef %191, i32 noundef %219) #12, !range !256
  br label %233

224:                                              ; preds = %218
  %225 = and i1 %189, %188
  br i1 %225, label %226, label %232, !prof !356

226:                                              ; preds = %224
  %227 = getelementptr inbounds %struct.tree_exp, ptr %187, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !244
  %229 = getelementptr inbounds %struct.tree_exp, ptr %194, i64 0, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !244
  %231 = call fastcc zeroext i8 @indirect_refs_may_alias_p(ptr noundef %205, ptr noundef %228, i64 noundef %193, i64 noundef %191, i32 noundef %219, ptr noundef %212, ptr noundef %230, i64 noundef %192, i64 noundef %190, i32 noundef %219) #12, !range !256
  br label %233

232:                                              ; preds = %224
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 921, ptr noundef nonnull @.str.12) #13
  br label %233

233:                                              ; preds = %37, %37, %173, %51, %51, %207, %214, %199, %60, %65, %54, %57, %232, %226, %220, %95
  %234 = phi i8 [ %96, %95 ], [ %223, %220 ], [ %231, %226 ], [ 0, %232 ], [ %182, %173 ], [ 0, %57 ], [ 0, %54 ], [ 0, %51 ], [ 0, %37 ], [ 1, %65 ], [ 1, %60 ], [ 0, %199 ], [ 1, %214 ], [ 1, %207 ], [ 0, %51 ], [ 0, %37 ]
  ret i8 %234
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !357 !PGOFuncName !358 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ], !prof !359

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @decl_refs_may_alias_p(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #2 !prof !360 !PGOFuncName !361 {
  %7 = load i64, ptr %0, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %22 [
    i16 32, label %14
    i16 34, label %14
    i16 36, label %14
    i16 141, label %9
  ], !prof !362

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !244
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %22 [
    i16 32, label %14
    i16 34, label %14
    i16 36, label %14
  ]

14:                                               ; preds = %9, %9, %9, %6, %6, %6
  %15 = load i64, ptr %3, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %22 [
    i16 32, label %23
    i16 34, label %23
    i16 36, label %23
    i16 141, label %17
  ], !prof !363

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !244
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %22 [
    i16 32, label %23
    i16 34, label %23
    i16 36, label %23
  ]

22:                                               ; preds = %17, %14, %9, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 629, ptr noundef nonnull @.str.12) #13
  br label %23

23:                                               ; preds = %17, %17, %17, %14, %14, %14, %22
  %24 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 0) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !364

26:                                               ; preds = %23
  %27 = tail call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %1, i64 noundef %2, i64 noundef %4, i64 noundef %5) #12, !range !256
  br label %28

28:                                               ; preds = %23, %26
  %29 = phi i8 [ %27, %26 ], [ 0, %23 ]
  ret i8 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !365 !PGOFuncName !366 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !367

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gimple_df, ptr %3, i64 0, i32 10
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %5 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !368 !PGOFuncName !369 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !370
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #2 !prof !371 !PGOFuncName !372 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #12, !range !339
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #12, !range !370
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !373

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #12
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #2 !prof !374 !PGOFuncName !375 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #12
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @alias_sets_conflict_p(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @indirect_ref_may_alias_decl_p(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef %9) unnamed_addr #2 !prof !376 !PGOFuncName !377 {
  %11 = icmp eq i64 %8, -1
  br i1 %11, label %16, label %12, !prof !378

12:                                               ; preds = %10
  %13 = add nsw i64 %8, %7
  %14 = tail call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %2, i64 noundef %3, i64 noundef 0, i64 noundef %13) #12, !range !256
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %64, label %16, !prof !379

16:                                               ; preds = %12, %10
  %17 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr noundef %1, ptr noundef %6) #12
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %64, label %19, !prof !380

19:                                               ; preds = %16
  %20 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !284
  %21 = icmp ne i32 %20, 0
  %22 = icmp eq i32 %4, -1
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %64, !prof !381

24:                                               ; preds = %19
  %25 = tail call i32 @get_deref_alias_set(ptr noundef %1) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %64, label %27, !prof !382

27:                                               ; preds = %24
  %28 = icmp eq i32 %9, -1
  br i1 %28, label %29, label %31, !prof !383

29:                                               ; preds = %27
  %30 = tail call i32 @get_alias_set(ptr noundef %6) #13
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %30, %29 ], [ 0, %27 ]
  %33 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !244
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !244
  %37 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !244
  %39 = tail call fastcc i32 @same_type_for_tbaa(ptr noundef %36, ptr noundef %38) #12, !range !384
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %43, !prof !385

41:                                               ; preds = %31
  %42 = tail call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %2, i64 noundef %3, i64 noundef %7, i64 noundef %8) #12, !range !256
  br label %64

43:                                               ; preds = %31
  %44 = icmp eq i32 %25, %32
  br i1 %44, label %48, label %45, !prof !386

45:                                               ; preds = %43
  %46 = tail call zeroext i8 @alias_set_subset_of(i32 noundef %25, i32 noundef %32) #13
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %64, label %48, !prof !387

48:                                               ; preds = %45, %43
  %49 = icmp ne ptr %0, null
  %50 = icmp ne ptr %5, null
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %64, !prof !388

52:                                               ; preds = %48
  %53 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %0) #12, !range !256
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %64, label %55, !prof !389

55:                                               ; preds = %52
  %56 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %5) #12, !range !256
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %64, label %58, !prof !390

58:                                               ; preds = %55
  %59 = load ptr, ptr %33, align 8, !tbaa !244
  %60 = getelementptr inbounds %struct.tree_common, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !244
  %62 = load ptr, ptr %37, align 8, !tbaa !244
  %63 = tail call fastcc zeroext i8 @aliasing_component_refs_p(ptr noundef nonnull %0, ptr noundef %61, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %5, ptr noundef %62, i64 noundef %7, i64 noundef %8) #12, !range !256
  br label %64

64:                                               ; preds = %48, %52, %55, %45, %24, %19, %16, %12, %58, %41
  %65 = phi i8 [ %42, %41 ], [ %63, %58 ], [ 0, %12 ], [ 0, %16 ], [ 1, %19 ], [ 1, %24 ], [ 0, %45 ], [ 1, %55 ], [ 1, %52 ], [ 1, %48 ]
  ret i8 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @indirect_refs_may_alias_p(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef %9) unnamed_addr #2 !prof !391 !PGOFuncName !392 {
  %11 = tail call i32 @operand_equal_p(ptr noundef %1, ptr noundef %6, i32 noundef 0) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !393

13:                                               ; preds = %10
  %14 = tail call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %2, i64 noundef %3, i64 noundef %7, i64 noundef %8) #12, !range !256
  br label %67

15:                                               ; preds = %10
  %16 = tail call fastcc zeroext i8 @ptr_derefs_may_alias_p(ptr noundef %1, ptr noundef %6) #12
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %67, label %18, !prof !394

18:                                               ; preds = %15
  %19 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !284
  %20 = icmp ne i32 %19, 0
  %21 = icmp eq i32 %4, -1
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %67, !prof !395

23:                                               ; preds = %18
  %24 = tail call i32 @get_deref_alias_set(ptr noundef %1) #13
  %25 = icmp ne i32 %24, 0
  %26 = icmp eq i32 %9, -1
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %67, !prof !396

28:                                               ; preds = %23
  %29 = tail call i32 @get_deref_alias_set(ptr noundef %6) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %67, label %31, !prof !397

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !244
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !244
  %36 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !244
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !244
  %40 = tail call fastcc i32 @same_type_for_tbaa(ptr noundef %35, ptr noundef %39) #12, !range !384
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %44, !prof !398

42:                                               ; preds = %31
  %43 = tail call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %2, i64 noundef %3, i64 noundef %7, i64 noundef %8) #12, !range !256
  br label %67

44:                                               ; preds = %31
  %45 = icmp eq i32 %24, %29
  br i1 %45, label %49, label %46, !prof !399

46:                                               ; preds = %44
  %47 = tail call i32 @alias_sets_conflict_p(i32 noundef %24, i32 noundef %29) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %67, label %49, !prof !400

49:                                               ; preds = %46, %44
  %50 = icmp ne ptr %0, null
  %51 = icmp ne ptr %5, null
  %52 = and i1 %50, %51
  br i1 %52, label %53, label %67, !prof !401

53:                                               ; preds = %49
  %54 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %0) #12, !range !256
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %67, label %56, !prof !402

56:                                               ; preds = %53
  %57 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %5) #12, !range !256
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %67, label %59, !prof !403

59:                                               ; preds = %56
  %60 = load ptr, ptr %32, align 8, !tbaa !244
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !244
  %63 = load ptr, ptr %36, align 8, !tbaa !244
  %64 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !244
  %66 = tail call fastcc zeroext i8 @aliasing_component_refs_p(ptr noundef nonnull %0, ptr noundef %62, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %5, ptr noundef %65, i64 noundef %7, i64 noundef %8) #12, !range !256
  br label %67

67:                                               ; preds = %49, %53, %56, %46, %28, %23, %18, %15, %59, %42, %13
  %68 = phi i8 [ %14, %13 ], [ %43, %42 ], [ %66, %59 ], [ 0, %15 ], [ 1, %18 ], [ 1, %23 ], [ 1, %28 ], [ 0, %46 ], [ 1, %56 ], [ 1, %53 ], [ 1, %49 ]
  ret i8 %68
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @ranges_overlap_p(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #9 !prof !404 !PGOFuncName !405 {
  %5 = icmp ult i64 %0, %2
  br i1 %5, label %11, label %6, !prof !406

6:                                                ; preds = %4
  %7 = icmp eq i64 %3, -1
  %8 = add i64 %3, %2
  %9 = icmp ugt i64 %8, %0
  %10 = or i1 %7, %9
  br i1 %10, label %19, label %11, !prof !407

11:                                               ; preds = %6, %4
  %12 = icmp ult i64 %2, %0
  br i1 %12, label %18, label %13, !prof !408

13:                                               ; preds = %11
  %14 = icmp eq i64 %1, -1
  %15 = add i64 %1, %0
  %16 = icmp ugt i64 %15, %2
  %17 = or i1 %14, %16
  br i1 %17, label %19, label %18, !prof !409

18:                                               ; preds = %13, %11
  br label %19

19:                                               ; preds = %13, %6, %18
  %20 = phi i8 [ 0, %18 ], [ 1, %6 ], [ 1, %13 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !410 !PGOFuncName !411 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !371 !PGOFuncName !412 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !370
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !413

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1446, ptr noundef nonnull @.str.12) #13
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #9 !prof !371 !PGOFuncName !414 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !244
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !415 !PGOFuncName !416 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !256
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !417

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #12
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !255
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !415 !PGOFuncName !418 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !370
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #2 !prof !415 !PGOFuncName !419 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #12
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !347
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !417

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.12) #13
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !415 !PGOFuncName !420 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !370
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #12
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 !prof !415 !PGOFuncName !421 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !284
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 !prof !422 !PGOFuncName !423 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %8 [
    i16 141, label %5
    i16 121, label %5
    i16 23, label %5
  ], !prof !424

5:                                                ; preds = %2, %2, %2
  %6 = load i64, ptr %1, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %8 [
    i16 32, label %9
    i16 34, label %9
    i16 36, label %9
  ], !prof !425

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 176, ptr noundef nonnull @.str.12) #13
  br label %9

9:                                                ; preds = %5, %5, %5, %8
  %10 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %1) #12, !range !256
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %81, label %12, !prof !426

12:                                               ; preds = %9
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 121
  br i1 %15, label %16, label %48, !prof !427

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !244
  %19 = tail call ptr @get_base_address(ptr noundef %18) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %42, label %21, !prof !428

21:                                               ; preds = %16
  %22 = load i64, ptr %19, align 8
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 65535
  %25 = add nsw i32 %24, -47
  %26 = icmp ult i32 %25, 3
  br i1 %26, label %43, label %27, !prof !429

27:                                               ; preds = %21
  %28 = trunc i64 %22 to i16
  switch i16 %28, label %37 [
    i16 32, label %34
    i16 34, label %34
    i16 36, label %34
    i16 141, label %29
  ], !prof !430

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !244
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i16
  switch i16 %33, label %37 [
    i16 32, label %34
    i16 34, label %34
    i16 36, label %34
  ]

34:                                               ; preds = %29, %29, %29, %27, %27, %27
  %35 = tail call i32 @operand_equal_p(ptr noundef nonnull %19, ptr noundef %1, i32 noundef 0) #13
  %36 = trunc i32 %35 to i8
  br label %81

37:                                               ; preds = %27, %29
  %38 = and i64 %22, 65535
  %39 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !284
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %81, label %42

42:                                               ; preds = %16, %37
  br label %81

43:                                               ; preds = %21
  %44 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !244
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  br label %48

48:                                               ; preds = %43, %12
  %49 = phi i64 [ %47, %43 ], [ %14, %12 ]
  %50 = phi ptr [ %45, %43 ], [ %0, %12 ]
  %51 = icmp eq i64 %49, 23
  br i1 %51, label %81, label %52, !prof !431

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_ssa_name, ptr %50, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !244
  %55 = icmp eq ptr %54, null
  br i1 %55, label %81, label %56, !prof !432

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 536870912
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %79, label %61, !prof !433

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !244
  %64 = getelementptr inbounds %struct.tree_type, ptr %63, i64 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 8192
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %61
  %69 = load i8, ptr %54, align 8
  %70 = and i8 %69, 32
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.pt_solution, ptr %54, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !434
  %75 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !244
  %77 = tail call i32 @bitmap_bit_p(ptr noundef %74, i32 noundef %76) #13
  %78 = trunc i32 %77 to i8
  br label %81

79:                                               ; preds = %68, %61, %56
  %80 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %54, ptr noundef nonnull %1) #13
  br label %81

81:                                               ; preds = %37, %42, %34, %52, %48, %9, %79, %72
  %82 = phi i8 [ %78, %72 ], [ %80, %79 ], [ 0, %9 ], [ 1, %48 ], [ 1, %52 ], [ 0, %37 ], [ 1, %42 ], [ %36, %34 ]
  ret i8 %82
}

; Function Attrs: optsize
declare i32 @get_deref_alias_set(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @same_type_for_tbaa(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !prof !436 !PGOFuncName !437 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !244
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !244
  %7 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !244
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10, !prof !438

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !244
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14, !prof !438

14:                                               ; preds = %10
  %15 = icmp eq ptr %8, %12
  br i1 %15, label %29, label %16, !prof !439

16:                                               ; preds = %14
  %17 = load i64, ptr %4, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 15
  br i1 %19, label %20, label %24, !prof !440

20:                                               ; preds = %16
  %21 = load i64, ptr %6, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 15
  br i1 %23, label %29, label %24, !prof !441

24:                                               ; preds = %20, %16
  %25 = tail call i32 @get_alias_set(ptr noundef nonnull %4) #13
  %26 = tail call i32 @get_alias_set(ptr noundef nonnull %6) #13
  %27 = icmp eq i32 %25, %26
  %28 = sext i1 %27 to i32
  br label %29

29:                                               ; preds = %24, %20, %14, %2, %10
  %30 = phi i32 [ -1, %10 ], [ -1, %2 ], [ 1, %14 ], [ -1, %20 ], [ %28, %24 ]
  ret i32 %30
}

; Function Attrs: optsize
declare zeroext i8 @alias_set_subset_of(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @aliasing_component_refs_p(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i64 noundef %6, i64 noundef %7) unnamed_addr #2 !prof !442 !PGOFuncName !443 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store ptr %0, ptr %9, align 8, !tbaa !255
  store ptr %4, ptr %10, align 8, !tbaa !255
  %17 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %4) #12, !range !256
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %32, label %19, !prof !444

19:                                               ; preds = %8, %27
  %20 = phi ptr [ %29, %27 ], [ %4, %8 ]
  %21 = phi ptr [ %28, %27 ], [ %10, %8 ]
  %22 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !244
  %24 = tail call fastcc i32 @same_type_for_tbaa(ptr noundef %23, ptr noundef %1) #12, !range !384
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %21, align 8, !tbaa !255
  br i1 %25, label %27, label %32, !prof !445

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !255
  %30 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %29) #12, !range !256
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %19, !prof !446, !llvm.loop !447

32:                                               ; preds = %27, %19, %8
  %33 = phi ptr [ %4, %8 ], [ %29, %27 ], [ %26, %19 ]
  %34 = phi ptr [ %10, %8 ], [ %28, %27 ], [ %21, %19 ]
  %35 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !244
  %37 = tail call fastcc i32 @same_type_for_tbaa(ptr noundef %36, ptr noundef %1) #12, !range !384
  switch i32 %37, label %38 [
    i32 -1, label %73
    i32 1, label %41
  ], !prof !448

38:                                               ; preds = %32
  %39 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #12, !range !256
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %60, label %47, !prof !449

41:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  %42 = load ptr, ptr %34, align 8, !tbaa !255
  %43 = call ptr @get_ref_base_and_extent(ptr noundef %42, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #13
  %44 = load i64, ptr %11, align 8, !tbaa !347
  %45 = sub nsw i64 %6, %44
  %46 = call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %2, i64 noundef %3, i64 noundef %45, i64 noundef %7) #12, !range !256
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  br label %73

47:                                               ; preds = %38, %55
  %48 = phi ptr [ %57, %55 ], [ %0, %38 ]
  %49 = phi ptr [ %56, %55 ], [ %9, %38 ]
  %50 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !244
  %52 = tail call fastcc i32 @same_type_for_tbaa(ptr noundef %51, ptr noundef %5) #12, !range !384
  %53 = icmp eq i32 %52, 0
  %54 = load ptr, ptr %49, align 8, !tbaa !255
  br i1 %53, label %55, label %60, !prof !450

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.tree_exp, ptr %54, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !255
  %58 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %57) #12, !range !256
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %47, !prof !451, !llvm.loop !452

60:                                               ; preds = %55, %47, %38
  %61 = phi ptr [ %0, %38 ], [ %57, %55 ], [ %54, %47 ]
  %62 = phi ptr [ %9, %38 ], [ %56, %55 ], [ %49, %47 ]
  %63 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !244
  %65 = tail call fastcc i32 @same_type_for_tbaa(ptr noundef %64, ptr noundef %5) #12, !range !384
  switch i32 %65, label %72 [
    i32 -1, label %73
    i32 1, label %66
  ], !prof !453

66:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #14
  %67 = load ptr, ptr %62, align 8, !tbaa !255
  %68 = call ptr @get_ref_base_and_extent(ptr noundef %67, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #13
  %69 = load i64, ptr %14, align 8, !tbaa !347
  %70 = sub nsw i64 %2, %69
  %71 = call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %70, i64 noundef %3, i64 noundef %6, i64 noundef %7) #12, !range !256
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #14
  br label %73

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %60, %32, %72, %66, %41
  %74 = phi i8 [ %46, %41 ], [ %71, %66 ], [ 0, %72 ], [ 1, %32 ], [ 1, %60 ]
  ret i8 %74
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @pt_solution_includes(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ptr_derefs_may_alias_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #2 !prof !454 !PGOFuncName !455 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %8 [
    i16 141, label %5
    i16 121, label %5
    i16 23, label %5
  ], !prof !456

5:                                                ; preds = %2, %2, %2
  %6 = load i64, ptr %1, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %8 [
    i16 141, label %10
    i16 121, label %10
    i16 23, label %10
  ], !prof !457

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 236, ptr noundef nonnull @.str.12) #13
  %9 = load i64, ptr %0, align 8
  br label %10

10:                                               ; preds = %5, %5, %5, %8
  %11 = phi i64 [ %3, %5 ], [ %3, %5 ], [ %3, %5 ], [ %9, %8 ]
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 121
  br i1 %13, label %14, label %37, !prof !458

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !244
  %17 = tail call ptr @get_base_address(ptr noundef %16) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %103, label %19, !prof !459

19:                                               ; preds = %14
  %20 = load i64, ptr %17, align 8
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 65535
  %23 = add nsw i32 %22, -47
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %34, label %25, !prof !460

25:                                               ; preds = %19
  %26 = trunc i64 %20 to i16
  switch i16 %26, label %103 [
    i16 32, label %32
    i16 34, label %32
    i16 36, label %32
    i16 141, label %27
  ], !prof !461

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %17, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !244
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %103 [
    i16 32, label %32
    i16 34, label %32
    i16 36, label %32
  ]

32:                                               ; preds = %27, %27, %27, %25, %25, %25
  %33 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr noundef %1, ptr noundef nonnull %17) #12
  br label %103

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !244
  br label %37

37:                                               ; preds = %34, %10
  %38 = phi ptr [ %36, %34 ], [ %0, %10 ]
  %39 = load i64, ptr %1, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 121
  br i1 %41, label %42, label %65, !prof !462

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !244
  %45 = tail call ptr @get_base_address(ptr noundef %44) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %103, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -47
  %52 = icmp ult i32 %51, 3
  br i1 %52, label %62, label %53

53:                                               ; preds = %47
  %54 = trunc i64 %48 to i16
  switch i16 %54, label %103 [
    i16 32, label %60
    i16 34, label %60
    i16 36, label %60
    i16 141, label %55
  ]

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !244
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i16
  switch i16 %59, label %103 [
    i16 32, label %60
    i16 34, label %60
    i16 36, label %60
  ]

60:                                               ; preds = %55, %55, %55, %53, %53, %53
  %61 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr noundef %38, ptr noundef nonnull %45) #12
  br label %103

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.tree_exp, ptr %45, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !244
  br label %65

65:                                               ; preds = %62, %37
  %66 = phi ptr [ %64, %62 ], [ %1, %37 ]
  %67 = load i64, ptr %38, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 23
  br i1 %69, label %103, label %70, !prof !463

70:                                               ; preds = %65
  %71 = load i64, ptr %66, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 23
  %74 = icmp eq ptr %38, %66
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %103, label %76, !prof !464

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !244
  %79 = getelementptr inbounds %struct.tree_ssa_name, ptr %66, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !244
  %81 = icmp ne ptr %78, null
  %82 = icmp ne ptr %80, null
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %103, !prof !465

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !244
  %87 = getelementptr inbounds %struct.tree_type, ptr %86, i64 0, i32 6
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 8192
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %101, label %91, !prof !466

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !244
  %94 = getelementptr inbounds %struct.tree_type, ptr %93, i64 0, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 8192
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98, !prof !467

98:                                               ; preds = %91
  %99 = tail call zeroext i8 @pt_solutions_same_restrict_base(ptr noundef nonnull %78, ptr noundef nonnull %80) #13
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98, %91, %84
  %102 = tail call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %78, ptr noundef nonnull %80) #13
  br label %103

103:                                              ; preds = %53, %55, %42, %60, %25, %27, %14, %32, %98, %76, %65, %70, %101
  %104 = phi i8 [ %102, %101 ], [ 1, %70 ], [ 1, %65 ], [ 1, %76 ], [ 0, %98 ], [ 1, %25 ], [ 1, %27 ], [ 1, %14 ], [ %33, %32 ], [ 1, %53 ], [ 1, %55 ], [ 1, %42 ], [ %61, %60 ]
  ret i8 %104
}

; Function Attrs: optsize
declare zeroext i8 @pt_solutions_same_restrict_base(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @pt_solutions_intersect(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @refs_may_alias_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !468 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %0) #12
  call void @ao_ref_init(ptr noundef nonnull %4, ptr noundef %1) #12
  %5 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 1) #12
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr @alias_stats.1, ptr @alias_stats.0, !prof !469
  %8 = load i64, ptr %7, align 8, !tbaa !347
  %9 = add i64 %8, 1
  store i64 %9, ptr %7, align 8, !tbaa !347
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @refs_anti_dependent_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !470 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %0) #12
  call void @ao_ref_init(ptr noundef nonnull %4, ptr noundef %1) #12
  %5 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @refs_output_dependent_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !471 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %0) #12
  call void @ao_ref_init(ptr noundef nonnull %4, ptr noundef %1) #12
  %5 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ref_maybe_used_by_stmt_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !472 {
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #12, !range !256
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %20, label %5, !prof !473

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8, !prof !474

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #12
  %10 = tail call zeroext i8 @is_gimple_reg(ptr noundef %9) #13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %25, !prof !475

12:                                               ; preds = %8
  %13 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %9) #13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %25, !prof !476

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #12, !range !339
  %17 = icmp eq i32 %16, 51
  br i1 %17, label %25, label %18, !prof !477

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @refs_may_alias_p(ptr noundef %9, ptr noundef %1) #12
  br label %25

20:                                               ; preds = %2
  %21 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #12, !range !256
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23, !prof !478

23:                                               ; preds = %20
  %24 = tail call fastcc zeroext i8 @ref_maybe_used_by_call_p(ptr noundef %0, ptr noundef %1) #12
  br label %25

25:                                               ; preds = %20, %18, %5, %15, %12, %8, %23
  %26 = phi i8 [ %24, %23 ], [ %19, %18 ], [ 0, %5 ], [ 0, %15 ], [ 0, %12 ], [ 0, %8 ], [ 1, %20 ]
  ret i8 %26
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !479 !PGOFuncName !480 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !370
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ref_maybe_used_by_call_p(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !481 !PGOFuncName !482 {
  %3 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %1) #12
  %4 = call fastcc zeroext i8 @ref_maybe_used_by_call_p_1(ptr noundef %0, ptr noundef nonnull %3) #12
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, ptr @alias_stats.3, ptr @alias_stats.2, !prof !483
  %7 = load i64, ptr %6, align 8, !tbaa !347
  %8 = add i64 %7, 1
  store i64 %8, ptr %6, align 8, !tbaa !347
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ref_maybe_used_by_call_p_1(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !481 !PGOFuncName !484 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  %5 = alloca %struct.ao_ref_s, align 8
  %6 = tail call i32 @gimple_call_flags(ptr noundef %0) #13
  %7 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #12
  %8 = icmp ne ptr %7, null
  %9 = and i32 %6, 513
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %12, label %137, !prof !485

12:                                               ; preds = %2
  %13 = tail call ptr @ao_ref_base(ptr noundef %1) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %165, label %15, !prof !486

15:                                               ; preds = %12
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 65535
  %18 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !284
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %27, !prof !487

21:                                               ; preds = %15
  %22 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef nonnull %13) #12, !range !256
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27, !prof !488

24:                                               ; preds = %21
  %25 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %13) #12, !range !256
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %137, label %27, !prof !489

27:                                               ; preds = %24, %21, %15
  %28 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %64, label %30, !prof !490

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tree_function_decl, ptr %28, i64 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 6144
  %34 = icmp eq i32 %33, 6144
  br i1 %34, label %35, label %50, !prof !491

35:                                               ; preds = %30
  %36 = and i32 %32, 2047
  switch i32 %36, label %50 [
    i32 341, label %37
    i32 349, label %37
    i32 330, label %37
    i32 331, label %37
    i32 332, label %37
    i32 335, label %37
    i32 336, label %37
    i32 338, label %37
    i32 347, label %37
    i32 325, label %46
    i32 455, label %165
    i32 491, label %165
    i32 422, label %165
    i32 333, label %165
    i32 78, label %165
    i32 79, label %165
    i32 80, label %165
    i32 84, label %165
    i32 85, label %165
    i32 86, label %165
    i32 123, label %165
    i32 124, label %165
    i32 125, label %165
    i32 159, label %165
    i32 160, label %165
    i32 161, label %165
    i32 192, label %165
    i32 193, label %165
    i32 194, label %165
    i32 220, label %165
    i32 221, label %165
    i32 222, label %165
  ], !prof !492

37:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35, %35
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  %38 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #12
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %42, !prof !493

40:                                               ; preds = %37
  %41 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #12
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi ptr [ %41, %40 ], [ null, %37 ]
  %44 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #12
  call void @ao_ref_init_from_ptr_and_size(ptr noundef nonnull %3, ptr noundef %44, ptr noundef %43) #12
  %45 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  br label %165

46:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  %47 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #12
  %48 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #12
  call void @ao_ref_init_from_ptr_and_size(ptr noundef nonnull %4, ptr noundef %48, ptr noundef %47) #12
  %49 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  br label %165

50:                                               ; preds = %35, %30
  %51 = load i64, ptr %13, align 8
  %52 = and i64 %51, 201392127
  %53 = icmp ne i64 %52, 67108896
  %54 = or i1 %29, %53
  br i1 %54, label %64, label %55, !prof !494

55:                                               ; preds = %50
  %56 = tail call ptr @cgraph_node(ptr noundef nonnull %28) #13
  %57 = tail call ptr @ipa_reference_get_not_read_global(ptr noundef %56) #13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59, !prof !495

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.tree_decl_minimal, ptr %13, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !244
  %62 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %57, i32 noundef %61) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %137, !prof !496

64:                                               ; preds = %27, %50, %59, %55
  %65 = and i32 %6, 519
  %66 = icmp eq i32 %65, 0
  %67 = load i64, ptr %13, align 8
  %68 = and i64 %67, 65535
  %69 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !284
  %71 = icmp eq i32 %70, 3
  br i1 %66, label %108, label %72, !prof !497

72:                                               ; preds = %64
  br i1 %71, label %73, label %76, !prof !498

73:                                               ; preds = %72
  %74 = tail call fastcc zeroext i8 @is_call_used(ptr noundef nonnull %13) #12, !range !256
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %137, label %165, !prof !499

76:                                               ; preds = %72
  %77 = trunc i64 %67 to i32
  %78 = and i32 %77, 65535
  %79 = add nsw i32 %78, -47
  %80 = icmp ult i32 %79, 3
  br i1 %80, label %81, label %165, !prof !500

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !244
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 141
  br i1 %86, label %87, label %165, !prof !501

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.tree_ssa_name, ptr %83, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !244
  %90 = icmp eq ptr %89, null
  br i1 %90, label %165, label %91, !prof !502

91:                                               ; preds = %87
  %92 = tail call zeroext i8 @pt_solution_includes_global(ptr noundef nonnull %89) #13
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %165, !prof !503

94:                                               ; preds = %91
  %95 = load ptr, ptr @cfun, align 8, !tbaa !255
  %96 = getelementptr inbounds %struct.function, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !259
  %98 = getelementptr inbounds %struct.gimple_df, ptr %97, i64 0, i32 5
  %99 = tail call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %98, ptr noundef nonnull %89) #13
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %165, !prof !504

101:                                              ; preds = %94
  %102 = load ptr, ptr @cfun, align 8, !tbaa !255
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !259
  %105 = getelementptr inbounds %struct.gimple_df, ptr %104, i64 0, i32 4
  %106 = tail call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %105, ptr noundef nonnull %89) #13
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %137, label %165, !prof !505

108:                                              ; preds = %64
  br i1 %71, label %109, label %112, !prof !506

109:                                              ; preds = %108
  %110 = tail call fastcc zeroext i8 @is_call_clobbered(ptr noundef nonnull %13) #12, !range !256
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %137, label %165, !prof !507

112:                                              ; preds = %108
  %113 = trunc i64 %67 to i32
  %114 = and i32 %113, 65535
  %115 = add nsw i32 %114, -47
  %116 = icmp ult i32 %115, 3
  br i1 %116, label %117, label %165, !prof !508

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !244
  %120 = load i64, ptr %119, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 141
  br i1 %122, label %123, label %165, !prof !509

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.tree_ssa_name, ptr %119, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !244
  %126 = icmp eq ptr %125, null
  br i1 %126, label %165, label %127, !prof !510

127:                                              ; preds = %123
  %128 = tail call zeroext i8 @pt_solution_includes_global(ptr noundef nonnull %125) #13
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %165, !prof !511

130:                                              ; preds = %127
  %131 = load ptr, ptr @cfun, align 8, !tbaa !255
  %132 = getelementptr inbounds %struct.function, ptr %131, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !259
  %134 = getelementptr inbounds %struct.gimple_df, ptr %133, i64 0, i32 4
  %135 = tail call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %134, ptr noundef nonnull %125) #13
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %165, !prof !512

137:                                              ; preds = %59, %130, %101, %2, %73, %109, %24
  %138 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #12
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %165, label %140, !prof !513

140:                                              ; preds = %137, %161
  %141 = phi i32 [ %162, %161 ], [ 0, %137 ]
  %142 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %141) #12
  %143 = load i64, ptr %142, align 8
  %144 = and i64 %143, 65535
  %145 = icmp eq i64 %144, 150
  br i1 %145, label %146, label %151, !prof !514

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.tree_exp, ptr %142, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !244
  %149 = load i64, ptr %148, align 8
  %150 = and i64 %149, 65535
  br label %151

151:                                              ; preds = %146, %140
  %152 = phi i64 [ %150, %146 ], [ %144, %140 ]
  %153 = phi ptr [ %148, %146 ], [ %142, %140 ]
  %154 = icmp eq i64 %152, 141
  br i1 %154, label %161, label %155, !prof !515

155:                                              ; preds = %151
  %156 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %153) #13
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %161, !prof !516

158:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #14
  call void @ao_ref_init(ptr noundef nonnull %5, ptr noundef nonnull %153) #12
  %159 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext 1) #12
  %160 = icmp eq i8 %159, 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #14
  br i1 %160, label %161, label %165

161:                                              ; preds = %158, %155, %151
  %162 = add nuw i32 %141, 1
  %163 = call fastcc i32 @gimple_call_num_args(ptr noundef %0) #12
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %140, label %165, !prof !517, !llvm.loop !518

165:                                              ; preds = %158, %161, %137, %112, %76, %117, %123, %130, %127, %109, %81, %87, %101, %94, %91, %73, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %12, %46, %42
  %166 = phi i8 [ %49, %46 ], [ %45, %42 ], [ 1, %12 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 0, %35 ], [ 1, %73 ], [ 1, %91 ], [ 1, %94 ], [ 1, %101 ], [ 1, %87 ], [ 1, %76 ], [ 1, %81 ], [ 1, %109 ], [ 1, %127 ], [ 1, %130 ], [ 1, %123 ], [ 1, %112 ], [ 1, %117 ], [ 0, %137 ], [ 1, %158 ], [ 0, %161 ]
  ret i8 %166
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #2 !prof !481 !PGOFuncName !519 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !520 !PGOFuncName !521 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11, !prof !522

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = lshr i64 %7, 25
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 1, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #2 !prof !523 !PGOFuncName !524 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #12
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !525

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !244
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !526 !PGOFuncName !527 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #12
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !528 !PGOFuncName !529 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #12
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @ipa_reference_get_not_read_global(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_used(ptr noundef %0) unnamed_addr #2 !prof !530 !PGOFuncName !531 {
  %2 = tail call fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) #12, !range !256
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15, !prof !532

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #12, !range !256
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7, !prof !533

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !255
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !259
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 5
  %12 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %11, ptr noundef %0) #13
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %7, %1
  %16 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %14, %7 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) unnamed_addr #2 !prof !534 !PGOFuncName !535 {
  %2 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %0) #12, !range !256
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15, !prof !536

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #12, !range !256
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7, !prof !537

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !255
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !259
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 4
  %12 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %11, ptr noundef %0) #13
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %7, %1
  %16 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %14, %7 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #2 !prof !523 !PGOFuncName !538 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !526 !PGOFuncName !539 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !244
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !540 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #12, !range !256
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7, !prof !541

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !542

10:                                               ; preds = %7
  %11 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %8) #13
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16, !prof !543

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef nonnull %8) #12
  %14 = call zeroext i8 @refs_may_alias_p_1(ptr noundef %1, ptr noundef nonnull %3, i8 noundef zeroext 1) #12
  %15 = icmp eq i8 %14, 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  br i1 %15, label %16, label %28

16:                                               ; preds = %13, %10, %7
  %17 = call fastcc zeroext i8 @call_may_clobber_ref_p_1(ptr noundef %0, ptr noundef %1) #12
  br label %28

18:                                               ; preds = %2
  %19 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #12, !range !256
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21, !prof !544

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  %22 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #12
  call void @ao_ref_init(ptr noundef nonnull %4, ptr noundef %22) #12
  %23 = call zeroext i8 @refs_may_alias_p_1(ptr noundef %1, ptr noundef nonnull %4, i8 noundef zeroext 1) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  br label %28

24:                                               ; preds = %18
  %25 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !370
  %26 = icmp eq i32 %25, 7
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %24, %16, %13, %21
  %29 = phi i8 [ %23, %21 ], [ %17, %16 ], [ 1, %13 ], [ %27, %24 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #2 !prof !545 !PGOFuncName !546 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @call_may_clobber_ref_p_1(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !547 !PGOFuncName !548 {
  %3 = alloca %struct.ao_ref_s, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  %5 = tail call i32 @gimple_call_flags(ptr noundef %0) #13
  %6 = and i32 %5, 519
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %163, !prof !549

8:                                                ; preds = %2
  %9 = tail call ptr @ao_ref_base(ptr noundef %1) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %163, label %11, !prof !550

11:                                               ; preds = %8
  %12 = load i64, ptr %9, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %163, label %15, !prof !550

15:                                               ; preds = %11
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %17 = load i32, ptr %16, align 4, !tbaa !284
  switch i32 %17, label %27 [
    i32 1, label %163
    i32 3, label %18
  ], !prof !551

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef nonnull %9) #12, !range !256
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %27, !prof !552

21:                                               ; preds = %18
  %22 = and i64 %12, 1048576
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %163, !prof !553

24:                                               ; preds = %21
  %25 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %9) #12, !range !256
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %163, label %27, !prof !554

27:                                               ; preds = %15, %24, %18
  %28 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %129, label %30, !prof !555

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tree_function_decl, ptr %28, i64 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 6144
  %34 = icmp eq i32 %33, 6144
  br i1 %34, label %35, label %116, !prof !556

35:                                               ; preds = %30
  %36 = and i32 %32, 2047
  switch i32 %36, label %116 [
    i32 341, label %37
    i32 349, label %37
    i32 330, label %37
    i32 331, label %37
    i32 332, label %37
    i32 335, label %37
    i32 336, label %37
    i32 338, label %37
    i32 347, label %37
    i32 333, label %37
    i32 325, label %46
    i32 491, label %50
    i32 422, label %50
    i32 455, label %87
    i32 84, label %90
    i32 85, label %90
    i32 86, label %90
    i32 123, label %90
    i32 124, label %90
    i32 125, label %90
    i32 78, label %97
    i32 79, label %97
    i32 80, label %97
    i32 159, label %97
    i32 160, label %97
    i32 161, label %97
    i32 192, label %100
    i32 193, label %100
    i32 194, label %100
    i32 220, label %107
    i32 221, label %107
    i32 222, label %107
  ], !prof !557

37:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35, %35, %35
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  %38 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #12
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %42, !prof !558

40:                                               ; preds = %37
  %41 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #12
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi ptr [ %41, %40 ], [ null, %37 ]
  %44 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #12
  call void @ao_ref_init_from_ptr_and_size(ptr noundef nonnull %3, ptr noundef %44, ptr noundef %43) #12
  %45 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  br label %163

46:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  %47 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #12
  %48 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #12
  call void @ao_ref_init_from_ptr_and_size(ptr noundef nonnull %4, ptr noundef %48, ptr noundef %47) #12
  %49 = call zeroext i8 @refs_may_alias_p_1(ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  br label %163

50:                                               ; preds = %35, %35
  %51 = load i32, ptr @flag_errno_math, align 4, !tbaa !284
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %163, label %53, !prof !559

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !244
  %56 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !255
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %163, !prof !560

58:                                               ; preds = %53
  %59 = load i64, ptr %9, align 8
  %60 = and i64 %59, 65535
  %61 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !284
  %63 = icmp eq i32 %62, 3
  %64 = and i64 %59, 67108864
  %65 = icmp eq i64 %64, 0
  %66 = and i1 %63, %65
  br i1 %66, label %163, label %67, !prof !561

67:                                               ; preds = %58
  %68 = trunc i64 %59 to i32
  %69 = and i32 %68, 65535
  %70 = add nsw i32 %69, -47
  %71 = icmp ult i32 %70, 3
  br i1 %71, label %72, label %163, !prof !562

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !244
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 141
  br i1 %77, label %78, label %163

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.tree_ssa_name, ptr %74, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !244
  %81 = icmp eq ptr %80, null
  br i1 %81, label %163, label %82

82:                                               ; preds = %78
  %83 = load i8, ptr %80, align 8
  %84 = and i8 %83, 3
  %85 = icmp ne i8 %84, 0
  %86 = zext i1 %85 to i8
  br label %163

87:                                               ; preds = %35
  %88 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #12
  %89 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %88, ptr noundef %1) #12
  br label %163

90:                                               ; preds = %35, %35, %35, %35, %35, %35
  %91 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #12
  %92 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %91, ptr noundef %1) #12
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %163

94:                                               ; preds = %90
  %95 = load i32, ptr @flag_errno_math, align 4, !tbaa !284
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %163, label %116

97:                                               ; preds = %35, %35, %35, %35, %35, %35
  %98 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #12
  %99 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %98, ptr noundef %1) #12
  br label %163

100:                                              ; preds = %35, %35, %35
  %101 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #12
  %102 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %101, ptr noundef %1) #12
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %163

104:                                              ; preds = %100
  %105 = load i32, ptr @flag_errno_math, align 4, !tbaa !284
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %163, label %116

107:                                              ; preds = %35, %35, %35
  %108 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #12
  %109 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #12
  %110 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %108, ptr noundef %1) #12
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %163

112:                                              ; preds = %107
  %113 = tail call fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %109, ptr noundef %1) #12
  %114 = icmp ne i8 %113, 0
  %115 = zext i1 %114 to i8
  br label %163

116:                                              ; preds = %104, %94, %35, %30
  %117 = load i64, ptr %9, align 8
  %118 = and i64 %117, 201392127
  %119 = icmp eq i64 %118, 67108896
  br i1 %119, label %120, label %129, !prof !563

120:                                              ; preds = %116
  %121 = tail call ptr @cgraph_node(ptr noundef nonnull %28) #13
  %122 = tail call ptr @ipa_reference_get_not_written_global(ptr noundef %121) #13
  %123 = icmp eq ptr %122, null
  br i1 %123, label %129, label %124, !prof !564

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !244
  %127 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %122, i32 noundef %126) #13
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %163, !prof !565

129:                                              ; preds = %124, %120, %27, %116
  %130 = load i64, ptr %9, align 8
  %131 = and i64 %130, 65535
  %132 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !284
  %134 = icmp eq i32 %133, 3
  br i1 %134, label %135, label %137, !prof !566

135:                                              ; preds = %129
  %136 = tail call fastcc zeroext i8 @is_call_clobbered(ptr noundef nonnull %9) #12, !range !256
  br label %163

137:                                              ; preds = %129
  %138 = trunc i64 %130 to i32
  %139 = and i32 %138, 65535
  %140 = add nsw i32 %139, -47
  %141 = icmp ult i32 %140, 3
  br i1 %141, label %142, label %163, !prof !567

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !244
  %145 = load i64, ptr %144, align 8
  %146 = and i64 %145, 65535
  %147 = icmp eq i64 %146, 141
  br i1 %147, label %148, label %163, !prof !568

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.tree_ssa_name, ptr %144, i64 0, i32 4
  %150 = load ptr, ptr %149, align 8, !tbaa !244
  %151 = icmp eq ptr %150, null
  br i1 %151, label %163, label %152, !prof !569

152:                                              ; preds = %148
  %153 = tail call zeroext i8 @pt_solution_includes_global(ptr noundef nonnull %150) #13
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %163, !prof !570

155:                                              ; preds = %152
  %156 = load ptr, ptr @cfun, align 8, !tbaa !255
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !259
  %159 = getelementptr inbounds %struct.gimple_df, ptr %158, i64 0, i32 4
  %160 = tail call zeroext i8 @pt_solutions_intersect(ptr noundef nonnull %159, ptr noundef nonnull %150) #13
  %161 = icmp ne i8 %160, 0
  %162 = zext i1 %161 to i8
  br label %163

163:                                              ; preds = %100, %90, %78, %72, %67, %124, %50, %53, %82, %58, %137, %142, %148, %155, %152, %107, %112, %21, %24, %15, %11, %8, %2, %94, %104, %135, %97, %87, %46, %42
  %164 = phi i8 [ %136, %135 ], [ 0, %104 ], [ %99, %97 ], [ 0, %94 ], [ %89, %87 ], [ %49, %46 ], [ %45, %42 ], [ 0, %2 ], [ 1, %8 ], [ 0, %15 ], [ 0, %11 ], [ 0, %24 ], [ 0, %21 ], [ 1, %107 ], [ %115, %112 ], [ 1, %148 ], [ 1, %152 ], [ %162, %155 ], [ 1, %137 ], [ 1, %142 ], [ %86, %82 ], [ 1, %58 ], [ 0, %53 ], [ 0, %50 ], [ 0, %124 ], [ 0, %67 ], [ 0, %72 ], [ 0, %78 ], [ 1, %90 ], [ 1, %100 ]
  ret i8 %164
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #2 !prof !571 !PGOFuncName !572 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ptr_deref_may_alias_ref_p_1(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !573 !PGOFuncName !574 {
  %3 = tail call ptr @ao_ref_base(ptr noundef %1) #12
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %17 [
    i16 47, label %6
    i16 48, label %6
    i16 49, label %6
    i16 32, label %15
    i16 34, label %15
    i16 36, label %15
    i16 141, label %10
  ], !prof !575

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !244
  %9 = tail call fastcc zeroext i8 @ptr_derefs_may_alias_p(ptr noundef %0, ptr noundef %8) #12
  br label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !244
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %17 [
    i16 32, label %15
    i16 34, label %15
    i16 36, label %15
  ]

15:                                               ; preds = %10, %10, %10, %2, %2, %2
  %16 = tail call fastcc zeroext i8 @ptr_deref_may_alias_decl_p(ptr noundef %0, ptr noundef nonnull %3) #12
  br label %17

17:                                               ; preds = %2, %10, %15, %6
  %18 = phi i8 [ %9, %6 ], [ %16, %15 ], [ 1, %10 ], [ 1, %2 ]
  ret i8 %18
}

; Function Attrs: optsize
declare ptr @ipa_reference_get_not_written_global(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @stmt_may_clobber_ref_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !576 {
  %3 = alloca %struct.ao_ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @ao_ref_init(ptr noundef nonnull %3, ptr noundef %1) #12
  %4 = call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %0, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_continuation_for_phi(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 !prof !577 {
  %4 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #12
  switch i32 %4, label %57 [
    i32 1, label %5
    i32 2, label %8
  ], !prof !578

5:                                                ; preds = %3
  %6 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef 0) #12
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #12
  br label %57

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef 0) #12
  %10 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %9) #12
  %11 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef 1) #12
  %12 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %11) #12
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !244
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !244
  %17 = icmp eq ptr %10, %12
  br i1 %17, label %55, label %18, !prof !579

18:                                               ; preds = %8
  %19 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %14) #12, !range !256
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %29, !prof !580

21:                                               ; preds = %18
  %22 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %16) #12, !range !256
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32, !prof !581

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @gimple_bb(ptr noundef %16) #12
  %26 = tail call fastcc ptr @gimple_bb(ptr noundef %14) #12
  %27 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %25, ptr noundef %26) #13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29, !prof !582

29:                                               ; preds = %24, %18
  %30 = tail call fastcc zeroext i8 @maybe_skip_until(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %12, ptr noundef %2) #12
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %57, label %55, !prof !583

32:                                               ; preds = %24, %21
  %33 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %16) #12, !range !256
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %40, !prof !584

35:                                               ; preds = %32
  %36 = tail call fastcc ptr @gimple_bb(ptr noundef %14) #12
  %37 = tail call fastcc ptr @gimple_bb(ptr noundef %16) #12
  %38 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %36, ptr noundef %37) #13
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40, !prof !585

40:                                               ; preds = %35, %32
  %41 = tail call fastcc zeroext i8 @maybe_skip_until(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %1, ptr noundef nonnull %10, ptr noundef %2) #12
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %57, label %55, !prof !586

43:                                               ; preds = %35
  %44 = tail call fastcc ptr @gimple_vuse(ptr noundef %14) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %57, label %46, !prof !587

46:                                               ; preds = %43
  %47 = tail call fastcc ptr @gimple_vuse(ptr noundef %16) #12
  %48 = icmp eq ptr %44, %47
  br i1 %48, label %49, label %57, !prof !588

49:                                               ; preds = %46
  %50 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %14, ptr noundef %1) #12
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %57, !prof !589

52:                                               ; preds = %49
  %53 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %16, ptr noundef %1) #12
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57, !prof !590

55:                                               ; preds = %8, %29, %40, %52
  %56 = phi ptr [ %44, %52 ], [ %12, %40 ], [ %10, %29 ], [ %10, %8 ]
  br label %57

57:                                               ; preds = %3, %40, %49, %52, %46, %43, %29, %55, %5
  %58 = phi ptr [ %7, %5 ], [ %56, %55 ], [ null, %29 ], [ null, %43 ], [ null, %46 ], [ null, %52 ], [ null, %49 ], [ null, %40 ], [ null, %3 ]
  ret ptr %58
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !591 !PGOFuncName !592 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !244
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !593 !PGOFuncName !594 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !595
  %4 = load ptr, ptr %3, align 8, !tbaa !255
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !597 !PGOFuncName !598 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #12
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !599 !PGOFuncName !600 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !370
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !601 !PGOFuncName !602 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !244
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @maybe_skip_until(ptr noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #2 !prof !603 !PGOFuncName !604 {
  %6 = load ptr, ptr %4, align 8, !tbaa !255
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !605

8:                                                ; preds = %5
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  store ptr %9, ptr %4, align 8, !tbaa !255
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %9, %8 ], [ %6, %5 ]
  %12 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #12
  %13 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %12) #12
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !244
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %15) #13
  %17 = icmp eq ptr %3, %1
  br i1 %17, label %46, label %18, !prof !606

18:                                               ; preds = %10, %43
  %19 = phi ptr [ %44, %43 ], [ %3, %10 ]
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !244
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %21) #12, !range !370
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %24, label %32, !prof !607

24:                                               ; preds = %18
  %25 = load ptr, ptr %4, align 8, !tbaa !255
  %26 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %21) #12
  %27 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %26) #12
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %27, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !244
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %25, i32 noundef %29) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %46, !prof !608

32:                                               ; preds = %18
  %33 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %21) #12, !range !256
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %46, !prof !609

35:                                               ; preds = %32
  %36 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %21, ptr noundef %2) #12
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %46, !prof !610

38:                                               ; preds = %35
  %39 = tail call fastcc ptr @gimple_vuse(ptr noundef %21) #12
  br label %43

40:                                               ; preds = %24
  %41 = tail call ptr @get_continuation_for_phi(ptr noundef %21, ptr noundef %2, ptr noundef nonnull %4) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40, %38
  %44 = phi ptr [ %41, %40 ], [ %39, %38 ]
  %45 = icmp eq ptr %44, %1
  br i1 %45, label %46, label %18, !prof !611

46:                                               ; preds = %40, %43, %24, %35, %32, %10
  %47 = phi i8 [ 1, %10 ], [ 0, %40 ], [ 1, %43 ], [ 1, %24 ], [ 0, %35 ], [ 0, %32 ]
  ret i8 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !612 !PGOFuncName !613 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #12, !range !256
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !614

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !244
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !593 !PGOFuncName !615 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !244
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !616

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 3103, ptr noundef nonnull @.str.12) #13
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !617 !PGOFuncName !618 {
  %2 = load ptr, ptr %0, align 8, !tbaa !255
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #9 !prof !617 !PGOFuncName !619 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !612 !PGOFuncName !620 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !370
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @walk_non_aliased_vuses(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, ptr noundef %4) local_unnamed_addr #2 !prof !621 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store ptr null, ptr %6, align 8, !tbaa !255
  %7 = load i8, ptr @timevar_enable, align 1, !tbaa !244
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !622

9:                                                ; preds = %5
  tail call void @timevar_push_1(i32 noundef 39) #13
  br label %10

10:                                               ; preds = %9, %5
  br label %11

11:                                               ; preds = %35, %10
  %12 = phi ptr [ %1, %10 ], [ %36, %35 ]
  %13 = tail call ptr %2(ptr noundef %0, ptr noundef %12, ptr noundef %4) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %39, !prof !623

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !244
  %18 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %17) #12, !range !256
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %39, !prof !624

20:                                               ; preds = %15
  %21 = tail call fastcc i32 @gimple_code(ptr noundef %17) #12, !range !370
  %22 = icmp eq i32 %21, 16
  br i1 %22, label %23, label %25, !prof !625

23:                                               ; preds = %20
  %24 = call ptr @get_continuation_for_phi(ptr noundef %17, ptr noundef %0, ptr noundef nonnull %6) #12
  br label %35

25:                                               ; preds = %20
  %26 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %17, ptr noundef %0) #12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28, !prof !626

28:                                               ; preds = %25
  %29 = icmp eq ptr %3, null
  br i1 %29, label %39, label %30, !prof !627

30:                                               ; preds = %28
  %31 = tail call ptr %3(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %4) #13
  %32 = ptrtoint ptr %31 to i64
  switch i64 %32, label %39 [
    i64 -1, label %38
    i64 0, label %33
  ], !prof !628

33:                                               ; preds = %30, %25
  %34 = tail call fastcc ptr @gimple_vuse(ptr noundef %17) #12
  br label %35

35:                                               ; preds = %33, %23
  %36 = phi ptr [ %24, %23 ], [ %34, %33 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %11, !prof !629, !llvm.loop !630

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %28, %15, %11, %35, %30, %38
  %40 = phi ptr [ %31, %30 ], [ %13, %11 ], [ null, %15 ], [ null, %28 ], [ null, %35 ], [ null, %38 ]
  %41 = load ptr, ptr %6, align 8, !tbaa !255
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43, !prof !631

43:                                               ; preds = %39
  tail call void @bitmap_obstack_free(ptr noundef nonnull %41) #13
  br label %44

44:                                               ; preds = %39, %43
  %45 = load i8, ptr @timevar_enable, align 1, !tbaa !244
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47, !prof !622

47:                                               ; preds = %44
  tail call void @timevar_pop_1(i32 noundef 39) #13
  br label %48

48:                                               ; preds = %47, %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret ptr %40
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @walk_aliased_vdefs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 !prof !632 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store ptr null, ptr %6, align 8, !tbaa !255
  %7 = load i8, ptr @timevar_enable, align 1, !tbaa !244
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !633

9:                                                ; preds = %5
  tail call void @timevar_push_1(i32 noundef 39) #13
  br label %10

10:                                               ; preds = %9, %5
  %11 = icmp eq ptr %4, null
  %12 = select i1 %11, ptr %6, ptr %4, !prof !634
  %13 = call fastcc i32 @walk_aliased_vdefs_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %12) #12
  %14 = load ptr, ptr %6, align 8, !tbaa !255
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !635

16:                                               ; preds = %10
  tail call void @bitmap_obstack_free(ptr noundef nonnull %14) #13
  br label %17

17:                                               ; preds = %10, %16
  %18 = load i8, ptr @timevar_enable, align 1, !tbaa !244
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20, !prof !633

20:                                               ; preds = %17
  tail call void @timevar_pop_1(i32 noundef 39) #13
  br label %21

21:                                               ; preds = %20, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @walk_aliased_vdefs_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #2 !prof !636 !PGOFuncName !637 {
  br label %6

6:                                                ; preds = %51, %5
  %7 = phi ptr [ %1, %5 ], [ %52, %51 ]
  %8 = phi i32 [ 0, %5 ], [ %44, %51 ]
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !244
  %11 = load ptr, ptr %4, align 8, !tbaa !255
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !638

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !244
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %11, i32 noundef %15) #13
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %53, label %18, !prof !639

18:                                               ; preds = %13, %6
  %19 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %10) #12, !range !256
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %53, !prof !640

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %10) #12, !range !370
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %24, label %42, !prof !641

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 8, !tbaa !255
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29, !prof !642

27:                                               ; preds = %24
  %28 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  store ptr %28, ptr %4, align 8, !tbaa !255
  br label %29

29:                                               ; preds = %27, %24
  %30 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %10) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %53, label %32, !prof !643

32:                                               ; preds = %29, %32
  %33 = phi i64 [ %38, %32 ], [ 0, %29 ]
  %34 = phi i32 [ %37, %32 ], [ %8, %29 ]
  %35 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %10, i64 noundef %33) #12
  %36 = tail call fastcc i32 @walk_aliased_vdefs_1(ptr noundef %0, ptr noundef %35, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) #12
  %37 = add i32 %36, %34
  %38 = add nuw nsw i64 %33, 1
  %39 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %10) #12
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %32, label %53, !prof !644, !llvm.loop !645

42:                                               ; preds = %21
  %43 = icmp eq ptr %0, null
  %44 = add i32 %8, 1
  br i1 %43, label %48, label %45, !prof !646

45:                                               ; preds = %42
  %46 = tail call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %10, ptr noundef nonnull %0) #12
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48, !prof !647

48:                                               ; preds = %45, %42
  %49 = tail call zeroext i8 %2(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %3) #13
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53, !prof !648

51:                                               ; preds = %45, %48
  %52 = tail call fastcc ptr @gimple_vuse(ptr noundef %10) #12
  br label %6

53:                                               ; preds = %13, %18, %48, %32, %29
  %54 = phi i32 [ %8, %29 ], [ %37, %32 ], [ %8, %13 ], [ %8, %18 ], [ %44, %48 ]
  ret i32 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #2 !prof !649 !PGOFuncName !650 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #12
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #12
  ret ptr %5
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!232}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!36 = !{ptr @ptr_deref_may_alias_global_p, ptr @pt_solution_includes_global, i64 756984}
!37 = !{ptr @get_ptr_info, ptr @ggc_alloc_cleared_stat, i64 387916}
!38 = !{ptr @get_ptr_info, ptr @pt_solution_reset, i64 387916}
!39 = !{ptr @ao_ref_base, ptr @get_ref_base_and_extent, i64 36811532}
!40 = !{ptr @ao_ref_alias_set, ptr @get_alias_set, i64 3624444}
!41 = !{ptr @ao_ref_init_from_ptr_and_size, ptr @get_ref_base_and_extent, i64 10388}
!42 = !{ptr @ao_ref_init_from_ptr_and_size, ptr @build1_stat, i64 72851}
!43 = !{ptr @ao_ref_init_from_ptr_and_size, ptr @host_integerp, i64 82604}
!44 = !{ptr @refs_may_alias_p_1, ptr @handled_component_p, i64 34177405}
!45 = !{ptr @refs_may_alias_p_1, ptr @fancy_abort, i64 1}
!46 = !{ptr @refs_may_alias_p_1, ptr @ao_ref_base, i64 37478912}
!47 = !{ptr @refs_may_alias_p_1, ptr @is_gimple_min_invariant, i64 6246462}
!48 = !{ptr @refs_may_alias_p_1, ptr @decl_refs_may_alias_p, i64 239256}
!49 = !{ptr @refs_may_alias_p_1, ptr @gimple_in_ssa_p, i64 2428215}
!50 = !{ptr @refs_may_alias_p_1, ptr @is_gimple_assign, i64 501105}
!51 = !{ptr @refs_may_alias_p_1, ptr @gimple_assign_rhs_code, i64 970979}
!52 = !{ptr @refs_may_alias_p_1, ptr @gimple_assign_rhs1, i64 190406}
!53 = !{ptr @refs_may_alias_p_1, ptr @get_ref_base_and_extent, i64 39}
!54 = !{ptr @refs_may_alias_p_1, ptr @ao_ref_alias_set, i64 5549342}
!55 = !{ptr @refs_may_alias_p_1, ptr @alias_sets_conflict_p, i64 2774671}
!56 = !{ptr @refs_may_alias_p_1, ptr @indirect_ref_may_alias_decl_p, i64 2275398}
!57 = !{ptr @refs_may_alias_p_1, ptr @indirect_refs_may_alias_p, i64 391999}
!58 = !{ptr @decl_refs_may_alias_p, ptr @fancy_abort, i64 1}
!59 = !{ptr @decl_refs_may_alias_p, ptr @operand_equal_p, i64 1435458}
!60 = !{ptr @decl_refs_may_alias_p, ptr @ranges_overlap_p, i64 241592}
!61 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 6657221}
!62 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 3827551}
!63 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 3827551}
!64 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 2104391}
!65 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 2912448}
!66 = !{ptr @indirect_ref_may_alias_decl_p, ptr @ranges_overlap_p, i64 13607920}
!67 = !{ptr @indirect_ref_may_alias_decl_p, ptr @ptr_deref_may_alias_decl_p, i64 12794877}
!68 = !{ptr @indirect_ref_may_alias_decl_p, ptr @get_deref_alias_set, i64 12128780}
!69 = !{ptr @indirect_ref_may_alias_decl_p, ptr @get_alias_set, i64 12125650}
!70 = !{ptr @indirect_ref_may_alias_decl_p, ptr @same_type_for_tbaa, i64 12125651}
!71 = !{ptr @indirect_ref_may_alias_decl_p, ptr @alias_set_subset_of, i64 12091693}
!72 = !{ptr @indirect_ref_may_alias_decl_p, ptr @handled_component_p, i64 10622}
!73 = !{ptr @indirect_ref_may_alias_decl_p, ptr @aliasing_component_refs_p, i64 2647}
!74 = !{ptr @indirect_refs_may_alias_p, ptr @operand_equal_p, i64 2352006}
!75 = !{ptr @indirect_refs_may_alias_p, ptr @ranges_overlap_p, i64 811541}
!76 = !{ptr @indirect_refs_may_alias_p, ptr @ptr_derefs_may_alias_p, i64 2046982}
!77 = !{ptr @indirect_refs_may_alias_p, ptr @get_deref_alias_set, i64 3338561}
!78 = !{ptr @indirect_refs_may_alias_p, ptr @same_type_for_tbaa, i64 1611126}
!79 = !{ptr @indirect_refs_may_alias_p, ptr @alias_sets_conflict_p, i64 1104322}
!80 = !{ptr @indirect_refs_may_alias_p, ptr @handled_component_p, i64 1051543}
!81 = !{ptr @indirect_refs_may_alias_p, ptr @aliasing_component_refs_p, i64 510245}
!82 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 3827551}
!83 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 11793053}
!84 = !{ptr @gimple_op, ptr @gimple_ops, i64 11793052}
!85 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 11793053}
!86 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 11793053}
!87 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!88 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 11793053}
!89 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 11793053}
!90 = !{ptr @ptr_deref_may_alias_decl_p, ptr @fancy_abort, i64 2}
!91 = !{ptr @ptr_deref_may_alias_decl_p, ptr @may_be_aliased, i64 12847294}
!92 = !{ptr @ptr_deref_may_alias_decl_p, ptr @get_base_address, i64 4}
!93 = !{ptr @ptr_deref_may_alias_decl_p, ptr @operand_equal_p, i64 2}
!94 = !{ptr @ptr_deref_may_alias_decl_p, ptr @pt_solution_includes, i64 12231324}
!95 = !{ptr @same_type_for_tbaa, ptr @get_alias_set, i64 32064496}
!96 = !{ptr @aliasing_component_refs_p, ptr @handled_component_p, i64 1931884}
!97 = !{ptr @aliasing_component_refs_p, ptr @same_type_for_tbaa, i64 2445486}
!98 = !{ptr @aliasing_component_refs_p, ptr @get_ref_base_and_extent, i64 704}
!99 = !{ptr @aliasing_component_refs_p, ptr @ranges_overlap_p, i64 704}
!100 = !{ptr @ptr_derefs_may_alias_p, ptr @fancy_abort, i64 2}
!101 = !{ptr @ptr_derefs_may_alias_p, ptr @get_base_address, i64 41}
!102 = !{ptr @ptr_derefs_may_alias_p, ptr @ptr_deref_may_alias_decl_p, i64 36}
!103 = !{ptr @ptr_derefs_may_alias_p, ptr @pt_solutions_same_restrict_base, i64 1}
!104 = !{ptr @ptr_derefs_may_alias_p, ptr @pt_solutions_intersect, i64 2019926}
!105 = !{ptr @refs_may_alias_p, ptr @ao_ref_init, i64 723522}
!106 = !{ptr @refs_may_alias_p, ptr @refs_may_alias_p_1, i64 361761}
!107 = !{ptr @refs_anti_dependent_p, ptr @ao_ref_init, i64 55222}
!108 = !{ptr @refs_anti_dependent_p, ptr @refs_may_alias_p_1, i64 27611}
!109 = !{ptr @refs_output_dependent_p, ptr @ao_ref_init, i64 92220}
!110 = !{ptr @refs_output_dependent_p, ptr @refs_may_alias_p_1, i64 46110}
!111 = !{ptr @ref_maybe_used_by_stmt_p, ptr @is_gimple_assign, i64 332184}
!112 = !{ptr @ref_maybe_used_by_stmt_p, ptr @gimple_assign_single_p, i64 277135}
!113 = !{ptr @ref_maybe_used_by_stmt_p, ptr @gimple_assign_rhs1, i64 277134}
!114 = !{ptr @ref_maybe_used_by_stmt_p, ptr @is_gimple_reg, i64 277134}
!115 = !{ptr @ref_maybe_used_by_stmt_p, ptr @is_gimple_min_invariant, i64 189158}
!116 = !{ptr @ref_maybe_used_by_stmt_p, ptr @gimple_assign_rhs_code, i64 99650}
!117 = !{ptr @ref_maybe_used_by_stmt_p, ptr @refs_may_alias_p, i64 99649}
!118 = !{ptr @ref_maybe_used_by_stmt_p, ptr @is_gimple_call, i64 55049}
!119 = !{ptr @ref_maybe_used_by_stmt_p, ptr @ref_maybe_used_by_call_p, i64 54980}
!120 = !{ptr @is_gimple_call, ptr @gimple_code, i64 6758777}
!121 = !{ptr @ref_maybe_used_by_call_p, ptr @ao_ref_init, i64 54980}
!122 = !{ptr @ref_maybe_used_by_call_p, ptr @ref_maybe_used_by_call_p_1, i64 54980}
!123 = !{ptr @ref_maybe_used_by_call_p_1, ptr @gimple_call_flags, i64 54980}
!124 = !{ptr @ref_maybe_used_by_call_p_1, ptr @gimple_call_chain, i64 54980}
!125 = !{ptr @ref_maybe_used_by_call_p_1, ptr @ao_ref_base, i64 54925}
!126 = !{ptr @ref_maybe_used_by_call_p_1, ptr @may_be_aliased, i64 23743}
!127 = !{ptr @ref_maybe_used_by_call_p_1, ptr @is_global_var, i64 5290}
!128 = !{ptr @ref_maybe_used_by_call_p_1, ptr @gimple_call_fndecl, i64 53249}
!129 = !{ptr @ref_maybe_used_by_call_p_1, ptr @gimple_call_num_args, i64 7080}
!130 = !{ptr @ref_maybe_used_by_call_p_1, ptr @gimple_call_arg, i64 6025}
!131 = !{ptr @ref_maybe_used_by_call_p_1, ptr @ao_ref_init_from_ptr_and_size, i64 1128}
!132 = !{ptr @ref_maybe_used_by_call_p_1, ptr @refs_may_alias_p_1, i64 1393}
!133 = !{ptr @ref_maybe_used_by_call_p_1, ptr @cgraph_node, i64 6444}
!134 = !{ptr @ref_maybe_used_by_call_p_1, ptr @ipa_reference_get_not_read_global, i64 6444}
!135 = !{ptr @ref_maybe_used_by_call_p_1, ptr @bitmap_bit_p, i64 3247}
!136 = !{ptr @ref_maybe_used_by_call_p_1, ptr @is_call_used, i64 278}
!137 = !{ptr @ref_maybe_used_by_call_p_1, ptr @pt_solution_includes_global, i64 28587}
!138 = !{ptr @ref_maybe_used_by_call_p_1, ptr @pt_solutions_intersect, i64 102}
!139 = !{ptr @ref_maybe_used_by_call_p_1, ptr @is_call_clobbered, i64 20343}
!140 = !{ptr @ref_maybe_used_by_call_p_1, ptr @is_gimple_min_invariant, i64 2183}
!141 = !{ptr @ref_maybe_used_by_call_p_1, ptr @ao_ref_init, i64 265}
!142 = !{ptr @gimple_call_chain, ptr @gimple_op, i64 54980}
!143 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 1933559}
!144 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 88563}
!145 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 237234}
!146 = !{ptr @is_call_used, ptr @is_call_clobbered, i64 277}
!147 = !{ptr @is_call_used, ptr @may_be_aliased, i64 32}
!148 = !{ptr @is_call_used, ptr @pt_solution_includes, i64 31}
!149 = !{ptr @is_call_clobbered, ptr @is_global_var, i64 1118821}
!150 = !{ptr @is_call_clobbered, ptr @may_be_aliased, i64 36040}
!151 = !{ptr @is_call_clobbered, ptr @pt_solution_includes, i64 36039}
!152 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 1933559}
!153 = !{ptr @stmt_may_clobber_ref_p_1, ptr @is_gimple_call, i64 6703729}
!154 = !{ptr @stmt_may_clobber_ref_p_1, ptr @gimple_call_lhs, i64 2774312}
!155 = !{ptr @stmt_may_clobber_ref_p_1, ptr @is_gimple_reg, i64 1423548}
!156 = !{ptr @stmt_may_clobber_ref_p_1, ptr @ao_ref_init, i64 3885231}
!157 = !{ptr @stmt_may_clobber_ref_p_1, ptr @refs_may_alias_p_1, i64 3885231}
!158 = !{ptr @stmt_may_clobber_ref_p_1, ptr @call_may_clobber_ref_p_1, i64 2771367}
!159 = !{ptr @stmt_may_clobber_ref_p_1, ptr @is_gimple_assign, i64 3929417}
!160 = !{ptr @stmt_may_clobber_ref_p_1, ptr @gimple_assign_lhs, i64 3880519}
!161 = !{ptr @stmt_may_clobber_ref_p_1, ptr @gimple_code, i64 48898}
!162 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 2774312}
!163 = !{ptr @call_may_clobber_ref_p_1, ptr @gimple_call_flags, i64 2773279}
!164 = !{ptr @call_may_clobber_ref_p_1, ptr @ao_ref_base, i64 2772535}
!165 = !{ptr @call_may_clobber_ref_p_1, ptr @may_be_aliased, i64 2205800}
!166 = !{ptr @call_may_clobber_ref_p_1, ptr @is_global_var, i64 1200389}
!167 = !{ptr @call_may_clobber_ref_p_1, ptr @gimple_call_fndecl, i64 1880305}
!168 = !{ptr @call_may_clobber_ref_p_1, ptr @gimple_call_num_args, i64 82118}
!169 = !{ptr @call_may_clobber_ref_p_1, ptr @gimple_call_arg, i64 231642}
!170 = !{ptr @call_may_clobber_ref_p_1, ptr @ao_ref_init_from_ptr_and_size, i64 82119}
!171 = !{ptr @call_may_clobber_ref_p_1, ptr @refs_may_alias_p_1, i64 82119}
!172 = !{ptr @call_may_clobber_ref_p_1, ptr @ptr_deref_may_alias_ref_p_1, i64 68013}
!173 = !{ptr @call_may_clobber_ref_p_1, ptr @cgraph_node, i64 999122}
!174 = !{ptr @call_may_clobber_ref_p_1, ptr @ipa_reference_get_not_written_global, i64 999122}
!175 = !{ptr @call_may_clobber_ref_p_1, ptr @bitmap_bit_p, i64 636041}
!176 = !{ptr @call_may_clobber_ref_p_1, ptr @is_call_clobbered, i64 1098181}
!177 = !{ptr @call_may_clobber_ref_p_1, ptr @pt_solution_includes_global, i64 460312}
!178 = !{ptr @call_may_clobber_ref_p_1, ptr @pt_solutions_intersect, i64 6231}
!179 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 3880520}
!180 = !{ptr @ptr_deref_may_alias_ref_p_1, ptr @ao_ref_base, i64 67999}
!181 = !{ptr @ptr_deref_may_alias_ref_p_1, ptr @ptr_derefs_may_alias_p, i64 15625}
!182 = !{ptr @ptr_deref_may_alias_ref_p_1, ptr @ptr_deref_may_alias_decl_p, i64 52374}
!183 = !{ptr @stmt_may_clobber_ref_p, ptr @ao_ref_init, i64 214384}
!184 = !{ptr @stmt_may_clobber_ref_p, ptr @stmt_may_clobber_ref_p_1, i64 214384}
!185 = !{ptr @get_continuation_for_phi, ptr @gimple_phi_num_args, i64 1693420}
!186 = !{ptr @get_continuation_for_phi, ptr @gimple_phi_arg_imm_use_ptr, i64 2213024}
!187 = !{ptr @get_continuation_for_phi, ptr @get_use_from_ptr, i64 2213024}
!188 = !{ptr @get_continuation_for_phi, ptr @gimple_nop_p, i64 2631612}
!189 = !{ptr @get_continuation_for_phi, ptr @gimple_bb, i64 2958612}
!190 = !{ptr @get_continuation_for_phi, ptr @dominated_by_p, i64 1479306}
!191 = !{ptr @get_continuation_for_phi, ptr @maybe_skip_until, i64 1020829}
!192 = !{ptr @get_continuation_for_phi, ptr @gimple_vuse, i64 151166}
!193 = !{ptr @get_continuation_for_phi, ptr @stmt_may_clobber_ref_p_1, i64 38437}
!194 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 2213025}
!195 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 12604842}
!196 = !{ptr @maybe_skip_until, ptr @bitmap_obstack_alloc_stat, i64 641126}
!197 = !{ptr @maybe_skip_until, ptr @gimple_phi_result_ptr, i64 2124372}
!198 = !{ptr @maybe_skip_until, ptr @get_def_from_ptr, i64 2124372}
!199 = !{ptr @maybe_skip_until, ptr @bitmap_set_bit, i64 1020832}
!200 = !{ptr @maybe_skip_until, ptr @gimple_code, i64 2629408}
!201 = !{ptr @maybe_skip_until, ptr @bitmap_bit_p, i64 1103540}
!202 = !{ptr @maybe_skip_until, ptr @gimple_nop_p, i64 1525868}
!203 = !{ptr @maybe_skip_until, ptr @stmt_may_clobber_ref_p_1, i64 1525866}
!204 = !{ptr @maybe_skip_until, ptr @gimple_vuse, i64 932172}
!205 = !{ptr @maybe_skip_until, ptr @get_continuation_for_phi, i64 915315}
!206 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 6296316}
!207 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!208 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 6296316}
!209 = !{ptr @walk_non_aliased_vuses, ptr @timevar_push_1, i64 1}
!210 = !{ptr @walk_non_aliased_vuses, ptr @gimple_nop_p, i64 2087421}
!211 = !{ptr @walk_non_aliased_vuses, ptr @gimple_code, i64 1994944}
!212 = !{ptr @walk_non_aliased_vuses, ptr @get_continuation_for_phi, i64 677658}
!213 = !{ptr @walk_non_aliased_vuses, ptr @stmt_may_clobber_ref_p_1, i64 1317286}
!214 = !{ptr @walk_non_aliased_vuses, ptr @gimple_vuse, i64 919117}
!215 = !{ptr @walk_non_aliased_vuses, ptr @bitmap_obstack_free, i64 444674}
!216 = !{ptr @walk_non_aliased_vuses, ptr @timevar_pop_1, i64 1}
!217 = !{ptr @walk_aliased_vdefs, ptr @timevar_push_1, i64 1}
!218 = !{ptr @walk_aliased_vdefs, ptr @walk_aliased_vdefs_1, i64 1888255}
!219 = !{ptr @walk_aliased_vdefs, ptr @bitmap_obstack_free, i64 49241}
!220 = !{ptr @walk_aliased_vdefs, ptr @timevar_pop_1, i64 1}
!221 = !{ptr @walk_aliased_vdefs_1, ptr @bitmap_set_bit, i64 12112719}
!222 = !{ptr @walk_aliased_vdefs_1, ptr @gimple_nop_p, i64 6780143}
!223 = !{ptr @walk_aliased_vdefs_1, ptr @gimple_code, i64 6677968}
!224 = !{ptr @walk_aliased_vdefs_1, ptr @bitmap_obstack_alloc_stat, i64 49241}
!225 = !{ptr @walk_aliased_vdefs_1, ptr @gimple_phi_num_args, i64 7828611}
!226 = !{ptr @walk_aliased_vdefs_1, ptr @gimple_phi_arg_def, i64 5776865}
!227 = !{ptr @walk_aliased_vdefs_1, ptr @walk_aliased_vdefs_1, i64 5776865}
!228 = !{ptr @walk_aliased_vdefs_1, ptr @stmt_may_clobber_ref_p_1, i64 3847206}
!229 = !{ptr @walk_aliased_vdefs_1, ptr @gimple_vuse, i64 4597861}
!230 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 5776868}
!231 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 5776868}
!232 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!233 = !{!"function_entry_count", i64 0}
!234 = !{!235, !236, i64 8}
!235 = !{!"", !236, i64 0, !236, i64 8, !236, i64 16, !236, i64 24, !236, i64 32, !236, i64 40}
!236 = !{!"long", !237, i64 0}
!237 = !{!"omnipotent char", !238, i64 0}
!238 = !{!"Simple C/C++ TBAA"}
!239 = !{!235, !236, i64 0}
!240 = !{!235, !236, i64 24}
!241 = !{!235, !236, i64 16}
!242 = !{!"function_entry_count", i64 763682}
!243 = !{!"branch_weights", i32 763646, i32 38}
!244 = !{!237, !237, i64 0}
!245 = !{!"branch_weights", i32 6660, i32 756987}
!246 = !{!247, !248, i64 176}
!247 = !{!"lang_hooks", !248, i64 0, !236, i64 8, !248, i64 16, !248, i64 24, !248, i64 32, !248, i64 40, !248, i64 48, !248, i64 56, !248, i64 64, !248, i64 72, !248, i64 80, !248, i64 88, !248, i64 96, !248, i64 104, !248, i64 112, !248, i64 120, !248, i64 128, !248, i64 136, !248, i64 144, !248, i64 152, !248, i64 160, !248, i64 168, !248, i64 176, !248, i64 184, !248, i64 192, !248, i64 200, !248, i64 208, !248, i64 216, !248, i64 224, !248, i64 232, !249, i64 240, !250, i64 248, !251, i64 256, !252, i64 272, !253, i64 432, !254, i64 560, !248, i64 584, !248, i64 592, !248, i64 600, !248, i64 608, !248, i64 616, !248, i64 624, !248, i64 632, !248, i64 640, !248, i64 648, !248, i64 656, !248, i64 664, !237, i64 672}
!248 = !{!"any pointer", !237, i64 0}
!249 = !{!"lang_hooks_for_tree_inlining", !248, i64 0}
!250 = !{!"lang_hooks_for_callgraph", !248, i64 0}
!251 = !{!"lang_hooks_for_tree_dump", !248, i64 0, !248, i64 8}
!252 = !{!"lang_hooks_for_decls", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !248, i64 32, !248, i64 40, !248, i64 48, !248, i64 56, !248, i64 64, !248, i64 72, !248, i64 80, !248, i64 88, !248, i64 96, !248, i64 104, !248, i64 112, !248, i64 120, !248, i64 128, !248, i64 136, !248, i64 144, !248, i64 152}
!253 = !{!"lang_hooks_for_types", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !248, i64 32, !248, i64 40, !248, i64 48, !248, i64 56, !248, i64 64, !248, i64 72, !248, i64 80, !248, i64 88, !248, i64 96, !248, i64 104, !248, i64 112, !237, i64 120}
!254 = !{!"lang_hooks_for_lto", !248, i64 0, !248, i64 8, !248, i64 16}
!255 = !{!248, !248, i64 0}
!256 = !{i8 0, i8 2}
!257 = distinct !{!257, !258}
!258 = !{!"llvm.loop.mustprogress"}
!259 = !{!260, !248, i64 24}
!260 = !{!"function", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !248, i64 32, !248, i64 40, !248, i64 48, !248, i64 56, !248, i64 64, !248, i64 72, !248, i64 80, !248, i64 88, !248, i64 96, !261, i64 104, !261, i64 108, !261, i64 112, !261, i64 116, !261, i64 120, !261, i64 124, !248, i64 128, !261, i64 136, !261, i64 137, !261, i64 138, !261, i64 138, !261, i64 138, !261, i64 138, !261, i64 138, !261, i64 138, !261, i64 138, !261, i64 139, !261, i64 139, !261, i64 139, !261, i64 139, !261, i64 139, !261, i64 139, !261, i64 139}
!261 = !{!"int", !237, i64 0}
!262 = !{!263, !248, i64 16}
!263 = !{!"gimple_df", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !264, i64 32, !264, i64 48, !248, i64 64, !248, i64 72, !248, i64 80, !248, i64 88, !261, i64 96, !265, i64 104}
!264 = !{!"pt_solution", !261, i64 0, !261, i64 0, !261, i64 0, !261, i64 0, !261, i64 0, !261, i64 0, !248, i64 8}
!265 = !{!"ssa_operands", !248, i64 0, !261, i64 8, !261, i64 12, !237, i64 16, !248, i64 24, !248, i64 32}
!266 = distinct !{!266, !258}
!267 = !{!"tree-ssa-alias.c:first_referenced_var"}
!268 = !{!"tree-ssa-alias.c:end_referenced_vars_p"}
!269 = !{!"function_entry_count", i64 15112912}
!270 = !{!"tree-ssa-alias.c:may_be_aliased"}
!271 = !{!"branch_weights", i32 1, i32 15112913}
!272 = !{!"branch_weights", i32 89351478, i32 -1213824233}
!273 = !{!"branch_weights", i32 425916, i32 1}
!274 = !{!"branch_weights", i32 13575668, i32 1111331}
!275 = !{!"branch_weights", i32 1111331, i32 1}
!276 = !{!"branch_weights", i32 225699119, i32 1921784529}
!277 = !{!"branch_weights", i32 1852708, i32 1}
!278 = !{!"tree-ssa-alias.c:next_referenced_var"}
!279 = !{!264, !248, i64 8}
!280 = !{!"tree-ssa-alias.c:VEC_tree_base_length"}
!281 = !{!282, !261, i64 0}
!282 = !{!"VEC_tree_base", !261, i64 0, !261, i64 4, !237, i64 8}
!283 = !{!"tree-ssa-alias.c:VEC_tree_base_index"}
!284 = !{!261, !261, i64 0}
!285 = !{!"tree-ssa-alias.c:first_htab_element"}
!286 = !{!287, !248, i64 0}
!287 = !{!"", !248, i64 0, !248, i64 8, !248, i64 16}
!288 = !{!289, !248, i64 24}
!289 = !{!"htab", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !236, i64 32, !236, i64 40, !236, i64 48, !261, i64 56, !261, i64 60, !248, i64 64, !248, i64 72, !248, i64 80, !248, i64 88, !248, i64 96, !261, i64 104}
!290 = !{!287, !248, i64 8}
!291 = !{!287, !248, i64 16}
!292 = distinct !{!292, !258}
!293 = !{!"tree-ssa-alias.c:gimple_referenced_vars"}
!294 = !{!263, !248, i64 0}
!295 = !{!"tree-ssa-alias.c:end_htab_p"}
!296 = !{!"tree-ssa-alias.c:next_htab_element"}
!297 = !{!"function_entry_count", i64 763096}
!298 = !{!"branch_weights", i32 1, i32 1526194, i32 1}
!299 = !{!"branch_weights", i32 387917, i32 375181}
!300 = !{!"function_entry_count", i64 37534870}
!301 = !{!302, !248, i64 0}
!302 = !{!"ao_ref_s", !248, i64 0, !248, i64 8, !236, i64 16, !236, i64 24, !236, i64 32, !261, i64 40, !261, i64 44}
!303 = !{!"function_entry_count", i64 71953439}
!304 = !{!302, !248, i64 8}
!305 = !{!"branch_weights", i32 36811533, i32 35141908}
!306 = !{!"function_entry_count", i64 33296214}
!307 = !{!302, !261, i64 40}
!308 = !{!"branch_weights", i32 3624444, i32 29671772}
!309 = !{!"function_entry_count", i64 83239}
!310 = !{!"branch_weights", i32 10388, i32 72853}
!311 = !{!302, !236, i64 16}
!312 = !{!"branch_weights", i32 635, i32 82606}
!313 = !{!"branch_weights", i32 38699, i32 43908}
!314 = !{!"branch_weights", i32 43908, i32 1}
!315 = !{!302, !236, i64 24}
!316 = !{!302, !236, i64 32}
!317 = !{!302, !261, i64 44}
!318 = !{!"function_entry_count", i64 18739456}
!319 = !{!"branch_weights", i32 553984, i32 18185474}
!320 = !{!"branch_weights", i32 -194788963, i32 393489454, i32 3422844, i32 132303, i32 247}
!321 = !{!"branch_weights", i32 72660, i32 16507284}
!322 = !{!"branch_weights", i32 17991, i32 -1736225804, i32 36024, i32 36003, i32 60342364, i32 17991}
!323 = !{!"branch_weights", i32 11012, i32 18728446}
!324 = !{!"branch_weights", i32 -1694519160, i32 166106077, i32 867137, i32 155605, i32 147}
!325 = !{!"branch_weights", i32 337457, i32 17260017}
!326 = !{!"branch_weights", i32 4213, i32 -1672250650, i32 8426, i32 8426, i32 221234094, i32 4213}
!327 = !{!"branch_weights", i32 18739457, i32 2, i32 18739457}
!328 = !{!"branch_weights", i32 18739315, i32 143}
!329 = !{!"branch_weights", i32 18739315, i32 1}
!330 = !{!"branch_weights", i32 1, i32 18739315}
!331 = !{!"branch_weights", i32 -1236978534, i32 658226133, i32 2989087, i32 149255, i32 198}
!332 = !{!"branch_weights", i32 782235347, i32 -1895884564, i32 1118237, i32 284314, i32 169}
!333 = !{!"branch_weights", i32 218096054, i32 1929387594}
!334 = !{!"branch_weights", i32 2147384137, i32 99511}
!335 = !{!"branch_weights", i32 1808168034, i32 339315614}
!336 = !{!"branch_weights", i32 12703773, i32 1865528}
!337 = !{!"branch_weights", i32 1865133, i32 396}
!338 = !{!"branch_weights", i32 1, i32 961040}
!339 = !{i32 0, i32 65536}
!340 = !{!"branch_weights", i32 45129, i32 1389453}
!341 = !{!"branch_weights", i32 485585, i32 903869}
!342 = !{!"branch_weights", i32 530922, i32 1864700}
!343 = !{!"branch_weights", i32 1014, i32 -2120749056, i32 441353}
!344 = !{!"branch_weights", i32 106929, i32 174000392, i32 327}
!345 = !{!"branch_weights", i32 4879681, i32 6856704, i32 108288, i32 106032, i32 103823}
!346 = !{!"branch_weights", i32 961040, i32 473541}
!347 = !{!236, !236, i64 0}
!348 = !{!"branch_weights", i32 125, i32 3844}
!349 = !{!"branch_weights", i32 -65848950, i32 166580415}
!350 = !{!"branch_weights", i32 1287880, i32 15360229}
!351 = !{!"branch_weights", i32 170482, i32 15845497}
!352 = !{!"branch_weights", i32 876, i32 15844622}
!353 = !{!"branch_weights", i32 85787, i32 15929317}
!354 = !{!"branch_weights", i32 10640, i32 15918678}
!355 = !{!"branch_weights", i32 -1450887563, i32 489970287}
!356 = !{!"branch_weights", i32 -1593826218, i32 2296}
!357 = !{!"function_entry_count", i64 38074613}
!358 = !{!"tree-ssa-alias.c:handled_component_p"}
!359 = !{!"branch_weights", i32 1455699, i32 32276, i32 34305073, i32 2281569, i32 1, i32 1, i32 1, i32 1}
!360 = !{!"function_entry_count", i64 1435458}
!361 = !{!"tree-ssa-alias.c:decl_refs_may_alias_p"}
!362 = !{!"branch_weights", i32 1426, i32 -197289836, i32 3966066, i32 1997324, i32 1426}
!363 = !{!"branch_weights", i32 873, i32 -1791151970, i32 3747011, i32 1924189, i32 873}
!364 = !{!"branch_weights", i32 1193868, i32 241592}
!365 = !{!"function_entry_count", i64 14569299}
!366 = !{!"tree-ssa-alias.c:gimple_in_ssa_p"}
!367 = !{!"branch_weights", i32 1, i32 14569300}
!368 = !{!"function_entry_count", i64 6657221}
!369 = !{!"tree-ssa-alias.c:is_gimple_assign"}
!370 = !{i32 0, i32 256}
!371 = !{!"function_entry_count", i64 3827551}
!372 = !{!"tree-ssa-alias.c:gimple_assign_rhs_code"}
!373 = !{!"branch_weights", i32 2104392, i32 1723161}
!374 = !{!"function_entry_count", i64 2912448}
!375 = !{!"tree-ssa-alias.c:gimple_assign_rhs1"}
!376 = !{!"function_entry_count", i64 13652457}
!377 = !{!"tree-ssa-alias.c:indirect_ref_may_alias_decl_p"}
!378 = !{!"branch_weights", i32 77049, i32 13575410}
!379 = !{!"branch_weights", i32 857580, i32 12717831}
!380 = !{!"branch_weights", i32 591652, i32 12203228}
!381 = !{!"branch_weights", i32 -2036508912, i32 13862141}
!382 = !{!"branch_weights", i32 554011, i32 2146929637}
!383 = !{!"branch_weights", i32 12125656, i32 1}
!384 = !{i32 -1, i32 2}
!385 = !{!"branch_weights", i32 32512, i32 12093145}
!386 = !{!"branch_weights", i32 1446, i32 12091700}
!387 = !{!"branch_weights", i32 12084505, i32 7196}
!388 = !{!"branch_weights", i32 55593900, i32 16229762}
!389 = !{!"branch_weights", i32 2757, i32 3934}
!390 = !{!"branch_weights", i32 1287, i32 2648}
!391 = !{!"function_entry_count", i64 2352006}
!392 = !{!"tree-ssa-alias.c:indirect_refs_may_alias_p"}
!393 = !{!"branch_weights", i32 2046984, i32 305024}
!394 = !{!"branch_weights", i32 48029, i32 1998956}
!395 = !{!"branch_weights", i32 -1021901339, i32 629110885}
!396 = !{!"branch_weights", i32 -921469667, i32 30044898}
!397 = !{!"branch_weights", i32 65584193, i32 2081899455}
!398 = !{!"branch_weights", i32 506519, i32 1104613}
!399 = !{!"branch_weights", i32 287, i32 1104327}
!400 = !{!"branch_weights", i32 550712, i32 553616}
!401 = !{!"branch_weights", i32 -2110709308, i32 103876357}
!402 = !{!"branch_weights", i32 5965, i32 522794}
!403 = !{!"branch_weights", i32 12544, i32 510251}
!404 = !{!"function_entry_count", i64 14661754}
!405 = !{!"tree-ssa-alias.c:ranges_overlap_p"}
!406 = !{!"branch_weights", i32 340651, i32 14321105}
!407 = !{!"branch_weights", i32 -1403089726, i32 235199602}
!408 = !{!"branch_weights", i32 1077146, i32 340651}
!409 = !{!"branch_weights", i32 125117190, i32 -802264438}
!410 = !{!"function_entry_count", i64 88234513}
!411 = !{!"tree-ssa-alias.c:gimple_code"}
!412 = !{!"tree-ssa-alias.c:gimple_expr_code"}
!413 = !{!"branch_weights", i32 1, i32 15310208, i32 2, i32 1}
!414 = !{!"tree-ssa-alias.c:get_gimple_rhs_class"}
!415 = !{!"function_entry_count", i64 11793053}
!416 = !{!"tree-ssa-alias.c:gimple_op"}
!417 = !{!"branch_weights", i32 1, i32 11793054}
!418 = !{!"tree-ssa-alias.c:gimple_has_ops"}
!419 = !{!"tree-ssa-alias.c:gimple_ops"}
!420 = !{!"tree-ssa-alias.c:gimple_statement_structure"}
!421 = !{!"tree-ssa-alias.c:gss_for_code"}
!422 = !{!"function_entry_count", i64 12847294}
!423 = !{!"tree-ssa-alias.c:ptr_deref_may_alias_decl_p"}
!424 = !{!"branch_weights", i32 236, i32 -1118484487, i32 967, i32 9922}
!425 = !{!"branch_weights", i32 248, i32 -1090818561, i32 433588, i32 115191}
!426 = !{!"branch_weights", i32 610087, i32 12237209}
!427 = !{!"branch_weights", i32 4, i32 12237206}
!428 = !{!"branch_weights", i32 1, i32 4}
!429 = !{!"branch_weights", i32 61, i32 64}
!430 = !{!"branch_weights", i32 1, i32 32, i32 4, i32 2, i32 1}
!431 = !{!"branch_weights", i32 2, i32 12237205}
!432 = !{!"branch_weights", i32 5878, i32 12231328}
!433 = !{!"branch_weights", i32 12231328, i32 1}
!434 = !{!435, !248, i64 8}
!435 = !{!"ptr_info_def", !264, i64 0}
!436 = !{!"function_entry_count", i64 16574168}
!437 = !{!"tree-ssa-alias.c:same_type_for_tbaa"}
!438 = !{!"branch_weights", i32 1, i32 16574169}
!439 = !{!"branch_weights", i32 540434, i32 16033736}
!440 = !{!"branch_weights", i32 153469, i32 15880268}
!441 = !{!"branch_weights", i32 1484, i32 151986}
!442 = !{!"function_entry_count", i64 512897}
!443 = !{!"tree-ssa-alias.c:aliasing_component_refs_p"}
!444 = !{!"branch_weights", i32 1, i32 512493}
!445 = !{!"branch_weights", i32 836997, i32 512898}
!446 = !{!"branch_weights", i32 512493, i32 324908}
!447 = distinct !{!447, !258}
!448 = !{!"branch_weights", i32 -188176705, i32 360601, i32 2892817}
!449 = !{!"branch_weights", i32 1, i32 510541}
!450 = !{!"branch_weights", i32 972642, i32 512494}
!451 = !{!"branch_weights", i32 510541, i32 464053}
!452 = distinct !{!452, !258}
!453 = !{!"branch_weights", i32 -219533873, i32 12859933, i32 2738018}
!454 = !{!"function_entry_count", i64 2062605}
!455 = !{!"tree-ssa-alias.c:ptr_derefs_may_alias_p"}
!456 = !{!"branch_weights", i32 490, i32 1134406900, i32 21560, i32 4900}
!457 = !{!"branch_weights", i32 1296, i32 -1471307597, i32 1332, i32 46656}
!458 = !{!"branch_weights", i32 40, i32 2062567}
!459 = !{!"branch_weights", i32 1, i32 40}
!460 = !{!"branch_weights", i32 4921, i32 64000}
!461 = !{!"branch_weights", i32 1, i32 320, i32 4, i32 2, i32 1}
!462 = !{!"branch_weights", i32 1, i32 2062567}
!463 = !{!"branch_weights", i32 10, i32 2062558}
!464 = !{!"branch_weights", i32 1061474, i32 -141656272}
!465 = !{!"branch_weights", i32 -298190583, i32 83309953}
!466 = !{!"branch_weights", i32 2019623, i32 309}
!467 = !{!"branch_weights", i32 309, i32 1}
!468 = !{!"function_entry_count", i64 361761}
!469 = !{!"branch_weights", i32 169299, i32 192464}
!470 = !{!"function_entry_count", i64 27611}
!471 = !{!"function_entry_count", i64 46110}
!472 = !{!"function_entry_count", i64 332184}
!473 = !{!"branch_weights", i32 55049, i32 277137}
!474 = !{!"branch_weights", i32 1, i32 277137}
!475 = !{!"branch_weights", i32 189161, i32 87977}
!476 = !{!"branch_weights", i32 99652, i32 89510}
!477 = !{!"branch_weights", i32 1, i32 99652}
!478 = !{!"branch_weights", i32 69, i32 54981}
!479 = !{!"function_entry_count", i64 6758777}
!480 = !{!"tree-ssa-alias.c:is_gimple_call"}
!481 = !{!"function_entry_count", i64 54980}
!482 = !{!"tree-ssa-alias.c:ref_maybe_used_by_call_p"}
!483 = !{!"branch_weights", i32 4789, i32 50193}
!484 = !{!"tree-ssa-alias.c:ref_maybe_used_by_call_p_1"}
!485 = !{!"branch_weights", i32 -1274970927, i32 3023955}
!486 = !{!"branch_weights", i32 1, i32 54927}
!487 = !{!"branch_weights", i32 23745, i32 31183}
!488 = !{!"branch_weights", i32 5291, i32 18455}
!489 = !{!"branch_weights", i32 1676, i32 3616}
!490 = !{!"branch_weights", i32 1895, i32 51358}
!491 = !{!"branch_weights", i32 8145, i32 43214}
!492 = !{!"branch_weights", i32 4373, i32 19, i32 1, i32 1092, i32 9, i32 1, i32 1, i32 1, i32 7, i32 1, i32 1, i32 1625, i32 84, i32 1, i32 943, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!493 = !{!"branch_weights", i32 1100, i32 25}
!494 = !{!"branch_weights", i32 1856524590, i32 290959058}
!495 = !{!"branch_weights", i32 3200, i32 3250}
!496 = !{!"branch_weights", i32 3065, i32 186}
!497 = !{!"branch_weights", i32 48398, i32 898}
!498 = !{!"branch_weights", i32 278, i32 621}
!499 = !{!"branch_weights", i32 6, i32 273}
!500 = !{!"branch_weights", i32 49870, i32 512}
!501 = !{!"branch_weights", i32 614, i32 1}
!502 = !{!"branch_weights", i32 1, i32 614}
!503 = !{!"branch_weights", i32 8, i32 607}
!504 = !{!"branch_weights", i32 7, i32 2}
!505 = !{!"branch_weights", i32 7, i32 1}
!506 = !{!"branch_weights", i32 20352, i32 28047}
!507 = !{!"branch_weights", i32 184, i32 20169}
!508 = !{!"branch_weights", i32 94168279, i32 185193}
!509 = !{!"branch_weights", i32 27991, i32 1}
!510 = !{!"branch_weights", i32 3, i32 27989}
!511 = !{!"branch_weights", i32 88, i32 27902}
!512 = !{!"branch_weights", i32 56, i32 33}
!513 = !{!"branch_weights", i32 1, i32 1933}
!514 = !{!"branch_weights", i32 1, i32 3392}
!515 = !{!"branch_weights", i32 1441, i32 1952}
!516 = !{!"branch_weights", i32 237, i32 1716}
!517 = !{!"branch_weights", i32 1459, i32 1933}
!518 = distinct !{!518, !258}
!519 = !{!"tree-ssa-alias.c:gimple_call_chain"}
!520 = !{!"function_entry_count", i64 2324503}
!521 = !{!"tree-ssa-alias.c:is_global_var"}
!522 = !{!"branch_weights", i32 142693, i32 2181812}
!523 = !{!"function_entry_count", i64 1933559}
!524 = !{!"tree-ssa-alias.c:gimple_call_fndecl"}
!525 = !{!"branch_weights", i32 1871339, i32 62222}
!526 = !{!"function_entry_count", i64 88563}
!527 = !{!"tree-ssa-alias.c:gimple_call_num_args"}
!528 = !{!"function_entry_count", i64 237234}
!529 = !{!"tree-ssa-alias.c:gimple_call_arg"}
!530 = !{!"function_entry_count", i64 277}
!531 = !{!"tree-ssa-alias.c:is_call_used"}
!532 = !{!"branch_weights", i32 32, i32 247}
!533 = !{!"branch_weights", i32 1, i32 32}
!534 = !{!"function_entry_count", i64 1118821}
!535 = !{!"tree-ssa-alias.c:is_call_clobbered"}
!536 = !{!"branch_weights", i32 36040, i32 1082783}
!537 = !{!"branch_weights", i32 1, i32 36040}
!538 = !{!"tree-ssa-alias.c:gimple_call_fn"}
!539 = !{!"tree-ssa-alias.c:gimple_num_ops"}
!540 = !{!"function_entry_count", i64 6703729}
!541 = !{!"branch_weights", i32 3929418, i32 2774313}
!542 = !{!"branch_weights", i32 1350765, i32 1423549}
!543 = !{!"branch_weights", i32 4712, i32 1418838}
!544 = !{!"branch_weights", i32 48898, i32 3880521}
!545 = !{!"function_entry_count", i64 2774312}
!546 = !{!"tree-ssa-alias.c:gimple_call_lhs"}
!547 = !{!"function_entry_count", i64 2773279}
!548 = !{!"tree-ssa-alias.c:call_may_clobber_ref_p_1"}
!549 = !{!"branch_weights", i32 2772537, i32 744}
!550 = !{!"branch_weights", i32 1, i32 2772537}
!551 = !{!"branch_weights", i32 767230572, i32 1353, i32 -1308797386}
!552 = !{!"branch_weights", i32 1991150, i32 214656}
!553 = !{!"branch_weights", i32 1200393, i32 790758}
!554 = !{!"branch_weights", i32 101472, i32 1098922}
!555 = !{!"branch_weights", i32 60328, i32 1819982}
!556 = !{!"branch_weights", i32 350132, i32 1469851}
!557 = !{!"branch_weights", i32 199616, i32 542, i32 56, i32 19532, i32 1679, i32 3, i32 1, i32 1, i32 70, i32 21, i32 60221, i32 1, i32 402, i32 1, i32 67958, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 43, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!558 = !{!"branch_weights", i32 81507, i32 611}
!559 = !{!"branch_weights", i32 1, i32 402}
!560 = !{!"branch_weights", i32 33, i32 370}
!561 = !{!"branch_weights", i32 330, i32 826}
!562 = !{!"branch_weights", i32 1801, i32 13824}
!563 = !{!"branch_weights", i32 -1813256121, i32 1665009531}
!564 = !{!"branch_weights", i32 363087, i32 636051}
!565 = !{!"branch_weights", i32 525643, i32 110409}
!566 = !{!"branch_weights", i32 1098194, i32 521192}
!567 = !{!"branch_weights", i32 2084771, i32 1}
!568 = !{!"branch_weights", i32 521122, i32 71}
!569 = !{!"branch_weights", i32 60803, i32 460320}
!570 = !{!"branch_weights", i32 6231, i32 454090}
!571 = !{!"function_entry_count", i64 3880520}
!572 = !{!"tree-ssa-alias.c:gimple_assign_lhs"}
!573 = !{!"function_entry_count", i64 67999}
!574 = !{!"tree-ssa-alias.c:ptr_deref_may_alias_ref_p_1"}
!575 = !{!"branch_weights", i32 8364, i32 1045457000, i32 66915, i32 66913, i32 -790146804, i32 33456, i32 16728, i32 8364}
!576 = !{!"function_entry_count", i64 214384}
!577 = !{!"function_entry_count", i64 1693420}
!578 = !{!"branch_weights", i32 1937346663, i32 4527563, i32 -640435712}
!579 = !{!"branch_weights", i32 387, i32 1105443}
!580 = !{!"branch_weights", i32 1082525, i32 22919}
!581 = !{!"branch_weights", i32 1059093, i32 23433}
!582 = !{!"branch_weights", i32 420220, i32 638874}
!583 = !{!"branch_weights", i32 477679, i32 184114}
!584 = !{!"branch_weights", i32 420220, i32 23433}
!585 = !{!"branch_weights", i32 84611, i32 335610}
!586 = !{!"branch_weights", i32 275905, i32 83138}
!587 = !{!"branch_weights", i32 18055, i32 66557}
!588 = !{!"branch_weights", i32 22593, i32 43965}
!589 = !{!"branch_weights", i32 15846, i32 6748}
!590 = !{!"branch_weights", i32 15197, i32 650}
!591 = !{!"function_entry_count", i64 9522034}
!592 = !{!"tree-ssa-alias.c:gimple_phi_num_args"}
!593 = !{!"function_entry_count", i64 7989893}
!594 = !{!"tree-ssa-alias.c:get_use_from_ptr"}
!595 = !{!596, !248, i64 24}
!596 = !{!"ssa_use_operand_d", !248, i64 0, !248, i64 8, !237, i64 16, !248, i64 24}
!597 = !{!"function_entry_count", i64 2213025}
!598 = !{!"tree-ssa-alias.c:gimple_phi_arg_imm_use_ptr"}
!599 = !{!"function_entry_count", i64 12604842}
!600 = !{!"tree-ssa-alias.c:gimple_nop_p"}
!601 = !{!"function_entry_count", i64 2958622}
!602 = !{!"tree-ssa-alias.c:gimple_bb"}
!603 = !{!"function_entry_count", i64 1020832}
!604 = !{!"tree-ssa-alias.c:maybe_skip_until"}
!605 = !{!"branch_weights", i32 641127, i32 379707}
!606 = !{!"branch_weights", i32 1, i32 165058}
!607 = !{!"branch_weights", i32 599142, i32 828435}
!608 = !{!"branch_weights", i32 496950, i32 102193}
!609 = !{!"branch_weights", i32 828435, i32 1}
!610 = !{!"branch_weights", i32 506103, i32 322333}
!611 = !{!"branch_weights", i32 165058, i32 1262518}
!612 = !{!"function_entry_count", i64 6296316}
!613 = !{!"tree-ssa-alias.c:gimple_vuse"}
!614 = !{!"branch_weights", i32 26620, i32 6269698}
!615 = !{!"tree-ssa-alias.c:gimple_phi_arg"}
!616 = !{!"branch_weights", i32 1, i32 7989894}
!617 = !{!"function_entry_count", i64 1619973}
!618 = !{!"tree-ssa-alias.c:get_def_from_ptr"}
!619 = !{!"tree-ssa-alias.c:gimple_phi_result_ptr"}
!620 = !{!"tree-ssa-alias.c:gimple_has_mem_ops"}
!621 = !{!"function_entry_count", i64 1711431}
!622 = !{!"branch_weights", i32 1711432, i32 1}
!623 = !{!"branch_weights", i32 2364648, i32 593476}
!624 = !{!"branch_weights", i32 2259890, i32 104759}
!625 = !{!"branch_weights", i32 767657, i32 1492234}
!626 = !{!"branch_weights", i32 1040064, i32 452171}
!627 = !{!"branch_weights", i32 1, i32 452171}
!628 = !{!"branch_weights", i32 1520510, i32 862692412, i32 2148630}
!629 = !{!"branch_weights", i32 937235029, i32 1210248619}
!630 = distinct !{!630, !258}
!631 = !{!"branch_weights", i32 1266758, i32 444675}
!632 = !{!"function_entry_count", i64 1888255}
!633 = !{!"branch_weights", i32 1888256, i32 1}
!634 = !{!"branch_weights", i32 71061, i32 1817196}
!635 = !{!"branch_weights", i32 1839016, i32 49241}
!636 = !{!"function_entry_count", i64 7665123}
!637 = !{!"tree-ssa-alias.c:walk_aliased_vdefs_1"}
!638 = !{!"branch_weights", i32 150265, i32 12112724}
!639 = !{!"branch_weights", i32 5482844, i32 6629881}
!640 = !{!"branch_weights", i32 6677971, i32 102175}
!641 = !{!"branch_weights", i32 2051747, i32 4626225}
!642 = !{!"branch_weights", i32 49241, i32 2002507}
!643 = !{!"branch_weights", i32 1, i32 2051746}
!644 = !{!"branch_weights", i32 3725123, i32 2051746}
!645 = distinct !{!645, !258}
!646 = !{!"branch_weights", i32 779017, i32 3847209}
!647 = !{!"branch_weights", i32 2927888, i32 919322}
!648 = !{!"branch_weights", i32 1669978, i32 28361}
!649 = !{!"function_entry_count", i64 5776868}
!650 = !{!"tree-ssa-alias.c:gimple_phi_arg_def"}
