; ModuleID = 'quantize.c'
source_filename = "quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }

@convert_mdct = external local_unnamed_addr global i32, align 4
@reduce_sidechannel = external local_unnamed_addr global i32, align 4
@masking_lower = external local_unnamed_addr global float, align 4
@nr_of_sfb_block = external global [6 x [3 x [4 x i32]]], align 16
@outer_loop.OldValue = internal unnamed_addr global [2 x i32] [i32 180, i32 180], align 4
@pretab = external local_unnamed_addr global [21 x i32], align 16
@pow20 = external local_unnamed_addr global [256 x double], align 16
@scalefac_band = external local_unnamed_addr global %struct.scalefac_struct, align 4
@pow43 = external local_unnamed_addr global [8208 x double], align 16

; Function Attrs: nounwind uwtable
define dso_local void @iteration_loop(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [4 x double], align 16
  %10 = alloca [2 x %struct.III_psy_xmin], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 976, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  tail call void @iteration_init(ptr noundef %0, ptr noundef %5, ptr noundef %6) #13
  call void @getframebits(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %12) #13
  %14 = load i32, ptr %12, align 4, !tbaa !5
  %15 = load i32, ptr %11, align 4, !tbaa !5
  %16 = call i32 @ResvFrameBegin(ptr noundef %0, ptr noundef %5, i32 noundef %14, i32 noundef %15) #13
  %17 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %18 = load i32, ptr %17, align 8, !tbaa !9
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %98

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %22 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 64
  br label %23

23:                                               ; preds = %20, %93
  %24 = phi i64 [ 0, %20 ], [ %94, %93 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  %25 = load i32, ptr @convert_mdct, align 4, !tbaa !5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds [2 x [576 x double]], ptr %3, i64 %24
  call void @ms_convert(ptr noundef %28, ptr noundef %28) #13
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, ptr %12, align 4, !tbaa !5
  %31 = trunc i64 %24 to i32
  call void @on_pe(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef nonnull %13, i32 noundef %30, i32 noundef %31) #13
  %32 = load i32, ptr @reduce_sidechannel, align 4, !tbaa !5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds double, ptr %2, i64 %24
  %36 = load double, ptr %35, align 8, !tbaa !14
  %37 = load i32, ptr %12, align 4, !tbaa !5
  call void @reduce_side(ptr noundef nonnull %13, double noundef %36, i32 noundef %37) #13
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, ptr %21, align 4, !tbaa !16
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %93

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.III_side_info_t, ptr %5, i64 0, i32 4, i64 %24
  %43 = trunc i64 %24 to i32
  %44 = trunc i64 %24 to i32
  br label %45

45:                                               ; preds = %41, %88
  %46 = phi i64 [ 0, %41 ], [ %89, %88 ]
  %47 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %42, i64 0, i64 %46
  %48 = getelementptr inbounds [2 x [576 x double]], ptr %3, i64 %24, i64 %46
  %49 = call i32 @init_outer_loop(ptr noundef %0, ptr noundef %48, ptr noundef nonnull %47)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %7, i64 %24, i64 %46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %52, i8 0, i64 244, i1 false)
  %53 = getelementptr inbounds [2 x [576 x i32]], ptr %6, i64 %24, i64 %46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %53, i8 0, i64 2304, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  br label %63

54:                                               ; preds = %45
  %55 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %4, i64 %24, i64 %46
  %56 = getelementptr inbounds [2 x %struct.III_psy_xmin], ptr %10, i64 0, i64 %46
  %57 = call i32 @calc_xmin(ptr noundef %0, ptr noundef %48, ptr noundef %55, ptr noundef nonnull %47, ptr noundef nonnull %56) #13
  %58 = getelementptr inbounds [2 x i32], ptr %13, i64 0, i64 %46
  %59 = load i32, ptr %58, align 4, !tbaa !5
  %60 = getelementptr inbounds [2 x [576 x i32]], ptr %6, i64 %24, i64 %46
  %61 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %7, i64 %24, i64 %46
  %62 = trunc i64 %46 to i32
  call void @outer_loop(ptr noundef %0, ptr noundef %48, i32 noundef %59, ptr noundef nonnull %9, ptr noundef nonnull %56, ptr noundef %60, ptr noundef %61, ptr noundef nonnull %47, ptr nonnull poison, i32 noundef %62)
  br label %63

63:                                               ; preds = %54, %51
  %64 = trunc i64 %46 to i32
  call void @best_scalefac_store(ptr noundef %0, i32 noundef %43, i32 noundef %64, ptr noundef %6, ptr noundef %5, ptr noundef %7) #13
  %65 = load i32, ptr %22, align 4, !tbaa !17
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.gr_info, ptr %47, i64 0, i32 6
  %69 = load i32, ptr %68, align 8, !tbaa !18
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr inbounds [2 x [576 x i32]], ptr %6, i64 %24, i64 %46
  %73 = trunc i64 %46 to i32
  call void @best_huffman_divide(i32 noundef %44, i32 noundef %73, ptr noundef nonnull %47, ptr noundef %72) #13
  br label %74

74:                                               ; preds = %71, %67, %63
  %75 = load i32, ptr %12, align 4, !tbaa !5
  call void @ResvAdjust(ptr noundef %0, ptr noundef nonnull %47, ptr noundef %5, i32 noundef %75) #13
  br label %76

76:                                               ; preds = %74, %85
  %77 = phi i64 [ 0, %74 ], [ %86, %85 ]
  %78 = getelementptr inbounds [2 x [576 x double]], ptr %3, i64 %24, i64 %46, i64 %77
  %79 = load double, ptr %78, align 8, !tbaa !14
  %80 = fcmp olt double %79, 0.000000e+00
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = getelementptr inbounds [2 x [576 x i32]], ptr %6, i64 %24, i64 %46, i64 %77
  %83 = load i32, ptr %82, align 4, !tbaa !5
  %84 = sub nsw i32 0, %83
  store i32 %84, ptr %82, align 4, !tbaa !5
  br label %85

85:                                               ; preds = %76, %81
  %86 = add nuw nsw i64 %77, 1
  %87 = icmp eq i64 %86, 576
  br i1 %87, label %88, label %76, !llvm.loop !20

88:                                               ; preds = %85
  %89 = add nuw nsw i64 %46, 1
  %90 = load i32, ptr %21, align 4, !tbaa !16
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %45, label %93, !llvm.loop !22

93:                                               ; preds = %88, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  %94 = add nuw nsw i64 %24, 1
  %95 = load i32, ptr %17, align 8, !tbaa !9
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %23, label %98, !llvm.loop !23

98:                                               ; preds = %93, %8
  %99 = load i32, ptr %12, align 4, !tbaa !5
  call void @ResvFrameEnd(ptr noundef %0, ptr noundef %5, i32 noundef %99) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 976, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @iteration_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @getframebits(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ResvFrameBegin(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ms_convert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @on_pe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @reduce_side(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define dso_local i32 @init_outer_loop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = alloca [3 x double], align 16
  %5 = getelementptr i8, ptr %2, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false), !tbaa !5
  %6 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 19
  store ptr @nr_of_sfb_block, ptr %6, align 8, !tbaa !24
  store i32 0, ptr %2, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !26
  %8 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 4
  store i32 0, ptr %9, align 8, !tbaa !28
  %10 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 8
  %11 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 15
  store i32 0, ptr %11, align 4, !tbaa !29
  %12 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  store i32 210, ptr %12, align 4, !tbaa !30
  %13 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 14
  store i32 0, ptr %13, align 8, !tbaa !31
  %14 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 18
  store i32 0, ptr %14, align 8, !tbaa !32
  %15 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 20
  %16 = load i32, ptr %15, align 4, !tbaa !33
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %86, label %18

18:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %19 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !18
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %84

22:                                               ; preds = %18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false), !tbaa !14
  br label %23

23:                                               ; preds = %22, %39
  %24 = phi i32 [ %40, %39 ], [ 0, %22 ]
  %25 = phi i64 [ %36, %39 ], [ 0, %22 ]
  %26 = shl i64 %25, 32
  %27 = ashr exact i64 %26, 32
  br label %28

28:                                               ; preds = %23, %28
  %29 = phi i64 [ %27, %23 ], [ %36, %28 ]
  %30 = phi i64 [ 0, %23 ], [ %37, %28 ]
  %31 = getelementptr inbounds double, ptr %1, i64 %29
  %32 = load double, ptr %31, align 8, !tbaa !14
  %33 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %30
  %34 = load double, ptr %33, align 8, !tbaa !14
  %35 = tail call double @llvm.fmuladd.f64(double %32, double %32, double %34)
  store double %35, ptr %33, align 8, !tbaa !14
  %36 = add nsw i64 %29, 1
  %37 = add nuw nsw i64 %30, 1
  %38 = icmp eq i64 %37, 3
  br i1 %38, label %39, label %28, !llvm.loop !34

39:                                               ; preds = %28
  %40 = add nuw nsw i32 %24, 1
  %41 = icmp eq i32 %40, 192
  br i1 %41, label %42, label %23, !llvm.loop !35

42:                                               ; preds = %39, %42
  %43 = phi i64 [ %49, %42 ], [ 0, %39 ]
  %44 = phi double [ %48, %42 ], [ 0x3D719799812DEA11, %39 ]
  %45 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %43
  %46 = load double, ptr %45, align 8, !tbaa !14
  %47 = fcmp ogt double %44, %46
  %48 = select i1 %47, double %44, double %46
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %49, 3
  br i1 %50, label %51, label %42, !llvm.loop !36

51:                                               ; preds = %42, %51
  %52 = phi i64 [ %58, %51 ], [ 0, %42 ]
  %53 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %52
  %54 = load double, ptr %53, align 8, !tbaa !14
  %55 = fcmp ogt double %54, 0x3D719799812DEA11
  %56 = select i1 %55, double %54, double 0x3D719799812DEA11
  %57 = fdiv double %56, %48
  store double %57, ptr %53, align 8, !tbaa !14
  %58 = add nuw nsw i64 %52, 1
  %59 = icmp eq i64 %58, 3
  br i1 %59, label %60, label %51, !llvm.loop !37

60:                                               ; preds = %51, %60
  %61 = phi i64 [ %72, %60 ], [ 0, %51 ]
  %62 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa !14
  %64 = tail call double @log(double noundef %63) #13
  %65 = fmul double %64, 5.000000e-01
  %66 = fdiv double %65, 0x3FE62E42FEFA39EF
  %67 = fsub double 5.000000e-01, %66
  %68 = fptosi double %67 to i32
  %69 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 9, i64 %61
  %70 = tail call i32 @llvm.smin.i32(i32 %68, i32 2)
  %71 = tail call i32 @llvm.smax.i32(i32 %70, i32 0)
  store i32 %71, ptr %69, align 4, !tbaa !5
  %72 = add nuw nsw i64 %61, 1
  %73 = icmp eq i64 %72, 3
  br i1 %73, label %74, label %60, !llvm.loop !38

74:                                               ; preds = %60
  %75 = load double, ptr %4, align 16, !tbaa !14
  %76 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %77 = load double, ptr %76, align 8, !tbaa !14
  %78 = fadd double %75, %77
  %79 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %80 = load double, ptr %79, align 16, !tbaa !14
  %81 = fadd double %78, %80
  %82 = fcmp ogt double %81, 1.000000e-99
  %83 = zext i1 %82 to i32
  br label %84

84:                                               ; preds = %18, %74
  %85 = phi i32 [ %83, %74 ], [ undef, %18 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br i1 %21, label %96, label %86

86:                                               ; preds = %84, %3
  br label %90

87:                                               ; preds = %90
  %88 = add nuw nsw i64 %91, 1
  %89 = icmp eq i64 %88, 576
  br i1 %89, label %96, label %90, !llvm.loop !39

90:                                               ; preds = %86, %87
  %91 = phi i64 [ %88, %87 ], [ 0, %86 ]
  %92 = getelementptr inbounds double, ptr %1, i64 %91
  %93 = load double, ptr %92, align 8, !tbaa !14
  %94 = tail call double @llvm.fabs.f64(double %93)
  %95 = fcmp ogt double %94, 1.000000e-99
  br i1 %95, label %96, label %87

96:                                               ; preds = %87, %90, %84
  %97 = phi i32 [ %85, %84 ], [ 1, %90 ], [ 0, %87 ]
  ret i32 %97
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @calc_xmin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @outer_loop(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr noundef %7, ptr nocapture readnone %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = alloca %struct.III_scalefac_t, align 4
  %12 = alloca %struct.gr_info, align 8
  %13 = alloca [576 x i32], align 16
  %14 = alloca [576 x double], align 16
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca [4 x [21 x double]], align 16
  %19 = alloca [4 x [21 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 244, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %12)
  call void @llvm.lifetime.start.p0(i64 2304, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 4608, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 672, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 672, ptr nonnull %19) #13
  %20 = sext i32 %9 to i64
  %21 = getelementptr inbounds [2 x i32], ptr @outer_loop.OldValue, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.gr_info, ptr %7, i64 0, i32 3
  %23 = getelementptr inbounds %struct.gr_info, ptr %7, i64 0, i32 15
  %24 = getelementptr inbounds %struct.gr_info, ptr %7, i64 0, i32 3
  %25 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 61
  %26 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 18
  %27 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 62
  %28 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 43
  %29 = getelementptr inbounds %struct.gr_info, ptr %7, i64 0, i32 13
  %30 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 19
  %31 = getelementptr inbounds %struct.gr_info, ptr %7, i64 0, i32 13
  br label %32

32:                                               ; preds = %10, %131
  %33 = phi i32 [ 1, %10 ], [ %132, %131 ]
  %34 = phi double [ 0.000000e+00, %10 ], [ %99, %131 ]
  %35 = phi double [ 0.000000e+00, %10 ], [ %98, %131 ]
  %36 = phi double [ 0.000000e+00, %10 ], [ %97, %131 ]
  %37 = phi i32 [ 100, %10 ], [ %96, %131 ]
  %38 = phi i32 [ 0, %10 ], [ %95, %131 ]
  %39 = phi i32 [ 0, %10 ], [ %41, %131 ]
  %40 = phi i32 [ 0, %10 ], [ %60, %131 ]
  %41 = add nuw nsw i32 %39, 1
  %42 = icmp eq i32 %33, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %11, i8 0, i64 244, i1 false)
  br label %44

44:                                               ; preds = %43, %44
  %45 = phi i64 [ 0, %43 ], [ %53, %44 ]
  %46 = getelementptr inbounds double, ptr %1, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !14
  %48 = call double @llvm.fabs.f64(double %47)
  %49 = call double @sqrt(double noundef %48) #13
  %50 = fmul double %49, %48
  %51 = call double @sqrt(double noundef %50) #13
  %52 = getelementptr inbounds [576 x double], ptr %14, i64 0, i64 %45
  store double %51, ptr %52, align 8, !tbaa !14
  %53 = add nuw nsw i64 %45, 1
  %54 = icmp eq i64 %53, 576
  br i1 %54, label %55, label %44, !llvm.loop !40

55:                                               ; preds = %44
  %56 = load i32, ptr %21, align 4, !tbaa !5
  %57 = call i32 @bin_search_StepSize2(ptr noundef %0, i32 noundef %2, i32 noundef %56, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %7) #13
  %58 = load i32, ptr %22, align 4, !tbaa !30
  store i32 %58, ptr %21, align 4, !tbaa !5
  br label %59

59:                                               ; preds = %55, %32
  %60 = phi i32 [ %57, %55 ], [ %40, %32 ]
  %61 = load i32, ptr %23, align 4, !tbaa !29
  %62 = sub i32 %2, %61
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %94, label %64

64:                                               ; preds = %59
  %65 = icmp eq i32 %39, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %64
  %67 = icmp sgt i32 %60, %62
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = load i32, ptr %24, align 4, !tbaa !30
  %70 = add i32 %69, 1
  store i32 %70, ptr %24, align 4, !tbaa !30
  br label %71

71:                                               ; preds = %64, %68
  %72 = call i32 @inner_loop(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %13, i32 noundef %62, ptr noundef %7) #13
  br label %73

73:                                               ; preds = %71, %66
  %74 = phi i32 [ %60, %66 ], [ %72, %71 ]
  store i32 %74, ptr %7, align 8, !tbaa !25
  %75 = load i32, ptr %25, align 8, !tbaa !41
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = call i32 @calc_noise1(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef %4, ptr noundef nonnull %11, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %15)
  br label %79

79:                                               ; preds = %73, %77
  %80 = phi i32 [ %78, %77 ], [ 0, %73 ]
  br i1 %65, label %87, label %81

81:                                               ; preds = %79
  %82 = load i32, ptr %26, align 4, !tbaa !42
  %83 = load double, ptr %17, align 8, !tbaa !14
  %84 = load double, ptr %16, align 8, !tbaa !14
  %85 = load double, ptr %15, align 8, !tbaa !14
  %86 = call i32 @quant_compare(i32 noundef %82, i32 noundef %37, double noundef %34, double noundef %35, double noundef %36, i32 noundef %80, double noundef %83, double noundef %84, double noundef %85), !range !43
  br label %87

87:                                               ; preds = %79, %81
  %88 = phi i32 [ %86, %81 ], [ 1, %79 ]
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load double, ptr %15, align 8, !tbaa !14
  %92 = load double, ptr %16, align 8, !tbaa !14
  %93 = load double, ptr %17, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %6, ptr noundef nonnull align 4 dereferenceable(244) %11, i64 244, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %5, ptr noundef nonnull align 16 dereferenceable(2304) %13, i64 2304, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %12, ptr noundef nonnull align 8 dereferenceable(120) %7, i64 120, i1 false)
  br label %94

94:                                               ; preds = %87, %90, %59
  %95 = phi i32 [ %38, %59 ], [ %80, %90 ], [ %80, %87 ]
  %96 = phi i32 [ %37, %59 ], [ %80, %90 ], [ %37, %87 ]
  %97 = phi double [ %36, %59 ], [ %91, %90 ], [ %36, %87 ]
  %98 = phi double [ %35, %59 ], [ %92, %90 ], [ %35, %87 ]
  %99 = phi double [ %34, %59 ], [ %93, %90 ], [ %34, %87 ]
  %100 = load i32, ptr %27, align 4, !tbaa !44
  %101 = icmp eq i32 %100, 0
  %102 = icmp eq i32 %95, 0
  %103 = select i1 %101, i1 %102, i1 false
  %104 = or i1 %63, %103
  br i1 %104, label %122, label %105

105:                                              ; preds = %94
  call void @amp_scalefac_bands(ptr noundef nonnull %14, ptr noundef %7, ptr noundef nonnull %11, ptr noundef nonnull %19)
  %106 = call i32 @loop_break(ptr noundef nonnull %11, ptr noundef %7) #13
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load i32, ptr %28, align 8, !tbaa !45
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 @scale_bitcount(ptr noundef nonnull %11, ptr noundef %7) #13
  br label %115

113:                                              ; preds = %108
  %114 = call i32 @scale_bitcount_lsf(ptr noundef nonnull %11, ptr noundef %7) #13
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load i32, ptr %29, align 4, !tbaa !46
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  br label %122

122:                                              ; preds = %118, %105, %115, %94
  %123 = phi i32 [ 0, %94 ], [ 1, %115 ], [ 0, %105 ], [ 0, %118 ]
  %124 = phi i32 [ 0, %94 ], [ 0, %115 ], [ 0, %105 ], [ %121, %118 ]
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %122
  %127 = load i32, ptr %30, align 8, !tbaa !47
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = call i32 @init_outer_loop(ptr noundef %0, ptr noundef %1, ptr noundef %7)
  store i32 1, ptr %31, align 4, !tbaa !46
  br label %131

131:                                              ; preds = %129, %126, %122
  %132 = phi i32 [ 1, %129 ], [ 0, %126 ], [ 0, %122 ]
  %133 = phi i32 [ 1, %129 ], [ %123, %126 ], [ %123, %122 ]
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %32, !llvm.loop !48

135:                                              ; preds = %131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %7, ptr noundef nonnull align 8 dereferenceable(120) %12, i64 120, i1 false)
  %136 = getelementptr inbounds %struct.gr_info, ptr %7, i64 0, i32 15
  %137 = load i32, ptr %136, align 4, !tbaa !29
  %138 = load i32, ptr %7, align 8, !tbaa !25
  %139 = add i32 %138, %137
  store i32 %139, ptr %7, align 8, !tbaa !25
  %140 = sitofp i32 %96 to double
  store double %140, ptr %3, align 8, !tbaa !14
  %141 = getelementptr inbounds double, ptr %3, i64 1
  store double %97, ptr %141, align 8, !tbaa !14
  %142 = getelementptr inbounds double, ptr %3, i64 2
  store double %98, ptr %142, align 8, !tbaa !14
  %143 = getelementptr inbounds double, ptr %3, i64 3
  store double %99, ptr %143, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 672, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 672, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 4608, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 2304, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %12)
  call void @llvm.lifetime.end.p0(i64 244, ptr nonnull %11) #13
  ret void
}

