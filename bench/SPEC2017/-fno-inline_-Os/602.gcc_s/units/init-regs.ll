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

@pass_initialize_regs = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_initialize_regs, ptr @rest_of_handle_initialize_regs, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131073 } }, align 8
@.str = private unnamed_addr constant [10 x i8] c"init-regs\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@df = external local_unnamed_addr global ptr, align 8
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"adding initialization in %s of reg %d at in block %d for insn %d.\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_initialize_regs() #0 !prof !57 !PGOFuncName !58 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !59
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_initialize_regs() #1 !prof !57 !PGOFuncName !63 {
  tail call fastcc void @initialize_uninitialized_regs() #5
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_uninitialized_regs() unnamed_addr #1 !prof !57 !PGOFuncName !64 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #6
  %2 = load i32, ptr @optimize, align 4, !tbaa !59
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %5, !prof !65

4:                                                ; preds = %0
  tail call void @df_live_add_problem() #6
  tail call void @df_live_set_all_dirty() #6
  br label %5

5:                                                ; preds = %4, %0
  tail call void @df_analyze() #6
  %6 = load ptr, ptr @cfun, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %114, label %15, !prof !76

15:                                               ; preds = %5, %105
  %16 = phi ptr [ %107, %105 ], [ %11, %5 ]
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !77
  %19 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %18) #5
  %20 = getelementptr inbounds %struct.df_lr_bb_info, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !78
  %22 = tail call fastcc ptr @df_live_get_bb_info(i32 noundef %18) #5
  %23 = getelementptr inbounds %struct.df_live_bb_info, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !80
  tail call void @bitmap_clear(ptr noundef %1) #6
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  %27 = load ptr, ptr %26, align 8, !tbaa !82
  %28 = icmp eq ptr %27, null
  br i1 %28, label %105, label %29, !prof !76

29:                                               ; preds = %15, %101
  %30 = phi ptr [ %103, %101 ], [ %27, %15 ]
  %31 = load ptr, ptr %25, align 8, !tbaa !82
  %32 = getelementptr inbounds %struct.rtl_bb_info, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !83
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !82
  %36 = icmp eq ptr %30, %35
  br i1 %36, label %105, label %37, !prof !85

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !82
  %40 = load i32, ptr %30, align 8
  %41 = and i32 %40, 65535
  %42 = add nsw i32 %41, -11
  %43 = icmp ult i32 %42, -3
  br i1 %43, label %101, label %44, !prof !86

44:                                               ; preds = %37
  %45 = load ptr, ptr @df, align 8, !tbaa !66
  %46 = getelementptr inbounds %struct.df, ptr %45, i64 0, i32 10
  %47 = load ptr, ptr %46, align 8, !tbaa !87
  %48 = zext i32 %39 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !66
  %51 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !90
  %53 = load ptr, ptr %52, align 8, !tbaa !66
  %54 = icmp eq ptr %53, null
  br i1 %54, label %101, label %55, !prof !92

55:                                               ; preds = %44, %97
  %56 = phi ptr [ %99, %97 ], [ %53, %44 ]
  %57 = phi ptr [ %98, %97 ], [ %52, %44 ]
  %58 = getelementptr inbounds %struct.df_base_ref, ptr %56, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !82
  %60 = icmp ult i32 %59, 53
  br i1 %60, label %97, label %61, !prof !93

61:                                               ; preds = %55
  %62 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %59) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %97, !prof !94

64:                                               ; preds = %61
  %65 = tail call i32 @bitmap_bit_p(ptr noundef %21, i32 noundef %59) #6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %97, label %67, !prof !95

67:                                               ; preds = %64
  %68 = tail call i32 @bitmap_bit_p(ptr noundef %24, i32 noundef %59) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %97, !prof !96

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.df_base_ref, ptr %56, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !82
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 39
  br i1 %75, label %76, label %79, !prof !97

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !82
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
  %87 = load ptr, ptr %86, align 8, !tbaa !66
  %88 = tail call ptr @emit_move_insn(ptr noundef nonnull %80, ptr noundef %87) #6
  %89 = tail call ptr @get_insns() #6
  tail call void @end_sequence() #6
  %90 = tail call ptr @emit_insn_before(ptr noundef %89, ptr noundef nonnull %30) #6
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93, !prof !98

