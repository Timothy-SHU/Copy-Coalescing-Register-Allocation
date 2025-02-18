; ModuleID = 'blender/source/blender/editors/interface/interface_draw.c'
source_filename = "blender/source/blender/editors/interface/interface_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.uiBlock = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, [128 x i8], [4 x [4 x float]], %struct.rctf, float, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, [7 x i8], double, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.rctf, %struct.ListBase, ptr, ptr, ptr, ptr, [3 x float], i8, [64 x i8], %struct.PieMenuData }
%struct.PieMenuData = type { [2 x float], [2 x float], [2 x float], [2 x float], double, i32, i32, float }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.uiWidgetColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i16, i16, i16, i16 }
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.CurveMapPoint = type { float, float, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }

@roundboxtype = internal unnamed_addr global i32 15, align 4
@__const.uiDrawBoxVerticalShade.vec = private unnamed_addr constant [7 x [2 x float]] [[2 x float] [float 0x3FC8F5C280000000, float 0x3F947AE140000000], [2 x float] [float 0x3FD8831260000000, float 0x3FB126E980000000], [2 x float] [float 0x3FE19999A0000000, float 0x3FC5A1CAC0000000], [2 x float] [float 0x3FE69FBE80000000, float 0x3FD2C08320000000], [2 x float] [float 0x3FEA978D40000000, float 0x3FDCCCCCC0000000], [2 x float] [float 0x3FED916880000000, float 0x3FE3BE76C0000000], [2 x float] [float 0x3FEF5C2900000000, float 0x3FE9C28F60000000]], align 16
@.str = private unnamed_addr constant [5 x i8] c"%-3d\00", align 1
@__const.ui_draw_but_VECTORSCOPE.colors = private unnamed_addr constant [6 x [3 x float]] [[3 x float] [float 7.500000e-01, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 7.500000e-01, float 7.500000e-01, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 7.500000e-01, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 7.500000e-01, float 7.500000e-01], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 7.500000e-01], [3 x float] [float 7.500000e-01, float 0.000000e+00, float 7.500000e-01]], align 16
@stipple_checker_8px = external constant [128 x i8], align 16
@ui_draw_but_NORMAL.displist = internal unnamed_addr global i32 0, align 4
@__const.ui_draw_but_NORMAL.diffn = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@__const.ui_draw_but_NODESOCKET.si = private unnamed_addr constant [16 x float] [float 0.000000e+00, float 0x3FD93D2060000000, float 0x3FE73180A0000000, float 0x3FEE0210C0000000, float 0x3FEFF57C40000000, float 0x3FECBAD0A0000000, float 0x3FE4D80B20000000, float 0x3FD328C3E0000000, float 0xBFB9E62AC0000000, float 0xBFDF0F3000000000, float 0xBFE94E08E0000000, float 0xBFEEFA7CE0000000, float 0xBFEFA18860000000, float 0xBFEB281800000000, float 0xBFE247D440000000, float 0xBFC9C42660000000], align 16
@__const.ui_draw_but_NODESOCKET.co = private unnamed_addr constant [16 x float] [float 1.000000e+00, float 0x3FED681A40000000, float 0x3FE60C0460000000, float 0x3FD63A3FC0000000, float 0xBFA9EEAFC0000000, float 0xBFDC2F6B00000000, float 0xBFE847BF20000000, float 0xBFEE884F00000000, float 0xBFEFD5F820000000, float 0xBFEBFAA5C0000000, float 0xBFE3965F40000000, float 0xBFD00AB0E0000000, float 0x3FC361FC40000000, float 0x3FE0ED45E0000000, float 0x3FEA43B1C0000000, float 0x3FEF584F20000000], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @uiSetRoundBox(i32 noundef %0) local_unnamed_addr #0 {
  store i32 %0, ptr @roundboxtype, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @uiGetRoundBox() local_unnamed_addr #1 {
  %1 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local void @uiDrawBox(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #2 {
  %7 = alloca [7 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %7, ptr noundef nonnull align 16 dereferenceable(56) @__const.uiDrawBoxVerticalShade.vec, i64 56, i1 false)
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %16, %8 ]
  %10 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %9
  %11 = load float, ptr %10, align 8, !tbaa !38
  %12 = fmul float %11, %5
  store float %12, ptr %10, align 8, !tbaa !38
  %13 = getelementptr inbounds float, ptr %10, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !38
  %15 = fmul float %14, %5
  store float %15, ptr %13, align 4, !tbaa !38
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, 7
  br i1 %17, label %18, label %8, !llvm.loop !40

18:                                               ; preds = %8
  tail call void @glBegin(i32 noundef %0) #11
  %19 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %18
  %23 = fsub float %3, %5
  tail call void @glVertex2f(float noundef %23, float noundef %2) #11
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %32, %24 ]
  %26 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %25
  %27 = load float, ptr %26, align 8, !tbaa !38
  %28 = fadd float %23, %27
  %29 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %25, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !38
  %31 = fadd float %30, %2
  tail call void @glVertex2f(float noundef %28, float noundef %31) #11
  %32 = add nuw nsw i64 %25, 1
  %33 = icmp eq i64 %32, 7
  br i1 %33, label %34, label %24, !llvm.loop !43

34:                                               ; preds = %24
  %35 = fadd float %2, %5
  br label %36

36:                                               ; preds = %18, %34
  %37 = phi float [ %35, %34 ], [ %2, %18 ]
  tail call void @glVertex2f(float noundef %3, float noundef %37) #11
  %38 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = fsub float %4, %5
  tail call void @glVertex2f(float noundef %3, float noundef %42) #11
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ 0, %41 ], [ %51, %43 ]
  %45 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %44
  %46 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %44, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !38
  %48 = fsub float %3, %47
  %49 = load float, ptr %45, align 8, !tbaa !38
  %50 = fadd float %42, %49
  tail call void @glVertex2f(float noundef %48, float noundef %50) #11
  %51 = add nuw nsw i64 %44, 1
  %52 = icmp eq i64 %51, 7
  br i1 %52, label %53, label %43, !llvm.loop !44

53:                                               ; preds = %43
  %54 = fsub float %3, %5
  br label %55

55:                                               ; preds = %36, %53
  %56 = phi float [ %54, %53 ], [ %3, %36 ]
  tail call void @glVertex2f(float noundef %56, float noundef %4) #11
  %57 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %55
  %61 = fadd float %1, %5
  tail call void @glVertex2f(float noundef %61, float noundef %4) #11
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i64 [ 0, %60 ], [ %70, %62 ]
  %64 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %63
  %65 = load float, ptr %64, align 8, !tbaa !38
  %66 = fsub float %61, %65
  %67 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %63, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !38
  %69 = fsub float %4, %68
  tail call void @glVertex2f(float noundef %66, float noundef %69) #11
  %70 = add nuw nsw i64 %63, 1
  %71 = icmp eq i64 %70, 7
  br i1 %71, label %72, label %62, !llvm.loop !45

72:                                               ; preds = %62
  %73 = fsub float %4, %5
  br label %74

74:                                               ; preds = %55, %72
  %75 = phi float [ %73, %72 ], [ %4, %55 ]
  tail call void @glVertex2f(float noundef %1, float noundef %75) #11
  %76 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  %77 = and i32 %76, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %74
  %80 = fadd float %2, %5
  tail call void @glVertex2f(float noundef %1, float noundef %80) #11
  br label %81

81:                                               ; preds = %79, %81
  %82 = phi i64 [ 0, %79 ], [ %89, %81 ]
  %83 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %82
  %84 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %82, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !38
  %86 = fadd float %85, %1
  %87 = load float, ptr %83, align 8, !tbaa !38
  %88 = fsub float %80, %87
  tail call void @glVertex2f(float noundef %86, float noundef %88) #11
  %89 = add nuw nsw i64 %82, 1
  %90 = icmp eq i64 %89, 7
  br i1 %90, label %91, label %81, !llvm.loop !46

91:                                               ; preds = %81
  %92 = fadd float %1, %5
  br label %93

93:                                               ; preds = %74, %91
  %94 = phi float [ %92, %91 ], [ %1, %74 ]
  tail call void @glVertex2f(float noundef %94, float noundef %2) #11
  tail call void @glEnd() #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @glBegin(i32 noundef) local_unnamed_addr #5

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #5

declare void @glEnd() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @uiDrawBoxShade(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #2 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = alloca [7 x [2 x float]], align 16
  %26 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %25) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %25, ptr noundef nonnull align 16 dereferenceable(56) @__const.uiDrawBoxVerticalShade.vec, i64 56, i1 false)
  %27 = fsub float %4, %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #11
  br label %28

28:                                               ; preds = %8, %28
  %29 = phi i64 [ 0, %8 ], [ %36, %28 ]
  %30 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %29
  %31 = load float, ptr %30, align 8, !tbaa !38
  %32 = fmul float %31, %5
  store float %32, ptr %30, align 8, !tbaa !38
  %33 = getelementptr inbounds float, ptr %30, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !38
  %35 = fmul float %34, %5
  store float %35, ptr %33, align 4, !tbaa !38
  %36 = add nuw nsw i64 %29, 1
  %37 = icmp eq i64 %36, 7
  br i1 %37, label %38, label %28, !llvm.loop !47

38:                                               ; preds = %28
  %39 = fdiv float 1.000000e+00, %27
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %26) #11
  %40 = load float, ptr %26, align 16, !tbaa !38
  %41 = fadd float %40, %6
  %42 = fcmp ogt float %41, 1.000000e+00
  %43 = select i1 %42, float 1.000000e+00, float %41
  %44 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !38
  %46 = fadd float %45, %6
  %47 = fcmp ogt float %46, 1.000000e+00
  %48 = select i1 %47, float 1.000000e+00, float %46
  %49 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 2
  %50 = load float, ptr %49, align 8, !tbaa !38
  %51 = fadd float %50, %6
  %52 = fcmp ogt float %51, 1.000000e+00
  %53 = select i1 %52, float 1.000000e+00, float %51
  %54 = fadd float %40, %7
  %55 = fcmp olt float %54, 0.000000e+00
  %56 = select i1 %55, float 0.000000e+00, float %54
  %57 = fadd float %45, %7
  %58 = fcmp olt float %57, 0.000000e+00
  %59 = select i1 %58, float 0.000000e+00, float %57
  %60 = fadd float %50, %7
  %61 = fcmp olt float %60, 0.000000e+00
  %62 = select i1 %61, float 0.000000e+00, float %60
  call void @glShadeModel(i32 noundef 7425) #11
  call void @glBegin(i32 noundef %0) #11
  %63 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  %66 = call float @llvm.fmuladd.f32(float %43, float 0.000000e+00, float %56)
  %67 = call float @llvm.fmuladd.f32(float %48, float 0.000000e+00, float %59)
  %68 = call float @llvm.fmuladd.f32(float %53, float 0.000000e+00, float %62)
  br i1 %65, label %105, label %69

69:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #11
  store float %66, ptr %24, align 4, !tbaa !38
  %70 = getelementptr inbounds [3 x float], ptr %24, i64 0, i64 1
  store float %67, ptr %70, align 4, !tbaa !38
  %71 = getelementptr inbounds [3 x float], ptr %24, i64 0, i64 2
  store float %68, ptr %71, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #11
  %72 = fsub float %3, %5
  call void @glVertex2f(float noundef %72, float noundef %2) #11
  %73 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 1
  %74 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 2
  br label %75

75:                                               ; preds = %69, %75
  %76 = phi i64 [ 0, %69 ], [ %91, %75 ]
  %77 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %76
  %78 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %76, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !38
  %80 = fmul float %39, %79
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #11
  %81 = fsub float 1.000000e+00, %80
  %82 = fmul float %56, %81
  %83 = call float @llvm.fmuladd.f32(float %80, float %43, float %82)
  store float %83, ptr %23, align 4, !tbaa !38
  %84 = fmul float %59, %81
  %85 = call float @llvm.fmuladd.f32(float %80, float %48, float %84)
  store float %85, ptr %73, align 4, !tbaa !38
  %86 = fmul float %62, %81
  %87 = call float @llvm.fmuladd.f32(float %80, float %53, float %86)
  store float %87, ptr %74, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %23) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #11
  %88 = load float, ptr %77, align 8, !tbaa !38
  %89 = fadd float %72, %88
  %90 = fadd float %79, %2
  call void @glVertex2f(float noundef %89, float noundef %90) #11
  %91 = add nuw nsw i64 %76, 1
  %92 = icmp eq i64 %91, 7
  br i1 %92, label %93, label %75, !llvm.loop !48

93:                                               ; preds = %75
  %94 = fmul float %39, %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #11
  %95 = fsub float 1.000000e+00, %94
  %96 = fmul float %95, %56
  %97 = call float @llvm.fmuladd.f32(float %94, float %43, float %96)
  store float %97, ptr %22, align 4, !tbaa !38
  %98 = fmul float %95, %59
  %99 = call float @llvm.fmuladd.f32(float %94, float %48, float %98)
  %100 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 1
  store float %99, ptr %100, align 4, !tbaa !38
  %101 = fmul float %95, %62
  %102 = call float @llvm.fmuladd.f32(float %94, float %53, float %101)
  %103 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 2
  store float %102, ptr %103, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #11
  %104 = fadd float %2, %5
  br label %108

105:                                              ; preds = %38
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #11
  store float %66, ptr %21, align 4, !tbaa !38
  %106 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 1
  store float %67, ptr %106, align 4, !tbaa !38
  %107 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 2
  store float %68, ptr %107, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  br label %108

108:                                              ; preds = %105, %93
  %109 = phi float [ %2, %105 ], [ %104, %93 ]
  call void @glVertex2f(float noundef %3, float noundef %109) #11
  %110 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  %111 = and i32 %110, 2
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %157, label %113

113:                                              ; preds = %108
  %114 = fsub float %27, %5
  %115 = fmul float %114, %39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  %116 = fsub float 1.000000e+00, %115
  %117 = fmul float %116, %56
  %118 = call float @llvm.fmuladd.f32(float %115, float %43, float %117)
  store float %118, ptr %20, align 4, !tbaa !38
  %119 = fmul float %116, %59
  %120 = call float @llvm.fmuladd.f32(float %115, float %48, float %119)
  %121 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 1
  store float %120, ptr %121, align 4, !tbaa !38
  %122 = fmul float %116, %62
  %123 = call float @llvm.fmuladd.f32(float %115, float %53, float %122)
  %124 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 2
  store float %123, ptr %124, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  %125 = fsub float %4, %5
  call void @glVertex2f(float noundef %3, float noundef %125) #11
  %126 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 1
  %127 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 2
  br label %128

128:                                              ; preds = %113, %128
  %129 = phi i64 [ 0, %113 ], [ %145, %128 ]
  %130 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %129
  %131 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %129, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !38
  %133 = fadd float %114, %132
  %134 = fmul float %39, %133
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  %135 = fsub float 1.000000e+00, %134
  %136 = fmul float %56, %135
  %137 = call float @llvm.fmuladd.f32(float %134, float %43, float %136)
  store float %137, ptr %19, align 4, !tbaa !38
  %138 = fmul float %59, %135
  %139 = call float @llvm.fmuladd.f32(float %134, float %48, float %138)
  store float %139, ptr %126, align 4, !tbaa !38
  %140 = fmul float %62, %135
  %141 = call float @llvm.fmuladd.f32(float %134, float %53, float %140)
  store float %141, ptr %127, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  %142 = fsub float %3, %132
  %143 = load float, ptr %130, align 8, !tbaa !38
  %144 = fadd float %125, %143
  call void @glVertex2f(float noundef %142, float noundef %144) #11
  %145 = add nuw nsw i64 %129, 1
  %146 = icmp eq i64 %145, 7
  br i1 %146, label %147, label %128, !llvm.loop !49

147:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #11
  %148 = fmul float %56, 0.000000e+00
  %149 = fadd float %43, %148
  store float %149, ptr %18, align 4, !tbaa !38
  %150 = fmul float %59, 0.000000e+00
  %151 = fadd float %48, %150
  %152 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 1
  store float %151, ptr %152, align 4, !tbaa !38
  %153 = fmul float %62, 0.000000e+00
  %154 = fadd float %53, %153
  %155 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 2
  store float %154, ptr %155, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #11
  %156 = fsub float %3, %5
  br label %166

157:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #11
  %158 = fmul float %56, 0.000000e+00
  %159 = fadd float %43, %158
  store float %159, ptr %17, align 4, !tbaa !38
  %160 = fmul float %59, 0.000000e+00
  %161 = fadd float %48, %160
  %162 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 1
  store float %161, ptr %162, align 4, !tbaa !38
  %163 = fmul float %62, 0.000000e+00
  %164 = fadd float %53, %163
  %165 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 2
  store float %164, ptr %165, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  br label %166

166:                                              ; preds = %157, %147
  %167 = phi float [ %3, %157 ], [ %156, %147 ]
  call void @glVertex2f(float noundef %167, float noundef %4) #11
  %168 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  %171 = fmul float %56, 0.000000e+00
  %172 = fadd float %43, %171
  %173 = fmul float %59, 0.000000e+00
  %174 = fadd float %48, %173
  %175 = fmul float %62, 0.000000e+00
  %176 = fadd float %53, %175
  br i1 %170, label %215, label %177

177:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #11
  store float %172, ptr %16, align 4, !tbaa !38
  %178 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 1
  store float %174, ptr %178, align 4, !tbaa !38
  %179 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 2
  store float %176, ptr %179, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  %180 = fadd float %1, %5
  call void @glVertex2f(float noundef %180, float noundef %4) #11
  %181 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 1
  %182 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  br label %183

183:                                              ; preds = %177, %183
  %184 = phi i64 [ 0, %177 ], [ %200, %183 ]
  %185 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %184
  %186 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %184, i64 1
  %187 = load float, ptr %186, align 4, !tbaa !38
  %188 = fsub float %27, %187
  %189 = fmul float %39, %188
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  %190 = fsub float 1.000000e+00, %189
  %191 = fmul float %56, %190
  %192 = call float @llvm.fmuladd.f32(float %189, float %43, float %191)
  store float %192, ptr %15, align 4, !tbaa !38
  %193 = fmul float %59, %190
  %194 = call float @llvm.fmuladd.f32(float %189, float %48, float %193)
  store float %194, ptr %181, align 4, !tbaa !38
  %195 = fmul float %62, %190
  %196 = call float @llvm.fmuladd.f32(float %189, float %53, float %195)
  store float %196, ptr %182, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  %197 = load float, ptr %185, align 8, !tbaa !38
  %198 = fsub float %180, %197
  %199 = fsub float %4, %187
  call void @glVertex2f(float noundef %198, float noundef %199) #11
  %200 = add nuw nsw i64 %184, 1
  %201 = icmp eq i64 %200, 7
  br i1 %201, label %202, label %183, !llvm.loop !50

202:                                              ; preds = %183
  %203 = fsub float %27, %5
  %204 = fmul float %203, %39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %205 = fsub float 1.000000e+00, %204
  %206 = fmul float %205, %56
  %207 = call float @llvm.fmuladd.f32(float %204, float %43, float %206)
  store float %207, ptr %14, align 4, !tbaa !38
  %208 = fmul float %205, %59
  %209 = call float @llvm.fmuladd.f32(float %204, float %48, float %208)
  %210 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  store float %209, ptr %210, align 4, !tbaa !38
  %211 = fmul float %205, %62
  %212 = call float @llvm.fmuladd.f32(float %204, float %53, float %211)
  %213 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  store float %212, ptr %213, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  %214 = fsub float %4, %5
  br label %218

215:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  store float %172, ptr %13, align 4, !tbaa !38
  %216 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  store float %174, ptr %216, align 4, !tbaa !38
  %217 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  store float %176, ptr %217, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  br label %218

218:                                              ; preds = %215, %202
  %219 = phi float [ %4, %215 ], [ %214, %202 ]
  call void @glVertex2f(float noundef %1, float noundef %219) #11
  %220 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  %221 = and i32 %220, 8
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %263, label %223

223:                                              ; preds = %218
  %224 = fmul float %39, %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %225 = fsub float 1.000000e+00, %224
  %226 = fmul float %225, %56
  %227 = call float @llvm.fmuladd.f32(float %224, float %43, float %226)
  store float %227, ptr %12, align 4, !tbaa !38
  %228 = fmul float %225, %59
  %229 = call float @llvm.fmuladd.f32(float %224, float %48, float %228)
  %230 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  store float %229, ptr %230, align 4, !tbaa !38
  %231 = fmul float %225, %62
  %232 = call float @llvm.fmuladd.f32(float %224, float %53, float %231)
  %233 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  store float %232, ptr %233, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  %234 = fadd float %2, %5
  call void @glVertex2f(float noundef %1, float noundef %234) #11
  %235 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %236 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  br label %237

