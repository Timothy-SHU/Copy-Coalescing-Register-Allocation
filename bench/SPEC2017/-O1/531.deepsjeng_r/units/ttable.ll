; ModuleID = 'ttable.cpp'
source_filename = "ttable.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.ttentry_t = type { [4 x %struct.ttbucket_t] }
%struct.ttbucket_t = type { i32, i16, i16, i8, i8 }

@zobrist = dso_local local_unnamed_addr global [14 x [64 x i64]] zeroinitializer, align 16
@TTable = dso_local local_unnamed_addr global ptr null, align 8
@TTAge = dso_local local_unnamed_addr global i32 0, align 4
@TTSize = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [38 x i8] c"Out of memory allocating hashtables.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Allocated %d hash entries, totalling %llu bytes.\0A\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @_Z8clear_ttv() local_unnamed_addr #0 !prof !40 {
  %1 = load ptr, ptr @TTable, align 8, !tbaa !41
  %2 = load i32, ptr @TTSize, align 4, !tbaa !45
  %3 = zext i32 %2 to i64
  %4 = mul nuw nsw i64 %3, 48
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %4, i1 false), !prof !47
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z11clear_dp_ttv() local_unnamed_addr #2 !prof !48 {
  %1 = load i32, ptr @TTAge, align 4, !tbaa !45
  %2 = add i32 %1, 1
  %3 = icmp ugt i32 %2, 3
  %4 = select i1 %3, i32 0, i32 %2, !prof !49
  store i32 %4, ptr @TTAge, align 4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z18initialize_zobristP7state_t(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 !prof !50 {
  store i32 0, ptr @TTAge, align 4, !tbaa !45
  tail call void @_Z7mysrandj(i32 noundef 31657)
  br label %2

2:                                                ; preds = %1, %15
  %3 = phi i64 [ 0, %1 ], [ %16, %15 ]
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %13, %4 ]
  %6 = tail call noundef i32 @_Z8myrandomv()
  %7 = zext i32 %6 to i64
  %8 = shl nuw i64 %7, 32
  %9 = tail call noundef i32 @_Z8myrandomv()
  %10 = zext i32 %9 to i64
  %11 = or disjoint i64 %8, %10
  %12 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %3, i64 %5
  store i64 %11, ptr %12, align 8, !tbaa !51
  %13 = add nuw nsw i64 %5, 1
  %14 = icmp eq i64 %13, 64
  br i1 %14, label %15, label %4, !prof !53, !llvm.loop !54

15:                                               ; preds = %4
  %16 = add nuw nsw i64 %3, 1
  %17 = icmp eq i64 %16, 14
  br i1 %17, label %18, label %2, !prof !57, !llvm.loop !58

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  store i64 -2401053088876216593, ptr %19, align 8, !tbaa !59
  %20 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 17
  store i64 -4539648212360761856, ptr %20, align 8, !tbaa !61
  ret void
}

declare void @_Z7mysrandj(i32 noundef) local_unnamed_addr #4

