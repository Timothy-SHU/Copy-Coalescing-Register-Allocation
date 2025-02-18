; ModuleID = 'zlib/gzwrite.c'
source_filename = "zlib/gzwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gz_state = type { %struct.gzFile_s, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, ptr, %struct.z_stream_s }
%struct.gzFile_s = type { i32, ptr, i64 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [37 x i8] c"requested length does not fit in int\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"1.2.6\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"internal error: deflate stream corrupt\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gzwrite(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %111, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %111

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %111

14:                                               ; preds = %10
  %15 = icmp slt i32 %2, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str) #15
  br label %111

17:                                               ; preds = %14
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %111, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !44
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = tail call fastcc i32 @gz_init(ptr noundef nonnull %0), !range !45
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %111, label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %28 = load i32, ptr %27, align 8, !tbaa !46
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %26
  store i32 0, ptr %27, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %32 = load i64, ptr %31, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !48
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = tail call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0), !range !45
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %111, label %39

39:                                               ; preds = %36, %30
  %40 = icmp eq i64 %32, 0
  br i1 %40, label %65, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %43 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  br label %47

44:                                               ; preds = %58
  %45 = sub nsw i64 %48, %60
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %65, label %47, !llvm.loop !49

47:                                               ; preds = %44, %41
  %48 = phi i64 [ %32, %41 ], [ %45, %44 ]
  %49 = phi i1 [ false, %41 ], [ true, %44 ]
  %50 = load i32, ptr %20, align 8, !tbaa !44
  %51 = zext i32 %50 to i64
  %52 = icmp slt i64 %48, %51
  %53 = trunc i64 %48 to i32
  %54 = select i1 %52, i32 %53, i32 %50
  br i1 %49, label %58, label %55

55:                                               ; preds = %47
  %56 = load ptr, ptr %42, align 8, !tbaa !52
  %57 = zext i32 %54 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %56, i8 0, i64 %57, i1 false)
  br label %58

58:                                               ; preds = %55, %47
  store i32 %54, ptr %33, align 8, !tbaa !48
  %59 = load ptr, ptr %42, align 8, !tbaa !52
  store ptr %59, ptr %6, align 8, !tbaa !53
  %60 = zext i32 %54 to i64
  %61 = load i64, ptr %43, align 8, !tbaa !54
  %62 = add nsw i64 %61, %60
  store i64 %62, ptr %43, align 8, !tbaa !54
  %63 = tail call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0), !range !45
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %111, label %44

65:                                               ; preds = %44, %39, %26
  %66 = load i32, ptr %20, align 8, !tbaa !44
  %67 = icmp ugt i32 %66, %2
  %68 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  br i1 %67, label %69, label %97

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %71 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  br label %72

72:                                               ; preds = %69, %93
  %73 = phi i32 [ %91, %93 ], [ %2, %69 ]
  %74 = phi ptr [ %94, %93 ], [ %1, %69 ]
  %75 = load i32, ptr %68, align 8, !tbaa !48
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load ptr, ptr %71, align 8, !tbaa !52
  store ptr %78, ptr %6, align 8, !tbaa !53
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i32, ptr %20, align 8, !tbaa !44
  %81 = sub i32 %80, %75
  %82 = tail call i32 @llvm.umin.i32(i32 %81, i32 %73)
  %83 = load ptr, ptr %6, align 8, !tbaa !53
  %84 = zext i32 %75 to i64
  %85 = getelementptr inbounds i8, ptr %83, i64 %84
  %86 = zext i32 %82 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %85, ptr align 1 %74, i64 %86, i1 false)
  %87 = load i32, ptr %68, align 8, !tbaa !48
  %88 = add i32 %87, %82
  store i32 %88, ptr %68, align 8, !tbaa !48
  %89 = load i64, ptr %70, align 8, !tbaa !54
  %90 = add nsw i64 %89, %86
  store i64 %90, ptr %70, align 8, !tbaa !54
  %91 = sub i32 %73, %82
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %110, label %93