237:                                              ; preds = %223, %237
  %238 = phi i64 [ 0, %223 ], [ %254, %237 ]
  %239 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %238
  %240 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %238, i64 1
  %241 = load float, ptr %240, align 4, !tbaa !38
  %242 = fsub float %5, %241
  %243 = fmul float %39, %242
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %244 = fsub float 1.000000e+00, %243
  %245 = fmul float %56, %244
  %246 = call float @llvm.fmuladd.f32(float %243, float %43, float %245)
  store float %246, ptr %11, align 4, !tbaa !38
  %247 = fmul float %59, %244
  %248 = call float @llvm.fmuladd.f32(float %243, float %48, float %247)
  store float %248, ptr %235, align 4, !tbaa !38
  %249 = fmul float %62, %244
  %250 = call float @llvm.fmuladd.f32(float %243, float %53, float %249)
  store float %250, ptr %236, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  %251 = fadd float %241, %1
  %252 = load float, ptr %239, align 8, !tbaa !38
  %253 = fsub float %234, %252
  call void @glVertex2f(float noundef %251, float noundef %253) #11
  %254 = add nuw nsw i64 %238, 1
  %255 = icmp eq i64 %254, 7
  br i1 %255, label %256, label %237, !llvm.loop !51

256:                                              ; preds = %237
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %257 = call float @llvm.fmuladd.f32(float %43, float 0.000000e+00, float %56)
  store float %257, ptr %10, align 4, !tbaa !38
  %258 = call float @llvm.fmuladd.f32(float %48, float 0.000000e+00, float %59)
  %259 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  store float %258, ptr %259, align 4, !tbaa !38
  %260 = call float @llvm.fmuladd.f32(float %53, float 0.000000e+00, float %62)
  %261 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float %260, ptr %261, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  %262 = fadd float %1, %5
  br label %269

263:                                              ; preds = %218
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  %264 = call float @llvm.fmuladd.f32(float %43, float 0.000000e+00, float %56)
  store float %264, ptr %9, align 4, !tbaa !38
  %265 = call float @llvm.fmuladd.f32(float %48, float 0.000000e+00, float %59)
  %266 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float %265, ptr %266, align 4, !tbaa !38
  %267 = call float @llvm.fmuladd.f32(float %53, float 0.000000e+00, float %62)
  %268 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float %267, ptr %268, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  br label %269

269:                                              ; preds = %263, %256
  %270 = phi float [ %1, %263 ], [ %262, %256 ]
  call void @glVertex2f(float noundef %270, float noundef %2) #11
  call void @glEnd() #11
  call void @glShadeModel(i32 noundef 7424) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %25) #11
  ret void
}

declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @glShadeModel(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @uiDrawBoxVerticalShade(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #2 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = alloca [7 x [2 x float]], align 16
  %26 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %25) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %25, ptr noundef nonnull align 16 dereferenceable(56) @__const.uiDrawBoxVerticalShade.vec, i64 56, i1 false)
  %27 = fsub float %3, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #11
  br label %28

28:                                               ; preds = %8, %28
  %29 = phi i64 [ 0, %8 ], [ %36, %28 ]
  %30 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %29
  %31 = load float, ptr %30, align 8, !tbaa !38
  %32 = fmul float %31, %5
  store float %32, ptr %30, align 8, !tbaa !38
  %33 = getelementptr inbounds float, ptr %30, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !38
  %35 = fmul float %34, %5
  store float %35, ptr %33, align 4, !tbaa !38
  %36 = add nuw nsw i64 %29, 1
  %37 = icmp eq i64 %36, 7
  br i1 %37, label %38, label %28, !llvm.loop !52

38:                                               ; preds = %28
  %39 = fdiv float 1.000000e+00, %27
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %26) #11
  %40 = load float, ptr %26, align 16, !tbaa !38
  %41 = fadd float %40, %6
  %42 = fcmp ogt float %41, 1.000000e+00
  %43 = select i1 %42, float 1.000000e+00, float %41
  %44 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !38
  %46 = fadd float %45, %6
  %47 = fcmp ogt float %46, 1.000000e+00
  %48 = select i1 %47, float 1.000000e+00, float %46
  %49 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 2
  %50 = load float, ptr %49, align 8, !tbaa !38
  %51 = fadd float %50, %6
  %52 = fcmp ogt float %51, 1.000000e+00
  %53 = select i1 %52, float 1.000000e+00, float %51
  %54 = fadd float %40, %7
  %55 = fcmp olt float %54, 0.000000e+00
  %56 = select i1 %55, float 0.000000e+00, float %54
  %57 = fadd float %45, %7
  %58 = fcmp olt float %57, 0.000000e+00
  %59 = select i1 %58, float 0.000000e+00, float %57
  %60 = fadd float %50, %7
  %61 = fcmp olt float %60, 0.000000e+00
  %62 = select i1 %61, float 0.000000e+00, float %60
  call void @glShadeModel(i32 noundef 7425) #11
  call void @glBegin(i32 noundef %0) #11
  %63 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  %66 = call float @llvm.fmuladd.f32(float %43, float 0.000000e+00, float %56)
  %67 = call float @llvm.fmuladd.f32(float %48, float 0.000000e+00, float %59)
  %68 = call float @llvm.fmuladd.f32(float %53, float 0.000000e+00, float %62)
  br i1 %65, label %105, label %69

69:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #11
  store float %66, ptr %24, align 4, !tbaa !38
  %70 = getelementptr inbounds [3 x float], ptr %24, i64 0, i64 1
  store float %67, ptr %70, align 4, !tbaa !38
  %71 = getelementptr inbounds [3 x float], ptr %24, i64 0, i64 2
  store float %68, ptr %71, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #11
  %72 = fsub float %3, %5
  call void @glVertex2f(float noundef %72, float noundef %2) #11
  %73 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 1
  %74 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 2
  br label %75

75:                                               ; preds = %69, %75
  %76 = phi i64 [ 0, %69 ], [ %91, %75 ]
  %77 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %76
  %78 = load float, ptr %77, align 8, !tbaa !38
  %79 = fmul float %39, %78
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #11
  %80 = fsub float 1.000000e+00, %79
  %81 = fmul float %56, %80
  %82 = call float @llvm.fmuladd.f32(float %79, float %43, float %81)
  store float %82, ptr %23, align 4, !tbaa !38
  %83 = fmul float %59, %80
  %84 = call float @llvm.fmuladd.f32(float %79, float %48, float %83)
  store float %84, ptr %73, align 4, !tbaa !38
  %85 = fmul float %62, %80
  %86 = call float @llvm.fmuladd.f32(float %79, float %53, float %85)
  store float %86, ptr %74, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %23) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #11
  %87 = fadd float %72, %78
  %88 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %76, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !38
  %90 = fadd float %89, %2
  call void @glVertex2f(float noundef %87, float noundef %90) #11
  %91 = add nuw nsw i64 %76, 1
  %92 = icmp eq i64 %91, 7
  br i1 %92, label %93, label %75, !llvm.loop !53

93:                                               ; preds = %75
  %94 = fmul float %39, %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #11
  %95 = fsub float 1.000000e+00, %94
  %96 = fmul float %95, %56
  %97 = call float @llvm.fmuladd.f32(float %94, float %43, float %96)
  store float %97, ptr %22, align 4, !tbaa !38
  %98 = fmul float %95, %59
  %99 = call float @llvm.fmuladd.f32(float %94, float %48, float %98)
  %100 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 1
  store float %99, ptr %100, align 4, !tbaa !38
  %101 = fmul float %95, %62
  %102 = call float @llvm.fmuladd.f32(float %94, float %53, float %101)
  %103 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 2
  store float %102, ptr %103, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #11
  %104 = fadd float %2, %5
  br label %108

105:                                              ; preds = %38
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #11
  store float %66, ptr %21, align 4, !tbaa !38
  %106 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 1
  store float %67, ptr %106, align 4, !tbaa !38
  %107 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 2
  store float %68, ptr %107, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  br label %108

108:                                              ; preds = %105, %93
  %109 = phi float [ %2, %105 ], [ %104, %93 ]
  call void @glVertex2f(float noundef %3, float noundef %109) #11
  %110 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  %111 = and i32 %110, 2
  %112 = icmp eq i32 %111, 0
  %113 = call float @llvm.fmuladd.f32(float %43, float 0.000000e+00, float %56)
  %114 = call float @llvm.fmuladd.f32(float %48, float 0.000000e+00, float %59)
  %115 = call float @llvm.fmuladd.f32(float %53, float 0.000000e+00, float %62)
  br i1 %112, label %155, label %116

116:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  store float %113, ptr %20, align 4, !tbaa !38
  %117 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 1
  store float %114, ptr %117, align 4, !tbaa !38
  %118 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 2
  store float %115, ptr %118, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  %119 = fsub float %4, %5
  call void @glVertex2f(float noundef %3, float noundef %119) #11
  %120 = fsub float %27, %5
  %121 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 1
  %122 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 2
  br label %123

123:                                              ; preds = %116, %123
  %124 = phi i64 [ 0, %116 ], [ %140, %123 ]
  %125 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %124
  %126 = load float, ptr %125, align 8, !tbaa !38
  %127 = fsub float %120, %126
  %128 = fmul float %39, %127
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  %129 = fsub float 1.000000e+00, %128
  %130 = fmul float %56, %129
  %131 = call float @llvm.fmuladd.f32(float %128, float %43, float %130)
  store float %131, ptr %19, align 4, !tbaa !38
  %132 = fmul float %59, %129
  %133 = call float @llvm.fmuladd.f32(float %128, float %48, float %132)
  store float %133, ptr %121, align 4, !tbaa !38
  %134 = fmul float %62, %129
  %135 = call float @llvm.fmuladd.f32(float %128, float %53, float %134)
  store float %135, ptr %122, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  %136 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %124, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !38
  %138 = fsub float %3, %137
  %139 = fadd float %119, %126
  call void @glVertex2f(float noundef %138, float noundef %139) #11
  %140 = add nuw nsw i64 %124, 1
  %141 = icmp eq i64 %140, 7
  br i1 %141, label %142, label %123, !llvm.loop !54

142:                                              ; preds = %123
  %143 = fsub float %27, %5
  %144 = fmul float %39, %143
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #11
  %145 = fsub float 1.000000e+00, %144
  %146 = fmul float %145, %56
  %147 = call float @llvm.fmuladd.f32(float %144, float %43, float %146)
  store float %147, ptr %18, align 4, !tbaa !38
  %148 = fmul float %145, %59
  %149 = call float @llvm.fmuladd.f32(float %144, float %48, float %148)
  %150 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 1
  store float %149, ptr %150, align 4, !tbaa !38
  %151 = fmul float %145, %62
  %152 = call float @llvm.fmuladd.f32(float %144, float %53, float %151)
  %153 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 2
  store float %152, ptr %153, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #11
  %154 = fsub float %3, %5
  br label %158

155:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #11
  store float %113, ptr %17, align 4, !tbaa !38
  %156 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 1
  store float %114, ptr %156, align 4, !tbaa !38
  %157 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 2
  store float %115, ptr %157, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  br label %158

158:                                              ; preds = %155, %142
  %159 = phi float [ %3, %155 ], [ %154, %142 ]
  call void @glVertex2f(float noundef %159, float noundef %4) #11
  %160 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %207, label %163

163:                                              ; preds = %158
  %164 = fsub float %27, %5
  %165 = fmul float %39, %164
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #11
  %166 = fsub float 1.000000e+00, %165
  %167 = fmul float %166, %56
  %168 = call float @llvm.fmuladd.f32(float %165, float %43, float %167)
  store float %168, ptr %16, align 4, !tbaa !38
  %169 = fmul float %166, %59
  %170 = call float @llvm.fmuladd.f32(float %165, float %48, float %169)
  %171 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 1
  store float %170, ptr %171, align 4, !tbaa !38
  %172 = fmul float %166, %62
  %173 = call float @llvm.fmuladd.f32(float %165, float %53, float %172)
  %174 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 2
  store float %173, ptr %174, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  %175 = fadd float %1, %5
  call void @glVertex2f(float noundef %175, float noundef %4) #11
  %176 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 1
  %177 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  br label %178

178:                                              ; preds = %163, %178
  %179 = phi i64 [ 0, %163 ], [ %195, %178 ]
  %180 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %179
  %181 = load float, ptr %180, align 8, !tbaa !38
  %182 = fadd float %164, %181
  %183 = fmul float %39, %182
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  %184 = fsub float 1.000000e+00, %183
  %185 = fmul float %56, %184
  %186 = call float @llvm.fmuladd.f32(float %183, float %43, float %185)
  store float %186, ptr %15, align 4, !tbaa !38
  %187 = fmul float %59, %184
  %188 = call float @llvm.fmuladd.f32(float %183, float %48, float %187)
  store float %188, ptr %176, align 4, !tbaa !38
  %189 = fmul float %62, %184
  %190 = call float @llvm.fmuladd.f32(float %183, float %53, float %189)
  store float %190, ptr %177, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  %191 = fsub float %175, %181
  %192 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %179, i64 1
  %193 = load float, ptr %192, align 4, !tbaa !38
  %194 = fsub float %4, %193
  call void @glVertex2f(float noundef %191, float noundef %194) #11
  %195 = add nuw nsw i64 %179, 1
  %196 = icmp eq i64 %195, 7
  br i1 %196, label %197, label %178, !llvm.loop !55

197:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %198 = fmul float %56, 0.000000e+00
  %199 = fadd float %43, %198
  store float %199, ptr %14, align 4, !tbaa !38
  %200 = fmul float %59, 0.000000e+00
  %201 = fadd float %48, %200
  %202 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  store float %201, ptr %202, align 4, !tbaa !38
  %203 = fmul float %62, 0.000000e+00
  %204 = fadd float %53, %203
  %205 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  store float %204, ptr %205, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  %206 = fsub float %4, %5
  br label %216

207:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  %208 = fmul float %56, 0.000000e+00
  %209 = fadd float %43, %208
  store float %209, ptr %13, align 4, !tbaa !38
  %210 = fmul float %59, 0.000000e+00
  %211 = fadd float %48, %210
  %212 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  store float %211, ptr %212, align 4, !tbaa !38
  %213 = fmul float %62, 0.000000e+00
  %214 = fadd float %53, %213
  %215 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  store float %214, ptr %215, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  br label %216

216:                                              ; preds = %207, %197
  %217 = phi float [ %4, %207 ], [ %206, %197 ]
  call void @glVertex2f(float noundef %1, float noundef %217) #11
  %218 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  %219 = and i32 %218, 8
  %220 = icmp eq i32 %219, 0
  %221 = fmul float %56, 0.000000e+00
  %222 = fadd float %43, %221
  %223 = fmul float %59, 0.000000e+00
  %224 = fadd float %48, %223
  %225 = fmul float %62, 0.000000e+00
  %226 = fadd float %53, %225
  br i1 %220, label %255, label %227

227:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  store float %222, ptr %12, align 4, !tbaa !38
  %228 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  store float %224, ptr %228, align 4, !tbaa !38
  %229 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  store float %226, ptr %229, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  %230 = fadd float %2, %5
  call void @glVertex2f(float noundef %1, float noundef %230) #11
  %231 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %232 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  br label %233

233:                                              ; preds = %227, %233
  %234 = phi i64 [ 0, %227 ], [ %249, %233 ]
  %235 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %234
  %236 = load float, ptr %235, align 8, !tbaa !38
  %237 = fmul float %39, %236
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %238 = fsub float 1.000000e+00, %237
  %239 = fmul float %56, %238
  %240 = call float @llvm.fmuladd.f32(float %237, float %43, float %239)
  store float %240, ptr %11, align 4, !tbaa !38
  %241 = fmul float %59, %238
  %242 = call float @llvm.fmuladd.f32(float %237, float %48, float %241)
  store float %242, ptr %231, align 4, !tbaa !38
  %243 = fmul float %62, %238
  %244 = call float @llvm.fmuladd.f32(float %237, float %53, float %243)
  store float %244, ptr %232, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  %245 = getelementptr inbounds [7 x [2 x float]], ptr %25, i64 0, i64 %234, i64 1
  %246 = load float, ptr %245, align 4, !tbaa !38
  %247 = fadd float %246, %1
  %248 = fsub float %230, %236
  call void @glVertex2f(float noundef %247, float noundef %248) #11
  %249 = add nuw nsw i64 %234, 1
  %250 = icmp eq i64 %249, 7
  br i1 %250, label %251, label %233, !llvm.loop !56

251:                                              ; preds = %233
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  store float %222, ptr %10, align 4, !tbaa !38
  %252 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  store float %224, ptr %252, align 4, !tbaa !38
  %253 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float %226, ptr %253, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  %254 = fadd float %1, %5
  br label %258

255:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  store float %222, ptr %9, align 4, !tbaa !38
  %256 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float %224, ptr %256, align 4, !tbaa !38
  %257 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float %226, ptr %257, align 4, !tbaa !38
  call void @glColor3fv(ptr noundef nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  br label %258

258:                                              ; preds = %255, %251
  %259 = phi float [ %1, %255 ], [ %254, %251 ]
  call void @glVertex2f(float noundef %259, float noundef %2) #11
  call void @glEnd() #11
  call void @glShadeModel(i32 noundef 7424) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %25) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiRoundRect(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #2 {
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %7 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %6) #11
  %11 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  store float 5.000000e-01, ptr %11, align 4, !tbaa !38
  call void @glColor4fv(ptr noundef nonnull %6) #11
  call void @glEnable(i32 noundef 3042) #11
  br label %12

12:                                               ; preds = %10, %5
  call void @glEnable(i32 noundef 2848) #11
  call void @glEnable(i32 noundef 3042) #11
  call void @uiDrawBox(i32 noundef 2, float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4)
  call void @glDisable(i32 noundef 3042) #11
  call void @glDisable(i32 noundef 2848) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret void
}

declare void @glColor4fv(ptr noundef) local_unnamed_addr #5

declare void @glEnable(i32 noundef) local_unnamed_addr #5

declare void @glDisable(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @uiRoundBox(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #2 {
  %6 = load i32, ptr @roundboxtype, align 4, !tbaa !34
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 16
  tail call void @ui_draw_anti_roundbox(i32 noundef 9, float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i8 noundef zeroext %8) #11
  ret void
}

declare void @ui_draw_anti_roundbox(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ui_draw_but_IMAGE(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_but_HISTOGRAM(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca [4 x i32], align 16
  %6 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.Histogram, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !64
  %10 = getelementptr inbounds %struct.Histogram, ptr %7, i64 0, i32 10
  %11 = load i16, ptr %10, align 2, !tbaa !66
  %12 = trunc i16 %11 to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %13 = load i32, ptr %3, align 4, !tbaa !67
  %14 = sitofp i32 %13 to float
  %15 = fadd float %14, 1.000000e+00
  %16 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !69
  %18 = sitofp i32 %17 to float
  %19 = fadd float %18, -1.000000e+00
  %20 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !70
  %22 = sitofp i32 %21 to float
  %23 = fadd float %22, 1.000000e+00
  %24 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !71
  %26 = sitofp i32 %25 to float
  %27 = fadd float %26, -1.000000e+00
  %28 = fsub float %19, %15
  %29 = fsub float %27, %23
  %30 = getelementptr inbounds %struct.Histogram, ptr %7, i64 0, i32 8
  %31 = load float, ptr %30, align 4, !tbaa !72
  %32 = fmul float %31, %29
  tail call void @glEnable(i32 noundef 3042) #11
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD3333340000000) #11
  store i32 15, ptr @roundboxtype, align 4, !tbaa !34
  %33 = fadd float %15, -1.000000e+00
  %34 = fadd float %23, -1.000000e+00
  %35 = fadd float %19, 1.000000e+00
  %36 = fadd float %27, 1.000000e+00
  tail call void @uiDrawBox(i32 noundef 9, float noundef %33, float noundef %34, float noundef %35, float noundef %36, float noundef 3.000000e+00)
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %5) #11
  %37 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !73
  %39 = sitofp i32 %38 to float
  %40 = fadd float %33, %39
  %41 = fptosi float %40 to i32
  %42 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !77
  %44 = sitofp i32 %43 to float
  %45 = fadd float %34, %44
  %46 = fptosi float %45 to i32
  %47 = fsub float %35, %33
  %48 = fptosi float %47 to i32
  %49 = fsub float %36, %34
  %50 = fptosi float %49 to i32
  call void @glScissor(i32 noundef %41, i32 noundef %46, i32 noundef %48, i32 noundef %50) #11
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FB47AE140000000) #11
  br label %51

51:                                               ; preds = %4, %57
  %52 = phi i32 [ 1, %4 ], [ %60, %57 ]
  %53 = sitofp i32 %52 to float
  %54 = fmul float %53, 2.500000e-01
  %55 = icmp eq i32 %52, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 5.000000e-01) #11
  br label %57

57:                                               ; preds = %56, %51
  %58 = call float @llvm.fmuladd.f32(float %54, float %32, float %23)
  call void @fdrawline(float noundef %15, float noundef %58, float noundef %19, float noundef %58) #11
  %59 = call float @llvm.fmuladd.f32(float %54, float %28, float %15)
  call void @fdrawline(float noundef %59, float noundef %23, float noundef %59, float noundef %27) #11
  %60 = add nuw nsw i32 %52, 1
  %61 = icmp eq i32 %60, 5
  br i1 %61, label %62, label %51, !llvm.loop !78

