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

@pass_regmove = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_regmove, ptr @regmove_optimize, ptr null, ptr null, i32 0, i32 142, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@.str = private unnamed_addr constant [8 x i8] c"regmove\00", align 1
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
define internal zeroext i8 @gate_handle_regmove() #0 !prof !124 !PGOFuncName !125 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !126
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_regmove, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !130
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @regmove_optimize() #1 !prof !124 !PGOFuncName !131 {
  %1 = tail call i32 @max_reg_num() #13
  tail call void @df_note_add_problem() #13
  tail call void @df_analyze() #13
  %2 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !126
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4, !prof !130

4:                                                ; preds = %0
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !132
  tail call void @ira_set_pseudo_classes(ptr noundef %5) #13
  br label %6

6:                                                ; preds = %4, %0
  tail call void @regstat_init_n_sets_and_refs() #13
  tail call void @regstat_compute_ri() #13
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call ptr @xmalloc(i64 noundef %8) #13
  store ptr %9, ptr @regno_src_regno, align 8, !tbaa !132
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %14, !prof !134

11:                                               ; preds = %6
  %12 = zext nneg i32 %1 to i64
  %13 = shl nuw nsw i64 %12, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %9, i8 -1, i64 %13, i1 false), !tbaa !126
  br label %14

14:                                               ; preds = %11, %6
  tail call fastcc void @regmove_forward_pass() #14
  tail call fastcc void @regmove_backward_pass() #14
  %15 = load ptr, ptr @regno_src_regno, align 8, !tbaa !132
  tail call void @free(ptr noundef %15) #14
  %16 = load ptr, ptr @reg_set_in_bb, align 8, !tbaa !132
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !135

18:                                               ; preds = %14
  tail call void @free(ptr noundef nonnull %16) #14
  store ptr null, ptr @reg_set_in_bb, align 8, !tbaa !132
  br label %19

19:                                               ; preds = %18, %14
  tail call void @regstat_free_n_sets_and_refs() #13
  tail call void @regstat_free_ri() #13
  %20 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !126
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !130

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
define internal fastcc void @regmove_forward_pass() unnamed_addr #1 !prof !124 !PGOFuncName !136 {
  %1 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !126
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %130, label %3, !prof !137

3:                                                ; preds = %0
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !132
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !130

6:                                                ; preds = %3
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr nonnull %4)
  br label %8

8:                                                ; preds = %6, %3
  %9 = load ptr, ptr @cfun, align 8, !tbaa !132
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !138
  %12 = load ptr, ptr %11, align 8, !tbaa !140
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !142
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !145
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %130, label %18, !prof !146

18:                                               ; preds = %8, %121
  %19 = phi ptr [ %122, %121 ], [ %9, %8 ]
  %20 = phi ptr [ %124, %121 ], [ %14, %8 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !147
  %23 = load ptr, ptr %22, align 8, !tbaa !147
  %24 = icmp eq ptr %23, null
  br i1 %24, label %121, label %25, !prof !146

25:                                               ; preds = %18, %115
  %26 = phi ptr [ %117, %115 ], [ %23, %18 ]
  %27 = load ptr, ptr %21, align 8, !tbaa !147
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !148
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !147
  %32 = icmp eq ptr %26, %31
  br i1 %32, label %119, label %33, !prof !150

33:                                               ; preds = %25
  %34 = load i32, ptr %26, align 8
  %35 = and i32 %34, 65535
  %36 = add nsw i32 %35, -7
  %37 = icmp ult i32 %36, 4
  br i1 %37, label %38, label %115, !prof !151

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !147
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 23
  br i1 %43, label %47, label %44, !prof !152

44:                                               ; preds = %38
  %45 = tail call ptr @single_set_2(ptr noundef nonnull %26, ptr noundef nonnull %40) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %115, label %47, !prof !153

47:                                               ; preds = %38, %44
  %48 = phi ptr [ %45, %44 ], [ %40, %38 ]
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %50 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !147
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65534
  %54 = icmp eq i32 %53, 98
  br i1 %54, label %55, label %69, !prof !154

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !147
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %61, label %69, !prof !155

61:                                               ; preds = %55
  %62 = load ptr, ptr %49, align 8, !tbaa !147
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %69, !prof !156

66:                                               ; preds = %61
  tail call fastcc void @optimize_reg_copy_3(ptr noundef nonnull %26, ptr noundef nonnull %62, ptr noundef nonnull %51) #14
  %67 = load ptr, ptr %50, align 8, !tbaa !147
  %68 = load i32, ptr %67, align 8
  br label %69

69:                                               ; preds = %47, %66, %61, %55
  %70 = phi i32 [ %52, %47 ], [ %68, %66 ], [ %52, %61 ], [ %52, %55 ]
  %71 = phi ptr [ %51, %47 ], [ %67, %66 ], [ %51, %61 ], [ %51, %55 ]
  %72 = and i32 %70, 65535
  %73 = icmp eq i32 %72, 37
  br i1 %73, label %74, label %115, !prof !157

74:                                               ; preds = %69
  %75 = load ptr, ptr %49, align 8, !tbaa !147
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 37
  br i1 %78, label %79, label %115, !prof !158

79:                                               ; preds = %74
  %80 = tail call ptr @find_reg_note(ptr noundef nonnull %26, i32 noundef 1, ptr noundef nonnull %71) #13
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %87, !prof !159

82:                                               ; preds = %79
  %83 = load ptr, ptr %49, align 8, !tbaa !147
  %84 = load ptr, ptr %50, align 8, !tbaa !147
  %85 = tail call fastcc i32 @optimize_reg_copy_1(ptr noundef nonnull %26, ptr noundef %83, ptr noundef %84) #14, !range !160
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %115, label %87, !prof !161

87:                                               ; preds = %82, %79
  %88 = load ptr, ptr %49, align 8, !tbaa !147
  %89 = tail call fastcc i32 @rhs_regno(ptr noundef %88) #14
  %90 = icmp ugt i32 %89, 52
  br i1 %90, label %91, label %115, !prof !162

91:                                               ; preds = %87
  %92 = load ptr, ptr %50, align 8, !tbaa !147
  %93 = tail call fastcc i32 @rhs_regno(ptr noundef %92) #14
  %94 = icmp ugt i32 %93, 52
  br i1 %94, label %95, label %97, !prof !163

95:                                               ; preds = %91
  tail call fastcc void @optimize_reg_copy_2(ptr noundef nonnull %26, ptr noundef %88, ptr noundef %92) #14
  %96 = load ptr, ptr %49, align 8, !tbaa !147
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi ptr [ %96, %95 ], [ %88, %91 ]
  %99 = load ptr, ptr @regno_src_regno, align 8, !tbaa !132
  %100 = tail call fastcc i32 @rhs_regno(ptr noundef %98) #14
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, ptr %99, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !126
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %115, !prof !164

105:                                              ; preds = %97
  %106 = load ptr, ptr %50, align 8, !tbaa !147
  %107 = icmp eq ptr %106, %98
  br i1 %107, label %115, label %108, !prof !165

108:                                              ; preds = %105
  %109 = tail call fastcc i32 @rhs_regno(ptr noundef %106) #14
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %99, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !126
  %113 = icmp slt i32 %112, 0
  %114 = select i1 %113, i32 %109, i32 %112, !prof !166
  store i32 %114, ptr %102, align 4, !tbaa !126
  br label %115

115:                                              ; preds = %33, %69, %74, %97, %105, %108, %87, %82, %44
  %116 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %117 = load ptr, ptr %116, align 8, !tbaa !147
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %25, !prof !167, !llvm.loop !168

119:                                              ; preds = %25, %115
  %120 = load ptr, ptr @cfun, align 8, !tbaa !132
  br label %121

121:                                              ; preds = %119, %18
  %122 = phi ptr [ %120, %119 ], [ %19, %18 ]
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !142
  %125 = getelementptr inbounds %struct.function, ptr %122, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !138
  %127 = getelementptr inbounds %struct.control_flow_graph, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !145
  %129 = icmp eq ptr %124, %128
  br i1 %129, label %130, label %18, !prof !170, !llvm.loop !171

130:                                              ; preds = %121, %8, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @regmove_backward_pass() unnamed_addr #1 !prof !124 !PGOFuncName !172 {
  %1 = alloca %struct.match, align 4
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !132
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !130

4:                                                ; preds = %0
  %5 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 26, i64 1, ptr nonnull %2)
  br label %6

6:                                                ; preds = %4, %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !132
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !173
  %14 = load ptr, ptr %9, align 8, !tbaa !140
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %377, label %16, !prof !146

16:                                               ; preds = %6, %369
  %17 = phi ptr [ %370, %369 ], [ %7, %6 ]
  %18 = phi ptr [ %372, %369 ], [ %13, %6 ]
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !147
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !148
  %23 = icmp eq ptr %22, null
  br i1 %23, label %369, label %24, !prof !174

24:                                               ; preds = %16, %365
  %25 = phi ptr [ %27, %365 ], [ %22, %16 ]
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !147
  %28 = load ptr, ptr %19, align 8, !tbaa !147
  %29 = load ptr, ptr %28, align 8, !tbaa !175
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !147
  %32 = icmp eq ptr %25, %31
  br i1 %32, label %367, label %33, !prof !150

33:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %1) #15
  %34 = load i32, ptr %25, align 8
  %35 = and i32 %34, 65535
  %36 = add nsw i32 %35, -7
  %37 = icmp ult i32 %36, 4
  br i1 %37, label %38, label %365, !prof !151

38:                                               ; preds = %33
  %39 = call fastcc i32 @find_matches(ptr noundef nonnull %25, ptr noundef nonnull %1) #14, !range !160
  %40 = icmp ne i32 %39, 0
  %41 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %42 = icmp sgt i8 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %365, !prof !176

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  br label %46

46:                                               ; preds = %44, %353
  %47 = phi i64 [ 0, %44 ], [ %356, %353 ]
  %48 = phi ptr [ null, %44 ], [ %354, %353 ]
  %49 = phi ptr [ null, %44 ], [ %355, %353 ]
  %50 = getelementptr inbounds [30 x i32], ptr %1, i64 0, i64 %47
  %51 = load i32, ptr %50, align 4, !tbaa !126
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %353, label %53, !prof !177

53:                                               ; preds = %46
  %54 = zext nneg i32 %51 to i64
  %55 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !132
  %57 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %47
  %58 = load ptr, ptr %57, align 8, !tbaa !132
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 37
  br i1 %61, label %62, label %353, !prof !178

62:                                               ; preds = %53
  %63 = load i32, ptr %56, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %353, !prof !179

66:                                               ; preds = %62
  %67 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %56) #14
  %68 = icmp ult i32 %67, 53
  br i1 %68, label %353, label %69, !prof !180

69:                                               ; preds = %66
  %70 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %71 = zext i32 %67 to i64
  %72 = getelementptr inbounds %struct.reg_info_t, ptr %70, i64 %71, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !181
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %353, label %75, !prof !183

75:                                               ; preds = %69
  %76 = xor i32 %63, %59
  %77 = and i32 %76, 16711680
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %353, !prof !184

79:                                               ; preds = %75
  %80 = tail call i32 @operands_match_p(ptr noundef nonnull %58, ptr noundef nonnull %56) #13
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %353, !prof !185

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 2, i64 %47
  %84 = load i32, ptr %83, align 4, !tbaa !126
  %85 = icmp sgt i32 %84, -1
  br i1 %85, label %86, label %92, !prof !186

86:                                               ; preds = %82
  %87 = zext nneg i32 %84 to i64
  %88 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !132
  %90 = tail call i32 @operands_match_p(ptr noundef %89, ptr noundef nonnull %56) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %353

92:                                               ; preds = %86, %82
  %93 = load i32, ptr %25, align 8
  %94 = and i32 %93, 65535
  %95 = add nsw i32 %94, -7
  %96 = icmp ult i32 %95, 4
  br i1 %96, label %97, label %353, !prof !187

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !147
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 23
  br i1 %102, label %106, label %103, !prof !188

103:                                              ; preds = %97
  %104 = tail call ptr @single_set_2(ptr noundef nonnull %25, ptr noundef nonnull %99) #13
  %105 = icmp eq ptr %104, null
  br i1 %105, label %353, label %106, !prof !153

106:                                              ; preds = %97, %103
  %107 = phi ptr [ %104, %103 ], [ %99, %97 ]
  %108 = tail call i32 @reg_set_p(ptr noundef nonnull %58, ptr noundef nonnull %25) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %353, !prof !189

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 1, i64 %47
  %112 = load i32, ptr %111, align 4, !tbaa !126
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %353, !prof !189

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 1, i64 %54
  %116 = load i32, ptr %115, align 4, !tbaa !126
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %353, !prof !189

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 3, i64 %54
  %120 = load i32, ptr %119, align 4, !tbaa !126
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122, !prof !189

122:                                              ; preds = %118
  %123 = load ptr, ptr %98, align 8, !tbaa !147
  %124 = tail call i32 @count_occurrences(ptr noundef %123, ptr noundef nonnull %58, i32 noundef 0) #13
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %353, label %126

126:                                              ; preds = %122, %118
  %127 = load ptr, ptr %55, align 8, !tbaa !132
  %128 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !147
  %130 = icmp eq ptr %127, %129
  br i1 %130, label %131, label %353, !prof !190

