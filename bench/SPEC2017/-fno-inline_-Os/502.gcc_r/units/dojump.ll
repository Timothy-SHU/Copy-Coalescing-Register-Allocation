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
define dso_local void @init_pending_stack_adjust() local_unnamed_addr #0 !prof !98 {
  store i32 0, ptr @x_rtl, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @discard_pending_stack_adjust() local_unnamed_addr #1 !prof !113 {
  %1 = load i32, ptr @x_rtl, align 8, !tbaa !99
  %2 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !114
  %3 = sub nsw i32 %2, %1
  store i32 %3, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !114
  store i32 0, ptr @x_rtl, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_pending_stack_adjust() local_unnamed_addr #2 !prof !113 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !115
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %13, !prof !116

3:                                                ; preds = %0
  %4 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !115
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !116

6:                                                ; preds = %3
  %7 = load ptr, ptr @cfun, align 8, !tbaa !117
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
define dso_local void @do_pending_stack_adjust() local_unnamed_addr #3 !prof !118 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !119
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %10, !prof !120

3:                                                ; preds = %0
  %4 = load i32, ptr @x_rtl, align 8, !tbaa !99
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !120

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %7) #9
  tail call void @adjust_stack(ptr noundef %8) #9
  br label %9

9:                                                ; preds = %6, %3
  store i32 0, ptr @x_rtl, align 8, !tbaa !99
  br label %10

10:                                               ; preds = %9, %0
  ret void
}

