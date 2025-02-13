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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @gzwrite(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %83, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %83

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %83

14:                                               ; preds = %10
  %15 = icmp slt i32 %2, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str) #15
  br label %83

17:                                               ; preds = %14
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %83, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !44
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = tail call fastcc i32 @gz_init(ptr noundef nonnull %0) #16, !range !45
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %83, label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %28 = load i32, ptr %27, align 8, !tbaa !46
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  store i32 0, ptr %27, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %32 = load i64, ptr %31, align 8, !tbaa !47
  %33 = tail call fastcc i32 @gz_zero(ptr noundef nonnull %0, i64 noundef %32) #16, !range !45
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %83, label %35

35:                                               ; preds = %30, %26
  %36 = load i32, ptr %20, align 8, !tbaa !44
  %37 = icmp ugt i32 %36, %2
  %38 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  br i1 %37, label %39, label %69

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %41 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  br label %42

42:                                               ; preds = %39, %65
  %43 = phi i32 [ %63, %65 ], [ %2, %39 ]
  %44 = phi ptr [ %66, %65 ], [ %1, %39 ]
  %45 = load i32, ptr %38, align 8, !tbaa !48
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %6, align 8, !tbaa !49
  br label %51

49:                                               ; preds = %42
  %50 = load ptr, ptr %41, align 8, !tbaa !50
  store ptr %50, ptr %6, align 8, !tbaa !49
  br label %51

51:                                               ; preds = %47, %49
  %52 = phi ptr [ %48, %47 ], [ %50, %49 ]
  %53 = load i32, ptr %20, align 8, !tbaa !44
  %54 = sub i32 %53, %45
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 %43)
  %56 = zext i32 %45 to i64
  %57 = getelementptr inbounds i8, ptr %52, i64 %56
  %58 = zext i32 %55 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %44, i64 %58, i1 false)
  %59 = load i32, ptr %38, align 8, !tbaa !48
  %60 = add i32 %59, %55
  store i32 %60, ptr %38, align 8, !tbaa !48
  %61 = load i64, ptr %40, align 8, !tbaa !51
  %62 = add nsw i64 %61, %58
  store i64 %62, ptr %40, align 8, !tbaa !51
  %63 = sub i32 %43, %55
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %51
  %66 = getelementptr inbounds i8, ptr %44, i64 %58
  %67 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0) #16, !range !45
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %83, label %42, !llvm.loop !52

69:                                               ; preds = %35
  %70 = load i32, ptr %38, align 8, !tbaa !48
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0) #16, !range !45
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %83, label %75

75:                                               ; preds = %72, %69
  store i32 %2, ptr %38, align 8, !tbaa !48
  store ptr %1, ptr %6, align 8, !tbaa !49
  %76 = zext nneg i32 %2 to i64
  %77 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %78 = load i64, ptr %77, align 8, !tbaa !51
  %79 = add nsw i64 %78, %76
  store i64 %79, ptr %77, align 8, !tbaa !51
  %80 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0) #16, !range !45
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %83, label %82

82:                                               ; preds = %51, %75
  br label %83

83:                                               ; preds = %65, %75, %72, %30, %23, %17, %5, %10, %3, %82, %16
  %84 = phi i32 [ 0, %16 ], [ %2, %82 ], [ 0, %3 ], [ 0, %10 ], [ 0, %5 ], [ 0, %17 ], [ 0, %23 ], [ 0, %30 ], [ 0, %72 ], [ 0, %75 ], [ 0, %65 ]
  ret i32 %84
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare hidden void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gz_init(ptr noundef %0) unnamed_addr #0 !PGOFuncName !54 {
  %2 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %3 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !55
  %5 = zext i32 %4 to i64
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #17
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %6, ptr %7, align 8, !tbaa !50
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.1) #15
  br label %42

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  store i32 %4, ptr %15, align 8, !tbaa !44
  br label %42