declare void @best_scalefac_store(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @best_huffman_divide(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ResvAdjust(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @ResvFrameEnd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @set_masking_lower(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = shl nsw i32 %0, 1
  %4 = add nsw i32 %3, -6
  %5 = sitofp i32 %4 to float
  %6 = add nsw i32 %1, -125
  %7 = sitofp i32 %6 to double
  %8 = fdiv double %7, 2.375000e+03
  %9 = fptrunc double %8 to float
  %10 = fadd float %9, -1.000000e+00
  %11 = fmul float %10, 4.000000e+00
  %12 = fadd float %11, %5
  %13 = fdiv float %12, 1.000000e+01
  %14 = fpext float %13 to double
  %15 = tail call double @pow(double noundef 1.000000e+01, double noundef %14) #13
  %16 = fptrunc double %15 to float
  store float %16, ptr @masking_lower, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @VBR_iteration_loop(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.gr_info, align 8
  %10 = alloca %struct.gr_info, align 8
  %11 = alloca %struct.III_scalefac_t, align 4
  %12 = alloca [576 x i32], align 16
  %13 = alloca %struct.III_psy_xmin, align 8
  %14 = alloca [2 x [2 x i32]], align 16
  %15 = alloca [4 x double], align 16
  %16 = alloca [15 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(i64 244, ptr nonnull %11)
  call void @llvm.lifetime.start.p0(i64 2304, ptr nonnull %12)
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #13
  tail call void @iteration_init(ptr noundef %0, ptr noundef %5, ptr noundef %6) #13
  %19 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 50
  %20 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 48
  store i32 1, ptr %19, align 4, !tbaa !50
  %21 = load i32, ptr %20, align 4, !tbaa !51
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %46, label %23

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 47
  %25 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  br label %26

26:                                               ; preds = %23, %35
  %27 = phi i32 [ 0, %23 ], [ %36, %35 ]
  call void @getframebits(ptr noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %18) #13
  %28 = load i32, ptr %19, align 4, !tbaa !50
  %29 = load i32, ptr %24, align 8, !tbaa !52
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, ptr %18, align 4, !tbaa !5
  %33 = load i32, ptr %25, align 4, !tbaa !16
  %34 = sdiv i32 %32, %33
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i32 [ %34, %31 ], [ %27, %26 ]
  %37 = load i32, ptr %18, align 4, !tbaa !5
  %38 = load i32, ptr %17, align 4, !tbaa !5
  %39 = call i32 @ResvFrameBegin(ptr noundef %0, ptr noundef %5, i32 noundef %37, i32 noundef %38) #13
  %40 = load i32, ptr %19, align 4, !tbaa !50
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [15 x i32], ptr %16, i64 0, i64 %41
  store i32 %39, ptr %42, align 4, !tbaa !5
  %43 = add nsw i32 %40, 1
  store i32 %43, ptr %19, align 4, !tbaa !50
  %44 = load i32, ptr %20, align 4, !tbaa !51
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %26, label %46, !llvm.loop !53

46:                                               ; preds = %35, %8
  %47 = phi i32 [ 0, %8 ], [ %36, %35 ]
  %48 = phi i32 [ %21, %8 ], [ %44, %35 ]
  %49 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 48
  store i32 %48, ptr %19, align 4, !tbaa !50
  %50 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %51 = load i32, ptr %50, align 8, !tbaa !9
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %205

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %55 = call i32 @llvm.smax.i32(i32 %47, i32 125)
  %56 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  %57 = getelementptr inbounds [4 x double], ptr %15, i64 0, i64 3
  %58 = getelementptr inbounds [4 x double], ptr %15, i64 0, i64 2
  %59 = getelementptr inbounds [4 x double], ptr %15, i64 0, i64 1
  br label %60

60:                                               ; preds = %53, %196
  %61 = phi i64 [ 0, %53 ], [ %199, %196 ]
  %62 = phi i32 [ 0, %53 ], [ %198, %196 ]
  %63 = phi i32 [ 0, %53 ], [ %197, %196 ]
  %64 = load i32, ptr %54, align 4, !tbaa !16
  %65 = load i32, ptr @reduce_sidechannel, align 4, !tbaa !5
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 %64, i32 1
  %68 = load i32, ptr @convert_mdct, align 4, !tbaa !5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %60
  %71 = getelementptr inbounds [2 x [576 x double]], ptr %3, i64 %61
  call void @ms_convert(ptr noundef %71, ptr noundef %71) #13
  br label %72

72:                                               ; preds = %70, %60
  %73 = icmp sgt i32 %67, 0
  br i1 %73, label %74, label %196

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.III_side_info_t, ptr %5, i64 0, i32 4, i64 %61
  %76 = zext nneg i32 %67 to i64
  br label %77

77:                                               ; preds = %74, %191
  %78 = phi i64 [ 0, %74 ], [ %194, %191 ]
  %79 = phi i32 [ %62, %74 ], [ %193, %191 ]
  %80 = phi i32 [ %63, %74 ], [ %192, %191 ]
  %81 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %75, i64 0, i64 %78
  %82 = getelementptr inbounds [2 x [576 x double]], ptr %3, i64 %61, i64 %78
  %83 = call i32 @init_outer_loop(ptr noundef %0, ptr noundef %82, ptr noundef nonnull %81)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %7, i64 %61, i64 %78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %86, i8 0, i64 244, i1 false)
  %87 = getelementptr inbounds [2 x [576 x i32]], ptr %6, i64 %61, i64 %78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %87, i8 0, i64 2304, i1 false)
  %88 = getelementptr inbounds [2 x [2 x i32]], ptr %14, i64 0, i64 %61, i64 %78
  store i32 0, ptr %88, align 4, !tbaa !5
  br label %191

89:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %10, ptr noundef nonnull align 8 dereferenceable(120) %81, i64 120, i1 false)
  %90 = load i32, ptr %56, align 4, !tbaa !54
  %91 = shl nsw i32 %90, 1
  %92 = add nsw i32 %91, -6
  %93 = sitofp i32 %92 to float
  %94 = fdiv float %93, 1.000000e+01
  %95 = fpext float %94 to double
  %96 = call double @pow(double noundef 1.000000e+01, double noundef %95) #13
  %97 = fptrunc double %96 to float
  store float %97, ptr @masking_lower, align 4, !tbaa !49
  %98 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %4, i64 %61, i64 %78
  %99 = call i32 @calc_xmin(ptr noundef %0, ptr noundef %82, ptr noundef %98, ptr noundef nonnull %81, ptr noundef nonnull %13) #13
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 125, i32 %55
  %102 = select i1 %100, i32 1, i32 %79
  %103 = getelementptr inbounds %struct.gr_info, ptr %81, i64 0, i32 6
  %104 = load i32, ptr %103, align 8, !tbaa !18
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %115

106:                                              ; preds = %89
  %107 = getelementptr inbounds [2 x double], ptr %1, i64 %61, i64 %78
  %108 = load double, ptr %107, align 8, !tbaa !14
  %109 = fcmp olt double %108, 1.100000e+03
  %110 = select i1 %109, double 1.100000e+03, double %108
  %111 = sitofp i32 %101 to double
  %112 = fadd double %110, %111
  %113 = fptosi double %112 to i32
  %114 = call i32 @llvm.smin.i32(i32 %113, i32 1800)
  br label %115

115:                                              ; preds = %106, %89
  %116 = phi i32 [ %114, %106 ], [ %101, %89 ]
  %117 = load i32, ptr %49, align 4, !tbaa !51
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [15 x i32], ptr %16, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !5
  %121 = load i32, ptr %54, align 4, !tbaa !16
  %122 = load i32, ptr %50, align 8, !tbaa !9
  %123 = mul nsw i32 %122, %121
  %124 = sdiv i32 %120, %123
  %125 = call i32 @llvm.smin.i32(i32 %124, i32 1300)
  %126 = add nsw i32 %125, 1200
  %127 = call i32 @llvm.smax.i32(i32 %126, i32 %116)
  %128 = sub nsw i32 %127, %116
  %129 = sdiv i32 %128, 4
  %130 = add nsw i32 %127, %116
  %131 = sdiv i32 %130, 2
  %132 = add nsw i32 %127, 1
  %133 = getelementptr inbounds [2 x [576 x i32]], ptr %6, i64 %61, i64 %78
  %134 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %7, i64 %61, i64 %78
  %135 = trunc i64 %78 to i32
  br label %136

136:                                              ; preds = %177, %115
  %137 = phi i32 [ %129, %115 ], [ %180, %177 ]
  %138 = phi i32 [ %132, %115 ], [ %178, %177 ]
  %139 = phi i32 [ %131, %115 ], [ %179, %177 ]
  %140 = icmp slt i32 %139, %138
  br i1 %140, label %143, label %141

141:                                              ; preds = %136
  %142 = sub nsw i32 %139, %137
  br label %177

143:                                              ; preds = %136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %81, ptr noundef nonnull align 8 dereferenceable(120) %10, i64 120, i1 false)
  %144 = load i32, ptr %56, align 4, !tbaa !54
  %145 = shl nsw i32 %144, 1
  %146 = add nsw i32 %145, -6
  %147 = sitofp i32 %146 to float
  %148 = add nsw i32 %139, -125
  %149 = sitofp i32 %148 to double
  %150 = fdiv double %149, 2.375000e+03
  %151 = fptrunc double %150 to float
  %152 = fadd float %151, -1.000000e+00
  %153 = fmul float %152, 4.000000e+00
  %154 = fadd float %153, %147
  %155 = fdiv float %154, 1.000000e+01
  %156 = fpext float %155 to double
  %157 = call double @pow(double noundef 1.000000e+01, double noundef %156) #13
  %158 = fptrunc double %157 to float
  store float %158, ptr @masking_lower, align 4, !tbaa !49
  %159 = call i32 @calc_xmin(ptr noundef %0, ptr noundef %82, ptr noundef %98, ptr noundef nonnull %81, ptr noundef nonnull %13) #13
  call void @outer_loop(ptr noundef %0, ptr noundef %82, i32 noundef %139, ptr noundef nonnull %15, ptr noundef nonnull %13, ptr noundef %133, ptr noundef %134, ptr noundef nonnull %81, ptr nonnull poison, i32 noundef %135)
  %160 = load double, ptr %15, align 16, !tbaa !14
  %161 = fptosi double %160 to i32
  %162 = load double, ptr %57, align 8, !tbaa !14
  %163 = load double, ptr %58, align 16, !tbaa !14
  %164 = load double, ptr %59, align 8, !tbaa !14
  %165 = icmp sgt i32 %161, 0
  %166 = fcmp ugt double %163, 0.000000e+00
  %167 = or i1 %165, %166
  %168 = fcmp ugt double %162, 0.000000e+00
  %169 = or i1 %168, %167
  %170 = fcmp ugt double %164, 0.000000e+00
  %171 = or i1 %170, %169
  br i1 %171, label %175, label %172

172:                                              ; preds = %143
  %173 = load i32, ptr %81, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %11, ptr noundef nonnull align 4 dereferenceable(244) %134, i64 244, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2304) %12, ptr noundef nonnull align 4 dereferenceable(2304) %133, i64 2304, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef nonnull align 8 dereferenceable(120) %81, i64 120, i1 false)
  %174 = sub nsw i32 %139, %137
  br label %177

