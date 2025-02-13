; ModuleID = 'explow.c'
source_filename = "explow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.insn_data = type { ptr, %union.anon.0, ptr, ptr, i8, i8, i8, i8 }
%union.anon.0 = type { ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }

@mode_size = external local_unnamed_addr global [87 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [9 x i8] c"explow.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@cse_not_expected = external local_unnamed_addr global i32, align 4
@flag_section_anchors = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@ix86_tune_features = external local_unnamed_addr global [62 x i8], align 16
@current_function_decl = external local_unnamed_addr global ptr, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@optab_table = external global [159 x %struct.optab_d], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@ix86_preferred_stack_boundary = external local_unnamed_addr global i32, align 4
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@target_flags = external local_unnamed_addr global i32, align 4
@word_mode = external local_unnamed_addr global i32, align 4
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@stack_limit_rtx = external local_unnamed_addr global ptr, align 8
@flag_stack_check = external local_unnamed_addr global i32, align 4
@stack_check_libfunc = internal global ptr null, align 8
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@gt_ggc_r_gt_explow_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @stack_check_libfunc, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @trunc_int_for_mode(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !107 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !108
  %6 = zext i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3
  %9 = load i8, ptr %8, align 1, !tbaa !108
  %10 = and i8 %9, -2
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %13, label %12, !prof !111

12:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @.str.1) #8
  br label %13

13:                                               ; preds = %2, %12
  %14 = icmp eq i32 %1, 13
  br i1 %14, label %15, label %17, !prof !112

15:                                               ; preds = %13
  %16 = and i64 %0, 1
  br label %28

17:                                               ; preds = %13
  %18 = icmp ult i8 %5, 8
  br i1 %18, label %19, label %28, !prof !113

19:                                               ; preds = %17
  %20 = add nuw nsw i64 %7, 4294967295
  %21 = and i64 %20, 4294967295
  %22 = shl nuw i64 1, %21
  %23 = shl i64 2, %21
  %24 = add nsw i64 %23, -1
  %25 = and i64 %24, %0
  %26 = xor i64 %25, %22
  %27 = sub nsw i64 %26, %22
  br label %28

28:                                               ; preds = %17, %19, %15
  %29 = phi i64 [ %16, %15 ], [ %27, %19 ], [ %0, %17 ]
  ret i64 %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @plus_constant(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !114 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %124, label %8, !prof !115

8:                                                ; preds = %2, %57
  %9 = phi i32 [ 1, %57 ], [ 0, %2 ]
  %10 = phi i64 [ %13, %57 ], [ %1, %2 ]
  %11 = phi ptr [ %59, %57 ], [ %0, %2 ]
  br label %12

12:                                               ; preds = %8, %80
  %13 = phi i64 [ %81, %80 ], [ %10, %8 ]
  %14 = phi ptr [ %82, %80 ], [ %11, %8 ]
  %15 = load i32, ptr %14, align 8
  store ptr %14, ptr %3, align 8, !tbaa !116
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %103 [
    i16 30, label %17
    i16 32, label %22
    i16 43, label %32
    i16 35, label %57
    i16 45, label %60
    i16 44, label %60
    i16 49, label %63
  ], !prof !118

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !108
  %20 = add nsw i64 %19, %13
  %21 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %20) #8
  br label %124

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !108
  %25 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load i64, ptr %25, align 8, !tbaa !108
  %27 = ashr i64 %13, 63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %28 = call i32 @add_double_with_sign(i64 noundef %24, i64 noundef %26, i64 noundef %13, i64 noundef %27, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0) #8
  %29 = load i64, ptr %4, align 8, !tbaa !119
  %30 = load i64, ptr %5, align 8, !tbaa !119
  %31 = call ptr @immed_double_const(i64 noundef %29, i64 noundef %30, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %124

32:                                               ; preds = %12
  %33 = lshr i32 %15, 16
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !108
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 45
  br i1 %39, label %40, label %106, !prof !121

40:                                               ; preds = %32
  %41 = and i32 %37, 67108864
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %106, label %43, !prof !122

43:                                               ; preds = %40
  %44 = load i32, ptr %14, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = tail call ptr @get_pool_constant(ptr noundef nonnull %36) #8
  %48 = tail call ptr @plus_constant(ptr noundef %47, i64 noundef %13) #10
  %49 = tail call ptr @force_const_mem(i32 noundef %46, ptr noundef %48) #8
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !108
  %55 = tail call i32 @memory_address_addr_space_p(i32 noundef %52, ptr noundef %54, i8 noundef zeroext 0) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %106, label %124

57:                                               ; preds = %12
  %58 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !108
  br label %8

60:                                               ; preds = %12, %12
  %61 = lshr i32 %15, 16
  %62 = and i32 %61, 255
  br label %106

63:                                               ; preds = %12
  %64 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %65 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !108
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 30
  br i1 %69, label %70, label %83, !prof !123

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !108
  %73 = add nsw i64 %72, %13
  %74 = load i32, ptr %14, align 8
  %75 = lshr i32 %74, 16
  %76 = and i32 %75, 255
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78, !prof !124

78:                                               ; preds = %70
  %79 = tail call i64 @trunc_int_for_mode(i64 noundef %73, i32 noundef %76) #10
  br label %80

80:                                               ; preds = %78, %70
  %81 = phi i64 [ %79, %78 ], [ %73, %70 ]
  %82 = load ptr, ptr %64, align 8, !tbaa !108
  br label %12

83:                                               ; preds = %63
  %84 = lshr i32 %15, 16
  %85 = and i32 %84, 255
  %86 = zext nneg i32 %68 to i64
  %87 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !125
  %89 = icmp eq i32 %88, 9
  br i1 %89, label %90, label %94, !prof !127

90:                                               ; preds = %83
  %91 = load ptr, ptr %64, align 8, !tbaa !108
  %92 = tail call ptr @plus_constant(ptr noundef nonnull %66, i64 noundef %13) #10
  %93 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %85, ptr noundef %91, ptr noundef %92) #8
  br label %113

94:                                               ; preds = %83
  %95 = call ptr @find_constant_term_loc(ptr noundef nonnull %3) #8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %106, label %97, !prof !128

97:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %98 = call ptr @copy_rtx(ptr noundef nonnull %14) #8
  store ptr %98, ptr %6, align 8, !tbaa !116
  %99 = call ptr @find_constant_term_loc(ptr noundef nonnull %6) #8
  %100 = load ptr, ptr %99, align 8, !tbaa !116
  %101 = call ptr @plus_constant(ptr noundef %100, i64 noundef %13) #10
  store ptr %101, ptr %99, align 8, !tbaa !116
  %102 = load ptr, ptr %6, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %113

103:                                              ; preds = %12
  %104 = lshr i32 %15, 16
  %105 = and i32 %104, 255
  br label %106

106:                                              ; preds = %103, %94, %32, %40, %43, %60
  %107 = phi i32 [ %85, %94 ], [ %62, %60 ], [ %34, %43 ], [ %34, %40 ], [ %34, %32 ], [ %105, %103 ]
  %108 = phi i32 [ %9, %94 ], [ 1, %60 ], [ %9, %43 ], [ %9, %40 ], [ %9, %32 ], [ %9, %103 ]
  %109 = icmp eq i64 %13, 0
  br i1 %109, label %113, label %110, !prof !129

110:                                              ; preds = %106
  %111 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %13) #8
  %112 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %107, ptr noundef nonnull %14, ptr noundef %111) #8
  br label %113

113:                                              ; preds = %97, %90, %110, %106
  %114 = phi i32 [ %107, %110 ], [ %107, %106 ], [ %85, %90 ], [ %85, %97 ]
  %115 = phi i32 [ %108, %110 ], [ %108, %106 ], [ %9, %90 ], [ %9, %97 ]
  %116 = phi ptr [ %112, %110 ], [ %14, %106 ], [ %93, %90 ], [ %102, %97 ]
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 65534
  %119 = icmp eq i32 %118, 44
  %120 = icmp eq i32 %115, 0
  %121 = or i1 %119, %120
  br i1 %121, label %124, label %122, !prof !130

122:                                              ; preds = %113
  %123 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %114, ptr noundef nonnull %116) #8
  br label %124

124:                                              ; preds = %113, %43, %2, %122, %22, %17
  %125 = phi ptr [ %123, %122 ], [ %31, %22 ], [ %21, %17 ], [ %0, %2 ], [ %49, %43 ], [ %116, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret ptr %125
}

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @add_double_with_sign(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_pool_constant(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_constant_term_loc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @eliminate_constant_term(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !131 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 49
  br i1 %6, label %7, label %55, !prof !132

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !108
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 30
  br i1 %13, label %14, label %27, !prof !133

14:                                               ; preds = %7
  %15 = lshr i32 %4, 16
  %16 = and i32 %15, 255
  %17 = load ptr, ptr %1, align 8, !tbaa !116
  %18 = tail call ptr @simplify_binary_operation(i32 noundef 49, i32 noundef %16, ptr noundef %17, ptr noundef nonnull %10) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20, !prof !134

20:                                               ; preds = %14
  %21 = load i32, ptr %18, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 30
  br i1 %23, label %24, label %27, !prof !135

24:                                               ; preds = %20
  store ptr %18, ptr %1, align 8, !tbaa !116
  %25 = load ptr, ptr %8, align 8, !tbaa !108
  %26 = tail call ptr @eliminate_constant_term(ptr noundef %25, ptr noundef nonnull %1) #10
  br label %55

27:                                               ; preds = %20, %14, %7
  %28 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !116
  store ptr %28, ptr %3, align 8, !tbaa !116
  %29 = load ptr, ptr %8, align 8, !tbaa !108
  %30 = call ptr @eliminate_constant_term(ptr noundef %29, ptr noundef nonnull %3) #10
  %31 = load ptr, ptr %9, align 8, !tbaa !108
  %32 = call ptr @eliminate_constant_term(ptr noundef %31, ptr noundef nonnull %3) #10
  %33 = load ptr, ptr %9, align 8, !tbaa !108
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %38, !prof !136

35:                                               ; preds = %27
  %36 = load ptr, ptr %8, align 8, !tbaa !108
  %37 = icmp eq ptr %30, %36
  br i1 %37, label %55, label %38, !prof !136

38:                                               ; preds = %35, %27
  %39 = load i32, ptr %0, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = load ptr, ptr %1, align 8, !tbaa !116
  %43 = load ptr, ptr %3, align 8, !tbaa !116
  %44 = tail call ptr @simplify_binary_operation(i32 noundef 49, i32 noundef %41, ptr noundef %42, ptr noundef %43) #8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %38
  %47 = load i32, ptr %44, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 30
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  store ptr %44, ptr %1, align 8, !tbaa !116
  %51 = load i32, ptr %0, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %53, ptr noundef %30, ptr noundef %32) #8
  br label %55

55:                                               ; preds = %35, %38, %46, %2, %50, %24
  %56 = phi ptr [ %26, %24 ], [ %54, %50 ], [ %0, %2 ], [ %0, %46 ], [ %0, %38 ], [ %0, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret ptr %56
}

; Function Attrs: optsize
declare ptr @simplify_binary_operation(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expr_size(ptr noundef %0) local_unnamed_addr #0 !prof !137 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 150
  br i1 %4, label %5, label %8, !prof !138

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  br label %20

8:                                                ; preds = %1
  %9 = tail call ptr @tree_expr_size(ptr noundef nonnull %0) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !139

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 250, ptr noundef nonnull @.str.1) #8
  br label %20

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8
  %14 = and i64 %13, 131072
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20, !prof !138

16:                                               ; preds = %12
  %17 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %9, ptr noundef nonnull %0) #8
  %18 = icmp eq ptr %9, %17
  br i1 %18, label %20, label %19, !prof !129

19:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 251, ptr noundef nonnull @.str.1) #8
  br label %20

