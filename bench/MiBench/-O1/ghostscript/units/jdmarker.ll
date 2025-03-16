; ModuleID = 'jdmarker.c'
source_filename = "jdmarker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }

@jpeg_natural_order = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @jpeg_resync_to_restart(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 72
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = load ptr, ptr %0, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 5
  store i32 117, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 6
  store i32 %4, ptr %7, align 4, !tbaa !17
  %8 = load ptr, ptr %0, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6, i32 0, i64 1
  store i32 %1, ptr %9, align 4, !tbaa !17
  %10 = load ptr, ptr %0, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  tail call void %12(ptr noundef nonnull %0, i32 noundef -1) #6
  %13 = add nsw i32 %1, 1
  %14 = and i32 %13, 7
  %15 = or disjoint i32 %14, 208
  %16 = add nsw i32 %1, 2
  %17 = and i32 %16, 7
  %18 = or disjoint i32 %17, 208
  %19 = add i32 %1, 7
  %20 = and i32 %19, 7
  %21 = or disjoint i32 %20, 208
  %22 = add i32 %1, 6
  %23 = and i32 %22, 7
  %24 = or disjoint i32 %23, 208
  br label %25

25:                                               ; preds = %55, %2
  %26 = phi i32 [ %4, %2 ], [ %56, %55 ]
  %27 = icmp slt i32 %26, 192
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = add nsw i32 %26, -216
  %30 = icmp ult i32 %29, -8
  %31 = icmp eq i32 %26, %15
  %32 = select i1 %30, i1 true, i1 %31
  %33 = icmp eq i32 %26, %18
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = icmp eq i32 %26, %21
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  %38 = icmp eq i32 %26, %24
  %39 = select i1 %38, i32 2, i32 1
  br label %40

40:                                               ; preds = %37, %35, %28, %25
  %41 = phi i32 [ 2, %25 ], [ 3, %28 ], [ 2, %35 ], [ %39, %37 ]
  %42 = load ptr, ptr %0, align 8, !tbaa !13
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 5
  store i32 96, ptr %43, align 8, !tbaa !14
  %44 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 6
  store i32 %26, ptr %44, align 4, !tbaa !17
  %45 = load ptr, ptr %0, align 8, !tbaa !13
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 6, i32 0, i64 1
  store i32 %41, ptr %46, align 4, !tbaa !17
  %47 = load ptr, ptr %0, align 8, !tbaa !13
  %48 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !18
  tail call void %49(ptr noundef nonnull %0, i32 noundef 4) #6
  switch i32 %41, label %54 [
    i32 1, label %50
    i32 2, label %51
    i32 3, label %57
  ]

50:                                               ; preds = %40
  store i32 0, ptr %3, align 4, !tbaa !5
  br label %57

51:                                               ; preds = %40
  %52 = tail call fastcc i32 @next_marker(ptr noundef nonnull %0), !range !19
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %55

54:                                               ; preds = %40
  unreachable

55:                                               ; preds = %51
  %56 = load i32, ptr %3, align 4, !tbaa !5
  br label %25, !llvm.loop !20

57:                                               ; preds = %40, %51, %50
  %58 = phi i32 [ 1, %50 ], [ 0, %51 ], [ 1, %40 ]
  ret i32 %58
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @next_marker(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %3, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %3, i64 0, i32 3
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %9 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %3, i64 0, i32 3
  %10 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %3, i64 0, i32 3
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  br label %12

12:                                               ; preds = %72, %1
  %13 = phi ptr [ %4, %1 ], [ %70, %72 ]
  %14 = phi i64 [ %6, %1 ], [ %69, %72 ]
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8, !tbaa !26
  %18 = tail call i32 %17(ptr noundef %0) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %97, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 8, !tbaa !23
  %22 = load i64, ptr %5, align 8, !tbaa !25
  br label %23

23:                                               ; preds = %20, %12
  %24 = phi ptr [ %21, %20 ], [ %13, %12 ]
  %25 = phi i64 [ %22, %20 ], [ %14, %12 ]
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  %27 = add i64 %25, -1
  %28 = load i8, ptr %24, align 1, !tbaa !17
  %29 = icmp eq i8 %28, -1
  br i1 %29, label %52, label %30

30:                                               ; preds = %23, %45
  %31 = phi i64 [ %49, %45 ], [ %27, %23 ]
  %32 = phi ptr [ %48, %45 ], [ %26, %23 ]
  %33 = load ptr, ptr %8, align 8, !tbaa !27
  %34 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %33, i64 0, i32 8
  %35 = load i32, ptr %34, align 4, !tbaa !28
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4, !tbaa !28
  store ptr %32, ptr %3, align 8, !tbaa !23
  store i64 %31, ptr %5, align 8, !tbaa !25
  %37 = icmp eq i64 %31, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load ptr, ptr %9, align 8, !tbaa !26
  %40 = tail call i32 %39(ptr noundef %0) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %97, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %3, align 8, !tbaa !23
  %44 = load i64, ptr %5, align 8, !tbaa !25
  br label %45

45:                                               ; preds = %42, %30
  %46 = phi ptr [ %43, %42 ], [ %32, %30 ]
  %47 = phi i64 [ %44, %42 ], [ %31, %30 ]
  %48 = getelementptr inbounds i8, ptr %46, i64 1
  %49 = add i64 %47, -1
  %50 = load i8, ptr %46, align 1, !tbaa !17
  %51 = icmp eq i8 %50, -1
  br i1 %51, label %52, label %30, !llvm.loop !30

52:                                               ; preds = %45, %23
  %53 = phi ptr [ %26, %23 ], [ %48, %45 ]
  %54 = phi i64 [ %27, %23 ], [ %49, %45 ]
  br label %55

55:                                               ; preds = %52, %66
  %56 = phi ptr [ %70, %66 ], [ %53, %52 ]
  %57 = phi i64 [ %69, %66 ], [ %54, %52 ]
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load ptr, ptr %10, align 8, !tbaa !26
  %61 = tail call i32 %60(ptr noundef %0) #6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %97, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %3, align 8, !tbaa !23
  %65 = load i64, ptr %5, align 8, !tbaa !25
  br label %66

66:                                               ; preds = %63, %55
  %67 = phi ptr [ %64, %63 ], [ %56, %55 ]
  %68 = phi i64 [ %65, %63 ], [ %57, %55 ]
  %69 = add i64 %68, -1
  %70 = getelementptr inbounds i8, ptr %67, i64 1
  %71 = load i8, ptr %67, align 1, !tbaa !17
  switch i8 %71, label %77 [
    i8 -1, label %55
    i8 0, label %72
  ]

72:                                               ; preds = %66
  %73 = load ptr, ptr %11, align 8, !tbaa !27
  %74 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %73, i64 0, i32 8
  %75 = load i32, ptr %74, align 4, !tbaa !28
  %76 = add i32 %75, 2
  store i32 %76, ptr %74, align 4, !tbaa !28
  store ptr %70, ptr %3, align 8, !tbaa !23
  store i64 %69, ptr %5, align 8, !tbaa !25
  br label %12, !llvm.loop !31

77:                                               ; preds = %66
  %78 = zext i8 %71 to i32
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %80 = load ptr, ptr %79, align 8, !tbaa !27
  %81 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %80, i64 0, i32 8
  %82 = load i32, ptr %81, align 4, !tbaa !28
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %77
  %85 = load ptr, ptr %0, align 8, !tbaa !13
  %86 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %85, i64 0, i32 5
  store i32 112, ptr %86, align 8, !tbaa !14
  %87 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %85, i64 0, i32 6
  store i32 %82, ptr %87, align 4, !tbaa !17
  %88 = load ptr, ptr %0, align 8, !tbaa !13
  %89 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %88, i64 0, i32 6, i32 0, i64 1
  store i32 %78, ptr %89, align 4, !tbaa !17
  %90 = load ptr, ptr %0, align 8, !tbaa !13
  %91 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !18
  tail call void %92(ptr noundef nonnull %0, i32 noundef -1) #6
  %93 = load ptr, ptr %79, align 8, !tbaa !27
  %94 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %93, i64 0, i32 8
  store i32 0, ptr %94, align 4, !tbaa !28
  br label %95

95:                                               ; preds = %84, %77
  %96 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 72
  store i32 %78, ptr %96, align 4, !tbaa !5
  store ptr %70, ptr %3, align 8, !tbaa !23
  store i64 %69, ptr %5, align 8, !tbaa !25
  br label %97

97:                                               ; preds = %16, %38, %59, %95
  %98 = phi i32 [ 1, %95 ], [ 0, %59 ], [ 0, %38 ], [ 0, %16 ]
  ret i32 %98
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @jinit_marker_reader(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !32
  %4 = load ptr, ptr %3, align 8, !tbaa !33
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 0, i64 noundef 176) #6
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  store ptr %5, ptr %6, align 8, !tbaa !27
  store ptr @reset_marker_reader, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %5, i64 0, i32 1
  store ptr @read_markers, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %5, i64 0, i32 2
  store ptr @read_restart_marker, ptr %8, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %5, i64 0, i32 3
  store ptr @skip_variable, ptr %9, align 8, !tbaa !38
  br label %10

10:                                               ; preds = %1, %10
  %11 = phi i64 [ 0, %1 ], [ %14, %10 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !27
  %13 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %12, i64 0, i32 4, i64 %11
  store ptr @skip_variable, ptr %13, align 8, !tbaa !39
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %16, label %10, !llvm.loop !40

16:                                               ; preds = %10
  %17 = load ptr, ptr %6, align 8, !tbaa !27
  %18 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %17, i64 0, i32 4
  store ptr @get_app0, ptr %18, align 8, !tbaa !39
  %19 = load ptr, ptr %6, align 8, !tbaa !27
  %20 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %19, i64 0, i32 4, i64 14
  store ptr @get_app14, ptr %20, align 8, !tbaa !39
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  store ptr null, ptr %21, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 34
  store i32 0, ptr %22, align 4, !tbaa !42
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 72
  store i32 0, ptr %23, align 4, !tbaa !5
  %24 = load ptr, ptr %6, align 8, !tbaa !27
  %25 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %24, i64 0, i32 5
  store i32 0, ptr %25, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %24, i64 0, i32 6
  store i32 0, ptr %26, align 4, !tbaa !44
  %27 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %24, i64 0, i32 8
  store i32 0, ptr %27, align 4, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @reset_marker_reader(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  store ptr null, ptr %2, align 8, !tbaa !41
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 34
  store i32 0, ptr %3, align 4, !tbaa !42
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 72
  store i32 0, ptr %4, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %6, i64 0, i32 5
  store i32 0, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %6, i64 0, i32 6
  store i32 0, ptr %8, align 4, !tbaa !44
  %9 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %6, i64 0, i32 8
  store i32 0, ptr %9, align 4, !tbaa !28
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @read_markers(ptr noundef %0) #0 {
  %2 = alloca [17 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 72
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 49
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 1
  %15 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 2
  %16 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 3
  %17 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 4
  %18 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 5
  %19 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 6
  %20 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 7
  %21 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 8
  %22 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 9
  %23 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 10
  %24 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 11
  %25 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 12
  %26 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 13
  %27 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 14
  %28 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 15
  %29 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 16
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %32 = getelementptr i8, ptr %0, i64 312
  %33 = getelementptr i8, ptr %0, i64 328
  %34 = getelementptr i8, ptr %0, i64 344
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 49
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 9
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 56
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 52
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 53
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 54
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 55
  br label %42

42:                                               ; preds = %1071, %1
  %43 = load i32, ptr %4, align 4, !tbaa !5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %100

45:                                               ; preds = %42
  %46 = load ptr, ptr %5, align 8, !tbaa !27
  %47 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %46, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !43
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %97

50:                                               ; preds = %45
  %51 = load ptr, ptr %6, align 8, !tbaa !22
  %52 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %51, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !25
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %51, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !26
  %58 = tail call i32 %57(ptr noundef %0) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %1072, label %60

60:                                               ; preds = %55
  %61 = load i64, ptr %52, align 8, !tbaa !25
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi i64 [ %61, %60 ], [ %53, %50 ]
  %64 = load ptr, ptr %51, align 8, !tbaa !23
  %65 = add i64 %63, -1
  %66 = getelementptr inbounds i8, ptr %64, i64 1
  %67 = load i8, ptr %64, align 1, !tbaa !17
  %68 = zext i8 %67 to i32
  %69 = icmp eq i64 %65, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %51, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !26
  %73 = tail call i32 %72(ptr noundef %0) #6
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %1072, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr %51, align 8, !tbaa !23
  %77 = load i64, ptr %52, align 8, !tbaa !25
  br label %78

78:                                               ; preds = %75, %62
  %79 = phi ptr [ %76, %75 ], [ %66, %62 ]
  %80 = phi i64 [ %77, %75 ], [ %65, %62 ]
  %81 = add i64 %80, -1
  %82 = getelementptr inbounds i8, ptr %79, i64 1
  %83 = load i8, ptr %79, align 1, !tbaa !17
  %84 = zext i8 %83 to i32
  %85 = icmp ne i8 %67, -1
  %86 = icmp ne i8 %83, -40
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %78
  %89 = load ptr, ptr %0, align 8, !tbaa !13
  %90 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %89, i64 0, i32 5
  store i32 52, ptr %90, align 8, !tbaa !14
  %91 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %89, i64 0, i32 6
  store i32 %68, ptr %91, align 4, !tbaa !17
  %92 = load ptr, ptr %0, align 8, !tbaa !13
  %93 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 6, i32 0, i64 1
  store i32 %84, ptr %93, align 4, !tbaa !17
  %94 = load ptr, ptr %0, align 8, !tbaa !13
  %95 = load ptr, ptr %94, align 8, !tbaa !45
  tail call void %95(ptr noundef nonnull %0) #6
  br label %96

96:                                               ; preds = %88, %78
  store i32 %84, ptr %4, align 4, !tbaa !5
  store ptr %82, ptr %51, align 8, !tbaa !23
  store i64 %81, ptr %52, align 8, !tbaa !25
  br label %100

97:                                               ; preds = %45
  %98 = tail call fastcc i32 @next_marker(ptr noundef %0), !range !19
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %1072, label %100

100:                                              ; preds = %96, %97, %42
  %101 = load i32, ptr %4, align 4, !tbaa !5
  switch i32 %101, label %1065 [
    i32 216, label %102
    i32 192, label %118
    i32 193, label %118
    i32 194, label %121
    i32 201, label %124
    i32 202, label %127
    i32 195, label %130
    i32 197, label %130
    i32 198, label %130
    i32 199, label %130
    i32 200, label %130
    i32 203, label %130
    i32 205, label %130
    i32 206, label %130
    i32 207, label %130
    i32 218, label %136
    i32 217, label %372
    i32 204, label %377
    i32 196, label %491
    i32 219, label %704
    i32 221, label %910
    i32 224, label %993
    i32 225, label %993
    i32 226, label %993
    i32 227, label %993
    i32 228, label %993
    i32 229, label %993
    i32 230, label %993
    i32 231, label %993
    i32 232, label %993
    i32 233, label %993
    i32 234, label %993
    i32 235, label %993
    i32 236, label %993
    i32 237, label %993
    i32 238, label %993
    i32 239, label %993
    i32 254, label %1001
    i32 208, label %1007
    i32 209, label %1007
    i32 210, label %1007
    i32 211, label %1007
    i32 212, label %1007
    i32 213, label %1007
    i32 214, label %1007
    i32 215, label %1007
    i32 1, label %1007
    i32 220, label %1014
  ]

102:                                              ; preds = %100
  %103 = load ptr, ptr %0, align 8, !tbaa !13
  %104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 5
  store i32 101, ptr %104, align 8, !tbaa !14
  %105 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !18
  tail call void %106(ptr noundef nonnull %0, i32 noundef 1) #6
  %107 = load ptr, ptr %31, align 8, !tbaa !27
  %108 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %107, i64 0, i32 5
  %109 = load i32, ptr %108, align 8, !tbaa !43
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %102
  %112 = load ptr, ptr %0, align 8, !tbaa !13
  %113 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i64 0, i32 5
  store i32 60, ptr %113, align 8, !tbaa !14
  %114 = load ptr, ptr %112, align 8, !tbaa !45
  tail call void %114(ptr noundef nonnull %0) #6
  br label %115

115:                                              ; preds = %102, %111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %32, i8 0, i64 16, i1 false), !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %33, i8 1, i64 16, i1 false), !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %34, i8 5, i64 16, i1 false), !tbaa !17
  store i32 0, ptr %36, align 4, !tbaa !46
  store i32 0, ptr %37, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %35, i8 0, i64 9, i1 false)
  store i16 1, ptr %38, align 2, !tbaa !48
  store i16 1, ptr %39, align 4, !tbaa !49
  store i32 0, ptr %40, align 8, !tbaa !50
  store i8 0, ptr %41, align 4, !tbaa !51
  %116 = load ptr, ptr %31, align 8, !tbaa !27
  %117 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %116, i64 0, i32 5
  store i32 1, ptr %117, align 8, !tbaa !43
  br label %1071

118:                                              ; preds = %100, %100
  %119 = tail call fastcc i32 @get_sof(ptr noundef %0, i32 noundef 0, i32 noundef 0), !range !19
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %1072, label %1071

121:                                              ; preds = %100
  %122 = tail call fastcc i32 @get_sof(ptr noundef %0, i32 noundef 1, i32 noundef 0), !range !19
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %1072, label %1071

124:                                              ; preds = %100
  %125 = tail call fastcc i32 @get_sof(ptr noundef %0, i32 noundef 0, i32 noundef 1), !range !19
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %1072, label %1071

127:                                              ; preds = %100
  %128 = tail call fastcc i32 @get_sof(ptr noundef %0, i32 noundef 1, i32 noundef 1), !range !19
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %1072, label %1071

130:                                              ; preds = %100, %100, %100, %100, %100, %100, %100, %100, %100
  %131 = load ptr, ptr %0, align 8, !tbaa !13
  %132 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %131, i64 0, i32 5
  store i32 59, ptr %132, align 8, !tbaa !14
  %133 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %131, i64 0, i32 6
  store i32 %101, ptr %133, align 4, !tbaa !17
  %134 = load ptr, ptr %0, align 8, !tbaa !13
  %135 = load ptr, ptr %134, align 8, !tbaa !45
  tail call void %135(ptr noundef nonnull %0) #6
  br label %1071

136:                                              ; preds = %100
  %137 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %138 = load ptr, ptr %137, align 8, !tbaa !22
  %139 = load ptr, ptr %138, align 8, !tbaa !23
  %140 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %138, i64 0, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !25
  %142 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %143 = load ptr, ptr %142, align 8, !tbaa !27
  %144 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %143, i64 0, i32 6
  %145 = load i32, ptr %144, align 4, !tbaa !44
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %136
  %148 = load ptr, ptr %0, align 8, !tbaa !13
  %149 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %148, i64 0, i32 5
  store i32 61, ptr %149, align 8, !tbaa !14
  %150 = load ptr, ptr %148, align 8, !tbaa !45
  tail call void %150(ptr noundef nonnull %0) #6
  br label %151

151:                                              ; preds = %147, %136
  %152 = icmp eq i64 %141, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %138, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !26
  %156 = tail call i32 %155(ptr noundef %0) #6
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %1072, label %158

158:                                              ; preds = %153
  %159 = load ptr, ptr %138, align 8, !tbaa !23
  %160 = load i64, ptr %140, align 8, !tbaa !25
  br label %161

161:                                              ; preds = %158, %151
  %162 = phi ptr [ %159, %158 ], [ %139, %151 ]
  %163 = phi i64 [ %160, %158 ], [ %141, %151 ]
  %164 = add i64 %163, -1
  %165 = getelementptr inbounds i8, ptr %162, i64 1
  %166 = load i8, ptr %162, align 1, !tbaa !17
  %167 = zext i8 %166 to i64
  %168 = shl nuw nsw i64 %167, 8
  %169 = icmp eq i64 %164, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %161
  %171 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %138, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !26
  %173 = tail call i32 %172(ptr noundef %0) #6
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %1072, label %175

175:                                              ; preds = %170
  %176 = load ptr, ptr %138, align 8, !tbaa !23
  %177 = load i64, ptr %140, align 8, !tbaa !25
  br label %178

178:                                              ; preds = %175, %161
  %179 = phi ptr [ %176, %175 ], [ %165, %161 ]
  %180 = phi i64 [ %177, %175 ], [ %164, %161 ]
  %181 = add i64 %180, -1
  %182 = getelementptr inbounds i8, ptr %179, i64 1
  %183 = load i8, ptr %179, align 1, !tbaa !17
  %184 = zext i8 %183 to i64
  %185 = or disjoint i64 %168, %184
  %186 = icmp eq i64 %181, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %178
  %188 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %138, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !26
  %190 = tail call i32 %189(ptr noundef %0) #6
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %1072, label %192

192:                                              ; preds = %187
  %193 = load ptr, ptr %138, align 8, !tbaa !23
  %194 = load i64, ptr %140, align 8, !tbaa !25
  br label %195

195:                                              ; preds = %192, %178
  %196 = phi ptr [ %193, %192 ], [ %182, %178 ]
  %197 = phi i64 [ %194, %192 ], [ %181, %178 ]
  %198 = load i8, ptr %196, align 1, !tbaa !17
  %199 = zext i8 %198 to i32
  %200 = shl nuw nsw i32 %199, 1
  %201 = add nuw nsw i32 %200, 6
  %202 = zext nneg i32 %201 to i64
  %203 = icmp ne i64 %185, %202
  %204 = add i8 %198, -5
  %205 = icmp ult i8 %204, -4
  %206 = or i1 %205, %203
  br i1 %206, label %207, label %211

207:                                              ; preds = %195
  %208 = load ptr, ptr %0, align 8, !tbaa !13
  %209 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %208, i64 0, i32 5
  store i32 9, ptr %209, align 8, !tbaa !14
  %210 = load ptr, ptr %208, align 8, !tbaa !45
  tail call void %210(ptr noundef nonnull %0) #6
  br label %211

211:                                              ; preds = %207, %195
  %212 = load ptr, ptr %0, align 8, !tbaa !13
  %213 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %212, i64 0, i32 5
  store i32 102, ptr %213, align 8, !tbaa !14
  %214 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %212, i64 0, i32 6
  store i32 %199, ptr %214, align 4, !tbaa !17
  %215 = load ptr, ptr %0, align 8, !tbaa !13
  %216 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %215, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !18
  tail call void %217(ptr noundef nonnull %0, i32 noundef 1) #6
  %218 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  store i32 %199, ptr %218, align 8, !tbaa !52
  %219 = getelementptr inbounds i8, ptr %196, i64 1
  %220 = add i64 %197, -1
  %221 = icmp eq i8 %198, 0
  br i1 %221, label %298, label %222

222:                                              ; preds = %211
  %223 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %138, i64 0, i32 3
  %224 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %225 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %226 = zext i8 %198 to i64
  br label %227

227:                                              ; preds = %278, %222
  %228 = phi i64 [ 0, %222 ], [ %294, %278 ]
  %229 = phi i64 [ %220, %222 ], [ %296, %278 ]
  %230 = phi ptr [ %219, %222 ], [ %295, %278 ]
  %231 = icmp eq i64 %229, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %227
  %233 = load ptr, ptr %223, align 8, !tbaa !26
  %234 = tail call i32 %233(ptr noundef nonnull %0) #6
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %1072, label %236

236:                                              ; preds = %232
  %237 = load ptr, ptr %138, align 8, !tbaa !23
  %238 = load i64, ptr %140, align 8, !tbaa !25
  br label %239

239:                                              ; preds = %236, %227
  %240 = phi ptr [ %237, %236 ], [ %230, %227 ]
  %241 = phi i64 [ %238, %236 ], [ %229, %227 ]
  %242 = add i64 %241, -1
  %243 = getelementptr inbounds i8, ptr %240, i64 1
  %244 = load i8, ptr %240, align 1, !tbaa !17
  %245 = zext i8 %244 to i32
  %246 = icmp eq i64 %242, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %239
  %248 = load ptr, ptr %223, align 8, !tbaa !26
  %249 = tail call i32 %248(ptr noundef nonnull %0) #6
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %1072, label %251

251:                                              ; preds = %247
  %252 = load ptr, ptr %138, align 8, !tbaa !23
  %253 = load i64, ptr %140, align 8, !tbaa !25
  br label %254

254:                                              ; preds = %251, %239
  %255 = phi ptr [ %252, %251 ], [ %243, %239 ]
  %256 = phi i64 [ %253, %251 ], [ %242, %239 ]
  %257 = load i8, ptr %255, align 1, !tbaa !17
  %258 = zext i8 %257 to i32
  %259 = load ptr, ptr %224, align 8, !tbaa !41
  %260 = load i32, ptr %225, align 8, !tbaa !53
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %254, %267
  %263 = phi ptr [ %269, %267 ], [ %259, %254 ]
  %264 = phi i32 [ %268, %267 ], [ 0, %254 ]
  %265 = load i32, ptr %263, align 8, !tbaa !54
  %266 = icmp eq i32 %265, %245
  br i1 %266, label %278, label %267

267:                                              ; preds = %262
  %268 = add nuw nsw i32 %264, 1
  %269 = getelementptr inbounds %struct.jpeg_component_info, ptr %263, i64 1
  %270 = icmp eq i32 %268, %260
  br i1 %270, label %271, label %262, !llvm.loop !56

271:                                              ; preds = %267, %254
  %272 = phi ptr [ %259, %254 ], [ %269, %267 ]
  %273 = load ptr, ptr %0, align 8, !tbaa !13
  %274 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %273, i64 0, i32 5
  store i32 5, ptr %274, align 8, !tbaa !14
  %275 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %273, i64 0, i32 6
  store i32 %245, ptr %275, align 4, !tbaa !17
  %276 = load ptr, ptr %0, align 8, !tbaa !13
  %277 = load ptr, ptr %276, align 8, !tbaa !45
  tail call void %277(ptr noundef nonnull %0) #6
  br label %278

278:                                              ; preds = %262, %271
  %279 = phi ptr [ %272, %271 ], [ %263, %262 ]
  %280 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63, i64 %228
  store ptr %279, ptr %280, align 8, !tbaa !39
  %281 = lshr i32 %258, 4
  %282 = getelementptr inbounds %struct.jpeg_component_info, ptr %279, i64 0, i32 5
  store i32 %281, ptr %282, align 4, !tbaa !57
  %283 = and i32 %258, 15
  %284 = getelementptr inbounds %struct.jpeg_component_info, ptr %279, i64 0, i32 6
  store i32 %283, ptr %284, align 8, !tbaa !58
  %285 = load ptr, ptr %0, align 8, !tbaa !13
  %286 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %285, i64 0, i32 6
  store i32 %245, ptr %286, align 4, !tbaa !59
  %287 = load i32, ptr %282, align 4, !tbaa !57
  %288 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %285, i64 0, i32 6, i32 0, i64 1
  store i32 %287, ptr %288, align 4, !tbaa !59
  %289 = load i32, ptr %284, align 8, !tbaa !58
  %290 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %285, i64 0, i32 6, i32 0, i64 2
  store i32 %289, ptr %290, align 4, !tbaa !59
  %291 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %285, i64 0, i32 5
  store i32 103, ptr %291, align 8, !tbaa !14
  %292 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %285, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !18
  tail call void %293(ptr noundef nonnull %0, i32 noundef 1) #6
  %294 = add nuw nsw i64 %228, 1
  %295 = getelementptr inbounds i8, ptr %255, i64 1
  %296 = add i64 %256, -1
  %297 = icmp eq i64 %294, %226
  br i1 %297, label %298, label %227, !llvm.loop !60

298:                                              ; preds = %278, %211
  %299 = phi ptr [ %219, %211 ], [ %295, %278 ]
  %300 = phi i64 [ %220, %211 ], [ %296, %278 ]
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %138, i64 0, i32 3
  %304 = load ptr, ptr %303, align 8, !tbaa !26
  %305 = tail call i32 %304(ptr noundef nonnull %0) #6
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %1072, label %307

307:                                              ; preds = %302
  %308 = load ptr, ptr %138, align 8, !tbaa !23
  %309 = load i64, ptr %140, align 8, !tbaa !25
  br label %310

310:                                              ; preds = %307, %298
  %311 = phi ptr [ %308, %307 ], [ %299, %298 ]
  %312 = phi i64 [ %309, %307 ], [ %300, %298 ]
  %313 = add i64 %312, -1
  %314 = getelementptr inbounds i8, ptr %311, i64 1
  %315 = load i8, ptr %311, align 1, !tbaa !17
  %316 = zext i8 %315 to i32
  %317 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 68
  store i32 %316, ptr %317, align 4, !tbaa !61
  %318 = icmp eq i64 %313, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %310
  %320 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %138, i64 0, i32 3
  %321 = load ptr, ptr %320, align 8, !tbaa !26
  %322 = tail call i32 %321(ptr noundef nonnull %0) #6
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %1072, label %324

324:                                              ; preds = %319
  %325 = load ptr, ptr %138, align 8, !tbaa !23
  %326 = load i64, ptr %140, align 8, !tbaa !25
  br label %327

327:                                              ; preds = %324, %310
  %328 = phi ptr [ %325, %324 ], [ %314, %310 ]
  %329 = phi i64 [ %326, %324 ], [ %313, %310 ]
  %330 = add i64 %329, -1
  %331 = getelementptr inbounds i8, ptr %328, i64 1
  %332 = load i8, ptr %328, align 1, !tbaa !17
  %333 = zext i8 %332 to i32
  %334 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 69
  store i32 %333, ptr %334, align 8, !tbaa !62
  %335 = icmp eq i64 %330, 0
  br i1 %335, label %336, label %344

336:                                              ; preds = %327
  %337 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %138, i64 0, i32 3
  %338 = load ptr, ptr %337, align 8, !tbaa !26
  %339 = tail call i32 %338(ptr noundef nonnull %0) #6
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %1072, label %341

341:                                              ; preds = %336
  %342 = load ptr, ptr %138, align 8, !tbaa !23
  %343 = load i64, ptr %140, align 8, !tbaa !25
  br label %344

344:                                              ; preds = %341, %327
  %345 = phi ptr [ %342, %341 ], [ %331, %327 ]
  %346 = phi i64 [ %343, %341 ], [ %330, %327 ]
  %347 = add i64 %346, -1
  %348 = getelementptr inbounds i8, ptr %345, i64 1
  %349 = load i8, ptr %345, align 1, !tbaa !17
  %350 = zext i8 %349 to i32
  %351 = lshr i32 %350, 4
  %352 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 70
  store i32 %351, ptr %352, align 4, !tbaa !63
  %353 = and i32 %350, 15
  %354 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 71
  store i32 %353, ptr %354, align 8, !tbaa !64
  %355 = load ptr, ptr %0, align 8, !tbaa !13
  %356 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %355, i64 0, i32 6
  %357 = load i32, ptr %317, align 4, !tbaa !61
  store i32 %357, ptr %356, align 4, !tbaa !59
  %358 = load i32, ptr %334, align 8, !tbaa !62
  %359 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %355, i64 0, i32 6, i32 0, i64 1
  store i32 %358, ptr %359, align 4, !tbaa !59
  %360 = load i32, ptr %352, align 4, !tbaa !63
  %361 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %355, i64 0, i32 6, i32 0, i64 2
  store i32 %360, ptr %361, align 4, !tbaa !59
  %362 = load i32, ptr %354, align 8, !tbaa !64
  %363 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %355, i64 0, i32 6, i32 0, i64 3
  store i32 %362, ptr %363, align 4, !tbaa !59
  %364 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %355, i64 0, i32 5
  store i32 104, ptr %364, align 8, !tbaa !14
  %365 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %355, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !18
  tail call void %366(ptr noundef nonnull %0, i32 noundef 1) #6
  %367 = load ptr, ptr %142, align 8, !tbaa !27
  %368 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %367, i64 0, i32 7
  store i32 0, ptr %368, align 8, !tbaa !65
  %369 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 34
  %370 = load i32, ptr %369, align 4, !tbaa !42
  %371 = add nsw i32 %370, 1
  store i32 %371, ptr %369, align 4, !tbaa !42
  store ptr %348, ptr %138, align 8, !tbaa !23
  store i64 %347, ptr %140, align 8, !tbaa !25
  store i32 0, ptr %4, align 4, !tbaa !5
  br label %1072

372:                                              ; preds = %100
  %373 = load ptr, ptr %0, align 8, !tbaa !13
  %374 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %373, i64 0, i32 5
  store i32 84, ptr %374, align 8, !tbaa !14
  %375 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %373, i64 0, i32 1
  %376 = load ptr, ptr %375, align 8, !tbaa !18
  tail call void %376(ptr noundef nonnull %0, i32 noundef 1) #6
  store i32 0, ptr %4, align 4, !tbaa !5
  br label %1072

377:                                              ; preds = %100
  %378 = load ptr, ptr %30, align 8, !tbaa !22
  %379 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %378, i64 0, i32 1
  %380 = load i64, ptr %379, align 8, !tbaa !25
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %382, label %389

382:                                              ; preds = %377
  %383 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %378, i64 0, i32 3
  %384 = load ptr, ptr %383, align 8, !tbaa !26
  %385 = tail call i32 %384(ptr noundef %0) #6
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %1072, label %387

387:                                              ; preds = %382
  %388 = load i64, ptr %379, align 8, !tbaa !25
  br label %389

389:                                              ; preds = %387, %377
  %390 = phi i64 [ %388, %387 ], [ %380, %377 ]
  %391 = load ptr, ptr %378, align 8, !tbaa !23
  %392 = add i64 %390, -1
  %393 = getelementptr inbounds i8, ptr %391, i64 1
  %394 = load i8, ptr %391, align 1, !tbaa !17
  %395 = zext i8 %394 to i64
  %396 = shl nuw nsw i64 %395, 8
  %397 = icmp eq i64 %392, 0
  br i1 %397, label %398, label %406

398:                                              ; preds = %389
  %399 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %378, i64 0, i32 3
  %400 = load ptr, ptr %399, align 8, !tbaa !26
  %401 = tail call i32 %400(ptr noundef %0) #6
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %1072, label %403

403:                                              ; preds = %398
  %404 = load ptr, ptr %378, align 8, !tbaa !23
  %405 = load i64, ptr %379, align 8, !tbaa !25
  br label %406

406:                                              ; preds = %403, %389
  %407 = phi ptr [ %404, %403 ], [ %393, %389 ]
  %408 = phi i64 [ %405, %403 ], [ %392, %389 ]
  %409 = load i8, ptr %407, align 1, !tbaa !17
  %410 = zext i8 %409 to i64
  %411 = or disjoint i64 %396, %410
  %412 = getelementptr inbounds i8, ptr %407, i64 1
  %413 = add i64 %408, -1
  %414 = icmp ugt i64 %411, 2
  br i1 %414, label %415, label %488

415:                                              ; preds = %406
  %416 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %378, i64 0, i32 3
  br label %417

417:                                              ; preds = %484, %415
  %418 = phi i64 [ %413, %415 ], [ %486, %484 ]
  %419 = phi ptr [ %412, %415 ], [ %485, %484 ]
  %420 = phi i64 [ %411, %415 ], [ %421, %484 ]
  %421 = add nsw i64 %420, -2
  %422 = icmp eq i64 %418, 0
  br i1 %422, label %423, label %430

423:                                              ; preds = %417
  %424 = load ptr, ptr %416, align 8, !tbaa !26
  %425 = tail call i32 %424(ptr noundef %0) #6
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %1072, label %427

427:                                              ; preds = %423
  %428 = load ptr, ptr %378, align 8, !tbaa !23
  %429 = load i64, ptr %379, align 8, !tbaa !25
  br label %430

430:                                              ; preds = %427, %417
  %431 = phi ptr [ %428, %427 ], [ %419, %417 ]
  %432 = phi i64 [ %429, %427 ], [ %418, %417 ]
  %433 = add i64 %432, -1
  %434 = getelementptr inbounds i8, ptr %431, i64 1
  %435 = load i8, ptr %431, align 1, !tbaa !17
  %436 = zext i8 %435 to i32
  %437 = icmp eq i64 %433, 0
  br i1 %437, label %438, label %445

438:                                              ; preds = %430
  %439 = load ptr, ptr %416, align 8, !tbaa !26
  %440 = tail call i32 %439(ptr noundef %0) #6
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %1072, label %442

442:                                              ; preds = %438
  %443 = load ptr, ptr %378, align 8, !tbaa !23
  %444 = load i64, ptr %379, align 8, !tbaa !25
  br label %445

445:                                              ; preds = %442, %430
  %446 = phi ptr [ %443, %442 ], [ %434, %430 ]
  %447 = phi i64 [ %444, %442 ], [ %433, %430 ]
  %448 = load i8, ptr %446, align 1, !tbaa !17
  %449 = zext i8 %448 to i32
  %450 = load ptr, ptr %0, align 8, !tbaa !13
  %451 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %450, i64 0, i32 5
  store i32 78, ptr %451, align 8, !tbaa !14
  %452 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %450, i64 0, i32 6
  store i32 %436, ptr %452, align 4, !tbaa !17
  %453 = load ptr, ptr %0, align 8, !tbaa !13
  %454 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %453, i64 0, i32 6, i32 0, i64 1
  store i32 %449, ptr %454, align 4, !tbaa !17
  %455 = load ptr, ptr %0, align 8, !tbaa !13
  %456 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %455, i64 0, i32 1
  %457 = load ptr, ptr %456, align 8, !tbaa !18
  tail call void %457(ptr noundef nonnull %0, i32 noundef 1) #6
  %458 = icmp ugt i8 %435, 31
  br i1 %458, label %459, label %465

459:                                              ; preds = %445
  %460 = load ptr, ptr %0, align 8, !tbaa !13
  %461 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %460, i64 0, i32 5
  store i32 26, ptr %461, align 8, !tbaa !14
  %462 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %460, i64 0, i32 6
  store i32 %436, ptr %462, align 4, !tbaa !17
  %463 = load ptr, ptr %0, align 8, !tbaa !13
  %464 = load ptr, ptr %463, align 8, !tbaa !45
  tail call void %464(ptr noundef nonnull %0) #6
  br label %465

465:                                              ; preds = %459, %445
  %466 = icmp ugt i8 %435, 15
  br i1 %466, label %467, label %471

467:                                              ; preds = %465
  %468 = add nsw i32 %436, -16
  %469 = zext nneg i32 %468 to i64
  %470 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 48, i64 %469
  store i8 %448, ptr %470, align 1, !tbaa !17
  br label %484

471:                                              ; preds = %465
  %472 = and i8 %448, 15
  %473 = zext nneg i8 %435 to i64
  %474 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 46, i64 %473
  store i8 %472, ptr %474, align 1, !tbaa !17
  %475 = lshr i8 %448, 4
  %476 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 47, i64 %473
  store i8 %475, ptr %476, align 1, !tbaa !17
  %477 = icmp ugt i8 %472, %475
  br i1 %477, label %478, label %484

478:                                              ; preds = %471
  %479 = load ptr, ptr %0, align 8, !tbaa !13
  %480 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %479, i64 0, i32 5
  store i32 27, ptr %480, align 8, !tbaa !14
  %481 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %479, i64 0, i32 6
  store i32 %449, ptr %481, align 4, !tbaa !17
  %482 = load ptr, ptr %0, align 8, !tbaa !13
  %483 = load ptr, ptr %482, align 8, !tbaa !45
  tail call void %483(ptr noundef nonnull %0) #6
  br label %484

484:                                              ; preds = %478, %471, %467
  %485 = getelementptr inbounds i8, ptr %446, i64 1
  %486 = add i64 %447, -1
  %487 = icmp sgt i64 %420, 4
  br i1 %487, label %417, label %488, !llvm.loop !66

488:                                              ; preds = %484, %406
  %489 = phi ptr [ %412, %406 ], [ %485, %484 ]
  %490 = phi i64 [ %413, %406 ], [ %486, %484 ]
  store ptr %489, ptr %378, align 8, !tbaa !23
  store i64 %490, ptr %379, align 8, !tbaa !25
  br label %1071

491:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #6
  %492 = load ptr, ptr %13, align 8, !tbaa !22
  %493 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %492, i64 0, i32 1
  %494 = load i64, ptr %493, align 8, !tbaa !25
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %496, label %503

496:                                              ; preds = %491
  %497 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %492, i64 0, i32 3
  %498 = load ptr, ptr %497, align 8, !tbaa !26
  %499 = tail call i32 %498(ptr noundef %0) #6
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %703, label %501

501:                                              ; preds = %496
  %502 = load i64, ptr %493, align 8, !tbaa !25
  br label %503

503:                                              ; preds = %501, %491
  %504 = phi i64 [ %502, %501 ], [ %494, %491 ]
  %505 = load ptr, ptr %492, align 8, !tbaa !23
  %506 = add i64 %504, -1
  %507 = getelementptr inbounds i8, ptr %505, i64 1
  %508 = load i8, ptr %505, align 1, !tbaa !17
  %509 = zext i8 %508 to i64
  %510 = shl nuw nsw i64 %509, 8
  %511 = icmp eq i64 %506, 0
  br i1 %511, label %512, label %520

512:                                              ; preds = %503
  %513 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %492, i64 0, i32 3
  %514 = load ptr, ptr %513, align 8, !tbaa !26
  %515 = tail call i32 %514(ptr noundef %0) #6
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %703, label %517

517:                                              ; preds = %512
  %518 = load ptr, ptr %492, align 8, !tbaa !23
  %519 = load i64, ptr %493, align 8, !tbaa !25
  br label %520

520:                                              ; preds = %517, %503
  %521 = phi ptr [ %518, %517 ], [ %507, %503 ]
  %522 = phi i64 [ %519, %517 ], [ %506, %503 ]
  %523 = add i64 %522, -1
  %524 = getelementptr inbounds i8, ptr %521, i64 1
  %525 = load i8, ptr %521, align 1, !tbaa !17
  %526 = zext i8 %525 to i64
  %527 = or disjoint i64 %510, %526
  %528 = icmp ugt i64 %527, 2
  br i1 %528, label %529, label %700

529:                                              ; preds = %520
  %530 = add nsw i64 %527, -2
  %531 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %492, i64 0, i32 3
  br label %532

532:                                              ; preds = %695, %529
  %533 = phi i64 [ %530, %529 ], [ %673, %695 ]
  %534 = phi i64 [ %523, %529 ], [ %672, %695 ]
  %535 = phi ptr [ %524, %529 ], [ %671, %695 ]
  %536 = icmp eq i64 %534, 0
  br i1 %536, label %537, label %544

537:                                              ; preds = %532
  %538 = load ptr, ptr %531, align 8, !tbaa !26
  %539 = tail call i32 %538(ptr noundef %0) #6
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %703, label %541

541:                                              ; preds = %537
  %542 = load ptr, ptr %492, align 8, !tbaa !23
  %543 = load i64, ptr %493, align 8, !tbaa !25
  br label %544

544:                                              ; preds = %541, %532
  %545 = phi ptr [ %542, %541 ], [ %535, %532 ]
  %546 = phi i64 [ %543, %541 ], [ %534, %532 ]
  %547 = load i8, ptr %545, align 1, !tbaa !17
  %548 = zext i8 %547 to i32
  %549 = load ptr, ptr %0, align 8, !tbaa !13
  %550 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %549, i64 0, i32 5
  store i32 79, ptr %550, align 8, !tbaa !14
  %551 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %549, i64 0, i32 6
  store i32 %548, ptr %551, align 4, !tbaa !17
  %552 = load ptr, ptr %0, align 8, !tbaa !13
  %553 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %552, i64 0, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !18
  tail call void %554(ptr noundef nonnull %0, i32 noundef 1) #6
  store i8 0, ptr %2, align 16, !tbaa !17
  %555 = getelementptr inbounds i8, ptr %545, i64 1
  %556 = add i64 %546, -1
  br label %557

557:                                              ; preds = %570, %544
  %558 = phi i64 [ 1, %544 ], [ %577, %570 ]
  %559 = phi i64 [ %556, %544 ], [ %579, %570 ]
  %560 = phi ptr [ %555, %544 ], [ %578, %570 ]
  %561 = phi i32 [ 0, %544 ], [ %576, %570 ]
  %562 = icmp eq i64 %559, 0
  br i1 %562, label %563, label %570

563:                                              ; preds = %557
  %564 = load ptr, ptr %531, align 8, !tbaa !26
  %565 = tail call i32 %564(ptr noundef nonnull %0) #6
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %703, label %567

567:                                              ; preds = %563
  %568 = load ptr, ptr %492, align 8, !tbaa !23
  %569 = load i64, ptr %493, align 8, !tbaa !25
  br label %570

570:                                              ; preds = %567, %557
  %571 = phi ptr [ %568, %567 ], [ %560, %557 ]
  %572 = phi i64 [ %569, %567 ], [ %559, %557 ]
  %573 = load i8, ptr %571, align 1, !tbaa !17
  %574 = getelementptr inbounds [17 x i8], ptr %2, i64 0, i64 %558
  store i8 %573, ptr %574, align 1, !tbaa !17
  %575 = zext i8 %573 to i32
  %576 = add i32 %561, %575
  %577 = add nuw nsw i64 %558, 1
  %578 = getelementptr inbounds i8, ptr %571, i64 1
  %579 = add i64 %572, -1
  %580 = icmp eq i64 %577, 17
  br i1 %580, label %581, label %557, !llvm.loop !67

581:                                              ; preds = %570
  %582 = add nsw i64 %533, -17
  %583 = load ptr, ptr %0, align 8, !tbaa !13
  %584 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %583, i64 0, i32 6
  %585 = load i8, ptr %14, align 1, !tbaa !17
  %586 = zext i8 %585 to i32
  store i32 %586, ptr %584, align 4, !tbaa !59
  %587 = load i8, ptr %15, align 2, !tbaa !17
  %588 = zext i8 %587 to i32
  %589 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %583, i64 0, i32 6, i32 0, i64 1
  store i32 %588, ptr %589, align 4, !tbaa !59
  %590 = load i8, ptr %16, align 1, !tbaa !17
  %591 = zext i8 %590 to i32
  %592 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %583, i64 0, i32 6, i32 0, i64 2
  store i32 %591, ptr %592, align 4, !tbaa !59
  %593 = load i8, ptr %17, align 4, !tbaa !17
  %594 = zext i8 %593 to i32
  %595 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %583, i64 0, i32 6, i32 0, i64 3
  store i32 %594, ptr %595, align 4, !tbaa !59
  %596 = load i8, ptr %18, align 1, !tbaa !17
  %597 = zext i8 %596 to i32
  %598 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %583, i64 0, i32 6, i32 0, i64 4
  store i32 %597, ptr %598, align 4, !tbaa !59
  %599 = load i8, ptr %19, align 2, !tbaa !17
  %600 = zext i8 %599 to i32
  %601 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %583, i64 0, i32 6, i32 0, i64 5
  store i32 %600, ptr %601, align 4, !tbaa !59
  %602 = load i8, ptr %20, align 1, !tbaa !17
  %603 = zext i8 %602 to i32
  %604 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %583, i64 0, i32 6, i32 0, i64 6
  store i32 %603, ptr %604, align 4, !tbaa !59
  %605 = load i8, ptr %21, align 8, !tbaa !17
  %606 = zext i8 %605 to i32
  %607 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %583, i64 0, i32 6, i32 0, i64 7
  store i32 %606, ptr %607, align 4, !tbaa !59
  %608 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %583, i64 0, i32 5
  store i32 85, ptr %608, align 8, !tbaa !14
  %609 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %583, i64 0, i32 1
  %610 = load ptr, ptr %609, align 8, !tbaa !18
  tail call void %610(ptr noundef nonnull %0, i32 noundef 2) #6
  %611 = load ptr, ptr %0, align 8, !tbaa !13
  %612 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %611, i64 0, i32 6
  %613 = load i8, ptr %22, align 1, !tbaa !17
  %614 = zext i8 %613 to i32
  store i32 %614, ptr %612, align 4, !tbaa !59
  %615 = load i8, ptr %23, align 2, !tbaa !17
  %616 = zext i8 %615 to i32
  %617 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %611, i64 0, i32 6, i32 0, i64 1
  store i32 %616, ptr %617, align 4, !tbaa !59
  %618 = load i8, ptr %24, align 1, !tbaa !17
  %619 = zext i8 %618 to i32
  %620 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %611, i64 0, i32 6, i32 0, i64 2
  store i32 %619, ptr %620, align 4, !tbaa !59
  %621 = load i8, ptr %25, align 4, !tbaa !17
  %622 = zext i8 %621 to i32
  %623 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %611, i64 0, i32 6, i32 0, i64 3
  store i32 %622, ptr %623, align 4, !tbaa !59
  %624 = load i8, ptr %26, align 1, !tbaa !17
  %625 = zext i8 %624 to i32
  %626 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %611, i64 0, i32 6, i32 0, i64 4
  store i32 %625, ptr %626, align 4, !tbaa !59
  %627 = load i8, ptr %27, align 2, !tbaa !17
  %628 = zext i8 %627 to i32
  %629 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %611, i64 0, i32 6, i32 0, i64 5
  store i32 %628, ptr %629, align 4, !tbaa !59
  %630 = load i8, ptr %28, align 1, !tbaa !17
  %631 = zext i8 %630 to i32
  %632 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %611, i64 0, i32 6, i32 0, i64 6
  store i32 %631, ptr %632, align 4, !tbaa !59
  %633 = load i8, ptr %29, align 16, !tbaa !17
  %634 = zext i8 %633 to i32
  %635 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %611, i64 0, i32 6, i32 0, i64 7
  store i32 %634, ptr %635, align 4, !tbaa !59
  %636 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %611, i64 0, i32 5
  store i32 85, ptr %636, align 8, !tbaa !14
  %637 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %611, i64 0, i32 1
  %638 = load ptr, ptr %637, align 8, !tbaa !18
  tail call void %638(ptr noundef nonnull %0, i32 noundef 2) #6
  %639 = icmp ugt i32 %576, 256
  %640 = zext i32 %576 to i64
  %641 = icmp slt i64 %582, %640
  %642 = select i1 %639, i1 true, i1 %641
  br i1 %642, label %643, label %647

643:                                              ; preds = %581
  %644 = load ptr, ptr %0, align 8, !tbaa !13
  %645 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %644, i64 0, i32 5
  store i32 28, ptr %645, align 8, !tbaa !14
  %646 = load ptr, ptr %644, align 8, !tbaa !45
  tail call void %646(ptr noundef nonnull %0) #6
  br label %647

647:                                              ; preds = %643, %581
  %648 = icmp eq i32 %576, 0
  br i1 %648, label %670, label %649

649:                                              ; preds = %647, %661
  %650 = phi i64 [ %668, %661 ], [ 0, %647 ]
  %651 = phi i64 [ %664, %661 ], [ %579, %647 ]
  %652 = phi ptr [ %665, %661 ], [ %578, %647 ]
  %653 = icmp eq i64 %651, 0
  br i1 %653, label %654, label %661

654:                                              ; preds = %649
  %655 = load ptr, ptr %531, align 8, !tbaa !26
  %656 = tail call i32 %655(ptr noundef nonnull %0) #6
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %703, label %658

658:                                              ; preds = %654
  %659 = load ptr, ptr %492, align 8, !tbaa !23
  %660 = load i64, ptr %493, align 8, !tbaa !25
  br label %661

661:                                              ; preds = %658, %649
  %662 = phi ptr [ %659, %658 ], [ %652, %649 ]
  %663 = phi i64 [ %660, %658 ], [ %651, %649 ]
  %664 = add i64 %663, -1
  %665 = getelementptr inbounds i8, ptr %662, i64 1
  %666 = load i8, ptr %662, align 1, !tbaa !17
  %667 = getelementptr inbounds [256 x i8], ptr %3, i64 0, i64 %650
  store i8 %666, ptr %667, align 1, !tbaa !17
  %668 = add nuw nsw i64 %650, 1
  %669 = icmp eq i64 %668, %640
  br i1 %669, label %670, label %649, !llvm.loop !68

670:                                              ; preds = %661, %647
  %671 = phi ptr [ %578, %647 ], [ %665, %661 ]
  %672 = phi i64 [ %579, %647 ], [ %664, %661 ]
  %673 = sub nsw i64 %582, %640
  %674 = and i32 %548, 16
  %675 = icmp eq i32 %674, 0
  %676 = add nsw i32 %548, -16
  %677 = zext nneg i32 %676 to i64
  %678 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 41, i64 %677
  %679 = zext i8 %547 to i64
  %680 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 40, i64 %679
  %681 = select i1 %675, i32 %548, i32 %676
  %682 = select i1 %675, ptr %680, ptr %678
  %683 = icmp sgt i32 %681, 3
  br i1 %683, label %684, label %690

684:                                              ; preds = %670
  %685 = load ptr, ptr %0, align 8, !tbaa !13
  %686 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %685, i64 0, i32 5
  store i32 29, ptr %686, align 8, !tbaa !14
  %687 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %685, i64 0, i32 6
  store i32 %681, ptr %687, align 4, !tbaa !17
  %688 = load ptr, ptr %0, align 8, !tbaa !13
  %689 = load ptr, ptr %688, align 8, !tbaa !45
  tail call void %689(ptr noundef nonnull %0) #6
  br label %690

690:                                              ; preds = %684, %670
  %691 = load ptr, ptr %682, align 8, !tbaa !39
  %692 = icmp eq ptr %691, null
  br i1 %692, label %693, label %695

693:                                              ; preds = %690
  %694 = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #6
  store ptr %694, ptr %682, align 8, !tbaa !39
  br label %695

695:                                              ; preds = %693, %690
  %696 = load ptr, ptr %682, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %696, ptr noundef nonnull align 16 dereferenceable(17) %2, i64 17, i1 false)
  %697 = load ptr, ptr %682, align 8, !tbaa !39
  %698 = getelementptr inbounds %struct.JHUFF_TBL, ptr %697, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %698, ptr noundef nonnull align 16 dereferenceable(256) %3, i64 256, i1 false)
  %699 = icmp sgt i64 %673, 0
  br i1 %699, label %532, label %700, !llvm.loop !69

