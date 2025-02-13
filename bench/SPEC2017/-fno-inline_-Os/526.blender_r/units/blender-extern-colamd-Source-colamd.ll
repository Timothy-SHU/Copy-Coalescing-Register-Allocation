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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i64 @colamd_recommended(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 1, ptr %4, align 4, !tbaa !34
  %5 = or i32 %1, %0
  %6 = or i32 %5, %2
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = zext nneg i32 %0 to i64
  %10 = call fastcc i64 @t_mult(i64 noundef %9, i64 noundef 2, ptr noundef nonnull %4) #13
  %11 = zext nneg i32 %2 to i64
  %12 = call fastcc i64 @t_add(i64 noundef %11, i64 noundef 1, ptr noundef nonnull %4) #13
  %13 = call fastcc i64 @t_mult(i64 noundef %12, i64 noundef 24, ptr noundef nonnull %4) #13
  %14 = lshr i64 %13, 2
  %15 = zext nneg i32 %1 to i64
  %16 = call fastcc i64 @t_add(i64 noundef %15, i64 noundef 1, ptr noundef nonnull %4) #13
  %17 = call fastcc i64 @t_mult(i64 noundef %16, i64 noundef 16, ptr noundef nonnull %4) #13
  %18 = lshr i64 %17, 2
  %19 = call fastcc i64 @t_add(i64 noundef %10, i64 noundef %14, ptr noundef nonnull %4) #13
  %20 = call fastcc i64 @t_add(i64 noundef %19, i64 noundef %18, ptr noundef nonnull %4) #13
  %21 = call fastcc i64 @t_add(i64 noundef %20, i64 noundef %11, ptr noundef nonnull %4) #13
  %22 = udiv i32 %0, 5
  %23 = zext nneg i32 %22 to i64
  %24 = call fastcc i64 @t_add(i64 noundef %21, i64 noundef %23, ptr noundef nonnull %4) #13
  %25 = load i32, ptr %4, align 4, !tbaa !34
  %26 = icmp ne i32 %25, 0
  %27 = icmp ult i64 %24, 2147483647
  %28 = and i1 %27, %26
  %29 = select i1 %28, i64 %24, i64 0
  br label %30

30:                                               ; preds = %3, %8
  %31 = phi i64 [ %29, %8 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i64 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc noundef i64 @t_mult(i64 noundef %0, i64 noundef %1, ptr nocapture noundef %2) unnamed_addr #2 !PGOFuncName !38 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ %8, %5 ], [ 0, %3 ]
  %7 = phi i64 [ %9, %5 ], [ 0, %3 ]
  %8 = tail call fastcc i64 @t_add(i64 noundef %6, i64 noundef %0, ptr noundef %2) #13
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, %1
  br i1 %10, label %11, label %5, !llvm.loop !39

11:                                               ; preds = %5, %3
  %12 = phi i64 [ 0, %3 ], [ %8, %5 ]
  ret i64 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i64 @t_add(i64 noundef %0, i64 noundef %1, ptr nocapture noundef %2) unnamed_addr #3 !PGOFuncName !41 {
  %4 = load i32, ptr %2, align 4, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = add i64 %1, %0
  %8 = tail call i64 @llvm.umax.i64(i64 %0, i64 %1)
  %9 = icmp uge i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = select i1 %9, i64 %7, i64 0
  br label %12

12:                                               ; preds = %3, %6
  %13 = phi i32 [ %10, %6 ], [ 0, %3 ]
  %14 = phi i64 [ %11, %6 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4
  ret i64 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @colamd_set_defaults(ptr noundef writeonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %4, i8 0, i64 136, i1 false), !tbaa !42
  store <2 x double> <double 1.000000e+01, double 1.000000e+01>, ptr %0, align 8, !tbaa !42
  %5 = getelementptr inbounds double, ptr %0, i64 2
  store double 1.000000e+00, ptr %5, align 8, !tbaa !42
  br label %6

6:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @symamd(i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7) local_unnamed_addr #5 {
  %9 = alloca [20 x double], align 16
  %10 = alloca [20 x double], align 16
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %10) #12
  %11 = icmp eq ptr %5, null
  br i1 %11, label %263, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds i32, ptr %5, i64 3
  %14 = getelementptr inbounds i32, ptr %5, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  store i32 -1, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds i32, ptr %5, i64 5
  store i32 -1, ptr %15, align 4, !tbaa !34
  %16 = icmp eq ptr %1, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 -1, ptr %13, align 4, !tbaa !34
  br label %263

18:                                               ; preds = %12
  %19 = icmp eq ptr %2, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  store i32 -2, ptr %13, align 4, !tbaa !34
  br label %263

21:                                               ; preds = %18
  %22 = icmp slt i32 %0, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  store i32 -4, ptr %13, align 4, !tbaa !34
  store i32 %0, ptr %14, align 4, !tbaa !34
  br label %263

24:                                               ; preds = %21
  %25 = zext nneg i32 %0 to i64
  %26 = getelementptr inbounds i32, ptr %2, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !34
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -5, ptr %13, align 4, !tbaa !34
  store i32 %27, ptr %14, align 4, !tbaa !34
  br label %263

30:                                               ; preds = %24
  %31 = load i32, ptr %2, align 4, !tbaa !34
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  store i32 -6, ptr %13, align 4, !tbaa !34
  %34 = load i32, ptr %2, align 4, !tbaa !34
  store i32 %34, ptr %14, align 4, !tbaa !34
  br label %263

35:                                               ; preds = %30
  %36 = icmp eq ptr %4, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  call void @colamd_set_defaults(ptr noundef nonnull %10) #13
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi ptr [ %4, %35 ], [ %10, %37 ]
  %40 = add nuw nsw i32 %0, 1
  %41 = zext nneg i32 %40 to i64
  %42 = call ptr %6(i64 noundef %41, i64 noundef 4) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 -10, ptr %13, align 4, !tbaa !34
  br label %263

45:                                               ; preds = %38
  %46 = call ptr %6(i64 noundef %41, i64 noundef 4) #14
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 -10, ptr %13, align 4, !tbaa !34
  call void %7(ptr noundef nonnull %42) #14
  br label %263

49:                                               ; preds = %45
  %50 = getelementptr inbounds i32, ptr %5, i64 6
  store i32 0, ptr %50, align 4, !tbaa !34
  %51 = icmp eq i32 %0, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, ptr %3, align 4, !tbaa !34
  br label %144

53:                                               ; preds = %49
  %54 = zext nneg i32 %0 to i64
  %55 = shl nuw nsw i64 %54, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %46, i8 -1, i64 %55, i1 false), !tbaa !34
  %56 = zext nneg i32 %0 to i64
  %57 = load i32, ptr %2, align 4, !tbaa !34
  br label %61

58:                                               ; preds = %112, %69
  %59 = phi i32 [ %66, %69 ], [ %115, %112 ]
  %60 = icmp eq i64 %64, %56
  br i1 %60, label %118, label %61, !llvm.loop !44

61:                                               ; preds = %53, %58
  %62 = phi i32 [ %57, %53 ], [ %59, %58 ]
  %63 = phi i64 [ 0, %53 ], [ %64, %58 ]
  %64 = add nuw nsw i64 %63, 1
  %65 = getelementptr inbounds i32, ptr %2, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !34
  %67 = sub nsw i32 %66, %62
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %61
  %70 = icmp slt i32 %62, %66
  br i1 %70, label %71, label %58

71:                                               ; preds = %69
  %72 = getelementptr inbounds i32, ptr %42, i64 %63
  %73 = sext i32 %62 to i64
  %74 = trunc i64 %63 to i32
  %75 = trunc i64 %63 to i32
  br label %78

76:                                               ; preds = %61
  %77 = trunc i64 %63 to i32
  store i32 -8, ptr %13, align 4, !tbaa !34
  store i32 %77, ptr %14, align 4, !tbaa !34
  store i32 %67, ptr %15, align 4, !tbaa !34
  call void %7(ptr noundef nonnull %42) #14
  call void %7(ptr noundef nonnull %46) #14
  br label %263

78:                                               ; preds = %71, %112
  %79 = phi i64 [ %73, %71 ], [ %114, %112 ]
  %80 = phi i32 [ -1, %71 ], [ %82, %112 ]
  %81 = getelementptr inbounds i32, ptr %1, i64 %79
  %82 = load i32, ptr %81, align 4, !tbaa !34
  %83 = icmp ult i32 %82, %0
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = trunc i64 %63 to i32
  store i32 -9, ptr %13, align 4, !tbaa !34
  store i32 %85, ptr %14, align 4, !tbaa !34
  store i32 %82, ptr %15, align 4, !tbaa !34
  store i32 %0, ptr %50, align 4, !tbaa !34
  call void %7(ptr noundef nonnull %42) #14
  call void %7(ptr noundef nonnull %46) #14
  br label %263

86:                                               ; preds = %78
  %87 = icmp sgt i32 %82, %80
  br i1 %87, label %88, label %94

88:                                               ; preds = %86
  %89 = zext nneg i32 %82 to i64
  %90 = getelementptr inbounds i32, ptr %46, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !34
  %92 = zext i32 %91 to i64
  %93 = icmp eq i64 %63, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88, %86
  store i32 1, ptr %13, align 4, !tbaa !34
  store i32 %74, ptr %14, align 4, !tbaa !34
  store i32 %82, ptr %15, align 4, !tbaa !34
  %95 = load i32, ptr %50, align 4, !tbaa !34
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %50, align 4, !tbaa !34
  br label %97

97:                                               ; preds = %94, %88
  %98 = sext i32 %82 to i64
  %99 = icmp slt i64 %63, %98
  %100 = zext nneg i32 %82 to i64
  br i1 %99, label %101, label %112

101:                                              ; preds = %97
  %102 = getelementptr inbounds i32, ptr %46, i64 %100
  %103 = load i32, ptr %102, align 4, !tbaa !34
  %104 = zext i32 %103 to i64
  %105 = icmp eq i64 %63, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds i32, ptr %42, i64 %100
  %108 = load i32, ptr %107, align 4, !tbaa !34
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr %107, align 4, !tbaa !34
  %110 = load i32, ptr %72, align 4, !tbaa !34
  %111 = add nsw i32 %110, 1
  store i32 %111, ptr %72, align 4, !tbaa !34
  br label %112

112:                                              ; preds = %97, %106, %101
  %113 = getelementptr inbounds i32, ptr %46, i64 %100
  store i32 %75, ptr %113, align 4, !tbaa !34
  %114 = add nsw i64 %79, 1
  %115 = load i32, ptr %65, align 4, !tbaa !34
  %116 = sext i32 %115 to i64
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %78, label %58, !llvm.loop !45

118:                                              ; preds = %58
  store i32 0, ptr %3, align 4, !tbaa !34
  br i1 %51, label %144, label %119

119:                                              ; preds = %118
  %120 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %121 = add nuw i32 %120, 1
  %122 = zext i32 %121 to i64
  %123 = getelementptr i32, ptr %42, i64 -1
  br label %128

124:                                              ; preds = %128
  br i1 %51, label %144, label %125

125:                                              ; preds = %124
  %126 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %127 = zext nneg i32 %126 to i64
  br label %137

128:                                              ; preds = %119, %128
  %129 = phi i32 [ 0, %119 ], [ %133, %128 ]
  %130 = phi i64 [ 1, %119 ], [ %135, %128 ]
  %131 = getelementptr i32, ptr %123, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !34
  %133 = add nsw i32 %132, %129
  %134 = getelementptr inbounds i32, ptr %3, i64 %130
  store i32 %133, ptr %134, align 4, !tbaa !34
  %135 = add nuw nsw i64 %130, 1
  %136 = icmp eq i64 %135, %122
  br i1 %136, label %124, label %128, !llvm.loop !46

137:                                              ; preds = %125, %137
  %138 = phi i64 [ 0, %125 ], [ %142, %137 ]
  %139 = getelementptr inbounds i32, ptr %3, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !34
  %141 = getelementptr inbounds i32, ptr %42, i64 %138
  store i32 %140, ptr %141, align 4, !tbaa !34
  %142 = add nuw nsw i64 %138, 1
  %143 = icmp eq i64 %142, %127
  br i1 %143, label %144, label %137, !llvm.loop !47

144:                                              ; preds = %137, %118, %52, %124
  %145 = getelementptr inbounds i32, ptr %3, i64 %25
  %146 = load i32, ptr %145, align 4, !tbaa !34
  %147 = sdiv i32 %146, 2
  %148 = call i64 @colamd_recommended(i32 noundef %146, i32 noundef %147, i32 noundef %0) #13
  %149 = call ptr %6(i64 noundef %148, i64 noundef 4) #14
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  store i32 -10, ptr %13, align 4, !tbaa !34
  call void %7(ptr noundef nonnull %42) #14
  call void %7(ptr noundef nonnull %46) #14
  br label %263

152:                                              ; preds = %144
  %153 = load i32, ptr %13, align 4, !tbaa !34
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  br i1 %51, label %256, label %202

156:                                              ; preds = %152
  br i1 %51, label %256, label %157

157:                                              ; preds = %156
  %158 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %159 = zext nneg i32 %158 to i64
  %160 = load i32, ptr %2, align 4, !tbaa !34
  br label %165

161:                                              ; preds = %196, %165
  %162 = phi i32 [ %171, %165 ], [ %197, %196 ]
  %163 = phi i32 [ %168, %165 ], [ %198, %196 ]
  %164 = icmp eq i64 %169, %159
  br i1 %164, label %256, label %165, !llvm.loop !48

165:                                              ; preds = %157, %161
  %166 = phi i32 [ %160, %157 ], [ %162, %161 ]
  %167 = phi i64 [ 0, %157 ], [ %169, %161 ]
  %168 = phi i32 [ 0, %157 ], [ %163, %161 ]
  %169 = add nuw nsw i64 %167, 1
  %170 = getelementptr inbounds i32, ptr %2, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !34
  %172 = icmp slt i32 %166, %171
  br i1 %172, label %173, label %161

173:                                              ; preds = %165
  %174 = getelementptr inbounds i32, ptr %42, i64 %167
  %175 = sext i32 %166 to i64
  br label %176

176:                                              ; preds = %173, %196
  %177 = phi i32 [ %171, %173 ], [ %197, %196 ]
  %178 = phi i64 [ %175, %173 ], [ %199, %196 ]
  %179 = phi i32 [ %168, %173 ], [ %198, %196 ]
  %180 = getelementptr inbounds i32, ptr %1, i64 %178
  %181 = load i32, ptr %180, align 4, !tbaa !34
  %182 = sext i32 %181 to i64
  %183 = icmp slt i64 %167, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %176
  %185 = getelementptr inbounds i32, ptr %42, i64 %182
  %186 = load i32, ptr %185, align 4, !tbaa !34
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %185, align 4, !tbaa !34
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, ptr %149, i64 %188
  store i32 %179, ptr %189, align 4, !tbaa !34
  %190 = load i32, ptr %174, align 4, !tbaa !34
  %191 = add nsw i32 %190, 1
  store i32 %191, ptr %174, align 4, !tbaa !34
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, ptr %149, i64 %192
  store i32 %179, ptr %193, align 4, !tbaa !34
  %194 = add nsw i32 %179, 1
  %195 = load i32, ptr %170, align 4, !tbaa !34
  br label %196

196:                                              ; preds = %176, %184
  %197 = phi i32 [ %195, %184 ], [ %177, %176 ]
  %198 = phi i32 [ %194, %184 ], [ %179, %176 ]
  %199 = add nsw i64 %178, 1
  %200 = sext i32 %197 to i64
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %176, label %161, !llvm.loop !49

202:                                              ; preds = %155
  %203 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %204 = zext nneg i32 %203 to i64
  %205 = shl nuw nsw i64 %204, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %46, i8 -1, i64 %205, i1 false), !tbaa !34
  %206 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %207 = zext nneg i32 %206 to i64
  %208 = load i32, ptr %2, align 4, !tbaa !34
  br label %213

