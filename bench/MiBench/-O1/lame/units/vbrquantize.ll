; ModuleID = 'vbrquantize.c'
source_filename = "vbrquantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@pow43 = external local_unnamed_addr global [8208 x double], align 16
@pretab = external local_unnamed_addr global [21 x i32], align 16
@masking_lower = external local_unnamed_addr global float, align 4
@convert_mdct = external local_unnamed_addr global i32, align 4
@scalefac_band = external local_unnamed_addr global %struct.scalefac_struct, align 4

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @calc_sfb_ave_noise(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = tail call double @pow(double noundef %4, double noundef 7.500000e-01) #10
  %7 = mul nsw i32 %3, %2
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %5
  %10 = sext i32 %2 to i64
  %11 = zext nneg i32 %7 to i64
  br label %15

12:                                               ; preds = %48
  %13 = add i64 %16, %10
  %14 = icmp slt i64 %13, %11
  br i1 %14, label %15, label %50, !llvm.loop !5

15:                                               ; preds = %9, %12
  %16 = phi i64 [ 0, %9 ], [ %13, %12 ]
  %17 = phi double [ 0.000000e+00, %9 ], [ %49, %12 ]
  %18 = getelementptr inbounds double, ptr %1, i64 %16
  %19 = load double, ptr %18, align 8, !tbaa !7
  %20 = fdiv double %19, %6
  %21 = tail call double @llvm.floor.f64(double %20)
  %22 = fptosi double %21 to i32
  %23 = icmp slt i32 %22, 8207
  br i1 %23, label %24, label %48

24:                                               ; preds = %15
  %25 = getelementptr inbounds double, ptr %0, i64 %16
  %26 = load double, ptr %25, align 8, !tbaa !7
  %27 = tail call double @llvm.fabs.f64(double %26)
  %28 = sext i32 %22 to i64
  %29 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %28
  %30 = load double, ptr %29, align 8, !tbaa !7
  %31 = fneg double %30
  %32 = tail call double @llvm.fmuladd.f64(double %31, double %4, double %27)
  %33 = icmp eq i32 %22, 8206
  br i1 %33, label %45, label %34

34:                                               ; preds = %24
  %35 = add nsw i32 %22, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %36
  %38 = load double, ptr %37, align 8, !tbaa !7
  %39 = fneg double %38
  %40 = tail call double @llvm.fmuladd.f64(double %39, double %4, double %27)
  %41 = tail call double @llvm.fabs.f64(double %40)
  %42 = tail call double @llvm.fabs.f64(double %32)
  %43 = fcmp olt double %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %34, %44, %24
  %46 = phi double [ %40, %44 ], [ %32, %34 ], [ %32, %24 ]
  %47 = tail call double @llvm.fmuladd.f64(double %46, double %46, double %17)
  br label %48

48:                                               ; preds = %15, %45
  %49 = phi double [ %47, %45 ], [ %17, %15 ]
  br i1 %23, label %12, label %54

50:                                               ; preds = %12, %5
  %51 = phi double [ 0.000000e+00, %5 ], [ %49, %12 ]
  %52 = sitofp i32 %3 to double
  %53 = fdiv double %51, %52
  br label %54

54:                                               ; preds = %48, %50
  %55 = phi double [ %53, %50 ], [ -1.000000e+00, %48 ]
  ret double %55
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local double @find_scalefac(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 %3, double noundef %4, i32 noundef %5) local_unnamed_addr #4 {
  %7 = mul nsw i32 %5, %2
  %8 = icmp sgt i32 %7, 0
  %9 = sext i32 %2 to i64
  %10 = zext nneg i32 %7 to i64
  %11 = sitofp i32 %5 to double
  br label %12

12:                                               ; preds = %6, %74
  %13 = phi i32 [ 0, %6 ], [ %77, %74 ]
  %14 = phi double [ 3.200000e+01, %6 ], [ %17, %74 ]
  %15 = phi double [ 1.000000e+04, %6 ], [ %76, %74 ]
  %16 = phi double [ -2.050000e+01, %6 ], [ %75, %74 ]
  %17 = fmul double %14, 5.000000e-01
  %18 = tail call double @exp2(double %16) #10
  %19 = tail call double @pow(double noundef %18, double noundef 7.500000e-01) #10
  br i1 %8, label %23, label %58

20:                                               ; preds = %56
  %21 = add i64 %24, %9
  %22 = icmp slt i64 %21, %10
  br i1 %22, label %23, label %58, !llvm.loop !5

23:                                               ; preds = %12, %20
  %24 = phi i64 [ %21, %20 ], [ 0, %12 ]
  %25 = phi double [ %57, %20 ], [ 0.000000e+00, %12 ]
  %26 = getelementptr inbounds double, ptr %1, i64 %24
  %27 = load double, ptr %26, align 8, !tbaa !7
  %28 = fdiv double %27, %19
  %29 = tail call double @llvm.floor.f64(double %28)
  %30 = fptosi double %29 to i32
  %31 = icmp slt i32 %30, 8207
  br i1 %31, label %32, label %56

32:                                               ; preds = %23
  %33 = getelementptr inbounds double, ptr %0, i64 %24
  %34 = load double, ptr %33, align 8, !tbaa !7
  %35 = tail call double @llvm.fabs.f64(double %34)
  %36 = sext i32 %30 to i64
  %37 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %36
  %38 = load double, ptr %37, align 8, !tbaa !7
  %39 = fneg double %38
  %40 = tail call double @llvm.fmuladd.f64(double %39, double %18, double %35)
  %41 = icmp eq i32 %30, 8206
  br i1 %41, label %53, label %42

42:                                               ; preds = %32
  %43 = add nsw i32 %30, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %44
  %46 = load double, ptr %45, align 8, !tbaa !7
  %47 = fneg double %46
  %48 = tail call double @llvm.fmuladd.f64(double %47, double %18, double %35)
  %49 = tail call double @llvm.fabs.f64(double %48)
  %50 = tail call double @llvm.fabs.f64(double %40)
  %51 = fcmp olt double %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %42, %32
  %54 = phi double [ %48, %52 ], [ %40, %42 ], [ %40, %32 ]
  %55 = tail call double @llvm.fmuladd.f64(double %54, double %54, double %25)
  br label %56

56:                                               ; preds = %53, %23
  %57 = phi double [ %55, %53 ], [ %25, %23 ]
  br i1 %31, label %20, label %61

58:                                               ; preds = %20, %12
  %59 = phi double [ 0.000000e+00, %12 ], [ %57, %20 ]
  %60 = fdiv double %59, %11
  br label %61

61:                                               ; preds = %56, %58
  %62 = phi double [ %60, %58 ], [ -1.000000e+00, %56 ]
  %63 = fcmp olt double %62, 0.000000e+00
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = fadd double %16, %17
  br label %74

66:                                               ; preds = %61
  %67 = fcmp ogt double %62, %4
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  %69 = fcmp oeq double %15, 1.000000e+04
  %70 = select i1 %69, double %16, double %15
  %71 = fsub double %16, %17
  br label %74

72:                                               ; preds = %66
  %73 = fadd double %16, %17
  br label %74

74:                                               ; preds = %64, %72, %68
  %75 = phi double [ %65, %64 ], [ %71, %68 ], [ %73, %72 ]
  %76 = phi double [ %15, %64 ], [ %70, %68 ], [ %16, %72 ]
  %77 = add nuw nsw i32 %13, 1
  %78 = icmp eq i32 %77, 7
  br i1 %78, label %79, label %12, !llvm.loop !11

79:                                               ; preds = %74
  %80 = fadd double %76, 7.500000e-01
  %81 = fadd double %76, 1.000000e-02
  %82 = fcmp ogt double %80, %81
  br i1 %82, label %83, label %148

83:                                               ; preds = %79
  %84 = tail call double @llvm.fmuladd.f64(double %17, double 2.000000e+00, double %76)
  %85 = mul nsw i32 %5, %2
  %86 = icmp sgt i32 %85, 0
  %87 = sext i32 %2 to i64
  %88 = zext nneg i32 %85 to i64
  %89 = sitofp i32 %5 to double
  br label %90

90:                                               ; preds = %83, %145
  %91 = phi double [ %80, %83 ], [ %146, %145 ]
  %92 = fsub double %91, %84
  %93 = tail call double @llvm.fabs.f64(double %92)
  %94 = fcmp olt double %93, 1.000000e-02
  %95 = fadd double %91, -2.500000e-01
  %96 = select i1 %94, double %95, double %91
  %97 = tail call double @exp2(double %96) #10
  %98 = tail call double @pow(double noundef %97, double noundef 7.500000e-01) #10
  br i1 %86, label %102, label %137

99:                                               ; preds = %135
  %100 = add i64 %103, %87
  %101 = icmp slt i64 %100, %88
  br i1 %101, label %102, label %137, !llvm.loop !5

102:                                              ; preds = %90, %99
  %103 = phi i64 [ %100, %99 ], [ 0, %90 ]
  %104 = phi double [ %136, %99 ], [ 0.000000e+00, %90 ]
  %105 = getelementptr inbounds double, ptr %1, i64 %103
  %106 = load double, ptr %105, align 8, !tbaa !7
  %107 = fdiv double %106, %98
  %108 = tail call double @llvm.floor.f64(double %107)
  %109 = fptosi double %108 to i32
  %110 = icmp slt i32 %109, 8207
  br i1 %110, label %111, label %135

111:                                              ; preds = %102
  %112 = getelementptr inbounds double, ptr %0, i64 %103
  %113 = load double, ptr %112, align 8, !tbaa !7
  %114 = tail call double @llvm.fabs.f64(double %113)
  %115 = sext i32 %109 to i64
  %116 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %115
  %117 = load double, ptr %116, align 8, !tbaa !7
  %118 = fneg double %117
  %119 = tail call double @llvm.fmuladd.f64(double %118, double %97, double %114)
  %120 = icmp eq i32 %109, 8206
  br i1 %120, label %132, label %121

121:                                              ; preds = %111
  %122 = add nsw i32 %109, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !7
  %126 = fneg double %125
  %127 = tail call double @llvm.fmuladd.f64(double %126, double %97, double %114)
  %128 = tail call double @llvm.fabs.f64(double %127)
  %129 = tail call double @llvm.fabs.f64(double %119)
  %130 = fcmp olt double %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %121, %111
  %133 = phi double [ %127, %131 ], [ %119, %121 ], [ %119, %111 ]
  %134 = tail call double @llvm.fmuladd.f64(double %133, double %133, double %104)
  br label %135

135:                                              ; preds = %132, %102
  %136 = phi double [ %134, %132 ], [ %104, %102 ]
  br i1 %110, label %99, label %140

137:                                              ; preds = %99, %90
  %138 = phi double [ 0.000000e+00, %90 ], [ %136, %99 ]
  %139 = fdiv double %138, %89
  br label %140

140:                                              ; preds = %135, %137
  %141 = phi double [ %139, %137 ], [ -1.000000e+00, %135 ]
  %142 = fcmp ule double %141, 0.000000e+00
  %143 = fcmp ugt double %141, %4
  %144 = or i1 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = fadd double %96, -2.500000e-01
  %147 = fcmp ogt double %146, %81
  br i1 %147, label %90, label %148, !llvm.loop !12

148:                                              ; preds = %140, %145, %79
  %149 = phi double [ %76, %79 ], [ %96, %140 ], [ %76, %145 ]
  ret double %149
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local double @compute_scalefacs_short(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = alloca [12 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !13
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %4, ptr noundef nonnull align 8 dereferenceable(288) %0, i64 288, i1 false)
  %9 = sitofp i32 %8 to double
  br label %10

10:                                               ; preds = %3, %32
  %11 = phi i64 [ 0, %3 ], [ %33, %32 ]
  %12 = phi double [ 0.000000e+00, %3 ], [ %29, %32 ]
  %13 = icmp ult i64 %11, 6
  %14 = select i1 %13, double 1.500000e+01, double 7.000000e+00
  %15 = fdiv double %14, %9
  br label %16

16:                                               ; preds = %10, %16
  %17 = phi i64 [ 0, %10 ], [ %30, %16 ]
  %18 = phi double [ %12, %10 ], [ %29, %16 ]
  %19 = getelementptr inbounds [12 x [3 x double]], ptr %4, i64 0, i64 %11, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !7
  %21 = fneg double %20
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %9, double 7.500000e-01)
  %23 = fadd double %22, 1.000000e-04
  %24 = tail call double @llvm.floor.f64(double %23)
  %25 = fptosi double %24 to i32
  %26 = getelementptr inbounds [3 x i32], ptr %2, i64 %11, i64 %17
  store i32 %25, ptr %26, align 4, !tbaa !17
  %27 = fadd double %15, %20
  %28 = fcmp ogt double %27, %18
  %29 = select i1 %28, double %27, double %18
  %30 = add nuw nsw i64 %17, 1
  %31 = icmp eq i64 %30, 3
  br i1 %31, label %32, label %16, !llvm.loop !18

32:                                               ; preds = %16
  %33 = add nuw nsw i64 %11, 1
  %34 = icmp eq i64 %33, 12
  br i1 %34, label %35, label %10, !llvm.loop !19

35:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %4) #10
  ret double %29
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local double @compute_scalefacs_long(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = alloca [21 x double], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !13
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(168) %0, i64 168, i1 false)
  %9 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 12
  store i32 0, ptr %9, align 8, !tbaa !20
  br label %10