700:                                              ; preds = %695, %520
  %701 = phi ptr [ %524, %520 ], [ %671, %695 ]
  %702 = phi i64 [ %523, %520 ], [ %672, %695 ]
  store ptr %701, ptr %492, align 8, !tbaa !23
  store i64 %702, ptr %493, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %2) #6
  br label %1071

703:                                              ; preds = %496, %512, %537, %563, %654
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %2) #6
  br label %1072

704:                                              ; preds = %100
  %705 = load ptr, ptr %12, align 8, !tbaa !22
  %706 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %705, i64 0, i32 1
  %707 = load i64, ptr %706, align 8, !tbaa !25
  %708 = icmp eq i64 %707, 0
  br i1 %708, label %709, label %716

709:                                              ; preds = %704
  %710 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %705, i64 0, i32 3
  %711 = load ptr, ptr %710, align 8, !tbaa !26
  %712 = tail call i32 %711(ptr noundef %0) #6
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %1072, label %714

714:                                              ; preds = %709
  %715 = load i64, ptr %706, align 8, !tbaa !25
  br label %716

716:                                              ; preds = %714, %704
  %717 = phi i64 [ %715, %714 ], [ %707, %704 ]
  %718 = load ptr, ptr %705, align 8, !tbaa !23
  %719 = add i64 %717, -1
  %720 = getelementptr inbounds i8, ptr %718, i64 1
  %721 = load i8, ptr %718, align 1, !tbaa !17
  %722 = zext i8 %721 to i64
  %723 = shl nuw nsw i64 %722, 8
  %724 = icmp eq i64 %719, 0
  br i1 %724, label %725, label %733

