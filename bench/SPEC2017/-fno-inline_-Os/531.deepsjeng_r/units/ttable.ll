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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @_Z8clear_ttv() local_unnamed_addr #0 !prof !40 {
  %1 = load ptr, ptr @TTable, align 8, !tbaa !41
  %2 = load i32, ptr @TTSize, align 4, !tbaa !45
  %3 = zext i32 %2 to i64
  %4 = mul nuw nsw i64 %3, 48
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %4, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z11clear_dp_ttv() local_unnamed_addr #2 !prof !47 {
  %1 = load i32, ptr @TTAge, align 4, !tbaa !45
  %2 = add i32 %1, 1
  %3 = icmp ugt i32 %2, 3
  %4 = select i1 %3, i32 0, i32 %2, !prof !48
  store i32 %4, ptr @TTAge, align 4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z18initialize_zobristP7state_t(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 !prof !49 {
  store i32 0, ptr @TTAge, align 4, !tbaa !45
  tail call void @_Z7mysrandj(i32 noundef 31657) #13
  br label %2

2:                                                ; preds = %1, %15
  %3 = phi i64 [ 0, %1 ], [ %16, %15 ]
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %13, %4 ]
  %6 = tail call noundef i32 @_Z8myrandomv() #13
  %7 = zext i32 %6 to i64
  %8 = shl nuw i64 %7, 32
  %9 = tail call noundef i32 @_Z8myrandomv() #13
  %10 = zext i32 %9 to i64
  %11 = or disjoint i64 %8, %10
  %12 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %3, i64 %5
  store i64 %11, ptr %12, align 8, !tbaa !50
  %13 = add nuw nsw i64 %5, 1
  %14 = icmp eq i64 %13, 64
  br i1 %14, label %15, label %4, !prof !52, !llvm.loop !53

15:                                               ; preds = %4
  %16 = add nuw nsw i64 %3, 1
  %17 = icmp eq i64 %16, 14
  br i1 %17, label %18, label %2, !prof !55, !llvm.loop !56

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  store i64 -2401053088876216593, ptr %19, align 8, !tbaa !57
  %20 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 17
  store i64 -4539648212360761856, ptr %20, align 8, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @_Z7mysrandj(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef i32 @_Z8myrandomv() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z15initialize_hashP7state_t(ptr nocapture noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  store i64 -2401053088876216593, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 17
  store i64 -4539648212360761856, ptr %3, align 8, !tbaa !59
  br label %4

4:                                                ; preds = %1, %22
  %5 = phi i64 [ -4539648212360761856, %1 ], [ %23, %22 ]
  %6 = phi i64 [ -2401053088876216593, %1 ], [ %24, %22 ]
  %7 = phi i64 [ 0, %1 ], [ %25, %22 ]
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = add nsw i32 %9, 1
  %11 = and i32 %10, -2
  %12 = icmp eq i32 %11, 26
  br i1 %12, label %22, label %13, !prof !60

13:                                               ; preds = %4
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds [14 x [64 x i64]], ptr @zobrist, i64 0, i64 %14, i64 %7
  %16 = load i64, ptr %15, align 8, !tbaa !50
  %17 = xor i64 %16, %6
  store i64 %17, ptr %2, align 8, !tbaa !57
  %18 = icmp eq i32 %11, 2
  br i1 %18, label %19, label %22, !prof !61

19:                                               ; preds = %13
  %20 = load i64, ptr %15, align 8, !tbaa !50
  %21 = xor i64 %20, %5
  store i64 %21, ptr %3, align 8, !tbaa !59
  br label %22

22:                                               ; preds = %4, %13, %19
  %23 = phi i64 [ %5, %4 ], [ %5, %13 ], [ %21, %19 ]
  %24 = phi i64 [ %6, %4 ], [ %17, %13 ], [ %17, %19 ]
  %25 = add nuw nsw i64 %7, 1
  %26 = icmp eq i64 %25, 64
  br i1 %26, label %27, label %4, !prof !62, !llvm.loop !63

27:                                               ; preds = %22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z7StoreTTP7state_tiiijiiii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #6 !prof !64 {
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !65
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %14 = load i64, ptr %13, align 8, !tbaa !57
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

27:                                               ; preds = %9, %55
  %28 = phi i64 [ 0, %9 ], [ %68, %55 ]
  %29 = phi i32 [ 65535, %9 ], [ %67, %55 ]
  %30 = phi i32 [ undef, %9 ], [ %66, %55 ]
  %31 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %28
  %32 = load i32, ptr %31, align 4, !tbaa !66
  %33 = zext i32 %32 to i64
  %34 = icmp eq i64 %23, %33
  br i1 %34, label %35, label %39, !prof !69

35:                                               ; preds = %27
  %36 = trunc i64 %28 to i32
  %37 = load i32, ptr %24, align 4, !tbaa !70
  %38 = add i32 %37, 1
  store i32 %38, ptr %24, align 4, !tbaa !70
  br label %70

39:                                               ; preds = %27
  %40 = load i32, ptr %24, align 4, !tbaa !70
  %41 = add i32 %40, 1
  store i32 %41, ptr %24, align 4, !tbaa !70
  %42 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %28, i32 4
  %43 = load i8, ptr %42, align 1
  %44 = lshr i8 %43, 5
  %45 = and i8 %44, 3
  %46 = zext nneg i8 %45 to i32
  %47 = icmp eq i32 %25, %46
  br i1 %47, label %48, label %55, !prof !71

48:                                               ; preds = %39
  %49 = load i32, ptr %26, align 8, !tbaa !72
  %50 = add i32 %49, 1
  store i32 %50, ptr %26, align 8, !tbaa !72
  %51 = load i8, ptr %42, align 1
  %52 = lshr i8 %51, 5
  %53 = and i8 %52, 3
  %54 = zext nneg i8 %53 to i32
  br label %55

55:                                               ; preds = %39, %48
  %56 = phi i32 [ %46, %39 ], [ %54, %48 ]
  %57 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %28, i32 3
  %58 = load i8, ptr %57, align 4, !tbaa !73
  %59 = zext i8 %58 to i32
  %60 = sub i32 %56, %25
  %61 = tail call i32 @llvm.abs.i32(i32 %60, i1 true)
  %62 = shl nsw i32 %61, 10
  %63 = sub nsw i32 %59, %62
  %64 = icmp slt i32 %63, %29
  %65 = trunc i64 %28 to i32
  %66 = select i1 %64, i32 %65, i32 %30, !prof !74
  %67 = tail call i32 @llvm.smin.i32(i32 %63, i32 %29)
  %68 = add nuw nsw i64 %28, 1
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %70, label %27, !prof !75, !llvm.loop !76

70:                                               ; preds = %55, %35
  %71 = phi i32 [ %36, %35 ], [ %66, %55 ]
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !66
  %75 = zext i32 %74 to i64
  %76 = icmp eq i64 %23, %75
  br i1 %76, label %77, label %82, !prof !77

77:                                               ; preds = %70
  %78 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %72, i32 3
  %79 = load i8, ptr %78, align 4, !tbaa !73
  %80 = zext i8 %79 to i32
  %81 = icmp sgt i32 %80, %8
  br i1 %81, label %147, label %82, !prof !78

82:                                               ; preds = %77, %70
  %83 = icmp sgt i32 %1, %2
  br i1 %83, label %89, label %84, !prof !79

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
  br i1 %90, label %96, label %93, !prof !80

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
  %99 = phi i8 [ %95, %93 ], [ %97, %96 ], [ %88, %84 ]
  %100 = icmp sgt i32 %1, 31500
  br i1 %100, label %101, label %106, !prof !81

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %103 = load i32, ptr %102, align 8, !tbaa !82
  %104 = add nsw i32 %1, -1
  %105 = add i32 %104, %103
  br label %113

106:                                              ; preds = %98
  %107 = icmp slt i32 %1, -31500
  br i1 %107, label %108, label %119, !prof !83

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %110 = load i32, ptr %109, align 8, !tbaa !82
  %111 = add nuw nsw i32 %1, 1
  %112 = sub i32 %111, %110
  br label %113

113:                                              ; preds = %108, %101
  %114 = phi i32 [ %105, %101 ], [ %112, %108 ]
  %115 = icmp sgt i32 %114, 32000
  br i1 %115, label %119, label %116, !prof !84

116:                                              ; preds = %113
  %117 = icmp slt i32 %114, -32000
  br i1 %117, label %118, label %119, !prof !84

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %106, %113, %116, %118
  %120 = phi i32 [ -32000, %118 ], [ %114, %116 ], [ 32000, %113 ], [ %1, %106 ]
  %121 = trunc i64 %23 to i32
  store i32 %121, ptr %73, align 4, !tbaa !66
  %122 = trunc i32 %4 to i16
  %123 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %72, i32 2
  store i16 %122, ptr %123, align 2, !tbaa !85
  %124 = trunc i32 %8 to i8
  %125 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %72, i32 3
  store i8 %124, ptr %125, align 4, !tbaa !73
  %126 = trunc i32 %120 to i16
  %127 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %72, i32 1
  store i16 %126, ptr %127, align 4, !tbaa !86
  %128 = trunc i32 %5 to i8
  %129 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %22, i64 0, i64 %72, i32 4
  %130 = and i8 %128, 1
  %131 = and i8 %99, -2
  %132 = or disjoint i8 %131, %130
  store i8 %132, ptr %129, align 1
  %133 = load i32, ptr @TTAge, align 4, !tbaa !45
  %134 = trunc i32 %133 to i8
  %135 = shl i8 %134, 5
  %136 = and i8 %135, 96
  %137 = and i8 %132, -121
  %138 = trunc i32 %6 to i8
  %139 = shl i8 %138, 3
  %140 = and i8 %139, 8
  %141 = trunc i32 %7 to i8
  %142 = shl i8 %141, 4
  %143 = and i8 %142, 16
  %144 = or disjoint i8 %143, %140
  %145 = or disjoint i8 %144, %137
  %146 = or disjoint i8 %145, %136
  store i8 %146, ptr %129, align 1
  br label %147

147:                                              ; preds = %77, %119
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, i32 noundef %9) local_unnamed_addr #6 !prof !87 {
  store i32 1, ptr %6, align 4, !tbaa !45
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 26
  %12 = load i32, ptr %11, align 4, !tbaa !88
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !88
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !65
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %18 = load i64, ptr %17, align 8, !tbaa !57
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
  br i1 %30, label %144, label %31, !prof !89, !llvm.loop !90

31:                                               ; preds = %10, %28
  %32 = phi i64 [ 0, %10 ], [ %29, %28 ]
  %33 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !66
  %35 = zext i32 %34 to i64
  %36 = icmp eq i64 %27, %35
  br i1 %36, label %37, label %28, !prof !91

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 27
  %39 = load i32, ptr %38, align 8, !tbaa !92
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 8, !tbaa !92
  %41 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 4
  %42 = load i8, ptr %41, align 1
  %43 = lshr i8 %42, 5
  %44 = and i8 %43, 3
  %45 = zext nneg i8 %44 to i32
  %46 = load i32, ptr @TTAge, align 4, !tbaa !45
  %47 = icmp eq i32 %46, %45
  br i1 %47, label %54, label %48, !prof !93

48:                                               ; preds = %37
  %49 = trunc i32 %46 to i8
  %50 = shl i8 %49, 5
  %51 = and i8 %50, 96
  %52 = and i8 %42, -97
  %53 = or disjoint i8 %51, %52
  store i8 %53, ptr %41, align 1
  br label %54

54:                                               ; preds = %48, %37
  %55 = phi i8 [ %53, %48 ], [ %42, %37 ]
  %56 = and i8 %55, 6
  %57 = icmp eq i8 %56, 2
  br i1 %57, label %62, label %58, !prof !94

58:                                               ; preds = %54
  %59 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 3
  %60 = load i8, ptr %59, align 4, !tbaa !73
  %61 = zext i8 %60 to i32
  br label %74

62:                                               ; preds = %54
  %63 = add nsw i32 %9, -16
  %64 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 3
  %65 = load i8, ptr %64, align 4, !tbaa !73
  %66 = zext i8 %65 to i32
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %74, label %68, !prof !95

68:                                               ; preds = %62
  %69 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 1
  %70 = load i16, ptr %69, align 4, !tbaa !86
  %71 = sext i16 %70 to i32
  %72 = icmp slt i32 %71, %3
  br i1 %72, label %73, label %74, !prof !96

73:                                               ; preds = %68
  store i32 0, ptr %6, align 4, !tbaa !45
  br label %74

74:                                               ; preds = %58, %73, %68, %62
  %75 = phi i32 [ %61, %58 ], [ %66, %73 ], [ %66, %68 ], [ %66, %62 ]
  %76 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 3
  %77 = icmp slt i32 %75, %9
  br i1 %77, label %116, label %78, !prof !97

78:                                               ; preds = %74
  %79 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 1
  %80 = load i16, ptr %79, align 4, !tbaa !86
  %81 = sext i16 %80 to i32
  store i32 %81, ptr %1, align 4, !tbaa !45
  %82 = icmp sgt i16 %80, 31500
  br i1 %82, label %83, label %88, !prof !98

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %85 = load i32, ptr %84, align 8, !tbaa !82
  %86 = add nuw nsw i32 %81, 1
  %87 = sub i32 %86, %85
  br label %95

88:                                               ; preds = %78
  %89 = icmp slt i16 %80, -31500
  br i1 %89, label %90, label %97, !prof !99

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %92 = load i32, ptr %91, align 8, !tbaa !82
  %93 = add nsw i32 %81, -1
  %94 = add i32 %93, %92
  br label %95

95:                                               ; preds = %83, %90
  %96 = phi i32 [ %94, %90 ], [ %87, %83 ]
  store i32 %96, ptr %1, align 4, !tbaa !45
  br label %97

97:                                               ; preds = %95, %88
  %98 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 2
  %99 = load i16, ptr %98, align 2, !tbaa !85
  %100 = zext i16 %99 to i32
  store i32 %100, ptr %4, align 4, !tbaa !45
  %101 = load i8, ptr %41, align 1
  %102 = and i8 %101, 1
  %103 = zext nneg i8 %102 to i32
  store i32 %103, ptr %5, align 4, !tbaa !45
  %104 = load i8, ptr %41, align 1
  %105 = lshr i8 %104, 3
  %106 = and i8 %105, 1
  %107 = zext nneg i8 %106 to i32
  store i32 %107, ptr %7, align 4, !tbaa !45
  %108 = load i8, ptr %41, align 1
  %109 = lshr i8 %108, 4
  %110 = and i8 %109, 1
  %111 = zext nneg i8 %110 to i32
  store i32 %111, ptr %8, align 4, !tbaa !45
  %112 = load i8, ptr %41, align 1
  %113 = lshr i8 %112, 1
  %114 = and i8 %113, 3
  %115 = zext nneg i8 %114 to i32
  br label %144

116:                                              ; preds = %74
  %117 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 2
  %118 = load i16, ptr %117, align 2, !tbaa !85
  %119 = zext i16 %118 to i32
  store i32 %119, ptr %4, align 4, !tbaa !45
  %120 = load i8, ptr %41, align 1
  %121 = and i8 %120, 1
  %122 = zext nneg i8 %121 to i32
  store i32 %122, ptr %5, align 4, !tbaa !45
  %123 = load i8, ptr %41, align 1
  %124 = lshr i8 %123, 3
  %125 = and i8 %124, 1
  %126 = zext nneg i8 %125 to i32
  store i32 %126, ptr %7, align 4, !tbaa !45
  %127 = load i8, ptr %41, align 1
  %128 = lshr i8 %127, 4
  %129 = and i8 %128, 1
  %130 = zext nneg i8 %129 to i32
  store i32 %130, ptr %8, align 4, !tbaa !45
  %131 = load i8, ptr %41, align 1
  %132 = lshr i8 %131, 1
  %133 = and i8 %132, 3
  switch i8 %133, label %135 [
    i8 1, label %139
    i8 2, label %134
  ], !prof !100

134:                                              ; preds = %116
  br label %139

135:                                              ; preds = %116
  %136 = getelementptr inbounds [4 x %struct.ttbucket_t], ptr %26, i64 0, i64 %32, i32 1
  %137 = load i16, ptr %136, align 4, !tbaa !86
  %138 = sext i16 %137 to i32
  br label %139

139:                                              ; preds = %116, %134, %135
  %140 = phi i32 [ 1000000, %134 ], [ %138, %135 ], [ -1000000, %116 ]
  store i32 %140, ptr %1, align 4, !tbaa !45
  %141 = trunc i32 %9 to i8
  store i8 %141, ptr %76, align 4, !tbaa !73
  %142 = load i8, ptr %41, align 1
  %143 = and i8 %142, -7
  store i8 %143, ptr %41, align 1
  br label %144

144:                                              ; preds = %28, %139, %97
  %145 = phi i32 [ %115, %97 ], [ 0, %139 ], [ 4, %28 ]
  ret i32 %145
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z10alloc_hashv() local_unnamed_addr #3 !prof !49 {
  %1 = load i32, ptr @TTSize, align 4, !tbaa !45
  %2 = zext i32 %1 to i64
  %3 = mul nuw nsw i64 %2, 48
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #14
  store ptr %4, ptr @TTable, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !101

6:                                                ; preds = %0
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str) #13
  tail call void @exit(i32 noundef 1) #15
  unreachable

7:                                                ; preds = %0
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.1, i32 noundef %1, i64 noundef %3) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_Z8myprintfPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @_Z9free_hashv() local_unnamed_addr #10 !prof !102 {
  %1 = load ptr, ptr @TTable, align 8, !tbaa !41
  tail call void @free(ptr noundef %1) #16
  store ptr null, ptr @TTable, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize allocsize(0) }