10:                                               ; preds = %3, %20
  %11 = phi i64 [ 11, %3 ], [ %21, %20 ]
  %12 = getelementptr inbounds [21 x double], ptr %4, i64 0, i64 %11
  %13 = load double, ptr %12, align 8, !tbaa !7
  %14 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %11
  %15 = load i32, ptr %14, align 4, !tbaa !17
  %16 = sdiv i32 %15, %8
  %17 = sitofp i32 %16 to double
  %18 = fadd double %13, %17
  %19 = fcmp ogt double %18, 0.000000e+00
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = add nuw nsw i64 %11, 1
  %22 = icmp eq i64 %21, 21
  br i1 %22, label %25, label %10, !llvm.loop !21

23:                                               ; preds = %10
  %24 = trunc i64 %11 to i32
  br label %25

25:                                               ; preds = %20, %23
  %26 = phi i32 [ %24, %23 ], [ 21, %20 ]
  %27 = icmp eq i32 %26, 21
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  store i32 1, ptr %9, align 8, !tbaa !20
  br label %29

29:                                               ; preds = %28, %29
  %30 = phi i64 [ 11, %28 ], [ %38, %29 ]
  %31 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !17
  %33 = sdiv i32 %32, %8
  %34 = sitofp i32 %33 to double
  %35 = getelementptr inbounds [21 x double], ptr %4, i64 0, i64 %30
  %36 = load double, ptr %35, align 8, !tbaa !7
  %37 = fadd double %36, %34
  store double %37, ptr %35, align 8, !tbaa !7
  %38 = add nuw nsw i64 %30, 1
  %39 = icmp eq i64 %38, 21
  br i1 %39, label %40, label %29, !llvm.loop !22

