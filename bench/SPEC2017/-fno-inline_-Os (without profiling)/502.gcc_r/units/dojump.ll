; ModuleID = 'dojump.c'
source_filename = "dojump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }

@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_omit_frame_pointer = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [9 x i8] c"dojump.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@ix86_branch_cost = external local_unnamed_addr global i32, align 4
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@code_to_optab = external local_unnamed_addr global [140 x ptr], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to add probability note\0A\00", align 1
@shift_test = internal global ptr null, align 8
@and_test = internal global ptr null, align 8
@and_reg = internal global ptr null, align 8
@gt_ggc_r_gt_dojump_h = dso_local local_unnamed_addr constant [4 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @shift_test, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @and_test, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @and_reg, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@optab_table = external global [159 x %struct.optab_d], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_pending_stack_adjust() local_unnamed_addr #0 {
  store i32 0, ptr @x_rtl, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @discard_pending_stack_adjust() local_unnamed_addr #1 {
  %1 = load i32, ptr @x_rtl, align 8, !tbaa !5
  %2 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !19
  %3 = sub nsw i32 %2, %1
  store i32 %3, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !19
  store i32 0, ptr @x_rtl, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_pending_stack_adjust() local_unnamed_addr #2 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !20
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @cfun, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 524288
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6, %3
  tail call void @discard_pending_stack_adjust() #8
  br label %13

13:                                               ; preds = %12, %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_pending_stack_adjust() local_unnamed_addr #3 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !22
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32, ptr @x_rtl, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %7) #9
  tail call void @adjust_stack(ptr noundef %8) #9
  br label %9

9:                                                ; preds = %6, %3
  store i32 0, ptr @x_rtl, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %9, %0
  ret void
}