175:                                              ; preds = %143
  %176 = add nsw i32 %139, %137
  br label %177

177:                                              ; preds = %172, %175, %141
  %178 = phi i32 [ %138, %141 ], [ %173, %172 ], [ %138, %175 ]
  %179 = phi i32 [ %142, %141 ], [ %174, %172 ], [ %176, %175 ]
  %180 = sdiv i32 %137, 2
  %181 = icmp sgt i32 %137, 21
  br i1 %181, label %136, label %182, !llvm.loop !55

182:                                              ; preds = %177
  %183 = icmp sgt i32 %178, %127
  br i1 %183, label %187, label %184

184:                                              ; preds = %182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %81, ptr noundef nonnull align 8 dereferenceable(120) %9, i64 120, i1 false)
  %185 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %7, i64 %61, i64 %78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %185, ptr noundef nonnull align 4 dereferenceable(244) %11, i64 244, i1 false)
  %186 = getelementptr inbounds [2 x [576 x i32]], ptr %6, i64 %61, i64 %78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %186, ptr noundef nonnull align 16 dereferenceable(2304) %12, i64 2304, i1 false)
  br label %187

187:                                              ; preds = %184, %182
  %188 = load i32, ptr %81, align 8, !tbaa !25
  %189 = getelementptr inbounds [2 x [2 x i32]], ptr %14, i64 0, i64 %61, i64 %78
  store i32 %188, ptr %189, align 4, !tbaa !5
  %190 = add nsw i32 %188, %80
  br label %191