40:                                               ; preds = %29, %25
  %41 = sitofp i32 %8 to double
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ 0, %40 ], [ %59, %42 ]
  %44 = phi double [ 0.000000e+00, %40 ], [ %58, %42 ]
  %45 = getelementptr inbounds [21 x double], ptr %4, i64 0, i64 %43
  %46 = load double, ptr %45, align 8, !tbaa !7
  %47 = fneg double %46
  %48 = tail call double @llvm.fmuladd.f64(double %47, double %41, double 7.500000e-01)
  %49 = fadd double %48, 1.000000e-04
  %50 = tail call double @llvm.floor.f64(double %49)
  %51 = fptosi double %50 to i32
  %52 = getelementptr inbounds i32, ptr %2, i64 %43
  store i32 %51, ptr %52, align 4, !tbaa !17
  %53 = icmp ult i64 %43, 11
  %54 = select i1 %53, double 1.500000e+01, double 7.000000e+00
  %55 = fdiv double %54, %41
  %56 = fadd double %55, %46
  %57 = fcmp ogt double %56, %44
  %58 = select i1 %57, double %56, double %44
  %59 = add nuw nsw i64 %43, 1
  %60 = icmp eq i64 %59, 21
  br i1 %60, label %61, label %42, !llvm.loop !23

61:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %4) #10
  ret double %58
}