725:                                              ; preds = %716
  %726 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %705, i64 0, i32 3
  %727 = load ptr, ptr %726, align 8, !tbaa !26
  %728 = tail call i32 %727(ptr noundef %0) #6
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %1072, label %730

730:                                              ; preds = %725
  %731 = load ptr, ptr %705, align 8, !tbaa !23
  %732 = load i64, ptr %706, align 8, !tbaa !25
  br label %733

733:                                              ; preds = %730, %716
  %734 = phi ptr [ %731, %730 ], [ %720, %716 ]
  %735 = phi i64 [ %732, %730 ], [ %719, %716 ]
  %736 = add i64 %735, -1
  %737 = getelementptr inbounds i8, ptr %734, i64 1
  %738 = load i8, ptr %734, align 1, !tbaa !17
  %739 = zext i8 %738 to i64
  %740 = or disjoint i64 %723, %739
  %741 = icmp ugt i64 %740, 2
  br i1 %741, label %742, label %907

742:                                              ; preds = %733
  %743 = add nsw i64 %740, -2
  %744 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %705, i64 0, i32 3
  br label %745

745:                                              ; preds = %903, %742
  %746 = phi i64 [ %736, %742 ], [ %848, %903 ]
  %747 = phi ptr [ %737, %742 ], [ %849, %903 ]
  %748 = phi i64 [ %743, %742 ], [ %905, %903 ]
  %749 = icmp eq i64 %746, 0
  br i1 %749, label %750, label %757

