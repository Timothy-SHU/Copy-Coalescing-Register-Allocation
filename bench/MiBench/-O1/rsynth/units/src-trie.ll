; ModuleID = 'src/trie.c'
source_filename = "src/trie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.trie_s = type { ptr, ptr, ptr, i8 }

@.str = private unnamed_addr constant [61 x i8] c"$Id: trie.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@trie_id = dso_local local_unnamed_addr global ptr @.str, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local void @trie_insert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %1, align 1, !tbaa !5
  %5 = icmp ne i8 %4, 0
  tail call void @llvm.assume(i1 %5)
  br label %6

6:                                                ; preds = %3, %22
  %7 = phi i8 [ %25, %22 ], [ %4, %3 ]
  %8 = phi ptr [ %10, %22 ], [ %1, %3 ]
  %9 = phi ptr [ %24, %22 ], [ %0, %3 ]
  %10 = getelementptr inbounds i8, ptr %8, i64 1
  br label %11

11:                                               ; preds = %6, %15
  %12 = phi ptr [ %13, %15 ], [ %9, %6 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.trie_s, ptr %13, i64 0, i32 3
  %17 = load i8, ptr %16, align 8, !tbaa !10
  %18 = icmp eq i8 %17, %7
  br i1 %18, label %22, label %11, !llvm.loop !12

19:                                               ; preds = %11
  %20 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, i8 0, i64 32, i1 false)
  %21 = getelementptr inbounds %struct.trie_s, ptr %20, i64 0, i32 3
  store i8 %7, ptr %21, align 8, !tbaa !10
  store ptr %20, ptr %12, align 8, !tbaa !8
  br label %22

22:                                               ; preds = %15, %19
  %23 = phi ptr [ %20, %19 ], [ %13, %15 ]
  %24 = getelementptr inbounds %struct.trie_s, ptr %23, i64 0, i32 1
  %25 = load i8, ptr %10, align 1, !tbaa !5
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %6, !llvm.loop !14

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.trie_s, ptr %23, i64 0, i32 2
  store ptr %2, ptr %28, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @trie_lookup(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %1, align 8, !tbaa !8
  br label %4

4:                                                ; preds = %25, %2
  %5 = phi ptr [ null, %2 ], [ %26, %25 ]
  %6 = phi ptr [ %3, %2 ], [ %27, %25 ]
  %7 = phi ptr [ %0, %2 ], [ %28, %25 ]
  %8 = load i8, ptr %6, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %4, %14
  %11 = phi ptr [ %12, %14 ], [ %7, %4 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.trie_s, ptr %12, i64 0, i32 3
  %16 = load i8, ptr %15, align 8, !tbaa !10
  %17 = icmp eq i8 %16, %8
  br i1 %17, label %18, label %10, !llvm.loop !16

18:                                               ; preds = %14
  %19 = load ptr, ptr %12, align 8, !tbaa !17
  store ptr %19, ptr %11, align 8, !tbaa !8
  %20 = load ptr, ptr %7, align 8, !tbaa !8
  store ptr %20, ptr %12, align 8, !tbaa !17
  store ptr %12, ptr %7, align 8, !tbaa !8
  %21 = getelementptr inbounds %struct.trie_s, ptr %12, i64 0, i32 1
  %22 = getelementptr inbounds %struct.trie_s, ptr %12, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = getelementptr inbounds i8, ptr %6, i64 1
  br label %25

25:                                               ; preds = %10, %18
  %26 = phi ptr [ %23, %18 ], [ %5, %10 ]
  %27 = phi ptr [ %24, %18 ], [ %6, %10 ]
  %28 = phi ptr [ %21, %18 ], [ %7, %10 ]
  br i1 %13, label %29, label %4

29:                                               ; preds = %25, %4
  %30 = phi ptr [ %26, %25 ], [ %5, %4 ]
  %31 = phi ptr [ %27, %25 ], [ %6, %4 ]
  store ptr %31, ptr %1, align 8, !tbaa !8
  ret ptr %30
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !6, i64 24}
!11 = !{!"trie_s", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = !{!11, !9, i64 16}
!16 = distinct !{!16, !13}
!17 = !{!11, !9, i64 0}