93:                                               ; preds = %79
  %94 = getelementptr inbounds i8, ptr %74, i64 %86
  %95 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0), !range !45
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %111, label %72, !llvm.loop !55

97:                                               ; preds = %65
  %98 = load i32, ptr %68, align 8, !tbaa !48
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0), !range !45
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %111, label %103

103:                                              ; preds = %100, %97
  store i32 %2, ptr %68, align 8, !tbaa !48
  store ptr %1, ptr %6, align 8, !tbaa !53
  %104 = zext nneg i32 %2 to i64
  %105 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %106 = load i64, ptr %105, align 8, !tbaa !54
  %107 = add nsw i64 %106, %104
  store i64 %107, ptr %105, align 8, !tbaa !54
  %108 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0), !range !45
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %111, label %110

110:                                              ; preds = %79, %103
  br label %111

111:                                              ; preds = %58, %93, %36, %103, %100, %23, %17, %5, %10, %3, %110, %16
  %112 = phi i32 [ 0, %16 ], [ %2, %110 ], [ 0, %3 ], [ 0, %10 ], [ 0, %5 ], [ 0, %17 ], [ 0, %23 ], [ 0, %100 ], [ 0, %103 ], [ 0, %36 ], [ 0, %93 ], [ 0, %58 ]
  ret i32 %112
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare hidden void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gz_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %3 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !56
  %5 = zext i32 %4 to i64
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #16
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %6, ptr %7, align 8, !tbaa !52
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @gz_error(ptr noundef %0, i32 noundef -4, ptr noundef nonnull @.str.1) #15
  br label %41

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !57
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = tail call noalias ptr @malloc(i64 noundef %5) #16
  %16 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %15, ptr %16, align 8, !tbaa !58
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @free(ptr noundef %6) #15
  tail call void @gz_error(ptr noundef %0, i32 noundef -4, ptr noundef nonnull @.str.1) #15
  br label %41

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 8
  %21 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %22 = load i32, ptr %21, align 8, !tbaa !59
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  %24 = load i32, ptr %23, align 4, !tbaa !60
  %25 = tail call i32 @deflateInit2_(ptr noundef nonnull %2, i32 noundef %22, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %24, ptr noundef nonnull @.str.2, i32 noundef 112) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load ptr, ptr %16, align 8, !tbaa !58
  tail call void @free(ptr noundef %28) #15
  %29 = load ptr, ptr %7, align 8, !tbaa !52
  tail call void @free(ptr noundef %29) #15
  tail call void @gz_error(ptr noundef %0, i32 noundef -4, ptr noundef nonnull @.str.1) #15
  br label %41

30:                                               ; preds = %19, %10
  %31 = load i32, ptr %3, align 4, !tbaa !56
  %32 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  store i32 %31, ptr %32, align 8, !tbaa !44
  %33 = load i32, ptr %11, align 8, !tbaa !57
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 4
  store i32 %31, ptr %36, align 8, !tbaa !61
  %37 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !58
  %39 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 3
  store ptr %38, ptr %39, align 8, !tbaa !62
  %40 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %38, ptr %40, align 8, !tbaa !63
  br label %41

