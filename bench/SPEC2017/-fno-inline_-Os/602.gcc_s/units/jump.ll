; ModuleID = 'jump.c'
source_filename = "jump.c"
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
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.subreg_info = type { i32, i32, i8 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@timevar_enable = external local_unnamed_addr global i8, align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@.str = private unnamed_addr constant [7 x i8] c"jump.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@pass_cleanup_barriers = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr null, ptr @cleanup_barriers, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"barriers\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@reg_renumber = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@switch.table.reverse_condition = private unnamed_addr constant [18 x i32] [i32 81, i32 80, i32 85, i32 84, i32 83, i32 82, i32 89, i32 88, i32 87, i32 86, i32 91, i32 90, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4
@switch.table.reverse_condition_maybe_unordered = private unnamed_addr constant [18 x i32] [i32 81, i32 80, i32 96, i32 95, i32 94, i32 93, i32 80, i32 80, i32 80, i32 80, i32 91, i32 90, i32 97, i32 85, i32 84, i32 83, i32 82, i32 92], align 4
@switch.table.swap_condition = private unnamed_addr constant [18 x i32] [i32 80, i32 81, i32 84, i32 85, i32 82, i32 83, i32 88, i32 89, i32 86, i32 87, i32 90, i32 91, i32 92, i32 95, i32 96, i32 93, i32 94, i32 97], align 4
@switch.table.unsigned_condition = private unnamed_addr constant [10 x i32] [i32 80, i32 81, i32 86, i32 87, i32 88, i32 89, i32 86, i32 87, i32 88, i32 89], align 4
@switch.table.signed_condition = private unnamed_addr constant [10 x i32] [i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 82, i32 83, i32 84, i32 85], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rebuild_jump_labels(ptr noundef %0) local_unnamed_addr #0 !prof !120 {
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !121
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !124

4:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 41) #8
  br label %5

5:                                                ; preds = %4, %1
  tail call fastcc void @init_label_info(ptr noundef %0) #9
  tail call fastcc void @mark_all_labels(ptr noundef %0) #9
  %6 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !121
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8, !prof !125

8:                                                ; preds = %5, %19
  %9 = phi ptr [ %21, %19 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 12
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !121
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !121
  br label %19

19:                                               ; preds = %8, %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !121
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8, !prof !126, !llvm.loop !127

23:                                               ; preds = %19, %5
  %24 = load i8, ptr @timevar_enable, align 1, !tbaa !121
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26, !prof !124

26:                                               ; preds = %23
  tail call void @timevar_pop_1(i32 noundef 41) #8
  br label %27

27:                                               ; preds = %26, %23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_label_info(ptr noundef %0) unnamed_addr #0 !prof !120 !PGOFuncName !129 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %40, label %3, !prof !130

3:                                                ; preds = %1, %36
  %4 = phi ptr [ %38, %36 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %12, !prof !131

8:                                                ; preds = %3
  %9 = lshr i32 %5, 28
  %10 = and i32 %9, 1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  store i32 %10, ptr %11, align 8, !tbaa !121
  br label %36

12:                                               ; preds = %3
  %13 = add nsw i32 %6, -7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %36, !prof !132

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !121
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !133

19:                                               ; preds = %15, %34
  %20 = phi ptr [ %22, %34 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !121
  %23 = load i32, ptr %20, align 8
  %24 = and i32 %23, 16711680
  %25 = icmp eq i32 %24, 655360
  br i1 %25, label %26, label %34, !prof !134

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !121
  %30 = load ptr, ptr %27, align 8, !tbaa !121
  %31 = tail call i32 @reg_mentioned_p(ptr noundef %29, ptr noundef %30) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34, !prof !135

33:                                               ; preds = %26
  tail call void @remove_note(ptr noundef nonnull %4, ptr noundef nonnull %20) #8
  br label %34

34:                                               ; preds = %19, %26, %33
  %35 = icmp eq ptr %22, null
  br i1 %35, label %36, label %19, !prof !136, !llvm.loop !137

36:                                               ; preds = %34, %8, %15, %12
  %37 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !121
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %3, !prof !138, !llvm.loop !139

40:                                               ; preds = %36, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_all_labels(ptr noundef %0) unnamed_addr #0 !prof !120 !PGOFuncName !140 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %97, label %3, !prof !130

3:                                                ; preds = %1, %92
  %4 = phi ptr [ %95, %92 ], [ %0, %1 ]
  %5 = phi ptr [ %93, %92 ], [ null, %1 ]
  %6 = load i32, ptr %4, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %92 [
    i16 8, label %8
    i16 7, label %8
    i16 9, label %8
    i16 10, label %8
    i16 12, label %91
  ], !prof !141

8:                                                ; preds = %3, %3, %3, %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  tail call void @mark_jump_label(ptr noundef %10, ptr noundef nonnull %4, i32 noundef 0) #9
  %11 = load i32, ptr %4, align 8
  %12 = and i32 %11, 134217728
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %11, 134283263
  %15 = icmp eq i32 %14, 9
  br i1 %15, label %16, label %89, !prof !142

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !121
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %89, !prof !143

20:                                               ; preds = %16
  %21 = tail call ptr @pc_set(ptr noundef nonnull %4) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !144

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi ptr [ %25, %23 ], [ null, %20 ]
  %28 = icmp eq ptr %5, null
  br i1 %28, label %92, label %29, !prof !145

29:                                               ; preds = %26
  %30 = tail call ptr @find_reg_note(ptr noundef nonnull %5, i32 noundef 10, ptr noundef null) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %92, label %32, !prof !146

32:                                               ; preds = %29
  %33 = icmp eq ptr %27, null
  br i1 %33, label %92, label %34

34:                                               ; preds = %32
  %35 = load i32, ptr %5, align 8
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -7
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %92

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !121
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 23
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %41) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %92, label %48

48:                                               ; preds = %39, %45
  %49 = phi ptr [ %46, %45 ], [ %41, %39 ]
  %50 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !121
  %52 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !121
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 44
  br i1 %56, label %57, label %92

57:                                               ; preds = %48
  %58 = tail call i32 @rtx_equal_p(ptr noundef %51, ptr noundef nonnull %27) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load i32, ptr %27, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 47
  br i1 %63, label %64, label %92

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !121
  %67 = tail call i32 @rtx_equal_p(ptr noundef %51, ptr noundef %66) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %71 = load ptr, ptr %70, align 8, !tbaa !121
  %72 = tail call i32 @rtx_equal_p(ptr noundef %51, ptr noundef %71) #8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %92, label %74

74:                                               ; preds = %69, %64, %57
  %75 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !121
  %77 = load ptr, ptr %52, align 8, !tbaa !121
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !121
  %80 = icmp eq ptr %76, %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 243, ptr noundef nonnull @.str.1) #8
  br label %82

82:                                               ; preds = %74, %81
  tail call fastcc void @mark_jump_label_1(ptr noundef nonnull %49, ptr noundef nonnull %4, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  %83 = load ptr, ptr %17, align 8, !tbaa !121
  %84 = load ptr, ptr %52, align 8, !tbaa !121
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !121
  %87 = icmp eq ptr %83, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 247, ptr noundef nonnull @.str.1) #8
  br label %92

89:                                               ; preds = %16, %8
  %90 = select i1 %13, ptr %4, ptr %5, !prof !147
  br label %92

91:                                               ; preds = %3
  br label %92

92:                                               ; preds = %34, %45, %26, %89, %3, %29, %32, %88, %82, %69, %60, %48, %91
  %93 = phi ptr [ null, %91 ], [ %5, %48 ], [ %5, %60 ], [ %5, %69 ], [ %5, %82 ], [ %5, %88 ], [ %5, %32 ], [ %5, %29 ], [ %90, %89 ], [ %5, %3 ], [ null, %26 ], [ %5, %45 ], [ %5, %34 ]
  %94 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %95 = load ptr, ptr %94, align 8, !tbaa !121
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %3, !prof !138, !llvm.loop !148

97:                                               ; preds = %92, %1
  %98 = tail call i32 @current_ir_type() #8
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %179, !prof !149

100:                                              ; preds = %97
  %101 = load ptr, ptr @cfun, align 8, !tbaa !150
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !152
  %104 = load ptr, ptr %103, align 8, !tbaa !155
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 6
  %106 = load ptr, ptr %105, align 8, !tbaa !157
  %107 = getelementptr inbounds %struct.control_flow_graph, ptr %103, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !160
  %109 = icmp eq ptr %106, %108
  br i1 %109, label %179, label %119, !prof !161

110:                                              ; preds = %175, %151
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !157
  %113 = load ptr, ptr @cfun, align 8, !tbaa !150
  %114 = getelementptr inbounds %struct.function, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !152
  %116 = getelementptr inbounds %struct.control_flow_graph, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !160
  %118 = icmp eq ptr %112, %117
  br i1 %118, label %179, label %119, !prof !162, !llvm.loop !163

119:                                              ; preds = %100, %110
  %120 = phi ptr [ %112, %110 ], [ %106, %100 ]
  %121 = getelementptr inbounds %struct.basic_block_def, ptr %120, i64 0, i32 7
  %122 = load ptr, ptr %121, align 8, !tbaa !121
  %123 = getelementptr inbounds %struct.rtl_bb_info, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !121
  %125 = icmp eq ptr %124, null
  br i1 %125, label %151, label %126, !prof !164

126:                                              ; preds = %119, %145
  %127 = phi ptr [ %147, %145 ], [ %124, %119 ]
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 65535
  %130 = add nsw i32 %129, -7
  %131 = icmp ult i32 %130, 4
  br i1 %131, label %132, label %145, !prof !165

132:                                              ; preds = %126
  %133 = icmp eq i32 %129, 9
  br i1 %133, label %134, label %140

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !121
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 65534
  %139 = icmp eq i32 %138, 20
  br i1 %139, label %143, label %140

140:                                              ; preds = %134, %132
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 269, ptr noundef nonnull @.str.1) #8
  %141 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !121
  br label %143

143:                                              ; preds = %134, %140
  %144 = phi ptr [ %136, %134 ], [ %142, %140 ]
  tail call void @mark_jump_label(ptr noundef %144, ptr noundef nonnull %127, i32 noundef 0) #9
  br label %145

145:                                              ; preds = %126, %143
  %146 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1, i32 0, i32 0, i64 2
  %147 = load ptr, ptr %146, align 8, !tbaa !121
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %126, !prof !166, !llvm.loop !167

149:                                              ; preds = %145
  %150 = load ptr, ptr %121, align 8, !tbaa !121
  br label %151

151:                                              ; preds = %149, %119
  %152 = phi ptr [ %150, %149 ], [ %122, %119 ]
  %153 = getelementptr inbounds %struct.rtl_bb_info, ptr %152, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !121
  %155 = icmp eq ptr %154, null
  br i1 %155, label %110, label %156, !prof !168

156:                                              ; preds = %151, %175
  %157 = phi ptr [ %177, %175 ], [ %154, %151 ]
  %158 = load i32, ptr %157, align 8
  %159 = and i32 %158, 65535
  %160 = add nsw i32 %159, -7
  %161 = icmp ult i32 %160, 4
  br i1 %161, label %162, label %175, !prof !169

162:                                              ; preds = %156
  %163 = icmp eq i32 %159, 9
  br i1 %163, label %164, label %170, !prof !170

164:                                              ; preds = %162
  %165 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !121
  %167 = load i32, ptr %166, align 8
  %168 = and i32 %167, 65534
  %169 = icmp eq i32 %168, 20
  br i1 %169, label %173, label %170, !prof !171

170:                                              ; preds = %164, %162
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 276, ptr noundef nonnull @.str.1) #8
  %171 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !121
  br label %173

173:                                              ; preds = %164, %170
  %174 = phi ptr [ %166, %164 ], [ %172, %170 ]
  tail call void @mark_jump_label(ptr noundef %174, ptr noundef nonnull %157, i32 noundef 0) #9
  br label %175

175:                                              ; preds = %156, %173
  %176 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 0, i32 1, i32 0, i32 0, i64 2
  %177 = load ptr, ptr %176, align 8, !tbaa !121
  %178 = icmp eq ptr %177, null
  br i1 %178, label %110, label %156, !prof !172, !llvm.loop !173

