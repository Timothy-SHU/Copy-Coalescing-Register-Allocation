; ModuleID = 'zlib/gzread.c'
source_filename = "zlib/gzread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gz_state = type { %struct.gzFile_s, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, ptr, %struct.z_stream_s }
%struct.gzFile_s = type { i32, ptr, i64 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"requested length does not fit in int\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"out of room to push characters\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"unexpected end of file\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"internal error: inflate stream corrupt\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"compressed data error\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"1.2.6\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @gzread(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = icmp eq ptr %0, null
  br i1 %5, label %93, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %93

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !43
  switch i32 %12, label %93 [
    i32 0, label %13
    i32 -5, label %13
  ]

13:                                               ; preds = %10, %10
  %14 = icmp slt i32 %2, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str) #13
  br label %93

16:                                               ; preds = %13
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %93, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %20 = load i32, ptr %19, align 8, !tbaa !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  store i32 0, ptr %19, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %24 = load i64, ptr %23, align 8, !tbaa !45
  %25 = tail call fastcc i32 @gz_skip(ptr noundef nonnull %0, i64 noundef %24) #14, !range !46
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %93, label %27

27:                                               ; preds = %22, %18
  %28 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %30 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %31 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %32 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %33 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 4
  %34 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 3
  %35 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  br label %36

36:                                               ; preds = %88, %27
  %37 = phi i32 [ %2, %27 ], [ %89, %88 ]
  %38 = phi i32 [ 0, %27 ], [ %90, %88 ]
  %39 = phi ptr [ %1, %27 ], [ %91, %88 ]
  %40 = load i32, ptr %0, align 8, !tbaa !47
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = tail call i32 @llvm.umin.i32(i32 %40, i32 %37)
  store i32 %43, ptr %4, align 4, !tbaa !48
  %44 = load ptr, ptr %28, align 8, !tbaa !49
  %45 = zext i32 %43 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 1 %44, i64 %45, i1 false)
  %46 = load ptr, ptr %28, align 8, !tbaa !49
  %47 = getelementptr inbounds i8, ptr %46, i64 %45
  store ptr %47, ptr %28, align 8, !tbaa !49
  %48 = load i32, ptr %0, align 8, !tbaa !47
  %49 = sub i32 %48, %43
  store i32 %49, ptr %0, align 8, !tbaa !47
  br label %80

50:                                               ; preds = %36
  %51 = load i32, ptr %29, align 8, !tbaa !50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %30, align 8, !tbaa !51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 12
  store i32 1, ptr %57, align 4, !tbaa !52
  br label %93

58:                                               ; preds = %53, %50
  %59 = load i32, ptr %31, align 4, !tbaa !53
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i32, ptr %32, align 8, !tbaa !54
  %63 = shl i32 %62, 1
  %64 = icmp ult i32 %37, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %58
  %66 = tail call fastcc i32 @gz_fetch(ptr noundef nonnull %0) #14, !range !46
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %93, label %88

68:                                               ; preds = %61
  %69 = icmp eq i32 %59, 1
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = call fastcc i32 @gz_load(ptr noundef nonnull %0, ptr noundef %39, i32 noundef %37, ptr noundef nonnull %4) #14, !range !46
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %93, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %4, align 4, !tbaa !48
  br label %80

75:                                               ; preds = %68
  store i32 %37, ptr %33, align 8, !tbaa !55
  store ptr %39, ptr %34, align 8, !tbaa !56
  %76 = tail call fastcc i32 @gz_decomp(ptr noundef nonnull %0) #14, !range !46
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %93, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %0, align 8, !tbaa !47
  store i32 %79, ptr %4, align 4, !tbaa !48
  store i32 0, ptr %0, align 8, !tbaa !47
  br label %80

80:                                               ; preds = %73, %78, %42
  %81 = phi i32 [ %74, %73 ], [ %79, %78 ], [ %43, %42 ]
  %82 = sub i32 %37, %81
  %83 = zext i32 %81 to i64
  %84 = getelementptr inbounds i8, ptr %39, i64 %83
  %85 = add i32 %81, %38
  %86 = load i64, ptr %35, align 8, !tbaa !57
  %87 = add nsw i64 %86, %83
  store i64 %87, ptr %35, align 8, !tbaa !57
  br label %88

