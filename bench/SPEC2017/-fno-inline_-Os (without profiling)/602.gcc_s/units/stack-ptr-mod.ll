; ModuleID = 'stack-ptr-mod.c'
source_filename = "stack-ptr-mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }

@pass_stack_ptr_mod = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr null, ptr @rest_of_handle_stack_ptr_mod, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str = private unnamed_addr constant [15 x i8] c"*stack_ptr_mod\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@current_function_sp_is_unchanging = external local_unnamed_addr global i32, align 4
@df = external local_unnamed_addr global ptr, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_stack_ptr_mod() #0 {
  tail call fastcc void @notice_stack_pointer_modification() #3
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @notice_stack_pointer_modification() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 20
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 524288
  %5 = icmp eq i32 %4, 0
  %6 = lshr exact i32 %4, 19
  %7 = xor i32 %6, 1
  store i32 %7, ptr @current_function_sp_is_unchanging, align 4, !tbaa !10
  br i1 %5, label %8, label %62

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %62, label %17

17:                                               ; preds = %8, %52
  %18 = phi i32 [ %53, %52 ], [ %7, %8 ]
  %19 = phi ptr [ %54, %52 ], [ %1, %8 ]
  %20 = phi ptr [ %56, %52 ], [ %13, %8 ]
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  %24 = icmp eq ptr %23, null
  br i1 %24, label %52, label %25

25:                                               ; preds = %17, %44
  %26 = phi i32 [ %45, %44 ], [ %18, %17 ]
  %27 = phi ptr [ %47, %44 ], [ %23, %17 ]
  %28 = load ptr, ptr %21, align 8, !tbaa !20
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !20
  %33 = icmp eq ptr %27, %32
  br i1 %33, label %49, label %34

34:                                               ; preds = %25
  %35 = load i32, ptr %27, align 8
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -7
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !20
  tail call void @note_stores(ptr noundef %41, ptr noundef nonnull @notice_stack_pointer_modification_1, ptr noundef null) #4
  %42 = load i32, ptr @current_function_sp_is_unchanging, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %34, %39
  %45 = phi i32 [ %26, %34 ], [ %42, %39 ]
  %46 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !20
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %25, !llvm.loop !23

49:                                               ; preds = %25, %44
  %50 = phi i32 [ %26, %25 ], [ %45, %44 ]
  %51 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %52

52:                                               ; preds = %49, %17
  %53 = phi i32 [ %50, %49 ], [ %18, %17 ]
  %54 = phi ptr [ %51, %49 ], [ %19, %17 ]
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !16
  %57 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !12
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !19
  %61 = icmp eq ptr %56, %60
  br i1 %61, label %62, label %17, !llvm.loop !25

62:                                               ; preds = %52, %8, %0
  %63 = phi i32 [ %7, %8 ], [ %7, %0 ], [ %53, %52 ]
  %64 = load ptr, ptr @df, align 8, !tbaa !6
  %65 = icmp ne ptr %64, null
  %66 = icmp ne i32 %63, 0
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  tail call void @df_update_exit_block_uses() #4
  br label %69

69:                                               ; preds = %39, %62, %68
  ret void
}

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal void @notice_stack_pointer_modification_1(ptr noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #2 {
  %4 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !6
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %23, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 43
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !10
  %18 = icmp eq i32 %17, 12
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !20
  %22 = icmp eq ptr %21, %4
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %3
  store i32 0, ptr @current_function_sp_is_unchanging, align 4, !tbaa !10
  br label %24

24:                                               ; preds = %23, %19, %10, %6
  ret void
}

; Function Attrs: optsize
declare void @df_update_exit_block_uses() local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !7, i64 8}
!13 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !7, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!14 = !{!15, !7, i64 0}
!15 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !7, i64 40, !11, i64 48, !8, i64 52, !8, i64 60, !11, i64 68, !11, i64 72}
!16 = !{!17, !7, i64 56}
!17 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !18, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!18 = !{!"long", !8, i64 0}
!19 = !{!15, !7, i64 8}
!20 = !{!8, !8, i64 0}
!21 = !{!22, !7, i64 8}
!22 = !{!"rtl_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !11, i64 32}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
