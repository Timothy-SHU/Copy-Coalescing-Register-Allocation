; ModuleID = 'gimple-low.c'
source_filename = "gimple-low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.lower_data = type { ptr, ptr, i8, i8 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.return_statements_t = type { ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_try = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.VEC_return_statements_t_base = type { i32, i32, [1 x %struct.return_statements_t] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_catch = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_filter = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lower_function_body() #0 !prof !153 !PGOFuncName !154 {
  %1 = alloca %struct.lower_data, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #12
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %6 = tail call ptr @gimple_body(ptr noundef %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  %7 = tail call fastcc ptr @gimple_seq_first(ptr noundef %6) #14
  %8 = tail call fastcc ptr @gimple_seq_last(ptr noundef %6) #14
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %14, !prof !159

10:                                               ; preds = %0
  %11 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef %6) #14
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %11) #14, !range !160
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %15, label %14, !prof !159

14:                                               ; preds = %10, %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 109, ptr noundef nonnull @.str.2) #13
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds i8, ptr %1, i64 16
  store i64 0, ptr %16, align 8
  %17 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !161
  store ptr %19, ptr %1, align 8, !tbaa !162
  %20 = getelementptr inbounds %struct.tree_block, ptr %19, i64 0, i32 5
  store ptr null, ptr %20, align 8, !tbaa !161
  %21 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  store ptr null, ptr %21, align 8, !tbaa !161
  %22 = load i64, ptr %19, align 8
  %23 = or i64 %22, 4194304
  store i64 %23, ptr %19, align 8
  %24 = tail call fastcc ptr @VEC_return_statements_t_heap_alloc() #14
  %25 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !164
  %26 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef %6) #14
  store ptr null, ptr %2, align 8, !tbaa !155
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %26) #13
  %27 = load ptr, ptr %2, align 8, !tbaa !155
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %27) #14
  call fastcc void @lower_gimple_bind(ptr noundef nonnull %3, ptr noundef nonnull %1) #14
  %28 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %29 = load ptr, ptr %2, align 8, !tbaa !155
  call void @gimple_set_body(ptr noundef %28, ptr noundef %29) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  %30 = load ptr, ptr %2, align 8, !tbaa !155
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %30) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !165
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  %31 = load ptr, ptr %2, align 8, !tbaa !155
  %32 = call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %31) #14, !range !166
  %33 = icmp eq i8 %32, 0
  %34 = load ptr, ptr %25, align 8
  br i1 %33, label %52, label %35, !prof !159

35:                                               ; preds = %15
  %36 = call fastcc i32 @VEC_return_statements_t_base_length(ptr noundef %34) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = call fastcc ptr @VEC_return_statements_t_base_last(ptr noundef %34) #14
  %40 = getelementptr inbounds %struct.return_statements_t, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !167
  %42 = call fastcc ptr @gimple_return_retval(ptr noundef %41) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %38, %35
  %45 = call ptr @gimple_build_return(ptr noundef null) #13
  %46 = load ptr, ptr @cfun, align 8, !tbaa !155
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 16
  %48 = load i32, ptr %47, align 4, !tbaa !169
  call fastcc void @gimple_set_location(ptr noundef %45, i32 noundef %48) #14
  %49 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %50 = getelementptr inbounds %struct.tree_decl_common, ptr %49, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !161
  call fastcc void @gimple_set_block(ptr noundef %45, ptr noundef %51) #14
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %45, i32 noundef 2) #13
  br label %52

52:                                               ; preds = %44, %38, %15
  %53 = call fastcc i32 @VEC_return_statements_t_base_length(ptr noundef %34) #14
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %65, label %55, !prof !172

55:                                               ; preds = %52, %55
  %56 = phi i32 [ %63, %55 ], [ %53, %52 ]
  %57 = call fastcc ptr @VEC_return_statements_t_base_last(ptr noundef %34) #14
  %58 = load ptr, ptr %57, align 8, !tbaa.struct !173
  %59 = getelementptr inbounds i8, ptr %57, i64 8
  %60 = load ptr, ptr %59, align 8, !tbaa.struct !174
  %61 = add i32 %56, -1
  call fastcc void @VEC_return_statements_t_base_truncate(ptr noundef %34, i32 noundef %61) #14
  %62 = call ptr @gimple_build_label(ptr noundef %58) #13
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %62, i32 noundef 2) #13
  call fastcc void @gimple_set_location(ptr noundef %60, i32 noundef 0) #14
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %60, i32 noundef 2) #13
  %63 = call fastcc i32 @VEC_return_statements_t_base_length(ptr noundef %34) #14
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %55, !prof !175, !llvm.loop !176

65:                                               ; preds = %55, %52
  %66 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 3
  %67 = load i8, ptr %66, align 1, !tbaa !178
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %89, label %69, !prof !159

69:                                               ; preds = %65
  %70 = load ptr, ptr @cfun, align 8, !tbaa !155
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 16
  %72 = load i32, ptr %71, align 4, !tbaa !169
  %73 = call ptr @create_artificial_label(i32 noundef %72) #13
  %74 = getelementptr inbounds %struct.tree_decl_common, ptr %73, i64 0, i32 2
  %75 = load i64, ptr %74, align 8
  %76 = or i64 %75, 256
  store i64 %76, ptr %74, align 8
  %77 = load ptr, ptr @cfun, align 8, !tbaa !155
  %78 = getelementptr inbounds %struct.function, ptr %77, i64 0, i32 20
  %79 = load i32, ptr %78, align 8
  %80 = or i32 %79, 1048576
  store i32 %80, ptr %78, align 8
  %81 = call ptr @gimple_build_label(ptr noundef %73) #13
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %81, i32 noundef 2) #13
  %82 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !155
  %83 = call ptr @create_tmp_var(ptr noundef %82, ptr noundef nonnull @.str.3) #13
  %84 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %85 = call ptr @build_addr(ptr noundef %73, ptr noundef %84) #13
  %86 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 524), align 16, !tbaa !155
  %87 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %86, i32 noundef 1, ptr noundef %85) #13
  call fastcc void @gimple_call_set_lhs(ptr noundef %87, ptr noundef %83) #14
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %87, i32 noundef 2) #13
  %88 = call ptr @gimple_build_goto(ptr noundef %83) #13
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %88, i32 noundef 2) #13
  br label %89

89:                                               ; preds = %69, %65
  %90 = load ptr, ptr %1, align 8, !tbaa !162
  %91 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %92 = getelementptr inbounds %struct.tree_decl_common, ptr %91, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !161
  %94 = icmp eq ptr %90, %93
  br i1 %94, label %96, label %95, !prof !159

95:                                               ; preds = %89
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 196, ptr noundef nonnull @.str.2) #13
  br label %96

96:                                               ; preds = %89, %95
  %97 = getelementptr inbounds %struct.tree_block, ptr %90, i64 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !161
  %99 = call ptr @blocks_nreverse(ptr noundef %98) #13
  store ptr %99, ptr %97, align 8, !tbaa !161
  call void @clear_block_marks(ptr noundef %90) #13
  call fastcc void @VEC_return_statements_t_heap_free(ptr noundef nonnull %25) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #12
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @gimple_check_call_args(ptr noundef %0) local_unnamed_addr #0 !prof !179 {
  %2 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #14
  %3 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %23, !prof !180

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !161
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 10
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #14
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !161
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 12
  br i1 %18, label %19, label %87

19:                                               ; preds = %12, %5
  %20 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #14
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !161
  br label %51

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !161
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27, !prof !180

27:                                               ; preds = %23
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %89, label %29, !prof !181