93:                                               ; preds = %79
  %94 = tail call ptr @current_function_name() #6
  %95 = load i32, ptr %17, align 8, !tbaa !77
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %91, ptr noundef nonnull @.str.1, ptr noundef %94, i32 noundef %59, i32 noundef %95, i32 noundef %39) #5
  br label %97

97:                                               ; preds = %64, %67, %93, %79, %61, %55
  %98 = getelementptr inbounds ptr, ptr %57, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !66
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %55, !prof !99, !llvm.loop !100

101:                                              ; preds = %97, %44, %37
  %102 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %103 = load ptr, ptr %102, align 8, !tbaa !82
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %29, !prof !102, !llvm.loop !103

105:                                              ; preds = %29, %101, %15
  %106 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !72
  %108 = load ptr, ptr @cfun, align 8, !tbaa !66
  %109 = getelementptr inbounds %struct.function, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !68
  %111 = getelementptr inbounds %struct.control_flow_graph, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !75
  %113 = icmp eq ptr %107, %112
  br i1 %113, label %114, label %15, !prof !104, !llvm.loop !105

114:                                              ; preds = %105, %5
  %115 = load i32, ptr @optimize, align 4, !tbaa !59
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %125, !prof !65

117:                                              ; preds = %114
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !66
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  tail call void @df_dump(ptr noundef nonnull %118) #6
  br label %121