62:                                               ; preds = %57
  %63 = and i8 %12, 1
  %64 = getelementptr inbounds %struct.Histogram, ptr %7, i64 0, i32 9
  %65 = load i16, ptr %64, align 4, !tbaa !79
  switch i16 %65, label %72 [
    i16 0, label %66
    i16 5, label %68
    i16 1, label %70
    i16 2, label %70
  ]

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.Histogram, ptr %7, i64 0, i32 2
  call fastcc void @histogram_draw_one(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %15, float noundef %23, float noundef %28, float noundef %32, ptr noundef nonnull %67, i32 noundef %9, i8 noundef zeroext %63)
  br label %80

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.Histogram, ptr %7, i64 0, i32 6
  call fastcc void @histogram_draw_one(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %15, float noundef %23, float noundef %28, float noundef %32, ptr noundef nonnull %69, i32 noundef %9, i8 noundef zeroext %63)
  br label %80

70:                                               ; preds = %62, %62
  %71 = getelementptr inbounds %struct.Histogram, ptr %7, i64 0, i32 3
  call fastcc void @histogram_draw_one(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %15, float noundef %23, float noundef %28, float noundef %32, ptr noundef nonnull %71, i32 noundef %9, i8 noundef zeroext %63)
  br label %72

72:                                               ; preds = %62, %70
  %73 = load i16, ptr %64, align 4, !tbaa !79
  switch i16 %73, label %76 [
    i16 1, label %74
    i16 3, label %74
  ]

74:                                               ; preds = %72, %72
  %75 = getelementptr inbounds %struct.Histogram, ptr %7, i64 0, i32 4
  call fastcc void @histogram_draw_one(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef %15, float noundef %23, float noundef %28, float noundef %32, ptr noundef nonnull %75, i32 noundef %9, i8 noundef zeroext %63)
  br label %76

76:                                               ; preds = %72, %74
  %77 = load i16, ptr %64, align 4, !tbaa !79
  switch i16 %77, label %80 [
    i16 1, label %78
    i16 4, label %78
  ]

78:                                               ; preds = %76, %76
  %79 = getelementptr inbounds %struct.Histogram, ptr %7, i64 0, i32 5
  call fastcc void @histogram_draw_one(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef %15, float noundef %23, float noundef %28, float noundef %32, ptr noundef nonnull %79, i32 noundef %9, i8 noundef zeroext %63)
  br label %80

80:                                               ; preds = %76, %68, %78, %66
  %81 = load i32, ptr %5, align 16, !tbaa !34
  %82 = getelementptr inbounds i32, ptr %5, i64 1
  %83 = load i32, ptr %82, align 4, !tbaa !34
  %84 = getelementptr inbounds i32, ptr %5, i64 2
  %85 = load i32, ptr %84, align 8, !tbaa !34
  %86 = getelementptr inbounds i32, ptr %5, i64 3
  %87 = load i32, ptr %86, align 4, !tbaa !34
  call void @glScissor(i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87) #11
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #11
  store i32 15, ptr @roundboxtype, align 4, !tbaa !34
  call void @uiDrawBox(i32 noundef 2, float noundef %33, float noundef %23, float noundef %35, float noundef %36, float noundef 3.000000e+00)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret void
}

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @glScissor(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nounwind uwtable
define internal fastcc void @histogram_draw_one(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8, i8 noundef zeroext %9) unnamed_addr #2 {
  %11 = icmp eq i8 %9, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %10
  tail call void @glLineWidth(float noundef 1.500000e+00) #11
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 1) #11
  tail call void @glColor4f(float noundef %0, float noundef %1, float noundef %2, float noundef 7.500000e-01) #11
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 1) #11
  tail call void @glEnable(i32 noundef 2848) #11
  tail call void @glBegin(i32 noundef 3) #11
  %13 = icmp sgt i32 %8, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %12
  %15 = sitofp i32 %8 to float
  %16 = fdiv float %5, %15
  %17 = zext nneg i32 %8 to i64
  br label %18

18:                                               ; preds = %14, %18
  %19 = phi i64 [ 0, %14 ], [ %26, %18 ]
  %20 = trunc i64 %19 to i32
  %21 = sitofp i32 %20 to float
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %16, float %3)
  %23 = getelementptr inbounds float, ptr %7, i64 %19
  %24 = load float, ptr %23, align 4, !tbaa !38
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %6, float %4)
  tail call void @glVertex2f(float noundef %22, float noundef %25) #11
  %26 = add nuw nsw i64 %19, 1
  %27 = icmp eq i64 %26, %17
  br i1 %27, label %28, label %18, !llvm.loop !80

28:                                               ; preds = %18, %12
  tail call void @glEnd() #11
  tail call void @glDisable(i32 noundef 2848) #11
  tail call void @glLineWidth(float noundef 1.000000e+00) #11
  br label %64

29:                                               ; preds = %10
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 1) #11
  tail call void @glColor4f(float noundef %0, float noundef %1, float noundef %2, float noundef 7.500000e-01) #11
  tail call void @glShadeModel(i32 noundef 7424) #11
  tail call void @glBegin(i32 noundef 8) #11
  tail call void @glVertex2f(float noundef %3, float noundef %4) #11
  %30 = load float, ptr %7, align 4, !tbaa !38
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %6, float %4)
  tail call void @glVertex2f(float noundef %3, float noundef %31) #11
  %32 = icmp sgt i32 %8, 1
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = sitofp i32 %8 to float
  %35 = fdiv float %5, %34
  %36 = zext nneg i32 %8 to i64
  br label %37

37:                                               ; preds = %33, %37
  %38 = phi i64 [ 1, %33 ], [ %45, %37 ]
  %39 = trunc i64 %38 to i32
  %40 = sitofp i32 %39 to float
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %35, float %3)
  %42 = getelementptr inbounds float, ptr %7, i64 %38
  %43 = load float, ptr %42, align 4, !tbaa !38
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %6, float %4)
  tail call void @glVertex2f(float noundef %41, float noundef %44) #11
  tail call void @glVertex2f(float noundef %41, float noundef %4) #11
  %45 = add nuw nsw i64 %38, 1
  %46 = icmp eq i64 %45, %36
  br i1 %46, label %47, label %37, !llvm.loop !81

47:                                               ; preds = %37, %29
  tail call void @glEnd() #11
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 2.500000e-01) #11
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  tail call void @glEnable(i32 noundef 2848) #11
  tail call void @glBegin(i32 noundef 3) #11
  %48 = icmp sgt i32 %8, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %47
  %50 = sitofp i32 %8 to float
  %51 = fdiv float %5, %50
  %52 = zext nneg i32 %8 to i64
  br label %53

53:                                               ; preds = %49, %53
  %54 = phi i64 [ 0, %49 ], [ %61, %53 ]
  %55 = trunc i64 %54 to i32
  %56 = sitofp i32 %55 to float
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %51, float %3)
  %58 = getelementptr inbounds float, ptr %7, i64 %54
  %59 = load float, ptr %58, align 4, !tbaa !38
  %60 = tail call float @llvm.fmuladd.f32(float %59, float %6, float %4)
  tail call void @glVertex2f(float noundef %57, float noundef %60) #11
  %61 = add nuw nsw i64 %54, 1
  %62 = icmp eq i64 %61, %52
  br i1 %62, label %63, label %53, !llvm.loop !82

63:                                               ; preds = %53, %47
  tail call void @glEnd() #11
  tail call void @glDisable(i32 noundef 2848) #11
  br label %64

64:                                               ; preds = %63, %28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_but_WAVEFORM(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca [4 x i32], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [4 x i8], align 1
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %7, i8 0, i64 36, i1 false)
  store float 1.000000e+00, ptr %7, align 16
  %13 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 1.000000e+00, ptr %13, align 8
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 1
  store float 1.000000e+00, ptr %14, align 4
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 1, i64 1
  store float 1.000000e+00, ptr %15, align 16
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 1
  store float 1.000000e+00, ptr %16, align 4
  %17 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 2
  store float 1.000000e+00, ptr %17, align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #11
  %18 = icmp eq ptr %12, null
  br i1 %18, label %232, label %19

19:                                               ; preds = %4
  %20 = load i32, ptr %3, align 4, !tbaa !67
  %21 = sitofp i32 %20 to float
  %22 = fadd float %21, 1.000000e+00
  %23 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !69
  %25 = sitofp i32 %24 to float
  %26 = fadd float %25, -1.000000e+00
  %27 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !70
  %29 = sitofp i32 %28 to float
  %30 = fadd float %29, 1.000000e+00
  %31 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !71
  %33 = sitofp i32 %32 to float
  %34 = fadd float %33, -1.000000e+00
  %35 = getelementptr inbounds %struct.Scopes, ptr %12, i64 0, i32 6
  %36 = load float, ptr %35, align 8, !tbaa !83
  %37 = fcmp olt float %36, 5.000000e-01
  br i1 %37, label %38, label %39

38:                                               ; preds = %19
  store float 0x3FEF5C2900000000, ptr %35, align 8, !tbaa !83
  br label %39

39:                                               ; preds = %38, %19
  %40 = fsub float %26, %22
  %41 = fsub float %34, %30
  %42 = load float, ptr %35, align 8, !tbaa !83
  %43 = fmul float %41, %42
  %44 = fsub float %41, %43
  %45 = fmul float %44, 5.000000e-01
  %46 = fadd float %30, %45
  %47 = getelementptr inbounds %struct.Scopes, ptr %12, i64 0, i32 5
  %48 = load float, ptr %47, align 4, !tbaa !85
  %49 = fmul float %48, %48
  call void @unit_m3(ptr noundef nonnull %6) #11
  br label %50

50:                                               ; preds = %39, %64
  %51 = phi i64 [ 0, %39 ], [ %65, %64 ]
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi i64 [ 0, %50 ], [ %62, %52 ]
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 %51, i64 %53
  %55 = load float, ptr %54, align 4, !tbaa !38
  %56 = fmul float %49, %55
  %57 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 %51, i64 %53
  store float %56, ptr %57, align 4, !tbaa !38
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 %51, i64 %53
  %59 = load float, ptr %58, align 4, !tbaa !38
  %60 = fmul float %49, %59
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 %51, i64 %53
  store float %60, ptr %61, align 4, !tbaa !38
  %62 = add nuw nsw i64 %53, 1
  %63 = icmp eq i64 %62, 3
  br i1 %63, label %64, label %52, !llvm.loop !86

64:                                               ; preds = %52
  %65 = add nuw nsw i64 %51, 1
  %66 = icmp eq i64 %65, 3
  br i1 %66, label %67, label %50, !llvm.loop !87

67:                                               ; preds = %64
  %68 = fadd float %40, -7.000000e+00
  call void @glEnable(i32 noundef 3042) #11
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD3333340000000) #11
  store i32 15, ptr @roundboxtype, align 4, !tbaa !34
  %69 = fadd float %22, -1.000000e+00
  %70 = fadd float %30, -1.000000e+00
  %71 = fadd float %26, 1.000000e+00
  %72 = fadd float %34, 1.000000e+00
  call void @uiDrawBox(i32 noundef 9, float noundef %69, float noundef %70, float noundef %71, float noundef %72, float noundef 3.000000e+00)
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %5) #11
  %73 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %74 = load i32, ptr %73, align 8, !tbaa !73
  %75 = sitofp i32 %74 to float
  %76 = fadd float %69, %75
  %77 = fptosi float %76 to i32
  %78 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !77
  %80 = sitofp i32 %79 to float
  %81 = fadd float %70, %80
  %82 = fptosi float %81 to i32
  %83 = fsub float %71, %69
  %84 = fptosi float %83 to i32
  %85 = fsub float %72, %70
  %86 = fptosi float %85 to i32
  call void @glScissor(i32 noundef %77, i32 noundef %82, i32 noundef %84, i32 noundef %86) #11
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FB47AE140000000) #11
  %87 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  %88 = fadd float %22, 2.200000e+01
  %89 = fadd float %22, 1.000000e+00
  %90 = fadd float %46, -5.000000e+00
  br label %91

91:                                               ; preds = %67, %91
  %92 = phi i32 [ 0, %67 ], [ %99, %91 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %93 = mul nuw nsw i32 %92, 20
  %94 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %10, i64 noundef 4, ptr noundef nonnull @.str, i32 noundef %93) #11
  store i8 0, ptr %87, align 1, !tbaa !88
  %95 = sitofp i32 %92 to float
  %96 = fdiv float %95, 5.000000e+00
  %97 = call float @llvm.fmuladd.f32(float %96, float %43, float %46)
  call void @fdrawline(float noundef %88, float noundef %97, float noundef %71, float noundef %97) #11
  %98 = call float @llvm.fmuladd.f32(float %96, float %43, float %90)
  call void @BLF_draw_default(float noundef %89, float noundef %98, float noundef 0.000000e+00, ptr noundef nonnull %10, i64 noundef 3) #11
  call void @glEnable(i32 noundef 3042) #11
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  %99 = add nuw nsw i32 %92, 1
  %100 = icmp eq i32 %99, 6
  br i1 %100, label %101, label %91, !llvm.loop !89

101:                                              ; preds = %91
  %102 = fdiv float %68, 3.000000e+00
  %103 = getelementptr inbounds %struct.Scopes, ptr %12, i64 0, i32 4
  %104 = load i32, ptr %103, align 8, !tbaa !90
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %101, %106
  %107 = phi i32 [ %110, %106 ], [ 1, %101 ]
  %108 = sitofp i32 %107 to float
  %109 = call float @llvm.fmuladd.f32(float %108, float %102, float %22)
  call void @fdrawline(float noundef %109, float noundef %30, float noundef %109, float noundef %34) #11
  %110 = add nuw nsw i32 %107, 1
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %112, label %106, !llvm.loop !91

112:                                              ; preds = %106, %101
  %113 = fadd float %22, %68
  call void @fdrawline(float noundef %113, float noundef %30, float noundef %113, float noundef %34) #11
  call void @glColor4f(float noundef 1.000000e+00, float noundef 0x3FD99999A0000000, float noundef 0.000000e+00, float noundef 0x3FC99999A0000000) #11
  %114 = load i32, ptr %103, align 8, !tbaa !90
  %115 = and i32 %114, -2
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %130

117:                                              ; preds = %112
  %118 = fadd float %22, 2.200000e+01
  %119 = fmul float %43, 1.600000e+01
  %120 = fdiv float %119, 2.550000e+02
  %121 = fadd float %120, %46
  call void @fdrawline(float noundef %118, float noundef %121, float noundef %71, float noundef %121) #11
  %122 = fmul float %43, 2.350000e+02
  %123 = fdiv float %122, 2.550000e+02
  %124 = fadd float %123, %46
  %125 = fadd float %22, %102
  call void @fdrawline(float noundef %118, float noundef %124, float noundef %125, float noundef %124) #11
  %126 = call float @llvm.fmuladd.f32(float %102, float 3.000000e+00, float %22)
  call void @fdrawline(float noundef %126, float noundef %124, float noundef %71, float noundef %124) #11
  %127 = fmul float %43, 2.400000e+02
  %128 = fdiv float %127, 2.550000e+02
  %129 = fadd float %128, %46
  call void @fdrawline(float noundef %125, float noundef %129, float noundef %71, float noundef %129) #11
  br label %130

130:                                              ; preds = %112, %117
  %131 = load i32, ptr %103, align 8, !tbaa !90
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call float @llvm.fmuladd.f32(float %43, float 0x3FB3333340000000, float %46)
  call void @fdrawline(float noundef %22, float noundef %134, float noundef %71, float noundef %134) #11
  br label %135

135:                                              ; preds = %133, %130
  %136 = load i32, ptr %12, align 8, !tbaa !92
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %224, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.Scopes, ptr %12, i64 0, i32 12
  %140 = load ptr, ptr %139, align 8, !tbaa !93
  %141 = icmp eq ptr %140, null
  br i1 %141, label %224, label %142

142:                                              ; preds = %138
  call void @glBlendFunc(i32 noundef 1, i32 noundef 1) #11
  call void @glColor3f(float noundef %49, float noundef %49, float noundef %49) #11
  %143 = load i32, ptr %103, align 8, !tbaa !90
  switch i32 %143, label %224 [
    i32 0, label %144
    i32 1, label %167
    i32 2, label %167
    i32 3, label %167
    i32 4, label %167
  ]

144:                                              ; preds = %142
  call void @glBlendFunc(i32 noundef 1, i32 noundef 1) #11
  call void @glPushMatrix() #11
  call void @glEnableClientState(i32 noundef 32884) #11
  call void @glTranslatef(float noundef %22, float noundef %46, float noundef 0.000000e+00) #11
  call void @glScalef(float noundef %68, float noundef %43, float noundef 0.000000e+00) #11
  %145 = load ptr, ptr %139, align 8, !tbaa !93
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %145) #11
  %146 = getelementptr inbounds %struct.Scopes, ptr %12, i64 0, i32 16
  %147 = load i32, ptr %146, align 8, !tbaa !94
  call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %147) #11
  call void @glDisableClientState(i32 noundef 32884) #11
  call void @glPopMatrix() #11
  call void @glColor3f(float noundef 5.000000e-01, float noundef 5.000000e-01, float noundef 5.000000e-01) #11
  %148 = getelementptr inbounds %struct.Scopes, ptr %12, i64 0, i32 10
  %149 = load float, ptr %148, align 8, !tbaa !38
  %150 = call float @llvm.fmuladd.f32(float %149, float %43, float %46)
  %151 = getelementptr inbounds %struct.Scopes, ptr %12, i64 0, i32 10, i64 0, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !38
  %153 = call float @llvm.fmuladd.f32(float %152, float %43, float %46)
  %154 = fcmp olt float %150, %30
  br i1 %154, label %158, label %155

155:                                              ; preds = %144
  %156 = fcmp ogt float %150, %34
  br i1 %156, label %157, label %158

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %144, %155, %157
  %159 = phi float [ %34, %157 ], [ %150, %155 ], [ %30, %144 ]
  %160 = fcmp olt float %153, %30
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = fcmp ogt float %153, %34
  br i1 %162, label %163, label %164

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %158, %161, %163
  %165 = phi float [ %34, %163 ], [ %153, %161 ], [ %30, %158 ]
  %166 = fadd float %26, -3.000000e+00
  call void @fdrawline(float noundef %166, float noundef %159, float noundef %166, float noundef %165) #11
  br label %224

167:                                              ; preds = %142, %142, %142, %142
  %168 = icmp eq i32 %143, 1
  call void @glBlendFunc(i32 noundef 1, i32 noundef 1) #11
  call void @glPushMatrix() #11
  call void @glEnableClientState(i32 noundef 32884) #11
  call void @glTranslatef(float noundef %22, float noundef %46, float noundef 0.000000e+00) #11
  call void @glScalef(float noundef %102, float noundef %43, float noundef 0.000000e+00) #11
  %169 = select i1 %168, ptr %8, ptr %9
  call void @glColor3fv(ptr noundef nonnull %169) #11
  %170 = load ptr, ptr %139, align 8, !tbaa !93
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %170) #11
  %171 = getelementptr inbounds %struct.Scopes, ptr %12, i64 0, i32 16
  %172 = load i32, ptr %171, align 8, !tbaa !94
  call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %172) #11
  call void @glTranslatef(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #11
  %173 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1
  %174 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1
  %175 = select i1 %168, ptr %173, ptr %174
  call void @glColor3fv(ptr noundef nonnull %175) #11
  %176 = getelementptr inbounds %struct.Scopes, ptr %12, i64 0, i32 13
  %177 = load ptr, ptr %176, align 8, !tbaa !95
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %177) #11
  %178 = load i32, ptr %171, align 8, !tbaa !94
  call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %178) #11
  call void @glTranslatef(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #11
  %179 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2
  %180 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2
  %181 = select i1 %168, ptr %179, ptr %180
  call void @glColor3fv(ptr noundef nonnull %181) #11
  %182 = getelementptr inbounds %struct.Scopes, ptr %12, i64 0, i32 14
  %183 = load ptr, ptr %182, align 8, !tbaa !96
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %183) #11
  %184 = load i32, ptr %171, align 8, !tbaa !94
  call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %184) #11
  call void @glDisableClientState(i32 noundef 32884) #11
  call void @glPopMatrix() #11
  %185 = fadd float %113, 2.000000e+00
  br label %186

186:                                              ; preds = %167, %216
  %187 = phi i64 [ 0, %167 ], [ %222, %216 ]
  %188 = load i32, ptr %103, align 8, !tbaa !90
  %189 = icmp eq i32 %188, 1
  %190 = select i1 %189, ptr %6, ptr %7
  %191 = getelementptr inbounds [3 x [3 x float]], ptr %190, i64 0, i64 %187
  %192 = load float, ptr %191, align 4, !tbaa !38
  %193 = fmul float %192, 7.500000e-01
  %194 = getelementptr inbounds [3 x [3 x float]], ptr %190, i64 0, i64 %187, i64 1
  %195 = load float, ptr %194, align 4, !tbaa !38
  %196 = fmul float %195, 7.500000e-01
  %197 = getelementptr inbounds [3 x [3 x float]], ptr %190, i64 0, i64 %187, i64 2
  %198 = load float, ptr %197, align 4, !tbaa !38
  %199 = fmul float %198, 7.500000e-01
  call void @glColor3f(float noundef %193, float noundef %196, float noundef %199) #11
  %200 = getelementptr inbounds %struct.Scopes, ptr %12, i64 0, i32 10, i64 %187
  %201 = load float, ptr %200, align 8, !tbaa !38
  %202 = call float @llvm.fmuladd.f32(float %201, float %43, float %46)
  %203 = getelementptr inbounds %struct.Scopes, ptr %12, i64 0, i32 10, i64 %187, i64 1
  %204 = load float, ptr %203, align 4, !tbaa !38
  %205 = call float @llvm.fmuladd.f32(float %204, float %43, float %46)
  %206 = fcmp olt float %202, %30
  br i1 %206, label %210, label %207

