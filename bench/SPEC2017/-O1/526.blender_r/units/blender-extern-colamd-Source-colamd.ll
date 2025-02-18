; ModuleID = 'blender/extern/colamd/Source/colamd.c'
source_filename = "blender/extern/colamd/Source/colamd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Colamd_Col_struct = type { i32, i32, %union.anon, %union.anon.0, %union.anon.1, %union.anon.2 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }
%struct.Colamd_Row_struct = type { i32, i32, %union.anon.3, %union.anon.4 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"colamd\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"symamd\00", align 1
@colamd_printf = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"\0A%s version %d.%d, %s: \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Nov 1, 2007\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"No statistics available.\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"OK.  \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ERROR.  \00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Matrix has unsorted or duplicate row indices.\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"%s: number of duplicate or out-of-order row indices: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"%s: last seen duplicate or out-of-order row index:   %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"%s: last seen in column:                             %d\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"%s: number of dense or empty rows ignored:           %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"%s: number of dense or empty columns ignored:        %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"%s: number of garbage collections performed:         %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"Array A (row indices of matrix) not present.\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"Array p (column pointers for matrix) not present.\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Invalid number of rows (%d).\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Invalid number of columns (%d).\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Invalid number of nonzero entries (%d).\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"Invalid column pointer, p [0] = %d, must be zero.\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Array A too small.\0A\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"        Need Alen >= %d, but given only Alen = %d.\0A\00", align 1
@.str.23 = private unnamed_addr constant [58 x i8] c"Column %d has a negative number of nonzero entries (%d).\0A\00", align 1
@.str.24 = private unnamed_addr constant [59 x i8] c"Row index (row %d) out of bounds (%d to %d) in column %d.\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @colamd_recommended(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = or i32 %1, %0
  %5 = or i32 %4, %2
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %103

7:                                                ; preds = %3
  %8 = zext nneg i32 %0 to i64
  br label %9

9:                                                ; preds = %7, %18
  %10 = phi i64 [ 0, %7 ], [ %22, %18 ]
  %11 = phi i64 [ 0, %7 ], [ %23, %18 ]
  %12 = phi i32 [ 1, %7 ], [ %20, %18 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = add i64 %10, %8
  %16 = tail call i64 @llvm.umax.i64(i64 %10, i64 %8)
  %17 = icmp uge i64 %15, %16
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i1 [ false, %9 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = add i64 %10, %8
  %22 = select i1 %19, i64 %21, i64 0
  %23 = add nuw nsw i64 %11, 1
  %24 = icmp eq i64 %11, 0
  br i1 %24, label %9, label %25, !llvm.loop !34

25:                                               ; preds = %18
  %26 = zext nneg i32 %2 to i64
  %27 = add nuw nsw i64 %26, 1
  %28 = select i1 %19, i64 %27, i64 0
  br label %29

29:                                               ; preds = %25, %38
  %30 = phi i64 [ 0, %25 ], [ %42, %38 ]
  %31 = phi i64 [ 0, %25 ], [ %43, %38 ]
  %32 = phi i32 [ %20, %25 ], [ %40, %38 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = add i64 %30, %28
  %36 = tail call i64 @llvm.umax.i64(i64 %30, i64 %28)
  %37 = icmp uge i64 %35, %36
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i1 [ false, %29 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = add i64 %30, %28
  %42 = select i1 %39, i64 %41, i64 0
  %43 = add nuw nsw i64 %31, 1
  %44 = icmp eq i64 %43, 24
  br i1 %44, label %45, label %29, !llvm.loop !34

45:                                               ; preds = %38
  %46 = zext nneg i32 %1 to i64
  %47 = add nuw nsw i64 %46, 1
  %48 = select i1 %39, i64 %47, i64 0
  br label %49

49:                                               ; preds = %45, %57
  %50 = phi i64 [ 0, %45 ], [ %60, %57 ]
  %51 = phi i64 [ 0, %45 ], [ %61, %57 ]
  %52 = phi i1 [ %39, %45 ], [ %58, %57 ]
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = add i64 %50, %48
  %55 = tail call i64 @llvm.umax.i64(i64 %50, i64 %48)
  %56 = icmp uge i64 %54, %55
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  %59 = add i64 %50, %48
  %60 = select i1 %58, i64 %59, i64 0
  %61 = add nuw nsw i64 %51, 1
  %62 = icmp eq i64 %61, 16
  br i1 %62, label %63, label %49, !llvm.loop !34

63:                                               ; preds = %57
  %64 = lshr i64 %42, 2
  %65 = lshr i64 %60, 2
  br i1 %58, label %66, label %70

66:                                               ; preds = %63
  %67 = add i64 %64, %22
  %68 = tail call i64 @llvm.umax.i64(i64 %22, i64 %64)
  %69 = icmp uge i64 %67, %68
  br label %70

70:                                               ; preds = %63, %66
  %71 = phi i1 [ false, %63 ], [ %69, %66 ]
  %72 = add i64 %64, %22
  %73 = select i1 %71, i64 %72, i64 0
  br i1 %71, label %74, label %78

74:                                               ; preds = %70
  %75 = add i64 %73, %65
  %76 = tail call i64 @llvm.umax.i64(i64 %73, i64 %65)
  %77 = icmp uge i64 %75, %76
  br label %78

78:                                               ; preds = %70, %74
  %79 = phi i1 [ false, %70 ], [ %77, %74 ]
  %80 = add i64 %73, %65
  %81 = select i1 %79, i64 %80, i64 0
  br i1 %79, label %82, label %86

82:                                               ; preds = %78
  %83 = add i64 %81, %26
  %84 = tail call i64 @llvm.umax.i64(i64 %81, i64 %26)
  %85 = icmp uge i64 %83, %84
  br label %86

86:                                               ; preds = %78, %82
  %87 = phi i1 [ false, %78 ], [ %85, %82 ]
  %88 = add i64 %81, %26
  %89 = select i1 %87, i64 %88, i64 0
  %90 = udiv i32 %0, 5
  %91 = zext nneg i32 %90 to i64
  br i1 %87, label %92, label %96

92:                                               ; preds = %86
  %93 = add i64 %89, %91
  %94 = tail call i64 @llvm.umax.i64(i64 %89, i64 %91)
  %95 = icmp uge i64 %93, %94
  br label %96

96:                                               ; preds = %86, %92
  %97 = phi i1 [ false, %86 ], [ %95, %92 ]
  %98 = add i64 %89, %91
  %99 = select i1 %97, i64 %98, i64 0
  %100 = icmp ult i64 %99, 2147483647
  %101 = select i1 %97, i1 %100, i1 false
  %102 = select i1 %101, i64 %99, i64 0
  br label %103

103:                                              ; preds = %3, %96
  %104 = phi i64 [ %102, %96 ], [ 0, %3 ]
  ret i64 %104
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @colamd_set_defaults(ptr noundef writeonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 0, i64 160, i1 false), !tbaa !37
  store double 1.000000e+01, ptr %0, align 8, !tbaa !37
  %4 = getelementptr inbounds double, ptr %0, i64 1
  store double 1.000000e+01, ptr %4, align 8, !tbaa !37
  %5 = getelementptr inbounds double, ptr %0, i64 2
  store double 1.000000e+00, ptr %5, align 8, !tbaa !37
  br label %6

6:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @symamd(i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7) local_unnamed_addr #3 {
  %9 = alloca [20 x double], align 16
  %10 = alloca [20 x double], align 16
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %10) #9
  %11 = icmp eq ptr %5, null
  br i1 %11, label %265, label %12

12:                                               ; preds = %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %5, i8 0, i64 80, i1 false), !tbaa !41
  %13 = getelementptr inbounds i32, ptr %5, i64 3
  store i32 0, ptr %13, align 4, !tbaa !41
  %14 = getelementptr inbounds i32, ptr %5, i64 4
  store i32 -1, ptr %14, align 4, !tbaa !41
  %15 = getelementptr inbounds i32, ptr %5, i64 5
  store i32 -1, ptr %15, align 4, !tbaa !41
  %16 = icmp eq ptr %1, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 -1, ptr %13, align 4, !tbaa !41
  br label %265

18:                                               ; preds = %12
  %19 = icmp eq ptr %2, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  store i32 -2, ptr %13, align 4, !tbaa !41
  br label %265

21:                                               ; preds = %18
  %22 = icmp slt i32 %0, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  store i32 -4, ptr %13, align 4, !tbaa !41
  store i32 %0, ptr %14, align 4, !tbaa !41
  br label %265

24:                                               ; preds = %21
  %25 = zext nneg i32 %0 to i64
  %26 = getelementptr inbounds i32, ptr %2, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !41
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -5, ptr %13, align 4, !tbaa !41
  store i32 %27, ptr %14, align 4, !tbaa !41
  br label %265

30:                                               ; preds = %24
  %31 = load i32, ptr %2, align 4, !tbaa !41
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  store i32 -6, ptr %13, align 4, !tbaa !41
  %34 = load i32, ptr %2, align 4, !tbaa !41
  store i32 %34, ptr %14, align 4, !tbaa !41
  br label %265

35:                                               ; preds = %30
  %36 = icmp eq ptr %4, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %10, i8 0, i64 160, i1 false), !tbaa !37
  store double 1.000000e+01, ptr %10, align 16, !tbaa !37
  %38 = getelementptr inbounds double, ptr %10, i64 1
  store double 1.000000e+01, ptr %38, align 8, !tbaa !37
  %39 = getelementptr inbounds double, ptr %10, i64 2
  store double 1.000000e+00, ptr %39, align 16, !tbaa !37
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi ptr [ %4, %35 ], [ %10, %37 ]
  %42 = add nuw nsw i32 %0, 1
  %43 = zext nneg i32 %42 to i64
  %44 = tail call ptr %6(i64 noundef %43, i64 noundef 4) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -10, ptr %13, align 4, !tbaa !41
  br label %265

47:                                               ; preds = %40
  %48 = tail call ptr %6(i64 noundef %43, i64 noundef 4) #9
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 -10, ptr %13, align 4, !tbaa !41
  tail call void %7(ptr noundef nonnull %44) #9
  br label %265

51:                                               ; preds = %47
  %52 = getelementptr inbounds i32, ptr %5, i64 6
  store i32 0, ptr %52, align 4, !tbaa !41
  %53 = icmp eq i32 %0, 0
  br i1 %53, label %122, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %56 = zext nneg i32 %55 to i64
  %57 = shl nuw nsw i64 %56, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %48, i8 -1, i64 %57, i1 false), !tbaa !41
  %58 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %59 = zext nneg i32 %58 to i64
  br label %62

60:                                               ; preds = %115, %71
  %61 = icmp eq i64 %64, %59
  br i1 %61, label %122, label %62, !llvm.loop !43

62:                                               ; preds = %54, %60
  %63 = phi i64 [ 0, %54 ], [ %64, %60 ]
  %64 = add nuw nsw i64 %63, 1
  %65 = getelementptr inbounds i32, ptr %2, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !41
  %67 = getelementptr inbounds i32, ptr %2, i64 %63
  %68 = load i32, ptr %67, align 4, !tbaa !41
  %69 = sub nsw i32 %66, %68
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %62
  %72 = load i32, ptr %65, align 4, !tbaa !41
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %60

74:                                               ; preds = %71
  %75 = getelementptr inbounds i32, ptr %44, i64 %63
  %76 = sext i32 %68 to i64
  %77 = trunc i64 %63 to i32
  %78 = trunc i64 %63 to i32
  br label %81

79:                                               ; preds = %62
  %80 = trunc i64 %63 to i32
  store i32 -8, ptr %13, align 4, !tbaa !41
  store i32 %80, ptr %14, align 4, !tbaa !41
  store i32 %69, ptr %15, align 4, !tbaa !41
  tail call void %7(ptr noundef nonnull %44) #9
  tail call void %7(ptr noundef nonnull %48) #9
  br label %265

81:                                               ; preds = %74, %115
  %82 = phi i64 [ %76, %74 ], [ %118, %115 ]
  %83 = phi i32 [ -1, %74 ], [ %85, %115 ]
  %84 = getelementptr inbounds i32, ptr %1, i64 %82
  %85 = load i32, ptr %84, align 4, !tbaa !41
  %86 = icmp ult i32 %85, %0
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = trunc i64 %63 to i32
  store i32 -9, ptr %13, align 4, !tbaa !41
  store i32 %88, ptr %14, align 4, !tbaa !41
  store i32 %85, ptr %15, align 4, !tbaa !41
  store i32 %0, ptr %52, align 4, !tbaa !41
  tail call void %7(ptr noundef nonnull %44) #9
  tail call void %7(ptr noundef nonnull %48) #9
  br label %265

89:                                               ; preds = %81
  %90 = icmp sgt i32 %85, %83
  br i1 %90, label %91, label %97

91:                                               ; preds = %89
  %92 = zext nneg i32 %85 to i64
  %93 = getelementptr inbounds i32, ptr %48, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !41
  %95 = zext i32 %94 to i64
  %96 = icmp eq i64 %63, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91, %89
  store i32 1, ptr %13, align 4, !tbaa !41
  store i32 %77, ptr %14, align 4, !tbaa !41
  store i32 %85, ptr %15, align 4, !tbaa !41
  %98 = load i32, ptr %52, align 4, !tbaa !41
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %52, align 4, !tbaa !41
  br label %100

100:                                              ; preds = %97, %91
  %101 = sext i32 %85 to i64
  %102 = icmp slt i64 %63, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = zext nneg i32 %85 to i64
  %105 = getelementptr inbounds i32, ptr %48, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !41
  %107 = zext i32 %106 to i64
  %108 = icmp eq i64 %63, %107
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds i32, ptr %44, i64 %104
  %111 = load i32, ptr %110, align 4, !tbaa !41
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %110, align 4, !tbaa !41
  %113 = load i32, ptr %75, align 4, !tbaa !41
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr %75, align 4, !tbaa !41
  br label %115

115:                                              ; preds = %109, %103, %100
  %116 = zext nneg i32 %85 to i64
  %117 = getelementptr inbounds i32, ptr %48, i64 %116
  store i32 %78, ptr %117, align 4, !tbaa !41
  %118 = add nsw i64 %82, 1
  %119 = load i32, ptr %65, align 4, !tbaa !41
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %81, label %60, !llvm.loop !44

122:                                              ; preds = %60, %51
  store i32 0, ptr %3, align 4, !tbaa !41
  %123 = icmp eq i32 %0, 0
  br i1 %123, label %149, label %124

124:                                              ; preds = %122
  %125 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %126 = add nuw i32 %125, 1
  %127 = zext i32 %126 to i64
  %128 = load i32, ptr %3, align 4
  %129 = getelementptr i32, ptr %44, i64 -1
  br label %133

130:                                              ; preds = %133
  %131 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %132 = zext nneg i32 %131 to i64
  br label %142

133:                                              ; preds = %124, %133
  %134 = phi i32 [ %128, %124 ], [ %138, %133 ]
  %135 = phi i64 [ 1, %124 ], [ %140, %133 ]
  %136 = getelementptr i32, ptr %129, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !41
  %138 = add nsw i32 %137, %134
  %139 = getelementptr inbounds i32, ptr %3, i64 %135
  store i32 %138, ptr %139, align 4, !tbaa !41
  %140 = add nuw nsw i64 %135, 1
  %141 = icmp eq i64 %140, %127
  br i1 %141, label %130, label %133, !llvm.loop !45

142:                                              ; preds = %130, %142
  %143 = phi i64 [ 0, %130 ], [ %147, %142 ]
  %144 = getelementptr inbounds i32, ptr %3, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !41
  %146 = getelementptr inbounds i32, ptr %44, i64 %143
  store i32 %145, ptr %146, align 4, !tbaa !41
  %147 = add nuw nsw i64 %143, 1
  %148 = icmp eq i64 %147, %132
  br i1 %148, label %149, label %142, !llvm.loop !46

149:                                              ; preds = %142, %122
  %150 = getelementptr inbounds i32, ptr %3, i64 %25
  %151 = load i32, ptr %150, align 4, !tbaa !41
  %152 = sdiv i32 %151, 2
  %153 = tail call i64 @colamd_recommended(i32 noundef %151, i32 noundef %152, i32 noundef %0)
  %154 = tail call ptr %6(i64 noundef %153, i64 noundef 4) #9
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  store i32 -10, ptr %13, align 4, !tbaa !41
  tail call void %7(ptr noundef nonnull %44) #9
  tail call void %7(ptr noundef nonnull %48) #9
  br label %265

157:                                              ; preds = %149
  %158 = load i32, ptr %13, align 4, !tbaa !41
  %159 = icmp eq i32 %158, 0
  %160 = icmp eq i32 %0, 0
  br i1 %159, label %168, label %161

161:                                              ; preds = %157
  br i1 %160, label %258, label %162

162:                                              ; preds = %161
  %163 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %164 = zext nneg i32 %163 to i64
  %165 = shl nuw nsw i64 %164, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %48, i8 -1, i64 %165, i1 false), !tbaa !41
  %166 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %167 = zext nneg i32 %166 to i64
  br label %215