41:                                               ; preds = %30, %35, %27, %18, %9
  %42 = phi i32 [ -1, %9 ], [ -1, %18 ], [ -1, %27 ], [ 0, %35 ], [ 0, %30 ]
  ret i32 %42
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gz_comp(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !44
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @gz_init(ptr noundef %0), !range !45
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %88, label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !57
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 4
  %16 = icmp ne i32 %1, 0
  %17 = icmp ne i32 %1, 4
  %18 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 3
  %19 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %21 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  br label %40

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !64
  %25 = load ptr, ptr %3, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !48
  %28 = zext i32 %27 to i64
  %29 = tail call i64 @write(i32 noundef %24, ptr noundef %25, i64 noundef %28) #15
  %30 = trunc i64 %29 to i32
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, ptr %26, align 8, !tbaa !48
  %34 = icmp eq i32 %33, %30
  br i1 %34, label %39, label %35

35:                                               ; preds = %32, %22
  %36 = tail call ptr @__errno_location() #17
  %37 = load i32, ptr %36, align 4, !tbaa !65
  %38 = tail call ptr @strerror(i32 noundef %37) #15
  tail call void @gz_error(ptr noundef %0, i32 noundef -1, ptr noundef %38) #15
  br label %88

39:                                               ; preds = %32
  store i32 0, ptr %26, align 8, !tbaa !48
  br label %88

40:                                               ; preds = %14, %81
  %41 = phi i32 [ %78, %81 ], [ 0, %14 ]
  %42 = load i32, ptr %15, align 8, !tbaa !61
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = icmp eq i32 %41, 1
  %46 = or i1 %17, %45
  %47 = and i1 %16, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %44, %40
  %49 = load ptr, ptr %18, align 8, !tbaa !62
  %50 = load ptr, ptr %19, align 8, !tbaa !63
  %51 = ptrtoint ptr %49 to i64
  %52 = ptrtoint ptr %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %48
  %57 = load i32, ptr %20, align 4, !tbaa !64
  %58 = and i64 %53, 4294967295
  %59 = tail call i64 @write(i32 noundef %57, ptr noundef %50, i64 noundef %58) #15
  %60 = trunc i64 %59 to i32
  %61 = icmp sgt i32 %60, -1
  %62 = icmp eq i32 %60, %54
  %63 = and i1 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = tail call ptr @__errno_location() #17
  %66 = load i32, ptr %65, align 4, !tbaa !65
  %67 = tail call ptr @strerror(i32 noundef %66) #15
  tail call void @gz_error(ptr noundef %0, i32 noundef -1, ptr noundef %67) #15
  br label %88

68:                                               ; preds = %56, %48
  %69 = load i32, ptr %15, align 8, !tbaa !61
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, ptr %4, align 8, !tbaa !44
  store i32 %72, ptr %15, align 8, !tbaa !61
  %73 = load ptr, ptr %21, align 8, !tbaa !58
  store ptr %73, ptr %18, align 8, !tbaa !62
  br label %74

74:                                               ; preds = %71, %68
  %75 = load ptr, ptr %18, align 8, !tbaa !62
  store ptr %75, ptr %19, align 8, !tbaa !63
  br label %76

76:                                               ; preds = %74, %44
  %77 = load i32, ptr %15, align 8, !tbaa !61
  %78 = tail call i32 @deflate(ptr noundef nonnull %3, i32 noundef %1) #15
  %79 = icmp eq i32 %78, -2
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  tail call void @gz_error(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.3) #15
  br label %88

81:                                               ; preds = %76
  %82 = load i32, ptr %15, align 8, !tbaa !61
  %83 = icmp eq i32 %77, %82
  br i1 %83, label %84, label %40, !llvm.loop !66

84:                                               ; preds = %81
  %85 = icmp eq i32 %1, 4
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  %87 = tail call i32 @deflateReset(ptr noundef nonnull %3) #15
  br label %88

88:                                               ; preds = %84, %86, %7, %80, %64, %39, %35
  %89 = phi i32 [ -1, %35 ], [ 0, %39 ], [ -1, %64 ], [ -1, %80 ], [ -1, %7 ], [ 0, %86 ], [ 0, %84 ]
  ret i32 %89
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gzputc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  %4 = icmp eq ptr %0, null
  br i1 %4, label %81, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %81

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %81

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %54, label %18

18:                                               ; preds = %14
  store i32 0, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %20 = load i64, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0), !range !45
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %81, label %27

27:                                               ; preds = %24, %18
  %28 = icmp eq i64 %20, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %31 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %32 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  br label %36

33:                                               ; preds = %47
  %34 = sub nsw i64 %37, %49
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %54, label %36, !llvm.loop !49