191:                                              ; preds = %187, %85
  %192 = phi i32 [ %190, %187 ], [ %80, %85 ]
  %193 = phi i32 [ %102, %187 ], [ 1, %85 ]
  %194 = add nuw nsw i64 %78, 1
  %195 = icmp eq i64 %194, %76
  br i1 %195, label %196, label %77, !llvm.loop !56

196:                                              ; preds = %191, %72
  %197 = phi i32 [ %63, %72 ], [ %192, %191 ]
  %198 = phi i32 [ %62, %72 ], [ %193, %191 ]
  %199 = add nuw nsw i64 %61, 1
  %200 = load i32, ptr %50, align 8, !tbaa !9
  %201 = sext i32 %200 to i64
  %202 = icmp slt i64 %199, %201
  br i1 %202, label %60, label %203, !llvm.loop !57

203:                                              ; preds = %196
  %204 = icmp eq i32 %198, 0
  br label %205

205:                                              ; preds = %203, %46
  %206 = phi i32 [ 0, %46 ], [ %197, %203 ]
  %207 = phi i1 [ true, %46 ], [ %204, %203 ]
  %208 = phi i32 [ %51, %46 ], [ %200, %203 ]
  %209 = load i32, ptr @reduce_sidechannel, align 4, !tbaa !5
  %210 = icmp ne i32 %209, 0
  %211 = icmp sgt i32 %208, 0
  %212 = and i1 %210, %211
  br i1 %212, label %213, label %236

213:                                              ; preds = %205
  %214 = zext i32 %208 to i64
  br label %215

215:                                              ; preds = %213, %215
  %216 = phi i64 [ 0, %213 ], [ %234, %215 ]
  %217 = phi i32 [ %206, %213 ], [ %233, %215 ]
  %218 = getelementptr inbounds double, ptr %2, i64 %216
  %219 = load double, ptr %218, align 8, !tbaa !14
  %220 = fsub double 5.000000e-01, %219
  %221 = fmul double %220, 3.300000e-01
  %222 = fmul double %221, 2.000000e+00
  %223 = fsub double 1.000000e+00, %222
  %224 = fadd double %222, 1.000000e+00
  %225 = fdiv double %223, %224
  %226 = getelementptr inbounds [2 x [2 x i32]], ptr %14, i64 0, i64 %216
  %227 = load i32, ptr %226, align 8, !tbaa !5
  %228 = sitofp i32 %227 to double
  %229 = fmul double %225, %228
  %230 = fptosi double %229 to i32
  %231 = getelementptr inbounds [2 x [2 x i32]], ptr %14, i64 0, i64 %216, i64 1
  %232 = call i32 @llvm.smax.i32(i32 %230, i32 125)
  store i32 %232, ptr %231, align 4, !tbaa !5
  %233 = add nsw i32 %232, %217
  %234 = add nuw nsw i64 %216, 1
  %235 = icmp eq i64 %234, %214
  br i1 %235, label %236, label %215, !llvm.loop !58