29:                                               ; preds = %27, %44
  %30 = phi i32 [ %45, %44 ], [ 0, %27 ]
  %31 = phi ptr [ %47, %44 ], [ %25, %27 ]
  %32 = load ptr, ptr @global_trees, align 16, !tbaa !155
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %90, label %34, !prof !180

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %30) #14
  %36 = load ptr, ptr @global_trees, align 16, !tbaa !155
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %90, label %38, !prof !180

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !161
  %41 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %30) #14
  %42 = tail call zeroext i8 @fold_convertible_p(ptr noundef %40, ptr noundef %41) #13
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %90, label %44, !prof !180

44:                                               ; preds = %38
  %45 = add nuw i32 %30, 1
  %46 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !161
  %48 = icmp ult i32 %45, %2
  %49 = icmp ne ptr %47, null
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %29, label %89, !prof !182, !llvm.loop !183

51:                                               ; preds = %19, %23
  %52 = phi ptr [ %3, %23 ], [ %22, %19 ]
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !161
  %55 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !161
  %57 = icmp eq ptr %56, null
  br i1 %57, label %87, label %58

58:                                               ; preds = %51
  %59 = icmp eq i32 %2, 0
  br i1 %59, label %89, label %60

60:                                               ; preds = %58, %80
  %61 = phi i32 [ %81, %80 ], [ 0, %58 ]
  %62 = phi ptr [ %83, %80 ], [ %56, %58 ]
  %63 = getelementptr inbounds %struct.tree_list, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !161
  %65 = load ptr, ptr @global_trees, align 16, !tbaa !155
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %90, label %67

67:                                               ; preds = %60
  %68 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %61) #14
  %69 = load ptr, ptr @global_trees, align 16, !tbaa !155
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %90, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %63, align 8, !tbaa !161
  %73 = load i64, ptr %72, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 19
  br i1 %75, label %90, label %76

76:                                               ; preds = %71
  %77 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %61) #14
  %78 = tail call zeroext i8 @fold_convertible_p(ptr noundef nonnull %72, ptr noundef %77) #13
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %76
  %81 = add nuw i32 %61, 1
  %82 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !161
  %84 = icmp ult i32 %81, %2
  %85 = icmp ne ptr %83, null
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %60, label %89, !llvm.loop !184

87:                                               ; preds = %12, %51
  %88 = icmp eq i32 %2, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %44, %80, %27, %58, %87
  br label %90

90:                                               ; preds = %29, %34, %38, %60, %67, %71, %76, %87, %89
  %91 = phi i8 [ 1, %89 ], [ 0, %87 ], [ 0, %76 ], [ 0, %71 ], [ 0, %67 ], [ 0, %60 ], [ 0, %38 ], [ 0, %34 ], [ 0, %29 ]
  ret i8 %91
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !179 !PGOFuncName !185 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #14
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !186 !PGOFuncName !187 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #14
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !188

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !161
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !186 !PGOFuncName !189 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !190 !PGOFuncName !191 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #14
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @fold_convertible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @block_may_fallthru(ptr noundef %0) local_unnamed_addr #0 !prof !192 {
  %2 = tail call ptr @expr_last(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %51, label %4, !prof !193

4:                                                ; preds = %1, %20
  %5 = phi ptr [ %23, %20 ], [ %2, %1 ]
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %51 [
    i16 134, label %50
    i16 135, label %50
    i16 138, label %8
    i16 56, label %13
    i16 58, label %25
    i16 130, label %27
    i16 131, label %29
    i16 53, label %36
    i16 59, label %42
    i16 61, label %48
  ], !prof !194

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !161
  %11 = icmp eq ptr %10, null
  %12 = zext i1 %11 to i8
  br label %51

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !161
  %16 = tail call zeroext i8 @block_may_fallthru(ptr noundef %15) #14, !range !166
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %51, !prof !195

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  br label %20

20:                                               ; preds = %18, %25, %34, %48
  %21 = phi ptr [ %19, %18 ], [ %26, %25 ], [ %35, %34 ], [ %49, %48 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !161
  %23 = tail call ptr @expr_last(ptr noundef %22) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %51, label %4, !prof !196

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  br label %20

27:                                               ; preds = %4
  %28 = tail call fastcc zeroext i8 @try_catch_may_fallthru(ptr noundef nonnull %5) #14, !range !166
  br label %51

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !161
  %32 = tail call zeroext i8 @block_may_fallthru(ptr noundef %31) #14, !range !166
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  br label %20

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !161
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 59
  br i1 %41, label %42, label %51, !prof !197

42:                                               ; preds = %4, %36
  %43 = phi ptr [ %38, %36 ], [ %5, %4 ]
  %44 = tail call i32 @call_expr_flags(ptr noundef nonnull %43) #13
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i8
  br label %51

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  br label %20

50:                                               ; preds = %4, %4
  br label %51

51:                                               ; preds = %29, %13, %20, %4, %50, %1, %36, %42, %27, %8
  %52 = phi i8 [ %47, %42 ], [ %28, %27 ], [ %12, %8 ], [ 1, %36 ], [ 1, %1 ], [ 1, %4 ], [ 1, %20 ], [ 0, %29 ], [ 1, %13 ], [ 0, %50 ]
  ret i8 %52
}

; Function Attrs: optsize
declare ptr @expr_last(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @try_catch_may_fallthru(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !198 !PGOFuncName !199 {
  %2 = alloca %struct.tree_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = tail call zeroext i8 @block_may_fallthru(ptr noundef %4) #14, !range !166
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !161
  %10 = tail call fastcc { ptr, ptr } @tsi_start(ptr noundef %9) #14
  %11 = extractvalue { ptr, ptr } %10, 0
  %12 = extractvalue { ptr, ptr } %10, 1
  store ptr %11, ptr %2, align 8, !tbaa.struct !173
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %12, ptr %13, align 8, !tbaa.struct !174
  %14 = tail call fastcc ptr @tsi_stmt(ptr %11) #14
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %40 [
    i16 142, label %17
    i16 143, label %36
  ]

17:                                               ; preds = %7
  %18 = tail call fastcc zeroext i8 @tsi_end_p(ptr %11) #14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @tsi_stmt(ptr %11) #14
  %22 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !161
  %24 = tail call zeroext i8 @block_may_fallthru(ptr noundef %23) #14, !range !166
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %40

26:                                               ; preds = %32
  %27 = tail call fastcc ptr @tsi_stmt(ptr %33) #14
  %28 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !161
  %30 = tail call zeroext i8 @block_may_fallthru(ptr noundef %29) #14, !range !166
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %40, !llvm.loop !200

32:                                               ; preds = %20, %26
  call fastcc void @tsi_next(ptr noundef nonnull %2) #14
  %33 = load ptr, ptr %2, align 8
  %34 = tail call fastcc zeroext i8 @tsi_end_p(ptr %33) #14
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %26, label %40, !llvm.loop !200

36:                                               ; preds = %7
  %37 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !161
  %39 = tail call zeroext i8 @block_may_fallthru(ptr noundef %38) #14, !range !166
  br label %40

40:                                               ; preds = %32, %26, %20, %17, %7, %1, %36
  %41 = phi i8 [ %39, %36 ], [ 1, %1 ], [ 0, %7 ], [ 0, %17 ], [ 1, %20 ], [ 1, %26 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret i8 %41
}

; Function Attrs: optsize
declare i32 @call_expr_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gimple_stmt_may_fallthru(ptr noundef %0) local_unnamed_addr #0 !prof !201 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3, !prof !202

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %0) #14, !range !160
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %26 [
    i8 3, label %27
    i8 9, label %27
    i8 14, label %27
    i8 5, label %27
    i8 1, label %27
    i8 10, label %6
    i8 17, label %9
    i8 8, label %21
  ], !prof !203

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @gimple_bind_body(ptr noundef nonnull %0) #14
  %8 = tail call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %7) #14, !range !166
  br label %27

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @gimple_try_kind(ptr noundef nonnull %0) #14, !range !204
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @gimple_try_catch_may_fallthru(ptr noundef nonnull %0) #14, !range !166
  br label %27

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_try_eval(ptr noundef nonnull %0) #14
  %16 = tail call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %15) #14, !range !166
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef nonnull %0) #14
  %20 = tail call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %19) #14, !range !166
  br label %27

