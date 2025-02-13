; ModuleID = 'combine-stack-adj.c'
source_filename = "combine-stack-adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.record_stack_refs_data = type { ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.csa_reflist = type { i64, ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"csa\00", align 1
@pass_stack_adjustments = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_stack_adjustments, ptr @rest_of_handle_stack_adjustments, ptr null, ptr null, i32 0, i32 155, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_crossjumping = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_stack_adjustments() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_stack_adjustments() #1 {
  %1 = load i32, ptr @flag_crossjumping, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  %3 = select i1 %2, i32 0, i32 2
  %4 = tail call zeroext i8 @cleanup_cfg(i32 noundef %3) #7
  tail call void @df_note_add_problem() #7
  tail call void @df_analyze() #7
  tail call fastcc void @combine_stack_adjustments() #8
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_note_add_problem() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_stack_adjustments() unnamed_addr #1 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !9
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %0, %10
  %11 = phi ptr [ %13, %10 ], [ %6, %0 ]
  tail call fastcc void @combine_stack_adjustments_for_block(ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = load ptr, ptr @cfun, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !18
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %20, label %10, !llvm.loop !19

20:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_stack_adjustments_for_block(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.record_stack_refs_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.record_stack_refs_data, ptr %2, i64 0, i32 1
  br label %7

7:                                                ; preds = %1, %170
  %8 = phi i64 [ 0, %1 ], [ %173, %170 ]
  %9 = phi ptr [ null, %1 ], [ %172, %170 ]
  %10 = phi ptr [ null, %1 ], [ %171, %170 ]
  %11 = phi ptr [ %5, %1 ], [ %17, %170 ]
  %12 = load ptr, ptr %3, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.rtl_bb_info, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = icmp eq ptr %11, %14
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = load i32, ptr %11, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -7
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %170

22:                                               ; preds = %7
  %23 = call fastcc ptr @single_set_for_csa(ptr noundef nonnull %11) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %140, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !21
  %30 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !9
  %31 = icmp eq ptr %27, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %25
  %33 = load i32, ptr %29, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 49
  br i1 %35, label %36, label %77

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !21
  %39 = icmp eq ptr %38, %27
  br i1 %39, label %40, label %77

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !21
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 30
  br i1 %45, label %46, label %77

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !21
  %49 = icmp eq ptr %9, null
  br i1 %49, label %170, label %50

50:                                               ; preds = %46
  %51 = icmp slt i64 %48, 1
  br i1 %51, label %52, label %63

52:                                               ; preds = %50
  %53 = add nsw i64 %48, %8
  %54 = call fastcc i32 @try_apply_stack_adjustment(ptr noundef nonnull %9, ptr noundef %10, i64 noundef %53, i64 noundef %48) #8, !range !25
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %9, align 8
  %58 = and i32 %57, 1073741824
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  call fastcc void @adjust_frame_related_expr(ptr noundef nonnull %9, ptr noundef nonnull %11, i64 noundef %48) #8
  br label %61

61:                                               ; preds = %60, %56
  %62 = call ptr @delete_insn(ptr noundef nonnull %11) #7
  br label %170

63:                                               ; preds = %50
  %64 = icmp sgt i64 %8, -1
  br i1 %64, label %65, label %76

65:                                               ; preds = %63
  %66 = add nuw nsw i64 %48, %8
  %67 = sub nsw i64 0, %8
  %68 = call fastcc i32 @try_apply_stack_adjustment(ptr noundef nonnull %11, ptr noundef %10, i64 noundef %66, i64 noundef %67) #8, !range !25
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = call ptr @delete_insn(ptr noundef nonnull %9) #7
  call fastcc void @free_csa_reflist(ptr noundef %10) #8
  br label %170

72:                                               ; preds = %65, %52
  %73 = icmp eq i64 %8, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = call ptr @delete_insn(ptr noundef nonnull %9) #7
  br label %76

76:                                               ; preds = %63, %74, %72
  call fastcc void @free_csa_reflist(ptr noundef %10) #8
  br label %170

77:                                               ; preds = %40, %36, %32, %25
  %78 = load i32, ptr %27, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 43
  br i1 %80, label %81, label %140

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !21
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 74
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = lshr i32 %78, 16
  %89 = and i32 %88, 255
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !21
  %93 = zext i8 %92 to i64
  %94 = icmp eq i64 %8, %93
  br i1 %94, label %120, label %140

95:                                               ; preds = %81
  %96 = icmp sgt i64 %8, -1
  %97 = icmp eq i32 %85, 78
  %98 = and i1 %96, %97
  br i1 %98, label %99, label %140

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !21
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 49
  br i1 %104, label %105, label %140

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !21
  %108 = icmp eq ptr %107, %30
  br i1 %108, label %109, label %140

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !21
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 30
  br i1 %114, label %115, label %140

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !21
  %118 = sub nsw i64 0, %8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %115, %87
  %121 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !21
  %123 = icmp eq ptr %122, %30
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = call i32 @reg_mentioned_p(ptr noundef %30, ptr noundef %29) #7
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load i32, ptr %27, align 8
  %129 = lshr i32 %128, 16
  %130 = and i32 %129, 255
  %131 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !9
  %132 = call i32 @memory_address_addr_space_p(i32 noundef %130, ptr noundef %131, i8 noundef zeroext 0) #7
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %127
  %135 = sub nsw i64 0, %8
  %136 = call fastcc i32 @try_apply_stack_adjustment(ptr noundef nonnull %11, ptr noundef %10, i64 noundef 0, i64 noundef %135) #8, !range !25
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = call ptr @delete_insn(ptr noundef %9) #7
  call fastcc void @free_csa_reflist(ptr noundef %10) #8
  br label %170

140:                                              ; preds = %87, %77, %95, %99, %105, %109, %115, %120, %124, %127, %134, %22
  store ptr %11, ptr %2, align 8, !tbaa !26
  store ptr %10, ptr %6, align 8, !tbaa !28
  %141 = load i32, ptr %11, align 8
  %142 = and i32 %141, 65535
  %143 = icmp ne i32 %142, 10
  %144 = icmp ne ptr %9, null
  %145 = select i1 %143, i1 %144, i1 false
  br i1 %145, label %146, label %154

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %148 = call i32 @for_each_rtx(ptr noundef nonnull %147, ptr noundef nonnull @record_stack_refs, ptr noundef nonnull %2) #7
  %149 = icmp eq i32 %148, 0
  %150 = load ptr, ptr %6, align 8, !tbaa !28
  br i1 %149, label %170, label %151

151:                                              ; preds = %146
  %152 = load i32, ptr %11, align 8
  %153 = and i32 %152, 65535
  br label %155

154:                                              ; preds = %140
  br i1 %144, label %155, label %170

155:                                              ; preds = %151, %154
  %156 = phi i32 [ %153, %151 ], [ %142, %154 ]
  %157 = phi ptr [ %150, %151 ], [ %10, %154 ]
  %158 = icmp eq i32 %156, 10
  br i1 %158, label %165, label %159

159:                                              ; preds = %155
  %160 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !9
  %161 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !21
  %163 = call i32 @reg_mentioned_p(ptr noundef %160, ptr noundef %162) #7
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %159, %155
  %166 = icmp eq i64 %8, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %165
  %168 = call ptr @delete_insn(ptr noundef nonnull %9) #7
  br label %169

169:                                              ; preds = %167, %165
  call fastcc void @free_csa_reflist(ptr noundef %157) #8
  br label %170

170:                                              ; preds = %146, %138, %46, %76, %70, %61, %7, %154, %159, %169
  %171 = phi ptr [ null, %169 ], [ %157, %159 ], [ %10, %154 ], [ %10, %7 ], [ null, %138 ], [ %10, %61 ], [ null, %76 ], [ null, %70 ], [ %10, %46 ], [ %150, %146 ]
  %172 = phi ptr [ null, %169 ], [ %9, %159 ], [ null, %154 ], [ %9, %7 ], [ null, %138 ], [ %9, %61 ], [ %11, %76 ], [ %11, %70 ], [ %11, %46 ], [ %9, %146 ]
  %173 = phi i64 [ 0, %169 ], [ %8, %159 ], [ %8, %154 ], [ %8, %7 ], [ 0, %138 ], [ %53, %61 ], [ %48, %76 ], [ %66, %70 ], [ %48, %46 ], [ %8, %146 ]
  br i1 %15, label %174, label %7, !llvm.loop !29

174:                                              ; preds = %170
  %175 = icmp ne ptr %172, null
  %176 = icmp eq i64 %173, 0
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = call ptr @delete_insn(ptr noundef nonnull %172) #7
  br label %180

180:                                              ; preds = %178, %174
  %181 = icmp eq ptr %171, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %180
  call fastcc void @free_csa_reflist(ptr noundef nonnull %171) #8
  br label %183

183:                                              ; preds = %182, %180
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_set_for_csa(ptr noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %59, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %8) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %59

15:                                               ; preds = %12
  %16 = load i32, ptr %0, align 8
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ %2, %1 ]
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %59

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 15
  br i1 %26, label %27, label %59

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !21
  %30 = getelementptr inbounds %struct.rtvec_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 23
  br i1 %34, label %35, label %59

35:                                               ; preds = %27
  %36 = load i32, ptr %29, align 8, !tbaa !30
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = zext nneg i32 %36 to i64
  br label %40

40:                                               ; preds = %38, %56
  %41 = phi i64 [ 1, %38 ], [ %57, %56 ]
  %42 = getelementptr inbounds %struct.rtvec_def, ptr %29, i64 0, i32 1, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 23
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %49 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !21
  %51 = load ptr, ptr %48, align 8, !tbaa !21
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %56, label %59

53:                                               ; preds = %40
  %54 = and i32 %44, 65534
  %55 = icmp eq i32 %54, 24
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %47
  %57 = add nuw nsw i64 %41, 1
  %58 = icmp eq i64 %57, %39
  br i1 %58, label %59, label %40, !llvm.loop !32

59:                                               ; preds = %53, %56, %47, %35, %6, %27, %17, %21, %12
  %60 = phi ptr [ %13, %12 ], [ null, %21 ], [ null, %17 ], [ null, %27 ], [ %8, %6 ], [ %31, %35 ], [ null, %53 ], [ %31, %56 ], [ null, %47 ]
  ret ptr %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @try_apply_stack_adjustment(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
  %5 = tail call fastcc ptr @single_set_for_csa(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 43
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !9
  %13 = tail call ptr @replace_equiv_address(ptr noundef nonnull %7, ptr noundef %12) #7
  %14 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %13, i8 noundef zeroext 1) #7
  br label %21

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %2) #7
  %20 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %18, ptr noundef %19, i8 noundef zeroext 1) #7
  br label %21