36:                                               ; preds = %33, %29
  %37 = phi i64 [ %20, %29 ], [ %34, %33 ]
  %38 = phi i1 [ false, %29 ], [ true, %33 ]
  %39 = load i32, ptr %30, align 8, !tbaa !44
  %40 = zext i32 %39 to i64
  %41 = icmp slt i64 %37, %40
  %42 = trunc i64 %37 to i32
  %43 = select i1 %41, i32 %42, i32 %39
  br i1 %38, label %47, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr %31, align 8, !tbaa !52
  %46 = zext i32 %43 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %45, i8 0, i64 %46, i1 false)
  br label %47

47:                                               ; preds = %44, %36
  store i32 %43, ptr %21, align 8, !tbaa !48
  %48 = load ptr, ptr %31, align 8, !tbaa !52
  store ptr %48, ptr %6, align 8, !tbaa !53
  %49 = zext i32 %43 to i64
  %50 = load i64, ptr %32, align 8, !tbaa !54
  %51 = add nsw i64 %50, %49
  store i64 %51, ptr %32, align 8, !tbaa !54
  %52 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0), !range !45
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %81, label %33

54:                                               ; preds = %33, %27, %14
  %55 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !48
  %57 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !44
  %59 = icmp ult i32 %56, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = icmp eq i32 %56, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !52
  store ptr %64, ptr %6, align 8, !tbaa !53
  br label %65

65:                                               ; preds = %62, %60
  %66 = trunc i32 %1 to i8
  %67 = load ptr, ptr %6, align 8, !tbaa !53
  %68 = add i32 %56, 1
  store i32 %68, ptr %55, align 8, !tbaa !48
  %69 = zext i32 %56 to i64
  %70 = getelementptr inbounds i8, ptr %67, i64 %69
  store i8 %66, ptr %70, align 1, !tbaa !67
  %71 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !54
  %73 = add nsw i64 %72, 1
  store i64 %73, ptr %71, align 8, !tbaa !54
  %74 = and i32 %1, 255
  br label %81

75:                                               ; preds = %54
  %76 = trunc i32 %1 to i8
  store i8 %76, ptr %3, align 1, !tbaa !67
  %77 = call i32 @gzwrite(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 1), !range !68
  %78 = icmp eq i32 %77, 1
  %79 = and i32 %1, 255
  %80 = select i1 %78, i32 %79, i32 -1
  br label %81

81:                                               ; preds = %47, %24, %75, %5, %10, %2, %65
  %82 = phi i32 [ %74, %65 ], [ -1, %2 ], [ -1, %10 ], [ -1, %5 ], [ %80, %75 ], [ -1, %24 ], [ -1, %47 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gzputs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 @gzwrite(ptr noundef %0, ptr noundef %1, i32 noundef %4), !range !68
  %6 = icmp eq i32 %5, 0
  %7 = icmp ne i32 %4, 0
  %8 = and i1 %6, %7
  %9 = select i1 %8, i32 -1, i32 %5
  ret i32 %9
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gzprintf(ptr noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %4 = icmp eq ptr %0, null
  br i1 %4, label %90, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %90

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %90

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = tail call fastcc i32 @gz_init(ptr noundef nonnull %0), !range !45
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %90, label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %60, label %25

25:                                               ; preds = %21
  store i32 0, ptr %22, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %27 = load i64, ptr %26, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !48
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0), !range !45
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %90, label %34

34:                                               ; preds = %31, %25
  %35 = icmp eq i64 %27, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %38 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  br label %42

39:                                               ; preds = %53
  %40 = sub nsw i64 %43, %55
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %60, label %42, !llvm.loop !49

42:                                               ; preds = %39, %36
  %43 = phi i64 [ %27, %36 ], [ %40, %39 ]
  %44 = phi i1 [ false, %36 ], [ true, %39 ]
  %45 = load i32, ptr %15, align 8, !tbaa !44
  %46 = zext i32 %45 to i64
  %47 = icmp slt i64 %43, %46
  %48 = trunc i64 %43 to i32
  %49 = select i1 %47, i32 %48, i32 %45
  br i1 %44, label %53, label %50

50:                                               ; preds = %42
  %51 = load ptr, ptr %37, align 8, !tbaa !52
  %52 = zext i32 %49 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %51, i8 0, i64 %52, i1 false)
  br label %53

