; ModuleID = 'liblzma/simple/simple_coder.c'
source_filename = "liblzma/simple/simple_coder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i8, i8, ptr, ptr, i32, i64, i64, i64, i64, [0 x i8] }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_simple_coder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 !prof !34 {
  %9 = zext i1 %7 to i8
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = shl i64 %5, 1
  %14 = add i64 %13, 128
  %15 = tail call ptr @lzma_alloc(i64 noundef %14, ptr noundef %1) #4
  store ptr %15, ptr %0, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @simple_code, ptr %18, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @simple_coder_end, ptr %19, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 7
  store ptr @simple_coder_update, ptr %20, align 8, !tbaa !43
  store ptr null, ptr %15, align 8, !tbaa.struct !44
  %21 = getelementptr inbounds i8, ptr %15, i64 8
  store i64 -1, ptr %21, align 8, !tbaa.struct !47
  %22 = getelementptr inbounds i8, ptr %15, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %22, i8 0, i64 48, i1 false)
  %23 = load ptr, ptr %0, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %23, i64 0, i32 3
  store ptr %3, ptr %24, align 8, !tbaa !45
  %25 = load ptr, ptr %0, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %25, i64 0, i32 6
  store i64 %13, ptr %26, align 8, !tbaa !46
  %27 = icmp eq i64 %4, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %17
  %29 = tail call ptr @lzma_alloc(i64 noundef %4, ptr noundef %1) #4
  %30 = load ptr, ptr %0, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 4
  store ptr %29, ptr %31, align 8, !tbaa !45
  %32 = load ptr, ptr %0, align 8, !tbaa !35
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  %35 = icmp eq ptr %34, null
  br i1 %35, label %59, label %38

36:                                               ; preds = %17
  %37 = getelementptr inbounds %struct.lzma_coder_s, ptr %25, i64 0, i32 4
  store ptr null, ptr %37, align 8, !tbaa !45
  br label %38

38:                                               ; preds = %36, %28, %8
  %39 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %40, align 4, !tbaa !50
  %44 = load ptr, ptr %0, align 8, !tbaa !35
  %45 = getelementptr inbounds %struct.lzma_coder_s, ptr %44, i64 0, i32 5
  store i32 %43, ptr %45, align 8, !tbaa !53
  %46 = add i32 %6, -1
  %47 = and i32 %43, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %59

49:                                               ; preds = %38
  %50 = load ptr, ptr %0, align 8, !tbaa !35
  %51 = getelementptr inbounds %struct.lzma_coder_s, ptr %50, i64 0, i32 5
  store i32 0, ptr %51, align 8, !tbaa !53
  br label %52

52:                                               ; preds = %42, %49
  %53 = load ptr, ptr %0, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.lzma_coder_s, ptr %53, i64 0, i32 2
  store i8 %9, ptr %54, align 1, !tbaa !54
  %55 = getelementptr inbounds %struct.lzma_coder_s, ptr %53, i64 0, i32 1
  store i8 0, ptr %55, align 8, !tbaa !54
  %56 = getelementptr inbounds %struct.lzma_coder_s, ptr %53, i64 0, i32 7
  %57 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  %58 = tail call i32 @lzma_next_filter_init(ptr noundef %53, ptr noundef %1, ptr noundef nonnull %57) #4
  br label %59