20:                                               ; preds = %11, %12, %19, %16, %5
  %21 = phi ptr [ %7, %5 ], [ %9, %16 ], [ %9, %19 ], [ %9, %12 ], [ null, %11 ]
  %22 = load ptr, ptr @sizetype_tab, align 16, !tbaa !116
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 14
  br i1 %25, label %26, label %28, !prof !138

26:                                               ; preds = %20
  %27 = tail call i32 @vector_type_mode(ptr noundef nonnull %22) #8
  br label %33

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i32 [ %27, %26 ], [ %32, %28 ]
  %35 = tail call fastcc ptr @expand_expr(ptr noundef %21, i32 noundef %34, i32 noundef 0) #10
  ret ptr %35
}

; Function Attrs: optsize
declare ptr @tree_expr_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @substitute_placeholder_in_expr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !137 !PGOFuncName !140 {
  %4 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef %2, ptr noundef null) #8
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @int_expr_size(ptr noundef %0) local_unnamed_addr #0 !prof !141 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 150
  br i1 %4, label %9, label %5, !prof !142

5:                                                ; preds = %1
  %6 = tail call ptr @tree_expr_size(ptr noundef nonnull %0) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13, !prof !142

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 270, ptr noundef nonnull @.str.1) #8
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13, !prof !143

13:                                               ; preds = %5, %9
  %14 = phi ptr [ %11, %9 ], [ %6, %5 ]
  %15 = tail call i32 @host_integerp(ptr noundef nonnull %14, i32 noundef 0) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !142

17:                                               ; preds = %13
  %18 = tail call i64 @tree_low_cst(ptr noundef nonnull %14, i32 noundef 0) #8
  br label %19

19:                                               ; preds = %8, %9, %13, %17
  %20 = phi i64 [ %18, %17 ], [ -1, %13 ], [ -1, %9 ], [ -1, %8 ]
  ret i64 %20
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @convert_memory_address_addr_space(i32 noundef %0, ptr noundef readonly returned %1, i8 zeroext %2) local_unnamed_addr #0 !prof !144 {
  %4 = load i32, ptr %1, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %11, label %8, !prof !145

8:                                                ; preds = %3
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %11, label %10, !prof !146

10:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 326, ptr noundef nonnull @.str.1) #8
  br label %11

11:                                               ; preds = %3, %8, %10
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @memory_address_addr_space(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !147 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !148
  %6 = tail call i32 %5(i8 noundef zeroext %2) #8
  %7 = tail call ptr @convert_memory_address_addr_space(i32 noundef %6, ptr noundef %1, i8 zeroext poison) #10
  %8 = load i32, ptr @cse_not_expected, align 4, !tbaa !125
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %31, !prof !160

10:                                               ; preds = %3
  %11 = load i32, ptr %1, align 8
  %12 = and i32 %11, 65535
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !125
  %16 = icmp eq i32 %15, 9
  br i1 %16, label %17, label %25, !prof !161

17:                                               ; preds = %10
  %18 = tail call zeroext i8 @constant_address_p(ptr noundef nonnull %1) #8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20, !prof !162

20:                                               ; preds = %17
  %21 = tail call ptr @force_reg(i32 noundef %6, ptr noundef nonnull %1) #10
  br label %75

22:                                               ; preds = %17
  %23 = load i32, ptr @cse_not_expected, align 4, !tbaa !125
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31, !prof !163

25:                                               ; preds = %10, %22
  %26 = load i32, ptr %1, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %31, label %29, !prof !164

29:                                               ; preds = %25
  %30 = tail call fastcc ptr @break_out_memory_refs(ptr noundef nonnull %1) #10
  br label %31

31:                                               ; preds = %3, %29, %25, %22
  %32 = phi ptr [ %1, %22 ], [ %1, %25 ], [ %30, %29 ], [ %1, %3 ]
  %33 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %32, i8 noundef zeroext %2) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %75, !prof !165

35:                                               ; preds = %31
  %36 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %75, !prof !166

38:                                               ; preds = %35
  %39 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 4), align 8, !tbaa !167
  %40 = tail call ptr %39(ptr noundef %32, ptr noundef %1, i32 noundef %0, i8 noundef zeroext %2) #8
  %41 = icmp eq ptr %32, %40
  br i1 %41, label %45, label %42, !prof !168

42:                                               ; preds = %38
  %43 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %40, i8 noundef zeroext %2) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %75, !prof !142

45:                                               ; preds = %38, %42
  %46 = load i32, ptr %40, align 8
  %47 = trunc i32 %46 to i16
  switch i16 %47, label %73 [
    i16 49, label %48
    i16 52, label %69
    i16 50, label %69
    i16 37, label %71
  ], !prof !169

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %49 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !116
  store ptr %49, ptr %4, align 8, !tbaa !116
  %50 = call ptr @eliminate_constant_term(ptr noundef nonnull %40, ptr noundef nonnull %4) #10
  %51 = load ptr, ptr %4, align 8, !tbaa !116
  %52 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !116
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %65, label %54, !prof !170

54:                                               ; preds = %48
  %55 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %50, i8 noundef zeroext %2) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57, !prof !135

57:                                               ; preds = %54
  %58 = load i32, ptr %40, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = tail call ptr @copy_to_reg(ptr noundef %50) #10
  %62 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %60, ptr noundef %61, ptr noundef %51) #8
  %63 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %62, i8 noundef zeroext %2) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57, %48, %54
  %66 = tail call ptr @force_operand(ptr noundef nonnull %40, ptr noundef null) #8
  br label %67

67:                                               ; preds = %65, %57
  %68 = phi ptr [ %62, %57 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %75

69:                                               ; preds = %45, %45
  %70 = tail call ptr @force_operand(ptr noundef nonnull %40, ptr noundef null) #8
  br label %75

71:                                               ; preds = %45
  %72 = tail call ptr @copy_to_reg(ptr noundef nonnull %40) #10
  br label %75

73:                                               ; preds = %45
  %74 = tail call ptr @force_reg(i32 noundef %6, ptr noundef nonnull %40) #10
  br label %75

75:                                               ; preds = %42, %35, %20, %69, %73, %71, %67, %31
  %76 = phi ptr [ %32, %31 ], [ %68, %67 ], [ %70, %69 ], [ %72, %71 ], [ %74, %73 ], [ %21, %20 ], [ %1, %35 ], [ %40, %42 ]
  %77 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %76, i8 noundef zeroext %2) #8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80, !prof !171

79:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 504, ptr noundef nonnull @.str.1) #8
  br label %80

80:                                               ; preds = %75, %79
  %81 = icmp eq ptr %76, %1
  br i1 %81, label %100, label %82, !prof !172

82:                                               ; preds = %80
  %83 = load i32, ptr %76, align 8
  %84 = trunc i32 %83 to i16
  switch i16 %84, label %99 [
    i16 37, label %97
    i16 49, label %85
  ], !prof !173

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !108
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 37
  br i1 %90, label %91, label %99, !prof !174

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !108
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 30
  br i1 %96, label %97, label %99, !prof !175

97:                                               ; preds = %91, %82
  %98 = phi ptr [ %76, %82 ], [ %87, %91 ]
  tail call void @mark_reg_pointer(ptr noundef nonnull %98, i32 noundef 8) #8
  br label %99

99:                                               ; preds = %97, %82, %91, %85
  tail call void @update_temp_slot_address(ptr noundef %1, ptr noundef nonnull %76) #8
  br label %100

100:                                              ; preds = %80, %99
  ret ptr %76
}

; Function Attrs: optsize
declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @force_reg(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !176 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %130, label %6, !prof !177

6:                                                ; preds = %2
  %7 = tail call i32 @general_operand(ptr noundef nonnull %1, i32 noundef %0) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !178

9:                                                ; preds = %6
  %10 = tail call ptr @gen_reg_rtx(i32 noundef %0) #8
  %11 = tail call ptr @emit_move_insn(ptr noundef %10, ptr noundef nonnull %1) #8
  br label %22

12:                                               ; preds = %6
  %13 = tail call ptr @force_operand(ptr noundef nonnull %1, ptr noundef null) #8
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call ptr @get_last_insn() #8
  br label %22

19:                                               ; preds = %12
  %20 = tail call ptr @gen_reg_rtx(i32 noundef %0) #8
  %21 = tail call ptr @emit_move_insn(ptr noundef %20, ptr noundef nonnull %13) #8
  br label %22

22:                                               ; preds = %17, %19, %9
  %23 = phi ptr [ %11, %9 ], [ %18, %17 ], [ %21, %19 ]
  %24 = phi ptr [ %10, %9 ], [ %13, %17 ], [ %20, %19 ]
  %25 = load i32, ptr %1, align 8
  %26 = and i32 %25, 65535
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !125
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %31, label %57, !prof !179

31:                                               ; preds = %22
  %32 = load i32, ptr %23, align 8
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -7
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %36, label %57, !prof !180

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !108
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 23
  br i1 %41, label %45, label %42, !prof !181

42:                                               ; preds = %36
  %43 = tail call ptr @single_set_2(ptr noundef nonnull %23, ptr noundef nonnull %38) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45, !prof !182

45:                                               ; preds = %36, %42
  %46 = phi ptr [ %43, %42 ], [ %38, %36 ]
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !108
  %49 = icmp eq ptr %48, %24
  br i1 %49, label %50, label %57, !prof !181

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !108
  %53 = tail call i32 @rtx_equal_p(ptr noundef nonnull %1, ptr noundef %52) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57, !prof !183

55:                                               ; preds = %50
  %56 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %23, i32 noundef 4, ptr noundef nonnull %1) #8
  br label %57