168:                                              ; preds = %157
  br i1 %160, label %258, label %169

169:                                              ; preds = %168
  %170 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %171 = zext nneg i32 %170 to i64
  br label %175

172:                                              ; preds = %206, %175
  %173 = phi i32 [ %177, %175 ], [ %207, %206 ]
  %174 = icmp eq i64 %180, %171
  br i1 %174, label %258, label %175, !llvm.loop !47

175:                                              ; preds = %169, %172
  %176 = phi i64 [ 0, %169 ], [ %180, %172 ]
  %177 = phi i32 [ 0, %169 ], [ %173, %172 ]
  %178 = getelementptr inbounds i32, ptr %2, i64 %176
  %179 = load i32, ptr %178, align 4, !tbaa !41
  %180 = add nuw nsw i64 %176, 1
  %181 = getelementptr inbounds i32, ptr %2, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !41
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %172

184:                                              ; preds = %175
  %185 = getelementptr inbounds i32, ptr %44, i64 %176
  %186 = sext i32 %179 to i64
  br label %187

187:                                              ; preds = %184, %206
  %188 = phi i64 [ %186, %184 ], [ %208, %206 ]
  %189 = phi i32 [ %177, %184 ], [ %207, %206 ]
  %190 = getelementptr inbounds i32, ptr %1, i64 %188
  %191 = load i32, ptr %190, align 4, !tbaa !41
  %192 = sext i32 %191 to i64
  %193 = icmp slt i64 %176, %192
  br i1 %193, label %194, label %206

194:                                              ; preds = %187
  %195 = sext i32 %191 to i64
  %196 = getelementptr inbounds i32, ptr %44, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !41
  %198 = add nsw i32 %197, 1
  store i32 %198, ptr %196, align 4, !tbaa !41
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, ptr %154, i64 %199
  store i32 %189, ptr %200, align 4, !tbaa !41
  %201 = load i32, ptr %185, align 4, !tbaa !41
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %185, align 4, !tbaa !41
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i32, ptr %154, i64 %203
  store i32 %189, ptr %204, align 4, !tbaa !41
  %205 = add nsw i32 %189, 1
  br label %206

206:                                              ; preds = %187, %194
  %207 = phi i32 [ %205, %194 ], [ %189, %187 ]
  %208 = add nsw i64 %188, 1
  %209 = load i32, ptr %181, align 4, !tbaa !41
  %210 = sext i32 %209 to i64
  %211 = icmp slt i64 %208, %210
  br i1 %211, label %187, label %172, !llvm.loop !48

212:                                              ; preds = %252, %215
  %213 = phi i32 [ %217, %215 ], [ %253, %252 ]
  %214 = icmp eq i64 %220, %167
  br i1 %214, label %258, label %215, !llvm.loop !49

215:                                              ; preds = %162, %212
  %216 = phi i64 [ 0, %162 ], [ %220, %212 ]
  %217 = phi i32 [ 0, %162 ], [ %213, %212 ]
  %218 = getelementptr inbounds i32, ptr %2, i64 %216
  %219 = load i32, ptr %218, align 4, !tbaa !41
  %220 = add nuw nsw i64 %216, 1
  %221 = getelementptr inbounds i32, ptr %2, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !41
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %212

224:                                              ; preds = %215
  %225 = getelementptr inbounds i32, ptr %44, i64 %216
  %226 = sext i32 %219 to i64
  %227 = trunc i64 %216 to i32
  br label %228

228:                                              ; preds = %224, %252
  %229 = phi i64 [ %226, %224 ], [ %254, %252 ]
  %230 = phi i32 [ %217, %224 ], [ %253, %252 ]
  %231 = getelementptr inbounds i32, ptr %1, i64 %229
  %232 = load i32, ptr %231, align 4, !tbaa !41
  %233 = sext i32 %232 to i64
  %234 = icmp slt i64 %216, %233
  br i1 %234, label %235, label %252

235:                                              ; preds = %228
  %236 = sext i32 %232 to i64
  %237 = getelementptr inbounds i32, ptr %48, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !41
  %239 = zext i32 %238 to i64
  %240 = icmp eq i64 %216, %239
  br i1 %240, label %252, label %241

241:                                              ; preds = %235
  %242 = getelementptr inbounds i32, ptr %44, i64 %236
  %243 = load i32, ptr %242, align 4, !tbaa !41
  %244 = add nsw i32 %243, 1
  store i32 %244, ptr %242, align 4, !tbaa !41
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i32, ptr %154, i64 %245
  store i32 %230, ptr %246, align 4, !tbaa !41
  %247 = load i32, ptr %225, align 4, !tbaa !41
  %248 = add nsw i32 %247, 1
  store i32 %248, ptr %225, align 4, !tbaa !41
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i32, ptr %154, i64 %249
  store i32 %230, ptr %250, align 4, !tbaa !41
  %251 = add nsw i32 %230, 1
  store i32 %227, ptr %237, align 4, !tbaa !41
  br label %252

252:                                              ; preds = %228, %235, %241
  %253 = phi i32 [ %251, %241 ], [ %230, %235 ], [ %230, %228 ]
  %254 = add nsw i64 %229, 1
  %255 = load i32, ptr %221, align 4, !tbaa !41
  %256 = sext i32 %255 to i64
  %257 = icmp slt i64 %254, %256
  br i1 %257, label %228, label %212, !llvm.loop !50

258:                                              ; preds = %212, %172, %161, %168
  tail call void %7(ptr noundef nonnull %44) #9
  tail call void %7(ptr noundef nonnull %48) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %9, ptr noundef nonnull align 8 dereferenceable(160) %41, i64 160, i1 false), !tbaa !37
  store double -1.000000e+00, ptr %9, align 16, !tbaa !37
  %259 = load double, ptr %41, align 8, !tbaa !37
  %260 = getelementptr inbounds [20 x double], ptr %9, i64 0, i64 1
  store double %259, ptr %260, align 8, !tbaa !37
  %261 = trunc i64 %153 to i32
  %262 = call i32 @colamd(i32 noundef %152, i32 noundef %0, i32 noundef %261, ptr noundef nonnull %154, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %5), !range !51
  %263 = getelementptr inbounds i32, ptr %5, i64 1
  %264 = load i32, ptr %263, align 4, !tbaa !41
  store i32 %264, ptr %5, align 4, !tbaa !41
  call void %7(ptr noundef nonnull %154) #9
  br label %265

265:                                              ; preds = %8, %258, %156, %87, %79, %50, %46, %33, %29, %23, %20, %17
  %266 = phi i32 [ 0, %23 ], [ 0, %29 ], [ 0, %33 ], [ 0, %79 ], [ 0, %87 ], [ 1, %258 ], [ 0, %156 ], [ 0, %50 ], [ 0, %46 ], [ 0, %20 ], [ 0, %17 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %9) #9
  ret i32 %266
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @colamd(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly %5, ptr noundef %6) local_unnamed_addr #4 {
  %8 = alloca [20 x double], align 16
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %8) #9
  %9 = icmp eq ptr %6, null
  br i1 %9, label %1227, label %10

10:                                               ; preds = %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %6, i8 0, i64 80, i1 false), !tbaa !41
  %11 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 0, ptr %11, align 4, !tbaa !41
  %12 = getelementptr inbounds i32, ptr %6, i64 4
  store i32 -1, ptr %12, align 4, !tbaa !41
  %13 = getelementptr inbounds i32, ptr %6, i64 5
  store i32 -1, ptr %13, align 4, !tbaa !41
  %14 = icmp eq ptr %3, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 -1, ptr %11, align 4, !tbaa !41
  br label %1227

16:                                               ; preds = %10
  %17 = icmp eq ptr %4, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 -2, ptr %11, align 4, !tbaa !41
  br label %1227

19:                                               ; preds = %16
  %20 = icmp slt i32 %0, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  store i32 -3, ptr %11, align 4, !tbaa !41
  store i32 %0, ptr %12, align 4, !tbaa !41
  br label %1227

22:                                               ; preds = %19
  %23 = icmp slt i32 %1, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  store i32 -4, ptr %11, align 4, !tbaa !41
  store i32 %1, ptr %12, align 4, !tbaa !41
  br label %1227

25:                                               ; preds = %22
  %26 = zext nneg i32 %1 to i64
  %27 = getelementptr inbounds i32, ptr %4, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !41
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -5, ptr %11, align 4, !tbaa !41
  store i32 %28, ptr %12, align 4, !tbaa !41
  br label %1227

31:                                               ; preds = %25
  %32 = load i32, ptr %4, align 4, !tbaa !41
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  store i32 -6, ptr %11, align 4, !tbaa !41
  %35 = load i32, ptr %4, align 4, !tbaa !41
  store i32 %35, ptr %12, align 4, !tbaa !41
  br label %1227

36:                                               ; preds = %31
  %37 = icmp eq ptr %5, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %8, i8 0, i64 160, i1 false), !tbaa !37
  store double 1.000000e+01, ptr %8, align 16, !tbaa !37
  %39 = getelementptr inbounds double, ptr %8, i64 1
  store double 1.000000e+01, ptr %39, align 8, !tbaa !37
  %40 = getelementptr inbounds double, ptr %8, i64 2
  store double 1.000000e+00, ptr %40, align 16, !tbaa !37
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi ptr [ %5, %36 ], [ %8, %38 ]
  %43 = getelementptr inbounds double, ptr %42, i64 2
  %44 = load double, ptr %43, align 8, !tbaa !37
  %45 = add nuw nsw i64 %26, 1
  br label %46