53:                                               ; preds = %50, %42
  store i32 %49, ptr %28, align 8, !tbaa !48
  %54 = load ptr, ptr %37, align 8, !tbaa !52
  store ptr %54, ptr %6, align 8, !tbaa !53
  %55 = zext i32 %49 to i64
  %56 = load i64, ptr %38, align 8, !tbaa !54
  %57 = add nsw i64 %56, %55
  store i64 %57, ptr %38, align 8, !tbaa !54
  %58 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0), !range !45
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %90, label %39

60:                                               ; preds = %39, %34, %21
  %61 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !48
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0), !range !45
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %90, label %67

67:                                               ; preds = %64, %60
  %68 = load i32, ptr %15, align 8, !tbaa !44
  %69 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !52
  %71 = add nsw i32 %68, -1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %70, i64 %72
  store i8 0, ptr %73, align 1, !tbaa !67
  call void @llvm.va_start(ptr nonnull %3)
  %74 = load ptr, ptr %69, align 8, !tbaa !52
  %75 = sext i32 %68 to i64
  %76 = call i32 @vsnprintf(ptr noundef %74, i64 noundef %75, ptr noundef %1, ptr noundef nonnull %3) #15
  call void @llvm.va_end(ptr %3)
  %77 = icmp sgt i32 %76, 0
  %78 = icmp slt i32 %76, %68
  %79 = and i1 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %67
  %81 = load ptr, ptr %69, align 8, !tbaa !52
  %82 = getelementptr inbounds i8, ptr %81, i64 %72
  %83 = load i8, ptr %82, align 1, !tbaa !67
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  store i32 %76, ptr %61, align 8, !tbaa !48
  store ptr %81, ptr %6, align 8, !tbaa !53
  %86 = zext nneg i32 %76 to i64
  %87 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !54
  %89 = add nsw i64 %88, %86
  store i64 %89, ptr %87, align 8, !tbaa !54
  br label %90

90:                                               ; preds = %53, %31, %67, %80, %64, %18, %5, %10, %2, %85
  %91 = phi i32 [ %76, %85 ], [ -1, %2 ], [ 0, %10 ], [ 0, %5 ], [ 0, %18 ], [ 0, %64 ], [ 0, %80 ], [ 0, %67 ], [ 0, %31 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i32 %91
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gzflush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %58, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %58

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = icmp ne i32 %10, 0
  %12 = icmp ugt i32 %1, 4
  %13 = or i1 %12, %11
  br i1 %13, label %58, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %55, label %18

18:                                               ; preds = %14
  store i32 0, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %20 = load i64, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %22 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !48
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0), !range !45
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %58, label %28

28:                                               ; preds = %25, %18
  %29 = icmp eq i64 %20, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %32 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %33 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  br label %37

34:                                               ; preds = %48
  %35 = sub nsw i64 %38, %50
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %55, label %37, !llvm.loop !49

37:                                               ; preds = %34, %30
  %38 = phi i64 [ %20, %30 ], [ %35, %34 ]
  %39 = phi i1 [ false, %30 ], [ true, %34 ]
  %40 = load i32, ptr %31, align 8, !tbaa !44
  %41 = zext i32 %40 to i64
  %42 = icmp slt i64 %38, %41
  %43 = trunc i64 %38 to i32
  %44 = select i1 %42, i32 %43, i32 %40
  br i1 %39, label %48, label %45

45:                                               ; preds = %37
  %46 = load ptr, ptr %32, align 8, !tbaa !52
  %47 = zext i32 %44 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %46, i8 0, i64 %47, i1 false)
  br label %48

48:                                               ; preds = %45, %37
  store i32 %44, ptr %22, align 8, !tbaa !48
  %49 = load ptr, ptr %32, align 8, !tbaa !52
  store ptr %49, ptr %21, align 8, !tbaa !53
  %50 = zext i32 %44 to i64
  %51 = load i64, ptr %33, align 8, !tbaa !54
  %52 = add nsw i64 %51, %50
  store i64 %52, ptr %33, align 8, !tbaa !54
  %53 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0), !range !45
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %58, label %34