750:                                              ; preds = %745
  %751 = load ptr, ptr %744, align 8, !tbaa !26
  %752 = tail call i32 %751(ptr noundef %0) #6
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %1072, label %754

754:                                              ; preds = %750
  %755 = load ptr, ptr %705, align 8, !tbaa !23
  %756 = load i64, ptr %706, align 8, !tbaa !25
  br label %757

757:                                              ; preds = %754, %745
  %758 = phi ptr [ %755, %754 ], [ %747, %745 ]
  %759 = phi i64 [ %756, %754 ], [ %746, %745 ]
  %760 = load i8, ptr %758, align 1, !tbaa !17
  %761 = zext i8 %760 to i32
  %762 = lshr i32 %761, 4
  %763 = and i32 %761, 15
  %764 = load ptr, ptr %0, align 8, !tbaa !13
  %765 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %764, i64 0, i32 5
  store i32 80, ptr %765, align 8, !tbaa !14
  %766 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %764, i64 0, i32 6
  store i32 %763, ptr %766, align 4, !tbaa !17
  %767 = load ptr, ptr %0, align 8, !tbaa !13
  %768 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %767, i64 0, i32 6, i32 0, i64 1
  store i32 %762, ptr %768, align 4, !tbaa !17
  %769 = load ptr, ptr %0, align 8, !tbaa !13
  %770 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %769, i64 0, i32 1
  %771 = load ptr, ptr %770, align 8, !tbaa !18
  tail call void %771(ptr noundef nonnull %0, i32 noundef 1) #6
  %772 = icmp ugt i32 %763, 3
  br i1 %772, label %773, label %779

773:                                              ; preds = %757
  %774 = load ptr, ptr %0, align 8, !tbaa !13
  %775 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %774, i64 0, i32 5
  store i32 30, ptr %775, align 8, !tbaa !14
  %776 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %774, i64 0, i32 6
  store i32 %763, ptr %776, align 4, !tbaa !17
  %777 = load ptr, ptr %0, align 8, !tbaa !13
  %778 = load ptr, ptr %777, align 8, !tbaa !45
  tail call void %778(ptr noundef nonnull %0) #6
  br label %779

779:                                              ; preds = %773, %757
  %780 = zext nneg i32 %763 to i64
  %781 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 39, i64 %780
  %782 = load ptr, ptr %781, align 8, !tbaa !39
  %783 = icmp eq ptr %782, null
  br i1 %783, label %784, label %786

784:                                              ; preds = %779
  %785 = tail call ptr @jpeg_alloc_quant_table(ptr noundef nonnull %0) #6
  store ptr %785, ptr %781, align 8, !tbaa !39
  br label %786

786:                                              ; preds = %784, %779
  %787 = load ptr, ptr %781, align 8, !tbaa !39
  %788 = icmp ult i8 %760, 16
  %789 = add i64 %759, -1
  %790 = getelementptr inbounds i8, ptr %758, i64 1
  br label %791