236:                                              ; preds = %215, %205
  %237 = phi i32 [ %206, %205 ], [ %233, %215 ]
  br i1 %207, label %238, label %241

238:                                              ; preds = %236
  %239 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 47
  %240 = load i32, ptr %239, align 8, !tbaa !52
  br label %241

241:                                              ; preds = %236, %238
  %242 = phi i32 [ %240, %238 ], [ 1, %236 ]
  %243 = load i32, ptr %49, align 4, !tbaa !51
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %258

245:                                              ; preds = %241
  %246 = sext i32 %242 to i64
  br label %247

247:                                              ; preds = %245, %252
  %248 = phi i64 [ %246, %245 ], [ %253, %252 ]
  %249 = getelementptr inbounds [15 x i32], ptr %16, i64 0, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !5
  %251 = icmp sgt i32 %237, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %247
  %253 = add nsw i64 %248, 1
  %254 = trunc i64 %253 to i32
  %255 = icmp eq i32 %243, %254
  br i1 %255, label %258, label %247, !llvm.loop !59

256:                                              ; preds = %247
  %257 = trunc i64 %248 to i32
  br label %258

258:                                              ; preds = %256, %252, %241
  %259 = phi i32 [ %242, %241 ], [ %257, %256 ], [ %243, %252 ]
  store i32 %259, ptr %19, align 4, !tbaa !50
  call void @getframebits(ptr noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %18) #13
  %260 = load i32, ptr %18, align 4, !tbaa !5
  %261 = load i32, ptr %17, align 4, !tbaa !5
  %262 = call i32 @ResvFrameBegin(ptr noundef %0, ptr noundef %5, i32 noundef %260, i32 noundef %261) #13
  %263 = icmp sgt i32 %237, %262
  br i1 %263, label %264, label %292

264:                                              ; preds = %258
  %265 = load i32, ptr %50, align 8, !tbaa !9
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %292

267:                                              ; preds = %264
  %268 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %269 = load i32, ptr %268, align 4, !tbaa !16
  %270 = icmp sgt i32 %269, 0
  %271 = zext nneg i32 %269 to i64
  %272 = load i32, ptr %50, align 8, !tbaa !9
  %273 = sext i32 %272 to i64
  br label %274

274:                                              ; preds = %267, %289
  %275 = phi i64 [ 0, %267 ], [ %290, %289 ]
  br i1 %270, label %276, label %289

276:                                              ; preds = %274
  %277 = load i32, ptr %19, align 4, !tbaa !50
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [15 x i32], ptr %16, i64 0, i64 %278
  %280 = load i32, ptr %279, align 4, !tbaa !5
  br label %281

281:                                              ; preds = %276, %281
  %282 = phi i64 [ 0, %276 ], [ %287, %281 ]
  %283 = getelementptr inbounds [2 x [2 x i32]], ptr %14, i64 0, i64 %275, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !5
  %285 = mul nsw i32 %280, %284
  %286 = sdiv i32 %285, %237
  store i32 %286, ptr %283, align 4, !tbaa !5
  %287 = add nuw nsw i64 %282, 1
  %288 = icmp eq i64 %287, %271
  br i1 %288, label %289, label %281, !llvm.loop !60

289:                                              ; preds = %281, %274
  %290 = add nuw nsw i64 %275, 1
  %291 = icmp slt i64 %290, %273
  br i1 %291, label %274, label %292, !llvm.loop !61

292:                                              ; preds = %289, %264, %258
  %293 = load i32, ptr %50, align 8, !tbaa !9
  %294 = icmp sgt i32 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %297 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 22
  br label %298

298:                                              ; preds = %295, %352
  %299 = phi i64 [ 0, %295 ], [ %353, %352 ]
  %300 = load i32, ptr %296, align 4, !tbaa !16
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %302, label %352

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.III_side_info_t, ptr %5, i64 0, i32 4, i64 %299
  br label %309

304:                                              ; preds = %352, %292
  %305 = load i32, ptr %50, align 8, !tbaa !9
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %365

307:                                              ; preds = %304
  %308 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  br label %357

309:                                              ; preds = %302, %347
  %310 = phi i64 [ 0, %302 ], [ %348, %347 ]
  br i1 %263, label %316, label %311

311:                                              ; preds = %309
  %312 = load i32, ptr @reduce_sidechannel, align 4, !tbaa !5
  %313 = icmp ne i32 %312, 0
  %314 = icmp eq i64 %310, 1
  %315 = and i1 %314, %313
  br i1 %315, label %316, label %347

316:                                              ; preds = %311, %309
  %317 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %303, i64 0, i64 %310
  %318 = getelementptr inbounds [2 x [576 x double]], ptr %3, i64 %299, i64 %310
  %319 = call i32 @init_outer_loop(ptr noundef %0, ptr noundef %318, ptr noundef nonnull %317)
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %316
  %322 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %7, i64 %299, i64 %310
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %322, i8 0, i64 244, i1 false)
  %323 = getelementptr inbounds [2 x [576 x i32]], ptr %6, i64 %299, i64 %310
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %323, i8 0, i64 2304, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  br label %347

324:                                              ; preds = %316
  %325 = load i32, ptr %297, align 4, !tbaa !54
  %326 = getelementptr inbounds [2 x [2 x i32]], ptr %14, i64 0, i64 %299, i64 %310
  %327 = load i32, ptr %326, align 4, !tbaa !5
  %328 = shl nsw i32 %325, 1
  %329 = add nsw i32 %328, -6
  %330 = sitofp i32 %329 to float
  %331 = add nsw i32 %327, -125
  %332 = sitofp i32 %331 to double
  %333 = fdiv double %332, 2.375000e+03
  %334 = fptrunc double %333 to float
  %335 = fadd float %334, -1.000000e+00
  %336 = fmul float %335, 4.000000e+00
  %337 = fadd float %336, %330
  %338 = fdiv float %337, 1.000000e+01
  %339 = fpext float %338 to double
  %340 = call double @pow(double noundef 1.000000e+01, double noundef %339) #13
  %341 = fptrunc double %340 to float
  store float %341, ptr @masking_lower, align 4, !tbaa !49
  %342 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %4, i64 %299, i64 %310
  %343 = call i32 @calc_xmin(ptr noundef %0, ptr noundef %318, ptr noundef %342, ptr noundef nonnull %317, ptr noundef nonnull %13) #13
  %344 = getelementptr inbounds [2 x [576 x i32]], ptr %6, i64 %299, i64 %310
  %345 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %7, i64 %299, i64 %310
  %346 = trunc i64 %310 to i32
  call void @outer_loop(ptr noundef %0, ptr noundef %318, i32 noundef %327, ptr noundef nonnull %15, ptr noundef nonnull %13, ptr noundef %344, ptr noundef %345, ptr noundef nonnull %317, ptr nonnull poison, i32 noundef %346)
  br label %347

347:                                              ; preds = %311, %324, %321
  %348 = add nuw nsw i64 %310, 1
  %349 = load i32, ptr %296, align 4, !tbaa !16
  %350 = sext i32 %349 to i64
  %351 = icmp slt i64 %348, %350
  br i1 %351, label %309, label %352, !llvm.loop !62

352:                                              ; preds = %347, %298
  %353 = add nuw nsw i64 %299, 1
  %354 = load i32, ptr %50, align 8, !tbaa !9
  %355 = sext i32 %354 to i64
  %356 = icmp slt i64 %353, %355
  br i1 %356, label %298, label %304, !llvm.loop !63

357:                                              ; preds = %307, %386
  %358 = phi i64 [ 0, %307 ], [ %387, %386 ]
  %359 = load i32, ptr %308, align 4, !tbaa !16
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %361, label %386

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.III_side_info_t, ptr %5, i64 0, i32 4, i64 %358
  %363 = trunc i64 %358 to i32
  %364 = trunc i64 %358 to i32
  br label %370

365:                                              ; preds = %386, %304
  %366 = load i32, ptr %50, align 8, !tbaa !9
  %367 = icmp sgt i32 %366, 0
  br i1 %367, label %368, label %419

368:                                              ; preds = %365
  %369 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  br label %391

370:                                              ; preds = %361, %380
  %371 = phi i64 [ 0, %361 ], [ %382, %380 ]
  %372 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %362, i64 0, i64 %371
  %373 = trunc i64 %371 to i32
  call void @best_scalefac_store(ptr noundef %0, i32 noundef %363, i32 noundef %373, ptr noundef %6, ptr noundef %5, ptr noundef %7) #13
  %374 = getelementptr inbounds %struct.gr_info, ptr %372, i64 0, i32 6
  %375 = load i32, ptr %374, align 8, !tbaa !18
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %370
  %378 = getelementptr inbounds [2 x [576 x i32]], ptr %6, i64 %358, i64 %371
  %379 = trunc i64 %371 to i32
  call void @best_huffman_divide(i32 noundef %364, i32 noundef %379, ptr noundef nonnull %372, ptr noundef %378) #13
  br label %380

