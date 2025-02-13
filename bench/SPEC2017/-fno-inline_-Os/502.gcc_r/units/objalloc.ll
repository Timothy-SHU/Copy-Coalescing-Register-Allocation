; ModuleID = 'objalloc.c'
source_filename = "objalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.objalloc = type { ptr, i32, ptr }
%struct.objalloc_chunk = type { ptr, ptr }

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define dso_local noalias noundef ptr @objalloc_create() local_unnamed_addr #0 !prof !34 {
  %1 = tail call dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = tail call dereferenceable_or_null(4064) ptr @malloc(i64 noundef 4064) #8
  %5 = getelementptr inbounds %struct.objalloc, ptr %1, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !35
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %1) #9
  br label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %4, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %9, ptr %1, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.objalloc, ptr %1, i64 0, i32 1
  store i32 4048, ptr %10, align 8, !tbaa !42
  br label %11

11:                                               ; preds = %0, %8, %7
  %12 = phi ptr [ null, %7 ], [ %1, %8 ], [ null, %0 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local ptr @_objalloc_alloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !34 {
  %3 = getelementptr inbounds %struct.objalloc, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = tail call i64 @llvm.umax.i64(i64 %1, i64 1)
  %6 = add i64 %5, 7
  %7 = and i64 %6, -8
  %8 = zext i32 %4 to i64
  %9 = icmp ugt i64 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  br label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.objalloc, ptr %0, i64 0, i32 2
  %14 = and i64 %6, 1016
  %15 = icmp ugt i64 %7, 511
  br i1 %15, label %23, label %32

16:                                               ; preds = %10, %35
  %17 = phi ptr [ %11, %10 ], [ %38, %35 ]
  %18 = phi i64 [ %7, %10 ], [ %14, %35 ]
  %19 = phi i32 [ %4, %10 ], [ 4048, %35 ]
  %20 = getelementptr inbounds i8, ptr %17, i64 %18
  store ptr %20, ptr %0, align 8, !tbaa !41
  %21 = trunc i64 %18 to i32
  %22 = sub i32 %19, %21
  store i32 %22, ptr %3, align 8, !tbaa !42
  br label %39

23:                                               ; preds = %12
  %24 = add i64 %7, 16
  %25 = tail call ptr @malloc(i64 noundef %24) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %13, align 8, !tbaa !35
  store ptr %28, ptr %25, align 8, !tbaa !43
  %29 = load ptr, ptr %0, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct.objalloc_chunk, ptr %25, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !45
  store ptr %25, ptr %13, align 8, !tbaa !35
  %31 = getelementptr inbounds i8, ptr %25, i64 16
  br label %39

32:                                               ; preds = %12
  %33 = tail call dereferenceable_or_null(4064) ptr @malloc(i64 noundef 4064) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %13, align 8, !tbaa !35
  store ptr %36, ptr %33, align 8, !tbaa !43
  %37 = getelementptr inbounds %struct.objalloc_chunk, ptr %33, i64 0, i32 1
  store ptr null, ptr %37, align 8, !tbaa !45
  %38 = getelementptr inbounds i8, ptr %33, i64 16
  store ptr %33, ptr %13, align 8, !tbaa !35
  br label %16

39:                                               ; preds = %32, %27, %23, %16
  %40 = phi ptr [ %17, %16 ], [ %31, %27 ], [ null, %23 ], [ null, %32 ]
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @objalloc_free(ptr nocapture noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = getelementptr inbounds %struct.objalloc, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  tail call void @free(ptr noundef nonnull %6) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !46

9:                                                ; preds = %5, %1
  tail call void @free(ptr noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @objalloc_free_block(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !34 {
  %3 = getelementptr inbounds %struct.objalloc, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2, %20
  %7 = phi ptr [ %22, %20 ], [ %4, %2 ]
  %8 = phi ptr [ %21, %20 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.objalloc_chunk, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = icmp ult ptr %7, %1
  %14 = getelementptr inbounds i8, ptr %7, i64 4064
  %15 = icmp ugt ptr %14, %1
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %25, label %20

17:                                               ; preds = %6
  %18 = getelementptr inbounds i8, ptr %7, i64 16
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %52, label %20

20:                                               ; preds = %12, %17
  %21 = phi ptr [ %8, %17 ], [ %7, %12 ]
  %22 = load ptr, ptr %7, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !49

24:                                               ; preds = %20, %2
  tail call void @abort() #10
  unreachable

25:                                               ; preds = %12
  %26 = icmp eq ptr %4, %7
  br i1 %26, label %48, label %27

27:                                               ; preds = %25, %44
  %28 = phi ptr [ %46, %44 ], [ %8, %25 ]
  %29 = phi ptr [ %31, %44 ], [ %4, %25 ]
  %30 = phi ptr [ %45, %44 ], [ null, %25 ]
  %31 = load ptr, ptr %29, align 8, !tbaa !43
  %32 = icmp eq ptr %28, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = icmp eq ptr %28, %29
  %35 = select i1 %34, ptr null, ptr %28
  tail call void @free(ptr noundef nonnull %29) #9
  br label %44

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.objalloc_chunk, ptr %29, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !45
  %39 = icmp ugt ptr %38, %1
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void @free(ptr noundef nonnull %29) #9
  br label %44

41:                                               ; preds = %36
  %42 = icmp eq ptr %30, null
  %43 = select i1 %42, ptr %29, ptr %30
  br label %44

44:                                               ; preds = %41, %40, %33
  %45 = phi ptr [ %30, %33 ], [ %30, %40 ], [ %43, %41 ]
  %46 = phi ptr [ %35, %33 ], [ null, %40 ], [ null, %41 ]
  %47 = icmp eq ptr %31, %7
  br i1 %47, label %48, label %27, !llvm.loop !50

48:                                               ; preds = %44, %25
  %49 = phi ptr [ null, %25 ], [ %45, %44 ]
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr %7, ptr %49
  store ptr %51, ptr %3, align 8, !tbaa !35
  store ptr %1, ptr %0, align 8, !tbaa !41
  br label %72

52:                                               ; preds = %17
  %53 = load ptr, ptr %7, align 8, !tbaa !43
  %54 = icmp eq ptr %4, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %52, %55
  %56 = phi ptr [ %57, %55 ], [ %4, %52 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !43
  tail call void @free(ptr noundef %56) #9
  %58 = icmp eq ptr %57, %53
  br i1 %58, label %59, label %55, !llvm.loop !51

59:                                               ; preds = %55, %52
  store ptr %53, ptr %3, align 8, !tbaa !35
  %60 = getelementptr inbounds %struct.objalloc_chunk, ptr %53, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !45
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %59, %63
  %64 = phi ptr [ %65, %63 ], [ %53, %59 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !43
  %66 = getelementptr inbounds %struct.objalloc_chunk, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !45
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %63, !llvm.loop !52

69:                                               ; preds = %63, %59
  %70 = phi ptr [ %53, %59 ], [ %65, %63 ]
  store ptr %10, ptr %0, align 8, !tbaa !41
  %71 = getelementptr inbounds i8, ptr %70, i64 4064
  br label %72

72:                                               ; preds = %69, %48
  %73 = phi ptr [ %71, %69 ], [ %14, %48 ]
  %74 = phi ptr [ %10, %69 ], [ %1, %48 ]
  %75 = ptrtoint ptr %73 to i64
  %76 = ptrtoint ptr %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct.objalloc, ptr %0, i64 0, i32 1
  store i32 %78, ptr %79, align 8, !tbaa !42
  ret void
}

; Function Attrs: noreturn optsize
declare void @abort() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress noinline nounwind optsize willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { optsize allocsize(0) }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 16}
!36 = !{!"objalloc", !37, i64 0, !40, i64 8, !37, i64 16}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!36, !37, i64 0}
!42 = !{!36, !40, i64 8}
!43 = !{!44, !37, i64 0}
!44 = !{!"objalloc_chunk", !37, i64 0, !37, i64 8}
!45 = !{!44, !37, i64 8}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!37, !37, i64 0}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !47}
!51 = distinct !{!51, !47}
!52 = distinct !{!52, !47}
