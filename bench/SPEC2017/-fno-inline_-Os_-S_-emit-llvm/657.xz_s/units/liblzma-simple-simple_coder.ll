; ModuleID = 'liblzma/simple/simple_coder.c'
source_filename = "liblzma/simple/simple_coder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i8, i8, ptr, ptr, i32, i64, i64, i64, i64, [0 x i8] }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_simple_coder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = zext i1 %7 to i8
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = shl i64 %5, 1
  %14 = add i64 %13, 128
  %15 = tail call ptr @lzma_alloc(i64 noundef %14, ptr noundef %1) #4
  store ptr %15, ptr %0, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @simple_code, ptr %18, align 8, !tbaa !12
  %19 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @simple_coder_end, ptr %19, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 7
  store ptr @simple_coder_update, ptr %20, align 8, !tbaa !14
  store ptr null, ptr %15, align 8, !tbaa.struct !15
  %21 = getelementptr inbounds i8, ptr %15, i64 8
  store i64 -1, ptr %21, align 8, !tbaa.struct !18
  %22 = getelementptr inbounds i8, ptr %15, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %22, i8 0, i64 48, i1 false)
  %23 = load ptr, ptr %0, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %23, i64 0, i32 3
  store ptr %3, ptr %24, align 8, !tbaa !16
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %25, i64 0, i32 6
  store i64 %13, ptr %26, align 8, !tbaa !17
  %27 = icmp eq i64 %4, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %17
  %29 = tail call ptr @lzma_alloc(i64 noundef %4, ptr noundef %1) #4
  %30 = load ptr, ptr %0, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 4
  store ptr %29, ptr %31, align 8, !tbaa !16
  %32 = load ptr, ptr %0, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %59, label %38

36:                                               ; preds = %17
  %37 = getelementptr inbounds %struct.lzma_coder_s, ptr %25, i64 0, i32 4
  store ptr null, ptr %37, align 8, !tbaa !16
  br label %38

38:                                               ; preds = %36, %28, %8
  %39 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !19
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %40, align 4, !tbaa !21
  %44 = load ptr, ptr %0, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.lzma_coder_s, ptr %44, i64 0, i32 5
  store i32 %43, ptr %45, align 8, !tbaa !24
  %46 = add i32 %6, -1
  %47 = and i32 %43, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %59

49:                                               ; preds = %38
  %50 = load ptr, ptr %0, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.lzma_coder_s, ptr %50, i64 0, i32 5
  store i32 0, ptr %51, align 8, !tbaa !24
  br label %52

52:                                               ; preds = %42, %49
  %53 = phi ptr [ %44, %42 ], [ %50, %49 ]
  %54 = getelementptr inbounds %struct.lzma_coder_s, ptr %53, i64 0, i32 2
  store i8 %9, ptr %54, align 1, !tbaa !25
  %55 = getelementptr inbounds %struct.lzma_coder_s, ptr %53, i64 0, i32 1
  store i8 0, ptr %55, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct.lzma_coder_s, ptr %53, i64 0, i32 7
  %57 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  %58 = tail call i32 @lzma_next_filter_init(ptr noundef nonnull %53, ptr noundef %1, ptr noundef nonnull %57) #4
  br label %59

59:                                               ; preds = %42, %28, %12, %52
  %60 = phi i32 [ 8, %42 ], [ %58, %52 ], [ 5, %12 ], [ 5, %28 ]
  ret i32 %60
}

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @simple_code(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 {
  %10 = icmp eq i32 %8, 1
  br i1 %10, label %93, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !17
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %19 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %18, ptr noundef nonnull %12, i64 noundef %15, ptr noundef %5, ptr noundef %6, i64 noundef %7) #4
  %20 = load i64, ptr %12, align 8, !tbaa !17
  %21 = load i64, ptr %14, align 8, !tbaa !17
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %93, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %25 = load i8, ptr %24, align 8, !tbaa !25, !range !27, !noundef !28
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %93

27:                                               ; preds = %23, %11
  %28 = phi i64 [ %13, %11 ], [ %20, %23 ]
  store i64 0, ptr %14, align 8, !tbaa !17
  %29 = load i64, ptr %6, align 8, !tbaa !17
  %30 = sub i64 %7, %29
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %32 = load i64, ptr %31, align 8, !tbaa !17
  %33 = sub i64 %32, %28
  %34 = icmp ugt i64 %30, %33
  %35 = icmp eq i64 %32, %28
  %36 = or i1 %35, %34
  br i1 %36, label %37, label %59

37:                                               ; preds = %27
  %38 = getelementptr inbounds i8, ptr %5, i64 %29
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %40 = getelementptr inbounds i8, ptr %39, i64 %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr nonnull align 1 %40, i64 %33, i1 false)
  %41 = add i64 %33, %29
  store i64 %41, ptr %6, align 8, !tbaa !17
  %42 = tail call fastcc i32 @copy_or_code(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8) #5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %93

44:                                               ; preds = %37
  %45 = load i64, ptr %6, align 8, !tbaa !17
  %46 = sub i64 %45, %29
  %47 = tail call fastcc i64 @call_filter(ptr noundef nonnull %0, ptr noundef %38, i64 noundef %46) #5
  %48 = sub i64 %46, %47
  store i64 0, ptr %12, align 8, !tbaa !17
  store i64 %48, ptr %31, align 8, !tbaa !17
  %49 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %50 = load i8, ptr %49, align 8, !tbaa !25, !range !27, !noundef !28
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  store i64 0, ptr %31, align 8, !tbaa !17
  br label %84

