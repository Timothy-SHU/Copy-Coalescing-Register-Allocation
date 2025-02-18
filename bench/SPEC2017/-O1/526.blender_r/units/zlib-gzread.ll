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

; Function Attrs: nounwind uwtable
define dso_local i32 @gzread(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %147, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %147

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %11 = load i32, ptr %10, align 4, !tbaa !43
  switch i32 %11, label %147 [
    i32 0, label %12
    i32 -5, label %12
  ]

12:                                               ; preds = %9, %9
  %13 = icmp slt i32 %2, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @gz_error(ptr noundef %0, i32 noundef -3, ptr noundef nonnull @.str) #12
  br label %147

15:                                               ; preds = %12
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %147, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %17
  store i32 0, ptr %18, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %23 = load i64, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %25 = icmp eq i64 %23, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %28 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %29 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  br label %30

30:                                               ; preds = %55, %26
  %31 = phi i64 [ %23, %26 ], [ %56, %55 ]
  %32 = load i32, ptr %0, align 8, !tbaa !46
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = zext i32 %32 to i64
  %36 = icmp slt i64 %31, %35
  %37 = trunc i64 %31 to i32
  %38 = select i1 %36, i32 %37, i32 %32
  %39 = sub i32 %32, %38
  store i32 %39, ptr %0, align 8, !tbaa !46
  %40 = load ptr, ptr %27, align 8, !tbaa !47
  %41 = zext i32 %38 to i64
  %42 = getelementptr inbounds i8, ptr %40, i64 %41
  store ptr %42, ptr %27, align 8, !tbaa !47
  %43 = load i64, ptr %28, align 8, !tbaa !48
  %44 = add nsw i64 %43, %41
  store i64 %44, ptr %28, align 8, !tbaa !48
  %45 = sub nsw i64 %31, %41
  br label %55

46:                                               ; preds = %30
  %47 = load i32, ptr %29, align 8, !tbaa !49
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %24, align 8, !tbaa !50
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49, %46
  %53 = tail call fastcc i32 @gz_fetch(ptr noundef nonnull %0), !range !51
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %147, label %55

55:                                               ; preds = %52, %34
  %56 = phi i64 [ %45, %34 ], [ %31, %52 ]
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %30, !llvm.loop !52

58:                                               ; preds = %49, %55, %21, %17
  %59 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %60 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %61 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %62 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %63 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %64 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 4
  %65 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 3
  %66 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %67 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  br label %68

68:                                               ; preds = %142, %58
  %69 = phi i32 [ %2, %58 ], [ %143, %142 ]
  %70 = phi i32 [ 0, %58 ], [ %144, %142 ]
  %71 = phi ptr [ %1, %58 ], [ %145, %142 ]
  %72 = load i32, ptr %0, align 8, !tbaa !46
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %68
  %75 = tail call i32 @llvm.umin.i32(i32 %72, i32 %69)
  %76 = load ptr, ptr %59, align 8, !tbaa !47
  %77 = zext i32 %75 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %71, ptr align 1 %76, i64 %77, i1 false)
  %78 = load ptr, ptr %59, align 8, !tbaa !47
  %79 = getelementptr inbounds i8, ptr %78, i64 %77
  store ptr %79, ptr %59, align 8, !tbaa !47
  %80 = load i32, ptr %0, align 8, !tbaa !46
  %81 = sub i32 %80, %75
  br label %131

82:                                               ; preds = %68
  %83 = load i32, ptr %60, align 8, !tbaa !49
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %61, align 8, !tbaa !55
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 12
  store i32 1, ptr %89, align 4, !tbaa !56
  br label %147

90:                                               ; preds = %85, %82
  %91 = load i32, ptr %62, align 4, !tbaa !57
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load i32, ptr %63, align 8, !tbaa !58
  %95 = shl i32 %94, 1
  %96 = icmp ult i32 %69, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93, %90
  %98 = tail call fastcc i32 @gz_fetch(ptr noundef nonnull %0), !range !51
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %147, label %142

100:                                              ; preds = %93
  %101 = icmp eq i32 %91, 1
  br i1 %101, label %102, label %126

102:                                              ; preds = %100, %112
  %103 = phi i32 [ %113, %112 ], [ 0, %100 ]
  %104 = load i32, ptr %66, align 4, !tbaa !59
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds i8, ptr %71, i64 %105
  %107 = sub i32 %69, %103
  %108 = zext i32 %107 to i64
  %109 = tail call i64 @read(i32 noundef %104, ptr noundef %106, i64 noundef %108) #12
  %110 = trunc i64 %109 to i32
  %111 = icmp slt i32 %110, 1
  br i1 %111, label %115, label %112