131:                                              ; preds = %126
  %132 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %58) #14
  %133 = icmp ult i32 %132, 53
  br i1 %133, label %134, label %153, !prof !191

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1, i32 0, i32 0, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !147
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 49
  br i1 %139, label %140, label %353, !prof !192

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !147
  %143 = load i32, ptr %142, align 8
  %144 = and i32 %143, 65535
  %145 = icmp eq i32 %144, 30
  br i1 %145, label %146, label %353

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !147
  %149 = icmp eq ptr %148, %58
  br i1 %149, label %150, label %353

150:                                              ; preds = %146
  %151 = tail call fastcc i32 @fixup_match_2(ptr noundef nonnull %25, ptr noundef nonnull %56, ptr noundef nonnull %58, ptr noundef nonnull %142) #14
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %353, label %360

153:                                              ; preds = %131
  %154 = tail call i32 @reg_preferred_class(i32 noundef %132) #13
  %155 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %56) #14
  %156 = tail call i32 @reg_preferred_class(i32 noundef %155) #13
  %157 = tail call ptr @find_reg_note(ptr noundef nonnull %25, i32 noundef 1, ptr noundef nonnull %58) #13
  %158 = icmp eq ptr %157, null
  br i1 %158, label %353, label %159, !prof !193

159:                                              ; preds = %153
  %160 = tail call fastcc i32 @regclass_compatible_p(i32 noundef %154, i32 noundef %156) #14, !range !160
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %166, !prof !194

162:                                              ; preds = %159
  %163 = icmp eq ptr %48, null
  %164 = select i1 %163, ptr %56, ptr %49
  %165 = select i1 %163, ptr %58, ptr %48
  br label %353

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1, i32 0, i32 0, i64 1
  %168 = load ptr, ptr %167, align 8, !tbaa !147
  %169 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %56, ptr noundef %168) #13
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171, !prof !195

171:                                              ; preds = %166
  %172 = icmp eq ptr %48, null
  %173 = select i1 %172, ptr %56, ptr %49, !prof !196
  %174 = select i1 %172, ptr %58, ptr %48, !prof !196
  br label %353

175:                                              ; preds = %166
  %176 = tail call fastcc zeroext i8 @reg_is_remote_constant_p(ptr noundef nonnull %58, ptr noundef nonnull %25) #14, !range !197
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %182, label %178, !prof !198

178:                                              ; preds = %175
  %179 = icmp eq ptr %48, null
  %180 = select i1 %179, ptr %56, ptr %49, !prof !199
  %181 = select i1 %179, ptr %58, ptr %48, !prof !199
  br label %353

182:                                              ; preds = %175
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !132
  %184 = icmp eq ptr %183, null
  br i1 %184, label %189, label %185, !prof !200

185:                                              ; preds = %182
  %186 = load i32, ptr %45, align 8, !tbaa !147
  %187 = trunc i64 %47 to i32
  %188 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %183, ptr noundef nonnull @.str.3, i32 noundef %187, i32 noundef %186, i32 noundef %51) #14
  br label %189

189:                                              ; preds = %185, %182
  br label %190

190:                                              ; preds = %189, %282
  %191 = phi ptr [ %199, %282 ], [ %25, %189 ]
  %192 = phi i32 [ %260, %282 ], [ 0, %189 ]
  %193 = phi i32 [ %284, %282 ], [ 0, %189 ]
  %194 = phi i32 [ %212, %282 ], [ 0, %189 ]
  %195 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1, i32 0, i32 0, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !147
  %197 = icmp eq ptr %196, null
  br i1 %197, label %349, label %198, !prof !201

198:                                              ; preds = %190, %291
  %199 = phi ptr [ %294, %291 ], [ %196, %190 ]
  %200 = phi i32 [ %292, %291 ], [ %194, %190 ]
  %201 = load i32, ptr %199, align 8
  %202 = and i32 %201, 65535
  %203 = add nsw i32 %202, -7
  %204 = icmp ult i32 %203, 4
  br i1 %204, label %205, label %291, !prof !202

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 0, i32 1, i32 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !147
  %208 = icmp eq ptr %207, %18
  br i1 %208, label %209, label %349, !prof !203

209:                                              ; preds = %205
  %210 = icmp ne i32 %202, 7
  %211 = zext i1 %210 to i32
  %212 = add nsw i32 %200, %211
  %213 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !147
  %215 = load i32, ptr %214, align 8
  %216 = and i32 %215, 65535
  %217 = icmp eq i32 %216, 23
  br i1 %217, label %221, label %218, !prof !204

218:                                              ; preds = %209
  %219 = tail call ptr @single_set_2(ptr noundef nonnull %199, ptr noundef nonnull %214) #13
  %220 = icmp eq ptr %219, null
  br i1 %220, label %231, label %221, !prof !153

221:                                              ; preds = %209, %218
  %222 = phi ptr [ %219, %218 ], [ %214, %209 ]
  %223 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !147
  %225 = icmp eq ptr %224, %58
  br i1 %225, label %226, label %231, !prof !205

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1
  %228 = tail call zeroext i8 @validate_change(ptr noundef nonnull %199, ptr noundef nonnull %227, ptr noundef nonnull %56, i8 noundef zeroext 1) #13
  %229 = tail call i32 @validate_replace_rtx(ptr noundef nonnull %58, ptr noundef nonnull %56, ptr noundef nonnull %25) #13
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %349, label %296, !prof !206

231:                                              ; preds = %221, %218
  %232 = load ptr, ptr %213, align 8, !tbaa !147
  %233 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %56, ptr noundef %232) #13
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %245, label %235, !prof !207

235:                                              ; preds = %231
  %236 = load i32, ptr %199, align 8
  %237 = and i32 %236, 65535
  %238 = icmp eq i32 %237, 7
  br i1 %238, label %239, label %349, !prof !208

239:                                              ; preds = %235
  %240 = load ptr, ptr %213, align 8, !tbaa !147
  %241 = getelementptr inbounds %struct.rtx_def, ptr %240, i64 0, i32 1, i32 0, i32 0, i64 1
  %242 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !132
  %243 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %242) #13
  %244 = tail call zeroext i8 @validate_change(ptr noundef nonnull %199, ptr noundef nonnull %241, ptr noundef %243, i8 noundef zeroext 1) #13
  br label %245

245:                                              ; preds = %239, %231
  %246 = load ptr, ptr %213, align 8, !tbaa !147
  %247 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %58, ptr noundef %246) #13
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %254, label %249, !prof !209

249:                                              ; preds = %245
  %250 = load i32, ptr %199, align 8
  %251 = and i32 %250, 65535
  %252 = icmp eq i32 %251, 7
  br i1 %252, label %253, label %349, !prof !210

253:                                              ; preds = %249
  tail call void @validate_replace_rtx_group(ptr noundef nonnull %58, ptr noundef nonnull %56, ptr noundef nonnull %199) #13
  br label %254

254:                                              ; preds = %253, %245
  %255 = load i32, ptr %199, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 10
  br i1 %257, label %258, label %291, !prof !211

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 0, i32 1, i32 0, i32 1
  %260 = add nuw nsw i32 %192, 1
  %261 = load i32, ptr @optimize_size, align 4, !tbaa !126
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %282, !prof !212

263:                                              ; preds = %258
  %264 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !126
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %274, label %266, !prof !212

266:                                              ; preds = %263
  %267 = load ptr, ptr @cfun, align 8, !tbaa !132
  %268 = getelementptr inbounds %struct.function, ptr %267, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !138
  %270 = load ptr, ptr %269, align 8, !tbaa !140
  %271 = getelementptr inbounds %struct.basic_block_def, ptr %270, i64 0, i32 8
  %272 = load i64, ptr %271, align 8, !tbaa !213
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %282, label %274

274:                                              ; preds = %266, %263
  %275 = load ptr, ptr %259, align 8, !tbaa !147
  %276 = getelementptr inbounds %struct.basic_block_def, ptr %275, i64 0, i32 11
  %277 = load i32, ptr %276, align 8, !tbaa !214
  %278 = add i32 %277, 9
  %279 = icmp ult i32 %278, 19
  br i1 %279, label %282, label %280, !prof !215

280:                                              ; preds = %274
  %281 = sdiv i32 %277, 10
  br label %282

282:                                              ; preds = %280, %274, %258, %266
  %283 = phi i32 [ 1000, %266 ], [ 1000, %258 ], [ %281, %280 ], [ 1, %274 ]
  %284 = add nsw i32 %283, %193
  %285 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %286 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %56) #14
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds %struct.reg_info_t, ptr %285, i64 %287, i32 3
  %289 = load i32, ptr %288, align 4, !tbaa !216
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %349, label %190, !llvm.loop !217

291:                                              ; preds = %198, %254
  %292 = phi i32 [ %200, %198 ], [ %212, %254 ]
  %293 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 0, i32 1, i32 0, i32 0, i64 1
  %294 = load ptr, ptr %293, align 8, !tbaa !147
  %295 = icmp eq ptr %294, null
  br i1 %295, label %349, label %198, !prof !218, !llvm.loop !217

296:                                              ; preds = %226
  %297 = trunc i64 %47 to i32
  tail call void @remove_note(ptr noundef nonnull %25, ptr noundef nonnull %157) #13
  %298 = load ptr, ptr %213, align 8, !tbaa !147
  %299 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %58, ptr noundef %298) #13
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %305, label %301, !prof !219

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 1, i32 1, i32 0, i32 0, i64 1
  %303 = load ptr, ptr %302, align 8, !tbaa !147
  %304 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %303, ptr %304, align 8, !tbaa !147
  store ptr %157, ptr %302, align 8, !tbaa !147
  br label %305

305:                                              ; preds = %301, %296
  %306 = tail call ptr @find_reg_note(ptr noundef nonnull %199, i32 noundef 1, ptr noundef nonnull %56) #13
  %307 = icmp eq ptr %306, null
  br i1 %307, label %309, label %308, !prof !220

308:                                              ; preds = %305
  tail call void @remove_note(ptr noundef nonnull %199, ptr noundef nonnull %306) #13
  br label %309

309:                                              ; preds = %308, %305
  %310 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %56) #14
  %311 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %58) #14
  %312 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !132
  %313 = sext i32 %310 to i64
  %314 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %312, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !221
  %316 = add nsw i32 %315, 1
  store i32 %316, ptr %314, align 4, !tbaa !221
  %317 = sext i32 %311 to i64
  %318 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %312, i64 %317
  %319 = load i32, ptr %318, align 4, !tbaa !221
  %320 = add nsw i32 %319, -1
  store i32 %320, ptr %318, align 4, !tbaa !221
  %321 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %322 = getelementptr inbounds %struct.reg_info_t, ptr %321, i64 %313, i32 3
  %323 = load i32, ptr %322, align 4, !tbaa !216
  %324 = add nsw i32 %323, %192
  store i32 %324, ptr %322, align 4, !tbaa !216
  %325 = getelementptr inbounds %struct.reg_info_t, ptr %321, i64 %317, i32 3
  %326 = load i32, ptr %325, align 4, !tbaa !216
  %327 = sub nsw i32 %326, %192
  store i32 %327, ptr %325, align 4, !tbaa !216
  %328 = getelementptr inbounds %struct.reg_info_t, ptr %321, i64 %313, i32 4
  %329 = load i32, ptr %328, align 4, !tbaa !223
  %330 = add nsw i32 %329, %193
  store i32 %330, ptr %328, align 4, !tbaa !223
  %331 = getelementptr inbounds %struct.reg_info_t, ptr %321, i64 %317, i32 4
  %332 = load i32, ptr %331, align 4, !tbaa !223
  %333 = sub nsw i32 %332, %193
  store i32 %333, ptr %331, align 4, !tbaa !223
  %334 = getelementptr inbounds %struct.reg_info_t, ptr %321, i64 %313, i32 2
  %335 = load i32, ptr %334, align 4, !tbaa !181
  %336 = add nsw i32 %335, %212
  store i32 %336, ptr %334, align 4, !tbaa !181
  %337 = getelementptr inbounds %struct.reg_info_t, ptr %321, i64 %317, i32 2
  %338 = load i32, ptr %337, align 4, !tbaa !181
  %339 = icmp sgt i32 %338, -1
  br i1 %339, label %340, label %343, !prof !224

340:                                              ; preds = %309
  %341 = sub nsw i32 %338, %212
  %342 = tail call i32 @llvm.smax.i32(i32 %341, i32 2)
  store i32 %342, ptr %337, align 4
  br label %343

343:                                              ; preds = %340, %309
  %344 = load ptr, ptr @dump_file, align 8, !tbaa !132
  %345 = icmp eq ptr %344, null
  br i1 %345, label %365, label %346, !prof !224

346:                                              ; preds = %343
  %347 = load i32, ptr %45, align 8, !tbaa !147
  %348 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %344, ptr noundef nonnull @.str.4, i32 noundef %297, i32 noundef %347, i32 noundef %51) #14
  br label %365

349:                                              ; preds = %282, %190, %249, %235, %205, %291, %226
  %350 = tail call i32 @num_changes_pending() #13
  %351 = icmp sgt i32 %350, 0
  br i1 %351, label %352, label %353, !prof !225