declare noundef i32 @_Z8myrandomv() local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z15initialize_hashP7state_t(ptr nocapture noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  store i64 -2401053088876216593, ptr %2, align 8, !tbaa !59
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 17
  store i64 -4539648212360761856, ptr %3, align 8, !tbaa !61
  br label %4

4:                                                ; preds = %1, %24
  %5 = phi i64 [ 0, %1 ], [ %25, %24 ]
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !45
  %8 = add nsw i32 %7, 1
  %9 = and i32 %8, -2
  %10 = icmp eq i32 %9, 26
  br i1 %10, label %24, label %11, !prof !62

11:                                               ; preds = %4
  %12 = load i64, ptr %2, align 8, !tbaa !59
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %13, i64 %5
  %15 = load i64, ptr %14, align 8, !tbaa !51
  %16 = xor i64 %15, %12
  store i64 %16, ptr %2, align 8, !tbaa !59
  %17 = icmp eq i32 %9, 2
  br i1 %17, label %18, label %24, !prof !63

18:                                               ; preds = %11
  %19 = load i64, ptr %3, align 8, !tbaa !61
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %20, i64 %5
  %22 = load i64, ptr %21, align 8, !tbaa !51
  %23 = xor i64 %22, %19
  store i64 %23, ptr %3, align 8, !tbaa !61
  br label %24

24:                                               ; preds = %4, %11, %18
  %25 = add nuw nsw i64 %5, 1
  %26 = icmp eq i64 %25, 64
  br i1 %26, label %27, label %4, !prof !64, !llvm.loop !65

27:                                               ; preds = %24
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z7StoreTTP7state_tiiijiiii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #6 !prof !66 {
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !67
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %14 = load i64, ptr %13, align 8, !tbaa !59
  %15 = zext i1 %12 to i64
  %16 = add i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = load ptr, ptr @TTable, align 8, !tbaa !41
  %19 = load i32, ptr @TTSize, align 4, !tbaa !45
  %20 = urem i32 %17, %19
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ttentry_t, ptr %18, i64 %21
  %23 = lshr i64 %16, 32
  %24 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 28
  %25 = load i32, ptr @TTAge, align 4
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 29
  br label %27

27:                                               ; preds = %9, %52
  %28 = phi i64 [ 0, %9 ], [ %68, %52 ]
  %29 = phi i32 [ 65535, %9 ], [ %67, %52 ]
  %30 = phi i32 [ undef, %9 ], [ %66, %52 ]
  %31 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %28
  %32 = load i32, ptr %31, align 4, !tbaa !68
  %33 = zext i32 %32 to i64
  %34 = icmp eq i64 %23, %33
  br i1 %34, label %35, label %40, !prof !71

35:                                               ; preds = %27
  %36 = trunc i64 %28 to i32
  %37 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 28
  %38 = load i32, ptr %37, align 4, !tbaa !72
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !72
  br label %70

40:                                               ; preds = %27
  %41 = load i32, ptr %24, align 4, !tbaa !72
  %42 = add i32 %41, 1
  store i32 %42, ptr %24, align 4, !tbaa !72
  %43 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %28, i32 4
  %44 = load i8, ptr %43, align 1
  %45 = lshr i8 %44, 5
  %46 = and i8 %45, 3
  %47 = zext nneg i8 %46 to i32
  %48 = icmp eq i32 %25, %47
  br i1 %48, label %49, label %52, !prof !73

49:                                               ; preds = %40
  %50 = load i32, ptr %26, align 8, !tbaa !74
  %51 = add i32 %50, 1
  store i32 %51, ptr %26, align 8, !tbaa !74
  br label %52

52:                                               ; preds = %40, %49
  %53 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %28, i32 3
  %54 = load i8, ptr %53, align 4, !tbaa !75
  %55 = zext i8 %54 to i32
  %56 = load i8, ptr %43, align 1
  %57 = lshr i8 %56, 5
  %58 = and i8 %57, 3
  %59 = zext nneg i8 %58 to i32
  %60 = sub i32 %59, %25
  %61 = tail call i32 @llvm.abs.i32(i32 %60, i1 true)
  %62 = shl nsw i32 %61, 10
  %63 = sub nsw i32 %55, %62
  %64 = icmp slt i32 %63, %29
  %65 = trunc i64 %28 to i32
  %66 = select i1 %64, i32 %65, i32 %30, !prof !76
  %67 = tail call i32 @llvm.smin.i32(i32 %63, i32 %29)
  %68 = add nuw nsw i64 %28, 1
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %70, label %27, !prof !77, !llvm.loop !78

70:                                               ; preds = %52, %35
  %71 = phi i32 [ %36, %35 ], [ %66, %52 ]
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !68
  %75 = zext i32 %74 to i64
  %76 = icmp eq i64 %23, %75
  br i1 %76, label %77, label %82, !prof !79

77:                                               ; preds = %70
  %78 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %72, i32 3
  %79 = load i8, ptr %78, align 4, !tbaa !75
  %80 = zext i8 %79 to i32
  %81 = icmp sgt i32 %80, %8
  br i1 %81, label %143, label %82, !prof !80

82:                                               ; preds = %77, %70
  %83 = icmp sgt i32 %1, %2
  br i1 %83, label %89, label %84, !prof !81

84:                                               ; preds = %82
  %85 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %72, i32 4
  %86 = load i8, ptr %85, align 1
  %87 = and i8 %86, -7
  %88 = or disjoint i8 %87, 2
  store i8 %88, ptr %85, align 1
  br label %98

89:                                               ; preds = %82
  %90 = icmp slt i32 %1, %3
  %91 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %72, i32 4
  %92 = load i8, ptr %91, align 1
  br i1 %90, label %96, label %93, !prof !82

93:                                               ; preds = %89
  %94 = and i8 %92, -7
  %95 = or disjoint i8 %94, 4
  store i8 %95, ptr %91, align 1
  br label %98

96:                                               ; preds = %89
  %97 = or i8 %92, 6
  store i8 %97, ptr %91, align 1
  br label %98

98:                                               ; preds = %93, %96, %84
  %99 = icmp sgt i32 %1, 31500
  br i1 %99, label %100, label %105, !prof !83

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %102 = load i32, ptr %101, align 8, !tbaa !84
  %103 = add nsw i32 %1, -1
  %104 = add i32 %103, %102
  br label %112

105:                                              ; preds = %98
  %106 = icmp slt i32 %1, -31500
  br i1 %106, label %107, label %112, !prof !85

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %109 = load i32, ptr %108, align 8, !tbaa !84
  %110 = add nsw i32 %1, 1
  %111 = sub i32 %110, %109
  br label %112

112:                                              ; preds = %105, %107, %100
  %113 = phi i32 [ %104, %100 ], [ %111, %107 ], [ %1, %105 ]
  %114 = tail call i32 @llvm.smax.i32(i32 %113, i32 -32000)
  %115 = tail call i32 @llvm.smin.i32(i32 %114, i32 32000)
  %116 = trunc i32 %115 to i16
  %117 = trunc i64 %23 to i32
  store i32 %117, ptr %73, align 4, !tbaa !68
  %118 = trunc i32 %4 to i16
  %119 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %72, i32 2
  store i16 %118, ptr %119, align 2, !tbaa !86
  %120 = trunc i32 %8 to i8
  %121 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %72, i32 3
  store i8 %120, ptr %121, align 4, !tbaa !75
  %122 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %72, i32 1
  store i16 %116, ptr %122, align 4, !tbaa !87
  %123 = trunc i32 %5 to i8
  %124 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %72, i32 4
  %125 = load i8, ptr %124, align 1
  %126 = and i8 %123, 1
  %127 = and i8 %125, -2
  %128 = or disjoint i8 %127, %126
  store i8 %128, ptr %124, align 1
  %129 = load i32, ptr @TTAge, align 4, !tbaa !45
  %130 = trunc i32 %129 to i8
  %131 = shl i8 %130, 5
  %132 = and i8 %131, 96
  %133 = and i8 %128, -121
  %134 = trunc i32 %6 to i8
  %135 = shl i8 %134, 3
  %136 = and i8 %135, 8
  %137 = trunc i32 %7 to i8
  %138 = shl i8 %137, 4
  %139 = and i8 %138, 16
  %140 = or disjoint i8 %139, %136
  %141 = or disjoint i8 %140, %133
  %142 = or disjoint i8 %141, %132
  store i8 %142, ptr %124, align 1
  br label %143

143:                                              ; preds = %77, %112
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, i32 noundef %9) local_unnamed_addr #6 !prof !88 {
  store i32 1, ptr %6, align 4, !tbaa !45
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 26
  %12 = load i32, ptr %11, align 4, !tbaa !89
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !89
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !67
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %18 = load i64, ptr %17, align 8, !tbaa !59
  %19 = zext i1 %16 to i64
  %20 = add i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = load ptr, ptr @TTable, align 8, !tbaa !41
  %23 = load i32, ptr @TTSize, align 4, !tbaa !45
  %24 = urem i32 %21, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ttentry_t, ptr %22, i64 %25
  %27 = lshr i64 %20, 32
  br label %31