21:                                               ; preds = %15, %11
  %22 = icmp eq ptr %1, null
  br i1 %22, label %64, label %23

23:                                               ; preds = %21, %50
  %24 = phi ptr [ %57, %50 ], [ %1, %21 ]
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !9
  %26 = load i64, ptr %24, align 8, !tbaa !33
  %27 = sub nsw i64 %26, %3
  %28 = tail call ptr @plus_constant(ptr noundef %25, i64 noundef %27) #7
  %29 = getelementptr inbounds %struct.csa_reflist, ptr %24, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %31, ptr noundef %28) #7
  br label %50

37:                                               ; preds = %23
  %38 = lshr i32 %32, 16
  %39 = and i32 %38, 255
  %40 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !9
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = load i32, ptr %28, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = tail call ptr @lowpart_subreg(i32 noundef %39, ptr noundef nonnull %28, i32 noundef %48) #7
  br label %50

50:                                               ; preds = %37, %45, %35
  %51 = phi ptr [ %36, %35 ], [ %49, %45 ], [ %28, %37 ]
  %52 = getelementptr inbounds %struct.csa_reflist, ptr %24, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !36
  %54 = load ptr, ptr %29, align 8, !tbaa !35
  %55 = tail call zeroext i8 @validate_change(ptr noundef %53, ptr noundef %54, ptr noundef %51, i8 noundef zeroext 1) #7
  %56 = getelementptr inbounds %struct.csa_reflist, ptr %24, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !37
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %23, !llvm.loop !38