352:                                              ; preds = %349
  tail call void @cancel_changes(i32 noundef 0) #13
  br label %353

353:                                              ; preds = %86, %134, %140, %146, %150, %92, %352, %349, %153, %126, %122, %110, %114, %106, %103, %79, %62, %66, %69, %75, %53, %46, %162, %178, %171
  %354 = phi ptr [ %48, %352 ], [ %48, %349 ], [ %48, %153 ], [ %48, %126 ], [ %48, %122 ], [ %48, %110 ], [ %48, %114 ], [ %48, %106 ], [ %48, %103 ], [ %48, %79 ], [ %48, %62 ], [ %48, %66 ], [ %48, %69 ], [ %48, %75 ], [ %48, %53 ], [ %48, %46 ], [ %165, %162 ], [ %181, %178 ], [ %174, %171 ], [ %48, %92 ], [ %48, %150 ], [ %48, %146 ], [ %48, %140 ], [ %48, %134 ], [ %48, %86 ]
  %355 = phi ptr [ %49, %352 ], [ %49, %349 ], [ %49, %153 ], [ %49, %126 ], [ %49, %122 ], [ %49, %110 ], [ %49, %114 ], [ %49, %106 ], [ %49, %103 ], [ %49, %79 ], [ %49, %62 ], [ %49, %66 ], [ %49, %69 ], [ %49, %75 ], [ %49, %53 ], [ %49, %46 ], [ %164, %162 ], [ %180, %178 ], [ %173, %171 ], [ %49, %92 ], [ %49, %150 ], [ %49, %146 ], [ %49, %140 ], [ %49, %134 ], [ %49, %86 ]
  %356 = add nuw nsw i64 %47, 1
  %357 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !226
  %358 = sext i8 %357 to i64
  %359 = icmp slt i64 %356, %358
  br i1 %359, label %46, label %360, !prof !228, !llvm.loop !229

360:                                              ; preds = %353, %150
  %361 = phi ptr [ %355, %353 ], [ %49, %150 ]
  %362 = phi ptr [ %354, %353 ], [ %48, %150 ]
  %363 = icmp eq ptr %362, null
  br i1 %363, label %365, label %364, !prof !230

364:                                              ; preds = %360
  tail call fastcc void @copy_src_to_dest(ptr noundef nonnull %25, ptr noundef nonnull %362, ptr noundef %361) #14
  br label %365

365:                                              ; preds = %346, %343, %33, %360, %364, %38
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %1) #15
  %366 = icmp eq ptr %27, null
  br i1 %366, label %367, label %24, !prof !231, !llvm.loop !232

367:                                              ; preds = %365, %24
  %368 = load ptr, ptr @cfun, align 8, !tbaa !132
  br label %369

369:                                              ; preds = %16, %367
  %370 = phi ptr [ %368, %367 ], [ %17, %16 ]
  %371 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 5
  %372 = load ptr, ptr %371, align 8, !tbaa !173
  %373 = getelementptr inbounds %struct.function, ptr %370, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !138
  %375 = load ptr, ptr %374, align 8, !tbaa !140
  %376 = icmp eq ptr %372, %375
  br i1 %376, label %377, label %16, !prof !170, !llvm.loop !233

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
define internal fastcc void @optimize_reg_copy_3(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #1 !prof !234 !PGOFuncName !235 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !147
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef %5) #14
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !147
  %10 = icmp slt i32 %6, 53
  %11 = icmp slt i32 %7, 53
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %122, label %13, !prof !236

13:                                               ; preds = %3
  %14 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %5) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %122, label %16, !prof !237

16:                                               ; preds = %13
  %17 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %18 = zext nneg i32 %6 to i64
  %19 = getelementptr inbounds %struct.reg_info_t, ptr %17, i64 %18, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !238
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %122, !prof !239

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @REG_N_SETS(i32 noundef %6) #14
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %122, !prof !240

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !147
  %28 = icmp eq ptr %27, null
  br i1 %28, label %122, label %29, !prof !201

29:                                               ; preds = %25, %45
  %30 = phi ptr [ %47, %45 ], [ %27, %25 ]
  %31 = tail call i32 @reg_set_p(ptr noundef %5, ptr noundef nonnull %30) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33, !prof !241

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !147
  br label %49

36:                                               ; preds = %29
  %37 = load i32, ptr %30, align 8
  %38 = and i32 %37, 65535
  %39 = add nsw i32 %38, -7
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %41, label %45, !prof !242

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !147
  %44 = icmp eq ptr %43, %9
  br i1 %44, label %45, label %49, !prof !243

45:                                               ; preds = %36, %41
  %46 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !147
  %48 = icmp eq ptr %47, null
  br i1 %48, label %122, label %29, !prof !244, !llvm.loop !245

49:                                               ; preds = %41, %33
  %50 = phi ptr [ %35, %33 ], [ %43, %41 ]
  %51 = icmp eq ptr %50, %9
  br i1 %51, label %52, label %122, !prof !246

52:                                               ; preds = %49
  %53 = load i32, ptr %30, align 8
  %54 = and i32 %53, 65535
  %55 = add nsw i32 %54, -7
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %57, label %122, !prof !247

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !147
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 23
  br i1 %62, label %66, label %63, !prof !248

63:                                               ; preds = %57
  %64 = tail call ptr @single_set_2(ptr noundef nonnull %30, ptr noundef nonnull %59) #13
  %65 = icmp eq ptr %64, null
  br i1 %65, label %122, label %66, !prof !249

66:                                               ; preds = %57, %63
  %67 = phi ptr [ %64, %63 ], [ %59, %57 ]
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !147
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 43
  br i1 %73, label %74, label %122, !prof !250

74:                                               ; preds = %66
  %75 = tail call ptr @find_reg_note(ptr noundef nonnull %30, i32 noundef 3, ptr noundef null) #13
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %122, !prof !251

77:                                               ; preds = %74
  %78 = load ptr, ptr %68, align 8, !tbaa !147
  %79 = icmp eq ptr %78, %5
  br i1 %79, label %80, label %122, !prof !251

80:                                               ; preds = %77
  %81 = load ptr, ptr %69, align 8, !tbaa !147
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 134217728
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %122, !prof !251

85:                                               ; preds = %80
  %86 = load i32, ptr %5, align 8
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  %89 = load i32, ptr %2, align 8
  %90 = and i32 %89, 16711680
  %91 = and i32 %86, -16711681
  %92 = or disjoint i32 %90, %91
  store i32 %92, ptr %5, align 8
  %93 = load ptr, ptr %69, align 8, !tbaa !147
  store ptr %93, ptr %4, align 8, !tbaa !147
  %94 = tail call zeroext i8 @validate_change(ptr noundef nonnull %30, ptr noundef nonnull %69, ptr noundef nonnull %2, i8 noundef zeroext 1) #13
  %95 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %96 = load ptr, ptr %95, align 8, !tbaa !147
  %97 = icmp eq ptr %96, %0
  br i1 %97, label %110, label %98, !prof !252

98:                                               ; preds = %85, %106
  %99 = phi ptr [ %108, %106 ], [ %96, %85 ]
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 65535
  %102 = add nsw i32 %101, -7
  %103 = icmp ult i32 %102, 4
  br i1 %103, label %104, label %106, !prof !253

104:                                              ; preds = %98
  %105 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %88, ptr noundef nonnull %5) #13
  tail call void @validate_replace_rtx_group(ptr noundef nonnull %5, ptr noundef %105, ptr noundef nonnull %99) #13
  br label %106

106:                                              ; preds = %104, %98
  %107 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1, i32 0, i32 0, i64 2
  %108 = load ptr, ptr %107, align 8, !tbaa !147
  %109 = icmp eq ptr %108, %0
  br i1 %109, label %110, label %98, !prof !254, !llvm.loop !255

110:                                              ; preds = %106, %85
  tail call void @validate_replace_rtx_group(ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef %0) #13
  %111 = tail call i32 @apply_change_group() #13
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118, !prof !256

113:                                              ; preds = %110
  %114 = load i32, ptr %5, align 8
  %115 = shl nuw nsw i32 %88, 16
  %116 = and i32 %114, -16711681
  %117 = or disjoint i32 %116, %115
  store i32 %117, ptr %5, align 8
  store ptr %5, ptr %4, align 8, !tbaa !147
  br label %122

118:                                              ; preds = %110
  %119 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 4, ptr noundef null) #13
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121, !prof !257

121:                                              ; preds = %118
  tail call void @remove_note(ptr noundef %0, ptr noundef nonnull %119) #13
  br label %122

122:                                              ; preds = %45, %25, %52, %113, %121, %118, %80, %63, %66, %74, %77, %49, %3, %13, %16, %22
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @optimize_reg_copy_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !258 !PGOFuncName !259 {
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #14
  %5 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !147
  %8 = icmp eq i32 %4, %5
  %9 = icmp slt i32 %4, 53
  %10 = or i1 %9, %8
  %11 = icmp slt i32 %5, 53
  %12 = or i1 %11, %10
  br i1 %12, label %237, label %13, !prof !260

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !147
  %16 = icmp eq ptr %15, null
  br i1 %16, label %237, label %17, !prof !261

17:                                               ; preds = %13, %233
  %18 = phi ptr [ %235, %233 ], [ %15, %13 ]
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -7
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %233, !prof !262

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !147
  %26 = icmp eq ptr %25, %7
  br i1 %26, label %27, label %237, !prof !263

27:                                               ; preds = %23
  %28 = tail call i32 @reg_set_p(ptr noundef %2, ptr noundef nonnull %18) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %237, !prof !264

30:                                               ; preds = %27
  %31 = tail call i32 @reg_set_p(ptr noundef %1, ptr noundef nonnull %18) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %237, !prof !265

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !147
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 24
  br i1 %38, label %39, label %44, !prof !266

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !147
  %42 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %2, ptr noundef %41) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %237

44:                                               ; preds = %39, %33
  %45 = tail call ptr @find_regno_note(ptr noundef nonnull %18, i32 noundef 1, i32 noundef %4) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %233, label %47, !prof !267

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !147
  %50 = load i32, ptr %49, align 8
  %51 = load i32, ptr %2, align 8
  %52 = xor i32 %51, %50
  %53 = and i32 %52, 16711680
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %233, !prof !268

55:                                               ; preds = %47
  %56 = tail call ptr @next_real_insn(ptr noundef %0) #13
  %57 = tail call ptr @next_real_insn(ptr noundef nonnull %18) #13
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %178, label %59, !prof !269

59:                                               ; preds = %55, %167
  %60 = phi i32 [ %168, %167 ], [ 0, %55 ]
  %61 = phi i32 [ %169, %167 ], [ 0, %55 ]
  %62 = phi i32 [ %88, %167 ], [ 0, %55 ]
  %63 = phi i32 [ %87, %167 ], [ 0, %55 ]
  %64 = phi i32 [ %171, %167 ], [ 0, %55 ]
  %65 = phi ptr [ %173, %167 ], [ %56, %55 ]
  %66 = phi ptr [ %170, %167 ], [ null, %55 ]
  %67 = phi <2 x i32> [ %172, %167 ], [ zeroinitializer, %55 ]
  %68 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !147
  %70 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %2, ptr noundef %69) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72, !prof !270

72:                                               ; preds = %59
  %73 = tail call i32 @validate_replace_rtx(ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %65) #13
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 1, i32 %64, !prof !271
  br label %76

76:                                               ; preds = %72, %59
  %77 = phi i32 [ %64, %59 ], [ %75, %72 ]
  %78 = load i32, ptr %18, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 7
  br i1 %80, label %86, label %81, !prof !272

81:                                               ; preds = %76
  %82 = add nsw i32 %62, 1
  %83 = icmp eq ptr %66, null
  br i1 %83, label %86, label %84, !prof !273

84:                                               ; preds = %81
  %85 = add nsw i32 %63, 1
  br label %86

86:                                               ; preds = %81, %84, %76
  %87 = phi i32 [ %63, %76 ], [ %85, %84 ], [ %63, %81 ]
  %88 = phi i32 [ %62, %76 ], [ %82, %84 ], [ %82, %81 ]
  %89 = icmp eq ptr %65, %18
  br i1 %89, label %151, label %90, !prof !274

90:                                               ; preds = %86
  %91 = load i32, ptr %65, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 10
  br i1 %93, label %94, label %151, !prof !275

94:                                               ; preds = %90
  %95 = add nsw i32 %61, 1
  %96 = load i32, ptr @optimize_size, align 4, !tbaa !126
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %123, !prof !276

98:                                               ; preds = %94
  %99 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !126
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %109, label %101, !prof !276

101:                                              ; preds = %98
  %102 = load ptr, ptr @cfun, align 8, !tbaa !132
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !138
  %105 = load ptr, ptr %104, align 8, !tbaa !140
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 8
  %107 = load i64, ptr %106, align 8, !tbaa !213
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %101, %98
  %110 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !147
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %111, i64 0, i32 11
  %113 = load i32, ptr %112, align 8, !tbaa !214
  %114 = add i32 %113, 9
  %115 = icmp ult i32 %114, 19
  %116 = sdiv i32 %113, 10
  %117 = select i1 %115, i32 1, i32 %116
  %118 = add nsw i32 %117, %60
  %119 = icmp eq ptr %66, null
  br i1 %119, label %153, label %126, !prof !276