57:                                               ; preds = %31, %55, %50, %45, %42, %22
  %58 = load i32, ptr %1, align 8
  %59 = trunc i32 %58 to i16
  switch i16 %59, label %124 [
    i16 45, label %60
    i16 44, label %128
    i16 35, label %76
  ], !prof !184

60:                                               ; preds = %57
  %61 = and i32 %58, 67108864
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %128, !prof !185

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %65 = load ptr, ptr %64, align 8, !tbaa !108
  %66 = icmp eq ptr %65, null
  br i1 %66, label %128, label %67, !prof !186

67:                                               ; preds = %63
  %68 = load i64, ptr %65, align 8
  %69 = and i64 %68, 65535
  %70 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !125
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %128, !prof !187

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.tree_decl_common, ptr %65, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !108
  br label %119

76:                                               ; preds = %57
  %77 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !108
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 49
  br i1 %81, label %82, label %124, !prof !188

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !108
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 45
  br i1 %87, label %88, label %124, !prof !188

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !108
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 30
  br i1 %93, label %94, label %124, !prof !188

94:                                               ; preds = %88
  %95 = and i32 %85, 67108864
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %110, !prof !188

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 2
  %99 = load ptr, ptr %98, align 8, !tbaa !108
  %100 = icmp eq ptr %99, null
  br i1 %100, label %110, label %101, !prof !189

101:                                              ; preds = %97
  %102 = load i64, ptr %99, align 8
  %103 = and i64 %102, 65535
  %104 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !125
  %106 = icmp eq i32 %105, 3
  br i1 %106, label %107, label %110, !prof !188

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.tree_decl_common, ptr %99, i64 0, i32 3
  %109 = load i32, ptr %108, align 8, !tbaa !108
  br label %110

110:                                              ; preds = %94, %107, %101, %97
  %111 = phi i32 [ 8, %94 ], [ %109, %107 ], [ 8, %101 ], [ 8, %97 ]
  %112 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !108
  %114 = sub nsw i64 0, %113
  %115 = and i64 %113, %114
  %116 = tail call i32 @exact_log2(i64 noundef %115) #8
  %117 = shl nsw i32 %116, 3
  %118 = tail call i32 @llvm.umin.i32(i32 %111, i32 %117)
  br label %119

119:                                              ; preds = %110, %73
  %120 = phi i32 [ %75, %73 ], [ %118, %110 ]
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128, !prof !190

122:                                              ; preds = %119
  %123 = load i32, ptr %1, align 8
  br label %124

124:                                              ; preds = %122, %57, %76, %82, %88
  %125 = phi i32 [ %123, %122 ], [ %58, %57 ], [ %58, %76 ], [ %58, %82 ], [ %58, %88 ]
  %126 = and i32 %125, 1073807359
  %127 = icmp eq i32 %126, 1073741867
  br i1 %127, label %128, label %130, !prof !191

128:                                              ; preds = %57, %63, %67, %60, %124, %119
  %129 = phi i32 [ 0, %124 ], [ %120, %119 ], [ 8, %60 ], [ 8, %67 ], [ 8, %63 ], [ 8, %57 ]
  tail call void @mark_reg_pointer(ptr noundef %24, i32 noundef %129) #8
  br label %130

130:                                              ; preds = %124, %128, %2
  %131 = phi ptr [ %1, %2 ], [ %24, %128 ], [ %24, %124 ]
  ret ptr %131
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @break_out_memory_refs(ptr noundef %0) unnamed_addr #0 !prof !192 !PGOFuncName !193 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %17, label %5, !prof !194

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !125
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %10, label %22, !prof !195

10:                                               ; preds = %5
  %11 = tail call zeroext i8 @constant_address_p(ptr noundef nonnull %0) #8
  %12 = icmp eq i8 %11, 0
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, 16711680
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %12, i1 true, i1 %15
  br i1 %16, label %22, label %17, !prof !196

17:                                               ; preds = %10, %1
  %18 = phi i32 [ %2, %1 ], [ %13, %10 ]
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = tail call ptr @force_reg(i32 noundef %20, ptr noundef nonnull %0) #10
  br label %43

22:                                               ; preds = %10, %5
  %23 = phi i32 [ %13, %10 ], [ %2, %5 ]
  %24 = trunc i32 %23 to i16
  switch i16 %24, label %43 [
    i16 49, label %25
    i16 50, label %25
    i16 52, label %25
  ], !prof !197

25:                                               ; preds = %22, %22, %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !108
  %28 = tail call fastcc ptr @break_out_memory_refs(ptr noundef %27) #10
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !108
  %31 = tail call fastcc ptr @break_out_memory_refs(ptr noundef %30) #10
  %32 = load ptr, ptr %26, align 8, !tbaa !108
  %33 = icmp eq ptr %28, %32
  br i1 %33, label %34, label %37, !prof !198

34:                                               ; preds = %25
  %35 = load ptr, ptr %29, align 8, !tbaa !108
  %36 = icmp eq ptr %31, %35
  br i1 %36, label %43, label %37, !prof !199

37:                                               ; preds = %34, %25
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 65535
  %40 = lshr i32 %38, 16
  %41 = and i32 %40, 255
  %42 = tail call ptr @simplify_gen_binary(i32 noundef %39, i32 noundef %41, ptr noundef %28, ptr noundef %31) #8
  br label %43

43:                                               ; preds = %34, %37, %22, %17
  %44 = phi ptr [ %21, %17 ], [ %0, %22 ], [ %42, %37 ], [ %0, %34 ]
  ret ptr %44
}

; Function Attrs: optsize
declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_to_reg(ptr noundef %0) local_unnamed_addr #0 !prof !200 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = tail call ptr @gen_reg_rtx(i32 noundef %4) #8
  %6 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef 0) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10, !prof !201

8:                                                ; preds = %1
  %9 = tail call ptr @force_operand(ptr noundef nonnull %0, ptr noundef %5) #8
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi ptr [ %0, %1 ], [ %9, %8 ]
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %15, label %13, !prof !201

13:                                               ; preds = %10
  %14 = tail call ptr @emit_move_insn(ptr noundef %5, ptr noundef %11) #8
  br label %15

15:                                               ; preds = %13, %10
  ret ptr %5
}

; Function Attrs: optsize
declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_temp_slot_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @validize_mem(ptr noundef %0) local_unnamed_addr #0 !prof !202 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %25, !prof !203

5:                                                ; preds = %1
  %6 = tail call ptr @use_anchored_address(ptr noundef nonnull %0) #10
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !204

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.mem_attrs, ptr %13, i64 0, i32 5
  %17 = load i8, ptr %16, align 8, !tbaa !205
  br label %18

18:                                               ; preds = %5, %15
  %19 = phi i8 [ %17, %15 ], [ 0, %5 ]
  %20 = tail call i32 @memory_address_addr_space_p(i32 noundef %9, ptr noundef %11, i8 noundef zeroext %19) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25, !prof !207

22:                                               ; preds = %18
  %23 = load ptr, ptr %10, align 8, !tbaa !108
  %24 = tail call ptr @replace_equiv_address(ptr noundef nonnull %6, ptr noundef %23) #8
  br label %25

25:                                               ; preds = %18, %1, %22
  %26 = phi ptr [ %24, %22 ], [ %0, %1 ], [ %6, %18 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @use_anchored_address(ptr noundef %0) local_unnamed_addr #0 !prof !208 {
  %2 = load i32, ptr @flag_section_anchors, align 4, !tbaa !125
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %74, label %4, !prof !209

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 43
  br i1 %7, label %8, label %74

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !108
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 35
  br i1 %13, label %14, label %32

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !108
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 49
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !108
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 30
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !108
  %30 = load ptr, ptr %27, align 8, !tbaa !108
  %31 = load i32, ptr %30, align 8
  br label %32

32:                                               ; preds = %26, %20, %14, %8
  %33 = phi i32 [ %31, %26 ], [ %11, %20 ], [ %11, %14 ], [ %11, %8 ]
  %34 = phi ptr [ %30, %26 ], [ %10, %20 ], [ %10, %14 ], [ %10, %8 ]
  %35 = phi i64 [ %29, %26 ], [ 0, %20 ], [ 0, %14 ], [ 0, %8 ]
  %36 = and i32 %33, 65535
  %37 = icmp eq i32 %36, 45
  br i1 %37, label %38, label %74

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load i32, ptr %39, align 8, !tbaa !108
  %41 = and i32 %40, 384
  %42 = icmp eq i32 %41, 128
  br i1 %42, label %43, label %74

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !108
  %46 = icmp eq ptr %45, null
  br i1 %46, label %74, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 45), align 8, !tbaa !210
  %49 = tail call zeroext i8 %48(ptr noundef nonnull %34) #8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %47
  tail call void @place_block_symbol(ptr noundef nonnull %34) #8
  %52 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !108
  %54 = add nsw i64 %53, %35
  %55 = load ptr, ptr %44, align 8, !tbaa !108
  %56 = load i32, ptr %39, align 8, !tbaa !108
  %57 = lshr i32 %56, 3
  %58 = and i32 %57, 7
  %59 = tail call ptr @get_section_anchor(ptr noundef %55, i64 noundef %54, i32 noundef %58) #8
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 2
  %61 = load i64, ptr %60, align 8, !tbaa !108
  %62 = sub nsw i64 %54, %61
  %63 = load i32, ptr @cse_not_expected, align 4, !tbaa !125
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = load i32, ptr %59, align 8
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = tail call ptr @force_reg(i32 noundef %68, ptr noundef nonnull %59) #10
  br label %70

70:                                               ; preds = %65, %51
  %71 = phi ptr [ %59, %51 ], [ %69, %65 ]
  %72 = tail call ptr @plus_constant(ptr noundef %71, i64 noundef %62) #10
  %73 = tail call ptr @replace_equiv_address(ptr noundef nonnull %0, ptr noundef %72) #8
  br label %74

74:                                               ; preds = %32, %38, %43, %47, %4, %1, %70
  %75 = phi ptr [ %73, %70 ], [ %0, %1 ], [ %0, %4 ], [ %0, %47 ], [ %0, %43 ], [ %0, %38 ], [ %0, %32 ]
  ret ptr %75
}

