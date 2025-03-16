; ModuleID = 'inflate.c'
source_filename = "inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.internal_state = type { i32, %union.anon, i32, i32, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, i64 }

@.str.1 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"need dictionary\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateReset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %10, align 8, !tbaa !12
  %11 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %12 = load i32, ptr %11, align 8, !tbaa !13
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 0, i32 7
  store i32 %14, ptr %6, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  call void @inflate_blocks_reset(ptr noundef %16, ptr noundef nonnull %0, ptr noundef nonnull %2) #5
  br label %17

17:                                               ; preds = %1, %4, %8
  %18 = phi i32 [ 0, %8 ], [ -2, %4 ], [ -2, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @inflate_blocks_reset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateEnd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = call i32 @inflate_blocks_free(ptr noundef nonnull %14, ptr noundef nonnull %0, ptr noundef nonnull %2) #5
  br label %18

18:                                               ; preds = %16, %12
  %19 = load ptr, ptr %9, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !18
  %22 = load ptr, ptr %5, align 8, !tbaa !5
  call void %19(ptr noundef %21, ptr noundef %22) #5
  store ptr null, ptr %5, align 8, !tbaa !5
  br label %23

23:                                               ; preds = %1, %4, %8, %18
  %24 = phi i32 [ 0, %18 ], [ -2, %8 ], [ -2, %4 ], [ -2, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret i32 %24
}

declare i32 @inflate_blocks_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateInit2_(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %77, label %7

7:                                                ; preds = %4
  %8 = load i8, ptr %2, align 1, !tbaa !19
  %9 = icmp ne i8 %8, 49
  %10 = icmp ne i32 %3, 112
  %11 = or i1 %10, %9
  br i1 %11, label %77, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %0, null
  br i1 %13, label %77, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %15, align 8, !tbaa !20
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  store ptr @zcalloc, ptr %16, align 8, !tbaa !21
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %20, align 8, !tbaa !18
  br label %21

21:                                               ; preds = %19, %14
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store ptr @zcfree, ptr %22, align 8, !tbaa !17
  br label %26

26:                                               ; preds = %25, %21
  %27 = load ptr, ptr %16, align 8, !tbaa !21
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !18
  %30 = tail call ptr %27(ptr noundef %29, i32 noundef 1, i32 noundef 40) #5
  %31 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %30, ptr %31, align 8, !tbaa !5
  %32 = icmp eq ptr %30, null
  br i1 %32, label %77, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 4
  store ptr null, ptr %34, align 8, !tbaa !16
  %35 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 2
  %36 = lshr i32 %1, 31
  %37 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  store i32 %36, ptr %35, align 8, !tbaa !13
  %38 = add nsw i32 %37, -16
  %39 = icmp ult i32 %38, -8
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load ptr, ptr %22, align 8, !tbaa !17
  %42 = icmp eq ptr %41, null
  br i1 %42, label %77, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %22, align 8, !tbaa !17
  %45 = load ptr, ptr %28, align 8, !tbaa !18
  %46 = load ptr, ptr %31, align 8, !tbaa !5
  tail call void %44(ptr noundef %45, ptr noundef %46) #5
  store ptr null, ptr %31, align 8, !tbaa !5
  br label %77

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 3
  store i32 %37, ptr %48, align 4, !tbaa !22
  %49 = load i32, ptr %35, align 8, !tbaa !13
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, ptr @adler32, ptr null
  %52 = shl nuw nsw i32 1, %37
  %53 = tail call ptr @inflate_blocks_new(ptr noundef nonnull %0, ptr noundef %51, i32 noundef %52) #5
  %54 = load ptr, ptr %31, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 4
  store ptr %53, ptr %55, align 8, !tbaa !16
  %56 = icmp eq ptr %53, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = icmp eq ptr %54, null
  br i1 %58, label %77, label %59

59:                                               ; preds = %57
  %60 = load ptr, ptr %22, align 8, !tbaa !17
  %61 = icmp eq ptr %60, null
  br i1 %61, label %77, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %22, align 8, !tbaa !17
  %64 = load ptr, ptr %28, align 8, !tbaa !18
  %65 = load ptr, ptr %31, align 8, !tbaa !5
  tail call void %63(ptr noundef %64, ptr noundef %65) #5
  store ptr null, ptr %31, align 8, !tbaa !5
  br label %77

66:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %67 = icmp eq ptr %54, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %70 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %70, align 8, !tbaa !12
  %71 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  %72 = load i32, ptr %71, align 8, !tbaa !13
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 0, i32 7
  store i32 %74, ptr %54, align 8, !tbaa !15
  %75 = load ptr, ptr %55, align 8, !tbaa !16
  call void @inflate_blocks_reset(ptr noundef %75, ptr noundef nonnull %0, ptr noundef nonnull %5) #5
  br label %76

76:                                               ; preds = %66, %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %77

77:                                               ; preds = %62, %59, %57, %43, %40, %26, %12, %4, %7, %76
  %78 = phi i32 [ 0, %76 ], [ -6, %7 ], [ -6, %4 ], [ -2, %12 ], [ -4, %26 ], [ -2, %40 ], [ -2, %43 ], [ -4, %57 ], [ -4, %59 ], [ -4, %62 ]
  ret i32 %78
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #2

declare void @zcfree(ptr noundef, ptr noundef) #2

declare ptr @inflate_blocks_new(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateInit_(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @inflateInit2_(ptr noundef %0, i32 noundef 15, ptr noundef %1, i32 noundef %2), !range !23
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %267, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %267, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !24
  %10 = icmp eq ptr %9, null
  %11 = icmp slt i32 %1, 0
  %12 = or i1 %11, %10
  br i1 %12, label %267, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  br label %30

30:                                               ; preds = %262, %13
  %31 = phi i32 [ -5, %13 ], [ %263, %262 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !5
  %33 = load i32, ptr %32, align 8, !tbaa !15
  switch i32 %33, label %265 [
    i32 0, label %34
    i32 1, label %61
    i32 2, label %86
    i32 3, label %104
    i32 4, label %124
    i32 5, label %144
    i32 6, label %166
    i32 7, label %169
    i32 8, label %187
    i32 9, label %203
    i32 10, label %221
    i32 11, label %239
    i32 12, label %266
    i32 13, label %267
  ]

34:                                               ; preds = %30
  %35 = load i32, ptr %23, align 8, !tbaa !25
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %267, label %37

37:                                               ; preds = %34
  %38 = add i32 %35, -1
  store i32 %38, ptr %23, align 8, !tbaa !25
  %39 = load i64, ptr %24, align 8, !tbaa !12
  %40 = add i64 %39, 1
  store i64 %40, ptr %24, align 8, !tbaa !12
  %41 = load ptr, ptr %0, align 8, !tbaa !24
  %42 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %42, ptr %0, align 8, !tbaa !24
  %43 = load i8, ptr %41, align 1, !tbaa !19
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 1
  store i32 %44, ptr %45, align 8, !tbaa !19
  %46 = and i32 %44, 15
  %47 = icmp eq i32 %46, 8
  %48 = load ptr, ptr %5, align 8, !tbaa !5
  br i1 %47, label %51, label %49

49:                                               ; preds = %37
  store i32 13, ptr %48, align 8, !tbaa !15
  store ptr @.str.1, ptr %25, align 8, !tbaa !20
  %50 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 1
  store i32 5, ptr %50, align 8, !tbaa !19
  br label %262

51:                                               ; preds = %37
  %52 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !19
  %54 = lshr i32 %53, 4
  %55 = add nuw nsw i32 %54, 8
  %56 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !22
  %58 = icmp ugt i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 13, ptr %48, align 8, !tbaa !15
  store ptr @.str.2, ptr %29, align 8, !tbaa !20
  store i32 5, ptr %52, align 8, !tbaa !19
  br label %262

60:                                               ; preds = %51
  store i32 1, ptr %48, align 8, !tbaa !15
  br label %61

61:                                               ; preds = %30, %60
  %62 = phi i32 [ %31, %30 ], [ 0, %60 ]
  %63 = load i32, ptr %26, align 8, !tbaa !25
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %267, label %65

65:                                               ; preds = %61
  %66 = add i32 %63, -1
  store i32 %66, ptr %26, align 8, !tbaa !25
  %67 = load i64, ptr %27, align 8, !tbaa !12
  %68 = add i64 %67, 1
  store i64 %68, ptr %27, align 8, !tbaa !12
  %69 = load ptr, ptr %0, align 8, !tbaa !24
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %70, ptr %0, align 8, !tbaa !24
  %71 = load i8, ptr %69, align 1, !tbaa !19
  %72 = zext i8 %71 to i32
  %73 = load ptr, ptr %5, align 8, !tbaa !5
  %74 = getelementptr inbounds %struct.internal_state, ptr %73, i64 0, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !19
  %76 = shl i32 %75, 8
  %77 = or disjoint i32 %76, %72
  %78 = urem i32 %77, 31
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %65
  store i32 13, ptr %73, align 8, !tbaa !15
  store ptr @.str.3, ptr %28, align 8, !tbaa !20
  store i32 5, ptr %74, align 8, !tbaa !19
  br label %262

81:                                               ; preds = %65
  %82 = and i32 %72, 32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 7, ptr %73, align 8, !tbaa !15
  br label %262

85:                                               ; preds = %81
  store i32 2, ptr %73, align 8, !tbaa !15
  br label %86

86:                                               ; preds = %30, %85
  %87 = phi i32 [ 0, %85 ], [ %31, %30 ]
  %88 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !25
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %267, label %91

91:                                               ; preds = %86
  %92 = add i32 %89, -1
  store i32 %92, ptr %88, align 8, !tbaa !25
  %93 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %94 = load i64, ptr %93, align 8, !tbaa !12
  %95 = add i64 %94, 1
  store i64 %95, ptr %93, align 8, !tbaa !12
  %96 = load ptr, ptr %0, align 8, !tbaa !24
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %97, ptr %0, align 8, !tbaa !24
  %98 = load i8, ptr %96, align 1, !tbaa !19
  %99 = zext i8 %98 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = load ptr, ptr %5, align 8, !tbaa !5
  %102 = getelementptr inbounds %struct.internal_state, ptr %101, i64 0, i32 1, i32 0, i32 1
  store i64 %100, ptr %102, align 8, !tbaa !19
  %103 = load ptr, ptr %5, align 8, !tbaa !5
  store i32 3, ptr %103, align 8, !tbaa !15
  br label %104

104:                                              ; preds = %30, %91
  %105 = phi i32 [ 0, %91 ], [ %31, %30 ]
  %106 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !25
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %267, label %109

109:                                              ; preds = %104
  %110 = add i32 %107, -1
  store i32 %110, ptr %106, align 8, !tbaa !25
  %111 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %112 = load i64, ptr %111, align 8, !tbaa !12
  %113 = add i64 %112, 1
  store i64 %113, ptr %111, align 8, !tbaa !12
  %114 = load ptr, ptr %0, align 8, !tbaa !24
  %115 = getelementptr inbounds i8, ptr %114, i64 1
  store ptr %115, ptr %0, align 8, !tbaa !24
  %116 = load i8, ptr %114, align 1, !tbaa !19
  %117 = zext i8 %116 to i64
  %118 = shl nuw nsw i64 %117, 16
  %119 = load ptr, ptr %5, align 8, !tbaa !5
  %120 = getelementptr inbounds %struct.internal_state, ptr %119, i64 0, i32 1, i32 0, i32 1
  %121 = load i64, ptr %120, align 8, !tbaa !19
  %122 = add i64 %121, %118
  store i64 %122, ptr %120, align 8, !tbaa !19
  %123 = load ptr, ptr %5, align 8, !tbaa !5
  store i32 4, ptr %123, align 8, !tbaa !15
  br label %124

124:                                              ; preds = %30, %109
  %125 = phi i32 [ 0, %109 ], [ %31, %30 ]
  %126 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !25
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %267, label %129

129:                                              ; preds = %124
  %130 = add i32 %127, -1
  store i32 %130, ptr %126, align 8, !tbaa !25
  %131 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %132 = load i64, ptr %131, align 8, !tbaa !12
  %133 = add i64 %132, 1
  store i64 %133, ptr %131, align 8, !tbaa !12
  %134 = load ptr, ptr %0, align 8, !tbaa !24
  %135 = getelementptr inbounds i8, ptr %134, i64 1
  store ptr %135, ptr %0, align 8, !tbaa !24
  %136 = load i8, ptr %134, align 1, !tbaa !19
  %137 = zext i8 %136 to i64
  %138 = shl nuw nsw i64 %137, 8
  %139 = load ptr, ptr %5, align 8, !tbaa !5
  %140 = getelementptr inbounds %struct.internal_state, ptr %139, i64 0, i32 1, i32 0, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !19
  %142 = add i64 %141, %138
  store i64 %142, ptr %140, align 8, !tbaa !19
  %143 = load ptr, ptr %5, align 8, !tbaa !5
  store i32 5, ptr %143, align 8, !tbaa !15
  br label %144

144:                                              ; preds = %30, %129
  %145 = phi i32 [ 0, %129 ], [ %31, %30 ]
  %146 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %147 = load i32, ptr %146, align 8, !tbaa !25
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %267, label %149

149:                                              ; preds = %144
  %150 = add i32 %147, -1
  store i32 %150, ptr %146, align 8, !tbaa !25
  %151 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %152 = load i64, ptr %151, align 8, !tbaa !12
  %153 = add i64 %152, 1
  store i64 %153, ptr %151, align 8, !tbaa !12
  %154 = load ptr, ptr %0, align 8, !tbaa !24
  %155 = getelementptr inbounds i8, ptr %154, i64 1
  store ptr %155, ptr %0, align 8, !tbaa !24
  %156 = load i8, ptr %154, align 1, !tbaa !19
  %157 = zext i8 %156 to i64
  %158 = load ptr, ptr %5, align 8, !tbaa !5
  %159 = getelementptr inbounds %struct.internal_state, ptr %158, i64 0, i32 1, i32 0, i32 1
  %160 = load i64, ptr %159, align 8, !tbaa !19
  %161 = add i64 %160, %157
  store i64 %161, ptr %159, align 8, !tbaa !19
  %162 = load ptr, ptr %5, align 8, !tbaa !5
  %163 = getelementptr inbounds %struct.internal_state, ptr %162, i64 0, i32 1, i32 0, i32 1
  %164 = load i64, ptr %163, align 8, !tbaa !19
  %165 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %164, ptr %165, align 8, !tbaa !26
  store i32 6, ptr %162, align 8, !tbaa !15
  br label %267

166:                                              ; preds = %30
  store i32 13, ptr %32, align 8, !tbaa !15
  %167 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr @.str.4, ptr %167, align 8, !tbaa !20
  %168 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 1
  store i32 0, ptr %168, align 8, !tbaa !19
  br label %267

169:                                              ; preds = %30
  %170 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 4
  %171 = load ptr, ptr %170, align 8, !tbaa !16
  %172 = tail call i32 @inflate_blocks(ptr noundef %171, ptr noundef nonnull %0, i32 noundef %31) #5
  switch i32 %172, label %267 [
    i32 -3, label %173
    i32 1, label %176
  ]

173:                                              ; preds = %169
  %174 = load ptr, ptr %5, align 8, !tbaa !5
  store i32 13, ptr %174, align 8, !tbaa !15
  %175 = getelementptr inbounds %struct.internal_state, ptr %174, i64 0, i32 1
  store i32 0, ptr %175, align 8, !tbaa !19
  br label %262

176:                                              ; preds = %169
  %177 = load ptr, ptr %5, align 8, !tbaa !5
  %178 = getelementptr inbounds %struct.internal_state, ptr %177, i64 0, i32 4
  %179 = load ptr, ptr %178, align 8, !tbaa !16
  %180 = getelementptr inbounds %struct.internal_state, ptr %177, i64 0, i32 1
  tail call void @inflate_blocks_reset(ptr noundef %179, ptr noundef nonnull %0, ptr noundef nonnull %180) #5
  %181 = load ptr, ptr %5, align 8, !tbaa !5
  %182 = getelementptr inbounds %struct.internal_state, ptr %181, i64 0, i32 2
  %183 = load i32, ptr %182, align 8, !tbaa !13
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %176
  store i32 12, ptr %181, align 8, !tbaa !15
  br label %262

186:                                              ; preds = %176
  store i32 8, ptr %181, align 8, !tbaa !15
  br label %187

187:                                              ; preds = %30, %186
  %188 = phi i32 [ %31, %30 ], [ 0, %186 ]
  %189 = load i32, ptr %14, align 8, !tbaa !25
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %267, label %191

191:                                              ; preds = %187
  %192 = add i32 %189, -1
  store i32 %192, ptr %14, align 8, !tbaa !25
  %193 = load i64, ptr %15, align 8, !tbaa !12
  %194 = add i64 %193, 1
  store i64 %194, ptr %15, align 8, !tbaa !12
  %195 = load ptr, ptr %0, align 8, !tbaa !24
  %196 = getelementptr inbounds i8, ptr %195, i64 1
  store ptr %196, ptr %0, align 8, !tbaa !24
  %197 = load i8, ptr %195, align 1, !tbaa !19
  %198 = zext i8 %197 to i64
  %199 = shl nuw nsw i64 %198, 24
  %200 = load ptr, ptr %5, align 8, !tbaa !5
  %201 = getelementptr inbounds %struct.internal_state, ptr %200, i64 0, i32 1, i32 0, i32 1
  store i64 %199, ptr %201, align 8, !tbaa !19
  %202 = load ptr, ptr %5, align 8, !tbaa !5
  store i32 9, ptr %202, align 8, !tbaa !15
  br label %203

203:                                              ; preds = %30, %191
  %204 = phi i32 [ %31, %30 ], [ 0, %191 ]
  %205 = load i32, ptr %16, align 8, !tbaa !25
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %267, label %207

207:                                              ; preds = %203
  %208 = add i32 %205, -1
  store i32 %208, ptr %16, align 8, !tbaa !25
  %209 = load i64, ptr %17, align 8, !tbaa !12
  %210 = add i64 %209, 1
  store i64 %210, ptr %17, align 8, !tbaa !12
  %211 = load ptr, ptr %0, align 8, !tbaa !24
  %212 = getelementptr inbounds i8, ptr %211, i64 1
  store ptr %212, ptr %0, align 8, !tbaa !24
  %213 = load i8, ptr %211, align 1, !tbaa !19
  %214 = zext i8 %213 to i64
  %215 = shl nuw nsw i64 %214, 16
  %216 = load ptr, ptr %5, align 8, !tbaa !5
  %217 = getelementptr inbounds %struct.internal_state, ptr %216, i64 0, i32 1, i32 0, i32 1
  %218 = load i64, ptr %217, align 8, !tbaa !19
  %219 = add i64 %218, %215
  store i64 %219, ptr %217, align 8, !tbaa !19
  %220 = load ptr, ptr %5, align 8, !tbaa !5
  store i32 10, ptr %220, align 8, !tbaa !15
  br label %221

221:                                              ; preds = %30, %207
  %222 = phi i32 [ %31, %30 ], [ 0, %207 ]
  %223 = load i32, ptr %18, align 8, !tbaa !25
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %267, label %225

225:                                              ; preds = %221
  %226 = add i32 %223, -1
  store i32 %226, ptr %18, align 8, !tbaa !25
  %227 = load i64, ptr %19, align 8, !tbaa !12
  %228 = add i64 %227, 1
  store i64 %228, ptr %19, align 8, !tbaa !12
  %229 = load ptr, ptr %0, align 8, !tbaa !24
  %230 = getelementptr inbounds i8, ptr %229, i64 1
  store ptr %230, ptr %0, align 8, !tbaa !24
  %231 = load i8, ptr %229, align 1, !tbaa !19
  %232 = zext i8 %231 to i64
  %233 = shl nuw nsw i64 %232, 8
  %234 = load ptr, ptr %5, align 8, !tbaa !5
  %235 = getelementptr inbounds %struct.internal_state, ptr %234, i64 0, i32 1, i32 0, i32 1
  %236 = load i64, ptr %235, align 8, !tbaa !19
  %237 = add i64 %236, %233
  store i64 %237, ptr %235, align 8, !tbaa !19
  %238 = load ptr, ptr %5, align 8, !tbaa !5
  store i32 11, ptr %238, align 8, !tbaa !15
  br label %239

239:                                              ; preds = %30, %225
  %240 = phi i32 [ %31, %30 ], [ 0, %225 ]
  %241 = load i32, ptr %20, align 8, !tbaa !25
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %267, label %243

243:                                              ; preds = %239
  %244 = add i32 %241, -1
  store i32 %244, ptr %20, align 8, !tbaa !25
  %245 = load i64, ptr %21, align 8, !tbaa !12
  %246 = add i64 %245, 1
  store i64 %246, ptr %21, align 8, !tbaa !12
  %247 = load ptr, ptr %0, align 8, !tbaa !24
  %248 = getelementptr inbounds i8, ptr %247, i64 1
  store ptr %248, ptr %0, align 8, !tbaa !24
  %249 = load i8, ptr %247, align 1, !tbaa !19
  %250 = zext i8 %249 to i64
  %251 = load ptr, ptr %5, align 8, !tbaa !5
  %252 = getelementptr inbounds %struct.internal_state, ptr %251, i64 0, i32 1, i32 0, i32 1
  %253 = load i64, ptr %252, align 8, !tbaa !19
  %254 = add i64 %253, %250
  store i64 %254, ptr %252, align 8, !tbaa !19
  %255 = load ptr, ptr %5, align 8, !tbaa !5
  %256 = getelementptr inbounds %struct.internal_state, ptr %255, i64 0, i32 1
  %257 = load i64, ptr %256, align 8, !tbaa !19
  %258 = getelementptr inbounds %struct.internal_state, ptr %255, i64 0, i32 1, i32 0, i32 1
  %259 = load i64, ptr %258, align 8, !tbaa !19
  %260 = icmp eq i64 %257, %259
  br i1 %260, label %264, label %261

261:                                              ; preds = %243
  store i32 13, ptr %255, align 8, !tbaa !15
  store ptr @.str.5, ptr %22, align 8, !tbaa !20
  store i32 5, ptr %256, align 8, !tbaa !19
  br label %262

262:                                              ; preds = %261, %185, %173, %84, %80, %59, %49
  %263 = phi i32 [ 0, %261 ], [ -3, %173 ], [ 0, %185 ], [ 0, %80 ], [ 0, %84 ], [ 0, %49 ], [ 0, %59 ]
  br label %30, !llvm.loop !27

264:                                              ; preds = %243
  store i32 12, ptr %255, align 8, !tbaa !15
  br label %267

265:                                              ; preds = %30
  br label %267

266:                                              ; preds = %30
  br label %267

267:                                              ; preds = %239, %221, %203, %187, %169, %61, %34, %30, %266, %265, %264, %144, %124, %104, %86, %2, %4, %8, %166, %149
  %268 = phi i32 [ -2, %166 ], [ 2, %149 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ %87, %86 ], [ %105, %104 ], [ %125, %124 ], [ %145, %144 ], [ 1, %264 ], [ -2, %265 ], [ -3, %30 ], [ %31, %34 ], [ %62, %61 ], [ %172, %169 ], [ %188, %187 ], [ %204, %203 ], [ %222, %221 ], [ %240, %239 ], [ 1, %266 ]
  ret i32 %268
}

declare i32 @inflate_blocks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateSetDictionary(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !15
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = tail call i64 @adler32(i64 noundef 1, ptr noundef %1, i32 noundef %2) #5
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %15 = load i64, ptr %14, align 8, !tbaa !26
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  store i64 1, ptr %14, align 8, !tbaa !26
  %18 = load ptr, ptr %6, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !22
  %21 = shl nuw i32 1, %20
  %22 = icmp ugt i32 %21, %2
  %23 = add nsw i32 %21, -1
  %24 = sub i32 %2, %23
  %25 = select i1 %22, i32 0, i32 %24
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  %28 = select i1 %22, i32 %2, i32 %23
  %29 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !16
  tail call void @inflate_set_dictionary(ptr noundef %30, ptr noundef %27, i32 noundef %28) #5
  %31 = load ptr, ptr %6, align 8, !tbaa !5
  store i32 7, ptr %31, align 8, !tbaa !15
  br label %32

32:                                               ; preds = %12, %3, %5, %9, %17
  %33 = phi i32 [ 0, %17 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -3, %12 ]
  ret i32 %33
}

declare void @inflate_set_dictionary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateSync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %68, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %68, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8, !tbaa !15
  %10 = icmp eq i32 %9, 13
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  store i32 13, ptr %6, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 1
  store i32 0, ptr %12, align 8, !tbaa !19
  br label %13

13:                                               ; preds = %11, %8
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !25
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %68, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !24
  %19 = load ptr, ptr %5, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.internal_state, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !19
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %42

23:                                               ; preds = %17, %23
  %24 = phi i32 [ %38, %23 ], [ %15, %17 ]
  %25 = phi i32 [ %36, %23 ], [ %21, %17 ]
  %26 = phi ptr [ %37, %23 ], [ %18, %17 ]
  %27 = load i8, ptr %26, align 1, !tbaa !19
  %28 = zext i8 %27 to i32
  %29 = icmp ugt i32 %25, 1
  %30 = select i1 %29, i32 255, i32 0
  %31 = icmp eq i32 %30, %28
  %32 = add nuw nsw i32 %25, 1
  %33 = icmp eq i8 %27, 0
  %34 = sub nuw nsw i32 4, %25
  %35 = select i1 %33, i32 %34, i32 0
  %36 = select i1 %31, i32 %32, i32 %35
  %37 = getelementptr inbounds i8, ptr %26, i64 1
  %38 = add i32 %24, -1
  %39 = icmp ne i32 %38, 0
  %40 = icmp ult i32 %36, 4
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %23, label %42, !llvm.loop !29

42:                                               ; preds = %23, %17
  %43 = phi ptr [ %18, %17 ], [ %37, %23 ]
  %44 = phi i32 [ %21, %17 ], [ %36, %23 ]
  %45 = phi i32 [ %15, %17 ], [ %38, %23 ]
  %46 = ptrtoint ptr %43 to i64
  %47 = ptrtoint ptr %18 to i64
  %48 = sub i64 %46, %47
  %49 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !12
  %51 = add i64 %48, %50
  store i64 %51, ptr %49, align 8, !tbaa !12
  store ptr %43, ptr %0, align 8, !tbaa !24
  store i32 %45, ptr %14, align 8, !tbaa !25
  store i32 %44, ptr %20, align 8, !tbaa !19
  %52 = icmp eq i32 %44, 4
  br i1 %52, label %53, label %68

53:                                               ; preds = %42
  %54 = load i64, ptr %49, align 8, !tbaa !12
  %55 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %56 = load i64, ptr %55, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %57 = load ptr, ptr %5, align 8, !tbaa !5
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  store i64 0, ptr %49, align 8, !tbaa !12
  %60 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, i8 0, i64 16, i1 false)
  %61 = load i32, ptr %60, align 8, !tbaa !13
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 0, i32 7
  store i32 %63, ptr %57, align 8, !tbaa !15
  %64 = getelementptr inbounds %struct.internal_state, ptr %57, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !16
  call void @inflate_blocks_reset(ptr noundef %65, ptr noundef nonnull %0, ptr noundef nonnull %2) #5
  br label %66

66:                                               ; preds = %53, %59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  store i64 %54, ptr %49, align 8, !tbaa !12
  store i64 %56, ptr %55, align 8, !tbaa !30
  %67 = load ptr, ptr %5, align 8, !tbaa !5
  store i32 7, ptr %67, align 8, !tbaa !15
  br label %68

68:                                               ; preds = %42, %13, %1, %4, %66
  %69 = phi i32 [ 0, %66 ], [ -2, %4 ], [ -2, %1 ], [ -5, %13 ], [ -3, %42 ]
  ret i32 %69
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 56}
!6 = !{!"z_stream_s", !7, i64 0, !10, i64 8, !11, i64 16, !7, i64 24, !10, i64 32, !11, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !11, i64 96, !11, i64 104}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !11, i64 16}
!13 = !{!14, !10, i64 24}
!14 = !{!"internal_state", !10, i64 0, !8, i64 8, !10, i64 24, !10, i64 28, !7, i64 32}
!15 = !{!14, !10, i64 0}
!16 = !{!14, !7, i64 32}
!17 = !{!6, !7, i64 72}
!18 = !{!6, !7, i64 80}
!19 = !{!8, !8, i64 0}
!20 = !{!6, !7, i64 48}
!21 = !{!6, !7, i64 64}
!22 = !{!14, !10, i64 28}
!23 = !{i32 -6, i32 1}
!24 = !{!6, !7, i64 0}
!25 = !{!6, !10, i64 8}
!26 = !{!6, !11, i64 96}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !28}
!30 = !{!6, !11, i64 40}