16:                                               ; preds = %10
  %17 = tail call noalias ptr @malloc(i64 noundef %5) #17
  %18 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %17, ptr %18, align 8, !tbaa !57
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %6) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.1) #15
  br label %42

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 8
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %24 = load i32, ptr %23, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  %26 = load i32, ptr %25, align 4, !tbaa !59
  %27 = tail call i32 @deflateInit2_(ptr noundef nonnull %2, i32 noundef %24, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %26, ptr noundef nonnull @.str.2, i32 noundef 112) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr %18, align 8, !tbaa !57
  tail call void @free(ptr noundef %30) #15
  %31 = load ptr, ptr %7, align 8, !tbaa !50
  tail call void @free(ptr noundef %31) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.1) #15
  br label %42

32:                                               ; preds = %21
  %33 = load i32, ptr %11, align 8, !tbaa !56
  %34 = load i32, ptr %3, align 4, !tbaa !55
  %35 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  store i32 %34, ptr %35, align 8, !tbaa !44
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 4
  store i32 %34, ptr %38, align 8, !tbaa !60
  %39 = load ptr, ptr %18, align 8, !tbaa !57
  %40 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 3
  store ptr %39, ptr %40, align 8, !tbaa !61
  %41 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %39, ptr %41, align 8, !tbaa !62
  br label %42

42:                                               ; preds = %14, %32, %37, %29, %20, %9
  %43 = phi i32 [ -1, %9 ], [ -1, %20 ], [ -1, %29 ], [ 0, %37 ], [ 0, %32 ], [ 0, %14 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gz_zero(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !PGOFuncName !63 {
  %3 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0) #16, !range !45
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %39, label %10

10:                                               ; preds = %7, %2
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %15 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  br label %19

16:                                               ; preds = %32
  %17 = sub nsw i64 %20, %33
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %39, label %19, !llvm.loop !64

19:                                               ; preds = %12, %16
  %20 = phi i64 [ %1, %12 ], [ %17, %16 ]
  %21 = phi i1 [ false, %12 ], [ true, %16 ]
  %22 = load i32, ptr %13, align 8, !tbaa !44
  %23 = zext i32 %22 to i64
  %24 = icmp slt i64 %20, %23
  %25 = trunc i64 %20 to i32
  %26 = select i1 %24, i32 %25, i32 %22
  br i1 %21, label %27, label %29

27:                                               ; preds = %19
  %28 = zext i32 %26 to i64
  br label %32

29:                                               ; preds = %19
  %30 = load ptr, ptr %14, align 8, !tbaa !50
  %31 = zext i32 %26 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %30, i8 0, i64 %31, i1 false)
  br label %32

32:                                               ; preds = %27, %29
  %33 = phi i64 [ %28, %27 ], [ %31, %29 ]
  store i32 %26, ptr %4, align 8, !tbaa !48
  %34 = load ptr, ptr %14, align 8, !tbaa !50
  store ptr %34, ptr %3, align 8, !tbaa !49
  %35 = load i64, ptr %15, align 8, !tbaa !51
  %36 = add nsw i64 %35, %33
  store i64 %36, ptr %15, align 8, !tbaa !51
  %37 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0) #16, !range !45
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %16

