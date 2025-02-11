; ModuleID = 'regmove.c'
source_filename = "regmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.match = type { [30 x i32], [30 x i32], [30 x i32], [30 x i32] }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"regmove\00", align 1
@pass_regmove = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_regmove, ptr @regmove_optimize, ptr null, ptr null, i32 0, i32 142, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_regmove = external local_unnamed_addr global i32, align 4
@flag_ira_loop_pressure = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@regno_src_regno = internal unnamed_addr global ptr null, align 8
@reg_set_in_bb = internal unnamed_addr global ptr null, align 8
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Starting forward pass...\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@reg_info_p = external local_unnamed_addr global ptr, align 8
@regstat_n_sets_and_refs = external local_unnamed_addr global ptr, align 8
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Starting backward pass...\0A\00", align 1
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"Could fix operand %d of insn %d matching operand %d.\0A\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.4 = private unnamed_addr constant [50 x i8] c"Fixed operand %d of insn %d matching operand %d.\0A\00", align 1
@which_alternative = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Fixed operand of insn %d.\0A\00", align 1
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@max_reg_computed = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"regmove.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_regmove() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_regmove, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @regmove_optimize() #1 {
  %1 = tail call i32 @max_reg_num() #13
  tail call void @df_note_add_problem() #13
  tail call void @df_analyze() #13
  %2 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !9
  tail call void @ira_set_pseudo_classes(ptr noundef %5) #13
  br label %6

6:                                                ; preds = %4, %0
  tail call void @regstat_init_n_sets_and_refs() #13
  tail call void @regstat_compute_ri() #13
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call ptr @xmalloc(i64 noundef %8) #13
  store ptr %9, ptr @regno_src_regno, align 8, !tbaa !9
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = zext nneg i32 %1 to i64
  %13 = shl nuw nsw i64 %12, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %9, i8 -1, i64 %13, i1 false), !tbaa !5
  br label %14

14:                                               ; preds = %11, %6
  tail call fastcc void @regmove_forward_pass() #14
  tail call fastcc void @regmove_backward_pass() #14
  %15 = load ptr, ptr @regno_src_regno, align 8, !tbaa !9
  tail call void @free(ptr noundef %15) #14
  %16 = load ptr, ptr @reg_set_in_bb, align 8, !tbaa !9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @free(ptr noundef nonnull %16) #14
  store ptr null, ptr @reg_set_in_bb, align 8, !tbaa !9
  br label %19

19:                                               ; preds = %18, %14
  tail call void @regstat_free_n_sets_and_refs() #13
  tail call void @regstat_free_ri() #13
  %20 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @free_reg_info() #13
  br label %23

23:                                               ; preds = %22, %19
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: optsize
declare void @df_note_add_problem() local_unnamed_addr #3

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #3

; Function Attrs: optsize
declare void @ira_set_pseudo_classes(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @regstat_init_n_sets_and_refs() local_unnamed_addr #3

; Function Attrs: optsize
declare void @regstat_compute_ri() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @regmove_forward_pass() unnamed_addr #1 {
  %1 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %130, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr nonnull %4)
  br label %8

8:                                                ; preds = %6, %3
  %9 = load ptr, ptr @cfun, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %130, label %18

18:                                               ; preds = %8, %121
  %19 = phi ptr [ %122, %121 ], [ %9, %8 ]
  %20 = phi ptr [ %124, %121 ], [ %14, %8 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  %23 = load ptr, ptr %22, align 8, !tbaa !19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %121, label %25

25:                                               ; preds = %18, %115
  %26 = phi ptr [ %117, %115 ], [ %23, %18 ]
  %27 = load ptr, ptr %21, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = icmp eq ptr %26, %31
  br i1 %32, label %119, label %33

33:                                               ; preds = %25
  %34 = load i32, ptr %26, align 8
  %35 = and i32 %34, 65535
  %36 = add nsw i32 %35, -7
  %37 = icmp ult i32 %36, 4
  br i1 %37, label %38, label %115

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !19
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 23
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = tail call ptr @single_set_2(ptr noundef nonnull %26, ptr noundef nonnull %40) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %115, label %47

47:                                               ; preds = %38, %44
  %48 = phi ptr [ %45, %44 ], [ %40, %38 ]
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %50 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !19
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65534
  %54 = icmp eq i32 %53, 98
  br i1 %54, label %55, label %69

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !19
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load ptr, ptr %49, align 8, !tbaa !19
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  tail call fastcc void @optimize_reg_copy_3(ptr noundef nonnull %26, ptr noundef nonnull %62, ptr noundef nonnull %51) #14
  %67 = load ptr, ptr %50, align 8, !tbaa !19
  %68 = load i32, ptr %67, align 8
  br label %69

69:                                               ; preds = %47, %66, %61, %55
  %70 = phi i32 [ %52, %47 ], [ %68, %66 ], [ %52, %61 ], [ %52, %55 ]
  %71 = phi ptr [ %51, %47 ], [ %67, %66 ], [ %51, %61 ], [ %51, %55 ]
  %72 = and i32 %70, 65535
  %73 = icmp eq i32 %72, 37
  br i1 %73, label %74, label %115

74:                                               ; preds = %69
  %75 = load ptr, ptr %49, align 8, !tbaa !19
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 37
  br i1 %78, label %79, label %115

79:                                               ; preds = %74
  %80 = tail call ptr @find_reg_note(ptr noundef nonnull %26, i32 noundef 1, ptr noundef nonnull %71) #13
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load ptr, ptr %49, align 8, !tbaa !19
  %84 = load ptr, ptr %50, align 8, !tbaa !19
  %85 = tail call fastcc i32 @optimize_reg_copy_1(ptr noundef nonnull %26, ptr noundef %83, ptr noundef %84) #14, !range !22
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %115, label %87

87:                                               ; preds = %82, %79
  %88 = load ptr, ptr %49, align 8, !tbaa !19
  %89 = tail call fastcc i32 @rhs_regno(ptr noundef %88) #14
  %90 = icmp ugt i32 %89, 52
  br i1 %90, label %91, label %115

91:                                               ; preds = %87
  %92 = load ptr, ptr %50, align 8, !tbaa !19
  %93 = tail call fastcc i32 @rhs_regno(ptr noundef %92) #14
  %94 = icmp ugt i32 %93, 52
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  tail call fastcc void @optimize_reg_copy_2(ptr noundef nonnull %26, ptr noundef %88, ptr noundef %92) #14
  %96 = load ptr, ptr %49, align 8, !tbaa !19
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi ptr [ %96, %95 ], [ %88, %91 ]
  %99 = load ptr, ptr @regno_src_regno, align 8, !tbaa !9
  %100 = tail call fastcc i32 @rhs_regno(ptr noundef %98) #14
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, ptr %99, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !5
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %97
  %106 = load ptr, ptr %50, align 8, !tbaa !19
  %107 = icmp eq ptr %106, %98
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = tail call fastcc i32 @rhs_regno(ptr noundef %106) #14
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %99, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !5
  %113 = icmp slt i32 %112, 0
  %114 = select i1 %113, i32 %109, i32 %112
  store i32 %114, ptr %102, align 4, !tbaa !5
  br label %115

115:                                              ; preds = %33, %69, %74, %97, %105, %108, %87, %82, %44
  %116 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %117 = load ptr, ptr %116, align 8, !tbaa !19
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %25, !llvm.loop !23

119:                                              ; preds = %25, %115
  %120 = load ptr, ptr @cfun, align 8, !tbaa !9
  br label %121

121:                                              ; preds = %119, %18
  %122 = phi ptr [ %120, %119 ], [ %19, %18 ]
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !15
  %125 = getelementptr inbounds %struct.function, ptr %122, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !11
  %127 = getelementptr inbounds %struct.control_flow_graph, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !18
  %129 = icmp eq ptr %124, %128
  br i1 %129, label %130, label %18, !llvm.loop !25

130:                                              ; preds = %121, %8, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @regmove_backward_pass() unnamed_addr #1 {
  %1 = alloca %struct.match, align 4
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 26, i64 1, ptr nonnull %2)
  br label %6

6:                                                ; preds = %4, %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = load ptr, ptr %9, align 8, !tbaa !13
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %377, label %16

16:                                               ; preds = %6, %369
  %17 = phi ptr [ %370, %369 ], [ %7, %6 ]
  %18 = phi ptr [ %372, %369 ], [ %13, %6 ]
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !19
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %369, label %24

24:                                               ; preds = %16, %365
  %25 = phi ptr [ %27, %365 ], [ %22, %16 ]
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !19
  %28 = load ptr, ptr %19, align 8, !tbaa !19
  %29 = load ptr, ptr %28, align 8, !tbaa !27
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = icmp eq ptr %25, %31
  br i1 %32, label %367, label %33

33:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %1) #15
  %34 = load i32, ptr %25, align 8
  %35 = and i32 %34, 65535
  %36 = add nsw i32 %35, -7
  %37 = icmp ult i32 %36, 4
  br i1 %37, label %38, label %365

38:                                               ; preds = %33
  %39 = call fastcc i32 @find_matches(ptr noundef nonnull %25, ptr noundef nonnull %1) #14, !range !22
  %40 = icmp ne i32 %39, 0
  %41 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %42 = icmp sgt i8 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %365

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 1
  %46 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  br label %47

47:                                               ; preds = %44, %353
  %48 = phi i64 [ 0, %44 ], [ %356, %353 ]
  %49 = phi ptr [ null, %44 ], [ %354, %353 ]
  %50 = phi ptr [ null, %44 ], [ %355, %353 ]
  %51 = getelementptr inbounds [30 x i32], ptr %1, i64 0, i64 %48
  %52 = load i32, ptr %51, align 4, !tbaa !5
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %353, label %54