120:                                              ; preds = %101
  %121 = add nsw i32 %60, 1000
  %122 = icmp eq ptr %66, null
  br i1 %122, label %153, label %127, !prof !276

123:                                              ; preds = %94
  %124 = add nsw i32 %60, 1000
  %125 = icmp eq ptr %66, null
  br i1 %125, label %153, label %146, !prof !276

126:                                              ; preds = %109
  br i1 %100, label %136, label %127

127:                                              ; preds = %120, %126
  %128 = phi i32 [ %118, %126 ], [ %121, %120 ]
  %129 = load ptr, ptr @cfun, align 8, !tbaa !132
  %130 = getelementptr inbounds %struct.function, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !138
  %132 = load ptr, ptr %131, align 8, !tbaa !140
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 8
  %134 = load i64, ptr %133, align 8, !tbaa !213
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %127, %126
  %137 = phi i32 [ %128, %127 ], [ %118, %126 ]
  %138 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !147
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 11
  %141 = load i32, ptr %140, align 8, !tbaa !214
  %142 = add i32 %141, 9
  %143 = icmp ult i32 %142, 19
  br i1 %143, label %146, label %144

144:                                              ; preds = %136
  %145 = sdiv i32 %141, 10
  br label %146

146:                                              ; preds = %123, %127, %136, %144
  %147 = phi i32 [ %128, %127 ], [ %137, %144 ], [ %137, %136 ], [ %124, %123 ]
  %148 = phi i32 [ 1000, %127 ], [ %145, %144 ], [ 1, %136 ], [ 1000, %123 ]
  %149 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %148, i64 1
  %150 = add nsw <2 x i32> %149, %67
  br label %167

151:                                              ; preds = %90, %86
  %152 = icmp eq ptr %66, null
  br i1 %152, label %153, label %167, !prof !277

153:                                              ; preds = %120, %109, %123, %151
  %154 = phi i32 [ %60, %151 ], [ %124, %123 ], [ %118, %109 ], [ %121, %120 ]
  %155 = phi i32 [ %61, %151 ], [ %95, %123 ], [ %95, %109 ], [ %95, %120 ]
  %156 = tail call ptr @find_regno_note(ptr noundef nonnull %65, i32 noundef 1, i32 noundef %5) #13
  %157 = icmp eq ptr %156, null
  br i1 %157, label %167, label %158, !prof !273

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !147
  %161 = load i32, ptr %160, align 8
  %162 = load i32, ptr %1, align 8
  %163 = xor i32 %162, %161
  %164 = and i32 %163, 16711680
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  tail call void @remove_note(ptr noundef nonnull %65, ptr noundef nonnull %156) #13
  br label %167

167:                                              ; preds = %146, %158, %151, %153, %166
  %168 = phi i32 [ %154, %166 ], [ %154, %153 ], [ %60, %151 ], [ %154, %158 ], [ %147, %146 ]
  %169 = phi i32 [ %155, %166 ], [ %155, %153 ], [ %61, %151 ], [ %155, %158 ], [ %95, %146 ]
  %170 = phi ptr [ %156, %166 ], [ null, %153 ], [ %66, %151 ], [ null, %158 ], [ %66, %146 ]
  %171 = phi i32 [ %77, %166 ], [ %77, %153 ], [ %77, %151 ], [ 1, %158 ], [ %77, %146 ]
  %172 = phi <2 x i32> [ %67, %166 ], [ %67, %153 ], [ %67, %151 ], [ %67, %158 ], [ %150, %146 ]
  %173 = tail call ptr @next_real_insn(ptr noundef nonnull %65) #13
  %174 = tail call ptr @next_real_insn(ptr noundef nonnull %18) #13
  %175 = icmp eq ptr %173, %174
  br i1 %175, label %176, label %59, !prof !278, !llvm.loop !279

176:                                              ; preds = %167
  %177 = icmp eq i32 %171, 0
  br i1 %177, label %178, label %204, !prof !280

178:                                              ; preds = %55, %176
  %179 = phi i32 [ %168, %176 ], [ 0, %55 ]
  %180 = phi i32 [ %169, %176 ], [ 0, %55 ]
  %181 = phi i32 [ %88, %176 ], [ 0, %55 ]
  %182 = phi i32 [ %87, %176 ], [ 0, %55 ]
  %183 = phi ptr [ %170, %176 ], [ null, %55 ]
  %184 = phi <2 x i32> [ %172, %176 ], [ zeroinitializer, %55 ]
  %185 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %186 = zext nneg i32 %4 to i64
  %187 = getelementptr inbounds %struct.reg_info_t, ptr %185, i64 %186, i32 2
  %188 = load i32, ptr %187, align 4, !tbaa !181
  %189 = icmp sgt i32 %188, -1
  br i1 %189, label %190, label %194, !prof !268

190:                                              ; preds = %178
  %191 = sub nsw i32 %188, %181
  store i32 %191, ptr %187, align 4, !tbaa !181
  %192 = icmp slt i32 %191, 2
  br i1 %192, label %193, label %194, !prof !281

193:                                              ; preds = %190
  store i32 2, ptr %187, align 4, !tbaa !181
  br label %194

194:                                              ; preds = %190, %193, %178
  %195 = getelementptr inbounds %struct.reg_info_t, ptr %185, i64 %186, i32 3
  %196 = load i32, ptr %195, align 4, !tbaa !216
  %197 = sub nsw i32 %196, %180
  store i32 %197, ptr %195, align 4, !tbaa !216
  %198 = getelementptr inbounds %struct.reg_info_t, ptr %185, i64 %186, i32 4
  %199 = load i32, ptr %198, align 4, !tbaa !223
  %200 = sub nsw i32 %199, %179
  store i32 %200, ptr %198, align 4, !tbaa !223
  tail call void @remove_note(ptr noundef nonnull %18, ptr noundef nonnull %45) #13
  %201 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %202 = load ptr, ptr %201, align 8, !tbaa !147
  %203 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %202, ptr %203, align 8, !tbaa !147
  store ptr %45, ptr %201, align 8, !tbaa !147
  br label %204

204:                                              ; preds = %194, %176
  %205 = phi i32 [ %182, %194 ], [ %87, %176 ]
  %206 = phi i32 [ 1, %194 ], [ 0, %176 ]
  %207 = phi ptr [ %183, %194 ], [ %170, %176 ]
  %208 = phi <2 x i32> [ %184, %194 ], [ %172, %176 ]
  %209 = icmp eq ptr %207, null
  br i1 %209, label %210, label %217, !prof !268

210:                                              ; preds = %204
  %211 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 6, i32 noundef %5) #13
  %212 = icmp eq ptr %211, null
  br i1 %212, label %237, label %213, !prof !268

213:                                              ; preds = %210
  %214 = load i32, ptr %211, align 8
  %215 = and i32 %214, -16711681
  %216 = or disjoint i32 %215, 65536
  store i32 %216, ptr %211, align 8
  tail call void @remove_note(ptr noundef %0, ptr noundef nonnull %211) #13
  br label %217

217:                                              ; preds = %204, %213
  %218 = phi ptr [ %211, %213 ], [ %207, %204 ]
  %219 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 1, i32 1, i32 0, i32 0, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !147
  %221 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %220, ptr %221, align 8, !tbaa !147
  store ptr %218, ptr %219, align 8, !tbaa !147
  %222 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %223 = zext nneg i32 %5 to i64
  %224 = getelementptr inbounds %struct.reg_info_t, ptr %222, i64 %223, i32 2
  %225 = load i32, ptr %224, align 4, !tbaa !181
  %226 = icmp sgt i32 %225, -1
  br i1 %226, label %227, label %229

227:                                              ; preds = %217
  %228 = add nsw i32 %225, %205
  store i32 %228, ptr %224, align 4, !tbaa !181
  br label %229

229:                                              ; preds = %227, %217
  %230 = getelementptr inbounds %struct.reg_info_t, ptr %222, i64 %223, i32 3
  %231 = load <2 x i32>, ptr %230, align 4, !tbaa !126
  %232 = add nsw <2 x i32> %231, %208
  store <2 x i32> %232, ptr %230, align 4, !tbaa !126
  br label %237

233:                                              ; preds = %17, %44, %47
  %234 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %235 = load ptr, ptr %234, align 8, !tbaa !147
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %17, !prof !282, !llvm.loop !283