791:                                              ; preds = %839, %786
  %792 = phi i64 [ 0, %786 ], [ %847, %839 ]
  %793 = phi ptr [ %790, %786 ], [ %849, %839 ]
  %794 = phi i64 [ %789, %786 ], [ %848, %839 ]
  %795 = icmp eq i64 %794, 0
  br i1 %788, label %826, label %796

796:                                              ; preds = %791
  br i1 %795, label %797, label %804

797:                                              ; preds = %796
  %798 = load ptr, ptr %744, align 8, !tbaa !26
  %799 = tail call i32 %798(ptr noundef nonnull %0) #6
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %1072, label %801

801:                                              ; preds = %797
  %802 = load ptr, ptr %705, align 8, !tbaa !23
  %803 = load i64, ptr %706, align 8, !tbaa !25
  br label %804

804:                                              ; preds = %801, %796
  %805 = phi ptr [ %802, %801 ], [ %793, %796 ]
  %806 = phi i64 [ %803, %801 ], [ %794, %796 ]
  %807 = add i64 %806, -1
  %808 = getelementptr inbounds i8, ptr %805, i64 1
  %809 = load i8, ptr %805, align 1, !tbaa !17
  %810 = zext i8 %809 to i16
  %811 = shl nuw i16 %810, 8
  %812 = icmp eq i64 %807, 0
  br i1 %812, label %813, label %820

813:                                              ; preds = %804
  %814 = load ptr, ptr %744, align 8, !tbaa !26
  %815 = tail call i32 %814(ptr noundef nonnull %0) #6
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %1072, label %817

817:                                              ; preds = %813
  %818 = load ptr, ptr %705, align 8, !tbaa !23
  %819 = load i64, ptr %706, align 8, !tbaa !25
  br label %820

820:                                              ; preds = %817, %804
  %821 = phi ptr [ %818, %817 ], [ %808, %804 ]
  %822 = phi i64 [ %819, %817 ], [ %807, %804 ]
  %823 = load i8, ptr %821, align 1, !tbaa !17
  %824 = zext i8 %823 to i16
  %825 = or disjoint i16 %811, %824
  br label %839

826:                                              ; preds = %791
  br i1 %795, label %827, label %834

827:                                              ; preds = %826
  %828 = load ptr, ptr %744, align 8, !tbaa !26
  %829 = tail call i32 %828(ptr noundef nonnull %0) #6
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %1072, label %831

831:                                              ; preds = %827
  %832 = load ptr, ptr %705, align 8, !tbaa !23
  %833 = load i64, ptr %706, align 8, !tbaa !25
  br label %834

834:                                              ; preds = %831, %826
  %835 = phi ptr [ %832, %831 ], [ %793, %826 ]
  %836 = phi i64 [ %833, %831 ], [ %794, %826 ]
  %837 = load i8, ptr %835, align 1, !tbaa !17
  %838 = zext i8 %837 to i16
  br label %839

839:                                              ; preds = %834, %820
  %840 = phi i16 [ %825, %820 ], [ %838, %834 ]
  %841 = phi ptr [ %821, %820 ], [ %835, %834 ]
  %842 = phi i64 [ %822, %820 ], [ %836, %834 ]
  %843 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %792
  %844 = load i32, ptr %843, align 4, !tbaa !59
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds [64 x i16], ptr %787, i64 0, i64 %845
  store i16 %840, ptr %846, align 2, !tbaa !70
  %847 = add nuw nsw i64 %792, 1
  %848 = add i64 %842, -1
  %849 = getelementptr inbounds i8, ptr %841, i64 1
  %850 = icmp eq i64 %847, 64
  br i1 %850, label %851, label %791, !llvm.loop !71

851:                                              ; preds = %839
  %852 = load ptr, ptr %0, align 8, !tbaa !13
  %853 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %852, i64 0, i32 7
  %854 = load i32, ptr %853, align 4, !tbaa !72
  %855 = icmp sgt i32 %854, 1
  br i1 %855, label %856, label %903

856:                                              ; preds = %851, %856
  %857 = phi i64 [ %901, %856 ], [ 0, %851 ]
  %858 = load ptr, ptr %0, align 8, !tbaa !13
  %859 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %858, i64 0, i32 6
  %860 = getelementptr inbounds [64 x i16], ptr %787, i64 0, i64 %857
  %861 = load i16, ptr %860, align 2, !tbaa !70
  %862 = zext i16 %861 to i32
  store i32 %862, ptr %859, align 4, !tbaa !59
  %863 = or disjoint i64 %857, 1
  %864 = getelementptr inbounds [64 x i16], ptr %787, i64 0, i64 %863
  %865 = load i16, ptr %864, align 2, !tbaa !70
  %866 = zext i16 %865 to i32
  %867 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %858, i64 0, i32 6, i32 0, i64 1
  store i32 %866, ptr %867, align 4, !tbaa !59
  %868 = or disjoint i64 %857, 2
  %869 = getelementptr inbounds [64 x i16], ptr %787, i64 0, i64 %868
  %870 = load i16, ptr %869, align 2, !tbaa !70
  %871 = zext i16 %870 to i32
  %872 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %858, i64 0, i32 6, i32 0, i64 2
  store i32 %871, ptr %872, align 4, !tbaa !59
  %873 = or disjoint i64 %857, 3
  %874 = getelementptr inbounds [64 x i16], ptr %787, i64 0, i64 %873
  %875 = load i16, ptr %874, align 2, !tbaa !70
  %876 = zext i16 %875 to i32
  %877 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %858, i64 0, i32 6, i32 0, i64 3
  store i32 %876, ptr %877, align 4, !tbaa !59
  %878 = or disjoint i64 %857, 4
  %879 = getelementptr inbounds [64 x i16], ptr %787, i64 0, i64 %878
  %880 = load i16, ptr %879, align 2, !tbaa !70
  %881 = zext i16 %880 to i32
  %882 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %858, i64 0, i32 6, i32 0, i64 4
  store i32 %881, ptr %882, align 4, !tbaa !59
  %883 = or disjoint i64 %857, 5
  %884 = getelementptr inbounds [64 x i16], ptr %787, i64 0, i64 %883
  %885 = load i16, ptr %884, align 2, !tbaa !70
  %886 = zext i16 %885 to i32
  %887 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %858, i64 0, i32 6, i32 0, i64 5
  store i32 %886, ptr %887, align 4, !tbaa !59
  %888 = or disjoint i64 %857, 6
  %889 = getelementptr inbounds [64 x i16], ptr %787, i64 0, i64 %888
  %890 = load i16, ptr %889, align 2, !tbaa !70
  %891 = zext i16 %890 to i32
  %892 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %858, i64 0, i32 6, i32 0, i64 6
  store i32 %891, ptr %892, align 4, !tbaa !59
  %893 = or disjoint i64 %857, 7
  %894 = getelementptr inbounds [64 x i16], ptr %787, i64 0, i64 %893
  %895 = load i16, ptr %894, align 2, !tbaa !70
  %896 = zext i16 %895 to i32
  %897 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %858, i64 0, i32 6, i32 0, i64 7
  store i32 %896, ptr %897, align 4, !tbaa !59
  %898 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %858, i64 0, i32 5
  store i32 92, ptr %898, align 8, !tbaa !14
  %899 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %858, i64 0, i32 1
  %900 = load ptr, ptr %899, align 8, !tbaa !18
  tail call void %900(ptr noundef nonnull %0, i32 noundef 2) #6
  %901 = add nuw nsw i64 %857, 8
  %902 = icmp ult i64 %857, 56
  br i1 %902, label %856, label %903, !llvm.loop !73

903:                                              ; preds = %856, %851
  %904 = select i1 %788, i64 -65, i64 -129
  %905 = add nsw i64 %904, %748
  %906 = icmp sgt i64 %905, 0
  br i1 %906, label %745, label %907, !llvm.loop !74

907:                                              ; preds = %903, %733
  %908 = phi ptr [ %737, %733 ], [ %849, %903 ]
  %909 = phi i64 [ %736, %733 ], [ %848, %903 ]
  store ptr %908, ptr %705, align 8, !tbaa !23
  store i64 %909, ptr %706, align 8, !tbaa !25
  br label %1071

910:                                              ; preds = %100
  %911 = load ptr, ptr %10, align 8, !tbaa !22
  %912 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %911, i64 0, i32 1
  %913 = load i64, ptr %912, align 8, !tbaa !25
  %914 = icmp eq i64 %913, 0
  br i1 %914, label %915, label %922

915:                                              ; preds = %910
  %916 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %911, i64 0, i32 3
  %917 = load ptr, ptr %916, align 8, !tbaa !26
  %918 = tail call i32 %917(ptr noundef %0) #6
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %1072, label %920

920:                                              ; preds = %915
  %921 = load i64, ptr %912, align 8, !tbaa !25
  br label %922

922:                                              ; preds = %920, %910
  %923 = phi i64 [ %921, %920 ], [ %913, %910 ]
  %924 = load ptr, ptr %911, align 8, !tbaa !23
  %925 = add i64 %923, -1
  %926 = getelementptr inbounds i8, ptr %924, i64 1
  %927 = load i8, ptr %924, align 1, !tbaa !17
  %928 = zext i8 %927 to i64
  %929 = shl nuw nsw i64 %928, 8
  %930 = icmp eq i64 %925, 0
  br i1 %930, label %931, label %939

931:                                              ; preds = %922
  %932 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %911, i64 0, i32 3
  %933 = load ptr, ptr %932, align 8, !tbaa !26
  %934 = tail call i32 %933(ptr noundef %0) #6
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %1072, label %936

936:                                              ; preds = %931
  %937 = load ptr, ptr %911, align 8, !tbaa !23
  %938 = load i64, ptr %912, align 8, !tbaa !25
  br label %939

939:                                              ; preds = %936, %922
  %940 = phi ptr [ %937, %936 ], [ %926, %922 ]
  %941 = phi i64 [ %938, %936 ], [ %925, %922 ]
  %942 = add i64 %941, -1
  %943 = getelementptr inbounds i8, ptr %940, i64 1
  %944 = load i8, ptr %940, align 1, !tbaa !17
  %945 = zext i8 %944 to i64
  %946 = or disjoint i64 %929, %945
  %947 = icmp eq i64 %946, 4
  br i1 %947, label %952, label %948

948:                                              ; preds = %939
  %949 = load ptr, ptr %0, align 8, !tbaa !13
  %950 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %949, i64 0, i32 5
  store i32 9, ptr %950, align 8, !tbaa !14
  %951 = load ptr, ptr %949, align 8, !tbaa !45
  tail call void %951(ptr noundef nonnull %0) #6
  br label %952

952:                                              ; preds = %948, %939
  %953 = icmp eq i64 %942, 0
  br i1 %953, label %954, label %962

954:                                              ; preds = %952
  %955 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %911, i64 0, i32 3
  %956 = load ptr, ptr %955, align 8, !tbaa !26
  %957 = tail call i32 %956(ptr noundef %0) #6
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %1072, label %959

959:                                              ; preds = %954
  %960 = load ptr, ptr %911, align 8, !tbaa !23
  %961 = load i64, ptr %912, align 8, !tbaa !25
  br label %962

962:                                              ; preds = %959, %952
  %963 = phi ptr [ %960, %959 ], [ %943, %952 ]
  %964 = phi i64 [ %961, %959 ], [ %942, %952 ]
  %965 = add i64 %964, -1
  %966 = getelementptr inbounds i8, ptr %963, i64 1
  %967 = load i8, ptr %963, align 1, !tbaa !17
  %968 = zext i8 %967 to i32
  %969 = shl nuw nsw i32 %968, 8
  %970 = icmp eq i64 %965, 0
  br i1 %970, label %971, label %979

971:                                              ; preds = %962
  %972 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %911, i64 0, i32 3
  %973 = load ptr, ptr %972, align 8, !tbaa !26
  %974 = tail call i32 %973(ptr noundef %0) #6
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %1072, label %976

976:                                              ; preds = %971
  %977 = load ptr, ptr %911, align 8, !tbaa !23
  %978 = load i64, ptr %912, align 8, !tbaa !25
  br label %979

979:                                              ; preds = %976, %962
  %980 = phi ptr [ %977, %976 ], [ %966, %962 ]
  %981 = phi i64 [ %978, %976 ], [ %965, %962 ]
  %982 = add i64 %981, -1
  %983 = getelementptr inbounds i8, ptr %980, i64 1
  %984 = load i8, ptr %980, align 1, !tbaa !17
  %985 = zext i8 %984 to i32
  %986 = or disjoint i32 %969, %985
  %987 = load ptr, ptr %0, align 8, !tbaa !13
  %988 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %987, i64 0, i32 5
  store i32 81, ptr %988, align 8, !tbaa !14
  %989 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %987, i64 0, i32 6
  store i32 %986, ptr %989, align 4, !tbaa !17
  %990 = load ptr, ptr %0, align 8, !tbaa !13
  %991 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %990, i64 0, i32 1
  %992 = load ptr, ptr %991, align 8, !tbaa !18
  tail call void %992(ptr noundef nonnull %0, i32 noundef 1) #6
  store i32 %986, ptr %11, align 8, !tbaa !75
  store ptr %983, ptr %911, align 8, !tbaa !23
  store i64 %982, ptr %912, align 8, !tbaa !25
  br label %1071

993:                                              ; preds = %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100, %100
  %994 = load ptr, ptr %9, align 8, !tbaa !27
  %995 = add nsw i32 %101, -224
  %996 = sext i32 %995 to i64
  %997 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %994, i64 0, i32 4, i64 %996
  %998 = load ptr, ptr %997, align 8, !tbaa !39
  %999 = tail call i32 %998(ptr noundef %0) #6
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1072, label %1071

1001:                                             ; preds = %100
  %1002 = load ptr, ptr %8, align 8, !tbaa !27
  %1003 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %1002, i64 0, i32 3
  %1004 = load ptr, ptr %1003, align 8, !tbaa !38
  %1005 = tail call i32 %1004(ptr noundef %0) #6
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1072, label %1071

1007:                                             ; preds = %100, %100, %100, %100, %100, %100, %100, %100, %100
  %1008 = load ptr, ptr %0, align 8, !tbaa !13
  %1009 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1008, i64 0, i32 5
  store i32 91, ptr %1009, align 8, !tbaa !14
  %1010 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1008, i64 0, i32 6
  store i32 %101, ptr %1010, align 4, !tbaa !17
  %1011 = load ptr, ptr %0, align 8, !tbaa !13
  %1012 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1011, i64 0, i32 1
  %1013 = load ptr, ptr %1012, align 8, !tbaa !18
  tail call void %1013(ptr noundef nonnull %0, i32 noundef 1) #6
  br label %1071

1014:                                             ; preds = %100
  %1015 = load ptr, ptr %7, align 8, !tbaa !22
  %1016 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1015, i64 0, i32 1
  %1017 = load i64, ptr %1016, align 8, !tbaa !25
  %1018 = icmp eq i64 %1017, 0
  br i1 %1018, label %1019, label %1026

1019:                                             ; preds = %1014
  %1020 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1015, i64 0, i32 3
  %1021 = load ptr, ptr %1020, align 8, !tbaa !26
  %1022 = tail call i32 %1021(ptr noundef %0) #6
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1072, label %1024