attributes #15 = { noreturn nounwind optsize }
attributes #16 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!39}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 126727826429}
!4 = !{!"MaxCount", i64 7592818589}
!5 = !{!"MaxInternalCount", i64 4612963787}
!6 = !{!"MaxFunctionCount", i64 7592818589}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 7592818589, i32 1}
!14 = !{i32 100000, i64 5393808666, i32 2}
!15 = !{i32 200000, i64 3322262585, i32 6}
!16 = !{i32 300000, i64 2468518944, i32 10}
!17 = !{i32 400000, i64 1837796421, i32 16}
!18 = !{i32 500000, i64 887660800, i32 29}
!19 = !{i32 600000, i64 608930740, i32 46}
!20 = !{i32 700000, i64 396110762, i32 71}
!21 = !{i32 800000, i64 205990918, i32 118}
!22 = !{i32 900000, i64 105535903, i32 199}
!23 = !{i32 950000, i64 66857471, i32 270}
!24 = !{i32 990000, i64 20633230, i32 388}
!25 = !{i32 999000, i64 3210553, i32 503}
!26 = !{i32 999900, i64 480625, i32 581}
!27 = !{i32 999990, i64 63262, i32 633}
!28 = !{i32 999999, i64 5111, i32 689}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_Z18initialize_zobristP7state_t, ptr @_Z7mysrandj, i64 1}
!36 = !{ptr @_Z18initialize_zobristP7state_t, ptr @_Z8myrandomv, i64 896}
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
!47 = !{!"function_entry_count", i64 12}
!48 = !{!"branch_weights", i32 4, i32 10}
!49 = !{!"function_entry_count", i64 1}
!50 = !{!51, !51, i64 0}
!51 = !{!"long long", !43, i64 0}
!52 = !{!"branch_weights", i32 15, i32 882}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"branch_weights", i32 2, i32 13}
!56 = distinct !{!56, !54}
!57 = !{!58, !51, i64 480}
!58 = !{!"_ZTS7state_t", !46, i64 0, !43, i64 4, !51, i64 264, !51, i64 272, !51, i64 280, !43, i64 288, !46, i64 392, !46, i64 396, !43, i64 400, !46, i64 452, !46, i64 456, !46, i64 460, !46, i64 464, !46, i64 468, !46, i64 472, !46, i64 476, !51, i64 480, !51, i64 488, !43, i64 496, !43, i64 2544, !43, i64 2800, !43, i64 3056, !51, i64 4080, !51, i64 4088, !46, i64 4096, !43, i64 4100, !46, i64 4356, !46, i64 4360, !46, i64 4364, !46, i64 4368, !46, i64 4372, !46, i64 4376, !46, i64 4380, !46, i64 4384, !46, i64 4388, !46, i64 4392, !43, i64 4400}
!59 = !{!58, !51, i64 488}
!60 = !{!"branch_weights", i32 1, i32 833}
!61 = !{!"branch_weights", i32 417637875, i32 1729845773}
!62 = !{!"branch_weights", i32 14, i32 819}
!63 = distinct !{!63, !54}
!64 = !{!"function_entry_count", i64 405205355}
!65 = !{!58, !46, i64 460}
!66 = !{!67, !46, i64 0}
!67 = !{!"_ZTS10ttbucket_t", !46, i64 0, !68, i64 4, !68, i64 6, !43, i64 8, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 9}
!68 = !{!"short", !43, i64 0}
!69 = !{!"branch_weights", i32 117395555, i32 1199527963}
!70 = !{!58, !46, i64 4364}
!71 = !{!"branch_weights", i32 606279696, i32 593248268}
!72 = !{!58, !46, i64 4368}
!73 = !{!67, !43, i64 8}
!74 = !{!"branch_weights", i32 460795871, i32 738732093}
!75 = !{!"branch_weights", i32 287809802, i32 1029113715}
!76 = distinct !{!76, !54}
!77 = !{!"branch_weights", i32 117395555, i32 287809802}
!78 = !{!"branch_weights", i32 48112414, i32 69283142}
!79 = !{!"branch_weights", i32 224747270, i32 132345674}
!80 = !{!"branch_weights", i32 278063, i32 224469208}
!81 = !{!"branch_weights", i32 1794214, i32 355298730}
!82 = !{!58, !46, i64 472}
!83 = !{!"branch_weights", i32 1928701, i32 353370030}
!84 = !{!"branch_weights", i32 575, i32 2147483073}
!85 = !{!67, !68, i64 6}
!86 = !{!67, !68, i64 4}
!87 = !{!"function_entry_count", i64 506568965}
!88 = !{!58, !46, i64 4356}
!89 = !{!"branch_weights", i32 307114526, i32 1204377988}
!90 = distinct !{!90, !54}
!91 = !{!"branch_weights", i32 199454441, i32 1312038074}
!92 = !{!58, !46, i64 4360}
!93 = !{!"branch_weights", i32 199454441, i32 1}
!94 = !{!"branch_weights", i32 60101922, i32 139352520}
!95 = !{!"branch_weights", i32 37026, i32 60064897}
!96 = !{!"branch_weights", i32 35556431, i32 24508467}
!97 = !{!"branch_weights", i32 59937239, i32 139517203}
!98 = !{!"branch_weights", i32 765384, i32 138751820}
!99 = !{!"branch_weights", i32 363386, i32 138388435}
!100 = !{!"branch_weights", i32 256690441, i32 1434628456, i32 -1179079197}
!101 = !{!"branch_weights", i32 1, i32 2}
!102 = !{!"function_entry_count", i64 0}