28:                                               ; preds = %31
  %29 = add nuw nsw i64 %32, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %141, label %31, !prof !90, !llvm.loop !91

31:                                               ; preds = %10, %28
  %32 = phi i64 [ 0, %10 ], [ %29, %28 ]
  %33 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !68
  %35 = zext i32 %34 to i64
  %36 = icmp eq i64 %27, %35
  br i1 %36, label %37, label %28, !prof !92

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 27
  %39 = load i32, ptr %38, align 8, !tbaa !93
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 8, !tbaa !93
  %41 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 4
  %42 = load i8, ptr %41, align 1
  %43 = lshr i8 %42, 5
  %44 = and i8 %43, 3
  %45 = zext nneg i8 %44 to i32
  %46 = load i32, ptr @TTAge, align 4, !tbaa !45
  %47 = icmp eq i32 %46, %45
  br i1 %47, label %54, label %48, !prof !94

48:                                               ; preds = %37
  %49 = trunc i32 %46 to i8
  %50 = shl i8 %49, 5
  %51 = and i8 %50, 96
  %52 = and i8 %42, -97
  %53 = or disjoint i8 %51, %52
  store i8 %53, ptr %41, align 1
  br label %54

54:                                               ; preds = %48, %37
  %55 = load i8, ptr %41, align 1
  %56 = and i8 %55, 6
  %57 = icmp eq i8 %56, 2
  br i1 %57, label %58, label %70, !prof !95