; Function Attrs: nounwind uwtable
define dso_local void @VBR_iteration_loop_new(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #4 {
  %9 = alloca [21 x double], align 16
  %10 = alloca [21 x double], align 16
  %11 = alloca [12 x [3 x double]], align 16
  %12 = alloca [12 x [3 x double]], align 16
  %13 = alloca [2 x [2 x %struct.III_psy_xmin]], align 16
  %14 = alloca %struct.III_psy_xmin, align 8
  %15 = alloca [576 x double], align 16
  call void @llvm.lifetime.start.p0(i64 1952, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %14) #10
  tail call void @iteration_init(ptr noundef %0, ptr noundef %5, ptr noundef %6) #10
  %16 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %17 = load i32, ptr %16, align 4, !tbaa !24
  %18 = shl nsw i32 %17, 1
  %19 = add nsw i32 %18, -10
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 1.000000e+01
  %22 = fcmp ogt double %21, 1.270000e+02
  br i1 %22, label %23, label %25, !prof !28

23:                                               ; preds = %8
  %24 = tail call double @pow(double noundef 1.000000e+01, double noundef %21) #10
  br label %25

25:                                               ; preds = %8, %23
  store float 1.000000e+00, ptr @masking_lower, align 4, !tbaa !29
  %26 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %27 = load i32, ptr %26, align 8, !tbaa !30
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %315

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %31 = getelementptr inbounds %struct.III_psy_xmin, ptr %14, i64 0, i32 1
  br label %32

32:                                               ; preds = %29, %310
  %33 = phi i64 [ 0, %29 ], [ %311, %310 ]
  %34 = load i32, ptr @convert_mdct, align 4, !tbaa !17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds [2 x [576 x double]], ptr %3, i64 %33
  call void @ms_convert(ptr noundef %37, ptr noundef %37) #10
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i32, ptr %30, align 4, !tbaa !31
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %310

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.III_side_info_t, ptr %5, i64 0, i32 4, i64 %33
  br label %43

43:                                               ; preds = %41, %305
  %44 = phi i64 [ 0, %41 ], [ %306, %305 ]
  call void @llvm.lifetime.start.p0(i64 4608, ptr nonnull %15) #10
  %45 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %42, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.gr_info, ptr %45, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !32
  br label %48

48:                                               ; preds = %43, %48
  %49 = phi i64 [ 0, %43 ], [ %57, %48 ]
  %50 = getelementptr inbounds [2 x [576 x double]], ptr %3, i64 %33, i64 %44, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !7
  %52 = call double @llvm.fabs.f64(double %51)
  %53 = call double @sqrt(double noundef %52) #10
  %54 = fmul double %53, %52
  %55 = call double @sqrt(double noundef %54) #10
  %56 = getelementptr inbounds [576 x double], ptr %15, i64 0, i64 %49
  store double %55, ptr %56, align 8, !tbaa !7
  %57 = add nuw nsw i64 %49, 1
  %58 = icmp eq i64 %57, 576
  br i1 %58, label %59, label %48, !llvm.loop !33

59:                                               ; preds = %48
  %60 = icmp eq i32 %47, 2
  %61 = getelementptr inbounds [2 x [576 x double]], ptr %3, i64 %33, i64 %44
  %62 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %4, i64 %33, i64 %44
  %63 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], ptr %13, i64 0, i64 %33, i64 %44
  %64 = call i32 @calc_xmin(ptr noundef %0, ptr noundef %61, ptr noundef %62, ptr noundef nonnull %45, ptr noundef nonnull %63) #10
  br i1 %60, label %65, label %96