209:                                              ; preds = %250, %213
  %210 = phi i32 [ %219, %213 ], [ %251, %250 ]
  %211 = phi i32 [ %216, %213 ], [ %252, %250 ]
  %212 = icmp eq i64 %217, %207
  br i1 %212, label %256, label %213, !llvm.loop !50

213:                                              ; preds = %202, %209
  %214 = phi i32 [ %208, %202 ], [ %210, %209 ]
  %215 = phi i64 [ 0, %202 ], [ %217, %209 ]
  %216 = phi i32 [ 0, %202 ], [ %211, %209 ]
  %217 = add nuw nsw i64 %215, 1
  %218 = getelementptr inbounds i32, ptr %2, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !34
  %220 = icmp slt i32 %214, %219
  br i1 %220, label %221, label %209

221:                                              ; preds = %213
  %222 = getelementptr inbounds i32, ptr %42, i64 %215
  %223 = sext i32 %214 to i64
  %224 = trunc i64 %215 to i32
  br label %225

225:                                              ; preds = %221, %250
  %226 = phi i32 [ %219, %221 ], [ %251, %250 ]
  %227 = phi i64 [ %223, %221 ], [ %253, %250 ]
  %228 = phi i32 [ %216, %221 ], [ %252, %250 ]
  %229 = getelementptr inbounds i32, ptr %1, i64 %227
  %230 = load i32, ptr %229, align 4, !tbaa !34
  %231 = sext i32 %230 to i64
  %232 = icmp slt i64 %215, %231
  br i1 %232, label %233, label %250

233:                                              ; preds = %225
  %234 = getelementptr inbounds i32, ptr %46, i64 %231
  %235 = load i32, ptr %234, align 4, !tbaa !34
  %236 = zext i32 %235 to i64
  %237 = icmp eq i64 %215, %236
  br i1 %237, label %250, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds i32, ptr %42, i64 %231
  %240 = load i32, ptr %239, align 4, !tbaa !34
  %241 = add nsw i32 %240, 1
  store i32 %241, ptr %239, align 4, !tbaa !34
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i32, ptr %149, i64 %242
  store i32 %228, ptr %243, align 4, !tbaa !34
  %244 = load i32, ptr %222, align 4, !tbaa !34
  %245 = add nsw i32 %244, 1
  store i32 %245, ptr %222, align 4, !tbaa !34
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i32, ptr %149, i64 %246
  store i32 %228, ptr %247, align 4, !tbaa !34
  %248 = add nsw i32 %228, 1
  store i32 %224, ptr %234, align 4, !tbaa !34
  %249 = load i32, ptr %218, align 4, !tbaa !34
  br label %250

250:                                              ; preds = %225, %233, %238
  %251 = phi i32 [ %249, %238 ], [ %226, %233 ], [ %226, %225 ]
  %252 = phi i32 [ %248, %238 ], [ %228, %233 ], [ %228, %225 ]
  %253 = add nsw i64 %227, 1
  %254 = sext i32 %251 to i64
  %255 = icmp slt i64 %253, %254
  br i1 %255, label %225, label %209, !llvm.loop !51

256:                                              ; preds = %209, %161, %155, %156
  call void %7(ptr noundef nonnull %42) #14
  call void %7(ptr noundef nonnull %46) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %9, ptr noundef nonnull align 8 dereferenceable(160) %39, i64 160, i1 false), !tbaa !42
  store double -1.000000e+00, ptr %9, align 16, !tbaa !42
  %257 = load double, ptr %39, align 8, !tbaa !42
  %258 = getelementptr inbounds [20 x double], ptr %9, i64 0, i64 1
  store double %257, ptr %258, align 8, !tbaa !42
  %259 = trunc i64 %148 to i32
  %260 = call i32 @colamd(i32 noundef %147, i32 noundef %0, i32 noundef %259, ptr noundef nonnull %149, ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %5) #13, !range !52
  %261 = getelementptr inbounds i32, ptr %5, i64 1
  %262 = load i32, ptr %261, align 4, !tbaa !34
  store i32 %262, ptr %5, align 4, !tbaa !34
  call void %7(ptr noundef nonnull %149) #14
  br label %263

263:                                              ; preds = %8, %256, %151, %84, %76, %48, %44, %33, %29, %23, %20, %17
  %264 = phi i32 [ 0, %23 ], [ 0, %29 ], [ 0, %33 ], [ 0, %76 ], [ 0, %84 ], [ 1, %256 ], [ 0, %151 ], [ 0, %48 ], [ 0, %44 ], [ 0, %20 ], [ 0, %17 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %9) #12
  ret i32 %264
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @colamd(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly %5, ptr noundef %6) local_unnamed_addr #6 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [20 x double], align 16
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  %13 = icmp eq ptr %6, null
  br i1 %13, label %90, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds i32, ptr %6, i64 3
  %16 = getelementptr inbounds i32, ptr %6, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  store i32 -1, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds i32, ptr %6, i64 5
  store i32 -1, ptr %17, align 4, !tbaa !34
  %18 = icmp eq ptr %3, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 -1, ptr %15, align 4, !tbaa !34
  br label %90

20:                                               ; preds = %14
  %21 = icmp eq ptr %4, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  store i32 -2, ptr %15, align 4, !tbaa !34
  br label %90

23:                                               ; preds = %20
  %24 = icmp slt i32 %0, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  store i32 -3, ptr %15, align 4, !tbaa !34
  store i32 %0, ptr %16, align 4, !tbaa !34
  br label %90

26:                                               ; preds = %23
  %27 = icmp slt i32 %1, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  store i32 -4, ptr %15, align 4, !tbaa !34
  store i32 %1, ptr %16, align 4, !tbaa !34
  br label %90

29:                                               ; preds = %26
  %30 = zext nneg i32 %1 to i64
  %31 = getelementptr inbounds i32, ptr %4, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !34
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 -5, ptr %15, align 4, !tbaa !34
  store i32 %32, ptr %16, align 4, !tbaa !34
  br label %90

35:                                               ; preds = %29
  %36 = load i32, ptr %4, align 4, !tbaa !34
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  store i32 -6, ptr %15, align 4, !tbaa !34
  %39 = load i32, ptr %4, align 4, !tbaa !34
  store i32 %39, ptr %16, align 4, !tbaa !34
  br label %90

40:                                               ; preds = %35
  %41 = icmp eq ptr %5, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  call void @colamd_set_defaults(ptr noundef nonnull %11) #13
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi ptr [ %5, %40 ], [ %11, %42 ]
  %45 = getelementptr inbounds double, ptr %44, i64 2
  %46 = load double, ptr %45, align 8, !tbaa !42
  %47 = fcmp une double %46, 0.000000e+00
  %48 = zext i1 %47 to i32
  store i32 1, ptr %12, align 4, !tbaa !34
  %49 = call fastcc i64 @t_add(i64 noundef %30, i64 noundef 1, ptr noundef nonnull %12) #13
  %50 = call fastcc i64 @t_mult(i64 noundef %49, i64 noundef 24, ptr noundef nonnull %12) #13
  %51 = lshr i64 %50, 2
  %52 = zext nneg i32 %0 to i64
  %53 = call fastcc i64 @t_add(i64 noundef %52, i64 noundef 1, ptr noundef nonnull %12) #13
  %54 = call fastcc i64 @t_mult(i64 noundef %53, i64 noundef 16, ptr noundef nonnull %12) #13
  %55 = lshr i64 %54, 2
  %56 = zext nneg i32 %32 to i64
  %57 = call fastcc i64 @t_mult(i64 noundef %56, i64 noundef 2, ptr noundef nonnull %12) #13
  %58 = call fastcc i64 @t_add(i64 noundef %57, i64 noundef %30, ptr noundef nonnull %12) #13
  %59 = call fastcc i64 @t_add(i64 noundef %58, i64 noundef %51, ptr noundef nonnull %12) #13
  %60 = call fastcc i64 @t_add(i64 noundef %59, i64 noundef %55, ptr noundef nonnull %12) #13
  %61 = load i32, ptr %12, align 4, !tbaa !34
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %43
  %64 = sext i32 %2 to i64
  %65 = icmp ugt i64 %60, %64
  %66 = icmp ugt i64 %60, 2147483647
  %67 = or i1 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63, %43
  store i32 -7, ptr %15, align 4, !tbaa !34
  %69 = trunc i64 %60 to i32
  store i32 %69, ptr %16, align 4, !tbaa !34
  store i32 %2, ptr %17, align 4, !tbaa !34
  br label %90