1024:                                             ; preds = %1019
  %1025 = load i64, ptr %1016, align 8, !tbaa !25
  br label %1026

1026:                                             ; preds = %1024, %1014
  %1027 = phi i64 [ %1025, %1024 ], [ %1017, %1014 ]
  %1028 = load ptr, ptr %1015, align 8, !tbaa !23
  %1029 = add i64 %1027, -1
  %1030 = getelementptr inbounds i8, ptr %1028, i64 1
  %1031 = load i8, ptr %1028, align 1, !tbaa !17
  %1032 = zext i8 %1031 to i64
  %1033 = shl nuw nsw i64 %1032, 8
  %1034 = icmp eq i64 %1029, 0
  br i1 %1034, label %1035, label %1043

1035:                                             ; preds = %1026
  %1036 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1015, i64 0, i32 3
  %1037 = load ptr, ptr %1036, align 8, !tbaa !26
  %1038 = tail call i32 %1037(ptr noundef %0) #6
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1072, label %1040

1040:                                             ; preds = %1035
  %1041 = load ptr, ptr %1015, align 8, !tbaa !23
  %1042 = load i64, ptr %1016, align 8, !tbaa !25
  br label %1043

1043:                                             ; preds = %1040, %1026
  %1044 = phi ptr [ %1041, %1040 ], [ %1030, %1026 ]
  %1045 = phi i64 [ %1042, %1040 ], [ %1029, %1026 ]
  %1046 = add i64 %1045, -1
  %1047 = getelementptr inbounds i8, ptr %1044, i64 1
  %1048 = load i8, ptr %1044, align 1, !tbaa !17
  %1049 = zext i8 %1048 to i64
  %1050 = or disjoint i64 %1033, %1049
  %1051 = load ptr, ptr %0, align 8, !tbaa !13
  %1052 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1051, i64 0, i32 5
  store i32 90, ptr %1052, align 8, !tbaa !14
  %1053 = load i32, ptr %4, align 4, !tbaa !5
  %1054 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1051, i64 0, i32 6
  store i32 %1053, ptr %1054, align 4, !tbaa !17
  %1055 = trunc i64 %1050 to i32
  %1056 = load ptr, ptr %0, align 8, !tbaa !13
  %1057 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1056, i64 0, i32 6, i32 0, i64 1
  store i32 %1055, ptr %1057, align 4, !tbaa !17
  %1058 = load ptr, ptr %0, align 8, !tbaa !13
  %1059 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1058, i64 0, i32 1
  %1060 = load ptr, ptr %1059, align 8, !tbaa !18
  tail call void %1060(ptr noundef nonnull %0, i32 noundef 1) #6
  store ptr %1047, ptr %1015, align 8, !tbaa !23
  store i64 %1046, ptr %1016, align 8, !tbaa !25
  %1061 = load ptr, ptr %7, align 8, !tbaa !22
  %1062 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1061, i64 0, i32 4
  %1063 = load ptr, ptr %1062, align 8, !tbaa !76
  %1064 = add nsw i64 %1050, -2
  tail call void %1063(ptr noundef nonnull %0, i64 noundef %1064) #6
  br label %1071

1065:                                             ; preds = %100
  %1066 = load ptr, ptr %0, align 8, !tbaa !13
  %1067 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1066, i64 0, i32 5
  store i32 67, ptr %1067, align 8, !tbaa !14
  %1068 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1066, i64 0, i32 6
  store i32 %101, ptr %1068, align 4, !tbaa !17
  %1069 = load ptr, ptr %0, align 8, !tbaa !13
  %1070 = load ptr, ptr %1069, align 8, !tbaa !45
  tail call void %1070(ptr noundef nonnull %0) #6
  br label %1071

1071:                                             ; preds = %1043, %979, %907, %700, %488, %115, %1001, %993, %127, %124, %121, %118, %1065, %1007, %130
  store i32 0, ptr %4, align 4, !tbaa !5
  br label %42, !llvm.loop !77