88:                                               ; preds = %65, %80
  %89 = phi i32 [ %82, %80 ], [ %37, %65 ]
  %90 = phi i32 [ %85, %80 ], [ %38, %65 ]
  %91 = phi ptr [ %84, %80 ], [ %39, %65 ]
  %92 = icmp eq i32 %89, 0
  br i1 %92, label %93, label %36, !llvm.loop !58

93:                                               ; preds = %88, %75, %70, %65, %56, %22, %16, %6, %10, %3, %15
  %94 = phi i32 [ -1, %15 ], [ -1, %3 ], [ -1, %10 ], [ -1, %6 ], [ 0, %16 ], [ -1, %22 ], [ %38, %56 ], [ %90, %88 ], [ -1, %75 ], [ -1, %70 ], [ -1, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %94
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare hidden void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gz_skip(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !PGOFuncName !60 {
  %3 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  br label %9

9:                                                ; preds = %5, %34
  %10 = phi i64 [ %1, %5 ], [ %35, %34 ]
  %11 = load i32, ptr %0, align 8, !tbaa !47
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = zext i32 %11 to i64
  %15 = icmp slt i64 %10, %14
  %16 = trunc i64 %10 to i32
  %17 = select i1 %15, i32 %16, i32 %11
  %18 = sub i32 %11, %17
  store i32 %18, ptr %0, align 8, !tbaa !47
  %19 = load ptr, ptr %6, align 8, !tbaa !49
  %20 = zext i32 %17 to i64
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  store ptr %21, ptr %6, align 8, !tbaa !49
  %22 = load i64, ptr %7, align 8, !tbaa !57
  %23 = add nsw i64 %22, %20
  store i64 %23, ptr %7, align 8, !tbaa !57
  %24 = sub nsw i64 %10, %20
  br label %34

25:                                               ; preds = %9
  %26 = load i32, ptr %8, align 8, !tbaa !50
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %3, align 8, !tbaa !61
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28, %25
  %32 = tail call fastcc i32 @gz_fetch(ptr noundef nonnull %0) #14, !range !46
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %37, label %34

34:                                               ; preds = %31, %13
  %35 = phi i64 [ %24, %13 ], [ %10, %31 ]
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %9, !llvm.loop !62

37:                                               ; preds = %31, %28, %34, %2
  %38 = phi i32 [ 0, %2 ], [ 0, %34 ], [ 0, %28 ], [ -1, %31 ]
  ret i32 %38
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gz_fetch(ptr noundef %0) unnamed_addr #0 !PGOFuncName !63 {
  %2 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %3 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 4
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 3
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  br label %9

9:                                                ; preds = %41, %1
  %10 = load i32, ptr %2, align 4, !tbaa !53
  switch i32 %10, label %32 [
    i32 0, label %11
    i32 1, label %17
    i32 2, label %26
  ]

11:                                               ; preds = %9
  %12 = tail call fastcc i32 @gz_look(ptr noundef nonnull %0) #14, !range !46
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %42, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %2, align 4, !tbaa !53
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %42, label %32

17:                                               ; preds = %9
  %18 = load ptr, ptr %5, align 8, !tbaa !64
  %19 = load i32, ptr %3, align 8, !tbaa !54
  %20 = shl i32 %19, 1
  %21 = tail call fastcc i32 @gz_load(ptr noundef nonnull %0, ptr noundef %18, i32 noundef %20, ptr noundef nonnull %0) #14, !range !46
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %42, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %5, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !49
  br label %42

26:                                               ; preds = %9
  %27 = load i32, ptr %3, align 8, !tbaa !54
  %28 = shl i32 %27, 1
  store i32 %28, ptr %4, align 8, !tbaa !55
  %29 = load ptr, ptr %5, align 8, !tbaa !64
  store ptr %29, ptr %6, align 8, !tbaa !56
  %30 = tail call fastcc i32 @gz_decomp(ptr noundef nonnull %0) #14, !range !46
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %42, label %32

32:                                               ; preds = %9, %14, %26
  %33 = load i32, ptr %0, align 8, !tbaa !47
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, ptr %7, align 8, !tbaa !50
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %8, align 8, !tbaa !51
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %35
  br label %9, !llvm.loop !65

42:                                               ; preds = %38, %32, %26, %14, %11, %17, %23
  %43 = phi i32 [ 0, %23 ], [ -1, %17 ], [ 0, %38 ], [ 0, %32 ], [ -1, %26 ], [ 0, %14 ], [ -1, %11 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gz_load(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !66 {
  store i32 0, ptr %3, align 4, !tbaa !48
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  br label %6

6:                                                ; preds = %16, %4
  %7 = phi i32 [ %18, %16 ], [ 0, %4 ]
  %8 = load i32, ptr %5, align 4, !tbaa !67
  %9 = zext i32 %7 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = sub i32 %2, %7
  %12 = zext i32 %11 to i64
  %13 = tail call i64 @read(i32 noundef %8, ptr noundef %10, i64 noundef %12) #13
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %6
  %17 = load i32, ptr %3, align 4, !tbaa !48
  %18 = add i32 %17, %14
  store i32 %18, ptr %3, align 4, !tbaa !48
  %19 = icmp ult i32 %18, %2
  br i1 %19, label %6, label %28, !llvm.loop !68

20:                                               ; preds = %6
  %21 = icmp slt i32 %14, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = tail call ptr @__errno_location() #15
  %24 = load i32, ptr %23, align 4, !tbaa !48
  %25 = tail call ptr @strerror(i32 noundef %24) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %25) #13
  br label %28

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  store i32 1, ptr %27, align 8, !tbaa !50
  br label %28

28:                                               ; preds = %16, %26, %22
  %29 = phi i32 [ -1, %22 ], [ 0, %26 ], [ 0, %16 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gz_decomp(ptr noundef %0) unnamed_addr #0 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %3 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  br label %6

6:                                                ; preds = %27, %1
  %7 = phi i32 [ 0, %1 ], [ %19, %27 ]
  %8 = load i32, ptr %5, align 8, !tbaa !51
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @gz_avail(ptr noundef nonnull %0) #14, !range !46
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %45, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %5, align 8, !tbaa !51
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.2) #13
  %17 = load i32, ptr %3, align 8, !tbaa !55
  br label %32

18:                                               ; preds = %6, %13
  %19 = tail call i32 @inflate(ptr noundef nonnull %2, i32 noundef 0) #13
  switch i32 %19, label %27 [
    i32 -2, label %20
    i32 2, label %20
    i32 -4, label %21
    i32 -3, label %22
  ]

20:                                               ; preds = %18, %18
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.3) #13
  br label %45

21:                                               ; preds = %18
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #13
  br label %45

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr @.str.5, ptr %24
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %26) #13
  br label %45

27:                                               ; preds = %18
  %28 = load i32, ptr %3, align 8, !tbaa !55
  %29 = icmp ne i32 %28, 0
  %30 = icmp ne i32 %19, 1
  %31 = and i1 %30, %29
  br i1 %31, label %6, label %32, !llvm.loop !71

32:                                               ; preds = %27, %16
  %33 = phi i32 [ %17, %16 ], [ %28, %27 ]
  %34 = phi i32 [ %7, %16 ], [ %19, %27 ]
  %35 = sub i32 %4, %33
  store i32 %35, ptr %0, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  %38 = zext i32 %35 to i64
  %39 = sub nsw i64 0, %38
  %40 = getelementptr inbounds i8, ptr %37, i64 %39
  %41 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %40, ptr %41, align 8, !tbaa !49
  %42 = icmp eq i32 %34, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  store i32 0, ptr %44, align 4, !tbaa !53
  br label %45

45:                                               ; preds = %10, %32, %43, %22, %21, %20
  %46 = phi i32 [ -1, %20 ], [ -1, %21 ], [ -1, %22 ], [ 0, %43 ], [ 0, %32 ], [ -1, %10 ]
  ret i32 %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @gzgetc_(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !43
  switch i32 %10, label %30 [
    i32 0, label %11
    i32 -5, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = load i32, ptr %0, align 8, !tbaa !47
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  %15 = add i32 %12, -1
  store i32 %15, ptr %0, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !57
  %18 = add nsw i64 %17, 1
  store i64 %18, ptr %16, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %21, ptr %19, align 8, !tbaa !49
  %22 = load i8, ptr %20, align 1, !tbaa !72
  %23 = zext i8 %22 to i32
  br label %30

24:                                               ; preds = %11
  %25 = call i32 @gzread(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #14
  %26 = icmp slt i32 %25, 1
  %27 = load i8, ptr %2, align 1
  %28 = zext i8 %27 to i32
  %29 = select i1 %26, i32 -1, i32 %28
  br label %30

30:                                               ; preds = %4, %8, %1, %24, %14
  %31 = phi i32 [ %23, %14 ], [ %29, %24 ], [ -1, %1 ], [ -1, %8 ], [ -1, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @gzgetc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @gzgetc_(ptr noundef %0) #14, !range !73
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %79, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %79

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !43
  switch i32 %10, label %79 [
    i32 0, label %11
    i32 -5, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  store i32 0, ptr %12, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 15
  %17 = load i64, ptr %16, align 8, !tbaa !45
  %18 = tail call fastcc i32 @gz_skip(ptr noundef nonnull %1, i64 noundef %17) #14, !range !46
  %19 = icmp eq i32 %18, -1
  %20 = icmp slt i32 %0, 0
  %21 = or i1 %20, %19
  br i1 %21, label %79, label %24

22:                                               ; preds = %11
  %23 = icmp slt i32 %0, 0
  br i1 %23, label %79, label %24

24:                                               ; preds = %15, %22
  %25 = load i32, ptr %1, align 8, !tbaa !47
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  store i32 1, ptr %1, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !64
  %30 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !54
  %32 = shl i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %29, i64 %33
  %35 = getelementptr inbounds i8, ptr %34, i64 -1
  %36 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !49
  %37 = trunc i32 %0 to i8
  store i8 %37, ptr %35, align 1, !tbaa !72
  %38 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !57
  %40 = add nsw i64 %39, -1
  store i64 %40, ptr %38, align 8, !tbaa !57
  %41 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 12
  store i32 0, ptr %41, align 4, !tbaa !52
  br label %79

42:                                               ; preds = %24
  %43 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !54
  %45 = shl i32 %44, 1
  %46 = icmp eq i32 %25, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.1) #13
  br label %79

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  %51 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = zext i32 %45 to i64
  %56 = getelementptr inbounds i8, ptr %50, i64 %55
  %57 = zext i32 %25 to i64
  %58 = getelementptr inbounds i8, ptr %50, i64 %57
  br label %59

59:                                               ; preds = %54, %59
  %60 = phi ptr [ %64, %59 ], [ %56, %54 ]
  %61 = phi ptr [ %62, %59 ], [ %58, %54 ]
  %62 = getelementptr inbounds i8, ptr %61, i64 -1
  %63 = load i8, ptr %62, align 1, !tbaa !72
  %64 = getelementptr inbounds i8, ptr %60, i64 -1
  store i8 %63, ptr %64, align 1, !tbaa !72
  %65 = load ptr, ptr %51, align 8, !tbaa !64
  %66 = icmp ugt ptr %62, %65
  br i1 %66, label %59, label %67, !llvm.loop !74

67:                                               ; preds = %59
  %68 = load i32, ptr %1, align 8, !tbaa !47
  br label %69

69:                                               ; preds = %67, %48
  %70 = phi ptr [ %64, %67 ], [ %50, %48 ]
  %71 = phi i32 [ %68, %67 ], [ %25, %48 ]
  %72 = add i32 %71, 1
  store i32 %72, ptr %1, align 8, !tbaa !47
  %73 = getelementptr inbounds i8, ptr %70, i64 -1
  store ptr %73, ptr %49, align 8, !tbaa !49
  %74 = trunc i32 %0 to i8
  store i8 %74, ptr %73, align 1, !tbaa !72
  %75 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 2
  %76 = load i64, ptr %75, align 8, !tbaa !57
  %77 = add nsw i64 %76, -1
  store i64 %77, ptr %75, align 8, !tbaa !57
  %78 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 12
  store i32 0, ptr %78, align 4, !tbaa !52
  br label %79

79:                                               ; preds = %22, %15, %4, %8, %2, %69, %47, %27
  %80 = phi i32 [ %0, %27 ], [ -1, %47 ], [ %0, %69 ], [ -1, %2 ], [ -1, %8 ], [ -1, %4 ], [ -1, %15 ], [ -1, %22 ]
  ret i32 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gzgets(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp slt i32 %2, 1
  %8 = or i1 %6, %7
  br i1 %8, label %77, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %77

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %15 = load i32, ptr %14, align 4, !tbaa !43
  switch i32 %15, label %77 [
    i32 0, label %16
    i32 -5, label %16
  ]

16:                                               ; preds = %13, %13
  %17 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %18 = load i32, ptr %17, align 8, !tbaa !44
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  store i32 0, ptr %17, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %22 = load i64, ptr %21, align 8, !tbaa !45
  %23 = tail call fastcc i32 @gz_skip(ptr noundef nonnull %0, i64 noundef %22) #14, !range !46
  %24 = icmp eq i32 %23, -1
  %25 = add nsw i32 %2, -1
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %77, label %31

28:                                               ; preds = %16
  %29 = add nsw i32 %2, -1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %77, label %31

31:                                               ; preds = %28, %20
  %32 = phi i32 [ %25, %20 ], [ %29, %28 ]
  %33 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %34 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %0, align 8, !tbaa !47
  br label %36

36:                                               ; preds = %31, %49
  %37 = phi i32 [ %64, %49 ], [ %35, %31 ]
  %38 = phi i32 [ %69, %49 ], [ %32, %31 ]
  %39 = phi ptr [ %70, %49 ], [ %1, %31 ]
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = tail call fastcc i32 @gz_fetch(ptr noundef nonnull %0) #14, !range !46
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %77, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %0, align 8, !tbaa !47
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 12
  store i32 1, ptr %48, align 4, !tbaa !52
  br label %73

49:                                               ; preds = %36, %44
  %50 = phi i32 [ %45, %44 ], [ %37, %36 ]
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 %38)
  %52 = load ptr, ptr %33, align 8, !tbaa !49
  %53 = zext i32 %51 to i64
  %54 = tail call ptr @memchr(ptr noundef %52, i32 noundef 10, i64 noundef %53) #16
  %55 = icmp eq ptr %54, null
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %52 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = add i32 %59, 1
  %61 = select i1 %55, i32 %51, i32 %60
  %62 = zext i32 %61 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 1 %52, i64 %62, i1 false)
  %63 = load i32, ptr %0, align 8, !tbaa !47
  %64 = sub i32 %63, %61
  store i32 %64, ptr %0, align 8, !tbaa !47
  %65 = load ptr, ptr %33, align 8, !tbaa !49
  %66 = getelementptr inbounds i8, ptr %65, i64 %62
  store ptr %66, ptr %33, align 8, !tbaa !49
  %67 = load i64, ptr %34, align 8, !tbaa !57
  %68 = add nsw i64 %67, %62
  store i64 %68, ptr %34, align 8, !tbaa !57
  %69 = sub i32 %38, %61
  %70 = getelementptr inbounds i8, ptr %39, i64 %62
  %71 = icmp ne i32 %69, 0
  %72 = and i1 %55, %71
  br i1 %72, label %36, label %73, !llvm.loop !75

73:                                               ; preds = %49, %47
  %74 = phi ptr [ %39, %47 ], [ %70, %49 ]
  %75 = icmp eq ptr %74, %1
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store i8 0, ptr %74, align 1, !tbaa !72
  br label %77

77:                                               ; preds = %41, %28, %73, %20, %9, %13, %3, %76
  %78 = phi ptr [ %1, %76 ], [ null, %3 ], [ null, %13 ], [ null, %9 ], [ null, %20 ], [ null, %73 ], [ null, %28 ], [ null, %41 ]
  ret ptr %78
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @gzdirect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !53
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8, !tbaa !47
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @gz_look(ptr noundef nonnull %0) #14, !range !46
  br label %16

16:                                               ; preds = %14, %11, %7, %3
  %17 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !76
  br label %19

19:                                               ; preds = %1, %16
  %20 = phi i32 [ %18, %16 ], [ 0, %1 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gz_look(ptr noundef %0) unnamed_addr #0 !PGOFuncName !77 {
  %2 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %3 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !78
  %9 = zext i32 %8 to i64
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #17
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %10, ptr %11, align 8, !tbaa !79
  %12 = shl i32 %8, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #17
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %14, ptr %15, align 8, !tbaa !64
  %16 = icmp eq ptr %10, null
  %17 = icmp eq ptr %14, null
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  br i1 %17, label %21, label %20

20:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %14) #13
  br label %21

21:                                               ; preds = %20, %19
  br i1 %16, label %23, label %22

22:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %10) #13
  br label %23

23:                                               ; preds = %22, %21
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #13
  br label %69

24:                                               ; preds = %6
  store i32 %8, ptr %3, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 8
  %26 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  store i32 0, ptr %26, align 8, !tbaa !61
  store ptr null, ptr %2, align 8, !tbaa !80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %27 = tail call i32 @inflateInit2_(ptr noundef nonnull %2, i32 noundef 31, ptr noundef nonnull @.str.6, i32 noundef 112) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %15, align 8, !tbaa !64
  tail call void @free(ptr noundef %30) #13
  %31 = load ptr, ptr %11, align 8, !tbaa !79
  tail call void @free(ptr noundef %31) #13
  store i32 0, ptr %3, align 8, !tbaa !54
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #13
  br label %69

32:                                               ; preds = %24, %1
  %33 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = tail call fastcc i32 @gz_avail(ptr noundef nonnull %0) #14, !range !46
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %69, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %33, align 8, !tbaa !51
  switch i32 %40, label %41 [
    i32 0, label %69
    i32 1, label %54
  ]

41:                                               ; preds = %39, %32
  %42 = phi i32 [ %34, %32 ], [ %40, %39 ]
  %43 = load ptr, ptr %2, align 8, !tbaa !81
  %44 = load i8, ptr %43, align 1, !tbaa !72
  %45 = icmp eq i8 %44, 31
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = getelementptr inbounds i8, ptr %43, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !72
  %49 = icmp eq i8 %48, -117
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = tail call i32 @inflateReset(ptr noundef nonnull %2) #13
  %52 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  store i32 2, ptr %52, align 4, !tbaa !53
  %53 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  store i32 0, ptr %53, align 8, !tbaa !76
  br label %69

54:                                               ; preds = %39, %46, %41
  %55 = phi i32 [ %42, %46 ], [ %42, %41 ], [ %40, %39 ]
  %56 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %57 = load i32, ptr %56, align 8, !tbaa !76
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  store i32 0, ptr %33, align 8, !tbaa !51
  %60 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  store i32 1, ptr %60, align 8, !tbaa !50
  store i32 0, ptr %0, align 8, !tbaa !47
  br label %69

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !64
  %64 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !49
  %65 = load ptr, ptr %2, align 8, !tbaa !81
  %66 = zext i32 %55 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %65, i64 %66, i1 false)
  %67 = load i32, ptr %33, align 8, !tbaa !51
  store i32 %67, ptr %0, align 8, !tbaa !47
  store i32 0, ptr %33, align 8, !tbaa !51
  %68 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  store i32 1, ptr %68, align 4, !tbaa !53
  store i32 1, ptr %56, align 8, !tbaa !76
  br label %69

69:                                               ; preds = %39, %36, %61, %59, %50, %29, %23
  %70 = phi i32 [ -1, %23 ], [ -1, %29 ], [ 0, %50 ], [ 0, %59 ], [ 0, %61 ], [ -1, %36 ], [ %40, %39 ]
  ret i32 %70
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @gzclose_r(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !54
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %13 = tail call i32 @inflateEnd(ptr noundef nonnull %12) #13
  %14 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  tail call void @free(ptr noundef %15) #13
  %16 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  tail call void @free(ptr noundef %17) #13
  br label %18

18:                                               ; preds = %11, %7
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = icmp eq i32 %20, -5
  %22 = select i1 %21, i32 -5, i32 0
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !82
  tail call void @free(ptr noundef %24) #13
  %25 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !67
  %27 = tail call i32 @close(i32 noundef %26) #13
  tail call void @free(ptr noundef nonnull %0) #13
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %22, i32 -1
  br label %30

30:                                               ; preds = %3, %1, %18
  %31 = phi i32 [ %29, %18 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %31
}

; Function Attrs: optsize
declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gz_avail(ptr noundef %0) unnamed_addr #0 !PGOFuncName !83 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %5 = load i32, ptr %4, align 4, !tbaa !43
  switch i32 %5, label %36 [
    i32 0, label %6
    i32 -5, label %6
  ]

6:                                                ; preds = %1, %1
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !50
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = load ptr, ptr %3, align 8, !tbaa !81
  %18 = zext i32 %12 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %16, ptr align 1 %17, i64 %18, i1 false)
  %19 = load i32, ptr %11, align 8, !tbaa !51
  br label %20

20:                                               ; preds = %14, %10
  %21 = phi i32 [ %19, %14 ], [ 0, %10 ]
  %22 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = zext i32 %21 to i64
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  %26 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !54
  %28 = sub i32 %27, %21
  %29 = call fastcc i32 @gz_load(ptr noundef nonnull %0, ptr noundef %25, i32 noundef %28, ptr noundef nonnull %2) #14, !range !46
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %36, label %31

31:                                               ; preds = %20
  %32 = load i32, ptr %2, align 4, !tbaa !48
  %33 = load i32, ptr %11, align 8, !tbaa !51
  %34 = add i32 %33, %32
  store i32 %34, ptr %11, align 8, !tbaa !51
  %35 = load ptr, ptr %22, align 8, !tbaa !79
  store ptr %35, ptr %3, align 8, !tbaa !81
  br label %36

36:                                               ; preds = %6, %31, %20, %1
  %37 = phi i32 [ -1, %1 ], [ -1, %20 ], [ 0, %31 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %37
}

; Function Attrs: optsize
declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @inflateReset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize willreturn memory(none) }
attributes #16 = { nounwind optsize willreturn memory(read) }
attributes #17 = { nounwind optsize allocsize(0) }

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
!44 = !{!35, !37, i64 104}
!45 = !{!35, !41, i64 96}
!46 = !{i32 -1, i32 1}
!47 = !{!35, !37, i64 0}
!48 = !{!37, !37, i64 0}
!49 = !{!35, !40, i64 8}
!50 = !{!35, !37, i64 80}
!51 = !{!42, !37, i64 8}
!52 = !{!35, !37, i64 84}
!53 = !{!35, !37, i64 68}
!54 = !{!35, !37, i64 40}
!55 = !{!42, !37, i64 32}
!56 = !{!42, !40, i64 24}
!57 = !{!35, !41, i64 16}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"gzread.c:gz_skip"}
!61 = !{!35, !37, i64 128}
!62 = distinct !{!62, !59}
!63 = !{!"gzread.c:gz_fetch"}
!64 = !{!35, !40, i64 56}
!65 = distinct !{!65, !59}
!66 = !{!"gzread.c:gz_load"}
!67 = !{!35, !37, i64 28}
!68 = distinct !{!68, !59}
!69 = !{!"gzread.c:gz_decomp"}
!70 = !{!42, !40, i64 48}
!71 = distinct !{!71, !59}
!72 = !{!38, !38, i64 0}
!73 = !{i32 -1, i32 256}
!74 = distinct !{!74, !59}
!75 = distinct !{!75, !59}
!76 = !{!35, !37, i64 64}
!77 = !{!"gzread.c:gz_look"}
!78 = !{!35, !37, i64 44}
!79 = !{!35, !40, i64 48}
!80 = !{!35, !40, i64 120}
!81 = !{!42, !40, i64 0}
!82 = !{!35, !40, i64 32}
!83 = !{!"gzread.c:gz_avail"}