70:                                               ; preds = %63
  %71 = add nuw nsw i64 %55, %51
  %72 = trunc i64 %71 to i32
  %73 = sub i32 %2, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %3, i64 %74
  %76 = getelementptr i32, ptr %3, i64 %51
  %77 = getelementptr i32, ptr %76, i64 %74
  %78 = call fastcc i32 @init_rows_cols(i32 noundef %0, i32 noundef %1, ptr noundef %77, ptr noundef nonnull %75, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %6) #13, !range !52
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %70
  call fastcc void @init_scoring(i32 noundef %0, i32 noundef %1, ptr noundef %77, ptr noundef nonnull %75, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %44, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %10) #13
  %81 = load i32, ptr %8, align 4, !tbaa !34
  %82 = load i32, ptr %10, align 4, !tbaa !34
  %83 = shl nuw nsw i32 %32, 1
  %84 = call fastcc i32 @find_ordering(i32 noundef %0, i32 noundef %1, i32 noundef %73, ptr noundef %77, ptr noundef nonnull %75, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %81, i32 noundef %82, i32 noundef %83, i32 noundef %48) #13
  call fastcc void @order_children(i32 noundef %1, ptr noundef nonnull %75, ptr noundef nonnull %4) #13
  %85 = load i32, ptr %9, align 4, !tbaa !34
  %86 = sub nsw i32 %0, %85
  store i32 %86, ptr %6, align 4, !tbaa !34
  %87 = sub nsw i32 %1, %81
  %88 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %87, ptr %88, align 4, !tbaa !34
  %89 = getelementptr inbounds i32, ptr %6, i64 2
  store i32 %84, ptr %89, align 4, !tbaa !34
  br label %90