59:                                               ; preds = %50
  %60 = tail call i32 @apply_change_group() #7
  %61 = icmp eq i32 %60, 0
  %62 = or i1 %61, %22
  %63 = xor i1 %61, true
  br i1 %62, label %74, label %67

64:                                               ; preds = %21
  %65 = tail call i32 @apply_change_group() #7
  %66 = icmp ne i32 %65, 0
  br label %74

67:                                               ; preds = %59, %67
  %68 = phi ptr [ %72, %67 ], [ %1, %59 ]
  %69 = load i64, ptr %68, align 8, !tbaa !33
  %70 = sub nsw i64 %69, %3
  store i64 %70, ptr %68, align 8, !tbaa !33
  %71 = getelementptr inbounds %struct.csa_reflist, ptr %68, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !37
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %67, !llvm.loop !39

74:                                               ; preds = %67, %64, %59
  %75 = phi i1 [ %63, %59 ], [ %66, %64 ], [ true, %67 ]
  %76 = zext i1 %75 to i32
  ret i32 %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_frame_related_expr(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 {
  %4 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 17, ptr noundef null) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 1073741824
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %83, label %133

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %83

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = load i32, ptr %18, align 8, !tbaa !30
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %83

21:                                               ; preds = %16
  %22 = add nsw i32 %19, -1
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds %struct.rtvec_def, ptr %18, i64 0, i32 1, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 23
  br i1 %28, label %29, label %55

29:                                               ; preds = %21
  %30 = load i32, ptr %1, align 8
  %31 = xor i32 %30, %26
  %32 = and i32 %31, 1073741824
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !21
  %37 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !9
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !21
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 49
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !21
  %48 = icmp eq ptr %47, %36
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !21
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 30
  br i1 %54, label %76, label %55

55:                                               ; preds = %49, %45, %39, %34, %29, %21
  %56 = add nuw nsw i32 %19, 1
  %57 = tail call ptr @rtvec_alloc(i32 noundef %56) #7
  %58 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 5, i32 noundef 0, ptr noundef %57) #7
  %59 = load ptr, ptr %17, align 8, !tbaa !21
  %60 = load i32, ptr %59, align 8, !tbaa !30
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %109

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi i64 [ 0, %62 ], [ %71, %64 ]
  %66 = phi ptr [ %59, %62 ], [ %72, %64 ]
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !9
  %69 = load ptr, ptr %63, align 8, !tbaa !21
  %70 = getelementptr inbounds %struct.rtvec_def, ptr %69, i64 0, i32 1, i64 %65
  store ptr %68, ptr %70, align 8, !tbaa !9
  %71 = add nuw nsw i64 %65, 1
  %72 = load ptr, ptr %17, align 8, !tbaa !21
  %73 = load i32, ptr %72, align 8, !tbaa !30
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %64, label %109, !llvm.loop !40