58:                                               ; preds = %54
  %59 = add nsw i32 %9, -16
  %60 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 3
  %61 = load i8, ptr %60, align 4, !tbaa !75
  %62 = zext i8 %61 to i32
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %70, label %64, !prof !96

64:                                               ; preds = %58
  %65 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 1
  %66 = load i16, ptr %65, align 4, !tbaa !87
  %67 = sext i16 %66 to i32
  %68 = icmp slt i32 %67, %3
  br i1 %68, label %69, label %70, !prof !97

69:                                               ; preds = %64
  store i32 0, ptr %6, align 4, !tbaa !45
  br label %70

70:                                               ; preds = %69, %64, %58, %54
  %71 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 3
  %72 = load i8, ptr %71, align 4, !tbaa !75
  %73 = zext i8 %72 to i32
  %74 = icmp slt i32 %73, %9
  br i1 %74, label %113, label %75, !prof !98

75:                                               ; preds = %70
  %76 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 1
  %77 = load i16, ptr %76, align 4, !tbaa !87
  %78 = sext i16 %77 to i32
  store i32 %78, ptr %1, align 4, !tbaa !45
  %79 = icmp sgt i16 %77, 31500
  br i1 %79, label %80, label %85, !prof !99

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %82 = load i32, ptr %81, align 8, !tbaa !84
  %83 = add nuw nsw i32 %78, 1
  %84 = sub i32 %83, %82
  br label %92

85:                                               ; preds = %75
  %86 = icmp slt i16 %77, -31500
  br i1 %86, label %87, label %94, !prof !100

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %89 = load i32, ptr %88, align 8, !tbaa !84
  %90 = add nsw i32 %78, -1
  %91 = add i32 %90, %89
  br label %92

92:                                               ; preds = %80, %87
  %93 = phi i32 [ %91, %87 ], [ %84, %80 ]
  store i32 %93, ptr %1, align 4, !tbaa !45
  br label %94

94:                                               ; preds = %92, %85
  %95 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 2
  %96 = load i16, ptr %95, align 2, !tbaa !86
  %97 = zext i16 %96 to i32
  store i32 %97, ptr %4, align 4, !tbaa !45
  %98 = load i8, ptr %41, align 1
  %99 = and i8 %98, 1
  %100 = zext nneg i8 %99 to i32
  store i32 %100, ptr %5, align 4, !tbaa !45
  %101 = load i8, ptr %41, align 1
  %102 = lshr i8 %101, 3
  %103 = and i8 %102, 1
  %104 = zext nneg i8 %103 to i32
  store i32 %104, ptr %7, align 4, !tbaa !45
  %105 = load i8, ptr %41, align 1
  %106 = lshr i8 %105, 4
  %107 = and i8 %106, 1
  %108 = zext nneg i8 %107 to i32
  store i32 %108, ptr %8, align 4, !tbaa !45
  %109 = load i8, ptr %41, align 1
  %110 = lshr i8 %109, 1
  %111 = and i8 %110, 3
  %112 = zext nneg i8 %111 to i32
  br label %141