207:                                              ; preds = %186
  %208 = fcmp ogt float %202, %34
  br i1 %208, label %209, label %210

209:                                              ; preds = %207
  br label %210

210:                                              ; preds = %186, %207, %209
  %211 = phi float [ %34, %209 ], [ %202, %207 ], [ %30, %186 ]
  %212 = fcmp olt float %205, %30
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = fcmp ogt float %205, %34
  br i1 %214, label %215, label %216

215:                                              ; preds = %213
  br label %216

216:                                              ; preds = %210, %213, %215
  %217 = phi float [ %34, %215 ], [ %205, %213 ], [ %30, %210 ]
  %218 = trunc i64 %187 to i32
  %219 = shl i32 %218, 1
  %220 = sitofp i32 %219 to float
  %221 = fadd float %185, %220
  call void @fdrawline(float noundef %221, float noundef %211, float noundef %221, float noundef %217) #11
  %222 = add nuw nsw i64 %187, 1
  %223 = icmp eq i64 %222, 3
  br i1 %223, label %224, label %186, !llvm.loop !97

224:                                              ; preds = %216, %142, %164, %138, %135
  %225 = load i32, ptr %5, align 16, !tbaa !34
  %226 = getelementptr inbounds i32, ptr %5, i64 1
  %227 = load i32, ptr %226, align 4, !tbaa !34
  %228 = getelementptr inbounds i32, ptr %5, i64 2
  %229 = load i32, ptr %228, align 8, !tbaa !34
  %230 = getelementptr inbounds i32, ptr %5, i64 3
  %231 = load i32, ptr %230, align 4, !tbaa !34
  call void @glScissor(i32 noundef %225, i32 noundef %227, i32 noundef %229, i32 noundef %231) #11
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #11
  store i32 15, ptr @roundboxtype, align 4, !tbaa !34
  call void @uiDrawBox(i32 noundef 2, float noundef %69, float noundef %30, float noundef %71, float noundef %72, float noundef 3.000000e+00)
  br label %232

232:                                              ; preds = %4, %224
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare void @unit_m3(ptr noundef) local_unnamed_addr #5

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @BLF_draw_default(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @glPushMatrix() local_unnamed_addr #5

declare void @glEnableClientState(i32 noundef) local_unnamed_addr #5

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @glDisableClientState(i32 noundef) local_unnamed_addr #5

declare void @glPopMatrix() local_unnamed_addr #5

declare void @glColor3fv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_but_VECTORSCOPE(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca [4 x i32], align 16
  %9 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  %11 = load i32, ptr %3, align 4, !tbaa !67
  %12 = sitofp i32 %11 to float
  %13 = fadd float %12, 1.000000e+00
  %14 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !69
  %16 = sitofp i32 %15 to float
  %17 = fadd float %16, -1.000000e+00
  %18 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !70
  %20 = sitofp i32 %19 to float
  %21 = fadd float %20, 1.000000e+00
  %22 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !71
  %24 = sitofp i32 %23 to float
  %25 = fadd float %24, -1.000000e+00
  %26 = fsub float %17, %13
  %27 = fsub float %25, %21
  %28 = fmul float %26, 5.000000e-01
  %29 = fadd float %13, %28
  %30 = fmul float %27, 5.000000e-01
  %31 = fadd float %21, %30
  %32 = fcmp olt float %26, %27
  %33 = select i1 %32, float %26, float %27
  %34 = getelementptr inbounds %struct.Scopes, ptr %10, i64 0, i32 8
  %35 = load float, ptr %34, align 8, !tbaa !98
  %36 = fmul float %35, %35
  tail call void @glEnable(i32 noundef 3042) #11
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD3333340000000) #11
  store i32 15, ptr @roundboxtype, align 4, !tbaa !34
  %37 = fadd float %13, -1.000000e+00
  %38 = fadd float %21, -1.000000e+00
  %39 = fadd float %17, 1.000000e+00
  %40 = fadd float %25, 1.000000e+00
  tail call void @uiDrawBox(i32 noundef 9, float noundef %37, float noundef %38, float noundef %39, float noundef %40, float noundef 3.000000e+00)
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %8) #11
  %41 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !73
  %43 = sitofp i32 %42 to float
  %44 = fadd float %37, %43
  %45 = fptosi float %44 to i32
  %46 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !77
  %48 = sitofp i32 %47 to float
  %49 = fadd float %38, %48
  %50 = fptosi float %49 to i32
  %51 = fsub float %39, %37
  %52 = fptosi float %51 to i32
  %53 = fsub float %40, %38
  %54 = fptosi float %53 to i32
  call void @glScissor(i32 noundef %45, i32 noundef %50, i32 noundef %52, i32 noundef %54) #11
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FB47AE140000000) #11
  %55 = fmul float %33, 5.000000e-01
  %56 = fsub float %29, %55
  %57 = fadd float %56, -5.000000e+00
  %58 = fadd float %29, %55
  %59 = fadd float %58, 5.000000e+00
  call void @fdrawline(float noundef %57, float noundef %31, float noundef %59, float noundef %31) #11
  %60 = fsub float %31, %55
  %61 = fadd float %60, -5.000000e+00
  %62 = fadd float %31, %55
  %63 = fadd float %62, 5.000000e+00
  call void @fdrawline(float noundef %29, float noundef %61, float noundef %29, float noundef %63) #11
  br label %64

64:                                               ; preds = %4, %80
  %65 = phi i32 [ 0, %4 ], [ %81, %80 ]
  call void @glBegin(i32 noundef 3) #11
  %66 = add nuw nsw i32 %65, 1
  %67 = sitofp i32 %66 to float
  %68 = fdiv float %67, 1.000000e+01
  %69 = fmul float %33, %68
  br label %70

70:                                               ; preds = %64, %70
  %71 = phi i32 [ 0, %64 ], [ %78, %70 ]
  %72 = sitofp i32 %71 to float
  %73 = fmul float %72, 0x3F91DF46A0000000
  %74 = call float @cosf(float noundef %73) #11
  %75 = call float @llvm.fmuladd.f32(float %69, float %74, float %29)
  %76 = call float @sinf(float noundef %73) #11
  %77 = call float @llvm.fmuladd.f32(float %69, float %76, float %31)
  call void @glVertex2f(float noundef %75, float noundef %77) #11
  %78 = add nuw nsw i32 %71, 15
  %79 = icmp ult i32 %71, 346
  br i1 %79, label %70, label %80, !llvm.loop !99

80:                                               ; preds = %70
  call void @glEnd() #11
  %81 = add nuw nsw i32 %65, 1
  %82 = icmp eq i32 %81, 5
  br i1 %82, label %83, label %64, !llvm.loop !100

83:                                               ; preds = %80
  call void @glColor4f(float noundef 1.000000e+00, float noundef 0x3FD99999A0000000, float noundef 0.000000e+00, float noundef 0x3FC99999A0000000) #11
  %84 = call float @llvm.fmuladd.f32(float %55, float 0xBFE16DAEE0000000, float %29)
  %85 = call float @llvm.fmuladd.f32(float %55, float 0x3FEAD663A0000000, float %31)
  %86 = fmul float %33, 0x3FB99999A0000000
  %87 = call float @llvm.fmuladd.f32(float %86, float 0xBFE16DAEE0000000, float %29)
  %88 = call float @llvm.fmuladd.f32(float %86, float 0x3FEAD663A0000000, float %31)
  call void @fdrawline(float noundef %84, float noundef %85, float noundef %87, float noundef %88) #11
  br label %89

89:                                               ; preds = %83, %125
  %90 = phi i64 [ 0, %83 ], [ %220, %125 ]
  %91 = getelementptr inbounds [6 x [3 x float]], ptr @__const.ui_draw_but_VECTORSCOPE.colors, i64 0, i64 %90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %92 = load float, ptr %91, align 4, !tbaa !38
  %93 = getelementptr inbounds float, ptr %91, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !38
  %95 = getelementptr inbounds float, ptr %91, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !38
  call void @rgb_to_yuv(float noundef %92, float noundef %94, float noundef %96, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %97 = load float, ptr %6, align 4, !tbaa !38
  %98 = fcmp ogt float %97, 0.000000e+00
  %99 = load float, ptr %7, align 4
  %100 = fcmp oge float %99, 0.000000e+00
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %105

102:                                              ; preds = %89
  %103 = fdiv float %99, %97
  %104 = call float @atanf(float noundef %103) #11
  br label %125

105:                                              ; preds = %89
  %106 = fcmp olt float %99, 0.000000e+00
  %107 = select i1 %98, i1 %106, i1 false
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = fdiv float %99, %97
  %110 = call float @atanf(float noundef %109) #11
  %111 = fadd float %110, 0x401921FB60000000
  br label %125

112:                                              ; preds = %105
  %113 = fcmp olt float %97, 0.000000e+00
  br i1 %113, label %114, label %118

114:                                              ; preds = %112
  %115 = fdiv float %99, %97
  %116 = call float @atanf(float noundef %115) #11
  %117 = fadd float %116, 0x400921FB60000000
  br label %125

118:                                              ; preds = %112
  %119 = fcmp oeq float %97, 0.000000e+00
  %120 = fcmp ogt float %99, 0.000000e+00
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = select i1 %119, i1 %106, i1 false
  br i1 %123, label %124, label %125

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %102, %108, %114, %118, %122, %124
  %126 = phi float [ %104, %102 ], [ %111, %108 ], [ %117, %114 ], [ 0xBFF921FB60000000, %124 ], [ 0.000000e+00, %122 ], [ 0x3FF921FB60000000, %118 ]
  %127 = load float, ptr %6, align 4, !tbaa !38
  %128 = load float, ptr %7, align 4, !tbaa !38
  %129 = fmul float %128, %128
  %130 = call float @llvm.fmuladd.f32(float %127, float %127, float %129)
  %131 = call float @sqrtf(float noundef %130) #11
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FBEB851E0000000) #11
  call void @glBegin(i32 noundef 3) #11
  %132 = fadd float %131, 0x3F899999A0000000
  %133 = fadd float %126, 0x3FA6571840000000
  %134 = fmul float %33, %132
  %135 = call float @cosf(float noundef %133) #11
  %136 = call float @llvm.fmuladd.f32(float %134, float %135, float %29)
  %137 = call float @sinf(float noundef %133) #11
  %138 = call float @llvm.fmuladd.f32(float %134, float %137, float %31)
  call void @glVertex2f(float noundef %136, float noundef %138) #11
  %139 = fadd float %131, 0xBF899999A0000000
  %140 = fmul float %33, %139
  %141 = call float @cosf(float noundef %133) #11
  %142 = call float @llvm.fmuladd.f32(float %140, float %141, float %29)
  %143 = call float @sinf(float noundef %133) #11
  %144 = call float @llvm.fmuladd.f32(float %140, float %143, float %31)
  call void @glVertex2f(float noundef %142, float noundef %144) #11
  %145 = fadd float %126, 0xBFA6571840000000
  %146 = call float @cosf(float noundef %145) #11
  %147 = call float @llvm.fmuladd.f32(float %140, float %146, float %29)
  %148 = call float @sinf(float noundef %145) #11
  %149 = call float @llvm.fmuladd.f32(float %140, float %148, float %31)
  call void @glVertex2f(float noundef %147, float noundef %149) #11
  %150 = call float @cosf(float noundef %145) #11
  %151 = call float @llvm.fmuladd.f32(float %134, float %150, float %29)
  %152 = call float @sinf(float noundef %145) #11
  %153 = call float @llvm.fmuladd.f32(float %134, float %152, float %31)
  call void @glVertex2f(float noundef %151, float noundef %153) #11
  %154 = call float @cosf(float noundef %133) #11
  %155 = call float @llvm.fmuladd.f32(float %134, float %154, float %29)
  %156 = call float @sinf(float noundef %133) #11
  %157 = call float @llvm.fmuladd.f32(float %134, float %156, float %31)
  call void @glVertex2f(float noundef %155, float noundef %157) #11
  call void @glEnd() #11
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FBEB851E0000000) #11
  %158 = fmul float %131, 0x3FC99999A0000000
  %159 = fmul float %158, 5.000000e-01
  call void @glBegin(i32 noundef 3) #11
  %160 = fadd float %131, %158
  %161 = fsub float %160, %159
  %162 = fadd float %126, 0x3FC6571840000000
  %163 = fmul float %33, %161
  %164 = call float @cosf(float noundef %162) #11
  %165 = call float @llvm.fmuladd.f32(float %163, float %164, float %29)
  %166 = call float @sinf(float noundef %162) #11
  %167 = call float @llvm.fmuladd.f32(float %163, float %166, float %31)
  call void @glVertex2f(float noundef %165, float noundef %167) #11
  %168 = fmul float %33, %160
  %169 = call float @cosf(float noundef %162) #11
  %170 = call float @llvm.fmuladd.f32(float %168, float %169, float %29)
  %171 = call float @sinf(float noundef %162) #11
  %172 = call float @llvm.fmuladd.f32(float %168, float %171, float %31)
  call void @glVertex2f(float noundef %170, float noundef %172) #11
  %173 = fadd float %162, 0xBFB6571840000000
  %174 = call float @cosf(float noundef %173) #11
  %175 = call float @llvm.fmuladd.f32(float %168, float %174, float %29)
  %176 = call float @sinf(float noundef %173) #11
  %177 = call float @llvm.fmuladd.f32(float %168, float %176, float %31)
  call void @glVertex2f(float noundef %175, float noundef %177) #11
  call void @glEnd() #11
  call void @glBegin(i32 noundef 3) #11
  %178 = fsub float %131, %158
  %179 = fadd float %178, %159
  %180 = fmul float %33, %179
  %181 = call float @cosf(float noundef %162) #11
  %182 = call float @llvm.fmuladd.f32(float %180, float %181, float %29)
  %183 = call float @sinf(float noundef %162) #11
  %184 = call float @llvm.fmuladd.f32(float %180, float %183, float %31)
  call void @glVertex2f(float noundef %182, float noundef %184) #11
  %185 = fmul float %33, %178
  %186 = call float @cosf(float noundef %162) #11
  %187 = call float @llvm.fmuladd.f32(float %185, float %186, float %29)
  %188 = call float @sinf(float noundef %162) #11
  %189 = call float @llvm.fmuladd.f32(float %185, float %188, float %31)
  call void @glVertex2f(float noundef %187, float noundef %189) #11
  %190 = call float @cosf(float noundef %173) #11
  %191 = call float @llvm.fmuladd.f32(float %185, float %190, float %29)
  %192 = call float @sinf(float noundef %173) #11
  %193 = call float @llvm.fmuladd.f32(float %185, float %192, float %31)
  call void @glVertex2f(float noundef %191, float noundef %193) #11
  call void @glEnd() #11
  call void @glBegin(i32 noundef 3) #11
  %194 = fadd float %126, 0xBFC6571840000000
  %195 = call float @cosf(float noundef %194) #11
  %196 = call float @llvm.fmuladd.f32(float %180, float %195, float %29)
  %197 = call float @sinf(float noundef %194) #11
  %198 = call float @llvm.fmuladd.f32(float %180, float %197, float %31)
  call void @glVertex2f(float noundef %196, float noundef %198) #11
  %199 = call float @cosf(float noundef %194) #11
  %200 = call float @llvm.fmuladd.f32(float %185, float %199, float %29)
  %201 = call float @sinf(float noundef %194) #11
  %202 = call float @llvm.fmuladd.f32(float %185, float %201, float %31)
  call void @glVertex2f(float noundef %200, float noundef %202) #11
  %203 = fadd float %194, 0x3FB6571840000000
  %204 = call float @cosf(float noundef %203) #11
  %205 = call float @llvm.fmuladd.f32(float %185, float %204, float %29)
  %206 = call float @sinf(float noundef %203) #11
  %207 = call float @llvm.fmuladd.f32(float %185, float %206, float %31)
  call void @glVertex2f(float noundef %205, float noundef %207) #11
  call void @glEnd() #11
  call void @glBegin(i32 noundef 3) #11
  %208 = call float @cosf(float noundef %194) #11
  %209 = call float @llvm.fmuladd.f32(float %163, float %208, float %29)
  %210 = call float @sinf(float noundef %194) #11
  %211 = call float @llvm.fmuladd.f32(float %163, float %210, float %31)
  call void @glVertex2f(float noundef %209, float noundef %211) #11
  %212 = call float @cosf(float noundef %194) #11
  %213 = call float @llvm.fmuladd.f32(float %168, float %212, float %29)
  %214 = call float @sinf(float noundef %194) #11
  %215 = call float @llvm.fmuladd.f32(float %168, float %214, float %31)
  call void @glVertex2f(float noundef %213, float noundef %215) #11
  %216 = call float @cosf(float noundef %203) #11
  %217 = call float @llvm.fmuladd.f32(float %168, float %216, float %29)
  %218 = call float @sinf(float noundef %203) #11
  %219 = call float @llvm.fmuladd.f32(float %168, float %218, float %31)
  call void @glVertex2f(float noundef %217, float noundef %219) #11
  call void @glEnd() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %220 = add nuw nsw i64 %90, 1
  %221 = icmp eq i64 %220, 6
  br i1 %221, label %222, label %89, !llvm.loop !101

222:                                              ; preds = %125
  %223 = fmul float %35, %36
  %224 = load i32, ptr %10, align 8, !tbaa !92
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %234, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.Scopes, ptr %10, i64 0, i32 15
  %228 = load ptr, ptr %227, align 8, !tbaa !102
  %229 = icmp eq ptr %228, null
  br i1 %229, label %234, label %230

230:                                              ; preds = %226
  call void @glBlendFunc(i32 noundef 1, i32 noundef 1) #11
  call void @glColor3f(float noundef %223, float noundef %223, float noundef %223) #11
  call void @glPushMatrix() #11
  call void @glEnableClientState(i32 noundef 32884) #11
  call void @glTranslatef(float noundef %29, float noundef %31, float noundef 0.000000e+00) #11
  call void @glScalef(float noundef %33, float noundef %33, float noundef 0.000000e+00) #11
  %231 = load ptr, ptr %227, align 8, !tbaa !102
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %231) #11
  %232 = getelementptr inbounds %struct.Scopes, ptr %10, i64 0, i32 16
  %233 = load i32, ptr %232, align 8, !tbaa !94
  call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %233) #11
  call void @glDisableClientState(i32 noundef 32884) #11
  call void @glPopMatrix() #11
  br label %234

234:                                              ; preds = %230, %226, %222
  %235 = load i32, ptr %8, align 16, !tbaa !34
  %236 = getelementptr inbounds i32, ptr %8, i64 1
  %237 = load i32, ptr %236, align 4, !tbaa !34
  %238 = getelementptr inbounds i32, ptr %8, i64 2
  %239 = load i32, ptr %238, align 8, !tbaa !34
  %240 = getelementptr inbounds i32, ptr %8, i64 3
  %241 = load i32, ptr %240, align 4, !tbaa !34
  call void @glScissor(i32 noundef %235, i32 noundef %237, i32 noundef %239, i32 noundef %241) #11
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #11
  store i32 15, ptr @roundboxtype, align 4, !tbaa !34
  call void @uiDrawBox(i32 noundef 2, float noundef %37, float noundef %21, float noundef %39, float noundef %40, float noundef 3.000000e+00)
  call void @glDisable(i32 noundef 3042) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_but_COLORBAND(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 72
  %8 = load ptr, ptr %7, align 8, !tbaa !103
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi ptr [ %12, %10 ], [ %8, %3 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %124, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %18 = load ptr, ptr %17, align 8, !tbaa !104
  %19 = getelementptr inbounds %struct.uiBlock, ptr %18, i64 0, i32 51
  %20 = load i8, ptr %19, align 4, !tbaa !105
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = tail call ptr @ui_block_display_get(ptr noundef %18) #11
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %23, %22 ], [ null, %16 ]
  %26 = load i32, ptr %2, align 4, !tbaa !67
  %27 = sitofp i32 %26 to float
  %28 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !69
  %30 = sitofp i32 %29 to float
  %31 = fsub float %30, %27
  %32 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !71
  %34 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !70
  %36 = sub nsw i32 %33, %35
  %37 = sitofp i32 %36 to float
  %38 = fmul float %37, 2.500000e-01
  %39 = sitofp i32 %35 to float
  tail call void @glColor4ub(i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext -1) #11
  %40 = fadd float %31, %27
  %41 = load i32, ptr %32, align 4, !tbaa !71
  %42 = sitofp i32 %41 to float
  tail call void @glRectf(float noundef %27, float noundef %39, float noundef %40, float noundef %42) #11
  tail call void @glEnable(i32 noundef 2882) #11
  tail call void @glColor4ub(i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -1) #11
  tail call void @glPolygonStipple(ptr noundef nonnull @stipple_checker_8px) #11
  %43 = load i32, ptr %32, align 4, !tbaa !71
  %44 = sitofp i32 %43 to float
  tail call void @glRectf(float noundef %27, float noundef %39, float noundef %40, float noundef %44) #11
  tail call void @glDisable(i32 noundef 2882) #11
  tail call void @glShadeModel(i32 noundef 7424) #11
  tail call void @glEnable(i32 noundef 3042) #11
  %45 = getelementptr inbounds %struct.ColorBand, ptr %14, i64 0, i32 6
  %46 = fadd float %38, %39
  %47 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %46, ptr %47, align 4, !tbaa !38
  %48 = load i32, ptr %32, align 4, !tbaa !71
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %49, ptr %50, align 4, !tbaa !38
  tail call void @glBegin(i32 noundef 8) #11
  %51 = fcmp ult float %31, 0.000000e+00
  br i1 %51, label %65, label %52

52:                                               ; preds = %24
  %53 = icmp eq ptr %25, null
  br label %54

54:                                               ; preds = %52, %60
  %55 = phi float [ 0.000000e+00, %52 ], [ %63, %60 ]
  %56 = phi i32 [ 0, %52 ], [ %62, %60 ]
  %57 = fdiv float %55, %31
  %58 = call zeroext i8 @do_colorband(ptr noundef nonnull %14, float noundef %57, ptr noundef nonnull %6) #11
  br i1 %53, label %60, label %59

59:                                               ; preds = %54
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef nonnull %6, ptr noundef nonnull %25) #11
  br label %60