53:                                               ; preds = %44
  %54 = icmp eq i64 %46, %47
  br i1 %54, label %64, label %55

55:                                               ; preds = %53
  %56 = load i64, ptr %6, align 8, !tbaa !17
  %57 = sub i64 %56, %48
  store i64 %57, ptr %6, align 8, !tbaa !17
  %58 = getelementptr inbounds i8, ptr %5, i64 %57
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %39, ptr align 1 %58, i64 %48, i1 false)
  br label %64

59:                                               ; preds = %27
  %60 = icmp eq i64 %28, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %63 = getelementptr inbounds i8, ptr %62, i64 %28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %62, ptr nonnull align 1 %63, i64 %33, i1 false)
  store i64 %33, ptr %31, align 8, !tbaa !17
  store i64 0, ptr %12, align 8, !tbaa !17
  br label %64

64:                                               ; preds = %53, %55, %59, %61
  %65 = phi i64 [ %33, %61 ], [ %32, %59 ], [ %48, %55 ], [ %48, %53 ]
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %69 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %70 = load i64, ptr %69, align 8, !tbaa !17
  %71 = tail call fastcc i32 @copy_or_code(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %68, ptr noundef nonnull %31, i64 noundef %70, i32 noundef %8) #5
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = load i64, ptr %31, align 8, !tbaa !17
  %75 = tail call fastcc i64 @call_filter(ptr noundef nonnull %0, ptr noundef nonnull %68, i64 noundef %74) #5
  store i64 %75, ptr %14, align 8, !tbaa !17
  %76 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %77 = load i8, ptr %76, align 8, !tbaa !25, !range !27, !noundef !28
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = load i64, ptr %31, align 8, !tbaa !17
  store i64 %80, ptr %14, align 8, !tbaa !17
  br label %81

81:                                               ; preds = %79, %73
  %82 = phi i64 [ %80, %79 ], [ %75, %73 ]
  %83 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %68, ptr noundef nonnull %12, i64 noundef %82, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #4
  br label %84

84:                                               ; preds = %52, %81, %64
  %85 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %86 = load i8, ptr %85, align 8, !tbaa !25, !range !27, !noundef !28
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i64, ptr %12, align 8, !tbaa !17
  %90 = load i64, ptr %31, align 8, !tbaa !17
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %93, label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %67, %88, %37, %23, %17, %9
  %94 = phi i32 [ 8, %9 ], [ 0, %17 ], [ 1, %23 ], [ 0, %92 ], [ %71, %67 ], [ 1, %88 ], [ %42, %37 ]
  ret i32 %94
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @simple_coder_end(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #4
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  tail call void @lzma_free(ptr noundef %4, ptr noundef %1) #4
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @simple_coder_update(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.lzma_filter, ptr %3, i64 1
  %6 = tail call i32 @lzma_next_filter_update(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #4
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @copy_or_code(ptr nocapture noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = tail call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #4
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %16 = load i8, ptr %15, align 1, !tbaa !25, !range !27, !noundef !28
  %17 = icmp ne i8 %16, 0
  %18 = icmp eq i32 %8, 3
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load i64, ptr %3, align 8, !tbaa !17
  %22 = icmp eq i64 %21, %4
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store i8 1, ptr %24, align 8, !tbaa !25
  br label %31

25:                                               ; preds = %9
  %26 = load ptr, ptr %0, align 8, !tbaa !6
  %27 = tail call i32 %11(ptr noundef %26, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) #4
  switch i32 %27, label %31 [
    i32 1, label %28
    i32 0, label %30
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store i8 1, ptr %29, align 8, !tbaa !25
  br label %30

30:                                               ; preds = %25, %28
  br label %31

31:                                               ; preds = %23, %20, %13, %30, %25
  %32 = phi i32 [ %27, %25 ], [ 0, %30 ], [ 0, %13 ], [ 0, %20 ], [ 0, %23 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @call_filter(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %11 = load i8, ptr %10, align 1, !tbaa !25, !range !27, !noundef !28
  %12 = icmp ne i8 %11, 0
  %13 = tail call i64 %5(ptr noundef %7, i32 noundef %9, i1 noundef zeroext %12, ptr noundef %1, i64 noundef %2) #4
  %14 = load i32, ptr %8, align 8, !tbaa !24
  %15 = trunc i64 %13 to i32
  %16 = add i32 %14, %15
  store i32 %16, ptr %8, align 8, !tbaa !24
  ret i64 %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"lzma_next_coder_s", !8, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!7, !8, i64 24}
!13 = !{!7, !8, i64 32}
!14 = !{!7, !8, i64 56}
!15 = !{i64 0, i64 8, !16, i64 8, i64 8, !17, i64 16, i64 8, !17, i64 24, i64 8, !16, i64 32, i64 8, !16, i64 40, i64 8, !16, i64 48, i64 8, !16, i64 56, i64 8, !16}
!16 = !{!8, !8, i64 0}
!17 = !{!11, !11, i64 0}
!18 = !{i64 0, i64 8, !17, i64 8, i64 8, !17, i64 16, i64 8, !16, i64 24, i64 8, !16, i64 32, i64 8, !16, i64 40, i64 8, !16, i64 48, i64 8, !16}
!19 = !{!20, !8, i64 16}
!20 = !{!"lzma_filter_info_s", !11, i64 0, !8, i64 8, !8, i64 16}
!21 = !{!22, !23, i64 0}
!22 = !{!"", !23, i64 0}
!23 = !{!"int", !9, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"_Bool", !9, i64 0}
!27 = !{i8 0, i8 2}
!28 = !{}