54:                                               ; preds = %47
  %55 = zext nneg i32 %52 to i64
  %56 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  %58 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %48
  %59 = load ptr, ptr %58, align 8, !tbaa !9
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 37
  br i1 %62, label %63, label %353

63:                                               ; preds = %54
  %64 = load i32, ptr %57, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 37
  br i1 %66, label %67, label %353

67:                                               ; preds = %63
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %57) #14
  %69 = icmp ult i32 %68, 53
  br i1 %69, label %353, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %72 = zext i32 %68 to i64
  %73 = getelementptr inbounds %struct.reg_info_t, ptr %71, i64 %72, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !28
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %353, label %76

76:                                               ; preds = %70
  %77 = xor i32 %64, %60
  %78 = and i32 %77, 16711680
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %353

80:                                               ; preds = %76
  %81 = tail call i32 @operands_match_p(ptr noundef nonnull %59, ptr noundef nonnull %57) #13
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %353

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 2, i64 %48
  %85 = load i32, ptr %84, align 4, !tbaa !5
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = zext nneg i32 %85 to i64
  %89 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !9
  %91 = tail call i32 @operands_match_p(ptr noundef %90, ptr noundef nonnull %57) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %353

93:                                               ; preds = %87, %83
  %94 = load i32, ptr %25, align 8
  %95 = and i32 %94, 65535
  %96 = add nsw i32 %95, -7
  %97 = icmp ult i32 %96, 4
  br i1 %97, label %98, label %353

98:                                               ; preds = %93
  %99 = load ptr, ptr %45, align 8, !tbaa !19
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 23
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = tail call ptr @single_set_2(ptr noundef nonnull %25, ptr noundef nonnull %99) #13
  %105 = icmp eq ptr %104, null
  br i1 %105, label %353, label %106

106:                                              ; preds = %98, %103
  %107 = phi ptr [ %104, %103 ], [ %99, %98 ]
  %108 = tail call i32 @reg_set_p(ptr noundef nonnull %59, ptr noundef nonnull %25) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %353

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 1, i64 %48
  %112 = load i32, ptr %111, align 4, !tbaa !5
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %353

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 1, i64 %55
  %116 = load i32, ptr %115, align 4, !tbaa !5
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %353

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 3, i64 %55
  %120 = load i32, ptr %119, align 4, !tbaa !5
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %45, align 8, !tbaa !19
  %124 = tail call i32 @count_occurrences(ptr noundef %123, ptr noundef nonnull %59, i32 noundef 0) #13
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %353, label %126

126:                                              ; preds = %122, %118
  %127 = load ptr, ptr %56, align 8, !tbaa !9
  %128 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !19
  %130 = icmp eq ptr %127, %129
  br i1 %130, label %131, label %353

131:                                              ; preds = %126
  %132 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %59) #14
  %133 = icmp ult i32 %132, 53
  br i1 %133, label %134, label %153

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1, i32 0, i32 0, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !19
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 49
  br i1 %139, label %140, label %353

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !19
  %143 = load i32, ptr %142, align 8
  %144 = and i32 %143, 65535
  %145 = icmp eq i32 %144, 30
  br i1 %145, label %146, label %353

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !19
  %149 = icmp eq ptr %148, %59
  br i1 %149, label %150, label %353

150:                                              ; preds = %146
  %151 = tail call fastcc i32 @fixup_match_2(ptr noundef nonnull %25, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull %142) #14
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %353, label %360

153:                                              ; preds = %131
  %154 = tail call i32 @reg_preferred_class(i32 noundef %132) #13
  %155 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %57) #14
  %156 = tail call i32 @reg_preferred_class(i32 noundef %155) #13
  %157 = tail call ptr @find_reg_note(ptr noundef nonnull %25, i32 noundef 1, ptr noundef nonnull %59) #13
  %158 = icmp eq ptr %157, null
  br i1 %158, label %353, label %159

159:                                              ; preds = %153
  %160 = tail call fastcc i32 @regclass_compatible_p(i32 noundef %154, i32 noundef %156) #14, !range !22
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = icmp eq ptr %49, null
  %164 = select i1 %163, ptr %57, ptr %50
  %165 = select i1 %163, ptr %59, ptr %49
  br label %353

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1, i32 0, i32 0, i64 1
  %168 = load ptr, ptr %167, align 8, !tbaa !19
  %169 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %57, ptr noundef %168) #13
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %166
  %172 = icmp eq ptr %49, null
  %173 = select i1 %172, ptr %57, ptr %50
  %174 = select i1 %172, ptr %59, ptr %49
  br label %353

175:                                              ; preds = %166
  %176 = tail call fastcc zeroext i8 @reg_is_remote_constant_p(ptr noundef nonnull %59, ptr noundef nonnull %25) #14, !range !30
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %175
  %179 = icmp eq ptr %49, null
  %180 = select i1 %179, ptr %57, ptr %50
  %181 = select i1 %179, ptr %59, ptr %49
  br label %353

182:                                              ; preds = %175
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %184 = icmp eq ptr %183, null
  br i1 %184, label %189, label %185

185:                                              ; preds = %182
  %186 = load i32, ptr %46, align 8, !tbaa !19
  %187 = trunc i64 %48 to i32
  %188 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %183, ptr noundef nonnull @.str.3, i32 noundef %187, i32 noundef %186, i32 noundef %52) #14
  br label %189

189:                                              ; preds = %185, %182
  br label %190

190:                                              ; preds = %189, %282
  %191 = phi ptr [ %199, %282 ], [ %25, %189 ]
  %192 = phi i32 [ %260, %282 ], [ 0, %189 ]
  %193 = phi i32 [ %284, %282 ], [ 0, %189 ]
  %194 = phi i32 [ %212, %282 ], [ 0, %189 ]
  %195 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1, i32 0, i32 0, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !19
  %197 = icmp eq ptr %196, null
  br i1 %197, label %349, label %198

198:                                              ; preds = %190, %291
  %199 = phi ptr [ %294, %291 ], [ %196, %190 ]
  %200 = phi i32 [ %292, %291 ], [ %194, %190 ]
  %201 = load i32, ptr %199, align 8
  %202 = and i32 %201, 65535
  %203 = add nsw i32 %202, -7
  %204 = icmp ult i32 %203, 4
  br i1 %204, label %205, label %291

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 0, i32 1, i32 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !19
  %208 = icmp eq ptr %207, %18
  br i1 %208, label %209, label %349

209:                                              ; preds = %205
  %210 = icmp ne i32 %202, 7
  %211 = zext i1 %210 to i32
  %212 = add nsw i32 %200, %211
  %213 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !19
  %215 = load i32, ptr %214, align 8
  %216 = and i32 %215, 65535
  %217 = icmp eq i32 %216, 23
  br i1 %217, label %221, label %218

218:                                              ; preds = %209
  %219 = tail call ptr @single_set_2(ptr noundef nonnull %199, ptr noundef nonnull %214) #13
  %220 = icmp eq ptr %219, null
  br i1 %220, label %231, label %221

221:                                              ; preds = %209, %218
  %222 = phi ptr [ %219, %218 ], [ %214, %209 ]
  %223 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !19
  %225 = icmp eq ptr %224, %59
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1
  %228 = tail call zeroext i8 @validate_change(ptr noundef nonnull %199, ptr noundef nonnull %227, ptr noundef nonnull %57, i8 noundef zeroext 1) #13
  %229 = tail call i32 @validate_replace_rtx(ptr noundef nonnull %59, ptr noundef nonnull %57, ptr noundef nonnull %25) #13
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %349, label %296

231:                                              ; preds = %221, %218
  %232 = load ptr, ptr %213, align 8, !tbaa !19
  %233 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %57, ptr noundef %232) #13
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %245, label %235

235:                                              ; preds = %231
  %236 = load i32, ptr %199, align 8
  %237 = and i32 %236, 65535
  %238 = icmp eq i32 %237, 7
  br i1 %238, label %239, label %349

239:                                              ; preds = %235
  %240 = load ptr, ptr %213, align 8, !tbaa !19
  %241 = getelementptr inbounds %struct.rtx_def, ptr %240, i64 0, i32 1, i32 0, i32 0, i64 1
  %242 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !9
  %243 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %242) #13
  %244 = tail call zeroext i8 @validate_change(ptr noundef nonnull %199, ptr noundef nonnull %241, ptr noundef %243, i8 noundef zeroext 1) #13
  br label %245

245:                                              ; preds = %239, %231
  %246 = load ptr, ptr %213, align 8, !tbaa !19
  %247 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %59, ptr noundef %246) #13
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %245
  %250 = load i32, ptr %199, align 8
  %251 = and i32 %250, 65535
  %252 = icmp eq i32 %251, 7
  br i1 %252, label %253, label %349

253:                                              ; preds = %249
  tail call void @validate_replace_rtx_group(ptr noundef nonnull %59, ptr noundef nonnull %57, ptr noundef nonnull %199) #13
  br label %254

254:                                              ; preds = %253, %245
  %255 = load i32, ptr %199, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 10
  br i1 %257, label %258, label %291

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 0, i32 1, i32 0, i32 1
  %260 = add nuw nsw i32 %192, 1
  %261 = load i32, ptr @optimize_size, align 4, !tbaa !5
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %282

263:                                              ; preds = %258
  %264 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !5
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %274, label %266

266:                                              ; preds = %263
  %267 = load ptr, ptr @cfun, align 8, !tbaa !9
  %268 = getelementptr inbounds %struct.function, ptr %267, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !11
  %270 = load ptr, ptr %269, align 8, !tbaa !13
  %271 = getelementptr inbounds %struct.basic_block_def, ptr %270, i64 0, i32 8
  %272 = load i64, ptr %271, align 8, !tbaa !31
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %282, label %274