60:                                               ; preds = %59, %54
  %61 = fadd float %55, %27
  store float %61, ptr %5, align 4, !tbaa !38
  store float %61, ptr %4, align 4, !tbaa !38
  call void @glColor4fv(ptr noundef nonnull %6) #11
  call void @glVertex2fv(ptr noundef nonnull %4) #11
  call void @glVertex2fv(ptr noundef nonnull %5) #11
  %62 = add nuw nsw i32 %56, 1
  %63 = sitofp i32 %62 to float
  %64 = fcmp ult float %31, %63
  br i1 %64, label %65, label %54, !llvm.loop !109

65:                                               ; preds = %60, %24
  call void @glEnd() #11
  store float %39, ptr %47, align 4, !tbaa !38
  store float %46, ptr %50, align 4, !tbaa !38
  call void @glBegin(i32 noundef 8) #11
  %66 = fcmp ult float %31, 0.000000e+00
  br i1 %66, label %85, label %67

67:                                               ; preds = %65
  %68 = icmp eq ptr %25, null
  %69 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %70 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  br label %71

71:                                               ; preds = %67, %77
  %72 = phi float [ 0.000000e+00, %67 ], [ %83, %77 ]
  %73 = phi i32 [ 0, %67 ], [ %82, %77 ]
  %74 = fdiv float %72, %31
  %75 = call zeroext i8 @do_colorband(ptr noundef nonnull %14, float noundef %74, ptr noundef nonnull %6) #11
  br i1 %68, label %77, label %76

76:                                               ; preds = %71
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef nonnull %6, ptr noundef nonnull %25) #11
  br label %77

77:                                               ; preds = %76, %71
  %78 = fadd float %72, %27
  store float %78, ptr %5, align 4, !tbaa !38
  store float %78, ptr %4, align 4, !tbaa !38
  %79 = load float, ptr %6, align 16, !tbaa !38
  %80 = load float, ptr %69, align 4, !tbaa !38
  %81 = load float, ptr %70, align 8, !tbaa !38
  call void @glColor4f(float noundef %79, float noundef %80, float noundef %81, float noundef 1.000000e+00) #11
  call void @glVertex2fv(ptr noundef nonnull %4) #11
  call void @glVertex2fv(ptr noundef nonnull %5) #11
  %82 = add nuw nsw i32 %73, 1
  %83 = sitofp i32 %82 to float
  %84 = fcmp ult float %31, %83
  br i1 %84, label %85, label %71, !llvm.loop !110

85:                                               ; preds = %77, %65
  call void @glEnd() #11
  call void @glDisable(i32 noundef 3042) #11
  call void @glShadeModel(i32 noundef 7425) #11
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #11
  %86 = load i32, ptr %32, align 4, !tbaa !71
  %87 = sitofp i32 %86 to float
  call void @fdrawbox(float noundef %27, float noundef %39, float noundef %40, float noundef %87) #11
  call void @glEnable(i32 noundef 3042) #11
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #11
  call void @fdrawline(float noundef %27, float noundef %39, float noundef %40, float noundef %39) #11
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 2.500000e-01) #11
  %88 = fadd float %39, -1.000000e+00
  call void @fdrawline(float noundef %27, float noundef %88, float noundef %40, float noundef %88) #11
  call void @glDisable(i32 noundef 3042) #11
  %89 = load i16, ptr %14, align 4, !tbaa !111
  %90 = icmp sgt i16 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.ColorBand, ptr %14, i64 0, i32 1
  %93 = fadd float %31, -1.000000e+00
  br label %94

94:                                               ; preds = %91, %105
  %95 = phi i32 [ 0, %91 ], [ %106, %105 ]
  %96 = phi ptr [ %45, %91 ], [ %107, %105 ]
  %97 = load i16, ptr %92, align 2, !tbaa !113
  %98 = sext i16 %97 to i32
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %105, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.CBData, ptr %96, i64 0, i32 4
  %102 = load float, ptr %101, align 4, !tbaa !114
  %103 = call float @llvm.fmuladd.f32(float %102, float %93, float %27)
  %104 = fadd float %103, 1.000000e+00
  call fastcc void @ui_draw_colorband_handle(ptr noundef nonnull %2, float noundef %104, ptr noundef nonnull %96, ptr noundef %25, i8 noundef zeroext 0)
  br label %105

105:                                              ; preds = %94, %100
  %106 = add nuw nsw i32 %95, 1
  %107 = getelementptr inbounds %struct.CBData, ptr %96, i64 1
  %108 = load i16, ptr %14, align 4, !tbaa !111
  %109 = sext i16 %108 to i32
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %94, label %111, !llvm.loop !116

111:                                              ; preds = %105, %85
  %112 = phi i16 [ %89, %85 ], [ %108, %105 ]
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.ColorBand, ptr %14, i64 0, i32 1
  %116 = load i16, ptr %115, align 2, !tbaa !113
  %117 = sext i16 %116 to i64
  %118 = getelementptr inbounds %struct.ColorBand, ptr %14, i64 0, i32 6, i64 %117
  %119 = getelementptr inbounds %struct.ColorBand, ptr %14, i64 0, i32 6, i64 %117, i32 4
  %120 = load float, ptr %119, align 4, !tbaa !114
  %121 = fadd float %31, -1.000000e+00
  %122 = call float @llvm.fmuladd.f32(float %120, float %121, float %27)
  %123 = fadd float %122, 1.000000e+00
  call fastcc void @ui_draw_colorband_handle(ptr noundef nonnull %2, float noundef %123, ptr noundef nonnull %118, ptr noundef %25, i8 noundef zeroext 1)
  br label %124

124:                                              ; preds = %111, %114, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

declare ptr @ui_block_display_get(ptr noundef) local_unnamed_addr #5

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #5

declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #5

declare void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #5

declare void @fdrawbox(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_draw_colorband_handle(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #2 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !71
  %16 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !70
  %18 = sub nsw i32 %15, %17
  %19 = sitofp i32 %18 to float
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  %20 = load float, ptr %2, align 4, !tbaa !38
  store float %20, ptr %13, align 4, !tbaa !38
  %21 = getelementptr inbounds float, ptr %13, i64 1
  %22 = getelementptr inbounds float, ptr %2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !38
  store float %23, ptr %21, align 4, !tbaa !38
  %24 = getelementptr inbounds float, ptr %13, i64 2
  %25 = getelementptr inbounds float, ptr %2, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !38
  store float %26, ptr %24, align 4, !tbaa !38
  %27 = fdiv float %19, 3.500000e+00
  %28 = tail call float @llvm.floor.f32(float %27)
  %29 = fmul float %28, 0x3FF6666660000000
  %30 = sitofp i32 %17 to float
  %31 = tail call float @llvm.fmuladd.f32(float %19, float 0x3FC47AE140000000, float %30)
  %32 = fadd float %1, 5.000000e-01
  %33 = tail call float @llvm.floor.f32(float %32)
  %34 = fadd float %31, 5.000000e-01
  %35 = tail call float @llvm.floor.f32(float %34)
  %36 = icmp ne i8 %4, 0
  %37 = fcmp olt float %28, 3.000000e+00
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = sitofp i32 %15 to float
  tail call void @glBegin(i32 noundef 1) #11
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  tail call void @glVertex2f(float noundef %33, float noundef %35) #11
  tail call void @glVertex2f(float noundef %33, float noundef %40) #11
  tail call void @glEnd() #11
  %41 = select i1 %36, i32 2, i32 1
  tail call void @setlinestyle(i32 noundef %41) #11
  tail call void @glBegin(i32 noundef 1) #11
  tail call void @glColor3ub(i8 noundef zeroext -56, i8 noundef zeroext -56, i8 noundef zeroext -56) #11
  tail call void @glVertex2f(float noundef %33, float noundef %35) #11
  tail call void @glVertex2f(float noundef %33, float noundef %40) #11
  tail call void @glEnd() #11
  tail call void @setlinestyle(i32 noundef 0) #11
  br i1 %37, label %76, label %42

42:                                               ; preds = %39, %5
  %43 = fsub float %35, %28
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %44 = fsub float %33, %28
  %45 = fadd float %43, -1.000000e+00
  %46 = fadd float %33, %28
  %47 = fadd float %29, %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  tail call void @glPolygonMode(i32 noundef 1028, i32 noundef 6913) #11
  tail call void @glBegin(i32 noundef 7) #11
  store float %44, ptr %12, align 4, !tbaa !38
  %48 = getelementptr inbounds float, ptr %12, i64 1
  store float %45, ptr %48, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  store float %44, ptr %12, align 4, !tbaa !38
  store float %47, ptr %48, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  store float %46, ptr %12, align 4, !tbaa !38
  store float %47, ptr %48, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  store float %46, ptr %12, align 4, !tbaa !38
  store float %45, ptr %48, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %12) #11
  call void @glEnd() #11
  call void @glPolygonMode(i32 noundef 1028, i32 noundef 6914) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @glEnable(i32 noundef 3042) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  call void @glPolygonMode(i32 noundef 1028, i32 noundef 6914) #11
  call void @glEnable(i32 noundef 2881) #11
  call void @glBegin(i32 noundef 4) #11
  store float %46, ptr %11, align 4, !tbaa !38
  %49 = getelementptr inbounds float, ptr %11, i64 1
  store float %47, ptr %49, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %11) #11
  %50 = fadd float %28, %47
  store float %33, ptr %11, align 4, !tbaa !38
  store float %50, ptr %49, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %11) #11
  store float %44, ptr %11, align 4, !tbaa !38
  store float %47, ptr %49, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %11) #11
  call void @glEnd() #11
  call void @glDisable(i32 noundef 2881) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  %51 = icmp eq i8 %4, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  call void @glColor3ub(i8 noundef zeroext -60, i8 noundef zeroext -60, i8 noundef zeroext -60) #11
  br label %54

53:                                               ; preds = %42
  call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #11
  br label %54

54:                                               ; preds = %53, %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  call void @glPolygonMode(i32 noundef 1028, i32 noundef 6914) #11
  call void @glEnable(i32 noundef 2881) #11
  call void @glBegin(i32 noundef 4) #11
  store float %46, ptr %10, align 4, !tbaa !38
  %55 = getelementptr inbounds float, ptr %10, i64 1
  store float %47, ptr %55, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %10) #11
  store float %33, ptr %10, align 4, !tbaa !38
  store float %50, ptr %55, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %10) #11
  store float %44, ptr %10, align 4, !tbaa !38
  store float %47, ptr %55, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %10) #11
  call void @glEnd() #11
  call void @glDisable(i32 noundef 2881) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br i1 %51, label %57, label %56

56:                                               ; preds = %54
  call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #11
  br label %58

57:                                               ; preds = %54
  call void @glColor3ub(i8 noundef zeroext -128, i8 noundef zeroext -128, i8 noundef zeroext -128) #11
  br label %58

58:                                               ; preds = %57, %56
  %59 = fadd float %47, -1.000000e+00
  %60 = fadd float %28, -1.000000e+00
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  call void @glEnable(i32 noundef 2848) #11
  call void @glBegin(i32 noundef 3) #11
  %61 = fadd float %33, %60
  store float %61, ptr %9, align 4, !tbaa !38
  %62 = getelementptr inbounds float, ptr %9, i64 1
  store float %59, ptr %62, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %9) #11
  %63 = fadd float %60, %59
  store float %33, ptr %9, align 4, !tbaa !38
  store float %63, ptr %62, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %9) #11
  %64 = fsub float %33, %60
  store float %64, ptr %9, align 4, !tbaa !38
  store float %59, ptr %62, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %9) #11
  call void @glEnd() #11
  call void @glDisable(i32 noundef 2848) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @glEnable(i32 noundef 2848) #11
  call void @glBegin(i32 noundef 3) #11
  store float %46, ptr %8, align 4, !tbaa !38
  %65 = getelementptr inbounds float, ptr %8, i64 1
  store float %47, ptr %65, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %8) #11
  store float %33, ptr %8, align 4, !tbaa !38
  store float %50, ptr %65, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %8) #11
  store float %44, ptr %8, align 4, !tbaa !38
  store float %47, ptr %65, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %8) #11
  call void @glEnd() #11
  call void @glDisable(i32 noundef 2848) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @glDisable(i32 noundef 3042) #11
  call void @glColor3ub(i8 noundef zeroext -128, i8 noundef zeroext -128, i8 noundef zeroext -128) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @glPolygonMode(i32 noundef 1028, i32 noundef 6914) #11
  call void @glBegin(i32 noundef 7) #11
  store float %64, ptr %7, align 4, !tbaa !38
  %66 = getelementptr inbounds float, ptr %7, i64 1
  store float %43, ptr %66, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %7) #11
  store float %64, ptr %7, align 4, !tbaa !38
  store float %47, ptr %66, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %7) #11
  store float %61, ptr %7, align 4, !tbaa !38
  store float %47, ptr %66, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %7) #11
  store float %61, ptr %7, align 4, !tbaa !38
  store float %43, ptr %66, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %7) #11
  call void @glEnd() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  %67 = icmp eq ptr %3, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef nonnull %13, ptr noundef nonnull %3) #11
  br label %69

69:                                               ; preds = %68, %58
  call void @glColor3fv(ptr noundef nonnull %13) #11
  %70 = fadd float %28, -2.000000e+00
  %71 = fsub float %33, %70
  %72 = fadd float %43, 1.000000e+00
  %73 = fadd float %33, %70
  %74 = fadd float %47, -2.000000e+00
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @glPolygonMode(i32 noundef 1028, i32 noundef 6914) #11
  call void @glBegin(i32 noundef 7) #11
  store float %71, ptr %6, align 4, !tbaa !38
  %75 = getelementptr inbounds float, ptr %6, i64 1
  store float %72, ptr %75, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %6) #11
  store float %71, ptr %6, align 4, !tbaa !38
  store float %74, ptr %75, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %6) #11
  store float %73, ptr %6, align 4, !tbaa !38
  store float %74, ptr %75, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %6) #11
  store float %73, ptr %6, align 4, !tbaa !38
  store float %72, ptr %75, align 4, !tbaa !38
  call void @glVertex2fv(ptr noundef nonnull %6) #11
  call void @glEnd() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %76

76:                                               ; preds = %39, %69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_but_NORMAL(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca [8 x i32], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.ui_draw_but_NORMAL.diffn, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @glGetMaterialfv(i32 noundef 1028, i32 noundef 4609, ptr noundef nonnull %5) #11
  %9 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1
  call void @glColor3ubv(ptr noundef nonnull %9) #11
  store i32 15, ptr @roundboxtype, align 4, !tbaa !34
  %10 = load i32, ptr %2, align 4, !tbaa !67
  %11 = sitofp i32 %10 to float
  %12 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !70
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !69
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !71
  %20 = sitofp i32 %19 to float
  call void @uiDrawBox(i32 noundef 9, float noundef %11, float noundef %14, float noundef %17, float noundef %20, float noundef 5.000000e+00)
  call void @glMaterialfv(i32 noundef 1028, i32 noundef 4609, ptr noundef nonnull %6) #11
  call void @glCullFace(i32 noundef 1029) #11
  call void @glEnable(i32 noundef 2884) #11
  br label %21

21:                                               ; preds = %3, %21
  %22 = phi i64 [ 0, %3 ], [ %29, %21 ]
  %23 = or disjoint i64 %22, 16384
  %24 = trunc i64 %23 to i32
  %25 = call zeroext i8 @glIsEnabled(i32 noundef %24) #11
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 %22
  store i32 %26, ptr %27, align 4, !tbaa !34
  %28 = trunc i64 %23 to i32
  call void @glDisable(i32 noundef %28) #11
  %29 = add nuw nsw i64 %22, 1
  %30 = icmp eq i64 %29, 8
  br i1 %30, label %31, label %21, !llvm.loop !117

31:                                               ; preds = %21
  call void @glEnable(i32 noundef 16391) #11
  call void @glEnable(i32 noundef 2896) #11
  call void @ui_get_but_vectorf(ptr noundef %0, ptr noundef nonnull %8) #11
  %32 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float 0.000000e+00, ptr %32, align 4, !tbaa !38
  call void @glLightfv(i32 noundef 16391, i32 noundef 4611, ptr noundef nonnull %8) #11
  call void @glLightfv(i32 noundef 16391, i32 noundef 4609, ptr noundef nonnull %6) #11
  call void @glLightfv(i32 noundef 16391, i32 noundef 4610, ptr noundef nonnull %7) #11
  call void @glLightf(i32 noundef 16391, i32 noundef 4615, float noundef 1.000000e+00) #11
  call void @glLightf(i32 noundef 16391, i32 noundef 4616, float noundef 0.000000e+00) #11
  call void @glPushMatrix() #11
  %33 = load i32, ptr %2, align 4, !tbaa !67
  %34 = sitofp i32 %33 to float
  %35 = load i32, ptr %15, align 4, !tbaa !69
  %36 = sub nsw i32 %35, %33
  %37 = sitofp i32 %36 to float
  %38 = call float @llvm.fmuladd.f32(float %37, float 5.000000e-01, float %34)
  %39 = load i32, ptr %12, align 4, !tbaa !70
  %40 = sitofp i32 %39 to float
  %41 = load i32, ptr %18, align 4, !tbaa !71
  %42 = sub nsw i32 %41, %39
  %43 = sitofp i32 %42 to float
  %44 = call float @llvm.fmuladd.f32(float %43, float 5.000000e-01, float %40)
  call void @glTranslatef(float noundef %38, float noundef %44, float noundef 0.000000e+00) #11
  %45 = load i32, ptr %15, align 4, !tbaa !69
  %46 = load i32, ptr %2, align 4, !tbaa !67
  %47 = sub nsw i32 %45, %46
  %48 = load i32, ptr %18, align 4, !tbaa !71
  %49 = load i32, ptr %12, align 4, !tbaa !70
  %50 = sub nsw i32 %48, %49
  %51 = call i32 @llvm.smin.i32(i32 %47, i32 %50)
  %52 = sitofp i32 %51 to float
  %53 = fdiv float %52, 2.000000e+02
  call void @glScalef(float noundef %53, float noundef %53, float noundef %53) #11
  %54 = load i32, ptr @ui_draw_but_NORMAL.displist, align 4, !tbaa !34
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %31
  %57 = call i32 @glGenLists(i32 noundef 1) #11
  store i32 %57, ptr @ui_draw_but_NORMAL.displist, align 4, !tbaa !34
  call void @glNewList(i32 noundef %57, i32 noundef 4864) #11
  %58 = call ptr @gluNewQuadric() #11
  call void @gluQuadricDrawStyle(ptr noundef %58, i32 noundef 100012) #11
  call void @glShadeModel(i32 noundef 7425) #11
  call void @gluSphere(ptr noundef %58, double noundef 1.000000e+02, i32 noundef 32, i32 noundef 24) #11
  call void @glShadeModel(i32 noundef 7424) #11
  call void @gluDeleteQuadric(ptr noundef %58) #11
  call void @glEndList() #11
  br label %59

59:                                               ; preds = %56, %31
  %60 = load i32, ptr @ui_draw_but_NORMAL.displist, align 4, !tbaa !34
  call void @glCallList(i32 noundef %60) #11
  call void @glDisable(i32 noundef 2896) #11
  call void @glDisable(i32 noundef 2884) #11
  call void @glMaterialfv(i32 noundef 1028, i32 noundef 4609, ptr noundef nonnull %5) #11
  call void @glDisable(i32 noundef 16391) #11
  call void @glEnable(i32 noundef 3042) #11
  call void @glEnable(i32 noundef 2848) #11
  call void @glColor3ubv(ptr noundef nonnull %9) #11
  call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef 1.000000e+02, i32 noundef 32) #11
  call void @glDisable(i32 noundef 3042) #11
  call void @glDisable(i32 noundef 2848) #11
  call void @glPopMatrix() #11
  br label %61