21:                                               ; preds = %3
  %22 = tail call i32 @gimple_call_flags(ptr noundef nonnull %0) #13
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i8
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %14, %18, %3, %3, %3, %3, %3, %1, %26, %21, %12, %6
  %28 = phi i8 [ 1, %26 ], [ %25, %21 ], [ %13, %12 ], [ %8, %6 ], [ 1, %1 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %14 ], [ %20, %18 ]
  ret i8 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !205 !PGOFuncName !206 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gimple_seq_may_fallthru(ptr noundef %0) local_unnamed_addr #0 !prof !201 {
  %2 = tail call fastcc ptr @gimple_seq_last_stmt(ptr noundef %0) #14
  %3 = tail call zeroext i8 @gimple_stmt_may_fallthru(ptr noundef %2) #14, !range !166
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_body(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !207 !PGOFuncName !208 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_try_kind(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !198 !PGOFuncName !209 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 3
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_try_catch_may_fallthru(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !198 !PGOFuncName !210 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  %3 = tail call fastcc i32 @gimple_try_kind(ptr noundef %0) #14, !range !204
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 560, ptr noundef nonnull @.str.2) #13
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call fastcc ptr @gimple_try_eval(ptr noundef %0) #14
  %8 = tail call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %7) #14, !range !166
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %0) #14
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %11) #14
  %12 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  %13 = tail call fastcc i32 @gimple_code(ptr noundef %12) #14, !range !160
  %14 = trunc i32 %13 to i8
  switch i8 %14, label %29 [
    i8 11, label %15
    i8 12, label %26
  ]

15:                                               ; preds = %10
  %16 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !166
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15, %23
  %19 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  %20 = tail call fastcc ptr @gimple_catch_handler(ptr noundef %19) #14
  %21 = tail call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %20) #14, !range !166
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  call fastcc void @gsi_next(ptr noundef nonnull %2) #14
  %24 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !166
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %18, label %29, !llvm.loop !211

26:                                               ; preds = %10
  %27 = tail call fastcc ptr @gimple_eh_filter_failure(ptr noundef %12) #14
  %28 = tail call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %27) #14, !range !166
  br label %29