65:                                               ; preds = %59, %94
  %66 = phi i64 [ %69, %94 ], [ 0, %59 ]
  %67 = phi double [ %91, %94 ], [ 0.000000e+00, %59 ]
  %68 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %66
  %69 = add nuw nsw i64 %66, 1
  %70 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %69
  br label %71

71:                                               ; preds = %65, %71
  %72 = phi i64 [ 0, %65 ], [ %92, %71 ]
  %73 = phi double [ %67, %65 ], [ %91, %71 ]
  %74 = load i32, ptr %68, align 4, !tbaa !17
  %75 = load i32, ptr %70, align 4, !tbaa !17
  %76 = sub nsw i32 %75, %74
  %77 = mul nsw i32 %74, 3
  %78 = trunc i64 %72 to i32
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x [576 x double]], ptr %3, i64 %33, i64 %44, i64 %80
  %82 = getelementptr inbounds [576 x double], ptr %15, i64 0, i64 %80
  %83 = load float, ptr @masking_lower, align 4, !tbaa !29
  %84 = fpext float %83 to double
  %85 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], ptr %13, i64 0, i64 %33, i64 %44, i32 1, i64 %66, i64 %72
  %86 = load double, ptr %85, align 8, !tbaa !7
  %87 = fmul double %86, %84
  %88 = call double @find_scalefac(ptr noundef %81, ptr noundef nonnull %82, i32 noundef 3, i32 poison, double noundef %87, i32 noundef %76)
  %89 = getelementptr inbounds %struct.III_psy_xmin, ptr %14, i64 0, i32 1, i64 %66, i64 %72
  store double %88, ptr %89, align 8, !tbaa !7
  %90 = fcmp ogt double %88, %73
  %91 = select i1 %90, double %88, double %73
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, 3
  br i1 %93, label %94, label %71, !llvm.loop !34

94:                                               ; preds = %71
  %95 = icmp eq i64 %69, 12
  br i1 %95, label %118, label %65, !llvm.loop !35

96:                                               ; preds = %59, %96
  %97 = phi i64 [ %101, %96 ], [ 0, %59 ]
  %98 = phi double [ %116, %96 ], [ 0.000000e+00, %59 ]
  %99 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %97
  %100 = load i32, ptr %99, align 4, !tbaa !17
  %101 = add nuw nsw i64 %97, 1
  %102 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !17
  %104 = sub nsw i32 %103, %100
  %105 = sext i32 %100 to i64
  %106 = getelementptr inbounds [2 x [576 x double]], ptr %3, i64 %33, i64 %44, i64 %105
  %107 = getelementptr inbounds [576 x double], ptr %15, i64 0, i64 %105
  %108 = load float, ptr @masking_lower, align 4, !tbaa !29
  %109 = fpext float %108 to double
  %110 = getelementptr inbounds [22 x double], ptr %63, i64 0, i64 %97
  %111 = load double, ptr %110, align 8, !tbaa !7
  %112 = fmul double %111, %109
  %113 = call double @find_scalefac(ptr noundef %106, ptr noundef nonnull %107, i32 noundef 1, i32 poison, double noundef %112, i32 noundef %104)
  %114 = getelementptr inbounds [22 x double], ptr %14, i64 0, i64 %97
  store double %113, ptr %114, align 8, !tbaa !7
  %115 = fcmp ogt double %113, %98
  %116 = select i1 %115, double %113, double %98
  %117 = icmp eq i64 %101, 21
  br i1 %117, label %118, label %96, !llvm.loop !36

118:                                              ; preds = %96, %94
  %119 = phi double [ %91, %94 ], [ %116, %96 ]
  %120 = call double @llvm.fmuladd.f64(double %119, double 4.000000e+00, double 2.100000e+02)
  %121 = fadd double %120, 5.000000e-01
  %122 = call double @llvm.floor.f64(double %121)
  %123 = fptoui double %122 to i32
  %124 = getelementptr inbounds %struct.gr_info, ptr %45, i64 0, i32 3
  store i32 %123, ptr %124, align 4, !tbaa !37
  br i1 %60, label %125, label %193

125:                                              ; preds = %118, %134
  %126 = phi i64 [ %135, %134 ], [ 0, %118 ]
  br label %127