90:                                               ; preds = %70, %7, %80, %68, %38, %34, %28, %25, %22, %19
  %91 = phi i32 [ 0, %25 ], [ 0, %28 ], [ 0, %34 ], [ 0, %38 ], [ 0, %68 ], [ 1, %80 ], [ 0, %22 ], [ 0, %19 ], [ 0, %7 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret i32 %91
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @init_rows_cols(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) unnamed_addr #7 !PGOFuncName !53 {
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %7
  %10 = zext nneg i32 %1 to i64
  br label %11

11:                                               ; preds = %9, %28
  %12 = phi i64 [ 0, %9 ], [ %16, %28 ]
  %13 = getelementptr inbounds i32, ptr %5, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %12
  store i32 %14, ptr %15, align 4, !tbaa !54
  %16 = add nuw nsw i64 %12, 1
  %17 = getelementptr inbounds i32, ptr %5, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !34
  %19 = sub nsw i32 %18, %14
  %20 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %12, i32 1
  store i32 %19, ptr %20, align 4, !tbaa !56
  %21 = icmp slt i32 %19, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = trunc i64 %12 to i32
  %24 = getelementptr inbounds i32, ptr %6, i64 3
  store i32 -8, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds i32, ptr %6, i64 4
  store i32 %23, ptr %25, align 4, !tbaa !34
  %26 = load i32, ptr %20, align 4, !tbaa !56
  %27 = getelementptr inbounds i32, ptr %6, i64 5
  store i32 %26, ptr %27, align 4, !tbaa !34
  br label %246

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %12, i32 2
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 -1>, ptr %29, align 4, !tbaa !57
  %30 = icmp eq i64 %16, %10
  br i1 %30, label %31, label %11, !llvm.loop !58

31:                                               ; preds = %28, %7
  %32 = getelementptr inbounds i32, ptr %6, i64 6
  store i32 0, ptr %32, align 4, !tbaa !34
  %33 = icmp sgt i32 %0, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = zext nneg i32 %0 to i64
  br label %44

36:                                               ; preds = %44, %31
  br i1 %8, label %39, label %37

37:                                               ; preds = %36
  %38 = zext i32 %1 to i64
  br label %102

39:                                               ; preds = %36
  %40 = getelementptr inbounds i32, ptr %6, i64 3
  %41 = getelementptr inbounds i32, ptr %6, i64 4
  %42 = getelementptr inbounds i32, ptr %6, i64 5
  %43 = zext nneg i32 %1 to i64
  br label %52

44:                                               ; preds = %34, %44
  %45 = phi i64 [ 0, %34 ], [ %48, %44 ]
  %46 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %45, i32 1
  store i32 0, ptr %46, align 4, !tbaa !59
  %47 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %45, i32 3
  store i32 -1, ptr %47, align 4, !tbaa !57
  %48 = add nuw nsw i64 %45, 1
  %49 = icmp eq i64 %48, %35
  br i1 %49, label %36, label %44, !llvm.loop !61

50:                                               ; preds = %92, %52
  %51 = icmp eq i64 %56, %43
  br i1 %51, label %102, label %52, !llvm.loop !62

52:                                               ; preds = %39, %50
  %53 = phi i64 [ 0, %39 ], [ %56, %50 ]
  %54 = getelementptr inbounds i32, ptr %5, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !34
  %56 = add nuw nsw i64 %53, 1
  %57 = getelementptr inbounds i32, ptr %5, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !34
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %4, i64 %59
  %61 = icmp slt i32 %55, %58
  br i1 %61, label %62, label %50

62:                                               ; preds = %52
  %63 = sext i32 %55 to i64
  %64 = getelementptr inbounds i32, ptr %4, i64 %63
  %65 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %53, i32 1
  %66 = trunc i64 %53 to i32
  %67 = trunc i64 %53 to i32
  br label %68

68:                                               ; preds = %62, %92
  %69 = phi i32 [ -1, %62 ], [ %72, %92 ]
  %70 = phi ptr [ %64, %62 ], [ %71, %92 ]
  %71 = getelementptr inbounds i32, ptr %70, i64 1
  %72 = load i32, ptr %70, align 4, !tbaa !34
  %73 = icmp sgt i32 %72, -1
  %74 = icmp slt i32 %72, %0
  %75 = and i1 %73, %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %68
  %77 = trunc i64 %53 to i32
  store i32 -9, ptr %40, align 4, !tbaa !34
  store i32 %77, ptr %41, align 4, !tbaa !34
  store i32 %72, ptr %42, align 4, !tbaa !34
  store i32 %0, ptr %32, align 4, !tbaa !34
  br label %246

78:                                               ; preds = %68
  %79 = icmp sgt i32 %72, %69
  %80 = zext nneg i32 %72 to i64
  br i1 %79, label %81, label %86

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %80, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !57
  %84 = zext i32 %83 to i64
  %85 = icmp eq i64 %53, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %78, %81
  store i32 1, ptr %40, align 4, !tbaa !34
  store i32 %66, ptr %41, align 4, !tbaa !34
  store i32 %72, ptr %42, align 4, !tbaa !34
  %87 = load i32, ptr %32, align 4, !tbaa !34
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %32, align 4, !tbaa !34
  %89 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %80, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !57
  %91 = zext i32 %90 to i64
  br label %92

92:                                               ; preds = %86, %81
  %93 = phi i64 [ %91, %86 ], [ %84, %81 ]
  %94 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %80, i32 3
  %95 = icmp eq i64 %93, %53
  %96 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %80, i32 1
  %97 = select i1 %95, ptr %65, ptr %96
  %98 = select i1 %95, i32 -1, i32 1
  %99 = load i32, ptr %97, align 4, !tbaa !34
  %100 = add nsw i32 %99, %98
  store i32 %100, ptr %97, align 4, !tbaa !34
  store i32 %67, ptr %94, align 4, !tbaa !57
  %101 = icmp ult ptr %71, %60
  br i1 %101, label %68, label %50, !llvm.loop !63

102:                                              ; preds = %50, %37
  %103 = phi i64 [ %38, %37 ], [ %43, %50 ]
  %104 = getelementptr inbounds i32, ptr %5, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !34
  store i32 %105, ptr %2, align 4, !tbaa !64
  %106 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 0, i32 2
  store i32 %105, ptr %106, align 4, !tbaa !57
  %107 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 0, i32 3
  store i32 -1, ptr %107, align 4, !tbaa !57
  %108 = icmp sgt i32 %0, 1
  br i1 %108, label %109, label %123

109:                                              ; preds = %102
  %110 = zext nneg i32 %0 to i64
  br label %111

111:                                              ; preds = %109, %111
  %112 = phi i64 [ 1, %109 ], [ %121, %111 ]
  %113 = getelementptr %struct.Colamd_Row_struct, ptr %2, i64 %112
  %114 = getelementptr %struct.Colamd_Row_struct, ptr %113, i64 -1
  %115 = load i32, ptr %114, align 4, !tbaa !64
  %116 = getelementptr %struct.Colamd_Row_struct, ptr %113, i64 -1, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !59
  %118 = add nsw i32 %117, %115
  store i32 %118, ptr %113, align 4, !tbaa !64
  %119 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %112, i32 2
  store i32 %118, ptr %119, align 4, !tbaa !57
  %120 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %112, i32 3
  store i32 -1, ptr %120, align 4, !tbaa !57
  %121 = add nuw nsw i64 %112, 1
  %122 = icmp eq i64 %121, %110
  br i1 %122, label %123, label %111, !llvm.loop !65

123:                                              ; preds = %111, %102
  %124 = getelementptr inbounds i32, ptr %6, i64 3
  %125 = load i32, ptr %124, align 4, !tbaa !34
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  br i1 %8, label %164, label %189

128:                                              ; preds = %123
  br i1 %8, label %131, label %189

129:                                              ; preds = %160, %131
  %130 = icmp eq i64 %135, %103
  br i1 %130, label %189, label %131, !llvm.loop !66

131:                                              ; preds = %128, %129
  %132 = phi i64 [ %135, %129 ], [ 0, %128 ]
  %133 = getelementptr inbounds i32, ptr %5, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !34
  %135 = add nuw nsw i64 %132, 1
  %136 = getelementptr inbounds i32, ptr %5, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !34
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, ptr %4, i64 %138
  %140 = icmp slt i32 %134, %137
  br i1 %140, label %141, label %129

141:                                              ; preds = %131
  %142 = sext i32 %134 to i64
  %143 = getelementptr inbounds i32, ptr %4, i64 %142
  %144 = trunc i64 %132 to i32
  br label %145

145:                                              ; preds = %141, %160
  %146 = phi ptr [ %147, %160 ], [ %143, %141 ]
  %147 = getelementptr inbounds i32, ptr %146, i64 1
  %148 = load i32, ptr %146, align 4, !tbaa !34
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %149, i32 3
  %151 = load i32, ptr %150, align 4, !tbaa !57
  %152 = zext i32 %151 to i64
  %153 = icmp eq i64 %132, %152
  br i1 %153, label %160, label %154

154:                                              ; preds = %145
  %155 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %149, i32 2
  %156 = load i32, ptr %155, align 4, !tbaa !57
  %157 = add nsw i32 %156, 1
  store i32 %157, ptr %155, align 4, !tbaa !57
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, ptr %4, i64 %158
  store i32 %144, ptr %159, align 4, !tbaa !34
  store i32 %144, ptr %150, align 4, !tbaa !57
  br label %160

160:                                              ; preds = %154, %145
  %161 = icmp ult ptr %147, %139
  br i1 %161, label %145, label %129, !llvm.loop !67

162:                                              ; preds = %178, %164
  %163 = icmp eq i64 %168, %103
  br i1 %163, label %189, label %164, !llvm.loop !68

164:                                              ; preds = %127, %162
  %165 = phi i64 [ %168, %162 ], [ 0, %127 ]
  %166 = getelementptr inbounds i32, ptr %5, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !34
  %168 = add nuw nsw i64 %165, 1
  %169 = getelementptr inbounds i32, ptr %5, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !34
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, ptr %4, i64 %171
  %173 = icmp slt i32 %167, %170
  br i1 %173, label %174, label %162

174:                                              ; preds = %164
  %175 = sext i32 %167 to i64
  %176 = getelementptr inbounds i32, ptr %4, i64 %175
  %177 = trunc i64 %165 to i32
  br label %178

178:                                              ; preds = %174, %178
  %179 = phi ptr [ %180, %178 ], [ %176, %174 ]
  %180 = getelementptr inbounds i32, ptr %179, i64 1
  %181 = load i32, ptr %179, align 4, !tbaa !34
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %182, i32 2
  %184 = load i32, ptr %183, align 4, !tbaa !57
  %185 = add nsw i32 %184, 1
  store i32 %185, ptr %183, align 4, !tbaa !57
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, ptr %4, i64 %186
  store i32 %177, ptr %187, align 4, !tbaa !34
  %188 = icmp ult ptr %180, %172
  br i1 %188, label %178, label %162, !llvm.loop !69

189:                                              ; preds = %162, %129, %127, %128
  br i1 %33, label %190, label %200

190:                                              ; preds = %189
  %191 = zext nneg i32 %0 to i64
  br label %192

192:                                              ; preds = %190, %192
  %193 = phi i64 [ 0, %190 ], [ %198, %192 ]
  %194 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %193, i32 3
  store i32 0, ptr %194, align 4, !tbaa !57
  %195 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %193, i32 1
  %196 = load i32, ptr %195, align 4, !tbaa !59
  %197 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %193, i32 2
  store i32 %196, ptr %197, align 4, !tbaa !57
  %198 = add nuw nsw i64 %193, 1
  %199 = icmp eq i64 %198, %191
  br i1 %199, label %200, label %192, !llvm.loop !70

200:                                              ; preds = %192, %189
  %201 = load i32, ptr %124, align 4, !tbaa !34
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %246

203:                                              ; preds = %200
  store i32 0, ptr %3, align 4, !tbaa !54
  store i32 0, ptr %5, align 4, !tbaa !34
  %204 = icmp sgt i32 %1, 1
  br i1 %204, label %208, label %205

205:                                              ; preds = %208, %203
  br i1 %33, label %206, label %246

206:                                              ; preds = %205
  %207 = zext nneg i32 %0 to i64
  br label %219

208:                                              ; preds = %203, %208
  %209 = phi i64 [ %217, %208 ], [ 1, %203 ]
  %210 = getelementptr %struct.Colamd_Col_struct, ptr %3, i64 %209
  %211 = getelementptr %struct.Colamd_Col_struct, ptr %210, i64 -1
  %212 = load i32, ptr %211, align 4, !tbaa !54
  %213 = getelementptr %struct.Colamd_Col_struct, ptr %210, i64 -1, i32 1
  %214 = load i32, ptr %213, align 4, !tbaa !56
  %215 = add nsw i32 %214, %212
  store i32 %215, ptr %210, align 4, !tbaa !54
  %216 = getelementptr inbounds i32, ptr %5, i64 %209
  store i32 %215, ptr %216, align 4, !tbaa !34
  %217 = add nuw nsw i64 %209, 1
  %218 = icmp eq i64 %217, %103
  br i1 %218, label %205, label %208, !llvm.loop !71

219:                                              ; preds = %206, %243
  %220 = phi i64 [ 0, %206 ], [ %244, %243 ]
  %221 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !64
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, ptr %4, i64 %223
  %225 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %220, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !59
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, ptr %224, i64 %227
  %229 = icmp sgt i32 %226, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %219
  %231 = trunc i64 %220 to i32
  br label %232

232:                                              ; preds = %230, %232
  %233 = phi ptr [ %234, %232 ], [ %224, %230 ]
  %234 = getelementptr inbounds i32, ptr %233, i64 1
  %235 = load i32, ptr %233, align 4, !tbaa !34
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, ptr %5, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !34
  %239 = add nsw i32 %238, 1
  store i32 %239, ptr %237, align 4, !tbaa !34
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, ptr %4, i64 %240
  store i32 %231, ptr %241, align 4, !tbaa !34
  %242 = icmp ult ptr %234, %228
  br i1 %242, label %232, label %243, !llvm.loop !72

243:                                              ; preds = %232, %219
  %244 = add nuw nsw i64 %220, 1
  %245 = icmp eq i64 %244, %207
  br i1 %245, label %246, label %219, !llvm.loop !73

246:                                              ; preds = %243, %205, %200, %76, %22
  %247 = phi i32 [ 0, %22 ], [ 0, %76 ], [ 1, %200 ], [ 1, %205 ], [ 1, %243 ]
  ret i32 %247
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @init_scoring(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9) unnamed_addr #6 !PGOFuncName !74 {
  %11 = load double, ptr %6, align 8, !tbaa !42
  %12 = fcmp olt double %11, 0.000000e+00
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = add nsw i32 %1, -1
  br label %25

15:                                               ; preds = %10
  %16 = sitofp i32 %1 to double
  %17 = tail call double @sqrt(double noundef %16) #14
  %18 = fmul double %11, %17
  %19 = fcmp olt double %18, 1.600000e+01
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load double, ptr %6, align 8, !tbaa !42
  %22 = tail call double @sqrt(double noundef %16) #14
  %23 = fmul double %21, %22
  %24 = fptosi double %23 to i32
  br label %25

25:                                               ; preds = %20, %15, %13
  %26 = phi i32 [ %14, %13 ], [ %24, %20 ], [ 16, %15 ]
  %27 = getelementptr inbounds double, ptr %6, i64 1
  %28 = load double, ptr %27, align 8, !tbaa !42
  %29 = fcmp olt double %28, 0.000000e+00
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = add nsw i32 %0, -1
  br label %43

32:                                               ; preds = %25
  %33 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %34 = sitofp i32 %33 to double
  %35 = tail call double @sqrt(double noundef %34) #14
  %36 = fmul double %28, %35
  %37 = fcmp olt double %36, 1.600000e+01
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load double, ptr %27, align 8, !tbaa !42
  %40 = tail call double @sqrt(double noundef %34) #14
  %41 = fmul double %39, %40
  %42 = fptosi double %41 to i32
  br label %43

43:                                               ; preds = %38, %32, %30
  %44 = phi i32 [ %31, %30 ], [ %42, %38 ], [ 16, %32 ]
  %45 = add i32 %1, -1
  %46 = icmp sgt i32 %1, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = zext nneg i32 %45 to i64
  br label %52

49:                                               ; preds = %62
  br i1 %46, label %50, label %66

50:                                               ; preds = %49
  %51 = zext nneg i32 %45 to i64
  br label %71

52:                                               ; preds = %47, %62
  %53 = phi i64 [ %48, %47 ], [ %64, %62 ]
  %54 = phi i32 [ %1, %47 ], [ %63, %62 ]
  %55 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %53, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !56
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %53
  %60 = add nsw i32 %54, -1
  %61 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %53, i32 3
  store i32 %60, ptr %61, align 4, !tbaa !57
  store i32 -1, ptr %59, align 4, !tbaa !54
  br label %62

62:                                               ; preds = %52, %58
  %63 = phi i32 [ %60, %58 ], [ %54, %52 ]
  %64 = add nsw i64 %53, -1
  %65 = icmp sgt i64 %53, 0
  br i1 %65, label %52, label %49, !llvm.loop !75

66:                                               ; preds = %99, %43, %49
  %67 = phi i32 [ %63, %49 ], [ %1, %43 ], [ %100, %99 ]
  %68 = icmp sgt i32 %0, 0
  br i1 %68, label %69, label %103

69:                                               ; preds = %66
  %70 = zext nneg i32 %0 to i64
  br label %108

71:                                               ; preds = %50, %99
  %72 = phi i64 [ %51, %50 ], [ %101, %99 ]
  %73 = phi i32 [ %63, %50 ], [ %100, %99 ]
  %74 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %72
  %75 = load i32, ptr %74, align 4, !tbaa !54
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %99, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %72, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !56
  %80 = icmp sgt i32 %79, %44
  br i1 %80, label %81, label %99

81:                                               ; preds = %77
  %82 = add nsw i32 %73, -1
  %83 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %72, i32 3
  store i32 %82, ptr %83, align 4, !tbaa !57
  %84 = zext nneg i32 %75 to i64
  %85 = getelementptr inbounds i32, ptr %4, i64 %84
  %86 = sext i32 %79 to i64
  %87 = getelementptr inbounds i32, ptr %85, i64 %86
  %88 = icmp sgt i32 %79, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %81, %89
  %90 = phi ptr [ %91, %89 ], [ %85, %81 ]
  %91 = getelementptr inbounds i32, ptr %90, i64 1
  %92 = load i32, ptr %90, align 4, !tbaa !34
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %93, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !57
  %96 = add nsw i32 %95, -1
  store i32 %96, ptr %94, align 4, !tbaa !57
  %97 = icmp ult ptr %91, %87
  br i1 %97, label %89, label %98, !llvm.loop !76

98:                                               ; preds = %89, %81
  store i32 -1, ptr %74, align 4, !tbaa !54
  br label %99

99:                                               ; preds = %77, %98, %71
  %100 = phi i32 [ %73, %71 ], [ %82, %98 ], [ %73, %77 ]
  %101 = add nsw i64 %72, -1
  %102 = icmp sgt i64 %72, 0
  br i1 %102, label %71, label %66, !llvm.loop !77

103:                                              ; preds = %122, %66
  %104 = phi i32 [ %0, %66 ], [ %123, %122 ]
  %105 = phi i32 [ 0, %66 ], [ %124, %122 ]
  br i1 %46, label %106, label %127

106:                                              ; preds = %103
  %107 = zext nneg i32 %45 to i64
  br label %133

108:                                              ; preds = %69, %122
  %109 = phi i64 [ 0, %69 ], [ %125, %122 ]
  %110 = phi i32 [ 0, %69 ], [ %124, %122 ]
  %111 = phi i32 [ %0, %69 ], [ %123, %122 ]
  %112 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %109, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !57
  %114 = icmp sgt i32 %113, %26
  %115 = icmp eq i32 %113, 0
  %116 = or i1 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %109, i32 3
  store i32 -1, ptr %118, align 4, !tbaa !57
  %119 = add nsw i32 %111, -1
  br label %122

120:                                              ; preds = %108
  %121 = tail call i32 @llvm.smax.i32(i32 %110, i32 %113)
  br label %122

122:                                              ; preds = %117, %120
  %123 = phi i32 [ %119, %117 ], [ %111, %120 ]
  %124 = phi i32 [ %110, %117 ], [ %121, %120 ]
  %125 = add nuw nsw i64 %109, 1
  %126 = icmp eq i64 %125, %70
  br i1 %126, label %103, label %108, !llvm.loop !78

127:                                              ; preds = %103
  %128 = icmp slt i32 %1, 0
  br i1 %128, label %216, label %129

129:                                              ; preds = %127
  %130 = add nuw nsw i32 %1, 1
  %131 = zext nneg i32 %130 to i64
  %132 = shl nuw nsw i64 %131, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, i8 -1, i64 %132, i1 false), !tbaa !34
  br label %216

133:                                              ; preds = %106, %181
  %134 = phi i64 [ %107, %106 ], [ %183, %181 ]
  %135 = phi i32 [ %67, %106 ], [ %182, %181 ]
  %136 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %134
  %137 = load i32, ptr %136, align 4, !tbaa !54
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %181, label %139

139:                                              ; preds = %133
  %140 = zext nneg i32 %137 to i64
  %141 = getelementptr inbounds i32, ptr %4, i64 %140
  %142 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %134, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !56
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, ptr %141, i64 %144
  br label %146

146:                                              ; preds = %160, %139
  %147 = phi ptr [ %154, %160 ], [ %141, %139 ]
  %148 = phi ptr [ %161, %160 ], [ %141, %139 ]
  %149 = phi i32 [ %166, %160 ], [ 0, %139 ]
  br label %150

150:                                              ; preds = %146, %153
  %151 = phi ptr [ %154, %153 ], [ %147, %146 ]
  %152 = icmp ult ptr %151, %145
  br i1 %152, label %153, label %167

153:                                              ; preds = %150
  %154 = getelementptr inbounds i32, ptr %151, i64 1
  %155 = load i32, ptr %151, align 4, !tbaa !34
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %156, i32 3
  %158 = load i32, ptr %157, align 4, !tbaa !57
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %150, label %160, !llvm.loop !79