46:                                               ; preds = %41, %55
  %47 = phi i64 [ 0, %41 ], [ %59, %55 ]
  %48 = phi i64 [ 0, %41 ], [ %60, %55 ]
  %49 = phi i32 [ 1, %41 ], [ %57, %55 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = add i64 %47, %45
  %53 = tail call i64 @llvm.umax.i64(i64 %47, i64 %45)
  %54 = icmp uge i64 %52, %53
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i1 [ false, %46 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = add i64 %47, %45
  %59 = select i1 %56, i64 %58, i64 0
  %60 = add nuw nsw i64 %48, 1
  %61 = icmp eq i64 %60, 24
  br i1 %61, label %62, label %46, !llvm.loop !34

62:                                               ; preds = %55
  %63 = fcmp une double %44, 0.000000e+00
  %64 = add nuw i32 %0, 1
  %65 = zext i32 %64 to i64
  %66 = select i1 %56, i64 %65, i64 0
  br label %67

67:                                               ; preds = %62, %76
  %68 = phi i64 [ 0, %62 ], [ %80, %76 ]
  %69 = phi i64 [ 0, %62 ], [ %81, %76 ]
  %70 = phi i32 [ %57, %62 ], [ %78, %76 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = add i64 %68, %66
  %74 = tail call i64 @llvm.umax.i64(i64 %68, i64 %66)
  %75 = icmp uge i64 %73, %74
  br label %76

76:                                               ; preds = %72, %67
  %77 = phi i1 [ false, %67 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = add i64 %68, %66
  %80 = select i1 %77, i64 %79, i64 0
  %81 = add nuw nsw i64 %69, 1
  %82 = icmp eq i64 %81, 16
  br i1 %82, label %83, label %67, !llvm.loop !34

83:                                               ; preds = %76
  %84 = lshr i64 %59, 2
  %85 = zext nneg i32 %28 to i64
  br label %86

86:                                               ; preds = %83, %95
  %87 = phi i64 [ 0, %83 ], [ %99, %95 ]
  %88 = phi i64 [ 0, %83 ], [ %100, %95 ]
  %89 = phi i32 [ %78, %83 ], [ %97, %95 ]
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = add i64 %87, %85
  %93 = tail call i64 @llvm.umax.i64(i64 %87, i64 %85)
  %94 = icmp uge i64 %92, %93
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi i1 [ false, %86 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  %98 = add i64 %87, %85
  %99 = select i1 %96, i64 %98, i64 0
  %100 = add nuw nsw i64 %88, 1
  %101 = icmp eq i64 %88, 0
  br i1 %101, label %86, label %102, !llvm.loop !34

102:                                              ; preds = %95
  %103 = lshr i64 %80, 2
  br i1 %96, label %104, label %108

104:                                              ; preds = %102
  %105 = add i64 %99, %26
  %106 = tail call i64 @llvm.umax.i64(i64 %99, i64 %26)
  %107 = icmp uge i64 %105, %106
  br label %108

108:                                              ; preds = %102, %104
  %109 = phi i1 [ false, %102 ], [ %107, %104 ]
  %110 = add i64 %99, %26
  %111 = select i1 %109, i64 %110, i64 0
  br i1 %109, label %112, label %116

112:                                              ; preds = %108
  %113 = add i64 %111, %84
  %114 = tail call i64 @llvm.umax.i64(i64 %111, i64 %84)
  %115 = icmp uge i64 %113, %114
  br label %116

116:                                              ; preds = %108, %112
  %117 = phi i1 [ false, %108 ], [ %115, %112 ]
  %118 = add i64 %111, %84
  %119 = select i1 %117, i64 %118, i64 0
  br i1 %117, label %120, label %124

120:                                              ; preds = %116
  %121 = add i64 %119, %103
  %122 = tail call i64 @llvm.umax.i64(i64 %119, i64 %103)
  %123 = icmp uge i64 %121, %122
  br label %124

124:                                              ; preds = %116, %120
  %125 = phi i1 [ false, %116 ], [ %123, %120 ]
  %126 = add i64 %119, %103
  %127 = select i1 %125, i64 %126, i64 0
  br i1 %125, label %128, label %133

128:                                              ; preds = %124
  %129 = sext i32 %2 to i64
  %130 = icmp ugt i64 %127, %129
  %131 = icmp ugt i64 %127, 2147483647
  %132 = or i1 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %128, %124
  store i32 -7, ptr %11, align 4, !tbaa !41
  %134 = trunc i64 %127 to i32
  store i32 %134, ptr %12, align 4, !tbaa !41
  store i32 %2, ptr %13, align 4, !tbaa !41
  br label %1227

135:                                              ; preds = %128
  %136 = add nuw nsw i64 %103, %84
  %137 = trunc i64 %136 to i32
  %138 = sub i32 %2, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %3, i64 %139
  %141 = getelementptr i32, ptr %3, i64 %84
  %142 = getelementptr i32, ptr %141, i64 %139
  %143 = icmp eq i32 %1, 0
  br i1 %143, label %165, label %144

144:                                              ; preds = %135, %159
  %145 = phi i64 [ %149, %159 ], [ 0, %135 ]
  %146 = getelementptr inbounds i32, ptr %4, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !41
  %148 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %145
  store i32 %147, ptr %148, align 4, !tbaa !52
  %149 = add nuw nsw i64 %145, 1
  %150 = getelementptr inbounds i32, ptr %4, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !41
  %152 = load i32, ptr %146, align 4, !tbaa !41
  %153 = sub nsw i32 %151, %152
  %154 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %145, i32 1
  store i32 %153, ptr %154, align 4, !tbaa !54
  %155 = icmp slt i32 %153, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %144
  %157 = trunc i64 %145 to i32
  store i32 -8, ptr %11, align 4, !tbaa !41
  store i32 %157, ptr %12, align 4, !tbaa !41
  %158 = load i32, ptr %154, align 4, !tbaa !54
  store i32 %158, ptr %13, align 4, !tbaa !41
  br label %1227

159:                                              ; preds = %144
  %160 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %145, i32 2
  store i32 1, ptr %160, align 4, !tbaa !55
  %161 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %145, i32 3
  store i32 0, ptr %161, align 4, !tbaa !55
  %162 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %145, i32 4
  store i32 -1, ptr %162, align 4, !tbaa !55
  %163 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %145, i32 5
  store i32 -1, ptr %163, align 4, !tbaa !55
  %164 = icmp eq i64 %149, %26
  br i1 %164, label %165, label %144, !llvm.loop !56

165:                                              ; preds = %159, %135
  %166 = getelementptr inbounds i32, ptr %6, i64 6
  store i32 0, ptr %166, align 4, !tbaa !41
  %167 = icmp eq i32 %0, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = zext nneg i32 %0 to i64
  br label %171

170:                                              ; preds = %171, %165
  br i1 %143, label %226, label %179

171:                                              ; preds = %171, %168
  %172 = phi i64 [ 0, %168 ], [ %175, %171 ]
  %173 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %172, i32 1
  store i32 0, ptr %173, align 4, !tbaa !57
  %174 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %172, i32 3
  store i32 -1, ptr %174, align 4, !tbaa !55
  %175 = add nuw nsw i64 %172, 1
  %176 = icmp eq i64 %175, %169
  br i1 %176, label %170, label %171, !llvm.loop !59

177:                                              ; preds = %214, %179
  %178 = icmp eq i64 %183, %26
  br i1 %178, label %226, label %179, !llvm.loop !60

179:                                              ; preds = %170, %177
  %180 = phi i64 [ %183, %177 ], [ 0, %170 ]
  %181 = getelementptr inbounds i32, ptr %4, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !41
  %183 = add nuw nsw i64 %180, 1
  %184 = getelementptr inbounds i32, ptr %4, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !41
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, ptr %3, i64 %186
  %188 = icmp slt i32 %182, %185
  br i1 %188, label %189, label %177

189:                                              ; preds = %179
  %190 = sext i32 %182 to i64
  %191 = getelementptr inbounds i32, ptr %3, i64 %190
  %192 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %180, i32 1
  %193 = trunc i64 %180 to i32
  %194 = trunc i64 %180 to i32
  br label %195

195:                                              ; preds = %214, %189
  %196 = phi i32 [ -1, %189 ], [ %199, %214 ]
  %197 = phi ptr [ %191, %189 ], [ %198, %214 ]
  %198 = getelementptr inbounds i32, ptr %197, i64 1
  %199 = load i32, ptr %197, align 4, !tbaa !41
  %200 = icmp ult i32 %199, %0
  br i1 %200, label %203, label %201

201:                                              ; preds = %195
  %202 = trunc i64 %180 to i32
  store i32 -9, ptr %11, align 4, !tbaa !41
  store i32 %202, ptr %12, align 4, !tbaa !41
  store i32 %199, ptr %13, align 4, !tbaa !41
  store i32 %0, ptr %166, align 4, !tbaa !41
  br label %1227

203:                                              ; preds = %195
  %204 = icmp sgt i32 %199, %196
  br i1 %204, label %205, label %211

205:                                              ; preds = %203
  %206 = zext nneg i32 %199 to i64
  %207 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %206, i32 3
  %208 = load i32, ptr %207, align 4, !tbaa !55
  %209 = zext i32 %208 to i64
  %210 = icmp eq i64 %180, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %205, %203
  store i32 1, ptr %11, align 4, !tbaa !41
  store i32 %193, ptr %12, align 4, !tbaa !41
  store i32 %199, ptr %13, align 4, !tbaa !41
  %212 = load i32, ptr %166, align 4, !tbaa !41
  %213 = add nsw i32 %212, 1
  store i32 %213, ptr %166, align 4, !tbaa !41
  br label %214

214:                                              ; preds = %211, %205
  %215 = zext nneg i32 %199 to i64
  %216 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %215, i32 3
  %217 = load i32, ptr %216, align 4, !tbaa !55
  %218 = zext i32 %217 to i64
  %219 = icmp eq i64 %180, %218
  %220 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %215, i32 1
  %221 = select i1 %219, ptr %192, ptr %220
  %222 = select i1 %219, i32 -1, i32 1
  %223 = load i32, ptr %221, align 4, !tbaa !41
  %224 = add nsw i32 %223, %222
  store i32 %224, ptr %221, align 4, !tbaa !41
  store i32 %194, ptr %216, align 4, !tbaa !55
  %225 = icmp ult ptr %198, %187
  br i1 %225, label %195, label %177, !llvm.loop !61

226:                                              ; preds = %177, %170
  %227 = load i32, ptr %27, align 4, !tbaa !41
  store i32 %227, ptr %142, align 4, !tbaa !62
  %228 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 0, i32 2
  store i32 %227, ptr %228, align 4, !tbaa !55
  %229 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 0, i32 3
  store i32 -1, ptr %229, align 4, !tbaa !55
  %230 = icmp sgt i32 %0, 1
  br i1 %230, label %231, label %245

231:                                              ; preds = %226
  %232 = zext nneg i32 %0 to i64
  br label %233

233:                                              ; preds = %233, %231
  %234 = phi i64 [ 1, %231 ], [ %243, %233 ]
  %235 = getelementptr %struct.Colamd_Row_struct, ptr %142, i64 %234
  %236 = getelementptr %struct.Colamd_Row_struct, ptr %235, i64 -1
  %237 = load i32, ptr %236, align 4, !tbaa !62
  %238 = getelementptr %struct.Colamd_Row_struct, ptr %235, i64 -1, i32 1
  %239 = load i32, ptr %238, align 4, !tbaa !57
  %240 = add nsw i32 %239, %237
  store i32 %240, ptr %235, align 4, !tbaa !62
  %241 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %234, i32 2
  store i32 %240, ptr %241, align 4, !tbaa !55
  %242 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %234, i32 3
  store i32 -1, ptr %242, align 4, !tbaa !55
  %243 = add nuw nsw i64 %234, 1
  %244 = icmp eq i64 %243, %232
  br i1 %244, label %245, label %233, !llvm.loop !63

245:                                              ; preds = %233, %226
  %246 = load i32, ptr %11, align 4, !tbaa !41
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %249, label %248

248:                                              ; preds = %245
  br i1 %143, label %310, label %285

249:                                              ; preds = %245
  br i1 %143, label %310, label %252

250:                                              ; preds = %281, %252
  %251 = icmp eq i64 %256, %26
  br i1 %251, label %310, label %252, !llvm.loop !64

252:                                              ; preds = %249, %250
  %253 = phi i64 [ %256, %250 ], [ 0, %249 ]
  %254 = getelementptr inbounds i32, ptr %4, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !41
  %256 = add nuw nsw i64 %253, 1
  %257 = getelementptr inbounds i32, ptr %4, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !41
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, ptr %3, i64 %259
  %261 = icmp slt i32 %255, %258
  br i1 %261, label %262, label %250

262:                                              ; preds = %252
  %263 = sext i32 %255 to i64
  %264 = getelementptr inbounds i32, ptr %3, i64 %263
  %265 = trunc i64 %253 to i32
  br label %266

266:                                              ; preds = %281, %262
  %267 = phi ptr [ %268, %281 ], [ %264, %262 ]
  %268 = getelementptr inbounds i32, ptr %267, i64 1
  %269 = load i32, ptr %267, align 4, !tbaa !41
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %270, i32 3
  %272 = load i32, ptr %271, align 4, !tbaa !55
  %273 = zext i32 %272 to i64
  %274 = icmp eq i64 %253, %273
  br i1 %274, label %281, label %275

275:                                              ; preds = %266
  %276 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %270, i32 2
  %277 = load i32, ptr %276, align 4, !tbaa !55
  %278 = add nsw i32 %277, 1
  store i32 %278, ptr %276, align 4, !tbaa !55
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, ptr %3, i64 %279
  store i32 %265, ptr %280, align 4, !tbaa !41
  store i32 %265, ptr %271, align 4, !tbaa !55
  br label %281

281:                                              ; preds = %275, %266
  %282 = icmp ult ptr %268, %260
  br i1 %282, label %266, label %250, !llvm.loop !65

283:                                              ; preds = %299, %285
  %284 = icmp eq i64 %289, %26
  br i1 %284, label %310, label %285, !llvm.loop !66

285:                                              ; preds = %248, %283
  %286 = phi i64 [ %289, %283 ], [ 0, %248 ]
  %287 = getelementptr inbounds i32, ptr %4, i64 %286
  %288 = load i32, ptr %287, align 4, !tbaa !41
  %289 = add nuw nsw i64 %286, 1
  %290 = getelementptr inbounds i32, ptr %4, i64 %289
  %291 = load i32, ptr %290, align 4, !tbaa !41
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, ptr %3, i64 %292
  %294 = icmp slt i32 %288, %291
  br i1 %294, label %295, label %283

295:                                              ; preds = %285
  %296 = sext i32 %288 to i64
  %297 = getelementptr inbounds i32, ptr %3, i64 %296
  %298 = trunc i64 %286 to i32
  br label %299

299:                                              ; preds = %299, %295
  %300 = phi ptr [ %301, %299 ], [ %297, %295 ]
  %301 = getelementptr inbounds i32, ptr %300, i64 1
  %302 = load i32, ptr %300, align 4, !tbaa !41
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %303, i32 2
  %305 = load i32, ptr %304, align 4, !tbaa !55
  %306 = add nsw i32 %305, 1
  store i32 %306, ptr %304, align 4, !tbaa !55
  %307 = sext i32 %305 to i64
  %308 = getelementptr inbounds i32, ptr %3, i64 %307
  store i32 %298, ptr %308, align 4, !tbaa !41
  %309 = icmp ult ptr %301, %293
  br i1 %309, label %299, label %283, !llvm.loop !67

310:                                              ; preds = %283, %250, %249, %248
  br i1 %167, label %321, label %311

311:                                              ; preds = %310
  %312 = zext nneg i32 %0 to i64
  br label %313

313:                                              ; preds = %313, %311
  %314 = phi i64 [ 0, %311 ], [ %319, %313 ]
  %315 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %314, i32 3
  store i32 0, ptr %315, align 4, !tbaa !55
  %316 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %314, i32 1
  %317 = load i32, ptr %316, align 4, !tbaa !57
  %318 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %314, i32 2
  store i32 %317, ptr %318, align 4, !tbaa !55
  %319 = add nuw nsw i64 %314, 1
  %320 = icmp eq i64 %319, %312
  br i1 %320, label %321, label %313, !llvm.loop !68

321:                                              ; preds = %313, %310
  %322 = load i32, ptr %11, align 4, !tbaa !41
  %323 = icmp eq i32 %322, 1
  br i1 %323, label %324, label %367

324:                                              ; preds = %321
  store i32 0, ptr %140, align 4, !tbaa !52
  store i32 0, ptr %4, align 4, !tbaa !41
  %325 = icmp sgt i32 %1, 1
  br i1 %325, label %329, label %326

326:                                              ; preds = %329, %324
  br i1 %167, label %367, label %327

327:                                              ; preds = %326
  %328 = zext nneg i32 %0 to i64
  br label %340

329:                                              ; preds = %324, %329
  %330 = phi i64 [ %338, %329 ], [ 1, %324 ]
  %331 = getelementptr %struct.Colamd_Col_struct, ptr %140, i64 %330
  %332 = getelementptr %struct.Colamd_Col_struct, ptr %331, i64 -1
  %333 = load i32, ptr %332, align 4, !tbaa !52
  %334 = getelementptr %struct.Colamd_Col_struct, ptr %331, i64 -1, i32 1
  %335 = load i32, ptr %334, align 4, !tbaa !54
  %336 = add nsw i32 %335, %333
  store i32 %336, ptr %331, align 4, !tbaa !52
  %337 = getelementptr inbounds i32, ptr %4, i64 %330
  store i32 %336, ptr %337, align 4, !tbaa !41
  %338 = add nuw nsw i64 %330, 1
  %339 = icmp eq i64 %338, %26
  br i1 %339, label %326, label %329, !llvm.loop !69

340:                                              ; preds = %364, %327
  %341 = phi i64 [ 0, %327 ], [ %365, %364 ]
  %342 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %341
  %343 = load i32, ptr %342, align 4, !tbaa !62
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, ptr %3, i64 %344
  %346 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %341, i32 1
  %347 = load i32, ptr %346, align 4, !tbaa !57
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, ptr %345, i64 %348
  %350 = icmp sgt i32 %347, 0
  br i1 %350, label %351, label %364

351:                                              ; preds = %340
  %352 = trunc i64 %341 to i32
  br label %353

353:                                              ; preds = %351, %353
  %354 = phi ptr [ %355, %353 ], [ %345, %351 ]
  %355 = getelementptr inbounds i32, ptr %354, i64 1
  %356 = load i32, ptr %354, align 4, !tbaa !41
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, ptr %4, i64 %357
  %359 = load i32, ptr %358, align 4, !tbaa !41
  %360 = add nsw i32 %359, 1
  store i32 %360, ptr %358, align 4, !tbaa !41
  %361 = sext i32 %359 to i64
  %362 = getelementptr inbounds i32, ptr %3, i64 %361
  store i32 %352, ptr %362, align 4, !tbaa !41
  %363 = icmp ult ptr %355, %349
  br i1 %363, label %353, label %364, !llvm.loop !70

364:                                              ; preds = %353, %340
  %365 = add nuw nsw i64 %341, 1
  %366 = icmp eq i64 %365, %328
  br i1 %366, label %367, label %340, !llvm.loop !71

367:                                              ; preds = %364, %326, %321
  %368 = load double, ptr %42, align 8, !tbaa !37
  %369 = fcmp olt double %368, 0.000000e+00
  br i1 %369, label %370, label %372

370:                                              ; preds = %367
  %371 = add nsw i32 %1, -1
  br label %382

372:                                              ; preds = %367
  %373 = sitofp i32 %1 to double
  %374 = tail call double @sqrt(double noundef %373) #9
  %375 = fmul double %368, %374
  %376 = fcmp olt double %375, 1.600000e+01
  br i1 %376, label %382, label %377

377:                                              ; preds = %372
  %378 = load double, ptr %42, align 8, !tbaa !37
  %379 = tail call double @sqrt(double noundef %373) #9
  %380 = fmul double %378, %379
  %381 = fptosi double %380 to i32
  br label %382

382:                                              ; preds = %377, %372, %370
  %383 = phi i32 [ %371, %370 ], [ %381, %377 ], [ 16, %372 ]
  %384 = getelementptr inbounds double, ptr %42, i64 1
  %385 = load double, ptr %384, align 8, !tbaa !37
  %386 = fcmp olt double %385, 0.000000e+00
  br i1 %386, label %387, label %389

387:                                              ; preds = %382
  %388 = add nsw i32 %0, -1
  br label %400

389:                                              ; preds = %382
  %390 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %391 = sitofp i32 %390 to double
  %392 = tail call double @sqrt(double noundef %391) #9
  %393 = fmul double %385, %392
  %394 = fcmp olt double %393, 1.600000e+01
  br i1 %394, label %400, label %395

395:                                              ; preds = %389
  %396 = load double, ptr %384, align 8, !tbaa !37
  %397 = tail call double @sqrt(double noundef %391) #9
  %398 = fmul double %396, %397
  %399 = fptosi double %398 to i32
  br label %400

400:                                              ; preds = %395, %389, %387
  %401 = phi i32 [ %388, %387 ], [ %399, %395 ], [ 16, %389 ]
  %402 = add nsw i32 %1, -1
  br i1 %143, label %405, label %403

403:                                              ; preds = %400
  %404 = zext i32 %402 to i64
  br label %409

405:                                              ; preds = %419, %400
  %406 = phi i32 [ %1, %400 ], [ %420, %419 ]
  br i1 %143, label %423, label %407

407:                                              ; preds = %405
  %408 = zext i32 %402 to i64
  br label %428

409:                                              ; preds = %419, %403
  %410 = phi i64 [ %404, %403 ], [ %421, %419 ]
  %411 = phi i32 [ %1, %403 ], [ %420, %419 ]
  %412 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %410, i32 1
  %413 = load i32, ptr %412, align 4, !tbaa !54
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %409
  %416 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %410
  %417 = add nsw i32 %411, -1
  %418 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %410, i32 3
  store i32 %417, ptr %418, align 4, !tbaa !55
  store i32 -1, ptr %416, align 4, !tbaa !52
  br label %419

419:                                              ; preds = %415, %409
  %420 = phi i32 [ %417, %415 ], [ %411, %409 ]
  %421 = add nsw i64 %410, -1
  %422 = icmp sgt i64 %410, 0
  br i1 %422, label %409, label %405, !llvm.loop !72

423:                                              ; preds = %456, %405
  %424 = phi i32 [ %406, %405 ], [ %457, %456 ]
  %425 = icmp eq i32 %0, 0
  br i1 %425, label %460, label %426

426:                                              ; preds = %423
  %427 = zext nneg i32 %0 to i64
  br label %465

428:                                              ; preds = %456, %407
  %429 = phi i64 [ %408, %407 ], [ %458, %456 ]
  %430 = phi i32 [ %406, %407 ], [ %457, %456 ]
  %431 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %429
  %432 = load i32, ptr %431, align 4, !tbaa !52
  %433 = icmp slt i32 %432, 0
  br i1 %433, label %456, label %434

434:                                              ; preds = %428
  %435 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %429, i32 1
  %436 = load i32, ptr %435, align 4, !tbaa !54
  %437 = icmp sgt i32 %436, %401
  br i1 %437, label %438, label %456

438:                                              ; preds = %434
  %439 = add nsw i32 %430, -1
  %440 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %429, i32 3
  store i32 %439, ptr %440, align 4, !tbaa !55
  %441 = zext nneg i32 %432 to i64
  %442 = getelementptr inbounds i32, ptr %3, i64 %441
  %443 = sext i32 %436 to i64
  %444 = getelementptr inbounds i32, ptr %442, i64 %443
  %445 = icmp sgt i32 %436, 0
  br i1 %445, label %446, label %455

446:                                              ; preds = %438, %446
  %447 = phi ptr [ %448, %446 ], [ %442, %438 ]
  %448 = getelementptr inbounds i32, ptr %447, i64 1
  %449 = load i32, ptr %447, align 4, !tbaa !41
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %450, i32 2
  %452 = load i32, ptr %451, align 4, !tbaa !55
  %453 = add nsw i32 %452, -1
  store i32 %453, ptr %451, align 4, !tbaa !55
  %454 = icmp ult ptr %448, %444
  br i1 %454, label %446, label %455, !llvm.loop !73

455:                                              ; preds = %446, %438
  store i32 -1, ptr %431, align 4, !tbaa !52
  br label %456

456:                                              ; preds = %455, %434, %428
  %457 = phi i32 [ %430, %428 ], [ %439, %455 ], [ %430, %434 ]
  %458 = add nsw i64 %429, -1
  %459 = icmp sgt i64 %429, 0
  br i1 %459, label %428, label %423, !llvm.loop !74

460:                                              ; preds = %479, %423
  %461 = phi i32 [ %0, %423 ], [ %480, %479 ]
  %462 = phi i32 [ 0, %423 ], [ %481, %479 ]
  br i1 %143, label %484, label %463

463:                                              ; preds = %460
  %464 = zext i32 %402 to i64
  br label %489

465:                                              ; preds = %479, %426
  %466 = phi i64 [ 0, %426 ], [ %482, %479 ]
  %467 = phi i32 [ 0, %426 ], [ %481, %479 ]
  %468 = phi i32 [ %0, %426 ], [ %480, %479 ]
  %469 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %466, i32 2
  %470 = load i32, ptr %469, align 4, !tbaa !55
  %471 = icmp sgt i32 %470, %383
  %472 = icmp eq i32 %470, 0
  %473 = or i1 %471, %472
  br i1 %473, label %474, label %477

474:                                              ; preds = %465
  %475 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %466, i32 3
  store i32 -1, ptr %475, align 4, !tbaa !55
  %476 = add nsw i32 %468, -1
  br label %479

477:                                              ; preds = %465
  %478 = tail call i32 @llvm.smax.i32(i32 %467, i32 %470)
  br label %479

479:                                              ; preds = %477, %474
  %480 = phi i32 [ %476, %474 ], [ %468, %477 ]
  %481 = phi i32 [ %467, %474 ], [ %478, %477 ]
  %482 = add nuw nsw i64 %466, 1
  %483 = icmp eq i64 %482, %427
  br i1 %483, label %460, label %465, !llvm.loop !75

484:                                              ; preds = %537, %460
  %485 = phi i32 [ %424, %460 ], [ %538, %537 ]
  %486 = add nuw i32 %1, 1
  %487 = zext i32 %486 to i64
  %488 = shl nuw nsw i64 %487, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %4, i8 -1, i64 %488, i1 false), !tbaa !41
  br i1 %143, label %566, label %541

489:                                              ; preds = %537, %463
  %490 = phi i64 [ %464, %463 ], [ %539, %537 ]
  %491 = phi i32 [ %424, %463 ], [ %538, %537 ]
  %492 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %490
  %493 = load i32, ptr %492, align 4, !tbaa !52
  %494 = icmp slt i32 %493, 0
  br i1 %494, label %537, label %495

495:                                              ; preds = %489
  %496 = zext nneg i32 %493 to i64
  %497 = getelementptr inbounds i32, ptr %3, i64 %496
  %498 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %490, i32 1
  %499 = load i32, ptr %498, align 4, !tbaa !54
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, ptr %497, i64 %500
  br label %502

502:                                              ; preds = %516, %495
  %503 = phi ptr [ %510, %516 ], [ %497, %495 ]
  %504 = phi ptr [ %517, %516 ], [ %497, %495 ]
  %505 = phi i32 [ %522, %516 ], [ 0, %495 ]
  br label %506

506:                                              ; preds = %509, %502
  %507 = phi ptr [ %510, %509 ], [ %503, %502 ]
  %508 = icmp ult ptr %507, %501
  br i1 %508, label %509, label %523

509:                                              ; preds = %506
  %510 = getelementptr inbounds i32, ptr %507, i64 1
  %511 = load i32, ptr %507, align 4, !tbaa !41
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %512, i32 3
  %514 = load i32, ptr %513, align 4, !tbaa !55
  %515 = icmp slt i32 %514, 0
  br i1 %515, label %506, label %516, !llvm.loop !76

516:                                              ; preds = %509
  %517 = getelementptr inbounds i32, ptr %504, i64 1
  store i32 %511, ptr %504, align 4, !tbaa !41
  %518 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %512, i32 2
  %519 = load i32, ptr %518, align 4, !tbaa !55
  %520 = add i32 %505, -1
  %521 = add i32 %520, %519
  %522 = tail call i32 @llvm.smin.i32(i32 %521, i32 %1)
  br label %502, !llvm.loop !76

523:                                              ; preds = %506
  %524 = load i32, ptr %492, align 4, !tbaa !52
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, ptr %3, i64 %525
  %527 = ptrtoint ptr %504 to i64
  %528 = ptrtoint ptr %526 to i64
  %529 = sub i64 %527, %528
  %530 = lshr exact i64 %529, 2
  %531 = trunc i64 %530 to i32
  %532 = icmp eq i32 %531, 0
  %533 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %490, i32 3
  br i1 %532, label %534, label %536

534:                                              ; preds = %523
  %535 = add nsw i32 %491, -1
  store i32 %535, ptr %533, align 4, !tbaa !55
  store i32 -1, ptr %492, align 4, !tbaa !52
  br label %537

536:                                              ; preds = %523
  store i32 %531, ptr %498, align 4, !tbaa !54
  store i32 %505, ptr %533, align 4, !tbaa !55
  br label %537

537:                                              ; preds = %536, %534, %489
  %538 = phi i32 [ %491, %489 ], [ %535, %534 ], [ %491, %536 ]
  %539 = add nsw i64 %490, -1
  %540 = icmp sgt i64 %490, 0
  br i1 %540, label %489, label %484, !llvm.loop !77

541:                                              ; preds = %484
  %542 = zext i32 %402 to i64
  br label %543

543:                                              ; preds = %563, %541
  %544 = phi i64 [ %542, %541 ], [ %564, %563 ]
  %545 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %544
  %546 = load i32, ptr %545, align 4, !tbaa !52
  %547 = icmp sgt i32 %546, -1
  br i1 %547, label %548, label %563

548:                                              ; preds = %543
  %549 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %544, i32 3
  %550 = load i32, ptr %549, align 4, !tbaa !55
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, ptr %4, i64 %551
  %553 = load i32, ptr %552, align 4, !tbaa !41
  %554 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %544, i32 4
  store i32 -1, ptr %554, align 4, !tbaa !55
  %555 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %544, i32 5
  store i32 %553, ptr %555, align 4, !tbaa !55
  %556 = icmp eq i32 %553, -1
  br i1 %556, label %561, label %557

557:                                              ; preds = %548
  %558 = sext i32 %553 to i64
  %559 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %558, i32 4
  %560 = trunc i64 %544 to i32
  store i32 %560, ptr %559, align 4, !tbaa !55
  br label %561

561:                                              ; preds = %557, %548
  %562 = trunc i64 %544 to i32
  store i32 %562, ptr %552, align 4, !tbaa !41
  br label %563

563:                                              ; preds = %561, %543
  %564 = add nsw i64 %544, -1
  %565 = icmp sgt i64 %544, 0
  br i1 %565, label %543, label %566, !llvm.loop !78

566:                                              ; preds = %563, %484
  %567 = shl nuw nsw i32 %28, 1
  %568 = xor i32 %1, 2147483647
  br i1 %425, label %571, label %569

569:                                              ; preds = %566
  %570 = zext nneg i32 %0 to i64
  br label %581

571:                                              ; preds = %587, %566
  %572 = icmp sgt i32 %485, 0
  br i1 %572, label %573, label %1174

573:                                              ; preds = %571
  %574 = ptrtoint ptr %3 to i64
  %575 = add nuw nsw i32 %1, 1
  %576 = icmp eq i32 %0, 0
  %577 = zext nneg i32 %1 to i64
  %578 = zext nneg i32 %0 to i64
  %579 = zext nneg i32 %0 to i64
  %580 = zext nneg i32 %0 to i64
  br label %590

581:                                              ; preds = %587, %569
  %582 = phi i64 [ 0, %569 ], [ %588, %587 ]
  %583 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %582, i32 3
  %584 = load i32, ptr %583, align 4, !tbaa !55
  %585 = icmp sgt i32 %584, -1
  br i1 %585, label %586, label %587

586:                                              ; preds = %581
  store i32 0, ptr %583, align 4, !tbaa !55
  br label %587

587:                                              ; preds = %586, %581
  %588 = add nuw nsw i64 %582, 1
  %589 = icmp eq i64 %588, %570
  br i1 %589, label %571, label %581, !llvm.loop !79

590:                                              ; preds = %1172, %573
  %591 = phi i32 [ 0, %573 ], [ %771, %1172 ]
  %592 = phi i32 [ %462, %573 ], [ %832, %1172 ]
  %593 = phi i32 [ %567, %573 ], [ %831, %1172 ]
  %594 = phi i32 [ 0, %573 ], [ %926, %1172 ]
  %595 = phi i32 [ 0, %573 ], [ %1119, %1172 ]
  %596 = phi i32 [ 1, %573 ], [ %1115, %1172 ]
  %597 = sext i32 %595 to i64
  br label %598

598:                                              ; preds = %598, %590
  %599 = phi i64 [ %605, %598 ], [ %597, %590 ]
  %600 = getelementptr inbounds i32, ptr %4, i64 %599
  %601 = load i32, ptr %600, align 4, !tbaa !41
  %602 = icmp eq i32 %601, -1
  %603 = icmp slt i64 %599, %577
  %604 = and i1 %603, %602
  %605 = add nsw i64 %599, 1
  br i1 %604, label %598, label %606, !llvm.loop !80

606:                                              ; preds = %598
  %607 = getelementptr inbounds i32, ptr %4, i64 %599
  %608 = trunc i64 %599 to i32
  %609 = sext i32 %601 to i64
  %610 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %609
  %611 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %609, i32 5
  %612 = load i32, ptr %611, align 4, !tbaa !55
  store i32 %612, ptr %607, align 4, !tbaa !41
  %613 = icmp eq i32 %612, -1
  br i1 %613, label %617, label %614

614:                                              ; preds = %606
  %615 = sext i32 %612 to i64
  %616 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %615, i32 4
  store i32 -1, ptr %616, align 4, !tbaa !55
  br label %617

617:                                              ; preds = %614, %606
  %618 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %609, i32 3
  %619 = load i32, ptr %618, align 4, !tbaa !55
  store i32 %594, ptr %618, align 4, !tbaa !55
  %620 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %609, i32 2
  %621 = load i32, ptr %620, align 4, !tbaa !55
  %622 = add nsw i32 %621, %594
  %623 = sub nsw i32 %1, %622
  %624 = tail call i32 @llvm.smin.i32(i32 %619, i32 %623)
  %625 = add nsw i32 %624, %593
  %626 = icmp slt i32 %625, %138
  br i1 %626, label %768, label %627

627:                                              ; preds = %617
  %628 = sext i32 %593 to i64
  %629 = getelementptr inbounds i32, ptr %3, i64 %628
  br i1 %143, label %630, label %632

630:                                              ; preds = %675, %627
  %631 = phi ptr [ %3, %627 ], [ %676, %675 ]
  br i1 %425, label %679, label %681

632:                                              ; preds = %627, %675
  %633 = phi i64 [ %677, %675 ], [ 0, %627 ]
  %634 = phi ptr [ %676, %675 ], [ %3, %627 ]
  %635 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %633
  %636 = load i32, ptr %635, align 4, !tbaa !52
  %637 = icmp sgt i32 %636, -1
  br i1 %637, label %638, label %675

638:                                              ; preds = %632
  %639 = ptrtoint ptr %634 to i64
  %640 = sub i64 %639, %574
  %641 = lshr exact i64 %640, 2
  %642 = trunc i64 %641 to i32
  store i32 %642, ptr %635, align 4, !tbaa !52
  %643 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %633, i32 1
  %644 = load i32, ptr %643, align 4, !tbaa !54
  %645 = icmp sgt i32 %644, 0
  br i1 %645, label %646, label %665

646:                                              ; preds = %638
  %647 = zext nneg i32 %636 to i64
  %648 = getelementptr inbounds i32, ptr %3, i64 %647
  br label %649

649:                                              ; preds = %661, %646
  %650 = phi i32 [ %663, %661 ], [ 0, %646 ]
  %651 = phi ptr [ %662, %661 ], [ %634, %646 ]
  %652 = phi ptr [ %653, %661 ], [ %648, %646 ]
  %653 = getelementptr inbounds i32, ptr %652, i64 1
  %654 = load i32, ptr %652, align 4, !tbaa !41
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %655, i32 3
  %657 = load i32, ptr %656, align 4, !tbaa !55
  %658 = icmp sgt i32 %657, -1
  br i1 %658, label %659, label %661

659:                                              ; preds = %649
  %660 = getelementptr inbounds i32, ptr %651, i64 1
  store i32 %654, ptr %651, align 4, !tbaa !41
  br label %661

661:                                              ; preds = %659, %649
  %662 = phi ptr [ %660, %659 ], [ %651, %649 ]
  %663 = add nuw nsw i32 %650, 1
  %664 = icmp eq i32 %663, %644
  br i1 %664, label %665, label %649, !llvm.loop !81

665:                                              ; preds = %661, %638
  %666 = phi ptr [ %634, %638 ], [ %662, %661 ]
  %667 = load i32, ptr %635, align 4, !tbaa !52
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds i32, ptr %3, i64 %668
  %670 = ptrtoint ptr %666 to i64
  %671 = ptrtoint ptr %669 to i64
  %672 = sub i64 %670, %671
  %673 = lshr exact i64 %672, 2
  %674 = trunc i64 %673 to i32
  store i32 %674, ptr %643, align 4, !tbaa !54
  br label %675

675:                                              ; preds = %665, %632
  %676 = phi ptr [ %666, %665 ], [ %634, %632 ]
  %677 = add nuw nsw i64 %633, 1
  %678 = icmp eq i64 %677, %26
  br i1 %678, label %630, label %632, !llvm.loop !82

679:                                              ; preds = %699, %630
  %680 = icmp ult ptr %631, %629
  br i1 %680, label %702, label %752

681:                                              ; preds = %630, %699
  %682 = phi i64 [ %700, %699 ], [ 0, %630 ]
  %683 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %682
  %684 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %682, i32 3
  %685 = load i32, ptr %684, align 4, !tbaa !55
  %686 = icmp slt i32 %685, 0
  br i1 %686, label %691, label %687

687:                                              ; preds = %681
  %688 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %682, i32 1
  %689 = load i32, ptr %688, align 4, !tbaa !57
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %691, label %692

691:                                              ; preds = %687, %681
  store i32 -1, ptr %684, align 4, !tbaa !55
  br label %699

692:                                              ; preds = %687
  %693 = load i32, ptr %683, align 4, !tbaa !62
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i32, ptr %3, i64 %694
  %696 = load i32, ptr %695, align 4, !tbaa !41
  store i32 %696, ptr %684, align 4, !tbaa !55
  %697 = trunc i64 %682 to i32
  %698 = xor i32 %697, -1
  store i32 %698, ptr %695, align 4, !tbaa !41
  br label %699

699:                                              ; preds = %692, %691
  %700 = add nuw nsw i64 %682, 1
  %701 = icmp eq i64 %700, %578
  br i1 %701, label %679, label %681, !llvm.loop !83

702:                                              ; preds = %679, %748
  %703 = phi ptr [ %750, %748 ], [ %631, %679 ]
  %704 = phi ptr [ %749, %748 ], [ %631, %679 ]
  %705 = getelementptr inbounds i32, ptr %704, i64 1
  %706 = load i32, ptr %704, align 4, !tbaa !41
  %707 = icmp slt i32 %706, 0
  br i1 %707, label %708, label %748

708:                                              ; preds = %702
  %709 = xor i32 %706, -1
  %710 = zext nneg i32 %709 to i64
  %711 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %710
  %712 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %710, i32 3
  %713 = load i32, ptr %712, align 4, !tbaa !55
  store i32 %713, ptr %704, align 4, !tbaa !41
  %714 = ptrtoint ptr %703 to i64
  %715 = sub i64 %714, %574
  %716 = lshr exact i64 %715, 2
  %717 = trunc i64 %716 to i32
  store i32 %717, ptr %711, align 4, !tbaa !62
  %718 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %710, i32 1
  %719 = load i32, ptr %718, align 4, !tbaa !57
  %720 = icmp sgt i32 %719, 0
  br i1 %720, label %721, label %737

721:                                              ; preds = %708, %733
  %722 = phi i32 [ %735, %733 ], [ 0, %708 ]
  %723 = phi ptr [ %734, %733 ], [ %703, %708 ]
  %724 = phi ptr [ %725, %733 ], [ %704, %708 ]
  %725 = getelementptr inbounds i32, ptr %724, i64 1
  %726 = load i32, ptr %724, align 4, !tbaa !41
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %727
  %729 = load i32, ptr %728, align 4, !tbaa !52
  %730 = icmp sgt i32 %729, -1
  br i1 %730, label %731, label %733

731:                                              ; preds = %721
  %732 = getelementptr inbounds i32, ptr %723, i64 1
  store i32 %726, ptr %723, align 4, !tbaa !41
  br label %733

733:                                              ; preds = %731, %721
  %734 = phi ptr [ %732, %731 ], [ %723, %721 ]
  %735 = add nuw nsw i32 %722, 1
  %736 = icmp eq i32 %735, %719
  br i1 %736, label %737, label %721, !llvm.loop !84

737:                                              ; preds = %733, %708
  %738 = phi ptr [ %704, %708 ], [ %725, %733 ]
  %739 = phi ptr [ %703, %708 ], [ %734, %733 ]
  %740 = load i32, ptr %711, align 4, !tbaa !62
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds i32, ptr %3, i64 %741
  %743 = ptrtoint ptr %739 to i64
  %744 = ptrtoint ptr %742 to i64
  %745 = sub i64 %743, %744
  %746 = lshr exact i64 %745, 2
  %747 = trunc i64 %746 to i32
  store i32 %747, ptr %718, align 4, !tbaa !57
  br label %748

748:                                              ; preds = %737, %702
  %749 = phi ptr [ %738, %737 ], [ %705, %702 ]
  %750 = phi ptr [ %739, %737 ], [ %703, %702 ]
  %751 = icmp ult ptr %749, %629
  br i1 %751, label %702, label %752, !llvm.loop !85

752:                                              ; preds = %748, %679
  %753 = phi ptr [ %631, %679 ], [ %750, %748 ]
  %754 = ptrtoint ptr %753 to i64
  %755 = sub i64 %754, %574
  %756 = lshr exact i64 %755, 2
  %757 = trunc i64 %756 to i32
  %758 = add nsw i32 %591, 1
  br i1 %425, label %768, label %759

759:                                              ; preds = %752, %765
  %760 = phi i64 [ %766, %765 ], [ 0, %752 ]
  %761 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %760, i32 3
  %762 = load i32, ptr %761, align 4, !tbaa !55
  %763 = icmp sgt i32 %762, -1
  br i1 %763, label %764, label %765

764:                                              ; preds = %759
  store i32 0, ptr %761, align 4, !tbaa !55
  br label %765

765:                                              ; preds = %764, %759
  %766 = add nuw nsw i64 %760, 1
  %767 = icmp eq i64 %766, %579
  br i1 %767, label %768, label %759, !llvm.loop !79

768:                                              ; preds = %765, %752, %617
  %769 = phi i32 [ %596, %617 ], [ 1, %752 ], [ 1, %765 ]
  %770 = phi i32 [ %593, %617 ], [ %757, %752 ], [ %757, %765 ]
  %771 = phi i32 [ %591, %617 ], [ %758, %752 ], [ %758, %765 ]
  %772 = sub nsw i32 0, %621
  store i32 %772, ptr %620, align 4, !tbaa !55
  %773 = load i32, ptr %610, align 4, !tbaa !52
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds i32, ptr %3, i64 %774
  %776 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %609, i32 1
  %777 = load i32, ptr %776, align 4, !tbaa !54
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds i32, ptr %775, i64 %778
  %780 = icmp sgt i32 %777, 0
  br i1 %780, label %781, label %829

781:                                              ; preds = %768, %825
  %782 = phi i32 [ %827, %825 ], [ %770, %768 ]
  %783 = phi ptr [ %785, %825 ], [ %775, %768 ]
  %784 = phi i32 [ %826, %825 ], [ 0, %768 ]
  %785 = getelementptr inbounds i32, ptr %783, i64 1
  %786 = load i32, ptr %783, align 4, !tbaa !41
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %787, i32 3
  %789 = load i32, ptr %788, align 4, !tbaa !55
  %790 = icmp sgt i32 %789, -1
  br i1 %790, label %791, label %825

791:                                              ; preds = %781
  %792 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %787
  %793 = load i32, ptr %792, align 4, !tbaa !62
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds i32, ptr %3, i64 %794
  %796 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %787, i32 1
  %797 = load i32, ptr %796, align 4, !tbaa !57
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds i32, ptr %795, i64 %798
  %800 = icmp sgt i32 %797, 0
  br i1 %800, label %801, label %825

801:                                              ; preds = %791, %821
  %802 = phi i32 [ %823, %821 ], [ %782, %791 ]
  %803 = phi ptr [ %805, %821 ], [ %795, %791 ]
  %804 = phi i32 [ %822, %821 ], [ %784, %791 ]
  %805 = getelementptr inbounds i32, ptr %803, i64 1
  %806 = load i32, ptr %803, align 4, !tbaa !41
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %807, i32 2
  %809 = load i32, ptr %808, align 4, !tbaa !55
  %810 = icmp sgt i32 %809, 0
  br i1 %810, label %811, label %821

811:                                              ; preds = %801
  %812 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %807
  %813 = load i32, ptr %812, align 4, !tbaa !52
  %814 = icmp sgt i32 %813, -1
  br i1 %814, label %815, label %821

815:                                              ; preds = %811
  %816 = sub nsw i32 0, %809
  store i32 %816, ptr %808, align 4, !tbaa !55
  %817 = add nsw i32 %802, 1
  %818 = sext i32 %802 to i64
  %819 = getelementptr inbounds i32, ptr %3, i64 %818
  store i32 %806, ptr %819, align 4, !tbaa !41
  %820 = add nsw i32 %809, %804
  br label %821

821:                                              ; preds = %815, %811, %801
  %822 = phi i32 [ %820, %815 ], [ %804, %811 ], [ %804, %801 ]
  %823 = phi i32 [ %817, %815 ], [ %802, %811 ], [ %802, %801 ]
  %824 = icmp ult ptr %805, %799
  br i1 %824, label %801, label %825, !llvm.loop !86

825:                                              ; preds = %821, %791, %781
  %826 = phi i32 [ %784, %781 ], [ %784, %791 ], [ %822, %821 ]
  %827 = phi i32 [ %782, %781 ], [ %782, %791 ], [ %823, %821 ]
  %828 = icmp ult ptr %785, %779
  br i1 %828, label %781, label %829, !llvm.loop !87

829:                                              ; preds = %825, %768
  %830 = phi i32 [ 0, %768 ], [ %826, %825 ]
  %831 = phi i32 [ %770, %768 ], [ %827, %825 ]
  store i32 %621, ptr %620, align 4, !tbaa !55
  %832 = tail call i32 @llvm.smax.i32(i32 %592, i32 %830)
  %833 = load i32, ptr %610, align 4, !tbaa !52
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds i32, ptr %3, i64 %834
  %836 = load i32, ptr %776, align 4, !tbaa !54
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds i32, ptr %835, i64 %837
  %839 = icmp sgt i32 %836, 0
  br i1 %839, label %840, label %847

840:                                              ; preds = %829, %840
  %841 = phi ptr [ %842, %840 ], [ %835, %829 ]
  %842 = getelementptr inbounds i32, ptr %841, i64 1
  %843 = load i32, ptr %841, align 4, !tbaa !41
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %844, i32 3
  store i32 -1, ptr %845, align 4, !tbaa !55
  %846 = icmp ult ptr %842, %838
  br i1 %846, label %840, label %847, !llvm.loop !88

847:                                              ; preds = %840, %829
  %848 = sub nsw i32 %831, %770
  %849 = icmp sgt i32 %848, 0
  br i1 %849, label %850, label %855

850:                                              ; preds = %847
  %851 = load i32, ptr %610, align 4, !tbaa !52
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds i32, ptr %3, i64 %852
  %854 = load i32, ptr %853, align 4, !tbaa !41
  br label %855

855:                                              ; preds = %850, %847
  %856 = phi i32 [ %854, %850 ], [ -1, %847 ]
  %857 = sext i32 %770 to i64
  %858 = getelementptr inbounds i32, ptr %3, i64 %857
  %859 = sext i32 %848 to i64
  %860 = getelementptr inbounds i32, ptr %858, i64 %859
  br i1 %849, label %864, label %924

861:                                              ; preds = %922, %892
  %862 = icmp ult ptr %866, %860
  br i1 %862, label %864, label %863, !llvm.loop !89

863:                                              ; preds = %861
  br i1 %849, label %927, label %924

864:                                              ; preds = %855, %861
  %865 = phi ptr [ %866, %861 ], [ %858, %855 ]
  %866 = getelementptr inbounds i32, ptr %865, i64 1
  %867 = load i32, ptr %865, align 4, !tbaa !41
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %868
  %870 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %868, i32 2
  %871 = load i32, ptr %870, align 4, !tbaa !55
  %872 = sub nsw i32 0, %871
  store i32 %872, ptr %870, align 4, !tbaa !55
  %873 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %868, i32 4
  %874 = load i32, ptr %873, align 4, !tbaa !55
  %875 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %868, i32 5
  %876 = load i32, ptr %875, align 4, !tbaa !55
  %877 = icmp eq i32 %874, -1
  br i1 %877, label %878, label %883

878:                                              ; preds = %864
  %879 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %868, i32 3
  %880 = load i32, ptr %879, align 4, !tbaa !55
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds i32, ptr %4, i64 %881
  br label %886

883:                                              ; preds = %864
  %884 = sext i32 %874 to i64
  %885 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %884, i32 5
  br label %886

886:                                              ; preds = %883, %878
  %887 = phi ptr [ %885, %883 ], [ %882, %878 ]
  store i32 %876, ptr %887, align 4, !tbaa !55
  %888 = icmp eq i32 %876, -1
  br i1 %888, label %892, label %889

889:                                              ; preds = %886
  %890 = sext i32 %876 to i64
  %891 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %890, i32 4
  store i32 %874, ptr %891, align 4, !tbaa !55
  br label %892

892:                                              ; preds = %889, %886
  %893 = load i32, ptr %869, align 4, !tbaa !52
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds i32, ptr %3, i64 %894
  %896 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %868, i32 1
  %897 = load i32, ptr %896, align 4, !tbaa !54
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds i32, ptr %895, i64 %898
  %900 = icmp sgt i32 %897, 0
  br i1 %900, label %901, label %861

901:                                              ; preds = %892, %922
  %902 = phi ptr [ %903, %922 ], [ %895, %892 ]
  %903 = getelementptr inbounds i32, ptr %902, i64 1
  %904 = load i32, ptr %902, align 4, !tbaa !41
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %905, i32 3
  %907 = load i32, ptr %906, align 4, !tbaa !55
  %908 = icmp slt i32 %907, 0
  br i1 %908, label %922, label %909

909:                                              ; preds = %901
  %910 = sub nsw i32 %907, %769
  %911 = icmp slt i32 %910, 0
  br i1 %911, label %912, label %915

912:                                              ; preds = %909
  %913 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %905, i32 2
  %914 = load i32, ptr %913, align 4, !tbaa !55
  br label %915

915:                                              ; preds = %912, %909
  %916 = phi i32 [ %914, %912 ], [ %910, %909 ]
  %917 = add nsw i32 %916, %871
  %918 = icmp eq i32 %917, 0
  %919 = and i1 %63, %918
  %920 = add nsw i32 %917, %769
  %921 = select i1 %919, i32 -1, i32 %920
  store i32 %921, ptr %906, align 4, !tbaa !55
  br label %922

922:                                              ; preds = %915, %901
  %923 = icmp ult ptr %903, %899
  br i1 %923, label %901, label %861, !llvm.loop !90

924:                                              ; preds = %997, %855, %863
  %925 = phi i32 [ %830, %863 ], [ %830, %855 ], [ %998, %997 ]
  %926 = phi i32 [ %622, %863 ], [ %622, %855 ], [ %999, %997 ]
  br i1 %849, label %1001, label %1097

927:                                              ; preds = %863, %997
  %928 = phi i32 [ %999, %997 ], [ %622, %863 ]
  %929 = phi ptr [ %963, %997 ], [ %858, %863 ]
  %930 = phi i32 [ %998, %997 ], [ %830, %863 ]
  %931 = load i32, ptr %929, align 4, !tbaa !41
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %932
  %934 = load i32, ptr %933, align 4, !tbaa !52
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds i32, ptr %3, i64 %935
  %937 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %932, i32 1
  %938 = load i32, ptr %937, align 4, !tbaa !54
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds i32, ptr %936, i64 %939
  br label %941

941:                                              ; preds = %956, %927
  %942 = phi ptr [ %957, %956 ], [ %936, %927 ]
  %943 = phi i32 [ %961, %956 ], [ 0, %927 ]
  %944 = phi i32 [ %958, %956 ], [ 0, %927 ]
  %945 = phi ptr [ %950, %956 ], [ %936, %927 ]
  br label %946

946:                                              ; preds = %949, %941
  %947 = phi ptr [ %950, %949 ], [ %945, %941 ]
  %948 = icmp ult ptr %947, %940
  br i1 %948, label %949, label %962

949:                                              ; preds = %946
  %950 = getelementptr inbounds i32, ptr %947, i64 1
  %951 = load i32, ptr %947, align 4, !tbaa !41
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %952, i32 3
  %954 = load i32, ptr %953, align 4, !tbaa !55
  %955 = icmp slt i32 %954, 0
  br i1 %955, label %946, label %956, !llvm.loop !91

956:                                              ; preds = %949
  %957 = getelementptr inbounds i32, ptr %942, i64 1
  store i32 %951, ptr %942, align 4, !tbaa !41
  %958 = add i32 %951, %944
  %959 = sub i32 %943, %769
  %960 = add i32 %959, %954
  %961 = tail call i32 @llvm.smin.i32(i32 %960, i32 %1)
  br label %941, !llvm.loop !91

962:                                              ; preds = %946
  %963 = getelementptr inbounds i32, ptr %929, i64 1
  %964 = load i32, ptr %933, align 4, !tbaa !52
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds i32, ptr %3, i64 %965
  %967 = ptrtoint ptr %942 to i64
  %968 = ptrtoint ptr %966 to i64
  %969 = sub i64 %967, %968
  %970 = lshr exact i64 %969, 2
  %971 = trunc i64 %970 to i32
  store i32 %971, ptr %937, align 4, !tbaa !54
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %973, label %979

973:                                              ; preds = %962
  store i32 -1, ptr %933, align 4, !tbaa !52
  %974 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %932, i32 2
  %975 = load i32, ptr %974, align 4, !tbaa !55
  %976 = sub nsw i32 %930, %975
  %977 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %932, i32 3
  store i32 %928, ptr %977, align 4, !tbaa !55
  %978 = add nsw i32 %975, %928
  br label %997

979:                                              ; preds = %962
  %980 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %932, i32 3
  store i32 %943, ptr %980, align 4, !tbaa !55
  %981 = urem i32 %944, %575
  %982 = zext nneg i32 %981 to i64
  %983 = getelementptr inbounds i32, ptr %4, i64 %982
  %984 = load i32, ptr %983, align 4, !tbaa !41
  %985 = icmp sgt i32 %984, -1
  br i1 %985, label %986, label %990

986:                                              ; preds = %979
  %987 = zext nneg i32 %984 to i64
  %988 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %987, i32 4
  %989 = load i32, ptr %988, align 4, !tbaa !55
  store i32 %931, ptr %988, align 4, !tbaa !55
  br label %993

990:                                              ; preds = %979
  %991 = sub nsw i32 -2, %984
  %992 = sub nsw i32 -2, %931
  store i32 %992, ptr %983, align 4, !tbaa !41
  br label %993

993:                                              ; preds = %990, %986
  %994 = phi i32 [ %989, %986 ], [ %991, %990 ]
  %995 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %932, i32 5
  store i32 %994, ptr %995, align 4, !tbaa !55
  %996 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %932, i32 4
  store i32 %981, ptr %996, align 4, !tbaa !55
  br label %997

997:                                              ; preds = %993, %973
  %998 = phi i32 [ %976, %973 ], [ %930, %993 ]
  %999 = phi i32 [ %978, %973 ], [ %928, %993 ]
  %1000 = icmp ult ptr %963, %860
  br i1 %1000, label %927, label %924, !llvm.loop !92

1001:                                             ; preds = %924, %1009
  %1002 = phi ptr [ %1003, %1009 ], [ %858, %924 ]
  %1003 = getelementptr inbounds i32, ptr %1002, i64 1
  %1004 = load i32, ptr %1002, align 4, !tbaa !41
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1005
  %1007 = load i32, ptr %1006, align 4, !tbaa !52
  %1008 = icmp slt i32 %1007, 0
  br i1 %1008, label %1009, label %1011

1009:                                             ; preds = %1093, %1001
  %1010 = icmp ult ptr %1003, %860
  br i1 %1010, label %1001, label %1097, !llvm.loop !93

1011:                                             ; preds = %1001
  %1012 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1005, i32 4
  %1013 = load i32, ptr %1012, align 4, !tbaa !55
  %1014 = sext i32 %1013 to i64
  %1015 = getelementptr inbounds i32, ptr %4, i64 %1014
  %1016 = load i32, ptr %1015, align 4, !tbaa !41
  %1017 = icmp sgt i32 %1016, -1
  br i1 %1017, label %1018, label %1022

1018:                                             ; preds = %1011
  %1019 = zext nneg i32 %1016 to i64
  %1020 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1019, i32 4
  %1021 = load i32, ptr %1020, align 4, !tbaa !55
  br label %1024

1022:                                             ; preds = %1011
  %1023 = sub nsw i32 -2, %1016
  br label %1024

1024:                                             ; preds = %1022, %1018
  %1025 = phi i32 [ %1021, %1018 ], [ %1023, %1022 ]
  %1026 = icmp eq i32 %1025, -1
  br i1 %1026, label %1093, label %1027

1027:                                             ; preds = %1024, %1090
  %1028 = phi i32 [ %1091, %1090 ], [ %1025, %1024 ]
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1029
  %1031 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1029, i32 1
  %1032 = load i32, ptr %1031, align 4, !tbaa !54
  %1033 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1029, i32 5
  %1034 = load i32, ptr %1033, align 4, !tbaa !55
  %1035 = icmp eq i32 %1034, -1
  br i1 %1035, label %1090, label %1036

1036:                                             ; preds = %1027
  %1037 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1029, i32 3
  %1038 = icmp sgt i32 %1032, 0
  %1039 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1029, i32 2
  br label %1040

1040:                                             ; preds = %1085, %1036
  %1041 = phi i32 [ %1034, %1036 ], [ %1088, %1085 ]
  %1042 = phi i32 [ %1028, %1036 ], [ %1086, %1085 ]
  %1043 = sext i32 %1041 to i64
  %1044 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1043
  %1045 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1043, i32 1
  %1046 = load i32, ptr %1045, align 4, !tbaa !54
  %1047 = icmp eq i32 %1046, %1032
  br i1 %1047, label %1048, label %1085

1048:                                             ; preds = %1040
  %1049 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1043, i32 3
  %1050 = load i32, ptr %1049, align 4, !tbaa !55
  %1051 = load i32, ptr %1037, align 4, !tbaa !55
  %1052 = icmp eq i32 %1050, %1051
  br i1 %1052, label %1053, label %1085

1053:                                             ; preds = %1048
  br i1 %1038, label %1054, label %1073

1054:                                             ; preds = %1053
  %1055 = load i32, ptr %1044, align 4, !tbaa !52
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds i32, ptr %3, i64 %1056
  %1058 = load i32, ptr %1030, align 4, !tbaa !52
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds i32, ptr %3, i64 %1059
  br label %1061

1061:                                             ; preds = %1068, %1054
  %1062 = phi i32 [ %1071, %1068 ], [ 0, %1054 ]
  %1063 = phi ptr [ %1070, %1068 ], [ %1060, %1054 ]
  %1064 = phi ptr [ %1069, %1068 ], [ %1057, %1054 ]
  %1065 = load i32, ptr %1063, align 4, !tbaa !41
  %1066 = load i32, ptr %1064, align 4, !tbaa !41
  %1067 = icmp eq i32 %1065, %1066
  br i1 %1067, label %1068, label %1073

1068:                                             ; preds = %1061
  %1069 = getelementptr inbounds i32, ptr %1064, i64 1
  %1070 = getelementptr inbounds i32, ptr %1063, i64 1
  %1071 = add nuw nsw i32 %1062, 1
  %1072 = icmp eq i32 %1071, %1032
  br i1 %1072, label %1073, label %1061, !llvm.loop !94

1073:                                             ; preds = %1068, %1061, %1053
  %1074 = phi i32 [ 0, %1053 ], [ %1032, %1068 ], [ %1062, %1061 ]
  %1075 = icmp eq i32 %1074, %1032
  br i1 %1075, label %1076, label %1085

1076:                                             ; preds = %1073
  %1077 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1043, i32 2
  %1078 = load i32, ptr %1077, align 4, !tbaa !55
  %1079 = load i32, ptr %1039, align 4, !tbaa !55
  %1080 = add nsw i32 %1079, %1078
  store i32 %1080, ptr %1039, align 4, !tbaa !55
  store i32 %1028, ptr %1077, align 4, !tbaa !55
  store i32 -2, ptr %1044, align 4, !tbaa !52
  store i32 -1, ptr %1049, align 4, !tbaa !55
  %1081 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1043, i32 5
  %1082 = load i32, ptr %1081, align 4, !tbaa !55
  %1083 = sext i32 %1042 to i64
  %1084 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1083, i32 5
  store i32 %1082, ptr %1084, align 4, !tbaa !55
  br label %1085

1085:                                             ; preds = %1076, %1073, %1048, %1040
  %1086 = phi i32 [ %1042, %1076 ], [ %1041, %1048 ], [ %1041, %1040 ], [ %1041, %1073 ]
  %1087 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1043, i32 5
  %1088 = load i32, ptr %1087, align 4, !tbaa !55
  %1089 = icmp eq i32 %1088, -1
  br i1 %1089, label %1090, label %1040, !llvm.loop !95

1090:                                             ; preds = %1085, %1027
  %1091 = load i32, ptr %1033, align 4, !tbaa !55
  %1092 = icmp eq i32 %1091, -1
  br i1 %1092, label %1093, label %1027, !llvm.loop !96

1093:                                             ; preds = %1090, %1024
  %1094 = zext nneg i32 %1016 to i64
  %1095 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1094, i32 4
  %1096 = select i1 %1017, ptr %1095, ptr %1015
  store i32 -1, ptr %1096, align 4, !tbaa !55
  br label %1009

1097:                                             ; preds = %1009, %924
  store i32 -1, ptr %610, align 4, !tbaa !52
  %1098 = add nsw i32 %832, %769
  %1099 = add nsw i32 %1098, 1
  %1100 = icmp sgt i32 %1098, -1
  %1101 = icmp slt i32 %1099, %568
  %1102 = and i1 %1100, %1101
  %1103 = or i1 %576, %1102
  %1104 = select i1 %1102, i32 %1099, i32 1
  br i1 %1103, label %1114, label %1105

1105:                                             ; preds = %1097, %1111
  %1106 = phi i64 [ %1112, %1111 ], [ 0, %1097 ]
  %1107 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %1106, i32 3
  %1108 = load i32, ptr %1107, align 4, !tbaa !55
  %1109 = icmp sgt i32 %1108, -1
  br i1 %1109, label %1110, label %1111

1110:                                             ; preds = %1105
  store i32 0, ptr %1107, align 4, !tbaa !55
  br label %1111

1111:                                             ; preds = %1110, %1105
  %1112 = add nuw nsw i64 %1106, 1
  %1113 = icmp eq i64 %1112, %580
  br i1 %1113, label %1114, label %1105, !llvm.loop !79

1114:                                             ; preds = %1111, %1097
  %1115 = phi i32 [ %1104, %1097 ], [ 1, %1111 ]
  br label %1116

1116:                                             ; preds = %1157, %1114
  %1117 = phi ptr [ %1131, %1157 ], [ %858, %1114 ]
  %1118 = phi ptr [ %1124, %1157 ], [ %858, %1114 ]
  %1119 = phi i32 [ %1158, %1157 ], [ %608, %1114 ]
  br label %1120

1120:                                             ; preds = %1123, %1116
  %1121 = phi ptr [ %1124, %1123 ], [ %1118, %1116 ]
  %1122 = icmp ult ptr %1121, %860
  br i1 %1122, label %1123, label %1159

1123:                                             ; preds = %1120
  %1124 = getelementptr inbounds i32, ptr %1121, i64 1
  %1125 = load i32, ptr %1121, align 4, !tbaa !41
  %1126 = sext i32 %1125 to i64
  %1127 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1126
  %1128 = load i32, ptr %1127, align 4, !tbaa !52
  %1129 = icmp slt i32 %1128, 0
  br i1 %1129, label %1120, label %1130, !llvm.loop !97

1130:                                             ; preds = %1123
  %1131 = getelementptr inbounds i32, ptr %1117, i64 1
  store i32 %1125, ptr %1117, align 4, !tbaa !41
  %1132 = load i32, ptr %1127, align 4, !tbaa !52
  %1133 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1126, i32 1
  %1134 = load i32, ptr %1133, align 4, !tbaa !54
  %1135 = add nsw i32 %1134, 1
  store i32 %1135, ptr %1133, align 4, !tbaa !54
  %1136 = add nsw i32 %1134, %1132
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds i32, ptr %3, i64 %1137
  store i32 %856, ptr %1138, align 4, !tbaa !41
  %1139 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1126, i32 3
  %1140 = load i32, ptr %1139, align 4, !tbaa !55
  %1141 = add nsw i32 %1140, %925
  %1142 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1126, i32 2
  %1143 = load i32, ptr %1142, align 4, !tbaa !55
  %1144 = add i32 %926, %1143
  %1145 = sub i32 %1, %1144
  %1146 = sub i32 %1141, %1143
  %1147 = tail call i32 @llvm.smin.i32(i32 %1146, i32 %1145)
  store i32 %1147, ptr %1139, align 4, !tbaa !55
  %1148 = sext i32 %1147 to i64
  %1149 = getelementptr inbounds i32, ptr %4, i64 %1148
  %1150 = load i32, ptr %1149, align 4, !tbaa !41
  %1151 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1126, i32 5
  store i32 %1150, ptr %1151, align 4, !tbaa !55
  %1152 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1126, i32 4
  store i32 -1, ptr %1152, align 4, !tbaa !55
  %1153 = icmp eq i32 %1150, -1
  br i1 %1153, label %1157, label %1154

1154:                                             ; preds = %1130
  %1155 = sext i32 %1150 to i64
  %1156 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1155, i32 4
  store i32 %1125, ptr %1156, align 4, !tbaa !55
  br label %1157

1157:                                             ; preds = %1154, %1130
  store i32 %1125, ptr %1149, align 4, !tbaa !41
  %1158 = tail call i32 @llvm.smin.i32(i32 %1119, i32 %1147)
  br label %1116, !llvm.loop !97

1159:                                             ; preds = %1120
  %1160 = icmp sgt i32 %925, 0
  br i1 %1160, label %1161, label %1172

1161:                                             ; preds = %1159
  %1162 = sext i32 %856 to i64
  %1163 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %1162
  store i32 %770, ptr %1163, align 4, !tbaa !62
  %1164 = ptrtoint ptr %1117 to i64
  %1165 = ptrtoint ptr %858 to i64
  %1166 = sub i64 %1164, %1165
  %1167 = lshr exact i64 %1166, 2
  %1168 = trunc i64 %1167 to i32
  %1169 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %1162, i32 1
  store i32 %1168, ptr %1169, align 4, !tbaa !57
  %1170 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %1162, i32 2
  store i32 %925, ptr %1170, align 4, !tbaa !55
  %1171 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %1162, i32 3
  store i32 0, ptr %1171, align 4, !tbaa !55
  br label %1172

1172:                                             ; preds = %1161, %1159
  %1173 = icmp slt i32 %926, %485
  br i1 %1173, label %590, label %1174, !llvm.loop !98

1174:                                             ; preds = %1172, %571
  %1175 = phi i32 [ 0, %571 ], [ %771, %1172 ]
  br i1 %143, label %1222, label %1177

1176:                                             ; preds = %1210
  br i1 %143, label %1222, label %1213

1177:                                             ; preds = %1174, %1210
  %1178 = phi i64 [ %1211, %1210 ], [ 0, %1174 ]
  %1179 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1178
  %1180 = load i32, ptr %1179, align 4, !tbaa !52
  %1181 = icmp eq i32 %1180, -1
  br i1 %1181, label %1210, label %1182

1182:                                             ; preds = %1177
  %1183 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1178, i32 3
  %1184 = load i32, ptr %1183, align 4, !tbaa !55
  %1185 = icmp eq i32 %1184, -1
  br i1 %1185, label %1186, label %1210

1186:                                             ; preds = %1182
  %1187 = trunc i64 %1178 to i32
  br label %1188

1188:                                             ; preds = %1188, %1186
  %1189 = phi i32 [ %1192, %1188 ], [ %1187, %1186 ]
  %1190 = sext i32 %1189 to i64
  %1191 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1190, i32 2
  %1192 = load i32, ptr %1191, align 4, !tbaa !55
  %1193 = sext i32 %1192 to i64
  %1194 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1193
  %1195 = load i32, ptr %1194, align 4, !tbaa !52
  %1196 = icmp eq i32 %1195, -1
  br i1 %1196, label %1197, label %1188, !llvm.loop !99

1197:                                             ; preds = %1188
  %1198 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1193, i32 3
  %1199 = load i32, ptr %1198, align 4, !tbaa !55
  br label %1200

1200:                                             ; preds = %1200, %1197
  %1201 = phi i32 [ %1187, %1197 ], [ %1192, %1200 ]
  %1202 = phi i32 [ %1199, %1197 ], [ %1203, %1200 ]
  %1203 = add nsw i32 %1202, 1
  %1204 = sext i32 %1201 to i64
  %1205 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1204, i32 3
  store i32 %1202, ptr %1205, align 4, !tbaa !55
  %1206 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1204, i32 2
  store i32 %1192, ptr %1206, align 4, !tbaa !55
  %1207 = load i32, ptr %1198, align 4, !tbaa !55
  %1208 = icmp eq i32 %1207, -1
  br i1 %1208, label %1200, label %1209, !llvm.loop !100

1209:                                             ; preds = %1200
  store i32 %1203, ptr %1198, align 4, !tbaa !55
  br label %1210

1210:                                             ; preds = %1209, %1182, %1177
  %1211 = add nuw nsw i64 %1178, 1
  %1212 = icmp eq i64 %1211, %26
  br i1 %1212, label %1176, label %1177, !llvm.loop !101

1213:                                             ; preds = %1176, %1213
  %1214 = phi i64 [ %1220, %1213 ], [ 0, %1176 ]
  %1215 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %140, i64 %1214, i32 3
  %1216 = load i32, ptr %1215, align 4, !tbaa !55
  %1217 = sext i32 %1216 to i64
  %1218 = getelementptr inbounds i32, ptr %4, i64 %1217
  %1219 = trunc i64 %1214 to i32
  store i32 %1219, ptr %1218, align 4, !tbaa !41
  %1220 = add nuw nsw i64 %1214, 1
  %1221 = icmp eq i64 %1220, %26
  br i1 %1221, label %1222, label %1213, !llvm.loop !102

1222:                                             ; preds = %1213, %1174, %1176
  %1223 = sub nsw i32 %0, %461
  store i32 %1223, ptr %6, align 4, !tbaa !41
  %1224 = sub nsw i32 %1, %485
  %1225 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %1224, ptr %1225, align 4, !tbaa !41
  %1226 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %1175, ptr %1226, align 4, !tbaa !41
  br label %1227

1227:                                             ; preds = %156, %201, %7, %1222, %133, %34, %30, %24, %21, %18, %15
  %1228 = phi i32 [ 0, %21 ], [ 0, %24 ], [ 0, %30 ], [ 0, %34 ], [ 0, %133 ], [ 1, %1222 ], [ 0, %18 ], [ 0, %15 ], [ 0, %7 ], [ 0, %201 ], [ 0, %156 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %8) #9
  ret i32 %1228
}

; Function Attrs: nounwind uwtable
define dso_local void @colamd_report(ptr noundef %0) local_unnamed_addr #3 {
  tail call fastcc void @print_report(ptr noundef nonnull @.str, ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @print_report(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #3 {
  %3 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) %3(ptr noundef nonnull @.str.2, ptr noundef %0, i32 noundef 2, i32 noundef 7, ptr noundef nonnull @.str.3) #9
  br label %7

7:                                                ; preds = %5, %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %11 = icmp eq ptr %10, null
  br i1 %11, label %132, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) %10(ptr noundef nonnull @.str.4) #9
  br label %132

14:                                               ; preds = %7
  %15 = getelementptr inbounds i32, ptr %1, i64 4
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = getelementptr inbounds i32, ptr %1, i64 5
  %18 = load i32, ptr %17, align 4, !tbaa !41
  %19 = getelementptr inbounds i32, ptr %1, i64 6
  %20 = load i32, ptr %19, align 4, !tbaa !41
  %21 = getelementptr inbounds i32, ptr %1, i64 3
  %22 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = load i32, ptr %21, align 4, !tbaa !41
  %26 = icmp sgt i32 %25, -1
  %27 = select i1 %26, ptr @.str.5, ptr @.str.6
  %28 = tail call i32 (ptr, ...) %22(ptr noundef nonnull %27) #9
  br label %29

29:                                               ; preds = %14, %24
  %30 = load i32, ptr %21, align 4, !tbaa !41
  switch i32 %30, label %132 [
    i32 1, label %31
    i32 0, label %51
    i32 -1, label %76
    i32 -2, label %81
    i32 -3, label %86
    i32 -4, label %91
    i32 -5, label %96
    i32 -6, label %101
    i32 -7, label %106
    i32 -8, label %116
    i32 -9, label %121
    i32 -10, label %127
  ]

31:                                               ; preds = %29
  %32 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i32 (ptr, ...) %32(ptr noundef nonnull @.str.7) #9
  br label %36

36:                                               ; preds = %34, %31
  %37 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ...) %37(ptr noundef nonnull @.str.8, ptr noundef %0, i32 noundef %20) #9
  br label %41

41:                                               ; preds = %39, %36
  %42 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call i32 (ptr, ...) %42(ptr noundef nonnull @.str.9, ptr noundef %0, i32 noundef %18) #9
  br label %46

46:                                               ; preds = %44, %41
  %47 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call i32 (ptr, ...) %47(ptr noundef nonnull @.str.10, ptr noundef %0, i32 noundef %16) #9
  br label %51

51:                                               ; preds = %46, %49, %29
  %52 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = tail call i32 (ptr, ...) %52(ptr noundef nonnull @.str.11) #9
  br label %56

56:                                               ; preds = %54, %51
  %57 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %1, align 4, !tbaa !41
  %61 = tail call i32 (ptr, ...) %57(ptr noundef nonnull @.str.12, ptr noundef %0, i32 noundef %60) #9
  br label %62

62:                                               ; preds = %59, %56
  %63 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds i32, ptr %1, i64 1
  %67 = load i32, ptr %66, align 4, !tbaa !41
  %68 = tail call i32 (ptr, ...) %63(ptr noundef nonnull @.str.13, ptr noundef %0, i32 noundef %67) #9
  br label %69

69:                                               ; preds = %65, %62
  %70 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %71 = icmp eq ptr %70, null
  br i1 %71, label %132, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds i32, ptr %1, i64 2
  %74 = load i32, ptr %73, align 4, !tbaa !41
  %75 = tail call i32 (ptr, ...) %70(ptr noundef nonnull @.str.14, ptr noundef %0, i32 noundef %74) #9
  br label %132

76:                                               ; preds = %29
  %77 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %78 = icmp eq ptr %77, null
  br i1 %78, label %132, label %79

79:                                               ; preds = %76
  %80 = tail call i32 (ptr, ...) %77(ptr noundef nonnull @.str.15) #9
  br label %132

81:                                               ; preds = %29
  %82 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %83 = icmp eq ptr %82, null
  br i1 %83, label %132, label %84

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ...) %82(ptr noundef nonnull @.str.16) #9
  br label %132

86:                                               ; preds = %29
  %87 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %88 = icmp eq ptr %87, null
  br i1 %88, label %132, label %89

89:                                               ; preds = %86
  %90 = tail call i32 (ptr, ...) %87(ptr noundef nonnull @.str.17, i32 noundef %16) #9
  br label %132

91:                                               ; preds = %29
  %92 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %93 = icmp eq ptr %92, null
  br i1 %93, label %132, label %94

94:                                               ; preds = %91
  %95 = tail call i32 (ptr, ...) %92(ptr noundef nonnull @.str.18, i32 noundef %16) #9
  br label %132

96:                                               ; preds = %29
  %97 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %98 = icmp eq ptr %97, null
  br i1 %98, label %132, label %99

99:                                               ; preds = %96
  %100 = tail call i32 (ptr, ...) %97(ptr noundef nonnull @.str.19, i32 noundef %16) #9
  br label %132

101:                                              ; preds = %29
  %102 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %103 = icmp eq ptr %102, null
  br i1 %103, label %132, label %104

104:                                              ; preds = %101
  %105 = tail call i32 (ptr, ...) %102(ptr noundef nonnull @.str.20, i32 noundef %16) #9
  br label %132

106:                                              ; preds = %29
  %107 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = tail call i32 (ptr, ...) %107(ptr noundef nonnull @.str.21) #9
  br label %111

111:                                              ; preds = %109, %106
  %112 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %113 = icmp eq ptr %112, null
  br i1 %113, label %132, label %114

114:                                              ; preds = %111
  %115 = tail call i32 (ptr, ...) %112(ptr noundef nonnull @.str.22, i32 noundef %16, i32 noundef %18) #9
  br label %132

116:                                              ; preds = %29
  %117 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %118 = icmp eq ptr %117, null
  br i1 %118, label %132, label %119

119:                                              ; preds = %116
  %120 = tail call i32 (ptr, ...) %117(ptr noundef nonnull @.str.23, i32 noundef %16, i32 noundef %18) #9
  br label %132

121:                                              ; preds = %29
  %122 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %123 = icmp eq ptr %122, null
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  %125 = add nsw i32 %20, -1
  %126 = tail call i32 (ptr, ...) %122(ptr noundef nonnull @.str.24, i32 noundef %18, i32 noundef 0, i32 noundef %125, i32 noundef %16) #9
  br label %132

127:                                              ; preds = %29
  %128 = load ptr, ptr @colamd_printf, align 8, !tbaa !103
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = tail call i32 (ptr, ...) %128(ptr noundef nonnull @.str.25) #9
  br label %132

132:                                              ; preds = %29, %72, %69, %79, %76, %84, %81, %89, %86, %94, %91, %99, %96, %104, %101, %114, %111, %119, %116, %124, %121, %130, %127, %9, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @symamd_report(ptr noundef %0) local_unnamed_addr #3 {
  tail call fastcc void @print_report(ptr noundef nonnull @.str.1, ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind }

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
!34 = distinct !{!34, !35, !36}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!38, !38, i64 0}
!38 = !{!"double", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !39, i64 0}
!43 = distinct !{!43, !35, !36}
!44 = distinct !{!44, !35, !36}
!45 = distinct !{!45, !35, !36}
!46 = distinct !{!46, !35, !36}
!47 = distinct !{!47, !35, !36}
!48 = distinct !{!48, !35, !36}
!49 = distinct !{!49, !35, !36}
!50 = distinct !{!50, !35, !36}
!51 = !{i32 0, i32 2}
!52 = !{!53, !42, i64 0}
!53 = !{!"Colamd_Col_struct", !42, i64 0, !42, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20}
!54 = !{!53, !42, i64 4}
!55 = !{!39, !39, i64 0}
!56 = distinct !{!56, !35, !36}
!57 = !{!58, !42, i64 4}
!58 = !{!"Colamd_Row_struct", !42, i64 0, !42, i64 4, !39, i64 8, !39, i64 12}
!59 = distinct !{!59, !35, !36}
!60 = distinct !{!60, !35, !36}
!61 = distinct !{!61, !35, !36}
!62 = !{!58, !42, i64 0}
!63 = distinct !{!63, !35, !36}
!64 = distinct !{!64, !35, !36}
!65 = distinct !{!65, !35, !36}
!66 = distinct !{!66, !35, !36}
!67 = distinct !{!67, !35, !36}
!68 = distinct !{!68, !35, !36}
!69 = distinct !{!69, !35, !36}
!70 = distinct !{!70, !35, !36}
!71 = distinct !{!71, !35, !36}
!72 = distinct !{!72, !35, !36}
!73 = distinct !{!73, !35, !36}
!74 = distinct !{!74, !35, !36}
!75 = distinct !{!75, !35, !36}
!76 = distinct !{!76, !35, !36}
!77 = distinct !{!77, !35, !36}
!78 = distinct !{!78, !35, !36}
!79 = distinct !{!79, !35, !36}
!80 = distinct !{!80, !35, !36}
!81 = distinct !{!81, !35, !36}
!82 = distinct !{!82, !35, !36}
!83 = distinct !{!83, !35, !36}
!84 = distinct !{!84, !35, !36}
!85 = distinct !{!85, !35, !36}
!86 = distinct !{!86, !35, !36}
!87 = distinct !{!87, !35, !36}
!88 = distinct !{!88, !35, !36}
!89 = distinct !{!89, !35, !36}
!90 = distinct !{!90, !35, !36}
!91 = distinct !{!91, !35, !36}
!92 = distinct !{!92, !35, !36}
!93 = distinct !{!93, !35, !36}
!94 = distinct !{!94, !35, !36}
!95 = distinct !{!95, !35, !36}
!96 = distinct !{!96, !35, !36}
!97 = distinct !{!97, !35, !36}
!98 = distinct !{!98, !35, !36}
!99 = distinct !{!99, !35, !36}
!100 = distinct !{!100, !35, !36}
!101 = distinct !{!101, !35, !36}
!102 = distinct !{!102, !35, !36}
!103 = !{!104, !104, i64 0}
!104 = !{!"any pointer", !39, i64 0}