127:                                              ; preds = %125, %127
  %128 = phi i64 [ 0, %125 ], [ %132, %127 ]
  %129 = getelementptr inbounds %struct.III_psy_xmin, ptr %14, i64 0, i32 1, i64 %126, i64 %128
  %130 = load double, ptr %129, align 8, !tbaa !7
  %131 = fsub double %130, %119
  store double %131, ptr %129, align 8, !tbaa !7
  %132 = add nuw nsw i64 %128, 1
  %133 = icmp eq i64 %132, 3
  br i1 %133, label %134, label %127, !llvm.loop !38

134:                                              ; preds = %127
  %135 = add nuw nsw i64 %126, 1
  %136 = icmp eq i64 %135, 12
  br i1 %136, label %137, label %125, !llvm.loop !39

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.gr_info, ptr %45, i64 0, i32 13
  store i32 0, ptr %138, align 4, !tbaa !13
  %139 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %7, i64 %33, i64 %44, i32 1
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %12) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %12, ptr noundef nonnull align 8 dereferenceable(288) %31, i64 288, i1 false)
  br label %140

140:                                              ; preds = %161, %137
  %141 = phi i64 [ 0, %137 ], [ %162, %161 ]
  %142 = phi double [ 0.000000e+00, %137 ], [ %158, %161 ]
  %143 = icmp ult i64 %141, 6
  %144 = select i1 %143, double 7.500000e+00, double 3.500000e+00
  br label %145

145:                                              ; preds = %145, %140
  %146 = phi i64 [ 0, %140 ], [ %159, %145 ]
  %147 = phi double [ %142, %140 ], [ %158, %145 ]
  %148 = getelementptr inbounds [12 x [3 x double]], ptr %12, i64 0, i64 %141, i64 %146
  %149 = load double, ptr %148, align 8, !tbaa !7
  %150 = fneg double %149
  %151 = call double @llvm.fmuladd.f64(double %150, double 2.000000e+00, double 7.500000e-01)
  %152 = fadd double %151, 1.000000e-04
  %153 = call double @llvm.floor.f64(double %152)
  %154 = fptosi double %153 to i32
  %155 = getelementptr inbounds [3 x i32], ptr %139, i64 %141, i64 %146
  store i32 %154, ptr %155, align 4, !tbaa !17
  %156 = fadd double %144, %149
  %157 = fcmp ogt double %156, %147
  %158 = select i1 %157, double %156, double %147
  %159 = add nuw nsw i64 %146, 1
  %160 = icmp eq i64 %159, 3
  br i1 %160, label %161, label %145, !llvm.loop !18

161:                                              ; preds = %145
  %162 = add nuw nsw i64 %141, 1
  %163 = icmp eq i64 %162, 12
  br i1 %163, label %164, label %140, !llvm.loop !19

164:                                              ; preds = %161
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %12) #10
  %165 = fcmp ogt double %158, 0.000000e+00
  br i1 %165, label %166, label %305

166:                                              ; preds = %164
  store i32 1, ptr %138, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %11) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %11, ptr noundef nonnull align 8 dereferenceable(288) %31, i64 288, i1 false)
  br label %167

167:                                              ; preds = %187, %166
  %168 = phi i64 [ 0, %166 ], [ %188, %187 ]
  %169 = phi double [ 0.000000e+00, %166 ], [ %184, %187 ]
  %170 = icmp ult i64 %168, 6
  %171 = select i1 %170, double 1.500000e+01, double 7.000000e+00
  br label %172

172:                                              ; preds = %172, %167
  %173 = phi i64 [ 0, %167 ], [ %185, %172 ]
  %174 = phi double [ %169, %167 ], [ %184, %172 ]
  %175 = getelementptr inbounds [12 x [3 x double]], ptr %11, i64 0, i64 %168, i64 %173
  %176 = load double, ptr %175, align 8, !tbaa !7
  %177 = fsub double 7.500000e-01, %176
  %178 = fadd double %177, 1.000000e-04
  %179 = call double @llvm.floor.f64(double %178)
  %180 = fptosi double %179 to i32
  %181 = getelementptr inbounds [3 x i32], ptr %139, i64 %168, i64 %173
  store i32 %180, ptr %181, align 4, !tbaa !17
  %182 = fadd double %171, %176
  %183 = fcmp ogt double %182, %174
  %184 = select i1 %183, double %182, double %174
  %185 = add nuw nsw i64 %173, 1
  %186 = icmp eq i64 %185, 3
  br i1 %186, label %187, label %172, !llvm.loop !18

187:                                              ; preds = %172
  %188 = add nuw nsw i64 %168, 1
  %189 = icmp eq i64 %188, 12
  br i1 %189, label %190, label %167, !llvm.loop !19

190:                                              ; preds = %187
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %11) #10
  %191 = fcmp ogt double %184, 0.000000e+00
  br i1 %191, label %192, label %305

192:                                              ; preds = %190
  call void @exit(i32 noundef 32) #11
  unreachable