160:                                              ; preds = %153
  %161 = getelementptr inbounds i32, ptr %148, i64 1
  store i32 %155, ptr %148, align 4, !tbaa !34
  %162 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %156, i32 2
  %163 = load i32, ptr %162, align 4, !tbaa !57
  %164 = add i32 %149, -1
  %165 = add i32 %164, %163
  %166 = tail call i32 @llvm.smin.i32(i32 %165, i32 %1)
  br label %146, !llvm.loop !79

167:                                              ; preds = %150
  %168 = load i32, ptr %136, align 4, !tbaa !54
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, ptr %4, i64 %169
  %171 = ptrtoint ptr %148 to i64
  %172 = ptrtoint ptr %170 to i64
  %173 = sub i64 %171, %172
  %174 = lshr exact i64 %173, 2
  %175 = trunc i64 %174 to i32
  %176 = icmp eq i32 %175, 0
  %177 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %134, i32 3
  br i1 %176, label %178, label %180

178:                                              ; preds = %167
  %179 = add nsw i32 %135, -1
  store i32 %179, ptr %177, align 4, !tbaa !57
  store i32 -1, ptr %136, align 4, !tbaa !54
  br label %181

180:                                              ; preds = %167
  store i32 %175, ptr %142, align 4, !tbaa !56
  store i32 %149, ptr %177, align 4, !tbaa !57
  br label %181

181:                                              ; preds = %178, %180, %133
  %182 = phi i32 [ %135, %133 ], [ %179, %178 ], [ %135, %180 ]
  %183 = add nsw i64 %134, -1
  %184 = icmp sgt i64 %134, 0
  br i1 %184, label %133, label %185, !llvm.loop !80

185:                                              ; preds = %181
  %186 = add nuw i32 %1, 1
  %187 = zext i32 %186 to i64
  %188 = shl nuw nsw i64 %187, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, i8 -1, i64 %188, i1 false), !tbaa !34
  br i1 %46, label %189, label %216

189:                                              ; preds = %185
  %190 = zext nneg i32 %45 to i64
  br label %191

191:                                              ; preds = %189, %213
  %192 = phi i64 [ %190, %189 ], [ %214, %213 ]
  %193 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !54
  %195 = icmp sgt i32 %194, -1
  br i1 %195, label %196, label %213

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %192, i32 3
  %198 = load i32, ptr %197, align 4, !tbaa !57
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, ptr %5, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !34
  %202 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %192, i32 4
  store i32 -1, ptr %202, align 4, !tbaa !57
  %203 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %192, i32 5
  store i32 %201, ptr %203, align 4, !tbaa !57
  %204 = icmp eq i32 %201, -1
  br i1 %204, label %205, label %207

205:                                              ; preds = %196
  %206 = trunc i64 %192 to i32
  br label %211

207:                                              ; preds = %196
  %208 = sext i32 %201 to i64
  %209 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %208, i32 4
  %210 = trunc i64 %192 to i32
  store i32 %210, ptr %209, align 4, !tbaa !57
  br label %211

211:                                              ; preds = %205, %207
  %212 = phi i32 [ %206, %205 ], [ %210, %207 ]
  store i32 %212, ptr %200, align 4, !tbaa !34
  br label %213

213:                                              ; preds = %191, %211
  %214 = add nsw i64 %192, -1
  %215 = icmp sgt i64 %192, 0
  br i1 %215, label %191, label %216, !llvm.loop !81

