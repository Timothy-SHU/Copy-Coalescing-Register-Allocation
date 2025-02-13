; ModuleID = 'xatexit.c'
source_filename = "xatexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xatexit = type { ptr, i32, [32 x ptr] }

@_xexit_cleanup = external local_unnamed_addr global ptr, align 8
@xatexit_head = internal unnamed_addr global ptr @xatexit_first, align 8
@xatexit_first = internal global %struct.xatexit zeroinitializer, align 8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define dso_local noundef i32 @xatexit(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @_xexit_cleanup, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr @xatexit_cleanup, ptr @_xexit_cleanup, align 8, !tbaa !36
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @xatexit_head, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.xatexit, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !40
  %9 = icmp sgt i32 %8, 31
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = tail call dereferenceable_or_null(272) ptr @malloc(i64 noundef 272) #3
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.xatexit, ptr %11, i64 0, i32 1
  store i32 0, ptr %14, align 8, !tbaa !40
  store ptr %6, ptr %11, align 8, !tbaa !43
  store ptr %11, ptr @xatexit_head, align 8, !tbaa !36
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i32 [ 0, %13 ], [ %8, %5 ]
  %17 = phi ptr [ %11, %13 ], [ %6, %5 ]
  %18 = getelementptr inbounds %struct.xatexit, ptr %17, i64 0, i32 1
  %19 = add nsw i32 %16, 1
  store i32 %19, ptr %18, align 8, !tbaa !40
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds %struct.xatexit, ptr %17, i64 0, i32 2, i64 %20
  store ptr %0, ptr %21, align 8, !tbaa !36
  br label %22

22:                                               ; preds = %10, %15
  %23 = phi i32 [ 0, %15 ], [ -1, %10 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @xatexit_cleanup() #1 !prof !35 !PGOFuncName !44 {
  %1 = load ptr, ptr @xatexit_head, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %6

3:                                                ; preds = %13, %6
  %4 = load ptr, ptr %7, align 8, !tbaa !36
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6, !llvm.loop !45

6:                                                ; preds = %0, %3
  %7 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %8 = getelementptr inbounds %struct.xatexit, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !40
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %3

11:                                               ; preds = %6
  %12 = zext nneg i32 %9 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ %12, %11 ], [ %15, %13 ]
  %15 = add nsw i64 %14, -1
  %16 = getelementptr inbounds %struct.xatexit, ptr %7, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  tail call void %17() #4
  %18 = icmp ugt i64 %14, 1
  br i1 %18, label %13, label %3, !llvm.loop !47

19:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize allocsize(0) }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !42, i64 8}
!41 = !{!"xatexit", !37, i64 0, !42, i64 8, !38, i64 16}
!42 = !{!"int", !38, i64 0}
!43 = !{!41, !37, i64 0}
!44 = !{!"xatexit.c:xatexit_cleanup"}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