61:                                               ; preds = %59, %69
  %62 = phi i64 [ 0, %59 ], [ %70, %69 ]
  %63 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !34
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = trunc i64 %62 to i32
  %68 = or i32 %67, 16384
  call void @glEnable(i32 noundef %68) #11
  br label %69

69:                                               ; preds = %61, %66
  %70 = add nuw nsw i64 %62, 1
  %71 = icmp eq i64 %70, 8
  br i1 %71, label %72, label %61, !llvm.loop !118

72:                                               ; preds = %69
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  ret void
}

declare void @glGetMaterialfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #5

declare void @glMaterialfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @glCullFace(i32 noundef) local_unnamed_addr #5

declare zeroext i8 @glIsEnabled(i32 noundef) local_unnamed_addr #5

declare void @ui_get_but_vectorf(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @glLightfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @glLightf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #5

declare i32 @glGenLists(i32 noundef) local_unnamed_addr #5

declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @gluNewQuadric() local_unnamed_addr #5

declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gluSphere(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #5

declare void @glEndList() local_unnamed_addr #5

declare void @glCallList(i32 noundef) local_unnamed_addr #5

declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_but_CURVE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca %struct.rcti, align 4
  %8 = alloca %struct.rcti, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 73
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  br label %18

18:                                               ; preds = %4, %15
  %19 = phi ptr [ %17, %15 ], [ %13, %4 ]
  %20 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !120
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %6) #11
  %24 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !73
  %26 = load i32, ptr %3, align 4, !tbaa !67
  %27 = add nsw i32 %26, %25
  store i32 %27, ptr %7, align 4, !tbaa !67
  %28 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !77
  %30 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !70
  %32 = add nsw i32 %31, %29
  %33 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  store i32 %32, ptr %33, align 4, !tbaa !70
  %34 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !69
  %36 = add nsw i32 %35, %25
  %37 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  store i32 %36, ptr %37, align 4, !tbaa !69
  %38 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !71
  %40 = add nsw i32 %39, %29
  %41 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  store i32 %40, ptr %41, align 4, !tbaa !71
  %42 = call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %7, ptr noundef nonnull %24, ptr noundef nonnull %7) #11
  %43 = load i32, ptr %7, align 4, !tbaa !67
  %44 = load i32, ptr %33, align 4, !tbaa !70
  %45 = load i32, ptr %37, align 4, !tbaa !69
  %46 = sub nsw i32 %45, %43
  %47 = load i32, ptr %41, align 4, !tbaa !71
  %48 = sub nsw i32 %47, %44
  call void @glScissor(i32 noundef %43, i32 noundef %44, i32 noundef %46, i32 noundef %48) #11
  %49 = load i32, ptr %34, align 4, !tbaa !69
  %50 = load i32, ptr %3, align 4, !tbaa !67
  %51 = sub nsw i32 %49, %50
  %52 = sitofp i32 %51 to float
  %53 = fadd float %52, -2.000000e+00
  %54 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 4
  %55 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 4, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !122
  %57 = load float, ptr %54, align 4, !tbaa !123
  %58 = fsub float %56, %57
  %59 = fdiv float %53, %58
  %60 = load i32, ptr %38, align 4, !tbaa !71
  %61 = load i32, ptr %30, align 4, !tbaa !70
  %62 = sub nsw i32 %60, %61
  %63 = sitofp i32 %62 to float
  %64 = fadd float %63, -2.000000e+00
  %65 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 4, i32 3
  %66 = load float, ptr %65, align 4, !tbaa !124
  %67 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 4, i32 2
  %68 = load float, ptr %67, align 4, !tbaa !125
  %69 = fsub float %66, %68
  %70 = fdiv float %64, %69
  %71 = fdiv float 1.000000e+00, %59
  %72 = fsub float %57, %71
  %73 = fdiv float 1.000000e+00, %70
  %74 = fsub float %68, %73
  %75 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 24
  %76 = load float, ptr %75, align 8, !tbaa !126
  %77 = fcmp oeq float %76, 3.000000e+00
  br i1 %77, label %78, label %96

78:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  %79 = sitofp i32 %50 to float
  %80 = fneg float %72
  %81 = call float @llvm.fmuladd.f32(float %59, float %80, float %79)
  %82 = fptosi float %81 to i32
  store i32 %82, ptr %8, align 4, !tbaa !67
  %83 = sitofp i32 %82 to float
  %84 = fadd float %59, %83
  %85 = fptosi float %84 to i32
  %86 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 1
  store i32 %85, ptr %86, align 4, !tbaa !69
  %87 = sitofp i32 %61 to float
  %88 = fneg float %74
  %89 = call float @llvm.fmuladd.f32(float %70, float %88, float %87)
  %90 = fptosi float %89 to i32
  %91 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 2
  store i32 %90, ptr %91, align 4, !tbaa !70
  %92 = sitofp i32 %90 to float
  %93 = fadd float %70, %92
  %94 = fptosi float %93 to i32
  %95 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 3
  store i32 %94, ptr %95, align 4, !tbaa !71
  call void @ui_draw_gradient(ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 3, float noundef 1.000000e+00) #11
  call void @glEnable(i32 noundef 3042) #11
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 48) #11
  call fastcc void @ui_draw_but_curve_grid(ptr noundef nonnull %3, float noundef %59, float noundef %70, float noundef %72, float noundef %74, float noundef 0x3FC55554C0000000)
  call void @glDisable(i32 noundef 3042) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br label %191

96:                                               ; preds = %18
  %97 = load i32, ptr %19, align 8, !tbaa !127
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  %100 = getelementptr inbounds %struct.uiWidgetColors, ptr %2, i64 0, i32 1
  br i1 %99, label %138, label %101

101:                                              ; preds = %96
  %102 = load i8, ptr %100, align 1, !tbaa !88
  %103 = getelementptr inbounds %struct.uiWidgetColors, ptr %2, i64 0, i32 1, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !88
  %105 = getelementptr inbounds %struct.uiWidgetColors, ptr %2, i64 0, i32 1, i64 2
  %106 = load i8, ptr %105, align 1, !tbaa !88
  %107 = add i8 %104, 20
  %108 = add i8 %102, 20
  %109 = add i8 %106, 20
  call void @glColor3ub(i8 noundef zeroext %108, i8 noundef zeroext %107, i8 noundef zeroext %109) #11
  %110 = load i32, ptr %3, align 4, !tbaa !67
  %111 = sitofp i32 %110 to float
  %112 = load i32, ptr %30, align 4, !tbaa !70
  %113 = sitofp i32 %112 to float
  %114 = load i32, ptr %34, align 4, !tbaa !69
  %115 = sitofp i32 %114 to float
  %116 = load i32, ptr %38, align 4, !tbaa !71
  %117 = sitofp i32 %116 to float
  call void @glRectf(float noundef %111, float noundef %113, float noundef %115, float noundef %117) #11
  call void @glColor3ubv(ptr noundef nonnull %100) #11
  %118 = load i32, ptr %3, align 4, !tbaa !67
  %119 = sitofp i32 %118 to float
  %120 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 5
  %121 = load float, ptr %120, align 8, !tbaa !128
  %122 = fsub float %121, %72
  %123 = call float @llvm.fmuladd.f32(float %59, float %122, float %119)
  %124 = load i32, ptr %30, align 4, !tbaa !70
  %125 = sitofp i32 %124 to float
  %126 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 5, i32 2
  %127 = load float, ptr %126, align 8, !tbaa !129
  %128 = fsub float %127, %74
  %129 = call float @llvm.fmuladd.f32(float %70, float %128, float %125)
  %130 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 5, i32 1
  %131 = load float, ptr %130, align 4, !tbaa !130
  %132 = fsub float %131, %72
  %133 = call float @llvm.fmuladd.f32(float %59, float %132, float %119)
  %134 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 5, i32 3
  %135 = load float, ptr %134, align 4, !tbaa !131
  %136 = fsub float %135, %74
  %137 = call float @llvm.fmuladd.f32(float %70, float %136, float %125)
  call void @glRectf(float noundef %123, float noundef %129, float noundef %133, float noundef %137) #11
  br label %147

138:                                              ; preds = %96
  call void @glColor3ubv(ptr noundef nonnull %100) #11
  %139 = load i32, ptr %3, align 4, !tbaa !67
  %140 = sitofp i32 %139 to float
  %141 = load i32, ptr %30, align 4, !tbaa !70
  %142 = sitofp i32 %141 to float
  %143 = load i32, ptr %34, align 4, !tbaa !69
  %144 = sitofp i32 %143 to float
  %145 = load i32, ptr %38, align 4, !tbaa !71
  %146 = sitofp i32 %145 to float
  call void @glRectf(float noundef %140, float noundef %142, float noundef %144, float noundef %146) #11
  br label %147

147:                                              ; preds = %138, %101
  %148 = getelementptr inbounds %struct.uiWidgetColors, ptr %2, i64 0, i32 1
  %149 = load i8, ptr %148, align 1, !tbaa !88
  %150 = getelementptr inbounds %struct.uiWidgetColors, ptr %2, i64 0, i32 1, i64 1
  %151 = load i8, ptr %150, align 1, !tbaa !88
  %152 = getelementptr inbounds %struct.uiWidgetColors, ptr %2, i64 0, i32 1, i64 2
  %153 = load i8, ptr %152, align 1, !tbaa !88
  %154 = add i8 %151, 16
  %155 = add i8 %149, 16
  %156 = add i8 %153, 16
  call void @glColor3ub(i8 noundef zeroext %155, i8 noundef zeroext %154, i8 noundef zeroext %156) #11
  call fastcc void @ui_draw_but_curve_grid(ptr noundef nonnull %3, float noundef %59, float noundef %70, float noundef %72, float noundef %74, float noundef 2.500000e-01)
  %157 = load i8, ptr %148, align 1, !tbaa !88
  %158 = load i8, ptr %150, align 1, !tbaa !88
  %159 = load i8, ptr %152, align 1, !tbaa !88
  %160 = add i8 %158, 24
  %161 = add i8 %157, 24
  %162 = add i8 %159, 24
  call void @glColor3ub(i8 noundef zeroext %161, i8 noundef zeroext %160, i8 noundef zeroext %162) #11
  call fastcc void @ui_draw_but_curve_grid(ptr noundef nonnull %3, float noundef %59, float noundef %70, float noundef %72, float noundef %74, float noundef 1.000000e+00)
  %163 = load i8, ptr %148, align 1, !tbaa !88
  %164 = load i8, ptr %150, align 1, !tbaa !88
  %165 = load i8, ptr %152, align 1, !tbaa !88
  %166 = add i8 %164, 50
  %167 = add i8 %163, 50
  %168 = add i8 %165, 50
  call void @glColor3ub(i8 noundef zeroext %167, i8 noundef zeroext %166, i8 noundef zeroext %168) #11
  call void @glBegin(i32 noundef 1) #11
  %169 = load i32, ptr %3, align 4, !tbaa !67
  %170 = sitofp i32 %169 to float
  %171 = load i32, ptr %30, align 4, !tbaa !70
  %172 = sitofp i32 %171 to float
  %173 = fneg float %74
  %174 = call float @llvm.fmuladd.f32(float %70, float %173, float %172)
  call void @glVertex2f(float noundef %170, float noundef %174) #11
  %175 = load i32, ptr %34, align 4, !tbaa !69
  %176 = sitofp i32 %175 to float
  %177 = load i32, ptr %30, align 4, !tbaa !70
  %178 = sitofp i32 %177 to float
  %179 = call float @llvm.fmuladd.f32(float %70, float %173, float %178)
  call void @glVertex2f(float noundef %176, float noundef %179) #11
  %180 = load i32, ptr %3, align 4, !tbaa !67
  %181 = sitofp i32 %180 to float
  %182 = fneg float %72
  %183 = call float @llvm.fmuladd.f32(float %59, float %182, float %181)
  %184 = load i32, ptr %30, align 4, !tbaa !70
  %185 = sitofp i32 %184 to float
  call void @glVertex2f(float noundef %183, float noundef %185) #11
  %186 = load i32, ptr %3, align 4, !tbaa !67
  %187 = sitofp i32 %186 to float
  %188 = call float @llvm.fmuladd.f32(float %59, float %182, float %187)
  %189 = load i32, ptr %38, align 4, !tbaa !71
  %190 = sitofp i32 %189 to float
  call void @glVertex2f(float noundef %188, float noundef %190) #11
  call void @glEnd() #11
  br label %191

191:                                              ; preds = %147, %78
  %192 = load i32, ptr %19, align 8, !tbaa !127
  %193 = and i32 %192, 8
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %271, label %195

195:                                              ; preds = %191
  %196 = load float, ptr %75, align 8, !tbaa !126
  %197 = fcmp oeq float %196, 3.000000e+00
  br i1 %197, label %198, label %224

198:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %199 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 10
  %200 = load float, ptr %199, align 4, !tbaa !38
  %201 = call float @linearrgb_to_srgb(float noundef %200) #11
  store float %201, ptr %10, align 4, !tbaa !38
  %202 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 10, i64 1
  %203 = load float, ptr %202, align 4, !tbaa !38
  %204 = call float @linearrgb_to_srgb(float noundef %203) #11
  %205 = getelementptr inbounds float, ptr %10, i64 1
  store float %204, ptr %205, align 4, !tbaa !38
  %206 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 10, i64 2
  %207 = load float, ptr %206, align 4, !tbaa !38
  %208 = call float @linearrgb_to_srgb(float noundef %207) #11
  %209 = getelementptr inbounds float, ptr %10, i64 2
  store float %208, ptr %209, align 4, !tbaa !38
  call void @rgb_to_hsv_v(ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  call void @glColor3ub(i8 noundef zeroext -16, i8 noundef zeroext -16, i8 noundef zeroext -16) #11
  call void @glBegin(i32 noundef 1) #11
  %210 = load i32, ptr %3, align 4, !tbaa !67
  %211 = sitofp i32 %210 to float
  %212 = load float, ptr %11, align 4, !tbaa !38
  %213 = fsub float %212, %72
  %214 = call float @llvm.fmuladd.f32(float %59, float %213, float %211)
  %215 = load i32, ptr %30, align 4, !tbaa !70
  %216 = sitofp i32 %215 to float
  call void @glVertex2f(float noundef %214, float noundef %216) #11
  %217 = load i32, ptr %3, align 4, !tbaa !67
  %218 = sitofp i32 %217 to float
  %219 = load float, ptr %11, align 4, !tbaa !38
  %220 = fsub float %219, %72
  %221 = call float @llvm.fmuladd.f32(float %59, float %220, float %218)
  %222 = load i32, ptr %38, align 4, !tbaa !71
  %223 = sitofp i32 %222 to float
  call void @glVertex2f(float noundef %221, float noundef %223) #11
  call void @glEnd() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  br label %271

224:                                              ; preds = %195
  %225 = load i32, ptr %20, align 4, !tbaa !120
  switch i32 %225, label %249 [
    i32 3, label %226
    i32 0, label %247
    i32 1, label %248
  ]

226:                                              ; preds = %224
  %227 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 10
  %228 = load float, ptr %227, align 4, !tbaa !38
  %229 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 10, i64 1
  %230 = load float, ptr %229, align 4, !tbaa !38
  %231 = fmul float %230, 0x3FDCCCCCC0000000
  %232 = call float @llvm.fmuladd.f32(float %228, float 0x3FD6666660000000, float %231)
  %233 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 10, i64 2
  %234 = load float, ptr %233, align 4, !tbaa !38
  %235 = call float @llvm.fmuladd.f32(float %234, float 0x3FC99999A0000000, float %232)
  call void @glColor3ub(i8 noundef zeroext -16, i8 noundef zeroext -16, i8 noundef zeroext -16) #11
  call void @glBegin(i32 noundef 1) #11
  %236 = load i32, ptr %3, align 4, !tbaa !67
  %237 = sitofp i32 %236 to float
  %238 = fsub float %235, %72
  %239 = call float @llvm.fmuladd.f32(float %59, float %238, float %237)
  %240 = load i32, ptr %30, align 4, !tbaa !70
  %241 = sitofp i32 %240 to float
  call void @glVertex2f(float noundef %239, float noundef %241) #11
  %242 = load i32, ptr %3, align 4, !tbaa !67
  %243 = sitofp i32 %242 to float
  %244 = call float @llvm.fmuladd.f32(float %59, float %238, float %243)
  %245 = load i32, ptr %38, align 4, !tbaa !71
  %246 = sitofp i32 %245 to float
  call void @glVertex2f(float noundef %244, float noundef %246) #11
  call void @glEnd() #11
  br label %271

247:                                              ; preds = %224
  call void @glColor3ub(i8 noundef zeroext -16, i8 noundef zeroext 100, i8 noundef zeroext 100) #11
  br label %250

248:                                              ; preds = %224
  call void @glColor3ub(i8 noundef zeroext 100, i8 noundef zeroext -16, i8 noundef zeroext 100) #11
  br label %250

249:                                              ; preds = %224
  call void @glColor3ub(i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext -16) #11
  br label %250

250:                                              ; preds = %248, %249, %247
  call void @glBegin(i32 noundef 1) #11
  %251 = load i32, ptr %3, align 4, !tbaa !67
  %252 = sitofp i32 %251 to float
  %253 = load i32, ptr %20, align 4, !tbaa !120
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 10, i64 %254
  %256 = load float, ptr %255, align 4, !tbaa !38
  %257 = fsub float %256, %72
  %258 = call float @llvm.fmuladd.f32(float %59, float %257, float %252)
  %259 = load i32, ptr %30, align 4, !tbaa !70
  %260 = sitofp i32 %259 to float
  call void @glVertex2f(float noundef %258, float noundef %260) #11
  %261 = load i32, ptr %3, align 4, !tbaa !67
  %262 = sitofp i32 %261 to float
  %263 = load i32, ptr %20, align 4, !tbaa !120
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 10, i64 %264
  %266 = load float, ptr %265, align 4, !tbaa !38
  %267 = fsub float %266, %72
  %268 = call float @llvm.fmuladd.f32(float %59, float %267, float %262)
  %269 = load i32, ptr %38, align 4, !tbaa !71
  %270 = sitofp i32 %269 to float
  call void @glVertex2f(float noundef %268, float noundef %270) #11
  call void @glEnd() #11
  br label %271

271:                                              ; preds = %198, %250, %226, %191
  %272 = getelementptr inbounds %struct.uiWidgetColors, ptr %2, i64 0, i32 3
  call void @glColor3ubv(ptr noundef nonnull %272) #11
  call void @glEnable(i32 noundef 2848) #11
  call void @glEnable(i32 noundef 3042) #11
  call void @glBegin(i32 noundef 3) #11
  %273 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22, i32 8
  %274 = load ptr, ptr %273, align 8, !tbaa !132
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %271
  call void @curvemapping_changed(ptr noundef nonnull %19, i8 noundef zeroext 0) #11
  br label %277

277:                                              ; preds = %276, %271
  %278 = load ptr, ptr %273, align 8, !tbaa !132
  %279 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22, i32 1
  %280 = load i16, ptr %279, align 2, !tbaa !134
  %281 = and i16 %280, 1
  %282 = icmp eq i16 %281, 0
  %283 = load i32, ptr %3, align 4, !tbaa !67
  %284 = sitofp i32 %283 to float
  br i1 %282, label %285, label %292

285:                                              ; preds = %277
  %286 = load i32, ptr %30, align 4, !tbaa !70
  %287 = sitofp i32 %286 to float
  %288 = getelementptr inbounds %struct.CurveMapPoint, ptr %278, i64 0, i32 1
  %289 = load float, ptr %288, align 4, !tbaa !135
  %290 = fsub float %289, %74
  %291 = call float @llvm.fmuladd.f32(float %70, float %290, float %287)
  call void @glVertex2f(float noundef %284, float noundef %291) #11
  br label %308

292:                                              ; preds = %277
  %293 = load float, ptr %278, align 4, !tbaa !137
  %294 = fsub float %293, %72
  %295 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22, i32 5
  %296 = load float, ptr %295, align 8, !tbaa !38
  %297 = fadd float %294, %296
  %298 = call float @llvm.fmuladd.f32(float %59, float %297, float %284)
  %299 = load i32, ptr %30, align 4, !tbaa !70
  %300 = sitofp i32 %299 to float
  %301 = getelementptr inbounds %struct.CurveMapPoint, ptr %278, i64 0, i32 1
  %302 = load float, ptr %301, align 4, !tbaa !135
  %303 = fsub float %302, %74
  %304 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22, i32 5, i64 1
  %305 = load float, ptr %304, align 4, !tbaa !38
  %306 = fadd float %303, %305
  %307 = call float @llvm.fmuladd.f32(float %70, float %306, float %300)
  call void @glVertex2f(float noundef %298, float noundef %307) #11
  br label %308

308:                                              ; preds = %292, %285
  br label %309

309:                                              ; preds = %308, %309
  %310 = phi i64 [ %323, %309 ], [ 0, %308 ]
  %311 = load i32, ptr %3, align 4, !tbaa !67
  %312 = sitofp i32 %311 to float
  %313 = getelementptr inbounds %struct.CurveMapPoint, ptr %278, i64 %310
  %314 = load float, ptr %313, align 4, !tbaa !137
  %315 = fsub float %314, %72
  %316 = call float @llvm.fmuladd.f32(float %59, float %315, float %312)
  %317 = load i32, ptr %30, align 4, !tbaa !70
  %318 = sitofp i32 %317 to float
  %319 = getelementptr inbounds %struct.CurveMapPoint, ptr %278, i64 %310, i32 1
  %320 = load float, ptr %319, align 4, !tbaa !135
  %321 = fsub float %320, %74
  %322 = call float @llvm.fmuladd.f32(float %70, float %321, float %318)
  call void @glVertex2f(float noundef %316, float noundef %322) #11
  %323 = add nuw nsw i64 %310, 1
  %324 = icmp eq i64 %323, 257
  br i1 %324, label %325, label %309, !llvm.loop !138

325:                                              ; preds = %309
  %326 = load i16, ptr %279, align 2, !tbaa !134
  %327 = and i16 %326, 1
  %328 = icmp eq i16 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %325
  %330 = load i32, ptr %34, align 4, !tbaa !69
  %331 = sitofp i32 %330 to float
  %332 = getelementptr inbounds %struct.CurveMapPoint, ptr %278, i64 256, i32 1
  %333 = load float, ptr %332, align 4, !tbaa !135
  br label %349

334:                                              ; preds = %325
  %335 = load i32, ptr %3, align 4, !tbaa !67
  %336 = sitofp i32 %335 to float
  %337 = getelementptr inbounds %struct.CurveMapPoint, ptr %278, i64 256
  %338 = load float, ptr %337, align 4, !tbaa !137
  %339 = fsub float %338, %72
  %340 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22, i32 6
  %341 = load float, ptr %340, align 8, !tbaa !38
  %342 = fsub float %339, %341
  %343 = call float @llvm.fmuladd.f32(float %59, float %342, float %336)
  %344 = getelementptr inbounds %struct.CurveMapPoint, ptr %278, i64 256, i32 1
  %345 = load float, ptr %344, align 4, !tbaa !135
  %346 = fsub float %345, %74
  %347 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22, i32 6, i64 1
  %348 = load float, ptr %347, align 4, !tbaa !38
  br label %349

349:                                              ; preds = %334, %329
  %350 = phi float [ %348, %334 ], [ %74, %329 ]
  %351 = phi float [ %346, %334 ], [ %333, %329 ]
  %352 = phi float [ %343, %334 ], [ %331, %329 ]
  %353 = load i32, ptr %30, align 4, !tbaa !70
  %354 = sitofp i32 %353 to float
  %355 = fsub float %351, %350
  %356 = call float @llvm.fmuladd.f32(float %70, float %355, float %354)
  call void @glVertex2f(float noundef %352, float noundef %356) #11
  call void @glEnd() #11
  call void @glDisable(i32 noundef 2848) #11
  call void @glDisable(i32 noundef 3042) #11
  %357 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22, i32 7
  %358 = load ptr, ptr %357, align 8, !tbaa !139
  call void @glPointSize(float noundef 3.000000e+00) #11
  call void @bglBegin(i32 noundef 0) #11
  %359 = load i16, ptr %23, align 8, !tbaa !140
  %360 = icmp sgt i16 %359, 0
  br i1 %360, label %361, label %386

361:                                              ; preds = %349
  %362 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  br label %363

363:                                              ; preds = %361, %363
  %364 = phi i64 [ 0, %361 ], [ %382, %363 ]
  %365 = getelementptr inbounds %struct.CurveMapPoint, ptr %358, i64 %364
  %366 = getelementptr inbounds %struct.CurveMapPoint, ptr %358, i64 %364, i32 2
  %367 = load i16, ptr %366, align 4, !tbaa !141
  %368 = and i16 %367, 1
  %369 = icmp eq i16 %368, 0
  %370 = select i1 %369, i32 3, i32 4
  call void @UI_ThemeColor(i32 noundef %370) #11
  %371 = load i32, ptr %3, align 4, !tbaa !67
  %372 = sitofp i32 %371 to float
  %373 = load float, ptr %365, align 4, !tbaa !137
  %374 = fsub float %373, %72
  %375 = call float @llvm.fmuladd.f32(float %59, float %374, float %372)
  store float %375, ptr %5, align 4, !tbaa !38
  %376 = load i32, ptr %30, align 4, !tbaa !70
  %377 = sitofp i32 %376 to float
  %378 = getelementptr inbounds %struct.CurveMapPoint, ptr %358, i64 %364, i32 1
  %379 = load float, ptr %378, align 4, !tbaa !135
  %380 = fsub float %379, %74
  %381 = call float @llvm.fmuladd.f32(float %70, float %380, float %377)
  store float %381, ptr %362, align 4, !tbaa !38
  call void @bglVertex2fv(ptr noundef nonnull %5) #11
  %382 = add nuw nsw i64 %364, 1
  %383 = load i16, ptr %23, align 8, !tbaa !140
  %384 = sext i16 %383 to i64
  %385 = icmp slt i64 %382, %384
  br i1 %385, label %363, label %386, !llvm.loop !142

386:                                              ; preds = %363, %349
  call void @bglEnd() #11
  call void @glPointSize(float noundef 1.000000e+00) #11
  %387 = load i32, ptr %6, align 16, !tbaa !34
  %388 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 1
  %389 = load i32, ptr %388, align 4, !tbaa !34
  %390 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 2
  %391 = load i32, ptr %390, align 8, !tbaa !34
  %392 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 3
  %393 = load i32, ptr %392, align 4, !tbaa !34
  call void @glScissor(i32 noundef %387, i32 noundef %389, i32 noundef %391, i32 noundef %393) #11
  call void @glColor3ubv(ptr noundef %2) #11
  %394 = load i32, ptr %3, align 4, !tbaa !67
  %395 = sitofp i32 %394 to float
  %396 = load i32, ptr %30, align 4, !tbaa !70
  %397 = sitofp i32 %396 to float
  %398 = load i32, ptr %34, align 4, !tbaa !69
  %399 = sitofp i32 %398 to float
  %400 = load i32, ptr %38, align 4, !tbaa !71
  %401 = sitofp i32 %400 to float
  call void @fdrawbox(float noundef %395, float noundef %397, float noundef %399, float noundef %401) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

declare zeroext i8 @BLI_rcti_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @ui_draw_gradient(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_draw_but_curve_grid(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #2 {
  tail call void @glBegin(i32 noundef 1) #11
  %7 = fmul float %1, %5
  %8 = load i32, ptr %0, align 4, !tbaa !67
  %9 = sitofp i32 %8 to float
  %10 = fneg float %3
  %11 = tail call float @llvm.fmuladd.f32(float %1, float %10, float %9)
  %12 = fcmp ogt float %11, %9
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = fsub float %11, %9
  %15 = tail call float @llvm.floor.f32(float %14)
  %16 = fneg float %7
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %15, float %11)
  br label %18

18:                                               ; preds = %13, %6
  %19 = phi float [ %17, %13 ], [ %11, %6 ]
  %20 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !69
  %22 = sitofp i32 %21 to float
  %23 = fcmp olt float %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi float [ %19, %24 ], [ %33, %27 ]
  %29 = load i32, ptr %25, align 4, !tbaa !70
  %30 = sitofp i32 %29 to float
  tail call void @glVertex2f(float noundef %28, float noundef %30) #11
  %31 = load i32, ptr %26, align 4, !tbaa !71
  %32 = sitofp i32 %31 to float
  tail call void @glVertex2f(float noundef %28, float noundef %32) #11
  %33 = fadd float %7, %28
  %34 = load i32, ptr %20, align 4, !tbaa !69
  %35 = sitofp i32 %34 to float
  %36 = fcmp olt float %33, %35
  br i1 %36, label %27, label %37, !llvm.loop !143

37:                                               ; preds = %27, %18
  %38 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %39 = fmul float %2, %5
  %40 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !70
  %42 = sitofp i32 %41 to float
  %43 = fneg float %4
  %44 = tail call float @llvm.fmuladd.f32(float %2, float %43, float %42)
  %45 = fcmp ogt float %44, %42
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = fsub float %44, %42
  %48 = tail call float @llvm.floor.f32(float %47)
  %49 = fneg float %39
  %50 = tail call float @llvm.fmuladd.f32(float %49, float %48, float %44)
  br label %51

51:                                               ; preds = %46, %37
  %52 = phi float [ %50, %46 ], [ %44, %37 ]
  %53 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !71
  %55 = sitofp i32 %54 to float
  %56 = fcmp olt float %52, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51, %57
  %58 = phi float [ %63, %57 ], [ %52, %51 ]
  %59 = load i32, ptr %0, align 4, !tbaa !67
  %60 = sitofp i32 %59 to float
  tail call void @glVertex2f(float noundef %60, float noundef %58) #11
  %61 = load i32, ptr %38, align 4, !tbaa !69
  %62 = sitofp i32 %61 to float
  tail call void @glVertex2f(float noundef %62, float noundef %58) #11
  %63 = fadd float %39, %58
  %64 = load i32, ptr %53, align 4, !tbaa !71
  %65 = sitofp i32 %64 to float
  %66 = fcmp olt float %63, %65
  br i1 %66, label %57, label %67, !llvm.loop !144

67:                                               ; preds = %57, %51
  tail call void @glEnd() #11
  ret void
}

declare void @rgb_to_hsv_v(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

declare void @curvemapping_changed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @glPointSize(float noundef) local_unnamed_addr #5

declare void @bglBegin(i32 noundef) local_unnamed_addr #5

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #5

declare void @bglVertex2fv(ptr noundef) local_unnamed_addr #5

declare void @bglEnd() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_but_TRACKPREVIEW(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = load i32, ptr %3, align 4, !tbaa !67
  %9 = sitofp i32 %8 to float
  %10 = fadd float %9, 1.000000e+00
  %11 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !69
  %13 = sitofp i32 %12 to float
  %14 = fadd float %13, -1.000000e+00
  %15 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !70
  %17 = sitofp i32 %16 to float
  %18 = fadd float %17, 1.000000e+00
  %19 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !71
  %21 = sitofp i32 %20 to float
  %22 = fadd float %21, -1.000000e+00
  %23 = fsub float %14, %10
  %24 = fadd float %23, 1.000000e+00
  %25 = fptosi float %24 to i32
  %26 = fsub float %22, %18
  %27 = fptosi float %26 to i32
  tail call void @glEnable(i32 noundef 3042) #11
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %5) #11
  %28 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !73
  %30 = sitofp i32 %29 to float
  %31 = fadd float %10, -1.000000e+00
  %32 = fadd float %31, %30
  %33 = fptosi float %32 to i32
  %34 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !77
  %36 = sitofp i32 %35 to float
  %37 = fadd float %18, -1.000000e+00
  %38 = fadd float %37, %36
  %39 = fptosi float %38 to i32
  %40 = fadd float %14, 1.000000e+00
  %41 = fsub float %40, %31
  %42 = fptosi float %41 to i32
  %43 = fadd float %22, 1.000000e+00
  %44 = fsub float %43, %37
  %45 = fptosi float %44 to i32
  call void @glScissor(i32 noundef %33, i32 noundef %39, i32 noundef %42, i32 noundef %45) #11
  %46 = getelementptr inbounds %struct.MovieClipScopes, ptr %7, i64 0, i32 9
  %47 = load i16, ptr %46, align 8, !tbaa !145
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %4
  call void @glColor4f(float noundef 0x3FE6666660000000, float noundef 0x3FD3333340000000, float noundef 0x3FD3333340000000, float noundef 0x3FD3333340000000) #11
  store i32 15, ptr @roundboxtype, align 4, !tbaa !34
  call void @uiDrawBox(i32 noundef 9, float noundef %31, float noundef %18, float noundef %40, float noundef %43, float noundef 3.000000e+00)
  br label %94

50:                                               ; preds = %4
  %51 = getelementptr inbounds %struct.MovieClipScopes, ptr %7, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !148
  %53 = icmp eq ptr %52, null
  br i1 %53, label %94, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.MovieClipScopes, ptr %7, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !149
  %57 = icmp eq ptr %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ImBuf, ptr %56, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !150
  %61 = icmp eq i32 %60, %25
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ImBuf, ptr %56, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !153
  %65 = icmp eq i32 %64, %27
  br i1 %65, label %94, label %66

66:                                               ; preds = %62, %58
  br i1 %57, label %68, label %67

67:                                               ; preds = %66
  call void @IMB_freeImBuf(ptr noundef nonnull %56) #11
  br label %68

68:                                               ; preds = %54, %67, %66
  %69 = getelementptr inbounds %struct.MovieClipScopes, ptr %7, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !154
  %71 = getelementptr inbounds %struct.MovieClipScopes, ptr %7, i64 0, i32 4
  %72 = load i32, ptr %71, align 4, !tbaa !155
  %73 = load ptr, ptr %51, align 8, !tbaa !148
  %74 = getelementptr inbounds %struct.MovieClipScopes, ptr %7, i64 0, i32 12
  %75 = load ptr, ptr %74, align 8, !tbaa !156
  %76 = getelementptr inbounds %struct.MovieClipScopes, ptr %7, i64 0, i32 5
  %77 = getelementptr inbounds %struct.MovieClipScopes, ptr %7, i64 0, i32 1
  %78 = load i16, ptr %77, align 2, !tbaa !157
  %79 = trunc i16 %78 to i8
  %80 = getelementptr inbounds %struct.MovieClipScopes, ptr %7, i64 0, i32 8
  %81 = call ptr @BKE_tracking_sample_pattern(i32 noundef %70, i32 noundef %72, ptr noundef %73, ptr noundef %75, ptr noundef nonnull %76, i8 noundef zeroext 1, i8 noundef zeroext %79, i32 noundef %25, i32 noundef %27, ptr noundef nonnull %80) #11
  %82 = icmp eq ptr %81, null
  br i1 %82, label %94, label %83

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.ImBuf, ptr %81, i64 0, i32 9
  %85 = load ptr, ptr %84, align 8, !tbaa !158
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  call void @IMB_rect_from_float(ptr noundef nonnull %81) #11
  br label %88

88:                                               ; preds = %87, %83
  %89 = getelementptr inbounds %struct.ImBuf, ptr %81, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !159
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  store ptr %81, ptr %55, align 8, !tbaa !149
  br label %94

93:                                               ; preds = %88
  call void @IMB_freeImBuf(ptr noundef nonnull %81) #11
  br label %94

94:                                               ; preds = %68, %93, %92, %50, %62, %49
  br i1 %48, label %95, label %154

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.MovieClipScopes, ptr %7, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !149
  %98 = icmp eq ptr %97, null
  br i1 %98, label %153, label %99

99:                                               ; preds = %95
  call void @glPushMatrix() #11
  %100 = getelementptr inbounds %struct.MovieClipScopes, ptr %7, i64 0, i32 8
  %101 = load float, ptr %100, align 8, !tbaa !38
  %102 = getelementptr inbounds %struct.MovieClipScopes, ptr %7, i64 0, i32 8, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !38
  %104 = load i32, ptr %28, align 8, !tbaa !73
  %105 = sitofp i32 %104 to float
  %106 = fadd float %10, %105
  %107 = fptosi float %106 to i32
  %108 = load i32, ptr %34, align 8, !tbaa !77
  %109 = sitofp i32 %108 to float
  %110 = fadd float %18, %109
  %111 = fptosi float %110 to i32
  %112 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %113 = load i32, ptr %112, align 8, !tbaa !34
  %114 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %115 = load i32, ptr %114, align 4, !tbaa !34
  call void @glScissor(i32 noundef %107, i32 noundef %111, i32 noundef %113, i32 noundef %115) #11
  %116 = icmp sgt i32 %25, 0
  %117 = icmp sgt i32 %27, 0
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %119, label %152

119:                                              ; preds = %99
  %120 = load ptr, ptr %96, align 8, !tbaa !149
  %121 = getelementptr inbounds %struct.MovieClipScopes, ptr %7, i64 0, i32 1
  %122 = load i16, ptr %121, align 2, !tbaa !157
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD3333340000000) #11
  store i32 15, ptr @roundboxtype, align 4, !tbaa !34
  call void @uiDrawBox(i32 noundef 9, float noundef %31, float noundef %18, float noundef %40, float noundef %43, float noundef 3.000000e+00)
  br label %125

125:                                              ; preds = %124, %119
  %126 = fadd float %18, 1.000000e+00
  %127 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !150
  %129 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 3
  %130 = load i32, ptr %129, align 4, !tbaa !153
  %131 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 8
  %132 = load ptr, ptr %131, align 8, !tbaa !159
  call void @glaDrawPixelsSafe(float noundef %10, float noundef %126, i32 noundef %128, i32 noundef %130, i32 noundef %128, i32 noundef 6408, i32 noundef 5121, ptr noundef %132) #11
  %133 = fadd float %10, %101
  %134 = fadd float %18, %103
  call void @glTranslatef(float noundef %133, float noundef %134, float noundef 0.000000e+00) #11
  %135 = load i32, ptr %28, align 8, !tbaa !73
  %136 = sitofp i32 %135 to float
  %137 = fadd float %10, %136
  %138 = fptosi float %137 to i32
  %139 = load i32, ptr %34, align 8, !tbaa !77
  %140 = sitofp i32 %139 to float
  %141 = fadd float %18, %140
  %142 = fptosi float %141 to i32
  %143 = fptosi float %23 to i32
  call void @glScissor(i32 noundef %138, i32 noundef %142, i32 noundef %143, i32 noundef %27) #11
  br label %144

144:                                              ; preds = %125, %148
  %145 = phi i32 [ 0, %125 ], [ %150, %148 ]
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #11
  call void @glEnable(i32 noundef 2852) #11
  br label %148

148:                                              ; preds = %144, %147
  %149 = phi i32 [ 143, %147 ], [ 140, %144 ]
  call void @UI_ThemeColor(i32 noundef %149) #11
  call void @glBegin(i32 noundef 1) #11
  call void @glVertex2f(float noundef -1.000000e+01, float noundef 0.000000e+00) #11
  call void @glVertex2f(float noundef 1.000000e+01, float noundef 0.000000e+00) #11
  call void @glVertex2f(float noundef 0.000000e+00, float noundef -1.000000e+01) #11
  call void @glVertex2f(float noundef 0.000000e+00, float noundef 1.000000e+01) #11
  call void @glEnd() #11
  %150 = add nuw nsw i32 %145, 1
  %151 = icmp eq i32 %145, 0
  br i1 %151, label %144, label %152, !llvm.loop !160

152:                                              ; preds = %148, %99
  call void @glDisable(i32 noundef 2852) #11
  call void @glPopMatrix() #11
  br label %154

153:                                              ; preds = %95
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD3333340000000) #11
  store i32 15, ptr @roundboxtype, align 4, !tbaa !34
  call void @uiDrawBox(i32 noundef 9, float noundef %31, float noundef %18, float noundef %40, float noundef %43, float noundef 3.000000e+00)
  br label %154

154:                                              ; preds = %94, %152, %153
  %155 = load i32, ptr %5, align 16, !tbaa !34
  %156 = getelementptr inbounds i32, ptr %5, i64 1
  %157 = load i32, ptr %156, align 4, !tbaa !34
  %158 = getelementptr inbounds i32, ptr %5, i64 2
  %159 = load i32, ptr %158, align 8, !tbaa !34
  %160 = getelementptr inbounds i32, ptr %5, i64 3
  %161 = load i32, ptr %160, align 4, !tbaa !34
  call void @glScissor(i32 noundef %155, i32 noundef %157, i32 noundef %159, i32 noundef %161) #11
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #11
  store i32 15, ptr @roundboxtype, align 4, !tbaa !34
  call void @uiDrawBox(i32 noundef 2, float noundef %31, float noundef %18, float noundef %40, float noundef %43, float noundef 3.000000e+00)
  call void @glDisable(i32 noundef 3042) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret void
}

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #5