; Function Attrs: optsize
declare void @adjust_stack(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @jumpifnot(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !98 {
  %4 = tail call fastcc i32 @inv(i32 noundef %2) #8
  tail call void @do_jump(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_jump(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 !prof !121 {
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
  ], !prof !122

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !123
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
  %31 = load ptr, ptr %30, align 8, !tbaa !123
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
  %37 = load ptr, ptr %36, align 8, !tbaa !123
  %38 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1023
  %41 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !123
  %43 = getelementptr inbounds %struct.tree_type, ptr %42, i64 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1023
  %46 = icmp ult i32 %40, %45
  br i1 %46, label %289, label %47

47:                                               ; preds = %34, %16, %16, %16, %16, %16
  %48 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !123
  br label %50

50:                                               ; preds = %47, %251
  %51 = phi ptr [ %49, %47 ], [ %252, %251 ]
  br label %16

52:                                               ; preds = %16
  %53 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !123
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
  store i32 0, ptr %10, align 4, !tbaa !115
  %72 = call ptr @get_inner_reference(ptr noundef nonnull %17, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %10, i8 noundef zeroext 0) #9
  %73 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !124
  %74 = load i64, ptr %5, align 8, !tbaa !132
  %75 = trunc i64 %74 to i32
  %76 = load i32, ptr %7, align 4, !tbaa !115
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
  %87 = load ptr, ptr %86, align 8, !tbaa !123
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
  %114 = load ptr, ptr %113, align 8, !tbaa !123
  %115 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !123
  tail call void @do_jump_1(i32 noundef %112, ptr noundef %114, ptr noundef %116, ptr noundef %13, ptr noundef %14, i32 noundef %15) #8
  br label %334

117:                                              ; preds = %16
  %118 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !123
  %120 = tail call i32 @integer_onep(ptr noundef %119) #9
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %206, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !123
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
  %132 = load ptr, ptr %131, align 8, !tbaa !123
  %133 = icmp eq ptr %132, %125
  br i1 %133, label %146, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.tree_common, ptr %127, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !123
  %137 = getelementptr inbounds %struct.tree_type, ptr %136, i64 0, i32 6
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, 1023
  %140 = getelementptr inbounds %struct.tree_common, ptr %132, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !123
  %142 = getelementptr inbounds %struct.tree_type, ptr %141, i64 0, i32 6
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 1023
  %145 = icmp ugt i32 %139, %144
  br i1 %145, label %146, label %126, !llvm.loop !133

146:                                              ; preds = %126, %130, %134
  %147 = and i64 %128, 65535
  %148 = icmp eq i64 %147, 88
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.tree_exp, ptr %127, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !123
  %152 = tail call i32 @integer_onep(ptr noundef %151) #9
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.tree_exp, ptr %127, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !123
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
  %168 = load ptr, ptr %167, align 8, !tbaa !123
  %169 = getelementptr inbounds %struct.tree_exp, ptr %159, i64 1
  %170 = load ptr, ptr %169, align 8, !tbaa !123
  %171 = getelementptr inbounds %struct.tree_common, ptr %168, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !123
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
  %196 = load i64, ptr %195, align 8, !tbaa !123
  %197 = trunc i64 %196 to i32
  %198 = tail call fastcc zeroext i8 @prefer_and_bit_test(i32 noundef %194, i32 noundef %197) #8, !range !135
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.tree_int_cst, ptr %170, i64 0, i32 1
  %202 = load i64, ptr %201, align 8, !tbaa !123
  %203 = shl nuw i64 1, %202
  %204 = tail call ptr @build_int_cst_wide_type(ptr noundef nonnull %172, i64 noundef %203, i64 noundef 0) #9
  %205 = tail call ptr @build2_stat(i32 noundef 89, ptr noundef nonnull %172, ptr noundef nonnull %168, ptr noundef %204) #9
  br label %56

206:                                              ; preds = %166, %176, %179, %193, %158, %117
  %207 = load ptr, ptr %118, align 8, !tbaa !123
  %208 = load i64, ptr %207, align 8
  %209 = and i64 %208, 65535
  %210 = icmp eq i64 %209, 23
  br i1 %210, label %211, label %253

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !123
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
  %226 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !136
  %227 = tail call ptr %226(i32 noundef %223, i32 noundef 1) #9
  %228 = icmp eq ptr %227, null
  br i1 %228, label %253, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.tree_type, ptr %227, i64 0, i32 6
  %231 = load i32, ptr %230, align 4
  %232 = and i32 %231, 1023
  %233 = load ptr, ptr %212, align 8, !tbaa !123
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
  %255 = load ptr, ptr %254, align 8, !tbaa !123
  %256 = getelementptr inbounds %struct.tree_type, ptr %255, i64 0, i32 6
  %257 = load i32, ptr %256, align 4
  %258 = and i32 %257, 1022
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %289

260:                                              ; preds = %253
  %261 = load ptr, ptr %118, align 8, !tbaa !123
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
  %273 = load ptr, ptr %272, align 8, !tbaa !123
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
  %285 = load ptr, ptr %284, align 8, !tbaa !123
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
  br i1 %293, label %294, label %306, !prof !137

294:                                              ; preds = %289
  %295 = and i32 %291, 268435456
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.rtx_def, ptr %290, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !123
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
  %313 = load ptr, ptr %312, align 8, !tbaa !117
  %314 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !123
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
  %325 = load ptr, ptr %324, align 8, !tbaa !123
  tail call void @do_jump(ptr noundef %325, ptr noundef %62, ptr noundef null, i32 noundef -1) #8
  %326 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %327 = load ptr, ptr %326, align 8, !tbaa !123
  tail call void @do_jump(ptr noundef %327, ptr noundef %323, ptr noundef %322, i32 noundef %15) #8
  %328 = tail call ptr @emit_label(ptr noundef %62) #9
  %329 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1, i32 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !123
  tail call void @do_jump(ptr noundef %330, ptr noundef %323, ptr noundef %322, i32 noundef %15) #8
  %331 = icmp eq ptr %321, null
  br i1 %331, label %334, label %332, !prof !138

332:                                              ; preds = %320
  tail call void @do_pending_stack_adjust() #8
  %333 = tail call ptr @emit_label(ptr noundef nonnull %321) #9
  br label %334

334:                                              ; preds = %16, %23, %28, %106, %111, %306, %332, %320
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @inv(i32 noundef %0) unnamed_addr #5 !prof !139 !PGOFuncName !140 {
  %2 = icmp eq i32 %0, -1
  %3 = sub nsw i32 10000, %0
  %4 = select i1 %2, i32 -1, i32 %3, !prof !141
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @jumpifnot_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 !prof !142 {
  %6 = tail call fastcc i32 @inv(i32 noundef %4) #8
  tail call void @do_jump_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %6) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_jump_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #3 !prof !143 {
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
  ], !prof !144

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !123
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 14
  br i1 %12, label %13, label %15, !prof !145

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
  %24 = load i8, ptr %23, align 1, !tbaa !123
  %25 = icmp eq i8 %24, 11
  br i1 %25, label %26, label %27, !prof !145

26:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 191, ptr noundef nonnull @.str.1) #9
  br label %27

27:                                               ; preds = %20, %26
  %28 = load i64, ptr %9, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 14
  br i1 %30, label %31, label %33, !prof !145

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
  %42 = load i8, ptr %41, align 1, !tbaa !123
  %43 = icmp eq i8 %42, 10
  br i1 %43, label %44, label %45, !prof !145

44:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #9
  br label %45

45:                                               ; preds = %38, %44
  %46 = tail call i32 @integer_zerop(ptr noundef %2) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48, !prof !146

48:                                               ; preds = %45
  %49 = tail call fastcc i32 @inv(i32 noundef %5) #8
  tail call void @do_jump(ptr noundef nonnull %1, ptr noundef %4, ptr noundef %3, i32 noundef %49) #8
  br label %283

50:                                               ; preds = %45
  %51 = load i64, ptr %9, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 14
  br i1 %53, label %54, label %56, !prof !147

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
  %65 = load i8, ptr %64, align 1, !tbaa !123
  %66 = icmp eq i8 %65, 2
  br i1 %66, label %67, label %83, !prof !148

67:                                               ; preds = %61
  %68 = load i64, ptr %9, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 14
  br i1 %70, label %71, label %73, !prof !147

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
  br i1 %81, label %82, label %83, !prof !147

82:                                               ; preds = %78
  tail call fastcc void @do_jump_by_parts_equality(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

83:                                               ; preds = %78, %61
  tail call fastcc void @do_compare_and_jump(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 81, i32 noundef 81, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

84:                                               ; preds = %6
  %85 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !123
  %87 = load i64, ptr %86, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 14
  br i1 %89, label %90, label %92, !prof !149

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
  %101 = load i8, ptr %100, align 1, !tbaa !123
  %102 = icmp eq i8 %101, 11
  br i1 %102, label %103, label %104, !prof !149

103:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 212, ptr noundef nonnull @.str.1) #9
  br label %104

104:                                              ; preds = %97, %103
  %105 = load i64, ptr %86, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 14
  br i1 %107, label %108, label %110, !prof !149

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
  %119 = load i8, ptr %118, align 1, !tbaa !123
  %120 = icmp eq i8 %119, 10
  br i1 %120, label %121, label %122, !prof !149

121:                                              ; preds = %115
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 214, ptr noundef nonnull @.str.1) #9
  br label %122

122:                                              ; preds = %115, %121
  %123 = tail call i32 @integer_zerop(ptr noundef %2) #9
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125, !prof !150

125:                                              ; preds = %122
  tail call void @do_jump(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

126:                                              ; preds = %122
  %127 = load i64, ptr %86, align 8
  %128 = and i64 %127, 65535
  %129 = icmp eq i64 %128, 14
  br i1 %129, label %130, label %132, !prof !151

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
  %141 = load i8, ptr %140, align 1, !tbaa !123
  %142 = icmp eq i8 %141, 2
  br i1 %142, label %143, label %160, !prof !152

143:                                              ; preds = %137
  %144 = load i64, ptr %86, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 14
  br i1 %146, label %147, label %149, !prof !151

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
  br i1 %157, label %158, label %160, !prof !151

158:                                              ; preds = %154
  %159 = tail call fastcc i32 @inv(i32 noundef %5) #8
  tail call fastcc void @do_jump_by_parts_equality(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %4, ptr noundef %3, i32 noundef %159) #8
  br label %283

160:                                              ; preds = %154, %137
  tail call fastcc void @do_compare_and_jump(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 80, i32 noundef 80, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

161:                                              ; preds = %6
  %162 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !123
  %164 = load i64, ptr %163, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 14
  br i1 %166, label %167, label %169, !prof !153

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
  %178 = load i8, ptr %177, align 1, !tbaa !123
  %179 = icmp eq i8 %178, 2
  br i1 %179, label %180, label %184, !prof !154

180:                                              ; preds = %174
  %181 = tail call i32 @can_compare_p(i32 noundef 85, i32 noundef %175, i32 noundef 0) #9
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184, !prof !153

183:                                              ; preds = %180
  tail call fastcc void @do_jump_by_parts_greater(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 1, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

184:                                              ; preds = %180, %174
  tail call fastcc void @do_compare_and_jump(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 85, i32 noundef 89, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

185:                                              ; preds = %6
  %186 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !123
  %188 = load i64, ptr %187, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 14
  br i1 %190, label %191, label %193, !prof !155

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
  %202 = load i8, ptr %201, align 1, !tbaa !123
  %203 = icmp eq i8 %202, 2
  br i1 %203, label %204, label %209, !prof !156

204:                                              ; preds = %198
  %205 = tail call i32 @can_compare_p(i32 noundef 84, i32 noundef %199, i32 noundef 0) #9
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %209, !prof !155

207:                                              ; preds = %204
  %208 = tail call fastcc i32 @inv(i32 noundef %5) #8
  tail call fastcc void @do_jump_by_parts_greater(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, ptr noundef %4, ptr noundef %3, i32 noundef %208) #8
  br label %283

209:                                              ; preds = %204, %198
  tail call fastcc void @do_compare_and_jump(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 84, i32 noundef 88, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  br label %283

210:                                              ; preds = %6
  %211 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !123
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
  %227 = load i8, ptr %226, align 1, !tbaa !123
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
  %236 = load ptr, ptr %235, align 8, !tbaa !123
  %237 = load i64, ptr %236, align 8
  %238 = and i64 %237, 65535
  %239 = icmp eq i64 %238, 14
  br i1 %239, label %240, label %242, !prof !157

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
  %251 = load i8, ptr %250, align 1, !tbaa !123
  %252 = icmp eq i8 %251, 2
  br i1 %252, label %253, label %258, !prof !158

253:                                              ; preds = %247
  %254 = tail call i32 @can_compare_p(i32 noundef 82, i32 noundef %248, i32 noundef 0) #9
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %258, !prof !157

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
  br i1 %273, label %274, label %276, !prof !159

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
  br i1 %280, label %283, label %281, !prof !138

281:                                              ; preds = %278
  tail call void @do_pending_stack_adjust() #8
  %282 = tail call ptr @emit_label(ptr noundef nonnull %279) #9
  br label %283

283:                                              ; preds = %125, %160, %158, %48, %83, %82, %183, %184, %207, %209, %232, %233, %256, %258, %259, %260, %261, %262, %263, %264, %265, %266, %271, %276, %277, %281, %278
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @jumpif(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !98 {
  tail call void @do_jump(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @jumpif_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 !prof !160 {
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
define internal fastcc void @do_jump_by_parts_equality(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #3 !prof !98 !PGOFuncName !161 {
  %6 = tail call fastcc ptr @expand_normal(ptr noundef %0) #8
  %7 = tail call fastcc ptr @expand_normal(ptr noundef %1) #8
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !123
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
define internal fastcc void @do_compare_and_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #3 !prof !162 !PGOFuncName !163 {
  %8 = tail call fastcc ptr @expand_normal(ptr noundef %0) #8
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %88, label %12, !prof !164

12:                                               ; preds = %7
  %13 = tail call fastcc ptr @expand_normal(ptr noundef %1) #8
  %14 = load i64, ptr %1, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %88, label %17, !prof !164

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !123
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 14
  br i1 %22, label %23, label %25, !prof !164

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
  br i1 %34, label %35, label %74, !prof !164

35:                                               ; preds = %30
  %36 = load i64, ptr %1, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 23
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = zext i32 %31 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !123
  %43 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !123
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
  %59 = load i8, ptr %58, align 1, !tbaa !123
  %60 = icmp ugt i8 %42, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %55, %35
  %62 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !123
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
  %82 = select i1 %81, i32 %2, i32 %3, !prof !165
  %83 = icmp eq i32 %75, 1
  br i1 %83, label %84, label %86, !prof !164

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
define internal fastcc void @do_jump_by_parts_greater(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #3 !prof !98 !PGOFuncName !166 {
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, ptr %0, ptr %1
  %9 = tail call fastcc ptr @expand_normal(ptr noundef %8) #8
  %10 = select i1 %7, ptr %1, ptr %0
  %11 = tail call fastcc ptr @expand_normal(ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !123
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 14
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #9
  %19 = load ptr, ptr %12, align 8, !tbaa !123
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
define internal fastcc zeroext i8 @prefer_and_bit_test(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !prof !98 !PGOFuncName !167 {
  %3 = load ptr, ptr @and_test, align 8, !tbaa !117
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call ptr @gen_rtx_REG(i32 noundef %0, i32 noundef 53) #9
  store ptr %6, ptr @and_reg, align 8, !tbaa !117
  %7 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %0, ptr noundef %6, ptr noundef null) #9
  store ptr %7, ptr @and_test, align 8, !tbaa !117
  %8 = load ptr, ptr @and_reg, align 8, !tbaa !117
  %9 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 67, i32 noundef %0, ptr noundef %8, ptr noundef null) #9
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !117
  %11 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %0, ptr noundef %9, ptr noundef %10) #9
  store ptr %11, ptr @shift_test, align 8, !tbaa !117
  br label %33

12:                                               ; preds = %2
  %13 = load ptr, ptr @and_reg, align 8, !tbaa !117
  %14 = load i32, ptr %13, align 8
  %15 = shl i32 %0, 16
  %16 = and i32 %15, 16711680
  %17 = and i32 %14, -16711681
  %18 = or disjoint i32 %17, %16
  store i32 %18, ptr %13, align 8
  %19 = load ptr, ptr @and_test, align 8, !tbaa !117
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, -16711681
  %22 = or disjoint i32 %21, %16
  store i32 %22, ptr %19, align 8
  %23 = load ptr, ptr @shift_test, align 8, !tbaa !117
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -16711681
  %26 = or disjoint i32 %25, %16
  store i32 %26, ptr %23, align 8
  %27 = load ptr, ptr @shift_test, align 8, !tbaa !117
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !123
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, -16711681
  %32 = or disjoint i32 %31, %16
  store i32 %32, ptr %29, align 8
  br label %33

33:                                               ; preds = %12, %5
  %34 = zext nneg i32 %1 to i64
  %35 = shl nuw i64 1, %34
  %36 = tail call ptr @immed_double_const(i64 noundef %35, i64 noundef 0, i32 noundef %0) #9
  %37 = load ptr, ptr @and_test, align 8, !tbaa !117
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %36, ptr %38, align 8, !tbaa !123
  %39 = sext i32 %1 to i64
  %40 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %39) #9
  %41 = load ptr, ptr @shift_test, align 8, !tbaa !117
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !123
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %40, ptr %44, align 8, !tbaa !123
  %45 = load ptr, ptr @and_test, align 8, !tbaa !117
  %46 = tail call zeroext i8 @optimize_insn_for_speed_p() #9
  %47 = tail call i32 @rtx_cost(ptr noundef %45, i32 noundef 47, i8 noundef zeroext %46) #9
  %48 = load ptr, ptr @shift_test, align 8, !tbaa !117
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
define internal fastcc ptr @expand_normal(ptr noundef %0) unnamed_addr #3 !prof !168 !PGOFuncName !169 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_compare_rtx_and_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #3 !prof !170 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = icmp eq ptr %7, null
  br i1 %12, label %16, label %13, !prof !171

13:                                               ; preds = %9
  %14 = tail call i32 @can_compare_p(i32 noundef %2, i32 noundef %4, i32 noundef 0) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %87, !prof !172

16:                                               ; preds = %13, %9
  %17 = zext i32 %4 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !123
  switch i8 %19, label %74 [
    i8 8, label %20
    i8 9, label %20
    i8 11, label %20
    i8 17, label %20
  ], !prof !173

20:                                               ; preds = %16, %16, %16, %16
  %21 = and i32 %2, -2
  %22 = icmp eq i32 %21, 90
  br i1 %22, label %71, label %23

23:                                               ; preds = %20
  switch i8 %19, label %43 [
    i8 8, label %24
    i8 9, label %24
    i8 11, label %24
    i8 17, label %24
  ]

24:                                               ; preds = %23, %23, %23, %23
  %25 = and i8 %19, -2
  %26 = icmp eq i8 %25, 8
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %17
  %29 = load i8, ptr %28, align 1, !tbaa !123
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i32 [ %4, %24 ], [ %30, %27 ]
  %33 = add i32 %32, -38
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !117
  %37 = getelementptr inbounds %struct.real_format, ptr %36, i64 0, i32 11
  %38 = load i8, ptr %37, align 2, !tbaa !174
  %39 = icmp eq i8 %38, 0
  %40 = load i32, ptr @flag_finite_math_only, align 4
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %23, %31
  switch i32 %2, label %44 [
    i32 97, label %71
    i32 92, label %71
  ]

44:                                               ; preds = %43, %31
  %45 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !115
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %69, label %47

47:                                               ; preds = %44
  switch i8 %19, label %69 [
    i8 8, label %48
    i8 9, label %48
    i8 11, label %48
    i8 17, label %48
  ]

48:                                               ; preds = %47, %47, %47, %47
  %49 = and i8 %19, -2
  %50 = icmp eq i8 %49, 8
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %17
  %53 = load i8, ptr %52, align 1, !tbaa !123
  %54 = zext i8 %53 to i32
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i32 [ %4, %48 ], [ %54, %51 ]
  %57 = add i32 %56, -38
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !117
  %61 = getelementptr inbounds %struct.real_format, ptr %60, i64 0, i32 11
  %62 = load i8, ptr %61, align 2, !tbaa !174
  %63 = icmp eq i8 %62, 0
  %64 = load i32, ptr @flag_finite_math_only, align 4
  %65 = icmp ne i32 %64, 0
  %66 = select i1 %63, i1 true, i1 %65
  %67 = icmp eq i32 %21, 80
  %68 = and i1 %67, %66
  br i1 %68, label %71, label %87

69:                                               ; preds = %47, %44
  %70 = icmp eq i32 %21, 80
  br i1 %70, label %71, label %87

71:                                               ; preds = %55, %43, %43, %69, %20
  switch i8 %19, label %74 [
    i8 8, label %72
    i8 9, label %72
    i8 11, label %72
    i8 17, label %72
  ], !prof !176

72:                                               ; preds = %71, %71, %71, %71
  %73 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %2) #9
  br label %76

74:                                               ; preds = %16, %71
  %75 = tail call i32 @reverse_condition(i32 noundef %2) #9
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = tail call i32 @can_compare_p(i32 noundef %77, i32 noundef %4, i32 noundef 0) #9
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85, !prof !177

80:                                               ; preds = %76
  %81 = icmp eq i32 %2, 91
  br i1 %81, label %82, label %87

82:                                               ; preds = %80
  %83 = tail call i32 @can_compare_p(i32 noundef 91, i32 noundef %4, i32 noundef 0) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82, %76
  %86 = tail call fastcc i32 @inv(i32 noundef %8) #8
  br label %87

87:                                               ; preds = %80, %82, %85, %69, %55, %13
  %88 = phi i32 [ %2, %13 ], [ %2, %69 ], [ %2, %55 ], [ %77, %85 ], [ 91, %82 ], [ %2, %80 ]
  %89 = phi ptr [ %6, %13 ], [ %6, %69 ], [ %6, %55 ], [ %7, %85 ], [ %6, %82 ], [ %6, %80 ]
  %90 = phi ptr [ %7, %13 ], [ %7, %69 ], [ %7, %55 ], [ %6, %85 ], [ %7, %82 ], [ %7, %80 ]
  %91 = phi i32 [ %8, %13 ], [ %8, %69 ], [ %8, %55 ], [ %86, %85 ], [ %8, %82 ], [ %8, %80 ]
  %92 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %0, ptr noundef %1) #9
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %96, label %94, !prof !178

94:                                               ; preds = %87
  %95 = tail call i32 @swap_condition(i32 noundef %88) #9
  br label %96

96:                                               ; preds = %94, %87
  %97 = phi i32 [ %95, %94 ], [ %88, %87 ]
  %98 = phi ptr [ %0, %94 ], [ %1, %87 ]
  %99 = phi ptr [ %1, %94 ], [ %0, %87 ]
  tail call void @do_pending_stack_adjust() #8
  %100 = icmp eq i32 %3, 0
  br i1 %100, label %103, label %101, !prof !179

101:                                              ; preds = %96
  %102 = tail call i32 @unsigned_condition(i32 noundef %97) #9
  br label %103

103:                                              ; preds = %96, %101
  %104 = phi i32 [ %102, %101 ], [ %97, %96 ]
  store i32 %104, ptr %10, align 4, !tbaa !115
  %105 = tail call ptr @simplify_relational_operation(i32 noundef %104, i32 noundef %4, i32 noundef 0, ptr noundef %99, ptr noundef %98) #9
  %106 = icmp eq ptr %105, null
  br i1 %106, label %139, label %107, !prof !178

107:                                              ; preds = %103
  %108 = load i32, ptr %105, align 8
  %109 = and i32 %108, 65535
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !115
  %113 = icmp eq i32 %112, 9
  br i1 %113, label %114, label %127

114:                                              ; preds = %107
  %115 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !117
  %116 = icmp eq ptr %105, %115
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = sext i32 %4 to i64
  %119 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !117
  %121 = icmp eq ptr %105, %120
  %122 = select i1 %121, ptr %89, ptr %90
  br label %123

123:                                              ; preds = %117, %114
  %124 = phi ptr [ %89, %114 ], [ %122, %117 ]
  %125 = icmp eq ptr %124, null
  br i1 %125, label %285, label %126

126:                                              ; preds = %123
  tail call void @emit_jump(ptr noundef nonnull %124) #9
  br label %285

127:                                              ; preds = %107
  store i32 %109, ptr %10, align 4, !tbaa !115
  %128 = lshr i32 %108, 16
  %129 = and i32 %128, 255
  %130 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !123
  %132 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !123
  %134 = and i32 %108, 65534
  %135 = icmp eq i32 %134, 86
  %136 = icmp eq i32 %134, 88
  %137 = or i1 %135, %136
  %138 = zext i1 %137 to i32
  br label %139

139:                                              ; preds = %127, %103
  %140 = phi i32 [ %109, %127 ], [ %104, %103 ]
  %141 = phi i32 [ %129, %127 ], [ %4, %103 ]
  %142 = phi i32 [ %138, %127 ], [ %3, %103 ]
  %143 = phi ptr [ %133, %127 ], [ %98, %103 ]
  %144 = phi ptr [ %131, %127 ], [ %99, %103 ]
  %145 = icmp eq ptr %90, null
  br i1 %145, label %146, label %148, !prof !180

146:                                              ; preds = %139
  %147 = tail call ptr @gen_label_rtx() #9
  br label %148

148:                                              ; preds = %146, %139
  %149 = phi ptr [ %90, %139 ], [ %147, %146 ]
  %150 = phi ptr [ null, %139 ], [ %147, %146 ]
  %151 = zext i32 %141 to i64
  %152 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !123
  switch i8 %153, label %233 [
    i8 2, label %154
    i8 8, label %174
  ], !prof !181

154:                                              ; preds = %148
  %155 = tail call i32 @can_compare_p(i32 noundef %140, i32 noundef %141, i32 noundef 0) #9
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %233, !prof !180

157:                                              ; preds = %154
  switch i32 %140, label %173 [
    i32 89, label %158
    i32 88, label %159
    i32 87, label %161
    i32 86, label %162
    i32 85, label %164
    i32 84, label %165
    i32 83, label %167
    i32 82, label %168
    i32 81, label %170
    i32 80, label %171
  ]

158:                                              ; preds = %157
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %141, i32 noundef 1, ptr noundef %143, ptr noundef %144, ptr noundef %89, ptr noundef %149, i32 noundef %91) #8
  br label %277

159:                                              ; preds = %157
  %160 = tail call fastcc i32 @inv(i32 noundef %91) #8
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %141, i32 noundef 1, ptr noundef %144, ptr noundef %143, ptr noundef %149, ptr noundef %89, i32 noundef %160) #8
  br label %277

161:                                              ; preds = %157
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %141, i32 noundef 1, ptr noundef %144, ptr noundef %143, ptr noundef %89, ptr noundef %149, i32 noundef %91) #8
  br label %277

162:                                              ; preds = %157
  %163 = tail call fastcc i32 @inv(i32 noundef %91) #8
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %141, i32 noundef 1, ptr noundef %143, ptr noundef %144, ptr noundef %149, ptr noundef %89, i32 noundef %163) #8
  br label %277

164:                                              ; preds = %157
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %141, i32 noundef 0, ptr noundef %143, ptr noundef %144, ptr noundef %89, ptr noundef %149, i32 noundef %91) #8
  br label %277

165:                                              ; preds = %157
  %166 = tail call fastcc i32 @inv(i32 noundef %91) #8
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %141, i32 noundef 0, ptr noundef %144, ptr noundef %143, ptr noundef %149, ptr noundef %89, i32 noundef %166) #8
  br label %277

167:                                              ; preds = %157
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %141, i32 noundef 0, ptr noundef %144, ptr noundef %143, ptr noundef %89, ptr noundef %149, i32 noundef %91) #8
  br label %277

168:                                              ; preds = %157
  %169 = tail call fastcc i32 @inv(i32 noundef %91) #8
  tail call fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %141, i32 noundef 0, ptr noundef %143, ptr noundef %144, ptr noundef %149, ptr noundef %89, i32 noundef %169) #8
  br label %277

170:                                              ; preds = %157
  tail call fastcc void @do_jump_by_parts_equality_rtx(i32 noundef %141, ptr noundef %144, ptr noundef %143, ptr noundef %89, ptr noundef %149, i32 noundef %91) #8
  br label %277

171:                                              ; preds = %157
  %172 = tail call fastcc i32 @inv(i32 noundef %91) #8
  tail call fastcc void @do_jump_by_parts_equality_rtx(i32 noundef %141, ptr noundef %144, ptr noundef %143, ptr noundef %149, ptr noundef %89, i32 noundef %172) #8
  br label %277

173:                                              ; preds = %157
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1023, ptr noundef nonnull @.str.1) #9
  br label %277

174:                                              ; preds = %148
  %175 = tail call i32 @can_compare_p(i32 noundef %140, i32 noundef %141, i32 noundef 0) #9
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = tail call i32 @swap_condition(i32 noundef %140) #9
  %179 = tail call i32 @can_compare_p(i32 noundef %178, i32 noundef %141, i32 noundef 0) #9
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %177
  %182 = tail call i32 @swap_condition(i32 noundef %140) #9
  br label %233

183:                                              ; preds = %177, %174
  %184 = tail call i32 @can_compare_p(i32 noundef %140, i32 noundef %141, i32 noundef 0) #9
  %185 = freeze i32 %184
  %186 = icmp ne i32 %185, 0
  %187 = and i32 %140, -2
  %188 = icmp eq i32 %187, 90
  %189 = or i1 %188, %186
  br i1 %189, label %233, label %190

190:                                              ; preds = %183
  %191 = tail call i32 @have_insn_for(i32 noundef 48, i32 noundef %141) #9
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = zext i32 %140 to i64
  %195 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !117
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %233

198:                                              ; preds = %193, %190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  %199 = call zeroext i8 @split_comparison(i32 noundef %140, i32 noundef %141, ptr noundef nonnull %11, ptr noundef nonnull %10) #8, !range !135
  %200 = add i32 %141, -38
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !117
  %204 = getelementptr inbounds %struct.real_format, ptr %203, i64 0, i32 11
  %205 = load i8, ptr %204, align 2, !tbaa !174
  %206 = icmp eq i8 %205, 0
  %207 = load i32, ptr @flag_finite_math_only, align 4
  %208 = icmp ne i32 %207, 0
  %209 = select i1 %206, i1 true, i1 %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %198
  %211 = load i32, ptr %11, align 4, !tbaa !115
  %212 = icmp eq i8 %199, 0
  %213 = select i1 %212, i32 90, i32 91
  %214 = icmp eq i32 %211, %213
  br i1 %214, label %230, label %215

215:                                              ; preds = %210
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1058, ptr noundef nonnull @.str.1) #9
  br label %230

216:                                              ; preds = %198
  %217 = icmp eq i8 %199, 0
  br i1 %217, label %228, label %218

218:                                              ; preds = %216
  %219 = icmp eq ptr %89, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %218
  %221 = icmp eq ptr %150, null
  br i1 %221, label %222, label %224

222:                                              ; preds = %220
  %223 = tail call ptr @gen_label_rtx() #9
  br label %224

224:                                              ; preds = %218, %220, %222
  %225 = phi ptr [ %150, %220 ], [ %223, %222 ], [ %150, %218 ]
  %226 = phi ptr [ %150, %220 ], [ %223, %222 ], [ %89, %218 ]
  %227 = load i32, ptr %11, align 4, !tbaa !115
  tail call void @do_compare_rtx_and_jump(ptr noundef %144, ptr noundef %143, i32 noundef %227, i32 noundef %142, i32 noundef %141, ptr noundef %5, ptr noundef %226, ptr noundef null, i32 noundef %91) #8
  br label %230

228:                                              ; preds = %216
  %229 = load i32, ptr %11, align 4, !tbaa !115
  tail call void @do_compare_rtx_and_jump(ptr noundef %144, ptr noundef %143, i32 noundef %229, i32 noundef %142, i32 noundef %141, ptr noundef %5, ptr noundef null, ptr noundef %149, i32 noundef %91) #8
  br label %230

230:                                              ; preds = %215, %210, %224, %228
  %231 = phi ptr [ %150, %210 ], [ %150, %215 ], [ %225, %224 ], [ %150, %228 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  %232 = load i32, ptr %10, align 4, !tbaa !115
  br label %233

233:                                              ; preds = %148, %154, %183, %193, %230, %181
  %234 = phi i32 [ %232, %230 ], [ %140, %193 ], [ %182, %181 ], [ %140, %183 ], [ %140, %154 ], [ %140, %148 ]
  %235 = phi ptr [ %231, %230 ], [ %150, %193 ], [ %150, %181 ], [ %150, %183 ], [ %150, %154 ], [ %150, %148 ]
  %236 = phi ptr [ %143, %230 ], [ %143, %193 ], [ %144, %181 ], [ %143, %183 ], [ %143, %154 ], [ %143, %148 ]
  %237 = phi ptr [ %144, %230 ], [ %144, %193 ], [ %143, %181 ], [ %144, %183 ], [ %144, %154 ], [ %144, %148 ]
  %238 = tail call ptr @get_last_insn() #9
  tail call void @emit_cmp_and_jump_insns(ptr noundef %237, ptr noundef %236, i32 noundef %234, ptr noundef %5, i32 noundef %141, i32 noundef %142, ptr noundef %149) #9
  %239 = icmp eq i32 %91, -1
  br i1 %239, label %277, label %240, !prof !182

240:                                              ; preds = %233
  %241 = load ptr, ptr @cfun, align 8, !tbaa !117
  %242 = getelementptr inbounds %struct.function, ptr %241, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !183
  %244 = getelementptr inbounds %struct.control_flow_graph, ptr %243, i64 0, i32 7
  %245 = load i32, ptr %244, align 8, !tbaa !185
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %277, label %247, !prof !187

247:                                              ; preds = %240
  %248 = getelementptr inbounds %struct.rtx_def, ptr %238, i64 0, i32 1, i32 0, i32 0, i64 2
  %249 = load ptr, ptr %248, align 8, !tbaa !123
  br label %250

250:                                              ; preds = %260, %247
  %251 = phi ptr [ %249, %247 ], [ %255, %260 ]
  %252 = icmp eq ptr %251, null
  br i1 %252, label %265, label %253, !prof !188

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.rtx_def, ptr %251, i64 0, i32 1, i32 0, i32 0, i64 2
  %255 = load ptr, ptr %254, align 8, !tbaa !123
  %256 = icmp eq ptr %255, null
  %257 = load i32, ptr %251, align 8
  %258 = and i32 %257, 65535
  %259 = icmp eq i32 %258, 9
  br i1 %256, label %261, label %260, !prof !189

260:                                              ; preds = %253
  br i1 %259, label %265, label %250, !prof !187, !llvm.loop !190

261:                                              ; preds = %253
  br i1 %259, label %262, label %265, !prof !191

262:                                              ; preds = %261
  %263 = tail call i32 @any_condjump_p(ptr noundef nonnull %251) #9
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %270, !prof !187

265:                                              ; preds = %260, %250, %262, %261
  %266 = load ptr, ptr @dump_file, align 8, !tbaa !117
  %267 = icmp eq ptr %266, null
  br i1 %267, label %277, label %268

268:                                              ; preds = %265
  %269 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 31, i64 1, ptr nonnull %266)
  br label %277

270:                                              ; preds = %262
  %271 = tail call ptr @find_reg_note(ptr noundef nonnull %251, i32 noundef 13, ptr noundef null) #9
  %272 = icmp eq ptr %271, null
  br i1 %272, label %274, label %273, !prof !191

273:                                              ; preds = %270
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1103, ptr noundef nonnull @.str.1) #9
  br label %274