112:                                              ; preds = %102
  %113 = add i32 %103, %110
  %114 = icmp ult i32 %113, %69
  br i1 %114, label %102, label %115, !llvm.loop !60

115:                                              ; preds = %112, %102
  %116 = phi i32 [ %103, %102 ], [ %113, %112 ]
  %117 = icmp slt i32 %110, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = tail call ptr @__errno_location() #13
  %120 = load i32, ptr %119, align 4, !tbaa !61
  %121 = tail call ptr @strerror(i32 noundef %120) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %121) #12
  br label %125

122:                                              ; preds = %115
  %123 = icmp eq i32 %110, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %122
  store i32 1, ptr %60, align 8, !tbaa !49
  br label %125

125:                                              ; preds = %118, %122, %124
  br i1 %117, label %147, label %134

126:                                              ; preds = %100
  store i32 %69, ptr %64, align 8, !tbaa !62
  store ptr %71, ptr %65, align 8, !tbaa !63
  %127 = tail call fastcc i32 @gz_decomp(ptr noundef nonnull %0), !range !51
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %147, label %129

129:                                              ; preds = %126
  %130 = load i32, ptr %0, align 8, !tbaa !46
  br label %131

131:                                              ; preds = %74, %129
  %132 = phi i32 [ 0, %129 ], [ %81, %74 ]
  %133 = phi i32 [ %130, %129 ], [ %75, %74 ]
  store i32 %132, ptr %0, align 8, !tbaa !46
  br label %134

134:                                              ; preds = %131, %125
  %135 = phi i32 [ %116, %125 ], [ %133, %131 ]
  %136 = sub i32 %69, %135
  %137 = zext i32 %135 to i64
  %138 = getelementptr inbounds i8, ptr %71, i64 %137
  %139 = add i32 %135, %70
  %140 = load i64, ptr %67, align 8, !tbaa !48
  %141 = add nsw i64 %140, %137
  store i64 %141, ptr %67, align 8, !tbaa !48
  br label %142

142:                                              ; preds = %97, %134
  %143 = phi i32 [ %136, %134 ], [ %69, %97 ]
  %144 = phi i32 [ %139, %134 ], [ %70, %97 ]
  %145 = phi ptr [ %138, %134 ], [ %71, %97 ]
  %146 = icmp eq i32 %143, 0
  br i1 %146, label %147, label %68, !llvm.loop !64