193:                                              ; preds = %118, %193
  %194 = phi i64 [ %198, %193 ], [ 0, %118 ]
  %195 = getelementptr inbounds [22 x double], ptr %14, i64 0, i64 %194
  %196 = load double, ptr %195, align 8, !tbaa !7
  %197 = fsub double %196, %119
  store double %197, ptr %195, align 8, !tbaa !7
  %198 = add nuw nsw i64 %194, 1
  %199 = icmp eq i64 %198, 21
  br i1 %199, label %200, label %193, !llvm.loop !40

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.gr_info, ptr %45, i64 0, i32 13
  store i32 0, ptr %201, align 4, !tbaa !13
  %202 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %7, i64 %33, i64 %44
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %10) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %10, ptr noundef nonnull align 8 dereferenceable(168) %14, i64 168, i1 false)
  %203 = getelementptr inbounds %struct.gr_info, ptr %45, i64 0, i32 12
  store i32 0, ptr %203, align 8, !tbaa !20
  br label %204

204:                                              ; preds = %214, %200
  %205 = phi i64 [ 11, %200 ], [ %215, %214 ]
  %206 = getelementptr inbounds [21 x double], ptr %10, i64 0, i64 %205
  %207 = load double, ptr %206, align 8, !tbaa !7
  %208 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %205
  %209 = load i32, ptr %208, align 4, !tbaa !17
  %210 = sdiv i32 %209, 2
  %211 = sitofp i32 %210 to double
  %212 = fadd double %207, %211
  %213 = fcmp ogt double %212, 0.000000e+00
  br i1 %213, label %217, label %214

214:                                              ; preds = %204
  %215 = add nuw nsw i64 %205, 1
  %216 = icmp eq i64 %215, 21
  br i1 %216, label %219, label %204, !llvm.loop !21

217:                                              ; preds = %204
  %218 = trunc i64 %205 to i32
  br label %219

219:                                              ; preds = %214, %217
  %220 = phi i32 [ %218, %217 ], [ 21, %214 ]
  %221 = icmp eq i32 %220, 21
  br i1 %221, label %222, label %234

222:                                              ; preds = %219
  store i32 1, ptr %203, align 8, !tbaa !20
  br label %223

223:                                              ; preds = %223, %222
  %224 = phi i64 [ 11, %222 ], [ %232, %223 ]
  %225 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %224
  %226 = load i32, ptr %225, align 4, !tbaa !17
  %227 = sdiv i32 %226, 2
  %228 = sitofp i32 %227 to double
  %229 = getelementptr inbounds [21 x double], ptr %10, i64 0, i64 %224
  %230 = load double, ptr %229, align 8, !tbaa !7
  %231 = fadd double %230, %228
  store double %231, ptr %229, align 8, !tbaa !7
  %232 = add nuw nsw i64 %224, 1
  %233 = icmp eq i64 %232, 21
  br i1 %233, label %234, label %223, !llvm.loop !22

234:                                              ; preds = %223, %219
  br label %235

235:                                              ; preds = %234, %235
  %236 = phi i64 [ %251, %235 ], [ 0, %234 ]
  %237 = phi double [ %250, %235 ], [ 0.000000e+00, %234 ]
  %238 = getelementptr inbounds [21 x double], ptr %10, i64 0, i64 %236
  %239 = load double, ptr %238, align 8, !tbaa !7
  %240 = fneg double %239
  %241 = call double @llvm.fmuladd.f64(double %240, double 2.000000e+00, double 7.500000e-01)
  %242 = fadd double %241, 1.000000e-04
  %243 = call double @llvm.floor.f64(double %242)
  %244 = fptosi double %243 to i32
  %245 = getelementptr inbounds i32, ptr %202, i64 %236
  store i32 %244, ptr %245, align 4, !tbaa !17
  %246 = icmp ult i64 %236, 11
  %247 = select i1 %246, double 7.500000e+00, double 3.500000e+00
  %248 = fadd double %247, %239
  %249 = fcmp ogt double %248, %237
  %250 = select i1 %249, double %248, double %237
  %251 = add nuw nsw i64 %236, 1
  %252 = icmp eq i64 %251, 21
  br i1 %252, label %253, label %235, !llvm.loop !23

253:                                              ; preds = %235
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %10) #10
  %254 = fcmp ogt double %250, 0.000000e+00
  br i1 %254, label %255, label %305

255:                                              ; preds = %253
  store i32 1, ptr %201, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %9) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %9, ptr noundef nonnull align 8 dereferenceable(168) %14, i64 168, i1 false)
  store i32 0, ptr %203, align 8, !tbaa !20
  br label %256

256:                                              ; preds = %265, %255
  %257 = phi i64 [ 11, %255 ], [ %266, %265 ]
  %258 = getelementptr inbounds [21 x double], ptr %9, i64 0, i64 %257
  %259 = load double, ptr %258, align 8, !tbaa !7
  %260 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %257
  %261 = load i32, ptr %260, align 4, !tbaa !17
  %262 = sitofp i32 %261 to double
  %263 = fadd double %259, %262
  %264 = fcmp ogt double %263, 0.000000e+00
  br i1 %264, label %268, label %265