59:                                               ; preds = %42, %28, %12, %52
  %60 = phi i32 [ 8, %42 ], [ %58, %52 ], [ 5, %12 ], [ 5, %28 ]
  ret i32 %60
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal i32 @simple_code(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 !prof !34 {
  %10 = icmp eq i32 %8, 1
  br i1 %10, label %119, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !46
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %19 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %18, ptr noundef nonnull %12, i64 noundef %15, ptr noundef %5, ptr noundef %6, i64 noundef %7) #4
  %20 = load i64, ptr %12, align 8, !tbaa !46
  %21 = load i64, ptr %14, align 8, !tbaa !46
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %119, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %25 = load i8, ptr %24, align 8, !tbaa !54, !range !56, !noundef !57
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %119

27:                                               ; preds = %23, %11
  store i64 0, ptr %14, align 8, !tbaa !46
  %28 = load i64, ptr %6, align 8, !tbaa !46
  %29 = sub i64 %7, %28
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %31 = load i64, ptr %30, align 8, !tbaa !46
  %32 = load i64, ptr %12, align 8, !tbaa !46
  %33 = sub i64 %31, %32
  %34 = icmp ugt i64 %29, %33
  %35 = icmp eq i64 %31, %32
  %36 = or i1 %35, %34
  br i1 %36, label %37, label %71

37:                                               ; preds = %27
  %38 = getelementptr inbounds i8, ptr %5, i64 %28
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %40 = getelementptr inbounds i8, ptr %39, i64 %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr nonnull align 1 %40, i64 %33, i1 false)
  %41 = add i64 %33, %28
  store i64 %41, ptr %6, align 8, !tbaa !46
  %42 = tail call fastcc i32 @copy_or_code(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %119

44:                                               ; preds = %37
  %45 = load i64, ptr %6, align 8, !tbaa !46
  %46 = sub i64 %45, %28
  %47 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !45
  %49 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !45
  %51 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !53
  %53 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %54 = load i8, ptr %53, align 1, !tbaa !54, !range !56, !noundef !57
  %55 = icmp ne i8 %54, 0
  %56 = tail call i64 %48(ptr noundef %50, i32 noundef %52, i1 noundef zeroext %55, ptr noundef %38, i64 noundef %46) #4
  %57 = load i32, ptr %51, align 8, !tbaa !53
  %58 = trunc i64 %56 to i32
  %59 = add i32 %57, %58
  store i32 %59, ptr %51, align 8, !tbaa !53
  %60 = sub i64 %46, %56
  store i64 0, ptr %12, align 8, !tbaa !46
  store i64 %60, ptr %30, align 8, !tbaa !46
  %61 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %62 = load i8, ptr %61, align 8, !tbaa !54, !range !56, !noundef !57
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %44
  store i64 0, ptr %30, align 8, !tbaa !46
  br label %76

65:                                               ; preds = %44
  %66 = icmp eq i64 %46, %56
  br i1 %66, label %76, label %67

67:                                               ; preds = %65
  %68 = load i64, ptr %6, align 8, !tbaa !46
  %69 = sub i64 %68, %60
  store i64 %69, ptr %6, align 8, !tbaa !46
  %70 = getelementptr inbounds i8, ptr %5, i64 %69
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %39, ptr align 1 %70, i64 %60, i1 false)
  br label %76

71:                                               ; preds = %27
  %72 = icmp eq i64 %32, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %75 = getelementptr inbounds i8, ptr %74, i64 %32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %74, ptr nonnull align 1 %75, i64 %33, i1 false)
  store i64 %33, ptr %30, align 8, !tbaa !46
  store i64 0, ptr %12, align 8, !tbaa !46
  br label %76

76:                                               ; preds = %65, %67, %64, %71, %73
  %77 = phi i32 [ undef, %73 ], [ undef, %71 ], [ %42, %64 ], [ %42, %67 ], [ %42, %65 ]
  %78 = load i64, ptr %30, align 8, !tbaa !46
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %110, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %82 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %83 = load i64, ptr %82, align 8, !tbaa !46
  %84 = tail call fastcc i32 @copy_or_code(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %81, ptr noundef nonnull %30, i64 noundef %83, i32 noundef %8)
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 %77, i32 %84
  br i1 %85, label %87, label %119

