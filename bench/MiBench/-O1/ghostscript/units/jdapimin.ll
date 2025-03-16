; ModuleID = 'jdapimin.c'
source_filename = "jdapimin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_decomp_master = type { ptr, ptr, i32 }

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_CreateDecompress(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !5
  %5 = icmp eq i32 %1, 61
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 10, ptr %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 61, ptr %9, align 4, !tbaa !17
  %10 = load ptr, ptr %0, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 6, i32 0, i64 1
  store i32 %1, ptr %11, align 4, !tbaa !17
  %12 = load ptr, ptr %0, align 8, !tbaa !13
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  tail call void %13(ptr noundef nonnull %0) #3
  br label %14

14:                                               ; preds = %6, %3
  %15 = icmp eq i64 %2, 832
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !13
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 19, ptr %18, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 6
  store i32 832, ptr %19, align 4, !tbaa !17
  %20 = trunc i64 %2 to i32
  %21 = load ptr, ptr %0, align 8, !tbaa !13
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 6, i32 0, i64 1
  store i32 %20, ptr %22, align 4, !tbaa !17
  %23 = load ptr, ptr %0, align 8, !tbaa !13
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  tail call void %24(ptr noundef nonnull %0) #3
  br label %25

25:                                               ; preds = %16, %14
  %26 = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(832) %0, i8 0, i64 832, i1 false)
  store ptr %26, ptr %0, align 8, !tbaa !13
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 3
  store i32 1, ptr %27, align 8, !tbaa !19
  tail call void @jinit_memory_mgr(ptr noundef nonnull %0) #3
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 2
  store ptr null, ptr %28, align 8, !tbaa !20
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  store ptr null, ptr %29, align 8, !tbaa !21
  %30 = getelementptr i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, i8 0, i64 32, i1 false), !tbaa !22
  %31 = getelementptr i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %31, i8 0, i64 64, i1 false)
  tail call void @jinit_marker_reader(ptr noundef nonnull %0) #3
  tail call void @jinit_input_controller(ptr noundef nonnull %0) #3
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  store i32 200, ptr %32, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @jinit_memory_mgr(ptr noundef) local_unnamed_addr #2

declare void @jinit_marker_reader(ptr noundef) local_unnamed_addr #2

declare void @jinit_input_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_destroy_decompress(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @jpeg_destroy(ptr noundef %0) #3
  ret void
}

declare void @jpeg_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_abort_decompress(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @jpeg_abort(ptr noundef %0) #3
  ret void
}

