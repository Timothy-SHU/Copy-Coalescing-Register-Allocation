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

; Function Attrs: cold nounwind uwtable
define dso_local i32 @bsd_glob(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = alloca [4096 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #14
  store i32 0, ptr %3, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.glob_t, ptr %3, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.glob_t, ptr %3, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !42
  %8 = and i32 %1, -257
  %9 = getelementptr inbounds %struct.glob_t, ptr %3, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.glob_t, ptr %3, i64 0, i32 5
  store ptr %2, ptr %10, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.glob_t, ptr %3, i64 0, i32 1
  store i32 0, ptr %11, align 4, !tbaa !45
  %12 = and i32 %1, 1024
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %4, %30
  %15 = phi ptr [ %34, %30 ], [ %5, %4 ]
  %16 = phi i64 [ %33, %30 ], [ 0, %4 ]
  %17 = phi ptr [ %32, %30 ], [ %0, %4 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = load i8, ptr %17, align 1, !tbaa !46
  switch i8 %19, label %28 [
    i8 0, label %48
    i8 92, label %20
  ]

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %17, i64 2
  %22 = load i8, ptr %18, align 1, !tbaa !46
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
  store i16 %31, ptr %15, align 2, !tbaa !47
  %34 = getelementptr inbounds i8, ptr %5, i64 %33
  %35 = icmp ult i64 %16, 8188
  br i1 %35, label %14, label %48, !llvm.loop !49

36:                                               ; preds = %4, %42
  %37 = phi ptr [ %46, %42 ], [ %5, %4 ]
  %38 = phi i64 [ %45, %42 ], [ 0, %4 ]
  %39 = phi ptr [ %43, %42 ], [ %0, %4 ]
  %40 = load i8, ptr %39, align 1, !tbaa !46
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds i8, ptr %39, i64 1
  %44 = zext i8 %40 to i16
  %45 = add nuw nsw i64 %38, 2
  store i16 %44, ptr %37, align 2, !tbaa !47
  %46 = getelementptr inbounds i8, ptr %5, i64 %45
  %47 = icmp ult i64 %38, 8188
  br i1 %47, label %36, label %48, !llvm.loop !52

48:                                               ; preds = %14, %30, %42, %36
  %49 = phi ptr [ %46, %42 ], [ %37, %36 ], [ %15, %14 ], [ %34, %30 ]
  store i16 0, ptr %49, align 2, !tbaa !47
  %50 = and i32 %1, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = call fastcc i32 @globexp1(ptr noundef nonnull %5, ptr noundef nonnull %3)
  br label %56

54:                                               ; preds = %48
  %55 = call fastcc i32 @glob0(ptr noundef nonnull %5, ptr noundef nonnull %3)
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #14
  ret i32 %57
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @globexp1(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !34 {
  %3 = ptrtoint ptr %0 to i64
  %4 = alloca [4096 x i16], align 16
  %5 = load i16, ptr %0, align 2, !tbaa !47
  %6 = icmp eq i16 %5, 123
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds i16, ptr %0, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !47
  %10 = icmp eq i16 %9, 125
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds i16, ptr %0, i64 2
  %13 = load i16, ptr %12, align 2, !tbaa !47
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2, %7, %11
  br label %18

16:                                               ; preds = %11
  %17 = tail call fastcc i32 @glob0(ptr noundef nonnull %0, ptr noundef %1)
  br label %126

18:                                               ; preds = %15, %22
  %19 = phi ptr [ %23, %22 ], [ %0, %15 ]
  %20 = load i16, ptr %19, align 2, !tbaa !47
  %21 = icmp eq i16 %20, 123
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds i16, ptr %19, i64 1
  %24 = icmp eq i16 %20, 0
  br i1 %24, label %25, label %18, !llvm.loop !53

25:                                               ; preds = %22, %18
  %26 = phi ptr [ %19, %18 ], [ null, %22 ]
  %27 = ptrtoint ptr %26 to i64
  %28 = icmp eq ptr %26, null
  br i1 %28, label %124, label %29

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %4) #14
  %30 = icmp eq ptr %26, %0
  br i1 %30, label %39, label %31

31:                                               ; preds = %29
  %32 = add i64 %27, -2
  %33 = sub i64 %32, %3
  %34 = and i64 %33, -2
  %35 = add i64 %34, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr nonnull align 2 %0, i64 %35, i1 false), !tbaa !47
  %36 = and i64 %33, -2
  %37 = getelementptr i8, ptr %4, i64 %36
  %38 = getelementptr i8, ptr %37, i64 2
  br label %39

39:                                               ; preds = %31, %29
  %40 = phi ptr [ %4, %29 ], [ %38, %31 ]
  store i16 0, ptr %40, align 2, !tbaa !47
  %41 = getelementptr inbounds i16, ptr %26, i64 1
  br label %42

42:                                               ; preds = %59, %39
  %43 = phi i32 [ 0, %39 ], [ %60, %59 ]
  %44 = phi ptr [ %41, %39 ], [ %62, %59 ]
  %45 = load i16, ptr %44, align 2, !tbaa !47
  switch i16 %45, label %59 [
    i16 0, label %63
    i16 91, label %46
    i16 123, label %53
    i16 125, label %55
  ]

46:                                               ; preds = %42, %46
  %47 = phi ptr [ %48, %46 ], [ %44, %42 ]
  %48 = getelementptr inbounds i16, ptr %47, i64 1
  %49 = load i16, ptr %48, align 2, !tbaa !47
  switch i16 %49, label %46 [
    i16 93, label %50
    i16 0, label %50
  ], !llvm.loop !54

50:                                               ; preds = %46, %46
  %51 = icmp eq i16 %49, 0
  %52 = select i1 %51, ptr %44, ptr %48
  br label %59

53:                                               ; preds = %42
  %54 = add nsw i32 %43, 1
  br label %59

55:                                               ; preds = %42
  %56 = icmp eq i32 %43, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %55
  %58 = add nsw i32 %43, -1
  br label %59

59:                                               ; preds = %57, %53, %50, %42
  %60 = phi i32 [ %54, %53 ], [ %58, %57 ], [ %43, %50 ], [ %43, %42 ]
  %61 = phi ptr [ %44, %53 ], [ %44, %57 ], [ %52, %50 ], [ %44, %42 ]
  %62 = getelementptr inbounds i16, ptr %61, i64 1
  br label %42, !llvm.loop !55

63:                                               ; preds = %42
  %64 = icmp ne i32 %43, 0
  %65 = icmp eq i16 %45, 0
  %66 = or i1 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %69, %63
  %68 = icmp ugt ptr %41, %44
  br i1 %68, label %122, label %73

69:                                               ; preds = %55
  %70 = icmp eq i16 %45, 0
  br i1 %70, label %71, label %67

71:                                               ; preds = %69, %63
  %72 = call fastcc i32 @glob0(ptr noundef nonnull %4, ptr noundef %1)
  br label %122

73:                                               ; preds = %67, %116
  %74 = phi ptr [ %119, %116 ], [ %41, %67 ]
  %75 = phi ptr [ %120, %116 ], [ %41, %67 ]
  %76 = phi i32 [ %117, %116 ], [ 0, %67 ]
  %77 = load i16, ptr %75, align 2, !tbaa !47
  switch i16 %77, label %116 [
    i16 91, label %78
    i16 123, label %85
    i16 125, label %87
    i16 44, label %91
  ]

78:                                               ; preds = %73, %78
  %79 = phi ptr [ %80, %78 ], [ %75, %73 ]
  %80 = getelementptr inbounds i16, ptr %79, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !47
  switch i16 %81, label %78 [
    i16 93, label %82
    i16 0, label %82
  ], !llvm.loop !56

82:                                               ; preds = %78, %78
  %83 = icmp eq i16 %81, 0
  %84 = select i1 %83, ptr %75, ptr %80
  br label %116

85:                                               ; preds = %73
  %86 = add nsw i32 %76, 1
  br label %116

87:                                               ; preds = %73
  %88 = icmp eq i32 %76, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %87
  %90 = add nsw i32 %76, -1
  br label %116

91:                                               ; preds = %73
  %92 = icmp ne i32 %76, 0
  %93 = icmp eq i16 %77, 44
  %94 = and i1 %92, %93
  br i1 %94, label %116, label %95

95:                                               ; preds = %91, %87
  %96 = icmp ult ptr %74, %75
  br i1 %96, label %97, label %104

97:                                               ; preds = %95, %97
  %98 = phi ptr [ %100, %97 ], [ %74, %95 ]
  %99 = phi ptr [ %102, %97 ], [ %40, %95 ]
  %100 = getelementptr inbounds i16, ptr %98, i64 1
  %101 = load i16, ptr %98, align 2, !tbaa !47
  %102 = getelementptr inbounds i16, ptr %99, i64 1
  store i16 %101, ptr %99, align 2, !tbaa !47
  %103 = icmp ult ptr %100, %75
  br i1 %103, label %97, label %104, !llvm.loop !57

104:                                              ; preds = %97, %95
  %105 = phi ptr [ %40, %95 ], [ %102, %97 ]
  br label %106

106:                                              ; preds = %104, %106
  %107 = phi ptr [ %111, %106 ], [ %105, %104 ]
  %108 = phi ptr [ %109, %106 ], [ %44, %104 ]
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = load i16, ptr %109, align 2, !tbaa !47
  %111 = getelementptr inbounds i16, ptr %107, i64 1
  store i16 %110, ptr %107, align 2, !tbaa !47
  %112 = icmp eq i16 %110, 0
  br i1 %112, label %113, label %106, !llvm.loop !58

113:                                              ; preds = %106
  %114 = call fastcc i32 @globexp1(ptr noundef nonnull %4, ptr noundef %1)
  %115 = getelementptr inbounds i16, ptr %75, i64 1
  br label %116

116:                                              ; preds = %91, %113, %89, %85, %82, %73
  %117 = phi i32 [ %76, %73 ], [ %76, %113 ], [ %90, %89 ], [ %86, %85 ], [ %76, %82 ], [ %76, %91 ]
  %118 = phi ptr [ %75, %73 ], [ %75, %113 ], [ %75, %89 ], [ %75, %85 ], [ %84, %82 ], [ %75, %91 ]
  %119 = phi ptr [ %74, %73 ], [ %115, %113 ], [ %74, %89 ], [ %74, %85 ], [ %74, %82 ], [ %74, %91 ]
  %120 = getelementptr inbounds i16, ptr %118, i64 1
  %121 = icmp ugt ptr %120, %44
  br i1 %121, label %122, label %73, !llvm.loop !59

122:                                              ; preds = %116, %67, %71
  %123 = phi i32 [ %72, %71 ], [ 0, %67 ], [ 0, %116 ]
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %4) #14
  br label %126

124:                                              ; preds = %25
  %125 = tail call fastcc i32 @glob0(ptr noundef nonnull %0, ptr noundef %1)
  br label %126

126:                                              ; preds = %124, %122, %16
  %127 = phi i32 [ %17, %16 ], [ %123, %122 ], [ %125, %124 ]
  ret i32 %127
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @glob0(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !34 {
  %3 = alloca [4096 x i16], align 16
  %4 = alloca [4096 x i16], align 16
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store i64 0, ptr %5, align 8, !tbaa !60
  %6 = load i16, ptr %0, align 2, !tbaa !47
  %7 = icmp eq i16 %6, 126
  br i1 %7, label %8, label %62

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = and i32 %10, 2048
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %62, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds i16, ptr %0, i64 1
  br label %15

15:                                               ; preds = %13, %20
  %16 = phi ptr [ %4, %13 ], [ %24, %20 ]
  %17 = phi ptr [ %14, %13 ], [ %23, %20 ]
  %18 = phi i64 [ 0, %13 ], [ %22, %20 ]
  %19 = load i16, ptr %17, align 2, !tbaa !47
  switch i16 %19, label %20 [
    i16 0, label %26
    i16 47, label %26
  ]

20:                                               ; preds = %15
  %21 = trunc i16 %19 to i8
  %22 = add nuw nsw i64 %18, 1
  store i8 %21, ptr %16, align 1, !tbaa !46
  %23 = getelementptr inbounds i16, ptr %17, i64 1
  %24 = getelementptr inbounds i8, ptr %4, i64 %22
  %25 = icmp eq i64 %22, 8190
  br i1 %25, label %26, label %15, !llvm.loop !62

26:                                               ; preds = %15, %20, %15
  %27 = phi ptr [ %17, %15 ], [ %23, %20 ], [ %17, %15 ]
  %28 = phi ptr [ %16, %15 ], [ %24, %20 ], [ %16, %15 ]
  store i8 0, ptr %28, align 1, !tbaa !46
  %29 = load i8, ptr %4, align 16, !tbaa !46
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %26
  %32 = tail call ptr @getenv(ptr noundef nonnull @.str) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %62, label %34

34:                                               ; preds = %31, %40
  %35 = phi ptr [ %44, %40 ], [ %4, %31 ]
  %36 = phi i64 [ %43, %40 ], [ 0, %31 ]
  %37 = phi ptr [ %41, %40 ], [ %32, %31 ]
  %38 = load i8, ptr %37, align 1, !tbaa !46
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds i8, ptr %37, i64 1
  %42 = sext i8 %38 to i16
  %43 = add nuw nsw i64 %36, 2
  store i16 %42, ptr %35, align 2, !tbaa !47
  %44 = getelementptr inbounds i8, ptr %4, i64 %43
  %45 = icmp ult i64 %36, 8188
  br i1 %45, label %34, label %46, !llvm.loop !63

46:                                               ; preds = %34, %40
  %47 = phi i64 [ 8190, %40 ], [ %36, %34 ]
  br label %48

48:                                               ; preds = %46, %53
  %49 = phi ptr [ %54, %53 ], [ %27, %46 ]
  %50 = phi i64 [ %56, %53 ], [ %47, %46 ]
  %51 = getelementptr inbounds i8, ptr %4, i64 %50
  %52 = icmp ult i64 %50, 8190
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = getelementptr inbounds i16, ptr %49, i64 1
  %55 = load i16, ptr %49, align 2, !tbaa !47
  %56 = add nuw nsw i64 %50, 2
  store i16 %55, ptr %51, align 2, !tbaa !47
  %57 = icmp eq i16 %55, 0
  br i1 %57, label %58, label %48, !llvm.loop !64

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, ptr %4, i64 %56
  br label %60

60:                                               ; preds = %48, %58
  %61 = phi ptr [ %59, %58 ], [ %51, %48 ]
  store i16 0, ptr %61, align 2, !tbaa !47
  br label %62

62:                                               ; preds = %2, %8, %26, %31, %60
  %63 = phi ptr [ %4, %60 ], [ %0, %8 ], [ %0, %2 ], [ %0, %31 ], [ %0, %26 ]
  %64 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 3
  %65 = load i32, ptr %64, align 4, !tbaa !43
  %66 = load i32, ptr %1, align 8, !tbaa !35
  br label %67

67:                                               ; preds = %142, %62
  %68 = phi ptr [ %63, %62 ], [ %143, %142 ]
  %69 = phi ptr [ %4, %62 ], [ %145, %142 ]
  %70 = icmp eq ptr %69, %4
  %71 = getelementptr inbounds i16, ptr %69, i64 -1
  br label %72

72:                                               ; preds = %67, %136
  %73 = phi ptr [ %74, %136 ], [ %68, %67 ]
  %74 = getelementptr inbounds i16, ptr %73, i64 1
  %75 = load i16, ptr %73, align 2, !tbaa !47
  switch i16 %75, label %140 [
    i16 0, label %146
    i16 91, label %76
    i16 63, label %130
    i16 42, label %133
  ]

76:                                               ; preds = %72
  %77 = load i16, ptr %74, align 2, !tbaa !47
  %78 = icmp eq i16 %77, 33
  %79 = getelementptr inbounds i16, ptr %73, i64 2
  %80 = select i1 %78, ptr %79, ptr %74
  %81 = load i16, ptr %80, align 2, !tbaa !47
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %76
  %84 = select i1 %78, i64 3, i64 2
  %85 = getelementptr inbounds i16, ptr %73, i64 %84
  br label %86

86:                                               ; preds = %90, %83
  %87 = phi ptr [ %85, %83 ], [ %91, %90 ]
  %88 = load i16, ptr %87, align 2, !tbaa !47
  %89 = icmp eq i16 %88, 93
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds i16, ptr %87, i64 1
  %92 = icmp eq i16 %88, 0
  br i1 %92, label %93, label %86, !llvm.loop !53

93:                                               ; preds = %90, %76
  store i16 91, ptr %69, align 2, !tbaa !47
  %94 = zext i1 %78 to i64
  %95 = getelementptr inbounds i16, ptr %73, i64 %94
  %96 = select i1 %78, ptr %95, ptr %74
  br label %142

97:                                               ; preds = %86
  %98 = getelementptr inbounds i16, ptr %69, i64 1
  store i16 -32677, ptr %69, align 2, !tbaa !47
  br i1 %78, label %99, label %101

99:                                               ; preds = %97
  %100 = getelementptr inbounds i16, ptr %69, i64 2
  store i16 -32735, ptr %98, align 2, !tbaa !47
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi ptr [ %100, %99 ], [ %98, %97 ]
  %103 = load i16, ptr %80, align 2, !tbaa !47
  br label %104

104:                                              ; preds = %121, %101
  %105 = phi i16 [ %103, %101 ], [ %125, %121 ]
  %106 = phi ptr [ %85, %101 ], [ %124, %121 ]
  %107 = phi ptr [ %102, %101 ], [ %123, %121 ]
  %108 = and i16 %105, 255
  %109 = getelementptr inbounds i16, ptr %107, i64 1
  store i16 %108, ptr %107, align 2, !tbaa !47
  %110 = load i16, ptr %106, align 2, !tbaa !47
  %111 = icmp eq i16 %110, 45
  br i1 %111, label %112, label %121

112:                                              ; preds = %104
  %113 = getelementptr inbounds i16, ptr %106, i64 1
  %114 = load i16, ptr %113, align 2, !tbaa !47
  %115 = icmp eq i16 %114, 93
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds i16, ptr %107, i64 2
  store i16 -32723, ptr %109, align 2, !tbaa !47
  %118 = and i16 %114, 255
  %119 = getelementptr inbounds i16, ptr %107, i64 3
  store i16 %118, ptr %117, align 2, !tbaa !47
  %120 = getelementptr inbounds i16, ptr %106, i64 2
  br label %121

121:                                              ; preds = %104, %112, %116
  %122 = phi ptr [ %120, %116 ], [ %106, %112 ], [ %106, %104 ]
  %123 = phi ptr [ %119, %116 ], [ %109, %112 ], [ %109, %104 ]
  %124 = getelementptr inbounds i16, ptr %122, i64 1
  %125 = load i16, ptr %122, align 2, !tbaa !47
  %126 = icmp eq i16 %125, 93
  br i1 %126, label %127, label %104, !llvm.loop !65

127:                                              ; preds = %121
  %128 = load i32, ptr %64, align 4, !tbaa !43
  %129 = or i32 %128, 256
  store i32 %129, ptr %64, align 4, !tbaa !43
  store i16 -32675, ptr %123, align 2, !tbaa !47
  br label %142

130:                                              ; preds = %72
  %131 = load i32, ptr %64, align 4, !tbaa !43
  %132 = or i32 %131, 256
  store i32 %132, ptr %64, align 4, !tbaa !43
  store i16 -32705, ptr %69, align 2, !tbaa !47
  br label %142

133:                                              ; preds = %72
  %134 = load i32, ptr %64, align 4, !tbaa !43
  %135 = or i32 %134, 256
  store i32 %135, ptr %64, align 4, !tbaa !43
  br i1 %70, label %139, label %136

136:                                              ; preds = %133
  %137 = load i16, ptr %71, align 2, !tbaa !47
  %138 = icmp eq i16 %137, -32726
  br i1 %138, label %72, label %139, !llvm.loop !66

139:                                              ; preds = %136, %133
  store i16 -32726, ptr %69, align 2, !tbaa !47
  br label %142

140:                                              ; preds = %72
  %141 = and i16 %75, 255
  store i16 %141, ptr %69, align 2, !tbaa !47
  br label %142

142:                                              ; preds = %140, %139, %130, %127, %93
  %143 = phi ptr [ %96, %93 ], [ %124, %127 ], [ %74, %130 ], [ %74, %139 ], [ %74, %140 ]
  %144 = phi ptr [ %69, %93 ], [ %123, %127 ], [ %69, %130 ], [ %69, %139 ], [ %69, %140 ]
  %145 = getelementptr inbounds i16, ptr %144, i64 1
  br label %67, !llvm.loop !66

146:                                              ; preds = %72
  store i16 0, ptr %69, align 2, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #14
  %147 = load i16, ptr %4, align 16, !tbaa !47
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds i16, ptr %3, i64 4095
  %151 = call fastcc i32 @glob2(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %150, ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %5)
  br label %152

152:                                              ; preds = %146, %149
  %153 = phi i32 [ %151, %149 ], [ 0, %146 ]
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #14
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  store i32 %65, ptr %64, align 4, !tbaa !43
  br label %189

156:                                              ; preds = %152
  %157 = load i32, ptr %1, align 8, !tbaa !35
  %158 = icmp eq i32 %157, %66
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load i32, ptr %64, align 4, !tbaa !43
  %161 = and i32 %160, 16
  %162 = icmp ne i32 %161, 0
  %163 = and i32 %160, 768
  %164 = icmp eq i32 %163, 512
  %165 = or i1 %162, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  store i32 %65, ptr %64, align 4, !tbaa !43
  %167 = call fastcc i32 @globextend(ptr noundef nonnull %63, ptr noundef nonnull %1, ptr noundef nonnull %5), !range !67
  br label %189

168:                                              ; preds = %159, %156
  %169 = load i32, ptr %64, align 4, !tbaa !43
  %170 = and i32 %169, 32
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %188

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 4
  %174 = load ptr, ptr %173, align 8, !tbaa !41
  %175 = icmp eq ptr %174, null
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 2
  %178 = load i32, ptr %177, align 8, !tbaa !42
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds ptr, ptr %174, i64 %179
  %181 = sext i32 %66 to i64
  %182 = getelementptr inbounds ptr, ptr %180, i64 %181
  %183 = sub nsw i32 %157, %66
  %184 = sext i32 %183 to i64
  %185 = and i32 %169, 12288
  %186 = icmp eq i32 %185, 0
  %187 = select i1 %186, ptr @compare, ptr @ci_compare
  call void @qsort(ptr noundef nonnull %182, i64 noundef %184, i64 noundef 8, ptr noundef nonnull %187) #14
  br label %188

188:                                              ; preds = %168, %176, %172
  store i32 %65, ptr %64, align 4, !tbaa !43
  br label %189

189:                                              ; preds = %188, %166, %155
  %190 = phi i32 [ %153, %155 ], [ %167, %166 ], [ 0, %188 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %4) #14
  ret i32 %190
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local void @bsd_globfree(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.glob_t, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8, !tbaa !35
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.glob_t, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %3, i64 %11
  br label %13

13:                                               ; preds = %8, %20
  %14 = phi i32 [ %16, %20 ], [ %6, %8 ]
  %15 = phi ptr [ %21, %20 ], [ %12, %8 ]
  %16 = add nsw i32 %14, -1
  %17 = load ptr, ptr %15, align 8, !tbaa !68
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void @Perl_safesysfree(ptr noundef nonnull %17) #14
  br label %20

20:                                               ; preds = %13, %19
  %21 = getelementptr inbounds ptr, ptr %15, i64 1
  %22 = icmp eq i32 %16, 0
  br i1 %22, label %23, label %13, !llvm.loop !69

23:                                               ; preds = %20, %5
  %24 = load ptr, ptr %2, align 8, !tbaa !41
  tail call void @Perl_safesysfree(ptr noundef %24) #14
  store ptr null, ptr %2, align 8, !tbaa !41
  br label %25

25:                                               ; preds = %23, %1
  ret void
}

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @globextend(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !34 {
  %4 = load i32, ptr %1, align 8, !tbaa !35
  %5 = add nsw i32 %4, 2
  %6 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = add nsw i32 %5, %7
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = icmp eq ptr %12, null
  %14 = shl nsw i64 %9, 6
  br i1 %13, label %17, label %15

15:                                               ; preds = %3
  %16 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %12, i64 noundef %14) #14
  store ptr %16, ptr %11, align 8, !tbaa !41
  br label %19

17:                                               ; preds = %3
  %18 = tail call ptr @Perl_safesysmalloc(i64 noundef %14) #14
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %16, %15 ], [ %18, %17 ]
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr %11, align 8, !tbaa !41
  %23 = icmp eq ptr %22, null
  br i1 %21, label %24, label %26

24:                                               ; preds = %19
  br i1 %23, label %102, label %25

25:                                               ; preds = %24
  tail call void @Perl_safesysfree(ptr noundef nonnull %22) #14
  store ptr null, ptr %11, align 8, !tbaa !41
  br label %102

26:                                               ; preds = %19
  br i1 %23, label %27, label %46

27:                                               ; preds = %26
  %28 = load i32, ptr %6, align 8, !tbaa !42
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = zext nneg i32 %28 to i64
  %32 = shl nuw nsw i64 %31, 3
  %33 = add nsw i64 %32, -8
  %34 = add nsw i32 %28, -1
  %35 = zext i32 %34 to i64
  %36 = shl nuw nsw i64 %35, 3
  %37 = sub nsw i64 %33, %36
  %38 = getelementptr i8, ptr %20, i64 %37
  tail call void @llvm.memset.p0.i64(ptr align 8 %38, i8 0, i64 %32, i1 false), !tbaa !68
  %39 = shl nuw nsw i64 %31, 3
  %40 = add nsw i64 %39, -8
  %41 = add nsw i32 %28, -1
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 %42, 3
  %44 = sub nsw i64 %40, %43
  %45 = getelementptr i8, ptr %20, i64 %44
  br label %46

46:                                               ; preds = %30, %27, %26
  %47 = phi ptr [ %20, %27 ], [ %20, %26 ], [ %45, %30 ]
  store ptr %47, ptr %11, align 8, !tbaa !41
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi ptr [ %0, %46 ], [ %50, %48 ]
  %50 = getelementptr inbounds i16, ptr %49, i64 1
  %51 = load i16, ptr %49, align 2, !tbaa !47
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %48, !llvm.loop !70

53:                                               ; preds = %48
  %54 = ptrtoint ptr %50 to i64
  %55 = ptrtoint ptr %0 to i64
  %56 = sub i64 %54, %55
  %57 = ashr exact i64 %56, 1
  %58 = load i64, ptr %2, align 8, !tbaa !60
  %59 = add i64 %58, %57
  store i64 %59, ptr %2, align 8, !tbaa !60
  %60 = tail call ptr @Perl_safesysmalloc(i64 noundef %57) #14
  %61 = icmp eq ptr %60, null
  br i1 %61, label %83, label %62

62:                                               ; preds = %53, %67
  %63 = phi ptr [ %69, %67 ], [ %0, %53 ]
  %64 = phi ptr [ %72, %67 ], [ %60, %53 ]
  %65 = phi i64 [ %68, %67 ], [ %57, %53 ]
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = add i64 %65, -1
  %69 = getelementptr inbounds i16, ptr %63, i64 1
  %70 = load i16, ptr %63, align 2, !tbaa !47
  %71 = trunc i16 %70 to i8
  %72 = getelementptr inbounds i8, ptr %64, i64 1
  store i8 %71, ptr %64, align 1, !tbaa !46
  %73 = icmp eq i8 %71, 0
  br i1 %73, label %74, label %62, !llvm.loop !71

74:                                               ; preds = %67
  br i1 %66, label %75, label %76

75:                                               ; preds = %62, %74
  tail call void @Perl_safesysfree(ptr noundef nonnull %60) #14
  br label %102

76:                                               ; preds = %74
  %77 = load i32, ptr %6, align 8, !tbaa !42
  %78 = load i32, ptr %1, align 8, !tbaa !35
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %1, align 8, !tbaa !35
  %80 = add nsw i32 %78, %77
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %47, i64 %81
  store ptr %60, ptr %82, align 8, !tbaa !68
  br label %83

83:                                               ; preds = %76, %53
  %84 = load i32, ptr %6, align 8, !tbaa !42
  %85 = load i32, ptr %1, align 8, !tbaa !35
  %86 = add nsw i32 %85, %84
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %47, i64 %87
  store ptr null, ptr %88, align 8, !tbaa !68
  %89 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !43
  %91 = and i32 %90, 16384
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %83
  %94 = load i64, ptr %2, align 8, !tbaa !60
  %95 = add i64 %94, %10
  %96 = tail call i64 @sysconf(i32 noundef 0) #14
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %100, label %98

98:                                               ; preds = %93
  %99 = tail call ptr @__errno_location() #15
  store i32 0, ptr %99, align 4, !tbaa !72
  br label %102

100:                                              ; preds = %93, %83
  %101 = sext i1 %61 to i32
  br label %102

102:                                              ; preds = %24, %25, %100, %98, %75
  %103 = phi i32 [ -1, %75 ], [ -1, %98 ], [ %101, %100 ], [ -1, %25 ], [ -1, %24 ]
  ret i32 %103
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @ci_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !68
  %4 = load ptr, ptr %1, align 8, !tbaa !68
  %5 = load i8, ptr %3, align 1, !tbaa !46
  %6 = sext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %2, %34
  %9 = phi i32 [ %38, %34 ], [ %6, %2 ]
  %10 = phi i8 [ %37, %34 ], [ %5, %2 ]
  %11 = phi ptr [ %36, %34 ], [ %4, %2 ]
  %12 = phi ptr [ %35, %34 ], [ %3, %2 ]
  %13 = load i8, ptr %11, align 1, !tbaa !46
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %8
  %16 = zext i8 %10 to i64
  %17 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !72
  %19 = and i32 %18, 16400
  %20 = icmp eq i32 %19, 16400
  %21 = add i8 %10, 32
  %22 = zext i8 %21 to i32
  %23 = select i1 %20, i32 %22, i32 %9
  %24 = zext i8 %13 to i64
  %25 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !72
  %27 = and i32 %26, 16400
  %28 = icmp eq i32 %27, 16400
  %29 = add i8 %13, 32
  %30 = zext i8 %29 to i32
  %31 = sext i8 %13 to i32
  %32 = select i1 %28, i32 %30, i32 %31
  %33 = icmp eq i32 %23, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %15
  %35 = getelementptr inbounds i8, ptr %12, i64 1
  %36 = getelementptr inbounds i8, ptr %11, i64 1
  %37 = load i8, ptr %35, align 1, !tbaa !46
  %38 = sext i8 %37 to i32
  %39 = icmp eq i8 %37, 0
  br i1 %39, label %40, label %8, !llvm.loop !73

40:                                               ; preds = %8, %15, %34, %2
  %41 = phi ptr [ %4, %2 ], [ %11, %8 ], [ %11, %15 ], [ %36, %34 ]
  %42 = phi i8 [ %5, %2 ], [ %10, %8 ], [ %10, %15 ], [ %37, %34 ]
  %43 = phi i32 [ %6, %2 ], [ %9, %8 ], [ %9, %15 ], [ %38, %34 ]
  %44 = zext i8 %42 to i64
  %45 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !72
  %47 = and i32 %46, 16400
  %48 = icmp eq i32 %47, 16400
  %49 = add i8 %42, 32
  %50 = zext i8 %49 to i32
  %51 = select i1 %48, i32 %50, i32 %43
  %52 = load i8, ptr %41, align 1, !tbaa !46
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !72
  %56 = and i32 %55, 16400
  %57 = icmp eq i32 %56, 16400
  %58 = add i8 %52, 32
  %59 = zext i8 %58 to i32
  %60 = sext i8 %52 to i32
  %61 = select i1 %57, i32 %59, i32 %60
  %62 = sub nsw i32 %51, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %40
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #16
  br label %66

66:                                               ; preds = %40, %64
  %67 = phi i32 [ %65, %64 ], [ %62, %40 ]
  ret i32 %67
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !68
  %4 = load ptr, ptr %1, align 8, !tbaa !68
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #16
  ret i32 %5
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @glob2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #0 !prof !34 {
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %9) #14
  %10 = load i16, ptr %3, align 2, !tbaa !47
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %20, label %17

12:                                               ; preds = %101, %92
  %13 = phi ptr [ %79, %92 ], [ %102, %101 ]
  %14 = phi ptr [ %80, %92 ], [ %99, %101 ]
  %15 = load i16, ptr %13, align 2, !tbaa !47
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %20, label %17, !llvm.loop !74

17:                                               ; preds = %6, %12
  %18 = phi ptr [ %14, %12 ], [ %1, %6 ]
  %19 = phi ptr [ %13, %12 ], [ %3, %6 ]
  br label %78

20:                                               ; preds = %12, %6
  %21 = phi ptr [ %1, %6 ], [ %14, %12 ]
  store i16 0, ptr %21, align 2, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #14
  br label %22

22:                                               ; preds = %27, %20
  %23 = phi ptr [ %0, %20 ], [ %29, %27 ]
  %24 = phi ptr [ %8, %20 ], [ %32, %27 ]
  %25 = phi i64 [ 4096, %20 ], [ %28, %27 ]
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %22
  %28 = add nsw i64 %25, -1
  %29 = getelementptr inbounds i16, ptr %23, i64 1
  %30 = load i16, ptr %23, align 2, !tbaa !47
  %31 = trunc i16 %30 to i8
  %32 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %31, ptr %24, align 1, !tbaa !46
  %33 = icmp eq i8 %31, 0
  br i1 %33, label %34, label %22, !llvm.loop !71

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.glob_t, ptr %4, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !43
  %37 = and i32 %36, 64
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.glob_t, ptr %4, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !75
  %42 = call i32 %41(ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  br label %45

43:                                               ; preds = %34
  %44 = call i32 @stat64(ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  br label %45

45:                                               ; preds = %22, %39, %43
  %46 = phi i32 [ %42, %39 ], [ %44, %43 ], [ -1, %22 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #14
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %200

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.glob_t, ptr %4, i64 0, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !43
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds i16, ptr %21, i64 -1
  %55 = load i16, ptr %54, align 2, !tbaa !47
  %56 = icmp eq i16 %55, 47
  br i1 %56, label %73, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.stat, ptr %9, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !76
  %60 = trunc i32 %59 to i16
  %61 = and i16 %60, -4096
  switch i16 %61, label %73 [
    i16 16384, label %69
    i16 -24576, label %62
  ]

62:                                               ; preds = %57
  %63 = call fastcc i32 @g_stat(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %4)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i32, ptr %58, align 8, !tbaa !76
  %67 = and i32 %66, 61440
  %68 = icmp eq i32 %67, 16384
  br i1 %68, label %69, label %73

69:                                               ; preds = %57, %65
  %70 = getelementptr inbounds i16, ptr %21, i64 1
  %71 = icmp ugt ptr %70, %2
  br i1 %71, label %200, label %72

72:                                               ; preds = %69
  store i16 47, ptr %21, align 2, !tbaa !47
  store i16 0, ptr %70, align 2, !tbaa !47
  br label %73

73:                                               ; preds = %65, %57, %72, %62, %53, %48
  %74 = getelementptr inbounds %struct.glob_t, ptr %4, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !45
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %74, align 4, !tbaa !45
  %77 = call fastcc i32 @globextend(ptr noundef %0, ptr noundef %4, ptr noundef %5), !range !67
  br label %200

78:                                               ; preds = %17, %86
  %79 = phi ptr [ %89, %86 ], [ %19, %17 ]
  %80 = phi ptr [ %84, %86 ], [ %18, %17 ]
  %81 = phi i32 [ %88, %86 ], [ 0, %17 ]
  %82 = load i16, ptr %79, align 2, !tbaa !47
  switch i16 %82, label %83 [
    i16 0, label %90
    i16 47, label %90
  ]

83:                                               ; preds = %78
  %84 = getelementptr inbounds i16, ptr %80, i64 1
  %85 = icmp ugt ptr %84, %2
  br i1 %85, label %200, label %86

86:                                               ; preds = %83
  %87 = icmp sgt i16 %82, -1
  %88 = select i1 %87, i32 %81, i32 1
  %89 = getelementptr inbounds i16, ptr %79, i64 1
  store i16 %82, ptr %80, align 2, !tbaa !47
  br label %78, !llvm.loop !79

90:                                               ; preds = %78, %78
  %91 = icmp eq i32 %81, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %90
  %93 = load i16, ptr %79, align 2, !tbaa !47
  %94 = icmp eq i16 %93, 47
  br i1 %94, label %95, label %12

95:                                               ; preds = %92, %101
  %96 = phi i16 [ %103, %101 ], [ %93, %92 ]
  %97 = phi ptr [ %99, %101 ], [ %80, %92 ]
  %98 = phi ptr [ %102, %101 ], [ %79, %92 ]
  %99 = getelementptr inbounds i16, ptr %97, i64 1
  %100 = icmp ugt ptr %99, %2
  br i1 %100, label %200, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds i16, ptr %98, i64 1
  store i16 %96, ptr %97, align 2, !tbaa !47
  %103 = load i16, ptr %102, align 2, !tbaa !47
  %104 = icmp eq i16 %103, 47
  br i1 %104, label %95, label %12, !llvm.loop !80

105:                                              ; preds = %90
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #14
  %106 = icmp ugt ptr %18, %2
  br i1 %106, label %198, label %107

107:                                              ; preds = %105
  store i16 0, ptr %18, align 2, !tbaa !47
  %108 = tail call ptr @__errno_location() #15
  store i32 0, ptr %108, align 4, !tbaa !72
  %109 = tail call fastcc ptr @g_opendir(ptr noundef %0, ptr noundef %4)
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %137

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.glob_t, ptr %4, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !44
  %114 = icmp eq ptr %113, null
  br i1 %114, label %136, label %115

115:                                              ; preds = %111, %120
  %116 = phi ptr [ %122, %120 ], [ %0, %111 ]
  %117 = phi ptr [ %125, %120 ], [ %7, %111 ]
  %118 = phi i64 [ %121, %120 ], [ 4096, %111 ]
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %198, label %120

120:                                              ; preds = %115
  %121 = add nsw i64 %118, -1
  %122 = getelementptr inbounds i16, ptr %116, i64 1
  %123 = load i16, ptr %116, align 2, !tbaa !47
  %124 = trunc i16 %123 to i8
  %125 = getelementptr inbounds i8, ptr %117, i64 1
  store i8 %124, ptr %117, align 1, !tbaa !46
  %126 = icmp eq i8 %124, 0
  br i1 %126, label %127, label %115, !llvm.loop !71

127:                                              ; preds = %120
  %128 = load i32, ptr %108, align 4, !tbaa !72
  %129 = call i32 %113(ptr noundef nonnull %7, i32 noundef %128) #14
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %198

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.glob_t, ptr %4, i64 0, i32 3
  %133 = load i32, ptr %132, align 4, !tbaa !43
  %134 = and i32 %133, 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %198

136:                                              ; preds = %131, %111
  br label %198

137:                                              ; preds = %107
  %138 = getelementptr inbounds %struct.glob_t, ptr %4, i64 0, i32 3
  %139 = load i32, ptr %138, align 4, !tbaa !43
  %140 = lshr i32 %139, 12
  %141 = and i32 %140, 1
  %142 = and i32 %139, 64
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.glob_t, ptr %4, i64 0, i32 7
  %146 = load ptr, ptr %145, align 8, !tbaa !81
  br label %147

147:                                              ; preds = %144, %137
  %148 = phi ptr [ %146, %144 ], [ @readdir64, %137 ]
  br label %149

149:                                              ; preds = %184, %147
  %150 = phi i32 [ 0, %147 ], [ %185, %184 ]
  %151 = tail call ptr %148(ptr noundef nonnull %109) #14
  %152 = icmp eq ptr %151, null
  br i1 %152, label %188, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.dirent, ptr %151, i64 0, i32 4
  %155 = load i8, ptr %154, align 1, !tbaa !46
  %156 = icmp eq i8 %155, 46
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i16, ptr %19, align 2, !tbaa !47
  %159 = icmp eq i16 %158, 46
  br i1 %159, label %160, label %184, !llvm.loop !82

160:                                              ; preds = %157, %153
  br label %161

161:                                              ; preds = %160, %165
  %162 = phi ptr [ %166, %165 ], [ %154, %160 ]
  %163 = phi ptr [ %169, %165 ], [ %18, %160 ]
  %164 = icmp ult ptr %163, %2
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = getelementptr inbounds i8, ptr %162, i64 1
  %167 = load i8, ptr %162, align 1, !tbaa !46
  %168 = zext i8 %167 to i16
  %169 = getelementptr inbounds i16, ptr %163, i64 1
  store i16 %168, ptr %163, align 2, !tbaa !47
  %170 = icmp eq i8 %167, 0
  br i1 %170, label %171, label %161, !llvm.loop !83

171:                                              ; preds = %165, %161
  %172 = phi ptr [ %163, %161 ], [ %169, %165 ]
  %173 = icmp ult ptr %172, %2
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  store i16 0, ptr %172, align 2, !tbaa !47
  br label %184

175:                                              ; preds = %171
  %176 = tail call fastcc i32 @match(ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %79, i32 noundef %141), !range !84
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store i16 0, ptr %18, align 2, !tbaa !47
  br label %184, !llvm.loop !82

179:                                              ; preds = %175
  %180 = getelementptr inbounds i16, ptr %172, i64 -1
  %181 = tail call fastcc i32 @glob2(ptr noundef %0, ptr noundef nonnull %180, ptr noundef nonnull %2, ptr noundef nonnull %79, ptr noundef %4, ptr noundef %5)
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i32 0, i32 3
  br label %184

184:                                              ; preds = %179, %178, %174, %157
  %185 = phi i32 [ 1, %174 ], [ %150, %178 ], [ %150, %157 ], [ %181, %179 ]
  %186 = phi i32 [ 3, %174 ], [ 2, %178 ], [ 2, %157 ], [ %183, %179 ]
  %187 = icmp eq i32 %186, 3
  br i1 %187, label %188, label %149

188:                                              ; preds = %184, %149
  %189 = phi i32 [ %150, %149 ], [ %185, %184 ]
  %190 = load i32, ptr %138, align 4, !tbaa !43
  %191 = and i32 %190, 64
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.glob_t, ptr %4, i64 0, i32 6
  %195 = load ptr, ptr %194, align 8, !tbaa !85
  tail call void %195(ptr noundef nonnull %109) #14
  br label %198

196:                                              ; preds = %188
  %197 = tail call i32 @closedir(ptr noundef nonnull %109)
  br label %198

198:                                              ; preds = %115, %131, %105, %127, %136, %193, %196
  %199 = phi i32 [ 0, %136 ], [ 1, %105 ], [ -2, %127 ], [ %189, %196 ], [ %189, %193 ], [ -2, %131 ], [ -2, %115 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #14
  br label %200

200:                                              ; preds = %83, %95, %69, %45, %198, %73
  %201 = phi i32 [ %77, %73 ], [ %199, %198 ], [ 0, %45 ], [ 1, %69 ], [ 1, %95 ], [ 1, %83 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #14
  ret i32 %201
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @g_stat(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !34 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #14
  br label %5

5:                                                ; preds = %10, %3
  %6 = phi ptr [ %0, %3 ], [ %12, %10 ]
  %7 = phi ptr [ %4, %3 ], [ %15, %10 ]
  %8 = phi i64 [ 4096, %3 ], [ %11, %10 ]
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %5
  %11 = add nsw i64 %8, -1
  %12 = getelementptr inbounds i16, ptr %6, i64 1
  %13 = load i16, ptr %6, align 2, !tbaa !47
  %14 = trunc i16 %13 to i8
  %15 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %14, ptr %7, align 1, !tbaa !46
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %17, label %5, !llvm.loop !71

17:                                               ; preds = %10
  br i1 %9, label %29, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.glob_t, ptr %2, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = and i32 %20, 64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.glob_t, ptr %2, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  %26 = call i32 %25(ptr noundef nonnull %4, ptr noundef %1) #14
  br label %29

27:                                               ; preds = %18
  %28 = call i32 @stat64(ptr noundef nonnull %4, ptr noundef %1) #14
  br label %29

29:                                               ; preds = %5, %17, %27, %23
  %30 = phi i32 [ %26, %23 ], [ %28, %27 ], [ -1, %17 ], [ -1, %5 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #14
  ret i32 %30
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @g_opendir(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #14
  %4 = load i16, ptr %0, align 2, !tbaa !47
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = call i64 @Perl_my_strlcpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i64 noundef 4096) #14
  br label %21

8:                                                ; preds = %2, %13
  %9 = phi ptr [ %15, %13 ], [ %0, %2 ]
  %10 = phi ptr [ %18, %13 ], [ %3, %2 ]
  %11 = phi i64 [ %14, %13 ], [ 4096, %2 ]
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %8
  %14 = add nsw i64 %11, -1
  %15 = getelementptr inbounds i16, ptr %9, i64 1
  %16 = load i16, ptr %9, align 2, !tbaa !47
  %17 = trunc i16 %16 to i8
  %18 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %17, ptr %10, align 1, !tbaa !46
  %19 = icmp eq i8 %17, 0
  br i1 %19, label %20, label %8, !llvm.loop !71

20:                                               ; preds = %13
  br i1 %12, label %32, label %21

21:                                               ; preds = %20, %6
  %22 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !43
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.glob_t, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  %29 = call ptr %28(ptr noundef nonnull %3) #14
  br label %32

30:                                               ; preds = %21
  %31 = call ptr @opendir(ptr noundef nonnull %3)
  br label %32

32:                                               ; preds = %8, %20, %30, %26
  %33 = phi ptr [ %29, %26 ], [ %31, %30 ], [ null, %20 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #14
  ret ptr %33
}

declare ptr @readdir64(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @match(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readnone %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %169

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  %8 = icmp eq i32 %3, 0
  %9 = icmp eq i32 %3, 0
  br label %10

10:                                               ; preds = %6, %165
  %11 = phi ptr [ %0, %6 ], [ %167, %165 ]
  %12 = phi ptr [ %1, %6 ], [ %166, %165 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %12, align 2, !tbaa !47
  %15 = zext i16 %14 to i32
  switch i16 %14, label %140 [
    i16 -32726, label %16
    i16 -32705, label %26
    i16 -32677, label %29
  ]

16:                                               ; preds = %10
  %17 = icmp eq ptr %13, %2
  br i1 %17, label %174, label %18

18:                                               ; preds = %16, %22
  %19 = phi ptr [ %23, %22 ], [ %11, %16 ]
  %20 = tail call fastcc i32 @match(ptr noundef %19, ptr noundef nonnull %13, ptr noundef nonnull %2, i32 noundef %3), !range !84
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %174

22:                                               ; preds = %18
  %23 = getelementptr inbounds i16, ptr %19, i64 1
  %24 = load i16, ptr %19, align 2, !tbaa !47
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %174, label %18, !llvm.loop !88

26:                                               ; preds = %10
  %27 = load i16, ptr %11, align 2, !tbaa !47
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %174, label %165

29:                                               ; preds = %10
  %30 = load i16, ptr %11, align 2, !tbaa !47
  %31 = zext i16 %30 to i32
  %32 = icmp eq i16 %30, 0
  br i1 %32, label %174, label %33

33:                                               ; preds = %29
  %34 = load i16, ptr %13, align 2, !tbaa !47
  %35 = icmp eq i16 %34, -32735
  %36 = zext i1 %35 to i32
  %37 = getelementptr inbounds i16, ptr %12, i64 2
  %38 = select i1 %35, ptr %37, ptr %13
  %39 = getelementptr inbounds i16, ptr %38, i64 1
  %40 = load i16, ptr %38, align 2, !tbaa !47
  %41 = icmp eq i16 %40, -32675
  br i1 %41, label %136, label %42

42:                                               ; preds = %33
  %43 = icmp ult i16 %30, 256
  %44 = zext nneg i16 %30 to i64
  %45 = icmp ult i16 %30, 256
  %46 = zext nneg i16 %30 to i64
  %47 = icmp ult i16 %30, 256
  %48 = zext nneg i16 %30 to i64
  br label %49

49:                                               ; preds = %42, %130
  %50 = phi i16 [ %40, %42 ], [ %134, %130 ]
  %51 = phi ptr [ %39, %42 ], [ %133, %130 ]
  %52 = phi ptr [ %38, %42 ], [ %132, %130 ]
  %53 = phi i32 [ 0, %42 ], [ %131, %130 ]
  %54 = zext i16 %50 to i32
  %55 = load i16, ptr %51, align 2, !tbaa !47
  %56 = icmp eq i16 %55, -32723
  br i1 %56, label %57, label %108

57:                                               ; preds = %49
  br i1 %8, label %98, label %58

58:                                               ; preds = %57
  %59 = icmp ult i16 %50, 256
  br i1 %59, label %60, label %66

60:                                               ; preds = %58
  %61 = tail call ptr @__ctype_tolower_loc() #15
  %62 = load ptr, ptr %61, align 8, !tbaa !68
  %63 = zext nneg i16 %50 to i64
  %64 = getelementptr inbounds i32, ptr %62, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !72
  br label %66

66:                                               ; preds = %58, %60
  %67 = phi i32 [ %65, %60 ], [ %54, %58 ]
  br i1 %45, label %68, label %73

68:                                               ; preds = %66
  %69 = tail call ptr @__ctype_tolower_loc() #15
  %70 = load ptr, ptr %69, align 8, !tbaa !68
  %71 = getelementptr inbounds i32, ptr %70, i64 %46
  %72 = load i32, ptr %71, align 4, !tbaa !72
  br label %73

73:                                               ; preds = %68, %66
  %74 = phi i32 [ %72, %68 ], [ %31, %66 ]
  %75 = icmp sgt i32 %67, %74
  br i1 %75, label %105, label %76

76:                                               ; preds = %73
  br i1 %47, label %77, label %82

77:                                               ; preds = %76
  %78 = tail call ptr @__ctype_tolower_loc() #15
  %79 = load ptr, ptr %78, align 8, !tbaa !68
  %80 = getelementptr inbounds i32, ptr %79, i64 %48
  %81 = load i32, ptr %80, align 4, !tbaa !72
  br label %82

82:                                               ; preds = %77, %76
  %83 = phi i32 [ %81, %77 ], [ %31, %76 ]
  %84 = getelementptr inbounds i16, ptr %52, i64 2
  %85 = load i16, ptr %84, align 2, !tbaa !47
  %86 = zext i16 %85 to i32
  %87 = icmp ult i16 %85, 256
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = tail call ptr @__ctype_tolower_loc() #15
  %90 = load ptr, ptr %89, align 8, !tbaa !68
  %91 = zext nneg i16 %85 to i64
  %92 = getelementptr inbounds i32, ptr %90, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !72
  br label %94

94:                                               ; preds = %88, %82
  %95 = phi i32 [ %93, %88 ], [ %86, %82 ]
  %96 = icmp sgt i32 %83, %95
  %97 = select i1 %96, i32 %53, i32 1
  br label %105

98:                                               ; preds = %57
  %99 = icmp ugt i16 %50, %30
  br i1 %99, label %105, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds i16, ptr %52, i64 2
  %102 = load i16, ptr %101, align 2, !tbaa !47
  %103 = icmp ugt i16 %30, %102
  %104 = select i1 %103, i32 %53, i32 1
  br label %105

105:                                              ; preds = %100, %94, %98, %73
  %106 = phi i32 [ %53, %73 ], [ %53, %98 ], [ %97, %94 ], [ %104, %100 ]
  %107 = getelementptr inbounds i16, ptr %52, i64 3
  br label %130

108:                                              ; preds = %49
  br i1 %7, label %127, label %109

109:                                              ; preds = %108
  %110 = icmp ult i16 %50, 256
  br i1 %110, label %111, label %117

111:                                              ; preds = %109
  %112 = tail call ptr @__ctype_tolower_loc() #15
  %113 = load ptr, ptr %112, align 8, !tbaa !68
  %114 = zext nneg i16 %50 to i64
  %115 = getelementptr inbounds i32, ptr %113, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !72
  br label %117

117:                                              ; preds = %109, %111
  %118 = phi i32 [ %116, %111 ], [ %54, %109 ]
  br i1 %43, label %119, label %124

119:                                              ; preds = %117
  %120 = tail call ptr @__ctype_tolower_loc() #15
  %121 = load ptr, ptr %120, align 8, !tbaa !68
  %122 = getelementptr inbounds i32, ptr %121, i64 %44
  %123 = load i32, ptr %122, align 4, !tbaa !72
  br label %124

124:                                              ; preds = %119, %117
  %125 = phi i32 [ %123, %119 ], [ %31, %117 ]
  %126 = icmp eq i32 %118, %125
  br i1 %126, label %129, label %130

127:                                              ; preds = %108
  %128 = icmp eq i16 %50, %30
  br i1 %128, label %129, label %130

129:                                              ; preds = %127, %124
  br label %130

130:                                              ; preds = %127, %124, %129, %105
  %131 = phi i32 [ %106, %105 ], [ 1, %129 ], [ %53, %124 ], [ %53, %127 ]
  %132 = phi ptr [ %107, %105 ], [ %51, %129 ], [ %51, %124 ], [ %51, %127 ]
  %133 = getelementptr inbounds i16, ptr %132, i64 1
  %134 = load i16, ptr %132, align 2, !tbaa !47
  %135 = icmp eq i16 %134, -32675
  br i1 %135, label %136, label %49, !llvm.loop !89

136:                                              ; preds = %130, %33
  %137 = phi i32 [ 0, %33 ], [ %131, %130 ]
  %138 = phi ptr [ %39, %33 ], [ %133, %130 ]
  %139 = icmp eq i32 %137, %36
  br i1 %139, label %174, label %165

140:                                              ; preds = %10
  %141 = load i16, ptr %11, align 2, !tbaa !47
  br i1 %9, label %163, label %142

142:                                              ; preds = %140
  %143 = zext i16 %141 to i32
  %144 = icmp ult i16 %141, 256
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = tail call ptr @__ctype_tolower_loc() #15
  %147 = load ptr, ptr %146, align 8, !tbaa !68
  %148 = zext nneg i16 %141 to i64
  %149 = getelementptr inbounds i32, ptr %147, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !72
  br label %151

151:                                              ; preds = %142, %145
  %152 = phi i32 [ %150, %145 ], [ %143, %142 ]
  %153 = icmp ult i16 %14, 256
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = tail call ptr @__ctype_tolower_loc() #15
  %156 = load ptr, ptr %155, align 8, !tbaa !68
  %157 = zext nneg i16 %14 to i64
  %158 = getelementptr inbounds i32, ptr %156, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !72
  br label %160

160:                                              ; preds = %154, %151
  %161 = phi i32 [ %159, %154 ], [ %15, %151 ]
  %162 = icmp eq i32 %152, %161
  br i1 %162, label %165, label %174

163:                                              ; preds = %140
  %164 = icmp eq i16 %141, %14
  br i1 %164, label %165, label %174

165:                                              ; preds = %160, %163, %136, %26
  %166 = phi ptr [ %13, %160 ], [ %13, %163 ], [ %138, %136 ], [ %13, %26 ]
  %167 = getelementptr inbounds i16, ptr %11, i64 1
  %168 = icmp ult ptr %166, %2
  br i1 %168, label %10, label %169, !llvm.loop !90

169:                                              ; preds = %165, %4
  %170 = phi ptr [ %0, %4 ], [ %167, %165 ]
  %171 = load i16, ptr %170, align 2, !tbaa !47
  %172 = icmp eq i16 %171, 0
  %173 = zext i1 %172 to i32
  br label %174

174:                                              ; preds = %163, %160, %136, %29, %26, %22, %18, %16, %169
  %175 = phi i32 [ %173, %169 ], [ 1, %16 ], [ 1, %18 ], [ 0, %22 ], [ 0, %26 ], [ 0, %29 ], [ 0, %136 ], [ 0, %160 ], [ 0, %163 ]
  ret i32 %175
}

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #7

declare i64 @Perl_my_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #8

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = !{!36, !40, i64 16}
!42 = !{!36, !37, i64 8}
!43 = !{!36, !37, i64 12}
!44 = !{!36, !40, i64 24}
!45 = !{!36, !37, i64 4}
!46 = !{!38, !38, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !38, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !{!52, !50, !51}
!53 = distinct !{!53, !50, !51}
!54 = distinct !{!54, !50, !51}
!55 = distinct !{!55, !50, !51}
!56 = distinct !{!56, !50, !51}
!57 = distinct !{!57, !50, !51}
!58 = distinct !{!58, !50, !51}
!59 = distinct !{!59, !50, !51}
!60 = !{!61, !61, i64 0}
!61 = !{!"long", !38, i64 0}
!62 = distinct !{!62, !50, !51}
!63 = distinct !{!63, !50, !51}
!64 = distinct !{!64, !50, !51}
!65 = distinct !{!65, !50, !51}
!66 = distinct !{!66, !50, !51}
!67 = !{i32 -1, i32 1}
!68 = !{!40, !40, i64 0}
!69 = distinct !{!69, !50, !51}
!70 = distinct !{!70, !50, !51}
!71 = distinct !{!71, !50, !51}
!72 = !{!37, !37, i64 0}
!73 = distinct !{!73, !50, !51}
!74 = distinct !{!74, !51}
!75 = !{!36, !40, i64 56}
!76 = !{!77, !37, i64 24}
!77 = !{!"stat", !61, i64 0, !61, i64 8, !61, i64 16, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !61, i64 40, !61, i64 48, !61, i64 56, !61, i64 64, !78, i64 72, !78, i64 88, !78, i64 104, !38, i64 120}
!78 = !{!"timespec", !61, i64 0, !61, i64 8}
!79 = distinct !{!79, !50, !51}
!80 = distinct !{!80, !50, !51}
!81 = !{!36, !40, i64 40}
!82 = distinct !{!82, !50, !51}
!83 = distinct !{!83, !50, !51}
!84 = !{i32 0, i32 2}
!85 = !{!36, !40, i64 32}
!86 = !{!36, !40, i64 64}
!87 = !{!36, !40, i64 48}
!88 = distinct !{!88, !50, !51}
!89 = distinct !{!89, !50, !51}
!90 = distinct !{!90, !50, !51}
