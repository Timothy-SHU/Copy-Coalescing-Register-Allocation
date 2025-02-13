; ModuleID = 'blender/source/blender/blenlib/intern/callbacks.c'
source_filename = "blender/source/blender/blenlib/intern/callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.bCallbackFuncStore = type { ptr, ptr, ptr, ptr, i16 }

@callback_slots = internal global [17 x %struct.ListBase] zeroinitializer, align 16
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_callback_exec(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds [17 x %struct.ListBase], ptr @callback_slots, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 16, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %14, %8 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.bCallbackFuncStore, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.bCallbackFuncStore, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  tail call void %11(ptr noundef %0, ptr noundef %1, ptr noundef %13) #3
  %14 = load ptr, ptr %9, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !42

16:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_callback_add(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [17 x %struct.ListBase], ptr @callback_slots, i64 0, i64 %3
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %0) #3
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @BLI_callback_global_init() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_callback_global_finalize() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %16
  %2 = phi i64 [ 0, %0 ], [ %17, %16 ]
  %3 = getelementptr inbounds [17 x %struct.ListBase], ptr @callback_slots, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 16, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1, %14
  %7 = phi ptr [ %8, %14 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %7) #3
  %9 = getelementptr inbounds %struct.bCallbackFuncStore, ptr %7, i64 0, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !47
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %7) #3
  br label %14

14:                                               ; preds = %6, %12
  %15 = icmp eq ptr %8, null
  br i1 %15, label %16, label %6, !llvm.loop !48

16:                                               ; preds = %14, %1
  %17 = add nuw nsw i64 %2, 1
  %18 = icmp eq i64 %17, 17
  br i1 %18, label %19, label %1, !llvm.loop !49

19:                                               ; preds = %16
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 16}
!39 = !{!"bCallbackFuncStore", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32}
!40 = !{!"short", !36, i64 0}
!41 = !{!39, !35, i64 24}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!45, !35, i64 0}
!45 = !{!"ListBase", !35, i64 0, !35, i64 8}
!46 = !{!39, !35, i64 0}
!47 = !{!39, !40, i64 32}
!48 = distinct !{!48, !43}
!49 = distinct !{!49, !43}