121:                                              ; preds = %120, %117
  %122 = load ptr, ptr @df, align 8, !tbaa !66
  %123 = getelementptr inbounds %struct.df, ptr %122, i64 0, i32 1, i64 2
  %124 = load ptr, ptr %123, align 8, !tbaa !66
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
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #3 !prof !106 !PGOFuncName !107 {
  %2 = load ptr, ptr @df, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !108
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !110

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !111
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_live_get_bb_info(i32 noundef %0) unnamed_addr #3 !prof !106 !PGOFuncName !112 {
  %2 = load ptr, ptr @df, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !108
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !110

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !111
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !66
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!56}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!36 = !{ptr @rest_of_handle_initialize_regs, ptr @initialize_uninitialized_regs, i64 6652}
!37 = !{ptr @initialize_uninitialized_regs, ptr @bitmap_obstack_alloc_stat, i64 6652}
!38 = !{ptr @initialize_uninitialized_regs, ptr @df_live_add_problem, i64 1}
!39 = !{ptr @initialize_uninitialized_regs, ptr @df_live_set_all_dirty, i64 1}
!40 = !{ptr @initialize_uninitialized_regs, ptr @df_analyze, i64 6652}
!41 = !{ptr @initialize_uninitialized_regs, ptr @df_lr_get_bb_info, i64 247442}
!42 = !{ptr @initialize_uninitialized_regs, ptr @df_live_get_bb_info, i64 247442}
!43 = !{ptr @initialize_uninitialized_regs, ptr @bitmap_clear, i64 247442}
!44 = !{ptr @initialize_uninitialized_regs, ptr @bitmap_bit_p, i64 1687106}
!45 = !{ptr @initialize_uninitialized_regs, ptr @bitmap_set_bit, i64 3}
!46 = !{ptr @initialize_uninitialized_regs, ptr @start_sequence, i64 3}
!47 = !{ptr @initialize_uninitialized_regs, ptr @emit_move_insn, i64 3}
!48 = !{ptr @initialize_uninitialized_regs, ptr @get_insns, i64 3}
!49 = !{ptr @initialize_uninitialized_regs, ptr @end_sequence, i64 3}
!50 = !{ptr @initialize_uninitialized_regs, ptr @emit_insn_before, i64 3}
!51 = !{ptr @initialize_uninitialized_regs, ptr @current_function_name, i64 1}
!52 = !{ptr @initialize_uninitialized_regs, ptr @fprintf, i64 1}
!53 = !{ptr @initialize_uninitialized_regs, ptr @df_dump, i64 1}
!54 = !{ptr @initialize_uninitialized_regs, ptr @df_remove_problem, i64 1}
!55 = !{ptr @initialize_uninitialized_regs, ptr @bitmap_obstack_free, i64 6652}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 6652}
!58 = !{!"init-regs.c:gate_initialize_regs"}
!59 = !{!60, !60, i64 0}
!60 = !{!"int", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = !{!"init-regs.c:rest_of_handle_initialize_regs"}
!64 = !{!"init-regs.c:initialize_uninitialized_regs"}
!65 = !{!"branch_weights", i32 1, i32 6653}
!66 = !{!67, !67, i64 0}
!67 = !{!"any pointer", !61, i64 0}
!68 = !{!69, !67, i64 8}
!69 = !{!"function", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !60, i64 104, !60, i64 108, !60, i64 112, !60, i64 116, !60, i64 120, !60, i64 124, !67, i64 128, !60, i64 136, !60, i64 137, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 138, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139, !60, i64 139}
!70 = !{!71, !67, i64 0}
!71 = !{!"control_flow_graph", !67, i64 0, !67, i64 8, !67, i64 16, !60, i64 24, !60, i64 28, !60, i64 32, !67, i64 40, !60, i64 48, !61, i64 52, !61, i64 60, !60, i64 68, !60, i64 72}
!72 = !{!73, !67, i64 56}
!73 = !{!"basic_block_def", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !61, i64 32, !67, i64 48, !67, i64 56, !61, i64 64, !74, i64 72, !60, i64 80, !60, i64 84, !60, i64 88, !60, i64 92, !60, i64 96}
!74 = !{!"long", !61, i64 0}
!75 = !{!71, !67, i64 8}
!76 = !{!"branch_weights", i32 1, i32 6652}
!77 = !{!73, !60, i64 80}
!78 = !{!79, !67, i64 16}
!79 = !{!"df_lr_bb_info", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24}
!80 = !{!81, !67, i64 16}
!81 = !{!"df_live_bb_info", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24}
!82 = !{!61, !61, i64 0}
!83 = !{!84, !67, i64 8}
!84 = !{!"rtl_bb_info", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !60, i64 32}
!85 = !{!"branch_weights", i32 247479, i32 1467649}
!86 = !{!"branch_weights", i32 1023244776, i32 -1340321052}
!87 = !{!88, !67, i64 248}
!88 = !{!"df", !61, i64 0, !61, i64 64, !67, i64 128, !89, i64 136, !89, i64 176, !67, i64 216, !67, i64 224, !67, i64 232, !60, i64 240, !60, i64 244, !67, i64 248, !60, i64 256, !60, i64 260, !67, i64 264, !67, i64 272, !67, i64 280, !67, i64 288, !67, i64 296, !67, i64 304, !67, i64 312, !67, i64 320, !67, i64 328, !67, i64 336, !60, i64 344, !60, i64 348, !67, i64 352, !60, i64 360, !60, i64 364, !61, i64 365, !61, i64 366}
!89 = !{!"df_ref_info", !67, i64 0, !67, i64 8, !67, i64 16, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36}
!90 = !{!91, !67, i64 16}
!91 = !{!"df_insn_info", !67, i64 0, !67, i64 8, !67, i64 16, !67, i64 24, !67, i64 32, !60, i64 40}
!92 = !{!"branch_weights", i32 1, i32 1090120}
!93 = !{!"branch_weights", i32 548589, i32 682837}
!94 = !{!"branch_weights", i32 682833, i32 5}
!95 = !{!"branch_weights", i32 321920, i32 360914}
!96 = !{!"branch_weights", i32 3, i32 360912}
!97 = !{!"branch_weights", i32 1, i32 3}
!98 = !{!"branch_weights", i32 3, i32 1}
!99 = !{!"branch_weights", i32 1090120, i32 141305}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!"branch_weights", i32 6652, i32 1701823}
!103 = distinct !{!103, !101}
!104 = !{!"branch_weights", i32 6652, i32 240827}
!105 = distinct !{!105, !101}
!106 = !{!"function_entry_count", i64 247478}
!107 = !{!"init-regs.c:df_lr_get_bb_info"}
!108 = !{!109, !60, i64 16}
!109 = !{!"dataflow", !67, i64 0, !67, i64 8, !60, i64 16, !67, i64 24, !67, i64 32, !67, i64 40, !60, i64 48, !61, i64 52, !61, i64 53, !61, i64 54}
!110 = !{!"branch_weights", i32 247479, i32 1}
!111 = !{!109, !67, i64 8}
!112 = !{!"init-regs.c:df_live_get_bb_info"}