237:                                              ; preds = %27, %30, %39, %23, %233, %229, %210, %13, %3
  %238 = phi i32 [ 0, %3 ], [ 0, %13 ], [ %206, %210 ], [ %206, %229 ], [ 0, %233 ], [ 0, %23 ], [ 0, %39 ], [ 0, %30 ], [ 0, %27 ]
  ret i32 %238
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !284 !PGOFuncName !285 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !147
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @optimize_reg_copy_2(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !286 !PGOFuncName !287 {
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !147
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  %9 = icmp eq ptr %8, null
  br i1 %9, label %139, label %10, !prof !288

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
  br i1 %18, label %19, label %135, !prof !289

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !147
  %22 = icmp eq ptr %21, %6
  br i1 %22, label %23, label %139, !prof !290

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !147
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 23
  br i1 %28, label %32, label %29, !prof !291

29:                                               ; preds = %23
  %30 = tail call ptr @single_set_2(ptr noundef nonnull %14, ptr noundef nonnull %25) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %120, label %32, !prof !153

32:                                               ; preds = %23, %29
  %33 = phi ptr [ %30, %29 ], [ %25, %23 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !147
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %37, label %120, !prof !292

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !147
  %40 = icmp eq ptr %39, %2
  br i1 %40, label %41, label %120, !prof !272

41:                                               ; preds = %37
  %42 = tail call ptr @find_reg_note(ptr noundef nonnull %14, i32 noundef 1, ptr noundef %1) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %120, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !147
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
  %57 = load ptr, ptr %56, align 8, !tbaa !147
  %58 = tail call i32 @reg_mentioned_p(ptr noundef %1, ptr noundef %57) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %56, align 8, !tbaa !147
  %62 = tail call ptr @replace_rtx(ptr noundef %61, ptr noundef %1, ptr noundef %2) #13
  store ptr %62, ptr %56, align 8, !tbaa !147
  %63 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %50) #13
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, ptr %50, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 10
  br i1 %67, label %68, label %104

68:                                               ; preds = %64
  %69 = load i32, ptr @optimize_size, align 4, !tbaa !126
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !126
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr @cfun, align 8, !tbaa !132
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !138
  %78 = load ptr, ptr %77, align 8, !tbaa !140
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 8
  %80 = load i64, ptr %79, align 8, !tbaa !213
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %74, %71
  %83 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !147
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 11
  %86 = load i32, ptr %85, align 8, !tbaa !214
  %87 = add i32 %86, 9
  %88 = icmp ult i32 %87, 19
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = sdiv i32 %86, 10
  br label %91

91:                                               ; preds = %89, %82, %68, %74
  %92 = phi i32 [ 1000, %74 ], [ 1000, %68 ], [ %90, %89 ], [ 1, %82 ]
  %93 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %94 = getelementptr inbounds %struct.reg_info_t, ptr %93, i64 %48, i32 3
  %95 = load i32, ptr %94, align 4, !tbaa !216
  %96 = add nsw i32 %95, -1
  store i32 %96, ptr %94, align 4, !tbaa !216
  %97 = getelementptr inbounds %struct.reg_info_t, ptr %93, i64 %12, i32 3
  %98 = getelementptr inbounds %struct.reg_info_t, ptr %93, i64 %48, i32 4
  %99 = load i32, ptr %98, align 4, !tbaa !223
  %100 = sub nsw i32 %99, %92
  store i32 %100, ptr %98, align 4, !tbaa !223
  %101 = load <2 x i32>, ptr %97, align 4, !tbaa !126
  %102 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %92, i64 1
  %103 = add nsw <2 x i32> %101, %102
  store <2 x i32> %103, ptr %97, align 4, !tbaa !126
  br label %104

104:                                              ; preds = %49, %91, %64
  %105 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 2
  %106 = load ptr, ptr %105, align 8, !tbaa !147
  %107 = load ptr, ptr %45, align 8, !tbaa !147
  %108 = icmp eq ptr %106, %107
  br i1 %108, label %109, label %49, !llvm.loop !293

109:                                              ; preds = %104, %44
  %110 = tail call ptr @find_reg_note(ptr noundef nonnull %14, i32 noundef 1, ptr noundef %1) #13
  tail call void @remove_note(ptr noundef nonnull %14, ptr noundef %110) #13
  %111 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %112 = getelementptr inbounds %struct.reg_info_t, ptr %111, i64 %48, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !238
  %114 = add nsw i32 %113, -1
  store i32 %114, ptr %112, align 4, !tbaa !238
  %115 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 1, ptr noundef %2) #13
  tail call void @remove_note(ptr noundef %0, ptr noundef %115) #13
  %116 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %117 = getelementptr inbounds %struct.reg_info_t, ptr %116, i64 %12, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !238
  %119 = add nsw i32 %118, -1
  store i32 %119, ptr %117, align 4, !tbaa !238
  br label %139

120:                                              ; preds = %41, %37, %32, %29
  %121 = tail call i32 @reg_set_p(ptr noundef %2, ptr noundef nonnull %14) #13
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %139, !prof !294

123:                                              ; preds = %120
  %124 = tail call ptr @find_reg_note(ptr noundef nonnull %14, i32 noundef 1, ptr noundef %1) #13
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %139, !prof !295

126:                                              ; preds = %123
  %127 = load i32, ptr %14, align 8
  %128 = and i32 %127, 65535
  %129 = icmp eq i32 %128, 10
  br i1 %129, label %130, label %135, !prof !296

130:                                              ; preds = %126
  %131 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %132 = getelementptr inbounds %struct.reg_info_t, ptr %131, i64 %12, i32 3
  %133 = load i32, ptr %132, align 4, !tbaa !216
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135, !prof !297

135:                                              ; preds = %13, %126, %130
  %136 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %137 = load ptr, ptr %136, align 8, !tbaa !147
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %13, !prof !298, !llvm.loop !299

139:                                              ; preds = %120, %123, %130, %19, %135, %3, %109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_SETS(i32 noundef %0) unnamed_addr #7 !prof !300 !PGOFuncName !301 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !132
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !221
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
define internal fastcc i32 @find_matches(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !302 !PGOFuncName !303 {
  %3 = alloca [30 x i32], align 16
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #15
  tail call void @extract_insn(ptr noundef %0) #13
  %5 = tail call i32 @constrain_operands(i32 noundef 0) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %138, label %7, !prof !304

7:                                                ; preds = %2
  %8 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !226
  %9 = icmp sgt i8 %8, 0
  br i1 %9, label %10, label %138, !prof !305

10:                                               ; preds = %7
  %11 = zext nneg i8 %8 to i64
  br label %13

12:                                               ; preds = %13
  br i1 %9, label %19, label %138, !prof !153

13:                                               ; preds = %10, %13
  %14 = phi i64 [ %11, %10 ], [ %15, %13 ]
  %15 = add nsw i64 %14, -1
  %16 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 2, i64 %15
  store i32 -1, ptr %16, align 4, !tbaa !126
  %17 = getelementptr inbounds [30 x i32], ptr %1, i64 0, i64 %15
  store i32 -1, ptr %17, align 4, !tbaa !126
  %18 = icmp ugt i64 %14, 1
  br i1 %18, label %13, label %12, !prof !306, !llvm.loop !307

19:                                               ; preds = %12, %134
  %20 = phi i64 [ %40, %134 ], [ 0, %12 ]
  %21 = phi i32 [ %60, %134 ], [ 0, %12 ]
  %22 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !132
  %24 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %20
  store i32 0, ptr %24, align 4, !tbaa !126
  %25 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 1, i64 %20
  store i32 0, ptr %25, align 4, !tbaa !126
  %26 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 3, i64 %20
  store i32 0, ptr %26, align 4, !tbaa !126
  %27 = load i8, ptr %23, align 1, !tbaa !147
  switch i8 %27, label %31 [
    i8 61, label %29
    i8 43, label %28
  ], !prof !308

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %19, %28
  %30 = phi i32 [ 2, %28 ], [ 1, %19 ]
  store i32 %30, ptr %25, align 4, !tbaa !126
  br label %31

31:                                               ; preds = %29, %19
  %32 = load i32, ptr @which_alternative, align 4
  %33 = load i8, ptr %23, align 1, !tbaa !147
  %34 = icmp ne i8 %33, 0
  %35 = icmp sgt i32 %32, 0
  %36 = select i1 %34, i1 %35, i1 false, !prof !309
  br i1 %36, label %41, label %37, !prof !310

37:                                               ; preds = %41, %31
  %38 = phi ptr [ %23, %31 ], [ %48, %41 ]
  %39 = phi i8 [ %33, %31 ], [ %49, %41 ]
  %40 = add nuw nsw i64 %20, 1
  br label %57

41:                                               ; preds = %31, %41
  %42 = phi i8 [ %49, %41 ], [ %33, %31 ]
  %43 = phi i32 [ %47, %41 ], [ 0, %31 ]
  %44 = phi ptr [ %48, %41 ], [ %23, %31 ]
  %45 = icmp eq i8 %42, 44
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %43, %46
  %48 = getelementptr inbounds i8, ptr %44, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !147
  %50 = icmp ne i8 %49, 0
  %51 = icmp slt i32 %47, %32
  %52 = select i1 %50, i1 %51, i1 false, !prof !309
  br i1 %52, label %41, label %37, !prof !311, !llvm.loop !312

53:                                               ; preds = %131, %88
  %54 = phi ptr [ %70, %88 ], [ %133, %131 ]
  %55 = phi i32 [ %89, %88 ], [ %60, %131 ]
  %56 = load i8, ptr %54, align 1, !tbaa !147
  br label %57

57:                                               ; preds = %37, %53
  %58 = phi i8 [ %56, %53 ], [ %39, %37 ]
  %59 = phi ptr [ %54, %53 ], [ %38, %37 ]
  %60 = phi i32 [ %55, %53 ], [ %21, %37 ]
  switch i8 %58, label %131 [
    i8 44, label %134
    i8 0, label %134
    i8 90, label %90
    i8 89, label %90
    i8 38, label %61
    i8 37, label %62
    i8 48, label %67
    i8 49, label %67
    i8 50, label %67
    i8 51, label %67
    i8 52, label %67
    i8 53, label %67
    i8 54, label %67
    i8 55, label %67
    i8 56, label %67
    i8 57, label %67
    i8 97, label %90
    i8 98, label %90
    i8 99, label %90
    i8 100, label %90
    i8 101, label %90
    i8 102, label %90
    i8 104, label %90
    i8 106, label %90
    i8 107, label %90
    i8 108, label %90
    i8 112, label %90
    i8 113, label %90
    i8 116, label %90
    i8 117, label %90
    i8 118, label %90
    i8 119, label %90
    i8 120, label %90
    i8 121, label %90
    i8 122, label %90
    i8 65, label %90
    i8 66, label %90
    i8 67, label %90
    i8 68, label %90
    i8 87, label %90
  ], !prof !313

61:                                               ; preds = %57
  store i32 1, ptr %26, align 4, !tbaa !126
  br label %131

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 2, i64 %20
  %64 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 2, i64 %40
  %65 = trunc i64 %40 to i32
  %66 = trunc i64 %20 to i32
  store i32 %65, ptr %63, align 4, !tbaa !126
  store i32 %66, ptr %64, align 4, !tbaa !126
  br label %131

67:                                               ; preds = %57, %57, %57, %57, %57, %57, %57, %57, %57, %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %68 = call i64 @strtoul(ptr noundef nonnull %59, ptr noundef nonnull %4, i32 noundef 10) #14
  %69 = trunc i64 %68 to i32
  %70 = load ptr, ptr %4, align 8, !tbaa !132
  %71 = shl i64 %68, 32
  %72 = ashr exact i64 %71, 32
  %73 = icmp sgt i64 %20, %72
  br i1 %73, label %74, label %80, !prof !314

74:                                               ; preds = %67
  %75 = shl i64 %68, 32
  %76 = ashr exact i64 %75, 32
  %77 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !126
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88, !prof !315, !llvm.loop !316

80:                                               ; preds = %74, %67
  %81 = getelementptr inbounds [30 x i32], ptr %1, i64 0, i64 %20
  %82 = getelementptr inbounds %struct.match, ptr %1, i64 0, i32 2, i64 %20
  store i32 %69, ptr %81, align 4, !tbaa !126
  %83 = load i32, ptr %82, align 4, !tbaa !126
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %88, !prof !317

85:                                               ; preds = %80
  %86 = zext nneg i32 %83 to i64
  %87 = getelementptr inbounds [30 x i32], ptr %1, i64 0, i64 %86
  store i32 %69, ptr %87, align 4, !tbaa !126
  br label %88

88:                                               ; preds = %80, %85, %74
  %89 = phi i32 [ %60, %74 ], [ 1, %85 ], [ 1, %80 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %53

90:                                               ; preds = %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57
  %91 = tail call i32 @lookup_constraint(ptr noundef nonnull %59) #13
  %92 = tail call i32 @regclass_for_constraint(i32 noundef %91) #13
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %130, label %94, !prof !318

94:                                               ; preds = %90
  %95 = tail call i32 @lookup_constraint(ptr noundef nonnull %59) #13
  %96 = tail call i32 @regclass_for_constraint(i32 noundef %95) #13
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %130, label %98, !prof !319

98:                                               ; preds = %94
  %99 = tail call i32 @lookup_constraint(ptr noundef nonnull %59) #13
  %100 = tail call i32 @regclass_for_constraint(i32 noundef %99) #13
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %130, label %102, !prof !320

102:                                              ; preds = %98
  %103 = tail call i32 @lookup_constraint(ptr noundef nonnull %59) #13
  %104 = tail call i32 @regclass_for_constraint(i32 noundef %103) #13
  %105 = icmp eq i32 %104, 4
  br i1 %105, label %130, label %106, !prof !321

106:                                              ; preds = %102
  %107 = tail call i32 @lookup_constraint(ptr noundef nonnull %59) #13
  %108 = tail call i32 @regclass_for_constraint(i32 noundef %107) #13
  %109 = icmp eq i32 %108, 7
  br i1 %109, label %130, label %110, !prof !322

110:                                              ; preds = %106
  %111 = tail call i32 @lookup_constraint(ptr noundef nonnull %59) #13
  %112 = tail call i32 @regclass_for_constraint(i32 noundef %111) #13
  %113 = icmp eq i32 %112, 5
  br i1 %113, label %130, label %114, !prof !323

114:                                              ; preds = %110
  %115 = tail call i32 @lookup_constraint(ptr noundef nonnull %59) #13
  %116 = tail call i32 @regclass_for_constraint(i32 noundef %115) #13
  %117 = icmp eq i32 %116, 6
  br i1 %117, label %130, label %118, !prof !324

118:                                              ; preds = %114
  %119 = tail call i32 @lookup_constraint(ptr noundef nonnull %59) #13
  %120 = tail call i32 @regclass_for_constraint(i32 noundef %119) #13
  %121 = icmp eq i32 %120, 17
  br i1 %121, label %130, label %122, !prof !325

122:                                              ; preds = %118
  %123 = tail call i32 @lookup_constraint(ptr noundef nonnull %59) #13
  %124 = tail call i32 @regclass_for_constraint(i32 noundef %123) #13
  %125 = icmp eq i32 %124, 14
  br i1 %125, label %130, label %126, !prof !325

126:                                              ; preds = %122
  %127 = tail call i32 @lookup_constraint(ptr noundef nonnull %59) #13
  %128 = tail call i32 @regclass_for_constraint(i32 noundef %127) #13
  %129 = icmp eq i32 %128, 15
  br i1 %129, label %130, label %131, !prof !325

130:                                              ; preds = %126, %122, %118, %114, %110, %106, %102, %98, %94, %90
  store i32 1, ptr %24, align 4, !tbaa !126
  br label %131

131:                                              ; preds = %57, %126, %130, %62, %61
  %132 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %58) #14
  %133 = getelementptr inbounds i8, ptr %59, i64 %132
  br label %53, !llvm.loop !316

134:                                              ; preds = %57, %57
  %135 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !226
  %136 = sext i8 %135 to i64
  %137 = icmp slt i64 %40, %136
  br i1 %137, label %19, label %138, !prof !306, !llvm.loop !326

138:                                              ; preds = %134, %7, %12, %2
  %139 = phi i32 [ 0, %2 ], [ 0, %12 ], [ 0, %7 ], [ %60, %134 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #15
  ret i32 %139
}

; Function Attrs: optsize
declare i32 @operands_match_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @count_occurrences(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @fixup_match_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 !prof !327 !PGOFuncName !328 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !147
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #14
  %9 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %8) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %178

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !147
  %14 = icmp eq ptr %13, null
  br i1 %14, label %178, label %15

15:                                               ; preds = %11, %170
  %16 = phi ptr [ %176, %170 ], [ %13, %11 ]
  %17 = phi ptr [ %174, %170 ], [ null, %11 ]
  %18 = phi i32 [ %173, %170 ], [ 0, %11 ]
  %19 = phi i32 [ %172, %170 ], [ 0, %11 ]
  %20 = phi i32 [ %171, %170 ], [ 0, %11 ]
  %21 = load i32, ptr %16, align 8
  %22 = and i32 %21, 65535
  %23 = add nsw i32 %22, -7
  %24 = icmp ult i32 %23, 4
  br i1 %24, label %25, label %170

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !147
  %28 = icmp eq ptr %27, %7
  br i1 %28, label %29, label %178

29:                                               ; preds = %25
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %31 = tail call ptr @find_regno_note(ptr noundef nonnull %16, i32 noundef 1, i32 noundef %30) #13
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr %17, ptr %16
  %34 = icmp eq ptr %33, null
  %35 = load i32, ptr %16, align 8
  %36 = and i32 %35, 65535
  %37 = icmp ne i32 %36, 7
  %38 = and i1 %34, %37
  %39 = zext i1 %38 to i32
  %40 = add nsw i32 %18, %39
  %41 = add nsw i32 %36, -7
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %112

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !147
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 23
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = tail call ptr @single_set_2(ptr noundef nonnull %16, ptr noundef nonnull %45) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %112, label %52

52:                                               ; preds = %43, %49
  %53 = phi ptr [ %50, %49 ], [ %45, %43 ]
  %54 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !147
  %56 = icmp eq ptr %55, %1
  br i1 %56, label %57, label %112

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !147
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 49
  br i1 %62, label %63, label %112

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !147
  %66 = icmp eq ptr %65, %2
  br i1 %66, label %67, label %112

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !147
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 30
  br i1 %72, label %73, label %112

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !147
  %76 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !147
  %78 = sub nsw i64 %75, %77
  %79 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %78) #13
  %80 = tail call ptr @gen_add3_insn(ptr noundef %1, ptr noundef %1, ptr noundef %79) #13
  %81 = icmp eq ptr %80, null
  br i1 %81, label %112, label %82

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %84 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %83, ptr noundef nonnull %80, i8 noundef zeroext 0) #13
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %112, label %86

86:                                               ; preds = %82
  br i1 %34, label %106, label %87

87:                                               ; preds = %86
  %88 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %89 = tail call ptr @remove_death(i32 noundef %88, ptr noundef nonnull %33) #13
  %90 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %91 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.reg_info_t, ptr %90, i64 %92, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !181
  %95 = add nsw i32 %94, %40
  store i32 %95, ptr %93, align 4, !tbaa !181
  %96 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.reg_info_t, ptr %90, i64 %97, i32 3
  %99 = load i32, ptr %98, align 4, !tbaa !216
  %100 = add nsw i32 %99, %20
  store i32 %100, ptr %98, align 4, !tbaa !216
  %101 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.reg_info_t, ptr %90, i64 %102, i32 4
  %104 = load i32, ptr %103, align 4, !tbaa !223
  %105 = add nsw i32 %104, %19
  store i32 %105, ptr %103, align 4, !tbaa !223
  br label %106

106:                                              ; preds = %87, %86
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !132
  %108 = icmp eq ptr %107, null
  br i1 %108, label %178, label %109

109:                                              ; preds = %106
  %110 = load i32, ptr %5, align 8, !tbaa !147
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %107, ptr noundef nonnull @.str.5, i32 noundef %110) #14
  br label %178