265:                                              ; preds = %256
  %266 = add nuw nsw i64 %257, 1
  %267 = icmp eq i64 %266, 21
  br i1 %267, label %270, label %256, !llvm.loop !21

268:                                              ; preds = %256
  %269 = trunc i64 %257 to i32
  br label %270

270:                                              ; preds = %265, %268
  %271 = phi i32 [ %269, %268 ], [ 21, %265 ]
  %272 = icmp eq i32 %271, 21
  br i1 %272, label %273, label %284

273:                                              ; preds = %270
  store i32 1, ptr %203, align 8, !tbaa !20
  br label %274

274:                                              ; preds = %274, %273
  %275 = phi i64 [ 11, %273 ], [ %282, %274 ]
  %276 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %275
  %277 = load i32, ptr %276, align 4, !tbaa !17
  %278 = sitofp i32 %277 to double
  %279 = getelementptr inbounds [21 x double], ptr %9, i64 0, i64 %275
  %280 = load double, ptr %279, align 8, !tbaa !7
  %281 = fadd double %280, %278
  store double %281, ptr %279, align 8, !tbaa !7
  %282 = add nuw nsw i64 %275, 1
  %283 = icmp eq i64 %282, 21
  br i1 %283, label %284, label %274, !llvm.loop !22

284:                                              ; preds = %274, %270
  br label %285

285:                                              ; preds = %284, %285
  %286 = phi i64 [ %300, %285 ], [ 0, %284 ]
  %287 = phi double [ %299, %285 ], [ 0.000000e+00, %284 ]
  %288 = getelementptr inbounds [21 x double], ptr %9, i64 0, i64 %286
  %289 = load double, ptr %288, align 8, !tbaa !7
  %290 = fsub double 7.500000e-01, %289
  %291 = fadd double %290, 1.000000e-04
  %292 = call double @llvm.floor.f64(double %291)
  %293 = fptosi double %292 to i32
  %294 = getelementptr inbounds i32, ptr %202, i64 %286
  store i32 %293, ptr %294, align 4, !tbaa !17
  %295 = icmp ult i64 %286, 11
  %296 = select i1 %295, double 1.500000e+01, double 7.000000e+00
  %297 = fadd double %296, %289
  %298 = fcmp ogt double %297, %287
  %299 = select i1 %298, double %297, double %287
  %300 = add nuw nsw i64 %286, 1
  %301 = icmp eq i64 %300, 21
  br i1 %301, label %302, label %285, !llvm.loop !23

302:                                              ; preds = %285
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %9) #10
  %303 = fcmp ogt double %299, 0.000000e+00
  br i1 %303, label %304, label %305

304:                                              ; preds = %302
  call void @exit(i32 noundef 32) #11
  unreachable

305:                                              ; preds = %253, %302, %164, %190
  call void @llvm.lifetime.end.p0(i64 4608, ptr nonnull %15) #10
  %306 = add nuw nsw i64 %44, 1
  %307 = load i32, ptr %30, align 4, !tbaa !31
  %308 = sext i32 %307 to i64
  %309 = icmp slt i64 %306, %308
  br i1 %309, label %43, label %310, !llvm.loop !41

310:                                              ; preds = %305, %38
  %311 = add nuw nsw i64 %33, 1
  %312 = load i32, ptr %26, align 8, !tbaa !30
  %313 = sext i32 %312 to i64
  %314 = icmp slt i64 %311, %313
  br i1 %314, label %32, label %315, !llvm.loop !42

315:                                              ; preds = %310, %25
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1952, ptr nonnull %13) #10
  ret void
}

declare void @iteration_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @ms_convert(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #2

declare i32 @calc_xmin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

declare double @exp2(double) local_unnamed_addr

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = !{!14, !15, i64 68}
!14 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !9, i64 32, !9, i64 44, !15, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !15, i64 88, !16, i64 96, !9, i64 104}
!15 = !{!"int", !9, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!15, !15, i64 0}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = !{!14, !15, i64 64}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = !{!25, !15, i64 92}
!25 = !{!"", !26, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !15, i64 96, !15, i64 100, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !15, i64 120, !15, i64 124, !16, i64 128, !16, i64 136, !15, i64 144, !15, i64 148, !27, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !26, i64 168, !26, i64 176, !15, i64 184, !15, i64 188, !15, i64 192, !15, i64 196, !15, i64 200, !15, i64 204, !15, i64 208, !15, i64 212, !27, i64 216, !15, i64 220, !15, i64 224, !15, i64 228, !27, i64 232, !27, i64 236, !27, i64 240, !27, i64 244, !15, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !15, i64 272, !15, i64 276}
!26 = !{!"long", !9, i64 0}
!27 = !{!"float", !9, i64 0}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{!27, !27, i64 0}
!30 = !{!25, !15, i64 200}
!31 = !{!25, !15, i64 204}
!32 = !{!14, !15, i64 24}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = !{!14, !15, i64 12}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