274:                                              ; preds = %270, %273
  %275 = sext i32 %91 to i64
  %276 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %275) #9
  tail call void @add_reg_note(ptr noundef nonnull %251, i32 noundef 13, ptr noundef %276) #9
  br label %277

277:                                              ; preds = %233, %240, %265, %268, %274, %158, %159, %161, %162, %164, %165, %167, %168, %170, %171, %173
  %278 = phi ptr [ %235, %268 ], [ %235, %265 ], [ %235, %274 ], [ %235, %240 ], [ %235, %233 ], [ %150, %173 ], [ %150, %171 ], [ %150, %170 ], [ %150, %168 ], [ %150, %167 ], [ %150, %165 ], [ %150, %164 ], [ %150, %162 ], [ %150, %161 ], [ %150, %159 ], [ %150, %158 ]
  %279 = icmp eq ptr %89, null
  br i1 %279, label %281, label %280, !prof !178

280:                                              ; preds = %277
  tail call void @emit_jump(ptr noundef nonnull %89) #9
  br label %281

281:                                              ; preds = %280, %277
  %282 = icmp eq ptr %278, null
  br i1 %282, label %285, label %283, !prof !178

283:                                              ; preds = %281
  %284 = tail call ptr @emit_label(ptr noundef nonnull %278) #9
  br label %285