87:                                               ; preds = %80
  %88 = load i64, ptr %30, align 8, !tbaa !46
  %89 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !45
  %91 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !45
  %93 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %94 = load i32, ptr %93, align 8, !tbaa !53
  %95 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %96 = load i8, ptr %95, align 1, !tbaa !54, !range !56, !noundef !57
  %97 = icmp ne i8 %96, 0
  %98 = tail call i64 %90(ptr noundef %92, i32 noundef %94, i1 noundef zeroext %97, ptr noundef nonnull %81, i64 noundef %88) #4
  %99 = load i32, ptr %93, align 8, !tbaa !53
  %100 = trunc i64 %98 to i32
  %101 = add i32 %99, %100
  store i32 %101, ptr %93, align 8, !tbaa !53
  store i64 %98, ptr %14, align 8, !tbaa !46
  %102 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %103 = load i8, ptr %102, align 8, !tbaa !54, !range !56, !noundef !57
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %87
  %106 = load i64, ptr %30, align 8, !tbaa !46
  store i64 %106, ptr %14, align 8, !tbaa !46
  br label %107

107:                                              ; preds = %105, %87
  %108 = load i64, ptr %14, align 8, !tbaa !46
  %109 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %81, ptr noundef nonnull %12, i64 noundef %108, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #4
  br label %110

110:                                              ; preds = %107, %76
  %111 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %112 = load i8, ptr %111, align 8, !tbaa !54, !range !56, !noundef !57
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i64, ptr %12, align 8, !tbaa !46
  %116 = load i64, ptr %30, align 8, !tbaa !46
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %119, label %118

118:                                              ; preds = %114, %110
  br label %119

119:                                              ; preds = %118, %80, %114, %37, %23, %17, %9
  %120 = phi i32 [ 8, %9 ], [ 0, %17 ], [ 1, %23 ], [ 0, %118 ], [ %86, %80 ], [ 1, %114 ], [ %42, %37 ]
  ret i32 %120
}

; Function Attrs: cold nounwind uwtable
define internal void @simple_coder_end(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #4
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  tail call void @lzma_free(ptr noundef %4, ptr noundef %1) #4
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal i32 @simple_coder_update(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #0 !prof !34 {
  %5 = getelementptr inbounds %struct.lzma_filter, ptr %3, i64 1
  %6 = tail call i32 @lzma_next_filter_update(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #4
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @copy_or_code(ptr nocapture noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) unnamed_addr #0 !prof !34 {
  %10 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = tail call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #4
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %16 = load i8, ptr %15, align 1, !tbaa !54, !range !56, !noundef !57
  %17 = icmp ne i8 %16, 0
  %18 = icmp eq i32 %8, 3
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load i64, ptr %3, align 8, !tbaa !46
  %22 = icmp eq i64 %21, %4
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store i8 1, ptr %24, align 8, !tbaa !54
  br label %31

25:                                               ; preds = %9
  %26 = load ptr, ptr %0, align 8, !tbaa !35
  %27 = tail call i32 %11(ptr noundef %26, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) #4
  switch i32 %27, label %31 [
    i32 1, label %28
    i32 0, label %30
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store i8 1, ptr %29, align 8, !tbaa !54
  br label %30

30:                                               ; preds = %25, %28
  br label %31

31:                                               ; preds = %23, %20, %13, %30, %25
  %32 = phi i32 [ %27, %25 ], [ 0, %30 ], [ 0, %13 ], [ 0, %20 ], [ 0, %23 ]
  ret i32 %32
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"lzma_next_coder_s", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!36, !37, i64 24}
!42 = !{!36, !37, i64 32}
!43 = !{!36, !37, i64 56}
!44 = !{i64 0, i64 8, !45, i64 8, i64 8, !46, i64 16, i64 8, !46, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 8, !45, i64 48, i64 8, !45, i64 56, i64 8, !45}
!45 = !{!37, !37, i64 0}
!46 = !{!40, !40, i64 0}
!47 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 8, !45, i64 48, i64 8, !45}
!48 = !{!49, !37, i64 16}
!49 = !{!"lzma_filter_info_s", !40, i64 0, !37, i64 8, !37, i64 16}
!50 = !{!51, !52, i64 0}
!51 = !{!"", !52, i64 0}
!52 = !{!"int", !38, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"_Bool", !38, i64 0}
!56 = !{i8 0, i8 2}
!57 = !{}