declare ptr @BKE_tracking_sample_pattern(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #5

declare void @glaDrawPixelsSafe(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ui_draw_but_NODESOCKET(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca [4 x i32], align 16
  %6 = alloca %struct.rcti, align 4
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %8 = load i32, ptr %3, align 4, !tbaa !67
  %9 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !69
  %11 = add nsw i32 %10, %8
  %12 = sitofp i32 %11 to float
  %13 = fmul float %12, 5.000000e-01
  %14 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !70
  %16 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !71
  %18 = add nsw i32 %17, %15
  %19 = sitofp i32 %18 to float
  %20 = fmul float %19, 5.000000e-01
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %5) #11
  %21 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !73
  %23 = load i32, ptr %3, align 4, !tbaa !67
  %24 = add nsw i32 %23, %22
  store i32 %24, ptr %6, align 4, !tbaa !67
  %25 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !77
  %27 = load i32, ptr %14, align 4, !tbaa !70
  %28 = add nsw i32 %27, %26
  %29 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %28, ptr %29, align 4, !tbaa !70
  %30 = load i32, ptr %9, align 4, !tbaa !69
  %31 = add nsw i32 %30, %22
  %32 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %31, ptr %32, align 4, !tbaa !69
  %33 = load i32, ptr %16, align 4, !tbaa !71
  %34 = add nsw i32 %33, %26
  %35 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %34, ptr %35, align 4, !tbaa !71
  %36 = call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %6, ptr noundef nonnull %21, ptr noundef nonnull %6) #11
  %37 = load i32, ptr %6, align 4, !tbaa !67
  %38 = load i32, ptr %29, align 4, !tbaa !70
  %39 = load i32, ptr %32, align 4, !tbaa !69
  %40 = sub nsw i32 %39, %37
  %41 = load i32, ptr %35, align 4, !tbaa !71
  %42 = sub nsw i32 %41, %38
  call void @glScissor(i32 noundef %37, i32 noundef %38, i32 noundef %40, i32 noundef %42) #11
  call void @glColor4ubv(ptr noundef nonnull %7) #11
  call void @glEnable(i32 noundef 3042) #11
  call void @glBegin(i32 noundef 9) #11
  br label %43

43:                                               ; preds = %4, %43
  %44 = phi i64 [ 0, %4 ], [ %51, %43 ]
  %45 = getelementptr inbounds [16 x float], ptr @__const.ui_draw_but_NODESOCKET.si, i64 0, i64 %44
  %46 = load float, ptr %45, align 4, !tbaa !38
  %47 = call float @llvm.fmuladd.f32(float %46, float 5.000000e+00, float %13)
  %48 = getelementptr inbounds [16 x float], ptr @__const.ui_draw_but_NODESOCKET.co, i64 0, i64 %44
  %49 = load float, ptr %48, align 4, !tbaa !38
  %50 = call float @llvm.fmuladd.f32(float %49, float 5.000000e+00, float %20)
  call void @glVertex2f(float noundef %47, float noundef %50) #11
  %51 = add nuw nsw i64 %44, 1
  %52 = icmp eq i64 %51, 16
  br i1 %52, label %53, label %43, !llvm.loop !161

53:                                               ; preds = %43
  call void @glEnd() #11
  call void @glDisable(i32 noundef 3042) #11
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -106) #11
  call void @glEnable(i32 noundef 3042) #11
  call void @glEnable(i32 noundef 2848) #11
  call void @glBegin(i32 noundef 2) #11
  br label %54

54:                                               ; preds = %53, %54
  %55 = phi i64 [ 0, %53 ], [ %62, %54 ]
  %56 = getelementptr inbounds [16 x float], ptr @__const.ui_draw_but_NODESOCKET.si, i64 0, i64 %55
  %57 = load float, ptr %56, align 4, !tbaa !38
  %58 = call float @llvm.fmuladd.f32(float %57, float 5.000000e+00, float %13)
  %59 = getelementptr inbounds [16 x float], ptr @__const.ui_draw_but_NODESOCKET.co, i64 0, i64 %55
  %60 = load float, ptr %59, align 4, !tbaa !38
  %61 = call float @llvm.fmuladd.f32(float %60, float 5.000000e+00, float %20)
  call void @glVertex2f(float noundef %58, float noundef %61) #11
  %62 = add nuw nsw i64 %55, 1
  %63 = icmp eq i64 %62, 16
  br i1 %63, label %64, label %54, !llvm.loop !162

64:                                               ; preds = %54
  call void @glEnd() #11
  call void @glDisable(i32 noundef 2848) #11
  call void @glDisable(i32 noundef 3042) #11
  call void @glLineWidth(float noundef 1.000000e+00) #11
  %65 = load i32, ptr %5, align 16, !tbaa !34
  %66 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  %67 = load i32, ptr %66, align 4, !tbaa !34
  %68 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %69 = load i32, ptr %68, align 8, !tbaa !34
  %70 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %71 = load i32, ptr %70, align 4, !tbaa !34
  call void @glScissor(i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret void
}

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #5

declare void @glLineWidth(float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @uiDrawBoxShadow(i8 noundef zeroext %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #2 {
  %6 = zext i8 %0 to i32
  %7 = mul nuw nsw i32 %6, 20
  %8 = lshr i32 %7, 8
  %9 = trunc i32 %8 to i8
  tail call fastcc void @ui_shadowbox(float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef 1.100000e+01, i8 noundef zeroext %9)
  %10 = mul nuw nsw i32 %6, 40
  %11 = lshr i32 %10, 8
  %12 = trunc i32 %11 to i8
  tail call fastcc void @ui_shadowbox(float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef 7.000000e+00, i8 noundef zeroext %12)
  %13 = mul nuw nsw i32 %6, 80
  %14 = lshr i32 %13, 8
  %15 = trunc i32 %14 to i8
  tail call fastcc void @ui_shadowbox(float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef 5.000000e+00, i8 noundef zeroext %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_shadowbox(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i8 noundef zeroext %5) unnamed_addr #2 {
  tail call void @glEnable(i32 noundef 3042) #11
  tail call void @glShadeModel(i32 noundef 7425) #11
  tail call void @glBegin(i32 noundef 9) #11
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %5) #11
  tail call void @glVertex2f(float noundef %2, float noundef %1) #11
  %7 = tail call float @llvm.fmuladd.f32(float %4, float 0xBFD3333340000000, float %3)
  tail call void @glVertex2f(float noundef %2, float noundef %7) #11
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %8 = fadd float %2, %4
  %9 = tail call float @llvm.fmuladd.f32(float %4, float -7.500000e-01, float %3)
  tail call void @glVertex2f(float noundef %8, float noundef %9) #11
  tail call void @glVertex2f(float noundef %8, float noundef %1) #11
  tail call void @glEnd() #11
  tail call void @glBegin(i32 noundef 9) #11
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %5) #11
  tail call void @glVertex2f(float noundef %2, float noundef %1) #11
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  tail call void @glVertex2f(float noundef %8, float noundef %1) #11
  %10 = tail call float @llvm.fmuladd.f32(float %4, float 0x3FE6666660000000, float %2)
  %11 = tail call float @llvm.fmuladd.f32(float %4, float 0xBFE6666660000000, float %1)
  tail call void @glVertex2f(float noundef %10, float noundef %11) #11
  %12 = fsub float %1, %4
  tail call void @glVertex2f(float noundef %2, float noundef %12) #11
  tail call void @glEnd() #11
  tail call void @glBegin(i32 noundef 9) #11
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %5) #11
  %13 = tail call float @llvm.fmuladd.f32(float %4, float 0x3FD3333340000000, float %0)
  tail call void @glVertex2f(float noundef %13, float noundef %1) #11
  tail call void @glVertex2f(float noundef %2, float noundef %1) #11
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  tail call void @glVertex2f(float noundef %2, float noundef %12) #11
  %14 = tail call float @llvm.fmuladd.f32(float %4, float 5.000000e-01, float %0)
  tail call void @glVertex2f(float noundef %14, float noundef %12) #11
  tail call void @glEnd() #11
  tail call void @glDisable(i32 noundef 3042) #11
  tail call void @glShadeModel(i32 noundef 7424) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ui_dropshadow(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = fmul float %3, 2.000000e+00
  %7 = fdiv float %6, 2.550000e+02
  tail call void @glEnable(i32 noundef 3042) #11
  %8 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %9 = load float, ptr %8, align 4, !tbaa !124
  %10 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %11 = load float, ptr %10, align 4, !tbaa !125
  %12 = fsub float %9, %11
  %13 = fadd float %12, -1.000000e+01
  %14 = fmul float %13, 5.000000e-01
  %15 = fcmp olt float %14, %1
  %16 = select i1 %15, float %14, float %1
  %17 = fmul float %2, 1.200000e+01
  %18 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  br label %19

19:                                               ; preds = %5, %19
  %20 = phi float [ %7, %5 ], [ %24, %19 ]
  %21 = phi i32 [ 12, %5 ], [ %23, %19 ]
  %22 = phi float [ %17, %5 ], [ %35, %19 ]
  %23 = add nsw i32 %21, -1
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %20) #11
  %24 = fadd float %7, %20
  %25 = load float, ptr %0, align 4, !tbaa !123
  %26 = fsub float %25, %22
  %27 = load float, ptr %10, align 4, !tbaa !125
  %28 = fsub float %27, %22
  %29 = load float, ptr %18, align 4, !tbaa !122
  %30 = fadd float %22, %29
  %31 = load float, ptr %8, align 4, !tbaa !124
  %32 = fadd float %31, -1.000000e+01
  %33 = fadd float %22, %32
  %34 = fadd float %16, %22
  tail call void @uiDrawBox(i32 noundef 9, float noundef %26, float noundef %28, float noundef %30, float noundef %33, float noundef %34)
  %35 = fsub float %22, %2
  %36 = icmp eq i32 %23, 0
  br i1 %36, label %37, label %19, !llvm.loop !163

37:                                               ; preds = %19
  tail call void @glEnable(i32 noundef 2848) #11
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 100) #11
  %38 = load float, ptr %0, align 4, !tbaa !123
  %39 = fadd float %38, -5.000000e-01
  %40 = load float, ptr %10, align 4, !tbaa !125
  %41 = fadd float %40, -5.000000e-01
  %42 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %43 = load float, ptr %42, align 4, !tbaa !122
  %44 = fadd float %43, 5.000000e-01
  %45 = load float, ptr %8, align 4, !tbaa !124
  %46 = fadd float %45, 5.000000e-01
  %47 = fadd float %1, 5.000000e-01
  tail call void @uiDrawBox(i32 noundef 2, float noundef %39, float noundef %41, float noundef %44, float noundef %46, float noundef %47)
  tail call void @glDisable(i32 noundef 2848) #11
  tail call void @glDisable(i32 noundef 3042) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #9

declare void @rgb_to_yuv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atanf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

declare void @setlinestyle(i32 noundef) local_unnamed_addr #5

declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #5

declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !36, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !41, !42}
!44 = distinct !{!44, !41, !42}
!45 = distinct !{!45, !41, !42}
!46 = distinct !{!46, !41, !42}
!47 = distinct !{!47, !41, !42}
!48 = distinct !{!48, !41, !42}
!49 = distinct !{!49, !41, !42}
!50 = distinct !{!50, !41, !42}
!51 = distinct !{!51, !41, !42}
!52 = distinct !{!52, !41, !42}
!53 = distinct !{!53, !41, !42}
!54 = distinct !{!54, !41, !42}
!55 = distinct !{!55, !41, !42}
!56 = distinct !{!56, !41, !42}
!57 = !{!58, !59, i64 608}
!58 = !{!"uiBut", !59, i64 0, !59, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !60, i64 32, !60, i64 34, !60, i64 36, !60, i64 38, !60, i64 40, !60, i64 42, !60, i64 44, !60, i64 46, !60, i64 48, !59, i64 56, !36, i64 64, !36, i64 192, !61, i64 592, !59, i64 608, !39, i64 616, !39, i64 620, !39, i64 624, !39, i64 628, !39, i64 632, !39, i64 636, !36, i64 640, !59, i64 648, !59, i64 656, !59, i64 664, !59, i64 672, !59, i64 680, !59, i64 688, !59, i64 696, !59, i64 704, !59, i64 712, !59, i64 720, !59, i64 728, !59, i64 736, !59, i64 744, !59, i64 752, !36, i64 760, !59, i64 768, !59, i64 776, !35, i64 784, !36, i64 788, !36, i64 789, !36, i64 790, !36, i64 791, !36, i64 792, !60, i64 794, !60, i64 796, !59, i64 800, !59, i64 808, !62, i64 816, !59, i64 840, !35, i64 848, !62, i64 856, !59, i64 880, !59, i64 888, !59, i64 896, !60, i64 904, !36, i64 906, !36, i64 907, !59, i64 912, !59, i64 920, !39, i64 928, !59, i64 936, !59, i64 944, !59, i64 952, !59, i64 960, !59, i64 968, !59, i64 976, !59, i64 984, !59, i64 992}
!59 = !{!"any pointer", !36, i64 0}
!60 = !{!"short", !36, i64 0}
!61 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!62 = !{!"PointerRNA", !63, i64 0, !59, i64 8, !59, i64 16}
!63 = !{!"", !59, i64 0}
!64 = !{!65, !35, i64 4}
!65 = !{!"Histogram", !35, i64 0, !35, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !39, i64 5128, !39, i64 5132, !60, i64 5136, !60, i64 5138, !35, i64 5140, !36, i64 5144}
!66 = !{!65, !60, i64 5138}
!67 = !{!68, !35, i64 0}
!68 = !{!"rcti", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!69 = !{!68, !35, i64 4}
!70 = !{!68, !35, i64 8}
!71 = !{!68, !35, i64 12}
!72 = !{!65, !39, i64 5132}
!73 = !{!74, !35, i64 176}
!74 = !{!"ARegion", !59, i64 0, !59, i64 8, !75, i64 16, !68, i64 176, !68, i64 192, !60, i64 208, !60, i64 210, !60, i64 212, !60, i64 214, !60, i64 216, !60, i64 218, !39, i64 220, !60, i64 224, !60, i64 226, !60, i64 228, !60, i64 230, !60, i64 232, !60, i64 234, !60, i64 236, !60, i64 238, !59, i64 240, !76, i64 248, !76, i64 264, !76, i64 280, !76, i64 296, !76, i64 312, !76, i64 328, !76, i64 344, !59, i64 360, !59, i64 368, !59, i64 376}
!75 = !{!"View2D", !61, i64 0, !61, i64 16, !68, i64 32, !68, i64 48, !68, i64 64, !36, i64 80, !36, i64 88, !39, i64 96, !39, i64 100, !60, i64 104, !60, i64 106, !60, i64 108, !60, i64 110, !60, i64 112, !60, i64 114, !60, i64 116, !60, i64 118, !60, i64 120, !60, i64 122, !60, i64 124, !60, i64 126, !59, i64 128, !35, i64 136, !35, i64 140, !59, i64 144, !59, i64 152}
!76 = !{!"ListBase", !59, i64 0, !59, i64 8}
!77 = !{!74, !35, i64 184}
!78 = distinct !{!78, !41, !42}
!79 = !{!65, !60, i64 5136}
!80 = distinct !{!80, !41, !42}
!81 = distinct !{!81, !41, !42}
!82 = distinct !{!82, !41, !42}
!83 = !{!84, !39, i64 24}
!84 = !{!"Scopes", !35, i64 0, !35, i64 4, !35, i64 8, !39, i64 12, !35, i64 16, !39, i64 20, !39, i64 24, !35, i64 28, !39, i64 32, !35, i64 36, !36, i64 40, !65, i64 64, !59, i64 5224, !59, i64 5232, !59, i64 5240, !59, i64 5248, !35, i64 5256, !35, i64 5260}
!85 = !{!84, !39, i64 20}
!86 = distinct !{!86, !41, !42}
!87 = distinct !{!87, !41, !42}
!88 = !{!36, !36, i64 0}
!89 = distinct !{!89, !41, !42}
!90 = !{!84, !35, i64 16}
!91 = distinct !{!91, !41, !42}
!92 = !{!84, !35, i64 0}
!93 = !{!84, !59, i64 5224}
!94 = !{!84, !35, i64 5256}
!95 = !{!84, !59, i64 5232}
!96 = !{!84, !59, i64 5240}
!97 = distinct !{!97, !41, !42}
!98 = !{!84, !39, i64 32}
!99 = distinct !{!99, !41, !42}
!100 = distinct !{!100, !41, !42}
!101 = distinct !{!101, !41, !42}
!102 = !{!84, !59, i64 5248}
!103 = !{!58, !59, i64 976}
!104 = !{!58, !59, i64 992}
!105 = !{!106, !36, i64 556}
!106 = !{!"uiBlock", !59, i64 0, !59, i64 8, !76, i64 16, !59, i64 32, !59, i64 40, !76, i64 48, !76, i64 64, !59, i64 80, !76, i64 88, !36, i64 104, !36, i64 232, !61, i64 296, !39, i64 312, !35, i64 316, !59, i64 320, !59, i64 328, !59, i64 336, !59, i64 344, !59, i64 352, !59, i64 360, !59, i64 368, !59, i64 376, !59, i64 384, !59, i64 392, !59, i64 400, !59, i64 408, !59, i64 416, !35, i64 424, !60, i64 428, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !107, i64 440, !59, i64 448, !36, i64 456, !36, i64 457, !36, i64 458, !36, i64 459, !35, i64 460, !35, i64 464, !35, i64 468, !35, i64 472, !35, i64 476, !61, i64 480, !76, i64 496, !59, i64 512, !59, i64 520, !59, i64 528, !59, i64 536, !36, i64 544, !36, i64 556, !36, i64 557, !108, i64 624}
!107 = !{!"double", !36, i64 0}
!108 = !{!"PieMenuData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !107, i64 32, !35, i64 40, !35, i64 44, !39, i64 48}
!109 = distinct !{!109, !41, !42}
!110 = distinct !{!110, !41, !42}
!111 = !{!112, !60, i64 0}
!112 = !{!"ColorBand", !60, i64 0, !60, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!113 = !{!112, !60, i64 2}
!114 = !{!115, !39, i64 16}
!115 = !{!"CBData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !35, i64 20}
!116 = distinct !{!116, !41, !42}
!117 = distinct !{!117, !41, !42}
!118 = distinct !{!118, !41, !42}
!119 = !{!58, !59, i64 984}
!120 = !{!121, !35, i64 4}
!121 = !{!"CurveMapping", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !61, i64 16, !61, i64 32, !36, i64 48, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372}
!122 = !{!61, !39, i64 4}
!123 = !{!61, !39, i64 0}
!124 = !{!61, !39, i64 12}
!125 = !{!61, !39, i64 8}
!126 = !{!58, !39, i64 632}
!127 = !{!121, !35, i64 0}
!128 = !{!121, !39, i64 32}
!129 = !{!121, !39, i64 40}
!130 = !{!121, !39, i64 36}
!131 = !{!121, !39, i64 44}
!132 = !{!133, !59, i64 40}
!133 = !{!"CurveMap", !60, i64 0, !60, i64 2, !39, i64 4, !39, i64 8, !39, i64 12, !36, i64 16, !36, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !36, i64 56, !36, i64 64}
!134 = !{!133, !60, i64 2}
!135 = !{!136, !39, i64 4}
!136 = !{!"CurveMapPoint", !39, i64 0, !39, i64 4, !60, i64 8, !60, i64 10}
!137 = !{!136, !39, i64 0}
!138 = distinct !{!138, !41, !42}
!139 = !{!133, !59, i64 32}
!140 = !{!133, !60, i64 0}
!141 = !{!136, !60, i64 8}
!142 = distinct !{!142, !41, !42}
!143 = distinct !{!143, !41, !42}
!144 = distinct !{!144, !41, !42}
!145 = !{!146, !60, i64 104}
!146 = !{!"MovieClipScopes", !60, i64 0, !60, i64 2, !35, i64 4, !35, i64 8, !35, i64 12, !147, i64 16, !59, i64 80, !59, i64 88, !36, i64 96, !60, i64 104, !60, i64 106, !35, i64 108, !59, i64 112, !59, i64 120, !36, i64 128}
!147 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !35, i64 56, !35, i64 60}
!148 = !{!146, !59, i64 80}
!149 = !{!146, !59, i64 88}
!150 = !{!151, !35, i64 16}
!151 = !{!"ImBuf", !59, i64 0, !59, i64 8, !35, i64 16, !35, i64 20, !36, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !59, i64 40, !59, i64 48, !36, i64 56, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !59, i64 88, !59, i64 96, !59, i64 104, !39, i64 112, !36, i64 120, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !59, i64 296, !59, i64 304, !35, i64 312, !36, i64 316, !36, i64 1340, !59, i64 2368, !35, i64 2376, !59, i64 2384, !35, i64 2392, !35, i64 2396, !59, i64 2400, !59, i64 2408, !59, i64 2416, !59, i64 2424, !35, i64 2432, !68, i64 2436, !152, i64 2456}
!152 = !{!"DDSData", !35, i64 0, !35, i64 4, !59, i64 8, !35, i64 16}
!153 = !{!151, !35, i64 20}
!154 = !{!146, !35, i64 8}
!155 = !{!146, !35, i64 12}
!156 = !{!146, !59, i64 112}
!157 = !{!146, !60, i64 2}
!158 = !{!151, !59, i64 48}
!159 = !{!151, !59, i64 40}
!160 = distinct !{!160, !41, !42}
!161 = distinct !{!161, !41, !42}
!162 = distinct !{!162, !41, !42}
!163 = distinct !{!163, !41, !42}