; Function Attrs: optsize
declare ptr @replace_equiv_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @place_block_symbol(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_section_anchor(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_addr_to_reg(ptr noundef %0) local_unnamed_addr #0 !prof !211 {
  %2 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef %0) #10
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_to_mode_reg(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !212 {
  %3 = tail call ptr @gen_reg_rtx(i32 noundef %0) #8
  %4 = tail call i32 @general_operand(ptr noundef %1, i32 noundef 0) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !213

6:                                                ; preds = %2
  %7 = tail call ptr @force_operand(ptr noundef %1, ptr noundef %3) #8
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %1, %2 ], [ %7, %6 ]
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, %0
  %14 = icmp eq i32 %12, 0
  %15 = or i1 %13, %14
  br i1 %15, label %17, label %16, !prof !214

16:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 635, ptr noundef nonnull @.str.1) #8
  br label %17

17:                                               ; preds = %8, %16
  %18 = icmp eq ptr %9, %3
  br i1 %18, label %21, label %19, !prof !213

19:                                               ; preds = %17
  %20 = tail call ptr @emit_move_insn(ptr noundef %3, ptr noundef nonnull %9) #8
  br label %21

21:                                               ; preds = %19, %17
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @force_not_mem(ptr noundef %0) local_unnamed_addr #0 !prof !215 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %19, !prof !216

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %19, label %9, !prof !217

9:                                                ; preds = %5
  %10 = tail call ptr @gen_reg_rtx(i32 noundef %7) #8
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 1073741824
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14, !prof !218

14:                                               ; preds = %9
  %15 = load i32, ptr %10, align 8
  %16 = or i32 %15, 1073741824
  store i32 %16, ptr %10, align 8
  br label %17

17:                                               ; preds = %14, %9
  %18 = tail call ptr @emit_move_insn(ptr noundef %10, ptr noundef nonnull %0) #8
  br label %19

19:                                               ; preds = %1, %5, %17
  %20 = phi ptr [ %10, %17 ], [ %0, %5 ], [ %0, %1 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_to_suggested_reg(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !219 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %11, label %9

9:                                                ; preds = %5, %3
  %10 = tail call ptr @gen_reg_rtx(i32 noundef %2) #8
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi ptr [ %10, %9 ], [ %1, %5 ]
  %13 = tail call ptr @emit_move_insn(ptr noundef %12, ptr noundef %0) #8
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @promote_function_mode(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !220 {
  %6 = load i64, ptr %0, align 8
  %7 = trunc i64 %6 to i16
  %8 = add i16 %7, -5
  %9 = icmp ult i16 %8, 8
  br i1 %9, label %10, label %13, !prof !221

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88), align 8, !tbaa !222
  %12 = tail call i32 %11(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #8
  br label %13

13:                                               ; preds = %5, %10
  %14 = phi i32 [ %12, %10 ], [ %1, %5 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @promote_mode(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture readnone %2) local_unnamed_addr #3 !prof !223 {
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %17 [
    i16 8, label %6
    i16 6, label %6
    i16 7, label %6
    i16 9, label %6
    i16 5, label %6
    i16 11, label %6
  ], !prof !224

6:                                                ; preds = %3, %3, %3, %3, %3, %3
  %7 = icmp eq i32 %1, 15
  %8 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 25), align 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %16, label %11, !prof !225

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 14
  %13 = load i8, ptr getelementptr inbounds ([62 x i8], ptr @ix86_tune_features, i64 0, i64 24), align 8
  %14 = icmp ne i8 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !226

16:                                               ; preds = %11, %6
  br label %17

17:                                               ; preds = %11, %16, %3
  %18 = phi i32 [ %1, %3 ], [ 16, %16 ], [ %1, %11 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @promote_decl_mode(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 !prof !227 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = lshr i32 %7, 21
  %9 = and i32 %8, 1
  store i32 %9, ptr %3, align 4, !tbaa !125
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = load i64, ptr %0, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %21 [
    i16 36, label %16
    i16 34, label %16
  ], !prof !228

16:                                               ; preds = %2, %2
  %17 = load ptr, ptr @current_function_decl, align 8, !tbaa !116
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !108
  %20 = call i32 @promote_function_mode(ptr noundef nonnull %5, i32 noundef %13, ptr noundef nonnull %3, ptr noundef %19, i32 noundef 2) #10
  br label %23

21:                                               ; preds = %2
  %22 = tail call i32 @promote_mode(ptr noundef nonnull %5, i32 noundef %13, ptr nonnull poison) #10
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi i32 [ %20, %16 ], [ %22, %21 ]
  %25 = icmp eq ptr %1, null
  br i1 %25, label %28, label %26, !prof !229

26:                                               ; preds = %23
  %27 = load i32, ptr %3, align 4, !tbaa !125
  store i32 %27, ptr %1, align 4, !tbaa !125
  br label %28

28:                                               ; preds = %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @adjust_stack(ptr noundef %0) local_unnamed_addr #0 !prof !219 {
  %2 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !116
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 30
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !108
  %11 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !230
  %12 = trunc i64 %10 to i32
  %13 = sub i32 %11, %12
  store i32 %13, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !230
  br label %14

14:                                               ; preds = %8, %4
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %16 = tail call ptr @expand_binop(i32 noundef 16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %15, ptr noundef nonnull %0, ptr noundef %15, i32 noundef 0, i32 noundef 3) #8
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @emit_move_insn(ptr noundef %17, ptr noundef %16) #8
  br label %21

21:                                               ; preds = %14, %19, %1
  ret void
}

; Function Attrs: optsize
declare ptr @expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @anti_adjust_stack(ptr noundef %0) local_unnamed_addr #0 !prof !239 {
  %2 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !116
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %21, label %4, !prof !240

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 30
  br i1 %7, label %8, label %14, !prof !241

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !108
  %11 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !230
  %12 = trunc i64 %10 to i32
  %13 = add i32 %11, %12
  store i32 %13, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !230
  br label %14

14:                                               ; preds = %8, %4
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %16 = tail call ptr @expand_binop(i32 noundef 16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %15, ptr noundef nonnull %0, ptr noundef %15, i32 noundef 0, i32 noundef 3) #8
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %21, label %19, !prof !241

19:                                               ; preds = %14
  %20 = tail call ptr @emit_move_insn(ptr noundef %17, ptr noundef %16) #8
  br label %21

21:                                               ; preds = %14, %19, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_stack_save(i32 noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !219 {
  %4 = load ptr, ptr %1, align 8, !tbaa !116
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !108
  %10 = zext i8 %9 to i64
  %11 = tail call ptr @assign_stack_local(i32 noundef 16, i64 noundef %10, i32 noundef 0) #8
  br label %14

12:                                               ; preds = %6
  %13 = tail call ptr @gen_reg_rtx(i32 noundef 16) #8
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ %11, %8 ]
  store ptr %15, ptr %1, align 8, !tbaa !116
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi ptr [ %4, %3 ], [ %15, %14 ]
  %18 = icmp eq ptr %2, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  tail call void @start_sequence() #8
  tail call void @do_pending_stack_adjust() #8
  %20 = icmp eq ptr %17, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = tail call ptr @validize_mem(ptr noundef nonnull %17) #10
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %22, %21 ], [ null, %19 ]
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %26 = tail call ptr @gen_move_insn(ptr noundef %24, ptr noundef %25) #8
  %27 = tail call ptr @emit_insn(ptr noundef %26) #8
  %28 = tail call ptr @get_insns() #8
  tail call void @end_sequence() #8
  %29 = tail call ptr @emit_insn_after(ptr noundef %28, ptr noundef nonnull %2) #8
  br label %39

30:                                               ; preds = %16
  tail call void @do_pending_stack_adjust() #8
  %31 = icmp eq ptr %17, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = tail call ptr @validize_mem(ptr noundef nonnull %17) #10
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %33, %32 ], [ null, %30 ]
  %36 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %37 = tail call ptr @gen_move_insn(ptr noundef %35, ptr noundef %36) #8
  %38 = tail call ptr @emit_insn(ptr noundef %37) #8
  br label %39

39:                                               ; preds = %34, %23
  ret void
}

; Function Attrs: optsize
declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @assign_stack_local(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare void @do_pending_stack_adjust() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_stack_restore(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !219 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @validize_mem(ptr noundef nonnull %1) #10
  %7 = tail call ptr @gen_rtx_fmt_0_stat(i32 noundef 38, i32 noundef 0) #8
  %8 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %7) #8
  %9 = tail call ptr @emit_clobber(ptr noundef %8) #8
  %10 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %11 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %10) #8
  %12 = tail call ptr @emit_clobber(ptr noundef %11) #8
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi ptr [ %6, %5 ], [ null, %3 ]
  tail call void @discard_pending_stack_adjust() #8
  %15 = icmp eq ptr %2, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  tail call void @start_sequence() #8
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %18 = tail call ptr @gen_move_insn(ptr noundef %17, ptr noundef %14) #8
  %19 = tail call ptr @emit_insn(ptr noundef %18) #8
  %20 = tail call ptr @get_insns() #8
  tail call void @end_sequence() #8
  %21 = tail call ptr @emit_insn_after(ptr noundef %20, ptr noundef nonnull %2) #8
  br label %26

22:                                               ; preds = %13
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %24 = tail call ptr @gen_move_insn(ptr noundef %23, ptr noundef %14) #8
  %25 = tail call ptr @emit_insn(ptr noundef %24) #8
  br label %26

26:                                               ; preds = %22, %16
  ret void
}

; Function Attrs: optsize
declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_0_stat(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @discard_pending_stack_adjust() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @update_nonlocal_goto_save_area() local_unnamed_addr #0 !prof !219 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #9
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !116
  %3 = load ptr, ptr @cfun, align 8, !tbaa !116
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !242
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !116
  %7 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %2, ptr noundef %5, ptr noundef %6, ptr noundef null, ptr noundef null) #8
  %8 = tail call fastcc ptr @expand_expr(ptr noundef %7, i32 noundef 0, i32 noundef 5) #10
  store ptr %8, ptr %1, align 8, !tbaa !116
  call void @emit_stack_save(i32 noundef 2, ptr noundef nonnull %1, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #9
  ret void
}

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @allocate_dynamic_stack_space(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !219 {
  %4 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !116
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !116
  br label %120

8:                                                ; preds = %3
  %9 = load ptr, ptr @cfun, align 8, !tbaa !116
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 20
  %11 = load i32, ptr %10, align 8
  %12 = or i32 %11, 524288
  store i32 %12, ptr %10, align 8
  %13 = load i32, ptr %0, align 8
  %14 = lshr i32 %13, 16
  %15 = trunc i32 %14 to i8
  switch i8 %15, label %16 [
    i8 0, label %18
    i8 16, label %18
  ]

16:                                               ; preds = %8
  %17 = tail call ptr @convert_to_mode(i32 noundef 16, ptr noundef nonnull %0, i32 noundef 1) #8
  br label %18

18:                                               ; preds = %8, %8, %16
  %19 = phi ptr [ %17, %16 ], [ %0, %8 ], [ %0, %8 ]
  %20 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !125
  store i32 %20, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !244
  %21 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !125
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i64 15, i64 31
  %25 = tail call ptr @plus_constant(ptr noundef %19, i64 noundef %24) #10
  %26 = tail call ptr @force_operand(ptr noundef %25, ptr noundef null) #8
  %27 = tail call fastcc ptr @round_push(ptr noundef %26) #10
  tail call void @do_pending_stack_adjust() #8
  %28 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !230
  %29 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !125
  %30 = lshr i32 %29, 3
  %31 = urem i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1234, ptr noundef nonnull @.str.1) #8
  br label %34

34:                                               ; preds = %18, %33
  %35 = icmp eq ptr %1, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %1, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #10
  %42 = icmp ugt i32 %41, 52
  %43 = and i32 %37, 16711680
  %44 = icmp eq i32 %43, 1048576
  %45 = and i1 %44, %42
  br i1 %45, label %48, label %46

46:                                               ; preds = %40, %36, %34
  %47 = tail call ptr @gen_reg_rtx(i32 noundef 16) #8
  br label %48

48:                                               ; preds = %40, %46
  %49 = phi ptr [ %47, %46 ], [ %1, %40 ]
  tail call void @mark_reg_pointer(ptr noundef %49, i32 noundef %2) #8
  %50 = load i32, ptr @target_flags, align 4, !tbaa !125
  %51 = and i32 %50, 524288
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr @word_mode, align 4, !tbaa !125
  %55 = icmp eq i32 %54, 0
  %56 = load ptr, ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2414, i32 3), align 8, !tbaa !245
  br i1 %55, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.insn_operand_data, ptr %56, i64 1, i32 2
  %59 = load i16, ptr %58, align 8
  %60 = zext i16 %59 to i32
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i32 [ %60, %57 ], [ %54, %53 ]
  %63 = getelementptr inbounds %struct.insn_operand_data, ptr %56, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !247
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = tail call i32 %64(ptr noundef %27, i32 noundef %62) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = tail call ptr @convert_to_mode(i32 noundef %62, ptr noundef %27, i32 noundef 1) #8
  %71 = tail call ptr @copy_to_mode_reg(i32 noundef %62, ptr noundef %70) #10
  br label %72

72:                                               ; preds = %69, %66, %61
  %73 = phi ptr [ %27, %66 ], [ %71, %69 ], [ %27, %61 ]
  %74 = tail call ptr @gen_allocate_stack(ptr noundef %49, ptr noundef %73) #8
  %75 = tail call ptr @emit_insn(ptr noundef %74) #8
  br label %96

76:                                               ; preds = %48
  %77 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 34), align 2, !tbaa !249
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = tail call ptr @gen_label_rtx() #8
  %81 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %82 = load ptr, ptr @stack_limit_rtx, align 8, !tbaa !116
  %83 = tail call ptr @expand_binop(i32 noundef 16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %81, ptr noundef %82, ptr noundef null, i32 noundef 1, i32 noundef 2) #8
  tail call void @emit_cmp_and_jump_insns(ptr noundef %83, ptr noundef %27, i32 noundef 86, ptr noundef null, i32 noundef 16, i32 noundef 1, ptr noundef %80) #8
  %84 = tail call ptr @gen_trap() #8
  %85 = tail call ptr @emit_insn(ptr noundef %84) #8
  %86 = tail call ptr @emit_barrier() #8
  %87 = tail call ptr @emit_label(ptr noundef %80) #8
  br label %88

88:                                               ; preds = %79, %76
  %89 = load i32, ptr @flag_stack_check, align 4, !tbaa !125
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  tail call void @anti_adjust_stack_and_probe(ptr noundef %27, i8 noundef zeroext 0) #10
  br label %93

92:                                               ; preds = %88
  tail call void @anti_adjust_stack(ptr noundef %27) #10
  br label %93

93:                                               ; preds = %92, %91
  %94 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !116
  %95 = tail call ptr @emit_move_insn(ptr noundef %49, ptr noundef %94) #8
  br label %96

96:                                               ; preds = %93, %72
  %97 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !125
  %98 = and i32 %97, 32
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i64 15, i64 31
  %101 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %100) #8
  %102 = tail call ptr @expand_binop(i32 noundef 16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %49, ptr noundef %101, ptr noundef null, i32 noundef 1, i32 noundef 3) #8
  %103 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !125
  %104 = and i32 %103, 32
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, i64 16, i64 32
  %107 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %106) #8
  %108 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef 67, i32 noundef 16, ptr noundef %102, ptr noundef %107, ptr noundef null, i32 noundef 1) #8
  %109 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !125
  %110 = and i32 %109, 32
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, i64 16, i64 32
  %113 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %112) #8
  %114 = tail call ptr @expand_mult(i32 noundef 16, ptr noundef %108, ptr noundef %113, ptr noundef null, i32 noundef 1) #8
  %115 = load ptr, ptr @cfun, align 8, !tbaa !116
  %116 = getelementptr inbounds %struct.function, ptr %115, i64 0, i32 8
  %117 = load ptr, ptr %116, align 8, !tbaa !242
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %96
  tail call void @update_nonlocal_goto_save_area() #10
  br label %120