55:                                               ; preds = %34, %28, %14
  %56 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef %1), !range !45
  %57 = load i32, ptr %9, align 4, !tbaa !43
  br label %58

58:                                               ; preds = %48, %25, %4, %8, %2, %55
  %59 = phi i32 [ %57, %55 ], [ -1, %2 ], [ -2, %8 ], [ -2, %4 ], [ -1, %25 ], [ -1, %48 ]
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %79, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %79

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  %20 = load i32, ptr %19, align 4, !tbaa !60
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %79, label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %22
  store i32 0, ptr %23, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %28 = load i64, ptr %27, align 8, !tbaa !47
  %29 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !48
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0), !range !45
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %79, label %35

35:                                               ; preds = %32, %26
  %36 = icmp eq i64 %28, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %39 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %40 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  br label %44

41:                                               ; preds = %55
  %42 = sub nsw i64 %45, %57
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %62, label %44, !llvm.loop !49

44:                                               ; preds = %41, %37
  %45 = phi i64 [ %28, %37 ], [ %42, %41 ]
  %46 = phi i1 [ false, %37 ], [ true, %41 ]
  %47 = load i32, ptr %38, align 8, !tbaa !44
  %48 = zext i32 %47 to i64
  %49 = icmp slt i64 %45, %48
  %50 = trunc i64 %45 to i32
  %51 = select i1 %49, i32 %50, i32 %47
  br i1 %46, label %55, label %52

52:                                               ; preds = %44
  %53 = load ptr, ptr %39, align 8, !tbaa !52
  %54 = zext i32 %51 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %53, i8 0, i64 %54, i1 false)
  br label %55

55:                                               ; preds = %52, %44
  store i32 %51, ptr %29, align 8, !tbaa !48
  %56 = load ptr, ptr %39, align 8, !tbaa !52
  store ptr %56, ptr %6, align 8, !tbaa !53
  %57 = zext i32 %51 to i64
  %58 = load i64, ptr %40, align 8, !tbaa !54
  %59 = add nsw i64 %58, %57
  store i64 %59, ptr %40, align 8, !tbaa !54
  %60 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0), !range !45
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %79, label %41

62:                                               ; preds = %41, %35, %22
  %63 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %64 = load i32, ptr %63, align 8, !tbaa !44
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !48
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 1), !range !45
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, ptr %11, align 4, !tbaa !43
  br label %79

75:                                               ; preds = %70, %66
  %76 = tail call i32 @deflateParams(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #15
  br label %77

77:                                               ; preds = %75, %62
  store i32 %1, ptr %15, align 8, !tbaa !59
  %78 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  store i32 %2, ptr %78, align 4, !tbaa !60
  br label %79

79:                                               ; preds = %55, %32, %18, %5, %10, %3, %77, %73
  %80 = phi i32 [ %74, %73 ], [ 0, %77 ], [ -2, %3 ], [ -2, %10 ], [ -2, %5 ], [ 0, %18 ], [ -1, %32 ], [ -1, %55 ]
  ret i32 %80
}

declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gzclose_w(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %78, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 31153
  br i1 %6, label %7, label %78

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %51, label %11

11:                                               ; preds = %7
  store i32 0, ptr %8, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %13 = load i64, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !48
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = tail call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0), !range !45
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %48, label %21

21:                                               ; preds = %18, %11
  %22 = icmp eq i64 %13, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %25 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %26 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  br label %30

27:                                               ; preds = %41
  %28 = sub nsw i64 %31, %43
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %51, label %30, !llvm.loop !49

30:                                               ; preds = %27, %23
  %31 = phi i64 [ %13, %23 ], [ %28, %27 ]
  %32 = phi i1 [ false, %23 ], [ true, %27 ]
  %33 = load i32, ptr %24, align 8, !tbaa !44
  %34 = zext i32 %33 to i64
  %35 = icmp slt i64 %31, %34
  %36 = trunc i64 %31 to i32
  %37 = select i1 %35, i32 %36, i32 %33
  br i1 %32, label %41, label %38