380:                                              ; preds = %377, %370
  %381 = load i32, ptr %18, align 4, !tbaa !5
  call void @ResvAdjust(ptr noundef %0, ptr noundef nonnull %372, ptr noundef %5, i32 noundef %381) #13
  %382 = add nuw nsw i64 %371, 1
  %383 = load i32, ptr %308, align 4, !tbaa !16
  %384 = sext i32 %383 to i64
  %385 = icmp slt i64 %382, %384
  br i1 %385, label %370, label %386, !llvm.loop !64

386:                                              ; preds = %380, %357
  %387 = add nuw nsw i64 %358, 1
  %388 = load i32, ptr %50, align 8, !tbaa !9
  %389 = sext i32 %388 to i64
  %390 = icmp slt i64 %387, %389
  br i1 %390, label %357, label %365, !llvm.loop !65

391:                                              ; preds = %368, %414
  %392 = phi i64 [ 0, %368 ], [ %415, %414 ]
  %393 = load i32, ptr %369, align 4, !tbaa !16
  %394 = icmp sgt i32 %393, 0
  br i1 %394, label %395, label %414

395:                                              ; preds = %391, %409
  %396 = phi i64 [ %410, %409 ], [ 0, %391 ]
  br label %397

397:                                              ; preds = %395, %406
  %398 = phi i64 [ 0, %395 ], [ %407, %406 ]
  %399 = getelementptr inbounds [2 x [576 x double]], ptr %3, i64 %392, i64 %396, i64 %398
  %400 = load double, ptr %399, align 8, !tbaa !14
  %401 = fcmp olt double %400, 0.000000e+00
  br i1 %401, label %402, label %406

402:                                              ; preds = %397
  %403 = getelementptr inbounds [2 x [576 x i32]], ptr %6, i64 %392, i64 %396, i64 %398
  %404 = load i32, ptr %403, align 4, !tbaa !5
  %405 = sub nsw i32 0, %404
  store i32 %405, ptr %403, align 4, !tbaa !5
  br label %406

406:                                              ; preds = %397, %402
  %407 = add nuw nsw i64 %398, 1
  %408 = icmp eq i64 %407, 576
  br i1 %408, label %409, label %397, !llvm.loop !66

409:                                              ; preds = %406
  %410 = add nuw nsw i64 %396, 1
  %411 = load i32, ptr %369, align 4, !tbaa !16
  %412 = sext i32 %411 to i64
  %413 = icmp slt i64 %410, %412
  br i1 %413, label %395, label %414, !llvm.loop !67

414:                                              ; preds = %409, %391
  %415 = add nuw nsw i64 %392, 1
  %416 = load i32, ptr %50, align 8, !tbaa !9
  %417 = sext i32 %416 to i64
  %418 = icmp slt i64 %415, %417
  br i1 %418, label %391, label %419, !llvm.loop !68

419:                                              ; preds = %414, %365
  %420 = load i32, ptr %18, align 4, !tbaa !5
  call void @ResvFrameEnd(ptr noundef %0, ptr noundef %5, i32 noundef %420) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 2304, ptr nonnull %12)
  call void @llvm.lifetime.end.p0(i64 244, ptr nonnull %11)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @VBR_compare(i32 noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, double noundef %5, double noundef %6, double noundef %7) local_unnamed_addr #8 {
  %9 = icmp sgt i32 %4, %0
  %10 = fcmp ugt double %6, %2
  %11 = or i1 %9, %10
  %12 = fcmp ugt double %5, %1
  %13 = or i1 %12, %11
  %14 = fcmp ole double %7, %3
  %15 = xor i1 %13, true
  %16 = and i1 %14, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