76:                                               ; preds = %49
  %77 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !21
  %79 = add nsw i64 %78, %2
  %80 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %79) #7
  %81 = load ptr, ptr %40, align 8, !tbaa !21
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %80, ptr %82, align 8, !tbaa !21
  br label %133

83:                                               ; preds = %6, %16, %10
  %84 = tail call ptr @rtvec_alloc(i32 noundef 2) #7
  %85 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 5, i32 noundef 0, ptr noundef %84) #7
  br i1 %5, label %89, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !21
  br label %104

89:                                               ; preds = %83
  %90 = tail call fastcc ptr @single_set_for_csa(ptr noundef %0) #8
  %91 = tail call ptr @copy_rtx(ptr noundef %90) #7
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !21
  %94 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 0, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !21
  %96 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !21
  %98 = sub nsw i64 %97, %2
  %99 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %98) #7
  %100 = load ptr, ptr %92, align 8, !tbaa !21
  %101 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %99, ptr %101, align 8, !tbaa !21
  %102 = load i32, ptr %91, align 8
  %103 = or i32 %102, 1073741824
  store i32 %103, ptr %91, align 8
  br label %104

104:                                              ; preds = %89, %86
  %105 = phi ptr [ %88, %86 ], [ %91, %89 ]
  %106 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !21
  %108 = getelementptr inbounds %struct.rtvec_def, ptr %107, i64 0, i32 1
  store ptr %105, ptr %108, align 8, !tbaa !9
  br label %109

109:                                              ; preds = %64, %104, %55
  %110 = phi ptr [ %58, %55 ], [ %85, %104 ], [ %58, %64 ]
  %111 = tail call fastcc ptr @single_set_for_csa(ptr noundef %1) #8
  %112 = tail call ptr @copy_rtx(ptr noundef %111) #7
  %113 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !21
  %115 = load i32, ptr %114, align 8, !tbaa !30
  %116 = add nsw i32 %115, -1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.rtvec_def, ptr %114, i64 0, i32 1, i64 %117
  store ptr %112, ptr %118, align 8, !tbaa !9
  %119 = load i32, ptr %1, align 8
  %120 = and i32 %119, 1073741824
  %121 = load ptr, ptr %113, align 8, !tbaa !21
  %122 = load i32, ptr %121, align 8, !tbaa !30
  %123 = add nsw i32 %122, -1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.rtvec_def, ptr %121, i64 0, i32 1, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !9
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, -1073741825
  %129 = or disjoint i32 %128, %120
  store i32 %129, ptr %126, align 8
  br i1 %5, label %132, label %130