179:                                              ; preds = %110, %100, %97
  ret void
}

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_jump_label(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !174 {
  %4 = tail call ptr @extract_asm_operands(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !175

6:                                                ; preds = %3
  tail call fastcc void @mark_jump_label_asm(ptr noundef nonnull %4, ptr noundef %1) #9
  br label %22

7:                                                ; preds = %3
  %8 = icmp ne i32 %2, 0
  %9 = zext i1 %8 to i8
  %10 = icmp eq ptr %1, null
  br i1 %10, label %20, label %11, !prof !176

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %20, !prof !177

15:                                               ; preds = %11
  %16 = load i32, ptr %1, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 9
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %15, %11, %7
  %21 = phi i8 [ 0, %11 ], [ 0, %7 ], [ %19, %15 ]
  tail call fastcc void @mark_jump_label_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %9, i8 noundef zeroext %21) #9
  br label %22

22:                                               ; preds = %20, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @pc_set(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !178 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %29, !prof !179

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 15
  br i1 %10, label %11, label %17, !prof !180

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = getelementptr inbounds %struct.rtvec_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !150
  %16 = load i32, ptr %15, align 8
  br label %17

17:                                               ; preds = %11, %5
  %18 = phi i32 [ %16, %11 ], [ %8, %5 ]
  %19 = phi ptr [ %15, %11 ], [ %7, %5 ]
  %20 = and i32 %18, 65535
  %21 = icmp eq i32 %20, 23
  br i1 %21, label %22, label %28, !prof !181

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !121
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 36
  br i1 %27, label %29, label %28, !prof !182

28:                                               ; preds = %22, %17
  br label %29

29:                                               ; preds = %22, %1, %28
  %30 = phi ptr [ null, %28 ], [ null, %1 ], [ %19, %22 ]
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_jump_label_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !183 !PGOFuncName !184 {
  br label %5

5:                                                ; preds = %36, %4
  %6 = phi ptr [ %0, %4 ], [ %42, %36 ]
  %7 = phi i8 [ %3, %4 ], [ 1, %36 ]
  %8 = load i32, ptr %6, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %110 [
    i16 36, label %146
    i16 46, label %146
    i16 37, label %146
    i16 30, label %146
    i16 32, label %146
    i16 25, label %146
    i16 26, label %146
    i16 43, label %109
    i16 5, label %10
    i16 45, label %27
    i16 47, label %34
    i16 44, label %43
    i16 20, label %86
    i16 21, label %86
  ], !prof !185

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = load i32, ptr %12, align 8, !tbaa !186
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %146

15:                                               ; preds = %10, %15
  %16 = phi i64 [ %22, %15 ], [ 0, %10 ]
  %17 = phi ptr [ %23, %15 ], [ %12, %10 ]
  %18 = getelementptr inbounds %struct.rtvec_def, ptr %17, i64 0, i32 1, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !150
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !121
  tail call void @mark_jump_label(ptr noundef %21, ptr noundef %19, i32 noundef 0) #9
  %22 = add nuw nsw i64 %16, 1
  %23 = load ptr, ptr %11, align 8, !tbaa !121
  %24 = load i32, ptr %23, align 8, !tbaa !186
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %15, label %146, !llvm.loop !188

27:                                               ; preds = %5
  %28 = icmp eq i8 %2, 0
  br i1 %28, label %146, label %29, !prof !189

29:                                               ; preds = %27
  %30 = and i32 %8, 67108864
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %110, label %32, !prof !190

32:                                               ; preds = %29
  %33 = tail call ptr @get_pool_constant(ptr noundef nonnull %6) #8
  tail call fastcc void @mark_jump_label_1(ptr noundef %33, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %7) #9
  br label %110

34:                                               ; preds = %5
  %35 = icmp eq i8 %7, 0
  br i1 %35, label %110, label %36, !prof !191

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !121
  tail call fastcc void @mark_jump_label_1(ptr noundef %38, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext 0) #9
  %39 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !121
  tail call fastcc void @mark_jump_label_1(ptr noundef %40, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext 1) #9
  %41 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !121
  br label %5

43:                                               ; preds = %5
  %44 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !121
  %46 = load i32, ptr %45, align 8
  %47 = trunc i32 %46 to i16
  switch i16 %47, label %52 [
    i16 13, label %48
    i16 12, label %54
  ], !prof !192

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 1
  %50 = load i32, ptr %49, align 8, !tbaa !121
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %110, label %52

52:                                               ; preds = %43, %48
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1096, ptr noundef nonnull @.str.1) #8
  %53 = load i32, ptr %6, align 8
  br label %54

54:                                               ; preds = %43, %52
  %55 = phi i32 [ %8, %43 ], [ %53, %52 ]
  %56 = and i32 %55, 134217728
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %110, !prof !193

58:                                               ; preds = %54
  store ptr %45, ptr %44, align 8, !tbaa !121
  %59 = icmp eq ptr %1, null
  br i1 %59, label %60, label %64, !prof !194

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !121
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %61, align 8, !tbaa !121
  br label %146

64:                                               ; preds = %58
  %65 = load i32, ptr %1, align 8
  %66 = and i32 %65, 134217728
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72, !prof !195

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !121
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %69, align 8, !tbaa !121
  br label %72

72:                                               ; preds = %64, %68
  %73 = icmp eq i8 %7, 0
  br i1 %73, label %81, label %74, !prof !196

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  %76 = load ptr, ptr %75, align 8, !tbaa !121
  %77 = icmp eq ptr %76, null
  %78 = icmp eq ptr %76, %45
  %79 = or i1 %77, %78
  br i1 %79, label %80, label %81, !prof !197

80:                                               ; preds = %74
  store ptr %45, ptr %75, align 8, !tbaa !121
  br label %146

81:                                               ; preds = %74, %72
  %82 = phi i32 [ 10, %72 ], [ 9, %74 ]
  %83 = tail call ptr @find_reg_note(ptr noundef nonnull %1, i32 noundef %82, ptr noundef nonnull %45) #8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %146, !prof !198

85:                                               ; preds = %81
  tail call void @add_reg_note(ptr noundef nonnull %1, i32 noundef %82, ptr noundef nonnull %45) #8
  br label %146

86:                                               ; preds = %5, %5
  %87 = load i32, ptr %1, align 8
  %88 = and i32 %87, 134217728
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %146, !prof !199

90:                                               ; preds = %86
  %91 = and i32 %8, 65535
  %92 = icmp eq i32 %91, 21
  %93 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %94 = zext i1 %92 to i64
  %95 = getelementptr inbounds [1 x %union.rtunion_def], ptr %93, i64 0, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !121
  %97 = load i32, ptr %96, align 8, !tbaa !186
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %146, !prof !200

99:                                               ; preds = %90, %99
  %100 = phi i64 [ %104, %99 ], [ 0, %90 ]
  %101 = phi ptr [ %105, %99 ], [ %96, %90 ]
  %102 = getelementptr inbounds %struct.rtvec_def, ptr %101, i64 0, i32 1, i64 %100
  %103 = load ptr, ptr %102, align 8, !tbaa !150
  tail call fastcc void @mark_jump_label_1(ptr noundef %103, ptr noundef null, i8 noundef zeroext %2, i8 noundef zeroext %7) #9
  %104 = add nuw nsw i64 %100, 1
  %105 = load ptr, ptr %95, align 8, !tbaa !121
  %106 = load i32, ptr %105, align 8, !tbaa !186
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %104, %107
  br i1 %108, label %99, label %146, !prof !201, !llvm.loop !202

109:                                              ; preds = %5
  br label %110

110:                                              ; preds = %34, %5, %109, %48, %54, %29, %32
  %111 = phi i8 [ 1, %32 ], [ 1, %29 ], [ %2, %54 ], [ %2, %48 ], [ 1, %109 ], [ %2, %5 ], [ %2, %34 ]
  %112 = and i32 %8, 65535
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !150
  %116 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %113
  %117 = load i8, ptr %116, align 1, !tbaa !121
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %146, label %119, !prof !203

119:                                              ; preds = %110
  %120 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %121 = zext i8 %117 to i64
  br label %122

122:                                              ; preds = %119, %144
  %123 = phi i64 [ %121, %119 ], [ %124, %144 ]
  %124 = add nsw i64 %123, -1
  %125 = getelementptr inbounds i8, ptr %115, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !121
  switch i8 %126, label %144 [
    i8 101, label %127
    i8 69, label %130
  ], !prof !204

127:                                              ; preds = %122
  %128 = getelementptr inbounds [1 x %union.rtunion_def], ptr %120, i64 0, i64 %124
  %129 = load ptr, ptr %128, align 8, !tbaa !121
  tail call fastcc void @mark_jump_label_1(ptr noundef %129, ptr noundef %1, i8 noundef zeroext %111, i8 noundef zeroext %7) #9
  br label %144

130:                                              ; preds = %122
  %131 = getelementptr inbounds [1 x %union.rtunion_def], ptr %120, i64 0, i64 %124
  %132 = load ptr, ptr %131, align 8, !tbaa !121
  %133 = load i32, ptr %132, align 8, !tbaa !186
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %144, !prof !205

135:                                              ; preds = %130
  %136 = zext nneg i32 %133 to i64
  br label %137

137:                                              ; preds = %135, %137
  %138 = phi i64 [ %136, %135 ], [ %139, %137 ]
  %139 = add nsw i64 %138, -1
  %140 = load ptr, ptr %131, align 8, !tbaa !121
  %141 = getelementptr inbounds %struct.rtvec_def, ptr %140, i64 0, i32 1, i64 %139
  %142 = load ptr, ptr %141, align 8, !tbaa !150
  tail call fastcc void @mark_jump_label_1(ptr noundef %142, ptr noundef %1, i8 noundef zeroext %111, i8 noundef zeroext %7) #9
  %143 = icmp ugt i64 %138, 1
  br i1 %143, label %137, label %144, !prof !206, !llvm.loop !207

144:                                              ; preds = %137, %130, %122, %127
  %145 = icmp sgt i64 %123, 1
  br i1 %145, label %122, label %146, !prof !208, !llvm.loop !209

146:                                              ; preds = %5, %5, %5, %5, %5, %5, %5, %99, %15, %144, %90, %10, %110, %60, %86, %81, %85, %80, %27
  ret void
}

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_pool_constant(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @cleanup_barriers() #0 !prof !210 {
  %1 = tail call ptr @get_insns() #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %26, label %3, !prof !211

3:                                                ; preds = %0, %24
  %4 = phi ptr [ %6, %24 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 11
  br i1 %9, label %10, label %24, !prof !212

10:                                               ; preds = %3
  %11 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %4) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13, !prof !213

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 11
  br i1 %16, label %17, label %19, !prof !213

17:                                               ; preds = %13
  %18 = tail call ptr @delete_insn(ptr noundef nonnull %4) #8
  br label %24

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !121
  %22 = icmp eq ptr %11, %21
  br i1 %22, label %24, label %23, !prof !214

23:                                               ; preds = %19
  tail call void @reorder_insns(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %11) #8
  br label %24

24:                                               ; preds = %3, %19, %23, %17, %10
  %25 = icmp eq ptr %6, null
  br i1 %25, label %26, label %3, !prof !215, !llvm.loop !216

26:                                               ; preds = %24, %0
  ret i32 0
}

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reorder_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reversed_comparison_code_parts(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) local_unnamed_addr #0 !prof !217 {
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !218
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %59, !prof !219

9:                                                ; preds = %4
  %10 = load i32, ptr %1, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18, !prof !220

14:                                               ; preds = %9
  %15 = load i32, ptr %2, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i32 [ %17, %14 ], [ %12, %9 ]
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !121
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %24, label %26, !prof !221

24:                                               ; preds = %18
  %25 = tail call i32 @ix86_reverse_condition(i32 noundef %0, i32 noundef %19) #8
  br label %59

26:                                               ; preds = %18
  switch i32 %0, label %31 [
    i32 86, label %27
    i32 87, label %27
    i32 88, label %27
    i32 89, label %27
    i32 80, label %27
    i32 81, label %27
    i32 91, label %29
    i32 90, label %29
    i32 97, label %29
    i32 92, label %29
    i32 96, label %59
    i32 95, label %59
    i32 94, label %59
    i32 93, label %59
  ], !prof !222

27:                                               ; preds = %26, %26, %26, %26, %26, %26
  %28 = tail call i32 @reverse_condition(i32 noundef %0) #9
  br label %59

29:                                               ; preds = %26, %26, %26, %26
  %30 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %0) #9
  br label %59

31:                                               ; preds = %26
  %32 = and i32 %10, 65535
  %33 = icmp eq i32 %32, 30
  br i1 %33, label %57, label %34, !prof !223

34:                                               ; preds = %31
  %35 = and i32 %10, 16711680
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %59, label %37, !prof !223

37:                                               ; preds = %34
  switch i8 %22, label %57 [
    i8 17, label %38
    i8 8, label %38
    i8 9, label %38
    i8 11, label %38
  ], !prof !224

38:                                               ; preds = %37, %37, %37, %37
  %39 = and i8 %22, -2
  %40 = icmp eq i8 %39, 8
  br i1 %40, label %45, label %41, !prof !225

41:                                               ; preds = %38
  %42 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %20
  %43 = load i8, ptr %42, align 1, !tbaa !121
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i32 [ %19, %38 ], [ %44, %41 ]
  %47 = add nsw i32 %46, -38
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !150
  %51 = getelementptr inbounds %struct.real_format, ptr %50, i64 0, i32 11
  %52 = load i8, ptr %51, align 2, !tbaa !226
  %53 = icmp eq i8 %52, 0
  %54 = load i32, ptr @flag_finite_math_only, align 4
  %55 = icmp ne i32 %54, 0
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %57, label %59, !prof !228

57:                                               ; preds = %37, %45, %31
  %58 = tail call i32 @reverse_condition(i32 noundef %0) #9
  br label %59

59:                                               ; preds = %4, %34, %45, %26, %26, %26, %26, %57, %29, %27, %24
  %60 = phi i32 [ %25, %24 ], [ %58, %57 ], [ %30, %29 ], [ %28, %27 ], [ 0, %4 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %45 ], [ 0, %34 ]
  ret i32 %60
}

; Function Attrs: optsize
declare i32 @ix86_reverse_condition(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @reverse_condition(i32 noundef %0) local_unnamed_addr #0 !prof !229 {
  %2 = add i32 %0, -80
  %3 = icmp ult i32 %2, 18
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 477, ptr noundef nonnull @.str.1) #8
  br label %9

5:                                                ; preds = %1
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds [18 x i32], ptr @switch.table.reverse_condition, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi i32 [ %0, %4 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @reverse_condition_maybe_unordered(i32 noundef %0) local_unnamed_addr #0 !prof !230 {
  %2 = add i32 %0, -80
  %3 = icmp ult i32 %2, 18
  br i1 %3, label %5, label %4

4:                                                ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 523, ptr noundef nonnull @.str.1) #8
  br label %13

5:                                                ; preds = %1
  %6 = lshr i32 261183, %2
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %4, label %9

9:                                                ; preds = %5
  %10 = zext nneg i32 %2 to i64
  %11 = getelementptr inbounds [18 x i32], ptr @switch.table.reverse_condition_maybe_unordered, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ %0, %4 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reversed_comparison_code(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) local_unnamed_addr #0 !prof !231 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !218
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %15, !prof !232

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = tail call i32 @reversed_comparison_code_parts(i32 noundef %4, ptr noundef %11, ptr noundef %13, ptr poison) #9
  br label %15