declare i32 @bin_search_StepSize2(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @inner_loop(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local i32 @calc_noise1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef %7, ptr nocapture noundef %8, ptr nocapture noundef %9) local_unnamed_addr #10 {
  store double 0.000000e+00, ptr %7, align 8, !tbaa !14
  store double 0.000000e+00, ptr %8, align 8, !tbaa !14
  store double -9.990000e+02, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 16
  %12 = load i32, ptr %11, align 8, !tbaa !69
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 12
  %16 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 3
  %17 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 13
  br label %26

18:                                               ; preds = %91
  %19 = trunc i64 %49 to i32
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi i32 [ 0, %10 ], [ %92, %18 ]
  %22 = phi i32 [ 0, %10 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 17
  %24 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 13
  %25 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 3
  br label %101

26:                                               ; preds = %14, %91
  %27 = phi i64 [ 0, %14 ], [ %49, %91 ]
  %28 = phi i32 [ 0, %14 ], [ %92, %91 ]
  %29 = getelementptr inbounds [22 x i32], ptr %6, i64 0, i64 %27
  %30 = load i32, ptr %29, align 4, !tbaa !5
  %31 = load i32, ptr %15, align 8, !tbaa !70
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %27
  %35 = load i32, ptr %34, align 4, !tbaa !5
  %36 = add nsw i32 %35, %30
  br label %37

37:                                               ; preds = %33, %26
  %38 = phi i32 [ %36, %33 ], [ %30, %26 ]
  %39 = load i32, ptr %16, align 4, !tbaa !30
  %40 = load i32, ptr %17, align 4, !tbaa !46
  %41 = add i32 %40, 1
  %42 = shl i32 %38, %41
  %43 = sub i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [256 x double], ptr @pow20, i64 0, i64 %44
  %46 = load double, ptr %45, align 8, !tbaa !14
  %47 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %27
  %48 = load i32, ptr %47, align 4, !tbaa !5
  %49 = add nuw nsw i64 %27, 1
  %50 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !5
  %52 = sub nsw i32 %51, %48
  %53 = sitofp i32 %52 to double
  %54 = icmp slt i32 %48, %51
  br i1 %54, label %55, label %74

55:                                               ; preds = %37
  %56 = sext i32 %48 to i64
  %57 = sext i32 %51 to i64
  br label %58

58:                                               ; preds = %55, %58
  %59 = phi i64 [ %56, %55 ], [ %72, %58 ]
  %60 = phi double [ 0.000000e+00, %55 ], [ %71, %58 ]
  %61 = getelementptr inbounds double, ptr %0, i64 %59
  %62 = load double, ptr %61, align 8, !tbaa !14
  %63 = tail call double @llvm.fabs.f64(double %62)
  %64 = getelementptr inbounds i32, ptr %1, i64 %59
  %65 = load i32, ptr %64, align 4, !tbaa !5
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !14
  %69 = fneg double %68
  %70 = tail call double @llvm.fmuladd.f64(double %69, double %46, double %63)
  %71 = tail call double @llvm.fmuladd.f64(double %70, double %70, double %60)
  %72 = add nsw i64 %59, 1
  %73 = icmp eq i64 %72, %57
  br i1 %73, label %74, label %58, !llvm.loop !71

74:                                               ; preds = %58, %37
  %75 = phi double [ 0.000000e+00, %37 ], [ %71, %58 ]
  %76 = fdiv double %75, %53
  %77 = getelementptr inbounds [21 x double], ptr %3, i64 0, i64 %27
  store double %76, ptr %77, align 8, !tbaa !14
  %78 = getelementptr inbounds [22 x double], ptr %5, i64 0, i64 %27
  %79 = load double, ptr %78, align 8, !tbaa !14
  %80 = fdiv double %76, %79
  %81 = fcmp olt double %80, 1.000000e-03
  %82 = select i1 %81, double 1.000000e-03, double %80
  %83 = tail call double @log10(double noundef %82) #13
  %84 = fmul double %83, 1.000000e+01
  %85 = getelementptr inbounds [21 x double], ptr %4, i64 0, i64 %27
  store double %84, ptr %85, align 8, !tbaa !14
  %86 = fcmp ogt double %84, 0.000000e+00
  br i1 %86, label %87, label %91

87:                                               ; preds = %74
  %88 = add nsw i32 %28, 1
  %89 = load double, ptr %7, align 8, !tbaa !14
  %90 = fadd double %84, %89
  store double %90, ptr %7, align 8, !tbaa !14
  br label %91

91:                                               ; preds = %87, %74
  %92 = phi i32 [ %88, %87 ], [ %28, %74 ]
  %93 = load double, ptr %8, align 8, !tbaa !14
  %94 = fadd double %84, %93
  store double %94, ptr %8, align 8, !tbaa !14
  %95 = load double, ptr %9, align 8, !tbaa !14
  %96 = fcmp ogt double %95, %84
  %97 = select i1 %96, double %95, double %84
  store double %97, ptr %9, align 8, !tbaa !14
  %98 = load i32, ptr %11, align 8, !tbaa !69
  %99 = zext i32 %98 to i64
  %100 = icmp ult i64 %49, %99
  br i1 %100, label %26, label %18, !llvm.loop !72

101:                                              ; preds = %20, %184
  %102 = phi i64 [ 0, %20 ], [ %187, %184 ]
  %103 = phi i32 [ %22, %20 ], [ %186, %184 ]
  %104 = phi i32 [ %21, %20 ], [ %185, %184 ]
  %105 = load i32, ptr %23, align 4, !tbaa !73
  %106 = icmp ult i32 %105, 12
  br i1 %106, label %107, label %184

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.gr_info, ptr %2, i64 0, i32 9, i64 %102
  %109 = add nuw nsw i64 %102, 1
  %110 = zext nneg i32 %105 to i64
  %111 = add i32 %103, 12
  br label %112

112:                                              ; preds = %107, %174
  %113 = phi i64 [ %110, %107 ], [ %130, %174 ]
  %114 = phi i32 [ %104, %107 ], [ %175, %174 ]
  %115 = getelementptr inbounds %struct.III_scalefac_t, ptr %6, i64 0, i32 1, i64 %113, i64 %102
  %116 = load i32, ptr %115, align 4, !tbaa !5
  %117 = load i32, ptr %24, align 4, !tbaa !46
  %118 = add i32 %117, 1
  %119 = shl i32 %116, %118
  %120 = load i32, ptr %108, align 4, !tbaa !5
  %121 = load i32, ptr %25, align 4, !tbaa !30
  %122 = mul i32 %120, -8
  %123 = sub i32 %122, %119
  %124 = add i32 %123, %121
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [256 x double], ptr @pow20, i64 0, i64 %125
  %127 = load double, ptr %126, align 8, !tbaa !14
  %128 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %113
  %129 = load i32, ptr %128, align 4, !tbaa !5
  %130 = add nuw nsw i64 %113, 1
  %131 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !5
  %133 = sub nsw i32 %132, %129
  %134 = sitofp i32 %133 to double
  %135 = icmp slt i32 %129, %132
  br i1 %135, label %136, label %157

136:                                              ; preds = %112
  %137 = sext i32 %129 to i64
  %138 = sext i32 %132 to i64
  br label %139

139:                                              ; preds = %136, %139
  %140 = phi i64 [ %137, %136 ], [ %155, %139 ]
  %141 = phi double [ 0.000000e+00, %136 ], [ %154, %139 ]
  %142 = mul nsw i64 %140, 3
  %143 = add nsw i64 %142, %102
  %144 = getelementptr inbounds double, ptr %0, i64 %143
  %145 = load double, ptr %144, align 8, !tbaa !14
  %146 = tail call double @llvm.fabs.f64(double %145)
  %147 = getelementptr inbounds i32, ptr %1, i64 %143
  %148 = load i32, ptr %147, align 4, !tbaa !5
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %149
  %151 = load double, ptr %150, align 8, !tbaa !14
  %152 = fneg double %151
  %153 = tail call double @llvm.fmuladd.f64(double %152, double %127, double %146)
  %154 = tail call double @llvm.fmuladd.f64(double %153, double %153, double %141)
  %155 = add nsw i64 %140, 1
  %156 = icmp eq i64 %155, %138
  br i1 %156, label %157, label %139, !llvm.loop !74

157:                                              ; preds = %139, %112
  %158 = phi double [ 0.000000e+00, %112 ], [ %154, %139 ]
  %159 = fdiv double %158, %134
  %160 = getelementptr inbounds [21 x double], ptr %3, i64 %109, i64 %113
  store double %159, ptr %160, align 8, !tbaa !14
  %161 = getelementptr inbounds %struct.III_psy_xmin, ptr %5, i64 0, i32 1, i64 %113, i64 %102
  %162 = load double, ptr %161, align 8, !tbaa !14
  %163 = fdiv double %159, %162
  %164 = fcmp olt double %163, 1.000000e-03
  %165 = select i1 %164, double 1.000000e-03, double %163
  %166 = tail call double @log10(double noundef %165) #13
  %167 = fmul double %166, 1.000000e+01
  %168 = getelementptr inbounds [21 x double], ptr %4, i64 %109, i64 %113
  store double %167, ptr %168, align 8, !tbaa !14
  %169 = fcmp ogt double %167, 0.000000e+00
  br i1 %169, label %170, label %174

170:                                              ; preds = %157
  %171 = add nsw i32 %114, 1
  %172 = load double, ptr %7, align 8, !tbaa !14
  %173 = fadd double %167, %172
  store double %173, ptr %7, align 8, !tbaa !14
  br label %174

174:                                              ; preds = %170, %157
  %175 = phi i32 [ %171, %170 ], [ %114, %157 ]
  %176 = load double, ptr %8, align 8, !tbaa !14
  %177 = fadd double %167, %176
  store double %177, ptr %8, align 8, !tbaa !14
  %178 = load double, ptr %9, align 8, !tbaa !14
  %179 = fcmp ogt double %178, %167
  %180 = select i1 %179, double %178, double %167
  store double %180, ptr %9, align 8, !tbaa !14
  %181 = icmp eq i64 %130, 12
  br i1 %181, label %182, label %112, !llvm.loop !75

182:                                              ; preds = %174
  %183 = sub i32 %111, %105
  br label %184

184:                                              ; preds = %182, %101
  %185 = phi i32 [ %104, %101 ], [ %175, %182 ]
  %186 = phi i32 [ %103, %101 ], [ %183, %182 ]
  %187 = add nuw nsw i64 %102, 1
  %188 = icmp eq i64 %187, 3
  br i1 %188, label %189, label %101, !llvm.loop !76

189:                                              ; preds = %184
  %190 = icmp sgt i32 %186, 1
  br i1 %190, label %191, label %195

191:                                              ; preds = %189
  %192 = sitofp i32 %186 to double
  %193 = load double, ptr %8, align 8, !tbaa !14
  %194 = fdiv double %193, %192
  store double %194, ptr %8, align 8, !tbaa !14
  br label %195

195:                                              ; preds = %191, %189
  %196 = icmp sgt i32 %185, 1
  br i1 %196, label %197, label %201

197:                                              ; preds = %195
  %198 = sitofp i32 %185 to double
  %199 = load double, ptr %7, align 8, !tbaa !14
  %200 = fdiv double %199, %198
  store double %200, ptr %7, align 8, !tbaa !14
  br label %201

201:                                              ; preds = %197, %195
  ret i32 %185
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @quant_compare(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, i32 noundef %5, double noundef %6, double noundef %7, double noundef %8) local_unnamed_addr #8 {
  %10 = icmp eq i32 %0, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %9
  %12 = icmp slt i32 %5, %1
  %13 = icmp eq i32 %5, %1
  %14 = fcmp ole double %7, %3
  %15 = and i1 %13, %14
  %16 = or i1 %12, %15
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %11, %9
  %19 = phi i32 [ %17, %11 ], [ 0, %9 ]
  %20 = icmp eq i32 %0, 1
  %21 = fcmp olt double %8, %4
  %22 = zext i1 %21 to i32
  %23 = select i1 %20, i32 %22, i32 %19
  %24 = icmp eq i32 %0, 2
  %25 = fcmp olt double %6, %2
  %26 = zext i1 %25 to i32
  %27 = select i1 %24, i32 %26, i32 %23
  %28 = icmp eq i32 %0, 3
  %29 = fadd double %4, 2.000000e+00
  %30 = fcmp ogt double %29, %8
  %31 = and i1 %25, %30
  %32 = zext i1 %31 to i32
  %33 = select i1 %28, i32 %32, i32 %27
  %34 = icmp eq i32 %0, 4
  br i1 %34, label %35, label %75

35:                                               ; preds = %18
  %36 = fcmp ole double %8, 0.000000e+00
  %37 = fcmp ogt double %4, 2.000000e+00
  %38 = and i1 %37, %36
  br i1 %38, label %75, label %39

39:                                               ; preds = %35
  %40 = fcmp olt double %4, 0.000000e+00
  %41 = and i1 %40, %36
  %42 = fadd double %4, 2.000000e+00
  %43 = fcmp ogt double %42, %8
  %44 = and i1 %43, %41
  %45 = and i1 %25, %44
  br i1 %45, label %75, label %46

46:                                               ; preds = %39
  %47 = fcmp ogt double %4, 0.000000e+00
  %48 = fadd double %2, %3
  %49 = fcmp ogt double %48, %6
  %50 = and i1 %47, %49
  %51 = and i1 %50, %36
  %52 = and i1 %43, %51
  br i1 %52, label %75, label %53

53:                                               ; preds = %46
  %54 = fcmp ogt double %8, 0.000000e+00
  %55 = fcmp ogt double %4, -5.000000e-01
  %56 = fadd double %4, 1.000000e+00
  %57 = fcmp ogt double %56, %8
  %58 = and i1 %55, %57
  %59 = fadd double %6, %7
  %60 = fcmp olt double %59, %48
  %61 = and i1 %60, %58
  %62 = and i1 %54, %61
  br i1 %62, label %75, label %63

63:                                               ; preds = %53
  %64 = fcmp ogt double %4, -1.000000e+00
  %65 = fadd double %4, 1.500000e+00
  %66 = fcmp ogt double %65, %8
  %67 = and i1 %64, %66
  %68 = and i1 %54, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = fadd double %6, %7
  %71 = fadd double %70, %7
  %72 = fadd double %48, %3
  %73 = fcmp olt double %71, %72
  %74 = zext i1 %73 to i32
  br label %75

75:                                               ; preds = %53, %35, %69, %63, %39, %46, %18
  %76 = phi i32 [ %33, %18 ], [ 1, %35 ], [ 0, %63 ], [ %74, %69 ], [ 1, %39 ], [ 1, %46 ], [ 1, %53 ]
  %77 = icmp eq i32 %0, 5
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = fcmp olt double %7, %3
  %80 = fcmp oeq double %7, %3
  %81 = and i1 %25, %80
  %82 = or i1 %79, %81
  %83 = zext i1 %82 to i32
  br label %84

84:                                               ; preds = %78, %75
  %85 = phi i32 [ %83, %78 ], [ %76, %75 ]
  %86 = icmp eq i32 %0, 6
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = fcmp olt double %7, %3
  br i1 %88, label %99, label %89

89:                                               ; preds = %87
  %90 = fcmp une double %7, %3
  %91 = or i1 %90, %21
  %92 = xor i1 %90, true
  %93 = zext i1 %92 to i32
  br i1 %91, label %99, label %94

94:                                               ; preds = %89
  %95 = fcmp oeq double %8, %4
  %96 = fcmp ole double %6, %2
  %97 = and i1 %96, %95
  %98 = zext i1 %97 to i32
  br label %99

99:                                               ; preds = %89, %87, %94, %84
  %100 = phi i32 [ %85, %84 ], [ 1, %87 ], [ %93, %89 ], [ %98, %94 ]
  ret i32 %100
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @amp_scalefac_bands(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #11 {
  %5 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, double 0x3FF4BFDAD5362A27, double 0x3FFAE89F995AD3AE
  %9 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 16
  %10 = load i32, ptr %9, align 8, !tbaa !69
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %4
  %13 = zext i32 %10 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %21, %14 ]
  %16 = phi double [ -9.000000e+02, %12 ], [ %20, %14 ]
  %17 = getelementptr inbounds [21 x double], ptr %3, i64 0, i64 %15
  %18 = load double, ptr %17, align 8, !tbaa !14
  %19 = fcmp ogt double %18, %16
  %20 = select i1 %19, double %18, double %16
  %21 = add nuw nsw i64 %15, 1
  %22 = icmp eq i64 %21, %13
  br i1 %22, label %23, label %14, !llvm.loop !77

23:                                               ; preds = %14, %4
  %24 = phi double [ -9.000000e+02, %4 ], [ %20, %14 ]
  %25 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 16
  %26 = getelementptr inbounds %struct.gr_info, ptr %1, i64 0, i32 17
  %27 = load i32, ptr %26, align 4, !tbaa !73
  %28 = icmp ult i32 %27, 12
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = zext nneg i32 %27 to i64
  br label %31

31:                                               ; preds = %29, %43
  %32 = phi i64 [ %30, %29 ], [ %44, %43 ]
  %33 = phi double [ %24, %29 ], [ %41, %43 ]
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i64 [ 0, %31 ], [ %37, %34 ]
  %36 = phi double [ %33, %31 ], [ %41, %34 ]
  %37 = add nuw nsw i64 %35, 1
  %38 = getelementptr inbounds [21 x double], ptr %3, i64 %37, i64 %32
  %39 = load double, ptr %38, align 8, !tbaa !14
  %40 = fcmp ogt double %39, %36
  %41 = select i1 %40, double %39, double %36
  %42 = icmp eq i64 %37, 3
  br i1 %42, label %43, label %34, !llvm.loop !78

43:                                               ; preds = %34
  %44 = add nuw nsw i64 %32, 1
  %45 = icmp eq i64 %44, 12
  br i1 %45, label %46, label %31, !llvm.loop !79

46:                                               ; preds = %43, %23
  %47 = phi double [ %24, %23 ], [ %41, %43 ]
  %48 = fmul double %47, 1.050000e+00
  %49 = fcmp olt double %48, 0.000000e+00
  %50 = select i1 %49, double %48, double 0.000000e+00
  %51 = load i32, ptr %25, align 8, !tbaa !69
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %83, label %53

53:                                               ; preds = %46, %78
  %54 = phi i64 [ %79, %78 ], [ 0, %46 ]
  %55 = getelementptr inbounds [21 x double], ptr %3, i64 0, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !14
  %57 = fcmp ogt double %56, %50
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = getelementptr inbounds [22 x i32], ptr %2, i64 0, i64 %54
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %59, align 4, !tbaa !5
  %62 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %54
  %63 = load i32, ptr %62, align 4, !tbaa !5
  %64 = add nuw nsw i64 %54, 1
  %65 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !5
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %58
  %69 = sext i32 %63 to i64
  %70 = sext i32 %66 to i64
  br label %71

71:                                               ; preds = %68, %71
  %72 = phi i64 [ %69, %68 ], [ %76, %71 ]
  %73 = getelementptr inbounds double, ptr %0, i64 %72
  %74 = load double, ptr %73, align 8, !tbaa !14
  %75 = fmul double %8, %74
  store double %75, ptr %73, align 8, !tbaa !14
  %76 = add nsw i64 %72, 1
  %77 = icmp eq i64 %76, %70
  br i1 %77, label %78, label %71, !llvm.loop !80

78:                                               ; preds = %71, %58, %53
  %79 = add nuw nsw i64 %54, 1
  %80 = load i32, ptr %25, align 8, !tbaa !69
  %81 = zext i32 %80 to i64
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %53, label %83, !llvm.loop !81

83:                                               ; preds = %78, %46
  br label %84

84:                                               ; preds = %83, %121
  %85 = phi i64 [ %122, %121 ], [ 0, %83 ]
  %86 = load i32, ptr %26, align 4, !tbaa !73
  %87 = icmp ult i32 %86, 12
  br i1 %87, label %88, label %121

88:                                               ; preds = %84
  %89 = getelementptr [21 x double], ptr %3, i64 %85
  %90 = zext nneg i32 %86 to i64
  %91 = getelementptr double, ptr %0, i64 %85
  br label %92

92:                                               ; preds = %88, %118
  %93 = phi i64 [ %90, %88 ], [ %119, %118 ]
  %94 = getelementptr [21 x double], ptr %89, i64 1, i64 %93
  %95 = load double, ptr %94, align 8, !tbaa !14
  %96 = fcmp ogt double %95, %50
  br i1 %96, label %97, label %118

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.III_scalefac_t, ptr %2, i64 0, i32 1, i64 %93, i64 %85
  %99 = load i32, ptr %98, align 4, !tbaa !5
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %98, align 4, !tbaa !5
  %101 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %93
  %102 = load i32, ptr %101, align 4, !tbaa !5
  %103 = add nuw nsw i64 %93, 1
  %104 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !5
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %97
  %108 = sext i32 %102 to i64
  %109 = sext i32 %105 to i64
  br label %110

110:                                              ; preds = %107, %110
  %111 = phi i64 [ %108, %107 ], [ %116, %110 ]
  %112 = mul nsw i64 %111, 3
  %113 = getelementptr double, ptr %91, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !14
  %115 = fmul double %8, %114
  store double %115, ptr %113, align 8, !tbaa !14
  %116 = add nsw i64 %111, 1
  %117 = icmp eq i64 %116, %109
  br i1 %117, label %118, label %110, !llvm.loop !82

118:                                              ; preds = %110, %97, %92
  %119 = add nuw nsw i64 %93, 1
  %120 = icmp eq i64 %119, 12
  br i1 %120, label %121, label %92, !llvm.loop !83

121:                                              ; preds = %118, %84
  %122 = add nuw nsw i64 %85, 1
  %123 = icmp eq i64 %122, 3
  br i1 %123, label %124, label %84, !llvm.loop !84

124:                                              ; preds = %121
  ret void
}

declare i32 @loop_break(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @scale_bitcount(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @scale_bitcount_lsf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 200}
!10 = !{!"", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !12, i64 128, !12, i64 136, !6, i64 144, !6, i64 148, !13, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !11, i64 168, !11, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !13, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276}
!11 = !{!"long", !7, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !7, i64 0}
!16 = !{!10, !6, i64 204}
!17 = !{!10, !6, i64 276}
!18 = !{!19, !6, i64 24}
!19 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !7, i64 32, !7, i64 44, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !7, i64 104}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = !{!19, !12, i64 96}
!25 = !{!19, !6, i64 0}
!26 = !{!19, !6, i64 4}
!27 = !{!19, !6, i64 8}
!28 = !{!19, !6, i64 16}
!29 = !{!19, !6, i64 76}
!30 = !{!19, !6, i64 12}
!31 = !{!19, !6, i64 72}
!32 = !{!19, !6, i64 88}
!33 = !{!10, !6, i64 84}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !21}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21}
!40 = distinct !{!40, !21}
!41 = !{!10, !6, i64 264}
!42 = !{!10, !6, i64 76}
!43 = !{i32 0, i32 2}
!44 = !{!10, !6, i64 268}
!45 = !{!10, !6, i64 192}
!46 = !{!19, !6, i64 68}
!47 = !{!10, !6, i64 80}
!48 = distinct !{!48, !21}
!49 = !{!13, !13, i64 0}
!50 = !{!10, !6, i64 220}
!51 = !{!10, !6, i64 212}
!52 = !{!10, !6, i64 208}
!53 = distinct !{!53, !21}
!54 = !{!10, !6, i64 92}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !21}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !21}
!61 = distinct !{!61, !21}
!62 = distinct !{!62, !21}
!63 = distinct !{!63, !21}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, !21}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !21}
!68 = distinct !{!68, !21}
!69 = !{!19, !6, i64 80}
!70 = !{!19, !6, i64 64}
!71 = distinct !{!71, !21}
!72 = distinct !{!72, !21}
!73 = !{!19, !6, i64 84}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = distinct !{!81, !21}
!82 = distinct !{!82, !21}
!83 = distinct !{!83, !21}
!84 = distinct !{!84, !21}