112:                                              ; preds = %29, %82, %73, %67, %63, %57, %52, %49
  %113 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !147
  %115 = tail call i32 @reg_set_p(ptr noundef %1, ptr noundef %114) #13
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %178

117:                                              ; preds = %112
  %118 = load i32, ptr %16, align 8
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 10
  br i1 %120, label %121, label %166

121:                                              ; preds = %117
  br i1 %34, label %122, label %148

122:                                              ; preds = %121
  %123 = add nsw i32 %20, 1
  %124 = load i32, ptr @optimize_size, align 4, !tbaa !126
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %122
  %127 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr @cfun, align 8, !tbaa !132
  %131 = getelementptr inbounds %struct.function, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !138
  %133 = load ptr, ptr %132, align 8, !tbaa !140
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %133, i64 0, i32 8
  %135 = load i64, ptr %134, align 8, !tbaa !213
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %129, %126
  %138 = load ptr, ptr %26, align 8, !tbaa !147
  %139 = getelementptr inbounds %struct.basic_block_def, ptr %138, i64 0, i32 11
  %140 = load i32, ptr %139, align 8, !tbaa !214
  %141 = add i32 %140, 9
  %142 = icmp ult i32 %141, 19
  br i1 %142, label %145, label %143

143:                                              ; preds = %137
  %144 = sdiv i32 %140, 10
  br label %145

145:                                              ; preds = %143, %137, %122, %129
  %146 = phi i32 [ 1000, %129 ], [ 1000, %122 ], [ %144, %143 ], [ 1, %137 ]
  %147 = add nsw i32 %146, %19
  br label %148

148:                                              ; preds = %145, %121
  %149 = phi i32 [ %20, %121 ], [ %123, %145 ]
  %150 = phi i32 [ %19, %121 ], [ %147, %145 ]
  %151 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %152 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #14
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.reg_info_t, ptr %151, i64 %153, i32 3
  %155 = load i32, ptr %154, align 4, !tbaa !216
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %178, label %157

157:                                              ; preds = %148
  %158 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #14
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !147
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %157
  %164 = tail call i32 @find_reg_fusage(ptr noundef nonnull %16, i32 noundef 25, ptr noundef %1) #13
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %170, label %178

166:                                              ; preds = %117
  %167 = load ptr, ptr %113, align 8, !tbaa !147
  %168 = tail call i32 @reg_set_p(ptr noundef %2, ptr noundef %167) #13
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %163, %166, %15
  %171 = phi i32 [ %20, %15 ], [ %149, %163 ], [ %20, %166 ]
  %172 = phi i32 [ %19, %15 ], [ %150, %163 ], [ %19, %166 ]
  %173 = phi i32 [ %18, %15 ], [ %40, %163 ], [ %40, %166 ]
  %174 = phi ptr [ %17, %15 ], [ %33, %163 ], [ %33, %166 ]
  %175 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !147
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %15, !llvm.loop !329

178:                                              ; preds = %170, %25, %112, %148, %163, %157, %166, %11, %109, %106, %4
  %179 = phi i32 [ 0, %4 ], [ 1, %106 ], [ 1, %109 ], [ 0, %11 ], [ 0, %166 ], [ 0, %157 ], [ 0, %163 ], [ 0, %148 ], [ 0, %112 ], [ 0, %25 ], [ 0, %170 ]
  ret i32 %179
}

; Function Attrs: optsize
declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @regclass_compatible_p(i32 noundef %0, i32 noundef %1) unnamed_addr #1 !prof !330 !PGOFuncName !331 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %22, label %4, !prof !332

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
define internal fastcc zeroext i8 @reg_is_remote_constant_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !333 !PGOFuncName !334 {
  %3 = load ptr, ptr @reg_set_in_bb, align 8, !tbaa !132
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %82, !prof !335

5:                                                ; preds = %2
  %6 = tail call i32 @max_reg_num() #13
  store i32 %6, ptr @max_reg_computed, align 4, !tbaa !126
  %7 = sext i32 %6 to i64
  %8 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 8) #13
  store ptr %8, ptr @reg_set_in_bb, align 8, !tbaa !132
  %9 = load ptr, ptr @cfun, align 8, !tbaa !132
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !138
  %12 = load ptr, ptr %11, align 8, !tbaa !140
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !142
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !145
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %82, label %18, !prof !336

18:                                               ; preds = %5, %73
  %19 = phi ptr [ %74, %73 ], [ %9, %5 ]
  %20 = phi ptr [ %76, %73 ], [ %14, %5 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !147
  %23 = load ptr, ptr %22, align 8, !tbaa !147
  %24 = icmp eq ptr %23, null
  br i1 %24, label %73, label %25, !prof !336

25:                                               ; preds = %18, %67
  %26 = phi ptr [ %69, %67 ], [ %23, %18 ]
  %27 = load ptr, ptr %21, align 8, !tbaa !147
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !148
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !147
  %32 = icmp eq ptr %26, %31
  br i1 %32, label %71, label %33, !prof !337

33:                                               ; preds = %25
  %34 = load i32, ptr %26, align 8
  %35 = and i32 %34, 65535
  %36 = add nsw i32 %35, -7
  %37 = icmp ult i32 %36, 4
  br i1 %37, label %38, label %67, !prof !338

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !147
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 23
  br i1 %43, label %47, label %44, !prof !339

44:                                               ; preds = %38
  %45 = tail call ptr @single_set_2(ptr noundef nonnull %26, ptr noundef nonnull %40) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %67, label %47, !prof !153

47:                                               ; preds = %38, %44
  %48 = phi ptr [ %45, %44 ], [ %40, %38 ]
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !147
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 37
  br i1 %53, label %54, label %67, !prof !340

54:                                               ; preds = %47
  %55 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %50) #14
  %56 = tail call fastcc i32 @REG_N_SETS(i32 noundef %55) #14
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %67, !prof !341

58:                                               ; preds = %54
  %59 = tail call ptr @find_reg_note(ptr noundef nonnull %26, i32 noundef 4, ptr noundef null) #13
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61, !prof !342

61:                                               ; preds = %58
  %62 = load ptr, ptr @reg_set_in_bb, align 8, !tbaa !132
  %63 = load ptr, ptr %49, align 8, !tbaa !147
  %64 = tail call fastcc i32 @rhs_regno(ptr noundef %63) #14
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %62, i64 %65
  store ptr %20, ptr %66, align 8, !tbaa !132
  br label %67

67:                                               ; preds = %33, %44, %47, %54, %58, %61
  %68 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %69 = load ptr, ptr %68, align 8, !tbaa !147
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %25, !prof !343, !llvm.loop !344

71:                                               ; preds = %25, %67
  %72 = load ptr, ptr @cfun, align 8, !tbaa !132
  br label %73

73:                                               ; preds = %71, %18
  %74 = phi ptr [ %72, %71 ], [ %19, %18 ]
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !142
  %77 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !138
  %79 = getelementptr inbounds %struct.control_flow_graph, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !145
  %81 = icmp eq ptr %76, %80
  br i1 %81, label %82, label %18, !prof !345, !llvm.loop !346

82:                                               ; preds = %73, %5, %2
  %83 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #14
  %84 = load i32, ptr @max_reg_computed, align 4, !tbaa !126
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %87, label %86, !prof !347

86:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 721, ptr noundef nonnull @.str.7) #13
  br label %87

87:                                               ; preds = %82, %86
  %88 = load ptr, ptr @reg_set_in_bb, align 8, !tbaa !132
  %89 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #14
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %88, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !132
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94, !prof !348

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !147
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
define internal fastcc void @copy_src_to_dest(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !349 !PGOFuncName !350 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %103, !prof !351

7:                                                ; preds = %3
  %8 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #14
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.reg_info_t, ptr %8, i64 %10, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !181
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %103, !prof !351

14:                                               ; preds = %7
  %15 = load i32, ptr %2, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %103, !prof !351

18:                                               ; preds = %14
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #14
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.reg_info_t, ptr %8, i64 %20, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !181
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %103, !prof !351

24:                                               ; preds = %18
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 65535
  %27 = add nsw i32 %26, -7
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %29, label %103, !prof !352

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !147
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 23
  br i1 %34, label %38, label %35, !prof !353

35:                                               ; preds = %29
  %36 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %31) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %103, label %38, !prof !354

38:                                               ; preds = %29, %35
  %39 = phi ptr [ %36, %35 ], [ %31, %29 ]
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !147
  %42 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %2, ptr noundef %41) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %103, !prof !355

44:                                               ; preds = %38
  %45 = load i32, ptr %1, align 8
  %46 = load i32, ptr %2, align 8
  %47 = xor i32 %46, %45
  %48 = and i32 %47, 16711680
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %103, !prof !199

50:                                               ; preds = %44
  %51 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !356
  tail call void @start_sequence() #13
  %52 = tail call ptr @emit_move_insn(ptr noundef nonnull %2, ptr noundef nonnull %1) #13
  %53 = tail call ptr @get_insns() #13
  tail call void @end_sequence() #13
  %54 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !356
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %59, !prof !199

56:                                               ; preds = %50
  %57 = tail call i32 @validate_replace_rtx(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %0) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60, !prof !365

59:                                               ; preds = %56, %50
  store i32 %51, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !356
  br label %103

60:                                               ; preds = %56
  %61 = tail call ptr @emit_insn_before(ptr noundef %53, ptr noundef nonnull %0) #13
  %62 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !147
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 1, i32 1, i32 0, i32 0, i64 1
  %65 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !147
  %67 = icmp eq ptr %66, null
  br i1 %67, label %81, label %68, !prof !366

68:                                               ; preds = %60, %68
  %69 = phi ptr [ %74, %68 ], [ %66, %60 ]
  %70 = phi ptr [ %79, %68 ], [ %65, %60 ]
  %71 = phi ptr [ %78, %68 ], [ %64, %60 ]
  %72 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %73 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !147
  %75 = load ptr, ptr %72, align 8, !tbaa !147
  %76 = icmp eq ptr %75, %1
  %77 = select i1 %76, ptr %71, ptr %70, !prof !367
  %78 = select i1 %76, ptr %73, ptr %71, !prof !367
  %79 = select i1 %76, ptr %70, ptr %73, !prof !367
  store ptr %69, ptr %77, align 8, !tbaa !132
  %80 = icmp eq ptr %74, null
  br i1 %80, label %81, label %68, !prof !368, !llvm.loop !369

81:                                               ; preds = %68, %60
  %82 = phi ptr [ %64, %60 ], [ %78, %68 ]
  %83 = phi ptr [ %65, %60 ], [ %79, %68 ]
  store ptr null, ptr %82, align 8, !tbaa !132
  store ptr null, ptr %83, align 8, !tbaa !132
  %84 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #14
  %85 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !132
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %85, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !221
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %87, align 4, !tbaa !221
  %90 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %91 = getelementptr inbounds %struct.reg_info_t, ptr %90, i64 %86, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !181
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %91, align 4, !tbaa !181
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #14
  %95 = tail call ptr @find_reg_note(ptr noundef %63, i32 noundef 1, ptr noundef nonnull %1) #13
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %103, !prof !365