274:                                              ; preds = %266, %263
  %275 = load ptr, ptr %259, align 8, !tbaa !19
  %276 = getelementptr inbounds %struct.basic_block_def, ptr %275, i64 0, i32 11
  %277 = load i32, ptr %276, align 8, !tbaa !32
  %278 = add i32 %277, 9
  %279 = icmp ult i32 %278, 19
  br i1 %279, label %282, label %280

280:                                              ; preds = %274
  %281 = sdiv i32 %277, 10
  br label %282

282:                                              ; preds = %280, %274, %258, %266
  %283 = phi i32 [ 1000, %266 ], [ 1000, %258 ], [ %281, %280 ], [ 1, %274 ]
  %284 = add nsw i32 %283, %193
  %285 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %286 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %57) #14
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds %struct.reg_info_t, ptr %285, i64 %287, i32 3
  %289 = load i32, ptr %288, align 4, !tbaa !33
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %349, label %190, !llvm.loop !34

291:                                              ; preds = %198, %254
  %292 = phi i32 [ %200, %198 ], [ %212, %254 ]
  %293 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 0, i32 1, i32 0, i32 0, i64 1
  %294 = load ptr, ptr %293, align 8, !tbaa !19
  %295 = icmp eq ptr %294, null
  br i1 %295, label %349, label %198, !llvm.loop !34

296:                                              ; preds = %226
  %297 = trunc i64 %48 to i32
  tail call void @remove_note(ptr noundef nonnull %25, ptr noundef nonnull %157) #13
  %298 = load ptr, ptr %213, align 8, !tbaa !19
  %299 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %59, ptr noundef %298) #13
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %305, label %301

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 1, i32 1, i32 0, i32 0, i64 1
  %303 = load ptr, ptr %302, align 8, !tbaa !19
  %304 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %303, ptr %304, align 8, !tbaa !19
  store ptr %157, ptr %302, align 8, !tbaa !19
  br label %305

305:                                              ; preds = %301, %296
  %306 = tail call ptr @find_reg_note(ptr noundef nonnull %199, i32 noundef 1, ptr noundef nonnull %57) #13
  %307 = icmp eq ptr %306, null
  br i1 %307, label %309, label %308

308:                                              ; preds = %305
  tail call void @remove_note(ptr noundef nonnull %199, ptr noundef nonnull %306) #13
  br label %309

309:                                              ; preds = %308, %305
  %310 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %57) #14
  %311 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %59) #14
  %312 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !9
  %313 = sext i32 %310 to i64
  %314 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %312, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !35
  %316 = add nsw i32 %315, 1
  store i32 %316, ptr %314, align 4, !tbaa !35
  %317 = sext i32 %311 to i64
  %318 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %312, i64 %317
  %319 = load i32, ptr %318, align 4, !tbaa !35
  %320 = add nsw i32 %319, -1
  store i32 %320, ptr %318, align 4, !tbaa !35
  %321 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %322 = getelementptr inbounds %struct.reg_info_t, ptr %321, i64 %313, i32 3
  %323 = load i32, ptr %322, align 4, !tbaa !33
  %324 = add nsw i32 %323, %192
  store i32 %324, ptr %322, align 4, !tbaa !33
  %325 = getelementptr inbounds %struct.reg_info_t, ptr %321, i64 %317, i32 3
  %326 = load i32, ptr %325, align 4, !tbaa !33
  %327 = sub nsw i32 %326, %192
  store i32 %327, ptr %325, align 4, !tbaa !33
  %328 = getelementptr inbounds %struct.reg_info_t, ptr %321, i64 %313, i32 4
  %329 = load i32, ptr %328, align 4, !tbaa !37
  %330 = add nsw i32 %329, %193
  store i32 %330, ptr %328, align 4, !tbaa !37
  %331 = getelementptr inbounds %struct.reg_info_t, ptr %321, i64 %317, i32 4
  %332 = load i32, ptr %331, align 4, !tbaa !37
  %333 = sub nsw i32 %332, %193
  store i32 %333, ptr %331, align 4, !tbaa !37
  %334 = getelementptr inbounds %struct.reg_info_t, ptr %321, i64 %313, i32 2
  %335 = load i32, ptr %334, align 4, !tbaa !28
  %336 = add nsw i32 %335, %212
  store i32 %336, ptr %334, align 4, !tbaa !28
  %337 = getelementptr inbounds %struct.reg_info_t, ptr %321, i64 %317, i32 2
  %338 = load i32, ptr %337, align 4, !tbaa !28
  %339 = icmp sgt i32 %338, -1
  br i1 %339, label %340, label %343

340:                                              ; preds = %309
  %341 = sub nsw i32 %338, %212
  %342 = tail call i32 @llvm.smax.i32(i32 %341, i32 2)
  store i32 %342, ptr %337, align 4
  br label %343

343:                                              ; preds = %340, %309
  %344 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %345 = icmp eq ptr %344, null
  br i1 %345, label %365, label %346

346:                                              ; preds = %343
  %347 = load i32, ptr %46, align 8, !tbaa !19
  %348 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %344, ptr noundef nonnull @.str.4, i32 noundef %297, i32 noundef %347, i32 noundef %52) #14
  br label %365

349:                                              ; preds = %282, %190, %249, %235, %205, %291, %226
  %350 = tail call i32 @num_changes_pending() #13
  %351 = icmp sgt i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %349
  tail call void @cancel_changes(i32 noundef 0) #13
  br label %353

353:                                              ; preds = %87, %134, %140, %146, %150, %93, %352, %349, %153, %126, %122, %110, %114, %106, %103, %80, %63, %67, %70, %76, %54, %47, %162, %178, %171
  %354 = phi ptr [ %49, %352 ], [ %49, %349 ], [ %49, %153 ], [ %49, %126 ], [ %49, %122 ], [ %49, %110 ], [ %49, %114 ], [ %49, %106 ], [ %49, %103 ], [ %49, %80 ], [ %49, %63 ], [ %49, %67 ], [ %49, %70 ], [ %49, %76 ], [ %49, %54 ], [ %49, %47 ], [ %165, %162 ], [ %181, %178 ], [ %174, %171 ], [ %49, %93 ], [ %49, %150 ], [ %49, %146 ], [ %49, %140 ], [ %49, %134 ], [ %49, %87 ]
  %355 = phi ptr [ %50, %352 ], [ %50, %349 ], [ %50, %153 ], [ %50, %126 ], [ %50, %122 ], [ %50, %110 ], [ %50, %114 ], [ %50, %106 ], [ %50, %103 ], [ %50, %80 ], [ %50, %63 ], [ %50, %67 ], [ %50, %70 ], [ %50, %76 ], [ %50, %54 ], [ %50, %47 ], [ %164, %162 ], [ %180, %178 ], [ %173, %171 ], [ %50, %93 ], [ %50, %150 ], [ %50, %146 ], [ %50, %140 ], [ %50, %134 ], [ %50, %87 ]
  %356 = add nuw nsw i64 %48, 1
  %357 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !38
  %358 = sext i8 %357 to i64
  %359 = icmp slt i64 %356, %358
  br i1 %359, label %47, label %360, !llvm.loop !40

360:                                              ; preds = %353, %150
  %361 = phi ptr [ %355, %353 ], [ %50, %150 ]
  %362 = phi ptr [ %354, %353 ], [ %49, %150 ]
  %363 = icmp eq ptr %362, null
  br i1 %363, label %365, label %364

364:                                              ; preds = %360
  tail call fastcc void @copy_src_to_dest(ptr noundef nonnull %25, ptr noundef nonnull %362, ptr noundef %361) #14
  br label %365

365:                                              ; preds = %346, %343, %33, %360, %364, %38
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %1) #15
  %366 = icmp eq ptr %27, null
  br i1 %366, label %367, label %24, !llvm.loop !41

367:                                              ; preds = %365, %24
  %368 = load ptr, ptr @cfun, align 8, !tbaa !9
  br label %369

369:                                              ; preds = %16, %367
  %370 = phi ptr [ %368, %367 ], [ %17, %16 ]
  %371 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 5
  %372 = load ptr, ptr %371, align 8, !tbaa !26
  %373 = getelementptr inbounds %struct.function, ptr %370, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !11
  %375 = load ptr, ptr %374, align 8, !tbaa !13
  %376 = icmp eq ptr %372, %375
  br i1 %376, label %377, label %16, !llvm.loop !42

377:                                              ; preds = %369, %6
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @regstat_free_n_sets_and_refs() local_unnamed_addr #3

; Function Attrs: optsize
declare void @regstat_free_ri() local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_reg_info() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @optimize_reg_copy_3(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef %5) #14
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = icmp slt i32 %6, 53
  %11 = icmp slt i32 %7, 53
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %122, label %13

13:                                               ; preds = %3
  %14 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %5) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %122, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %18 = zext nneg i32 %6 to i64
  %19 = getelementptr inbounds %struct.reg_info_t, ptr %17, i64 %18, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %122

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @REG_N_SETS(i32 noundef %6) #14
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %122

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %122, label %29

29:                                               ; preds = %25, %45
  %30 = phi ptr [ %47, %45 ], [ %27, %25 ]
  %31 = tail call i32 @reg_set_p(ptr noundef %5, ptr noundef nonnull %30) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !19
  br label %49

36:                                               ; preds = %29
  %37 = load i32, ptr %30, align 8
  %38 = and i32 %37, 65535
  %39 = add nsw i32 %38, -7
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !19
  %44 = icmp eq ptr %43, %9
  br i1 %44, label %45, label %49

45:                                               ; preds = %36, %41
  %46 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !19
  %48 = icmp eq ptr %47, null
  br i1 %48, label %122, label %29, !llvm.loop !44

49:                                               ; preds = %41, %33
  %50 = phi ptr [ %35, %33 ], [ %43, %41 ]
  %51 = icmp eq ptr %50, %9
  br i1 %51, label %52, label %122

