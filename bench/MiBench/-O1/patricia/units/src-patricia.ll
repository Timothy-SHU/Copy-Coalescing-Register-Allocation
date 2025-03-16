; ModuleID = 'src/patricia.c'
source_filename = "src/patricia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ptree = type { i64, ptr, i8, i8, ptr, ptr }
%struct.ptree_mask = type { i64, ptr }

; Function Attrs: nounwind uwtable
define dso_local ptr @pat_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %122

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %122, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %8, align 8, !tbaa !11
  %12 = load i64, ptr %0, align 8, !tbaa !13
  %13 = and i64 %12, %11
  store i64 %13, ptr %0, align 8, !tbaa !13
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %1, %10 ], [ %26, %14 ]
  %16 = getelementptr inbounds %struct.ptree, ptr %15, i64 0, i32 3
  %17 = load i8, ptr %16, align 1, !tbaa !14
  %18 = zext nneg i8 %17 to i32
  %19 = lshr exact i32 -2147483648, %18
  %20 = sext i32 %19 to i64
  %21 = and i64 %13, %20
  %22 = icmp eq i64 %21, 0
  %23 = getelementptr inbounds %struct.ptree, ptr %15, i64 0, i32 5
  %24 = getelementptr inbounds %struct.ptree, ptr %15, i64 0, i32 4
  %25 = select i1 %22, ptr %24, ptr %23
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = getelementptr inbounds %struct.ptree, ptr %26, i64 0, i32 3
  %28 = load i8, ptr %27, align 1, !tbaa !14
  %29 = icmp slt i8 %17, %28
  br i1 %29, label %14, label %30, !llvm.loop !16

30:                                               ; preds = %14
  %31 = load i64, ptr %26, align 8, !tbaa !13
  %32 = icmp eq i64 %13, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = xor i64 %31, %13
  br label %96

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ptree, ptr %26, i64 0, i32 2
  %37 = load i8, ptr %36, align 8, !tbaa !18
  %38 = zext i8 %37 to i64
  %39 = icmp eq i8 %37, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ptree, ptr %26, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = zext i8 %37 to i64
  br label %47

44:                                               ; preds = %47
  %45 = add nuw nsw i64 %48, 1
  %46 = icmp eq i64 %45, %43
  br i1 %46, label %56, label %47, !llvm.loop !19

47:                                               ; preds = %40, %44
  %48 = phi i64 [ 0, %40 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.ptree_mask, ptr %42, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !11
  %51 = icmp eq i64 %11, %50
  br i1 %51, label %52, label %44

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ptree_mask, ptr %8, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !20
  %55 = getelementptr inbounds %struct.ptree_mask, ptr %42, i64 %48, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !20
  tail call void @free(ptr noundef %8) #7
  tail call void @free(ptr noundef %0) #7
  br label %122

56:                                               ; preds = %44, %35
  %57 = getelementptr inbounds %struct.ptree, ptr %26, i64 0, i32 2
  %58 = shl nuw nsw i64 %38, 4
  %59 = add nuw nsw i64 %58, 16
  %60 = tail call noalias ptr @malloc(i64 noundef %59) #8
  %61 = load i8, ptr %57, align 8, !tbaa !18
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.ptree, ptr %26, i64 0, i32 1
  br label %65

65:                                               ; preds = %63, %78
  %66 = phi i32 [ 0, %63 ], [ %80, %78 ]
  %67 = phi i32 [ 0, %63 ], [ %79, %78 ]
  %68 = phi ptr [ %60, %63 ], [ %81, %78 ]
  %69 = load i64, ptr %8, align 8, !tbaa !11
  %70 = load ptr, ptr %64, align 8, !tbaa !5
  %71 = sext i32 %67 to i64
  %72 = getelementptr inbounds %struct.ptree_mask, ptr %70, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !11
  %74 = icmp ugt i64 %69, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull align 8 dereferenceable(16) %72, i64 16, i1 false)
  %76 = add nsw i32 %67, 1
  br label %78

77:                                               ; preds = %65
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  store i64 4294967295, ptr %8, align 8, !tbaa !11
  br label %78

78:                                               ; preds = %75, %77
  %79 = phi i32 [ %76, %75 ], [ %67, %77 ]
  %80 = phi i32 [ %66, %75 ], [ 1, %77 ]
  %81 = getelementptr inbounds %struct.ptree_mask, ptr %68, i64 1
  %82 = load i8, ptr %57, align 8, !tbaa !18
  %83 = zext i8 %82 to i32
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %65, label %85, !llvm.loop !21

85:                                               ; preds = %78
  %86 = icmp eq i32 %80, 0
  br label %87

87:                                               ; preds = %85, %56
  %88 = phi ptr [ %60, %56 ], [ %81, %85 ]
  %89 = phi i1 [ true, %56 ], [ %86, %85 ]
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %88, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  br label %91

91:                                               ; preds = %90, %87
  tail call void @free(ptr noundef %8) #7
  tail call void @free(ptr noundef %0) #7
  %92 = load i8, ptr %57, align 8, !tbaa !18
  %93 = add i8 %92, 1
  store i8 %93, ptr %57, align 8, !tbaa !18
  %94 = getelementptr inbounds %struct.ptree, ptr %26, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  tail call void @free(ptr noundef %95) #7
  store ptr %60, ptr %94, align 8, !tbaa !5
  br label %122