97:                                               ; preds = %81
  %98 = load ptr, ptr @reg_info_p, align 8, !tbaa !132
  %99 = sext i32 %94 to i64
  %100 = getelementptr inbounds %struct.reg_info_t, ptr %98, i64 %99, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !181
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %100, align 4, !tbaa !181
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
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #9 !prof !370 !PGOFuncName !371 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1, !prof !372
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!123}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!36 = !{ptr @regmove_optimize, ptr @max_reg_num, i64 6652}
!37 = !{ptr @regmove_optimize, ptr @df_note_add_problem, i64 6652}
!38 = !{ptr @regmove_optimize, ptr @df_analyze, i64 6652}
!39 = !{ptr @regmove_optimize, ptr @ira_set_pseudo_classes, i64 1}
!40 = !{ptr @regmove_optimize, ptr @regstat_init_n_sets_and_refs, i64 6652}
!41 = !{ptr @regmove_optimize, ptr @regstat_compute_ri, i64 6652}
!42 = !{ptr @regmove_optimize, ptr @xmalloc, i64 6652}
!43 = !{ptr @regmove_optimize, ptr @regmove_forward_pass, i64 6652}
!44 = !{ptr @regmove_optimize, ptr @regmove_backward_pass, i64 6652}
!45 = !{ptr @regmove_optimize, ptr @free, i64 8746}
!46 = !{ptr @regmove_optimize, ptr @regstat_free_n_sets_and_refs, i64 6652}
!47 = !{ptr @regmove_optimize, ptr @regstat_free_ri, i64 6652}
!48 = !{ptr @regmove_optimize, ptr @free_reg_info, i64 1}
!49 = !{ptr @regmove_forward_pass, ptr @fwrite, i64 1}
!50 = !{ptr @regmove_forward_pass, ptr @single_set_2, i64 1}
!51 = !{ptr @regmove_forward_pass, ptr @optimize_reg_copy_3, i64 4246}
!52 = !{ptr @regmove_forward_pass, ptr @find_reg_note, i64 91197}
!53 = !{ptr @regmove_forward_pass, ptr @optimize_reg_copy_1, i64 14388}
!54 = !{ptr @regmove_forward_pass, ptr @rhs_regno, i64 259065}
!55 = !{ptr @regmove_forward_pass, ptr @optimize_reg_copy_2, i64 8134}
!56 = !{ptr @regmove_backward_pass, ptr @fwrite, i64 1}
!57 = !{ptr @regmove_backward_pass, ptr @find_matches, i64 998806}
!58 = !{ptr @regmove_backward_pass, ptr @rhs_regno, i64 100619}
!59 = !{ptr @regmove_backward_pass, ptr @operands_match_p, i64 57512}
!60 = !{ptr @regmove_backward_pass, ptr @single_set_2, i64 18}
!61 = !{ptr @regmove_backward_pass, ptr @reg_set_p, i64 18313}
!62 = !{ptr @regmove_backward_pass, ptr @count_occurrences, i64 1}
!63 = !{ptr @regmove_backward_pass, ptr @reg_preferred_class, i64 36474}
!64 = !{ptr @regmove_backward_pass, ptr @find_reg_note, i64 28937}
!65 = !{ptr @regmove_backward_pass, ptr @regclass_compatible_p, i64 13839}
!66 = !{ptr @regmove_backward_pass, ptr @reg_overlap_mentioned_p, i64 31304}
!67 = !{ptr @regmove_backward_pass, ptr @reg_is_remote_constant_p, i64 13830}
!68 = !{ptr @regmove_backward_pass, ptr @fprintf, i64 2}
!69 = !{ptr @regmove_backward_pass, ptr @validate_change, i64 10702}
!70 = !{ptr @regmove_backward_pass, ptr @validate_replace_rtx, i64 10701}
!71 = !{ptr @regmove_backward_pass, ptr @reg_mentioned_p, i64 6778}
!72 = !{ptr @regmove_backward_pass, ptr @gen_rtx_fmt_e_stat, i64 1}
!73 = !{ptr @regmove_backward_pass, ptr @validate_replace_rtx_group, i64 1}
!74 = !{ptr @regmove_backward_pass, ptr @remove_note, i64 10770}
!75 = !{ptr @regmove_backward_pass, ptr @num_changes_pending, i64 2933}
!76 = !{ptr @regmove_backward_pass, ptr @cancel_changes, i64 1}
!77 = !{ptr @regmove_backward_pass, ptr @copy_src_to_dest, i64 252}
!78 = !{ptr @optimize_reg_copy_3, ptr @rhs_regno, i64 8402}
!79 = !{ptr @optimize_reg_copy_3, ptr @find_reg_note, i64 4229}
!80 = !{ptr @optimize_reg_copy_3, ptr @REG_N_SETS, i64 2557}
!81 = !{ptr @optimize_reg_copy_3, ptr @reg_set_p, i64 4940}
!82 = !{ptr @optimize_reg_copy_3, ptr @single_set_2, i64 11}
!83 = !{ptr @optimize_reg_copy_3, ptr @validate_change, i64 24}
!84 = !{ptr @optimize_reg_copy_3, ptr @gen_lowpart_SUBREG, i64 44}
!85 = !{ptr @optimize_reg_copy_3, ptr @validate_replace_rtx_group, i64 68}
!86 = !{ptr @optimize_reg_copy_3, ptr @apply_change_group, i64 24}
!87 = !{ptr @optimize_reg_copy_3, ptr @remove_note, i64 1}
!88 = !{ptr @optimize_reg_copy_1, ptr @rhs_regno, i64 28466}
!89 = !{ptr @optimize_reg_copy_1, ptr @reg_set_p, i64 15988}
!90 = !{ptr @optimize_reg_copy_1, ptr @reg_overlap_mentioned_p, i64 216}
!91 = !{ptr @optimize_reg_copy_1, ptr @find_regno_note, i64 8228}
!92 = !{ptr @optimize_reg_copy_1, ptr @next_real_insn, i64 696}
!93 = !{ptr @optimize_reg_copy_1, ptr @validate_replace_rtx, i64 170}
!94 = !{ptr @optimize_reg_copy_1, ptr @remove_note, i64 133}
!95 = !{ptr @optimize_reg_copy_2, ptr @rhs_regno, i64 16036}
!96 = !{ptr @optimize_reg_copy_2, ptr @single_set_2, i64 1}
!97 = !{ptr @optimize_reg_copy_2, ptr @find_reg_note, i64 4681}
!98 = !{ptr @optimize_reg_copy_2, ptr @reg_set_p, i64 5402}
!99 = !{ptr @find_matches, ptr @extract_insn, i64 1025832}
!100 = !{ptr @find_matches, ptr @constrain_operands, i64 1025832}
!101 = !{ptr @find_matches, ptr @strtoul, i64 83902}
!102 = !{ptr @find_matches, ptr @lookup_constraint, i64 2580082}
!103 = !{ptr @find_matches, ptr @regclass_for_constraint, i64 2580082}
!104 = !{ptr @find_matches, ptr @insn_constraint_len, i64 1008228}
!105 = !{ptr @regclass_compatible_p, ptr @reg_class_subset_p, i64 2}
!106 = !{ptr @reg_is_remote_constant_p, ptr @max_reg_num, i64 2095}
!107 = !{ptr @reg_is_remote_constant_p, ptr @xcalloc, i64 2095}
!108 = !{ptr @reg_is_remote_constant_p, ptr @single_set_2, i64 1}
!109 = !{ptr @reg_is_remote_constant_p, ptr @rhs_regno, i64 499690}
!110 = !{ptr @reg_is_remote_constant_p, ptr @REG_N_SETS, i64 457651}
!111 = !{ptr @reg_is_remote_constant_p, ptr @find_reg_note, i64 167898}
!112 = !{ptr @reg_is_remote_constant_p, ptr @fancy_abort, i64 1}
!113 = !{ptr @copy_src_to_dest, ptr @rhs_regno, i64 968}
!114 = !{ptr @copy_src_to_dest, ptr @single_set_2, i64 1}
!115 = !{ptr @copy_src_to_dest, ptr @reg_mentioned_p, i64 247}
!116 = !{ptr @copy_src_to_dest, ptr @start_sequence, i64 236}
!117 = !{ptr @copy_src_to_dest, ptr @emit_move_insn, i64 236}
!118 = !{ptr @copy_src_to_dest, ptr @get_insns, i64 236}
!119 = !{ptr @copy_src_to_dest, ptr @end_sequence, i64 236}
!120 = !{ptr @copy_src_to_dest, ptr @validate_replace_rtx, i64 235}
!121 = !{ptr @copy_src_to_dest, ptr @emit_insn_before, i64 234}
!122 = !{ptr @copy_src_to_dest, ptr @find_reg_note, i64 234}
!123 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!124 = !{!"function_entry_count", i64 6652}
!125 = !{!"regmove.c:gate_handle_regmove"}
!126 = !{!127, !127, i64 0}
!127 = !{!"int", !128, i64 0}
!128 = !{!"omnipotent char", !129, i64 0}
!129 = !{!"Simple C/C++ TBAA"}
!130 = !{!"branch_weights", i32 6653, i32 1}
!131 = !{!"regmove.c:regmove_optimize"}
!132 = !{!133, !133, i64 0}
!133 = !{!"any pointer", !128, i64 0}
!134 = !{!"branch_weights", i32 6652, i32 1}
!135 = !{!"branch_weights", i32 4559, i32 2095}
!136 = !{!"regmove.c:regmove_forward_pass"}
!137 = !{!"branch_weights", i32 1, i32 6653}
!138 = !{!139, !133, i64 8}
!139 = !{!"function", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !133, i64 80, !133, i64 88, !133, i64 96, !127, i64 104, !127, i64 108, !127, i64 112, !127, i64 116, !127, i64 120, !127, i64 124, !133, i64 128, !127, i64 136, !127, i64 137, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 138, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139, !127, i64 139}
!140 = !{!141, !133, i64 0}
!141 = !{!"control_flow_graph", !133, i64 0, !133, i64 8, !133, i64 16, !127, i64 24, !127, i64 28, !127, i64 32, !133, i64 40, !127, i64 48, !128, i64 52, !128, i64 60, !127, i64 68, !127, i64 72}
!142 = !{!143, !133, i64 56}
!143 = !{!"basic_block_def", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !128, i64 32, !133, i64 48, !133, i64 56, !128, i64 64, !144, i64 72, !127, i64 80, !127, i64 84, !127, i64 88, !127, i64 92, !127, i64 96}
!144 = !{!"long", !128, i64 0}
!145 = !{!141, !133, i64 8}
!146 = !{!"branch_weights", i32 1, i32 6652}
!147 = !{!128, !128, i64 0}
!148 = !{!149, !133, i64 8}
!149 = !{!"rtl_bb_info", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !127, i64 32}
!150 = !{!"branch_weights", i32 247305, i32 1466716}
!151 = !{!"branch_weights", i32 -613997669, i32 1582001671}
!152 = !{!"branch_weights", i32 916276, i32 1}
!153 = !{!"branch_weights", i32 -2147483648, i32 0}
!154 = !{!"branch_weights", i32 46214378, i32 -503836554}
!155 = !{!"branch_weights", i32 4221, i32 7720}
!156 = !{!"branch_weights", i32 4202, i32 20}
!157 = !{!"branch_weights", i32 239781, i32 751722}
!158 = !{!"branch_weights", i32 90223, i32 149559}
!159 = !{!"branch_weights", i32 14234, i32 75990}
!160 = !{i32 0, i32 2}
!161 = !{!"branch_weights", i32 14100, i32 135}
!162 = !{!"branch_weights", i32 62297, i32 13828}
!163 = !{!"branch_weights", i32 8047, i32 54251}
!164 = !{!"branch_weights", i32 55583, i32 6715}
!165 = !{!"branch_weights", i32 1, i32 55583}
!166 = !{!"branch_weights", i32 54601, i32 983}
!167 = !{!"branch_weights", i32 6652, i32 1700716}
!168 = distinct !{!168, !169}
!169 = !{!"llvm.loop.mustprogress"}
!170 = !{!"branch_weights", i32 6652, i32 240653}
!171 = distinct !{!171, !169}
!172 = !{!"regmove.c:regmove_backward_pass"}
!173 = !{!143, !133, i64 48}
!174 = !{!"branch_weights", i32 1, i32 247305}
!175 = !{!149, !133, i64 0}
!176 = !{!"branch_weights", i32 145585985, i32 -830130519}
!177 = !{!"branch_weights", i32 51881, i32 58947}
!178 = !{!"branch_weights", i32 37911, i32 21037}
!179 = !{!"branch_weights", i32 37116, i32 796}
!180 = !{!"branch_weights", i32 15, i32 37102}
!181 = !{!182, !127, i64 8}
!182 = !{!"reg_info_t", !127, i64 0, !127, i64 4, !127, i64 8, !127, i64 12, !127, i64 16, !127, i64 20, !127, i64 24}
!183 = !{!"branch_weights", i32 1, i32 37102}
!184 = !{!"branch_weights", i32 37100, i32 3}
!185 = !{!"branch_weights", i32 24138, i32 12963}
!186 = !{!"branch_weights", i32 13049, i32 11090}
!187 = !{!"branch_weights", i32 189415, i32 1}
!188 = !{!"branch_weights", i32 1148, i32 1}
!189 = !{!"branch_weights", i32 22642, i32 1}
!190 = !{!"branch_weights", i32 22554, i32 89}
!191 = !{!"branch_weights", i32 2, i32 22553}
!192 = !{!"branch_weights", i32 1, i32 2}
!193 = !{!"branch_weights", i32 5439, i32 17115}
!194 = !{!"branch_weights", i32 1, i32 17115}
!195 = !{!"branch_weights", i32 17106, i32 10}
!196 = !{!"branch_weights", i32 10, i32 1}
!197 = !{i8 0, i8 2}
!198 = !{!"branch_weights", i32 16863, i32 244}
!199 = !{!"branch_weights", i32 244, i32 1}
!200 = !{!"branch_weights", i32 16863, i32 1}
!201 = !{!"branch_weights", i32 1, i32 127}
!202 = !{!"branch_weights", i32 -2003392202, i32 604837935}
!203 = !{!"branch_weights", i32 21667, i32 2187}
!204 = !{!"branch_weights", i32 11515, i32 1}
!205 = !{!"branch_weights", i32 13212, i32 8366}
!206 = !{!"branch_weights", i32 1, i32 13212}
!207 = !{!"branch_weights", i32 8442, i32 15}
!208 = !{!"branch_weights", i32 1, i32 15}
!209 = !{!"branch_weights", i32 7141, i32 1302}
!210 = !{!"branch_weights", i32 1, i32 1302}
!211 = !{!"branch_weights", i32 217, i32 6925}
!212 = !{!"branch_weights", i32 217, i32 1}
!213 = !{!143, !144, i64 72}
!214 = !{!143, !127, i64 88}
!215 = !{!"branch_weights", i32 1, i32 160}
!216 = !{!182, !127, i64 12}
!217 = distinct !{!217, !169}
!218 = !{!"branch_weights", i32 127, i32 3859201}
!219 = !{!"branch_weights", i32 13083, i32 130}
!220 = !{!"branch_weights", i32 13126, i32 87}
!221 = !{!222, !127, i64 0}
!222 = !{!"regstat_n_sets_and_refs_t", !127, i64 0, !127, i64 4}
!223 = !{!182, !127, i64 16}
!224 = !{!"branch_weights", i32 13212, i32 1}
!225 = !{!"branch_weights", i32 1, i32 3652}
!226 = !{!227, !128, i64 1086}
!227 = !{!"recog_data", !128, i64 0, !128, i64 240, !128, i64 480, !128, i64 720, !128, i64 840, !128, i64 960, !128, i64 1072, !128, i64 1086, !128, i64 1087, !128, i64 1088, !128, i64 1089, !133, i64 1120}
!228 = !{!"branch_weights", i32 82672, i32 28155}
!229 = distinct !{!229, !169}
!230 = !{!"branch_weights", i32 2129194813, i32 18288835}
!231 = !{!"branch_weights", i32 6653, i32 1460064}
!232 = distinct !{!232, !169}
!233 = distinct !{!233, !169}
!234 = !{!"function_entry_count", i64 4201}
!235 = !{!"regmove.c:optimize_reg_copy_3"}
!236 = !{!"branch_weights", i32 8405, i32 17656804}
!237 = !{!"branch_weights", i32 1478, i32 2725}
!238 = !{!182, !127, i64 4}
!239 = !{!"branch_weights", i32 2560, i32 166}
!240 = !{!"branch_weights", i32 2360, i32 201}
!241 = !{!"branch_weights", i32 4150, i32 842}
!242 = !{!"branch_weights", i32 -1138428642, i32 -1088432816}
!243 = !{!"branch_weights", i32 539, i32 1519}
!244 = !{!"branch_weights", i32 127, i32 638721}
!245 = distinct !{!245, !169}
!246 = !{!"branch_weights", i32 842, i32 1519}
!247 = !{!"branch_weights", i32 6743, i32 1}
!248 = !{!"branch_weights", i32 76, i32 1}
!249 = !{!"branch_weights", i32 171658487, i32 1975825161}
!250 = !{!"branch_weights", i32 27, i32 816}
!251 = !{!"branch_weights", i32 27, i32 1}
!252 = !{!"branch_weights", i32 1, i32 215}
!253 = !{!"branch_weights", i32 86517, i32 11979}
!254 = !{!"branch_weights", i32 215, i32 233}
!255 = distinct !{!255, !169}
!256 = !{!"branch_weights", i32 25, i32 3}
!257 = !{!"branch_weights", i32 3, i32 1}
!258 = !{!"function_entry_count", i64 14233}
!259 = !{!"regmove.c:optimize_reg_copy_1"}
!260 = !{!"branch_weights", i32 -335178672, i32 -804577389}
!261 = !{!"branch_weights", i32 1, i32 159}
!262 = !{!"branch_weights", i32 -399793465, i32 -1177577468}
!263 = !{!"branch_weights", i32 8152, i32 6276}
!264 = !{!"branch_weights", i32 7929, i32 224}
!265 = !{!"branch_weights", i32 7929, i32 1}
!266 = !{!"branch_weights", i32 1, i32 7929}
!267 = !{!"branch_weights", i32 7795, i32 135}
!268 = !{!"branch_weights", i32 135, i32 1}
!269 = !{!"branch_weights", i32 1, i32 134}
!270 = !{!"branch_weights", i32 46, i32 173}
!271 = !{!"branch_weights", i32 1, i32 173}
!272 = !{!"branch_weights", i32 1, i32 218}
!273 = !{!"branch_weights", i32 218, i32 1}
!274 = !{!"branch_weights", i32 135, i32 84}
!275 = !{!"branch_weights", i32 2, i32 83}
!276 = !{!"branch_weights", i32 2, i32 1}
!277 = !{!"branch_weights", i32 2144107652, i32 3375996}
!278 = !{!"branch_weights", i32 134, i32 84}
!279 = distinct !{!279, !169}
!280 = !{!"branch_weights", i32 2131575489, i32 15908159}
!281 = !{!"branch_weights", i32 1, i32 135}
!282 = !{!"branch_weights", i32 159, i32 103749}
!283 = distinct !{!283, !169}
!284 = !{!"function_entry_count", i64 1029159}
!285 = !{!"regmove.c:rhs_regno"}
!286 = !{!"function_entry_count", i64 8046}
!287 = !{!"regmove.c:optimize_reg_copy_2"}
!288 = !{!"branch_weights", i32 1, i32 143}
!289 = !{!"branch_weights", i32 -1643825277, i32 -1248756012}
!290 = !{!"branch_weights", i32 5428, i32 7228}
!291 = !{!"branch_weights", i32 5090, i32 1}
!292 = !{!"branch_weights", i32 218, i32 5183}
!293 = distinct !{!293, !169}
!294 = !{!"branch_weights", i32 4704, i32 725}
!295 = !{!"branch_weights", i32 4694, i32 11}
!296 = !{!"branch_weights", i32 37, i32 4658}
!297 = !{!"branch_weights", i32 15, i32 23}
!298 = !{!"branch_weights", i32 143, i32 54259}
!299 = distinct !{!299, !169}
!300 = !{!"function_entry_count", i64 454033}
!301 = !{!"regmove.c:REG_N_SETS"}
!302 = !{!"function_entry_count", i64 1025832}
!303 = !{!"regmove.c:find_matches"}
!304 = !{!"branch_weights", i32 1, i32 1025833}
!305 = !{!"branch_weights", i32 1025832, i32 1}
!306 = !{!"branch_weights", i32 1158431, i32 1025832}
!307 = distinct !{!307, !169}
!308 = !{!"branch_weights", i32 -1911913573, i32 949077878, i32 1525}
!309 = !{!"branch_weights", i32 3582073, i32 636365}
!310 = !{!"branch_weights", i32 2034175, i32 150088}
!311 = !{!"branch_weights", i32 0, i32 2034175}
!312 = distinct !{!312, !169}
!313 = !{!"branch_weights", i32 345857, i32 549022, i32 549022, i32 1, i32 1, i32 440, i32 26981, i32 41822, i32 223, i32 126, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1179, i32 1, i32 3333, i32 516, i32 1, i32 990, i32 1, i32 1, i32 1, i32 25481, i32 4323, i32 97568, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 33, i32 1, i32 1, i32 126, i32 1}
!314 = !{!"branch_weights", i32 42169, i32 1}
!315 = !{!"branch_weights", i32 41367, i32 803}
!316 = distinct !{!316, !169}
!317 = !{!"branch_weights", i32 24951, i32 16417}
!318 = !{!"branch_weights", i32 1179, i32 132363}
!319 = !{!"branch_weights", i32 516, i32 131848}
!320 = !{!"branch_weights", i32 3333, i32 128516}
!321 = !{!"branch_weights", i32 1, i32 128516}
!322 = !{!"branch_weights", i32 33, i32 128484}
!323 = !{!"branch_weights", i32 1, i32 128484}
!324 = !{!"branch_weights", i32 126, i32 128359}
!325 = !{!"branch_weights", i32 1, i32 128359}
!326 = distinct !{!326, !169}
!327 = !{!"function_entry_count", i64 0}
!328 = !{!"regmove.c:fixup_match_2"}
!329 = distinct !{!329, !169}
!330 = !{!"function_entry_count", i64 17114}
!331 = !{!"regmove.c:regclass_compatible_p"}
!332 = !{!"branch_weights", i32 17115, i32 1}
!333 = !{!"function_entry_count", i64 17105}
!334 = !{!"regmove.c:reg_is_remote_constant_p"}
!335 = !{!"branch_weights", i32 2095, i32 15012}
!336 = !{!"branch_weights", i32 1, i32 2094}
!337 = !{!"branch_weights", i32 182917, i32 1072034}
!338 = !{!"branch_weights", i32 -51802956, i32 1878575258}
!339 = !{!"branch_weights", i32 662581, i32 1}
!340 = !{!"branch_weights", i32 451475, i32 274013}
!341 = !{!"branch_weights", i32 165632, i32 285844}
!342 = !{!"branch_weights", i32 157910, i32 7723}
!343 = !{!"branch_weights", i32 2094, i32 1250762}
!344 = distinct !{!344, !169}
!345 = !{!"branch_weights", i32 2094, i32 180823}
!346 = distinct !{!346, !169}
!347 = !{!"branch_weights", i32 17106, i32 1}
!348 = !{!"branch_weights", i32 15693, i32 1414}
!349 = !{!"function_entry_count", i64 252}
!350 = !{!"regmove.c:copy_src_to_dest"}
!351 = !{!"branch_weights", i32 253, i32 1}
!352 = !{!"branch_weights", i32 2031, i32 1}
!353 = !{!"branch_weights", i32 186, i32 1}
!354 = !{!"branch_weights", i32 1384074676, i32 763408972}
!355 = !{!"branch_weights", i32 244, i32 10}
!356 = !{!357, !127, i64 40}
!357 = !{!"rtl_data", !358, i64 0, !359, i64 40, !360, i64 96, !361, i64 112, !363, i64 208, !364, i64 248, !127, i64 312, !133, i64 320, !133, i64 328, !133, i64 336, !133, i64 344, !133, i64 352, !133, i64 360, !133, i64 368, !133, i64 376, !133, i64 384, !133, i64 392, !144, i64 400, !133, i64 408, !133, i64 416, !133, i64 424, !127, i64 432, !127, i64 436, !127, i64 440, !127, i64 444, !127, i64 448, !127, i64 452, !133, i64 456, !128, i64 464, !128, i64 465, !128, i64 466, !128, i64 467, !128, i64 468, !128, i64 469, !128, i64 470, !128, i64 471, !128, i64 472, !128, i64 473, !128, i64 474, !128, i64 475, !128, i64 476, !128, i64 477, !128, i64 478, !128, i64 479, !128, i64 480, !128, i64 481, !128, i64 482, !128, i64 483, !128, i64 484, !128, i64 485}
!358 = !{!"expr_status", !127, i64 0, !127, i64 4, !127, i64 8, !133, i64 16, !133, i64 24, !133, i64 32}
!359 = !{!"emit_status", !127, i64 0, !127, i64 4, !133, i64 8, !133, i64 16, !133, i64 24, !127, i64 32, !127, i64 36, !127, i64 40, !127, i64 44, !133, i64 48}
!360 = !{!"varasm_status", !133, i64 0, !127, i64 8}
!361 = !{!"incoming_args", !127, i64 0, !127, i64 4, !127, i64 8, !133, i64 16, !362, i64 24, !133, i64 88}
!362 = !{!"ix86_args", !127, i64 0, !127, i64 4, !127, i64 8, !127, i64 12, !127, i64 16, !127, i64 20, !127, i64 24, !127, i64 28, !127, i64 32, !127, i64 36, !127, i64 40, !127, i64 44, !127, i64 48, !127, i64 52, !127, i64 56, !127, i64 60}
!363 = !{!"function_subsections", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32}
!364 = !{!"rtl_eh", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !128, i64 48}
!365 = !{!"branch_weights", i32 1, i32 244}
!366 = !{!"branch_weights", i32 1, i32 243}
!367 = !{!"branch_weights", i32 244, i32 64}
!368 = !{!"branch_weights", i32 243, i32 64}
!369 = distinct !{!369, !169}
!370 = !{!"function_entry_count", i64 2409503}
!371 = !{!"regmove.c:insn_constraint_len"}
!372 = !{!"branch_weights", i32 1, i32 2409504}