29:                                               ; preds = %18, %23, %15, %10, %6, %26
  %30 = phi i8 [ %28, %26 ], [ 1, %6 ], [ 0, %10 ], [ 0, %15 ], [ 1, %18 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  ret i8 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_eval(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !198 !PGOFuncName !212 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !198 !PGOFuncName !213 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_last_stmt(ptr noundef readonly %0) unnamed_addr #4 !prof !201 !PGOFuncName !214 {
  %2 = tail call fastcc ptr @gimple_seq_last(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !202

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !215
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @record_vars_into(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !217 {
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %8, label %5, !prof !218

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  tail call void @push_cfun(ptr noundef %7) #13
  br label %8

8:                                                ; preds = %5, %2
  %9 = icmp eq ptr %0, null
  br i1 %9, label %31, label %10, !prof !219

10:                                               ; preds = %8, %27
  %11 = phi ptr [ %29, %27 ], [ %0, %8 ]
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 32
  br i1 %14, label %15, label %27, !prof !220

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 33554432
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27, !prof !220

20:                                               ; preds = %15
  %21 = load ptr, ptr @cfun, align 8, !tbaa !155
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !221
  %24 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %11, ptr noundef %23) #13
  %25 = load ptr, ptr @cfun, align 8, !tbaa !155
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 9
  store ptr %24, ptr %26, align 8, !tbaa !221
  br label %27

27:                                               ; preds = %15, %10, %20
  %28 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !161
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %10, !prof !222, !llvm.loop !223

31:                                               ; preds = %27, %8
  %32 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %33 = icmp eq ptr %32, %1
  br i1 %33, label %35, label %34, !prof !218

34:                                               ; preds = %31
  tail call void @pop_cfun() #13
  br label %35

35:                                               ; preds = %34, %31
  ret void
}

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @record_vars(ptr noundef %0) local_unnamed_addr #0 !prof !217 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  tail call void @record_vars_into(ptr noundef %0, ptr noundef %2) #14
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_body(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #2 !prof !224 !PGOFuncName !225 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !226

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !227
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #2 !prof !229 !PGOFuncName !230 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !231

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !232
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_first_stmt(ptr noundef readonly %0) unnamed_addr #4 !prof !207 !PGOFuncName !233 {
  %2 = tail call fastcc ptr @gimple_seq_first(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !234

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !215
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_return_statements_t_heap_alloc() unnamed_addr #0 !prof !153 !PGOFuncName !235 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 8, i64 noundef 8, i64 noundef 16) #13
  ret ptr %1
}

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !207 !PGOFuncName !236 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !237
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !239
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !234

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !215
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !234

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #14
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !240
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_gimple_bind(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !153 !PGOFuncName !241 {
  %3 = load ptr, ptr %1, align 8, !tbaa !162
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %5 = tail call fastcc ptr @gimple_bind_block(ptr noundef %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7, !prof !242

7:                                                ; preds = %2
  %8 = icmp eq ptr %5, %3
  br i1 %8, label %9, label %15, !prof !159

9:                                                ; preds = %7
  %10 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !161
  %13 = icmp eq ptr %3, %12
  br i1 %13, label %29, label %14, !prof !159

14:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 465, ptr noundef nonnull @.str.2) #13
  br label %29

15:                                               ; preds = %7
  %16 = load i64, ptr %5, align 8
  %17 = and i64 %16, 4194304
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 471, ptr noundef nonnull @.str.2) #13
  %20 = load i64, ptr %5, align 8
  br label %21

21:                                               ; preds = %15, %19
  %22 = phi i64 [ %16, %15 ], [ %20, %19 ]
  %23 = or i64 %22, 4194304
  store i64 %23, ptr %5, align 8
  %24 = getelementptr inbounds %struct.tree_block, ptr %3, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !161
  %26 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !161
  store ptr %5, ptr %24, align 8, !tbaa !161
  %27 = getelementptr inbounds %struct.tree_block, ptr %5, i64 0, i32 5
  store ptr null, ptr %27, align 8, !tbaa !161
  %28 = getelementptr inbounds %struct.tree_block, ptr %5, i64 0, i32 6
  store ptr %3, ptr %28, align 8, !tbaa !161
  store ptr %5, ptr %1, align 8, !tbaa !162
  br label %29

29:                                               ; preds = %14, %9, %21, %2
  %30 = phi ptr [ %5, %21 ], [ null, %2 ], [ null, %9 ], [ null, %14 ]
  %31 = tail call fastcc ptr @gimple_bind_vars(ptr noundef %4) #14
  tail call void @record_vars(ptr noundef %31) #14
  %32 = tail call fastcc ptr @gimple_bind_body(ptr noundef %4) #14
  tail call fastcc void @lower_sequence(ptr noundef %32, ptr noundef nonnull %1) #14
  %33 = icmp eq ptr %30, null
  br i1 %33, label %42, label %34, !prof !159

34:                                               ; preds = %29
  %35 = load ptr, ptr %1, align 8, !tbaa !162
  %36 = icmp eq ptr %35, %30
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 491, ptr noundef nonnull @.str.2) #13
  br label %38

38:                                               ; preds = %34, %37
  %39 = getelementptr inbounds %struct.tree_block, ptr %30, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !161
  %41 = tail call ptr @blocks_nreverse(ptr noundef %40) #13
  store ptr %41, ptr %39, align 8, !tbaa !161
  store ptr %3, ptr %1, align 8, !tbaa !162
  br label %42

42:                                               ; preds = %38, %29
  %43 = tail call fastcc ptr @gimple_bind_body(ptr noundef %4) #14
  tail call void @gsi_insert_seq_before(ptr noundef %0, ptr noundef %43, i32 noundef 1) #13
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 0) #13
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_body(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !153 !PGOFuncName !243 {
  %3 = tail call fastcc ptr @gimple_seq_last(ptr noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !237
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !239
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !242

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !215
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !242

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #14
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !240
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_return_statements_t_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !244 !PGOFuncName !245 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !246

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !247
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 !prof !249 !PGOFuncName !250 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #14
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @VEC_return_statements_t_base_last(ptr noundef readonly %0) unnamed_addr #2 !prof !153 !PGOFuncName !251 {
  %2 = load i32, ptr %0, align 8, !tbaa !247
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_return_statements_t_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @gimple_build_return(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #7 !prof !252 !PGOFuncName !253 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_block(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #7 !prof !254 !PGOFuncName !255 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !161
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_return_statements_t_base_truncate(ptr noundef writeonly %0, i32 noundef %1) unnamed_addr #7 !prof !153 !PGOFuncName !256 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4, !prof !242

4:                                                ; preds = %2
  store i32 %1, ptr %0, align 8, !tbaa !247
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !198 !PGOFuncName !257 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #14
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !161
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_goto(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @blocks_nreverse(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @clear_block_marks(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_return_statements_t_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !153 !PGOFuncName !258 {
  %2 = load ptr, ptr %0, align 8, !tbaa !155
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !242

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #14
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !155
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !259 !PGOFuncName !260 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !261 !PGOFuncName !262 {
  %2 = load ptr, ptr %0, align 8, !tbaa !237
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_block(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !153 !PGOFuncName !263 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_vars(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !153 !PGOFuncName !264 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_sequence(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !153 !PGOFuncName !265 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #14
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #14, !range !166
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !175

6:                                                ; preds = %2, %6
  call fastcc void @lower_stmt(ptr noundef nonnull %3, ptr noundef %1) #14
  %7 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #14, !range !166
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %6, label %9, !prof !266, !llvm.loop !267

9:                                                ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 !prof !268 !PGOFuncName !269 {
  %2 = load ptr, ptr %0, align 8, !tbaa !237
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_stmt(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !270 !PGOFuncName !271 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %4 = load ptr, ptr %1, align 8, !tbaa !162
  tail call fastcc void @gimple_set_block(ptr noundef %3, ptr noundef %4) #14
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %3) #14, !range !160
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %54 [
    i8 10, label %7
    i8 1, label %8
    i8 3, label %8
    i8 5, label %8
    i8 9, label %10
    i8 17, label %16
    i8 11, label %26
    i8 12, label %29
    i8 18, label %55
    i8 7, label %55
    i8 6, label %55
    i8 33, label %55
    i8 4, label %55
    i8 13, label %55
    i8 23, label %55
    i8 30, label %55
    i8 31, label %55
    i8 29, label %55
    i8 32, label %55
    i8 24, label %55
    i8 25, label %55
    i8 22, label %55
    i8 28, label %55
    i8 19, label %55
    i8 20, label %55
    i8 21, label %55
    i8 8, label %32
    i8 26, label %52
    i8 27, label %52
  ], !prof !272

7:                                                ; preds = %2
  tail call fastcc void @lower_gimple_bind(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %57

8:                                                ; preds = %2, %2, %2
  %9 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  store i8 1, ptr %9, align 8, !tbaa !273
  tail call fastcc void @gsi_next(ptr noundef %0) #14
  br label %57

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  %12 = load i8, ptr %11, align 8, !tbaa !273
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14, !prof !274

14:                                               ; preds = %10
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 0) #13
  br label %57

15:                                               ; preds = %10
  tail call fastcc void @lower_gimple_return(ptr noundef %0, ptr noundef nonnull %1) #14
  store i8 1, ptr %11, align 8, !tbaa !273
  br label %57

16:                                               ; preds = %2
  %17 = tail call fastcc ptr @gimple_try_eval(ptr noundef %3) #14
  tail call fastcc void @lower_sequence(ptr noundef %17, ptr noundef nonnull %1) #14
  %18 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  %19 = load i8, ptr %18, align 8, !tbaa !273
  store i8 0, ptr %18, align 8, !tbaa !273
  %20 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %3) #14
  tail call fastcc void @lower_sequence(ptr noundef %20, ptr noundef nonnull %1) #14
  %21 = tail call fastcc i32 @gimple_try_kind(ptr noundef %3) #14, !range !204
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %55

23:                                               ; preds = %16
  %24 = load i8, ptr %18, align 8, !tbaa !273
  %25 = or i8 %24, %19
  store i8 %25, ptr %18, align 8, !tbaa !273
  tail call fastcc void @gsi_next(ptr noundef %0) #14
  br label %57

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  store i8 0, ptr %27, align 8, !tbaa !273
  %28 = tail call fastcc ptr @gimple_catch_handler(ptr noundef %3) #14
  tail call fastcc void @lower_sequence(ptr noundef %28, ptr noundef nonnull %1) #14
  br label %55

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  store i8 0, ptr %30, align 8, !tbaa !273
  %31 = tail call fastcc ptr @gimple_eh_filter_failure(ptr noundef %3) #14
  tail call fastcc void @lower_sequence(ptr noundef %31, ptr noundef nonnull %1) #14
  br label %55

32:                                               ; preds = %2
  %33 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %3) #14
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35, !prof !275

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tree_function_decl, ptr %33, i64 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 6144
  %39 = icmp eq i32 %38, 6144
  br i1 %39, label %40, label %46, !prof !275

40:                                               ; preds = %35
  %41 = and i32 %37, 2047
  %42 = icmp eq i32 %41, 506
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  tail call fastcc void @lower_builtin_setjmp(ptr noundef %0) #14
  %44 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  store i8 0, ptr %44, align 8, !tbaa !273
  %45 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 3
  store i8 1, ptr %45, align 1, !tbaa !178
  br label %57

46:                                               ; preds = %35, %40
  %47 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %33) #13
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50, !prof !276

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  store i8 1, ptr %51, align 8, !tbaa !273
  tail call fastcc void @gsi_next(ptr noundef %0) #14
  br label %57

52:                                               ; preds = %2, %2
  %53 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  store i8 0, ptr %53, align 8, !tbaa !273
  tail call fastcc void @lower_omp_directive(ptr noundef %0, ptr noundef nonnull %1) #14
  store i8 0, ptr %53, align 8, !tbaa !273
  br label %57

54:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 442, ptr noundef nonnull @.str.2) #13
  br label %55

55:                                               ; preds = %16, %32, %46, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %54, %29, %26
  %56 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 2
  store i8 0, ptr %56, align 8, !tbaa !273
  tail call fastcc void @gsi_next(ptr noundef %0) #14
  br label %57

57:                                               ; preds = %23, %43, %50, %14, %15, %55, %52, %8, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !277 !PGOFuncName !278 {
  %2 = load ptr, ptr %0, align 8, !tbaa !237
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !279
  store ptr %4, ptr %0, align 8, !tbaa !237
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_gimple_return(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !280 !PGOFuncName !281 {
  %3 = alloca %struct.return_statements_t, align 8
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %5 = getelementptr inbounds %struct.lower_data, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !164
  %7 = tail call fastcc i32 @VEC_return_statements_t_base_length(ptr noundef %6) #14
  %8 = getelementptr inbounds %struct.return_statements_t, ptr %3, i64 0, i32 1
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi i32 [ %7, %2 ], [ %11, %13 ]
  %11 = add i32 %10, -1
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %20, !prof !282

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !164
  %15 = tail call fastcc ptr @VEC_return_statements_t_base_index(ptr noundef %14, i32 noundef %11) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !173
  %16 = tail call fastcc ptr @gimple_return_retval(ptr noundef %4) #14
  %17 = load ptr, ptr %8, align 8, !tbaa !167
  %18 = tail call fastcc ptr @gimple_return_retval(ptr noundef %17) #14
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %25, label %9, !prof !283, !llvm.loop !284

20:                                               ; preds = %9
  %21 = load ptr, ptr @cfun, align 8, !tbaa !155
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 16
  %23 = load i32, ptr %22, align 4, !tbaa !169
  %24 = tail call ptr @create_artificial_label(i32 noundef %23) #13
  store ptr %24, ptr %3, align 8, !tbaa !285
  store ptr %4, ptr %8, align 8, !tbaa !167
  call fastcc void @VEC_return_statements_t_heap_safe_push(ptr noundef nonnull %5, ptr noundef nonnull %3) #14
  br label %25

25:                                               ; preds = %13, %20
  %26 = load ptr, ptr %3, align 8, !tbaa !285
  %27 = call ptr @gimple_build_goto(ptr noundef %26) #13
  %28 = call fastcc i32 @gimple_location(ptr noundef %4) #14
  call fastcc void @gimple_set_location(ptr noundef %27, i32 noundef %28) #14
  %29 = call fastcc ptr @gimple_block(ptr noundef %4) #14
  call fastcc void @gimple_set_block(ptr noundef %27, ptr noundef %29) #14
  call void @gsi_insert_before(ptr noundef %0, ptr noundef %27, i32 noundef 1) #13
  call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_catch_handler(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !198 !PGOFuncName !286 {
  %2 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_filter_failure(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !198 !PGOFuncName !287 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_builtin_setjmp(ptr noundef %0) unnamed_addr #0 !prof !198 !PGOFuncName !288 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %2) #14
  %4 = tail call ptr @create_artificial_label(i32 noundef %3) #13
  %5 = tail call ptr @create_artificial_label(i32 noundef %3) #13
  %6 = load i64, ptr %5, align 8
  %7 = or i64 %6, 65536
  store i64 %7, ptr %5, align 8
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %2) #14
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %10 = tail call ptr @build_addr(ptr noundef nonnull %5, ptr noundef %9) #13
  %11 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 523), align 8, !tbaa !155
  %12 = tail call fastcc ptr @gimple_call_arg(ptr noundef %2, i32 noundef 0) #14
  %13 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %11, i32 noundef 2, ptr noundef %12, ptr noundef %10) #13
  tail call fastcc void @gimple_set_location(ptr noundef %13, i32 noundef %3) #14
  %14 = tail call fastcc ptr @gimple_block(ptr noundef %2) #14
  tail call fastcc void @gimple_set_block(ptr noundef %13, ptr noundef %14) #14
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %13, i32 noundef 1) #13
  %15 = icmp eq ptr %8, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !161
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !155
  %20 = tail call ptr @fold_convert_loc(i32 noundef %3, ptr noundef %18, ptr noundef %19) #13
  %21 = tail call ptr @gimple_build_assign_stat(ptr noundef nonnull %8, ptr noundef %20) #13
  tail call fastcc void @gimple_set_location(ptr noundef %21, i32 noundef %3) #14
  %22 = tail call fastcc ptr @gimple_block(ptr noundef %2) #14
  tail call fastcc void @gimple_set_block(ptr noundef %21, ptr noundef %22) #14
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %21, i32 noundef 1) #13
  br label %23

23:                                               ; preds = %16, %1
  %24 = tail call ptr @gimple_build_goto(ptr noundef %4) #13
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %24, i32 noundef 1) #13
  %25 = tail call ptr @gimple_build_label(ptr noundef nonnull %5) #13
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %25, i32 noundef 1) #13
  %26 = load ptr, ptr @current_function_decl, align 8, !tbaa !155
  %27 = tail call ptr @build_addr(ptr noundef nonnull %5, ptr noundef %26) #13
  %28 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 525), align 8, !tbaa !155
  %29 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %28, i32 noundef 1, ptr noundef %27) #13
  tail call fastcc void @gimple_set_location(ptr noundef %29, i32 noundef %3) #14
  %30 = tail call fastcc ptr @gimple_block(ptr noundef %2) #14
  tail call fastcc void @gimple_set_block(ptr noundef %29, ptr noundef %30) #14
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %29, i32 noundef 1) #13
  br i1 %15, label %38, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !161
  %34 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !155
  %35 = tail call ptr @fold_convert_loc(i32 noundef %3, ptr noundef %33, ptr noundef %34) #13
  %36 = tail call ptr @gimple_build_assign_stat(ptr noundef nonnull %8, ptr noundef %35) #13
  tail call fastcc void @gimple_set_location(ptr noundef %36, i32 noundef %3) #14
  %37 = tail call fastcc ptr @gimple_block(ptr noundef %2) #14
  tail call fastcc void @gimple_set_block(ptr noundef %36, ptr noundef %37) #14
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %36, i32 noundef 1) #13
  br label %38

38:                                               ; preds = %31, %23
  %39 = tail call ptr @gimple_build_label(ptr noundef %4) #13
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %39, i32 noundef 1) #13
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 0) #13
  ret void
}

; Function Attrs: optsize
declare i32 @flags_from_decl_or_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lower_omp_directive(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !198 !PGOFuncName !289 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %4 = tail call fastcc ptr @gimple_omp_body(ptr noundef %3) #14
  tail call fastcc void @lower_sequence(ptr noundef %4, ptr noundef %1) #14
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %3, i32 noundef 1) #13
  %5 = tail call fastcc ptr @gimple_omp_body(ptr noundef %3) #14
  tail call void @gsi_insert_seq_before(ptr noundef %0, ptr noundef %5, i32 noundef 1) #13
  tail call fastcc void @gimple_omp_set_body(ptr noundef %3) #14
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_return_statements_t_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #9 !prof !290 !PGOFuncName !291 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_return_statements_t_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_return_statements_t_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !153 !PGOFuncName !292 {
  tail call fastcc void @VEC_return_statements_t_heap_reserve(ptr noundef %0) #14
  %3 = load ptr, ptr %0, align 8, !tbaa !155
  tail call fastcc void @VEC_return_statements_t_base_quick_push(ptr noundef %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !280 !PGOFuncName !293 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !161
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !280 !PGOFuncName !294 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_return_statements_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !153 !PGOFuncName !295 {
  %2 = load ptr, ptr %0, align 8, !tbaa !155
  %3 = tail call fastcc i32 @VEC_return_statements_t_base_space(ptr noundef %2) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !242

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 16) #13
  store ptr %6, ptr %0, align 8, !tbaa !155
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_return_statements_t_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #10 !prof !153 !PGOFuncName !296 {
  %3 = load i32, ptr %0, align 8, !tbaa !247
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !247
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6, !prof !242

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_return_statements_t_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !173
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_return_statements_t_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !153 !PGOFuncName !297 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !242

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_return_statements_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !298
  %6 = load i32, ptr %0, align 8, !tbaa !247
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !198 !PGOFuncName !299 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #14
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !300 !PGOFuncName !301 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !166
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !302

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #14
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !300 !PGOFuncName !303 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !160
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !300 !PGOFuncName !304 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #14
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !305
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !302

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #13
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !300 !PGOFuncName !307 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !160
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #14
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 !prof !300 !PGOFuncName !308 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !309
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_body(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !198 !PGOFuncName !310 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_set_body(ptr nocapture noundef writeonly %0) unnamed_addr #7 !prof !198 !PGOFuncName !311 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !161
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !198 !PGOFuncName !312 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !166
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1665, ptr noundef nonnull @.str.2) #13
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #14
  store ptr %1, ptr %10, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !179 !PGOFuncName !313 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !161
  ret i32 %3
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_start(ptr noundef %0) unnamed_addr #2 !prof !198 !PGOFuncName !314 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @tsi_stmt(ptr nocapture readonly %0) unnamed_addr #2 !prof !198 !PGOFuncName !315 {
  %2 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !316
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @tsi_end_p(ptr readnone %0) unnamed_addr #9 !prof !198 !PGOFuncName !318 {
  %2 = icmp eq ptr %0, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @tsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !198 !PGOFuncName !319 {
  %2 = load ptr, ptr %0, align 8, !tbaa !320
  %3 = getelementptr inbounds %struct.tree_statement_list_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !322
  store ptr %4, ptr %0, align 8, !tbaa !320
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!152}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151}
!35 = !{ptr @lower_function_body, ptr @gimple_body, i64 40}
!36 = !{ptr @lower_function_body, ptr @gimple_seq_first, i64 40}
!37 = !{ptr @lower_function_body, ptr @gimple_seq_last, i64 40}
!38 = !{ptr @lower_function_body, ptr @gimple_seq_first_stmt, i64 79}
!39 = !{ptr @lower_function_body, ptr @gimple_code, i64 39}
!40 = !{ptr @lower_function_body, ptr @fancy_abort, i64 3}
!41 = !{ptr @lower_function_body, ptr @VEC_return_statements_t_heap_alloc, i64 40}
!42 = !{ptr @lower_function_body, ptr @gimple_seq_add_stmt, i64 40}
!43 = !{ptr @lower_function_body, ptr @gsi_start, i64 40}
!44 = !{ptr @lower_function_body, ptr @lower_gimple_bind, i64 40}
!45 = !{ptr @lower_function_body, ptr @gimple_set_body, i64 40}
!46 = !{ptr @lower_function_body, ptr @gsi_last, i64 40}
!47 = !{ptr @lower_function_body, ptr @gimple_seq_may_fallthru, i64 40}
!48 = !{ptr @lower_function_body, ptr @VEC_return_statements_t_base_length, i64 81}
!49 = !{ptr @lower_function_body, ptr @VEC_return_statements_t_base_last, i64 41}
!50 = !{ptr @lower_function_body, ptr @gimple_return_retval, i64 1}
!51 = !{ptr @lower_function_body, ptr @gimple_build_return, i64 1}
!52 = !{ptr @lower_function_body, ptr @gimple_set_location, i64 41}
!53 = !{ptr @lower_function_body, ptr @gimple_set_block, i64 1}
!54 = !{ptr @lower_function_body, ptr @gsi_insert_after, i64 84}
!55 = !{ptr @lower_function_body, ptr @VEC_return_statements_t_base_truncate, i64 40}
!56 = !{ptr @lower_function_body, ptr @gimple_build_label, i64 41}
!57 = !{ptr @lower_function_body, ptr @create_artificial_label, i64 1}
!58 = !{ptr @lower_function_body, ptr @create_tmp_var, i64 1}
!59 = !{ptr @lower_function_body, ptr @build_addr, i64 1}
!60 = !{ptr @lower_function_body, ptr @gimple_build_call, i64 1}
!61 = !{ptr @lower_function_body, ptr @gimple_call_set_lhs, i64 1}
!62 = !{ptr @lower_function_body, ptr @gimple_build_goto, i64 1}
!63 = !{ptr @lower_function_body, ptr @blocks_nreverse, i64 40}
!64 = !{ptr @lower_function_body, ptr @clear_block_marks, i64 40}
!65 = !{ptr @lower_function_body, ptr @VEC_return_statements_t_heap_free, i64 40}
!66 = !{ptr @gimple_check_call_args, ptr @gimple_call_num_args, i64 41}
!67 = !{ptr @gimple_check_call_args, ptr @gimple_call_fndecl, i64 41}
!68 = !{ptr @gimple_check_call_args, ptr @gimple_call_fn, i64 2}
!69 = !{ptr @gimple_check_call_args, ptr @gimple_call_arg, i64 80}
!70 = !{ptr @gimple_check_call_args, ptr @fold_convertible_p, i64 40}
!71 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 41}
!72 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 69285}
!73 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 69285}
!74 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 82}
!75 = !{ptr @block_may_fallthru, ptr @expr_last, i64 37942}
!76 = !{ptr @block_may_fallthru, ptr @block_may_fallthru, i64 3}
!77 = !{ptr @block_may_fallthru, ptr @call_expr_flags, i64 1}
!78 = !{ptr @gimple_stmt_may_fallthru, ptr @gimple_code, i64 2971}
!79 = !{ptr @gimple_stmt_may_fallthru, ptr @gimple_bind_body, i64 1}
!80 = !{ptr @gimple_stmt_may_fallthru, ptr @gimple_seq_may_fallthru, i64 1}
!81 = !{ptr @gimple_stmt_may_fallthru, ptr @gimple_try_kind, i64 1}
!82 = !{ptr @gimple_stmt_may_fallthru, ptr @gimple_call_flags, i64 1}
!83 = !{ptr @gimple_seq_may_fallthru, ptr @gimple_seq_last_stmt, i64 2972}
!84 = !{ptr @gimple_seq_may_fallthru, ptr @gimple_stmt_may_fallthru, i64 2972}
!85 = !{ptr @gimple_seq_last_stmt, ptr @gimple_seq_last, i64 2972}
!86 = !{ptr @record_vars_into, ptr @push_cfun, i64 1}
!87 = !{ptr @record_vars_into, ptr @tree_cons_stat, i64 112735}
!88 = !{ptr @record_vars_into, ptr @pop_cfun, i64 1}
!89 = !{ptr @record_vars, ptr @record_vars_into, i64 1624}
!90 = !{ptr @gimple_seq_first_stmt, ptr @gimple_seq_first, i64 80}
!91 = !{ptr @VEC_return_statements_t_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 40}
!92 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 80}
!93 = !{ptr @gsi_start, ptr @gimple_bb, i64 78}
!94 = !{ptr @lower_gimple_bind, ptr @gsi_stmt, i64 40}
!95 = !{ptr @lower_gimple_bind, ptr @gimple_bind_block, i64 40}
!96 = !{ptr @lower_gimple_bind, ptr @fancy_abort, i64 2}
!97 = !{ptr @lower_gimple_bind, ptr @gimple_bind_vars, i64 40}
!98 = !{ptr @lower_gimple_bind, ptr @record_vars, i64 40}
!99 = !{ptr @lower_gimple_bind, ptr @gimple_bind_body, i64 80}
!100 = !{ptr @lower_gimple_bind, ptr @lower_sequence, i64 40}
!101 = !{ptr @lower_gimple_bind, ptr @blocks_nreverse, i64 1}
!102 = !{ptr @lower_gimple_bind, ptr @gsi_insert_seq_before, i64 40}
!103 = !{ptr @lower_gimple_bind, ptr @gsi_remove, i64 40}
!104 = !{ptr @gsi_last, ptr @gimple_seq_last, i64 40}
!105 = !{ptr @gsi_last, ptr @gimple_bb, i64 38}
!106 = !{ptr @gimple_return_retval, ptr @gimple_op, i64 86936}
!107 = !{ptr @VEC_return_statements_t_heap_free, ptr @free, i64 39}
!108 = !{ptr @lower_sequence, ptr @gsi_start, i64 40}
!109 = !{ptr @lower_sequence, ptr @gsi_end_p, i64 639994}
!110 = !{ptr @lower_sequence, ptr @lower_stmt, i64 639954}
!111 = !{ptr @lower_stmt, ptr @gsi_stmt, i64 655951}
!112 = !{ptr @lower_stmt, ptr @gimple_set_block, i64 655951}
!113 = !{ptr @lower_stmt, ptr @gimple_code, i64 655951}
!114 = !{ptr @lower_stmt, ptr @lower_gimple_bind, i64 1}
!115 = !{ptr @lower_stmt, ptr @gsi_next, i64 612440}
!116 = !{ptr @lower_stmt, ptr @gsi_remove, i64 1}
!117 = !{ptr @lower_stmt, ptr @lower_gimple_return, i64 43506}
!118 = !{ptr @lower_stmt, ptr @gimple_try_eval, i64 1}
!119 = !{ptr @lower_stmt, ptr @lower_sequence, i64 4}
!120 = !{ptr @lower_stmt, ptr @gimple_try_cleanup, i64 1}
!121 = !{ptr @lower_stmt, ptr @gimple_try_kind, i64 1}
!122 = !{ptr @lower_stmt, ptr @gimple_catch_handler, i64 1}
!123 = !{ptr @lower_stmt, ptr @gimple_eh_filter_failure, i64 1}
!124 = !{ptr @lower_stmt, ptr @gimple_call_fndecl, i64 69242}
!125 = !{ptr @lower_stmt, ptr @flags_from_decl_or_type, i64 69240}
!126 = !{ptr @lower_stmt, ptr @lower_omp_directive, i64 2}
!127 = !{ptr @lower_stmt, ptr @fancy_abort, i64 1}
!128 = !{ptr @lower_gimple_return, ptr @gsi_stmt, i64 43508}
!129 = !{ptr @lower_gimple_return, ptr @VEC_return_statements_t_base_length, i64 43508}
!130 = !{ptr @lower_gimple_return, ptr @VEC_return_statements_t_base_index, i64 43468}
!131 = !{ptr @lower_gimple_return, ptr @gimple_return_retval, i64 86936}
!132 = !{ptr @lower_gimple_return, ptr @create_artificial_label, i64 41}
!133 = !{ptr @lower_gimple_return, ptr @VEC_return_statements_t_heap_safe_push, i64 41}
!134 = !{ptr @lower_gimple_return, ptr @gimple_build_goto, i64 43508}
!135 = !{ptr @lower_gimple_return, ptr @gimple_location, i64 43508}
!136 = !{ptr @lower_gimple_return, ptr @gimple_set_location, i64 43508}
!137 = !{ptr @lower_gimple_return, ptr @gimple_block, i64 43508}
!138 = !{ptr @lower_gimple_return, ptr @gimple_set_block, i64 43508}
!139 = !{ptr @lower_gimple_return, ptr @gsi_insert_before, i64 43508}
!140 = !{ptr @lower_gimple_return, ptr @gsi_remove, i64 43508}
!141 = !{ptr @VEC_return_statements_t_heap_safe_push, ptr @VEC_return_statements_t_heap_reserve, i64 40}
!142 = !{ptr @VEC_return_statements_t_heap_safe_push, ptr @VEC_return_statements_t_base_quick_push, i64 40}
!143 = !{ptr @VEC_return_statements_t_heap_reserve, ptr @VEC_return_statements_t_base_space, i64 40}
!144 = !{ptr @VEC_return_statements_t_heap_reserve, ptr @vec_heap_o_reserve, i64 1}
!145 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 156303}
!146 = !{ptr @gimple_op, ptr @gimple_ops, i64 156302}
!147 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 156303}
!148 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 156303}
!149 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!150 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 156303}
!151 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 156303}
!152 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!153 = !{!"function_entry_count", i64 40}
!154 = !{!"gimple-low.c:lower_function_body"}
!155 = !{!156, !156, i64 0}
!156 = !{!"any pointer", !157, i64 0}
!157 = !{!"omnipotent char", !158, i64 0}
!158 = !{!"Simple C/C++ TBAA"}
!159 = !{!"branch_weights", i32 41, i32 1}
!160 = !{i32 0, i32 256}
!161 = !{!157, !157, i64 0}
!162 = !{!163, !156, i64 0}
!163 = !{!"lower_data", !156, i64 0, !156, i64 8, !157, i64 16, !157, i64 17}
!164 = !{!163, !156, i64 8}
!165 = !{i64 0, i64 8, !155, i64 8, i64 8, !155, i64 16, i64 8, !155}
!166 = !{i8 0, i8 2}
!167 = !{!168, !156, i64 8}
!168 = !{!"return_statements_t", !156, i64 0, !156, i64 8}
!169 = !{!170, !171, i64 116}
!170 = !{!"function", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !156, i64 32, !156, i64 40, !156, i64 48, !156, i64 56, !156, i64 64, !156, i64 72, !156, i64 80, !156, i64 88, !156, i64 96, !171, i64 104, !171, i64 108, !171, i64 112, !171, i64 116, !171, i64 120, !171, i64 124, !156, i64 128, !171, i64 136, !171, i64 137, !171, i64 138, !171, i64 138, !171, i64 138, !171, i64 138, !171, i64 138, !171, i64 138, !171, i64 138, !171, i64 139, !171, i64 139, !171, i64 139, !171, i64 139, !171, i64 139, !171, i64 139, !171, i64 139}
!171 = !{!"int", !157, i64 0}
!172 = !{!"branch_weights", i32 1, i32 163}
!173 = !{i64 0, i64 8, !155, i64 8, i64 8, !155}
!174 = !{i64 0, i64 8, !155}
!175 = !{!"branch_weights", i32 163, i32 1}
!176 = distinct !{!176, !177}
!177 = !{!"llvm.loop.mustprogress"}
!178 = !{!163, !157, i64 17}
!179 = !{!"function_entry_count", i64 41}
!180 = !{!"branch_weights", i32 1, i32 42}
!181 = !{!"branch_weights", i32 84, i32 1764}
!182 = !{!"branch_weights", i32 0, i32 1764}
!183 = distinct !{!183, !177}
!184 = distinct !{!184, !177}
!185 = !{!"gimple-low.c:gimple_call_num_args"}
!186 = !{!"function_entry_count", i64 69285}
!187 = !{!"gimple-low.c:gimple_call_fndecl"}
!188 = !{!"branch_weights", i32 69286, i32 1}
!189 = !{!"gimple-low.c:gimple_call_fn"}
!190 = !{!"function_entry_count", i64 82}
!191 = !{!"gimple-low.c:gimple_call_arg"}
!192 = !{!"function_entry_count", i64 37937}
!193 = !{!"branch_weights", i32 1, i32 191}
!194 = !{!"branch_weights", i32 28344, i32 1070505973, i32 1070505973, i32 28385, i32 198694, i32 28385, i32 28385, i32 28385, i32 6074356, i32 28385, i32 28385}
!195 = !{!"branch_weights", i32 7, i32 1}
!196 = !{!"branch_weights", i32 191, i32 1213665}
!197 = !{!"branch_weights", i32 1, i32 214}
!198 = !{!"function_entry_count", i64 0}
!199 = !{!"gimple-low.c:try_catch_may_fallthru"}
!200 = distinct !{!200, !177}
!201 = !{!"function_entry_count", i64 2972}
!202 = !{!"branch_weights", i32 1, i32 2973}
!203 = !{!"branch_weights", i32 20, i32 41, i32 2914, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!204 = !{i32 0, i32 4}
!205 = !{!"function_entry_count", i64 1127872}
!206 = !{!"gimple-low.c:gimple_code"}
!207 = !{!"function_entry_count", i64 80}
!208 = !{!"gimple-low.c:gimple_bind_body"}
!209 = !{!"gimple-low.c:gimple_try_kind"}
!210 = !{!"gimple-low.c:gimple_try_catch_may_fallthru"}
!211 = distinct !{!211, !177}
!212 = !{!"gimple-low.c:gimple_try_eval"}
!213 = !{!"gimple-low.c:gimple_try_cleanup"}
!214 = !{!"gimple-low.c:gimple_seq_last_stmt"}
!215 = !{!216, !156, i64 0}
!216 = !{!"gimple_seq_node_d", !156, i64 0, !156, i64 8, !156, i64 16}
!217 = !{!"function_entry_count", i64 1624}
!218 = !{!"branch_weights", i32 1625, i32 1}
!219 = !{!"branch_weights", i32 1, i32 1624}
!220 = !{!"branch_weights", i32 112806, i32 1}
!221 = !{!170, !156, i64 72}
!222 = !{!"branch_weights", i32 1624, i32 111182}
!223 = distinct !{!223, !177}
!224 = !{!"function_entry_count", i64 200}
!225 = !{!"gimple-low.c:gimple_seq_first"}
!226 = !{!"branch_weights", i32 1, i32 201}
!227 = !{!228, !156, i64 0}
!228 = !{!"gimple_seq_d", !156, i64 0, !156, i64 8, !156, i64 16}
!229 = !{!"function_entry_count", i64 3052}
!230 = !{!"gimple-low.c:gimple_seq_last"}
!231 = !{!"branch_weights", i32 1, i32 3053}
!232 = !{!228, !156, i64 8}
!233 = !{!"gimple-low.c:gimple_seq_first_stmt"}
!234 = !{!"branch_weights", i32 1, i32 81}
!235 = !{!"gimple-low.c:VEC_return_statements_t_heap_alloc"}
!236 = !{!"gimple-low.c:gsi_start"}
!237 = !{!238, !156, i64 0}
!238 = !{!"", !156, i64 0, !156, i64 8, !156, i64 16}
!239 = !{!238, !156, i64 8}
!240 = !{!238, !156, i64 16}
!241 = !{!"gimple-low.c:lower_gimple_bind"}
!242 = !{!"branch_weights", i32 1, i32 41}
!243 = !{!"gimple-low.c:gsi_last"}
!244 = !{!"function_entry_count", i64 43628}
!245 = !{!"gimple-low.c:VEC_return_statements_t_base_length"}
!246 = !{!"branch_weights", i32 1, i32 43629}
!247 = !{!248, !171, i64 0}
!248 = !{!"VEC_return_statements_t_base", !171, i64 0, !171, i64 4, !157, i64 8}
!249 = !{!"function_entry_count", i64 86936}
!250 = !{!"gimple-low.c:gimple_return_retval"}
!251 = !{!"gimple-low.c:VEC_return_statements_t_base_last"}
!252 = !{!"function_entry_count", i64 43548}
!253 = !{!"gimple-low.c:gimple_set_location"}
!254 = !{!"function_entry_count", i64 699459}
!255 = !{!"gimple-low.c:gimple_set_block"}
!256 = !{!"gimple-low.c:VEC_return_statements_t_base_truncate"}
!257 = !{!"gimple-low.c:gimple_call_set_lhs"}
!258 = !{!"gimple-low.c:VEC_return_statements_t_heap_free"}
!259 = !{!"function_entry_count", i64 120}
!260 = !{!"gimple-low.c:gimple_bb"}
!261 = !{!"function_entry_count", i64 699499}
!262 = !{!"gimple-low.c:gsi_stmt"}
!263 = !{!"gimple-low.c:gimple_bind_block"}
!264 = !{!"gimple-low.c:gimple_bind_vars"}
!265 = !{!"gimple-low.c:lower_sequence"}
!266 = !{!"branch_weights", i32 2623645, i32 163}
!267 = distinct !{!267, !177}
!268 = !{!"function_entry_count", i64 655991}
!269 = !{!"gimple-low.c:gsi_end_p"}
!270 = !{!"function_entry_count", i64 655951}
!271 = !{!"gimple-low.c:lower_stmt"}
!272 = !{!"branch_weights", i32 1, i32 1, i32 143773, i32 226, i32 39, i32 43509, i32 1, i32 1, i32 1, i32 1, i32 1, i32 188600, i32 1, i32 210566, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 69245, i32 1, i32 1}
!273 = !{!163, !157, i64 16}
!274 = !{!"branch_weights", i32 43509, i32 1}
!275 = !{!"branch_weights", i32 1, i32 69245}
!276 = !{!"branch_weights", i32 69184, i32 62}
!277 = !{!"function_entry_count", i64 612443}
!278 = !{!"gimple-low.c:gsi_next"}
!279 = !{!216, !156, i64 16}
!280 = !{!"function_entry_count", i64 43508}
!281 = !{!"gimple-low.c:lower_gimple_return"}
!282 = !{!"branch_weights", i32 43469, i32 41}
!283 = !{!"branch_weights", i32 43469, i32 1}
!284 = distinct !{!284, !177}
!285 = !{!168, !156, i64 0}
!286 = !{!"gimple-low.c:gimple_catch_handler"}
!287 = !{!"gimple-low.c:gimple_eh_filter_failure"}
!288 = !{!"gimple-low.c:lower_builtin_setjmp"}
!289 = !{!"gimple-low.c:lower_omp_directive"}
!290 = !{!"function_entry_count", i64 43468}
!291 = !{!"gimple-low.c:VEC_return_statements_t_base_index"}
!292 = !{!"gimple-low.c:VEC_return_statements_t_heap_safe_push"}
!293 = !{!"gimple-low.c:gimple_location"}
!294 = !{!"gimple-low.c:gimple_block"}
!295 = !{!"gimple-low.c:VEC_return_statements_t_heap_reserve"}
!296 = !{!"gimple-low.c:VEC_return_statements_t_base_quick_push"}
!297 = !{!"gimple-low.c:VEC_return_statements_t_base_space"}
!298 = !{!248, !171, i64 4}
!299 = !{!"gimple-low.c:gimple_call_lhs"}
!300 = !{!"function_entry_count", i64 156303}
!301 = !{!"gimple-low.c:gimple_op"}
!302 = !{!"branch_weights", i32 1, i32 156304}
!303 = !{!"gimple-low.c:gimple_has_ops"}
!304 = !{!"gimple-low.c:gimple_ops"}
!305 = !{!306, !306, i64 0}
!306 = !{!"long", !157, i64 0}
!307 = !{!"gimple-low.c:gimple_statement_structure"}
!308 = !{!"gimple-low.c:gss_for_code"}
!309 = !{!171, !171, i64 0}
!310 = !{!"gimple-low.c:gimple_omp_body"}
!311 = !{!"gimple-low.c:gimple_omp_set_body"}
!312 = !{!"gimple-low.c:gimple_set_op"}
!313 = !{!"gimple-low.c:gimple_num_ops"}
!314 = !{!"gimple-low.c:tsi_start"}
!315 = !{!"gimple-low.c:tsi_stmt"}
!316 = !{!317, !156, i64 16}
!317 = !{!"tree_statement_list_node", !156, i64 0, !156, i64 8, !156, i64 16}
!318 = !{!"gimple-low.c:tsi_end_p"}
!319 = !{!"gimple-low.c:tsi_next"}
!320 = !{!321, !156, i64 0}
!321 = !{!"", !156, i64 0, !156, i64 8}
!322 = !{!317, !156, i64 8}