120:                                              ; preds = %96, %119, %6
  %121 = phi ptr [ %7, %6 ], [ %114, %119 ], [ %114, %96 ]
  ret ptr %121
}

; Function Attrs: optsize
declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @round_push(ptr noundef %0) unnamed_addr #0 !prof !219 !PGOFuncName !250 {
  %2 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !125
  %3 = lshr i32 %2, 3
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 30
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !108
  %12 = zext nneg i32 %3 to i64
  %13 = add nsw i64 %11, %12
  %14 = freeze i64 %13
  %15 = add i64 %14, -1
  %16 = srem i64 %15, %12
  %17 = sub nsw i64 %15, %16
  %18 = icmp eq i64 %11, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %9
  %20 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %17) #8
  br label %31

21:                                               ; preds = %5
  %22 = add nsw i32 %3, -1
  %23 = sext i32 %22 to i64
  %24 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %23) #8
  %25 = tail call ptr @expand_binop(i32 noundef 16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %0, ptr noundef %24, ptr noundef null, i32 noundef 1, i32 noundef 3) #8
  %26 = zext nneg i32 %3 to i64
  %27 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %26) #8
  %28 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef 67, i32 noundef 16, ptr noundef %25, ptr noundef %27, ptr noundef null, i32 noundef 1) #8
  %29 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %26) #8
  %30 = tail call ptr @expand_mult(i32 noundef 16, ptr noundef %28, ptr noundef %29, ptr noundef null, i32 noundef 1) #8
  br label %31

31:                                               ; preds = %21, %19, %9, %1
  %32 = phi ptr [ %0, %1 ], [ %30, %21 ], [ %20, %19 ], [ %0, %9 ]
  ret ptr %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !219 !PGOFuncName !251 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !108
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @gen_allocate_stack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_label_rtx() local_unnamed_addr #2

; Function Attrs: optsize
declare void @emit_cmp_and_jump_insns(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_trap() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_barrier() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @anti_adjust_stack_and_probe(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !219 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %6 [
    i8 0, label %9
    i8 16, label %9
  ]

6:                                                ; preds = %2
  %7 = tail call ptr @convert_to_mode(i32 noundef 16, ptr noundef nonnull %0, i32 noundef 1) #8
  %8 = load i32, ptr %7, align 8
  br label %9

9:                                                ; preds = %2, %2, %6
  %10 = phi i32 [ %8, %6 ], [ %3, %2 ], [ %3, %2 ]
  %11 = phi ptr [ %7, %6 ], [ %0, %2 ], [ %0, %2 ]
  %12 = and i32 %10, 65535
  %13 = icmp eq i32 %12, 30
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !108
  %17 = icmp slt i64 %16, 28672
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = icmp sgt i64 %16, 4096
  br i1 %19, label %20, label %30

20:                                               ; preds = %18, %20
  %21 = phi i64 [ %25, %20 ], [ 4096, %18 ]
  %22 = phi i64 [ 4096, %20 ], [ 8208, %18 ]
  %23 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %22) #8
  tail call void @anti_adjust_stack(ptr noundef %23) #10
  %24 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  tail call fastcc void @emit_stack_probe(ptr noundef %24) #10
  %25 = add nuw nsw i64 %21, 4096
  %26 = icmp slt i64 %25, %16
  br i1 %26, label %20, label %27, !llvm.loop !252

27:                                               ; preds = %20
  %28 = sub nsw i64 0, %21
  %29 = select i1 %19, i64 %28, i64 4112
  br label %30

30:                                               ; preds = %27, %18
  %31 = phi i64 [ 4112, %18 ], [ %29, %27 ]
  %32 = tail call ptr @plus_constant(ptr noundef nonnull %11, i64 noundef %31) #10
  br label %57

33:                                               ; preds = %14, %9
  %34 = tail call ptr @gen_label_rtx() #8
  %35 = tail call ptr @gen_label_rtx() #8
  %36 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef -4096) #8
  %37 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef 16, ptr noundef nonnull %11, ptr noundef %36) #8
  %38 = tail call ptr @force_operand(ptr noundef %37, ptr noundef null) #8
  %39 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 4112) #8
  tail call void @anti_adjust_stack(ptr noundef %39) #10
  %40 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %41 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef %40, ptr noundef %38) #8
  %42 = tail call ptr @force_operand(ptr noundef %41, ptr noundef null) #8
  %43 = tail call ptr @emit_label(ptr noundef %34) #8
  %44 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  tail call void @emit_cmp_and_jump_insns(ptr noundef %44, ptr noundef %42, i32 noundef 81, ptr noundef null, i32 noundef 16, i32 noundef 1, ptr noundef %35) #8
  %45 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 4096) #8
  tail call void @anti_adjust_stack(ptr noundef %45) #10
  %46 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  tail call fastcc void @emit_stack_probe(ptr noundef %46) #10
  tail call void @emit_jump(ptr noundef %34) #8
  %47 = tail call ptr @emit_label(ptr noundef %35) #8
  %48 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef 16, ptr noundef nonnull %11, ptr noundef %37) #8
  %49 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !116
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %33
  %52 = load i32, ptr %48, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 30
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef nonnull %11, ptr noundef %38) #8
  br label %57