52:                                               ; preds = %49
  %53 = load i32, ptr %30, align 8
  %54 = and i32 %53, 65535
  %55 = add nsw i32 %54, -7
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %57, label %122

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !19
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 23
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = tail call ptr @single_set_2(ptr noundef nonnull %30, ptr noundef nonnull %59) #13
  %65 = icmp eq ptr %64, null
  br i1 %65, label %122, label %66

66:                                               ; preds = %57, %63
  %67 = phi ptr [ %64, %63 ], [ %59, %57 ]
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !19
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 43
  br i1 %73, label %74, label %122

74:                                               ; preds = %66
  %75 = tail call ptr @find_reg_note(ptr noundef nonnull %30, i32 noundef 3, ptr noundef null) #13
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %122

77:                                               ; preds = %74
  %78 = load ptr, ptr %68, align 8, !tbaa !19
  %79 = icmp eq ptr %78, %5
  br i1 %79, label %80, label %122

80:                                               ; preds = %77
  %81 = load ptr, ptr %69, align 8, !tbaa !19
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 134217728
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %122

85:                                               ; preds = %80
  %86 = load i32, ptr %5, align 8
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  %89 = load i32, ptr %2, align 8
  %90 = and i32 %89, 16711680
  %91 = and i32 %86, -16711681
  %92 = or disjoint i32 %90, %91
  store i32 %92, ptr %5, align 8
  %93 = load ptr, ptr %69, align 8, !tbaa !19
  store ptr %93, ptr %4, align 8, !tbaa !19
  %94 = tail call zeroext i8 @validate_change(ptr noundef nonnull %30, ptr noundef nonnull %69, ptr noundef nonnull %2, i8 noundef zeroext 1) #13
  %95 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %96 = load ptr, ptr %95, align 8, !tbaa !19
  %97 = icmp eq ptr %96, %0
  br i1 %97, label %110, label %98

98:                                               ; preds = %85, %106
  %99 = phi ptr [ %108, %106 ], [ %96, %85 ]
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 65535
  %102 = add nsw i32 %101, -7
  %103 = icmp ult i32 %102, 4
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %88, ptr noundef nonnull %5) #13
  tail call void @validate_replace_rtx_group(ptr noundef nonnull %5, ptr noundef %105, ptr noundef nonnull %99) #13
  br label %106

106:                                              ; preds = %104, %98
  %107 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1, i32 0, i32 0, i64 2
  %108 = load ptr, ptr %107, align 8, !tbaa !19
  %109 = icmp eq ptr %108, %0
  br i1 %109, label %110, label %98, !llvm.loop !45

110:                                              ; preds = %106, %85
  tail call void @validate_replace_rtx_group(ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef %0) #13
  %111 = tail call i32 @apply_change_group() #13
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, ptr %5, align 8
  %115 = shl nuw nsw i32 %88, 16
  %116 = and i32 %114, -16711681
  %117 = or disjoint i32 %116, %115
  store i32 %117, ptr %5, align 8
  store ptr %5, ptr %4, align 8, !tbaa !19
  br label %122

118:                                              ; preds = %110
  %119 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 4, ptr noundef null) #13
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  tail call void @remove_note(ptr noundef %0, ptr noundef nonnull %119) #13
  br label %122

122:                                              ; preds = %45, %25, %52, %113, %121, %118, %80, %63, %66, %74, %77, %49, %3, %13, %16, %22
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @optimize_reg_copy_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #14
  %5 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = icmp eq i32 %4, %5
  %9 = icmp slt i32 %4, 53
  %10 = or i1 %9, %8
  %11 = icmp slt i32 %5, 53
  %12 = or i1 %11, %10
  br i1 %12, label %230, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %230, label %17

17:                                               ; preds = %13, %226
  %18 = phi ptr [ %228, %226 ], [ %15, %13 ]
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -7
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %226

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  %26 = icmp eq ptr %25, %7
  br i1 %26, label %27, label %230

27:                                               ; preds = %23
  %28 = tail call i32 @reg_set_p(ptr noundef %2, ptr noundef nonnull %18) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %230

30:                                               ; preds = %27
  %31 = tail call i32 @reg_set_p(ptr noundef %1, ptr noundef nonnull %18) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %230

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !19
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 24
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !19
  %42 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %2, ptr noundef %41) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %230

44:                                               ; preds = %39, %33
  %45 = tail call ptr @find_regno_note(ptr noundef nonnull %18, i32 noundef 1, i32 noundef %4) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %226, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !19
  %50 = load i32, ptr %49, align 8
  %51 = load i32, ptr %2, align 8
  %52 = xor i32 %51, %50
  %53 = and i32 %52, 16711680
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %226

55:                                               ; preds = %47
  %56 = tail call ptr @next_real_insn(ptr noundef %0) #13
  %57 = tail call ptr @next_real_insn(ptr noundef nonnull %18) #13
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %172, label %59

59:                                               ; preds = %55, %161
  %60 = phi i32 [ %162, %161 ], [ 0, %55 ]
  %61 = phi i32 [ %163, %161 ], [ 0, %55 ]
  %62 = phi i32 [ %86, %161 ], [ 0, %55 ]
  %63 = phi i32 [ %84, %161 ], [ 0, %55 ]
  %64 = phi i32 [ %165, %161 ], [ 0, %55 ]
  %65 = phi ptr [ %167, %161 ], [ %56, %55 ]
  %66 = phi ptr [ %164, %161 ], [ null, %55 ]
  %67 = phi <2 x i32> [ %166, %161 ], [ zeroinitializer, %55 ]
  %68 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !19
  %70 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %2, ptr noundef %69) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %59
  %73 = tail call i32 @validate_replace_rtx(ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %65) #13
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 1, i32 %64
  br label %76

76:                                               ; preds = %72, %59
  %77 = phi i32 [ %64, %59 ], [ %75, %72 ]
  %78 = load i32, ptr %18, align 8
  %79 = and i32 %78, 65535
  %80 = icmp ne i32 %79, 7
  %81 = icmp ne ptr %66, null
  %82 = select i1 %80, i1 %81, i1 false
  %83 = zext i1 %82 to i32
  %84 = add nuw nsw i32 %63, %83
  %85 = zext i1 %80 to i32
  %86 = add nuw nsw i32 %62, %85
  %87 = icmp eq ptr %65, %18
  br i1 %87, label %146, label %88

88:                                               ; preds = %76
  %89 = load i32, ptr %65, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %92, label %146

92:                                               ; preds = %88
  %93 = add nsw i32 %61, 1
  %94 = load i32, ptr @optimize_size, align 4, !tbaa !5
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %92
  %97 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !5
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr @cfun, align 8, !tbaa !9
  %101 = getelementptr inbounds %struct.function, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !11
  %103 = load ptr, ptr %102, align 8, !tbaa !13
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %103, i64 0, i32 8
  %105 = load i64, ptr %104, align 8, !tbaa !31
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %99, %96
  %108 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !19
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %109, i64 0, i32 11
  %111 = load i32, ptr %110, align 8, !tbaa !32
  %112 = add i32 %111, 9
  %113 = icmp ult i32 %112, 19
  %114 = sdiv i32 %111, 10
  %115 = select i1 %113, i32 1, i32 %114
  %116 = add nsw i32 %115, %60
  br i1 %81, label %121, label %147

117:                                              ; preds = %99
  %118 = add nsw i32 %60, 1000
  br i1 %81, label %122, label %147

119:                                              ; preds = %92
  %120 = add nsw i32 %60, 1000
  br i1 %81, label %141, label %147

121:                                              ; preds = %107
  br i1 %98, label %131, label %122

122:                                              ; preds = %117, %121
  %123 = phi i32 [ %116, %121 ], [ %118, %117 ]
  %124 = load ptr, ptr @cfun, align 8, !tbaa !9
  %125 = getelementptr inbounds %struct.function, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !11
  %127 = load ptr, ptr %126, align 8, !tbaa !13
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 8
  %129 = load i64, ptr %128, align 8, !tbaa !31
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %122, %121
  %132 = phi i32 [ %123, %122 ], [ %116, %121 ]
  %133 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !19
  %135 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 11
  %136 = load i32, ptr %135, align 8, !tbaa !32
  %137 = add i32 %136, 9
  %138 = icmp ult i32 %137, 19
  br i1 %138, label %141, label %139

139:                                              ; preds = %131
  %140 = sdiv i32 %136, 10
  br label %141

141:                                              ; preds = %119, %122, %131, %139
  %142 = phi i32 [ %123, %122 ], [ %132, %139 ], [ %132, %131 ], [ %120, %119 ]
  %143 = phi i32 [ 1000, %122 ], [ %140, %139 ], [ 1, %131 ], [ 1000, %119 ]
  %144 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %143, i64 1
  %145 = add nsw <2 x i32> %144, %67
  br label %161

146:                                              ; preds = %88, %76
  br i1 %81, label %161, label %147

147:                                              ; preds = %117, %107, %119, %146
  %148 = phi i32 [ %60, %146 ], [ %120, %119 ], [ %116, %107 ], [ %118, %117 ]
  %149 = phi i32 [ %61, %146 ], [ %93, %119 ], [ %93, %107 ], [ %93, %117 ]
  %150 = tail call ptr @find_regno_note(ptr noundef nonnull %65, i32 noundef 1, i32 noundef %5) #13
  %151 = icmp eq ptr %150, null
  br i1 %151, label %161, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !19
  %155 = load i32, ptr %154, align 8
  %156 = load i32, ptr %1, align 8
  %157 = xor i32 %156, %155
  %158 = and i32 %157, 16711680
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  tail call void @remove_note(ptr noundef nonnull %65, ptr noundef nonnull %150) #13
  br label %161