39:                                               ; preds = %32, %16, %10, %7
  %40 = phi i32 [ -1, %7 ], [ 0, %10 ], [ -1, %32 ], [ 0, %16 ]
  ret i32 %40
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gz_comp(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !65 {
  %3 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !44
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @gz_init(ptr noundef nonnull %0) #16, !range !45
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %94, label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 4
  %16 = icmp ne i32 %1, 0
  %17 = icmp ne i32 %1, 4
  %18 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 3
  %19 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %21 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %22 = load i32, ptr %15, align 8, !tbaa !60
  br label %41

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !66
  %26 = load ptr, ptr %3, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !48
  %29 = zext i32 %28 to i64
  %30 = tail call i64 @write(i32 noundef %25, ptr noundef %26, i64 noundef %29) #15
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, ptr %27, align 8, !tbaa !48
  %35 = icmp eq i32 %34, %31
  br i1 %35, label %40, label %36

36:                                               ; preds = %33, %23
  %37 = tail call ptr @__errno_location() #18
  %38 = load i32, ptr %37, align 4, !tbaa !67
  %39 = tail call ptr @strerror(i32 noundef %38) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %39) #15
  br label %94

40:                                               ; preds = %33
  store i32 0, ptr %27, align 8, !tbaa !48
  br label %94

41:                                               ; preds = %14, %87
  %42 = phi i32 [ %88, %87 ], [ %22, %14 ]
  %43 = phi i32 [ %84, %87 ], [ 0, %14 ]
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = icmp eq i32 %43, 1
  %47 = or i1 %17, %46
  %48 = and i1 %16, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %45, %41
  %50 = load ptr, ptr %18, align 8, !tbaa !61
  %51 = load ptr, ptr %19, align 8, !tbaa !62
  %52 = ptrtoint ptr %50 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %49
  %58 = load i32, ptr %20, align 4, !tbaa !66
  %59 = and i64 %54, 4294967295
  %60 = tail call i64 @write(i32 noundef %58, ptr noundef %51, i64 noundef %59) #15
  %61 = trunc i64 %60 to i32
  %62 = icmp sgt i32 %61, -1
  %63 = icmp eq i32 %61, %55
  %64 = and i1 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, ptr %15, align 8, !tbaa !60
  br label %71

67:                                               ; preds = %57
  %68 = tail call ptr @__errno_location() #18
  %69 = load i32, ptr %68, align 4, !tbaa !67
  %70 = tail call ptr @strerror(i32 noundef %69) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %70) #15
  br label %94

71:                                               ; preds = %65, %49
  %72 = phi i32 [ %66, %65 ], [ %42, %49 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %18, align 8, !tbaa !61
  br label %79

76:                                               ; preds = %71
  %77 = load i32, ptr %4, align 8, !tbaa !44
  store i32 %77, ptr %15, align 8, !tbaa !60
  %78 = load ptr, ptr %21, align 8, !tbaa !57
  store ptr %78, ptr %18, align 8, !tbaa !61
  br label %79

79:                                               ; preds = %74, %76
  %80 = phi i32 [ %72, %74 ], [ %77, %76 ]
  %81 = phi ptr [ %75, %74 ], [ %78, %76 ]
  store ptr %81, ptr %19, align 8, !tbaa !62
  br label %82

82:                                               ; preds = %79, %45
  %83 = phi i32 [ %80, %79 ], [ %42, %45 ]
  %84 = tail call i32 @deflate(ptr noundef nonnull %3, i32 noundef %1) #15
  %85 = icmp eq i32 %84, -2
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.3) #15
  br label %94

87:                                               ; preds = %82
  %88 = load i32, ptr %15, align 8, !tbaa !60
  %89 = icmp eq i32 %83, %88
  br i1 %89, label %90, label %41, !llvm.loop !68

90:                                               ; preds = %87
  %91 = icmp eq i32 %1, 4
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  %93 = tail call i32 @deflateReset(ptr noundef nonnull %3) #15
  br label %94

94:                                               ; preds = %90, %92, %7, %86, %67, %40, %36
  %95 = phi i32 [ -1, %36 ], [ 0, %40 ], [ -1, %67 ], [ -1, %86 ], [ -1, %7 ], [ 0, %92 ], [ 0, %90 ]
  ret i32 %95
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @gzputc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  %4 = icmp eq ptr %0, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %52

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  store i32 0, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %20 = load i64, ptr %19, align 8, !tbaa !47
  %21 = tail call fastcc i32 @gz_zero(ptr noundef nonnull %0, i64 noundef %20) #16, !range !45
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %52, label %23

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !44
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = icmp eq i32 %25, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %6, align 8, !tbaa !49
  br label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  store ptr %35, ptr %6, align 8, !tbaa !49
  br label %36

36:                                               ; preds = %31, %33
  %37 = phi ptr [ %32, %31 ], [ %35, %33 ]
  %38 = trunc i32 %1 to i8
  %39 = add nuw i32 %25, 1
  store i32 %39, ptr %24, align 8, !tbaa !48
  %40 = zext i32 %25 to i64
  %41 = getelementptr inbounds i8, ptr %37, i64 %40
  store i8 %38, ptr %41, align 1, !tbaa !69
  %42 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !51
  %44 = add nsw i64 %43, 1
  store i64 %44, ptr %42, align 8, !tbaa !51
  %45 = and i32 %1, 255
  br label %52