216:                                              ; preds = %213, %127, %129, %185
  %217 = phi i32 [ %182, %185 ], [ %67, %129 ], [ %67, %127 ], [ %182, %213 ]
  store i32 %217, ptr %8, align 4, !tbaa !34
  store i32 %104, ptr %7, align 4, !tbaa !34
  store i32 %105, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @find_ordering(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr noundef %5, ptr nocapture noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #7 !PGOFuncName !82 {
  %12 = sub nuw nsw i32 2147483647, %1
  %13 = tail call fastcc i32 @clear_mark(i32 noundef 0, i32 noundef %12, i32 noundef %0, ptr noundef %3) #13, !range !83
  %14 = icmp sgt i32 %7, 0
  br i1 %14, label %15, label %365

15:                                               ; preds = %11
  %16 = icmp ne i32 %10, 0
  %17 = add nuw nsw i32 %1, 1
  %18 = sext i32 %1 to i64
  br label %19

19:                                               ; preds = %15, %363
  %20 = phi i32 [ 0, %15 ], [ %65, %363 ]
  %21 = phi i32 [ %8, %15 ], [ %142, %363 ]
  %22 = phi i32 [ %9, %15 ], [ %143, %363 ]
  %23 = phi i32 [ 0, %15 ], [ %303, %363 ]
  %24 = phi i32 [ 0, %15 ], [ %310, %363 ]
  %25 = phi i32 [ %13, %15 ], [ %306, %363 ]
  %26 = sext i32 %24 to i64
  br label %27

27:                                               ; preds = %27, %19
  %28 = phi i64 [ %34, %27 ], [ %26, %19 ]
  %29 = getelementptr inbounds i32, ptr %6, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !34
  %31 = icmp eq i32 %30, -1
  %32 = icmp slt i64 %28, %18
  %33 = and i1 %32, %31
  %34 = add nsw i64 %28, 1
  br i1 %33, label %27, label %35, !llvm.loop !84

35:                                               ; preds = %27
  %36 = getelementptr inbounds i32, ptr %6, i64 %28
  %37 = trunc i64 %28 to i32
  %38 = sext i32 %30 to i64
  %39 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %38
  %40 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %38, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !57
  store i32 %41, ptr %36, align 4, !tbaa !34
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = sext i32 %41 to i64
  %45 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %44, i32 4
  store i32 -1, ptr %45, align 4, !tbaa !57
  br label %46

46:                                               ; preds = %43, %35
  %47 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %38, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !57
  store i32 %23, ptr %47, align 4, !tbaa !57
  %49 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %38, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !57
  %51 = add nsw i32 %50, %23
  %52 = sub nsw i32 %1, %51
  %53 = tail call i32 @llvm.smin.i32(i32 %48, i32 %52)
  %54 = add nsw i32 %53, %22
  %55 = icmp slt i32 %54, %2
  br i1 %55, label %62, label %56

56:                                               ; preds = %46
  %57 = sext i32 %22 to i64
  %58 = getelementptr inbounds i32, ptr %5, i64 %57
  %59 = tail call fastcc i32 @garbage_collection(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %58) #13
  %60 = add nsw i32 %20, 1
  %61 = tail call fastcc i32 @clear_mark(i32 noundef 0, i32 noundef %12, i32 noundef %0, ptr noundef %3) #13, !range !83
  br label %62

62:                                               ; preds = %56, %46
  %63 = phi i32 [ %61, %56 ], [ %25, %46 ]
  %64 = phi i32 [ %59, %56 ], [ %22, %46 ]
  %65 = phi i32 [ %60, %56 ], [ %20, %46 ]
  %66 = sub nsw i32 0, %50
  store i32 %66, ptr %49, align 4, !tbaa !57
  %67 = load i32, ptr %39, align 4, !tbaa !54
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %5, i64 %68
  %70 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %38, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !56
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %69, i64 %72
  %74 = icmp sgt i32 %71, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %62
  store i32 %50, ptr %49, align 4, !tbaa !57
  %76 = tail call i32 @llvm.smax.i32(i32 %21, i32 0)
  br label %141

77:                                               ; preds = %62, %121
  %78 = phi i32 [ %123, %121 ], [ %64, %62 ]
  %79 = phi ptr [ %81, %121 ], [ %69, %62 ]
  %80 = phi i32 [ %122, %121 ], [ 0, %62 ]
  %81 = getelementptr inbounds i32, ptr %79, i64 1
  %82 = load i32, ptr %79, align 4, !tbaa !34
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %3, i64 %83, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !57
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %87, label %121

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %3, i64 %83
  %89 = load i32, ptr %88, align 4, !tbaa !64
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %5, i64 %90
  %92 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %3, i64 %83, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !59
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, ptr %91, i64 %94
  %96 = icmp sgt i32 %93, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %87, %117
  %98 = phi i32 [ %119, %117 ], [ %78, %87 ]
  %99 = phi ptr [ %101, %117 ], [ %91, %87 ]
  %100 = phi i32 [ %118, %117 ], [ %80, %87 ]
  %101 = getelementptr inbounds i32, ptr %99, i64 1
  %102 = load i32, ptr %99, align 4, !tbaa !34
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %103, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !57
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %103
  %109 = load i32, ptr %108, align 4, !tbaa !54
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = sub nsw i32 0, %105
  store i32 %112, ptr %104, align 4, !tbaa !57
  %113 = add nsw i32 %98, 1
  %114 = sext i32 %98 to i64
  %115 = getelementptr inbounds i32, ptr %5, i64 %114
  store i32 %102, ptr %115, align 4, !tbaa !34
  %116 = add nsw i32 %105, %100
  br label %117

117:                                              ; preds = %111, %107, %97
  %118 = phi i32 [ %116, %111 ], [ %100, %107 ], [ %100, %97 ]
  %119 = phi i32 [ %113, %111 ], [ %98, %107 ], [ %98, %97 ]
  %120 = icmp ult ptr %101, %95
  br i1 %120, label %97, label %121, !llvm.loop !85

121:                                              ; preds = %117, %87, %77
  %122 = phi i32 [ %80, %77 ], [ %80, %87 ], [ %118, %117 ]
  %123 = phi i32 [ %78, %77 ], [ %78, %87 ], [ %119, %117 ]
  %124 = icmp ult ptr %81, %73
  br i1 %124, label %77, label %125, !llvm.loop !86

125:                                              ; preds = %121
  %126 = load i32, ptr %39, align 4, !tbaa !54
  %127 = load i32, ptr %70, align 4, !tbaa !56
  %128 = sext i32 %126 to i64
  %129 = sext i32 %127 to i64
  store i32 %50, ptr %49, align 4, !tbaa !57
  %130 = tail call i32 @llvm.smax.i32(i32 %21, i32 %122)
  %131 = getelementptr inbounds i32, ptr %5, i64 %128
  %132 = getelementptr inbounds i32, ptr %131, i64 %129
  %133 = icmp sgt i32 %127, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %125, %134
  %135 = phi ptr [ %136, %134 ], [ %131, %125 ]
  %136 = getelementptr inbounds i32, ptr %135, i64 1
  %137 = load i32, ptr %135, align 4, !tbaa !34
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %3, i64 %138, i32 3
  store i32 -1, ptr %139, align 4, !tbaa !57
  %140 = icmp ult ptr %136, %132
  br i1 %140, label %134, label %141, !llvm.loop !87

141:                                              ; preds = %134, %75, %125
  %142 = phi i32 [ %76, %75 ], [ %130, %125 ], [ %130, %134 ]
  %143 = phi i32 [ %64, %75 ], [ %123, %125 ], [ %123, %134 ]
  %144 = phi i32 [ 0, %75 ], [ %122, %125 ], [ %122, %134 ]
  %145 = sub nsw i32 %143, %64
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %141
  %148 = sext i32 %64 to i64
  %149 = getelementptr inbounds i32, ptr %5, i64 %148
  %150 = sext i32 %145 to i64
  %151 = getelementptr inbounds i32, ptr %149, i64 %150
  br label %298

152:                                              ; preds = %141
  %153 = load i32, ptr %39, align 4, !tbaa !54
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, ptr %5, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !34
  %157 = sext i32 %64 to i64
  %158 = getelementptr inbounds i32, ptr %5, i64 %157
  %159 = zext nneg i32 %145 to i64
  %160 = getelementptr inbounds i32, ptr %158, i64 %159
  br label %164

161:                                              ; preds = %222, %192
  %162 = icmp ult ptr %166, %160
  br i1 %162, label %164, label %163, !llvm.loop !88

163:                                              ; preds = %161
  br i1 %146, label %224, label %298

164:                                              ; preds = %152, %161
  %165 = phi ptr [ %166, %161 ], [ %158, %152 ]
  %166 = getelementptr inbounds i32, ptr %165, i64 1
  %167 = load i32, ptr %165, align 4, !tbaa !34
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %168
  %170 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %168, i32 2
  %171 = load i32, ptr %170, align 4, !tbaa !57
  %172 = sub nsw i32 0, %171
  store i32 %172, ptr %170, align 4, !tbaa !57
  %173 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %168, i32 4
  %174 = load i32, ptr %173, align 4, !tbaa !57
  %175 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %168, i32 5
  %176 = load i32, ptr %175, align 4, !tbaa !57
  %177 = icmp eq i32 %174, -1
  br i1 %177, label %178, label %183

178:                                              ; preds = %164
  %179 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %168, i32 3
  %180 = load i32, ptr %179, align 4, !tbaa !57
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, ptr %6, i64 %181
  br label %186

183:                                              ; preds = %164
  %184 = sext i32 %174 to i64
  %185 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %184, i32 5
  br label %186

186:                                              ; preds = %183, %178
  %187 = phi ptr [ %185, %183 ], [ %182, %178 ]
  store i32 %176, ptr %187, align 4, !tbaa !57
  %188 = icmp eq i32 %176, -1
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = sext i32 %176 to i64
  %191 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %190, i32 4
  store i32 %174, ptr %191, align 4, !tbaa !57
  br label %192

192:                                              ; preds = %189, %186
  %193 = load i32, ptr %169, align 4, !tbaa !54
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, ptr %5, i64 %194
  %196 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %168, i32 1
  %197 = load i32, ptr %196, align 4, !tbaa !56
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, ptr %195, i64 %198
  %200 = icmp sgt i32 %197, 0
  br i1 %200, label %201, label %161

201:                                              ; preds = %192, %222
  %202 = phi ptr [ %203, %222 ], [ %195, %192 ]
  %203 = getelementptr inbounds i32, ptr %202, i64 1
  %204 = load i32, ptr %202, align 4, !tbaa !34
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %3, i64 %205, i32 3
  %207 = load i32, ptr %206, align 4, !tbaa !57
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %222, label %209

209:                                              ; preds = %201
  %210 = sub nsw i32 %207, %63
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %3, i64 %205, i32 2
  %214 = load i32, ptr %213, align 4, !tbaa !57
  br label %215

215:                                              ; preds = %212, %209
  %216 = phi i32 [ %214, %212 ], [ %210, %209 ]
  %217 = add nsw i32 %216, %171
  %218 = icmp eq i32 %217, 0
  %219 = and i1 %16, %218
  %220 = add nsw i32 %217, %63
  %221 = select i1 %219, i32 -1, i32 %220
  store i32 %221, ptr %206, align 4, !tbaa !57
  br label %222

222:                                              ; preds = %215, %201
  %223 = icmp ult ptr %203, %199
  br i1 %223, label %201, label %161, !llvm.loop !89

224:                                              ; preds = %163, %294
  %225 = phi i32 [ %296, %294 ], [ %51, %163 ]
  %226 = phi ptr [ %260, %294 ], [ %158, %163 ]
  %227 = phi i32 [ %295, %294 ], [ %144, %163 ]
  %228 = load i32, ptr %226, align 4, !tbaa !34
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !54
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, ptr %5, i64 %232
  %234 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %229, i32 1
  %235 = load i32, ptr %234, align 4, !tbaa !56
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, ptr %233, i64 %236
  br label %238

238:                                              ; preds = %253, %224
  %239 = phi ptr [ %254, %253 ], [ %233, %224 ]
  %240 = phi i32 [ %258, %253 ], [ 0, %224 ]
  %241 = phi i32 [ %255, %253 ], [ 0, %224 ]
  %242 = phi ptr [ %247, %253 ], [ %233, %224 ]
  br label %243

243:                                              ; preds = %238, %246
  %244 = phi ptr [ %247, %246 ], [ %242, %238 ]
  %245 = icmp ult ptr %244, %237
  br i1 %245, label %246, label %259

246:                                              ; preds = %243
  %247 = getelementptr inbounds i32, ptr %244, i64 1
  %248 = load i32, ptr %244, align 4, !tbaa !34
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %3, i64 %249, i32 3
  %251 = load i32, ptr %250, align 4, !tbaa !57
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %243, label %253, !llvm.loop !90

253:                                              ; preds = %246
  %254 = getelementptr inbounds i32, ptr %239, i64 1
  store i32 %248, ptr %239, align 4, !tbaa !34
  %255 = add i32 %248, %241
  %256 = sub i32 %240, %63
  %257 = add i32 %256, %251
  %258 = tail call i32 @llvm.smin.i32(i32 %257, i32 %1)
  br label %238, !llvm.loop !90

259:                                              ; preds = %243
  %260 = getelementptr inbounds i32, ptr %226, i64 1
  %261 = load i32, ptr %230, align 4, !tbaa !54
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, ptr %5, i64 %262
  %264 = ptrtoint ptr %239 to i64
  %265 = ptrtoint ptr %263 to i64
  %266 = sub i64 %264, %265
  %267 = lshr exact i64 %266, 2
  %268 = trunc i64 %267 to i32
  store i32 %268, ptr %234, align 4, !tbaa !56
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %259
  store i32 -1, ptr %230, align 4, !tbaa !54
  %271 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %229, i32 2
  %272 = load i32, ptr %271, align 4, !tbaa !57
  %273 = sub nsw i32 %227, %272
  %274 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %229, i32 3
  store i32 %225, ptr %274, align 4, !tbaa !57
  %275 = add nsw i32 %272, %225
  br label %294

276:                                              ; preds = %259
  %277 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %229, i32 3
  store i32 %240, ptr %277, align 4, !tbaa !57
  %278 = urem i32 %241, %17
  %279 = zext nneg i32 %278 to i64
  %280 = getelementptr inbounds i32, ptr %6, i64 %279
  %281 = load i32, ptr %280, align 4, !tbaa !34
  %282 = icmp sgt i32 %281, -1
  br i1 %282, label %283, label %287

283:                                              ; preds = %276
  %284 = zext nneg i32 %281 to i64
  %285 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %284, i32 4
  %286 = load i32, ptr %285, align 4, !tbaa !57
  store i32 %228, ptr %285, align 4, !tbaa !57
  br label %290

287:                                              ; preds = %276
  %288 = sub nsw i32 -2, %281
  %289 = sub nsw i32 -2, %228
  store i32 %289, ptr %280, align 4, !tbaa !34
  br label %290

290:                                              ; preds = %287, %283
  %291 = phi i32 [ %286, %283 ], [ %288, %287 ]
  %292 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %229, i32 5
  store i32 %291, ptr %292, align 4, !tbaa !57
  %293 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %229, i32 4
  store i32 %278, ptr %293, align 4, !tbaa !57
  br label %294

294:                                              ; preds = %290, %270
  %295 = phi i32 [ %273, %270 ], [ %227, %290 ]
  %296 = phi i32 [ %275, %270 ], [ %225, %290 ]
  %297 = icmp ult ptr %260, %160
  br i1 %297, label %224, label %298, !llvm.loop !91

298:                                              ; preds = %294, %147, %163
  %299 = phi i32 [ %156, %163 ], [ -1, %147 ], [ %156, %294 ]
  %300 = phi ptr [ %158, %163 ], [ %149, %147 ], [ %158, %294 ]
  %301 = phi ptr [ %160, %163 ], [ %151, %147 ], [ %160, %294 ]
  %302 = phi i32 [ %144, %163 ], [ %144, %147 ], [ %295, %294 ]
  %303 = phi i32 [ %51, %163 ], [ %51, %147 ], [ %296, %294 ]
  tail call fastcc void @detect_super_cols(ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %64, i32 noundef %145) #13
  store i32 -1, ptr %39, align 4, !tbaa !54
  %304 = add nuw nsw i32 %63, 1
  %305 = add i32 %304, %142
  %306 = tail call fastcc i32 @clear_mark(i32 noundef %305, i32 noundef %12, i32 noundef %0, ptr noundef %3) #13, !range !83
  br label %307

307:                                              ; preds = %348, %298
  %308 = phi ptr [ %322, %348 ], [ %300, %298 ]
  %309 = phi ptr [ %315, %348 ], [ %300, %298 ]
  %310 = phi i32 [ %349, %348 ], [ %37, %298 ]
  br label %311

311:                                              ; preds = %307, %314
  %312 = phi ptr [ %315, %314 ], [ %309, %307 ]
  %313 = icmp ult ptr %312, %301
  br i1 %313, label %314, label %350

314:                                              ; preds = %311
  %315 = getelementptr inbounds i32, ptr %312, i64 1
  %316 = load i32, ptr %312, align 4, !tbaa !34
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %317
  %319 = load i32, ptr %318, align 4, !tbaa !54
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %311, label %321, !llvm.loop !92

321:                                              ; preds = %314
  %322 = getelementptr inbounds i32, ptr %308, i64 1
  store i32 %316, ptr %308, align 4, !tbaa !34
  %323 = load i32, ptr %318, align 4, !tbaa !54
  %324 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %317, i32 1
  %325 = load i32, ptr %324, align 4, !tbaa !56
  %326 = add nsw i32 %325, 1
  store i32 %326, ptr %324, align 4, !tbaa !56
  %327 = add nsw i32 %325, %323
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, ptr %5, i64 %328
  store i32 %299, ptr %329, align 4, !tbaa !34
  %330 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %317, i32 3
  %331 = load i32, ptr %330, align 4, !tbaa !57
  %332 = add nsw i32 %331, %302
  %333 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %317, i32 2
  %334 = load i32, ptr %333, align 4, !tbaa !57
  %335 = add i32 %303, %334
  %336 = sub i32 %1, %335
  %337 = sub i32 %332, %334
  %338 = tail call i32 @llvm.smin.i32(i32 %337, i32 %336)
  store i32 %338, ptr %330, align 4, !tbaa !57
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, ptr %6, i64 %339
  %341 = load i32, ptr %340, align 4, !tbaa !34
  %342 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %317, i32 5
  store i32 %341, ptr %342, align 4, !tbaa !57
  %343 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %317, i32 4
  store i32 -1, ptr %343, align 4, !tbaa !57
  %344 = icmp eq i32 %341, -1
  br i1 %344, label %348, label %345

345:                                              ; preds = %321
  %346 = sext i32 %341 to i64
  %347 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %4, i64 %346, i32 4
  store i32 %316, ptr %347, align 4, !tbaa !57
  br label %348

348:                                              ; preds = %345, %321
  store i32 %316, ptr %340, align 4, !tbaa !34
  %349 = tail call i32 @llvm.smin.i32(i32 %310, i32 %338)
  br label %307, !llvm.loop !92

350:                                              ; preds = %311
  %351 = icmp sgt i32 %302, 0
  br i1 %351, label %352, label %363

352:                                              ; preds = %350
  %353 = sext i32 %299 to i64
  %354 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %3, i64 %353
  store i32 %64, ptr %354, align 4, !tbaa !64
  %355 = ptrtoint ptr %308 to i64
  %356 = ptrtoint ptr %300 to i64
  %357 = sub i64 %355, %356
  %358 = lshr exact i64 %357, 2
  %359 = trunc i64 %358 to i32
  %360 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %3, i64 %353, i32 1
  store i32 %359, ptr %360, align 4, !tbaa !59
  %361 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %3, i64 %353, i32 2
  store i32 %302, ptr %361, align 4, !tbaa !57
  %362 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %3, i64 %353, i32 3
  store i32 0, ptr %362, align 4, !tbaa !57
  br label %363

363:                                              ; preds = %352, %350
  %364 = icmp slt i32 %303, %7
  br i1 %364, label %19, label %365, !llvm.loop !93

365:                                              ; preds = %363, %11
  %366 = phi i32 [ 0, %11 ], [ %65, %363 ]
  ret i32 %366
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @order_children(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !PGOFuncName !94 {
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %55

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64
  br label %10

7:                                                ; preds = %43
  br i1 %4, label %8, label %55

8:                                                ; preds = %7
  %9 = zext nneg i32 %0 to i64
  br label %46

10:                                               ; preds = %5, %43
  %11 = phi i64 [ 0, %5 ], [ %44, %43 ]
  %12 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !54
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %43, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %1, i64 %11, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !57
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = trunc i64 %11 to i32
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i32 [ %25, %21 ], [ %20, %19 ]
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %1, i64 %23, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !57
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %1, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !54
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %21, !llvm.loop !95

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %1, i64 %26, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !57
  br label %33

33:                                               ; preds = %33, %30
  %34 = phi i32 [ %20, %30 ], [ %25, %33 ]
  %35 = phi i32 [ %32, %30 ], [ %36, %33 ]
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %1, i64 %37, i32 3
  store i32 %35, ptr %38, align 4, !tbaa !57
  %39 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %1, i64 %37, i32 2
  store i32 %25, ptr %39, align 4, !tbaa !57
  %40 = load i32, ptr %31, align 4, !tbaa !57
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %33, label %42, !llvm.loop !96

42:                                               ; preds = %33
  store i32 %36, ptr %31, align 4, !tbaa !57
  br label %43

43:                                               ; preds = %10, %15, %42
  %44 = add nuw nsw i64 %11, 1
  %45 = icmp eq i64 %44, %6
  br i1 %45, label %7, label %10, !llvm.loop !97

46:                                               ; preds = %8, %46
  %47 = phi i64 [ 0, %8 ], [ %53, %46 ]
  %48 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %1, i64 %47, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !57
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %2, i64 %50
  %52 = trunc i64 %47 to i32
  store i32 %52, ptr %51, align 4, !tbaa !34
  %53 = add nuw nsw i64 %47, 1
  %54 = icmp eq i64 %53, %9
  br i1 %54, label %55, label %46, !llvm.loop !98

55:                                               ; preds = %46, %3, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @colamd_report(ptr noundef %0) local_unnamed_addr #5 {
  tail call fastcc void @print_report(ptr noundef nonnull @.str, ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_report(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #5 !PGOFuncName !99 {
  %3 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) %3(ptr noundef nonnull @.str.2, ptr noundef %0, i32 noundef 2, i32 noundef 7, ptr noundef nonnull @.str.3) #14
  br label %7

7:                                                ; preds = %5, %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %11 = icmp eq ptr %10, null
  br i1 %11, label %126, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) %10(ptr noundef nonnull @.str.4) #14
  br label %126

14:                                               ; preds = %7
  %15 = getelementptr inbounds i32, ptr %1, i64 4
  %16 = load i32, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds i32, ptr %1, i64 5
  %18 = load i32, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds i32, ptr %1, i64 6
  %20 = load i32, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds i32, ptr %1, i64 3
  %22 = load i32, ptr %21, align 4, !tbaa !34
  %23 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = icmp sgt i32 %22, -1
  %27 = select i1 %26, ptr @.str.5, ptr @.str.6
  %28 = tail call i32 (ptr, ...) %23(ptr noundef nonnull %27) #14
  %29 = load i32, ptr %21, align 4, !tbaa !34
  br label %30

30:                                               ; preds = %14, %25
  %31 = phi i32 [ %29, %25 ], [ %22, %14 ]
  switch i32 %31, label %126 [
    i32 1, label %32
    i32 0, label %49
    i32 -1, label %71
    i32 -2, label %76
    i32 -3, label %81
    i32 -4, label %86
    i32 -5, label %91
    i32 -6, label %96
    i32 -7, label %101
    i32 -8, label %110
    i32 -9, label %115
    i32 -10, label %121
  ]

32:                                               ; preds = %30
  %33 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %34 = icmp eq ptr %33, null
  br i1 %34, label %126, label %35

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) %33(ptr noundef nonnull @.str.7) #14
  %37 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %38 = icmp eq ptr %37, null
  br i1 %38, label %126, label %39

39:                                               ; preds = %35
  %40 = tail call i32 (ptr, ...) %37(ptr noundef nonnull @.str.8, ptr noundef %0, i32 noundef %20) #14
  %41 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %42 = icmp eq ptr %41, null
  br i1 %42, label %126, label %43

43:                                               ; preds = %39
  %44 = tail call i32 (ptr, ...) %41(ptr noundef nonnull @.str.9, ptr noundef %0, i32 noundef %18) #14
  %45 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %46 = icmp eq ptr %45, null
  br i1 %46, label %126, label %47

47:                                               ; preds = %43
  %48 = tail call i32 (ptr, ...) %45(ptr noundef nonnull @.str.10, ptr noundef %0, i32 noundef %16) #14
  br label %49

49:                                               ; preds = %47, %30
  %50 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %51 = icmp eq ptr %50, null
  br i1 %51, label %126, label %52

52:                                               ; preds = %49
  %53 = tail call i32 (ptr, ...) %50(ptr noundef nonnull @.str.11) #14
  %54 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %55 = icmp eq ptr %54, null
  br i1 %55, label %126, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %1, align 4, !tbaa !34
  %58 = tail call i32 (ptr, ...) %54(ptr noundef nonnull @.str.12, ptr noundef %0, i32 noundef %57) #14
  %59 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %60 = icmp eq ptr %59, null
  br i1 %60, label %126, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds i32, ptr %1, i64 1
  %63 = load i32, ptr %62, align 4, !tbaa !34
  %64 = tail call i32 (ptr, ...) %59(ptr noundef nonnull @.str.13, ptr noundef %0, i32 noundef %63) #14
  %65 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %66 = icmp eq ptr %65, null
  br i1 %66, label %126, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds i32, ptr %1, i64 2
  %69 = load i32, ptr %68, align 4, !tbaa !34
  %70 = tail call i32 (ptr, ...) %65(ptr noundef nonnull @.str.14, ptr noundef %0, i32 noundef %69) #14
  br label %126

71:                                               ; preds = %30
  %72 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %73 = icmp eq ptr %72, null
  br i1 %73, label %126, label %74

74:                                               ; preds = %71
  %75 = tail call i32 (ptr, ...) %72(ptr noundef nonnull @.str.15) #14
  br label %126

76:                                               ; preds = %30
  %77 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %78 = icmp eq ptr %77, null
  br i1 %78, label %126, label %79

79:                                               ; preds = %76
  %80 = tail call i32 (ptr, ...) %77(ptr noundef nonnull @.str.16) #14
  br label %126

81:                                               ; preds = %30
  %82 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %83 = icmp eq ptr %82, null
  br i1 %83, label %126, label %84

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ...) %82(ptr noundef nonnull @.str.17, i32 noundef %16) #14
  br label %126

86:                                               ; preds = %30
  %87 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %88 = icmp eq ptr %87, null
  br i1 %88, label %126, label %89

89:                                               ; preds = %86
  %90 = tail call i32 (ptr, ...) %87(ptr noundef nonnull @.str.18, i32 noundef %16) #14
  br label %126

91:                                               ; preds = %30
  %92 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %93 = icmp eq ptr %92, null
  br i1 %93, label %126, label %94

94:                                               ; preds = %91
  %95 = tail call i32 (ptr, ...) %92(ptr noundef nonnull @.str.19, i32 noundef %16) #14
  br label %126

96:                                               ; preds = %30
  %97 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %98 = icmp eq ptr %97, null
  br i1 %98, label %126, label %99

99:                                               ; preds = %96
  %100 = tail call i32 (ptr, ...) %97(ptr noundef nonnull @.str.20, i32 noundef %16) #14
  br label %126

101:                                              ; preds = %30
  %102 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %103 = icmp eq ptr %102, null
  br i1 %103, label %126, label %104

104:                                              ; preds = %101
  %105 = tail call i32 (ptr, ...) %102(ptr noundef nonnull @.str.21) #14
  %106 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %107 = icmp eq ptr %106, null
  br i1 %107, label %126, label %108

108:                                              ; preds = %104
  %109 = tail call i32 (ptr, ...) %106(ptr noundef nonnull @.str.22, i32 noundef %16, i32 noundef %18) #14
  br label %126

110:                                              ; preds = %30
  %111 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %112 = icmp eq ptr %111, null
  br i1 %112, label %126, label %113

113:                                              ; preds = %110
  %114 = tail call i32 (ptr, ...) %111(ptr noundef nonnull @.str.23, i32 noundef %16, i32 noundef %18) #14
  br label %126

115:                                              ; preds = %30
  %116 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %117 = icmp eq ptr %116, null
  br i1 %117, label %126, label %118

118:                                              ; preds = %115
  %119 = add nsw i32 %20, -1
  %120 = tail call i32 (ptr, ...) %116(ptr noundef nonnull @.str.24, i32 noundef %18, i32 noundef 0, i32 noundef %119, i32 noundef %16) #14
  br label %126

121:                                              ; preds = %30
  %122 = load ptr, ptr @colamd_printf, align 8, !tbaa !100
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = tail call i32 (ptr, ...) %122(ptr noundef nonnull @.str.25) #14
  br label %126

126:                                              ; preds = %39, %43, %32, %35, %52, %49, %101, %56, %30, %67, %61, %74, %71, %79, %76, %84, %81, %89, %86, %94, %91, %99, %96, %108, %104, %113, %110, %118, %115, %124, %121, %9, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @symamd_report(ptr noundef %0) local_unnamed_addr #5 {
  tail call fastcc void @print_report(ptr noundef nonnull @.str.1, ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @clear_mark(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #2 !PGOFuncName !102 {
  %5 = icmp sgt i32 %0, 0
  %6 = icmp slt i32 %0, %1
  %7 = and i1 %5, %6
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %8
  %11 = zext nneg i32 %2 to i64
  br label %12

12:                                               ; preds = %10, %18
  %13 = phi i64 [ 0, %10 ], [ %19, %18 ]
  %14 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %3, i64 %13, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !57
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, ptr %14, align 4, !tbaa !57
  br label %18

18:                                               ; preds = %12, %17
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, %11
  br i1 %20, label %21, label %12, !llvm.loop !103

21:                                               ; preds = %18, %8, %4
  %22 = phi i32 [ %0, %4 ], [ 1, %8 ], [ 1, %18 ]
  ret i32 %22
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @garbage_collection(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef readnone %5) unnamed_addr #7 !PGOFuncName !104 {
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  %9 = ptrtoint ptr %4 to i64
  %10 = zext nneg i32 %1 to i64
  br label %16

11:                                               ; preds = %62, %6
  %12 = phi ptr [ %4, %6 ], [ %63, %62 ]
  %13 = icmp sgt i32 %0, 0
  br i1 %13, label %14, label %66

14:                                               ; preds = %11
  %15 = zext nneg i32 %0 to i64
  br label %69

16:                                               ; preds = %8, %62
  %17 = phi i64 [ 0, %8 ], [ %64, %62 ]
  %18 = phi ptr [ %4, %8 ], [ %63, %62 ]
  %19 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %17
  %20 = load i32, ptr %19, align 4, !tbaa !54
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %62

22:                                               ; preds = %16
  %23 = ptrtoint ptr %18 to i64
  %24 = sub i64 %23, %9
  %25 = lshr exact i64 %24, 2
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %19, align 4, !tbaa !54
  %27 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %17, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !56
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %22
  %31 = zext nneg i32 %20 to i64
  %32 = getelementptr inbounds i32, ptr %4, i64 %31
  br label %33

33:                                               ; preds = %30, %45
  %34 = phi i32 [ %47, %45 ], [ 0, %30 ]
  %35 = phi ptr [ %46, %45 ], [ %18, %30 ]
  %36 = phi ptr [ %37, %45 ], [ %32, %30 ]
  %37 = getelementptr inbounds i32, ptr %36, i64 1
  %38 = load i32, ptr %36, align 4, !tbaa !34
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %39, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !57
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = getelementptr inbounds i32, ptr %35, i64 1
  store i32 %38, ptr %35, align 4, !tbaa !34
  br label %45

45:                                               ; preds = %33, %43
  %46 = phi ptr [ %44, %43 ], [ %35, %33 ]
  %47 = add nuw nsw i32 %34, 1
  %48 = icmp eq i32 %47, %28
  br i1 %48, label %49, label %33, !llvm.loop !105

49:                                               ; preds = %45
  %50 = load i32, ptr %19, align 4, !tbaa !54
  %51 = ptrtoint ptr %46 to i64
  br label %52

52:                                               ; preds = %49, %22
  %53 = phi i64 [ %51, %49 ], [ %23, %22 ]
  %54 = phi i32 [ %50, %49 ], [ %26, %22 ]
  %55 = phi ptr [ %46, %49 ], [ %18, %22 ]
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, ptr %4, i64 %56
  %58 = ptrtoint ptr %57 to i64
  %59 = sub i64 %53, %58
  %60 = lshr exact i64 %59, 2
  %61 = trunc i64 %60 to i32
  store i32 %61, ptr %27, align 4, !tbaa !56
  br label %62

62:                                               ; preds = %16, %52
  %63 = phi ptr [ %55, %52 ], [ %18, %16 ]
  %64 = add nuw nsw i64 %17, 1
  %65 = icmp eq i64 %64, %10
  br i1 %65, label %11, label %16, !llvm.loop !106

66:                                               ; preds = %87, %11
  %67 = icmp ult ptr %12, %5
  %68 = ptrtoint ptr %4 to i64
  br i1 %67, label %90, label %143

69:                                               ; preds = %14, %87
  %70 = phi i64 [ 0, %14 ], [ %88, %87 ]
  %71 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %70
  %72 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %70, i32 3
  %73 = load i32, ptr %72, align 4, !tbaa !57
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %70, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !59
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %69
  store i32 -1, ptr %72, align 4, !tbaa !57
  br label %87

80:                                               ; preds = %75
  %81 = load i32, ptr %71, align 4, !tbaa !64
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, ptr %4, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !34
  store i32 %84, ptr %72, align 4, !tbaa !57
  %85 = trunc i64 %70 to i32
  %86 = xor i32 %85, -1
  store i32 %86, ptr %83, align 4, !tbaa !34
  br label %87

87:                                               ; preds = %79, %80
  %88 = add nuw nsw i64 %70, 1
  %89 = icmp eq i64 %88, %15
  br i1 %89, label %66, label %69, !llvm.loop !107

90:                                               ; preds = %66, %139
  %91 = phi ptr [ %141, %139 ], [ %12, %66 ]
  %92 = phi ptr [ %140, %139 ], [ %12, %66 ]
  %93 = getelementptr inbounds i32, ptr %92, i64 1
  %94 = load i32, ptr %92, align 4, !tbaa !34
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %139

96:                                               ; preds = %90
  %97 = xor i32 %94, -1
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %98
  %100 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %98, i32 3
  %101 = load i32, ptr %100, align 4, !tbaa !57
  store i32 %101, ptr %92, align 4, !tbaa !34
  %102 = ptrtoint ptr %91 to i64
  %103 = sub i64 %102, %68
  %104 = lshr exact i64 %103, 2
  %105 = trunc i64 %104 to i32
  store i32 %105, ptr %99, align 4, !tbaa !64
  %106 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %2, i64 %98, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !59
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %96, %121
  %110 = phi i32 [ %123, %121 ], [ 0, %96 ]
  %111 = phi ptr [ %122, %121 ], [ %91, %96 ]
  %112 = phi ptr [ %113, %121 ], [ %92, %96 ]
  %113 = getelementptr inbounds i32, ptr %112, i64 1
  %114 = load i32, ptr %112, align 4, !tbaa !34
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !54
  %118 = icmp sgt i32 %117, -1
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = getelementptr inbounds i32, ptr %111, i64 1
  store i32 %114, ptr %111, align 4, !tbaa !34
  br label %121

121:                                              ; preds = %109, %119
  %122 = phi ptr [ %120, %119 ], [ %111, %109 ]
  %123 = add nuw nsw i32 %110, 1
  %124 = icmp eq i32 %123, %107
  br i1 %124, label %125, label %109, !llvm.loop !108

125:                                              ; preds = %121
  %126 = load i32, ptr %99, align 4, !tbaa !64
  %127 = ptrtoint ptr %122 to i64
  br label %128

128:                                              ; preds = %125, %96
  %129 = phi i64 [ %127, %125 ], [ %102, %96 ]
  %130 = phi i32 [ %126, %125 ], [ %105, %96 ]
  %131 = phi ptr [ %113, %125 ], [ %92, %96 ]
  %132 = phi ptr [ %122, %125 ], [ %91, %96 ]
  %133 = sext i32 %130 to i64
  %134 = getelementptr inbounds i32, ptr %4, i64 %133
  %135 = ptrtoint ptr %134 to i64
  %136 = sub i64 %129, %135
  %137 = lshr exact i64 %136, 2
  %138 = trunc i64 %137 to i32
  store i32 %138, ptr %106, align 4, !tbaa !59
  br label %139

139:                                              ; preds = %128, %90
  %140 = phi ptr [ %131, %128 ], [ %93, %90 ]
  %141 = phi ptr [ %132, %128 ], [ %91, %90 ]
  %142 = icmp ult ptr %140, %5
  br i1 %142, label %90, label %143, !llvm.loop !109

143:                                              ; preds = %139, %66
  %144 = phi ptr [ %12, %66 ], [ %141, %139 ]
  %145 = ptrtoint ptr %144 to i64
  %146 = sub i64 %145, %68
  %147 = lshr exact i64 %146, 2
  %148 = trunc i64 %147 to i32
  ret i32 %148
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @detect_super_cols(ptr nocapture noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #7 !PGOFuncName !110 {
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds i32, ptr %1, i64 %6
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %107

11:                                               ; preds = %5, %105
  %12 = phi ptr [ %13, %105 ], [ %7, %5 ]
  %13 = getelementptr inbounds i32, ptr %12, i64 1
  %14 = load i32, ptr %12, align 4, !tbaa !34
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !54
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %105, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %15, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !57
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %2, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !34
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = zext nneg i32 %24 to i64
  %28 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %27, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !57
  br label %32

30:                                               ; preds = %19
  %31 = sub nsw i32 -2, %24
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %29, %26 ], [ %31, %30 ]
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %101, label %35

35:                                               ; preds = %32, %98
  %36 = phi i32 [ %99, %98 ], [ %33, %32 ]
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %37
  %39 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %37, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !56
  %41 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %37, i32 5
  %42 = load i32, ptr %41, align 4, !tbaa !57
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %101, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %37, i32 3
  %46 = icmp sgt i32 %40, 0
  %47 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %37, i32 2
  br label %48

48:                                               ; preds = %44, %93
  %49 = phi i32 [ %42, %44 ], [ %96, %93 ]
  %50 = phi i32 [ %36, %44 ], [ %94, %93 ]
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %51
  %53 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %51, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !56
  %55 = icmp eq i32 %54, %40
  br i1 %55, label %56, label %93

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %51, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !57
  %59 = load i32, ptr %45, align 4, !tbaa !57
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %56
  br i1 %46, label %62, label %81

62:                                               ; preds = %61
  %63 = load i32, ptr %52, align 4, !tbaa !54
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %1, i64 %64
  %66 = load i32, ptr %38, align 4, !tbaa !54
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %1, i64 %67
  br label %69

69:                                               ; preds = %62, %76
  %70 = phi i32 [ %79, %76 ], [ 0, %62 ]
  %71 = phi ptr [ %78, %76 ], [ %68, %62 ]
  %72 = phi ptr [ %77, %76 ], [ %65, %62 ]
  %73 = load i32, ptr %71, align 4, !tbaa !34
  %74 = load i32, ptr %72, align 4, !tbaa !34
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = getelementptr inbounds i32, ptr %72, i64 1
  %78 = getelementptr inbounds i32, ptr %71, i64 1
  %79 = add nuw nsw i32 %70, 1
  %80 = icmp eq i32 %79, %40
  br i1 %80, label %84, label %69, !llvm.loop !111

81:                                               ; preds = %69, %61
  %82 = phi i32 [ 0, %61 ], [ %70, %69 ]
  %83 = icmp eq i32 %82, %40
  br i1 %83, label %84, label %93

84:                                               ; preds = %76, %81
  %85 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %51, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !57
  %87 = load i32, ptr %47, align 4, !tbaa !57
  %88 = add nsw i32 %87, %86
  store i32 %88, ptr %47, align 4, !tbaa !57
  store i32 %36, ptr %85, align 4, !tbaa !57
  store i32 -2, ptr %52, align 4, !tbaa !54
  store i32 -1, ptr %57, align 4, !tbaa !57
  %89 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %51, i32 5
  %90 = load i32, ptr %89, align 4, !tbaa !57
  %91 = sext i32 %50 to i64
  %92 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %91, i32 5
  store i32 %90, ptr %92, align 4, !tbaa !57
  br label %93

93:                                               ; preds = %81, %48, %56, %84
  %94 = phi i32 [ %50, %84 ], [ %49, %56 ], [ %49, %48 ], [ %49, %81 ]
  %95 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %51, i32 5
  %96 = load i32, ptr %95, align 4, !tbaa !57
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %48, !llvm.loop !112

98:                                               ; preds = %93
  %99 = load i32, ptr %41, align 4, !tbaa !57
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %35, !llvm.loop !113

101:                                              ; preds = %35, %98, %32
  %102 = zext nneg i32 %24 to i64
  %103 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %0, i64 %102, i32 4
  %104 = select i1 %25, ptr %103, ptr %23
  store i32 -1, ptr %104, align 4, !tbaa !57
  br label %105

105:                                              ; preds = %101, %11
  %106 = icmp ult ptr %13, %9
  br i1 %106, label %11, label %107, !llvm.loop !114

107:                                              ; preds = %105, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"colamd.c:t_mult"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"colamd.c:t_add"}
!42 = !{!43, !43, i64 0}
!43 = !{!"double", !36, i64 0}
!44 = distinct !{!44, !40}
!45 = distinct !{!45, !40}
!46 = distinct !{!46, !40}
!47 = distinct !{!47, !40}
!48 = distinct !{!48, !40}
!49 = distinct !{!49, !40}
!50 = distinct !{!50, !40}
!51 = distinct !{!51, !40}
!52 = !{i32 0, i32 2}
!53 = !{!"colamd.c:init_rows_cols"}
!54 = !{!55, !35, i64 0}
!55 = !{!"Colamd_Col_struct", !35, i64 0, !35, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20}
!56 = !{!55, !35, i64 4}
!57 = !{!36, !36, i64 0}
!58 = distinct !{!58, !40}
!59 = !{!60, !35, i64 4}
!60 = !{!"Colamd_Row_struct", !35, i64 0, !35, i64 4, !36, i64 8, !36, i64 12}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !40}
!63 = distinct !{!63, !40}
!64 = !{!60, !35, i64 0}
!65 = distinct !{!65, !40}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !40}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !40}
!70 = distinct !{!70, !40}
!71 = distinct !{!71, !40}
!72 = distinct !{!72, !40}
!73 = distinct !{!73, !40}
!74 = !{!"colamd.c:init_scoring"}
!75 = distinct !{!75, !40}
!76 = distinct !{!76, !40}
!77 = distinct !{!77, !40}
!78 = distinct !{!78, !40}
!79 = distinct !{!79, !40}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = !{!"colamd.c:find_ordering"}
!83 = !{i32 1, i32 2147483647}
!84 = distinct !{!84, !40}
!85 = distinct !{!85, !40}
!86 = distinct !{!86, !40}
!87 = distinct !{!87, !40}
!88 = distinct !{!88, !40}
!89 = distinct !{!89, !40}
!90 = distinct !{!90, !40}
!91 = distinct !{!91, !40}
!92 = distinct !{!92, !40}
!93 = distinct !{!93, !40}
!94 = !{!"colamd.c:order_children"}
!95 = distinct !{!95, !40}
!96 = distinct !{!96, !40}
!97 = distinct !{!97, !40}
!98 = distinct !{!98, !40}
!99 = !{!"colamd.c:print_report"}
!100 = !{!101, !101, i64 0}
!101 = !{!"any pointer", !36, i64 0}
!102 = !{!"colamd.c:clear_mark"}
!103 = distinct !{!103, !40}
!104 = !{!"colamd.c:garbage_collection"}
!105 = distinct !{!105, !40}
!106 = distinct !{!106, !40}
!107 = distinct !{!107, !40}
!108 = distinct !{!108, !40}
!109 = distinct !{!109, !40}
!110 = !{!"colamd.c:detect_super_cols"}
!111 = distinct !{!111, !40}
!112 = distinct !{!112, !40}
!113 = distinct !{!113, !40}
!114 = distinct !{!114, !40}