161:                                              ; preds = %141, %152, %146, %147, %160
  %162 = phi i32 [ %148, %160 ], [ %148, %147 ], [ %60, %146 ], [ %148, %152 ], [ %142, %141 ]
  %163 = phi i32 [ %149, %160 ], [ %149, %147 ], [ %61, %146 ], [ %149, %152 ], [ %93, %141 ]
  %164 = phi ptr [ %150, %160 ], [ null, %147 ], [ %66, %146 ], [ null, %152 ], [ %66, %141 ]
  %165 = phi i32 [ %77, %160 ], [ %77, %147 ], [ %77, %146 ], [ 1, %152 ], [ %77, %141 ]
  %166 = phi <2 x i32> [ %67, %160 ], [ %67, %147 ], [ %67, %146 ], [ %67, %152 ], [ %145, %141 ]
  %167 = tail call ptr @next_real_insn(ptr noundef nonnull %65) #13
  %168 = tail call ptr @next_real_insn(ptr noundef nonnull %18) #13
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %170, label %59, !llvm.loop !46

170:                                              ; preds = %161
  %171 = icmp eq i32 %165, 0
  br i1 %171, label %172, label %197

172:                                              ; preds = %55, %170
  %173 = phi i32 [ %162, %170 ], [ 0, %55 ]
  %174 = phi i32 [ %163, %170 ], [ 0, %55 ]
  %175 = phi i32 [ %86, %170 ], [ 0, %55 ]
  %176 = phi i32 [ %84, %170 ], [ 0, %55 ]
  %177 = phi ptr [ %164, %170 ], [ null, %55 ]
  %178 = phi <2 x i32> [ %166, %170 ], [ zeroinitializer, %55 ]
  %179 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %180 = zext nneg i32 %4 to i64
  %181 = getelementptr inbounds %struct.reg_info_t, ptr %179, i64 %180, i32 2
  %182 = load i32, ptr %181, align 4, !tbaa !28
  %183 = icmp sgt i32 %182, -1
  br i1 %183, label %184, label %187

184:                                              ; preds = %172
  %185 = sub nsw i32 %182, %175
  %186 = tail call i32 @llvm.smax.i32(i32 %185, i32 2)
  store i32 %186, ptr %181, align 4
  br label %187

187:                                              ; preds = %184, %172
  %188 = getelementptr inbounds %struct.reg_info_t, ptr %179, i64 %180, i32 3
  %189 = load i32, ptr %188, align 4, !tbaa !33
  %190 = sub nsw i32 %189, %174
  store i32 %190, ptr %188, align 4, !tbaa !33
  %191 = getelementptr inbounds %struct.reg_info_t, ptr %179, i64 %180, i32 4
  %192 = load i32, ptr %191, align 4, !tbaa !37
  %193 = sub nsw i32 %192, %173
  store i32 %193, ptr %191, align 4, !tbaa !37
  tail call void @remove_note(ptr noundef nonnull %18, ptr noundef nonnull %45) #13
  %194 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %195 = load ptr, ptr %194, align 8, !tbaa !19
  %196 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %195, ptr %196, align 8, !tbaa !19
  store ptr %45, ptr %194, align 8, !tbaa !19
  br label %197

197:                                              ; preds = %187, %170
  %198 = phi i32 [ %176, %187 ], [ %84, %170 ]
  %199 = phi i32 [ 1, %187 ], [ 0, %170 ]
  %200 = phi ptr [ %177, %187 ], [ %164, %170 ]
  %201 = phi <2 x i32> [ %178, %187 ], [ %166, %170 ]
  %202 = icmp eq ptr %200, null
  br i1 %202, label %203, label %210

203:                                              ; preds = %197
  %204 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 6, i32 noundef %5) #13
  %205 = icmp eq ptr %204, null
  br i1 %205, label %230, label %206

206:                                              ; preds = %203
  %207 = load i32, ptr %204, align 8
  %208 = and i32 %207, -16711681
  %209 = or disjoint i32 %208, 65536
  store i32 %209, ptr %204, align 8
  tail call void @remove_note(ptr noundef %0, ptr noundef nonnull %204) #13
  br label %210

210:                                              ; preds = %197, %206
  %211 = phi ptr [ %204, %206 ], [ %200, %197 ]
  %212 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 1, i32 1, i32 0, i32 0, i64 1
  %213 = load ptr, ptr %212, align 8, !tbaa !19
  %214 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %213, ptr %214, align 8, !tbaa !19
  store ptr %211, ptr %212, align 8, !tbaa !19
  %215 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %216 = zext nneg i32 %5 to i64
  %217 = getelementptr inbounds %struct.reg_info_t, ptr %215, i64 %216, i32 2
  %218 = load i32, ptr %217, align 4, !tbaa !28
  %219 = icmp sgt i32 %218, -1
  br i1 %219, label %220, label %222

220:                                              ; preds = %210
  %221 = add nuw nsw i32 %218, %198
  store i32 %221, ptr %217, align 4, !tbaa !28
  br label %222

222:                                              ; preds = %220, %210
  %223 = getelementptr inbounds %struct.reg_info_t, ptr %215, i64 %216, i32 3
  %224 = load <2 x i32>, ptr %223, align 4, !tbaa !5
  %225 = add nsw <2 x i32> %224, %201
  store <2 x i32> %225, ptr %223, align 4, !tbaa !5
  br label %230

226:                                              ; preds = %17, %44, %47
  %227 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %228 = load ptr, ptr %227, align 8, !tbaa !19
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %17, !llvm.loop !47

230:                                              ; preds = %27, %30, %39, %23, %226, %222, %203, %13, %3
  %231 = phi i32 [ 0, %3 ], [ 0, %13 ], [ %199, %203 ], [ %199, %222 ], [ 0, %226 ], [ 0, %23 ], [ 0, %39 ], [ 0, %30 ], [ 0, %27 ]
  ret i32 %231
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !19
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @optimize_reg_copy_2(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %139, label %10

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #14
  %12 = sext i32 %11 to i64
  br label %13

13:                                               ; preds = %10, %135
  %14 = phi ptr [ %8, %10 ], [ %137, %135 ]
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -7
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %19, label %135

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !19
  %22 = icmp eq ptr %21, %6
  br i1 %22, label %23, label %139

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 23
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = tail call ptr @single_set_2(ptr noundef nonnull %14, ptr noundef nonnull %25) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %120, label %32

32:                                               ; preds = %23, %29
  %33 = phi ptr [ %30, %29 ], [ %25, %23 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !19
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %37, label %120

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !19
  %40 = icmp eq ptr %39, %2
  br i1 %40, label %41, label %120

41:                                               ; preds = %37
  %42 = tail call ptr @find_reg_note(ptr noundef nonnull %14, i32 noundef 1, ptr noundef %1) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %120, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !19
  %47 = icmp eq ptr %46, %0
  %48 = sext i32 %4 to i64
  br i1 %47, label %109, label %49

49:                                               ; preds = %44, %104
  %50 = phi ptr [ %106, %104 ], [ %0, %44 ]
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = add nsw i32 %52, -7
  %54 = icmp ult i32 %53, 4
  br i1 %54, label %55, label %104

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !19
  %58 = tail call i32 @reg_mentioned_p(ptr noundef %1, ptr noundef %57) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %56, align 8, !tbaa !19
  %62 = tail call ptr @replace_rtx(ptr noundef %61, ptr noundef %1, ptr noundef %2) #13
  store ptr %62, ptr %56, align 8, !tbaa !19
  %63 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %50) #13
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, ptr %50, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 10
  br i1 %67, label %68, label %104

68:                                               ; preds = %64
  %69 = load i32, ptr @optimize_size, align 4, !tbaa !5
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr @cfun, align 8, !tbaa !9
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !11
  %78 = load ptr, ptr %77, align 8, !tbaa !13
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 8
  %80 = load i64, ptr %79, align 8, !tbaa !31
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %74, %71
  %83 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !19
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 11
  %86 = load i32, ptr %85, align 8, !tbaa !32
  %87 = add i32 %86, 9
  %88 = icmp ult i32 %87, 19
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = sdiv i32 %86, 10
  br label %91

91:                                               ; preds = %89, %82, %68, %74
  %92 = phi i32 [ 1000, %74 ], [ 1000, %68 ], [ %90, %89 ], [ 1, %82 ]
  %93 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %94 = getelementptr inbounds %struct.reg_info_t, ptr %93, i64 %48, i32 3
  %95 = load i32, ptr %94, align 4, !tbaa !33
  %96 = add nsw i32 %95, -1
  store i32 %96, ptr %94, align 4, !tbaa !33
  %97 = getelementptr inbounds %struct.reg_info_t, ptr %93, i64 %12, i32 3
  %98 = getelementptr inbounds %struct.reg_info_t, ptr %93, i64 %48, i32 4
  %99 = load i32, ptr %98, align 4, !tbaa !37
  %100 = sub nsw i32 %99, %92
  store i32 %100, ptr %98, align 4, !tbaa !37
  %101 = load <2 x i32>, ptr %97, align 4, !tbaa !5
  %102 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %92, i64 1
  %103 = add nsw <2 x i32> %101, %102
  store <2 x i32> %103, ptr %97, align 4, !tbaa !5
  br label %104

104:                                              ; preds = %49, %91, %64
  %105 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 2
  %106 = load ptr, ptr %105, align 8, !tbaa !19
  %107 = load ptr, ptr %45, align 8, !tbaa !19
  %108 = icmp eq ptr %106, %107
  br i1 %108, label %109, label %49, !llvm.loop !48

109:                                              ; preds = %104, %44
  %110 = tail call ptr @find_reg_note(ptr noundef nonnull %14, i32 noundef 1, ptr noundef %1) #13
  tail call void @remove_note(ptr noundef nonnull %14, ptr noundef %110) #13
  %111 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %112 = getelementptr inbounds %struct.reg_info_t, ptr %111, i64 %48, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !43
  %114 = add nsw i32 %113, -1
  store i32 %114, ptr %112, align 4, !tbaa !43
  %115 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 1, ptr noundef %2) #13
  tail call void @remove_note(ptr noundef %0, ptr noundef %115) #13
  %116 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %117 = getelementptr inbounds %struct.reg_info_t, ptr %116, i64 %12, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !43
  %119 = add nsw i32 %118, -1
  store i32 %119, ptr %117, align 4, !tbaa !43
  br label %139

