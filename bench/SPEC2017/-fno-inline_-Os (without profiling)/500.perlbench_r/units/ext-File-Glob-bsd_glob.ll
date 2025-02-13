; ModuleID = 'ext/File-Glob/bsd_glob.c'
source_filename = "ext/File-Glob/bsd_glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.glob_t = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @bsd_glob(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #18
  store i32 0, ptr %3, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.glob_t, ptr %3, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.glob_t, ptr %3, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !12
  %8 = and i32 %1, -257
  %9 = getelementptr inbounds %struct.glob_t, ptr %3, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !13
  %10 = getelementptr inbounds %struct.glob_t, ptr %3, i64 0, i32 5
  store ptr %2, ptr %10, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.glob_t, ptr %3, i64 0, i32 1
  store i32 0, ptr %11, align 4, !tbaa !15
  %12 = and i32 %1, 1024
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %4, %30
  %15 = phi ptr [ %34, %30 ], [ %5, %4 ]
  %16 = phi i64 [ %33, %30 ], [ 0, %4 ]
  %17 = phi ptr [ %32, %30 ], [ %0, %4 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = load i8, ptr %17, align 1, !tbaa !16
  switch i8 %19, label %28 [
    i8 0, label %48
    i8 92, label %20
  ]

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %17, i64 2
  %22 = load i8, ptr %18, align 1, !tbaa !16
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, ptr %18, ptr %21
  %25 = select i1 %23, i8 92, i8 %22
  %26 = zext i8 %25 to i16
  %27 = or disjoint i16 %26, 16384
  br label %30

28:                                               ; preds = %14
  %29 = zext i8 %19 to i16
  br label %30

30:                                               ; preds = %28, %20
  %31 = phi i16 [ %27, %20 ], [ %29, %28 ]
  %32 = phi ptr [ %24, %20 ], [ %18, %28 ]
  %33 = add nuw nsw i64 %16, 2
  store i16 %31, ptr %15, align 2, !tbaa !17
  %34 = getelementptr inbounds i8, ptr %5, i64 %33
  %35 = icmp ult i64 %16, 8188
  br i1 %35, label %14, label %48, !llvm.loop !19

36:                                               ; preds = %4, %42
  %37 = phi ptr [ %46, %42 ], [ %5, %4 ]
  %38 = phi i64 [ %45, %42 ], [ 0, %4 ]
  %39 = phi ptr [ %43, %42 ], [ %0, %4 ]
  %40 = load i8, ptr %39, align 1, !tbaa !16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds i8, ptr %39, i64 1
  %44 = zext i8 %40 to i16
  %45 = add nuw nsw i64 %38, 2
  store i16 %44, ptr %37, align 2, !tbaa !17
  %46 = getelementptr inbounds i8, ptr %5, i64 %45
  %47 = icmp ult i64 %38, 8188
  br i1 %47, label %36, label %48, !llvm.loop !21

48:                                               ; preds = %14, %30, %36, %42
  %49 = phi ptr [ %46, %42 ], [ %37, %36 ], [ %34, %30 ], [ %15, %14 ]
  store i16 0, ptr %49, align 2, !tbaa !17
  %50 = and i32 %1, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = call fastcc i32 @globexp1(ptr noundef nonnull %5, ptr noundef nonnull %3) #19
  br label %56

54:                                               ; preds = %48
  %55 = call fastcc i32 @glob0(ptr noundef nonnull %5, ptr noundef nonnull %3) #19
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #18
  ret i32 %57
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @globexp1(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %4 = load i16, ptr %0, align 2, !tbaa !17
  %5 = icmp eq i16 %4, 123
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds i16, ptr %0, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !17
  %9 = icmp eq i16 %8, 125
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds i16, ptr %0, i64 2
  %12 = load i16, ptr %11, align 2, !tbaa !17
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @glob0(ptr noundef nonnull %0, ptr noundef %1) #19
  br label %23

16:                                               ; preds = %2, %6, %10
  %17 = tail call fastcc ptr @g_strchr(ptr noundef nonnull %0, i32 noundef 123) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  call fastcc void @globexp2(ptr noundef nonnull %17, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #19
  %20 = load i32, ptr %3, align 4, !tbaa !22
  br label %23

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @glob0(ptr noundef nonnull %0, ptr noundef %1) #19
  br label %23

23:                                               ; preds = %21, %19, %14
  %24 = phi i32 [ %15, %14 ], [ %20, %19 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @glob0(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca [4096 x i16], align 16
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store i64 0, ptr %4, align 8, !tbaa !23
  %5 = call fastcc ptr @globtilde(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #19
  %6 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !13
  %8 = load i32, ptr %1, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %81, %2
  %10 = phi i32 [ %7, %2 ], [ %82, %81 ]
  %11 = phi ptr [ %5, %2 ], [ %83, %81 ]
  %12 = phi ptr [ %3, %2 ], [ %84, %81 ]
  br label %13

13:                                               ; preds = %32, %9
  %14 = phi ptr [ %11, %9 ], [ %33, %32 ]
  %15 = phi ptr [ %12, %9 ], [ %34, %32 ]
  %16 = getelementptr inbounds i16, ptr %14, i64 1
  %17 = load i16, ptr %14, align 2, !tbaa !17
  switch i16 %17, label %85 [
    i16 0, label %87
    i16 91, label %18
    i16 63, label %69
    i16 42, label %72
  ]

18:                                               ; preds = %13
  %19 = load i16, ptr %16, align 2, !tbaa !17
  %20 = icmp eq i16 %19, 33
  %21 = getelementptr inbounds i16, ptr %14, i64 2
  %22 = select i1 %20, ptr %21, ptr %16
  %23 = load i16, ptr %22, align 2, !tbaa !17
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds i16, ptr %22, i64 1
  %27 = call fastcc ptr @g_strchr(ptr noundef nonnull %26, i32 noundef 93) #19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %25, %18
  store i16 91, ptr %15, align 2, !tbaa !17
  %30 = sext i1 %20 to i64
  %31 = getelementptr inbounds i16, ptr %22, i64 %30
  br label %32

32:                                               ; preds = %29, %85
  %33 = phi ptr [ %16, %85 ], [ %31, %29 ]
  %34 = getelementptr inbounds i16, ptr %15, i64 1
  br label %13, !llvm.loop !25

35:                                               ; preds = %25
  %36 = getelementptr inbounds i16, ptr %15, i64 1
  store i16 -32677, ptr %15, align 2, !tbaa !17
  br i1 %20, label %37, label %39

37:                                               ; preds = %35
  %38 = getelementptr inbounds i16, ptr %15, i64 2
  store i16 -32735, ptr %36, align 2, !tbaa !17
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi ptr [ %38, %37 ], [ %36, %35 ]
  %41 = load i16, ptr %22, align 2, !tbaa !17
  br label %42

42:                                               ; preds = %60, %39
  %43 = phi i16 [ %41, %39 ], [ %61, %60 ]
  %44 = phi ptr [ %26, %39 ], [ %64, %60 ]
  %45 = phi ptr [ %40, %39 ], [ %63, %60 ]
  %46 = and i16 %43, 255
  %47 = getelementptr inbounds i16, ptr %45, i64 1
  store i16 %46, ptr %45, align 2, !tbaa !17
  %48 = load i16, ptr %44, align 2, !tbaa !17
  %49 = icmp eq i16 %48, 45
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = getelementptr inbounds i16, ptr %44, i64 1
  %52 = load i16, ptr %51, align 2, !tbaa !17
  %53 = icmp eq i16 %52, 93
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds i16, ptr %45, i64 2
  store i16 -32723, ptr %47, align 2, !tbaa !17
  %56 = and i16 %52, 255
  %57 = getelementptr inbounds i16, ptr %45, i64 3
  store i16 %56, ptr %55, align 2, !tbaa !17
  %58 = getelementptr inbounds i16, ptr %44, i64 2
  %59 = load i16, ptr %58, align 2, !tbaa !17
  br label %60

60:                                               ; preds = %50, %54, %42
  %61 = phi i16 [ %48, %42 ], [ 45, %50 ], [ %59, %54 ]
  %62 = phi ptr [ %44, %42 ], [ %44, %50 ], [ %58, %54 ]
  %63 = phi ptr [ %47, %42 ], [ %47, %50 ], [ %57, %54 ]
  %64 = getelementptr inbounds i16, ptr %62, i64 1
  %65 = icmp eq i16 %61, 93
  br i1 %65, label %66, label %42, !llvm.loop !26

66:                                               ; preds = %60
  %67 = or i32 %10, 256
  store i32 %67, ptr %6, align 4, !tbaa !13
  %68 = getelementptr inbounds i16, ptr %63, i64 1
  store i16 -32675, ptr %63, align 2, !tbaa !17
  br label %81

69:                                               ; preds = %13
  %70 = or i32 %10, 256
  store i32 %70, ptr %6, align 4, !tbaa !13
  %71 = getelementptr inbounds i16, ptr %15, i64 1
  store i16 -32705, ptr %15, align 2, !tbaa !17
  br label %81

72:                                               ; preds = %13
  %73 = or i32 %10, 256
  store i32 %73, ptr %6, align 4, !tbaa !13
  %74 = icmp eq ptr %15, %3
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds i16, ptr %15, i64 -1
  %77 = load i16, ptr %76, align 2, !tbaa !17
  %78 = icmp eq i16 %77, -32726
  br i1 %78, label %81, label %79

79:                                               ; preds = %75, %72
  %80 = getelementptr inbounds i16, ptr %15, i64 1
  store i16 -32726, ptr %15, align 2, !tbaa !17
  br label %81

81:                                               ; preds = %79, %75, %69, %66
  %82 = phi i32 [ %67, %66 ], [ %70, %69 ], [ %73, %75 ], [ %73, %79 ]
  %83 = phi ptr [ %64, %66 ], [ %16, %69 ], [ %16, %75 ], [ %16, %79 ]
  %84 = phi ptr [ %68, %66 ], [ %71, %69 ], [ %15, %75 ], [ %80, %79 ]
  br label %9, !llvm.loop !25

85:                                               ; preds = %13
  %86 = and i16 %17, 255
  store i16 %86, ptr %15, align 2, !tbaa !17
  br label %32

87:                                               ; preds = %13
  store i16 0, ptr %15, align 2, !tbaa !17
  %88 = call fastcc i32 @glob1(ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %4) #19
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  store i32 %7, ptr %6, align 4, !tbaa !13
  br label %123

91:                                               ; preds = %87
  %92 = load i32, ptr %1, align 8, !tbaa !5
  %93 = icmp eq i32 %92, %8
  %94 = load i32, ptr %6, align 4, !tbaa !13
  br i1 %93, label %95, label %103

95:                                               ; preds = %91
  %96 = and i32 %94, 16
  %97 = icmp ne i32 %96, 0
  %98 = and i32 %94, 768
  %99 = icmp eq i32 %98, 512
  %100 = or i1 %97, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  store i32 %7, ptr %6, align 4, !tbaa !13
  %102 = call fastcc i32 @globextend(ptr noundef %5, ptr noundef nonnull %1, ptr noundef nonnull %4) #19, !range !27
  br label %123

103:                                              ; preds = %95, %91
  %104 = and i32 %94, 32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !11
  %109 = icmp eq ptr %108, null
  br i1 %109, label %122, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 2
  %112 = load i32, ptr %111, align 8, !tbaa !12
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %108, i64 %113
  %115 = sext i32 %8 to i64
  %116 = getelementptr inbounds ptr, ptr %114, i64 %115
  %117 = sub nsw i32 %92, %8
  %118 = sext i32 %117 to i64
  %119 = and i32 %94, 12288
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, ptr @compare, ptr @ci_compare
  call void @qsort(ptr noundef nonnull %116, i64 noundef %118, i64 noundef 8, ptr noundef nonnull %121) #20
  br label %122

122:                                              ; preds = %103, %110, %106
  store i32 %7, ptr %6, align 4, !tbaa !13
  br label %123

123:                                              ; preds = %122, %101, %90
  %124 = phi i32 [ %88, %90 ], [ %102, %101 ], [ 0, %122 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #18
  ret i32 %124
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bsd_globfree(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.glob_t, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.glob_t, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !12
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %3, i64 %11
  br label %13

13:                                               ; preds = %8, %20
  %14 = phi i32 [ %16, %20 ], [ %6, %8 ]
  %15 = phi ptr [ %21, %20 ], [ %12, %8 ]
  %16 = add nsw i32 %14, -1
  %17 = load ptr, ptr %15, align 8, !tbaa !28
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void @Perl_safesysfree(ptr noundef nonnull %17) #20
  br label %20

20:                                               ; preds = %13, %19
  %21 = getelementptr inbounds ptr, ptr %15, i64 1
  %22 = icmp eq i32 %16, 0
  br i1 %22, label %23, label %13, !llvm.loop !29

23:                                               ; preds = %20
  %24 = load ptr, ptr %2, align 8, !tbaa !11
  br label %25

25:                                               ; preds = %23, %5
  %26 = phi ptr [ %24, %23 ], [ %3, %5 ]
  tail call void @Perl_safesysfree(ptr noundef %26) #20
  store ptr null, ptr %2, align 8, !tbaa !11
  br label %27

27:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @g_strchr(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %0, %2 ], [ %9, %8 ]
  %5 = load i16, ptr %4, align 2, !tbaa !17
  %6 = zext i16 %5 to i32
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds i16, ptr %4, i64 1
  %10 = icmp eq i16 %5, 0
  br i1 %10, label %11, label %3, !llvm.loop !30

11:                                               ; preds = %8, %3
  %12 = phi ptr [ %4, %3 ], [ null, %8 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @globexp2(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca [4096 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #18
  %6 = icmp eq ptr %1, %0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = ptrtoint ptr %0 to i64
  %9 = ptrtoint ptr %1 to i64
  %10 = add i64 %8, -2
  %11 = sub i64 %10, %9
  %12 = and i64 %11, -2
  %13 = add i64 %12, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr align 2 %1, i64 %13, i1 false), !tbaa !17
  %14 = getelementptr i8, ptr %5, i64 %13
  br label %15

15:                                               ; preds = %7, %4
  %16 = phi ptr [ %5, %4 ], [ %14, %7 ]
  store i16 0, ptr %16, align 2, !tbaa !17
  %17 = getelementptr inbounds i16, ptr %0, i64 1
  br label %18

18:                                               ; preds = %37, %15
  %19 = phi i32 [ 0, %15 ], [ %38, %37 ]
  %20 = phi ptr [ %17, %15 ], [ %40, %37 ]
  %21 = load i16, ptr %20, align 2, !tbaa !17
  switch i16 %21, label %37 [
    i16 0, label %41
    i16 91, label %22
    i16 123, label %29
    i16 125, label %31
  ]

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %24, %22 ], [ %20, %18 ]
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !17
  switch i16 %25, label %22 [
    i16 93, label %26
    i16 0, label %26
  ], !llvm.loop !31

26:                                               ; preds = %22, %22
  %27 = icmp eq i16 %25, 0
  %28 = select i1 %27, ptr %20, ptr %24
  br label %37

29:                                               ; preds = %18
  %30 = add nsw i32 %19, 1
  br label %37

31:                                               ; preds = %18
  %32 = icmp eq i32 %19, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = icmp ugt ptr %17, %20
  br i1 %34, label %90, label %43

35:                                               ; preds = %31
  %36 = add nsw i32 %19, -1
  br label %37

37:                                               ; preds = %26, %18, %35, %29
  %38 = phi i32 [ %30, %29 ], [ %36, %35 ], [ %19, %26 ], [ %19, %18 ]
  %39 = phi ptr [ %20, %29 ], [ %20, %35 ], [ %28, %26 ], [ %20, %18 ]
  %40 = getelementptr inbounds i16, ptr %39, i64 1
  br label %18, !llvm.loop !32

41:                                               ; preds = %18
  %42 = call fastcc i32 @glob0(ptr noundef nonnull %5, ptr noundef %2) #19
  br label %90

43:                                               ; preds = %33, %84
  %44 = phi ptr [ %87, %84 ], [ %17, %33 ]
  %45 = phi ptr [ %88, %84 ], [ %17, %33 ]
  %46 = phi i32 [ %85, %84 ], [ 0, %33 ]
  %47 = load i16, ptr %45, align 2, !tbaa !17
  switch i16 %47, label %84 [
    i16 91, label %48
    i16 123, label %55
    i16 125, label %57
    i16 44, label %61
  ]

48:                                               ; preds = %43, %48
  %49 = phi ptr [ %50, %48 ], [ %45, %43 ]
  %50 = getelementptr inbounds i16, ptr %49, i64 1
  %51 = load i16, ptr %50, align 2, !tbaa !17
  switch i16 %51, label %48 [
    i16 93, label %52
    i16 0, label %52
  ], !llvm.loop !33

52:                                               ; preds = %48, %48
  %53 = icmp eq i16 %51, 0
  %54 = select i1 %53, ptr %45, ptr %50
  br label %84

55:                                               ; preds = %43
  %56 = add nsw i32 %46, 1
  br label %84

57:                                               ; preds = %43
  %58 = icmp eq i32 %46, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %57
  %60 = add nsw i32 %46, -1
  br label %84

61:                                               ; preds = %43
  %62 = icmp eq i32 %46, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %57, %61
  %64 = icmp ult ptr %44, %45
  br i1 %64, label %65, label %72

65:                                               ; preds = %63, %65
  %66 = phi ptr [ %68, %65 ], [ %44, %63 ]
  %67 = phi ptr [ %70, %65 ], [ %16, %63 ]
  %68 = getelementptr inbounds i16, ptr %66, i64 1
  %69 = load i16, ptr %66, align 2, !tbaa !17
  %70 = getelementptr inbounds i16, ptr %67, i64 1
  store i16 %69, ptr %67, align 2, !tbaa !17
  %71 = icmp ult ptr %68, %45
  br i1 %71, label %65, label %72, !llvm.loop !34

72:                                               ; preds = %65, %63
  %73 = phi ptr [ %16, %63 ], [ %70, %65 ]
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi ptr [ %79, %74 ], [ %73, %72 ]
  %76 = phi ptr [ %77, %74 ], [ %20, %72 ]
  %77 = getelementptr inbounds i16, ptr %76, i64 1
  %78 = load i16, ptr %77, align 2, !tbaa !17
  %79 = getelementptr inbounds i16, ptr %75, i64 1
  store i16 %78, ptr %75, align 2, !tbaa !17
  %80 = icmp eq i16 %78, 0
  br i1 %80, label %81, label %74, !llvm.loop !35

81:                                               ; preds = %74
  %82 = call fastcc i32 @globexp1(ptr noundef nonnull %5, ptr noundef %2) #19
  store i32 %82, ptr %3, align 4, !tbaa !22
  %83 = getelementptr inbounds i16, ptr %45, i64 1
  br label %84

84:                                               ; preds = %61, %52, %55, %59, %81, %43
  %85 = phi i32 [ %46, %43 ], [ %46, %81 ], [ %60, %59 ], [ %56, %55 ], [ %46, %52 ], [ %46, %61 ]
  %86 = phi ptr [ %45, %43 ], [ %45, %81 ], [ %45, %59 ], [ %45, %55 ], [ %54, %52 ], [ %45, %61 ]
  %87 = phi ptr [ %44, %43 ], [ %83, %81 ], [ %44, %59 ], [ %44, %55 ], [ %44, %52 ], [ %44, %61 ]
  %88 = getelementptr inbounds i16, ptr %86, i64 1
  %89 = icmp ugt ptr %88, %20
  br i1 %89, label %90, label %43, !llvm.loop !36

90:                                               ; preds = %84, %33, %41
  %91 = phi i32 [ %42, %41 ], [ 0, %33 ], [ 0, %84 ]
  store i32 %91, ptr %3, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: read) uwtable
define internal fastcc noundef ptr @globtilde(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = load i16, ptr %0, align 2, !tbaa !17
  %5 = icmp eq i16 %4, 126
  br i1 %5, label %6, label %60

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.glob_t, ptr %2, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !13
  %9 = and i32 %8, 2048
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %60, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds i16, ptr %0, i64 1
  br label %13

13:                                               ; preds = %11, %18
  %14 = phi ptr [ %1, %11 ], [ %22, %18 ]
  %15 = phi ptr [ %12, %11 ], [ %21, %18 ]
  %16 = phi i64 [ 0, %11 ], [ %20, %18 ]
  %17 = load i16, ptr %15, align 2, !tbaa !17
  switch i16 %17, label %18 [
    i16 0, label %24
    i16 47, label %24
  ]

18:                                               ; preds = %13
  %19 = trunc i16 %17 to i8
  %20 = add nuw nsw i64 %16, 1
  store i8 %19, ptr %14, align 1, !tbaa !16
  %21 = getelementptr inbounds i16, ptr %15, i64 1
  %22 = getelementptr inbounds i8, ptr %1, i64 %20
  %23 = icmp eq i64 %20, 8190
  br i1 %23, label %24, label %13, !llvm.loop !37

24:                                               ; preds = %13, %13, %18
  %25 = phi ptr [ %15, %13 ], [ %15, %13 ], [ %21, %18 ]
  %26 = phi ptr [ %14, %13 ], [ %14, %13 ], [ %22, %18 ]
  store i8 0, ptr %26, align 1, !tbaa !16
  %27 = load i8, ptr %1, align 1, !tbaa !16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %24
  %30 = tail call ptr @getenv(ptr noundef nonnull @.str) #20
  %31 = icmp eq ptr %30, null
  br i1 %31, label %60, label %32

32:                                               ; preds = %29, %38
  %33 = phi ptr [ %42, %38 ], [ %1, %29 ]
  %34 = phi i64 [ %41, %38 ], [ 0, %29 ]
  %35 = phi ptr [ %39, %38 ], [ %30, %29 ]
  %36 = load i8, ptr %35, align 1, !tbaa !16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds i8, ptr %35, i64 1
  %40 = sext i8 %36 to i16
  %41 = add nuw nsw i64 %34, 2
  store i16 %40, ptr %33, align 2, !tbaa !17
  %42 = getelementptr inbounds i8, ptr %1, i64 %41
  %43 = icmp ult i64 %34, 8188
  br i1 %43, label %32, label %44, !llvm.loop !38

44:                                               ; preds = %38, %32
  %45 = phi i64 [ %34, %32 ], [ 8190, %38 ]
  br label %46

46:                                               ; preds = %44, %51
  %47 = phi ptr [ %52, %51 ], [ %25, %44 ]
  %48 = phi i64 [ %54, %51 ], [ %45, %44 ]
  %49 = getelementptr inbounds i8, ptr %1, i64 %48
  %50 = icmp ult i64 %48, 8190
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = getelementptr inbounds i16, ptr %47, i64 1
  %53 = load i16, ptr %47, align 2, !tbaa !17
  %54 = add nuw nsw i64 %48, 2
  store i16 %53, ptr %49, align 2, !tbaa !17
  %55 = icmp eq i16 %53, 0
  br i1 %55, label %56, label %46, !llvm.loop !39

56:                                               ; preds = %51
  %57 = getelementptr inbounds i8, ptr %1, i64 %54
  br label %58

58:                                               ; preds = %46, %56
  %59 = phi ptr [ %57, %56 ], [ %49, %46 ]
  store i16 0, ptr %59, align 2, !tbaa !17
  br label %60

60:                                               ; preds = %24, %29, %3, %6, %58
  %61 = phi ptr [ %1, %58 ], [ %0, %6 ], [ %0, %3 ], [ %0, %29 ], [ %0, %24 ]
  ret ptr %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @glob1(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca [4096 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %4) #18
  %5 = load i16, ptr %0, align 2, !tbaa !17
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds i16, ptr %4, i64 4095
  %9 = call fastcc i32 @glob2(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #19
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %4) #18
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @globextend(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8, !tbaa !5
  %5 = add nsw i32 %4, 2
  %6 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !12
  %8 = add nsw i32 %5, %7
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = icmp eq ptr %12, null
  %14 = shl nsw i64 %9, 6
  br i1 %13, label %17, label %15

15:                                               ; preds = %3
  %16 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %12, i64 noundef %14) #20
  store ptr %16, ptr %11, align 8, !tbaa !11
  br label %19

17:                                               ; preds = %3
  %18 = tail call ptr @Perl_safesysmalloc(i64 noundef %14) #20
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %16, %15 ], [ %18, %17 ]
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr %11, align 8, !tbaa !11
  %23 = icmp eq ptr %22, null
  br i1 %21, label %24, label %26

24:                                               ; preds = %19
  br i1 %23, label %88, label %25

25:                                               ; preds = %24
  tail call void @Perl_safesysfree(ptr noundef nonnull %22) #20
  store ptr null, ptr %11, align 8, !tbaa !11
  br label %88

26:                                               ; preds = %19
  br i1 %23, label %27, label %39

27:                                               ; preds = %26
  %28 = load i32, ptr %6, align 8, !tbaa !12
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = zext nneg i32 %28 to i64
  %32 = shl nuw nsw i64 %31, 3
  %33 = add nsw i64 %32, -8
  %34 = add nsw i32 %28, -1
  %35 = zext nneg i32 %34 to i64
  %36 = shl nuw nsw i64 %35, 3
  %37 = sub nsw i64 %33, %36
  %38 = getelementptr i8, ptr %20, i64 %37
  tail call void @llvm.memset.p0.i64(ptr align 8 %38, i8 0, i64 %32, i1 false), !tbaa !28
  br label %39

39:                                               ; preds = %30, %27, %26
  %40 = phi ptr [ %20, %27 ], [ %20, %26 ], [ %38, %30 ]
  store ptr %40, ptr %11, align 8, !tbaa !11
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi ptr [ %0, %39 ], [ %43, %41 ]
  %43 = getelementptr inbounds i16, ptr %42, i64 1
  %44 = load i16, ptr %42, align 2, !tbaa !17
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %41, !llvm.loop !40

46:                                               ; preds = %41
  %47 = ptrtoint ptr %43 to i64
  %48 = ptrtoint ptr %0 to i64
  %49 = sub i64 %47, %48
  %50 = ashr exact i64 %49, 1
  %51 = load i64, ptr %2, align 8, !tbaa !23
  %52 = add i64 %51, %50
  store i64 %52, ptr %2, align 8, !tbaa !23
  %53 = tail call ptr @Perl_safesysmalloc(i64 noundef %50) #20
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, ptr %6, align 8, !tbaa !12
  %57 = load i32, ptr %1, align 8, !tbaa !5
  br label %69

58:                                               ; preds = %46
  %59 = tail call fastcc i32 @g_Ctoc(ptr noundef %0, ptr noundef nonnull %53, i64 noundef %50) #19, !range !41
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @Perl_safesysfree(ptr noundef nonnull %53) #20
  br label %88

62:                                               ; preds = %58
  %63 = load i32, ptr %6, align 8, !tbaa !12
  %64 = load i32, ptr %1, align 8, !tbaa !5
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %1, align 8, !tbaa !5
  %66 = add nsw i32 %64, %63
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %40, i64 %67
  store ptr %53, ptr %68, align 8, !tbaa !28
  br label %69

69:                                               ; preds = %55, %62
  %70 = phi i32 [ %57, %55 ], [ %65, %62 ]
  %71 = phi i32 [ %56, %55 ], [ %63, %62 ]
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %40, i64 %73
  store ptr null, ptr %74, align 8, !tbaa !28
  %75 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !13
  %77 = and i32 %76, 16384
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %69
  %80 = load i64, ptr %2, align 8, !tbaa !23
  %81 = add i64 %80, %10
  %82 = tail call i64 @sysconf(i32 noundef 0) #20
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = tail call ptr @__errno_location() #21
  store i32 0, ptr %85, align 4, !tbaa !22
  br label %88

86:                                               ; preds = %79, %69
  %87 = sext i1 %54 to i32
  br label %88

88:                                               ; preds = %24, %25, %86, %84, %61
  %89 = phi i32 [ -1, %61 ], [ -1, %84 ], [ %87, %86 ], [ -1, %25 ], [ -1, %24 ]
  ret i32 %89
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @ci_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !28
  %4 = load ptr, ptr %1, align 8, !tbaa !28
  %5 = load i8, ptr %3, align 1, !tbaa !16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %2, %33
  %8 = phi i8 [ %36, %33 ], [ %5, %2 ]
  %9 = phi ptr [ %35, %33 ], [ %4, %2 ]
  %10 = phi ptr [ %34, %33 ], [ %3, %2 ]
  %11 = sext i8 %8 to i32
  %12 = load i8, ptr %9, align 1, !tbaa !16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %7
  %15 = zext i8 %8 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !22
  %18 = and i32 %17, 16400
  %19 = icmp eq i32 %18, 16400
  %20 = add i8 %8, 32
  %21 = zext i8 %20 to i32
  %22 = select i1 %19, i32 %21, i32 %11
  %23 = zext i8 %12 to i64
  %24 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !22
  %26 = and i32 %25, 16400
  %27 = icmp eq i32 %26, 16400
  %28 = add i8 %12, 32
  %29 = zext i8 %28 to i32
  %30 = sext i8 %12 to i32
  %31 = select i1 %27, i32 %29, i32 %30
  %32 = icmp eq i32 %22, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %14
  %34 = getelementptr inbounds i8, ptr %10, i64 1
  %35 = getelementptr inbounds i8, ptr %9, i64 1
  %36 = load i8, ptr %34, align 1, !tbaa !16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %7, !llvm.loop !42

38:                                               ; preds = %7, %14, %33, %2
  %39 = phi ptr [ %4, %2 ], [ %35, %33 ], [ %9, %14 ], [ %9, %7 ]
  %40 = phi i8 [ 0, %2 ], [ 0, %33 ], [ %8, %14 ], [ %8, %7 ]
  %41 = phi i32 [ 0, %2 ], [ 0, %33 ], [ %11, %14 ], [ %11, %7 ]
  %42 = zext i8 %40 to i64
  %43 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !22
  %45 = and i32 %44, 16400
  %46 = icmp eq i32 %45, 16400
  %47 = add i8 %40, 32
  %48 = zext i8 %47 to i32
  %49 = select i1 %46, i32 %48, i32 %41
  %50 = load i8, ptr %39, align 1, !tbaa !16
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !22
  %54 = and i32 %53, 16400
  %55 = icmp eq i32 %54, 16400
  %56 = add i8 %50, 32
  %57 = zext i8 %56 to i32
  %58 = sext i8 %50 to i32
  %59 = select i1 %55, i32 %57, i32 %58
  %60 = sub nsw i32 %49, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %38
  %63 = tail call i32 @compare(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  br label %64

64:                                               ; preds = %38, %62
  %65 = phi i32 [ %63, %62 ], [ %60, %38 ]
  ret i32 %65
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !28
  %4 = load ptr, ptr %1, align 8, !tbaa !28
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #22
  ret i32 %5
}

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @glob2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #18
  %8 = load i16, ptr %3, align 2, !tbaa !17
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %19, label %15

10:                                               ; preds = %75, %68
  %11 = phi i16 [ %54, %68 ], [ %77, %75 ]
  %12 = phi ptr [ %55, %68 ], [ %76, %75 ]
  %13 = phi ptr [ %56, %68 ], [ %73, %75 ]
  %14 = icmp eq i16 %11, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %6, %10
  %16 = phi i16 [ %11, %10 ], [ %8, %6 ]
  %17 = phi ptr [ %13, %10 ], [ %1, %6 ]
  %18 = phi ptr [ %12, %10 ], [ %3, %6 ]
  br label %53

19:                                               ; preds = %10, %6
  %20 = phi ptr [ %1, %6 ], [ %13, %10 ]
  store i16 0, ptr %20, align 2, !tbaa !17
  %21 = call fastcc i32 @g_lstat(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %4) #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %81

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.glob_t, ptr %4, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !13
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds i16, ptr %20, i64 -1
  %30 = load i16, ptr %29, align 2, !tbaa !17
  %31 = icmp eq i16 %30, 47
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !43
  %35 = trunc i32 %34 to i16
  %36 = and i16 %35, -4096
  switch i16 %36, label %48 [
    i16 16384, label %44
    i16 -24576, label %37
  ]

37:                                               ; preds = %32
  %38 = call fastcc i32 @g_stat(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %4) #19
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, ptr %33, align 8, !tbaa !43
  %42 = and i32 %41, 61440
  %43 = icmp eq i32 %42, 16384
  br i1 %43, label %44, label %48

44:                                               ; preds = %32, %40
  %45 = getelementptr inbounds i16, ptr %20, i64 1
  %46 = icmp ugt ptr %45, %2
  br i1 %46, label %81, label %47

47:                                               ; preds = %44
  store i16 47, ptr %20, align 2, !tbaa !17
  store i16 0, ptr %45, align 2, !tbaa !17
  br label %48

48:                                               ; preds = %32, %47, %40, %37, %28, %23
  %49 = getelementptr inbounds %struct.glob_t, ptr %4, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !15
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %49, align 4, !tbaa !15
  %52 = call fastcc i32 @globextend(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %5) #19, !range !27
  br label %81

53:                                               ; preds = %15, %61
  %54 = phi i16 [ %65, %61 ], [ %16, %15 ]
  %55 = phi ptr [ %64, %61 ], [ %18, %15 ]
  %56 = phi ptr [ %59, %61 ], [ %17, %15 ]
  %57 = phi i32 [ %63, %61 ], [ 0, %15 ]
  switch i16 %54, label %58 [
    i16 0, label %66
    i16 47, label %66
  ]

58:                                               ; preds = %53
  %59 = getelementptr inbounds i16, ptr %56, i64 1
  %60 = icmp ugt ptr %59, %2
  br i1 %60, label %81, label %61

61:                                               ; preds = %58
  %62 = icmp sgt i16 %54, -1
  %63 = select i1 %62, i32 %57, i32 1
  %64 = getelementptr inbounds i16, ptr %55, i64 1
  store i16 %54, ptr %56, align 2, !tbaa !17
  %65 = load i16, ptr %64, align 2, !tbaa !17
  br label %53, !llvm.loop !46

66:                                               ; preds = %53, %53
  %67 = icmp eq i32 %57, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %66
  %69 = icmp eq i16 %54, 47
  br i1 %69, label %70, label %10

70:                                               ; preds = %68, %75
  %71 = phi ptr [ %73, %75 ], [ %56, %68 ]
  %72 = phi ptr [ %76, %75 ], [ %55, %68 ]
  %73 = getelementptr inbounds i16, ptr %71, i64 1
  %74 = icmp ugt ptr %73, %2
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds i16, ptr %72, i64 1
  store i16 47, ptr %71, align 2, !tbaa !17
  %77 = load i16, ptr %76, align 2, !tbaa !17
  %78 = icmp eq i16 %77, 47
  br i1 %78, label %70, label %10, !llvm.loop !47

79:                                               ; preds = %66
  %80 = tail call fastcc i32 @glob3(ptr noundef %0, ptr noundef %17, ptr noundef %2, ptr noundef nonnull %18, ptr noundef nonnull %55, ptr noundef %4, ptr noundef %5) #19
  br label %81

81:                                               ; preds = %58, %70, %44, %19, %79, %48
  %82 = phi i32 [ %52, %48 ], [ %80, %79 ], [ 0, %19 ], [ 1, %44 ], [ 1, %70 ], [ 1, %58 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #18
  ret i32 %82
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @g_lstat(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  %5 = call fastcc i32 @g_Ctoc(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 4096) #19, !range !41
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.glob_t, ptr %2, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.glob_t, ptr %2, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = call i32 %14(ptr noundef nonnull %4, ptr noundef %1) #20
  br label %18

16:                                               ; preds = %7
  %17 = call i32 @stat64(ptr noundef nonnull %4, ptr noundef %1) #20
  br label %18

18:                                               ; preds = %3, %16, %12
  %19 = phi i32 [ %15, %12 ], [ %17, %16 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @g_stat(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #18
  %5 = call fastcc i32 @g_Ctoc(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 4096) #19, !range !41
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.glob_t, ptr %2, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.glob_t, ptr %2, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = call i32 %14(ptr noundef nonnull %4, ptr noundef %1) #20
  br label %18

16:                                               ; preds = %7
  %17 = call i32 @stat64(ptr noundef nonnull %4, ptr noundef %1) #20
  br label %18

18:                                               ; preds = %3, %16, %12
  %19 = phi i32 [ %15, %12 ], [ %17, %16 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #18
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @glob3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #18
  %9 = icmp ugt ptr %1, %2
  br i1 %9, label %90, label %10

10:                                               ; preds = %7
  store i16 0, ptr %1, align 2, !tbaa !17
  %11 = tail call ptr @__errno_location() #21
  store i32 0, ptr %11, align 4, !tbaa !22
  %12 = tail call fastcc ptr @g_opendir(ptr noundef %0, ptr noundef %5) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.glob_t, ptr %5, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %14
  %19 = call fastcc i32 @g_Ctoc(ptr noundef %0, ptr noundef nonnull %8, i64 noundef 4096) #19, !range !41
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %90

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !14
  %23 = load i32, ptr %11, align 4, !tbaa !22
  %24 = call i32 %22(ptr noundef nonnull %8, i32 noundef %23) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %90

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.glob_t, ptr %5, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !13
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %90

31:                                               ; preds = %26, %14
  br label %90

32:                                               ; preds = %10
  %33 = getelementptr inbounds %struct.glob_t, ptr %5, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !13
  %35 = lshr i32 %34, 12
  %36 = and i32 %35, 1
  %37 = and i32 %34, 64
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.glob_t, ptr %5, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  br label %42

42:                                               ; preds = %32, %39
  %43 = phi ptr [ %41, %39 ], [ @readdir64, %32 ]
  %44 = tail call ptr %43(ptr noundef nonnull %12) #20
  %45 = icmp eq ptr %44, null
  br i1 %45, label %80, label %46

46:                                               ; preds = %42, %77
  %47 = phi ptr [ %78, %77 ], [ %44, %42 ]
  %48 = getelementptr inbounds %struct.dirent, ptr %47, i64 0, i32 4
  %49 = load i8, ptr %48, align 1, !tbaa !16
  %50 = icmp eq i8 %49, 46
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i16, ptr %3, align 2, !tbaa !17
  %53 = icmp eq i16 %52, 46
  br i1 %53, label %54, label %77, !llvm.loop !51

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %59
  %56 = phi ptr [ %60, %59 ], [ %48, %54 ]
  %57 = phi ptr [ %63, %59 ], [ %1, %54 ]
  %58 = icmp ult ptr %57, %2
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %56, i64 1
  %61 = load i8, ptr %56, align 1, !tbaa !16
  %62 = zext i8 %61 to i16
  %63 = getelementptr inbounds i16, ptr %57, i64 1
  store i16 %62, ptr %57, align 2, !tbaa !17
  %64 = icmp eq i8 %61, 0
  br i1 %64, label %65, label %55, !llvm.loop !52

65:                                               ; preds = %55, %59
  %66 = phi ptr [ %63, %59 ], [ %57, %55 ]
  %67 = icmp ult ptr %66, %2
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i16 0, ptr %66, align 2, !tbaa !17
  br label %80

69:                                               ; preds = %65
  %70 = tail call fastcc i32 @match(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4, i32 noundef %36) #19, !range !41
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i16 0, ptr %1, align 2, !tbaa !17
  br label %77, !llvm.loop !51

73:                                               ; preds = %69
  %74 = getelementptr inbounds i16, ptr %66, i64 -1
  %75 = tail call fastcc i32 @glob2(ptr noundef %0, ptr noundef nonnull %74, ptr noundef nonnull %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73, %51, %72
  %78 = tail call ptr %43(ptr noundef nonnull %12) #20
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %46

80:                                               ; preds = %77, %73, %42, %68
  %81 = phi i32 [ 1, %68 ], [ 0, %42 ], [ %75, %73 ], [ 0, %77 ]
  %82 = load i32, ptr %33, align 4, !tbaa !13
  %83 = and i32 %82, 64
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.glob_t, ptr %5, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !53
  tail call void %87(ptr noundef nonnull %12) #20
  br label %90

88:                                               ; preds = %80
  %89 = tail call i32 @closedir(ptr noundef nonnull %12) #19
  br label %90

90:                                               ; preds = %85, %88, %21, %26, %18, %7, %31
  %91 = phi i32 [ 0, %31 ], [ 1, %7 ], [ -2, %18 ], [ -2, %26 ], [ -2, %21 ], [ %81, %88 ], [ %81, %85 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #18
  ret i32 %91
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @g_Ctoc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i64 noundef %2) unnamed_addr #9 {
  br label %4

4:                                                ; preds = %9, %3
  %5 = phi ptr [ %0, %3 ], [ %11, %9 ]
  %6 = phi ptr [ %1, %3 ], [ %14, %9 ]
  %7 = phi i64 [ %2, %3 ], [ %10, %9 ]
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = add i64 %7, -1
  %11 = getelementptr inbounds i16, ptr %5, i64 1
  %12 = load i16, ptr %5, align 2, !tbaa !17
  %13 = trunc i16 %12 to i8
  %14 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %13, ptr %6, align 1, !tbaa !16
  %15 = icmp eq i8 %13, 0
  br i1 %15, label %16, label %4, !llvm.loop !54

16:                                               ; preds = %4, %9
  %17 = phi i32 [ 0, %9 ], [ 1, %4 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @g_opendir(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #18
  %4 = load i16, ptr %0, align 2, !tbaa !17
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = call i64 @Perl_my_strlcpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i64 noundef 4096) #20
  br label %11

8:                                                ; preds = %2
  %9 = call fastcc i32 @g_Ctoc(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef 4096) #19, !range !41
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %8, %6
  %12 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = call ptr %18(ptr noundef nonnull %3) #20
  br label %22

20:                                               ; preds = %11
  %21 = call ptr @opendir(ptr noundef nonnull %3) #19
  br label %22

22:                                               ; preds = %8, %20, %16
  %23 = phi ptr [ %19, %16 ], [ %21, %20 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #18
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @readdir64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(read) uwtable
define internal fastcc i32 @match(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readnone %2, i32 noundef %3) unnamed_addr #12 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %103

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  br label %8

8:                                                ; preds = %6, %99
  %9 = phi ptr [ %0, %6 ], [ %101, %99 ]
  %10 = phi ptr [ %1, %6 ], [ %100, %99 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %10, align 2, !tbaa !17
  %13 = zext i16 %12 to i32
  switch i16 %12, label %90 [
    i16 -32726, label %14
    i16 -32705, label %24
    i16 -32677, label %27
  ]

14:                                               ; preds = %8
  %15 = icmp eq ptr %11, %2
  br i1 %15, label %108, label %16

16:                                               ; preds = %14, %20
  %17 = phi ptr [ %21, %20 ], [ %9, %14 ]
  %18 = tail call fastcc i32 @match(ptr noundef %17, ptr noundef nonnull %11, ptr noundef nonnull %2, i32 noundef %3) #19, !range !41
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %108

20:                                               ; preds = %16
  %21 = getelementptr inbounds i16, ptr %17, i64 1
  %22 = load i16, ptr %17, align 2, !tbaa !17
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %108, label %16, !llvm.loop !56

24:                                               ; preds = %8
  %25 = load i16, ptr %9, align 2, !tbaa !17
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %108, label %99

27:                                               ; preds = %8
  %28 = load i16, ptr %9, align 2, !tbaa !17
  %29 = zext i16 %28 to i32
  %30 = icmp eq i16 %28, 0
  br i1 %30, label %108, label %31

31:                                               ; preds = %27
  %32 = load i16, ptr %11, align 2, !tbaa !17
  %33 = icmp eq i16 %32, -32735
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds i16, ptr %10, i64 2
  %36 = select i1 %33, ptr %35, ptr %11
  %37 = getelementptr inbounds i16, ptr %36, i64 1
  %38 = load i16, ptr %36, align 2, !tbaa !17
  %39 = icmp eq i16 %38, -32675
  br i1 %39, label %86, label %40

40:                                               ; preds = %31, %80
  %41 = phi i16 [ %81, %80 ], [ %38, %31 ]
  %42 = phi ptr [ %84, %80 ], [ %37, %31 ]
  %43 = phi ptr [ %83, %80 ], [ %36, %31 ]
  %44 = phi i32 [ %82, %80 ], [ 0, %31 ]
  %45 = zext i16 %41 to i32
  %46 = load i16, ptr %42, align 2, !tbaa !17
  %47 = icmp eq i16 %46, -32723
  br i1 %47, label %48, label %72

48:                                               ; preds = %40
  br i1 %7, label %61, label %49

49:                                               ; preds = %48
  %50 = tail call i32 @tolower(i32 noundef %45) #22
  %51 = tail call i32 @tolower(i32 noundef %29) #22
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %68, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @tolower(i32 noundef %29) #22
  %55 = getelementptr inbounds i16, ptr %43, i64 2
  %56 = load i16, ptr %55, align 2, !tbaa !17
  %57 = zext i16 %56 to i32
  %58 = tail call i32 @tolower(i32 noundef %57) #22
  %59 = icmp sgt i32 %54, %58
  %60 = select i1 %59, i32 %44, i32 1
  br label %68

61:                                               ; preds = %48
  %62 = icmp ugt i16 %41, %28
  br i1 %62, label %68, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds i16, ptr %43, i64 2
  %65 = load i16, ptr %64, align 2, !tbaa !17
  %66 = icmp ugt i16 %28, %65
  %67 = select i1 %66, i32 %44, i32 1
  br label %68

68:                                               ; preds = %63, %53, %61, %49
  %69 = phi i32 [ %44, %49 ], [ %44, %61 ], [ %60, %53 ], [ %67, %63 ]
  %70 = getelementptr inbounds i16, ptr %43, i64 3
  %71 = load i16, ptr %70, align 2, !tbaa !17
  br label %80

72:                                               ; preds = %40
  br i1 %7, label %77, label %73

73:                                               ; preds = %72
  %74 = tail call i32 @tolower(i32 noundef %45) #22
  %75 = tail call i32 @tolower(i32 noundef %29) #22
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %79, label %80

77:                                               ; preds = %72
  %78 = icmp eq i16 %41, %28
  br i1 %78, label %79, label %80

79:                                               ; preds = %77, %73
  br label %80

80:                                               ; preds = %73, %77, %79, %68
  %81 = phi i16 [ %71, %68 ], [ %46, %79 ], [ %46, %73 ], [ %46, %77 ]
  %82 = phi i32 [ %69, %68 ], [ 1, %79 ], [ %44, %73 ], [ %44, %77 ]
  %83 = phi ptr [ %70, %68 ], [ %42, %79 ], [ %42, %73 ], [ %42, %77 ]
  %84 = getelementptr inbounds i16, ptr %83, i64 1
  %85 = icmp eq i16 %81, -32675
  br i1 %85, label %86, label %40, !llvm.loop !57

86:                                               ; preds = %80, %31
  %87 = phi i32 [ 0, %31 ], [ %82, %80 ]
  %88 = phi ptr [ %37, %31 ], [ %84, %80 ]
  %89 = icmp eq i32 %87, %34
  br i1 %89, label %108, label %99

90:                                               ; preds = %8
  %91 = load i16, ptr %9, align 2, !tbaa !17
  br i1 %7, label %97, label %92

92:                                               ; preds = %90
  %93 = zext i16 %91 to i32
  %94 = tail call i32 @tolower(i32 noundef %93) #22
  %95 = tail call i32 @tolower(i32 noundef %13) #22
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %99, label %108

97:                                               ; preds = %90
  %98 = icmp eq i16 %91, %12
  br i1 %98, label %99, label %108

99:                                               ; preds = %92, %97, %86, %24
  %100 = phi ptr [ %11, %92 ], [ %11, %97 ], [ %88, %86 ], [ %11, %24 ]
  %101 = getelementptr inbounds i16, ptr %9, i64 1
  %102 = icmp ult ptr %100, %2
  br i1 %102, label %8, label %103, !llvm.loop !58

103:                                              ; preds = %99, %4
  %104 = phi ptr [ %0, %4 ], [ %101, %99 ]
  %105 = load i16, ptr %104, align 2, !tbaa !17
  %106 = icmp eq i16 %105, 0
  %107 = zext i1 %106 to i32
  br label %108

108:                                              ; preds = %92, %97, %86, %27, %24, %20, %16, %14, %103
  %109 = phi i32 [ %107, %103 ], [ 1, %14 ], [ 0, %20 ], [ 1, %16 ], [ 0, %24 ], [ 0, %27 ], [ 0, %86 ], [ 0, %97 ], [ 0, %92 ]
  ret i32 %109
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare i64 @Perl_my_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i64 @sysconf(i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind optsize willreturn memory(none) }
attributes #22 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 16}
!12 = !{!6, !7, i64 8}
!13 = !{!6, !7, i64 12}
!14 = !{!6, !10, i64 24}
!15 = !{!6, !7, i64 4}
!16 = !{!8, !8, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !8, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !8, i64 0}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = !{i32 -1, i32 1}
!28 = !{!10, !10, i64 0}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !20}
!41 = !{i32 0, i32 2}
!42 = distinct !{!42, !20}
!43 = !{!44, !7, i64 24}
!44 = !{!"stat", !24, i64 0, !24, i64 8, !24, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !45, i64 72, !45, i64 88, !45, i64 104, !8, i64 120}
!45 = !{!"timespec", !24, i64 0, !24, i64 8}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = !{!6, !10, i64 56}
!49 = !{!6, !10, i64 64}
!50 = !{!6, !10, i64 40}
!51 = distinct !{!51, !20}
!52 = distinct !{!52, !20}
!53 = !{!6, !10, i64 32}
!54 = distinct !{!54, !20}
!55 = !{!6, !10, i64 48}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
