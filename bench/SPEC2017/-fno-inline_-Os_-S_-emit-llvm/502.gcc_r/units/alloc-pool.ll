; ModuleID = 'alloc-pool.c'
source_filename = "alloc-pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.alloc_pool_def = type { ptr, i64, ptr, ptr, i64, i64, i64, i64, ptr, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"alloc-pool.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_alloc_pool(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @.str.1) #6
  br label %6

6:                                                ; preds = %3, %5
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 155, ptr noundef nonnull @.str.1) #6
  br label %9

9:                                                ; preds = %6, %8
  %10 = tail call i64 @llvm.umax.i64(i64 %1, i64 8)
  %11 = add i64 %10, 7
  %12 = and i64 %11, -8
  %13 = tail call ptr @xmalloc(i64 noundef 88) #6
  store ptr %0, ptr %13, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.alloc_pool_def, ptr %13, i64 0, i32 10
  store i64 %12, ptr %14, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.alloc_pool_def, ptr %13, i64 0, i32 1
  store i64 %2, ptr %15, align 8, !tbaa !12
  %16 = mul i64 %12, %2
  %17 = add i64 %16, 8
  %18 = getelementptr inbounds %struct.alloc_pool_def, ptr %13, i64 0, i32 9
  store i64 %17, ptr %18, align 8, !tbaa !13
  %19 = getelementptr inbounds %struct.alloc_pool_def, ptr %13, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %19, i8 0, i64 56, i1 false)
  ret ptr %13
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @empty_alloc_pool(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 204, ptr noundef nonnull @.str.1) #6
  br label %4

4:                                                ; preds = %1, %3
  %5 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  tail call void @free(ptr noundef nonnull %9) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !17

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_alloc_pool(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @empty_alloc_pool(ptr noundef %0) #7
  tail call void @free(ptr noundef %0) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_alloc_pool_if_empty(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.alloc_pool_def, ptr %2, i64 0, i32 6
  %4 = load i64, ptr %3, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.alloc_pool_def, ptr %2, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !21
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @free_alloc_pool(ptr noundef nonnull %2) #7
  store ptr null, ptr %0, align 8, !tbaa !19
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @pool_alloc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 263, ptr noundef nonnull @.str.1) #6
  br label %4

4:                                                ; preds = %1, %3
  %5 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !15
  br label %42

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !23
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  br label %34

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 9
  %19 = load i64, ptr %18, align 8, !tbaa !13
  %20 = tail call ptr @xmalloc(i64 noundef %19) #6
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  %22 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  store ptr %23, ptr %20, align 8, !tbaa !15
  store ptr %20, ptr %22, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 5
  %27 = load <2 x i64>, ptr %26, align 8, !tbaa !25
  %28 = insertelement <2 x i64> poison, i64 %25, i64 0
  %29 = shufflevector <2 x i64> %28, <2 x i64> poison, <2 x i32> zeroinitializer
  %30 = add <2 x i64> %27, %29
  store <2 x i64> %30, ptr %26, align 8, !tbaa !25
  %31 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 7
  %32 = load i64, ptr %31, align 8, !tbaa !26
  %33 = add i64 %32, 1
  store i64 %33, ptr %31, align 8, !tbaa !26
  br label %34

34:                                               ; preds = %14, %17
  %35 = phi i64 [ %12, %14 ], [ %25, %17 ]
  %36 = phi ptr [ %16, %14 ], [ %21, %17 ]
  %37 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 3
  store ptr null, ptr %36, align 8, !tbaa !15
  %38 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 10
  %39 = load i64, ptr %38, align 8, !tbaa !11
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  store ptr %40, ptr %37, align 8, !tbaa !24
  %41 = add i64 %35, -1
  store i64 %41, ptr %11, align 8, !tbaa !23
  br label %42

42:                                               ; preds = %8, %34
  %43 = phi ptr [ null, %34 ], [ %9, %8 ]
  %44 = phi ptr [ %36, %34 ], [ %6, %8 ]
  store ptr %43, ptr %5, align 8, !tbaa !22
  %45 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 6
  %46 = load i64, ptr %45, align 8, !tbaa !20
  %47 = add i64 %46, -1
  store i64 %47, ptr %45, align 8, !tbaa !20
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pool_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 331, ptr noundef nonnull @.str.1) #6
  br label %5

5:                                                ; preds = %2, %4
  %6 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 6
  %7 = load i64, ptr %6, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !21
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 343, ptr noundef nonnull @.str.1) #6
  %12 = load i64, ptr %6, align 8, !tbaa !20
  br label %13

13:                                               ; preds = %5, %11
  %14 = phi i64 [ %7, %5 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.alloc_pool_def, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  store ptr %16, ptr %1, align 8, !tbaa !15
  store ptr %1, ptr %15, align 8, !tbaa !22
  %17 = add i64 %14, 1
  store i64 %17, ptr %6, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @dump_alloc_pool_statistics() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"alloc_pool_def", !7, i64 0, !10, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !7, i64 64, !10, i64 72, !10, i64 80}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !10, i64 80}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !10, i64 72}
!14 = !{!6, !7, i64 64}
!15 = !{!16, !7, i64 0}
!16 = !{!"alloc_pool_list_def", !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!7, !7, i64 0}
!20 = !{!6, !10, i64 48}
!21 = !{!6, !10, i64 40}
!22 = !{!6, !7, i64 16}
!23 = !{!6, !10, i64 32}
!24 = !{!6, !7, i64 24}
!25 = !{!10, !10, i64 0}
!26 = !{!6, !10, i64 56}