285:                                              ; preds = %281, %283, %123, %126
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @split_comparison(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 !prof !98 {
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
  store i32 91, ptr %2, align 4, !tbaa !115
  store i32 96, ptr %3, align 4, !tbaa !115
  br label %45

6:                                                ; preds = %4
  store i32 91, ptr %2, align 4, !tbaa !115
  store i32 95, ptr %3, align 4, !tbaa !115
  br label %45

7:                                                ; preds = %4
  store i32 91, ptr %2, align 4, !tbaa !115
  store i32 94, ptr %3, align 4, !tbaa !115
  br label %45

8:                                                ; preds = %4
  store i32 91, ptr %2, align 4, !tbaa !115
  store i32 93, ptr %3, align 4, !tbaa !115
  br label %45

9:                                                ; preds = %4
  store i32 91, ptr %2, align 4, !tbaa !115
  store i32 92, ptr %3, align 4, !tbaa !115
  br label %45

10:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !115
  store i32 97, ptr %3, align 4, !tbaa !115
  br label %45

11:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !115
  store i32 85, ptr %3, align 4, !tbaa !115
  br label %45

12:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !115
  store i32 84, ptr %3, align 4, !tbaa !115
  br label %45

13:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !115
  store i32 83, ptr %3, align 4, !tbaa !115
  br label %45

14:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !115
  store i32 82, ptr %3, align 4, !tbaa !115
  br label %45

15:                                               ; preds = %4
  store i32 90, ptr %2, align 4, !tbaa !115
  store i32 81, ptr %3, align 4, !tbaa !115
  br label %45

16:                                               ; preds = %4
  %17 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !115
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %16
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !123
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
  %28 = load i8, ptr %27, align 1, !tbaa !123
  %29 = zext i8 %28 to i32
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i32 [ %1, %23 ], [ %29, %26 ]
  %32 = add i32 %31, -38
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !117
  %36 = getelementptr inbounds %struct.real_format, ptr %35, i64 0, i32 11
  %37 = load i8, ptr %36, align 2, !tbaa !174
  %38 = icmp eq i8 %37, 0
  %39 = load i32, ptr @flag_finite_math_only, align 4
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  store i32 85, ptr %2, align 4, !tbaa !115
  store i32 83, ptr %3, align 4, !tbaa !115
  br label %45

43:                                               ; preds = %19, %30, %16
  store i32 91, ptr %2, align 4, !tbaa !115
  store i32 80, ptr %3, align 4, !tbaa !115
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
define internal fastcc void @do_jump_by_parts_greater_rtx(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #3 !prof !98 !PGOFuncName !192 {
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !123
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
  %32 = load i32, ptr @word_mode, align 4, !tbaa !115
  tail call void @do_compare_rtx_and_jump(ptr noundef %27, ptr noundef %28, i32 noundef 83, i32 noundef %31, i32 noundef %32, ptr noundef null, ptr noundef null, ptr noundef %20, i32 noundef %6) #8
  %33 = load i32, ptr @word_mode, align 4, !tbaa !115
  %34 = tail call fastcc i32 @inv(i32 noundef %6) #8
  tail call void @do_compare_rtx_and_jump(ptr noundef %27, ptr noundef %28, i32 noundef 80, i32 noundef %1, i32 noundef %33, ptr noundef null, ptr noundef null, ptr noundef %21, i32 noundef %34) #8
  %35 = add nuw nsw i32 %24, 1
  %36 = icmp eq i32 %35, %12
  br i1 %36, label %37, label %23, !llvm.loop !193

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
define internal fastcc void @do_jump_by_parts_equality_rtx(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #3 !prof !98 !PGOFuncName !194 {
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !123
  %10 = lshr i8 %9, 2
  %11 = zext nneg i8 %10 to i32
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !117
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
  %30 = load i32, ptr @word_mode, align 4, !tbaa !115
  tail call void @do_compare_rtx_and_jump(ptr noundef %28, ptr noundef %29, i32 noundef 81, i32 noundef 0, i32 noundef %30, ptr noundef null, ptr noundef %23, ptr noundef null, i32 noundef %5) #8
  %31 = add nuw nsw i32 %27, 1
  %32 = icmp eq i32 %31, %11
  br i1 %32, label %33, label %26, !llvm.loop !195

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
define internal fastcc void @do_jump_by_parts_zero_rtx(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #3 !prof !98 !PGOFuncName !196 {
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !123
  %9 = lshr i8 %8, 2
  %10 = zext nneg i8 %9 to i32
  %11 = load i32, ptr @word_mode, align 4, !tbaa !115
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
  %21 = load i32, ptr @word_mode, align 4, !tbaa !115
  %22 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef %19, i32 noundef %0) #9
  %23 = tail call ptr @expand_binop(i32 noundef %21, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef nonnull %20, ptr noundef %22, ptr noundef nonnull %20, i32 noundef 1, i32 noundef 2) #9
  %24 = add nuw nsw i32 %19, 1
  %25 = icmp ult i32 %24, %10
  %26 = icmp ne ptr %23, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %18, label %28, !llvm.loop !197

28:                                               ; preds = %18, %5
  %29 = phi ptr [ %12, %5 ], [ %23, %18 ]
  %30 = phi i1 [ %16, %5 ], [ %26, %18 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !117
  %33 = load i32, ptr @word_mode, align 4, !tbaa !115
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
  %45 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !117
  %46 = load i32, ptr @word_mode, align 4, !tbaa !115
  tail call void @do_compare_rtx_and_jump(ptr noundef %44, ptr noundef %45, i32 noundef 81, i32 noundef 1, i32 noundef %46, ptr noundef null, ptr noundef %39, ptr noundef null, i32 noundef %4) #8
  %47 = add nuw nsw i32 %43, 1
  %48 = icmp eq i32 %47, %10
  br i1 %48, label %49, label %42, !llvm.loop !198

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!97}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!35 = !{ptr @clear_pending_stack_adjust, ptr @discard_pending_stack_adjust, i64 75}
!36 = !{ptr @do_pending_stack_adjust, ptr @gen_rtx_CONST_INT, i64 1}
!37 = !{ptr @do_pending_stack_adjust, ptr @adjust_stack, i64 1}
!38 = !{ptr @do_jump, ptr @integer_zerop, i64 1}
!39 = !{ptr @do_jump, ptr @emit_jump, i64 1}
!40 = !{ptr @do_jump, ptr @inv, i64 1}
!41 = !{ptr @do_jump, ptr @gen_label_rtx, i64 1}
!42 = !{ptr @do_jump, ptr @fancy_abort, i64 1}
!43 = !{ptr @do_jump, ptr @get_inner_reference, i64 5}
!44 = !{ptr @do_jump, ptr @vector_type_mode, i64 1}
!45 = !{ptr @do_jump, ptr @have_insn_for, i64 2}
!46 = !{ptr @do_jump, ptr @fold_convert_loc, i64 2}
!47 = !{ptr @do_jump, ptr @do_jump, i64 4}
!48 = !{ptr @do_jump, ptr @do_jump_1, i64 18}
!49 = !{ptr @do_jump, ptr @integer_onep, i64 1}
!50 = !{ptr @do_jump, ptr @tree_floor_log2, i64 1}
!51 = !{ptr @do_jump, ptr @mode_for_size, i64 1}
!52 = !{ptr @do_jump, ptr @optimize_insn_for_speed_p, i64 3}
!53 = !{ptr @do_jump, ptr @expand_normal, i64 59597}
!54 = !{ptr @do_jump, ptr @do_pending_stack_adjust, i64 59599}
!55 = !{ptr @do_jump, ptr @copy_to_reg, i64 1}
!56 = !{ptr @do_jump, ptr @do_compare_rtx_and_jump, i64 59597}
!57 = !{ptr @do_jump, ptr @emit_label, i64 2}
!58 = !{ptr @jumpifnot_1, ptr @inv, i64 74804}
!59 = !{ptr @jumpifnot_1, ptr @do_jump_1, i64 74804}
!60 = !{ptr @do_jump_1, ptr @vector_type_mode, i64 11}
!61 = !{ptr @do_jump_1, ptr @fancy_abort, i64 5}
!62 = !{ptr @do_jump_1, ptr @integer_zerop, i64 130773}
!63 = !{ptr @do_jump_1, ptr @inv, i64 19633}
!64 = !{ptr @do_jump_1, ptr @do_jump, i64 59616}
!65 = !{ptr @do_jump_1, ptr @can_compare_p, i64 89702}
!66 = !{ptr @do_jump_1, ptr @do_jump_by_parts_equality, i64 2}
!67 = !{ptr @do_jump_1, ptr @do_compare_and_jump, i64 89711}
!68 = !{ptr @do_jump_1, ptr @do_jump_by_parts_greater, i64 3}
!69 = !{ptr @do_jump_1, ptr @gen_label_rtx, i64 8590}
!70 = !{ptr @do_jump_1, ptr @do_pending_stack_adjust, i64 8590}
!71 = !{ptr @do_jump_1, ptr @emit_label, i64 8590}
!72 = !{ptr @jumpif_1, ptr @do_jump_1, i64 65366}
!73 = !{ptr @do_compare_and_jump, ptr @expand_normal, i64 179425}
!74 = !{ptr @do_compare_and_jump, ptr @vector_type_mode, i64 1}
!75 = !{ptr @do_compare_and_jump, ptr @expr_size, i64 1}
!76 = !{ptr @do_compare_and_jump, ptr @do_compare_rtx_and_jump, i64 89711}
!77 = !{ptr @expand_normal, ptr @expand_expr_real, i64 239045}
!78 = !{ptr @do_compare_rtx_and_jump, ptr @can_compare_p, i64 299054}
!79 = !{ptr @do_compare_rtx_and_jump, ptr @reverse_condition, i64 77046}
!80 = !{ptr @do_compare_rtx_and_jump, ptr @inv, i64 77046}
!81 = !{ptr @do_compare_rtx_and_jump, ptr @swap_commutative_operands_p, i64 149527}
!82 = !{ptr @do_compare_rtx_and_jump, ptr @swap_condition, i64 1}
!83 = !{ptr @do_compare_rtx_and_jump, ptr @do_pending_stack_adjust, i64 149527}
!84 = !{ptr @do_compare_rtx_and_jump, ptr @unsigned_condition, i64 112841}
!85 = !{ptr @do_compare_rtx_and_jump, ptr @simplify_relational_operation, i64 149527}
!86 = !{ptr @do_compare_rtx_and_jump, ptr @gen_label_rtx, i64 1}
!87 = !{ptr @do_compare_rtx_and_jump, ptr @get_last_insn, i64 149525}
!88 = !{ptr @do_compare_rtx_and_jump, ptr @emit_cmp_and_jump_insns, i64 149525}
!89 = !{ptr @do_compare_rtx_and_jump, ptr @any_condjump_p, i64 149326}
!90 = !{ptr @do_compare_rtx_and_jump, ptr @fwrite, i64 2}
!91 = !{ptr @do_compare_rtx_and_jump, ptr @find_reg_note, i64 149325}
!92 = !{ptr @do_compare_rtx_and_jump, ptr @fancy_abort, i64 1}
!93 = !{ptr @do_compare_rtx_and_jump, ptr @gen_rtx_CONST_INT, i64 149325}
!94 = !{ptr @do_compare_rtx_and_jump, ptr @add_reg_note, i64 149325}
!95 = !{ptr @do_compare_rtx_and_jump, ptr @emit_jump, i64 1}
!96 = !{ptr @do_compare_rtx_and_jump, ptr @emit_label, i64 1}
!97 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!98 = !{!"function_entry_count", i64 0}
!99 = !{!100, !102, i64 0}
!100 = !{!"rtl_data", !101, i64 0, !106, i64 40, !107, i64 96, !108, i64 112, !110, i64 208, !111, i64 248, !102, i64 312, !105, i64 320, !105, i64 328, !105, i64 336, !105, i64 344, !105, i64 352, !105, i64 360, !105, i64 368, !105, i64 376, !105, i64 384, !105, i64 392, !112, i64 400, !105, i64 408, !105, i64 416, !105, i64 424, !102, i64 432, !102, i64 436, !102, i64 440, !102, i64 444, !102, i64 448, !102, i64 452, !105, i64 456, !103, i64 464, !103, i64 465, !103, i64 466, !103, i64 467, !103, i64 468, !103, i64 469, !103, i64 470, !103, i64 471, !103, i64 472, !103, i64 473, !103, i64 474, !103, i64 475, !103, i64 476, !103, i64 477, !103, i64 478, !103, i64 479, !103, i64 480, !103, i64 481, !103, i64 482, !103, i64 483, !103, i64 484, !103, i64 485}
!101 = !{!"expr_status", !102, i64 0, !102, i64 4, !102, i64 8, !105, i64 16, !105, i64 24, !105, i64 32}
!102 = !{!"int", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !{!"any pointer", !103, i64 0}
!106 = !{!"emit_status", !102, i64 0, !102, i64 4, !105, i64 8, !105, i64 16, !105, i64 24, !102, i64 32, !102, i64 36, !102, i64 40, !102, i64 44, !105, i64 48}
!107 = !{!"varasm_status", !105, i64 0, !102, i64 8}
!108 = !{!"incoming_args", !102, i64 0, !102, i64 4, !102, i64 8, !105, i64 16, !109, i64 24, !105, i64 88}
!109 = !{!"ix86_args", !102, i64 0, !102, i64 4, !102, i64 8, !102, i64 12, !102, i64 16, !102, i64 20, !102, i64 24, !102, i64 28, !102, i64 32, !102, i64 36, !102, i64 40, !102, i64 44, !102, i64 48, !102, i64 52, !102, i64 56, !102, i64 60}
!110 = !{!"function_subsections", !105, i64 0, !105, i64 8, !105, i64 16, !105, i64 24, !105, i64 32}
!111 = !{!"rtl_eh", !105, i64 0, !105, i64 8, !105, i64 16, !105, i64 24, !105, i64 32, !105, i64 40, !103, i64 48}
!112 = !{!"long", !103, i64 0}
!113 = !{!"function_entry_count", i64 76}
!114 = !{!100, !102, i64 8}
!115 = !{!102, !102, i64 0}
!116 = !{!"branch_weights", i32 77, i32 1}
!117 = !{!105, !105, i64 0}
!118 = !{!"function_entry_count", i64 405730}
!119 = !{!100, !102, i64 4}
!120 = !{!"branch_weights", i32 405731, i32 1}
!121 = !{!"function_entry_count", i64 59619}
!122 = !{!"branch_weights", i32 59620, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!123 = !{!103, !103, i64 0}
!124 = !{!125, !105, i64 456}
!125 = !{!"lang_hooks", !105, i64 0, !112, i64 8, !105, i64 16, !105, i64 24, !105, i64 32, !105, i64 40, !105, i64 48, !105, i64 56, !105, i64 64, !105, i64 72, !105, i64 80, !105, i64 88, !105, i64 96, !105, i64 104, !105, i64 112, !105, i64 120, !105, i64 128, !105, i64 136, !105, i64 144, !105, i64 152, !105, i64 160, !105, i64 168, !105, i64 176, !105, i64 184, !105, i64 192, !105, i64 200, !105, i64 208, !105, i64 216, !105, i64 224, !105, i64 232, !126, i64 240, !127, i64 248, !128, i64 256, !129, i64 272, !130, i64 432, !131, i64 560, !105, i64 584, !105, i64 592, !105, i64 600, !105, i64 608, !105, i64 616, !105, i64 624, !105, i64 632, !105, i64 640, !105, i64 648, !105, i64 656, !105, i64 664, !103, i64 672}
!126 = !{!"lang_hooks_for_tree_inlining", !105, i64 0}
!127 = !{!"lang_hooks_for_callgraph", !105, i64 0}
!128 = !{!"lang_hooks_for_tree_dump", !105, i64 0, !105, i64 8}
!129 = !{!"lang_hooks_for_decls", !105, i64 0, !105, i64 8, !105, i64 16, !105, i64 24, !105, i64 32, !105, i64 40, !105, i64 48, !105, i64 56, !105, i64 64, !105, i64 72, !105, i64 80, !105, i64 88, !105, i64 96, !105, i64 104, !105, i64 112, !105, i64 120, !105, i64 128, !105, i64 136, !105, i64 144, !105, i64 152}
!130 = !{!"lang_hooks_for_types", !105, i64 0, !105, i64 8, !105, i64 16, !105, i64 24, !105, i64 32, !105, i64 40, !105, i64 48, !105, i64 56, !105, i64 64, !105, i64 72, !105, i64 80, !105, i64 88, !105, i64 96, !105, i64 104, !105, i64 112, !103, i64 120}
!131 = !{!"lang_hooks_for_lto", !105, i64 0, !105, i64 8, !105, i64 16}
!132 = !{!112, !112, i64 0}
!133 = distinct !{!133, !134}
!134 = !{!"llvm.loop.mustprogress"}
!135 = !{i8 0, i8 2}
!136 = !{!125, !105, i64 448}
!137 = !{!"branch_weights", i32 1, i32 59620}
!138 = !{!"branch_weights", i32 0, i32 -2147483648}
!139 = !{!"function_entry_count", i64 171482}
!140 = !{!"dojump.c:inv"}
!141 = !{!"branch_weights", i32 1, i32 171483}
!142 = !{!"function_entry_count", i64 74804}
!143 = !{!"function_entry_count", i64 140170}
!144 = !{!"branch_weights", i32 1, i32 106518, i32 24271, i32 81, i32 139, i32 1, i32 4, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 9163}
!145 = !{!"branch_weights", i32 1, i32 106518}
!146 = !{!"branch_weights", i32 86886, i32 19633}
!147 = !{!"branch_weights", i32 1, i32 86886}
!148 = !{!"branch_weights", i32 86886, i32 1}
!149 = !{!"branch_weights", i32 1, i32 24271}
!150 = !{!"branch_weights", i32 2608, i32 21664}
!151 = !{!"branch_weights", i32 1, i32 2608}
!152 = !{!"branch_weights", i32 2608, i32 1}
!153 = !{!"branch_weights", i32 1, i32 81}
!154 = !{!"branch_weights", i32 81, i32 1}
!155 = !{!"branch_weights", i32 1, i32 139}
!156 = !{!"branch_weights", i32 139, i32 1}
!157 = !{!"branch_weights", i32 1, i32 4}
!158 = !{!"branch_weights", i32 4, i32 1}
!159 = !{!"branch_weights", i32 8592, i32 572}
!160 = !{!"function_entry_count", i64 65366}
!161 = !{!"dojump.c:do_jump_by_parts_equality"}
!162 = !{!"function_entry_count", i64 89713}
!163 = !{!"dojump.c:do_compare_and_jump"}
!164 = !{!"branch_weights", i32 1, i32 89714}
!165 = !{!"branch_weights", i32 9780, i32 79935}
!166 = !{!"dojump.c:do_jump_by_parts_greater"}
!167 = !{!"dojump.c:prefer_and_bit_test"}
!168 = !{!"function_entry_count", i64 239045}
!169 = !{!"dojump.c:expand_normal"}
!170 = !{!"function_entry_count", i64 149527}
!171 = !{!"branch_weights", i32 77047, i32 72482}
!172 = !{!"branch_weights", i32 1, i32 72482}
!173 = !{!"branch_weights", i32 -376589656, i32 50858, i32 50856, i32 50856, i32 50856}
!174 = !{!175, !103, i64 46}
!175 = !{!"real_format", !105, i64 0, !105, i64 8, !102, i64 16, !102, i64 20, !102, i64 24, !102, i64 28, !102, i64 32, !102, i64 36, !102, i64 40, !103, i64 44, !103, i64 45, !103, i64 46, !103, i64 47, !103, i64 48, !103, i64 49, !103, i64 50, !103, i64 51}
!176 = !{!"branch_weights", i32 -192613847, i32 53246, i32 53244, i32 53244, i32 53244}
!177 = !{!"branch_weights", i32 1, i32 77047}
!178 = !{!"branch_weights", i32 149528, i32 1}
!179 = !{!"branch_weights", i32 36686, i32 112843}
!180 = !{!"branch_weights", i32 1, i32 149528}
!181 = !{!"branch_weights", i32 0, i32 -1845100544, i32 16383}
!182 = !{!"branch_weights", i32 196, i32 149333}
!183 = !{!184, !105, i64 8}
!184 = !{!"function", !105, i64 0, !105, i64 8, !105, i64 16, !105, i64 24, !105, i64 32, !105, i64 40, !105, i64 48, !105, i64 56, !105, i64 64, !105, i64 72, !105, i64 80, !105, i64 88, !105, i64 96, !102, i64 104, !102, i64 108, !102, i64 112, !102, i64 116, !102, i64 120, !102, i64 124, !105, i64 128, !102, i64 136, !102, i64 137, !102, i64 138, !102, i64 138, !102, i64 138, !102, i64 138, !102, i64 138, !102, i64 138, !102, i64 138, !102, i64 139, !102, i64 139, !102, i64 139, !102, i64 139, !102, i64 139, !102, i64 139, !102, i64 139}
!185 = !{!186, !102, i64 48}
!186 = !{!"control_flow_graph", !105, i64 0, !105, i64 8, !105, i64 16, !102, i64 24, !102, i64 28, !102, i64 32, !105, i64 40, !102, i64 48, !103, i64 52, !103, i64 60, !102, i64 68, !102, i64 72}
!187 = !{!"branch_weights", i32 1, i32 149333}
!188 = !{!"branch_weights", i32 1, i32 298665}
!189 = !{!"branch_weights", i32 149333, i32 149333}
!190 = distinct !{!190, !134}
!191 = !{!"branch_weights", i32 149333, i32 1}
!192 = !{!"dojump.c:do_jump_by_parts_greater_rtx"}
!193 = distinct !{!193, !134}
!194 = !{!"dojump.c:do_jump_by_parts_equality_rtx"}
!195 = distinct !{!195, !134}
!196 = !{!"dojump.c:do_jump_by_parts_zero_rtx"}
!197 = distinct !{!197, !134}
!198 = distinct !{!198, !134}