120:                                              ; preds = %41, %37, %32, %29
  %121 = tail call i32 @reg_set_p(ptr noundef %2, ptr noundef nonnull %14) #13
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %120
  %124 = tail call ptr @find_reg_note(ptr noundef nonnull %14, i32 noundef 1, ptr noundef %1) #13
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  %127 = load i32, ptr %14, align 8
  %128 = and i32 %127, 65535
  %129 = icmp eq i32 %128, 10
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %132 = getelementptr inbounds %struct.reg_info_t, ptr %131, i64 %12, i32 3
  %133 = load i32, ptr %132, align 4, !tbaa !33
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %13, %126, %130
  %136 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %137 = load ptr, ptr %136, align 8, !tbaa !19
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %13, !llvm.loop !49

139:                                              ; preds = %120, %123, %130, %19, %135, %3, %109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_SETS(i32 noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !9
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !35
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @validate_replace_rtx_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @find_reg_fusage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @next_real_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @validate_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_matches(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = alloca [30 x i32], align 16
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #15
  tail call void @extract_insn(ptr noundef %0) #13
  %5 = tail call i32 @constrain_operands(i32 noundef 0) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %137, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !38
  %9 = icmp sgt i8 %8, 0
  br i1 %9, label %10, label %137

10:                                               ; preds = %7
  %11 = zext nneg i8 %8 to i64
  br label %13

12:                                               ; preds = %13
  br i1 %9, label %19, label %137

13:                                               ; preds = %10, %13
  %14 = phi i64 [ %11, %10 ], [ %15, %13 ]
  %15 = add nsw i64 %14, -1
  %16 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 2, i64 %15
  store i32 -1, ptr %16, align 4, !tbaa !5
  %17 = getelementptr inbounds [30 x i32], ptr %1, i64 0, i64 %15
  store i32 -1, ptr %17, align 4, !tbaa !5
  %18 = icmp ugt i64 %14, 1
  br i1 %18, label %13, label %12, !llvm.loop !50

19:                                               ; preds = %12, %133
  %20 = phi i64 [ %42, %133 ], [ 0, %12 ]
  %21 = phi i32 [ %65, %133 ], [ 0, %12 ]
  %22 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %20
  store i32 0, ptr %24, align 4, !tbaa !5
  %25 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 1, i64 %20
  store i32 0, ptr %25, align 4, !tbaa !5
  %26 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 3, i64 %20
  store i32 0, ptr %26, align 4, !tbaa !5
  %27 = load i8, ptr %23, align 1, !tbaa !19
  switch i8 %27, label %31 [
    i8 61, label %29
    i8 43, label %28
  ]

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %19, %28
  %30 = phi i32 [ 2, %28 ], [ 1, %19 ]
  store i32 %30, ptr %25, align 4, !tbaa !5
  br label %31

31:                                               ; preds = %29, %19
  %32 = load i32, ptr @which_alternative, align 4
  %33 = load i8, ptr %23, align 1, !tbaa !19
  %34 = icmp ne i8 %33, 0
  %35 = icmp sgt i32 %32, 0
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %46, label %37

37:                                               ; preds = %46, %31
  %38 = phi ptr [ %23, %31 ], [ %53, %46 ]
  %39 = phi i8 [ %33, %31 ], [ %54, %46 ]
  %40 = getelementptr inbounds [30 x i32], ptr %1, i64 0, i64 %20
  %41 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 2, i64 %20
  %42 = add nuw nsw i64 %20, 1
  %43 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 2, i64 %42
  %44 = trunc i64 %42 to i32
  %45 = trunc i64 %20 to i32
  br label %62

46:                                               ; preds = %31, %46
  %47 = phi i8 [ %54, %46 ], [ %33, %31 ]
  %48 = phi i32 [ %52, %46 ], [ 0, %31 ]
  %49 = phi ptr [ %53, %46 ], [ %23, %31 ]
  %50 = icmp eq i8 %47, 44
  %51 = zext i1 %50 to i32
  %52 = add nuw nsw i32 %48, %51
  %53 = getelementptr inbounds i8, ptr %49, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !19
  %55 = icmp ne i8 %54, 0
  %56 = icmp slt i32 %52, %32
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %46, label %37, !llvm.loop !51

58:                                               ; preds = %130, %87
  %59 = phi ptr [ %71, %87 ], [ %132, %130 ]
  %60 = phi i32 [ %88, %87 ], [ %65, %130 ]
  %61 = load i8, ptr %59, align 1, !tbaa !19
  br label %62

62:                                               ; preds = %37, %58
  %63 = phi i8 [ %61, %58 ], [ %39, %37 ]
  %64 = phi ptr [ %59, %58 ], [ %38, %37 ]
  %65 = phi i32 [ %60, %58 ], [ %21, %37 ]
  switch i8 %63, label %130 [
    i8 44, label %133
    i8 0, label %133
    i8 90, label %89
    i8 89, label %89
    i8 38, label %66
    i8 37, label %67
    i8 48, label %68
    i8 49, label %68
    i8 50, label %68
    i8 51, label %68
    i8 52, label %68
    i8 53, label %68
    i8 54, label %68
    i8 55, label %68
    i8 56, label %68
    i8 57, label %68
    i8 97, label %89
    i8 98, label %89
    i8 99, label %89
    i8 100, label %89
    i8 101, label %89
    i8 102, label %89
    i8 104, label %89
    i8 106, label %89
    i8 107, label %89
    i8 108, label %89
    i8 112, label %89
    i8 113, label %89
    i8 116, label %89
    i8 117, label %89
    i8 118, label %89
    i8 119, label %89
    i8 120, label %89
    i8 121, label %89
    i8 122, label %89
    i8 65, label %89
    i8 66, label %89
    i8 67, label %89
    i8 68, label %89
    i8 87, label %89
  ]

66:                                               ; preds = %62
  store i32 1, ptr %26, align 4, !tbaa !5
  br label %130

67:                                               ; preds = %62
  store i32 %44, ptr %41, align 4, !tbaa !5
  store i32 %45, ptr %43, align 4, !tbaa !5
  br label %130

68:                                               ; preds = %62, %62, %62, %62, %62, %62, %62, %62, %62, %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %69 = call i64 @strtoul(ptr noundef nonnull %64, ptr noundef nonnull %4, i32 noundef 10) #14
  %70 = trunc i64 %69 to i32
  %71 = load ptr, ptr %4, align 8, !tbaa !9
  %72 = shl i64 %69, 32
  %73 = ashr exact i64 %72, 32
  %74 = icmp sgt i64 %20, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = shl i64 %69, 32
  %77 = ashr exact i64 %76, 32
  %78 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87, !llvm.loop !52

81:                                               ; preds = %75, %68
  store i32 %70, ptr %40, align 4, !tbaa !5
  %82 = load i32, ptr %41, align 4, !tbaa !5
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = zext nneg i32 %82 to i64
  %86 = getelementptr inbounds [30 x i32], ptr %1, i64 0, i64 %85
  store i32 %70, ptr %86, align 4, !tbaa !5
  br label %87

87:                                               ; preds = %81, %84, %75
  %88 = phi i32 [ %65, %75 ], [ 1, %84 ], [ 1, %81 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %58

89:                                               ; preds = %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62
  %90 = tail call i32 @lookup_constraint(ptr noundef nonnull %64) #13
  %91 = tail call i32 @regclass_for_constraint(i32 noundef %90) #13
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %129, label %93

93:                                               ; preds = %89
  %94 = tail call i32 @lookup_constraint(ptr noundef nonnull %64) #13
  %95 = tail call i32 @regclass_for_constraint(i32 noundef %94) #13
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %129, label %97

97:                                               ; preds = %93
  %98 = tail call i32 @lookup_constraint(ptr noundef nonnull %64) #13
  %99 = tail call i32 @regclass_for_constraint(i32 noundef %98) #13
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %129, label %101

101:                                              ; preds = %97
  %102 = tail call i32 @lookup_constraint(ptr noundef nonnull %64) #13
  %103 = tail call i32 @regclass_for_constraint(i32 noundef %102) #13
  %104 = icmp eq i32 %103, 4
  br i1 %104, label %129, label %105

105:                                              ; preds = %101
  %106 = tail call i32 @lookup_constraint(ptr noundef nonnull %64) #13
  %107 = tail call i32 @regclass_for_constraint(i32 noundef %106) #13
  %108 = icmp eq i32 %107, 7
  br i1 %108, label %129, label %109

109:                                              ; preds = %105
  %110 = tail call i32 @lookup_constraint(ptr noundef nonnull %64) #13
  %111 = tail call i32 @regclass_for_constraint(i32 noundef %110) #13
  %112 = icmp eq i32 %111, 5
  br i1 %112, label %129, label %113

113:                                              ; preds = %109
  %114 = tail call i32 @lookup_constraint(ptr noundef nonnull %64) #13
  %115 = tail call i32 @regclass_for_constraint(i32 noundef %114) #13
  %116 = icmp eq i32 %115, 6
  br i1 %116, label %129, label %117

117:                                              ; preds = %113
  %118 = tail call i32 @lookup_constraint(ptr noundef nonnull %64) #13
  %119 = tail call i32 @regclass_for_constraint(i32 noundef %118) #13
  %120 = icmp eq i32 %119, 17
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = tail call i32 @lookup_constraint(ptr noundef nonnull %64) #13
  %123 = tail call i32 @regclass_for_constraint(i32 noundef %122) #13
  %124 = icmp eq i32 %123, 14
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = tail call i32 @lookup_constraint(ptr noundef nonnull %64) #13
  %127 = tail call i32 @regclass_for_constraint(i32 noundef %126) #13
  %128 = icmp eq i32 %127, 15
  br i1 %128, label %129, label %130

129:                                              ; preds = %125, %121, %117, %113, %109, %105, %101, %97, %93, %89
  store i32 1, ptr %24, align 4, !tbaa !5
  br label %130

130:                                              ; preds = %62, %125, %129, %67, %66
  %131 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %63) #14
  %132 = getelementptr inbounds i8, ptr %64, i64 %131
  br label %58, !llvm.loop !52

133:                                              ; preds = %62, %62
  %134 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !38
  %135 = sext i8 %134 to i64
  %136 = icmp slt i64 %42, %135
  br i1 %136, label %19, label %137, !llvm.loop !53

137:                                              ; preds = %133, %7, %12, %2
  %138 = phi i32 [ 0, %2 ], [ 0, %12 ], [ 0, %7 ], [ %65, %133 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #15
  ret i32 %138
}

; Function Attrs: optsize
declare i32 @operands_match_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @count_occurrences(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @fixup_match_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #14
  %9 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %8) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %179

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %179, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  br label %18

18:                                               ; preds = %15, %171
  %19 = phi ptr [ %13, %15 ], [ %177, %171 ]
  %20 = phi ptr [ null, %15 ], [ %175, %171 ]
  %21 = phi i32 [ 0, %15 ], [ %174, %171 ]
  %22 = phi i32 [ 0, %15 ], [ %173, %171 ]
  %23 = phi i32 [ 0, %15 ], [ %172, %171 ]
  %24 = load i32, ptr %19, align 8
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -7
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %171

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  %31 = icmp eq ptr %30, %7
  br i1 %31, label %32, label %179

32:                                               ; preds = %28
  %33 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %34 = tail call ptr @find_regno_note(ptr noundef nonnull %19, i32 noundef 1, i32 noundef %33) #13
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, ptr %20, ptr %19
  %37 = icmp eq ptr %36, null
  %38 = load i32, ptr %19, align 8
  %39 = and i32 %38, 65535
  %40 = icmp ne i32 %39, 7
  %41 = and i1 %37, %40
  %42 = zext i1 %41 to i32
  %43 = add nsw i32 %21, %42
  %44 = add nsw i32 %39, -7
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %113

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !19
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 23
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = tail call ptr @single_set_2(ptr noundef nonnull %19, ptr noundef nonnull %48) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %113, label %55

55:                                               ; preds = %46, %52
  %56 = phi ptr [ %53, %52 ], [ %48, %46 ]
  %57 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !19
  %59 = icmp eq ptr %58, %1
  br i1 %59, label %60, label %113

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !19
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 49
  br i1 %65, label %66, label %113

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !19
  %69 = icmp eq ptr %68, %2
  br i1 %69, label %70, label %113

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !19
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 30
  br i1 %75, label %76, label %113

76:                                               ; preds = %70
  %77 = load i64, ptr %16, align 8, !tbaa !19
  %78 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !19
  %80 = sub nsw i64 %77, %79
  %81 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %80) #13
  %82 = tail call ptr @gen_add3_insn(ptr noundef %1, ptr noundef %1, ptr noundef %81) #13
  %83 = icmp eq ptr %82, null
  br i1 %83, label %113, label %84

84:                                               ; preds = %76
  %85 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %82, i8 noundef zeroext 0) #13
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %113, label %87

