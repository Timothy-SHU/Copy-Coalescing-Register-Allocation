; ModuleID = 'init-regs.c'
source_filename = "init-regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.df_live_bb_info = type { ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }

@.str = private unnamed_addr constant [10 x i8] c"init-regs\00", align 1
@pass_initialize_regs = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_initialize_regs, ptr @rest_of_handle_initialize_regs, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131073 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@df = external local_unnamed_addr global ptr, align 8
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"adding initialization in %s of reg %d at in block %d for insn %d.\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_initialize_regs() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_initialize_regs() #1 {
  tail call fastcc void @initialize_uninitialized_regs() #5
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_uninitialized_regs() unnamed_addr #1 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #6
  %2 = load i32, ptr @optimize, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void @df_live_add_problem() #6
  tail call void @df_live_set_all_dirty() #6
  br label %5

5:                                                ; preds = %4, %0
  tail call void @df_analyze() #6
  %6 = load ptr, ptr @cfun, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %114, label %15

15:                                               ; preds = %5, %105
  %16 = phi ptr [ %107, %105 ], [ %11, %5 ]
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !19
  %19 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %18) #5
  %20 = getelementptr inbounds %struct.df_lr_bb_info, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !20
  %22 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %18) #5
  %23 = getelementptr inbounds %struct.df_live_bb_info, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  tail call void @bitmap_clear(ptr noundef %1) #6
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !24
  %27 = load ptr, ptr %26, align 8, !tbaa !24
  %28 = icmp eq ptr %27, null
  br i1 %28, label %105, label %29

29:                                               ; preds = %15, %101
  %30 = phi ptr [ %103, %101 ], [ %27, %15 ]
  %31 = load ptr, ptr %25, align 8, !tbaa !24
  %32 = getelementptr inbounds %struct.rtl_bb_info, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !25
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !24
  %36 = icmp eq ptr %30, %35
  br i1 %36, label %105, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !24
  %40 = load i32, ptr %30, align 8
  %41 = and i32 %40, 65535
  %42 = add nsw i32 %41, -11
  %43 = icmp ult i32 %42, -3
  br i1 %43, label %101, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr @df, align 8, !tbaa !9
  %46 = getelementptr inbounds %struct.df, ptr %45, i64 0, i32 10
  %47 = load ptr, ptr %46, align 8, !tbaa !27
  %48 = zext i32 %39 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !9
  %51 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !30
  %53 = load ptr, ptr %52, align 8, !tbaa !9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %101, label %55

55:                                               ; preds = %44, %97
  %56 = phi ptr [ %99, %97 ], [ %53, %44 ]
  %57 = phi ptr [ %98, %97 ], [ %52, %44 ]
  %58 = getelementptr inbounds %struct.df_base_ref, ptr %56, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !24
  %60 = icmp ult i32 %59, 53
  br i1 %60, label %97, label %61

61:                                               ; preds = %55
  %62 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %59) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %61
  %65 = tail call i32 @bitmap_bit_p(ptr noundef %21, i32 noundef %59) #6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %97, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @bitmap_bit_p(ptr noundef %24, i32 noundef %59) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.df_base_ref, ptr %56, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !24
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 39
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !24
  br label %79

79:                                               ; preds = %70, %76
  %80 = phi ptr [ %78, %76 ], [ %72, %70 ]
  %81 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %59) #6
  tail call void @start_sequence() #6
  %82 = load i32, ptr %80, align 8
  %83 = lshr i32 %82, 16
  %84 = and i32 %83, 255
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !9
  %88 = tail call ptr @emit_move_insn(ptr noundef nonnull %80, ptr noundef %87) #6
  %89 = tail call ptr @get_insns() #6
  tail call void @end_sequence() #6
  %90 = tail call ptr @emit_insn_before(ptr noundef %89, ptr noundef nonnull %30) #6
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %79
  %94 = tail call ptr @current_function_name() #6
  %95 = load i32, ptr %17, align 8, !tbaa !19
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %91, ptr noundef nonnull @.str.1, ptr noundef %94, i32 noundef %59, i32 noundef %95, i32 noundef %39) #5
  br label %97

97:                                               ; preds = %64, %67, %93, %79, %61, %55
  %98 = getelementptr inbounds ptr, ptr %57, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !9
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %55, !llvm.loop !32

101:                                              ; preds = %97, %44, %37
  %102 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %103 = load ptr, ptr %102, align 8, !tbaa !24
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %29, !llvm.loop !34

105:                                              ; preds = %29, %101, %15
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !15
  %108 = load ptr, ptr @cfun, align 8, !tbaa !9
  %109 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !11
  %111 = getelementptr inbounds %struct.control_flow_graph, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !18
  %113 = icmp eq ptr %107, %112
  br i1 %113, label %114, label %15, !llvm.loop !35

114:                                              ; preds = %105, %5
  %115 = load i32, ptr @optimize, align 4, !tbaa !5
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  tail call void @df_dump(ptr noundef nonnull %118) #6
  br label %121

121:                                              ; preds = %120, %117
  %122 = load ptr, ptr @df, align 8, !tbaa !9
  %123 = getelementptr inbounds %struct.df, ptr %122, i64 0, i32 1, i64 2
  %124 = load ptr, ptr %123, align 8, !tbaa !9
  tail call void @df_remove_problem(ptr noundef %124) #6
  br label %125

125:                                              ; preds = %121, %114
  tail call void @bitmap_obstack_free(ptr noundef %1) #6
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_live_add_problem() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_live_set_all_dirty() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @df, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !36
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_live_get_bb_info(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @df, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !36
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @current_function_name() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_remove_problem(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

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
!19 = !{!16, !6, i64 80}
!20 = !{!21, !10, i64 16}
!21 = !{!"df_lr_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!22 = !{!23, !10, i64 16}
!23 = !{!"df_live_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!24 = !{!7, !7, i64 0}
!25 = !{!26, !10, i64 8}
!26 = !{!"rtl_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32}
!27 = !{!28, !10, i64 248}
!28 = !{!"df", !7, i64 0, !7, i64 64, !10, i64 128, !29, i64 136, !29, i64 176, !10, i64 216, !10, i64 224, !10, i64 232, !6, i64 240, !6, i64 244, !10, i64 248, !6, i64 256, !6, i64 260, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !6, i64 344, !6, i64 348, !10, i64 352, !6, i64 360, !6, i64 364, !7, i64 365, !7, i64 366}
!29 = !{!"df_ref_info", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!30 = !{!31, !10, i64 16}
!31 = !{!"df_insn_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = !{!37, !6, i64 16}
!37 = !{!"dataflow", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !6, i64 48, !7, i64 52, !7, i64 53, !7, i64 54}
!38 = !{!37, !10, i64 8}