46:                                               ; preds = %23
  %47 = trunc i32 %1 to i8
  store i8 %47, ptr %3, align 1, !tbaa !69
  %48 = call i32 @gzwrite(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 1) #16, !range !70
  %49 = icmp eq i32 %48, 1
  %50 = and i32 %1, 255
  %51 = select i1 %49, i32 %50, i32 -1
  br label %52

52:                                               ; preds = %46, %18, %5, %10, %2, %36
  %53 = phi i32 [ %45, %36 ], [ -1, %2 ], [ -1, %10 ], [ -1, %5 ], [ -1, %18 ], [ %51, %46 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @gzputs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 @gzwrite(ptr noundef %0, ptr noundef %1, i32 noundef %4) #16, !range !70
  %6 = icmp eq i32 %5, 0
  %7 = icmp ne i32 %4, 0
  %8 = and i1 %6, %7
  %9 = select i1 %8, i32 -1, i32 %5
  ret i32 %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @gzprintf(ptr noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %4 = icmp eq ptr %0, null
  br i1 %4, label %60, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %60

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = tail call fastcc i32 @gz_init(ptr noundef nonnull %0) #16, !range !45
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %60, label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  store i32 0, ptr %22, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %27 = load i64, ptr %26, align 8, !tbaa !47
  %28 = tail call fastcc i32 @gz_zero(ptr noundef nonnull %0, i64 noundef %27) #16, !range !45
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %60, label %30

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !48
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 0) #16, !range !45
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %60, label %37

37:                                               ; preds = %34, %30
  %38 = load i32, ptr %15, align 8, !tbaa !44
  %39 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = add nsw i32 %38, -1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %40, i64 %42
  store i8 0, ptr %43, align 1, !tbaa !69
  call void @llvm.va_start(ptr nonnull %3)
  %44 = load ptr, ptr %39, align 8, !tbaa !50
  %45 = sext i32 %38 to i64
  %46 = call i32 @vsnprintf(ptr noundef %44, i64 noundef %45, ptr noundef %1, ptr noundef nonnull %3) #15
  call void @llvm.va_end(ptr nonnull %3)
  %47 = icmp sgt i32 %46, 0
  %48 = icmp slt i32 %46, %38
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %37
  %51 = load ptr, ptr %39, align 8, !tbaa !50
  %52 = getelementptr inbounds i8, ptr %51, i64 %42
  %53 = load i8, ptr %52, align 1, !tbaa !69
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  store i32 %46, ptr %31, align 8, !tbaa !48
  store ptr %51, ptr %6, align 8, !tbaa !49
  %56 = zext nneg i32 %46 to i64
  %57 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !51
  %59 = add nsw i64 %58, %56
  store i64 %59, ptr %57, align 8, !tbaa !51
  br label %60

60:                                               ; preds = %37, %50, %34, %25, %18, %5, %10, %2, %55
  %61 = phi i32 [ %46, %55 ], [ -1, %2 ], [ 0, %10 ], [ 0, %5 ], [ 0, %18 ], [ 0, %25 ], [ 0, %34 ], [ 0, %50 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret i32 %61
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @gzflush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 31153
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = icmp ne i32 %10, 0
  %12 = icmp ugt i32 %1, 4
  %13 = or i1 %12, %11
  br i1 %13, label %26, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  store i32 0, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %20 = load i64, ptr %19, align 8, !tbaa !47
  %21 = tail call fastcc i32 @gz_zero(ptr noundef nonnull %0, i64 noundef %20) #16, !range !45
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %14
  %24 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef %1) #16, !range !45
  %25 = load i32, ptr %9, align 4, !tbaa !43
  br label %26

26:                                               ; preds = %18, %4, %8, %2, %23
  %27 = phi i32 [ %25, %23 ], [ -1, %2 ], [ -2, %8 ], [ -2, %4 ], [ -1, %18 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 31153
  br i1 %9, label %10, label %48

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !58
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  %20 = load i32, ptr %19, align 4, !tbaa !59
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %48, label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  store i32 0, ptr %23, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %28 = load i64, ptr %27, align 8, !tbaa !47
  %29 = tail call fastcc i32 @gz_zero(ptr noundef nonnull %0, i64 noundef %28) #16, !range !45
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %48, label %31

31:                                               ; preds = %26, %22
  %32 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !44
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !48
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 1) #16, !range !45
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, ptr %11, align 4, !tbaa !43
  br label %48

44:                                               ; preds = %39, %35
  %45 = tail call i32 @deflateParams(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #15
  br label %46

46:                                               ; preds = %44, %31
  store i32 %1, ptr %15, align 8, !tbaa !58
  %47 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 14
  store i32 %2, ptr %47, align 4, !tbaa !59
  br label %48

48:                                               ; preds = %26, %18, %5, %10, %3, %46, %42
  %49 = phi i32 [ %43, %42 ], [ 0, %46 ], [ -2, %3 ], [ -2, %10 ], [ -2, %5 ], [ 0, %18 ], [ -1, %26 ]
  ret i32 %49
}

; Function Attrs: optsize
declare i32 @deflateParams(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @gzclose_w(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 31153
  br i1 %6, label %7, label %46

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  store i32 0, ptr %8, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %13 = load i64, ptr %12, align 8, !tbaa !47
  %14 = tail call fastcc i32 @gz_zero(ptr noundef nonnull %0, i64 noundef %13) #16, !range !45
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %18 = load i32, ptr %17, align 4, !tbaa !43
  br label %19

19:                                               ; preds = %11, %16, %7
  %20 = phi i32 [ %18, %16 ], [ 0, %11 ], [ 0, %7 ]
  %21 = tail call fastcc i32 @gz_comp(ptr noundef nonnull %0, i32 noundef 4) #16, !range !45
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %25 = load i32, ptr %24, align 4, !tbaa !43
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i32 [ %25, %23 ], [ %20, %19 ]
  %28 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %29 = load i32, ptr %28, align 8, !tbaa !56
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %33 = tail call i32 @deflateEnd(ptr noundef nonnull %32) #15
  %34 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  tail call void @free(ptr noundef %35) #15
  br label %36

36:                                               ; preds = %31, %26
  %37 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !50
  tail call void @free(ptr noundef %38) #15
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #15
  %39 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !71
  tail call void @free(ptr noundef %40) #15
  %41 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !66
  %43 = tail call i32 @close(i32 noundef %42) #15
  %44 = icmp eq i32 %43, -1
  %45 = select i1 %44, i32 -1, i32 %27
  tail call void @free(ptr noundef nonnull %0) #15
  br label %46

46:                                               ; preds = %3, %1, %36
  %47 = phi i32 [ %45, %36 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %47
}

; Function Attrs: optsize
declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @gzflags() local_unnamed_addr #8 {
  ret i64 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @deflateReset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize allocsize(0) }
attributes #18 = { nounwind optsize willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!49 = !{!42, !40, i64 0}
!50 = !{!35, !40, i64 48}
!51 = !{!35, !41, i64 16}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"gzwrite.c:gz_init"}
!55 = !{!35, !37, i64 44}
!56 = !{!35, !37, i64 64}
!57 = !{!35, !40, i64 56}
!58 = !{!35, !37, i64 88}
!59 = !{!35, !37, i64 92}
!60 = !{!42, !37, i64 32}
!61 = !{!42, !40, i64 24}
!62 = !{!35, !40, i64 8}
!63 = !{!"gzwrite.c:gz_zero"}
!64 = distinct !{!64, !53}
!65 = !{!"gzwrite.c:gz_comp"}
!66 = !{!35, !37, i64 28}
!67 = !{!37, !37, i64 0}
!68 = distinct !{!68, !53}
!69 = !{!38, !38, i64 0}
!70 = !{i32 0, i32 -2147483648}
!71 = !{!35, !40, i64 32}