87:                                               ; preds = %84
  br i1 %37, label %107, label %88

88:                                               ; preds = %87
  %89 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %90 = tail call ptr @remove_death(i32 noundef %89, ptr noundef nonnull %36) #13
  %91 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %92 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.reg_info_t, ptr %91, i64 %93, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !28
  %96 = add nsw i32 %95, %43
  store i32 %96, ptr %94, align 4, !tbaa !28
  %97 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.reg_info_t, ptr %91, i64 %98, i32 3
  %100 = load i32, ptr %99, align 4, !tbaa !33
  %101 = add nsw i32 %100, %23
  store i32 %101, ptr %99, align 4, !tbaa !33
  %102 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.reg_info_t, ptr %91, i64 %103, i32 4
  %105 = load i32, ptr %104, align 4, !tbaa !37
  %106 = add nsw i32 %105, %22
  store i32 %106, ptr %104, align 4, !tbaa !37
  br label %107

107:                                              ; preds = %88, %87
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %109 = icmp eq ptr %108, null
  br i1 %109, label %179, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %5, align 8, !tbaa !19
  %112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %108, ptr noundef nonnull @.str.5, i32 noundef %111) #14
  br label %179

113:                                              ; preds = %32, %84, %76, %70, %66, %60, %55, %52
  %114 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !19
  %116 = tail call i32 @reg_set_p(ptr noundef %1, ptr noundef %115) #13
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %179

118:                                              ; preds = %113
  %119 = load i32, ptr %19, align 8
  %120 = and i32 %119, 65535
  %121 = icmp eq i32 %120, 10
  br i1 %121, label %122, label %167

122:                                              ; preds = %118
  br i1 %37, label %123, label %149

123:                                              ; preds = %122
  %124 = add nsw i32 %23, 1
  %125 = load i32, ptr @optimize_size, align 4, !tbaa !5
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %123
  %128 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !5
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr @cfun, align 8, !tbaa !9
  %132 = getelementptr inbounds %struct.function, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !11
  %134 = load ptr, ptr %133, align 8, !tbaa !13
  %135 = getelementptr inbounds %struct.basic_block_def, ptr %134, i64 0, i32 8
  %136 = load i64, ptr %135, align 8, !tbaa !31
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %130, %127
  %139 = load ptr, ptr %29, align 8, !tbaa !19
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 11
  %141 = load i32, ptr %140, align 8, !tbaa !32
  %142 = add i32 %141, 9
  %143 = icmp ult i32 %142, 19
  br i1 %143, label %146, label %144

144:                                              ; preds = %138
  %145 = sdiv i32 %141, 10
  br label %146

146:                                              ; preds = %144, %138, %123, %130
  %147 = phi i32 [ 1000, %130 ], [ 1000, %123 ], [ %145, %144 ], [ 1, %138 ]
  %148 = add nsw i32 %147, %22
  br label %149

149:                                              ; preds = %146, %122
  %150 = phi i32 [ %23, %122 ], [ %124, %146 ]
  %151 = phi i32 [ %22, %122 ], [ %148, %146 ]
  %152 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %153 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #14
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.reg_info_t, ptr %152, i64 %154, i32 3
  %156 = load i32, ptr %155, align 4, !tbaa !33
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %179, label %158

158:                                              ; preds = %149
  %159 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !19
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %158
  %165 = tail call i32 @find_reg_fusage(ptr noundef nonnull %19, i32 noundef 25, ptr noundef %1) #13
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %171, label %179

167:                                              ; preds = %118
  %168 = load ptr, ptr %114, align 8, !tbaa !19
  %169 = tail call i32 @reg_set_p(ptr noundef %2, ptr noundef %168) #13
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %164, %167, %18
  %172 = phi i32 [ %23, %18 ], [ %150, %164 ], [ %23, %167 ]
  %173 = phi i32 [ %22, %18 ], [ %151, %164 ], [ %22, %167 ]
  %174 = phi i32 [ %21, %18 ], [ %43, %164 ], [ %43, %167 ]
  %175 = phi ptr [ %20, %18 ], [ %36, %164 ], [ %36, %167 ]
  %176 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %177 = load ptr, ptr %176, align 8, !tbaa !19
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %18, !llvm.loop !54

179:                                              ; preds = %171, %28, %113, %149, %164, %158, %167, %11, %110, %107, %4
  %180 = phi i32 [ 0, %4 ], [ 1, %107 ], [ 1, %110 ], [ 0, %11 ], [ 0, %167 ], [ 0, %158 ], [ 0, %164 ], [ 0, %149 ], [ 0, %113 ], [ 0, %28 ], [ 0, %171 ]
  ret i32 %180
}