113:                                              ; preds = %70
  %114 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 2
  %115 = load i16, ptr %114, align 2, !tbaa !86
  %116 = zext i16 %115 to i32
  store i32 %116, ptr %4, align 4, !tbaa !45
  %117 = load i8, ptr %41, align 1
  %118 = and i8 %117, 1
  %119 = zext nneg i8 %118 to i32
  store i32 %119, ptr %5, align 4, !tbaa !45
  %120 = load i8, ptr %41, align 1
  %121 = lshr i8 %120, 3
  %122 = and i8 %121, 1
  %123 = zext nneg i8 %122 to i32
  store i32 %123, ptr %7, align 4, !tbaa !45
  %124 = load i8, ptr %41, align 1
  %125 = lshr i8 %124, 4
  %126 = and i8 %125, 1
  %127 = zext nneg i8 %126 to i32
  store i32 %127, ptr %8, align 4, !tbaa !45
  %128 = load i8, ptr %41, align 1
  %129 = lshr i8 %128, 1
  %130 = and i8 %129, 3
  switch i8 %130, label %132 [
    i8 1, label %136
    i8 2, label %131
  ], !prof !101

131:                                              ; preds = %113
  br label %136

132:                                              ; preds = %113
  %133 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 1
  %134 = load i16, ptr %133, align 4, !tbaa !87
  %135 = sext i16 %134 to i32
  br label %136

136:                                              ; preds = %113, %131, %132
  %137 = phi i32 [ 1000000, %131 ], [ %135, %132 ], [ -1000000, %113 ]
  store i32 %137, ptr %1, align 4, !tbaa !45
  %138 = trunc i32 %9 to i8
  store i8 %138, ptr %71, align 4, !tbaa !75
  %139 = load i8, ptr %41, align 1
  %140 = and i8 %139, -7
  store i8 %140, ptr %41, align 1
  br label %141

141:                                              ; preds = %28, %136, %94
  %142 = phi i32 [ %112, %94 ], [ 0, %136 ], [ 4, %28 ]
  ret i32 %142
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z10alloc_hashv() local_unnamed_addr #3 !prof !50 {
  %1 = load i32, ptr @TTSize, align 4, !tbaa !45
  %2 = zext i32 %1 to i64
  %3 = mul nuw nsw i64 %2, 48
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #13
  store ptr %4, ptr @TTable, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !102

6:                                                ; preds = %0
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str)
  tail call void @exit(i32 noundef 1) #14
  unreachable

7:                                                ; preds = %0
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.1, i32 noundef %1, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare void @_Z8myprintfPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @_Z9free_hashv() local_unnamed_addr #10 !prof !103 {
  %1 = load ptr, ptr @TTable, align 8, !tbaa !41
  tail call void @free(ptr noundef %1) #15
  store ptr null, ptr @TTable, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 128361366639}