1072:                                             ; preds = %1035, %1019, %971, %954, %931, %915, %725, %709, %398, %382, %70, %55, %1001, %993, %127, %124, %121, %118, %97, %750, %438, %423, %827, %813, %797, %247, %232, %703, %336, %319, %302, %187, %170, %153, %372, %344
  %1073 = phi i32 [ 2, %372 ], [ 1, %344 ], [ 0, %703 ], [ 0, %153 ], [ 0, %170 ], [ 0, %187 ], [ 0, %302 ], [ 0, %319 ], [ 0, %336 ], [ 0, %232 ], [ 0, %247 ], [ 0, %797 ], [ 0, %813 ], [ 0, %827 ], [ 0, %423 ], [ 0, %438 ], [ 0, %750 ], [ 0, %97 ], [ 0, %118 ], [ 0, %121 ], [ 0, %124 ], [ 0, %127 ], [ 0, %993 ], [ 0, %1001 ], [ 0, %55 ], [ 0, %70 ], [ 0, %382 ], [ 0, %398 ], [ 0, %709 ], [ 0, %725 ], [ 0, %915 ], [ 0, %931 ], [ 0, %954 ], [ 0, %971 ], [ 0, %1019 ], [ 0, %1035 ]
  ret i32 %1073
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @read_restart_marker(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 72
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @next_marker(ptr noundef %0), !range !19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %5, %1
  %9 = load i32, ptr %2, align 4, !tbaa !5
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %11 = load ptr, ptr %10, align 8, !tbaa !27
  %12 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !65
  %14 = add nsw i32 %13, 208
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = load ptr, ptr %0, align 8, !tbaa !13
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 97, ptr %18, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 6
  store i32 %13, ptr %19, align 4, !tbaa !17
  %20 = load ptr, ptr %0, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  tail call void %22(ptr noundef nonnull %0, i32 noundef 3) #6
  store i32 0, ptr %2, align 4, !tbaa !5
  br label %30

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %25, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !78
  %28 = tail call i32 %27(ptr noundef %0, i32 noundef %13) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23, %16
  %31 = load ptr, ptr %10, align 8, !tbaa !27
  %32 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !65
  %34 = add nsw i32 %33, 1
  %35 = and i32 %34, 7
  store i32 %35, ptr %32, align 8, !tbaa !65
  br label %36

36:                                               ; preds = %23, %5, %30
  %37 = phi i32 [ 1, %30 ], [ 0, %5 ], [ 0, %23 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @skip_variable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !25
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = tail call i32 %9(ptr noundef %0) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %54, label %12

12:                                               ; preds = %7
  %13 = load i64, ptr %4, align 8, !tbaa !25
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i64 [ %13, %12 ], [ %5, %1 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !23
  %17 = add i64 %15, -1
  %18 = getelementptr inbounds i8, ptr %16, i64 1
  %19 = load i8, ptr %16, align 1, !tbaa !17
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 8
  %22 = icmp eq i64 %17, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !26
  %26 = tail call i32 %25(ptr noundef %0) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %3, align 8, !tbaa !23
  %30 = load i64, ptr %4, align 8, !tbaa !25
  br label %31

31:                                               ; preds = %28, %14
  %32 = phi ptr [ %29, %28 ], [ %18, %14 ]
  %33 = phi i64 [ %30, %28 ], [ %17, %14 ]
  %34 = add i64 %33, -1
  %35 = getelementptr inbounds i8, ptr %32, i64 1
  %36 = load i8, ptr %32, align 1, !tbaa !17
  %37 = zext i8 %36 to i64
  %38 = or disjoint i64 %21, %37
  %39 = load ptr, ptr %0, align 8, !tbaa !13
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i64 0, i32 5
  store i32 90, ptr %40, align 8, !tbaa !14
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 72
  %42 = load i32, ptr %41, align 4, !tbaa !5
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i64 0, i32 6
  store i32 %42, ptr %43, align 4, !tbaa !17
  %44 = trunc i64 %38 to i32
  %45 = load ptr, ptr %0, align 8, !tbaa !13
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 6, i32 0, i64 1
  store i32 %44, ptr %46, align 4, !tbaa !17
  %47 = load ptr, ptr %0, align 8, !tbaa !13
  %48 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !18
  tail call void %49(ptr noundef nonnull %0, i32 noundef 1) #6
  store ptr %35, ptr %3, align 8, !tbaa !23
  store i64 %34, ptr %4, align 8, !tbaa !25
  %50 = load ptr, ptr %2, align 8, !tbaa !22
  %51 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %50, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !76
  %53 = add nsw i64 %38, -2
  tail call void %52(ptr noundef nonnull %0, i64 noundef %53) #6
  br label %54

54:                                               ; preds = %23, %7, %31
  %55 = phi i32 [ 1, %31 ], [ 0, %7 ], [ 0, %23 ]
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_app0(ptr noundef %0) #0 {
  %2 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #6
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !25
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = tail call i32 %10(ptr noundef %0) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %202, label %13

13:                                               ; preds = %8
  %14 = load i64, ptr %5, align 8, !tbaa !25
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi i64 [ %14, %13 ], [ %6, %1 ]
  %17 = load ptr, ptr %4, align 8, !tbaa !23
  %18 = add i64 %16, -1
  %19 = getelementptr inbounds i8, ptr %17, i64 1
  %20 = load i8, ptr %17, align 1, !tbaa !17
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 8
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !26
  %27 = tail call i32 %26(ptr noundef %0) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %202, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 8, !tbaa !23
  %31 = load i64, ptr %5, align 8, !tbaa !25
  br label %32

32:                                               ; preds = %29, %15
  %33 = phi ptr [ %30, %29 ], [ %19, %15 ]
  %34 = phi i64 [ %31, %29 ], [ %18, %15 ]
  %35 = add i64 %34, -1
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  %37 = load i8, ptr %33, align 1, !tbaa !17
  %38 = zext i8 %37 to i64
  %39 = or disjoint i64 %22, %38
  %40 = icmp ugt i64 %39, 15
  br i1 %40, label %41, label %178

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  br label %43

43:                                               ; preds = %41, %55
  %44 = phi i64 [ 0, %41 ], [ %62, %55 ]
  %45 = phi i64 [ %35, %41 ], [ %58, %55 ]
  %46 = phi ptr [ %36, %41 ], [ %59, %55 ]
  %47 = icmp eq i64 %45, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load ptr, ptr %42, align 8, !tbaa !26
  %50 = tail call i32 %49(ptr noundef %0) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %202, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %4, align 8, !tbaa !23
  %54 = load i64, ptr %5, align 8, !tbaa !25
  br label %55

55:                                               ; preds = %52, %43
  %56 = phi ptr [ %53, %52 ], [ %46, %43 ]
  %57 = phi i64 [ %54, %52 ], [ %45, %43 ]
  %58 = add i64 %57, -1
  %59 = getelementptr inbounds i8, ptr %56, i64 1
  %60 = load i8, ptr %56, align 1, !tbaa !17
  %61 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 %44
  store i8 %60, ptr %61, align 1, !tbaa !17
  %62 = add nuw nsw i64 %44, 1
  %63 = icmp eq i64 %62, 14
  br i1 %63, label %64, label %43, !llvm.loop !79

64:                                               ; preds = %55
  %65 = add nsw i64 %39, -16
  %66 = load i8, ptr %2, align 1, !tbaa !17
  %67 = icmp eq i8 %66, 74
  %68 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 1
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 70
  %71 = select i1 %67, i1 %70, i1 false
  %72 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 2
  %73 = load i8, ptr %72, align 1
  %74 = icmp eq i8 %73, 73
  %75 = select i1 %71, i1 %74, i1 false
  %76 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 3
  %77 = load i8, ptr %76, align 1
  %78 = icmp eq i8 %77, 70
  %79 = select i1 %75, i1 %78, i1 false
  %80 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 4
  %81 = load i8, ptr %80, align 1
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %79, i1 %82, i1 false
  br i1 %83, label %84, label %173

84:                                               ; preds = %64
  %85 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 5
  %86 = load i8, ptr %85, align 1, !tbaa !17
  %87 = icmp eq i8 %86, 1
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %0, align 8, !tbaa !13
  %90 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %89, i64 0, i32 5
  store i32 115, ptr %90, align 8, !tbaa !14
  %91 = zext i8 %86 to i32
  %92 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %89, i64 0, i32 6
  store i32 %91, ptr %92, align 4, !tbaa !17
  %93 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 6
  %94 = load i8, ptr %93, align 1, !tbaa !17
  br label %104

95:                                               ; preds = %84
  %96 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 6
  %97 = load i8, ptr %96, align 1, !tbaa !17
  %98 = icmp ugt i8 %97, 2
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load ptr, ptr %0, align 8, !tbaa !13
  %101 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %100, i64 0, i32 5
  store i32 88, ptr %101, align 8, !tbaa !14
  %102 = zext nneg i8 %86 to i32
  %103 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %100, i64 0, i32 6
  store i32 %102, ptr %103, align 4, !tbaa !17
  br label %104

104:                                              ; preds = %88, %99
  %105 = phi i8 [ %97, %99 ], [ %94, %88 ]
  %106 = phi i32 [ 1, %99 ], [ -1, %88 ]
  %107 = zext i8 %105 to i32
  %108 = load ptr, ptr %0, align 8, !tbaa !13
  %109 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %108, i64 0, i32 6, i32 0, i64 1
  store i32 %107, ptr %109, align 4, !tbaa !17
  %110 = load ptr, ptr %0, align 8, !tbaa !13
  %111 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !18
  tail call void %112(ptr noundef nonnull %0, i32 noundef %106) #6
  br label %113

113:                                              ; preds = %104, %95
  %114 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 50
  store i32 1, ptr %114, align 4, !tbaa !80
  %115 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 7
  %116 = load i8, ptr %115, align 1, !tbaa !17
  %117 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 51
  store i8 %116, ptr %117, align 8, !tbaa !81
  %118 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 8
  %119 = load i8, ptr %118, align 1, !tbaa !17
  %120 = zext i8 %119 to i16
  %121 = shl nuw i16 %120, 8
  %122 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 9
  %123 = load i8, ptr %122, align 1, !tbaa !17
  %124 = zext i8 %123 to i16
  %125 = or disjoint i16 %121, %124
  %126 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 52
  store i16 %125, ptr %126, align 2, !tbaa !48
  %127 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 10
  %128 = load i8, ptr %127, align 1, !tbaa !17
  %129 = zext i8 %128 to i16
  %130 = shl nuw i16 %129, 8
  %131 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 11
  %132 = load i8, ptr %131, align 1, !tbaa !17
  %133 = zext i8 %132 to i16
  %134 = or disjoint i16 %130, %133
  %135 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 53
  store i16 %134, ptr %135, align 4, !tbaa !49
  %136 = load ptr, ptr %0, align 8, !tbaa !13
  %137 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %136, i64 0, i32 6
  %138 = zext i16 %125 to i32
  store i32 %138, ptr %137, align 4, !tbaa !59
  %139 = zext i16 %134 to i32
  %140 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %136, i64 0, i32 6, i32 0, i64 1
  store i32 %139, ptr %140, align 4, !tbaa !59
  %141 = zext i8 %116 to i32
  %142 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %136, i64 0, i32 6, i32 0, i64 2
  store i32 %141, ptr %142, align 4, !tbaa !59
  %143 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %136, i64 0, i32 5
  store i32 86, ptr %143, align 8, !tbaa !14
  %144 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %136, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !18
  tail call void %145(ptr noundef nonnull %0, i32 noundef 1) #6
  %146 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 12
  %147 = load i8, ptr %146, align 1, !tbaa !17
  %148 = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 13
  %149 = load i8, ptr %148, align 1, !tbaa !17
  %150 = or i8 %149, %147
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %113
  %153 = load ptr, ptr %0, align 8, !tbaa !13
  %154 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %153, i64 0, i32 5
  store i32 89, ptr %154, align 8, !tbaa !14
  %155 = zext i8 %147 to i32
  %156 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %153, i64 0, i32 6
  store i32 %155, ptr %156, align 4, !tbaa !17
  %157 = zext i8 %149 to i32
  %158 = load ptr, ptr %0, align 8, !tbaa !13
  %159 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %158, i64 0, i32 6, i32 0, i64 1
  store i32 %157, ptr %159, align 4, !tbaa !17
  %160 = load ptr, ptr %0, align 8, !tbaa !13
  %161 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !18
  tail call void %162(ptr noundef nonnull %0, i32 noundef 1) #6
  br label %163

163:                                              ; preds = %152, %113
  %164 = zext i8 %147 to i64
  %165 = zext i8 %149 to i64
  %166 = mul nuw nsw i64 %164, 3
  %167 = mul nuw nsw i64 %166, %165
  %168 = icmp eq i64 %65, %167
  br i1 %168, label %193, label %169

169:                                              ; preds = %163
  %170 = load ptr, ptr %0, align 8, !tbaa !13
  %171 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %170, i64 0, i32 5
  store i32 87, ptr %171, align 8, !tbaa !14
  %172 = trunc i64 %65 to i32
  br label %183

173:                                              ; preds = %64
  %174 = load ptr, ptr %0, align 8, !tbaa !13
  %175 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %174, i64 0, i32 5
  store i32 76, ptr %175, align 8, !tbaa !14
  %176 = trunc i64 %65 to i32
  %177 = add nuw nsw i32 %176, 14
  br label %183

178:                                              ; preds = %32
  %179 = add nsw i64 %39, -2
  %180 = load ptr, ptr %0, align 8, !tbaa !13
  %181 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %180, i64 0, i32 5
  store i32 76, ptr %181, align 8, !tbaa !14
  %182 = trunc i64 %179 to i32
  br label %183

183:                                              ; preds = %178, %169, %173
  %184 = phi ptr [ %174, %173 ], [ %170, %169 ], [ %180, %178 ]
  %185 = phi i32 [ %177, %173 ], [ %172, %169 ], [ %182, %178 ]
  %186 = phi i64 [ %65, %173 ], [ %65, %169 ], [ %179, %178 ]
  %187 = phi ptr [ %59, %173 ], [ %59, %169 ], [ %36, %178 ]
  %188 = phi i64 [ %58, %173 ], [ %58, %169 ], [ %35, %178 ]
  %189 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %184, i64 0, i32 6
  store i32 %185, ptr %189, align 4, !tbaa !17
  %190 = load ptr, ptr %0, align 8, !tbaa !13
  %191 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !18
  tail call void %192(ptr noundef nonnull %0, i32 noundef 1) #6
  br label %193

193:                                              ; preds = %183, %163
  %194 = phi i64 [ %65, %163 ], [ %186, %183 ]
  %195 = phi ptr [ %59, %163 ], [ %187, %183 ]
  %196 = phi i64 [ %58, %163 ], [ %188, %183 ]
  store ptr %195, ptr %4, align 8, !tbaa !23
  store i64 %196, ptr %5, align 8, !tbaa !25
  %197 = icmp sgt i64 %194, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load ptr, ptr %3, align 8, !tbaa !22
  %200 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %199, i64 0, i32 4
  %201 = load ptr, ptr %200, align 8, !tbaa !76
  tail call void %201(ptr noundef %0, i64 noundef %194) #6
  br label %202

202:                                              ; preds = %48, %193, %198, %24, %8
  %203 = phi i32 [ 0, %8 ], [ 0, %24 ], [ 1, %198 ], [ 1, %193 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #6
  ret i32 %203
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_app14(ptr noundef %0) #0 {
  %2 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #6
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !25
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = tail call i32 %10(ptr noundef %0) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %149, label %13

13:                                               ; preds = %8
  %14 = load i64, ptr %5, align 8, !tbaa !25
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi i64 [ %14, %13 ], [ %6, %1 ]
  %17 = load ptr, ptr %4, align 8, !tbaa !23
  %18 = add i64 %16, -1
  %19 = getelementptr inbounds i8, ptr %17, i64 1
  %20 = load i8, ptr %17, align 1, !tbaa !17
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 8
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !26
  %27 = tail call i32 %26(ptr noundef %0) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %149, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 8, !tbaa !23
  %31 = load i64, ptr %5, align 8, !tbaa !25
  br label %32

32:                                               ; preds = %29, %15
  %33 = phi ptr [ %30, %29 ], [ %19, %15 ]
  %34 = phi i64 [ %31, %29 ], [ %18, %15 ]
  %35 = add i64 %34, -1
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  %37 = load i8, ptr %33, align 1, !tbaa !17
  %38 = zext i8 %37 to i64
  %39 = or disjoint i64 %22, %38
  %40 = icmp ugt i64 %39, 13
  br i1 %40, label %41, label %131

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  br label %43

43:                                               ; preds = %41, %55
  %44 = phi i64 [ 0, %41 ], [ %62, %55 ]
  %45 = phi i64 [ %35, %41 ], [ %58, %55 ]
  %46 = phi ptr [ %36, %41 ], [ %59, %55 ]
  %47 = icmp eq i64 %45, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load ptr, ptr %42, align 8, !tbaa !26
  %50 = tail call i32 %49(ptr noundef %0) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %149, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %4, align 8, !tbaa !23
  %54 = load i64, ptr %5, align 8, !tbaa !25
  br label %55

55:                                               ; preds = %52, %43
  %56 = phi ptr [ %53, %52 ], [ %46, %43 ]
  %57 = phi i64 [ %54, %52 ], [ %45, %43 ]
  %58 = add i64 %57, -1
  %59 = getelementptr inbounds i8, ptr %56, i64 1
  %60 = load i8, ptr %56, align 1, !tbaa !17
  %61 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 %44
  store i8 %60, ptr %61, align 1, !tbaa !17
  %62 = add nuw nsw i64 %44, 1
  %63 = icmp eq i64 %62, 12
  br i1 %63, label %64, label %43, !llvm.loop !82

64:                                               ; preds = %55
  %65 = add nsw i64 %39, -14
  %66 = load i8, ptr %2, align 1, !tbaa !17
  %67 = icmp eq i8 %66, 65
  %68 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 1
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 100
  %71 = select i1 %67, i1 %70, i1 false
  %72 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 2
  %73 = load i8, ptr %72, align 1
  %74 = icmp eq i8 %73, 111
  %75 = select i1 %71, i1 %74, i1 false
  %76 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 3
  %77 = load i8, ptr %76, align 1
  %78 = icmp eq i8 %77, 98
  %79 = select i1 %75, i1 %78, i1 false
  %80 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 4
  %81 = load i8, ptr %80, align 1
  %82 = icmp eq i8 %81, 101
  %83 = select i1 %79, i1 %82, i1 false
  br i1 %83, label %84, label %122

84:                                               ; preds = %64
  %85 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 5
  %86 = load i8, ptr %85, align 1, !tbaa !17
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 8
  %89 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 6
  %90 = load i8, ptr %89, align 1, !tbaa !17
  %91 = zext i8 %90 to i32
  %92 = or disjoint i32 %88, %91
  %93 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 7
  %94 = load i8, ptr %93, align 1, !tbaa !17
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 8
  %98 = load i8, ptr %97, align 1, !tbaa !17
  %99 = zext i8 %98 to i32
  %100 = or disjoint i32 %96, %99
  %101 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 9
  %102 = load i8, ptr %101, align 1, !tbaa !17
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 8
  %105 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 10
  %106 = load i8, ptr %105, align 1, !tbaa !17
  %107 = zext i8 %106 to i32
  %108 = or disjoint i32 %104, %107
  %109 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 11
  %110 = load i8, ptr %109, align 1, !tbaa !17
  %111 = zext i8 %110 to i32
  %112 = load ptr, ptr %0, align 8, !tbaa !13
  %113 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i64 0, i32 6
  store i32 %92, ptr %113, align 4, !tbaa !59
  %114 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i64 0, i32 6, i32 0, i64 1
  store i32 %100, ptr %114, align 4, !tbaa !59
  %115 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i64 0, i32 6, i32 0, i64 2
  store i32 %108, ptr %115, align 4, !tbaa !59
  %116 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i64 0, i32 6, i32 0, i64 3
  store i32 %111, ptr %116, align 4, !tbaa !59
  %117 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i64 0, i32 5
  store i32 75, ptr %117, align 8, !tbaa !14
  %118 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !18
  tail call void %119(ptr noundef nonnull %0, i32 noundef 1) #6
  %120 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 54
  store i32 1, ptr %120, align 8, !tbaa !50
  %121 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 55
  store i8 %110, ptr %121, align 4, !tbaa !51
  br label %140

122:                                              ; preds = %64
  %123 = load ptr, ptr %0, align 8, !tbaa !13
  %124 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %123, i64 0, i32 5
  store i32 77, ptr %124, align 8, !tbaa !14
  %125 = trunc i64 %65 to i32
  %126 = add nuw nsw i32 %125, 12
  %127 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %123, i64 0, i32 6
  store i32 %126, ptr %127, align 4, !tbaa !17
  %128 = load ptr, ptr %0, align 8, !tbaa !13
  %129 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !18
  tail call void %130(ptr noundef nonnull %0, i32 noundef 1) #6
  br label %140

131:                                              ; preds = %32
  %132 = add nsw i64 %39, -2
  %133 = load ptr, ptr %0, align 8, !tbaa !13
  %134 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %133, i64 0, i32 5
  store i32 77, ptr %134, align 8, !tbaa !14
  %135 = trunc i64 %132 to i32
  %136 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %133, i64 0, i32 6
  store i32 %135, ptr %136, align 4, !tbaa !17
  %137 = load ptr, ptr %0, align 8, !tbaa !13
  %138 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !18
  tail call void %139(ptr noundef nonnull %0, i32 noundef 1) #6
  br label %140

140:                                              ; preds = %84, %122, %131
  %141 = phi i64 [ %65, %84 ], [ %65, %122 ], [ %132, %131 ]
  %142 = phi ptr [ %59, %84 ], [ %59, %122 ], [ %36, %131 ]
  %143 = phi i64 [ %58, %84 ], [ %58, %122 ], [ %35, %131 ]
  store ptr %142, ptr %4, align 8, !tbaa !23
  store i64 %143, ptr %5, align 8, !tbaa !25
  %144 = icmp sgt i64 %141, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load ptr, ptr %3, align 8, !tbaa !22
  %147 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %146, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !76
  tail call void %148(ptr noundef %0, i64 noundef %141) #6
  br label %149

149:                                              ; preds = %48, %140, %145, %24, %8
  %150 = phi i32 [ 0, %8 ], [ 0, %24 ], [ 1, %145 ], [ 1, %140 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #6
  ret i32 %150
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @get_sof(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %5, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 44
  store i32 %1, ptr %9, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 45
  store i32 %2, ptr %10, align 4, !tbaa !84
  %11 = icmp eq i64 %8, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %5, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !26
  %15 = tail call i32 %14(ptr noundef %0) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %293, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8, !tbaa !23
  %19 = load i64, ptr %7, align 8, !tbaa !25
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi ptr [ %18, %17 ], [ %6, %3 ]
  %22 = phi i64 [ %19, %17 ], [ %8, %3 ]
  %23 = add i64 %22, -1
  %24 = getelementptr inbounds i8, ptr %21, i64 1
  %25 = load i8, ptr %21, align 1, !tbaa !17
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 8
  %28 = icmp eq i64 %23, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %5, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !26
  %32 = tail call i32 %31(ptr noundef %0) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %293, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %5, align 8, !tbaa !23
  %36 = load i64, ptr %7, align 8, !tbaa !25
  br label %37

37:                                               ; preds = %34, %20
  %38 = phi ptr [ %35, %34 ], [ %24, %20 ]
  %39 = phi i64 [ %36, %34 ], [ %23, %20 ]
  %40 = add i64 %39, -1
  %41 = getelementptr inbounds i8, ptr %38, i64 1
  %42 = load i8, ptr %38, align 1, !tbaa !17
  %43 = zext i8 %42 to i64
  %44 = or disjoint i64 %27, %43
  %45 = icmp eq i64 %40, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %5, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !26
  %49 = tail call i32 %48(ptr noundef %0) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %293, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %5, align 8, !tbaa !23
  %53 = load i64, ptr %7, align 8, !tbaa !25
  br label %54

54:                                               ; preds = %51, %37
  %55 = phi ptr [ %52, %51 ], [ %41, %37 ]
  %56 = phi i64 [ %53, %51 ], [ %40, %37 ]
  %57 = add i64 %56, -1
  %58 = getelementptr inbounds i8, ptr %55, i64 1
  %59 = load i8, ptr %55, align 1, !tbaa !17
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 42
  store i32 %60, ptr %61, align 8, !tbaa !85
  %62 = icmp eq i64 %57, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %5, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !26
  %66 = tail call i32 %65(ptr noundef %0) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %293, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %5, align 8, !tbaa !23
  %70 = load i64, ptr %7, align 8, !tbaa !25
  br label %71

71:                                               ; preds = %68, %54
  %72 = phi ptr [ %69, %68 ], [ %58, %54 ]
  %73 = phi i64 [ %70, %68 ], [ %57, %54 ]
  %74 = add i64 %73, -1
  %75 = getelementptr inbounds i8, ptr %72, i64 1
  %76 = load i8, ptr %72, align 1, !tbaa !17
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 7
  store i32 %78, ptr %79, align 4, !tbaa !86
  %80 = icmp eq i64 %74, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %5, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !26
  %84 = tail call i32 %83(ptr noundef %0) #6
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %293, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %5, align 8, !tbaa !23
  %88 = load i64, ptr %7, align 8, !tbaa !25
  br label %89

89:                                               ; preds = %86, %71
  %90 = phi ptr [ %87, %86 ], [ %75, %71 ]
  %91 = phi i64 [ %88, %86 ], [ %74, %71 ]
  %92 = add i64 %91, -1
  %93 = getelementptr inbounds i8, ptr %90, i64 1
  %94 = load i8, ptr %90, align 1, !tbaa !17
  %95 = zext i8 %94 to i32
  %96 = load i32, ptr %79, align 4, !tbaa !86
  %97 = add i32 %96, %95
  store i32 %97, ptr %79, align 4, !tbaa !86
  %98 = icmp eq i64 %92, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %5, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !26
  %102 = tail call i32 %101(ptr noundef %0) #6
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %293, label %104

104:                                              ; preds = %99
  %105 = load ptr, ptr %5, align 8, !tbaa !23
  %106 = load i64, ptr %7, align 8, !tbaa !25
  br label %107

107:                                              ; preds = %104, %89
  %108 = phi ptr [ %105, %104 ], [ %93, %89 ]
  %109 = phi i64 [ %106, %104 ], [ %92, %89 ]
  %110 = add i64 %109, -1
  %111 = getelementptr inbounds i8, ptr %108, i64 1
  %112 = load i8, ptr %108, align 1, !tbaa !17
  %113 = zext i8 %112 to i32
  %114 = shl nuw nsw i32 %113, 8
  %115 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  store i32 %114, ptr %115, align 8, !tbaa !87
  %116 = icmp eq i64 %110, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %5, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !26
  %120 = tail call i32 %119(ptr noundef %0) #6
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %293, label %122

122:                                              ; preds = %117
  %123 = load ptr, ptr %5, align 8, !tbaa !23
  %124 = load i64, ptr %7, align 8, !tbaa !25
  br label %125

125:                                              ; preds = %122, %107
  %126 = phi ptr [ %123, %122 ], [ %111, %107 ]
  %127 = phi i64 [ %124, %122 ], [ %110, %107 ]
  %128 = add i64 %127, -1
  %129 = getelementptr inbounds i8, ptr %126, i64 1
  %130 = load i8, ptr %126, align 1, !tbaa !17
  %131 = zext i8 %130 to i32
  %132 = load i32, ptr %115, align 8, !tbaa !87
  %133 = add i32 %132, %131
  store i32 %133, ptr %115, align 8, !tbaa !87
  %134 = icmp eq i64 %128, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %5, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !26
  %138 = tail call i32 %137(ptr noundef %0) #6
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %293, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr %5, align 8, !tbaa !23
  %142 = load i64, ptr %7, align 8, !tbaa !25
  br label %143

143:                                              ; preds = %140, %125
  %144 = phi ptr [ %141, %140 ], [ %129, %125 ]
  %145 = phi i64 [ %142, %140 ], [ %128, %125 ]
  %146 = load i8, ptr %144, align 1, !tbaa !17
  %147 = zext i8 %146 to i32
  %148 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  store i32 %147, ptr %148, align 8, !tbaa !53
  %149 = add nsw i64 %44, -8
  %150 = load ptr, ptr %0, align 8, !tbaa !13
  %151 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %150, i64 0, i32 6
  %152 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 72
  %153 = load i32, ptr %152, align 4, !tbaa !5
  store i32 %153, ptr %151, align 4, !tbaa !59
  %154 = load i32, ptr %115, align 8, !tbaa !87
  %155 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %150, i64 0, i32 6, i32 0, i64 1
  store i32 %154, ptr %155, align 4, !tbaa !59
  %156 = load i32, ptr %79, align 4, !tbaa !86
  %157 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %150, i64 0, i32 6, i32 0, i64 2
  store i32 %156, ptr %157, align 4, !tbaa !59
  %158 = load i32, ptr %148, align 8, !tbaa !53
  %159 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %150, i64 0, i32 6, i32 0, i64 3
  store i32 %158, ptr %159, align 4, !tbaa !59
  %160 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %150, i64 0, i32 5
  store i32 99, ptr %160, align 8, !tbaa !14
  %161 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %150, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !18
  tail call void %162(ptr noundef nonnull %0, i32 noundef 1) #6
  %163 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %164 = load ptr, ptr %163, align 8, !tbaa !27
  %165 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %164, i64 0, i32 6
  %166 = load i32, ptr %165, align 4, !tbaa !44
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %143
  %169 = load ptr, ptr %0, align 8, !tbaa !13
  %170 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %169, i64 0, i32 5
  store i32 57, ptr %170, align 8, !tbaa !14
  %171 = load ptr, ptr %169, align 8, !tbaa !45
  tail call void %171(ptr noundef nonnull %0) #6
  br label %172

172:                                              ; preds = %168, %143
  %173 = load i32, ptr %79, align 4, !tbaa !86
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %172
  %176 = load i32, ptr %115, align 8, !tbaa !87
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32, ptr %148, align 8, !tbaa !53
  %180 = icmp slt i32 %179, 1
  br i1 %180, label %181, label %185

181:                                              ; preds = %178, %175, %172
  %182 = load ptr, ptr %0, align 8, !tbaa !13
  %183 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %182, i64 0, i32 5
  store i32 31, ptr %183, align 8, !tbaa !14
  %184 = load ptr, ptr %182, align 8, !tbaa !45
  tail call void %184(ptr noundef nonnull %0) #6
  br label %185

185:                                              ; preds = %181, %178
  %186 = load i32, ptr %148, align 8, !tbaa !53
  %187 = mul nsw i32 %186, 3
  %188 = sext i32 %187 to i64
  %189 = icmp eq i64 %149, %188
  br i1 %189, label %194, label %190

190:                                              ; preds = %185
  %191 = load ptr, ptr %0, align 8, !tbaa !13
  %192 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %191, i64 0, i32 5
  store i32 9, ptr %192, align 8, !tbaa !14
  %193 = load ptr, ptr %191, align 8, !tbaa !45
  tail call void %193(ptr noundef nonnull %0) #6
  br label %194

194:                                              ; preds = %190, %185
  %195 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %196 = load ptr, ptr %195, align 8, !tbaa !41
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %206

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !32
  %201 = load ptr, ptr %200, align 8, !tbaa !33
  %202 = load i32, ptr %148, align 8, !tbaa !53
  %203 = sext i32 %202 to i64
  %204 = mul nsw i64 %203, 96
  %205 = tail call ptr %201(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %204) #6
  store ptr %205, ptr %195, align 8, !tbaa !41
  br label %206

206:                                              ; preds = %198, %194
  %207 = getelementptr inbounds i8, ptr %144, i64 1
  %208 = add i64 %145, -1
  %209 = load i32, ptr %148, align 8, !tbaa !53
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %288

211:                                              ; preds = %206
  %212 = load ptr, ptr %195, align 8, !tbaa !41
  %213 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %5, i64 0, i32 3
  %214 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %5, i64 0, i32 3
  %215 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %5, i64 0, i32 3
  br label %216

216:                                              ; preds = %211, %264
  %217 = phi i64 [ %208, %211 ], [ %285, %264 ]
  %218 = phi ptr [ %207, %211 ], [ %284, %264 ]
  %219 = phi i32 [ 0, %211 ], [ %282, %264 ]
  %220 = phi ptr [ %212, %211 ], [ %283, %264 ]
  %221 = getelementptr inbounds %struct.jpeg_component_info, ptr %220, i64 0, i32 1
  store i32 %219, ptr %221, align 4, !tbaa !88
  %222 = icmp eq i64 %217, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %216
  %224 = load ptr, ptr %213, align 8, !tbaa !26
  %225 = tail call i32 %224(ptr noundef nonnull %0) #6
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %293, label %227

227:                                              ; preds = %223
  %228 = load ptr, ptr %5, align 8, !tbaa !23
  %229 = load i64, ptr %7, align 8, !tbaa !25
  br label %230

230:                                              ; preds = %227, %216
  %231 = phi ptr [ %228, %227 ], [ %218, %216 ]
  %232 = phi i64 [ %229, %227 ], [ %217, %216 ]
  %233 = add i64 %232, -1
  %234 = getelementptr inbounds i8, ptr %231, i64 1
  %235 = load i8, ptr %231, align 1, !tbaa !17
  %236 = zext i8 %235 to i32
  store i32 %236, ptr %220, align 8, !tbaa !54
  %237 = icmp eq i64 %233, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %230
  %239 = load ptr, ptr %214, align 8, !tbaa !26
  %240 = tail call i32 %239(ptr noundef nonnull %0) #6
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %293, label %242

242:                                              ; preds = %238
  %243 = load ptr, ptr %5, align 8, !tbaa !23
  %244 = load i64, ptr %7, align 8, !tbaa !25
  br label %245

245:                                              ; preds = %242, %230
  %246 = phi ptr [ %243, %242 ], [ %234, %230 ]
  %247 = phi i64 [ %244, %242 ], [ %233, %230 ]
  %248 = add i64 %247, -1
  %249 = getelementptr inbounds i8, ptr %246, i64 1
  %250 = load i8, ptr %246, align 1, !tbaa !17
  %251 = zext i8 %250 to i32
  %252 = lshr i32 %251, 4
  %253 = getelementptr inbounds %struct.jpeg_component_info, ptr %220, i64 0, i32 2
  store i32 %252, ptr %253, align 8, !tbaa !89
  %254 = and i32 %251, 15
  %255 = getelementptr inbounds %struct.jpeg_component_info, ptr %220, i64 0, i32 3
  store i32 %254, ptr %255, align 4, !tbaa !90
  %256 = icmp eq i64 %248, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %245
  %258 = load ptr, ptr %215, align 8, !tbaa !26
  %259 = tail call i32 %258(ptr noundef nonnull %0) #6
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %293, label %261

261:                                              ; preds = %257
  %262 = load ptr, ptr %5, align 8, !tbaa !23
  %263 = load i64, ptr %7, align 8, !tbaa !25
  br label %264

264:                                              ; preds = %261, %245
  %265 = phi ptr [ %262, %261 ], [ %249, %245 ]
  %266 = phi i64 [ %263, %261 ], [ %248, %245 ]
  %267 = load i8, ptr %265, align 1, !tbaa !17
  %268 = zext i8 %267 to i32
  %269 = getelementptr inbounds %struct.jpeg_component_info, ptr %220, i64 0, i32 4
  store i32 %268, ptr %269, align 8, !tbaa !91
  %270 = load ptr, ptr %0, align 8, !tbaa !13
  %271 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %270, i64 0, i32 6
  %272 = load i32, ptr %220, align 8, !tbaa !54
  store i32 %272, ptr %271, align 4, !tbaa !59
  %273 = load i32, ptr %253, align 8, !tbaa !89
  %274 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %270, i64 0, i32 6, i32 0, i64 1
  store i32 %273, ptr %274, align 4, !tbaa !59
  %275 = load i32, ptr %255, align 4, !tbaa !90
  %276 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %270, i64 0, i32 6, i32 0, i64 2
  store i32 %275, ptr %276, align 4, !tbaa !59
  %277 = load i32, ptr %269, align 8, !tbaa !91
  %278 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %270, i64 0, i32 6, i32 0, i64 3
  store i32 %277, ptr %278, align 4, !tbaa !59
  %279 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %270, i64 0, i32 5
  store i32 100, ptr %279, align 8, !tbaa !14
  %280 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %270, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !18
  tail call void %281(ptr noundef nonnull %0, i32 noundef 1) #6
  %282 = add nuw nsw i32 %219, 1
  %283 = getelementptr inbounds %struct.jpeg_component_info, ptr %220, i64 1
  %284 = getelementptr inbounds i8, ptr %265, i64 1
  %285 = add i64 %266, -1
  %286 = load i32, ptr %148, align 8, !tbaa !53
  %287 = icmp slt i32 %282, %286
  br i1 %287, label %216, label %288, !llvm.loop !92

288:                                              ; preds = %264, %206
  %289 = phi ptr [ %207, %206 ], [ %284, %264 ]
  %290 = phi i64 [ %208, %206 ], [ %285, %264 ]
  %291 = load ptr, ptr %163, align 8, !tbaa !27
  %292 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %291, i64 0, i32 6
  store i32 1, ptr %292, align 4, !tbaa !44
  store ptr %289, ptr %5, align 8, !tbaa !23
  store i64 %290, ptr %7, align 8, !tbaa !25
  br label %293

293:                                              ; preds = %257, %238, %223, %135, %117, %99, %81, %63, %46, %29, %12, %288
  %294 = phi i32 [ 1, %288 ], [ 0, %12 ], [ 0, %29 ], [ 0, %46 ], [ 0, %63 ], [ 0, %81 ], [ 0, %99 ], [ 0, %117 ], [ 0, %135 ], [ 0, %223 ], [ 0, %238 ], [ 0, %257 ]
  ret i32 %294
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @jpeg_alloc_quant_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 740}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 724, !10, i64 728, !10, i64 732, !10, i64 736, !10, i64 740, !7, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 0}
!14 = !{!15, !10, i64 40}
!15 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !16, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!16 = !{!"long", !8, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!15, !7, i64 8}
!19 = !{i32 0, i32 2}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!6, !7, i64 32}
!23 = !{!24, !7, i64 0}
!24 = !{!"jpeg_source_mgr", !7, i64 0, !16, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!25 = !{!24, !16, i64 8}
!26 = !{!24, !7, i64 24}
!27 = !{!6, !7, i64 784}
!28 = !{!29, !10, i64 172}
!29 = !{!"jpeg_marker_reader", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !21}
!32 = !{!6, !7, i64 8}
!33 = !{!34, !7, i64 0}
!34 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !16, i64 88}
!35 = !{!29, !7, i64 0}
!36 = !{!29, !7, i64 8}
!37 = !{!29, !7, i64 16}
!38 = !{!29, !7, i64 24}
!39 = !{!7, !7, i64 0}
!40 = distinct !{!40, !21}
!41 = !{!6, !7, i64 296}
!42 = !{!6, !10, i64 164}
!43 = !{!29, !10, i64 160}
!44 = !{!29, !10, i64 164}
!45 = !{!15, !7, i64 0}
!46 = !{!6, !10, i64 52}
!47 = !{!6, !10, i64 384}
!48 = !{!6, !12, i64 370}
!49 = !{!6, !12, i64 372}
!50 = !{!6, !10, i64 376}
!51 = !{!6, !8, i64 380}
!52 = !{!6, !10, i64 416}
!53 = !{!6, !10, i64 48}
!54 = !{!55, !10, i64 0}
!55 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!56 = distinct !{!56, !21}
!57 = !{!55, !10, i64 20}
!58 = !{!55, !10, i64 24}
!59 = !{!10, !10, i64 0}
!60 = distinct !{!60, !21}
!61 = !{!6, !10, i64 724}
!62 = !{!6, !10, i64 728}
!63 = !{!6, !10, i64 732}
!64 = !{!6, !10, i64 736}
!65 = !{!29, !10, i64 168}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !21}
!68 = distinct !{!68, !21}
!69 = distinct !{!69, !21}
!70 = !{!12, !12, i64 0}
!71 = distinct !{!71, !21}
!72 = !{!15, !10, i64 124}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !21}
!75 = !{!6, !10, i64 360}
!76 = !{!24, !7, i64 32}
!77 = distinct !{!77, !21}
!78 = !{!24, !7, i64 40}
!79 = distinct !{!79, !21}
!80 = !{!6, !10, i64 364}
!81 = !{!6, !8, i64 368}
!82 = distinct !{!82, !21}
!83 = !{!6, !10, i64 304}
!84 = !{!6, !10, i64 308}
!85 = !{!6, !10, i64 288}
!86 = !{!6, !10, i64 44}
!87 = !{!6, !10, i64 40}
!88 = !{!55, !10, i64 4}
!89 = !{!55, !10, i64 8}
!90 = !{!55, !10, i64 12}
!91 = !{!55, !10, i64 16}
!92 = distinct !{!92, !21}