147:                                              ; preds = %52, %142, %126, %125, %97, %88, %15, %5, %9, %3, %14
  %148 = phi i32 [ -1, %14 ], [ -1, %3 ], [ -1, %9 ], [ -1, %5 ], [ 0, %15 ], [ %70, %88 ], [ -1, %97 ], [ -1, %125 ], [ -1, %126 ], [ %144, %142 ], [ -1, %52 ]
  ret i32 %148
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare hidden void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gz_fetch(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  %3 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 4
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 3
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  br label %9

9:                                                ; preds = %67, %1
  %10 = load i32, ptr %2, align 4, !tbaa !57
  switch i32 %10, label %58 [
    i32 0, label %11
    i32 1, label %17
    i32 2, label %52
  ]

11:                                               ; preds = %9
  %12 = tail call fastcc i32 @gz_look(ptr noundef %0), !range !51
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %68, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %2, align 4, !tbaa !57
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %68, label %58

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !58
  %22 = shl i32 %21, 1
  store i32 0, ptr %0, align 4, !tbaa !61
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  br label %24

24:                                               ; preds = %34, %17
  %25 = load i32, ptr %23, align 4, !tbaa !59
  %26 = load i32, ptr %0, align 4, !tbaa !61
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %19, i64 %27
  %29 = sub i32 %22, %26
  %30 = zext i32 %29 to i64
  %31 = tail call i64 @read(i32 noundef %25, ptr noundef %28, i64 noundef %30) #12
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %38, label %34

34:                                               ; preds = %24
  %35 = load i32, ptr %0, align 4, !tbaa !61
  %36 = add i32 %35, %32
  store i32 %36, ptr %0, align 4, !tbaa !61
  %37 = icmp ult i32 %36, %22
  br i1 %37, label %24, label %38, !llvm.loop !60

38:                                               ; preds = %34, %24
  %39 = icmp slt i32 %32, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = tail call ptr @__errno_location() #13
  %42 = load i32, ptr %41, align 4, !tbaa !61
  %43 = tail call ptr @strerror(i32 noundef %42) #12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %43) #12
  br label %48

44:                                               ; preds = %38
  %45 = icmp eq i32 %32, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  store i32 1, ptr %47, align 8, !tbaa !49
  br label %48

48:                                               ; preds = %40, %44, %46
  br i1 %39, label %68, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr %18, align 8, !tbaa !65
  %51 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !47
  br label %68

52:                                               ; preds = %9
  %53 = load i32, ptr %3, align 8, !tbaa !58
  %54 = shl i32 %53, 1
  store i32 %54, ptr %4, align 8, !tbaa !62
  %55 = load ptr, ptr %5, align 8, !tbaa !65
  store ptr %55, ptr %6, align 8, !tbaa !63
  %56 = tail call fastcc i32 @gz_decomp(ptr noundef %0), !range !51
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %68, label %58

58:                                               ; preds = %9, %14, %52
  %59 = load i32, ptr %0, align 8, !tbaa !46
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, ptr %7, align 8, !tbaa !49
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %8, align 8, !tbaa !55
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64, %61
  br label %9, !llvm.loop !66

68:                                               ; preds = %64, %58, %52, %14, %11, %48, %49
  %69 = phi i32 [ 0, %49 ], [ -1, %48 ], [ -1, %11 ], [ 0, %14 ], [ -1, %52 ], [ 0, %58 ], [ 0, %64 ]
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gz_decomp(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %3 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %6 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %8 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  br label %11

11:                                               ; preds = %68, %1
  %12 = phi i32 [ 0, %1 ], [ %60, %68 ]
  %13 = load i32, ptr %5, align 8, !tbaa !55
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %11
  %16 = load i32, ptr %6, align 4, !tbaa !43
  switch i32 %16, label %86 [
    i32 0, label %17
    i32 -5, label %17
  ]

17:                                               ; preds = %15, %15
  %18 = load i32, ptr %7, align 8, !tbaa !49
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %17
  %21 = load ptr, ptr %8, align 8, !tbaa !67
  %22 = load i32, ptr %5, align 8, !tbaa !55
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  %25 = load i32, ptr %9, align 8, !tbaa !58
  %26 = sub i32 %25, %22
  br label %27

27:                                               ; preds = %37, %20
  %28 = phi i32 [ 0, %20 ], [ %38, %37 ]
  %29 = load i32, ptr %10, align 4, !tbaa !59
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds i8, ptr %24, i64 %30
  %32 = sub i32 %26, %28
  %33 = zext i32 %32 to i64
  %34 = tail call i64 @read(i32 noundef %29, ptr noundef %31, i64 noundef %33) #12
  %35 = trunc i64 %34 to i32
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = add i32 %28, %35
  %39 = icmp ult i32 %38, %26
  br i1 %39, label %27, label %40, !llvm.loop !60

40:                                               ; preds = %37, %27
  %41 = phi i32 [ %28, %27 ], [ %38, %37 ]
  %42 = icmp slt i32 %35, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = tail call ptr @__errno_location() #13
  %45 = load i32, ptr %44, align 4, !tbaa !61
  %46 = tail call ptr @strerror(i32 noundef %45) #12
  tail call void @gz_error(ptr noundef %0, i32 noundef -1, ptr noundef %46) #12
  br label %50

47:                                               ; preds = %40
  %48 = icmp eq i32 %35, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  store i32 1, ptr %7, align 8, !tbaa !49
  br label %50

50:                                               ; preds = %43, %47, %49
  br i1 %42, label %86, label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %5, align 8, !tbaa !55
  %53 = add i32 %52, %41
  store i32 %53, ptr %5, align 8, !tbaa !55
  %54 = load ptr, ptr %8, align 8, !tbaa !67
  store ptr %54, ptr %2, align 8, !tbaa !68
  br label %55

55:                                               ; preds = %51, %17, %11
  %56 = load i32, ptr %5, align 8, !tbaa !55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  tail call void @gz_error(ptr noundef %0, i32 noundef -5, ptr noundef nonnull @.str.2) #12
  br label %73

59:                                               ; preds = %55
  %60 = tail call i32 @inflate(ptr noundef nonnull %2, i32 noundef 0) #12
  switch i32 %60, label %68 [
    i32 -2, label %61
    i32 2, label %61
    i32 -4, label %62
    i32 -3, label %63
  ]

61:                                               ; preds = %59, %59
  tail call void @gz_error(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.3) #12
  br label %86

62:                                               ; preds = %59
  tail call void @gz_error(ptr noundef %0, i32 noundef -4, ptr noundef nonnull @.str.4) #12
  br label %86

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !69
  %66 = icmp eq ptr %65, null
  %67 = select i1 %66, ptr @.str.5, ptr %65
  tail call void @gz_error(ptr noundef %0, i32 noundef -3, ptr noundef nonnull %67) #12
  br label %86

68:                                               ; preds = %59
  %69 = load i32, ptr %3, align 8, !tbaa !62
  %70 = icmp ne i32 %69, 0
  %71 = icmp ne i32 %60, 1
  %72 = and i1 %71, %70
  br i1 %72, label %11, label %73, !llvm.loop !70

73:                                               ; preds = %68, %58
  %74 = phi i32 [ %12, %58 ], [ %60, %68 ]
  %75 = load i32, ptr %3, align 8, !tbaa !62
  %76 = sub i32 %4, %75
  store i32 %76, ptr %0, align 8, !tbaa !46
  %77 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !63
  %79 = zext i32 %76 to i64
  %80 = sub nsw i64 0, %79
  %81 = getelementptr inbounds i8, ptr %78, i64 %80
  %82 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %81, ptr %82, align 8, !tbaa !47
  %83 = icmp eq i32 %74, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  store i32 0, ptr %85, align 4, !tbaa !57
  br label %86

86:                                               ; preds = %15, %50, %73, %84, %63, %62, %61
  %87 = phi i32 [ -1, %61 ], [ -1, %62 ], [ -1, %63 ], [ 0, %84 ], [ 0, %73 ], [ -1, %50 ], [ -1, %15 ]
  ret i32 %87
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
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
  %12 = load i32, ptr %0, align 8, !tbaa !46
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  %15 = add i32 %12, -1
  store i32 %15, ptr %0, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !48
  %18 = add nsw i64 %17, 1
  store i64 %18, ptr %16, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %21, ptr %19, align 8, !tbaa !47
  %22 = load i8, ptr %20, align 1, !tbaa !71
  %23 = zext i8 %22 to i32
  br label %30

24:                                               ; preds = %11
  %25 = call i32 @gzread(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1)
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

; Function Attrs: nounwind uwtable
define dso_local i32 @gzgetc(ptr noundef %0) local_unnamed_addr #0 {
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
  %12 = load i32, ptr %0, align 8, !tbaa !46
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  %15 = add i32 %12, -1
  store i32 %15, ptr %0, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !48
  %18 = add nsw i64 %17, 1
  store i64 %18, ptr %16, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %21, ptr %19, align 8, !tbaa !47
  %22 = load i8, ptr %20, align 1, !tbaa !71
  %23 = zext i8 %22 to i32
  br label %30

24:                                               ; preds = %11
  %25 = call i32 @gzread(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1)
  %26 = icmp slt i32 %25, 1
  %27 = load i8, ptr %2, align 1
  %28 = zext i8 %27 to i32
  %29 = select i1 %26, i32 -1, i32 %28
  br label %30

30:                                               ; preds = %1, %4, %8, %14, %24
  %31 = phi i32 [ %23, %14 ], [ %29, %24 ], [ -1, %1 ], [ -1, %8 ], [ -1, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %115, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %115

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !43
  switch i32 %10, label %115 [
    i32 0, label %11
    i32 -5, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %56, label %15

15:                                               ; preds = %11
  store i32 0, ptr %12, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 15
  %17 = load i64, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 19, i32 1
  %19 = icmp eq i64 %17, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 1
  %22 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 2
  %23 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 11
  br label %24

24:                                               ; preds = %49, %20
  %25 = phi i64 [ %17, %20 ], [ %50, %49 ]
  %26 = load i32, ptr %1, align 8, !tbaa !46
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = zext i32 %26 to i64
  %30 = icmp slt i64 %25, %29
  %31 = trunc i64 %25 to i32
  %32 = select i1 %30, i32 %31, i32 %26
  %33 = sub i32 %26, %32
  store i32 %33, ptr %1, align 8, !tbaa !46
  %34 = load ptr, ptr %21, align 8, !tbaa !47
  %35 = zext i32 %32 to i64
  %36 = getelementptr inbounds i8, ptr %34, i64 %35
  store ptr %36, ptr %21, align 8, !tbaa !47
  %37 = load i64, ptr %22, align 8, !tbaa !48
  %38 = add nsw i64 %37, %35
  store i64 %38, ptr %22, align 8, !tbaa !48
  %39 = sub nsw i64 %25, %35
  br label %49

40:                                               ; preds = %24
  %41 = load i32, ptr %23, align 8, !tbaa !49
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %18, align 8, !tbaa !50
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43, %40
  %47 = tail call fastcc i32 @gz_fetch(ptr noundef nonnull %1), !range !51
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %52, label %49

49:                                               ; preds = %46, %28
  %50 = phi i64 [ %39, %28 ], [ %25, %46 ]
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %24, !llvm.loop !52

52:                                               ; preds = %43, %46, %49, %15
  %53 = phi i1 [ false, %15 ], [ true, %46 ], [ false, %43 ], [ false, %49 ]
  %54 = icmp slt i32 %0, 0
  %55 = or i1 %54, %53
  br i1 %55, label %115, label %58

56:                                               ; preds = %11
  %57 = icmp slt i32 %0, 0
  br i1 %57, label %115, label %58

58:                                               ; preds = %52, %56
  %59 = load i32, ptr %1, align 8, !tbaa !46
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  store i32 1, ptr %1, align 8, !tbaa !46
  %62 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !65
  %64 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 4
  %65 = load i32, ptr %64, align 8, !tbaa !58
  %66 = shl i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %63, i64 %67
  %69 = getelementptr inbounds i8, ptr %68, i64 -1
  %70 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !47
  %71 = trunc i32 %0 to i8
  store i8 %71, ptr %69, align 1, !tbaa !71
  %72 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 2
  %73 = load i64, ptr %72, align 8, !tbaa !48
  %74 = add nsw i64 %73, -1
  store i64 %74, ptr %72, align 8, !tbaa !48
  %75 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 12
  store i32 0, ptr %75, align 4, !tbaa !56
  br label %115

76:                                               ; preds = %58
  %77 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 4
  %78 = load i32, ptr %77, align 8, !tbaa !58
  %79 = shl i32 %78, 1
  %80 = icmp eq i32 %59, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.1) #12
  br label %115

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !47
  %85 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !65
  %87 = icmp eq ptr %84, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = zext i32 %59 to i64
  %90 = getelementptr inbounds i8, ptr %86, i64 %89
  %91 = zext i32 %79 to i64
  %92 = getelementptr inbounds i8, ptr %86, i64 %91
  %93 = load ptr, ptr %85, align 8, !tbaa !65
  %94 = icmp ugt ptr %90, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %88, %95
  %96 = phi ptr [ %100, %95 ], [ %92, %88 ]
  %97 = phi ptr [ %98, %95 ], [ %90, %88 ]
  %98 = getelementptr inbounds i8, ptr %97, i64 -1
  %99 = load i8, ptr %98, align 1, !tbaa !71
  %100 = getelementptr inbounds i8, ptr %96, i64 -1
  store i8 %99, ptr %100, align 1, !tbaa !71
  %101 = load ptr, ptr %85, align 8, !tbaa !65
  %102 = icmp ugt ptr %98, %101
  br i1 %102, label %95, label %103, !llvm.loop !72

103:                                              ; preds = %95, %88
  %104 = phi ptr [ %92, %88 ], [ %100, %95 ]
  store ptr %104, ptr %83, align 8, !tbaa !47
  br label %105

105:                                              ; preds = %103, %82
  %106 = load i32, ptr %1, align 8, !tbaa !46
  %107 = add i32 %106, 1
  store i32 %107, ptr %1, align 8, !tbaa !46
  %108 = load ptr, ptr %83, align 8, !tbaa !47
  %109 = getelementptr inbounds i8, ptr %108, i64 -1
  store ptr %109, ptr %83, align 8, !tbaa !47
  %110 = trunc i32 %0 to i8
  store i8 %110, ptr %109, align 1, !tbaa !71
  %111 = getelementptr inbounds %struct.gzFile_s, ptr %1, i64 0, i32 2
  %112 = load i64, ptr %111, align 8, !tbaa !48
  %113 = add nsw i64 %112, -1
  store i64 %113, ptr %111, align 8, !tbaa !48
  %114 = getelementptr inbounds %struct.gz_state, ptr %1, i64 0, i32 12
  store i32 0, ptr %114, align 4, !tbaa !56
  br label %115

115:                                              ; preds = %56, %52, %4, %8, %2, %105, %81, %61
  %116 = phi i32 [ %0, %61 ], [ -1, %81 ], [ %0, %105 ], [ -1, %2 ], [ -1, %8 ], [ -1, %4 ], [ -1, %52 ], [ -1, %56 ]
  ret i32 %116
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gzgets(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp slt i32 %2, 1
  %8 = or i1 %6, %7
  br i1 %8, label %103, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %103

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %15 = load i32, ptr %14, align 4, !tbaa !43
  switch i32 %15, label %103 [
    i32 0, label %16
    i32 -5, label %16
  ]

16:                                               ; preds = %13, %13
  %17 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 16
  %18 = load i32, ptr %17, align 8, !tbaa !44
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %57, label %20

20:                                               ; preds = %16
  store i32 0, ptr %17, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 15
  %22 = load i64, ptr %21, align 8, !tbaa !45
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %24 = icmp eq i64 %22, 0
  br i1 %24, label %57, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  %28 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  br label %29

29:                                               ; preds = %54, %25
  %30 = phi i64 [ %22, %25 ], [ %55, %54 ]
  %31 = load i32, ptr %0, align 8, !tbaa !46
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = zext i32 %31 to i64
  %35 = icmp slt i64 %30, %34
  %36 = trunc i64 %30 to i32
  %37 = select i1 %35, i32 %36, i32 %31
  %38 = sub i32 %31, %37
  store i32 %38, ptr %0, align 8, !tbaa !46
  %39 = load ptr, ptr %26, align 8, !tbaa !47
  %40 = zext i32 %37 to i64
  %41 = getelementptr inbounds i8, ptr %39, i64 %40
  store ptr %41, ptr %26, align 8, !tbaa !47
  %42 = load i64, ptr %27, align 8, !tbaa !48
  %43 = add nsw i64 %42, %40
  store i64 %43, ptr %27, align 8, !tbaa !48
  %44 = sub nsw i64 %30, %40
  br label %54

45:                                               ; preds = %29
  %46 = load i32, ptr %28, align 8, !tbaa !49
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %23, align 8, !tbaa !50
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48, %45
  %52 = tail call fastcc i32 @gz_fetch(ptr noundef nonnull %0), !range !51
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %103, label %54

54:                                               ; preds = %51, %33
  %55 = phi i64 [ %44, %33 ], [ %30, %51 ]
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %29, !llvm.loop !52

57:                                               ; preds = %48, %54, %20, %16
  %58 = add nsw i32 %2, -1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %99, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  %62 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 2
  br label %63

63:                                               ; preds = %60, %76
  %64 = phi i32 [ %95, %76 ], [ %58, %60 ]
  %65 = phi ptr [ %96, %76 ], [ %1, %60 ]
  %66 = load i32, ptr %0, align 8, !tbaa !46
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = tail call fastcc i32 @gz_fetch(ptr noundef nonnull %0), !range !51
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %103, label %71

71:                                               ; preds = %68, %63
  %72 = load i32, ptr %0, align 8, !tbaa !46
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 12
  store i32 1, ptr %75, align 4, !tbaa !56
  br label %99

76:                                               ; preds = %71
  %77 = tail call i32 @llvm.umin.i32(i32 %72, i32 %64)
  %78 = load ptr, ptr %61, align 8, !tbaa !47
  %79 = zext i32 %77 to i64
  %80 = tail call ptr @memchr(ptr noundef %78, i32 noundef 10, i64 noundef %79) #14
  %81 = icmp eq ptr %80, null
  %82 = ptrtoint ptr %80 to i64
  %83 = ptrtoint ptr %78 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = add i32 %85, 1
  %87 = select i1 %81, i32 %77, i32 %86
  %88 = zext i32 %87 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 1 %78, i64 %88, i1 false)
  %89 = load i32, ptr %0, align 8, !tbaa !46
  %90 = sub i32 %89, %87
  store i32 %90, ptr %0, align 8, !tbaa !46
  %91 = load ptr, ptr %61, align 8, !tbaa !47
  %92 = getelementptr inbounds i8, ptr %91, i64 %88
  store ptr %92, ptr %61, align 8, !tbaa !47
  %93 = load i64, ptr %62, align 8, !tbaa !48
  %94 = add nsw i64 %93, %88
  store i64 %94, ptr %62, align 8, !tbaa !48
  %95 = sub i32 %64, %87
  %96 = getelementptr inbounds i8, ptr %65, i64 %88
  %97 = icmp ne i32 %95, 0
  %98 = and i1 %81, %97
  br i1 %98, label %63, label %99, !llvm.loop !73

99:                                               ; preds = %76, %74, %57
  %100 = phi ptr [ %65, %74 ], [ %1, %57 ], [ %96, %76 ]
  %101 = icmp eq ptr %100, %1
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i8 0, ptr %100, align 1, !tbaa !71
  br label %103

103:                                              ; preds = %51, %68, %99, %9, %13, %3, %102
  %104 = phi ptr [ %1, %102 ], [ null, %3 ], [ null, %13 ], [ null, %9 ], [ null, %99 ], [ null, %68 ], [ null, %51 ]
  ret ptr %104
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
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
  %9 = load i32, ptr %8, align 4, !tbaa !57
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8, !tbaa !46
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @gz_look(ptr noundef nonnull %0), !range !51
  br label %16

16:                                               ; preds = %14, %11, %7, %3
  %17 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !74
  br label %19

19:                                               ; preds = %1, %16
  %20 = phi i32 [ %18, %16 ], [ 0, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @gz_look(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %3 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !58
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !75
  %9 = zext i32 %8 to i64
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #15
  %11 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  store ptr %10, ptr %11, align 8, !tbaa !67
  %12 = shl i32 %8, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #15
  %15 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  store ptr %14, ptr %15, align 8, !tbaa !65
  %16 = icmp eq ptr %10, null
  %17 = icmp eq ptr %14, null
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  br i1 %17, label %21, label %20

20:                                               ; preds = %19
  tail call void @free(ptr noundef %14) #12
  br label %21

21:                                               ; preds = %20, %19
  br i1 %16, label %23, label %22

22:                                               ; preds = %21
  tail call void @free(ptr noundef %10) #12
  br label %23

23:                                               ; preds = %22, %21
  tail call void @gz_error(ptr noundef %0, i32 noundef -4, ptr noundef nonnull @.str.4) #12
  br label %122

24:                                               ; preds = %6
  store i32 %8, ptr %3, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 8
  %26 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  store i32 0, ptr %26, align 8, !tbaa !50
  store ptr null, ptr %2, align 8, !tbaa !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %27 = tail call i32 @inflateInit2_(ptr noundef nonnull %2, i32 noundef 31, ptr noundef nonnull @.str.6, i32 noundef 112) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %15, align 8, !tbaa !65
  tail call void @free(ptr noundef %30) #12
  %31 = load ptr, ptr %11, align 8, !tbaa !67
  tail call void @free(ptr noundef %31) #12
  store i32 0, ptr %3, align 8, !tbaa !58
  tail call void @gz_error(ptr noundef %0, i32 noundef -4, ptr noundef nonnull @.str.4) #12
  br label %122

32:                                               ; preds = %24, %1
  %33 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !55
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %90

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %38 = load i32, ptr %37, align 4, !tbaa !43
  switch i32 %38, label %122 [
    i32 0, label %39
    i32 -5, label %39
  ]

39:                                               ; preds = %36, %36
  %40 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  %41 = load i32, ptr %40, align 8, !tbaa !49
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %87

43:                                               ; preds = %39
  %44 = icmp eq i32 %34, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !67
  %48 = load ptr, ptr %2, align 8, !tbaa !68
  %49 = zext nneg i32 %34 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %47, ptr align 1 %48, i64 %49, i1 false)
  br label %50

50:                                               ; preds = %45, %43
  %51 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !67
  %53 = load i32, ptr %33, align 8, !tbaa !55
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %52, i64 %54
  %56 = load i32, ptr %3, align 8, !tbaa !58
  %57 = sub i32 %56, %53
  %58 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  br label %59

59:                                               ; preds = %69, %50
  %60 = phi i32 [ 0, %50 ], [ %70, %69 ]
  %61 = load i32, ptr %58, align 4, !tbaa !59
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds i8, ptr %55, i64 %62
  %64 = sub i32 %57, %60
  %65 = zext i32 %64 to i64
  %66 = tail call i64 @read(i32 noundef %61, ptr noundef %63, i64 noundef %65) #12
  %67 = trunc i64 %66 to i32
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %72, label %69

69:                                               ; preds = %59
  %70 = add i32 %60, %67
  %71 = icmp ult i32 %70, %57
  br i1 %71, label %59, label %72, !llvm.loop !60

72:                                               ; preds = %69, %59
  %73 = phi i32 [ %60, %59 ], [ %70, %69 ]
  %74 = icmp slt i32 %67, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = tail call ptr @__errno_location() #13
  %77 = load i32, ptr %76, align 4, !tbaa !61
  %78 = tail call ptr @strerror(i32 noundef %77) #12
  tail call void @gz_error(ptr noundef %0, i32 noundef -1, ptr noundef %78) #12
  br label %82

79:                                               ; preds = %72
  %80 = icmp eq i32 %67, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  store i32 1, ptr %40, align 8, !tbaa !49
  br label %82

82:                                               ; preds = %75, %79, %81
  br i1 %74, label %122, label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %33, align 8, !tbaa !55
  %85 = add i32 %84, %73
  store i32 %85, ptr %33, align 8, !tbaa !55
  %86 = load ptr, ptr %51, align 8, !tbaa !67
  store ptr %86, ptr %2, align 8, !tbaa !68
  br label %87

87:                                               ; preds = %83, %39
  %88 = load i32, ptr %33, align 8, !tbaa !55
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %122, label %90

90:                                               ; preds = %87, %32
  %91 = load i32, ptr %33, align 8, !tbaa !55
  %92 = icmp ugt i32 %91, 1
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load ptr, ptr %2, align 8, !tbaa !68
  %95 = load i8, ptr %94, align 1, !tbaa !71
  %96 = icmp eq i8 %95, 31
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = getelementptr inbounds i8, ptr %94, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !71
  %100 = icmp eq i8 %99, -117
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = tail call i32 @inflateReset(ptr noundef nonnull %2) #12
  %103 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  store i32 2, ptr %103, align 4, !tbaa !57
  %104 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  store i32 0, ptr %104, align 8, !tbaa !74
  br label %122

105:                                              ; preds = %97, %93, %90
  %106 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 8
  %107 = load i32, ptr %106, align 8, !tbaa !74
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  store i32 0, ptr %33, align 8, !tbaa !55
  %110 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 11
  store i32 1, ptr %110, align 8, !tbaa !49
  store i32 0, ptr %0, align 8, !tbaa !46
  br label %122

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %113 = load ptr, ptr %112, align 8, !tbaa !65
  %114 = getelementptr inbounds %struct.gzFile_s, ptr %0, i64 0, i32 1
  store ptr %113, ptr %114, align 8, !tbaa !47
  %115 = icmp eq i32 %91, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = load ptr, ptr %2, align 8, !tbaa !68
  %118 = zext i32 %91 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %113, ptr align 1 %117, i64 %118, i1 false)
  %119 = load i32, ptr %33, align 8, !tbaa !55
  store i32 %119, ptr %0, align 8, !tbaa !46
  store i32 0, ptr %33, align 8, !tbaa !55
  br label %120

120:                                              ; preds = %116, %111
  %121 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 9
  store i32 1, ptr %121, align 4, !tbaa !57
  store i32 1, ptr %106, align 8, !tbaa !74
  br label %122

122:                                              ; preds = %36, %82, %87, %120, %109, %101, %29, %23
  %123 = phi i32 [ -1, %23 ], [ -1, %29 ], [ 0, %101 ], [ 0, %109 ], [ 0, %120 ], [ 0, %87 ], [ -1, %82 ], [ -1, %36 ]
  ret i32 %123
}

; Function Attrs: nounwind uwtable
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
  %9 = load i32, ptr %8, align 8, !tbaa !58
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 19
  %13 = tail call i32 @inflateEnd(ptr noundef nonnull %12) #12
  %14 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  tail call void @free(ptr noundef %15) #12
  %16 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  tail call void @free(ptr noundef %17) #12
  br label %18

18:                                               ; preds = %11, %7
  %19 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 17
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = icmp eq i32 %20, -5
  %22 = select i1 %21, i32 -5, i32 0
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #12
  %23 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  tail call void @free(ptr noundef %24) #12
  %25 = getelementptr inbounds %struct.gz_state, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !59
  %27 = tail call i32 @close(i32 noundef %26) #12
  tail call void @free(ptr noundef %0) #12
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %22, i32 -1
  br label %30

30:                                               ; preds = %3, %1, %18
  %31 = phi i32 [ %29, %18 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %31
}

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind allocsize(0) }

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
!44 = !{!35, !37, i64 104}
!45 = !{!35, !41, i64 96}
!46 = !{!35, !37, i64 0}
!47 = !{!35, !40, i64 8}
!48 = !{!35, !41, i64 16}
!49 = !{!35, !37, i64 80}
!50 = !{!35, !37, i64 128}
!51 = !{i32 -1, i32 1}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!42, !37, i64 8}
!56 = !{!35, !37, i64 84}
!57 = !{!35, !37, i64 68}
!58 = !{!35, !37, i64 40}
!59 = !{!35, !37, i64 28}
!60 = distinct !{!60, !53, !54}
!61 = !{!37, !37, i64 0}
!62 = !{!42, !37, i64 32}
!63 = !{!42, !40, i64 24}
!64 = distinct !{!64, !53, !54}
!65 = !{!35, !40, i64 56}
!66 = distinct !{!66, !53, !54}
!67 = !{!35, !40, i64 48}
!68 = !{!42, !40, i64 0}
!69 = !{!42, !40, i64 48}
!70 = distinct !{!70, !53, !54}
!71 = !{!38, !38, i64 0}
!72 = distinct !{!72, !53, !54}
!73 = distinct !{!73, !53, !54}
!74 = !{!35, !37, i64 64}
!75 = !{!35, !37, i64 44}
!76 = !{!35, !40, i64 120}
!77 = !{!35, !40, i64 32}
