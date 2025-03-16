; ModuleID = 'gsline.c'
source_filename = "gsline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }

@.str = private unnamed_addr constant [25 x i8] c"gx_set_dash(old pattern)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"gx_set_dash(pattern)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gs_setlinewidth(ptr nocapture noundef writeonly %0, double noundef %1) local_unnamed_addr #0 {
  %3 = fmul double %1, 5.000000e-01
  %4 = fptrunc double %3 to float
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1
  store float %4, ptr %5, align 8, !tbaa !5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @gs_currentlinewidth(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !5
  %4 = fmul float %3, 2.000000e+00
  ret float %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gs_setlinecap(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 3
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !20
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i32 [ 0, %4 ], [ -15, %2 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_currentlinecap(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !20
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gs_setlinejoin(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 4
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !21
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i32 [ 0, %4 ], [ -15, %2 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_currentlinejoin(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !21
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local noundef i32 @gx_set_miter_limit(ptr nocapture noundef writeonly %0, double noundef %1) local_unnamed_addr #2 {
  %3 = fcmp olt double %1, 1.000000e+00
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = fptrunc double %1 to float
  %6 = getelementptr inbounds %struct.gx_line_params_s, ptr %0, i64 0, i32 3
  store float %5, ptr %6, align 4, !tbaa !22
  %7 = fmul double %1, %1
  %8 = fcmp olt double %7, 2.000100e+00
  %9 = fcmp ogt double %7, 1.999900e+00
  %10 = and i1 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  %12 = fadd double %7, -1.000000e+00
  %13 = tail call double @sqrt(double noundef %12) #8
  %14 = fmul double %13, 2.000000e+00
  %15 = fadd double %7, -2.000000e+00
  %16 = fdiv double %14, %15
  %17 = fptrunc double %16 to float
  br label %18

18:                                               ; preds = %4, %11
  %19 = phi float [ %17, %11 ], [ 1.000000e+06, %4 ]
  %20 = getelementptr inbounds %struct.gx_line_params_s, ptr %0, i64 0, i32 4
  store float %19, ptr %20, align 8, !tbaa !23
  br label %21

21:                                               ; preds = %18, %2
  %22 = phi i32 [ -15, %2 ], [ 0, %18 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local noundef i32 @gs_setmiterlimit(ptr nocapture noundef writeonly %0, double noundef %1) local_unnamed_addr #2 {
  %3 = fcmp olt double %1, 1.000000e+00
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = fptrunc double %1 to float
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 3
  store float %5, ptr %6, align 4, !tbaa !22
  %7 = fmul double %1, %1
  %8 = fcmp olt double %7, 2.000100e+00
  %9 = fcmp ogt double %7, 1.999900e+00
  %10 = and i1 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  %12 = fadd double %7, -1.000000e+00
  %13 = tail call double @sqrt(double noundef %12) #8
  %14 = fmul double %13, 2.000000e+00
  %15 = fadd double %7, -2.000000e+00
  %16 = fdiv double %14, %15
  %17 = fptrunc double %16 to float
  br label %18

18:                                               ; preds = %4, %11
  %19 = phi float [ %17, %11 ], [ 1.000000e+06, %4 ]
  %20 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 4
  store float %19, ptr %20, align 8, !tbaa !23
  br label %21

21:                                               ; preds = %18, %2
  %22 = phi i32 [ -15, %2 ], [ 0, %18 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @gs_currentmiterlimit(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !24
  ret float %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_set_dash(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #4 {
  %6 = load ptr, ptr %0, align 8, !tbaa !25
  br label %7

7:                                                ; preds = %12, %5
  %8 = phi float [ 0.000000e+00, %5 ], [ %18, %12 ]
  %9 = phi ptr [ %1, %5 ], [ %14, %12 ]
  %10 = phi i32 [ %2, %5 ], [ %13, %12 ]
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = add i32 %10, -1
  %14 = getelementptr inbounds float, ptr %9, i64 1
  %15 = load float, ptr %9, align 4, !tbaa !26
  %16 = fcmp uge float %15, 0.000000e+00
  %17 = select i1 %16, float %15, float -0.000000e+00
  %18 = fadd float %8, %17
  br i1 %16, label %7, label %125, !llvm.loop !27

19:                                               ; preds = %7
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = icmp ne ptr %4, null
  %23 = icmp ne ptr %6, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %112

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !29
  tail call void %27(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull @.str) #8
  br label %112

28:                                               ; preds = %19
  %29 = zext i32 %2 to i64
  %30 = shl nuw nsw i64 %29, 2
  %31 = trunc i64 %30 to i32
  %32 = fcmp oeq float %8, 0.000000e+00
  br i1 %32, label %105, label %33

33:                                               ; preds = %28
  %34 = and i32 %2, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = fmul float %8, 2.000000e+00
  %38 = fpext float %37 to double
  %39 = fdiv double %3, %38
  %40 = tail call double @llvm.floor.f64(double %39)
  %41 = fneg double %40
  %42 = tail call double @llvm.fmuladd.f64(double %41, double %38, double %3)
  %43 = fptrunc double %42 to float
  %44 = fcmp ugt float %8, %43
  %45 = zext i1 %44 to i32
  %46 = select i1 %44, float 0.000000e+00, float %8
  %47 = fsub float %43, %46
  br label %55

48:                                               ; preds = %33
  %49 = fpext float %8 to double
  %50 = fdiv double %3, %49
  %51 = tail call double @llvm.floor.f64(double %50)
  %52 = fneg double %51
  %53 = tail call double @llvm.fmuladd.f64(double %52, double %49, double %3)
  %54 = fptrunc double %53 to float
  br label %55

55:                                               ; preds = %48, %36
  %56 = phi i32 [ %45, %36 ], [ 1, %48 ]
  %57 = phi float [ %47, %36 ], [ %54, %48 ]
  %58 = load float, ptr %1, align 4, !tbaa !26
  %59 = fsub float %57, %58
  %60 = fcmp ult float %59, 0.000000e+00
  br i1 %60, label %82, label %61

61:                                               ; preds = %55, %69
  %62 = phi i64 [ %72, %69 ], [ 0, %55 ]
  %63 = phi float [ %75, %69 ], [ %59, %55 ]
  %64 = phi float [ %74, %69 ], [ %58, %55 ]
  %65 = phi i32 [ %71, %69 ], [ %56, %55 ]
  %66 = fcmp ogt float %63, 0.000000e+00
  %67 = fcmp une float %64, 0.000000e+00
  %68 = or i1 %67, %66
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = icmp eq i32 %65, 0
  %71 = zext i1 %70 to i32
  %72 = add nuw i64 %62, 1
  %73 = getelementptr inbounds float, ptr %1, i64 %72
  %74 = load float, ptr %73, align 4, !tbaa !26
  %75 = fsub float %63, %74
  %76 = fcmp ult float %75, 0.000000e+00
  br i1 %76, label %77, label %61, !llvm.loop !32

77:                                               ; preds = %61, %69
  %78 = phi i32 [ %71, %69 ], [ %65, %61 ]
  %79 = phi i64 [ %72, %69 ], [ %62, %61 ]
  %80 = phi float [ %75, %69 ], [ %63, %61 ]
  %81 = trunc i64 %79 to i32
  br label %82

82:                                               ; preds = %77, %55
  %83 = phi i32 [ %56, %55 ], [ %78, %77 ]
  %84 = phi i32 [ 0, %55 ], [ %81, %77 ]
  %85 = phi float [ %59, %55 ], [ %80, %77 ]
  %86 = icmp eq ptr %4, null
  br i1 %86, label %103, label %87

87:                                               ; preds = %82
  %88 = icmp eq ptr %6, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load ptr, ptr %4, align 8, !tbaa !33
  %91 = tail call ptr %90(ptr noundef nonnull %4, i32 noundef %31, ptr noundef nonnull @.str.1) #8
  br label %100

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.gx_dash_params_s, ptr %0, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !34
  %95 = icmp eq i32 %94, %2
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 8
  %98 = load ptr, ptr %97, align 8, !tbaa !35
  %99 = tail call ptr %98(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef %31, ptr noundef nonnull @.str.1) #8
  br label %100

100:                                              ; preds = %92, %96, %89
  %101 = phi ptr [ %91, %89 ], [ %99, %96 ], [ %6, %92 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %100, %82
  %104 = phi ptr [ %101, %100 ], [ %6, %82 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %104, ptr nonnull align 4 %1, i64 %30, i1 false)
  br label %105

105:                                              ; preds = %100, %28, %103
  %106 = phi i32 [ %83, %103 ], [ 1, %28 ], [ %83, %100 ]
  %107 = phi i32 [ %84, %103 ], [ 0, %28 ], [ %84, %100 ]
  %108 = phi float [ %85, %103 ], [ undef, %28 ], [ %85, %100 ]
  %109 = phi ptr [ %104, %103 ], [ %6, %28 ], [ null, %100 ]
  %110 = phi i1 [ true, %103 ], [ false, %28 ], [ false, %100 ]
  %111 = phi i32 [ -15, %103 ], [ -15, %28 ], [ -25, %100 ]
  br i1 %110, label %112, label %125

112:                                              ; preds = %105, %21, %25
  %113 = phi i32 [ 1, %25 ], [ 1, %21 ], [ %106, %105 ]
  %114 = phi i32 [ 0, %25 ], [ 0, %21 ], [ %107, %105 ]
  %115 = phi float [ 0.000000e+00, %25 ], [ 0.000000e+00, %21 ], [ %108, %105 ]
  %116 = phi ptr [ null, %25 ], [ %6, %21 ], [ %109, %105 ]
  store ptr %116, ptr %0, align 8, !tbaa !25
  %117 = getelementptr inbounds %struct.gx_dash_params_s, ptr %0, i64 0, i32 1
  store i32 %2, ptr %117, align 8, !tbaa !34
  %118 = fptrunc double %3 to float
  %119 = getelementptr inbounds %struct.gx_dash_params_s, ptr %0, i64 0, i32 2
  store float %118, ptr %119, align 4, !tbaa !36
  %120 = getelementptr inbounds %struct.gx_dash_params_s, ptr %0, i64 0, i32 4
  store float %8, ptr %120, align 4, !tbaa !37
  %121 = getelementptr inbounds %struct.gx_dash_params_s, ptr %0, i64 0, i32 5
  store i32 %113, ptr %121, align 8, !tbaa !38
  %122 = getelementptr inbounds %struct.gx_dash_params_s, ptr %0, i64 0, i32 6
  store i32 %114, ptr %122, align 4, !tbaa !39
  %123 = fneg float %115
  %124 = getelementptr inbounds %struct.gx_dash_params_s, ptr %0, i64 0, i32 7
  store float %123, ptr %124, align 8, !tbaa !40
  br label %125

125:                                              ; preds = %12, %105, %112
  %126 = phi i32 [ 0, %112 ], [ %111, %105 ], [ -15, %12 ]
  ret i32 %126
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_setdash(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, double noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 7
  %6 = load ptr, ptr %0, align 8, !tbaa !41
  %7 = tail call i32 @gx_set_dash(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2, double noundef %3, ptr noundef %6)
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_currentdash_length(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 7, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !42
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gs_currentdash_pattern(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @gs_currentdash_offset(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 7, i32 2
  %3 = load float, ptr %2, align 4, !tbaa !44
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @gs_currentlineparams(ptr noundef readnone %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gs_imager_setflat(ptr nocapture noundef writeonly %0, double noundef %1) local_unnamed_addr #0 {
  %3 = fcmp ugt double %1, 2.000000e-01
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = fcmp ogt double %1, 1.000000e+02
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %2, %4, %6
  %8 = phi double [ 1.000000e+02, %6 ], [ %1, %4 ], [ 2.000000e-01, %2 ]
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 6
  store float %9, ptr %10, align 4, !tbaa !45
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gs_setflat(ptr nocapture noundef writeonly %0, double noundef %1) local_unnamed_addr #0 {
  %3 = fcmp ugt double %1, 2.000000e-01
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = fcmp ogt double %1, 1.000000e+02
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %2, %4, %6
  %8 = phi double [ 1.000000e+02, %6 ], [ %1, %4 ], [ 2.000000e-01, %2 ]
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 6
  store float %9, ptr %10, align 4, !tbaa !45
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @gs_currentflat(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 6
  %3 = load float, ptr %2, align 4, !tbaa !47
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gs_setstrokeadjust(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 8
  store i32 %1, ptr %3, align 8, !tbaa !48
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_currentstrokeadjust(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !48
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gs_setdashadapt(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 7, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_imager_currentdashadapt(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 1, i32 7, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !50
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_currentdashadapt(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 1, i32 7, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !50
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gs_setaccuratecurves(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 9
  store i32 %1, ptr %3, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_imager_currentaccuratecurves(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !52
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_currentaccuratecurves(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !52
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gx_set_dot_length(ptr nocapture noundef writeonly %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = fcmp olt double %1, 0.000000e+00
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = fptrunc double %1 to float
  %7 = getelementptr inbounds %struct.gx_line_params_s, ptr %0, i64 0, i32 5
  store float %6, ptr %7, align 4, !tbaa !53
  %8 = sitofp i32 %2 to float
  %9 = getelementptr inbounds %struct.gx_line_params_s, ptr %0, i64 0, i32 6
  store float %8, ptr %9, align 8, !tbaa !54
  br label %10

10:                                               ; preds = %3, %5
  %11 = phi i32 [ 0, %5 ], [ -15, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gs_setdotlength(ptr nocapture noundef writeonly %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = fcmp olt double %1, 0.000000e+00
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = fptrunc double %1 to float
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 5
  store float %6, ptr %7, align 4, !tbaa !53
  %8 = sitofp i32 %2 to float
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 6
  store float %8, ptr %9, align 8, !tbaa !54
  br label %10

10:                                               ; preds = %3, %5
  %11 = phi i32 [ 0, %5 ], [ -15, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @gs_currentdotlength(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 5
  %3 = load float, ptr %2, align 4, !tbaa !55
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_currentdotlength_absolute(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 1, i32 6
  %3 = load float, ptr %2, align 8, !tbaa !56
  %4 = fptosi float %3 to i32
  ret i32 %4
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 8}
!6 = !{!"gs_state_s", !7, i64 0, !10, i64 8, !14, i64 80, !12, i64 128, !16, i64 132, !12, i64 136, !11, i64 140, !17, i64 144, !12, i64 160, !12, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !18, i64 336, !12, i64 360, !18, i64 364, !12, i64 388, !7, i64 392, !7, i64 400, !12, i64 408, !12, i64 412, !7, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !14, i64 456, !12, i64 504, !8, i64 508, !12, i64 512, !7, i64 520, !12, i64 528, !7, i64 536, !7, i64 544, !19, i64 552}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"gx_line_params_s", !11, i64 0, !12, i64 4, !12, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !13, i64 32}
!11 = !{!"float", !8, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!"gx_dash_params_s", !7, i64 0, !12, i64 8, !11, i64 12, !12, i64 16, !11, i64 20, !12, i64 24, !12, i64 28, !11, i64 32}
!14 = !{!"gs_matrix_fixed_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !15, i64 24, !15, i64 32, !12, i64 40}
!15 = !{!"long", !8, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = !{!"gs_fixed_point_s", !15, i64 0, !15, i64 8}
!18 = !{!"gs_matrix_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!19 = !{!"gs_state_client_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!20 = !{!6, !12, i64 12}
!21 = !{!6, !12, i64 16}
!22 = !{!10, !11, i64 12}
!23 = !{!10, !11, i64 16}
!24 = !{!6, !11, i64 20}
!25 = !{!13, !7, i64 0}
!26 = !{!11, !11, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!30, !7, i64 88}
!30 = !{!"gs_memory_s", !31, i64 0}
!31 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!32 = distinct !{!32, !28}
!33 = !{!30, !7, i64 0}
!34 = !{!13, !12, i64 8}
!35 = !{!30, !7, i64 64}
!36 = !{!13, !11, i64 12}
!37 = !{!13, !11, i64 20}
!38 = !{!13, !12, i64 24}
!39 = !{!13, !12, i64 28}
!40 = !{!13, !11, i64 32}
!41 = !{!6, !7, i64 0}
!42 = !{!6, !12, i64 48}
!43 = !{!6, !7, i64 40}
!44 = !{!6, !11, i64 52}
!45 = !{!46, !11, i64 140}
!46 = !{!"gs_imager_state_s", !7, i64 0, !10, i64 8, !14, i64 80, !12, i64 128, !16, i64 132, !12, i64 136, !11, i64 140, !17, i64 144, !12, i64 160, !12, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312}
!47 = !{!6, !11, i64 140}
!48 = !{!6, !12, i64 160}
!49 = !{!6, !12, i64 56}
!50 = !{!46, !12, i64 56}
!51 = !{!6, !12, i64 164}
!52 = !{!46, !12, i64 164}
!53 = !{!10, !11, i64 20}
!54 = !{!10, !11, i64 24}
!55 = !{!6, !11, i64 28}
!56 = !{!6, !11, i64 32}