15:                                               ; preds = %2, %9
  %16 = phi i32 [ %14, %9 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @reversed_comparison(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !233 {
  %3 = tail call i32 @reversed_comparison_code(ptr noundef %0, ptr poison) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5, !prof !234

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = tail call ptr @simplify_gen_relational(i32 noundef %3, i32 noundef %1, i32 noundef 0, ptr noundef %7, ptr noundef %9) #8
  br label %11

11:                                               ; preds = %2, %5
  %12 = phi ptr [ %10, %5 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @simplify_gen_relational(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @swap_condition(i32 noundef %0) local_unnamed_addr #0 !prof !235 {
  %2 = add i32 %0, -80
  %3 = icmp ult i32 %2, 18
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 572, ptr noundef nonnull @.str.1) #8
  br label %9

5:                                                ; preds = %1
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds [18 x i32], ptr @switch.table.swap_condition, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi i32 [ %0, %4 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @unsigned_condition(i32 noundef %0) local_unnamed_addr #0 !prof !236 {
  %2 = add i32 %0, -80
  %3 = icmp ult i32 %2, 10
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 606, ptr noundef nonnull @.str.1) #8
  br label %9

5:                                                ; preds = %1
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds [10 x i32], ptr @switch.table.unsigned_condition, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi i32 [ %0, %4 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @signed_condition(i32 noundef %0) local_unnamed_addr #0 !prof !237 {
  %2 = add i32 %0, -80
  %3 = icmp ult i32 %2, 10
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 638, ptr noundef nonnull @.str.1) #8
  br label %9

5:                                                ; preds = %1
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds [10 x i32], ptr @switch.table.signed_condition, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi i32 [ %0, %4 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @comparison_dominates_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !238 {
  %3 = icmp eq i32 %0, 0
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %66, label %6, !prof !239

6:                                                ; preds = %2
  %7 = icmp eq i32 %0, %1
  br i1 %7, label %66, label %8, !prof !240

8:                                                ; preds = %6
  switch i32 %0, label %45 [
    i32 92, label %9
    i32 81, label %12
    i32 96, label %15
    i32 85, label %19
    i32 94, label %22
    i32 83, label %26
    i32 82, label %29
    i32 84, label %29
    i32 97, label %31
    i32 89, label %35
    i32 87, label %38
    i32 90, label %42
  ], !prof !241

9:                                                ; preds = %8
  %10 = and i32 %1, -3
  %11 = icmp eq i32 %10, 93
  br i1 %11, label %66, label %45, !prof !242

12:                                               ; preds = %8
  %13 = add i32 %1, -82
  %14 = icmp ult i32 %13, 10
  br i1 %14, label %46, label %45

15:                                               ; preds = %8
  %16 = icmp eq i32 %1, 95
  %17 = icmp eq i32 %1, 80
  %18 = or i1 %16, %17
  br label %66

19:                                               ; preds = %8
  %20 = add i32 %1, -80
  %21 = icmp ult i32 %20, 18
  br i1 %21, label %51, label %45

22:                                               ; preds = %8
  %23 = icmp eq i32 %1, 93
  %24 = icmp eq i32 %1, 80
  %25 = or i1 %23, %24
  br label %66

26:                                               ; preds = %8
  %27 = add i32 %1, -80
  %28 = icmp ult i32 %27, 18
  br i1 %28, label %56, label %45

29:                                               ; preds = %8, %8
  %30 = icmp eq i32 %1, 91
  br i1 %30, label %66, label %45, !prof !243

31:                                               ; preds = %8
  %32 = icmp eq i32 %1, 91
  %33 = icmp eq i32 %1, 80
  %34 = or i1 %32, %33
  br label %66

35:                                               ; preds = %8
  %36 = and i32 %1, -9
  %37 = icmp eq i32 %36, 80
  br i1 %37, label %66, label %45, !prof !244

38:                                               ; preds = %8
  %39 = icmp eq i32 %1, 86
  %40 = icmp eq i32 %1, 80
  %41 = or i1 %39, %40
  br label %66

42:                                               ; preds = %8
  %43 = add i32 %1, -80
  %44 = icmp ult i32 %43, 17
  br i1 %44, label %61, label %45

45:                                               ; preds = %42, %26, %19, %12, %8, %35, %29, %9
  br label %66

46:                                               ; preds = %12
  %47 = trunc i32 %13 to i10
  %48 = lshr i10 -427, %47
  %49 = and i10 %48, 1
  %50 = icmp ne i10 %49, 0
  br label %66

51:                                               ; preds = %19
  %52 = trunc i32 %20 to i18
  %53 = lshr i18 -129007, %52
  %54 = and i18 %53, 1
  %55 = icmp ne i18 %54, 0
  br label %66

56:                                               ; preds = %26
  %57 = trunc i32 %27 to i18
  %58 = lshr i18 -129019, %57
  %59 = and i18 %58, 1
  %60 = icmp ne i18 %59, 0
  br label %66

61:                                               ; preds = %42
  %62 = trunc i32 %43 to i17
  %63 = lshr i17 -4095, %62
  %64 = and i17 %63, 1
  %65 = icmp ne i17 %64, 0
  br label %66

66:                                               ; preds = %61, %56, %51, %46, %38, %31, %22, %15, %35, %29, %9, %6, %2, %45
  %67 = phi i1 [ false, %45 ], [ false, %2 ], [ true, %6 ], [ true, %9 ], [ true, %29 ], [ true, %35 ], [ %18, %15 ], [ %25, %22 ], [ %34, %31 ], [ %41, %38 ], [ %50, %46 ], [ %55, %51 ], [ %60, %56 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  ret i32 %68
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @simplejump_p(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !245 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %24, !prof !246

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 23
  br i1 %10, label %11, label %24, !prof !247

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 36
  br i1 %16, label %17, label %24, !prof !248

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !121
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 44
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %17, %11, %5, %1
  %25 = phi i32 [ 0, %11 ], [ 0, %5 ], [ 0, %1 ], [ %23, %17 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @condjump_p(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !249 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %7, label %41, !prof !250

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 36
  br i1 %12, label %13, label %41, !prof !250

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !121
  %16 = load i32, ptr %15, align 8
  %17 = trunc i32 %16 to i16
  switch i16 %17, label %40 [
    i16 44, label %41
    i16 47, label %18
  ], !prof !251

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 36
  %24 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  %26 = load i32, ptr %25, align 8
  br i1 %23, label %27, label %29, !prof !250

27:                                               ; preds = %18
  %28 = trunc i32 %26 to i16
  switch i16 %28, label %32 [
    i16 44, label %41
    i16 27, label %41
  ], !prof !252

29:                                               ; preds = %18
  %30 = and i32 %26, 65535
  %31 = icmp eq i32 %30, 36
  br i1 %31, label %35, label %41

32:                                               ; preds = %27
  %33 = and i32 %26, 65535
  %34 = icmp eq i32 %33, 36
  br i1 %34, label %37, label %41

35:                                               ; preds = %29
  %36 = icmp eq i32 %22, 44
  br i1 %36, label %41, label %37

37:                                               ; preds = %32, %35
  %38 = icmp eq i32 %22, 27
  %39 = zext i1 %38 to i32
  br label %41

40:                                               ; preds = %13
  br label %41

41:                                               ; preds = %32, %29, %37, %35, %27, %27, %13, %1, %7, %40
  %42 = phi i32 [ 0, %7 ], [ 0, %1 ], [ 1, %13 ], [ 1, %27 ], [ 0, %29 ], [ 1, %35 ], [ %39, %37 ], [ 1, %27 ], [ 0, %40 ], [ 0, %32 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @condjump_in_parallel_p(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !253 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %46

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %15, label %46

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !121
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 36
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !121
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %26 [
    i16 44, label %46
    i16 47, label %27
  ]

26:                                               ; preds = %21
  br label %46

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !121
  %30 = load ptr, ptr @global_rtl, align 16, !tbaa !150
  %31 = icmp eq ptr %29, %30
  %32 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !121
  br i1 %31, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, ptr %33, align 8
  %36 = trunc i32 %35 to i16
  switch i16 %36, label %37 [
    i16 44, label %46
    i16 27, label %46
  ]

37:                                               ; preds = %27, %34
  %38 = icmp eq ptr %33, %30
  br i1 %38, label %39, label %46

39:                                               ; preds = %37
  %40 = load i32, ptr %29, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 44
  %43 = icmp eq i32 %41, 27
  %44 = or i1 %42, %43
  %45 = zext i1 %44 to i32
  br label %46

46:                                               ; preds = %37, %39, %34, %34, %21, %15, %7, %1, %26
  %47 = phi i32 [ 0, %26 ], [ 0, %1 ], [ 0, %7 ], [ 0, %15 ], [ 1, %21 ], [ 1, %34 ], [ 1, %34 ], [ %45, %39 ], [ 0, %37 ]
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @any_uncondjump_p(ptr noundef %0) local_unnamed_addr #0 !prof !254 {
  %2 = tail call ptr @pc_set(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4, !prof !255

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 44
  br i1 %9, label %10, label %14, !prof !256

10:                                               ; preds = %4
  %11 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 28, ptr noundef null) #8
  %12 = icmp eq ptr %11, null
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %10, %4, %1
  %15 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %13, %10 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @any_condjump_p(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !257 {
  %2 = tail call ptr @pc_set(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4, !prof !258

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 47
  br i1 %9, label %10, label %30, !prof !259

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !121
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 36
  br i1 %18, label %19, label %21, !prof !260

19:                                               ; preds = %10
  %20 = trunc i32 %13 to i16
  switch i16 %20, label %29 [
    i16 44, label %30
    i16 27, label %30
    i16 36, label %26
  ], !prof !261

21:                                               ; preds = %10
  %22 = and i32 %13, 65535
  %23 = icmp eq i32 %22, 36
  br i1 %23, label %24, label %29, !prof !262

24:                                               ; preds = %21
  %25 = icmp eq i32 %17, 44
  br i1 %25, label %30, label %26, !prof !263

26:                                               ; preds = %19, %24
  %27 = icmp eq i32 %17, 27
  %28 = zext i1 %27 to i32
  br label %30

29:                                               ; preds = %19, %21
  br label %30

30:                                               ; preds = %24, %26, %29, %19, %19, %4, %1
  %31 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 1, %19 ], [ 1, %24 ], [ %28, %26 ], [ 1, %19 ], [ 0, %29 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @condjump_label(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !253 {
  %2 = tail call ptr @pc_set(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %9 [
    i16 44, label %28
    i16 47, label %10
  ]

9:                                                ; preds = %4
  br label %28

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = load ptr, ptr @global_rtl, align 16, !tbaa !150
  %14 = icmp eq ptr %12, %13
  %15 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  br i1 %14, label %17, label %21

17:                                               ; preds = %10
  %18 = load i32, ptr %16, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 44
  br i1 %20, label %28, label %21

21:                                               ; preds = %10, %17
  %22 = icmp eq ptr %16, %13
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load i32, ptr %12, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 44
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %21
  br label %28

28:                                               ; preds = %23, %17, %4, %1, %27, %9
  %29 = phi ptr [ null, %9 ], [ null, %27 ], [ null, %1 ], [ %6, %4 ], [ %16, %17 ], [ %12, %23 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @returnjump_p(ptr noundef %0) local_unnamed_addr #0 !prof !264 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %8, !prof !265

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = tail call i32 @for_each_rtx(ptr noundef nonnull %6, ptr noundef nonnull @returnjump_p_1, ptr noundef null) #8
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @returnjump_p_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 !prof !266 !PGOFuncName !267 {
  %3 = load ptr, ptr %0, align 8, !tbaa !150
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5, !prof !268

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %11 [
    i16 27, label %12
    i16 28, label %12
    i16 23, label %8
  ], !prof !269

8:                                                ; preds = %5
  %9 = lshr i32 %6, 24
  %10 = and i32 %9, 1
  br label %12

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %5, %5, %2, %11, %8
  %13 = phi i32 [ 0, %11 ], [ %10, %8 ], [ 0, %2 ], [ 1, %5 ], [ 1, %5 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @eh_returnjump_p(ptr noundef %0) local_unnamed_addr #0 !prof !270 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %8, !prof !271

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = tail call i32 @for_each_rtx(ptr noundef nonnull %6, ptr noundef nonnull @eh_returnjump_p_1, ptr noundef null) #8
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @eh_returnjump_p_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 !prof !253 !PGOFuncName !272 {
  %3 = load ptr, ptr %0, align 8, !tbaa !150
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 28
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @onlyjump_p(ptr noundef %0) local_unnamed_addr #0 !prof !273 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %5, label %27, !prof !274

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 23
  br i1 %10, label %14, label %11, !prof !275

11:                                               ; preds = %5
  %12 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %7) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14, !prof !276

14:                                               ; preds = %5, %11
  %15 = phi ptr [ %12, %11 ], [ %7, %5 ]
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !121
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 36
  br i1 %20, label %21, label %27, !prof !277

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !121
  %24 = tail call i32 @side_effects_p(ptr noundef %23) #8
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %21, %14, %11, %1
  %28 = phi i32 [ 0, %1 ], [ 0, %11 ], [ 0, %14 ], [ %26, %21 ]
  ret i32 %28
}

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @extract_asm_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_jump_label_asm(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !253 !PGOFuncName !278 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !121
  %5 = load i32, ptr %4, align 8, !tbaa !186
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = zext nneg i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ %8, %7 ], [ %11, %9 ]
  %11 = add nsw i64 %10, -1
  %12 = load ptr, ptr %3, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.rtvec_def, ptr %12, i64 0, i32 1, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !150
  tail call fastcc void @mark_jump_label_1(ptr noundef %14, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %15 = icmp ugt i64 %10, 1
  br i1 %15, label %9, label %16, !llvm.loop !279

16:                                               ; preds = %9, %2
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !121
  %19 = load i32, ptr %18, align 8, !tbaa !186
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = zext nneg i32 %19 to i64
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ %22, %21 ], [ %25, %23 ]
  %25 = add nsw i64 %24, -1
  %26 = load ptr, ptr %17, align 8, !tbaa !121
  %27 = getelementptr inbounds %struct.rtvec_def, ptr %26, i64 0, i32 1, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !150
  tail call fastcc void @mark_jump_label_1(ptr noundef %28, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  %29 = icmp ugt i64 %24, 1
  br i1 %29, label %23, label %30, !llvm.loop !280

30:                                               ; preds = %23, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @delete_related_insns(ptr noundef %0) local_unnamed_addr #0 !prof !253 {
  %2 = alloca ptr, align 8
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 12
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = load ptr, ptr %6, align 8, !tbaa !121
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %1, %16
  %12 = phi ptr [ %18, %16 ], [ %9, %1 ]
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 134217728
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !121
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %11, !llvm.loop !281

20:                                               ; preds = %16, %1
  %21 = and i32 %3, 134217728
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %211

23:                                               ; preds = %11
  %24 = and i32 %3, 134217728
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %211

26:                                               ; preds = %23
  %27 = tail call ptr @delete_insn(ptr noundef nonnull %0) #8
  %28 = load i32, ptr %12, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 11
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %20
  %32 = phi ptr [ %0, %20 ], [ %12, %26 ]
  %33 = phi ptr [ null, %20 ], [ %12, %26 ]
  %34 = tail call ptr @delete_insn(ptr noundef nonnull %32) #8
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi ptr [ %12, %26 ], [ %33, %31 ]
  %37 = load i32, ptr %0, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 9
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !121
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %45 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !121
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = tail call ptr @delete_related_insns(ptr noundef nonnull %42) #9
  br label %56

50:                                               ; preds = %44
  %51 = call zeroext i8 @tablejump_p(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %2) #8
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %2, align 8, !tbaa !150
  %55 = call ptr @delete_related_insns(ptr noundef %54) #9
  br label %56

56:                                               ; preds = %50, %53, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %57 = load i32, ptr %0, align 8
  br label %58

58:                                               ; preds = %56, %40, %35
  %59 = phi i32 [ %57, %56 ], [ %37, %40 ], [ %37, %35 ]
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %62, label %105

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !121
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65534
  %67 = icmp eq i32 %66, 20
  br i1 %67, label %68, label %108

68:                                               ; preds = %62
  %69 = and i32 %65, 21
  %70 = icmp eq i32 %69, 21
  %71 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %72 = zext i1 %70 to i64
  %73 = getelementptr inbounds [1 x %union.rtunion_def], ptr %71, i64 0, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !121
  %75 = load i32, ptr %74, align 8, !tbaa !186
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = zext nneg i32 %75 to i64
  br label %81

79:                                               ; preds = %93, %68
  %80 = icmp eq ptr %36, null
  br i1 %80, label %211, label %96

81:                                               ; preds = %77, %93
  %82 = phi i64 [ 0, %77 ], [ %94, %93 ]
  %83 = load ptr, ptr %73, align 8, !tbaa !121
  %84 = getelementptr inbounds %struct.rtvec_def, ptr %83, i64 0, i32 1, i64 %82
  %85 = load ptr, ptr %84, align 8, !tbaa !150
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !121
  %88 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !121
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = call ptr @delete_related_insns(ptr noundef nonnull %87) #9
  br label %93

93:                                               ; preds = %81, %91
  %94 = add nuw nsw i64 %82, 1
  %95 = icmp eq i64 %94, %78
  br i1 %95, label %79, label %81, !llvm.loop !282

96:                                               ; preds = %79, %101
  %97 = phi ptr [ %103, %101 ], [ %36, %79 ]
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 134217728
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %211, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 2
  %103 = load ptr, ptr %102, align 8, !tbaa !121
  %104 = icmp eq ptr %103, null
  br i1 %104, label %211, label %96, !llvm.loop !283

105:                                              ; preds = %58
  %106 = add nsw i32 %60, -7
  %107 = icmp ult i32 %106, 4
  br i1 %107, label %108, label %135

108:                                              ; preds = %62, %105
  %109 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !121
  %111 = icmp eq ptr %110, null
  br i1 %111, label %135, label %112

112:                                              ; preds = %108, %131
  %113 = phi ptr [ %133, %131 ], [ %110, %108 ]
  %114 = load i32, ptr %113, align 8
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = add nsw i32 %116, -9
  %118 = icmp ult i32 %117, 2
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !121
  %122 = load i32, ptr %121, align 8
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %123, 12
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !121
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call ptr @delete_related_insns(ptr noundef nonnull %121) #9
  br label %131

131:                                              ; preds = %112, %119, %129, %125
  %132 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1, i32 0, i32 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !121
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %112, !llvm.loop !284

135:                                              ; preds = %131, %108, %105
  %136 = icmp eq ptr %8, null
  br i1 %136, label %149, label %137

137:                                              ; preds = %135, %145
  %138 = phi ptr [ %147, %145 ], [ %8, %135 ]
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 134217728
  %141 = icmp eq i32 %140, 0
  %142 = and i32 %139, 65535
  %143 = icmp ne i32 %142, 13
  %144 = and i1 %141, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1, i32 0, i32 0, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !121
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %137, !llvm.loop !285

149:                                              ; preds = %145, %137, %135
  %150 = phi ptr [ null, %135 ], [ %138, %137 ], [ null, %145 ]
  %151 = phi i1 [ false, %135 ], [ %144, %137 ], [ %144, %145 ]
  br i1 %5, label %152, label %197

152:                                              ; preds = %149
  %153 = load ptr, ptr %6, align 8, !tbaa !121
  %154 = icmp eq ptr %153, null
  br i1 %154, label %167, label %155

155:                                              ; preds = %152
  %156 = load i32, ptr %153, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 9
  br i1 %158, label %159, label %167

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !121
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65534
  %164 = icmp eq i32 %163, 20
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = call ptr @delete_related_insns(ptr noundef nonnull %153) #9
  br label %167

167:                                              ; preds = %159, %165, %155, %152
  %168 = phi ptr [ %166, %165 ], [ %36, %155 ], [ %36, %152 ], [ %36, %159 ]
  br i1 %151, label %169, label %197

169:                                              ; preds = %167
  %170 = load i32, ptr %150, align 8
  %171 = and i32 %170, 65535
  %172 = icmp eq i32 %171, 11
  br i1 %172, label %173, label %197

173:                                              ; preds = %169
  %174 = icmp eq ptr %168, null
  br i1 %174, label %211, label %175

175:                                              ; preds = %173, %194
  %176 = phi ptr [ %195, %194 ], [ %168, %173 ]
  %177 = load i32, ptr %176, align 8
  %178 = trunc i32 %177 to i16
  switch i16 %178, label %188 [
    i16 13, label %179
    i16 12, label %182
    i16 11, label %192
  ]

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1, i32 0, i32 0, i64 2
  %181 = load ptr, ptr %180, align 8, !tbaa !121
  br label %194

182:                                              ; preds = %175
  %183 = and i32 %177, 134217728
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %200, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1, i32 0, i32 0, i64 2
  %187 = load ptr, ptr %186, align 8, !tbaa !121
  br label %194

188:                                              ; preds = %175
  %189 = and i32 %177, 65535
  %190 = add nsw i32 %189, -7
  %191 = icmp ult i32 %190, 4
  br i1 %191, label %192, label %200

192:                                              ; preds = %188, %175
  %193 = call ptr @delete_related_insns(ptr noundef nonnull %176) #9
  br label %194

194:                                              ; preds = %185, %192, %179
  %195 = phi ptr [ %181, %179 ], [ %187, %185 ], [ %193, %192 ]
  %196 = icmp eq ptr %195, null
  br i1 %196, label %211, label %175, !llvm.loop !286

197:                                              ; preds = %149, %169, %167
  %198 = phi ptr [ %168, %169 ], [ %168, %167 ], [ %36, %149 ]
  %199 = icmp eq ptr %198, null
  br i1 %199, label %211, label %200

200:                                              ; preds = %188, %182, %197
  %201 = phi ptr [ %198, %197 ], [ %176, %182 ], [ %176, %188 ]
  br label %202

202:                                              ; preds = %200, %207
  %203 = phi ptr [ %209, %207 ], [ %201, %200 ]
  %204 = load i32, ptr %203, align 8
  %205 = and i32 %204, 134217728
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.rtx_def, ptr %203, i64 0, i32 1, i32 0, i32 0, i64 2
  %209 = load ptr, ptr %208, align 8, !tbaa !121
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %202, !llvm.loop !287

211:                                              ; preds = %194, %207, %202, %101, %96, %173, %197, %79, %23, %20
  %212 = phi ptr [ null, %20 ], [ %12, %23 ], [ null, %79 ], [ null, %197 ], [ null, %173 ], [ null, %101 ], [ %97, %96 ], [ null, %207 ], [ %203, %202 ], [ null, %194 ]
  ret ptr %212
}

; Function Attrs: optsize
declare zeroext i8 @tablejump_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @delete_for_peephole(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #5 !prof !253 {
  br label %3

3:                                                ; preds = %21, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %21 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = load i32, ptr %4, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 13
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = or i32 %9, 134217728
  store i32 %13, ptr %4, align 8
  %14 = icmp eq ptr %8, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %6, ptr %16, align 8, !tbaa !121
  br label %17

17:                                               ; preds = %15, %12
  %18 = icmp eq ptr %6, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %8, ptr %20, align 8, !tbaa !121
  br label %21

21:                                               ; preds = %17, %19, %3
  %22 = icmp eq ptr %4, %1
  br i1 %22, label %23, label %3

23:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @redirect_jump_1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !288 {
  %3 = tail call i32 @num_validated_changes() #8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = tail call ptr @extract_asm_operands(ptr noundef %5) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8, !prof !289

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = load i32, ptr %12, align 8, !tbaa !186
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1432, ptr noundef nonnull @.str.1) #8
  %16 = load ptr, ptr %11, align 8, !tbaa !121
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %12, %10 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.rtvec_def, ptr %18, i64 0, i32 1
  br label %29

20:                                               ; preds = %2
  %21 = load ptr, ptr %4, align 8, !tbaa !121
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 15
  br i1 %24, label %25, label %29, !prof !290

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !121
  %28 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1
  br label %29

29:                                               ; preds = %20, %25, %17
  %30 = phi ptr [ %19, %17 ], [ %28, %25 ], [ %4, %20 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !121
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %30, ptr noundef %32, ptr noundef %1, ptr noundef nonnull %0) #9
  %33 = tail call i32 @num_validated_changes() #8
  %34 = icmp sgt i32 %33, %3
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %8, %29
  %37 = phi i32 [ %35, %29 ], [ 0, %8 ]
  ret i32 %37
}

; Function Attrs: optsize
declare i32 @num_validated_changes() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @redirect_exp_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !291 !PGOFuncName !292 {
  %5 = icmp eq ptr %2, null
  br label %6

6:                                                ; preds = %57, %4
  %7 = phi ptr [ %0, %4 ], [ %59, %57 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !150
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = trunc i32 %9 to i16
  switch i16 %11, label %35 [
    i16 44, label %12
    i16 27, label %21
  ], !prof !293

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !121
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %60, !prof !289

16:                                               ; preds = %12
  br i1 %5, label %19, label %17, !prof !294

17:                                               ; preds = %16
  %18 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef nonnull %2) #8
  br label %93

19:                                               ; preds = %16
  %20 = tail call ptr @gen_rtx_fmt__stat(i32 noundef 27, i32 noundef 0) #8
  br label %93

21:                                               ; preds = %6
  %22 = icmp eq ptr %1, null
  br i1 %22, label %23, label %60

23:                                               ; preds = %21
  br i1 %5, label %26, label %24

24:                                               ; preds = %23
  %25 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef nonnull %2) #8
  br label %28

26:                                               ; preds = %23
  %27 = tail call ptr @gen_rtx_fmt__stat(i32 noundef 27, i32 noundef 0) #8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi ptr [ %25, %24 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  %31 = icmp eq ptr %30, %7
  br i1 %31, label %32, label %93

32:                                               ; preds = %28
  %33 = load ptr, ptr @global_rtl, align 16, !tbaa !150
  %34 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %33, ptr noundef %29) #8
  br label %93

35:                                               ; preds = %6
  %36 = icmp eq i32 %10, 23
  %37 = and i1 %5, %36
  br i1 %37, label %38, label %55, !prof !295

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !121
  %41 = load ptr, ptr @global_rtl, align 16, !tbaa !150
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %43, label %60, !prof !296

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !121
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 44
  br i1 %48, label %49, label %60, !prof !297

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !121
  %52 = icmp eq ptr %51, %1
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = tail call ptr @gen_rtx_fmt__stat(i32 noundef 27, i32 noundef 0) #8
  br label %93

55:                                               ; preds = %35
  %56 = icmp eq i32 %10, 47
  br i1 %56, label %57, label %60, !prof !298

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %58, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9
  %59 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %6

60:                                               ; preds = %55, %12, %21, %38, %43, %49
  %61 = zext nneg i32 %10 to i64
  %62 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !150
  %64 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %61
  %65 = load i8, ptr %64, align 1, !tbaa !121
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %96, label %67, !prof !299

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %69 = zext i8 %65 to i64
  br label %70

70:                                               ; preds = %67, %91
  %71 = phi i64 [ %69, %67 ], [ %72, %91 ]
  %72 = add nsw i64 %71, -1
  %73 = getelementptr inbounds i8, ptr %63, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !121
  switch i8 %74, label %91 [
    i8 101, label %80
    i8 69, label %75
  ], !prof !300

75:                                               ; preds = %70
  %76 = getelementptr inbounds [1 x %union.rtunion_def], ptr %68, i64 0, i64 %72
  %77 = load ptr, ptr %76, align 8, !tbaa !121
  %78 = load i32, ptr %77, align 8, !tbaa !186
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %82, label %91

80:                                               ; preds = %70
  %81 = getelementptr inbounds [1 x %union.rtunion_def], ptr %68, i64 0, i64 %72
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %81, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9
  br label %91

82:                                               ; preds = %75, %82
  %83 = phi i64 [ %86, %82 ], [ 0, %75 ]
  %84 = phi ptr [ %87, %82 ], [ %77, %75 ]
  %85 = getelementptr inbounds %struct.rtvec_def, ptr %84, i64 0, i32 1, i64 %83
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %85, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9
  %86 = add nuw nsw i64 %83, 1
  %87 = load ptr, ptr %76, align 8, !tbaa !121
  %88 = load i32, ptr %87, align 8, !tbaa !186
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %82, label %91, !llvm.loop !301

91:                                               ; preds = %82, %75, %70, %80
  %92 = icmp sgt i64 %71, 1
  br i1 %92, label %70, label %96, !prof !302, !llvm.loop !303

93:                                               ; preds = %28, %32, %17, %19, %53
  %94 = phi ptr [ %54, %53 ], [ %18, %17 ], [ %20, %19 ], [ %34, %32 ], [ %29, %28 ]
  %95 = tail call zeroext i8 @validate_change(ptr noundef %3, ptr noundef nonnull %7, ptr noundef %94, i8 noundef zeroext 1) #8
  br label %96

96:                                               ; preds = %91, %93, %60
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_u_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt__stat(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @redirect_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !304 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %14, label %7, !prof !305

7:                                                ; preds = %3
  %8 = tail call i32 @redirect_jump_1(ptr noundef nonnull %0, ptr noundef %1) #9, !range !306
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !305

10:                                               ; preds = %7
  %11 = tail call i32 @apply_change_group() #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !305

13:                                               ; preds = %10
  tail call void @redirect_jump_2(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef 0) #9
  br label %14

14:                                               ; preds = %7, %10, %3, %13
  %15 = phi i32 [ 1, %13 ], [ 1, %3 ], [ 0, %10 ], [ 0, %7 ]
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @redirect_jump_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !307 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %10, label %9, !prof !308

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1479, ptr noundef nonnull @.str.1) #8
  br label %10

10:                                               ; preds = %5, %9
  %11 = icmp sgt i32 %3, -1
  br i1 %11, label %13, label %12, !prof !308

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1484, ptr noundef nonnull @.str.1) #8
  br label %13

13:                                               ; preds = %10, %12
  store ptr %2, ptr %6, align 8, !tbaa !121
  %14 = icmp eq ptr %2, null
  br i1 %14, label %15, label %18, !prof !309

15:                                               ; preds = %13
  %16 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 4, ptr noundef null) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %31, !prof !308

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !121
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !121
  %22 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 4, ptr noundef null) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24, !prof !308

24:                                               ; preds = %18
  %25 = icmp eq i32 %4, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !121
  %29 = tail call fastcc i32 @invert_exp_1(ptr noundef %28, ptr noundef nonnull %0) #9, !range !306
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %15, %26
  %32 = phi ptr [ %22, %26 ], [ %16, %15 ]
  tail call void @remove_note(ptr noundef nonnull %0, ptr noundef nonnull %32) #8
  br label %35

33:                                               ; preds = %26, %24
  %34 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  tail call fastcc void @redirect_exp_1(ptr noundef nonnull %34, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %0) #9
  tail call void @confirm_change_group() #8
  br label %35

35:                                               ; preds = %18, %31, %33, %15
  %36 = icmp eq ptr %1, null
  br i1 %36, label %50, label %37, !prof !309

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !121
  %40 = add nsw i32 %39, -1
  store i32 %40, ptr %38, align 8, !tbaa !121
  %41 = icmp eq i32 %40, 0
  %42 = icmp sgt i32 %3, 0
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %50, !prof !310

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !121
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @delete_related_insns(ptr noundef nonnull %1) #9
  br label %50

50:                                               ; preds = %48, %44, %37, %35
  %51 = icmp eq i32 %4, 0
  br i1 %51, label %53, label %52, !prof !311

52:                                               ; preds = %50
  tail call void @invert_br_probabilities(ptr noundef nonnull %0) #8
  br label %53

53:                                               ; preds = %52, %50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @invert_exp_1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !312 !PGOFuncName !313 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 47
  br i1 %5, label %6, label %28, !prof !314

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = tail call i32 @reversed_comparison_code(ptr noundef %8, ptr poison) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11, !prof !315

11:                                               ; preds = %6
  %12 = load i32, ptr %8, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  %17 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !121
  %19 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %9, i32 noundef %14, ptr noundef %16, ptr noundef %18) #8
  %20 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %7, ptr noundef %19, i8 noundef zeroext 1) #8
  br label %28

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !121
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  %26 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %22, ptr noundef %25, i8 noundef zeroext 1) #8
  %27 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %24, ptr noundef %23, i8 noundef zeroext 1) #8
  br label %28

28:                                               ; preds = %2, %11, %21
  %29 = phi i32 [ 1, %21 ], [ 1, %11 ], [ 0, %2 ]
  ret i32 %29
}

; Function Attrs: optsize
declare void @confirm_change_group() local_unnamed_addr #2

; Function Attrs: optsize
declare void @invert_br_probabilities(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @invert_jump_1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !312 {
  %3 = tail call ptr @pc_set(ptr noundef %0) #9
  %4 = tail call i32 @num_validated_changes() #8
  %5 = icmp eq ptr %3, null
  br i1 %5, label %21, label %6, !prof !316

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = tail call fastcc i32 @invert_exp_1(ptr noundef %8, ptr noundef %0) #9, !range !306
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !316

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1564, ptr noundef nonnull @.str.1) #8
  br label %12

12:                                               ; preds = %6, %11
  %13 = tail call i32 @num_validated_changes() #8
  %14 = icmp eq i32 %13, %4
  br i1 %14, label %21, label %15, !prof !316

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !121
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %21, label %19, !prof !317

19:                                               ; preds = %15
  %20 = tail call i32 @redirect_jump_1(ptr noundef nonnull %0, ptr noundef %1) #9, !range !306
  br label %21

21:                                               ; preds = %15, %19, %12, %2
  %22 = phi i32 [ 0, %2 ], [ 0, %12 ], [ 1, %15 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @invert_jump(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !318 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = tail call i32 @invert_jump_1(ptr noundef %0, ptr noundef %1) #9, !range !306
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !319

8:                                                ; preds = %3
  %9 = tail call i32 @apply_change_group() #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !319

11:                                               ; preds = %8
  tail call void @redirect_jump_2(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef 1) #9
  br label %13

12:                                               ; preds = %8, %3
  tail call void @cancel_changes(i32 noundef 0) #8
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi i32 [ 1, %11 ], [ 0, %12 ]
  ret i32 %14
}

; Function Attrs: optsize
declare void @cancel_changes(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rtx_renumbered_equal_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !320 {
  %3 = alloca %struct.subreg_info, align 4
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %197, label %5, !prof !321

5:                                                ; preds = %2, %231
  %6 = phi ptr [ %235, %231 ], [ %1, %2 ]
  %7 = phi ptr [ %233, %231 ], [ %0, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = trunc i32 %8 to i16
  switch i16 %10, label %117 [
    i16 37, label %17
    i16 39, label %11
  ], !prof !322

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %117

17:                                               ; preds = %5, %11
  %18 = load i32, ptr %6, align 8
  %19 = trunc i32 %18 to i16
  switch i16 %19, label %117 [
    i16 37, label %26
    i16 39, label %20
  ], !prof !323

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !121
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 37
  br i1 %25, label %26, label %117

26:                                               ; preds = %17, %20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %27 = xor i32 %18, %8
  %28 = and i32 %27, 16711680
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %115, !prof !324

30:                                               ; preds = %26
  %31 = load ptr, ptr @reg_renumber, align 8, !tbaa !150
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35, !prof !325

33:                                               ; preds = %30
  %34 = tail call i32 @rtx_equal_p(ptr noundef nonnull %7, ptr noundef nonnull %6) #8
  br label %115

35:                                               ; preds = %30
  %36 = icmp eq i32 %9, 39
  br i1 %36, label %37, label %60, !prof !325

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !121
  %40 = tail call fastcc i32 @rhs_regno(ptr noundef %39) #9
  %41 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load i32, ptr %41, align 8, !tbaa !121
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds i16, ptr %31, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !326
  %46 = icmp sgt i16 %45, -1
  br i1 %46, label %47, label %68

47:                                               ; preds = %37
  %48 = zext nneg i16 %45 to i32
  %49 = load i32, ptr %39, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = lshr i32 %8, 16
  %53 = and i32 %52, 255
  call void @subreg_get_info(i32 noundef %48, i32 noundef %51, i32 noundef %42, i32 noundef %53, ptr noundef nonnull %3) #8
  %54 = getelementptr inbounds %struct.subreg_info, ptr %3, i64 0, i32 2
  %55 = load i8, ptr %54, align 4, !tbaa !328
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %115, label %57

57:                                               ; preds = %47
  %58 = load i32, ptr %3, align 4, !tbaa !330
  %59 = load i32, ptr %6, align 8
  br label %68

60:                                               ; preds = %35
  %61 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #9
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16, ptr %31, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !326
  %65 = icmp sgt i16 %64, -1
  br i1 %65, label %66, label %68, !prof !325

66:                                               ; preds = %60
  %67 = zext nneg i16 %64 to i32
  br label %68

68:                                               ; preds = %60, %66, %37, %57
  %69 = phi i32 [ %59, %57 ], [ %18, %37 ], [ %18, %66 ], [ %18, %60 ]
  %70 = phi i32 [ %58, %57 ], [ %40, %37 ], [ %67, %66 ], [ %61, %60 ]
  %71 = phi i32 [ 0, %57 ], [ %42, %37 ], [ 0, %66 ], [ 0, %60 ]
  %72 = and i32 %69, 65535
  %73 = icmp eq i32 %72, 39
  br i1 %73, label %74, label %97, !prof !325

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !121
  %77 = call fastcc i32 @rhs_regno(ptr noundef %76) #9
  %78 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load i32, ptr %78, align 8, !tbaa !121
  %80 = load ptr, ptr @reg_renumber, align 8, !tbaa !150
  %81 = sext i32 %77 to i64
  %82 = getelementptr inbounds i16, ptr %80, i64 %81
  %83 = load i16, ptr %82, align 2, !tbaa !326
  %84 = icmp sgt i16 %83, -1
  br i1 %84, label %85, label %106

85:                                               ; preds = %74
  %86 = zext nneg i16 %83 to i32
  %87 = load i32, ptr %76, align 8
  %88 = lshr i32 %87, 16
  %89 = and i32 %88, 255
  %90 = lshr i32 %69, 16
  %91 = and i32 %90, 255
  call void @subreg_get_info(i32 noundef %86, i32 noundef %89, i32 noundef %79, i32 noundef %91, ptr noundef nonnull %3) #8
  %92 = getelementptr inbounds %struct.subreg_info, ptr %3, i64 0, i32 2
  %93 = load i8, ptr %92, align 4, !tbaa !328
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %115, label %95

95:                                               ; preds = %85
  %96 = load i32, ptr %3, align 4, !tbaa !330
  br label %106

97:                                               ; preds = %68
  %98 = call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #9
  %99 = load ptr, ptr @reg_renumber, align 8, !tbaa !150
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i16, ptr %99, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !326
  %103 = icmp sgt i16 %102, -1
  br i1 %103, label %104, label %106, !prof !325

104:                                              ; preds = %97
  %105 = zext nneg i16 %102 to i32
  br label %106

106:                                              ; preds = %97, %104, %74, %95
  %107 = phi i32 [ %96, %95 ], [ %77, %74 ], [ %105, %104 ], [ %98, %97 ]
  %108 = phi i32 [ 0, %95 ], [ %79, %74 ], [ 0, %104 ], [ 0, %97 ]
  %109 = icmp sgt i32 %70, -1
  %110 = icmp eq i32 %70, %107
  %111 = select i1 %109, i1 %110, i1 false
  %112 = icmp eq i32 %71, %108
  %113 = select i1 %111, i1 %112, i1 false, !prof !331
  %114 = zext i1 %113 to i32
  br label %115

115:                                              ; preds = %85, %47, %26, %106, %33
  %116 = phi i32 [ %34, %33 ], [ %114, %106 ], [ 0, %26 ], [ 0, %47 ], [ 0, %85 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  br label %197

117:                                              ; preds = %17, %5, %20, %11
  %118 = load i32, ptr %6, align 8
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %9, %119
  br i1 %120, label %121, label %197, !prof !332

121:                                              ; preds = %117
  switch i16 %10, label %147 [
    i16 36, label %197
    i16 46, label %197
    i16 20, label %197
    i16 21, label %197
    i16 30, label %197
    i16 32, label %197
    i16 44, label %122
    i16 45, label %140
    i16 12, label %197
  ], !prof !333

122:                                              ; preds = %121
  %123 = or i32 %118, %8
  %124 = and i32 %123, 134217728
  %125 = icmp eq i32 %124, 0
  %126 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !121
  br i1 %125, label %133, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !121
  %131 = icmp eq ptr %127, %130
  %132 = zext i1 %131 to i32
  br label %197

133:                                              ; preds = %122
  %134 = tail call ptr @next_real_insn(ptr noundef %127) #8
  %135 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !121
  %137 = tail call ptr @next_real_insn(ptr noundef %136) #8
  %138 = icmp eq ptr %134, %137
  %139 = zext i1 %138 to i32
  br label %197

140:                                              ; preds = %121
  %141 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !121
  %143 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !121
  %145 = icmp eq ptr %142, %144
  %146 = zext i1 %145 to i32
  br label %197

147:                                              ; preds = %121
  %148 = xor i32 %118, %8
  %149 = and i32 %148, 16711680
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %197, !prof !334

151:                                              ; preds = %147
  %152 = icmp eq i32 %9, 43
  br i1 %152, label %153, label %173, !prof !335

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !121
  %156 = icmp eq ptr %155, null
  br i1 %156, label %161, label %157, !prof !336

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.mem_attrs, ptr %155, i64 0, i32 5
  %159 = load i8, ptr %158, align 8, !tbaa !337
  %160 = zext i8 %159 to i32
  br label %161

161:                                              ; preds = %153, %157
  %162 = phi i32 [ %160, %157 ], [ 0, %153 ]
  %163 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %164 = load ptr, ptr %163, align 8, !tbaa !121
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166, !prof !339

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.mem_attrs, ptr %164, i64 0, i32 5
  %168 = load i8, ptr %167, align 8, !tbaa !337
  %169 = zext i8 %168 to i32
  br label %170

170:                                              ; preds = %161, %166
  %171 = phi i32 [ %169, %166 ], [ 0, %161 ]
  %172 = icmp eq i32 %162, %171
  br i1 %172, label %173, label %197, !prof !340

173:                                              ; preds = %170, %151
  %174 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 38), align 8, !tbaa !341
  %175 = tail call zeroext i8 %174(ptr noundef nonnull %7, i32 noundef 0) #8
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %206, label %177, !prof !353

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !121
  %180 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !121
  %182 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %179, ptr noundef %181) #9
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %191, label %184, !prof !354

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !121
  %187 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !121
  %189 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %186, ptr noundef %188) #9
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %197, !prof !355

191:                                              ; preds = %184, %177
  %192 = load ptr, ptr %178, align 8, !tbaa !121
  %193 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !121
  %195 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %192, ptr noundef %194) #9
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199, !prof !356

197:                                              ; preds = %214, %184, %191, %140, %133, %128, %115, %237, %2, %305, %291, %285, %278, %271, %265, %259, %253, %316, %231, %117, %121, %121, %121, %121, %121, %121, %121, %147, %170, %221, %199
  %198 = phi i32 [ %205, %199 ], [ %228, %221 ], [ %116, %115 ], [ %146, %140 ], [ %132, %128 ], [ %139, %133 ], [ 1, %184 ], [ 0, %191 ], [ 0, %214 ], [ 1, %237 ], [ 1, %2 ], [ 0, %305 ], [ 1, %316 ], [ 0, %253 ], [ 0, %259 ], [ 0, %265 ], [ 0, %271 ], [ 0, %278 ], [ 0, %285 ], [ 0, %291 ], [ 0, %170 ], [ 0, %147 ], [ 0, %121 ], [ 0, %121 ], [ 0, %121 ], [ 0, %121 ], [ 0, %121 ], [ 0, %121 ], [ 0, %121 ], [ 0, %117 ], [ 1, %231 ]
  ret i32 %198

199:                                              ; preds = %191
  %200 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !121
  %202 = load ptr, ptr %180, align 8, !tbaa !121
  %203 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %201, ptr noundef %202) #9
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i32
  br label %197

206:                                              ; preds = %173
  %207 = load i32, ptr %7, align 8
  %208 = and i32 %207, 65535
  %209 = zext nneg i32 %208 to i64
  %210 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !218
  %212 = and i32 %211, -3
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %229, !prof !357

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !121
  %217 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !121
  %219 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %216, ptr noundef %218) #9
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %197, label %221, !prof !358

221:                                              ; preds = %214
  %222 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !121
  %224 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !121
  %226 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %223, ptr noundef %225) #9
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i32
  br label %197

229:                                              ; preds = %206
  %230 = icmp eq i32 %211, 4
  br i1 %230, label %231, label %237, !prof !359

231:                                              ; preds = %229
  %232 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !121
  %234 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !121
  %236 = icmp eq ptr %233, %235
  br i1 %236, label %197, label %5, !prof !360

237:                                              ; preds = %229
  %238 = zext nneg i32 %9 to i64
  %239 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !150
  %241 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %238
  %242 = load i8, ptr %241, align 1, !tbaa !121
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %197, label %244, !prof !361

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %246 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %247 = zext i8 %242 to i64
  br label %248

248:                                              ; preds = %244, %316
  %249 = phi i64 [ %247, %244 ], [ %250, %316 ]
  %250 = add nsw i64 %249, -1
  %251 = getelementptr inbounds i8, ptr %240, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !121
  switch i8 %252, label %315 [
    i8 119, label %253
    i8 105, label %259
    i8 116, label %265
    i8 115, label %271
    i8 101, label %278
    i8 117, label %285
    i8 48, label %316
    i8 69, label %291
  ], !prof !362

253:                                              ; preds = %248
  %254 = getelementptr inbounds [1 x i64], ptr %245, i64 0, i64 %250
  %255 = load i64, ptr %254, align 8, !tbaa !121
  %256 = getelementptr inbounds [1 x i64], ptr %246, i64 0, i64 %250
  %257 = load i64, ptr %256, align 8, !tbaa !121
  %258 = icmp eq i64 %255, %257
  br i1 %258, label %316, label %197

259:                                              ; preds = %248
  %260 = getelementptr inbounds [1 x %union.rtunion_def], ptr %245, i64 0, i64 %250
  %261 = load i32, ptr %260, align 8, !tbaa !121
  %262 = getelementptr inbounds [1 x %union.rtunion_def], ptr %246, i64 0, i64 %250
  %263 = load i32, ptr %262, align 8, !tbaa !121
  %264 = icmp eq i32 %261, %263
  br i1 %264, label %316, label %197

265:                                              ; preds = %248
  %266 = getelementptr inbounds [1 x %union.rtunion_def], ptr %245, i64 0, i64 %250
  %267 = load ptr, ptr %266, align 8, !tbaa !121
  %268 = getelementptr inbounds [1 x %union.rtunion_def], ptr %246, i64 0, i64 %250
  %269 = load ptr, ptr %268, align 8, !tbaa !121
  %270 = icmp eq ptr %267, %269
  br i1 %270, label %316, label %197

271:                                              ; preds = %248
  %272 = getelementptr inbounds [1 x %union.rtunion_def], ptr %245, i64 0, i64 %250
  %273 = load ptr, ptr %272, align 8, !tbaa !121
  %274 = getelementptr inbounds [1 x %union.rtunion_def], ptr %246, i64 0, i64 %250
  %275 = load ptr, ptr %274, align 8, !tbaa !121
  %276 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %273, ptr noundef nonnull dereferenceable(1) %275) #9
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %316, label %197

278:                                              ; preds = %248
  %279 = getelementptr inbounds [1 x %union.rtunion_def], ptr %245, i64 0, i64 %250
  %280 = load ptr, ptr %279, align 8, !tbaa !121
  %281 = getelementptr inbounds [1 x %union.rtunion_def], ptr %246, i64 0, i64 %250
  %282 = load ptr, ptr %281, align 8, !tbaa !121
  %283 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %280, ptr noundef %282) #9
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %197, label %316, !prof !363

285:                                              ; preds = %248
  %286 = getelementptr inbounds [1 x %union.rtunion_def], ptr %245, i64 0, i64 %250
  %287 = load ptr, ptr %286, align 8, !tbaa !121
  %288 = getelementptr inbounds [1 x %union.rtunion_def], ptr %246, i64 0, i64 %250
  %289 = load ptr, ptr %288, align 8, !tbaa !121
  %290 = icmp eq ptr %287, %289
  br i1 %290, label %316, label %197

291:                                              ; preds = %248
  %292 = getelementptr inbounds [1 x %union.rtunion_def], ptr %245, i64 0, i64 %250
  %293 = load ptr, ptr %292, align 8, !tbaa !121
  %294 = load i32, ptr %293, align 8, !tbaa !186
  %295 = getelementptr inbounds [1 x %union.rtunion_def], ptr %246, i64 0, i64 %250
  %296 = load ptr, ptr %295, align 8, !tbaa !121
  %297 = load i32, ptr %296, align 8, !tbaa !186
  %298 = icmp eq i32 %294, %297
  br i1 %298, label %299, label %197, !prof !364

299:                                              ; preds = %291
  %300 = zext i32 %294 to i64
  br label %301

301:                                              ; preds = %299, %305
  %302 = phi i64 [ %300, %299 ], [ %306, %305 ]
  %303 = trunc i64 %302 to i32
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %316, !prof !365

305:                                              ; preds = %301
  %306 = add nsw i64 %302, -1
  %307 = load ptr, ptr %292, align 8, !tbaa !121
  %308 = getelementptr inbounds %struct.rtvec_def, ptr %307, i64 0, i32 1, i64 %306
  %309 = load ptr, ptr %308, align 8, !tbaa !150
  %310 = load ptr, ptr %295, align 8, !tbaa !121
  %311 = getelementptr inbounds %struct.rtvec_def, ptr %310, i64 0, i32 1, i64 %306
  %312 = load ptr, ptr %311, align 8, !tbaa !150
  %313 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %309, ptr noundef %312) #9
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %197, label %301, !prof !366, !llvm.loop !367

315:                                              ; preds = %248
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1780, ptr noundef nonnull @.str.1) #8
  br label %316

316:                                              ; preds = %301, %285, %278, %271, %265, %259, %253, %315, %248
  %317 = icmp sgt i64 %249, 1
  br i1 %317, label %248, label %197, !prof !368, !llvm.loop !369
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !370 !PGOFuncName !371 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !121
  ret i32 %3
}

; Function Attrs: optsize
declare void @subreg_get_info(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @next_real_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @true_regnum(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !372 {
  %2 = alloca %struct.subreg_info, align 4
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %38 [
    i16 37, label %5
    i16 39, label %16
  ], !prof !373

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #9
  %7 = icmp ugt i32 %6, 52
  br i1 %7, label %8, label %38, !prof !374

8:                                                ; preds = %5
  %9 = load ptr, ptr @reg_renumber, align 8, !tbaa !150
  %10 = zext i32 %6 to i64
  %11 = getelementptr inbounds i16, ptr %9, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !326
  %13 = icmp sgt i16 %12, -1
  br i1 %13, label %14, label %38, !prof !375

14:                                               ; preds = %8
  %15 = zext nneg i16 %12 to i32
  br label %38

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !121
  %19 = tail call i32 @true_regnum(ptr noundef %18) #9
  %20 = icmp ult i32 %19, 53
  br i1 %20, label %21, label %37, !prof !376

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %22 = load ptr, ptr %17, align 8, !tbaa !121
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef %22) #9
  %24 = load i32, ptr %22, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load i32, ptr %27, align 8, !tbaa !121
  %29 = load i32, ptr %0, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  call void @subreg_get_info(i32 noundef %23, i32 noundef %26, i32 noundef %28, i32 noundef %31, ptr noundef nonnull %2) #8
  %32 = getelementptr inbounds %struct.subreg_info, ptr %2, i64 0, i32 2
  %33 = load i8, ptr %32, align 4, !tbaa !328
  %34 = icmp eq i8 %33, 0
  %35 = load i32, ptr %2, align 4
  %36 = add nsw i32 %35, %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  br i1 %34, label %37, label %38

37:                                               ; preds = %16, %21
  br label %38

38:                                               ; preds = %1, %37, %21, %5, %8, %14
  %39 = phi i32 [ %15, %14 ], [ %6, %8 ], [ %6, %5 ], [ %36, %21 ], [ -1, %37 ], [ -1, %1 ]
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_or_subregno(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !377 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %10, !prof !378

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %3, %1 ]
  %12 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %13 = icmp eq i32 %11, 37
  br i1 %13, label %15, label %14, !prof !379

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1825, ptr noundef nonnull @.str.1) #8
  br label %15

15:                                               ; preds = %10, %14
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #9
  ret i32 %16
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!119}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!36 = !{ptr @rebuild_jump_labels, ptr @timevar_push_1, i64 1}
!37 = !{ptr @rebuild_jump_labels, ptr @init_label_info, i64 33468}
!38 = !{ptr @rebuild_jump_labels, ptr @mark_all_labels, i64 33468}
!39 = !{ptr @rebuild_jump_labels, ptr @timevar_pop_1, i64 1}
!40 = !{ptr @init_label_info, ptr @reg_mentioned_p, i64 3421}
!41 = !{ptr @init_label_info, ptr @remove_note, i64 1}
!42 = !{ptr @mark_all_labels, ptr @mark_jump_label, i64 6802296}
!43 = !{ptr @mark_all_labels, ptr @pc_set, i64 20234}
!44 = !{ptr @mark_all_labels, ptr @find_reg_note, i64 15969}
!45 = !{ptr @mark_all_labels, ptr @current_ir_type, i64 33468}
!46 = !{ptr @mark_all_labels, ptr @fancy_abort, i64 5}
!47 = !{ptr @mark_jump_label, ptr @extract_asm_operands, i64 6910852}
!48 = !{ptr @mark_jump_label, ptr @mark_jump_label_asm, i64 1}
!49 = !{ptr @mark_jump_label, ptr @mark_jump_label_1, i64 6910851}
!50 = !{ptr @mark_jump_label_1, ptr @mark_jump_label, i64 21}
!51 = !{ptr @mark_jump_label_1, ptr @get_pool_constant, i64 624}
!52 = !{ptr @mark_jump_label_1, ptr @mark_jump_label_1, i64 30844288}
!53 = !{ptr @mark_jump_label_1, ptr @fancy_abort, i64 1}
!54 = !{ptr @mark_jump_label_1, ptr @find_reg_note, i64 1992}
!55 = !{ptr @mark_jump_label_1, ptr @add_reg_note, i64 1786}
!56 = !{ptr @cleanup_barriers, ptr @get_insns, i64 6652}
!57 = !{ptr @cleanup_barriers, ptr @prev_nonnote_insn, i64 64065}
!58 = !{ptr @cleanup_barriers, ptr @delete_insn, i64 1}
!59 = !{ptr @cleanup_barriers, ptr @reorder_insns, i64 1}
!60 = !{ptr @reversed_comparison_code_parts, ptr @ix86_reverse_condition, i64 772895}
!61 = !{ptr @reversed_comparison_code_parts, ptr @reverse_condition, i64 944402}
!62 = !{ptr @reversed_comparison_code_parts, ptr @reverse_condition_maybe_unordered, i64 70}
!63 = !{ptr @reverse_condition, ptr @fancy_abort, i64 1161092}
!64 = !{ptr @reverse_condition_maybe_unordered, ptr @fancy_abort, i64 316}
!65 = !{ptr @reversed_comparison_code, ptr @reversed_comparison_code_parts, i64 1274194}
!66 = !{ptr @reversed_comparison, ptr @reversed_comparison_code, i64 1163}
!67 = !{ptr @reversed_comparison, ptr @simplify_gen_relational, i64 1162}
!68 = !{ptr @swap_condition, ptr @fancy_abort, i64 24385}
!69 = !{ptr @unsigned_condition, ptr @fancy_abort, i64 118633}
!70 = !{ptr @signed_condition, ptr @fancy_abort, i64 179941}
!71 = !{ptr @any_uncondjump_p, ptr @pc_set, i64 67177}
!72 = !{ptr @any_uncondjump_p, ptr @find_reg_note, i64 4}
!73 = !{ptr @any_condjump_p, ptr @pc_set, i64 18145629}
!74 = !{ptr @returnjump_p, ptr @for_each_rtx, i64 615031}
!75 = !{ptr @eh_returnjump_p, ptr @for_each_rtx, i64 1}
!76 = !{ptr @onlyjump_p, ptr @single_set_2, i64 1}
!77 = !{ptr @onlyjump_p, ptr @side_effects_p, i64 4584007}
!78 = !{ptr @redirect_jump_1, ptr @num_validated_changes, i64 342728}
!79 = !{ptr @redirect_jump_1, ptr @extract_asm_operands, i64 171364}
!80 = !{ptr @redirect_jump_1, ptr @redirect_exp_1, i64 171364}
!81 = !{ptr @redirect_exp_1, ptr @gen_rtx_fmt_u_stat, i64 213352}
!82 = !{ptr @redirect_exp_1, ptr @gen_rtx_fmt__stat, i64 439}
!83 = !{ptr @redirect_exp_1, ptr @redirect_exp_1, i64 638640}
!84 = !{ptr @redirect_exp_1, ptr @validate_change, i64 213792}
!85 = !{ptr @redirect_jump, ptr @redirect_jump_1, i64 89043}
!86 = !{ptr @redirect_jump, ptr @apply_change_group, i64 89042}
!87 = !{ptr @redirect_jump, ptr @redirect_jump_2, i64 89041}
!88 = !{ptr @redirect_jump_2, ptr @fancy_abort, i64 2}
!89 = !{ptr @redirect_jump_2, ptr @find_reg_note, i64 474091}
!90 = !{ptr @redirect_jump_2, ptr @invert_exp_1, i64 1}
!91 = !{ptr @redirect_jump_2, ptr @redirect_exp_1, i64 1}
!92 = !{ptr @redirect_jump_2, ptr @confirm_change_group, i64 1}
!93 = !{ptr @redirect_jump_2, ptr @delete_related_insns, i64 1}
!94 = !{ptr @redirect_jump_2, ptr @invert_br_probabilities, i64 363300}
!95 = !{ptr @invert_exp_1, ptr @reversed_comparison_code, i64 363300}
!96 = !{ptr @invert_exp_1, ptr @gen_rtx_fmt_ee_stat, i64 363251}
!97 = !{ptr @invert_exp_1, ptr @validate_change, i64 363349}
!98 = !{ptr @invert_jump_1, ptr @pc_set, i64 363301}
!99 = !{ptr @invert_jump_1, ptr @num_validated_changes, i64 726601}
!100 = !{ptr @invert_jump_1, ptr @invert_exp_1, i64 363300}
!101 = !{ptr @invert_jump_1, ptr @fancy_abort, i64 1}
!102 = !{ptr @invert_jump_1, ptr @redirect_jump_1, i64 60223}
!103 = !{ptr @invert_jump, ptr @invert_jump_1, i64 362941}
!104 = !{ptr @invert_jump, ptr @apply_change_group, i64 362940}
!105 = !{ptr @invert_jump, ptr @redirect_jump_2, i64 362939}
!106 = !{ptr @invert_jump, ptr @cancel_changes, i64 2}
!107 = !{ptr @rtx_renumbered_equal_p, ptr @rtx_equal_p, i64 1}
!108 = !{ptr @rtx_renumbered_equal_p, ptr @rhs_regno, i64 767094}
!109 = !{ptr @rtx_renumbered_equal_p, ptr @subreg_get_info, i64 2}
!110 = !{ptr @rtx_renumbered_equal_p, ptr @next_real_insn, i64 2}
!111 = !{ptr @rtx_renumbered_equal_p, ptr @rtx_renumbered_equal_p, i64 2660156}
!112 = !{ptr @rtx_renumbered_equal_p, ptr @strcmp, i64 1}
!113 = !{ptr @rtx_renumbered_equal_p, ptr @fancy_abort, i64 1}
!114 = !{ptr @true_regnum, ptr @rhs_regno, i64 5401518}
!115 = !{ptr @true_regnum, ptr @true_regnum, i64 3006}
!116 = !{ptr @true_regnum, ptr @subreg_get_info, i64 1419}
!117 = !{ptr @reg_or_subregno, ptr @fancy_abort, i64 1}
!118 = !{ptr @reg_or_subregno, ptr @rhs_regno, i64 654381}
!119 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!120 = !{!"function_entry_count", i64 33468}
!121 = !{!122, !122, i64 0}
!122 = !{!"omnipotent char", !123, i64 0}
!123 = !{!"Simple C/C++ TBAA"}
!124 = !{!"branch_weights", i32 33469, i32 1}
!125 = !{!"branch_weights", i32 33468, i32 1}
!126 = !{!"branch_weights", i32 1, i32 0}
!127 = distinct !{!127, !128}
!128 = !{!"llvm.loop.mustprogress"}
!129 = !{!"jump.c:init_label_info"}
!130 = !{!"branch_weights", i32 1, i32 33468}
!131 = !{!"branch_weights", i32 802272, i32 9055801}
!132 = !{!"branch_weights", i32 1612897185, i32 534586463}
!133 = !{!"branch_weights", i32 2695813, i32 4105669}
!134 = !{!"branch_weights", i32 3421, i32 4102249}
!135 = !{!"branch_weights", i32 1, i32 3421}
!136 = !{!"branch_weights", i32 4105669, i32 0}
!137 = distinct !{!137, !128}
!138 = !{!"branch_weights", i32 33468, i32 9824604}
!139 = distinct !{!139, !128}
!140 = !{!"jump.c:mark_all_labels"}
!141 = !{!"branch_weights", i32 1889132957, i32 -60850457, i32 836, i32 1020068055, i32 445502398, i32 672308490}
!142 = !{!"branch_weights", i32 505318894, i32 -1976789426}
!143 = !{!"branch_weights", i32 20235, i32 1197022}
!144 = !{!"branch_weights", i32 20235, i32 1}
!145 = !{!"branch_weights", i32 4266, i32 15970}
!146 = !{!"branch_weights", i32 2147349178, i32 134470}
!147 = !{!"branch_weights", i32 6781248, i32 1}
!148 = distinct !{!148, !128}
!149 = !{!"branch_weights", i32 1913, i32 31557}
!150 = !{!151, !151, i64 0}
!151 = !{!"any pointer", !122, i64 0}
!152 = !{!153, !151, i64 8}
!153 = !{!"function", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !151, i64 64, !151, i64 72, !151, i64 80, !151, i64 88, !151, i64 96, !154, i64 104, !154, i64 108, !154, i64 112, !154, i64 116, !154, i64 120, !154, i64 124, !151, i64 128, !154, i64 136, !154, i64 137, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 138, !154, i64 139, !154, i64 139, !154, i64 139, !154, i64 139, !154, i64 139, !154, i64 139, !154, i64 139}
!154 = !{!"int", !122, i64 0}
!155 = !{!156, !151, i64 0}
!156 = !{!"control_flow_graph", !151, i64 0, !151, i64 8, !151, i64 16, !154, i64 24, !154, i64 28, !154, i64 32, !151, i64 40, !154, i64 48, !122, i64 52, !122, i64 60, !154, i64 68, !154, i64 72}
!157 = !{!158, !151, i64 56}
!158 = !{!"basic_block_def", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !122, i64 32, !151, i64 48, !151, i64 56, !122, i64 64, !159, i64 72, !154, i64 80, !154, i64 84, !154, i64 88, !154, i64 92, !154, i64 96}
!159 = !{!"long", !122, i64 0}
!160 = !{!156, !151, i64 8}
!161 = !{!"branch_weights", i32 1, i32 1912}
!162 = !{!"branch_weights", i32 1912, i32 277291}
!163 = distinct !{!163, !128}
!164 = !{!"branch_weights", i32 279066, i32 137}
!165 = !{!"branch_weights", i32 10398575, i32 352275361}
!166 = !{!"branch_weights", i32 137, i32 0}
!167 = distinct !{!167, !128}
!168 = !{!"branch_weights", i32 271180, i32 8023}
!169 = !{!"branch_weights", i32 435488206, i32 -1273256949}
!170 = !{!"branch_weights", i32 1008, i32 1}
!171 = !{!"branch_weights", i32 2017, i32 1}
!172 = !{!"branch_weights", i32 8023, i32 0}
!173 = distinct !{!173, !128}
!174 = !{!"function_entry_count", i64 6910852}
!175 = !{!"branch_weights", i32 6910853, i32 1}
!176 = !{!"branch_weights", i32 1, i32 6910853}
!177 = !{!"branch_weights", i32 6828154, i32 82700}
!178 = !{!"function_entry_count", i64 21098294}
!179 = !{!"branch_weights", i32 12378624, i32 8719672}
!180 = !{!"branch_weights", i32 34005, i32 12344620}
!181 = !{!"branch_weights", i32 12165606, i32 213019}
!182 = !{!"branch_weights", i32 12165606, i32 1}
!183 = !{!"function_entry_count", i64 37930823}
!184 = !{!"jump.c:mark_jump_label_1"}
!185 = !{!"branch_weights", i32 12466744, i32 2142216, i32 1, i32 10926888, i32 5085181, i32 675, i32 549364, i32 531714, i32 3209284, i32 1, i32 520795, i32 944846, i32 1547855, i32 5273, i32 1}
!186 = !{!187, !154, i64 0}
!187 = !{!"rtvec_def", !154, i64 0, !122, i64 8}
!188 = distinct !{!188, !128}
!189 = !{!"branch_weights", i32 138919, i32 381877}
!190 = !{!"branch_weights", i32 381269, i32 609}
!191 = !{!"branch_weights", i32 4510, i32 940337}
!192 = !{!"branch_weights", i32 1022, i32 2048, i32 -1124961279}
!193 = !{!"branch_weights", i32 1547855, i32 1}
!194 = !{!"branch_weights", i32 340618, i32 1207238}
!195 = !{!"branch_weights", i32 1207238, i32 1}
!196 = !{!"branch_weights", i32 1942, i32 1205297}
!197 = !{!"branch_weights", i32 -1958160072, i32 1938}
!198 = !{!"branch_weights", i32 1742, i32 201}
!199 = !{!"branch_weights", i32 5273, i32 1}
!200 = !{!"branch_weights", i32 5272, i32 1}
!201 = !{!"branch_weights", i32 335346, i32 5272}
!202 = distinct !{!202, !128}
!203 = !{!"branch_weights", i32 1, i32 16062411}
!204 = !{!"branch_weights", i32 661851778, i32 -262691513, i32 87419435}
!205 = !{!"branch_weights", i32 578113, i32 1}
!206 = !{!"branch_weights", i32 613765, i32 578113}
!207 = distinct !{!207, !128}
!208 = !{!"branch_weights", i32 15558459, i32 16062411}
!209 = distinct !{!209, !128}
!210 = !{!"function_entry_count", i64 6652}
!211 = !{!"branch_weights", i32 1, i32 6652}
!212 = !{!"branch_weights", i32 64075, i32 1697286}
!213 = !{!"branch_weights", i32 1, i32 64075}
!214 = !{!"branch_weights", i32 64075, i32 1}
!215 = !{!"branch_weights", i32 6652, i32 1754708}
!216 = distinct !{!216, !128}
!217 = !{!"function_entry_count", i64 1718108}
!218 = !{!154, !154, i64 0}
!219 = !{!"branch_weights", i32 -1806378691, i32 1448}
!220 = !{!"branch_weights", i32 1, i32 1718109}
!221 = !{!"branch_weights", i32 772896, i32 945214}
!222 = !{!"branch_weights", i32 62881, i32 7612, i32 41635, i32 25029, i32 9967, i32 374459, i32 423508, i32 1, i32 61, i32 1, i32 7, i32 1, i32 64, i32 1, i32 1}
!223 = !{!"branch_weights", i32 1, i32 62881}
!224 = !{!"branch_weights", i32 -948794399, i32 53787, i32 36093138, i32 53788, i32 53788}
!225 = !{!"branch_weights", i32 1343, i32 1}
!226 = !{!227, !122, i64 46}
!227 = !{!"real_format", !151, i64 0, !151, i64 8, !154, i64 16, !154, i64 20, !154, i64 24, !154, i64 28, !154, i64 32, !154, i64 36, !154, i64 40, !122, i64 44, !122, i64 45, !122, i64 46, !122, i64 47, !122, i64 48, !122, i64 49, !122, i64 50, !122, i64 51}
!228 = !{!"branch_weights", i32 1343, i32 450241}
!229 = !{!"function_entry_count", i64 2322183}
!230 = !{!"function_entry_count", i64 421}
!231 = !{!"function_entry_count", i64 1274195}
!232 = !{!"branch_weights", i32 1274196, i32 1}
!233 = !{!"function_entry_count", i64 1163}
!234 = !{!"branch_weights", i32 1, i32 1164}
!235 = !{!"function_entry_count", i64 48769}
!236 = !{!"function_entry_count", i64 237266}
!237 = !{!"function_entry_count", i64 359881}
!238 = !{!"function_entry_count", i64 1302396}
!239 = !{!"branch_weights", i32 -1732816985, i32 909452607}
!240 = !{!"branch_weights", i32 169870, i32 171320}
!241 = !{!"branch_weights", i32 94301, i32 3, i32 42959, i32 2, i32 3216, i32 1, i32 3819, i32 5533, i32 6195, i32 5, i32 2561, i32 12734, i32 3}
!242 = !{!"branch_weights", i32 7, i32 9}
!243 = !{!"branch_weights", i32 1, i32 11727}
!244 = !{!"branch_weights", i32 3350886, i32 2600640}
!245 = !{!"function_entry_count", i64 2595374}
!246 = !{!"branch_weights", i32 2578420, i32 16956}
!247 = !{!"branch_weights", i32 2565252, i32 13169}
!248 = !{!"branch_weights", i32 2565252, i32 1}
!249 = !{!"function_entry_count", i64 26}
!250 = !{!"branch_weights", i32 27, i32 1}
!251 = !{!"branch_weights", i32 27, i32 28, i32 729}
!252 = !{!"branch_weights", i32 1, i32 54, i32 1}
!253 = !{!"function_entry_count", i64 0}
!254 = !{!"function_entry_count", i64 67177}
!255 = !{!"branch_weights", i32 55045, i32 12134}
!256 = !{!"branch_weights", i32 4, i32 12131}
!257 = !{!"function_entry_count", i64 18145629}
!258 = !{!"branch_weights", i32 8857412, i32 9288219}
!259 = !{!"branch_weights", i32 8441386, i32 846834}
!260 = !{!"branch_weights", i32 8441044, i32 343}
!261 = !{!"branch_weights", i32 0, i32 -1391248160, i32 172, i32 171}
!262 = !{!"branch_weights", i32 343, i32 1}
!263 = !{!"branch_weights", i32 2144341755, i32 3141893}
!264 = !{!"function_entry_count", i64 848682}
!265 = !{!"branch_weights", i32 615032, i32 233652}
!266 = !{!"function_entry_count", i64 3331494}
!267 = !{!"jump.c:returnjump_p_1"}
!268 = !{!"branch_weights", i32 1, i32 3331495}
!269 = !{!"branch_weights", i32 2716464, i32 41022, i32 1, i32 574011}
!270 = !{!"function_entry_count", i64 2023}
!271 = !{!"branch_weights", i32 1, i32 2024}
!272 = !{!"jump.c:eh_returnjump_p_1"}
!273 = !{!"function_entry_count", i64 6975215}
!274 = !{!"branch_weights", i32 4584010, i32 2391207}
!275 = !{!"branch_weights", i32 4583763, i32 1}
!276 = !{!"branch_weights", i32 -2147483648, i32 0}
!277 = !{!"branch_weights", i32 4584010, i32 1}
!278 = !{!"jump.c:mark_jump_label_asm"}
!279 = distinct !{!279, !128}
!280 = distinct !{!280, !128}
!281 = distinct !{!281, !128}
!282 = distinct !{!282, !128}
!283 = distinct !{!283, !128}
!284 = distinct !{!284, !128}
!285 = distinct !{!285, !128}
!286 = distinct !{!286, !128}
!287 = distinct !{!287, !128}
!288 = !{!"function_entry_count", i64 171364}
!289 = !{!"branch_weights", i32 171365, i32 1}
!290 = !{!"branch_weights", i32 130, i32 171236}
!291 = !{!"function_entry_count", i64 852420}
!292 = !{!"jump.c:redirect_exp_1"}
!293 = !{!"branch_weights", i32 -671227943, i32 911793001, i32 5320}
!294 = !{!"branch_weights", i32 352, i32 171014}
!295 = !{!"branch_weights", i32 1109907, i32 2146373741}
!296 = !{!"branch_weights", i32 352, i32 1}
!297 = !{!"branch_weights", i32 1, i32 352}
!298 = !{!"branch_weights", i32 533680824, i32 1613802824}
!299 = !{!"branch_weights", i32 169164, i32 342729}
!300 = !{!"branch_weights", i32 1, i32 685458, i32 1}
!301 = distinct !{!301, !128}
!302 = !{!"branch_weights", i32 0, i32 342729}
!303 = distinct !{!303, !128}
!304 = !{!"function_entry_count", i64 89044}
!305 = !{!"branch_weights", i32 1, i32 89045}
!306 = !{i32 0, i32 2}
!307 = !{!"function_entry_count", i64 474091}
!308 = !{!"branch_weights", i32 474092, i32 1}
!309 = !{!"branch_weights", i32 1, i32 474092}
!310 = !{!"branch_weights", i32 6089, i32 -1407776647}
!311 = !{!"branch_weights", i32 110791, i32 363302}
!312 = !{!"function_entry_count", i64 363301}
!313 = !{!"jump.c:invert_exp_1"}
!314 = !{!"branch_weights", i32 363302, i32 1}
!315 = !{!"branch_weights", i32 49, i32 363254}
!316 = !{!"branch_weights", i32 1, i32 363302}
!317 = !{!"branch_weights", i32 303079, i32 60224}
!318 = !{!"function_entry_count", i64 362941}
!319 = !{!"branch_weights", i32 1, i32 362942}
!320 = !{!"function_entry_count", i64 3956197}
!321 = !{!"branch_weights", i32 1, i32 499744}
!322 = !{!"branch_weights", i32 -334781572, i32 846256593, i32 1390}
!323 = !{!"branch_weights", i32 -1978409052, i32 -1433581766, i32 8508}
!324 = !{!"branch_weights", i32 334568, i32 1734}
!325 = !{!"branch_weights", i32 1, i32 334568}
!326 = !{!327, !327, i64 0}
!327 = !{!"short", !122, i64 0}
!328 = !{!329, !122, i64 8}
!329 = !{!"subreg_info", !154, i64 0, !154, i64 4, !122, i64 8}
!330 = !{!329, !154, i64 0}
!331 = !{!"branch_weights", i32 -1273128210, i32 -320780398}
!332 = !{!"branch_weights", i32 1787860, i32 1332295}
!333 = !{!"branch_weights", i32 1593407, i32 1, i32 1, i32 1, i32 1, i32 158223, i32 1, i32 1, i32 36232, i32 1}
!334 = !{!"branch_weights", i32 1492411, i32 100997}
!335 = !{!"branch_weights", i32 627920, i32 864492}
!336 = !{!"branch_weights", i32 57593, i32 570328}
!337 = !{!338, !122, i64 32}
!338 = !{!"mem_attrs", !151, i64 0, !151, i64 8, !151, i64 16, !154, i64 24, !154, i64 28, !122, i64 32}
!339 = !{!"branch_weights", i32 57468, i32 570453}
!340 = !{!"branch_weights", i32 627920, i32 1}
!341 = !{!342, !151, i64 1024}
!342 = !{!"gcc_target", !343, i64 0, !345, i64 368, !346, i64 664, !154, i64 744, !151, i64 752, !151, i64 760, !151, i64 768, !151, i64 776, !151, i64 784, !151, i64 792, !151, i64 800, !151, i64 808, !151, i64 816, !151, i64 824, !151, i64 832, !151, i64 840, !151, i64 848, !151, i64 856, !151, i64 864, !151, i64 872, !151, i64 880, !151, i64 888, !151, i64 896, !151, i64 904, !151, i64 912, !151, i64 920, !151, i64 928, !151, i64 936, !151, i64 944, !151, i64 952, !151, i64 960, !151, i64 968, !151, i64 976, !151, i64 984, !151, i64 992, !151, i64 1000, !151, i64 1008, !151, i64 1016, !151, i64 1024, !151, i64 1032, !151, i64 1040, !151, i64 1048, !151, i64 1056, !159, i64 1064, !159, i64 1072, !151, i64 1080, !151, i64 1088, !151, i64 1096, !151, i64 1104, !151, i64 1112, !151, i64 1120, !151, i64 1128, !151, i64 1136, !151, i64 1144, !151, i64 1152, !151, i64 1160, !151, i64 1168, !347, i64 1176, !151, i64 1232, !151, i64 1240, !151, i64 1248, !151, i64 1256, !151, i64 1264, !151, i64 1272, !151, i64 1280, !151, i64 1288, !151, i64 1296, !151, i64 1304, !151, i64 1312, !151, i64 1320, !151, i64 1328, !151, i64 1336, !151, i64 1344, !151, i64 1352, !151, i64 1360, !151, i64 1368, !151, i64 1376, !151, i64 1384, !151, i64 1392, !151, i64 1400, !151, i64 1408, !151, i64 1416, !151, i64 1424, !151, i64 1432, !151, i64 1440, !151, i64 1448, !151, i64 1456, !159, i64 1464, !348, i64 1472, !151, i64 1664, !151, i64 1672, !151, i64 1680, !151, i64 1688, !151, i64 1696, !151, i64 1704, !151, i64 1712, !151, i64 1720, !151, i64 1728, !151, i64 1736, !151, i64 1744, !151, i64 1752, !151, i64 1760, !151, i64 1768, !151, i64 1776, !349, i64 1784, !350, i64 1792, !351, i64 1896, !352, i64 1968, !151, i64 2016, !122, i64 2024, !122, i64 2025, !122, i64 2026, !122, i64 2027, !122, i64 2028, !122, i64 2029, !122, i64 2030, !122, i64 2031, !122, i64 2032, !122, i64 2033, !122, i64 2034, !122, i64 2035}
!343 = !{!"asm_out", !151, i64 0, !151, i64 8, !151, i64 16, !344, i64 24, !344, i64 56, !151, i64 88, !151, i64 96, !151, i64 104, !151, i64 112, !151, i64 120, !151, i64 128, !151, i64 136, !151, i64 144, !151, i64 152, !151, i64 160, !151, i64 168, !151, i64 176, !151, i64 184, !151, i64 192, !151, i64 200, !151, i64 208, !151, i64 216, !151, i64 224, !151, i64 232, !151, i64 240, !151, i64 248, !151, i64 256, !151, i64 264, !151, i64 272, !151, i64 280, !151, i64 288, !151, i64 296, !151, i64 304, !151, i64 312, !151, i64 320, !151, i64 328, !151, i64 336, !151, i64 344, !151, i64 352, !151, i64 360}
!344 = !{!"asm_int_op", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24}
!345 = !{!"sched", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !151, i64 64, !151, i64 72, !151, i64 80, !151, i64 88, !151, i64 96, !151, i64 104, !151, i64 112, !151, i64 120, !151, i64 128, !151, i64 136, !151, i64 144, !151, i64 152, !151, i64 160, !151, i64 168, !151, i64 176, !151, i64 184, !151, i64 192, !151, i64 200, !151, i64 208, !151, i64 216, !151, i64 224, !151, i64 232, !151, i64 240, !151, i64 248, !151, i64 256, !151, i64 264, !151, i64 272, !151, i64 280, !151, i64 288}
!346 = !{!"vectorize", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !151, i64 64, !151, i64 72}
!347 = !{!"addr_space", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48}
!348 = !{!"calls", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !151, i64 64, !151, i64 72, !151, i64 80, !151, i64 88, !151, i64 96, !151, i64 104, !151, i64 112, !151, i64 120, !151, i64 128, !151, i64 136, !151, i64 144, !151, i64 152, !151, i64 160, !151, i64 168, !151, i64 176, !151, i64 184}
!349 = !{!"c", !151, i64 0}
!350 = !{!"cxx", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !151, i64 64, !151, i64 72, !151, i64 80, !151, i64 88, !151, i64 96}
!351 = !{!"emutls", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !122, i64 64, !122, i64 65}
!352 = !{!"target_option_hooks", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40}
!353 = !{!"branch_weights", i32 1160561, i32 331851}
!354 = !{!"branch_weights", i32 171670, i32 160182}
!355 = !{!"branch_weights", i32 65220, i32 94963}
!356 = !{!"branch_weights", i32 236534, i32 356}
!357 = !{!"branch_weights", i32 24422, i32 1136140}
!358 = !{!"branch_weights", i32 6430, i32 17993}
!359 = !{!"branch_weights", i32 6425, i32 1129716}
!360 = !{!"branch_weights", i32 499744, i32 2956710}
!361 = !{!"branch_weights", i32 1, i32 361116}
!362 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1328422, i32 1, i32 628500, i32 13341}
!363 = !{!"branch_weights", i32 761859, i32 566564}
!364 = !{!"branch_weights", i32 13329, i32 13}
!365 = !{!"branch_weights", i32 27228, i32 6600}
!366 = !{!"branch_weights", i32 6730, i32 20499}
!367 = distinct !{!367, !128}
!368 = !{!"branch_weights", i32 1609145, i32 361116}
!369 = distinct !{!369, !128}
!370 = !{!"function_entry_count", i64 12345161}
!371 = !{!"jump.c:rhs_regno"}
!372 = !{!"function_entry_count", i64 10877445}
!373 = !{!"branch_weights", i32 -634704756, i32 -684343891, i32 2009876}
!374 = !{!"branch_weights", i32 220030, i32 5180071}
!375 = !{!"branch_weights", i32 1, i32 220030}
!376 = !{!"branch_weights", i32 4268520, i32 4773529}
!377 = !{!"function_entry_count", i64 654381}
!378 = !{!"branch_weights", i32 2907, i32 651476}
!379 = !{!"branch_weights", i32 654382, i32 1}