57:                                               ; preds = %51, %55, %30
  %58 = phi ptr [ %32, %30 ], [ %56, %55 ], [ %48, %51 ]
  tail call void @anti_adjust_stack(ptr noundef %58) #10
  %59 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  tail call fastcc void @emit_stack_probe(ptr noundef %59) #10
  br label %60

60:                                               ; preds = %57, %33
  %61 = icmp eq i8 %1, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %60
  %63 = tail call ptr @plus_constant(ptr noundef nonnull %11, i64 noundef 4112) #10
  br label %66

64:                                               ; preds = %60
  %65 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 4112) #8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi ptr [ %65, %64 ], [ %63, %62 ]
  tail call void @adjust_stack(ptr noundef %67) #10
  ret void
}

; Function Attrs: optsize
declare ptr @expand_divmod(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_mult(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_stack_check_libfunc(ptr noundef %0) local_unnamed_addr #5 !prof !219 {
  store ptr %0, ptr @stack_check_libfunc, align 8, !tbaa !116
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @probe_stack_range(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !219 {
  %3 = load i32, ptr %1, align 8
  %4 = lshr i32 %3, 16
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %6 [
    i8 0, label %8
    i8 16, label %8
  ]

6:                                                ; preds = %2
  %7 = tail call ptr @convert_to_mode(i32 noundef 16, ptr noundef nonnull %1, i32 noundef 1) #8
  br label %8

8:                                                ; preds = %2, %2, %6
  %9 = phi ptr [ %7, %6 ], [ %1, %2 ], [ %1, %2 ]
  %10 = load ptr, ptr @stack_check_libfunc, align 8, !tbaa !116
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %14 = tail call ptr @plus_constant(ptr noundef %9, i64 noundef %0) #10
  %15 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef %13, ptr noundef %14) #8
  %16 = tail call ptr @memory_address_addr_space(i32 noundef 16, ptr noundef %15, i8 noundef zeroext 0) #10
  %17 = load ptr, ptr @stack_check_libfunc, align 8, !tbaa !116
  tail call void (ptr, i32, i32, i32, ...) @emit_library_call(ptr noundef %17, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %16, i32 noundef 16) #8
  br label %80

18:                                               ; preds = %8
  %19 = load i32, ptr %9, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 30
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !108
  %25 = icmp slt i64 %24, 28672
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = icmp sgt i64 %24, 4096
  br i1 %27, label %28, label %37

28:                                               ; preds = %26, %28
  %29 = phi i64 [ %35, %28 ], [ 4096, %26 ]
  %30 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %31 = add nsw i64 %29, %0
  %32 = sub nsw i64 0, %31
  %33 = tail call ptr @plus_constant(ptr noundef %30, i64 noundef %32) #10
  %34 = tail call ptr @memory_address_addr_space(i32 noundef 16, ptr noundef %33, i8 noundef zeroext 0) #10
  tail call fastcc void @emit_stack_probe(ptr noundef %34) #10
  %35 = add nuw nsw i64 %29, 4096
  %36 = icmp slt i64 %35, %24
  br i1 %36, label %28, label %37, !llvm.loop !254

37:                                               ; preds = %28, %26
  %38 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %39 = add nsw i64 %24, %0
  %40 = sub nsw i64 0, %39
  %41 = tail call ptr @plus_constant(ptr noundef %38, i64 noundef %40) #10
  %42 = tail call ptr @memory_address_addr_space(i32 noundef 16, ptr noundef %41, i8 noundef zeroext 0) #10
  tail call fastcc void @emit_stack_probe(ptr noundef %42) #10
  br label %80

43:                                               ; preds = %22, %18
  %44 = tail call ptr @gen_label_rtx() #8
  %45 = tail call ptr @gen_label_rtx() #8
  %46 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef -4096) #8
  %47 = tail call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef 16, ptr noundef nonnull %9, ptr noundef %46) #8
  %48 = tail call ptr @force_operand(ptr noundef %47, ptr noundef null) #8
  %49 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !116
  %50 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %0) #8
  %51 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef %49, ptr noundef %50) #8
  %52 = tail call ptr @force_operand(ptr noundef %51, ptr noundef null) #8
  %53 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef %52, ptr noundef %48) #8
  %54 = tail call ptr @force_operand(ptr noundef %53, ptr noundef null) #8
  %55 = tail call ptr @emit_label(ptr noundef %44) #8
  tail call void @emit_cmp_and_jump_insns(ptr noundef %52, ptr noundef %54, i32 noundef 81, ptr noundef null, i32 noundef 16, i32 noundef 1, ptr noundef %45) #8
  %56 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 4096) #8
  %57 = tail call ptr @expand_binop(i32 noundef 16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %52, ptr noundef %56, ptr noundef %52, i32 noundef 1, i32 noundef 2) #8
  %58 = icmp eq ptr %57, %52
  br i1 %58, label %60, label %59

59:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1503, ptr noundef nonnull @.str.1) #8
  br label %60

60:                                               ; preds = %43, %59
  tail call fastcc void @emit_stack_probe(ptr noundef %52) #10
  tail call void @emit_jump(ptr noundef %44) #8
  %61 = tail call ptr @emit_label(ptr noundef %45) #8
  %62 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef 16, ptr noundef nonnull %9, ptr noundef %47) #8
  %63 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !116
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %80, label %65

65:                                               ; preds = %60
  %66 = load i32, ptr %62, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 30
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !108
  %72 = sub nsw i64 0, %71
  %73 = tail call ptr @plus_constant(ptr noundef %54, i64 noundef %72) #10
  br label %77

74:                                               ; preds = %65
  %75 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef nonnull %9, ptr noundef %48) #8
  %76 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef %54, ptr noundef %75) #8
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi ptr [ %76, %74 ], [ %73, %69 ]
  %79 = tail call ptr @memory_address_addr_space(i32 noundef 16, ptr noundef %78, i8 noundef zeroext 0) #10
  tail call fastcc void @emit_stack_probe(ptr noundef %79) #10
  br label %80

80:                                               ; preds = %60, %77, %37, %12
  ret void
}

; Function Attrs: optsize
declare void @emit_library_call(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_stack_probe(ptr noundef %0) unnamed_addr #0 !prof !219 !PGOFuncName !255 {
  %2 = load i32, ptr @word_mode, align 4, !tbaa !125
  %3 = tail call ptr @gen_rtx_MEM(i32 noundef %2, ptr noundef %0) #8
  %4 = load i32, ptr %3, align 8
  %5 = or i32 %4, 134217728
  store i32 %5, ptr %3, align 8
  %6 = tail call ptr @gen_probe_stack(ptr noundef nonnull %3) #8
  %7 = tail call ptr @emit_insn(ptr noundef %6) #8
  ret void
}

; Function Attrs: optsize
declare void @emit_jump(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_probe_stack(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @hard_function_value(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !256 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 15), align 8, !tbaa !257
  %6 = icmp eq ptr %1, null
  %7 = select i1 %6, ptr %2, ptr %1, !prof !258
  %8 = trunc i32 %3 to i8
  %9 = tail call ptr %5(ptr noundef %0, ptr noundef %7, i8 noundef zeroext %8) #8
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 16777215
  %12 = icmp eq i32 %11, 65573
  br i1 %12, label %13, label %37, !prof !259

13:                                               ; preds = %4
  %14 = tail call i64 @int_size_in_bytes(ptr noundef %0) #8
  %15 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !108
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13, %24
  %18 = phi i8 [ %26, %24 ], [ %15, %13 ]
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !108
  %22 = zext i8 %21 to i64
  %23 = icmp ugt i64 %14, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %19
  %26 = load i8, ptr %25, align 1, !tbaa !108
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %17, !llvm.loop !260

28:                                               ; preds = %24, %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1707, ptr noundef nonnull @.str.1) #8
  br label %32

29:                                               ; preds = %17
  %30 = zext i8 %18 to i32
  %31 = shl nuw nsw i32 %30, 16
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi i32 [ %31, %29 ], [ 0, %28 ]
  %34 = load i32, ptr %9, align 8
  %35 = and i32 %34, -16711681
  %36 = or disjoint i32 %35, %33
  store i32 %36, ptr %9, align 8
  br label %37

37:                                               ; preds = %32, %4
  ret ptr %9
}

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @hard_libcall_value(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !261 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 16), align 8, !tbaa !262
  %4 = tail call ptr %3(i32 noundef %0, ptr noundef %1) #8
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @rtx_to_tree_code(i32 noundef %0) local_unnamed_addr #6 !prof !219 {
  switch i32 %0, label %7 [
    i32 49, label %8
    i32 50, label %2
    i32 52, label %3
    i32 55, label %4
    i32 70, label %5
    i32 71, label %6
  ]

2:                                                ; preds = %1
  br label %8

3:                                                ; preds = %1
  br label %8

4:                                                ; preds = %1
  br label %8