; Function Attrs: optsize
declare void @adjust_stack(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @jumpifnot(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = tail call fastcc i32 @inv(i32 noundef %2) #8
  tail call void @do_jump(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_jump(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  br label %11

11:                                               ; preds = %56, %4
  %12 = phi ptr [ %0, %4 ], [ %57, %56 ]
  %13 = phi ptr [ %1, %4 ], [ %58, %56 ]
  %14 = phi ptr [ %2, %4 ], [ %59, %56 ]
  %15 = phi i32 [ %3, %4 ], [ %60, %56 ]
  br label %16

16:                                               ; preds = %50, %11
  %17 = phi ptr [ %12, %11 ], [ %51, %50 ]
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %289 [
    i16 0, label %334
    i16 23, label %23
    i16 116, label %29
    i16 113, label %20
    i16 117, label %47
    i16 82, label %47
    i16 79, label %47
    i16 85, label %47
    i16 86, label %47
    i16 96, label %52
    i16 56, label %61
    i16 52, label %70
    i16 41, label %71
    i16 42, label %71
    i16 45, label %71
    i16 46, label %71
    i16 64, label %111
    i16 101, label %108
    i16 102, label %108
    i16 97, label %108
    i16 98, label %108
    i16 99, label %108
    i16 100, label %108
    i16 104, label %108
    i16 103, label %108
    i16 105, label %108
    i16 106, label %108
    i16 107, label %108
    i16 108, label %108
    i16 109, label %108
    i16 110, label %108
    i16 91, label %108
    i16 92, label %108
    i16 89, label %117
    i16 93, label %265
    i16 87, label %277
    i16 94, label %277
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  br label %34

23:                                               ; preds = %16
  %24 = tail call i32 @integer_zerop(ptr noundef nonnull %17) #9
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr %14, ptr %13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %334, label %28

28:                                               ; preds = %23
  tail call void @emit_jump(ptr noundef nonnull %26) #9
  br label %334

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !23
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i16
  switch i16 %33, label %34 [
    i16 41, label %289
    i16 42, label %289
    i16 45, label %289
    i16 46, label %289
  ]

34:                                               ; preds = %20, %29
  %35 = phi ptr [ %22, %20 ], [ %31, %29 ]
  %36 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !23
  %38 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1023
  %41 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !23
  %43 = getelementptr inbounds %struct.tree_type, ptr %42, i64 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1023
  %46 = icmp ult i32 %40, %45
  br i1 %46, label %289, label %47

47:                                               ; preds = %34, %16, %16, %16, %16, %16
  %48 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !23
  br label %50

50:                                               ; preds = %47, %251
  %51 = phi ptr [ %49, %47 ], [ %252, %251 ]
  br label %16

52:                                               ; preds = %16
  %53 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !23
  %55 = tail call fastcc i32 @inv(i32 noundef %15) #8
  br label %56

56:                                               ; preds = %52, %200
  %57 = phi ptr [ %205, %200 ], [ %54, %52 ]
  %58 = phi ptr [ %161, %200 ], [ %14, %52 ]
  %59 = phi ptr [ %160, %200 ], [ %13, %52 ]
  %60 = phi i32 [ %162, %200 ], [ %55, %52 ]
  br label %11

61:                                               ; preds = %16
  %62 = tail call ptr @gen_label_rtx() #9
  %63 = icmp ne ptr %14, null
  %64 = icmp ne ptr %13, null
  %65 = and i1 %64, %63
  br i1 %65, label %320, label %66

66:                                               ; preds = %61
  %67 = tail call ptr @gen_label_rtx() #9
  %68 = select i1 %63, ptr %14, ptr %67
  %69 = select i1 %64, ptr %13, ptr %67
  br label %320

70:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 440, ptr noundef nonnull @.str.1) #9
  br label %71

71:                                               ; preds = %16, %16, %16, %16, %70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i32 0, ptr %10, align 4, !tbaa !20
  %72 = call ptr @get_inner_reference(ptr noundef nonnull %17, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %10, i8 noundef zeroext 0) #9
  %73 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !24
  %74 = load i64, ptr %5, align 8, !tbaa !32
  %75 = trunc i64 %74 to i32
  %76 = load i32, ptr %7, align 4, !tbaa !20
  %77 = call ptr %73(i32 noundef %75, i32 noundef %76) #9
  %78 = icmp ne ptr %77, null
  %79 = load i64, ptr %5, align 8
  %80 = icmp sgt i64 %79, -1
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %105

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.tree_type, ptr %77, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 1023
  %86 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !23
  %88 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 1023
  %91 = icmp ult i32 %85, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %82
  %93 = load i64, ptr %77, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 14
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @vector_type_mode(ptr noundef nonnull %77) #9
  br label %101

98:                                               ; preds = %92
  %99 = lshr i32 %84, 16
  %100 = and i32 %99, 255
  br label %101

101:                                              ; preds = %98, %96
  %102 = phi i32 [ %97, %96 ], [ %100, %98 ]
  %103 = call i32 @have_insn_for(i32 noundef 48, i32 noundef %102) #9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %82, %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %289

106:                                              ; preds = %101
  %107 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %77, ptr noundef nonnull %17) #9
  call void @do_jump(ptr noundef %107, ptr noundef %13, ptr noundef %14, i32 noundef %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %334

108:                                              ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  %109 = trunc i64 %18 to i32
  %110 = and i32 %109, 65535
  br label %111

111:                                              ; preds = %16, %108, %283, %271
  %112 = phi i32 [ 91, %271 ], [ 92, %283 ], [ %110, %108 ], [ 102, %16 ]
  %113 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !23
  %115 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !23
  tail call void @do_jump_1(i32 noundef %112, ptr noundef %114, ptr noundef %116, ptr noundef %13, ptr noundef %14, i32 noundef %15) #8
  br label %334

117:                                              ; preds = %16
  %118 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !23
  %120 = tail call i32 @integer_onep(ptr noundef %119) #9
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %206, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !23
  %125 = load ptr, ptr @global_trees, align 16
  br label %126

126:                                              ; preds = %134, %122
  %127 = phi ptr [ %124, %122 ], [ %132, %134 ]
  %128 = load i64, ptr %127, align 8
  %129 = trunc i64 %128 to i16
  switch i16 %129, label %146 [
    i16 116, label %130
    i16 113, label %130
  ]

130:                                              ; preds = %126, %126
  %131 = getelementptr inbounds %struct.tree_exp, ptr %127, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !23
  %133 = icmp eq ptr %132, %125
  br i1 %133, label %146, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.tree_common, ptr %127, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !23
  %137 = getelementptr inbounds %struct.tree_type, ptr %136, i64 0, i32 6
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, 1023
  %140 = getelementptr inbounds %struct.tree_common, ptr %132, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !23
  %142 = getelementptr inbounds %struct.tree_type, ptr %141, i64 0, i32 6
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 1023
  %145 = icmp ugt i32 %139, %144
  br i1 %145, label %146, label %126, !llvm.loop !33

146:                                              ; preds = %126, %130, %134
  %147 = and i64 %128, 65535
  %148 = icmp eq i64 %147, 88
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.tree_exp, ptr %127, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !23
  %152 = tail call i32 @integer_onep(ptr noundef %151) #9
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.tree_exp, ptr %127, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !23
  %157 = tail call fastcc i32 @inv(i32 noundef %15) #8
  br label %158

158:                                              ; preds = %146, %149, %154
  %159 = phi ptr [ %156, %154 ], [ %127, %149 ], [ %127, %146 ]
  %160 = phi ptr [ %13, %154 ], [ %14, %149 ], [ %14, %146 ]
  %161 = phi ptr [ %14, %154 ], [ %13, %149 ], [ %13, %146 ]
  %162 = phi i32 [ %157, %154 ], [ %15, %149 ], [ %15, %146 ]
  %163 = load i64, ptr %159, align 8
  %164 = and i64 %163, 65535
  %165 = icmp eq i64 %164, 84
  br i1 %165, label %166, label %206

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.tree_exp, ptr %159, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !23
  %169 = getelementptr inbounds %struct.tree_exp, ptr %159, i64 1
  %170 = load ptr, ptr %169, align 8, !tbaa !23
  %171 = getelementptr inbounds %struct.tree_common, ptr %168, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !23
  %173 = load i64, ptr %170, align 8
  %174 = and i64 %173, 65535
  %175 = icmp eq i64 %174, 23
  br i1 %175, label %176, label %206

176:                                              ; preds = %166
  %177 = tail call i32 @compare_tree_int(ptr noundef nonnull %170, i64 noundef 0) #9
  %178 = icmp sgt i32 %177, -1
  br i1 %178, label %179, label %206

179:                                              ; preds = %176
  %180 = tail call i32 @compare_tree_int(ptr noundef nonnull %170, i64 noundef 64) #9
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %206

182:                                              ; preds = %179
  %183 = load i64, ptr %172, align 8
  %184 = and i64 %183, 65535
  %185 = icmp eq i64 %184, 14
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = tail call i32 @vector_type_mode(ptr noundef nonnull %172) #9
  br label %193

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.tree_type, ptr %172, i64 0, i32 6
  %190 = load i32, ptr %189, align 4
  %191 = lshr i32 %190, 16
  %192 = and i32 %191, 255
  br label %193

193:                                              ; preds = %188, %186
  %194 = phi i32 [ %187, %186 ], [ %192, %188 ]
  %195 = getelementptr inbounds %struct.tree_int_cst, ptr %170, i64 0, i32 1
  %196 = load i64, ptr %195, align 8, !tbaa !23
  %197 = trunc i64 %196 to i32
  %198 = tail call fastcc zeroext i8 @prefer_and_bit_test(i32 noundef %194, i32 noundef %197) #8, !range !35
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.tree_int_cst, ptr %170, i64 0, i32 1
  %202 = load i64, ptr %201, align 8, !tbaa !23
  %203 = shl nuw i64 1, %202
  %204 = tail call ptr @build_int_cst_wide_type(ptr noundef nonnull %172, i64 noundef %203, i64 noundef 0) #9
  %205 = tail call ptr @build2_stat(i32 noundef 89, ptr noundef nonnull %172, ptr noundef nonnull %168, ptr noundef %204) #9
  br label %56

206:                                              ; preds = %166, %176, %179, %193, %158, %117
  %207 = load ptr, ptr %118, align 8, !tbaa !23
  %208 = load i64, ptr %207, align 8
  %209 = and i64 %208, 65535
  %210 = icmp eq i64 %209, 23
  br i1 %210, label %211, label %253

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !23
  %214 = getelementptr inbounds %struct.tree_type, ptr %213, i64 0, i32 6
  %215 = load i32, ptr %214, align 4
  %216 = and i32 %215, 1023
  %217 = icmp ult i32 %216, 65
  br i1 %217, label %218, label %253

218:                                              ; preds = %211
  %219 = tail call i32 @tree_floor_log2(ptr noundef nonnull %207) #9
  %220 = icmp sgt i32 %219, -1
  br i1 %220, label %221, label %253

221:                                              ; preds = %218
  %222 = add nuw nsw i32 %219, 1
  %223 = tail call i32 @mode_for_size(i32 noundef %222, i32 noundef 2, i32 noundef 0) #9
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %253, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !36
  %227 = tail call ptr %226(i32 noundef %223, i32 noundef 1) #9
  %228 = icmp eq ptr %227, null
  br i1 %228, label %253, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.tree_type, ptr %227, i64 0, i32 6
  %231 = load i32, ptr %230, align 4
  %232 = and i32 %231, 1023
  %233 = load ptr, ptr %212, align 8, !tbaa !23
  %234 = getelementptr inbounds %struct.tree_type, ptr %233, i64 0, i32 6
  %235 = load i32, ptr %234, align 4
  %236 = and i32 %235, 1023
  %237 = icmp ult i32 %232, %236
  br i1 %237, label %238, label %253

238:                                              ; preds = %229
  %239 = load i64, ptr %227, align 8
  %240 = and i64 %239, 65535
  %241 = icmp eq i64 %240, 14
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = tail call i32 @vector_type_mode(ptr noundef nonnull %227) #9
  br label %247

244:                                              ; preds = %238
  %245 = lshr i32 %231, 16
  %246 = and i32 %245, 255
  br label %247

247:                                              ; preds = %244, %242
  %248 = phi i32 [ %243, %242 ], [ %246, %244 ]
  %249 = tail call i32 @have_insn_for(i32 noundef 48, i32 noundef %248) #9
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %247
  %252 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %227, ptr noundef nonnull %17) #9
  br label %50

253:                                              ; preds = %247, %229, %225, %221, %218, %211, %206
  %254 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %255 = load ptr, ptr %254, align 8, !tbaa !23
  %256 = getelementptr inbounds %struct.tree_type, ptr %255, i64 0, i32 6
  %257 = load i32, ptr %256, align 4
  %258 = and i32 %257, 1022
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %289

260:                                              ; preds = %253
  %261 = load ptr, ptr %118, align 8, !tbaa !23
  %262 = load i64, ptr %261, align 8
  %263 = and i64 %262, 65535
  %264 = icmp eq i64 %263, 23
  br i1 %264, label %289, label %265

265:                                              ; preds = %16, %260
  %266 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %267 = icmp ne i8 %266, 0
  %268 = load i32, ptr @ix86_branch_cost, align 4
  %269 = icmp sgt i32 %268, 3
  %270 = select i1 %267, i1 %269, i1 false
  br i1 %270, label %289, label %271

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !23
  %274 = load i64, ptr %273, align 8
  %275 = and i64 %274, 65536
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %111, label %289

277:                                              ; preds = %16, %16
  %278 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %279 = icmp ne i8 %278, 0
  %280 = load i32, ptr @ix86_branch_cost, align 4
  %281 = icmp sgt i32 %280, 3
  %282 = select i1 %279, i1 %281, i1 false
  br i1 %282, label %289, label %283

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %285 = load ptr, ptr %284, align 8, !tbaa !23
  %286 = load i64, ptr %285, align 8
  %287 = and i64 %286, 65536
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %111, label %289

289:                                              ; preds = %29, %29, %29, %29, %16, %34, %105, %277, %283, %265, %271, %253, %260
  %290 = call fastcc ptr @expand_normal(ptr noundef nonnull %17) #8
  call void @do_pending_stack_adjust() #8
  %291 = load i32, ptr %290, align 8
  %292 = and i32 %291, 65535
  %293 = icmp eq i32 %292, 39
  br i1 %293, label %294, label %306

294:                                              ; preds = %289
  %295 = and i32 %291, 268435456
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.rtx_def, ptr %290, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !23
  %300 = load i32, ptr %299, align 8
  %301 = and i32 %300, 65535
  %302 = icmp eq i32 %301, 37
  br i1 %302, label %306, label %303

303:                                              ; preds = %297, %294
  %304 = call ptr @copy_to_reg(ptr noundef nonnull %290) #9
  %305 = load i32, ptr %304, align 8
  br label %306

306:                                              ; preds = %297, %303, %289
  %307 = phi i32 [ %305, %303 ], [ %291, %289 ], [ %300, %297 ]
  %308 = phi ptr [ %304, %303 ], [ %290, %289 ], [ %299, %297 ]
  %309 = lshr i32 %307, 16
  %310 = and i32 %309, 255
  %311 = zext nneg i32 %310 to i64
  %312 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !21
  %314 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !23
  %316 = load i64, ptr %315, align 8
  %317 = trunc i64 %316 to i32
  %318 = lshr i32 %317, 21
  %319 = and i32 %318, 1
  call void @do_compare_rtx_and_jump(ptr noundef nonnull %308, ptr noundef %313, i32 noundef 80, i32 noundef %319, i32 noundef %310, ptr noundef null, ptr noundef %13, ptr noundef %14, i32 noundef %15) #8
  br label %334

320:                                              ; preds = %61, %66
  %321 = phi ptr [ null, %61 ], [ %67, %66 ]
  %322 = phi ptr [ %14, %61 ], [ %68, %66 ]
  %323 = phi ptr [ %13, %61 ], [ %69, %66 ]
  tail call void @do_pending_stack_adjust() #8
  %324 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !23
  tail call void @do_jump(ptr noundef %325, ptr noundef %62, ptr noundef null, i32 noundef -1) #8
  %326 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %327 = load ptr, ptr %326, align 8, !tbaa !23
  tail call void @do_jump(ptr noundef %327, ptr noundef %323, ptr noundef %322, i32 noundef %15) #8
  %328 = tail call ptr @emit_label(ptr noundef %62) #9
  %329 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1, i32 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !23
  tail call void @do_jump(ptr noundef %330, ptr noundef %323, ptr noundef %322, i32 noundef %15) #8
  %331 = icmp eq ptr %321, null
  br i1 %331, label %334, label %332

332:                                              ; preds = %320
  tail call void @do_pending_stack_adjust() #8
  %333 = tail call ptr @emit_label(ptr noundef nonnull %321) #9
  br label %334

334:                                              ; preds = %16, %23, %28, %106, %111, %306, %332, %320
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @inv(i32 noundef %0) unnamed_addr #5 {
  %2 = icmp eq i32 %0, -1
  %3 = sub nsw i32 10000, %0
  %4 = select i1 %2, i32 -1, i32 %3
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @jumpifnot_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = tail call fastcc i32 @inv(i32 noundef %4) #8
  tail call void @do_jump_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_jump_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #3 {
  switch i32 %0, label %277 [
    i32 101, label %7
    i32 102, label %84
    i32 97, label %161
    i32 98, label %185
    i32 99, label %210
    i32 100, label %234
    i32 104, label %259
    i32 103, label %260
    i32 105, label %261
    i32 106, label %262
    i32 107, label %263
    i32 108, label %264
    i32 109, label %265
    i32 110, label %266
    i32 91, label %267
    i32 92, label %272
  ]

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 14
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #9
  br label %20

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i32 [ %14, %13 ], [ %19, %15 ]
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !23
  %25 = icmp eq i8 %24, 11
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 191, ptr noundef nonnull @.str.1) #9
  br label %27

27:                                               ; preds = %20, %26
  %28 = load i64, ptr %9, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 14
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #9
  br label %38

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  br label %38

38:                                               ; preds = %33, %31
  %39 = phi i32 [ %32, %31 ], [ %37, %33 ]
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !23
  %43 = icmp eq i8 %42, 10
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #9
  br label %45

45:                                               ; preds = %38, %44
  %46 = tail call i32 @integer_zerop(ptr noundef %2) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc i32 @inv(i32 noundef %5) #8
  tail call void @do_jump(ptr noundef nonnull %1, ptr noundef %4, ptr noundef %3, i32 noundef %49) #8
  br label %283

50:                                               ; preds = %45
  %51 = load i64, ptr %9, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 14
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #9
  br label %61

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  br label %61

61:                                               ; preds = %56, %54
  %62 = phi i32 [ %55, %54 ], [ %60, %56 ]
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !23
  %66 = icmp eq i8 %65, 2
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load i64, ptr %9, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 14
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #9
  br label %78

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 255
  br label %78

78:                                               ; preds = %73, %71
  %79 = phi i32 [ %72, %71 ], [ %77, %73 ]
  %80 = tail call i32 @can_compare_p(i32 noundef 81, i32 noundef %79, i32 noundef 0) #9
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  tail call fastcc void @do_jump_by_parts_equality(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

83:                                               ; preds = %78, %61
  tail call fastcc void @do_compare_and_jump(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 81, i32 noundef 81, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

84:                                               ; preds = %6
  %85 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !23
  %87 = load i64, ptr %86, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 14
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = tail call i32 @vector_type_mode(ptr noundef nonnull %86) #9
  br label %97

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.tree_type, ptr %86, i64 0, i32 6
  %94 = load i32, ptr %93, align 4
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  br label %97

97:                                               ; preds = %92, %90
  %98 = phi i32 [ %91, %90 ], [ %96, %92 ]
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !23
  %102 = icmp eq i8 %101, 11
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 212, ptr noundef nonnull @.str.1) #9
  br label %104

104:                                              ; preds = %97, %103
  %105 = load i64, ptr %86, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 14
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = tail call i32 @vector_type_mode(ptr noundef nonnull %86) #9
  br label %115

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.tree_type, ptr %86, i64 0, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = lshr i32 %112, 16
  %114 = and i32 %113, 255
  br label %115

115:                                              ; preds = %110, %108
  %116 = phi i32 [ %109, %108 ], [ %114, %110 ]
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !23
  %120 = icmp eq i8 %119, 10
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 214, ptr noundef nonnull @.str.1) #9
  br label %122

122:                                              ; preds = %115, %121
  %123 = tail call i32 @integer_zerop(ptr noundef %2) #9
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  tail call void @do_jump(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

126:                                              ; preds = %122
  %127 = load i64, ptr %86, align 8
  %128 = and i64 %127, 65535
  %129 = icmp eq i64 %128, 14
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = tail call i32 @vector_type_mode(ptr noundef nonnull %86) #9
  br label %137

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.tree_type, ptr %86, i64 0, i32 6
  %134 = load i32, ptr %133, align 4
  %135 = lshr i32 %134, 16
  %136 = and i32 %135, 255
  br label %137

137:                                              ; preds = %132, %130
  %138 = phi i32 [ %131, %130 ], [ %136, %132 ]
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !23
  %142 = icmp eq i8 %141, 2
  br i1 %142, label %143, label %160

143:                                              ; preds = %137
  %144 = load i64, ptr %86, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 14
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = tail call i32 @vector_type_mode(ptr noundef nonnull %86) #9
  br label %154

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.tree_type, ptr %86, i64 0, i32 6
  %151 = load i32, ptr %150, align 4
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  br label %154

154:                                              ; preds = %149, %147
  %155 = phi i32 [ %148, %147 ], [ %153, %149 ]
  %156 = tail call i32 @can_compare_p(i32 noundef 80, i32 noundef %155, i32 noundef 0) #9
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = tail call fastcc i32 @inv(i32 noundef %5) #8
  tail call fastcc void @do_jump_by_parts_equality(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %4, ptr noundef %3, i32 noundef %159) #8
  br label %283

160:                                              ; preds = %154, %137
  tail call fastcc void @do_compare_and_jump(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 80, i32 noundef 80, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

161:                                              ; preds = %6
  %162 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !23
  %164 = load i64, ptr %163, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 14
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = tail call i32 @vector_type_mode(ptr noundef nonnull %163) #9
  br label %174

169:                                              ; preds = %161
  %170 = getelementptr inbounds %struct.tree_type, ptr %163, i64 0, i32 6
  %171 = load i32, ptr %170, align 4
  %172 = lshr i32 %171, 16
  %173 = and i32 %172, 255
  br label %174

174:                                              ; preds = %169, %167
  %175 = phi i32 [ %168, %167 ], [ %173, %169 ]
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !23
  %179 = icmp eq i8 %178, 2
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = tail call i32 @can_compare_p(i32 noundef 85, i32 noundef %175, i32 noundef 0) #9
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  tail call fastcc void @do_jump_by_parts_greater(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 1, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

184:                                              ; preds = %180, %174
  tail call fastcc void @do_compare_and_jump(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 85, i32 noundef 89, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

185:                                              ; preds = %6
  %186 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !23
  %188 = load i64, ptr %187, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 14
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = tail call i32 @vector_type_mode(ptr noundef nonnull %187) #9
  br label %198

193:                                              ; preds = %185
  %194 = getelementptr inbounds %struct.tree_type, ptr %187, i64 0, i32 6
  %195 = load i32, ptr %194, align 4
  %196 = lshr i32 %195, 16
  %197 = and i32 %196, 255
  br label %198

198:                                              ; preds = %193, %191
  %199 = phi i32 [ %192, %191 ], [ %197, %193 ]
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !23
  %203 = icmp eq i8 %202, 2
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = tail call i32 @can_compare_p(i32 noundef 84, i32 noundef %199, i32 noundef 0) #9
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = tail call fastcc i32 @inv(i32 noundef %5) #8
  tail call fastcc void @do_jump_by_parts_greater(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, ptr noundef %4, ptr noundef %3, i32 noundef %208) #8
  br label %283

209:                                              ; preds = %204, %198
  tail call fastcc void @do_compare_and_jump(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 84, i32 noundef 88, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

210:                                              ; preds = %6
  %211 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !23
  %213 = load i64, ptr %212, align 8
  %214 = and i64 %213, 65535
  %215 = icmp eq i64 %214, 14
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = tail call i32 @vector_type_mode(ptr noundef nonnull %212) #9
  br label %223

218:                                              ; preds = %210
  %219 = getelementptr inbounds %struct.tree_type, ptr %212, i64 0, i32 6
  %220 = load i32, ptr %219, align 4
  %221 = lshr i32 %220, 16
  %222 = and i32 %221, 255
  br label %223

223:                                              ; preds = %218, %216
  %224 = phi i32 [ %217, %216 ], [ %222, %218 ]
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !23
  %228 = icmp eq i8 %227, 2
  br i1 %228, label %229, label %233

229:                                              ; preds = %223
  %230 = tail call i32 @can_compare_p(i32 noundef 83, i32 noundef %224, i32 noundef 0) #9
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  tail call fastcc void @do_jump_by_parts_greater(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

233:                                              ; preds = %229, %223
  tail call fastcc void @do_compare_and_jump(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 83, i32 noundef 87, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

234:                                              ; preds = %6
  %235 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !23
  %237 = load i64, ptr %236, align 8
  %238 = and i64 %237, 65535
  %239 = icmp eq i64 %238, 14
  br i1 %239, label %240, label %242

240:                                              ; preds = %234
  %241 = tail call i32 @vector_type_mode(ptr noundef nonnull %236) #9
  br label %247

242:                                              ; preds = %234
  %243 = getelementptr inbounds %struct.tree_type, ptr %236, i64 0, i32 6
  %244 = load i32, ptr %243, align 4
  %245 = lshr i32 %244, 16
  %246 = and i32 %245, 255
  br label %247

247:                                              ; preds = %242, %240
  %248 = phi i32 [ %241, %240 ], [ %246, %242 ]
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !23
  %252 = icmp eq i8 %251, 2
  br i1 %252, label %253, label %258

253:                                              ; preds = %247
  %254 = tail call i32 @can_compare_p(i32 noundef 82, i32 noundef %248, i32 noundef 0) #9
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = tail call fastcc i32 @inv(i32 noundef %5) #8
  tail call fastcc void @do_jump_by_parts_greater(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 1, ptr noundef %4, ptr noundef %3, i32 noundef %257) #8
  br label %283

258:                                              ; preds = %253, %247
  tail call fastcc void @do_compare_and_jump(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 82, i32 noundef 86, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

259:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 91, i32 noundef 91, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

260:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 90, i32 noundef 90, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

261:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 96, i32 noundef 96, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

262:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 95, i32 noundef 95, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

263:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 94, i32 noundef 94, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

264:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 93, i32 noundef 93, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

265:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 92, i32 noundef 92, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

266:                                              ; preds = %6
  tail call fastcc void @do_compare_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 97, i32 noundef 97, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

267:                                              ; preds = %6
  %268 = icmp eq ptr %3, null
  br i1 %268, label %269, label %271

269:                                              ; preds = %267
  %270 = tail call ptr @gen_label_rtx() #9
  tail call void @do_jump(ptr noundef %1, ptr noundef %270, ptr noundef null, i32 noundef %5) #8
  tail call void @do_jump(ptr noundef %2, ptr noundef null, ptr noundef %4, i32 noundef %5) #8
  br label %278

271:                                              ; preds = %267
  tail call void @do_jump(ptr noundef %1, ptr noundef nonnull %3, ptr noundef null, i32 noundef %5) #8
  tail call void @do_jump(ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

272:                                              ; preds = %6
  %273 = icmp eq ptr %4, null
  br i1 %273, label %274, label %276

274:                                              ; preds = %272
  %275 = tail call ptr @gen_label_rtx() #9
  tail call void @do_jump(ptr noundef %1, ptr noundef null, ptr noundef %275, i32 noundef %5) #8
  tail call void @do_jump(ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %5) #8
  br label %278

276:                                              ; preds = %272
  tail call void @do_jump(ptr noundef %1, ptr noundef null, ptr noundef nonnull %4, i32 noundef %5) #8
  tail call void @do_jump(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) #8
  br label %283

277:                                              ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 341, ptr noundef nonnull @.str.1) #9
  br label %283

278:                                              ; preds = %274, %269
  %279 = phi ptr [ %275, %274 ], [ %270, %269 ]
  %280 = icmp eq ptr %279, null
  br i1 %280, label %283, label %281

281:                                              ; preds = %278
  tail call void @do_pending_stack_adjust() #8
  %282 = tail call ptr @emit_label(ptr noundef nonnull %279) #9
  br label %283

283:                                              ; preds = %125, %160, %158, %48, %83, %82, %183, %184, %207, %209, %232, %233, %256, %258, %259, %260, %261, %262, %263, %264, %265, %266, %271, %276, %277, %281, %278
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @jumpif(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  tail call void @do_jump(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @jumpif_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  tail call void @do_jump_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %3, i32 noundef %4) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @can_compare_p(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_jump_by_parts_equality(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #3 {
  %6 = tail call fastcc ptr @expand_normal(ptr noundef %0) #8
  %7 = tail call fastcc ptr @expand_normal(ptr noundef %1) #8
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 14
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #9
  br label %20

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i32 [ %14, %13 ], [ %19, %15 ]
  tail call fastcc void @do_jump_by_parts_equality_rtx(i32 noundef %21, ptr noundef %6, ptr noundef %7, ptr noundef %2, ptr noundef %3, i32 noundef %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_compare_and_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #3 {
  %8 = tail call fastcc ptr @expand_normal(ptr noundef %0) #8
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %88, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc ptr @expand_normal(ptr noundef %1) #8
  %14 = load i64, ptr %1, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %88, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 14
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = tail call i32 @vector_type_mode(ptr noundef nonnull %19) #9
  br label %30

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  br label %30

30:                                               ; preds = %25, %23
  %31 = phi i32 [ %24, %23 ], [ %29, %25 ]
  %32 = load i64, ptr %0, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 23
  br i1 %34, label %35, label %74

35:                                               ; preds = %30
  %36 = load i64, ptr %1, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 23
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = zext i32 %31 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !23
  %43 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !23
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 14
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #9
  br label %55

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  br label %55

55:                                               ; preds = %50, %48
  %56 = phi i32 [ %49, %48 ], [ %54, %50 ]
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !23
  %60 = icmp ugt i8 %42, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %55, %35
  %62 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !23
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 14
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = tail call i32 @vector_type_mode(ptr noundef nonnull %63) #9
  br label %74

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.tree_type, ptr %63, i64 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  br label %74

74:                                               ; preds = %67, %69, %55, %30
  %75 = phi i32 [ %31, %55 ], [ %31, %30 ], [ %68, %67 ], [ %73, %69 ]
  %76 = phi ptr [ %19, %55 ], [ %19, %30 ], [ %63, %67 ], [ %63, %69 ]
  %77 = load i64, ptr %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = lshr i32 %78, 21
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 %2, i32 %3
  %83 = icmp eq i32 %75, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = tail call ptr @expr_size(ptr noundef nonnull %0) #9
  br label %86

86:                                               ; preds = %74, %84
  %87 = phi ptr [ %85, %84 ], [ null, %74 ]
  tail call void @do_compare_rtx_and_jump(ptr noundef %8, ptr noundef %13, i32 noundef %82, i32 noundef %80, i32 noundef %75, ptr noundef %87, ptr noundef %4, ptr noundef %5, i32 noundef %6) #8
  br label %88

88:                                               ; preds = %12, %7, %86
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_jump_by_parts_greater(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #3 {
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, ptr %0, ptr %1
  %9 = tail call fastcc ptr @expand_normal(ptr noundef %8) #8
  %10 = select i1 %7, ptr %1, ptr %0
  %11 = tail call fastcc ptr @expand_normal(ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 14
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #9
  %19 = load ptr, ptr %12, align 8, !tbaa !23
  %20 = load i64, ptr %19, align 8
  br label %26

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i64 [ %20, %17 ], [ %14, %21 ]
  %28 = phi i32 [ %18, %17 ], [ %25, %21 ]
  %29 = trunc i64 %27 to i32
  %30 = lshr i32 %29, 21
  %31 = and i32 %30, 1
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %28, i32 noundef %31, ptr noundef %9, ptr noundef %11, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  ret void
}

; Function Attrs: optsize
declare ptr @gen_label_rtx() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_label(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @emit_jump(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @have_insn_for(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @prefer_and_bit_test(i32 noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr @and_test, align 8, !tbaa !21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call ptr @gen_rtx_REG(i32 noundef %0, i32 noundef 53) #9
  store ptr %6, ptr @and_reg, align 8, !tbaa !21
  %7 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %0, ptr noundef %6, ptr noundef null) #9
  store ptr %7, ptr @and_test, align 8, !tbaa !21
  %8 = load ptr, ptr @and_reg, align 8, !tbaa !21
  %9 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 67, i32 noundef %0, ptr noundef %8, ptr noundef null) #9
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !21
  %11 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %0, ptr noundef %9, ptr noundef %10) #9
  store ptr %11, ptr @shift_test, align 8, !tbaa !21
  br label %33

12:                                               ; preds = %2
  %13 = load ptr, ptr @and_reg, align 8, !tbaa !21
  %14 = load i32, ptr %13, align 8
  %15 = shl i32 %0, 16
  %16 = and i32 %15, 16711680
  %17 = and i32 %14, -16711681
  %18 = or disjoint i32 %17, %16
  store i32 %18, ptr %13, align 8
  %19 = load ptr, ptr @and_test, align 8, !tbaa !21
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, -16711681
  %22 = or disjoint i32 %21, %16
  store i32 %22, ptr %19, align 8
  %23 = load ptr, ptr @shift_test, align 8, !tbaa !21
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -16711681
  %26 = or disjoint i32 %25, %16
  store i32 %26, ptr %23, align 8
  %27 = load ptr, ptr @shift_test, align 8, !tbaa !21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !23
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, -16711681
  %32 = or disjoint i32 %31, %16
  store i32 %32, ptr %29, align 8
  br label %33

33:                                               ; preds = %12, %5
  %34 = zext nneg i32 %1 to i64
  %35 = shl nuw i64 1, %34
  %36 = tail call ptr @immed_double_const(i64 noundef %35, i64 noundef 0, i32 noundef %0) #9
  %37 = load ptr, ptr @and_test, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %36, ptr %38, align 8, !tbaa !23
  %39 = sext i32 %1 to i64
  %40 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %39) #9
  %41 = load ptr, ptr @shift_test, align 8, !tbaa !21
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !23
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %40, ptr %44, align 8, !tbaa !23
  %45 = load ptr, ptr @and_test, align 8, !tbaa !21
  %46 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %47 = tail call i32 @rtx_cost(ptr noundef %45, i32 noundef 47, i8 noundef zeroext %46) #9
  %48 = load ptr, ptr @shift_test, align 8, !tbaa !21
  %49 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %50 = tail call i32 @rtx_cost(ptr noundef %48, i32 noundef 47, i8 noundef zeroext %49) #9
  %51 = icmp sle i32 %47, %50
  %52 = zext i1 %51 to i8
  ret i8 %52
}

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_int_cst_wide_type(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @tree_floor_log2(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_normal(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_compare_rtx_and_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #3 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = icmp eq ptr %7, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @can_compare_p(i32 noundef %2, i32 noundef %4, i32 noundef 0) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %92

16:                                               ; preds = %13, %9
  %17 = zext i32 %4 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !23
  switch i8 %19, label %79 [
    i8 8, label %23
    i8 9, label %23
    i8 11, label %23
    i8 17, label %20
  ]

20:                                               ; preds = %16
  %21 = and i32 %2, -2
  %22 = icmp eq i32 %21, 90
  br i1 %22, label %77, label %30

23:                                               ; preds = %16, %16, %16
  %24 = and i32 %2, -2
  %25 = icmp eq i32 %24, 90
  br i1 %25, label %76, label %26

26:                                               ; preds = %23
  switch i8 %19, label %46 [
    i8 8, label %27
    i8 9, label %27
    i8 11, label %27
  ]

27:                                               ; preds = %26, %26, %26
  %28 = and i8 %19, -2
  %29 = icmp eq i8 %28, 8
  br i1 %29, label %34, label %30

30:                                               ; preds = %20, %27
  %31 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %17
  %32 = load i8, ptr %31, align 1, !tbaa !23
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i32 [ %4, %27 ], [ %33, %30 ]
  %36 = add i32 %35, -38
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct.real_format, ptr %39, i64 0, i32 11
  %41 = load i8, ptr %40, align 2, !tbaa !37
  %42 = icmp eq i8 %41, 0
  %43 = load i32, ptr @flag_finite_math_only, align 4
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %26, %34
  switch i32 %2, label %47 [
    i32 97, label %76
    i32 92, label %76
  ]

47:                                               ; preds = %46, %34
  %48 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !20
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %47
  switch i8 %19, label %73 [
    i8 8, label %51
    i8 9, label %51
    i8 11, label %51
    i8 17, label %51
  ]

51:                                               ; preds = %50, %50, %50, %50
  %52 = and i8 %19, -2
  %53 = icmp eq i8 %52, 8
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %17
  %56 = load i8, ptr %55, align 1, !tbaa !23
  %57 = zext i8 %56 to i32
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i32 [ %4, %51 ], [ %57, %54 ]
  %60 = add i32 %59, -38
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !21
  %64 = getelementptr inbounds %struct.real_format, ptr %63, i64 0, i32 11
  %65 = load i8, ptr %64, align 2, !tbaa !37
  %66 = icmp eq i8 %65, 0
  %67 = load i32, ptr @flag_finite_math_only, align 4
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %66, i1 true, i1 %68
  %70 = and i32 %2, -2
  %71 = icmp eq i32 %70, 80
  %72 = and i1 %71, %69
  br i1 %72, label %76, label %92

73:                                               ; preds = %50, %47
  %74 = and i32 %2, -2
  %75 = icmp eq i32 %74, 80
  br i1 %75, label %76, label %92

76:                                               ; preds = %23, %58, %46, %46, %73
  switch i8 %19, label %79 [
    i8 8, label %77
    i8 9, label %77
    i8 11, label %77
    i8 17, label %77
  ]

77:                                               ; preds = %20, %76, %76, %76, %76
  %78 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %2) #9
  br label %81

79:                                               ; preds = %16, %76
  %80 = tail call i32 @reverse_condition(i32 noundef %2) #9
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = tail call i32 @can_compare_p(i32 noundef %82, i32 noundef %4, i32 noundef 0) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = icmp eq i32 %2, 91
  br i1 %86, label %87, label %92

87:                                               ; preds = %85
  %88 = tail call i32 @can_compare_p(i32 noundef 91, i32 noundef %4, i32 noundef 0) #9
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87, %81
  %91 = tail call fastcc i32 @inv(i32 noundef %8) #8
  br label %92

92:                                               ; preds = %85, %87, %90, %73, %58, %13
  %93 = phi i32 [ %2, %13 ], [ %2, %73 ], [ %2, %58 ], [ %82, %90 ], [ 91, %87 ], [ %2, %85 ]
  %94 = phi ptr [ %6, %13 ], [ %6, %73 ], [ %6, %58 ], [ %7, %90 ], [ %6, %87 ], [ %6, %85 ]
  %95 = phi ptr [ %7, %13 ], [ %7, %73 ], [ %7, %58 ], [ %6, %90 ], [ %7, %87 ], [ %7, %85 ]
  %96 = phi i32 [ %8, %13 ], [ %8, %73 ], [ %8, %58 ], [ %91, %90 ], [ %8, %87 ], [ %8, %85 ]
  %97 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %0, ptr noundef %1) #9
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %92
  %100 = tail call i32 @swap_condition(i32 noundef %93) #9
  br label %101

101:                                              ; preds = %99, %92
  %102 = phi i32 [ %100, %99 ], [ %93, %92 ]
  %103 = phi ptr [ %0, %99 ], [ %1, %92 ]
  %104 = phi ptr [ %1, %99 ], [ %0, %92 ]
  tail call void @do_pending_stack_adjust() #8
  %105 = icmp eq i32 %3, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = tail call i32 @unsigned_condition(i32 noundef %102) #9
  br label %108

108:                                              ; preds = %101, %106
  %109 = phi i32 [ %107, %106 ], [ %102, %101 ]
  store i32 %109, ptr %10, align 4, !tbaa !20
  %110 = tail call ptr @simplify_relational_operation(i32 noundef %109, i32 noundef %4, i32 noundef 0, ptr noundef %104, ptr noundef %103) #9
  %111 = icmp eq ptr %110, null
  br i1 %111, label %144, label %112

112:                                              ; preds = %108
  %113 = load i32, ptr %110, align 8
  %114 = and i32 %113, 65535
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !20
  %118 = icmp eq i32 %117, 9
  br i1 %118, label %119, label %132

119:                                              ; preds = %112
  %120 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !21
  %121 = icmp eq ptr %110, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = sext i32 %4 to i64
  %124 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !21
  %126 = icmp eq ptr %110, %125
  %127 = select i1 %126, ptr %94, ptr %95
  br label %128

128:                                              ; preds = %122, %119
  %129 = phi ptr [ %94, %119 ], [ %127, %122 ]
  %130 = icmp eq ptr %129, null
  br i1 %130, label %290, label %131

131:                                              ; preds = %128
  tail call void @emit_jump(ptr noundef nonnull %129) #9
  br label %290

132:                                              ; preds = %112
  store i32 %114, ptr %10, align 4, !tbaa !20
  %133 = lshr i32 %113, 16
  %134 = and i32 %133, 255
  %135 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !23
  %137 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !23
  %139 = and i32 %113, 65534
  %140 = icmp eq i32 %139, 86
  %141 = icmp eq i32 %139, 88
  %142 = or i1 %140, %141
  %143 = zext i1 %142 to i32
  br label %144

144:                                              ; preds = %132, %108
  %145 = phi i32 [ %114, %132 ], [ %109, %108 ]
  %146 = phi i32 [ %134, %132 ], [ %4, %108 ]
  %147 = phi i32 [ %143, %132 ], [ %3, %108 ]
  %148 = phi ptr [ %138, %132 ], [ %103, %108 ]
  %149 = phi ptr [ %136, %132 ], [ %104, %108 ]
  %150 = icmp eq ptr %95, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = tail call ptr @gen_label_rtx() #9
  br label %153

153:                                              ; preds = %151, %144
  %154 = phi ptr [ %95, %144 ], [ %152, %151 ]
  %155 = phi ptr [ null, %144 ], [ %152, %151 ]
  %156 = zext i32 %146 to i64
  %157 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !23
  switch i8 %158, label %238 [
    i8 2, label %159
    i8 8, label %179
  ]

159:                                              ; preds = %153
  %160 = tail call i32 @can_compare_p(i32 noundef %145, i32 noundef %146, i32 noundef 0) #9
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %238

162:                                              ; preds = %159
  switch i32 %145, label %178 [
    i32 89, label %163
    i32 88, label %164
    i32 87, label %166
    i32 86, label %167
    i32 85, label %169
    i32 84, label %170
    i32 83, label %172
    i32 82, label %173
    i32 81, label %175
    i32 80, label %176
  ]

163:                                              ; preds = %162
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %146, i32 noundef 1, ptr noundef %148, ptr noundef %149, ptr noundef %94, ptr noundef %154, i32 noundef %96) #8
  br label %282

164:                                              ; preds = %162
  %165 = tail call fastcc i32 @inv(i32 noundef %96) #8
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %146, i32 noundef 1, ptr noundef %149, ptr noundef %148, ptr noundef %154, ptr noundef %94, i32 noundef %165) #8
  br label %282

166:                                              ; preds = %162
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %146, i32 noundef 1, ptr noundef %149, ptr noundef %148, ptr noundef %94, ptr noundef %154, i32 noundef %96) #8
  br label %282

167:                                              ; preds = %162
  %168 = tail call fastcc i32 @inv(i32 noundef %96) #8
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %146, i32 noundef 1, ptr noundef %148, ptr noundef %149, ptr noundef %154, ptr noundef %94, i32 noundef %168) #8
  br label %282

169:                                              ; preds = %162
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %146, i32 noundef 0, ptr noundef %148, ptr noundef %149, ptr noundef %94, ptr noundef %154, i32 noundef %96) #8
  br label %282

170:                                              ; preds = %162
  %171 = tail call fastcc i32 @inv(i32 noundef %96) #8
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %146, i32 noundef 0, ptr noundef %149, ptr noundef %148, ptr noundef %154, ptr noundef %94, i32 noundef %171) #8
  br label %282

172:                                              ; preds = %162
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %146, i32 noundef 0, ptr noundef %149, ptr noundef %148, ptr noundef %94, ptr noundef %154, i32 noundef %96) #8
  br label %282

173:                                              ; preds = %162
  %174 = tail call fastcc i32 @inv(i32 noundef %96) #8
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %146, i32 noundef 0, ptr noundef %148, ptr noundef %149, ptr noundef %154, ptr noundef %94, i32 noundef %174) #8
  br label %282

175:                                              ; preds = %162
  tail call fastcc void @do_jump_by_parts_equality_rtx(i32 noundef %146, ptr noundef %149, ptr noundef %148, ptr noundef %94, ptr noundef %154, i32 noundef %96) #8
  br label %282

176:                                              ; preds = %162
  %177 = tail call fastcc i32 @inv(i32 noundef %96) #8
  tail call fastcc void @do_jump_by_parts_equality_rtx(i32 noundef %146, ptr noundef %149, ptr noundef %148, ptr noundef %154, ptr noundef %94, i32 noundef %177) #8
  br label %282

178:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1023, ptr noundef nonnull @.str.1) #9
  br label %282

179:                                              ; preds = %153
  %180 = tail call i32 @can_compare_p(i32 noundef %145, i32 noundef %146, i32 noundef 0) #9
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = tail call i32 @swap_condition(i32 noundef %145) #9
  %184 = tail call i32 @can_compare_p(i32 noundef %183, i32 noundef %146, i32 noundef 0) #9
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %182
  %187 = tail call i32 @swap_condition(i32 noundef %145) #9
  br label %238

188:                                              ; preds = %182, %179
  %189 = tail call i32 @can_compare_p(i32 noundef %145, i32 noundef %146, i32 noundef 0) #9
  %190 = freeze i32 %189
  %191 = icmp ne i32 %190, 0
  %192 = and i32 %145, -2
  %193 = icmp eq i32 %192, 90
  %194 = or i1 %193, %191
  br i1 %194, label %238, label %195

195:                                              ; preds = %188
  %196 = tail call i32 @have_insn_for(i32 noundef 48, i32 noundef %146) #9
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = zext i32 %145 to i64
  %200 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !21
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %238

203:                                              ; preds = %198, %195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  %204 = call zeroext i8 @split_comparison(i32 noundef %145, i32 noundef %146, ptr noundef nonnull %11, ptr noundef nonnull %10) #8, !range !35
  %205 = add i32 %146, -38
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !21
  %209 = getelementptr inbounds %struct.real_format, ptr %208, i64 0, i32 11
  %210 = load i8, ptr %209, align 2, !tbaa !37
  %211 = icmp eq i8 %210, 0
  %212 = load i32, ptr @flag_finite_math_only, align 4
  %213 = icmp ne i32 %212, 0
  %214 = select i1 %211, i1 true, i1 %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %203
  %216 = load i32, ptr %11, align 4, !tbaa !20
  %217 = icmp eq i8 %204, 0
  %218 = select i1 %217, i32 90, i32 91
  %219 = icmp eq i32 %216, %218
  br i1 %219, label %235, label %220

220:                                              ; preds = %215
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1058, ptr noundef nonnull @.str.1) #9
  br label %235

221:                                              ; preds = %203
  %222 = icmp eq i8 %204, 0
  br i1 %222, label %233, label %223

223:                                              ; preds = %221
  %224 = icmp eq ptr %94, null
  br i1 %224, label %225, label %229

225:                                              ; preds = %223
  %226 = icmp eq ptr %155, null
  br i1 %226, label %227, label %229

227:                                              ; preds = %225
  %228 = tail call ptr @gen_label_rtx() #9
  br label %229

229:                                              ; preds = %223, %225, %227
  %230 = phi ptr [ %155, %225 ], [ %228, %227 ], [ %155, %223 ]
  %231 = phi ptr [ %155, %225 ], [ %228, %227 ], [ %94, %223 ]
  %232 = load i32, ptr %11, align 4, !tbaa !20
  tail call void @do_compare_rtx_and_jump(ptr noundef %149, ptr noundef %148, i32 noundef %232, i32 noundef %147, i32 noundef %146, ptr noundef %5, ptr noundef %231, ptr noundef null, i32 noundef %96) #8
  br label %235

233:                                              ; preds = %221
  %234 = load i32, ptr %11, align 4, !tbaa !20
  tail call void @do_compare_rtx_and_jump(ptr noundef %149, ptr noundef %148, i32 noundef %234, i32 noundef %147, i32 noundef %146, ptr noundef %5, ptr noundef null, ptr noundef %154, i32 noundef %96) #8
  br label %235

235:                                              ; preds = %220, %215, %229, %233
  %236 = phi ptr [ %155, %215 ], [ %155, %220 ], [ %230, %229 ], [ %155, %233 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  %237 = load i32, ptr %10, align 4, !tbaa !20
  br label %238

238:                                              ; preds = %153, %159, %188, %198, %235, %186
  %239 = phi i32 [ %237, %235 ], [ %145, %198 ], [ %187, %186 ], [ %145, %188 ], [ %145, %159 ], [ %145, %153 ]
  %240 = phi ptr [ %236, %235 ], [ %155, %198 ], [ %155, %186 ], [ %155, %188 ], [ %155, %159 ], [ %155, %153 ]
  %241 = phi ptr [ %148, %235 ], [ %148, %198 ], [ %149, %186 ], [ %148, %188 ], [ %148, %159 ], [ %148, %153 ]
  %242 = phi ptr [ %149, %235 ], [ %149, %198 ], [ %148, %186 ], [ %149, %188 ], [ %149, %159 ], [ %149, %153 ]
  %243 = tail call ptr @get_last_insn() #9
  tail call void @emit_cmp_and_jump_insns(ptr noundef %242, ptr noundef %241, i32 noundef %239, ptr noundef %5, i32 noundef %146, i32 noundef %147, ptr noundef %154) #9
  %244 = icmp eq i32 %96, -1
  br i1 %244, label %282, label %245

245:                                              ; preds = %238
  %246 = load ptr, ptr @cfun, align 8, !tbaa !21
  %247 = getelementptr inbounds %struct.function, ptr %246, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !39
  %249 = getelementptr inbounds %struct.control_flow_graph, ptr %248, i64 0, i32 7
  %250 = load i32, ptr %249, align 8, !tbaa !41
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %282, label %252

252:                                              ; preds = %245
  %253 = getelementptr inbounds %struct.rtx_def, ptr %243, i64 0, i32 1, i32 0, i32 0, i64 2
  %254 = load ptr, ptr %253, align 8, !tbaa !23
  br label %255

255:                                              ; preds = %265, %252
  %256 = phi ptr [ %254, %252 ], [ %260, %265 ]
  %257 = icmp eq ptr %256, null
  br i1 %257, label %270, label %258

258:                                              ; preds = %255
  %259 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1, i32 0, i32 0, i64 2
  %260 = load ptr, ptr %259, align 8, !tbaa !23
  %261 = icmp eq ptr %260, null
  %262 = load i32, ptr %256, align 8
  %263 = and i32 %262, 65535
  %264 = icmp eq i32 %263, 9
  br i1 %261, label %266, label %265

265:                                              ; preds = %258
  br i1 %264, label %270, label %255, !llvm.loop !43

266:                                              ; preds = %258
  br i1 %264, label %267, label %270

267:                                              ; preds = %266
  %268 = tail call i32 @any_condjump_p(ptr noundef nonnull %256) #9
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %265, %255, %267, %266
  %271 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %272 = icmp eq ptr %271, null
  br i1 %272, label %282, label %273

273:                                              ; preds = %270
  %274 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 31, i64 1, ptr nonnull %271)
  br label %282

275:                                              ; preds = %267
  %276 = tail call ptr @find_reg_note(ptr noundef nonnull %256, i32 noundef 13, ptr noundef null) #9
  %277 = icmp eq ptr %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %275
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1103, ptr noundef nonnull @.str.1) #9
  br label %279

279:                                              ; preds = %275, %278
  %280 = sext i32 %96 to i64
  %281 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %280) #9
  tail call void @add_reg_note(ptr noundef nonnull %256, i32 noundef 13, ptr noundef %281) #9
  br label %282

282:                                              ; preds = %238, %245, %270, %273, %279, %163, %164, %166, %167, %169, %170, %172, %173, %175, %176, %178
  %283 = phi ptr [ %240, %273 ], [ %240, %270 ], [ %240, %279 ], [ %240, %245 ], [ %240, %238 ], [ %155, %178 ], [ %155, %176 ], [ %155, %175 ], [ %155, %173 ], [ %155, %172 ], [ %155, %170 ], [ %155, %169 ], [ %155, %167 ], [ %155, %166 ], [ %155, %164 ], [ %155, %163 ]
  %284 = icmp eq ptr %94, null
  br i1 %284, label %286, label %285

285:                                              ; preds = %282
  tail call void @emit_jump(ptr noundef nonnull %94) #9
  br label %286

286:                                              ; preds = %285, %282
  %287 = icmp eq ptr %283, null
  br i1 %287, label %290, label %288

288:                                              ; preds = %286
  %289 = tail call ptr @emit_label(ptr noundef nonnull %283) #9
  br label %290

290:                                              ; preds = %286, %288, %128, %131
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @split_comparison(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 {
  switch i32 %0, label %44 [
    i32 85, label %5
    i32 84, label %6
    i32 83, label %7
    i32 82, label %8
    i32 81, label %9
    i32 80, label %10
    i32 96, label %11
    i32 95, label %12
    i32 94, label %13
    i32 93, label %14
    i32 92, label %15
    i32 97, label %16
  ]

5:                                                ; preds = %4
  store i32 91, ptr %2, align 4, !tbaa !20
  store i32 96, ptr %3, align 4, !tbaa !20
  br label %45

6:                                                ; preds = %4
  store i32 91, ptr %2, align 4, !tbaa !20
  store i32 95, ptr %3, align 4, !tbaa !20
  br label %45

7:                                                ; preds = %4
  store i32 91, ptr %2, align 4, !tbaa !20
  store i32 94, ptr %3, align 4, !tbaa !20
  br label %45

8:                                                ; preds = %4
  store i32 91, ptr %2, align 4, !tbaa !20
  store i32 93, ptr %3, align 4, !tbaa !20
  br label %45

9:                                                ; preds = %4
  store i32 91, ptr %2, align 4, !tbaa !20
  store i32 92, ptr %3, align 4, !tbaa !20
  br label %45

10:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !20
  store i32 97, ptr %3, align 4, !tbaa !20
  br label %45

11:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !20
  store i32 85, ptr %3, align 4, !tbaa !20
  br label %45

12:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !20
  store i32 84, ptr %3, align 4, !tbaa !20
  br label %45

13:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !20
  store i32 83, ptr %3, align 4, !tbaa !20
  br label %45

14:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !20
  store i32 82, ptr %3, align 4, !tbaa !20
  br label %45

15:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !20
  store i32 81, ptr %3, align 4, !tbaa !20
  br label %45

16:                                               ; preds = %4
  %17 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %16
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !23
  switch i8 %22, label %43 [
    i8 8, label %23
    i8 9, label %23
    i8 11, label %23
    i8 17, label %23
  ]

23:                                               ; preds = %19, %19, %19, %19
  %24 = and i8 %22, -2
  %25 = icmp eq i8 %24, 8
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %20
  %28 = load i8, ptr %27, align 1, !tbaa !23
  %29 = zext i8 %28 to i32
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i32 [ %1, %23 ], [ %29, %26 ]
  %32 = add i32 %31, -38
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !21
  %36 = getelementptr inbounds %struct.real_format, ptr %35, i64 0, i32 11
  %37 = load i8, ptr %36, align 2, !tbaa !37
  %38 = icmp eq i8 %37, 0
  %39 = load i32, ptr @flag_finite_math_only, align 4
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  store i32 85, ptr %2, align 4, !tbaa !20
  store i32 83, ptr %3, align 4, !tbaa !20
  br label %45

43:                                               ; preds = %19, %30, %16
  store i32 91, ptr %2, align 4, !tbaa !20
  store i32 80, ptr %3, align 4, !tbaa !20
  br label %45

44:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 876, ptr noundef nonnull @.str.1) #9
  br label %45

45:                                               ; preds = %44, %43, %42, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %46 = phi i8 [ 0, %44 ], [ 1, %43 ], [ 0, %42 ], [ 0, %15 ], [ 0, %14 ], [ 0, %13 ], [ 0, %12 ], [ 0, %11 ], [ 0, %10 ], [ 1, %9 ], [ 1, %8 ], [ 1, %7 ], [ 1, %6 ], [ 1, %5 ]
  ret i8 %46
}

; Function Attrs: optsize
declare i32 @reverse_condition_maybe_unordered(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @reverse_condition(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @swap_commutative_operands_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @swap_condition(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @unsigned_condition(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @simplify_relational_operation(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #3 {
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !23
  %11 = lshr i8 %10, 2
  %12 = zext nneg i8 %11 to i32
  %13 = icmp ne ptr %5, null
  %14 = icmp ne ptr %4, null
  %15 = and i1 %14, %13
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = tail call ptr @gen_label_rtx() #9
  br label %18

18:                                               ; preds = %7, %16
  %19 = phi ptr [ null, %7 ], [ %17, %16 ]
  %20 = select i1 %13, ptr %5, ptr %19
  %21 = select i1 %14, ptr %4, ptr %19
  %22 = icmp ult i8 %10, 4
  br i1 %22, label %37, label %23

23:                                               ; preds = %18, %23
  %24 = phi i32 [ %35, %23 ], [ 0, %18 ]
  %25 = xor i32 %24, -1
  %26 = add nsw i32 %25, %12
  %27 = tail call ptr @operand_subword_force(ptr noundef %2, i32 noundef %26, i32 noundef %0) #9
  %28 = tail call ptr @operand_subword_force(ptr noundef %3, i32 noundef %26, i32 noundef %0) #9
  %29 = or i32 %24, %1
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load i32, ptr @word_mode, align 4, !tbaa !20
  tail call void @do_compare_rtx_and_jump(ptr noundef %27, ptr noundef %28, i32 noundef 83, i32 noundef %31, i32 noundef %32, ptr noundef null, ptr noundef null, ptr noundef %20, i32 noundef %6) #8
  %33 = load i32, ptr @word_mode, align 4, !tbaa !20
  %34 = tail call fastcc i32 @inv(i32 noundef %6) #8
  tail call void @do_compare_rtx_and_jump(ptr noundef %27, ptr noundef %28, i32 noundef 80, i32 noundef %1, i32 noundef %33, ptr noundef null, ptr noundef null, ptr noundef %21, i32 noundef %34) #8
  %35 = add nuw nsw i32 %24, 1
  %36 = icmp eq i32 %35, %12
  br i1 %36, label %37, label %23, !llvm.loop !44

37:                                               ; preds = %23, %18
  %38 = icmp eq ptr %21, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void @emit_jump(ptr noundef nonnull %21) #9
  br label %40

40:                                               ; preds = %39, %37
  %41 = icmp eq ptr %19, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = tail call ptr @emit_label(ptr noundef nonnull %19) #9
  br label %44

44:                                               ; preds = %42, %40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_jump_by_parts_equality_rtx(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #3 {
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !23
  %10 = lshr i8 %9, 2
  %11 = zext nneg i8 %10 to i32
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !21
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call fastcc void @do_jump_by_parts_zero_rtx(i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %40

15:                                               ; preds = %6
  %16 = icmp eq ptr %12, %1
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call fastcc void @do_jump_by_parts_zero_rtx(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %40

18:                                               ; preds = %15
  %19 = icmp eq ptr %3, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = tail call ptr @gen_label_rtx() #9
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %3, %18 ], [ %21, %20 ]
  %24 = phi ptr [ null, %18 ], [ %21, %20 ]
  %25 = icmp ult i8 %9, 4
  br i1 %25, label %33, label %26

26:                                               ; preds = %22, %26
  %27 = phi i32 [ %31, %26 ], [ 0, %22 ]
  %28 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef %27, i32 noundef %0) #9
  %29 = tail call ptr @operand_subword_force(ptr noundef %2, i32 noundef %27, i32 noundef %0) #9
  %30 = load i32, ptr @word_mode, align 4, !tbaa !20
  tail call void @do_compare_rtx_and_jump(ptr noundef %28, ptr noundef %29, i32 noundef 81, i32 noundef 0, i32 noundef %30, ptr noundef null, ptr noundef %23, ptr noundef null, i32 noundef %5) #8
  %31 = add nuw nsw i32 %27, 1
  %32 = icmp eq i32 %31, %11
  br i1 %32, label %33, label %26, !llvm.loop !45

33:                                               ; preds = %26, %22
  %34 = icmp eq ptr %4, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  tail call void @emit_jump(ptr noundef nonnull %4) #9
  br label %36

36:                                               ; preds = %35, %33
  %37 = icmp eq ptr %24, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = tail call ptr @emit_label(ptr noundef nonnull %24) #9
  br label %40

40:                                               ; preds = %36, %38, %17, %14
  ret void
}

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #4

; Function Attrs: optsize
declare void @emit_cmp_and_jump_insns(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #4

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) #4

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @operand_subword_force(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_jump_by_parts_zero_rtx(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #3 {
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !23
  %9 = lshr i8 %8, 2
  %10 = zext nneg i8 %9 to i32
  %11 = load i32, ptr @word_mode, align 4, !tbaa !20
  %12 = tail call ptr @gen_reg_rtx(i32 noundef %11) #9
  %13 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef 0, i32 noundef %0) #9
  %14 = tail call ptr @emit_move_insn(ptr noundef %12, ptr noundef %13) #9
  %15 = icmp ugt i8 %8, 7
  %16 = icmp ne ptr %12, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %28

18:                                               ; preds = %5, %18
  %19 = phi i32 [ %24, %18 ], [ 1, %5 ]
  %20 = phi ptr [ %23, %18 ], [ %12, %5 ]
  %21 = load i32, ptr @word_mode, align 4, !tbaa !20
  %22 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef %19, i32 noundef %0) #9
  %23 = tail call ptr @expand_binop(i32 noundef %21, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef nonnull %20, ptr noundef %22, ptr noundef nonnull %20, i32 noundef 1, i32 noundef 2) #9
  %24 = add nuw nsw i32 %19, 1
  %25 = icmp ult i32 %24, %10
  %26 = icmp ne ptr %23, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %18, label %28, !llvm.loop !46

28:                                               ; preds = %18, %5
  %29 = phi ptr [ %12, %5 ], [ %23, %18 ]
  %30 = phi i1 [ %16, %5 ], [ %26, %18 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !21
  %33 = load i32, ptr @word_mode, align 4, !tbaa !20
  tail call void @do_compare_rtx_and_jump(ptr noundef nonnull %29, ptr noundef %32, i32 noundef 81, i32 noundef 1, i32 noundef %33, ptr noundef null, ptr noundef %2, ptr noundef %3, i32 noundef %4) #8
  br label %56

34:                                               ; preds = %28
  %35 = icmp eq ptr %2, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = tail call ptr @gen_label_rtx() #9
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %2, %34 ], [ %37, %36 ]
  %40 = phi ptr [ null, %34 ], [ %37, %36 ]
  %41 = icmp ult i8 %8, 4
  br i1 %41, label %49, label %42

42:                                               ; preds = %38, %42
  %43 = phi i32 [ %47, %42 ], [ 0, %38 ]
  %44 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef %43, i32 noundef %0) #9
  %45 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !21
  %46 = load i32, ptr @word_mode, align 4, !tbaa !20
  tail call void @do_compare_rtx_and_jump(ptr noundef %44, ptr noundef %45, i32 noundef 81, i32 noundef 1, i32 noundef %46, ptr noundef null, ptr noundef %39, ptr noundef null, i32 noundef %4) #8
  %47 = add nuw nsw i32 %43, 1
  %48 = icmp eq i32 %47, %10
  br i1 %48, label %49, label %42, !llvm.loop !47

49:                                               ; preds = %42, %38
  %50 = icmp eq ptr %3, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call void @emit_jump(ptr noundef nonnull %3) #9
  br label %52

52:                                               ; preds = %51, %49
  %53 = icmp eq ptr %40, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %52
  %55 = tail call ptr @emit_label(ptr noundef nonnull %40) #9
  br label %56

56:                                               ; preds = %52, %54, %31
  ret void
}

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @expr_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 0}
!6 = !{!"rtl_data", !7, i64 0, !12, i64 40, !13, i64 96, !14, i64 112, !16, i64 208, !17, i64 248, !8, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !18, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !8, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !11, i64 456, !9, i64 464, !9, i64 465, !9, i64 466, !9, i64 467, !9, i64 468, !9, i64 469, !9, i64 470, !9, i64 471, !9, i64 472, !9, i64 473, !9, i64 474, !9, i64 475, !9, i64 476, !9, i64 477, !9, i64 478, !9, i64 479, !9, i64 480, !9, i64 481, !9, i64 482, !9, i64 483, !9, i64 484, !9, i64 485}
!7 = !{!"expr_status", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!"emit_status", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !11, i64 48}
!13 = !{!"varasm_status", !11, i64 0, !8, i64 8}
!14 = !{!"incoming_args", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !15, i64 24, !11, i64 88}
!15 = !{!"ix86_args", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60}
!16 = !{!"function_subsections", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!17 = !{!"rtl_eh", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !9, i64 48}
!18 = !{!"long", !9, i64 0}
!19 = !{!6, !8, i64 8}
!20 = !{!8, !8, i64 0}
!21 = !{!11, !11, i64 0}
!22 = !{!6, !8, i64 4}
!23 = !{!9, !9, i64 0}
!24 = !{!25, !11, i64 456}
!25 = !{!"lang_hooks", !11, i64 0, !18, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !26, i64 240, !27, i64 248, !28, i64 256, !29, i64 272, !30, i64 432, !31, i64 560, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !11, i64 616, !11, i64 624, !11, i64 632, !11, i64 640, !11, i64 648, !11, i64 656, !11, i64 664, !9, i64 672}
!26 = !{!"lang_hooks_for_tree_inlining", !11, i64 0}
!27 = !{!"lang_hooks_for_callgraph", !11, i64 0}
!28 = !{!"lang_hooks_for_tree_dump", !11, i64 0, !11, i64 8}
!29 = !{!"lang_hooks_for_decls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152}
!30 = !{!"lang_hooks_for_types", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !9, i64 120}
!31 = !{!"lang_hooks_for_lto", !11, i64 0, !11, i64 8, !11, i64 16}
!32 = !{!18, !18, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{i8 0, i8 2}
!36 = !{!25, !11, i64 448}
!37 = !{!38, !9, i64 46}
!38 = !{!"real_format", !11, i64 0, !11, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !9, i64 44, !9, i64 45, !9, i64 46, !9, i64 47, !9, i64 48, !9, i64 49, !9, i64 50, !9, i64 51}
!39 = !{!40, !11, i64 8}
!40 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !11, i64 128, !8, i64 136, !8, i64 137, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139}
!41 = !{!42, !8, i64 48}
!42 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40, !8, i64 48, !9, i64 52, !9, i64 60, !8, i64 68, !8, i64 72}
!43 = distinct !{!43, !34}
!44 = distinct !{!44, !34}
!45 = distinct !{!45, !34}
!46 = distinct !{!46, !34}
!47 = distinct !{!47, !34}