38:                                               ; preds = %30
  %39 = load ptr, ptr %25, align 8, !tbaa !52
  %40 = zext i32 %37 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %39, i8 0, i64 %40, i1 false)
  br label %41

41:                                               ; preds = %38, %30
  store i32 %37, ptr %15, align 8, !tbaa !48
  %42 = load ptr, ptr %25, align 8, !tbaa !52
  store ptr %42, ptr %14, align 8, !tbaa !53
  %43 = zext i32 %37 to i64
  %44 = load i64, ptr %26, align 8, !tbaa !54
  %45 = add nsw i64 %44, %43
  store i64 %45, ptr %26, align 8, !tbaa !54
  %46 = tail call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0), !range !45
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %27

48:                                               ; preds = %41, %18
  %49 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %50 = load i32, ptr %49, align 4, !tbaa !43
  br label %51

51:                                               ; preds = %27, %21, %48, %7
  %52 = phi i32 [ %50, %48 ], [ 0, %7 ], [ 0, %21 ], [ 0, %27 ]
  %53 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 4), !range !45
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %57 = load i32, ptr %56, align 4, !tbaa !43
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i32 [ %57, %55 ], [ %52, %51 ]
  %60 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %61 = load i32, ptr %60, align 8, !tbaa !57
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %65 = tail call i32 @deflateEnd(ptr noundef nonnull %64) #15
  %66 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !58
  tail call void @free(ptr noundef %67) #15
  br label %68

68:                                               ; preds = %63, %58
  %69 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !52
  tail call void @free(ptr noundef %70) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %71 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !69
  tail call void @free(ptr noundef %72) #15
  %73 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !64
  %75 = tail call i32 @close(i32 noundef %74) #15
  %76 = icmp eq i32 %75, -1
  %77 = select i1 %76, i32 -1, i32 %59
  tail call void @free(ptr noundef %0) #15
  br label %78

78:                                               ; preds = %3, %1, %68
  %79 = phi i32 [ %77, %68 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %79
}

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @gzflags() local_unnamed_addr #8 {
  ret i64 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !37, i64 24}
!35 = !{!"", !36, i64 0, !37, i64 24, !37, i64 28, !40, i64 32, !37, i64 40, !37, i64 44, !40, i64 48, !40, i64 56, !37, i64 64, !37, i64 68, !41, i64 72, !37, i64 80, !37, i64 84, !37, i64 88, !37, i64 92, !41, i64 96, !37, i64 104, !37, i64 108, !40, i64 112, !42, i64 120}
!36 = !{!"gzFile_s", !37, i64 0, !40, i64 8, !41, i64 16}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = !{!"long", !38, i64 0}
!42 = !{!"z_stream_s", !40, i64 0, !37, i64 8, !41, i64 16, !40, i64 24, !37, i64 32, !41, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !37, i64 88, !41, i64 96, !41, i64 104}
!43 = !{!35, !37, i64 108}
!44 = !{!35, !37, i64 40}
!45 = !{i32 -1, i32 1}
!46 = !{!35, !37, i64 104}
!47 = !{!35, !41, i64 96}
!48 = !{!42, !37, i64 8}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!35, !40, i64 48}
!53 = !{!42, !40, i64 0}
!54 = !{!35, !41, i64 16}
!55 = distinct !{!55, !50, !51}
!56 = !{!35, !37, i64 44}
!57 = !{!35, !37, i64 64}
!58 = !{!35, !40, i64 56}
!59 = !{!35, !37, i64 88}
!60 = !{!35, !37, i64 92}
!61 = !{!42, !37, i64 32}
!62 = !{!42, !40, i64 24}
!63 = !{!35, !40, i64 8}
!64 = !{!35, !37, i64 28}
!65 = !{!37, !37, i64 0}
!66 = distinct !{!66, !50, !51}
!67 = !{!38, !38, i64 0}
!68 = !{i32 0, i32 -2147483648}
!69 = !{!35, !40, i64 32}