declare void @jpeg_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_set_marker_processor(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 254
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %7, i64 0, i32 3
  store ptr %2, ptr %8, align 8, !tbaa !25
  br label %24

9:                                                ; preds = %3
  %10 = and i32 %1, -16
  %11 = icmp eq i32 %10, 224
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = add nsw i32 %1, -224
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %14, i64 0, i32 4, i64 %16
  store ptr %2, ptr %17, align 8, !tbaa !22
  br label %24

18:                                               ; preds = %9
  %19 = load ptr, ptr %0, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 67, ptr %20, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 6
  store i32 %1, ptr %21, align 4, !tbaa !17
  %22 = load ptr, ptr %0, align 8, !tbaa !13
  %23 = load ptr, ptr %22, align 8, !tbaa !18
  tail call void %23(ptr noundef nonnull %0) #3
  br label %24

24:                                               ; preds = %12, %18, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @jpeg_read_header(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !23
  %5 = and i32 %4, -2
  %6 = icmp eq i32 %5, 200
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 18, ptr %9, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  store i32 %4, ptr %10, align 4, !tbaa !17
  %11 = load ptr, ptr %0, align 8, !tbaa !13
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  tail call void %12(ptr noundef nonnull %0) #3
  br label %13

13:                                               ; preds = %2, %7
  %14 = tail call i32 @jpeg_consume_input(ptr noundef %0)
  switch i32 %14, label %23 [
    i32 1, label %15
    i32 2, label %16
  ]

15:                                               ; preds = %13
  br label %23

16:                                               ; preds = %13
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %0, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 50, ptr %20, align 8, !tbaa !14
  %21 = load ptr, ptr %19, align 8, !tbaa !18
  tail call void %21(ptr noundef nonnull %0) #3
  br label %22

22:                                               ; preds = %18, %16
  tail call void @jpeg_abort(ptr noundef %0) #3
  br label %23

23:                                               ; preds = %13, %22, %15
  %24 = phi i32 [ %14, %13 ], [ 2, %22 ], [ 1, %15 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local i32 @jpeg_consume_input(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !23
  switch i32 %3, label %112 [
    i32 200, label %4
    i32 201, label %13
    i32 202, label %118
    i32 203, label %107
    i32 204, label %107
    i32 205, label %107
    i32 206, label %107
    i32 207, label %107
    i32 208, label %107
    i32 210, label %107
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.jpeg_input_controller, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  tail call void %8(ptr noundef %0) #3
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  tail call void %12(ptr noundef %0) #3
  store i32 201, ptr %2, align 4, !tbaa !23
  br label %13

13:                                               ; preds = %1, %4
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %15 = load ptr, ptr %14, align 8, !tbaa !27
  %16 = load ptr, ptr %15, align 8, !tbaa !32
  %17 = tail call i32 %16(ptr noundef %0) #3
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %118

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !33
  switch i32 %21, label %85 [
    i32 1, label %86
    i32 3, label %22
    i32 4, label %69
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 50
  %24 = load i32, ptr %23, align 4, !tbaa !34
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %86

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 54
  %28 = load i32, ptr %27, align 8, !tbaa !35
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 55
  %32 = load i8, ptr %31, align 4, !tbaa !36
  switch i8 %32, label %34 [
    i8 0, label %86
    i8 1, label %33
  ]

33:                                               ; preds = %30
  br label %86

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !13
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 5
  store i32 110, ptr %36, align 8, !tbaa !14
  %37 = zext i8 %32 to i32
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 6
  store i32 %37, ptr %38, align 4, !tbaa !17
  %39 = load ptr, ptr %0, align 8, !tbaa !13
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !37
  tail call void %41(ptr noundef nonnull %0, i32 noundef -1) #3
  br label %86

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %44 = load ptr, ptr %43, align 8, !tbaa !38
  %45 = load i32, ptr %44, align 8, !tbaa !39
  %46 = getelementptr inbounds %struct.jpeg_component_info, ptr %44, i64 1
  %47 = load i32, ptr %46, align 8, !tbaa !39
  %48 = getelementptr inbounds %struct.jpeg_component_info, ptr %44, i64 2
  %49 = load i32, ptr %48, align 8, !tbaa !39
  %50 = icmp eq i32 %45, 1
  %51 = icmp eq i32 %47, 2
  %52 = select i1 %50, i1 %51, i1 false
  %53 = icmp eq i32 %49, 3
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %86, label %55

55:                                               ; preds = %42
  %56 = icmp eq i32 %45, 82
  %57 = icmp eq i32 %47, 71
  %58 = select i1 %56, i1 %57, i1 false
  %59 = icmp eq i32 %49, 66
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %86, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %0, align 8, !tbaa !13
  %63 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 6
  store i32 %45, ptr %63, align 4, !tbaa !41
  %64 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 6, i32 0, i64 1
  store i32 %47, ptr %64, align 4, !tbaa !41
  %65 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 6, i32 0, i64 2
  store i32 %49, ptr %65, align 4, !tbaa !41
  %66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 5
  store i32 107, ptr %66, align 8, !tbaa !14
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !37
  tail call void %68(ptr noundef nonnull %0, i32 noundef 1) #3
  br label %86

69:                                               ; preds = %19
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 54
  %71 = load i32, ptr %70, align 8, !tbaa !35
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 55
  %75 = load i8, ptr %74, align 4, !tbaa !36
  switch i8 %75, label %77 [
    i8 0, label %86
    i8 2, label %76
  ]

76:                                               ; preds = %73
  br label %86

77:                                               ; preds = %73
  %78 = load ptr, ptr %0, align 8, !tbaa !13
  %79 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %78, i64 0, i32 5
  store i32 110, ptr %79, align 8, !tbaa !14
  %80 = zext i8 %75 to i32
  %81 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %78, i64 0, i32 6
  store i32 %80, ptr %81, align 4, !tbaa !17
  %82 = load ptr, ptr %0, align 8, !tbaa !13
  %83 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !37
  tail call void %84(ptr noundef nonnull %0, i32 noundef -1) #3
  br label %86

85:                                               ; preds = %19
  br label %86

86:                                               ; preds = %76, %77, %73, %69, %33, %34, %61, %22, %30, %42, %55, %19, %85
  %87 = phi i32 [ 0, %85 ], [ %21, %19 ], [ 3, %61 ], [ 3, %34 ], [ 3, %33 ], [ 3, %22 ], [ 2, %30 ], [ 3, %42 ], [ 2, %55 ], [ 5, %77 ], [ 5, %76 ], [ 4, %73 ], [ 4, %69 ]
  %88 = phi i32 [ 0, %85 ], [ %21, %19 ], [ 2, %61 ], [ 2, %34 ], [ 2, %33 ], [ 2, %22 ], [ 2, %30 ], [ 2, %42 ], [ 2, %55 ], [ 4, %77 ], [ 4, %76 ], [ 4, %73 ], [ 4, %69 ]
  %89 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 9
  store i32 %87, ptr %89, align 4, !tbaa !42
  %90 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  store i32 %88, ptr %90, align 8, !tbaa !43
  %91 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 11
  store i32 1, ptr %91, align 4, !tbaa !44
  %92 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 12
  store i32 1, ptr %92, align 8, !tbaa !45
  %93 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 13
  store double 1.000000e+00, ptr %93, align 8, !tbaa !46
  %94 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 14
  store i32 0, ptr %94, align 8, !tbaa !47
  %95 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 15
  store i32 0, ptr %95, align 4, !tbaa !48
  %96 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 16
  store i32 0, ptr %96, align 8, !tbaa !49
  %97 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 17
  store i32 1, ptr %97, align 4, !tbaa !50
  %98 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 18
  store i32 1, ptr %98, align 8, !tbaa !51
  %99 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  store i32 0, ptr %99, align 4, !tbaa !52
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 20
  store i32 2, ptr %100, align 8, !tbaa !53
  %101 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 21
  store i32 0, ptr %101, align 4, !tbaa !54
  %102 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 22
  store i32 256, ptr %102, align 8, !tbaa !55
  %103 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  store ptr null, ptr %103, align 8, !tbaa !56
  %104 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 23
  store i32 0, ptr %104, align 4, !tbaa !57
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 24
  store i32 0, ptr %105, align 8, !tbaa !58
  %106 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  store i32 0, ptr %106, align 4, !tbaa !59
  store i32 202, ptr %2, align 4, !tbaa !23
  br label %118

107:                                              ; preds = %1, %1, %1, %1, %1, %1, %1
  %108 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %109 = load ptr, ptr %108, align 8, !tbaa !27
  %110 = load ptr, ptr %109, align 8, !tbaa !32
  %111 = tail call i32 %110(ptr noundef %0) #3
  br label %118

112:                                              ; preds = %1
  %113 = load ptr, ptr %0, align 8, !tbaa !13
  %114 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 5
  store i32 18, ptr %114, align 8, !tbaa !14
  %115 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 6
  store i32 %3, ptr %115, align 4, !tbaa !17
  %116 = load ptr, ptr %0, align 8, !tbaa !13
  %117 = load ptr, ptr %116, align 8, !tbaa !18
  tail call void %117(ptr noundef nonnull %0) #3
  br label %118

118:                                              ; preds = %1, %13, %86, %112, %107
  %119 = phi i32 [ 0, %112 ], [ %111, %107 ], [ 1, %86 ], [ %17, %13 ], [ 1, %1 ]
  ret i32 %119
}

; Function Attrs: nounwind uwtable
define dso_local i32 @jpeg_input_complete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !23
  %4 = add i32 %3, -211
  %5 = icmp ult i32 %4, -11
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 18, ptr %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 %3, ptr %9, align 4, !tbaa !17
  %10 = load ptr, ptr %0, align 8, !tbaa !13
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  tail call void %11(ptr noundef nonnull %0) #3
  br label %12

12:                                               ; preds = %1, %6
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %14 = load ptr, ptr %13, align 8, !tbaa !27
  %15 = getelementptr inbounds %struct.jpeg_input_controller, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !60
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @jpeg_has_multiple_scans(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !23
  %4 = add i32 %3, -211
  %5 = icmp ult i32 %4, -9
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 18, ptr %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 %3, ptr %9, align 4, !tbaa !17
  %10 = load ptr, ptr %0, align 8, !tbaa !13
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  tail call void %11(ptr noundef nonnull %0) #3
  br label %12

12:                                               ; preds = %1, %6
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %14 = load ptr, ptr %13, align 8, !tbaa !27
  %15 = getelementptr inbounds %struct.jpeg_input_controller, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !61
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @jpeg_finish_decompress(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !23
  %4 = add i32 %3, -205
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !47
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 33
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %14 = load i32, ptr %13, align 4, !tbaa !63
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr %0, align 8, !tbaa !13
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 66, ptr %18, align 8, !tbaa !14
  %19 = load ptr, ptr %17, align 8, !tbaa !18
  tail call void %19(ptr noundef nonnull %0) #3
  br label %20

20:                                               ; preds = %16, %10
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 73
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  tail call void %24(ptr noundef %0) #3
  store i32 210, ptr %2, align 4, !tbaa !23
  br label %33

25:                                               ; preds = %1, %6
  switch i32 %3, label %27 [
    i32 207, label %26
    i32 210, label %33
  ]

26:                                               ; preds = %25
  store i32 210, ptr %2, align 4, !tbaa !23
  br label %33

27:                                               ; preds = %25
  %28 = load ptr, ptr %0, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 5
  store i32 18, ptr %29, align 8, !tbaa !14
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 6
  store i32 %3, ptr %30, align 4, !tbaa !17
  %31 = load ptr, ptr %0, align 8, !tbaa !13
  %32 = load ptr, ptr %31, align 8, !tbaa !18
  tail call void %32(ptr noundef nonnull %0) #3
  br label %33

33:                                               ; preds = %25, %26, %27, %20
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  br label %35

35:                                               ; preds = %40, %33
  %36 = load ptr, ptr %34, align 8, !tbaa !27
  %37 = getelementptr inbounds %struct.jpeg_input_controller, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !60
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load ptr, ptr %36, align 8, !tbaa !32
  %42 = tail call i32 %41(ptr noundef %0) #3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %35, !llvm.loop !67

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !21
  %47 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %46, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !69
  tail call void %48(ptr noundef %0) #3
  tail call void @jpeg_abort(ptr noundef %0) #3
  br label %49

49:                                               ; preds = %40, %44
  %50 = phi i32 [ 1, %44 ], [ 0, %40 ]
  ret i32 %50
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
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
!18 = !{!15, !7, i64 0}
!19 = !{!6, !10, i64 24}
!20 = !{!6, !7, i64 16}
!21 = !{!6, !7, i64 32}
!22 = !{!7, !7, i64 0}
!23 = !{!6, !10, i64 28}
!24 = !{!6, !7, i64 784}
!25 = !{!26, !7, i64 24}
!26 = !{!"jpeg_marker_reader", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172}
!27 = !{!6, !7, i64 776}
!28 = !{!29, !7, i64 8}
!29 = !{!"jpeg_input_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36}
!30 = !{!31, !7, i64 16}
!31 = !{!"jpeg_source_mgr", !7, i64 0, !16, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!32 = !{!29, !7, i64 0}
!33 = !{!6, !10, i64 48}
!34 = !{!6, !10, i64 364}
!35 = !{!6, !10, i64 376}
!36 = !{!6, !8, i64 380}
!37 = !{!15, !7, i64 8}
!38 = !{!6, !7, i64 296}
!39 = !{!40, !10, i64 0}
!40 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!41 = !{!10, !10, i64 0}
!42 = !{!6, !10, i64 52}
!43 = !{!6, !10, i64 56}
!44 = !{!6, !10, i64 60}
!45 = !{!6, !10, i64 64}
!46 = !{!6, !11, i64 72}
!47 = !{!6, !10, i64 80}
!48 = !{!6, !10, i64 84}
!49 = !{!6, !10, i64 88}
!50 = !{!6, !10, i64 92}
!51 = !{!6, !10, i64 96}
!52 = !{!6, !10, i64 100}
!53 = !{!6, !10, i64 104}
!54 = !{!6, !10, i64 108}
!55 = !{!6, !10, i64 112}
!56 = !{!6, !7, i64 152}
!57 = !{!6, !10, i64 116}
!58 = !{!6, !10, i64 120}
!59 = !{!6, !10, i64 124}
!60 = !{!29, !10, i64 36}
!61 = !{!29, !10, i64 32}
!62 = !{!6, !10, i64 160}
!63 = !{!6, !10, i64 132}
!64 = !{!6, !7, i64 744}
!65 = !{!66, !7, i64 8}
!66 = !{!"jpeg_decomp_master", !7, i64 0, !7, i64 8, !10, i64 16}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!31, !7, i64 48}