130:                                              ; preds = %109
  %131 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %110, ptr %131, align 8, !tbaa !21
  br label %133

132:                                              ; preds = %109
  tail call void @add_reg_note(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %110) #7
  br label %133

133:                                              ; preds = %76, %130, %132, %6
  ret void
}

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_csa_reflist(ptr noundef %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.csa_reflist, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  tail call void @free(ptr noundef nonnull %4) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !41

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @record_stack_refs(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %37 [
    i16 43, label %8
    i16 37, label %25
  ]

8:                                                ; preds = %5
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !9
  %10 = tail call i32 @reg_mentioned_p(ptr noundef %9, ptr noundef nonnull %3) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @stack_memref_p(ptr noundef nonnull %3) #8, !range !25
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %1, align 8, !tbaa !26
  br i1 %14, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.record_stack_refs_data, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = tail call fastcc ptr @record_one_stack_ref(ptr noundef %15, ptr noundef nonnull %0, ptr noundef %18) #8
  store ptr %19, ptr %17, align 8, !tbaa !28
  br label %37

20:                                               ; preds = %12
  %21 = load i32, ptr %15, align 8
  %22 = and i32 %21, 65535
  %23 = icmp ne i32 %22, 7
  %24 = zext i1 %23 to i32
  br label %37

25:                                               ; preds = %5
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #8
  %27 = icmp eq i32 %26, 7
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load ptr, ptr %1, align 8, !tbaa !26
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 7
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.record_stack_refs_data, ptr %1, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !28
  %36 = tail call fastcc ptr @record_one_stack_ref(ptr noundef nonnull %29, ptr noundef nonnull %0, ptr noundef %35) #8
  store ptr %36, ptr %34, align 8, !tbaa !28
  br label %37

37:                                               ; preds = %25, %5, %28, %8, %2, %33, %20, %16
  %38 = phi i32 [ -1, %33 ], [ -1, %16 ], [ %24, %20 ], [ 0, %2 ], [ -1, %8 ], [ 1, %28 ], [ 0, %5 ], [ 0, %25 ]
  ret i32 %38
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @replace_equiv_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lowpart_subreg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @stack_memref_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !9
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %25, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %7, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 49
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = icmp eq ptr %16, %8
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 30
  br i1 %23, label %25, label %24

24:                                               ; preds = %18, %14, %10
  br label %25

25:                                               ; preds = %18, %5, %1, %24
  %26 = phi i32 [ 0, %24 ], [ 0, %1 ], [ 1, %5 ], [ 1, %18 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @record_one_stack_ref(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call ptr @xmalloc(i64 noundef 32) #7
  %5 = load ptr, ptr %1, align 8, !tbaa !9
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !9
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !21
  br label %19

19:                                               ; preds = %3, %9, %14
  %20 = phi i64 [ %18, %14 ], [ 0, %9 ], [ 0, %3 ]
  store i64 %20, ptr %4, align 8, !tbaa !33
  %21 = getelementptr inbounds %struct.csa_reflist, ptr %4, i64 0, i32 1
  store ptr %0, ptr %21, align 8, !tbaa !36
  %22 = getelementptr inbounds %struct.csa_reflist, ptr %4, i64 0, i32 2
  store ptr %1, ptr %22, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.csa_reflist, ptr %4, i64 0, i32 3
  store ptr %2, ptr %23, align 8, !tbaa !37
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !21
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!7, !7, i64 0}
!22 = !{!23, !10, i64 0}
!23 = !{!"rtl_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32}
!24 = !{!23, !10, i64 8}
!25 = !{i32 0, i32 2}
!26 = !{!27, !10, i64 0}
!27 = !{!"record_stack_refs_data", !10, i64 0, !10, i64 8}
!28 = !{!27, !10, i64 8}
!29 = distinct !{!29, !20}
!30 = !{!31, !6, i64 0}
!31 = !{!"rtvec_def", !6, i64 0, !7, i64 8}
!32 = distinct !{!32, !20}
!33 = !{!34, !17, i64 0}
!34 = !{!"csa_reflist", !17, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!35 = !{!34, !10, i64 16}
!36 = !{!34, !10, i64 8}
!37 = !{!34, !10, i64 24}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !20}
!41 = distinct !{!41, !20}