5:                                                ; preds = %1
  br label %8

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %1, %7, %6, %5, %4, %3, %2
  %9 = phi i32 [ 188, %7 ], [ 81, %6 ], [ 80, %5 ], [ 75, %4 ], [ 65, %3 ], [ 64, %2 ], [ 63, %1 ]
  ret i32 %9
}

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!106}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!36 = !{ptr @plus_constant, ptr @gen_rtx_CONST_INT, i64 1734335}
!37 = !{ptr @plus_constant, ptr @add_double_with_sign, i64 1}
!38 = !{ptr @plus_constant, ptr @immed_double_const, i64 1}
!39 = !{ptr @plus_constant, ptr @get_pool_constant, i64 1}
!40 = !{ptr @plus_constant, ptr @plus_constant, i64 3930}
!41 = !{ptr @plus_constant, ptr @force_const_mem, i64 1}
!42 = !{ptr @plus_constant, ptr @memory_address_addr_space_p, i64 1}
!43 = !{ptr @plus_constant, ptr @trunc_int_for_mode, i64 12428}
!44 = !{ptr @plus_constant, ptr @gen_rtx_fmt_ee_stat, i64 1390354}
!45 = !{ptr @plus_constant, ptr @find_constant_term_loc, i64 15205}
!46 = !{ptr @plus_constant, ptr @copy_rtx, i64 3579}
!47 = !{ptr @plus_constant, ptr @gen_rtx_fmt_e_stat, i64 176093}
!48 = !{ptr @eliminate_constant_term, ptr @simplify_binary_operation, i64 466}
!49 = !{ptr @eliminate_constant_term, ptr @eliminate_constant_term, i64 4940}
!50 = !{ptr @eliminate_constant_term, ptr @gen_rtx_fmt_ee_stat, i64 1}
!51 = !{ptr @expr_size, ptr @tree_expr_size, i64 143104}
!52 = !{ptr @expr_size, ptr @fancy_abort, i64 2}
!53 = !{ptr @expr_size, ptr @substitute_placeholder_in_expr, i64 1}
!54 = !{ptr @expr_size, ptr @vector_type_mode, i64 1}
!55 = !{ptr @expr_size, ptr @expand_expr, i64 143105}
!56 = !{ptr @expand_expr, ptr @expand_expr_real, i64 143105}
!57 = !{ptr @int_expr_size, ptr @tree_expr_size, i64 1}
!58 = !{ptr @int_expr_size, ptr @host_integerp, i64 1}
!59 = !{ptr @convert_memory_address_addr_space, ptr @fancy_abort, i64 1}
!60 = !{ptr @memory_address_addr_space, ptr @convert_memory_address_addr_space, i64 790588}
!61 = !{ptr @memory_address_addr_space, ptr @constant_address_p, i64 21454}
!62 = !{ptr @memory_address_addr_space, ptr @force_reg, i64 21453}
!63 = !{ptr @memory_address_addr_space, ptr @break_out_memory_refs, i64 403220}
!64 = !{ptr @memory_address_addr_space, ptr @memory_address_addr_space_p, i64 1562508}
!65 = !{ptr @memory_address_addr_space, ptr @eliminate_constant_term, i64 2225}
!66 = !{ptr @memory_address_addr_space, ptr @copy_to_reg, i64 1}
!67 = !{ptr @memory_address_addr_space, ptr @gen_rtx_fmt_ee_stat, i64 1}
!68 = !{ptr @memory_address_addr_space, ptr @force_operand, i64 2225}
!69 = !{ptr @memory_address_addr_space, ptr @fancy_abort, i64 1}
!70 = !{ptr @memory_address_addr_space, ptr @mark_reg_pointer, i64 41981}
!71 = !{ptr @memory_address_addr_space, ptr @update_temp_slot_address, i64 52707}
!72 = !{ptr @force_reg, ptr @general_operand, i64 106426}
!73 = !{ptr @force_reg, ptr @gen_reg_rtx, i64 106425}
!74 = !{ptr @force_reg, ptr @emit_move_insn, i64 106425}
!75 = !{ptr @force_reg, ptr @force_operand, i64 1}
!76 = !{ptr @force_reg, ptr @single_set_2, i64 1}
!77 = !{ptr @force_reg, ptr @rtx_equal_p, i64 32507}
!78 = !{ptr @force_reg, ptr @set_unique_reg_note, i64 199}
!79 = !{ptr @force_reg, ptr @exact_log2, i64 18108}
!80 = !{ptr @force_reg, ptr @mark_reg_pointer, i64 75534}
!81 = !{ptr @break_out_memory_refs, ptr @constant_address_p, i64 390424}
!82 = !{ptr @break_out_memory_refs, ptr @force_reg, i64 30853}
!83 = !{ptr @break_out_memory_refs, ptr @break_out_memory_refs, i64 822988}
!84 = !{ptr @break_out_memory_refs, ptr @simplify_gen_binary, i64 12639}
!85 = !{ptr @copy_to_reg, ptr @gen_reg_rtx, i64 4484}
!86 = !{ptr @copy_to_reg, ptr @general_operand, i64 4484}
!87 = !{ptr @copy_to_reg, ptr @force_operand, i64 1}
!88 = !{ptr @copy_to_reg, ptr @emit_move_insn, i64 4483}
!89 = !{ptr @validize_mem, ptr @use_anchored_address, i64 20348}
!90 = !{ptr @validize_mem, ptr @memory_address_addr_space_p, i64 20348}
!91 = !{ptr @validize_mem, ptr @replace_equiv_address, i64 1}
!92 = !{ptr @copy_addr_to_reg, ptr @copy_to_mode_reg, i64 48}
!93 = !{ptr @copy_to_mode_reg, ptr @gen_reg_rtx, i64 16819}
!94 = !{ptr @copy_to_mode_reg, ptr @general_operand, i64 16819}
!95 = !{ptr @copy_to_mode_reg, ptr @force_operand, i64 224}
!96 = !{ptr @copy_to_mode_reg, ptr @fancy_abort, i64 1}
!97 = !{ptr @copy_to_mode_reg, ptr @emit_move_insn, i64 16595}
!98 = !{ptr @force_not_mem, ptr @gen_reg_rtx, i64 87}
!99 = !{ptr @force_not_mem, ptr @emit_move_insn, i64 87}
!100 = !{ptr @promote_decl_mode, ptr @promote_function_mode, i64 2210}
!101 = !{ptr @promote_decl_mode, ptr @promote_mode, i64 648841}
!102 = !{ptr @anti_adjust_stack, ptr @expand_binop, i64 13}
!103 = !{ptr @anti_adjust_stack, ptr @emit_move_insn, i64 1}
!104 = !{ptr @hard_function_value, ptr @int_size_in_bytes, i64 1}
!105 = !{ptr @hard_function_value, ptr @fancy_abort, i64 1}
!106 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!107 = !{!"function_entry_count", i64 8712886}
!108 = !{!109, !109, i64 0}
!109 = !{!"omnipotent char", !110, i64 0}
!110 = !{!"Simple C/C++ TBAA"}
!111 = !{!"branch_weights", i32 17425775, i32 1}
!112 = !{!"branch_weights", i32 1, i32 8712887}
!113 = !{!"branch_weights", i32 8709563, i32 3325}
!114 = !{!"function_entry_count", i64 2723866}
!115 = !{!"branch_weights", i32 985601, i32 1738267}
!116 = !{!117, !117, i64 0}
!117 = !{!"any pointer", !109, i64 0}
!118 = !{!"branch_weights", i32 1204983, i32 344332, i32 1, i32 886, i32 623, i32 176094, i32 1, i32 24405}
!119 = !{!120, !120, i64 0}
!120 = !{!"long", !109, i64 0}
!121 = !{!"branch_weights", i32 5, i32 882}
!122 = !{!"branch_weights", i32 5, i32 1}
!123 = !{!"branch_weights", i32 12430, i32 11976}
!124 = !{!"branch_weights", i32 1, i32 12430}
!125 = !{!126, !126, i64 0}
!126 = !{!"int", !109, i64 0}
!127 = !{!"branch_weights", i32 350, i32 11627}
!128 = !{!"branch_weights", i32 8048, i32 3580}
!129 = !{!"branch_weights", i32 0, i32 -2147483648}
!130 = !{!"branch_weights", i32 -2091138690, i32 318662058}
!131 = !{!"function_entry_count", i64 7163}
!132 = !{!"branch_weights", i32 2701, i32 4464}
!133 = !{!"branch_weights", i32 464, i32 2238}
!134 = !{!"branch_weights", i32 1, i32 464}
!135 = !{!"branch_weights", i32 464, i32 1}
!136 = !{!"branch_weights", i32 2238, i32 1}
!137 = !{!"function_entry_count", i64 143105}
!138 = !{!"branch_weights", i32 1, i32 143106}
!139 = !{!"branch_weights", i32 17888, i32 -1735051392}
!140 = !{!"explow.c:expand_expr"}
!141 = !{!"function_entry_count", i64 1}
!142 = !{!"branch_weights", i32 1, i32 2}
!143 = !{!"branch_weights", i32 715827881, i32 1431655767}
!144 = !{!"function_entry_count", i64 792650}
!145 = !{!"branch_weights", i32 792575, i32 77}
!146 = !{!"branch_weights", i32 77, i32 1}
!147 = !{!"function_entry_count", i64 790588}
!148 = !{!149, !117, i64 1184}
!149 = !{!"gcc_target", !150, i64 0, !152, i64 368, !153, i64 664, !126, i64 744, !117, i64 752, !117, i64 760, !117, i64 768, !117, i64 776, !117, i64 784, !117, i64 792, !117, i64 800, !117, i64 808, !117, i64 816, !117, i64 824, !117, i64 832, !117, i64 840, !117, i64 848, !117, i64 856, !117, i64 864, !117, i64 872, !117, i64 880, !117, i64 888, !117, i64 896, !117, i64 904, !117, i64 912, !117, i64 920, !117, i64 928, !117, i64 936, !117, i64 944, !117, i64 952, !117, i64 960, !117, i64 968, !117, i64 976, !117, i64 984, !117, i64 992, !117, i64 1000, !117, i64 1008, !117, i64 1016, !117, i64 1024, !117, i64 1032, !117, i64 1040, !117, i64 1048, !117, i64 1056, !120, i64 1064, !120, i64 1072, !117, i64 1080, !117, i64 1088, !117, i64 1096, !117, i64 1104, !117, i64 1112, !117, i64 1120, !117, i64 1128, !117, i64 1136, !117, i64 1144, !117, i64 1152, !117, i64 1160, !117, i64 1168, !154, i64 1176, !117, i64 1232, !117, i64 1240, !117, i64 1248, !117, i64 1256, !117, i64 1264, !117, i64 1272, !117, i64 1280, !117, i64 1288, !117, i64 1296, !117, i64 1304, !117, i64 1312, !117, i64 1320, !117, i64 1328, !117, i64 1336, !117, i64 1344, !117, i64 1352, !117, i64 1360, !117, i64 1368, !117, i64 1376, !117, i64 1384, !117, i64 1392, !117, i64 1400, !117, i64 1408, !117, i64 1416, !117, i64 1424, !117, i64 1432, !117, i64 1440, !117, i64 1448, !117, i64 1456, !120, i64 1464, !155, i64 1472, !117, i64 1664, !117, i64 1672, !117, i64 1680, !117, i64 1688, !117, i64 1696, !117, i64 1704, !117, i64 1712, !117, i64 1720, !117, i64 1728, !117, i64 1736, !117, i64 1744, !117, i64 1752, !117, i64 1760, !117, i64 1768, !117, i64 1776, !156, i64 1784, !157, i64 1792, !158, i64 1896, !159, i64 1968, !117, i64 2016, !109, i64 2024, !109, i64 2025, !109, i64 2026, !109, i64 2027, !109, i64 2028, !109, i64 2029, !109, i64 2030, !109, i64 2031, !109, i64 2032, !109, i64 2033, !109, i64 2034, !109, i64 2035}
!150 = !{!"asm_out", !117, i64 0, !117, i64 8, !117, i64 16, !151, i64 24, !151, i64 56, !117, i64 88, !117, i64 96, !117, i64 104, !117, i64 112, !117, i64 120, !117, i64 128, !117, i64 136, !117, i64 144, !117, i64 152, !117, i64 160, !117, i64 168, !117, i64 176, !117, i64 184, !117, i64 192, !117, i64 200, !117, i64 208, !117, i64 216, !117, i64 224, !117, i64 232, !117, i64 240, !117, i64 248, !117, i64 256, !117, i64 264, !117, i64 272, !117, i64 280, !117, i64 288, !117, i64 296, !117, i64 304, !117, i64 312, !117, i64 320, !117, i64 328, !117, i64 336, !117, i64 344, !117, i64 352, !117, i64 360}
!151 = !{!"asm_int_op", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24}
!152 = !{!"sched", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !117, i64 64, !117, i64 72, !117, i64 80, !117, i64 88, !117, i64 96, !117, i64 104, !117, i64 112, !117, i64 120, !117, i64 128, !117, i64 136, !117, i64 144, !117, i64 152, !117, i64 160, !117, i64 168, !117, i64 176, !117, i64 184, !117, i64 192, !117, i64 200, !117, i64 208, !117, i64 216, !117, i64 224, !117, i64 232, !117, i64 240, !117, i64 248, !117, i64 256, !117, i64 264, !117, i64 272, !117, i64 280, !117, i64 288}
!153 = !{!"vectorize", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !117, i64 64, !117, i64 72}
!154 = !{!"addr_space", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48}
!155 = !{!"calls", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !117, i64 64, !117, i64 72, !117, i64 80, !117, i64 88, !117, i64 96, !117, i64 104, !117, i64 112, !117, i64 120, !117, i64 128, !117, i64 136, !117, i64 144, !117, i64 152, !117, i64 160, !117, i64 168, !117, i64 176, !117, i64 184}
!156 = !{!"c", !117, i64 0}
!157 = !{!"cxx", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !117, i64 64, !117, i64 72, !117, i64 80, !117, i64 88, !117, i64 96}
!158 = !{!"emutls", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !109, i64 64, !109, i64 65}
!159 = !{!"target_option_hooks", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40}
!160 = !{!"branch_weights", i32 790493, i32 97}
!161 = !{!"branch_weights", i32 21454, i32 769040}
!162 = !{!"branch_weights", i32 1, i32 21454}
!163 = !{!"branch_weights", i32 -2147483648, i32 0}
!164 = !{!"branch_weights", i32 365819, i32 403222}
!165 = !{!"branch_weights", i32 2319, i32 766818}
!166 = !{!"branch_weights", i32 2228, i32 92}
!167 = !{!149, !117, i64 1208}
!168 = !{!"branch_weights", i32 2227, i32 2}
!169 = !{!"branch_weights", i32 1, i32 17816, i32 4, i32 2, i32 1}
!170 = !{!"branch_weights", i32 1764, i32 464}
!171 = !{!"branch_weights", i32 1, i32 790589}
!172 = !{!"branch_weights", i32 737883, i32 52707}
!173 = !{!"branch_weights", i32 10850, i32 454201158, i32 117722500}
!174 = !{!"branch_weights", i32 4986, i32 5865}
!175 = !{!"branch_weights", i32 124, i32 4863}
!176 = !{!"function_entry_count", i64 113652}
!177 = !{!"branch_weights", i32 7226, i32 106428}
!178 = !{!"branch_weights", i32 1, i32 106428}
!179 = !{!"branch_weights", i32 32510, i32 73919}
!180 = !{!"branch_weights", i32 260087, i32 1}
!181 = !{!"branch_weights", i32 32510, i32 1}
!182 = !{!"branch_weights", i32 1879040064, i32 268443584}
!183 = !{!"branch_weights", i32 199, i32 32312}
!184 = !{!"branch_weights", i32 -1850378660, i32 432345704, i32 28090327, i32 595745339}
!185 = !{!"branch_weights", i32 13144, i32 1}
!186 = !{!"branch_weights", i32 1, i32 13144}
!187 = !{!"branch_weights", i32 13050, i32 95}
!188 = !{!"branch_weights", i32 18112, i32 1}
!189 = !{!"branch_weights", i32 1, i32 18112}
!190 = !{!"branch_weights", i32 30231729, i32 2117251919}
!191 = !{!"branch_weights", i32 -1052214685, i32 -2011312867}
!192 = !{!"function_entry_count", i64 1226205}
!193 = !{!"explow.c:break_out_memory_refs"}
!194 = !{!"branch_weights", i32 20141, i32 1206066}
!195 = !{!"branch_weights", i32 390425, i32 815642}
!196 = !{!"branch_weights", i32 -1978557470, i32 65347384}
!197 = !{!"branch_weights", i32 -520431819, i32 1884852739, i32 4814, i32 96618993}
!198 = !{!"branch_weights", i32 410576, i32 918}
!199 = !{!"branch_weights", i32 398856, i32 11721}
!200 = !{!"function_entry_count", i64 4484}
!201 = !{!"branch_weights", i32 1, i32 4485}
!202 = !{!"function_entry_count", i64 22818}
!203 = !{!"branch_weights", i32 20350, i32 2470}
!204 = !{!"branch_weights", i32 711, i32 19640}
!205 = !{!206, !109, i64 32}
!206 = !{!"mem_attrs", !117, i64 0, !117, i64 8, !117, i64 16, !126, i64 24, !126, i64 28, !109, i64 32}
!207 = !{!"branch_weights", i32 1, i32 20350}
!208 = !{!"function_entry_count", i64 126290}
!209 = !{!"branch_weights", i32 126291, i32 1}
!210 = !{!149, !117, i64 1080}
!211 = !{!"function_entry_count", i64 48}
!212 = !{!"function_entry_count", i64 16819}
!213 = !{!"branch_weights", i32 224, i32 16597}
!214 = !{!"branch_weights", i32 160260961, i32 9527}
!215 = !{!"function_entry_count", i64 3817}
!216 = !{!"branch_weights", i32 88, i32 3731}
!217 = !{!"branch_weights", i32 1, i32 88}
!218 = !{!"branch_weights", i32 41, i32 48}
!219 = !{!"function_entry_count", i64 0}
!220 = !{!"function_entry_count", i64 255274}
!221 = !{!"branch_weights", i32 252897, i32 2386}
!222 = !{!149, !117, i64 1472}
!223 = !{!"function_entry_count", i64 664755}
!224 = !{!"branch_weights", i32 263224, i32 342056, i32 30647, i32 27989, i32 844, i32 1, i32 1}
!225 = !{!"branch_weights", i32 6233, i32 -1792111724}
!226 = !{!"branch_weights", i32 5415, i32 -2120289664}
!227 = !{!"function_entry_count", i64 651051}
!228 = !{!"branch_weights", i32 -994723672, i32 5086, i32 11235733}
!229 = !{!"branch_weights", i32 604951, i32 46102}
!230 = !{!231, !126, i64 8}
!231 = !{!"rtl_data", !232, i64 0, !233, i64 40, !234, i64 96, !235, i64 112, !237, i64 208, !238, i64 248, !126, i64 312, !117, i64 320, !117, i64 328, !117, i64 336, !117, i64 344, !117, i64 352, !117, i64 360, !117, i64 368, !117, i64 376, !117, i64 384, !117, i64 392, !120, i64 400, !117, i64 408, !117, i64 416, !117, i64 424, !126, i64 432, !126, i64 436, !126, i64 440, !126, i64 444, !126, i64 448, !126, i64 452, !117, i64 456, !109, i64 464, !109, i64 465, !109, i64 466, !109, i64 467, !109, i64 468, !109, i64 469, !109, i64 470, !109, i64 471, !109, i64 472, !109, i64 473, !109, i64 474, !109, i64 475, !109, i64 476, !109, i64 477, !109, i64 478, !109, i64 479, !109, i64 480, !109, i64 481, !109, i64 482, !109, i64 483, !109, i64 484, !109, i64 485}
!232 = !{!"expr_status", !126, i64 0, !126, i64 4, !126, i64 8, !117, i64 16, !117, i64 24, !117, i64 32}
!233 = !{!"emit_status", !126, i64 0, !126, i64 4, !117, i64 8, !117, i64 16, !117, i64 24, !126, i64 32, !126, i64 36, !126, i64 40, !126, i64 44, !117, i64 48}
!234 = !{!"varasm_status", !117, i64 0, !126, i64 8}
!235 = !{!"incoming_args", !126, i64 0, !126, i64 4, !126, i64 8, !117, i64 16, !236, i64 24, !117, i64 88}
!236 = !{!"ix86_args", !126, i64 0, !126, i64 4, !126, i64 8, !126, i64 12, !126, i64 16, !126, i64 20, !126, i64 24, !126, i64 28, !126, i64 32, !126, i64 36, !126, i64 40, !126, i64 44, !126, i64 48, !126, i64 52, !126, i64 56, !126, i64 60}
!237 = !{!"function_subsections", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32}
!238 = !{!"rtl_eh", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !109, i64 48}
!239 = !{!"function_entry_count", i64 14}
!240 = !{!"branch_weights", i32 1, i32 15}
!241 = !{!"branch_weights", i32 15, i32 1}
!242 = !{!243, !117, i64 64}
!243 = !{!"function", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !117, i64 64, !117, i64 72, !117, i64 80, !117, i64 88, !117, i64 96, !126, i64 104, !126, i64 108, !126, i64 112, !126, i64 116, !126, i64 120, !126, i64 124, !117, i64 128, !126, i64 136, !126, i64 137, !126, i64 138, !126, i64 138, !126, i64 138, !126, i64 138, !126, i64 138, !126, i64 138, !126, i64 138, !126, i64 139, !126, i64 139, !126, i64 139, !126, i64 139, !126, i64 139, !126, i64 139, !126, i64 139}
!244 = !{!231, !126, i64 440}
!245 = !{!246, !117, i64 24}
!246 = !{!"insn_data", !117, i64 0, !109, i64 8, !117, i64 16, !117, i64 24, !109, i64 32, !109, i64 33, !109, i64 34, !109, i64 35}
!247 = !{!248, !117, i64 0}
!248 = !{!"insn_operand_data", !117, i64 0, !117, i64 8, !126, i64 16, !109, i64 18, !109, i64 19}
!249 = !{!231, !109, i64 470}
!250 = !{!"explow.c:round_push"}
!251 = !{!"explow.c:rhs_regno"}
!252 = distinct !{!252, !253}
!253 = !{!"llvm.loop.mustprogress"}
!254 = distinct !{!254, !253}
!255 = !{!"explow.c:emit_stack_probe"}
!256 = !{!"function_entry_count", i64 464332}
!257 = !{!149, !117, i64 1592}
!258 = !{!"branch_weights", i32 397459, i32 66875}
!259 = !{!"branch_weights", i32 7255, i32 -926129809}
!260 = distinct !{!260, !253}
!261 = !{!"function_entry_count", i64 85}
!262 = !{!149, !117, i64 1600}