96:                                               ; preds = %33, %102
  %97 = phi i32 [ 1, %33 ], [ %103, %102 ]
  %98 = lshr exact i32 -2147483648, %97
  %99 = zext nneg i32 %98 to i64
  %100 = and i64 %34, %99
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = add nuw nsw i32 %97, 1
  %104 = icmp eq i32 %103, 32
  br i1 %104, label %105, label %96, !llvm.loop !22

105:                                              ; preds = %102, %96
  %106 = phi i32 [ 32, %102 ], [ %97, %96 ]
  %107 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %108 = load i8, ptr %107, align 1, !tbaa !14
  %109 = zext nneg i8 %108 to i32
  %110 = lshr exact i32 -2147483648, %109
  %111 = sext i32 %110 to i64
  %112 = and i64 %13, %111
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !23
  %117 = tail call fastcc ptr @insertR(ptr noundef %116, ptr noundef nonnull %0, i32 noundef %106, ptr noundef nonnull %1)
  store ptr %117, ptr %115, align 8, !tbaa !23
  br label %122

118:                                              ; preds = %105
  %119 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !24
  %121 = tail call fastcc ptr @insertR(ptr noundef %120, ptr noundef nonnull %0, i32 noundef %106, ptr noundef nonnull %1)
  store ptr %121, ptr %119, align 8, !tbaa !24
  br label %122

122:                                              ; preds = %114, %118, %2, %6, %91, %52
  %123 = phi ptr [ %26, %52 ], [ %26, %91 ], [ null, %6 ], [ null, %2 ], [ %0, %118 ], [ %0, %114 ]
  ret ptr %123
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @insertR(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 1, !tbaa !14
  %7 = sext i8 %6 to i32
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ptree, ptr %3, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !14
  %12 = icmp sgt i8 %6, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %9, %4
  %14 = trunc i32 %2 to i8
  %15 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  store i8 %14, ptr %15, align 1, !tbaa !14
  %16 = load i64, ptr %1, align 8, !tbaa !13
  %17 = lshr exact i32 -2147483648, %2
  %18 = sext i32 %17 to i64
  %19 = and i64 %16, %18
  %20 = icmp eq i64 %19, 0
  %21 = select i1 %20, ptr %1, ptr %0
  %22 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !24
  %23 = select i1 %20, ptr %0, ptr %1
  %24 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 5
  store ptr %23, ptr %24, align 8, !tbaa !23
  br label %31

25:                                               ; preds = %9
  %26 = load i64, ptr %1, align 8, !tbaa !13
  %27 = lshr exact i32 -2147483648, %7
  %28 = sext i32 %27 to i64
  %29 = and i64 %26, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %37, label %33

31:                                               ; preds = %13, %37, %33
  %32 = phi ptr [ %0, %33 ], [ %0, %37 ], [ %1, %13 ]
  ret ptr %32

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !23
  %36 = tail call fastcc ptr @insertR(ptr noundef %35, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %0)
  store ptr %36, ptr %34, align 8, !tbaa !23
  br label %31

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !24
  %40 = tail call fastcc ptr @insertR(ptr noundef %39, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %0)
  store ptr %40, ptr %38, align 8, !tbaa !24
  br label %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @pat_remove(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #5 {
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @pat_search(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %13, %4 ], [ null, %2 ]
  %6 = phi ptr [ %24, %4 ], [ %1, %2 ]
  %7 = load i64, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.ptree, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = load i64, ptr %9, align 8, !tbaa !11
  %11 = and i64 %10, %0
  %12 = icmp eq i64 %7, %11
  %13 = select i1 %12, ptr %6, ptr %5
  %14 = getelementptr inbounds %struct.ptree, ptr %6, i64 0, i32 3
  %15 = load i8, ptr %14, align 1, !tbaa !14
  %16 = zext nneg i8 %15 to i32
  %17 = lshr exact i32 -2147483648, %16
  %18 = sext i32 %17 to i64
  %19 = and i64 %18, %0
  %20 = icmp eq i64 %19, 0
  %21 = getelementptr inbounds %struct.ptree, ptr %6, i64 0, i32 5
  %22 = getelementptr inbounds %struct.ptree, ptr %6, i64 0, i32 4
  %23 = select i1 %20, ptr %22, ptr %21
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.ptree, ptr %24, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !14
  %27 = icmp slt i8 %15, %26
  br i1 %27, label %4, label %28, !llvm.loop !25

28:                                               ; preds = %4
  %29 = load i64, ptr %24, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.ptree, ptr %24, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = load i64, ptr %31, align 8, !tbaa !11
  %33 = and i64 %32, %0
  %34 = icmp eq i64 %29, %33
  %35 = select i1 %34, ptr %24, ptr %13
  br label %36

36:                                               ; preds = %2, %28
  %37 = phi ptr [ %35, %28 ], [ null, %2 ]
  ret ptr %37
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 8}
!6 = !{!"ptree", !7, i64 0, !10, i64 8, !8, i64 16, !8, i64 17, !10, i64 24, !10, i64 32}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"ptree_mask", !7, i64 0, !10, i64 8}
!13 = !{!6, !7, i64 0}
!14 = !{!6, !8, i64 17}
!15 = !{!10, !10, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!6, !8, i64 16}
!19 = distinct !{!19, !17}
!20 = !{!12, !10, i64 8}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = !{!6, !10, i64 32}
!24 = !{!6, !10, i64 24}
!25 = distinct !{!25, !17}