!8 = !{!"MaxCount", i64 7592818589}
!9 = !{!"MaxInternalCount", i64 5393808666}
!10 = !{!"MaxFunctionCount", i64 7592818589}
!11 = !{!"NumCounts", i64 1723}
!12 = !{!"NumFunctions", i64 109}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7592818589, i32 1}
!18 = !{i32 100000, i64 5393808666, i32 2}
!19 = !{i32 200000, i64 2869551984, i32 6}
!20 = !{i32 300000, i64 1728514292, i32 11}
!21 = !{i32 400000, i64 824050972, i32 24}
!22 = !{i32 500000, i64 588473769, i32 42}
!23 = !{i32 600000, i64 446369574, i32 68}
!24 = !{i32 700000, i64 286932458, i32 105}
!25 = !{i32 800000, i64 196614852, i32 160}
!26 = !{i32 900000, i64 107044397, i32 249}
!27 = !{i32 950000, i64 60101921, i32 326}
!28 = !{i32 990000, i64 15736932, i32 482}
!29 = !{i32 999000, i64 2025695, i32 659}
!30 = !{i32 999900, i64 318185, i32 779}
!31 = !{i32 999990, i64 50049, i32 848}
!32 = !{i32 999999, i64 3896, i32 923}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_Z18initialize_zobristP7state_t, ptr @_Z7mysrandj, i64 1}
!36 = !{ptr @_Z18initialize_zobristP7state_t, ptr @_Z8myrandomv, i64 1792}
!37 = !{ptr @_Z10alloc_hashv, ptr @malloc, i64 1}
!38 = !{ptr @_Z10alloc_hashv, ptr @_Z8myprintfPKcz, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 13}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !43, i64 0}
!47 = !{!"VP", i32 1, i64 13, i64 513, i64 13}
!48 = !{!"function_entry_count", i64 12}
!49 = !{!"branch_weights", i32 3, i32 9}
!50 = !{!"function_entry_count", i64 1}
!51 = !{!52, !52, i64 0}
!52 = !{!"long long", !43, i64 0}
!53 = !{!"branch_weights", i32 14, i32 882}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!"branch_weights", i32 1, i32 13}
!58 = distinct !{!58, !55, !56}
!59 = !{!60, !52, i64 480}
!60 = !{!"_ZTS7state_t", !46, i64 0, !43, i64 4, !52, i64 264, !52, i64 272, !52, i64 280, !43, i64 288, !46, i64 392, !46, i64 396, !43, i64 400, !46, i64 452, !46, i64 456, !46, i64 460, !46, i64 464, !46, i64 468, !46, i64 472, !46, i64 476, !52, i64 480, !52, i64 488, !43, i64 496, !43, i64 2544, !43, i64 2800, !43, i64 3056, !52, i64 4080, !52, i64 4088, !46, i64 4096, !43, i64 4100, !46, i64 4356, !46, i64 4360, !46, i64 4364, !46, i64 4368, !46, i64 4372, !46, i64 4376, !46, i64 4380, !46, i64 4384, !46, i64 4388, !46, i64 4392, !43, i64 4400}
!61 = !{!60, !52, i64 488}
!62 = !{!"branch_weights", i32 0, i32 832}
!63 = !{!"branch_weights", i32 161, i32 671}
!64 = !{!"branch_weights", i32 13, i32 819}
!65 = distinct !{!65, !55, !56}
!66 = !{!"function_entry_count", i64 405205355}
!67 = !{!60, !46, i64 460}
!68 = !{!69, !46, i64 0}
!69 = !{!"_ZTS10ttbucket_t", !46, i64 0, !70, i64 4, !70, i64 6, !43, i64 8, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 9}
!70 = !{!"short", !43, i64 0}
!71 = !{!"branch_weights", i32 117395554, i32 1199527962}
!72 = !{!60, !46, i64 4364}
!73 = !{!"branch_weights", i32 606279695, i32 593248267}
!74 = !{!60, !46, i64 4368}
!75 = !{!69, !43, i64 8}
!76 = !{!"branch_weights", i32 460795870, i32 738732092}
!77 = !{!"branch_weights", i32 287809801, i32 1029113715}
!78 = distinct !{!78, !55, !56}
!79 = !{!"branch_weights", i32 117395554, i32 287809801}
!80 = !{!"branch_weights", i32 48112413, i32 69283141}
!81 = !{!"branch_weights", i32 224747269, i32 132345673}
!82 = !{!"branch_weights", i32 278062, i32 224469207}
!83 = !{!"branch_weights", i32 1794213, i32 355298729}
!84 = !{!60, !46, i64 472}
!85 = !{!"branch_weights", i32 1928700, i32 353370029}
!86 = !{!69, !70, i64 6}
!87 = !{!69, !70, i64 4}
!88 = !{!"function_entry_count", i64 506568965}
!89 = !{!60, !46, i64 4356}
!90 = !{!"branch_weights", i32 307114525, i32 1204377988}
!91 = distinct !{!91, !55, !56}
!92 = !{!"branch_weights", i32 199454440, i32 1312038073}
!93 = !{!60, !46, i64 4360}
!94 = !{!"branch_weights", i32 199454440, i32 0}
!95 = !{!"branch_weights", i32 60101921, i32 139352519}
!96 = !{!"branch_weights", i32 37025, i32 60064896}
!97 = !{!"branch_weights", i32 35556430, i32 24508466}
!98 = !{!"branch_weights", i32 59937238, i32 139517202}
!99 = !{!"branch_weights", i32 765383, i32 138751819}
!100 = !{!"branch_weights", i32 363385, i32 138388434}
!101 = !{!"branch_weights", i32 3200468, i32 17887240, i32 38849530}
!102 = !{!"branch_weights", i32 0, i32 1}
!103 = !{!"function_entry_count", i64 0}