; Function Attrs: optsize
declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @regclass_compatible_p(i32 noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @reg_class_subset_p(i32 noundef %0, i32 noundef %1) #13
  %6 = freeze i32 %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  switch i32 %0, label %22 [
    i32 17, label %9
    i32 15, label %9
    i32 14, label %9
    i32 7, label %9
    i32 6, label %9
    i32 5, label %9
    i32 4, label %9
    i32 3, label %9
    i32 2, label %9
    i32 1, label %9
  ]

9:                                                ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %4
  %10 = tail call i32 @reg_class_subset_p(i32 noundef %1, i32 noundef %0) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = add i32 %1, -1
  %14 = icmp ult i32 %13, 17
  br i1 %14, label %18, label %15

15:                                               ; preds = %18, %12
  %16 = icmp ne i32 %1, 15
  %17 = zext i1 %16 to i32
  br label %22

18:                                               ; preds = %12
  %19 = lshr i32 73855, %13
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %15, label %22

22:                                               ; preds = %18, %8, %15, %9, %2
  %23 = phi i32 [ 1, %2 ], [ 1, %8 ], [ 0, %9 ], [ %17, %15 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @reg_is_remote_constant_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = load ptr, ptr @reg_set_in_bb, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %82

5:                                                ; preds = %2
  %6 = tail call i32 @max_reg_num() #13
  store i32 %6, ptr @max_reg_computed, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %8 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 8) #13
  store ptr %8, ptr @reg_set_in_bb, align 8, !tbaa !9
  %9 = load ptr, ptr @cfun, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %82, label %18

18:                                               ; preds = %5, %73
  %19 = phi ptr [ %74, %73 ], [ %9, %5 ]
  %20 = phi ptr [ %76, %73 ], [ %14, %5 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  %23 = load ptr, ptr %22, align 8, !tbaa !19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %73, label %25

25:                                               ; preds = %18, %67
  %26 = phi ptr [ %69, %67 ], [ %23, %18 ]
  %27 = load ptr, ptr %21, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = icmp eq ptr %26, %31
  br i1 %32, label %71, label %33

33:                                               ; preds = %25
  %34 = load i32, ptr %26, align 8
  %35 = and i32 %34, 65535
  %36 = add nsw i32 %35, -7
  %37 = icmp ult i32 %36, 4
  br i1 %37, label %38, label %67

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !19
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 23
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = tail call ptr @single_set_2(ptr noundef nonnull %26, ptr noundef nonnull %40) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %67, label %47

47:                                               ; preds = %38, %44
  %48 = phi ptr [ %45, %44 ], [ %40, %38 ]
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !19
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 37
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %50) #14
  %56 = tail call fastcc i32 @REG_N_SETS(i32 noundef %55) #14
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = tail call ptr @find_reg_note(ptr noundef nonnull %26, i32 noundef 4, ptr noundef null) #13
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr @reg_set_in_bb, align 8, !tbaa !9
  %63 = load ptr, ptr %49, align 8, !tbaa !19
  %64 = tail call fastcc i32 @rhs_regno(ptr noundef %63) #14
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %62, i64 %65
  store ptr %20, ptr %66, align 8, !tbaa !9
  br label %67

67:                                               ; preds = %33, %44, %47, %54, %58, %61
  %68 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %69 = load ptr, ptr %68, align 8, !tbaa !19
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %25, !llvm.loop !55

71:                                               ; preds = %25, %67
  %72 = load ptr, ptr @cfun, align 8, !tbaa !9
  br label %73

73:                                               ; preds = %71, %18
  %74 = phi ptr [ %72, %71 ], [ %19, %18 ]
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !15
  %77 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !11
  %79 = getelementptr inbounds %struct.control_flow_graph, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !18
  %81 = icmp eq ptr %76, %80
  br i1 %81, label %82, label %18, !llvm.loop !56

82:                                               ; preds = %73, %5, %2
  %83 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #14
  %84 = load i32, ptr @max_reg_computed, align 4, !tbaa !5
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 721, ptr noundef nonnull @.str.7) #13
  br label %87

87:                                               ; preds = %82, %86
  %88 = load ptr, ptr @reg_set_in_bb, align 8, !tbaa !9
  %89 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #14
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %88, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !9
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !19
  %97 = icmp ne ptr %92, %96
  %98 = zext i1 %97 to i8
  br label %99

99:                                               ; preds = %87, %94
  %100 = phi i8 [ %98, %94 ], [ 0, %87 ]
  ret i8 %100
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @num_changes_pending() local_unnamed_addr #3

; Function Attrs: optsize
declare void @cancel_changes(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_src_to_dest(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %103

7:                                                ; preds = %3
  %8 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #14
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.reg_info_t, ptr %8, i64 %10, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !28
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %103

14:                                               ; preds = %7
  %15 = load i32, ptr %2, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %103

18:                                               ; preds = %14
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #14
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.reg_info_t, ptr %8, i64 %20, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !28
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %103

24:                                               ; preds = %18
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 65535
  %27 = add nsw i32 %26, -7
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %29, label %103

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 23
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %31) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %103, label %38

38:                                               ; preds = %29, %35
  %39 = phi ptr [ %36, %35 ], [ %31, %29 ]
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !19
  %42 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %2, ptr noundef %41) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %103

44:                                               ; preds = %38
  %45 = load i32, ptr %1, align 8
  %46 = load i32, ptr %2, align 8
  %47 = xor i32 %46, %45
  %48 = and i32 %47, 16711680
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %103

50:                                               ; preds = %44
  %51 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !57
  tail call void @start_sequence() #13
  %52 = tail call ptr @emit_move_insn(ptr noundef nonnull %2, ptr noundef nonnull %1) #13
  %53 = tail call ptr @get_insns() #13
  tail call void @end_sequence() #13
  %54 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !57
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = tail call i32 @validate_replace_rtx(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %0) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %50
  store i32 %51, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !57
  br label %103

60:                                               ; preds = %56
  %61 = tail call ptr @emit_insn_before(ptr noundef %53, ptr noundef nonnull %0) #13
  %62 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !19
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 1, i32 1, i32 0, i32 0, i64 1
  %65 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !19
  %67 = icmp eq ptr %66, null
  br i1 %67, label %81, label %68

68:                                               ; preds = %60, %68
  %69 = phi ptr [ %74, %68 ], [ %66, %60 ]
  %70 = phi ptr [ %79, %68 ], [ %65, %60 ]
  %71 = phi ptr [ %78, %68 ], [ %64, %60 ]
  %72 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %73 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !19
  %75 = load ptr, ptr %72, align 8, !tbaa !19
  %76 = icmp eq ptr %75, %1
  %77 = select i1 %76, ptr %71, ptr %70
  %78 = select i1 %76, ptr %73, ptr %71
  %79 = select i1 %76, ptr %70, ptr %73
  store ptr %69, ptr %77, align 8, !tbaa !9
  %80 = icmp eq ptr %74, null
  br i1 %80, label %81, label %68, !llvm.loop !66

81:                                               ; preds = %68, %60
  %82 = phi ptr [ %64, %60 ], [ %78, %68 ]
  %83 = phi ptr [ %65, %60 ], [ %79, %68 ]
  store ptr null, ptr %82, align 8, !tbaa !9
  store ptr null, ptr %83, align 8, !tbaa !9
  %84 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #14
  %85 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !9
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %85, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !35
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %87, align 4, !tbaa !35
  %90 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %91 = getelementptr inbounds %struct.reg_info_t, ptr %90, i64 %86, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !28
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %91, align 4, !tbaa !28
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #14
  %95 = tail call ptr @find_reg_note(ptr noundef %63, i32 noundef 1, ptr noundef nonnull %1) #13
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %81
  %98 = load ptr, ptr @reg_info_p, align 8, !tbaa !9
  %99 = sext i32 %94 to i64
  %100 = getelementptr inbounds %struct.reg_info_t, ptr %98, i64 %99, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !28
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %100, align 4, !tbaa !28
  br label %103

103:                                              ; preds = %24, %3, %7, %14, %18, %35, %38, %44, %81, %97, %59
  ret void
}

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #9 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1
  ret i64 %3
}

; Function Attrs: optsize
declare ptr @gen_add3_insn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @remove_death(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_class_subset_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !10, i64 8}
!12 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !10, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!13 = !{!14, !10, i64 0}
!14 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!15 = !{!16, !10, i64 56}
!16 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !10, i64 48, !10, i64 56, !7, i64 64, !17, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!17 = !{!"long", !7, i64 0}
!18 = !{!14, !10, i64 8}
!19 = !{!7, !7, i64 0}
!20 = !{!21, !10, i64 8}
!21 = !{!"rtl_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32}
!22 = !{i32 0, i32 2}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = !{!16, !10, i64 48}
!27 = !{!21, !10, i64 0}
!28 = !{!29, !6, i64 8}
!29 = !{!"reg_info_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!30 = !{i8 0, i8 2}
!31 = !{!16, !17, i64 72}
!32 = !{!16, !6, i64 88}
!33 = !{!29, !6, i64 12}
!34 = distinct !{!34, !24}
!35 = !{!36, !6, i64 0}
!36 = !{!"regstat_n_sets_and_refs_t", !6, i64 0, !6, i64 4}
!37 = !{!29, !6, i64 16}
!38 = !{!39, !7, i64 1086}
!39 = !{!"recog_data", !7, i64 0, !7, i64 240, !7, i64 480, !7, i64 720, !7, i64 840, !7, i64 960, !7, i64 1072, !7, i64 1086, !7, i64 1087, !7, i64 1088, !7, i64 1089, !10, i64 1120}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24}
!42 = distinct !{!42, !24}
!43 = !{!29, !6, i64 4}
!44 = distinct !{!44, !24}
!45 = distinct !{!45, !24}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = !{!58, !6, i64 40}
!58 = !{!"rtl_data", !59, i64 0, !60, i64 40, !61, i64 96, !62, i64 112, !64, i64 208, !65, i64 248, !6, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !10, i64 376, !10, i64 384, !10, i64 392, !17, i64 400, !10, i64 408, !10, i64 416, !10, i64 424, !6, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !10, i64 456, !7, i64 464, !7, i64 465, !7, i64 466, !7, i64 467, !7, i64 468, !7, i64 469, !7, i64 470, !7, i64 471, !7, i64 472, !7, i64 473, !7, i64 474, !7, i64 475, !7, i64 476, !7, i64 477, !7, i64 478, !7, i64 479, !7, i64 480, !7, i64 481, !7, i64 482, !7, i64 483, !7, i64 484, !7, i64 485}
!59 = !{!"expr_status", !6, i64 0, !6, i64 4, !6, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!60 = !{!"emit_status", !6, i64 0, !6, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !10, i64 48}
!61 = !{!"varasm_status", !10, i64 0, !6, i64 8}
!62 = !{!"incoming_args", !6, i64 0, !6, i64 4, !6, i64 8, !10, i64 16, !63, i64 24, !10, i64 88}
!63 = !{!"ix86_args", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60}
!64 = !{!"function_subsections", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!65 = !{!"rtl_eh", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !7, i64 48}
!66 = distinct !{!66, !24}
