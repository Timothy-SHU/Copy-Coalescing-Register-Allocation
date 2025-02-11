; ModuleID = 'blender/source/blender/editors/interface/interface_draw.c'
source_filename = "blender/source/blender/editors/interface/interface_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rctf = type { float, float, float, float }
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @uiSetRoundBox(i32 noundef %0) local_unnamed_addr #0 {
  store i32 %0, ptr @roundboxtype, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @uiGetRoundBox() local_unnamed_addr #1 {
  %1 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiDrawBox(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #2 {
  %7 = alloca [7 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %7, ptr noundef nonnull align 16 dereferenceable(56) @__const.uiDrawBoxVerticalShade.vec, i64 56, i1 false)
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %11, %8 ]
  %10 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %9
  call fastcc void @mul_v2_fl(ptr noundef nonnull %10, float noundef %5) #16
  %11 = add nuw nsw i64 %9, 1
  %12 = icmp eq i64 %11, 7
  br i1 %12, label %13, label %8, !llvm.loop !9

13:                                               ; preds = %8
  tail call void @glBegin(i32 noundef %0) #17
  %14 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = fsub float %3, %5
  tail call void @glVertex2f(float noundef %18, float noundef %2) #17
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %27, %19 ]
  %21 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %20
  %22 = load float, ptr %21, align 8, !tbaa !11
  %23 = fadd float %18, %22
  %24 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %20, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !11
  %26 = fadd float %25, %2
  tail call void @glVertex2f(float noundef %23, float noundef %26) #17
  %27 = add nuw nsw i64 %20, 1
  %28 = icmp eq i64 %27, 7
  br i1 %28, label %29, label %19, !llvm.loop !13

29:                                               ; preds = %19
  %30 = fadd float %2, %5
  br label %31

31:                                               ; preds = %13, %29
  %32 = phi float [ %30, %29 ], [ %2, %13 ]
  tail call void @glVertex2f(float noundef %3, float noundef %32) #17
  %33 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %31
  %37 = fsub float %4, %5
  tail call void @glVertex2f(float noundef %3, float noundef %37) #17
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i64 [ 0, %36 ], [ %46, %38 ]
  %40 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %39
  %41 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %39, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !11
  %43 = fsub float %3, %42
  %44 = load float, ptr %40, align 8, !tbaa !11
  %45 = fadd float %37, %44
  tail call void @glVertex2f(float noundef %43, float noundef %45) #17
  %46 = add nuw nsw i64 %39, 1
  %47 = icmp eq i64 %46, 7
  br i1 %47, label %48, label %38, !llvm.loop !14

48:                                               ; preds = %38
  %49 = fsub float %3, %5
  br label %50

50:                                               ; preds = %31, %48
  %51 = phi float [ %49, %48 ], [ %3, %31 ]
  tail call void @glVertex2f(float noundef %51, float noundef %4) #17
  %52 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %50
  %56 = fadd float %1, %5
  tail call void @glVertex2f(float noundef %56, float noundef %4) #17
  br label %57

57:                                               ; preds = %55, %57
  %58 = phi i64 [ 0, %55 ], [ %65, %57 ]
  %59 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %58
  %60 = load float, ptr %59, align 8, !tbaa !11
  %61 = fsub float %56, %60
  %62 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %58, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !11
  %64 = fsub float %4, %63
  tail call void @glVertex2f(float noundef %61, float noundef %64) #17
  %65 = add nuw nsw i64 %58, 1
  %66 = icmp eq i64 %65, 7
  br i1 %66, label %67, label %57, !llvm.loop !15

67:                                               ; preds = %57
  %68 = fsub float %4, %5
  br label %69

69:                                               ; preds = %50, %67
  %70 = phi float [ %68, %67 ], [ %4, %50 ]
  tail call void @glVertex2f(float noundef %1, float noundef %70) #17
  %71 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %69
  %75 = fadd float %2, %5
  tail call void @glVertex2f(float noundef %1, float noundef %75) #17
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi i64 [ 0, %74 ], [ %84, %76 ]
  %78 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %77
  %79 = getelementptr inbounds [7 x [2 x float]], ptr %7, i64 0, i64 %77, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !11
  %81 = fadd float %80, %1
  %82 = load float, ptr %78, align 8, !tbaa !11
  %83 = fsub float %75, %82
  tail call void @glVertex2f(float noundef %81, float noundef %83) #17
  %84 = add nuw nsw i64 %77, 1
  %85 = icmp eq i64 %84, 7
  br i1 %85, label %86, label %76, !llvm.loop !16

86:                                               ; preds = %76
  %87 = fadd float %1, %5
  br label %88

88:                                               ; preds = %69, %86
  %89 = phi float [ %87, %86 ], [ %1, %69 ]
  tail call void @glVertex2f(float noundef %89, float noundef %2) #17
  tail call void @glEnd() #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #5 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !11
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiDrawBoxShade(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #2 {
  %9 = alloca [7 x [2 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %9, ptr noundef nonnull align 16 dereferenceable(56) @__const.uiDrawBoxVerticalShade.vec, i64 56, i1 false)
  %13 = fsub float %4, %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #15
  br label %14

14:                                               ; preds = %8, %14
  %15 = phi i64 [ 0, %8 ], [ %17, %14 ]
  %16 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %15
  call fastcc void @mul_v2_fl(ptr noundef nonnull %16, float noundef %5) #16
  %17 = add nuw nsw i64 %15, 1
  %18 = icmp eq i64 %17, 7
  br i1 %18, label %19, label %14, !llvm.loop !17

19:                                               ; preds = %14
  %20 = fdiv float 1.000000e+00, %13
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %12) #17
  %21 = load float, ptr %12, align 16, !tbaa !11
  %22 = fadd float %21, %6
  %23 = call fastcc float @min_ff(float noundef %22) #16
  store float %23, ptr %10, align 4, !tbaa !11
  %24 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !11
  %26 = fadd float %25, %6
  %27 = call fastcc float @min_ff(float noundef %26) #16
  %28 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  store float %27, ptr %28, align 4, !tbaa !11
  %29 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 2
  %30 = load float, ptr %29, align 8, !tbaa !11
  %31 = fadd float %30, %6
  %32 = call fastcc float @min_ff(float noundef %31) #16
  %33 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float %32, ptr %33, align 4, !tbaa !11
  %34 = fadd float %21, %7
  %35 = call fastcc float @max_ff(float noundef %34) #16
  store float %35, ptr %11, align 4, !tbaa !11
  %36 = fadd float %25, %7
  %37 = call fastcc float @max_ff(float noundef %36) #16
  %38 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  store float %37, ptr %38, align 4, !tbaa !11
  %39 = fadd float %30, %7
  %40 = call fastcc float @max_ff(float noundef %39) #16
  %41 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float %40, ptr %41, align 4, !tbaa !11
  call void @glShadeModel(i32 noundef 7425) #17
  call void @glBegin(i32 noundef %0) #17
  %42 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 0.000000e+00) #16
  br i1 %44, label %61, label %45

45:                                               ; preds = %19
  %46 = fsub float %3, %5
  call void @glVertex2f(float noundef %46, float noundef %2) #17
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi i64 [ 0, %45 ], [ %56, %47 ]
  %49 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %48
  %50 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %48, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !11
  %52 = fmul float %20, %51
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %52) #16
  %53 = load float, ptr %49, align 8, !tbaa !11
  %54 = fadd float %46, %53
  %55 = fadd float %51, %2
  call void @glVertex2f(float noundef %54, float noundef %55) #17
  %56 = add nuw nsw i64 %48, 1
  %57 = icmp eq i64 %56, 7
  br i1 %57, label %58, label %47, !llvm.loop !18

58:                                               ; preds = %47
  %59 = fmul float %20, %5
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %59) #16
  %60 = fadd float %2, %5
  br label %61

61:                                               ; preds = %19, %58
  %62 = phi float [ %60, %58 ], [ %2, %19 ]
  call void @glVertex2f(float noundef %3, float noundef %62) #17
  %63 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %61
  %67 = fsub float %13, %5
  %68 = fmul float %67, %20
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %68) #16
  %69 = fsub float %4, %5
  call void @glVertex2f(float noundef %3, float noundef %69) #17
  br label %70

70:                                               ; preds = %66, %70
  %71 = phi i64 [ 0, %66 ], [ %80, %70 ]
  %72 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %71
  %73 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %71, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !11
  %75 = fadd float %67, %74
  %76 = fmul float %20, %75
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %76) #16
  %77 = fsub float %3, %74
  %78 = load float, ptr %72, align 8, !tbaa !11
  %79 = fadd float %69, %78
  call void @glVertex2f(float noundef %77, float noundef %79) #17
  %80 = add nuw nsw i64 %71, 1
  %81 = icmp eq i64 %80, 7
  br i1 %81, label %82, label %70, !llvm.loop !19

82:                                               ; preds = %70
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 1.000000e+00) #16
  %83 = fsub float %3, %5
  br label %85

84:                                               ; preds = %61
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 1.000000e+00) #16
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi float [ %3, %84 ], [ %83, %82 ]
  call void @glVertex2f(float noundef %86, float noundef %4) #17
  %87 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 1.000000e+00) #16
  br i1 %89, label %108, label %90

90:                                               ; preds = %85
  %91 = fadd float %1, %5
  call void @glVertex2f(float noundef %91, float noundef %4) #17
  br label %92

92:                                               ; preds = %90, %92
  %93 = phi i64 [ 0, %90 ], [ %102, %92 ]
  %94 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %93
  %95 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %93, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !11
  %97 = fsub float %13, %96
  %98 = fmul float %20, %97
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %98) #16
  %99 = load float, ptr %94, align 8, !tbaa !11
  %100 = fsub float %91, %99
  %101 = fsub float %4, %96
  call void @glVertex2f(float noundef %100, float noundef %101) #17
  %102 = add nuw nsw i64 %93, 1
  %103 = icmp eq i64 %102, 7
  br i1 %103, label %104, label %92, !llvm.loop !20

104:                                              ; preds = %92
  %105 = fsub float %13, %5
  %106 = fmul float %105, %20
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %106) #16
  %107 = fsub float %4, %5
  br label %108

108:                                              ; preds = %85, %104
  %109 = phi float [ %107, %104 ], [ %4, %85 ]
  call void @glVertex2f(float noundef %1, float noundef %109) #17
  %110 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  %111 = and i32 %110, 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %130, label %113

113:                                              ; preds = %108
  %114 = fmul float %20, %5
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %114) #16
  %115 = fadd float %2, %5
  call void @glVertex2f(float noundef %1, float noundef %115) #17
  br label %116

116:                                              ; preds = %113, %116
  %117 = phi i64 [ 0, %113 ], [ %126, %116 ]
  %118 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %117
  %119 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %117, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !11
  %121 = fsub float %5, %120
  %122 = fmul float %20, %121
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %122) #16
  %123 = fadd float %120, %1
  %124 = load float, ptr %118, align 8, !tbaa !11
  %125 = fsub float %115, %124
  call void @glVertex2f(float noundef %123, float noundef %125) #17
  %126 = add nuw nsw i64 %117, 1
  %127 = icmp eq i64 %126, 7
  br i1 %127, label %128, label %116, !llvm.loop !21

128:                                              ; preds = %116
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 0.000000e+00) #16
  %129 = fadd float %1, %5
  br label %131

130:                                              ; preds = %108
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 0.000000e+00) #16
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi float [ %1, %130 ], [ %129, %128 ]
  call void @glVertex2f(float noundef %132, float noundef %2) #17
  call void @glEnd() #17
  call void @glShadeModel(i32 noundef 7424) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #15
  ret void
}

; Function Attrs: optsize
declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #7 {
  %2 = fcmp ogt float %0, 1.000000e+00
  %3 = select i1 %2, float 1.000000e+00, float %0
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #7 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = select i1 %2, float 0.000000e+00, float %0
  ret float %3
}

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @round_box_shade_col(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 {
  %4 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %5 = fsub float 1.000000e+00, %2
  %6 = load <2 x float>, ptr %0, align 4, !tbaa !11
  %7 = load <2 x float>, ptr %1, align 4, !tbaa !11
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = fmul <2 x float> %9, %7
  %11 = insertelement <2 x float> poison, float %2, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %6, <2 x float> %10)
  store <2 x float> %13, ptr %4, align 8, !tbaa !11
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !11
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !11
  %18 = fmul float %5, %17
  %19 = tail call float @llvm.fmuladd.f32(float %2, float %15, float %18)
  %20 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %19, ptr %20, align 8, !tbaa !11
  call void @glColor3fv(ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiDrawBoxVerticalShade(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #2 {
  %9 = alloca [7 x [2 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %9, ptr noundef nonnull align 16 dereferenceable(56) @__const.uiDrawBoxVerticalShade.vec, i64 56, i1 false)
  %13 = fsub float %3, %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #15
  br label %14

14:                                               ; preds = %8, %14
  %15 = phi i64 [ 0, %8 ], [ %17, %14 ]
  %16 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %15
  call fastcc void @mul_v2_fl(ptr noundef nonnull %16, float noundef %5) #16
  %17 = add nuw nsw i64 %15, 1
  %18 = icmp eq i64 %17, 7
  br i1 %18, label %19, label %14, !llvm.loop !22

19:                                               ; preds = %14
  %20 = fdiv float 1.000000e+00, %13
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %12) #17
  %21 = load float, ptr %12, align 16, !tbaa !11
  %22 = fadd float %21, %6
  %23 = call fastcc float @min_ff(float noundef %22) #16
  store float %23, ptr %10, align 4, !tbaa !11
  %24 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !11
  %26 = fadd float %25, %6
  %27 = call fastcc float @min_ff(float noundef %26) #16
  %28 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  store float %27, ptr %28, align 4, !tbaa !11
  %29 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 2
  %30 = load float, ptr %29, align 8, !tbaa !11
  %31 = fadd float %30, %6
  %32 = call fastcc float @min_ff(float noundef %31) #16
  %33 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float %32, ptr %33, align 4, !tbaa !11
  %34 = fadd float %21, %7
  %35 = call fastcc float @max_ff(float noundef %34) #16
  store float %35, ptr %11, align 4, !tbaa !11
  %36 = fadd float %25, %7
  %37 = call fastcc float @max_ff(float noundef %36) #16
  %38 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  store float %37, ptr %38, align 4, !tbaa !11
  %39 = fadd float %30, %7
  %40 = call fastcc float @max_ff(float noundef %39) #16
  %41 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float %40, ptr %41, align 4, !tbaa !11
  call void @glShadeModel(i32 noundef 7425) #17
  call void @glBegin(i32 noundef %0) #17
  %42 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 0.000000e+00) #16
  br i1 %44, label %61, label %45

45:                                               ; preds = %19
  %46 = fsub float %3, %5
  call void @glVertex2f(float noundef %46, float noundef %2) #17
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi i64 [ 0, %45 ], [ %56, %47 ]
  %49 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %48
  %50 = load float, ptr %49, align 8, !tbaa !11
  %51 = fmul float %20, %50
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %51) #16
  %52 = fadd float %46, %50
  %53 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %48, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !11
  %55 = fadd float %54, %2
  call void @glVertex2f(float noundef %52, float noundef %55) #17
  %56 = add nuw nsw i64 %48, 1
  %57 = icmp eq i64 %56, 7
  br i1 %57, label %58, label %47, !llvm.loop !23

58:                                               ; preds = %47
  %59 = fmul float %20, %5
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %59) #16
  %60 = fadd float %2, %5
  br label %61

61:                                               ; preds = %19, %58
  %62 = phi float [ %60, %58 ], [ %2, %19 ]
  call void @glVertex2f(float noundef %3, float noundef %62) #17
  %63 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 0.000000e+00) #16
  br i1 %65, label %84, label %66

66:                                               ; preds = %61
  %67 = fsub float %4, %5
  call void @glVertex2f(float noundef %3, float noundef %67) #17
  %68 = fsub float %13, %5
  br label %69

69:                                               ; preds = %66, %69
  %70 = phi i64 [ 0, %66 ], [ %79, %69 ]
  %71 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %70
  %72 = load float, ptr %71, align 8, !tbaa !11
  %73 = fsub float %68, %72
  %74 = fmul float %20, %73
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %74) #16
  %75 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %70, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !11
  %77 = fsub float %3, %76
  %78 = fadd float %67, %72
  call void @glVertex2f(float noundef %77, float noundef %78) #17
  %79 = add nuw nsw i64 %70, 1
  %80 = icmp eq i64 %79, 7
  br i1 %80, label %81, label %69, !llvm.loop !24

81:                                               ; preds = %69
  %82 = fmul float %20, %68
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %82) #16
  %83 = fsub float %3, %5
  br label %84

84:                                               ; preds = %61, %81
  %85 = phi float [ %83, %81 ], [ %3, %61 ]
  call void @glVertex2f(float noundef %85, float noundef %4) #17
  %86 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %84
  %90 = fsub float %13, %5
  %91 = fmul float %20, %90
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %91) #16
  %92 = fadd float %1, %5
  call void @glVertex2f(float noundef %92, float noundef %4) #17
  br label %93

93:                                               ; preds = %89, %93
  %94 = phi i64 [ 0, %89 ], [ %103, %93 ]
  %95 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %94
  %96 = load float, ptr %95, align 8, !tbaa !11
  %97 = fadd float %90, %96
  %98 = fmul float %20, %97
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %98) #16
  %99 = fsub float %92, %96
  %100 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %94, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !11
  %102 = fsub float %4, %101
  call void @glVertex2f(float noundef %99, float noundef %102) #17
  %103 = add nuw nsw i64 %94, 1
  %104 = icmp eq i64 %103, 7
  br i1 %104, label %105, label %93, !llvm.loop !25

105:                                              ; preds = %93
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 1.000000e+00) #16
  %106 = fsub float %4, %5
  br label %108

107:                                              ; preds = %84
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 1.000000e+00) #16
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi float [ %4, %107 ], [ %106, %105 ]
  call void @glVertex2f(float noundef %1, float noundef %109) #17
  %110 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  %111 = and i32 %110, 8
  %112 = icmp eq i32 %111, 0
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 1.000000e+00) #16
  br i1 %112, label %128, label %113

113:                                              ; preds = %108
  %114 = fadd float %2, %5
  call void @glVertex2f(float noundef %1, float noundef %114) #17
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi i64 [ 0, %113 ], [ %124, %115 ]
  %117 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %116
  %118 = load float, ptr %117, align 8, !tbaa !11
  %119 = fmul float %20, %118
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %119) #16
  %120 = getelementptr inbounds [7 x [2 x float]], ptr %9, i64 0, i64 %116, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !11
  %122 = fadd float %121, %1
  %123 = fsub float %114, %118
  call void @glVertex2f(float noundef %122, float noundef %123) #17
  %124 = add nuw nsw i64 %116, 1
  %125 = icmp eq i64 %124, 7
  br i1 %125, label %126, label %115, !llvm.loop !26

126:                                              ; preds = %115
  call fastcc void @round_box_shade_col(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef 1.000000e+00) #16
  %127 = fadd float %1, %5
  br label %128

128:                                              ; preds = %108, %126
  %129 = phi float [ %127, %126 ], [ %1, %108 ]
  call void @glVertex2f(float noundef %129, float noundef %2) #17
  call void @glEnd() #17
  call void @glShadeModel(i32 noundef 7424) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiRoundRect(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #2 {
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %7 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %6) #17
  %11 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  store float 5.000000e-01, ptr %11, align 4, !tbaa !11
  call void @glColor4fv(ptr noundef nonnull %6) #17
  call void @glEnable(i32 noundef 3042) #17
  br label %12

12:                                               ; preds = %10, %5
  call void @glEnable(i32 noundef 2848) #17
  call void @glEnable(i32 noundef 3042) #17
  call void @uiDrawBox(i32 noundef 2, float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) #16
  call void @glDisable(i32 noundef 3042) #17
  call void @glDisable(i32 noundef 2848) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret void
}

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiRoundBox(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #2 {
  %6 = load i32, ptr @roundboxtype, align 4, !tbaa !5
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 16
  tail call void @ui_draw_anti_roundbox(i32 noundef 9, float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i8 noundef zeroext %8) #17
  ret void
}

; Function Attrs: optsize
declare void @ui_draw_anti_roundbox(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @ui_draw_but_IMAGE(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #7 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_but_HISTOGRAM(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca %struct.rctf, align 16
  %6 = alloca [4 x i32], align 16
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.Histogram, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %11 = getelementptr inbounds %struct.Histogram, ptr %8, i64 0, i32 10
  %12 = load i16, ptr %11, align 2, !tbaa !36
  %13 = trunc i16 %12 to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %14 = load <4 x i32>, ptr %3, align 4, !tbaa !5
  %15 = sitofp <4 x i32> %14 to <4 x float>
  %16 = fadd <4 x float> %15, <float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00>
  store <4 x float> %16, ptr %5, align 16, !tbaa !11
  %17 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %5) #16
  %18 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %5) #16
  %19 = getelementptr inbounds %struct.Histogram, ptr %8, i64 0, i32 8
  %20 = load float, ptr %19, align 4, !tbaa !37
  %21 = fmul float %18, %20
  tail call void @glEnable(i32 noundef 3042) #17
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #17
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD3333340000000) #17
  tail call void @uiSetRoundBox(i32 noundef 15) #16
  %22 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %23 = fadd <2 x float> %22, <float -1.000000e+00, float 1.000000e+00>
  %24 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %25 = fadd <2 x float> %24, <float -1.000000e+00, float 1.000000e+00>
  %26 = extractelement <2 x float> %23, i64 0
  %27 = extractelement <2 x float> %23, i64 1
  %28 = extractelement <2 x float> %25, i64 0
  %29 = extractelement <2 x float> %25, i64 1
  tail call void @uiDrawBox(i32 noundef 9, float noundef %26, float noundef %28, float noundef %27, float noundef %29, float noundef 3.000000e+00) #16
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %6) #17
  %30 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !38
  %32 = sitofp i32 %31 to float
  %33 = fadd float %26, %32
  %34 = fptosi float %33 to i32
  %35 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !43
  %37 = sitofp i32 %36 to float
  %38 = fadd float %28, %37
  %39 = fptosi float %38 to i32
  %40 = fsub float %27, %26
  %41 = fptosi float %40 to i32
  %42 = fsub float %29, %28
  %43 = fptosi float %42 to i32
  call void @glScissor(i32 noundef %34, i32 noundef %39, i32 noundef %41, i32 noundef %43) #17
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FB47AE140000000) #17
  %44 = extractelement <4 x float> %16, i64 0
  %45 = extractelement <4 x float> %16, i64 1
  %46 = extractelement <4 x float> %16, i64 2
  %47 = extractelement <4 x float> %16, i64 3
  br label %48

48:                                               ; preds = %4, %54
  %49 = phi i32 [ 1, %4 ], [ %57, %54 ]
  %50 = sitofp i32 %49 to float
  %51 = fmul float %50, 2.500000e-01
  %52 = icmp eq i32 %49, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 5.000000e-01) #17
  br label %54

54:                                               ; preds = %53, %48
  %55 = call float @llvm.fmuladd.f32(float %51, float %21, float %46)
  call void @fdrawline(float noundef %44, float noundef %55, float noundef %45, float noundef %55) #17
  %56 = call float @llvm.fmuladd.f32(float %51, float %17, float %44)
  call void @fdrawline(float noundef %56, float noundef %46, float noundef %56, float noundef %47) #17
  %57 = add nuw nsw i32 %49, 1
  %58 = icmp eq i32 %57, 5
  br i1 %58, label %59, label %48, !llvm.loop !44

59:                                               ; preds = %54
  %60 = and i8 %13, 1
  %61 = getelementptr inbounds %struct.Histogram, ptr %8, i64 0, i32 9
  %62 = load i16, ptr %61, align 4, !tbaa !45
  switch i16 %62, label %70 [
    i16 0, label %63
    i16 5, label %65
    i16 1, label %67
    i16 2, label %67
  ]

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.Histogram, ptr %8, i64 0, i32 2
  call fastcc void @histogram_draw_one(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %44, float noundef %46, float noundef %17, float noundef %21, ptr noundef nonnull %64, i32 noundef %10, i8 noundef zeroext %60) #16
  br label %79

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.Histogram, ptr %8, i64 0, i32 6
  call fastcc void @histogram_draw_one(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %44, float noundef %46, float noundef %17, float noundef %21, ptr noundef nonnull %66, i32 noundef %10, i8 noundef zeroext %60) #16
  br label %79

67:                                               ; preds = %59, %59
  %68 = getelementptr inbounds %struct.Histogram, ptr %8, i64 0, i32 3
  call fastcc void @histogram_draw_one(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %44, float noundef %46, float noundef %17, float noundef %21, ptr noundef nonnull %68, i32 noundef %10, i8 noundef zeroext %60) #16
  %69 = load i16, ptr %61, align 4, !tbaa !45
  br label %70

70:                                               ; preds = %59, %67
  %71 = phi i16 [ %62, %59 ], [ %69, %67 ]
  switch i16 %71, label %75 [
    i16 1, label %72
    i16 3, label %72
  ]

72:                                               ; preds = %70, %70
  %73 = getelementptr inbounds %struct.Histogram, ptr %8, i64 0, i32 4
  call fastcc void @histogram_draw_one(float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef %44, float noundef %46, float noundef %17, float noundef %21, ptr noundef nonnull %73, i32 noundef %10, i8 noundef zeroext %60) #16
  %74 = load i16, ptr %61, align 4, !tbaa !45
  br label %75

75:                                               ; preds = %70, %72
  %76 = phi i16 [ %71, %70 ], [ %74, %72 ]
  switch i16 %76, label %79 [
    i16 1, label %77
    i16 4, label %77
  ]

77:                                               ; preds = %75, %75
  %78 = getelementptr inbounds %struct.Histogram, ptr %8, i64 0, i32 5
  call fastcc void @histogram_draw_one(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef %44, float noundef %46, float noundef %17, float noundef %21, ptr noundef nonnull %78, i32 noundef %10, i8 noundef zeroext %60) #16
  br label %79

79:                                               ; preds = %75, %65, %77, %63
  call fastcc void @draw_scope_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !46
  %4 = load float, ptr %0, align 4, !tbaa !47
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !48
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glScissor(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @histogram_draw_one(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8, i8 noundef zeroext %9) unnamed_addr #2 {
  %11 = icmp eq i8 %9, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %10
  tail call void @glLineWidth(float noundef 1.500000e+00) #17
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 1) #17
  tail call void @glColor4f(float noundef %0, float noundef %1, float noundef %2, float noundef 7.500000e-01) #17
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 1) #17
  tail call void @glEnable(i32 noundef 2848) #17
  tail call void @glBegin(i32 noundef 3) #17
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
  %24 = load float, ptr %23, align 4, !tbaa !11
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %6, float %4)
  tail call void @glVertex2f(float noundef %22, float noundef %25) #17
  %26 = add nuw nsw i64 %19, 1
  %27 = icmp eq i64 %26, %17
  br i1 %27, label %28, label %18, !llvm.loop !50

28:                                               ; preds = %18, %12
  tail call void @glEnd() #17
  tail call void @glDisable(i32 noundef 2848) #17
  tail call void @glLineWidth(float noundef 1.000000e+00) #17
  br label %64

29:                                               ; preds = %10
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 1) #17
  tail call void @glColor4f(float noundef %0, float noundef %1, float noundef %2, float noundef 7.500000e-01) #17
  tail call void @glShadeModel(i32 noundef 7424) #17
  tail call void @glBegin(i32 noundef 8) #17
  tail call void @glVertex2f(float noundef %3, float noundef %4) #17
  %30 = load float, ptr %7, align 4, !tbaa !11
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %6, float %4)
  tail call void @glVertex2f(float noundef %3, float noundef %31) #17
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
  %43 = load float, ptr %42, align 4, !tbaa !11
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %6, float %4)
  tail call void @glVertex2f(float noundef %41, float noundef %44) #17
  tail call void @glVertex2f(float noundef %41, float noundef %4) #17
  %45 = add nuw nsw i64 %38, 1
  %46 = icmp eq i64 %45, %36
  br i1 %46, label %47, label %37, !llvm.loop !51

47:                                               ; preds = %37, %29
  tail call void @glEnd() #17
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 2.500000e-01) #17
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #17
  tail call void @glEnable(i32 noundef 2848) #17
  tail call void @glBegin(i32 noundef 3) #17
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
  %59 = load float, ptr %58, align 4, !tbaa !11
  %60 = tail call float @llvm.fmuladd.f32(float %59, float %6, float %4)
  tail call void @glVertex2f(float noundef %57, float noundef %60) #17
  %61 = add nuw nsw i64 %54, 1
  %62 = icmp eq i64 %61, %52
  br i1 %62, label %63, label %53, !llvm.loop !52

63:                                               ; preds = %53, %47
  tail call void @glEnd() #17
  tail call void @glDisable(i32 noundef 2848) #17
  br label %64

64:                                               ; preds = %63, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_scope_end(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load i32, ptr %1, align 4, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds i32, ptr %1, i64 2
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds i32, ptr %1, i64 3
  %9 = load i32, ptr %8, align 4, !tbaa !5
  tail call void @glScissor(i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #17
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #17
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #17
  tail call void @uiSetRoundBox(i32 noundef 15) #16
  %10 = load float, ptr %0, align 4, !tbaa !47
  %11 = fadd float %10, -1.000000e+00
  %12 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %15 = load float, ptr %14, align 4, !tbaa !46
  %16 = fadd float %15, 1.000000e+00
  %17 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !48
  %19 = fadd float %18, 1.000000e+00
  tail call void @uiDrawBox(i32 noundef 2, float noundef %11, float noundef %13, float noundef %16, float noundef %19, float noundef 3.000000e+00) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_but_WAVEFORM(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca %struct.rctf, align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [4 x i8], align 1
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %8, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %8, align 16
  %14 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %14, align 8
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1, i64 1
  store float 1.000000e+00, ptr %15, align 16
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2, i64 1
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #15
  %17 = icmp eq ptr %13, null
  br i1 %17, label %225, label %18

18:                                               ; preds = %4
  %19 = load <2 x i32>, ptr %3, align 4, !tbaa !5
  %20 = sitofp <2 x i32> %19 to <2 x float>
  %21 = fadd <2 x float> %20, <float 1.000000e+00, float -1.000000e+00>
  %22 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %23 = load <2 x i32>, ptr %22, align 4, !tbaa !5
  %24 = sitofp <2 x i32> %23 to <2 x float>
  %25 = fadd <2 x float> %24, <float 1.000000e+00, float -1.000000e+00>
  %26 = shufflevector <2 x float> %21, <2 x float> %25, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %26, ptr %5, align 16, !tbaa !11
  %27 = getelementptr inbounds %struct.Scopes, ptr %13, i64 0, i32 6
  %28 = load float, ptr %27, align 8, !tbaa !53
  %29 = fcmp olt float %28, 5.000000e-01
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store float 0x3FEF5C2900000000, ptr %27, align 8, !tbaa !53
  br label %31

31:                                               ; preds = %30, %18
  %32 = phi float [ 0x3FEF5C2900000000, %30 ], [ %28, %18 ]
  %33 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %5) #16
  %34 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %5) #16
  %35 = fmul float %34, %32
  %36 = fsub float %34, %35
  %37 = fmul float %36, 5.000000e-01
  %38 = extractelement <2 x float> %25, i64 0
  %39 = fadd float %38, %37
  %40 = getelementptr inbounds %struct.Scopes, ptr %13, i64 0, i32 5
  %41 = load float, ptr %40, align 4, !tbaa !55
  %42 = fmul float %41, %41
  call void @unit_m3(ptr noundef nonnull %7) #17
  br label %43

43:                                               ; preds = %31, %57
  %44 = phi i64 [ 0, %31 ], [ %58, %57 ]
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi i64 [ 0, %43 ], [ %55, %45 ]
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 %44, i64 %46
  %48 = load float, ptr %47, align 4, !tbaa !11
  %49 = fmul float %42, %48
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 %44, i64 %46
  store float %49, ptr %50, align 4, !tbaa !11
  %51 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 %44, i64 %46
  %52 = load float, ptr %51, align 4, !tbaa !11
  %53 = fmul float %42, %52
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 %44, i64 %46
  store float %53, ptr %54, align 4, !tbaa !11
  %55 = add nuw nsw i64 %46, 1
  %56 = icmp eq i64 %55, 3
  br i1 %56, label %57, label %45, !llvm.loop !56

57:                                               ; preds = %45
  %58 = add nuw nsw i64 %44, 1
  %59 = icmp eq i64 %58, 3
  br i1 %59, label %60, label %43, !llvm.loop !57

60:                                               ; preds = %57
  %61 = fadd float %33, -7.000000e+00
  call void @glEnable(i32 noundef 3042) #17
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #17
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD3333340000000) #17
  call void @uiSetRoundBox(i32 noundef 15) #16
  %62 = fadd <2 x float> %21, <float -1.000000e+00, float 1.000000e+00>
  %63 = fadd <2 x float> %25, <float -1.000000e+00, float 1.000000e+00>
  %64 = extractelement <2 x float> %62, i64 0
  %65 = extractelement <2 x float> %62, i64 1
  %66 = extractelement <2 x float> %63, i64 0
  %67 = extractelement <2 x float> %63, i64 1
  call void @uiDrawBox(i32 noundef 9, float noundef %64, float noundef %66, float noundef %65, float noundef %67, float noundef 3.000000e+00) #16
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %6) #17
  %68 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !38
  %70 = sitofp i32 %69 to float
  %71 = fadd float %64, %70
  %72 = fptosi float %71 to i32
  %73 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !43
  %75 = sitofp i32 %74 to float
  %76 = fadd float %66, %75
  %77 = fptosi float %76 to i32
  %78 = fsub float %65, %64
  %79 = fptosi float %78 to i32
  %80 = fsub float %67, %66
  %81 = fptosi float %80 to i32
  call void @glScissor(i32 noundef %72, i32 noundef %77, i32 noundef %79, i32 noundef %81) #17
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FB47AE140000000) #17
  %82 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 3
  %83 = extractelement <2 x float> %21, i64 0
  %84 = fadd float %83, 2.200000e+01
  %85 = fadd float %83, 1.000000e+00
  %86 = fadd float %39, -5.000000e+00
  br label %87

87:                                               ; preds = %60, %87
  %88 = phi i32 [ 0, %60 ], [ %95, %87 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  %89 = mul nuw nsw i32 %88, 20
  %90 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %11, i64 noundef 4, ptr noundef nonnull @.str, i32 noundef %89) #17
  store i8 0, ptr %82, align 1, !tbaa !58
  %91 = sitofp i32 %88 to float
  %92 = fdiv float %91, 5.000000e+00
  %93 = call float @llvm.fmuladd.f32(float %92, float %35, float %39)
  call void @fdrawline(float noundef %84, float noundef %93, float noundef %65, float noundef %93) #17
  %94 = call float @llvm.fmuladd.f32(float %92, float %35, float %86)
  call void @BLF_draw_default(float noundef %85, float noundef %94, float noundef 0.000000e+00, ptr noundef nonnull %11, i64 noundef 3) #17
  call void @glEnable(i32 noundef 3042) #17
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  %95 = add nuw nsw i32 %88, 1
  %96 = icmp eq i32 %95, 6
  br i1 %96, label %97, label %87, !llvm.loop !59

97:                                               ; preds = %87
  %98 = fdiv float %61, 3.000000e+00
  %99 = getelementptr inbounds %struct.Scopes, ptr %13, i64 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !60
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = extractelement <2 x float> %25, i64 1
  br label %104

104:                                              ; preds = %102, %104
  %105 = phi i32 [ %108, %104 ], [ 1, %102 ]
  %106 = sitofp i32 %105 to float
  %107 = call float @llvm.fmuladd.f32(float %106, float %98, float %83)
  call void @fdrawline(float noundef %107, float noundef %38, float noundef %107, float noundef %103) #17
  %108 = add nuw nsw i32 %105, 1
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %110, label %104, !llvm.loop !61

110:                                              ; preds = %104, %97
  %111 = fadd float %83, %61
  %112 = extractelement <2 x float> %25, i64 1
  call void @fdrawline(float noundef %111, float noundef %38, float noundef %111, float noundef %112) #17
  call void @glColor4f(float noundef 1.000000e+00, float noundef 0x3FD99999A0000000, float noundef 0.000000e+00, float noundef 0x3FC99999A0000000) #17
  %113 = load i32, ptr %99, align 8, !tbaa !60
  %114 = and i32 %113, -2
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %129

116:                                              ; preds = %110
  %117 = fmul float %35, 1.600000e+01
  %118 = fdiv float %117, 2.550000e+02
  %119 = fadd float %118, %39
  call void @fdrawline(float noundef %84, float noundef %119, float noundef %65, float noundef %119) #17
  %120 = fmul float %35, 2.350000e+02
  %121 = fdiv float %120, 2.550000e+02
  %122 = fadd float %121, %39
  %123 = fadd float %83, %98
  call void @fdrawline(float noundef %84, float noundef %122, float noundef %123, float noundef %122) #17
  %124 = call float @llvm.fmuladd.f32(float %98, float 3.000000e+00, float %83)
  call void @fdrawline(float noundef %124, float noundef %122, float noundef %65, float noundef %122) #17
  %125 = fmul float %35, 2.400000e+02
  %126 = fdiv float %125, 2.550000e+02
  %127 = fadd float %126, %39
  call void @fdrawline(float noundef %123, float noundef %127, float noundef %65, float noundef %127) #17
  %128 = load i32, ptr %99, align 8, !tbaa !60
  br label %129

129:                                              ; preds = %110, %116
  %130 = phi i32 [ %113, %110 ], [ %128, %116 ]
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call float @llvm.fmuladd.f32(float %35, float 0x3FB3333340000000, float %39)
  call void @fdrawline(float noundef %83, float noundef %133, float noundef %65, float noundef %133) #17
  br label %134

134:                                              ; preds = %132, %129
  %135 = load i32, ptr %13, align 8, !tbaa !62
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %224, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.Scopes, ptr %13, i64 0, i32 12
  %139 = load ptr, ptr %138, align 8, !tbaa !63
  %140 = icmp eq ptr %139, null
  br i1 %140, label %224, label %141

141:                                              ; preds = %137
  call void @glBlendFunc(i32 noundef 1, i32 noundef 1) #17
  call void @glColor3f(float noundef %42, float noundef %42, float noundef %42) #17
  %142 = load i32, ptr %99, align 8, !tbaa !60
  switch i32 %142, label %224 [
    i32 0, label %143
    i32 1, label %167
    i32 2, label %167
    i32 3, label %167
    i32 4, label %167
  ]

143:                                              ; preds = %141
  call void @glBlendFunc(i32 noundef 1, i32 noundef 1) #17
  call void @glPushMatrix() #17
  call void @glEnableClientState(i32 noundef 32884) #17
  call void @glTranslatef(float noundef %83, float noundef %39, float noundef 0.000000e+00) #17
  call void @glScalef(float noundef %61, float noundef %35, float noundef 0.000000e+00) #17
  %144 = load ptr, ptr %138, align 8, !tbaa !63
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %144) #17
  %145 = getelementptr inbounds %struct.Scopes, ptr %13, i64 0, i32 16
  %146 = load i32, ptr %145, align 8, !tbaa !64
  call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %146) #17
  call void @glDisableClientState(i32 noundef 32884) #17
  call void @glPopMatrix() #17
  call void @glColor3f(float noundef 5.000000e-01, float noundef 5.000000e-01, float noundef 5.000000e-01) #17
  %147 = getelementptr inbounds %struct.Scopes, ptr %13, i64 0, i32 10
  %148 = load float, ptr %147, align 8, !tbaa !11
  %149 = call float @llvm.fmuladd.f32(float %148, float %35, float %39)
  %150 = getelementptr inbounds %struct.Scopes, ptr %13, i64 0, i32 10, i64 0, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !11
  %152 = call float @llvm.fmuladd.f32(float %151, float %35, float %39)
  %153 = fcmp olt float %149, %38
  br i1 %153, label %157, label %154

154:                                              ; preds = %143
  %155 = fcmp ogt float %149, %112
  br i1 %155, label %156, label %157

156:                                              ; preds = %154
  br label %157

157:                                              ; preds = %143, %154, %156
  %158 = phi float [ %112, %156 ], [ %149, %154 ], [ %38, %143 ]
  %159 = fcmp olt float %152, %38
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = fcmp ogt float %152, %112
  br i1 %161, label %162, label %163

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %157, %160, %162
  %164 = phi float [ %112, %162 ], [ %152, %160 ], [ %38, %157 ]
  %165 = extractelement <2 x float> %21, i64 1
  %166 = fadd float %165, -3.000000e+00
  call void @fdrawline(float noundef %166, float noundef %158, float noundef %166, float noundef %164) #17
  br label %224

167:                                              ; preds = %141, %141, %141, %141
  %168 = icmp eq i32 %142, 1
  call void @glBlendFunc(i32 noundef 1, i32 noundef 1) #17
  call void @glPushMatrix() #17
  call void @glEnableClientState(i32 noundef 32884) #17
  call void @glTranslatef(float noundef %83, float noundef %39, float noundef 0.000000e+00) #17
  call void @glScalef(float noundef %98, float noundef %35, float noundef 0.000000e+00) #17
  %169 = select i1 %168, ptr %9, ptr %10
  call void @glColor3fv(ptr noundef nonnull %169) #17
  %170 = load ptr, ptr %138, align 8, !tbaa !63
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %170) #17
  %171 = getelementptr inbounds %struct.Scopes, ptr %13, i64 0, i32 16
  %172 = load i32, ptr %171, align 8, !tbaa !64
  call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %172) #17
  call void @glTranslatef(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #17
  %173 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1
  %174 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1
  %175 = select i1 %168, ptr %173, ptr %174
  call void @glColor3fv(ptr noundef nonnull %175) #17
  %176 = getelementptr inbounds %struct.Scopes, ptr %13, i64 0, i32 13
  %177 = load ptr, ptr %176, align 8, !tbaa !65
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %177) #17
  %178 = load i32, ptr %171, align 8, !tbaa !64
  call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %178) #17
  call void @glTranslatef(float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #17
  %179 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2
  %180 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2
  %181 = select i1 %168, ptr %179, ptr %180
  call void @glColor3fv(ptr noundef nonnull %181) #17
  %182 = getelementptr inbounds %struct.Scopes, ptr %13, i64 0, i32 14
  %183 = load ptr, ptr %182, align 8, !tbaa !66
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %183) #17
  %184 = load i32, ptr %171, align 8, !tbaa !64
  call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %184) #17
  call void @glDisableClientState(i32 noundef 32884) #17
  call void @glPopMatrix() #17
  %185 = fadd float %111, 2.000000e+00
  br label %186

186:                                              ; preds = %167, %216
  %187 = phi i64 [ 0, %167 ], [ %222, %216 ]
  %188 = load i32, ptr %99, align 8, !tbaa !60
  %189 = icmp eq i32 %188, 1
  %190 = select i1 %189, ptr %7, ptr %8
  %191 = getelementptr inbounds [3 x [3 x float]], ptr %190, i64 0, i64 %187
  %192 = load float, ptr %191, align 4, !tbaa !11
  %193 = fmul float %192, 7.500000e-01
  %194 = getelementptr inbounds [3 x [3 x float]], ptr %190, i64 0, i64 %187, i64 1
  %195 = load float, ptr %194, align 4, !tbaa !11
  %196 = fmul float %195, 7.500000e-01
  %197 = getelementptr inbounds [3 x [3 x float]], ptr %190, i64 0, i64 %187, i64 2
  %198 = load float, ptr %197, align 4, !tbaa !11
  %199 = fmul float %198, 7.500000e-01
  call void @glColor3f(float noundef %193, float noundef %196, float noundef %199) #17
  %200 = getelementptr inbounds %struct.Scopes, ptr %13, i64 0, i32 10, i64 %187
  %201 = load float, ptr %200, align 8, !tbaa !11
  %202 = call float @llvm.fmuladd.f32(float %201, float %35, float %39)
  %203 = getelementptr inbounds %struct.Scopes, ptr %13, i64 0, i32 10, i64 %187, i64 1
  %204 = load float, ptr %203, align 4, !tbaa !11
  %205 = call float @llvm.fmuladd.f32(float %204, float %35, float %39)
  %206 = fcmp olt float %202, %38
  br i1 %206, label %210, label %207

207:                                              ; preds = %186
  %208 = fcmp ogt float %202, %112
  br i1 %208, label %209, label %210

209:                                              ; preds = %207
  br label %210

210:                                              ; preds = %186, %207, %209
  %211 = phi float [ %112, %209 ], [ %202, %207 ], [ %38, %186 ]
  %212 = fcmp olt float %205, %38
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = fcmp ogt float %205, %112
  br i1 %214, label %215, label %216

215:                                              ; preds = %213
  br label %216

216:                                              ; preds = %210, %213, %215
  %217 = phi float [ %112, %215 ], [ %205, %213 ], [ %38, %210 ]
  %218 = trunc i64 %187 to i32
  %219 = shl i32 %218, 1
  %220 = sitofp i32 %219 to float
  %221 = fadd float %185, %220
  call void @fdrawline(float noundef %221, float noundef %211, float noundef %221, float noundef %217) #17
  %222 = add nuw nsw i64 %187, 1
  %223 = icmp eq i64 %222, 3
  br i1 %223, label %224, label %186, !llvm.loop !67

224:                                              ; preds = %216, %141, %163, %137, %134
  call fastcc void @draw_scope_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  br label %225

225:                                              ; preds = %4, %224
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLF_draw_default(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #6

; Function Attrs: optsize
declare void @glEnableClientState(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glDisableClientState(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #6

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_but_VECTORSCOPE(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca %struct.rctf, align 16
  %6 = alloca [4 x i32], align 16
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %9 = load <4 x i32>, ptr %3, align 4, !tbaa !5
  %10 = sitofp <4 x i32> %9 to <4 x float>
  %11 = fadd <4 x float> %10, <float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00>
  store <4 x float> %11, ptr %5, align 16, !tbaa !11
  %12 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %5) #16
  %13 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %5) #16
  %14 = fmul float %12, 5.000000e-01
  %15 = extractelement <4 x float> %11, i64 0
  %16 = fadd float %15, %14
  %17 = fmul float %13, 5.000000e-01
  %18 = extractelement <4 x float> %11, i64 2
  %19 = fadd float %18, %17
  %20 = fcmp olt float %12, %13
  %21 = select i1 %20, float %12, float %13
  %22 = getelementptr inbounds %struct.Scopes, ptr %8, i64 0, i32 8
  %23 = load float, ptr %22, align 8, !tbaa !68
  %24 = fmul float %23, %23
  tail call void @glEnable(i32 noundef 3042) #17
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #17
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD3333340000000) #17
  tail call void @uiSetRoundBox(i32 noundef 15) #16
  %25 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %26 = fadd <2 x float> %25, <float -1.000000e+00, float 1.000000e+00>
  %27 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %28 = fadd <2 x float> %27, <float -1.000000e+00, float 1.000000e+00>
  %29 = extractelement <2 x float> %26, i64 0
  %30 = extractelement <2 x float> %26, i64 1
  %31 = extractelement <2 x float> %28, i64 0
  %32 = extractelement <2 x float> %28, i64 1
  tail call void @uiDrawBox(i32 noundef 9, float noundef %29, float noundef %31, float noundef %30, float noundef %32, float noundef 3.000000e+00) #16
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %6) #17
  %33 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !38
  %35 = sitofp i32 %34 to float
  %36 = fadd float %29, %35
  %37 = fptosi float %36 to i32
  %38 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !43
  %40 = sitofp i32 %39 to float
  %41 = fadd float %31, %40
  %42 = fptosi float %41 to i32
  %43 = fsub float %30, %29
  %44 = fptosi float %43 to i32
  %45 = fsub float %32, %31
  %46 = fptosi float %45 to i32
  call void @glScissor(i32 noundef %37, i32 noundef %42, i32 noundef %44, i32 noundef %46) #17
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FB47AE140000000) #17
  %47 = fmul float %21, 5.000000e-01
  %48 = fsub float %16, %47
  %49 = fadd float %48, -5.000000e+00
  %50 = fadd float %16, %47
  %51 = fadd float %50, 5.000000e+00
  call void @fdrawline(float noundef %49, float noundef %19, float noundef %51, float noundef %19) #17
  %52 = fsub float %19, %47
  %53 = fadd float %52, -5.000000e+00
  %54 = fadd float %19, %47
  %55 = fadd float %54, 5.000000e+00
  call void @fdrawline(float noundef %16, float noundef %53, float noundef %16, float noundef %55) #17
  br label %56

56:                                               ; preds = %4, %69
  %57 = phi i32 [ 0, %4 ], [ %58, %69 ]
  call void @glBegin(i32 noundef 3) #17
  %58 = add nuw nsw i32 %57, 1
  %59 = sitofp i32 %58 to float
  %60 = fdiv float %59, 1.000000e+01
  br label %61

61:                                               ; preds = %56, %61
  %62 = phi i32 [ 0, %56 ], [ %67, %61 ]
  %63 = sitofp i32 %62 to float
  %64 = fmul float %63, 0x3F91DF46A0000000
  %65 = call fastcc float @polar_to_x(float noundef %16, float noundef %21, float noundef %60, float noundef %64) #16
  %66 = call fastcc float @polar_to_y(float noundef %19, float noundef %21, float noundef %60, float noundef %64) #16
  call void @glVertex2f(float noundef %65, float noundef %66) #17
  %67 = add nuw nsw i32 %62, 15
  %68 = icmp ult i32 %62, 346
  br i1 %68, label %61, label %69, !llvm.loop !69

69:                                               ; preds = %61
  call void @glEnd() #17
  %70 = icmp eq i32 %58, 5
  br i1 %70, label %71, label %56, !llvm.loop !70

71:                                               ; preds = %69
  call void @glColor4f(float noundef 1.000000e+00, float noundef 0x3FD99999A0000000, float noundef 0.000000e+00, float noundef 0x3FC99999A0000000) #17
  %72 = call fastcc float @polar_to_x(float noundef %16, float noundef %21, float noundef 5.000000e-01, float noundef 0x40012C8DE0000000) #16
  %73 = call fastcc float @polar_to_y(float noundef %19, float noundef %21, float noundef 5.000000e-01, float noundef 0x40012C8DE0000000) #16
  %74 = call fastcc float @polar_to_x(float noundef %16, float noundef %21, float noundef 0x3FB99999A0000000, float noundef 0x40012C8DE0000000) #16
  %75 = call fastcc float @polar_to_y(float noundef %19, float noundef %21, float noundef 0x3FB99999A0000000, float noundef 0x40012C8DE0000000) #16
  call void @fdrawline(float noundef %72, float noundef %73, float noundef %74, float noundef %75) #17
  br label %76

76:                                               ; preds = %71, %76
  %77 = phi i64 [ 0, %71 ], [ %79, %76 ]
  %78 = getelementptr inbounds [6 x [3 x float]], ptr @__const.ui_draw_but_VECTORSCOPE.colors, i64 0, i64 %77
  call fastcc void @vectorscope_draw_target(float noundef %16, float noundef %19, float noundef %21, ptr noundef nonnull %78) #16
  %79 = add nuw nsw i64 %77, 1
  %80 = icmp eq i64 %79, 6
  br i1 %80, label %81, label %76, !llvm.loop !71

81:                                               ; preds = %76
  %82 = fmul float %23, %24
  %83 = load i32, ptr %8, align 8, !tbaa !62
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.Scopes, ptr %8, i64 0, i32 15
  %87 = load ptr, ptr %86, align 8, !tbaa !72
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  call void @glBlendFunc(i32 noundef 1, i32 noundef 1) #17
  call void @glColor3f(float noundef %82, float noundef %82, float noundef %82) #17
  call void @glPushMatrix() #17
  call void @glEnableClientState(i32 noundef 32884) #17
  call void @glTranslatef(float noundef %16, float noundef %19, float noundef 0.000000e+00) #17
  call void @glScalef(float noundef %21, float noundef %21, float noundef 0.000000e+00) #17
  %90 = load ptr, ptr %86, align 8, !tbaa !72
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %90) #17
  %91 = getelementptr inbounds %struct.Scopes, ptr %8, i64 0, i32 16
  %92 = load i32, ptr %91, align 8, !tbaa !64
  call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %92) #17
  call void @glDisableClientState(i32 noundef 32884) #17
  call void @glPopMatrix() #17
  br label %93

93:                                               ; preds = %89, %85, %81
  call fastcc void @draw_scope_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  call void @glDisable(i32 noundef 3042) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @polar_to_x(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #11 {
  %5 = fmul float %1, %2
  %6 = tail call float @cosf(float noundef %3) #17
  %7 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %0)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @polar_to_y(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #11 {
  %5 = fmul float %1, %2
  %6 = tail call float @sinf(float noundef %3) #17
  %7 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %0)
  ret float %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vectorscope_draw_target(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #2 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  %8 = load float, ptr %3, align 4, !tbaa !11
  %9 = getelementptr inbounds float, ptr %3, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !11
  %11 = getelementptr inbounds float, ptr %3, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !11
  call void @rgb_to_yuv(float noundef %8, float noundef %10, float noundef %12, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %13 = load float, ptr %6, align 4, !tbaa !11
  %14 = fcmp ogt float %13, 0.000000e+00
  %15 = load float, ptr %7, align 4
  %16 = fcmp oge float %15, 0.000000e+00
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = fdiv float %15, %13
  %20 = call float @atanf(float noundef %19) #17
  br label %41

21:                                               ; preds = %4
  %22 = fcmp olt float %15, 0.000000e+00
  %23 = select i1 %14, i1 %22, i1 false
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = fdiv float %15, %13
  %26 = call float @atanf(float noundef %25) #17
  %27 = fadd float %26, 0x401921FB60000000
  br label %41

28:                                               ; preds = %21
  %29 = fcmp olt float %13, 0.000000e+00
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = fdiv float %15, %13
  %32 = call float @atanf(float noundef %31) #17
  %33 = fadd float %32, 0x400921FB60000000
  br label %41

34:                                               ; preds = %28
  %35 = fcmp oeq float %13, 0.000000e+00
  %36 = fcmp ogt float %15, 0.000000e+00
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = select i1 %35, i1 %22, i1 false
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %34, %24, %40, %38, %30, %18
  %42 = phi float [ %20, %18 ], [ %27, %24 ], [ %33, %30 ], [ 0xBFF921FB60000000, %40 ], [ 0.000000e+00, %38 ], [ 0x3FF921FB60000000, %34 ]
  %43 = load float, ptr %6, align 4, !tbaa !11
  %44 = load float, ptr %7, align 4, !tbaa !11
  %45 = fmul float %44, %44
  %46 = call float @llvm.fmuladd.f32(float %43, float %43, float %45)
  %47 = call float @llvm.sqrt.f32(float %46)
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FBEB851E0000000) #17
  call void @glBegin(i32 noundef 3) #17
  %48 = fadd float %47, 0x3F899999A0000000
  %49 = fadd float %42, 0x3FA6571840000000
  %50 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %48, float noundef %49) #16
  %51 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %48, float noundef %49) #16
  call void @glVertex2f(float noundef %50, float noundef %51) #17
  %52 = fadd float %47, 0xBF899999A0000000
  %53 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %52, float noundef %49) #16
  %54 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %52, float noundef %49) #16
  call void @glVertex2f(float noundef %53, float noundef %54) #17
  %55 = fadd float %42, 0xBFA6571840000000
  %56 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %52, float noundef %55) #16
  %57 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %52, float noundef %55) #16
  call void @glVertex2f(float noundef %56, float noundef %57) #17
  %58 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %48, float noundef %55) #16
  %59 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %48, float noundef %55) #16
  call void @glVertex2f(float noundef %58, float noundef %59) #17
  %60 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %48, float noundef %49) #16
  %61 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %48, float noundef %49) #16
  call void @glVertex2f(float noundef %60, float noundef %61) #17
  call void @glEnd() #17
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FBEB851E0000000) #17
  %62 = fmul float %47, 0x3FC99999A0000000
  %63 = fmul float %62, 5.000000e-01
  call void @glBegin(i32 noundef 3) #17
  %64 = fadd float %47, %62
  %65 = fsub float %64, %63
  %66 = fadd float %42, 0x3FC6571840000000
  %67 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %65, float noundef %66) #16
  %68 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %65, float noundef %66) #16
  call void @glVertex2f(float noundef %67, float noundef %68) #17
  %69 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %64, float noundef %66) #16
  %70 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %64, float noundef %66) #16
  call void @glVertex2f(float noundef %69, float noundef %70) #17
  %71 = fadd float %66, 0xBFB6571840000000
  %72 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %64, float noundef %71) #16
  %73 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %64, float noundef %71) #16
  call void @glVertex2f(float noundef %72, float noundef %73) #17
  call void @glEnd() #17
  call void @glBegin(i32 noundef 3) #17
  %74 = fsub float %47, %62
  %75 = fadd float %74, %63
  %76 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %75, float noundef %66) #16
  %77 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %75, float noundef %66) #16
  call void @glVertex2f(float noundef %76, float noundef %77) #17
  %78 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %74, float noundef %66) #16
  %79 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %74, float noundef %66) #16
  call void @glVertex2f(float noundef %78, float noundef %79) #17
  %80 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %74, float noundef %71) #16
  %81 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %74, float noundef %71) #16
  call void @glVertex2f(float noundef %80, float noundef %81) #17
  call void @glEnd() #17
  call void @glBegin(i32 noundef 3) #17
  %82 = fadd float %42, 0xBFC6571840000000
  %83 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %75, float noundef %82) #16
  %84 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %75, float noundef %82) #16
  call void @glVertex2f(float noundef %83, float noundef %84) #17
  %85 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %74, float noundef %82) #16
  %86 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %74, float noundef %82) #16
  call void @glVertex2f(float noundef %85, float noundef %86) #17
  %87 = fadd float %82, 0x3FB6571840000000
  %88 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %74, float noundef %87) #16
  %89 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %74, float noundef %87) #16
  call void @glVertex2f(float noundef %88, float noundef %89) #17
  call void @glEnd() #17
  call void @glBegin(i32 noundef 3) #17
  %90 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %65, float noundef %82) #16
  %91 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %65, float noundef %82) #16
  call void @glVertex2f(float noundef %90, float noundef %91) #17
  %92 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %64, float noundef %82) #16
  %93 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %64, float noundef %82) #16
  call void @glVertex2f(float noundef %92, float noundef %93) #17
  %94 = call fastcc float @polar_to_x(float noundef %0, float noundef %2, float noundef %64, float noundef %87) #16
  %95 = call fastcc float @polar_to_y(float noundef %1, float noundef %2, float noundef %64, float noundef %87) #16
  call void @glVertex2f(float noundef %94, float noundef %95) #17
  call void @glEnd() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_but_COLORBAND(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 72
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !27
  %13 = icmp eq ptr %12, null
  br i1 %13, label %125, label %14

14:                                               ; preds = %3, %10
  %15 = phi ptr [ %12, %10 ], [ %8, %3 ]
  %16 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  %18 = getelementptr inbounds %struct.uiBlock, ptr %17, i64 0, i32 51
  %19 = load i8, ptr %18, align 4, !tbaa !75
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = tail call ptr @ui_block_display_get(ptr noundef nonnull %17) #17
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi ptr [ %22, %21 ], [ null, %14 ]
  %25 = load <2 x i32>, ptr %2, align 4, !tbaa !5
  %26 = sitofp <2 x i32> %25 to <2 x float>
  %27 = extractelement <2 x float> %26, i64 0
  %28 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %29 = fsub <2 x float> %28, %26
  %30 = extractelement <2 x float> %29, i64 0
  %31 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %2) #16
  %32 = sitofp i32 %31 to float
  %33 = fmul float %32, 2.500000e-01
  %34 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !79
  %36 = sitofp i32 %35 to float
  tail call void @glColor4ub(i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext -1) #17
  %37 = fadd <2 x float> %29, %26
  %38 = extractelement <2 x float> %37, i64 0
  %39 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !80
  %41 = sitofp i32 %40 to float
  tail call void @glRectf(float noundef %27, float noundef %36, float noundef %38, float noundef %41) #17
  tail call void @glEnable(i32 noundef 2882) #17
  tail call void @glColor4ub(i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -1) #17
  tail call void @glPolygonStipple(ptr noundef nonnull @stipple_checker_8px) #17
  %42 = load i32, ptr %39, align 4, !tbaa !80
  %43 = sitofp i32 %42 to float
  tail call void @glRectf(float noundef %27, float noundef %36, float noundef %38, float noundef %43) #17
  tail call void @glDisable(i32 noundef 2882) #17
  tail call void @glShadeModel(i32 noundef 7424) #17
  tail call void @glEnable(i32 noundef 3042) #17
  %44 = getelementptr inbounds %struct.ColorBand, ptr %15, i64 0, i32 6
  %45 = fadd float %33, %36
  %46 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %45, ptr %46, align 4, !tbaa !11
  %47 = load i32, ptr %39, align 4, !tbaa !80
  %48 = sitofp i32 %47 to float
  %49 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %48, ptr %49, align 4, !tbaa !11
  tail call void @glBegin(i32 noundef 8) #17
  %50 = fcmp ult float %30, 0.000000e+00
  br i1 %50, label %83, label %51

51:                                               ; preds = %23
  %52 = icmp eq ptr %24, null
  br label %53

53:                                               ; preds = %51, %59
  %54 = phi float [ 0.000000e+00, %51 ], [ %62, %59 ]
  %55 = phi i32 [ 0, %51 ], [ %61, %59 ]
  %56 = fdiv float %54, %30
  %57 = call zeroext i8 @do_colorband(ptr noundef nonnull %15, float noundef %56, ptr noundef nonnull %6) #17
  br i1 %52, label %59, label %58

58:                                               ; preds = %53
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef nonnull %6, ptr noundef nonnull %24) #17
  br label %59

59:                                               ; preds = %58, %53
  %60 = fadd float %54, %27
  store float %60, ptr %5, align 4, !tbaa !11
  store float %60, ptr %4, align 4, !tbaa !11
  call void @glColor4fv(ptr noundef nonnull %6) #17
  call void @glVertex2fv(ptr noundef nonnull %4) #17
  call void @glVertex2fv(ptr noundef nonnull %5) #17
  %61 = add nuw nsw i32 %55, 1
  %62 = sitofp i32 %61 to float
  %63 = fcmp ult float %30, %62
  br i1 %63, label %64, label %53, !llvm.loop !81

64:                                               ; preds = %59
  call void @glEnd() #17
  store float %36, ptr %46, align 4, !tbaa !11
  store float %45, ptr %49, align 4, !tbaa !11
  call void @glBegin(i32 noundef 8) #17
  br i1 %50, label %84, label %65

65:                                               ; preds = %64
  %66 = icmp eq ptr %24, null
  %67 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %68 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  br label %69

69:                                               ; preds = %65, %75
  %70 = phi float [ 0.000000e+00, %65 ], [ %81, %75 ]
  %71 = phi i32 [ 0, %65 ], [ %80, %75 ]
  %72 = fdiv float %70, %30
  %73 = call zeroext i8 @do_colorband(ptr noundef nonnull %15, float noundef %72, ptr noundef nonnull %6) #17
  br i1 %66, label %75, label %74

74:                                               ; preds = %69
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef nonnull %6, ptr noundef nonnull %24) #17
  br label %75

75:                                               ; preds = %74, %69
  %76 = fadd float %70, %27
  store float %76, ptr %5, align 4, !tbaa !11
  store float %76, ptr %4, align 4, !tbaa !11
  %77 = load float, ptr %6, align 16, !tbaa !11
  %78 = load float, ptr %67, align 4, !tbaa !11
  %79 = load float, ptr %68, align 8, !tbaa !11
  call void @glColor4f(float noundef %77, float noundef %78, float noundef %79, float noundef 1.000000e+00) #17
  call void @glVertex2fv(ptr noundef nonnull %4) #17
  call void @glVertex2fv(ptr noundef nonnull %5) #17
  %80 = add nuw nsw i32 %71, 1
  %81 = sitofp i32 %80 to float
  %82 = fcmp ult float %30, %81
  br i1 %82, label %84, label %69, !llvm.loop !82

83:                                               ; preds = %23
  tail call void @glEnd() #17
  store float %36, ptr %46, align 4, !tbaa !11
  store float %45, ptr %49, align 4, !tbaa !11
  tail call void @glBegin(i32 noundef 8) #17
  br label %84

84:                                               ; preds = %75, %83, %64
  call void @glEnd() #17
  call void @glDisable(i32 noundef 3042) #17
  call void @glShadeModel(i32 noundef 7425) #17
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #17
  %85 = load i32, ptr %39, align 4, !tbaa !80
  %86 = sitofp i32 %85 to float
  call void @fdrawbox(float noundef %27, float noundef %36, float noundef %38, float noundef %86) #17
  call void @glEnable(i32 noundef 3042) #17
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e-01) #17
  call void @fdrawline(float noundef %27, float noundef %36, float noundef %38, float noundef %36) #17
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 2.500000e-01) #17
  %87 = fadd float %36, -1.000000e+00
  call void @fdrawline(float noundef %27, float noundef %87, float noundef %38, float noundef %87) #17
  call void @glDisable(i32 noundef 3042) #17
  %88 = load i16, ptr %15, align 4, !tbaa !83
  %89 = icmp sgt i16 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.ColorBand, ptr %15, i64 0, i32 1
  %92 = fadd float %30, -1.000000e+00
  br label %93

93:                                               ; preds = %90, %106
  %94 = phi i16 [ %88, %90 ], [ %107, %106 ]
  %95 = phi i32 [ 0, %90 ], [ %108, %106 ]
  %96 = phi ptr [ %44, %90 ], [ %109, %106 ]
  %97 = load i16, ptr %91, align 2, !tbaa !85
  %98 = sext i16 %97 to i32
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.CBData, ptr %96, i64 0, i32 4
  %102 = load float, ptr %101, align 4, !tbaa !86
  %103 = call float @llvm.fmuladd.f32(float %102, float %92, float %27)
  %104 = fadd float %103, 1.000000e+00
  call fastcc void @ui_draw_colorband_handle(ptr noundef nonnull %2, float noundef %104, ptr noundef nonnull %96, ptr noundef %24, i8 noundef zeroext 0) #16
  %105 = load i16, ptr %15, align 4, !tbaa !83
  br label %106

106:                                              ; preds = %93, %100
  %107 = phi i16 [ %94, %93 ], [ %105, %100 ]
  %108 = add nuw nsw i32 %95, 1
  %109 = getelementptr inbounds %struct.CBData, ptr %96, i64 1
  %110 = sext i16 %107 to i32
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %93, label %112, !llvm.loop !88

112:                                              ; preds = %106, %84
  %113 = phi i16 [ %88, %84 ], [ %107, %106 ]
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.ColorBand, ptr %15, i64 0, i32 1
  %117 = load i16, ptr %116, align 2, !tbaa !85
  %118 = sext i16 %117 to i64
  %119 = getelementptr inbounds %struct.ColorBand, ptr %15, i64 0, i32 6, i64 %118
  %120 = getelementptr inbounds %struct.ColorBand, ptr %15, i64 0, i32 6, i64 %118, i32 4
  %121 = load float, ptr %120, align 4, !tbaa !86
  %122 = fadd float %30, -1.000000e+00
  %123 = call float @llvm.fmuladd.f32(float %121, float %122, float %27)
  %124 = fadd float %123, 1.000000e+00
  call fastcc void @ui_draw_colorband_handle(ptr noundef nonnull %2, float noundef %124, ptr noundef nonnull %119, ptr noundef %24, i8 noundef zeroext 1) #16
  br label %125

125:                                              ; preds = %112, %115, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare ptr @ui_block_display_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !80
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !79
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @fdrawbox(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_colorband_handle(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #2 {
  %6 = alloca [3 x float], align 8
  %7 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %0) #16
  %8 = sitofp i32 %7 to float
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %9 = load <2 x float>, ptr %2, align 4, !tbaa !11
  store <2 x float> %9, ptr %6, align 8, !tbaa !11
  %10 = getelementptr inbounds float, ptr %6, i64 2
  %11 = getelementptr inbounds float, ptr %2, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !11
  store float %12, ptr %10, align 8, !tbaa !11
  %13 = fdiv float %8, 3.500000e+00
  %14 = tail call float @llvm.floor.f32(float %13)
  %15 = fmul float %14, 0x3FF6666660000000
  %16 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !79
  %18 = sitofp i32 %17 to float
  %19 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FC47AE140000000, float %18)
  %20 = fadd float %1, 5.000000e-01
  %21 = tail call float @llvm.floor.f32(float %20)
  %22 = fadd float %19, 5.000000e-01
  %23 = tail call float @llvm.floor.f32(float %22)
  %24 = icmp ne i8 %4, 0
  %25 = fcmp olt float %14, 3.000000e+00
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !80
  %30 = sitofp i32 %29 to float
  tail call void @glBegin(i32 noundef 1) #17
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  tail call void @glVertex2f(float noundef %21, float noundef %23) #17
  tail call void @glVertex2f(float noundef %21, float noundef %30) #17
  tail call void @glEnd() #17
  %31 = select i1 %24, i32 2, i32 1
  tail call void @setlinestyle(i32 noundef %31) #17
  tail call void @glBegin(i32 noundef 1) #17
  tail call void @glColor3ub(i8 noundef zeroext -56, i8 noundef zeroext -56, i8 noundef zeroext -56) #17
  tail call void @glVertex2f(float noundef %21, float noundef %23) #17
  tail call void @glVertex2f(float noundef %21, float noundef %30) #17
  tail call void @glEnd() #17
  tail call void @setlinestyle(i32 noundef 0) #17
  br i1 %25, label %54, label %32

32:                                               ; preds = %27, %5
  %33 = fsub float %23, %14
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %34 = fsub float %21, %14
  %35 = fadd float %33, -1.000000e+00
  %36 = fadd float %21, %14
  %37 = fadd float %15, %33
  tail call fastcc void @ui_draw_colorband_handle_box(float noundef %34, float noundef %35, float noundef %36, float noundef %37, i8 noundef zeroext 0) #16
  tail call void @glEnable(i32 noundef 3042) #17
  tail call fastcc void @ui_draw_colorband_handle_tri(float noundef %21, float noundef %37, float noundef %14, float noundef %14) #16
  %38 = icmp eq i8 %4, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  tail call void @glColor3ub(i8 noundef zeroext -60, i8 noundef zeroext -60, i8 noundef zeroext -60) #17
  tail call fastcc void @ui_draw_colorband_handle_tri(float noundef %21, float noundef %37, float noundef %14, float noundef %14) #16
  tail call void @glColor3ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #17
  br label %41

40:                                               ; preds = %32
  tail call void @glColor3ub(i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96) #17
  tail call fastcc void @ui_draw_colorband_handle_tri(float noundef %21, float noundef %37, float noundef %14, float noundef %14) #16
  tail call void @glColor3ub(i8 noundef zeroext -128, i8 noundef zeroext -128, i8 noundef zeroext -128) #17
  br label %41

41:                                               ; preds = %40, %39
  %42 = fadd float %37, -1.000000e+00
  %43 = fadd float %14, -1.000000e+00
  tail call fastcc void @ui_draw_colorband_handle_tri_hlight(float noundef %21, float noundef %42, float noundef %43, float noundef %43) #16
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  tail call fastcc void @ui_draw_colorband_handle_tri_hlight(float noundef %21, float noundef %37, float noundef %14, float noundef %14) #16
  tail call void @glDisable(i32 noundef 3042) #17
  tail call void @glColor3ub(i8 noundef zeroext -128, i8 noundef zeroext -128, i8 noundef zeroext -128) #17
  %44 = fsub float %21, %43
  %45 = fadd float %21, %43
  tail call fastcc void @ui_draw_colorband_handle_box(float noundef %44, float noundef %33, float noundef %45, float noundef %37, i8 noundef zeroext 1) #16
  %46 = icmp eq ptr %3, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  call void @IMB_colormanagement_scene_linear_to_display_v3(ptr noundef nonnull %6, ptr noundef nonnull %3) #17
  br label %48

48:                                               ; preds = %47, %41
  call void @glColor3fv(ptr noundef nonnull %6) #17
  %49 = fadd float %14, -2.000000e+00
  %50 = fsub float %21, %49
  %51 = fadd float %33, 1.000000e+00
  %52 = fadd float %21, %49
  %53 = fadd float %37, -2.000000e+00
  call fastcc void @ui_draw_colorband_handle_box(float noundef %50, float noundef %51, float noundef %52, float noundef %53, i8 noundef zeroext 1) #16
  br label %54

54:                                               ; preds = %27, %48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_but_NORMAL(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca [8 x i32], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) @__const.ui_draw_but_NORMAL.diffn, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  call void @glGetMaterialfv(i32 noundef 1028, i32 noundef 4609, ptr noundef nonnull %5) #17
  %9 = getelementptr inbounds %struct.uiWidgetColors, ptr %1, i64 0, i32 1
  call void @glColor3ubv(ptr noundef nonnull %9) #17
  call void @uiSetRoundBox(i32 noundef 15) #16
  %10 = load i32, ptr %2, align 4, !tbaa !89
  %11 = sitofp i32 %10 to float
  %12 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !79
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !90
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !80
  %20 = sitofp i32 %19 to float
  call void @uiDrawBox(i32 noundef 9, float noundef %11, float noundef %14, float noundef %17, float noundef %20, float noundef 5.000000e+00) #16
  call void @glMaterialfv(i32 noundef 1028, i32 noundef 4609, ptr noundef nonnull %6) #17
  call void @glCullFace(i32 noundef 1029) #17
  call void @glEnable(i32 noundef 2884) #17
  br label %21

21:                                               ; preds = %3, %21
  %22 = phi i64 [ 0, %3 ], [ %28, %21 ]
  %23 = trunc i64 %22 to i32
  %24 = or i32 %23, 16384
  %25 = call zeroext i8 @glIsEnabled(i32 noundef %24) #17
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 %22
  store i32 %26, ptr %27, align 4, !tbaa !5
  call void @glDisable(i32 noundef %24) #17
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, 8
  br i1 %29, label %30, label %21, !llvm.loop !91

30:                                               ; preds = %21
  call void @glEnable(i32 noundef 16391) #17
  call void @glEnable(i32 noundef 2896) #17
  call void @ui_get_but_vectorf(ptr noundef %0, ptr noundef nonnull %8) #17
  %31 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float 0.000000e+00, ptr %31, align 4, !tbaa !11
  call void @glLightfv(i32 noundef 16391, i32 noundef 4611, ptr noundef nonnull %8) #17
  call void @glLightfv(i32 noundef 16391, i32 noundef 4609, ptr noundef nonnull %6) #17
  call void @glLightfv(i32 noundef 16391, i32 noundef 4610, ptr noundef nonnull %7) #17
  call void @glLightf(i32 noundef 16391, i32 noundef 4615, float noundef 1.000000e+00) #17
  call void @glLightf(i32 noundef 16391, i32 noundef 4616, float noundef 0.000000e+00) #17
  call void @glPushMatrix() #17
  %32 = load i32, ptr %2, align 4, !tbaa !89
  %33 = sitofp i32 %32 to float
  %34 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %2) #16
  %35 = sitofp i32 %34 to float
  %36 = call float @llvm.fmuladd.f32(float %35, float 5.000000e-01, float %33)
  %37 = load i32, ptr %12, align 4, !tbaa !79
  %38 = sitofp i32 %37 to float
  %39 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %2) #16
  %40 = sitofp i32 %39 to float
  %41 = call float @llvm.fmuladd.f32(float %40, float 5.000000e-01, float %38)
  call void @glTranslatef(float noundef %36, float noundef %41, float noundef 0.000000e+00) #17
  %42 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %2) #16
  %43 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %2) #16
  %44 = call i32 @llvm.smin.i32(i32 %42, i32 %43)
  %45 = sitofp i32 %44 to float
  %46 = fdiv float %45, 2.000000e+02
  call void @glScalef(float noundef %46, float noundef %46, float noundef %46) #17
  %47 = load i32, ptr @ui_draw_but_NORMAL.displist, align 4, !tbaa !5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %30
  %50 = call i32 @glGenLists(i32 noundef 1) #17
  store i32 %50, ptr @ui_draw_but_NORMAL.displist, align 4, !tbaa !5
  call void @glNewList(i32 noundef %50, i32 noundef 4864) #17
  %51 = call ptr @gluNewQuadric() #17
  call void @gluQuadricDrawStyle(ptr noundef %51, i32 noundef 100012) #17
  call void @glShadeModel(i32 noundef 7425) #17
  call void @gluSphere(ptr noundef %51, double noundef 1.000000e+02, i32 noundef 32, i32 noundef 24) #17
  call void @glShadeModel(i32 noundef 7424) #17
  call void @gluDeleteQuadric(ptr noundef %51) #17
  call void @glEndList() #17
  %52 = load i32, ptr @ui_draw_but_NORMAL.displist, align 4, !tbaa !5
  br label %53

53:                                               ; preds = %49, %30
  %54 = phi i32 [ %52, %49 ], [ %47, %30 ]
  call void @glCallList(i32 noundef %54) #17
  call void @glDisable(i32 noundef 2896) #17
  call void @glDisable(i32 noundef 2884) #17
  call void @glMaterialfv(i32 noundef 1028, i32 noundef 4609, ptr noundef nonnull %5) #17
  call void @glDisable(i32 noundef 16391) #17
  call void @glEnable(i32 noundef 3042) #17
  call void @glEnable(i32 noundef 2848) #17
  call void @glColor3ubv(ptr noundef nonnull %9) #17
  call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef 1.000000e+02, i32 noundef 32) #17
  call void @glDisable(i32 noundef 3042) #17
  call void @glDisable(i32 noundef 2848) #17
  call void @glPopMatrix() #17
  br label %55

55:                                               ; preds = %53, %63
  %56 = phi i64 [ 0, %53 ], [ %64, %63 ]
  %57 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !5
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = trunc i64 %56 to i32
  %62 = or i32 %61, 16384
  call void @glEnable(i32 noundef %62) #17
  br label %63

63:                                               ; preds = %55, %60
  %64 = add nuw nsw i64 %56, 1
  %65 = icmp eq i64 %64, 8
  br i1 %65, label %66, label %55, !llvm.loop !92

66:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare void @glGetMaterialfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glMaterialfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glCullFace(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @glIsEnabled(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @ui_get_but_vectorf(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glLightfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glLightf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !90
  %4 = load i32, ptr %0, align 4, !tbaa !89
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @glGenLists(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gluNewQuadric() local_unnamed_addr #6

; Function Attrs: optsize
declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gluSphere(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glEndList() local_unnamed_addr #6

; Function Attrs: optsize
declare void @glCallList(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_but_CURVE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca %struct.rcti, align 16
  %8 = alloca %struct.rcti, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 73
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !27
  br label %18

18:                                               ; preds = %4, %15
  %19 = phi ptr [ %17, %15 ], [ %13, %4 ]
  %20 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !94
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %6) #17
  %24 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !38
  %26 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %29 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  %30 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %31 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %32 = load <4 x i32>, ptr %3, align 4, !tbaa !5
  %33 = insertelement <4 x i32> poison, i32 %25, i64 0
  %34 = insertelement <4 x i32> %33, i32 %27, i64 1
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %36 = add nsw <4 x i32> %32, %35
  store <4 x i32> %36, ptr %7, align 16, !tbaa !5
  %37 = call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %7, ptr noundef nonnull %24, ptr noundef nonnull %7) #17
  %38 = load i32, ptr %7, align 16, !tbaa !89
  %39 = load i32, ptr %29, align 8, !tbaa !79
  %40 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %7) #16
  %41 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %7) #16
  call void @glScissor(i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41) #17
  %42 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %3) #16
  %43 = sitofp i32 %42 to float
  %44 = fadd float %43, -2.000000e+00
  %45 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 4
  %46 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %45) #16
  %47 = fdiv float %44, %46
  %48 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %3) #16
  %49 = sitofp i32 %48 to float
  %50 = fadd float %49, -2.000000e+00
  %51 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %45) #16
  %52 = fdiv float %50, %51
  %53 = load float, ptr %45, align 8, !tbaa !96
  %54 = fdiv float 1.000000e+00, %47
  %55 = fsub float %53, %54
  %56 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 4, i32 2
  %57 = load float, ptr %56, align 8, !tbaa !97
  %58 = fdiv float 1.000000e+00, %52
  %59 = fsub float %57, %58
  %60 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 24
  %61 = load float, ptr %60, align 8, !tbaa !98
  %62 = fcmp oeq float %61, 3.000000e+00
  br i1 %62, label %63, label %84

63:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  %64 = load i32, ptr %3, align 4, !tbaa !89
  %65 = sitofp i32 %64 to float
  %66 = fneg float %55
  %67 = call float @llvm.fmuladd.f32(float %47, float %66, float %65)
  %68 = fptosi float %67 to i32
  store i32 %68, ptr %8, align 4, !tbaa !89
  %69 = sitofp i32 %68 to float
  %70 = fadd float %47, %69
  %71 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 1
  %72 = load i32, ptr %28, align 4, !tbaa !79
  %73 = sitofp i32 %72 to float
  %74 = fneg float %59
  %75 = call float @llvm.fmuladd.f32(float %52, float %74, float %73)
  %76 = insertelement <2 x float> poison, float %70, i64 0
  %77 = insertelement <2 x float> %76, float %75, i64 1
  %78 = fptosi <2 x float> %77 to <2 x i32>
  store <2 x i32> %78, ptr %71, align 4, !tbaa !5
  %79 = extractelement <2 x i32> %78, i64 1
  %80 = sitofp i32 %79 to float
  %81 = fadd float %52, %80
  %82 = fptosi float %81 to i32
  %83 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 3
  store i32 %82, ptr %83, align 4, !tbaa !80
  call void @ui_draw_gradient(ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 3, float noundef 1.000000e+00) #17
  call void @glEnable(i32 noundef 3042) #17
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #17
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 48) #17
  call fastcc void @ui_draw_but_curve_grid(ptr noundef nonnull %3, float noundef %47, float noundef %52, float noundef %55, float noundef %59, float noundef 0x3FC55554C0000000) #16
  call void @glDisable(i32 noundef 3042) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %151

84:                                               ; preds = %18
  %85 = load i32, ptr %19, align 8, !tbaa !99
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  %88 = getelementptr inbounds %struct.uiWidgetColors, ptr %2, i64 0, i32 1
  br i1 %87, label %118, label %89

89:                                               ; preds = %84
  call fastcc void @gl_shaded_color(ptr noundef nonnull %88, i32 noundef -20) #16
  %90 = load i32, ptr %3, align 4, !tbaa !89
  %91 = sitofp i32 %90 to float
  %92 = load i32, ptr %28, align 4, !tbaa !79
  %93 = sitofp i32 %92 to float
  %94 = load i32, ptr %30, align 4, !tbaa !90
  %95 = sitofp i32 %94 to float
  %96 = load i32, ptr %31, align 4, !tbaa !80
  %97 = sitofp i32 %96 to float
  call void @glRectf(float noundef %91, float noundef %93, float noundef %95, float noundef %97) #17
  call void @glColor3ubv(ptr noundef nonnull %88) #17
  %98 = load i32, ptr %3, align 4, !tbaa !89
  %99 = sitofp i32 %98 to float
  %100 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 5
  %101 = load float, ptr %100, align 8, !tbaa !100
  %102 = fsub float %101, %55
  %103 = call float @llvm.fmuladd.f32(float %47, float %102, float %99)
  %104 = load i32, ptr %28, align 4, !tbaa !79
  %105 = sitofp i32 %104 to float
  %106 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 5, i32 2
  %107 = load float, ptr %106, align 8, !tbaa !101
  %108 = fsub float %107, %59
  %109 = call float @llvm.fmuladd.f32(float %52, float %108, float %105)
  %110 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 5, i32 1
  %111 = load float, ptr %110, align 4, !tbaa !102
  %112 = fsub float %111, %55
  %113 = call float @llvm.fmuladd.f32(float %47, float %112, float %99)
  %114 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 5, i32 3
  %115 = load float, ptr %114, align 4, !tbaa !103
  %116 = fsub float %115, %59
  %117 = call float @llvm.fmuladd.f32(float %52, float %116, float %105)
  call void @glRectf(float noundef %103, float noundef %109, float noundef %113, float noundef %117) #17
  br label %127

118:                                              ; preds = %84
  call void @glColor3ubv(ptr noundef nonnull %88) #17
  %119 = load i32, ptr %3, align 4, !tbaa !89
  %120 = sitofp i32 %119 to float
  %121 = load i32, ptr %28, align 4, !tbaa !79
  %122 = sitofp i32 %121 to float
  %123 = load i32, ptr %30, align 4, !tbaa !90
  %124 = sitofp i32 %123 to float
  %125 = load i32, ptr %31, align 4, !tbaa !80
  %126 = sitofp i32 %125 to float
  call void @glRectf(float noundef %120, float noundef %122, float noundef %124, float noundef %126) #17
  br label %127

127:                                              ; preds = %118, %89
  %128 = getelementptr inbounds %struct.uiWidgetColors, ptr %2, i64 0, i32 1
  call fastcc void @gl_shaded_color(ptr noundef nonnull %128, i32 noundef -16) #16
  call fastcc void @ui_draw_but_curve_grid(ptr noundef nonnull %3, float noundef %47, float noundef %52, float noundef %55, float noundef %59, float noundef 2.500000e-01) #16
  call fastcc void @gl_shaded_color(ptr noundef nonnull %128, i32 noundef -24) #16
  call fastcc void @ui_draw_but_curve_grid(ptr noundef nonnull %3, float noundef %47, float noundef %52, float noundef %55, float noundef %59, float noundef 1.000000e+00) #16
  call fastcc void @gl_shaded_color(ptr noundef nonnull %128, i32 noundef -50) #16
  call void @glBegin(i32 noundef 1) #17
  %129 = load i32, ptr %3, align 4, !tbaa !89
  %130 = sitofp i32 %129 to float
  %131 = load i32, ptr %28, align 4, !tbaa !79
  %132 = sitofp i32 %131 to float
  %133 = fneg float %59
  %134 = call float @llvm.fmuladd.f32(float %52, float %133, float %132)
  call void @glVertex2f(float noundef %130, float noundef %134) #17
  %135 = load i32, ptr %30, align 4, !tbaa !90
  %136 = sitofp i32 %135 to float
  %137 = load i32, ptr %28, align 4, !tbaa !79
  %138 = sitofp i32 %137 to float
  %139 = call float @llvm.fmuladd.f32(float %52, float %133, float %138)
  call void @glVertex2f(float noundef %136, float noundef %139) #17
  %140 = load i32, ptr %3, align 4, !tbaa !89
  %141 = sitofp i32 %140 to float
  %142 = fneg float %55
  %143 = call float @llvm.fmuladd.f32(float %47, float %142, float %141)
  %144 = load i32, ptr %28, align 4, !tbaa !79
  %145 = sitofp i32 %144 to float
  call void @glVertex2f(float noundef %143, float noundef %145) #17
  %146 = load i32, ptr %3, align 4, !tbaa !89
  %147 = sitofp i32 %146 to float
  %148 = call float @llvm.fmuladd.f32(float %47, float %142, float %147)
  %149 = load i32, ptr %31, align 4, !tbaa !80
  %150 = sitofp i32 %149 to float
  call void @glVertex2f(float noundef %148, float noundef %150) #17
  call void @glEnd() #17
  br label %151

151:                                              ; preds = %127, %63
  %152 = load i32, ptr %19, align 8, !tbaa !99
  %153 = and i32 %152, 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %214, label %155

155:                                              ; preds = %151
  %156 = load float, ptr %60, align 8, !tbaa !98
  %157 = fcmp oeq float %156, 3.000000e+00
  br i1 %157, label %158, label %174

158:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #15
  %159 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 10
  call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %159) #16
  call void @rgb_to_hsv_v(ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  call void @glColor3ub(i8 noundef zeroext -16, i8 noundef zeroext -16, i8 noundef zeroext -16) #17
  call void @glBegin(i32 noundef 1) #17
  %160 = load i32, ptr %3, align 4, !tbaa !89
  %161 = sitofp i32 %160 to float
  %162 = load float, ptr %11, align 4, !tbaa !11
  %163 = fsub float %162, %55
  %164 = call float @llvm.fmuladd.f32(float %47, float %163, float %161)
  %165 = load i32, ptr %28, align 4, !tbaa !79
  %166 = sitofp i32 %165 to float
  call void @glVertex2f(float noundef %164, float noundef %166) #17
  %167 = load i32, ptr %3, align 4, !tbaa !89
  %168 = sitofp i32 %167 to float
  %169 = load float, ptr %11, align 4, !tbaa !11
  %170 = fsub float %169, %55
  %171 = call float @llvm.fmuladd.f32(float %47, float %170, float %168)
  %172 = load i32, ptr %31, align 4, !tbaa !80
  %173 = sitofp i32 %172 to float
  call void @glVertex2f(float noundef %171, float noundef %173) #17
  call void @glEnd() #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  br label %214

174:                                              ; preds = %155
  %175 = load i32, ptr %20, align 4, !tbaa !94
  switch i32 %175, label %192 [
    i32 3, label %176
    i32 0, label %190
    i32 1, label %191
  ]

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 10
  %178 = call fastcc float @rgb_to_bw(ptr noundef nonnull %177) #16
  call void @glColor3ub(i8 noundef zeroext -16, i8 noundef zeroext -16, i8 noundef zeroext -16) #17
  call void @glBegin(i32 noundef 1) #17
  %179 = load i32, ptr %3, align 4, !tbaa !89
  %180 = sitofp i32 %179 to float
  %181 = fsub float %178, %55
  %182 = call float @llvm.fmuladd.f32(float %47, float %181, float %180)
  %183 = load i32, ptr %28, align 4, !tbaa !79
  %184 = sitofp i32 %183 to float
  call void @glVertex2f(float noundef %182, float noundef %184) #17
  %185 = load i32, ptr %3, align 4, !tbaa !89
  %186 = sitofp i32 %185 to float
  %187 = call float @llvm.fmuladd.f32(float %47, float %181, float %186)
  %188 = load i32, ptr %31, align 4, !tbaa !80
  %189 = sitofp i32 %188 to float
  call void @glVertex2f(float noundef %187, float noundef %189) #17
  call void @glEnd() #17
  br label %214

190:                                              ; preds = %174
  call void @glColor3ub(i8 noundef zeroext -16, i8 noundef zeroext 100, i8 noundef zeroext 100) #17
  br label %193

191:                                              ; preds = %174
  call void @glColor3ub(i8 noundef zeroext 100, i8 noundef zeroext -16, i8 noundef zeroext 100) #17
  br label %193

192:                                              ; preds = %174
  call void @glColor3ub(i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext -16) #17
  br label %193

193:                                              ; preds = %191, %192, %190
  call void @glBegin(i32 noundef 1) #17
  %194 = load i32, ptr %3, align 4, !tbaa !89
  %195 = sitofp i32 %194 to float
  %196 = load i32, ptr %20, align 4, !tbaa !94
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 10, i64 %197
  %199 = load float, ptr %198, align 4, !tbaa !11
  %200 = fsub float %199, %55
  %201 = call float @llvm.fmuladd.f32(float %47, float %200, float %195)
  %202 = load i32, ptr %28, align 4, !tbaa !79
  %203 = sitofp i32 %202 to float
  call void @glVertex2f(float noundef %201, float noundef %203) #17
  %204 = load i32, ptr %3, align 4, !tbaa !89
  %205 = sitofp i32 %204 to float
  %206 = load i32, ptr %20, align 4, !tbaa !94
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 10, i64 %207
  %209 = load float, ptr %208, align 4, !tbaa !11
  %210 = fsub float %209, %55
  %211 = call float @llvm.fmuladd.f32(float %47, float %210, float %205)
  %212 = load i32, ptr %31, align 4, !tbaa !80
  %213 = sitofp i32 %212 to float
  call void @glVertex2f(float noundef %211, float noundef %213) #17
  call void @glEnd() #17
  br label %214

214:                                              ; preds = %158, %193, %176, %151
  %215 = getelementptr inbounds %struct.uiWidgetColors, ptr %2, i64 0, i32 3
  call void @glColor3ubv(ptr noundef nonnull %215) #17
  call void @glEnable(i32 noundef 2848) #17
  call void @glEnable(i32 noundef 3042) #17
  call void @glBegin(i32 noundef 3) #17
  %216 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22, i32 8
  %217 = load ptr, ptr %216, align 8, !tbaa !104
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  call void @curvemapping_changed(ptr noundef nonnull %19, i8 noundef zeroext 0) #17
  %220 = load ptr, ptr %216, align 8, !tbaa !104
  br label %221

221:                                              ; preds = %219, %214
  %222 = phi ptr [ %220, %219 ], [ %217, %214 ]
  %223 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22, i32 1
  %224 = load i16, ptr %223, align 2, !tbaa !106
  %225 = and i16 %224, 1
  %226 = icmp eq i16 %225, 0
  %227 = load i32, ptr %3, align 4, !tbaa !89
  %228 = sitofp i32 %227 to float
  br i1 %226, label %229, label %236

229:                                              ; preds = %221
  %230 = load i32, ptr %28, align 4, !tbaa !79
  %231 = sitofp i32 %230 to float
  %232 = getelementptr inbounds %struct.CurveMapPoint, ptr %222, i64 0, i32 1
  %233 = load float, ptr %232, align 4, !tbaa !107
  %234 = fsub float %233, %59
  %235 = call float @llvm.fmuladd.f32(float %52, float %234, float %231)
  call void @glVertex2f(float noundef %228, float noundef %235) #17
  br label %252

236:                                              ; preds = %221
  %237 = load float, ptr %222, align 4, !tbaa !109
  %238 = fsub float %237, %55
  %239 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22, i32 5
  %240 = load float, ptr %239, align 8, !tbaa !11
  %241 = fadd float %238, %240
  %242 = call float @llvm.fmuladd.f32(float %47, float %241, float %228)
  %243 = load i32, ptr %28, align 4, !tbaa !79
  %244 = sitofp i32 %243 to float
  %245 = getelementptr inbounds %struct.CurveMapPoint, ptr %222, i64 0, i32 1
  %246 = load float, ptr %245, align 4, !tbaa !107
  %247 = fsub float %246, %59
  %248 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22, i32 5, i64 1
  %249 = load float, ptr %248, align 4, !tbaa !11
  %250 = fadd float %247, %249
  %251 = call float @llvm.fmuladd.f32(float %52, float %250, float %244)
  call void @glVertex2f(float noundef %242, float noundef %251) #17
  br label %252

252:                                              ; preds = %236, %229
  br label %253

253:                                              ; preds = %252, %253
  %254 = phi i64 [ %267, %253 ], [ 0, %252 ]
  %255 = load i32, ptr %3, align 4, !tbaa !89
  %256 = sitofp i32 %255 to float
  %257 = getelementptr inbounds %struct.CurveMapPoint, ptr %222, i64 %254
  %258 = load float, ptr %257, align 4, !tbaa !109
  %259 = fsub float %258, %55
  %260 = call float @llvm.fmuladd.f32(float %47, float %259, float %256)
  %261 = load i32, ptr %28, align 4, !tbaa !79
  %262 = sitofp i32 %261 to float
  %263 = getelementptr inbounds %struct.CurveMapPoint, ptr %222, i64 %254, i32 1
  %264 = load float, ptr %263, align 4, !tbaa !107
  %265 = fsub float %264, %59
  %266 = call float @llvm.fmuladd.f32(float %52, float %265, float %262)
  call void @glVertex2f(float noundef %260, float noundef %266) #17
  %267 = add nuw nsw i64 %254, 1
  %268 = icmp eq i64 %267, 257
  br i1 %268, label %269, label %253, !llvm.loop !110

269:                                              ; preds = %253
  %270 = load i16, ptr %223, align 2, !tbaa !106
  %271 = and i16 %270, 1
  %272 = icmp eq i16 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %269
  %274 = load i32, ptr %30, align 4, !tbaa !90
  %275 = sitofp i32 %274 to float
  %276 = getelementptr inbounds %struct.CurveMapPoint, ptr %222, i64 256, i32 1
  %277 = load float, ptr %276, align 4, !tbaa !107
  br label %293

278:                                              ; preds = %269
  %279 = load i32, ptr %3, align 4, !tbaa !89
  %280 = sitofp i32 %279 to float
  %281 = getelementptr inbounds %struct.CurveMapPoint, ptr %222, i64 256
  %282 = load float, ptr %281, align 4, !tbaa !109
  %283 = fsub float %282, %55
  %284 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22, i32 6
  %285 = load float, ptr %284, align 8, !tbaa !11
  %286 = fsub float %283, %285
  %287 = call float @llvm.fmuladd.f32(float %47, float %286, float %280)
  %288 = getelementptr inbounds %struct.CurveMapPoint, ptr %222, i64 256, i32 1
  %289 = load float, ptr %288, align 4, !tbaa !107
  %290 = fsub float %289, %59
  %291 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22, i32 6, i64 1
  %292 = load float, ptr %291, align 4, !tbaa !11
  br label %293

293:                                              ; preds = %278, %273
  %294 = phi float [ %292, %278 ], [ %59, %273 ]
  %295 = phi float [ %290, %278 ], [ %277, %273 ]
  %296 = phi float [ %287, %278 ], [ %275, %273 ]
  %297 = load i32, ptr %28, align 4, !tbaa !79
  %298 = sitofp i32 %297 to float
  %299 = fsub float %295, %294
  %300 = call float @llvm.fmuladd.f32(float %52, float %299, float %298)
  call void @glVertex2f(float noundef %296, float noundef %300) #17
  call void @glEnd() #17
  call void @glDisable(i32 noundef 2848) #17
  call void @glDisable(i32 noundef 3042) #17
  %301 = getelementptr inbounds %struct.CurveMapping, ptr %19, i64 0, i32 6, i64 %22, i32 7
  %302 = load ptr, ptr %301, align 8, !tbaa !111
  call void @glPointSize(float noundef 3.000000e+00) #17
  call void @bglBegin(i32 noundef 0) #17
  %303 = load i16, ptr %23, align 8, !tbaa !112
  %304 = icmp sgt i16 %303, 0
  br i1 %304, label %305, label %330

305:                                              ; preds = %293
  %306 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  br label %307

307:                                              ; preds = %305, %307
  %308 = phi i64 [ 0, %305 ], [ %326, %307 ]
  %309 = getelementptr inbounds %struct.CurveMapPoint, ptr %302, i64 %308
  %310 = getelementptr inbounds %struct.CurveMapPoint, ptr %302, i64 %308, i32 2
  %311 = load i16, ptr %310, align 4, !tbaa !113
  %312 = and i16 %311, 1
  %313 = icmp eq i16 %312, 0
  %314 = select i1 %313, i32 3, i32 4
  call void @UI_ThemeColor(i32 noundef %314) #17
  %315 = load i32, ptr %3, align 4, !tbaa !89
  %316 = sitofp i32 %315 to float
  %317 = load float, ptr %309, align 4, !tbaa !109
  %318 = fsub float %317, %55
  %319 = call float @llvm.fmuladd.f32(float %47, float %318, float %316)
  store float %319, ptr %5, align 4, !tbaa !11
  %320 = load i32, ptr %28, align 4, !tbaa !79
  %321 = sitofp i32 %320 to float
  %322 = getelementptr inbounds %struct.CurveMapPoint, ptr %302, i64 %308, i32 1
  %323 = load float, ptr %322, align 4, !tbaa !107
  %324 = fsub float %323, %59
  %325 = call float @llvm.fmuladd.f32(float %52, float %324, float %321)
  store float %325, ptr %306, align 4, !tbaa !11
  call void @bglVertex2fv(ptr noundef nonnull %5) #17
  %326 = add nuw nsw i64 %308, 1
  %327 = load i16, ptr %23, align 8, !tbaa !112
  %328 = sext i16 %327 to i64
  %329 = icmp slt i64 %326, %328
  br i1 %329, label %307, label %330, !llvm.loop !114

330:                                              ; preds = %307, %293
  call void @bglEnd() #17
  call void @glPointSize(float noundef 1.000000e+00) #17
  %331 = load i32, ptr %6, align 16, !tbaa !5
  %332 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 1
  %333 = load i32, ptr %332, align 4, !tbaa !5
  %334 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 2
  %335 = load i32, ptr %334, align 8, !tbaa !5
  %336 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 3
  %337 = load i32, ptr %336, align 4, !tbaa !5
  call void @glScissor(i32 noundef %331, i32 noundef %333, i32 noundef %335, i32 noundef %337) #17
  call void @glColor3ubv(ptr noundef %2) #17
  %338 = load i32, ptr %3, align 4, !tbaa !89
  %339 = sitofp i32 %338 to float
  %340 = load i32, ptr %28, align 4, !tbaa !79
  %341 = sitofp i32 %340 to float
  %342 = load i32, ptr %30, align 4, !tbaa !90
  %343 = sitofp i32 %342 to float
  %344 = load i32, ptr %31, align 4, !tbaa !80
  %345 = sitofp i32 %344 to float
  call void @fdrawbox(float noundef %339, float noundef %341, float noundef %343, float noundef %345) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @ui_draw_gradient(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_but_curve_grid(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #2 {
  tail call void @glBegin(i32 noundef 1) #17
  %7 = fmul float %1, %5
  %8 = load i32, ptr %0, align 4, !tbaa !89
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
  %21 = load i32, ptr %20, align 4, !tbaa !90
  %22 = sitofp i32 %21 to float
  %23 = fcmp olt float %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi float [ %19, %24 ], [ %33, %27 ]
  %29 = load i32, ptr %25, align 4, !tbaa !79
  %30 = sitofp i32 %29 to float
  tail call void @glVertex2f(float noundef %28, float noundef %30) #17
  %31 = load i32, ptr %26, align 4, !tbaa !80
  %32 = sitofp i32 %31 to float
  tail call void @glVertex2f(float noundef %28, float noundef %32) #17
  %33 = fadd float %7, %28
  %34 = load i32, ptr %20, align 4, !tbaa !90
  %35 = sitofp i32 %34 to float
  %36 = fcmp olt float %33, %35
  br i1 %36, label %27, label %37, !llvm.loop !115

37:                                               ; preds = %27, %18
  %38 = fmul float %2, %5
  %39 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !79
  %41 = sitofp i32 %40 to float
  %42 = fneg float %4
  %43 = tail call float @llvm.fmuladd.f32(float %2, float %42, float %41)
  %44 = fcmp ogt float %43, %41
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = fsub float %43, %41
  %47 = tail call float @llvm.floor.f32(float %46)
  %48 = fneg float %38
  %49 = tail call float @llvm.fmuladd.f32(float %48, float %47, float %43)
  br label %50

50:                                               ; preds = %45, %37
  %51 = phi float [ %49, %45 ], [ %43, %37 ]
  %52 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !80
  %54 = sitofp i32 %53 to float
  %55 = fcmp olt float %51, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %50, %56
  %57 = phi float [ %62, %56 ], [ %51, %50 ]
  %58 = load i32, ptr %0, align 4, !tbaa !89
  %59 = sitofp i32 %58 to float
  tail call void @glVertex2f(float noundef %59, float noundef %57) #17
  %60 = load i32, ptr %20, align 4, !tbaa !90
  %61 = sitofp i32 %60 to float
  tail call void @glVertex2f(float noundef %61, float noundef %57) #17
  %62 = fadd float %38, %57
  %63 = load i32, ptr %52, align 4, !tbaa !80
  %64 = sitofp i32 %63 to float
  %65 = fcmp olt float %62, %64
  br i1 %65, label %56, label %66, !llvm.loop !116

66:                                               ; preds = %56, %50
  tail call void @glEnd() #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gl_shaded_color(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load i8, ptr %0, align 1, !tbaa !58
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !58
  %6 = getelementptr inbounds i8, ptr %0, i64 2
  %7 = load i8, ptr %6, align 1, !tbaa !58
  %8 = trunc i32 %1 to i8
  %9 = sub i8 %5, %8
  %10 = sub i8 %3, %8
  %11 = sub i8 %7, %8
  tail call void @glColor3ub(i8 noundef zeroext %10, i8 noundef zeroext %9, i8 noundef zeroext %11) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !11
  %4 = tail call float @linearrgb_to_srgb(float noundef %3) #17
  store float %4, ptr %0, align 4, !tbaa !11
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !11
  %7 = tail call float @linearrgb_to_srgb(float noundef %6) #17
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !11
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !11
  %11 = tail call float @linearrgb_to_srgb(float noundef %10) #17
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare void @rgb_to_hsv_v(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_bw(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load float, ptr %0, align 4, !tbaa !11
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !11
  %5 = fmul float %4, 0x3FDCCCCCC0000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FD6666660000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !11
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FC99999A0000000, float %6)
  ret float %9
}

; Function Attrs: optsize
declare void @curvemapping_changed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glPointSize(float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @bglBegin(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @bglVertex2fv(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @bglEnd() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_but_TRACKPREVIEW(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca %struct.rctf, align 16
  %6 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  %9 = load <4 x i32>, ptr %3, align 4, !tbaa !5
  %10 = sitofp <4 x i32> %9 to <4 x float>
  %11 = fadd <4 x float> %10, <float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00>
  store <4 x float> %11, ptr %5, align 16, !tbaa !11
  %12 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %5) #16
  %13 = fadd float %12, 1.000000e+00
  %14 = fptosi float %13 to i32
  %15 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %5) #16
  %16 = fptosi float %15 to i32
  tail call void @glEnable(i32 noundef 3042) #17
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #17
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %6) #17
  %17 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !38
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !43
  %22 = sitofp i32 %21 to float
  %23 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %24 = fadd <2 x float> %23, <float -1.000000e+00, float 1.000000e+00>
  %25 = extractelement <2 x float> %24, i64 0
  %26 = fadd float %25, %19
  %27 = fptosi float %26 to i32
  %28 = extractelement <2 x float> %24, i64 1
  %29 = fsub float %28, %25
  %30 = fptosi float %29 to i32
  %31 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %32 = fadd <2 x float> %31, <float -1.000000e+00, float 1.000000e+00>
  %33 = extractelement <2 x float> %32, i64 0
  %34 = fadd float %33, %22
  %35 = fptosi float %34 to i32
  %36 = extractelement <2 x float> %32, i64 1
  %37 = fsub float %36, %33
  %38 = fptosi float %37 to i32
  call void @glScissor(i32 noundef %27, i32 noundef %35, i32 noundef %30, i32 noundef %38) #17
  %39 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 9
  %40 = load i16, ptr %39, align 8, !tbaa !117
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !120
  %45 = icmp eq ptr %44, null
  br i1 %45, label %88, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !121
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !122
  %53 = icmp eq i32 %52, %14
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !125
  %57 = icmp eq i32 %56, %16
  br i1 %57, label %88, label %58

58:                                               ; preds = %54, %50
  call void @IMB_freeImBuf(ptr noundef nonnull %48) #17
  %59 = load ptr, ptr %43, align 8, !tbaa !120
  br label %60

60:                                               ; preds = %46, %58
  %61 = phi ptr [ %44, %46 ], [ %59, %58 ]
  %62 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !126
  %64 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 4
  %65 = load i32, ptr %64, align 4, !tbaa !127
  %66 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 12
  %67 = load ptr, ptr %66, align 8, !tbaa !128
  %68 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 5
  %69 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 1
  %70 = load i16, ptr %69, align 2, !tbaa !129
  %71 = trunc i16 %70 to i8
  %72 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 8
  %73 = call ptr @BKE_tracking_sample_pattern(i32 noundef %63, i32 noundef %65, ptr noundef %61, ptr noundef %67, ptr noundef nonnull %68, i8 noundef zeroext 1, i8 noundef zeroext %71, i32 noundef %14, i32 noundef %16, ptr noundef nonnull %72) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %88, label %75

75:                                               ; preds = %60
  %76 = getelementptr inbounds %struct.ImBuf, ptr %73, i64 0, i32 9
  %77 = load ptr, ptr %76, align 8, !tbaa !130
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  call void @IMB_rect_from_float(ptr noundef nonnull %73) #17
  br label %80

80:                                               ; preds = %79, %75
  %81 = getelementptr inbounds %struct.ImBuf, ptr %73, i64 0, i32 8
  %82 = load ptr, ptr %81, align 8, !tbaa !131
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store ptr %73, ptr %47, align 8, !tbaa !121
  br label %88

85:                                               ; preds = %80
  call void @IMB_freeImBuf(ptr noundef nonnull %73) #17
  br label %88

86:                                               ; preds = %4
  call void @glColor4f(float noundef 0x3FE6666660000000, float noundef 0x3FD3333340000000, float noundef 0x3FD3333340000000, float noundef 0x3FD3333340000000) #17
  call void @uiSetRoundBox(i32 noundef 15) #16
  %87 = extractelement <4 x float> %11, i64 2
  call void @uiDrawBox(i32 noundef 9, float noundef %25, float noundef %87, float noundef %28, float noundef %36, float noundef 3.000000e+00) #16
  br label %148

88:                                               ; preds = %60, %85, %84, %42, %54
  %89 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !121
  %91 = icmp eq ptr %90, null
  br i1 %91, label %146, label %92

92:                                               ; preds = %88
  call void @glPushMatrix() #17
  %93 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 8
  %94 = load float, ptr %93, align 8, !tbaa !11
  %95 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 8, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !11
  %97 = load i32, ptr %17, align 8, !tbaa !38
  %98 = sitofp i32 %97 to float
  %99 = extractelement <4 x float> %11, i64 0
  %100 = fadd float %99, %98
  %101 = fptosi float %100 to i32
  %102 = load i32, ptr %20, align 8, !tbaa !43
  %103 = sitofp i32 %102 to float
  %104 = extractelement <4 x float> %11, i64 2
  %105 = fadd float %104, %103
  %106 = fptosi float %105 to i32
  %107 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 2
  %108 = load i32, ptr %107, align 8, !tbaa !5
  %109 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 3
  %110 = load i32, ptr %109, align 4, !tbaa !5
  call void @glScissor(i32 noundef %101, i32 noundef %106, i32 noundef %108, i32 noundef %110) #17
  %111 = icmp sgt i32 %14, 0
  %112 = icmp sgt i32 %16, 0
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %114, label %145

114:                                              ; preds = %92
  %115 = load ptr, ptr %89, align 8, !tbaa !121
  %116 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 1
  %117 = load i16, ptr %116, align 2, !tbaa !129
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD3333340000000) #17
  call void @uiSetRoundBox(i32 noundef 15) #16
  call void @uiDrawBox(i32 noundef 9, float noundef %25, float noundef %104, float noundef %28, float noundef %36, float noundef 3.000000e+00) #16
  br label %120

120:                                              ; preds = %119, %114
  %121 = fadd float %104, 1.000000e+00
  %122 = getelementptr inbounds %struct.ImBuf, ptr %115, i64 0, i32 2
  %123 = load i32, ptr %122, align 8, !tbaa !122
  %124 = getelementptr inbounds %struct.ImBuf, ptr %115, i64 0, i32 3
  %125 = load i32, ptr %124, align 4, !tbaa !125
  %126 = getelementptr inbounds %struct.ImBuf, ptr %115, i64 0, i32 8
  %127 = load ptr, ptr %126, align 8, !tbaa !131
  call void @glaDrawPixelsSafe(float noundef %99, float noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef %123, i32 noundef 6408, i32 noundef 5121, ptr noundef %127) #17
  %128 = fadd float %99, %94
  %129 = fadd float %104, %96
  call void @glTranslatef(float noundef %128, float noundef %129, float noundef 0.000000e+00) #17
  %130 = load i32, ptr %17, align 8, !tbaa !38
  %131 = sitofp i32 %130 to float
  %132 = fadd float %99, %131
  %133 = fptosi float %132 to i32
  %134 = load i32, ptr %20, align 8, !tbaa !43
  %135 = sitofp i32 %134 to float
  %136 = fadd float %104, %135
  %137 = fptosi float %136 to i32
  %138 = fptosi float %12 to i32
  call void @glScissor(i32 noundef %133, i32 noundef %137, i32 noundef %138, i32 noundef %16) #17
  br label %139

139:                                              ; preds = %120, %143
  %140 = phi i1 [ false, %120 ], [ true, %143 ]
  %141 = phi i1 [ true, %120 ], [ false, %143 ]
  br i1 %140, label %142, label %143

142:                                              ; preds = %139
  call void @glLineStipple(i32 noundef 3, i16 noundef zeroext -21846) #17
  call void @glEnable(i32 noundef 2852) #17
  br label %143

143:                                              ; preds = %139, %142
  %144 = phi i32 [ 143, %142 ], [ 140, %139 ]
  call void @UI_ThemeColor(i32 noundef %144) #17
  call void @glBegin(i32 noundef 1) #17
  call void @glVertex2f(float noundef -1.000000e+01, float noundef 0.000000e+00) #17
  call void @glVertex2f(float noundef 1.000000e+01, float noundef 0.000000e+00) #17
  call void @glVertex2f(float noundef 0.000000e+00, float noundef -1.000000e+01) #17
  call void @glVertex2f(float noundef 0.000000e+00, float noundef 1.000000e+01) #17
  call void @glEnd() #17
  br i1 %141, label %139, label %145, !llvm.loop !132

145:                                              ; preds = %143, %92
  call void @glDisable(i32 noundef 2852) #17
  call void @glPopMatrix() #17
  br label %148

146:                                              ; preds = %88
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD3333340000000) #17
  call void @uiSetRoundBox(i32 noundef 15) #16
  %147 = extractelement <4 x float> %11, i64 2
  call void @uiDrawBox(i32 noundef 9, float noundef %25, float noundef %147, float noundef %28, float noundef %36, float noundef 3.000000e+00) #16
  br label %148

148:                                              ; preds = %86, %145, %146
  call fastcc void @draw_scope_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  call void @glDisable(i32 noundef 3042) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret void
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BKE_tracking_sample_pattern(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glaDrawPixelsSafe(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_draw_but_NODESOCKET(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca [4 x i32], align 16
  %6 = alloca %struct.rcti, align 16
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %8 = load i32, ptr %3, align 4, !tbaa !89
  %9 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !90
  %11 = add nsw i32 %10, %8
  %12 = sitofp i32 %11 to float
  %13 = fmul float %12, 5.000000e-01
  %14 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !79
  %16 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !80
  %18 = add nsw i32 %17, %15
  %19 = sitofp i32 %18 to float
  %20 = fmul float %19, 5.000000e-01
  call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %5) #17
  %21 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !43
  %25 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %26 = load <4 x i32>, ptr %3, align 4, !tbaa !5
  %27 = insertelement <4 x i32> poison, i32 %22, i64 0
  %28 = insertelement <4 x i32> %27, i32 %24, i64 1
  %29 = shufflevector <4 x i32> %28, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %30 = add nsw <4 x i32> %26, %29
  store <4 x i32> %30, ptr %6, align 16, !tbaa !5
  %31 = call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %6, ptr noundef nonnull %21, ptr noundef nonnull %6) #17
  %32 = load i32, ptr %6, align 16, !tbaa !89
  %33 = load i32, ptr %25, align 8, !tbaa !79
  %34 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %6) #16
  %35 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %6) #16
  call void @glScissor(i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35) #17
  call void @glColor4ubv(ptr noundef nonnull %7) #17
  call void @glEnable(i32 noundef 3042) #17
  call void @glBegin(i32 noundef 9) #17
  br label %36

36:                                               ; preds = %4, %36
  %37 = phi i64 [ 0, %4 ], [ %44, %36 ]
  %38 = getelementptr inbounds [16 x float], ptr @__const.ui_draw_but_NODESOCKET.si, i64 0, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !11
  %40 = call float @llvm.fmuladd.f32(float %39, float 5.000000e+00, float %13)
  %41 = getelementptr inbounds [16 x float], ptr @__const.ui_draw_but_NODESOCKET.co, i64 0, i64 %37
  %42 = load float, ptr %41, align 4, !tbaa !11
  %43 = call float @llvm.fmuladd.f32(float %42, float 5.000000e+00, float %20)
  call void @glVertex2f(float noundef %40, float noundef %43) #17
  %44 = add nuw nsw i64 %37, 1
  %45 = icmp eq i64 %44, 16
  br i1 %45, label %46, label %36, !llvm.loop !133

46:                                               ; preds = %36
  call void @glEnd() #17
  call void @glDisable(i32 noundef 3042) #17
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -106) #17
  call void @glEnable(i32 noundef 3042) #17
  call void @glEnable(i32 noundef 2848) #17
  call void @glBegin(i32 noundef 2) #17
  br label %47

47:                                               ; preds = %46, %47
  %48 = phi i64 [ 0, %46 ], [ %55, %47 ]
  %49 = getelementptr inbounds [16 x float], ptr @__const.ui_draw_but_NODESOCKET.si, i64 0, i64 %48
  %50 = load float, ptr %49, align 4, !tbaa !11
  %51 = call float @llvm.fmuladd.f32(float %50, float 5.000000e+00, float %13)
  %52 = getelementptr inbounds [16 x float], ptr @__const.ui_draw_but_NODESOCKET.co, i64 0, i64 %48
  %53 = load float, ptr %52, align 4, !tbaa !11
  %54 = call float @llvm.fmuladd.f32(float %53, float 5.000000e+00, float %20)
  call void @glVertex2f(float noundef %51, float noundef %54) #17
  %55 = add nuw nsw i64 %48, 1
  %56 = icmp eq i64 %55, 16
  br i1 %56, label %57, label %47, !llvm.loop !134

57:                                               ; preds = %47
  call void @glEnd() #17
  call void @glDisable(i32 noundef 2848) #17
  call void @glDisable(i32 noundef 3042) #17
  call void @glLineWidth(float noundef 1.000000e+00) #17
  %58 = load i32, ptr %5, align 16, !tbaa !5
  %59 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %62 = load i32, ptr %61, align 8, !tbaa !5
  %63 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %64 = load i32, ptr %63, align 4, !tbaa !5
  call void @glScissor(i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret void
}

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiDrawBoxShadow(i8 noundef zeroext %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #2 {
  %6 = zext i8 %0 to i32
  %7 = mul nuw nsw i32 %6, 20
  %8 = lshr i32 %7, 8
  %9 = trunc i32 %8 to i8
  tail call fastcc void @ui_shadowbox(float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef 1.100000e+01, i8 noundef zeroext %9) #16
  %10 = mul nuw nsw i32 %6, 40
  %11 = lshr i32 %10, 8
  %12 = trunc i32 %11 to i8
  tail call fastcc void @ui_shadowbox(float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef 7.000000e+00, i8 noundef zeroext %12) #16
  %13 = mul nuw nsw i32 %6, 80
  %14 = lshr i32 %13, 8
  %15 = trunc i32 %14 to i8
  tail call fastcc void @ui_shadowbox(float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef 5.000000e+00, i8 noundef zeroext %15) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_shadowbox(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i8 noundef zeroext %5) unnamed_addr #2 {
  tail call void @glEnable(i32 noundef 3042) #17
  tail call void @glShadeModel(i32 noundef 7425) #17
  tail call void @glBegin(i32 noundef 9) #17
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %5) #17
  tail call void @glVertex2f(float noundef %2, float noundef %1) #17
  %7 = tail call float @llvm.fmuladd.f32(float %4, float 0xBFD3333340000000, float %3)
  tail call void @glVertex2f(float noundef %2, float noundef %7) #17
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %8 = fadd float %2, %4
  %9 = tail call float @llvm.fmuladd.f32(float %4, float -7.500000e-01, float %3)
  tail call void @glVertex2f(float noundef %8, float noundef %9) #17
  tail call void @glVertex2f(float noundef %8, float noundef %1) #17
  tail call void @glEnd() #17
  tail call void @glBegin(i32 noundef 9) #17
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %5) #17
  tail call void @glVertex2f(float noundef %2, float noundef %1) #17
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  tail call void @glVertex2f(float noundef %8, float noundef %1) #17
  %10 = tail call float @llvm.fmuladd.f32(float %4, float 0x3FE6666660000000, float %2)
  %11 = tail call float @llvm.fmuladd.f32(float %4, float 0xBFE6666660000000, float %1)
  tail call void @glVertex2f(float noundef %10, float noundef %11) #17
  %12 = fsub float %1, %4
  tail call void @glVertex2f(float noundef %2, float noundef %12) #17
  tail call void @glEnd() #17
  tail call void @glBegin(i32 noundef 9) #17
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %5) #17
  %13 = tail call float @llvm.fmuladd.f32(float %4, float 0x3FD3333340000000, float %0)
  tail call void @glVertex2f(float noundef %13, float noundef %1) #17
  tail call void @glVertex2f(float noundef %2, float noundef %1) #17
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  tail call void @glVertex2f(float noundef %2, float noundef %12) #17
  %14 = tail call float @llvm.fmuladd.f32(float %4, float 5.000000e-01, float %0)
  tail call void @glVertex2f(float noundef %14, float noundef %12) #17
  tail call void @glEnd() #17
  tail call void @glDisable(i32 noundef 3042) #17
  tail call void @glShadeModel(i32 noundef 7424) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_dropshadow(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = fmul float %3, 2.000000e+00
  %7 = fdiv float %6, 2.550000e+02
  tail call void @glEnable(i32 noundef 3042) #17
  %8 = tail call fastcc float @BLI_rctf_size_y(ptr noundef %0) #16
  %9 = fadd float %8, -1.000000e+01
  %10 = fmul float %9, 5.000000e-01
  %11 = fcmp olt float %10, %1
  %12 = select i1 %11, float %10, float %1
  %13 = fmul float %2, 1.200000e+01
  %14 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  br label %17

17:                                               ; preds = %5, %17
  %18 = phi float [ %7, %5 ], [ %22, %17 ]
  %19 = phi i32 [ 12, %5 ], [ %21, %17 ]
  %20 = phi float [ %13, %5 ], [ %33, %17 ]
  %21 = add nsw i32 %19, -1
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %18) #17
  %22 = fadd float %7, %18
  %23 = load float, ptr %0, align 4, !tbaa !47
  %24 = fsub float %23, %20
  %25 = load float, ptr %14, align 4, !tbaa !49
  %26 = fsub float %25, %20
  %27 = load float, ptr %15, align 4, !tbaa !46
  %28 = fadd float %20, %27
  %29 = load float, ptr %16, align 4, !tbaa !48
  %30 = fadd float %29, -1.000000e+01
  %31 = fadd float %20, %30
  %32 = fadd float %12, %20
  tail call void @uiDrawBox(i32 noundef 9, float noundef %24, float noundef %26, float noundef %28, float noundef %31, float noundef %32) #16
  %33 = fsub float %20, %2
  %34 = icmp eq i32 %21, 0
  br i1 %34, label %35, label %17, !llvm.loop !135

35:                                               ; preds = %17
  tail call void @glEnable(i32 noundef 2848) #17
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 100) #17
  %36 = load float, ptr %0, align 4, !tbaa !47
  %37 = fadd float %36, -5.000000e-01
  %38 = load float, ptr %14, align 4, !tbaa !49
  %39 = fadd float %38, -5.000000e-01
  %40 = load float, ptr %15, align 4, !tbaa !46
  %41 = fadd float %40, 5.000000e-01
  %42 = load float, ptr %16, align 4, !tbaa !48
  %43 = fadd float %42, 5.000000e-01
  %44 = fadd float %1, 5.000000e-01
  tail call void @uiDrawBox(i32 noundef 2, float noundef %37, float noundef %39, float noundef %41, float noundef %43, float noundef %44) #16
  tail call void @glDisable(i32 noundef 2848) #17
  tail call void @glDisable(i32 noundef 3042) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @rgb_to_yuv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atanf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #9

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_colorband_handle_box(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i8 noundef zeroext %4) unnamed_addr #2 {
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %7 = icmp eq i8 %4, 0
  %8 = select i1 %7, i32 6913, i32 6914
  tail call void @glPolygonMode(i32 noundef 1028, i32 noundef %8) #17
  tail call void @glBegin(i32 noundef 7) #17
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %6, float noundef %0, float noundef %1) #16
  call void @glVertex2fv(ptr noundef nonnull %6) #17
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %6, float noundef %0, float noundef %3) #16
  call void @glVertex2fv(ptr noundef nonnull %6) #17
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %6, float noundef %2, float noundef %3) #16
  call void @glVertex2fv(ptr noundef nonnull %6) #17
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %6, float noundef %2, float noundef %1) #16
  call void @glVertex2fv(ptr noundef nonnull %6) #17
  call void @glEnd() #17
  br i1 %7, label %9, label %10

9:                                                ; preds = %5
  call void @glPolygonMode(i32 noundef 1028, i32 noundef 6914) #17
  br label %10

10:                                               ; preds = %9, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_colorband_handle_tri(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #2 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  tail call void @glPolygonMode(i32 noundef 1028, i32 noundef 6914) #17
  tail call void @glEnable(i32 noundef 2881) #17
  tail call void @glBegin(i32 noundef 4) #17
  %6 = fadd float %0, %2
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %5, float noundef %6, float noundef %1) #16
  call void @glVertex2fv(ptr noundef nonnull %5) #17
  %7 = fadd float %1, %3
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %5, float noundef %0, float noundef %7) #16
  call void @glVertex2fv(ptr noundef nonnull %5) #17
  %8 = fsub float %0, %2
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %5, float noundef %8, float noundef %1) #16
  call void @glVertex2fv(ptr noundef nonnull %5) #17
  call void @glEnd() #17
  call void @glDisable(i32 noundef 2881) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_draw_colorband_handle_tri_hlight(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #2 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  tail call void @glEnable(i32 noundef 2848) #17
  tail call void @glBegin(i32 noundef 3) #17
  %6 = fadd float %0, %2
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %5, float noundef %6, float noundef %1) #16
  call void @glVertex2fv(ptr noundef nonnull %5) #17
  %7 = fadd float %1, %3
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %5, float noundef %0, float noundef %7) #16
  call void @glVertex2fv(ptr noundef nonnull %5) #17
  %8 = fsub float %0, %2
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %5, float noundef %8, float noundef %1) #16
  call void @glVertex2fv(ptr noundef nonnull %5) #17
  call void @glEnd() #17
  call void @glDisable(i32 noundef 2848) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret void
}

; Function Attrs: optsize
declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v2_fl2(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2) unnamed_addr #13 {
  store float %1, ptr %0, align 4, !tbaa !11
  %4 = getelementptr inbounds float, ptr %0, i64 1
  store float %2, ptr %4, align 4, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = !{!28, !29, i64 608}
!28 = !{!"uiBut", !29, i64 0, !29, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !30, i64 32, !30, i64 34, !30, i64 36, !30, i64 38, !30, i64 40, !30, i64 42, !30, i64 44, !30, i64 46, !30, i64 48, !29, i64 56, !7, i64 64, !7, i64 192, !31, i64 592, !29, i64 608, !12, i64 616, !12, i64 620, !12, i64 624, !12, i64 628, !12, i64 632, !12, i64 636, !7, i64 640, !29, i64 648, !29, i64 656, !29, i64 664, !29, i64 672, !29, i64 680, !29, i64 688, !29, i64 696, !29, i64 704, !29, i64 712, !29, i64 720, !29, i64 728, !29, i64 736, !29, i64 744, !29, i64 752, !7, i64 760, !29, i64 768, !29, i64 776, !6, i64 784, !7, i64 788, !7, i64 789, !7, i64 790, !7, i64 791, !7, i64 792, !30, i64 794, !30, i64 796, !29, i64 800, !29, i64 808, !32, i64 816, !29, i64 840, !6, i64 848, !32, i64 856, !29, i64 880, !29, i64 888, !29, i64 896, !30, i64 904, !7, i64 906, !7, i64 907, !29, i64 912, !29, i64 920, !12, i64 928, !29, i64 936, !29, i64 944, !29, i64 952, !29, i64 960, !29, i64 968, !29, i64 976, !29, i64 984, !29, i64 992}
!29 = !{!"any pointer", !7, i64 0}
!30 = !{!"short", !7, i64 0}
!31 = !{!"rctf", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!32 = !{!"PointerRNA", !33, i64 0, !29, i64 8, !29, i64 16}
!33 = !{!"", !29, i64 0}
!34 = !{!35, !6, i64 4}
!35 = !{!"Histogram", !6, i64 0, !6, i64 4, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 3080, !7, i64 4104, !12, i64 5128, !12, i64 5132, !30, i64 5136, !30, i64 5138, !6, i64 5140, !7, i64 5144}
!36 = !{!35, !30, i64 5138}
!37 = !{!35, !12, i64 5132}
!38 = !{!39, !6, i64 176}
!39 = !{!"ARegion", !29, i64 0, !29, i64 8, !40, i64 16, !41, i64 176, !41, i64 192, !30, i64 208, !30, i64 210, !30, i64 212, !30, i64 214, !30, i64 216, !30, i64 218, !12, i64 220, !30, i64 224, !30, i64 226, !30, i64 228, !30, i64 230, !30, i64 232, !30, i64 234, !30, i64 236, !30, i64 238, !29, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !29, i64 360, !29, i64 368, !29, i64 376}
!40 = !{!"View2D", !31, i64 0, !31, i64 16, !41, i64 32, !41, i64 48, !41, i64 64, !7, i64 80, !7, i64 88, !12, i64 96, !12, i64 100, !30, i64 104, !30, i64 106, !30, i64 108, !30, i64 110, !30, i64 112, !30, i64 114, !30, i64 116, !30, i64 118, !30, i64 120, !30, i64 122, !30, i64 124, !30, i64 126, !29, i64 128, !6, i64 136, !6, i64 140, !29, i64 144, !29, i64 152}
!41 = !{!"rcti", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!42 = !{!"ListBase", !29, i64 0, !29, i64 8}
!43 = !{!39, !6, i64 184}
!44 = distinct !{!44, !10}
!45 = !{!35, !30, i64 5136}
!46 = !{!31, !12, i64 4}
!47 = !{!31, !12, i64 0}
!48 = !{!31, !12, i64 12}
!49 = !{!31, !12, i64 8}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = !{!54, !12, i64 24}
!54 = !{!"Scopes", !6, i64 0, !6, i64 4, !6, i64 8, !12, i64 12, !6, i64 16, !12, i64 20, !12, i64 24, !6, i64 28, !12, i64 32, !6, i64 36, !7, i64 40, !35, i64 64, !29, i64 5224, !29, i64 5232, !29, i64 5240, !29, i64 5248, !6, i64 5256, !6, i64 5260}
!55 = !{!54, !12, i64 20}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = !{!7, !7, i64 0}
!59 = distinct !{!59, !10}
!60 = !{!54, !6, i64 16}
!61 = distinct !{!61, !10}
!62 = !{!54, !6, i64 0}
!63 = !{!54, !29, i64 5224}
!64 = !{!54, !6, i64 5256}
!65 = !{!54, !29, i64 5232}
!66 = !{!54, !29, i64 5240}
!67 = distinct !{!67, !10}
!68 = !{!54, !12, i64 32}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
!72 = !{!54, !29, i64 5248}
!73 = !{!28, !29, i64 976}
!74 = !{!28, !29, i64 992}
!75 = !{!76, !7, i64 556}
!76 = !{!"uiBlock", !29, i64 0, !29, i64 8, !42, i64 16, !29, i64 32, !29, i64 40, !42, i64 48, !42, i64 64, !29, i64 80, !42, i64 88, !7, i64 104, !7, i64 232, !31, i64 296, !12, i64 312, !6, i64 316, !29, i64 320, !29, i64 328, !29, i64 336, !29, i64 344, !29, i64 352, !29, i64 360, !29, i64 368, !29, i64 376, !29, i64 384, !29, i64 392, !29, i64 400, !29, i64 408, !29, i64 416, !6, i64 424, !30, i64 428, !7, i64 430, !7, i64 431, !7, i64 432, !7, i64 433, !77, i64 440, !29, i64 448, !7, i64 456, !7, i64 457, !7, i64 458, !7, i64 459, !6, i64 460, !6, i64 464, !6, i64 468, !6, i64 472, !6, i64 476, !31, i64 480, !42, i64 496, !29, i64 512, !29, i64 520, !29, i64 528, !29, i64 536, !7, i64 544, !7, i64 556, !7, i64 557, !78, i64 624}
!77 = !{!"double", !7, i64 0}
!78 = !{!"PieMenuData", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !77, i64 32, !6, i64 40, !6, i64 44, !12, i64 48}
!79 = !{!41, !6, i64 8}
!80 = !{!41, !6, i64 12}
!81 = distinct !{!81, !10}
!82 = distinct !{!82, !10}
!83 = !{!84, !30, i64 0}
!84 = !{!"ColorBand", !30, i64 0, !30, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!85 = !{!84, !30, i64 2}
!86 = !{!87, !12, i64 16}
!87 = !{!"CBData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !6, i64 20}
!88 = distinct !{!88, !10}
!89 = !{!41, !6, i64 0}
!90 = !{!41, !6, i64 4}
!91 = distinct !{!91, !10}
!92 = distinct !{!92, !10}
!93 = !{!28, !29, i64 984}
!94 = !{!95, !6, i64 4}
!95 = !{!"CurveMapping", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !31, i64 16, !31, i64 32, !7, i64 48, !7, i64 336, !7, i64 348, !7, i64 360, !7, i64 372}
!96 = !{!95, !12, i64 16}
!97 = !{!95, !12, i64 24}
!98 = !{!28, !12, i64 632}
!99 = !{!95, !6, i64 0}
!100 = !{!95, !12, i64 32}
!101 = !{!95, !12, i64 40}
!102 = !{!95, !12, i64 36}
!103 = !{!95, !12, i64 44}
!104 = !{!105, !29, i64 40}
!105 = !{!"CurveMap", !30, i64 0, !30, i64 2, !12, i64 4, !12, i64 8, !12, i64 12, !7, i64 16, !7, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !7, i64 56, !7, i64 64}
!106 = !{!105, !30, i64 2}
!107 = !{!108, !12, i64 4}
!108 = !{!"CurveMapPoint", !12, i64 0, !12, i64 4, !30, i64 8, !30, i64 10}
!109 = !{!108, !12, i64 0}
!110 = distinct !{!110, !10}
!111 = !{!105, !29, i64 32}
!112 = !{!105, !30, i64 0}
!113 = !{!108, !30, i64 8}
!114 = distinct !{!114, !10}
!115 = distinct !{!115, !10}
!116 = distinct !{!116, !10}
!117 = !{!118, !30, i64 104}
!118 = !{!"MovieClipScopes", !30, i64 0, !30, i64 2, !6, i64 4, !6, i64 8, !6, i64 12, !119, i64 16, !29, i64 80, !29, i64 88, !7, i64 96, !30, i64 104, !30, i64 106, !6, i64 108, !29, i64 112, !29, i64 120, !7, i64 128}
!119 = !{!"MovieTrackingMarker", !7, i64 0, !7, i64 8, !7, i64 40, !7, i64 48, !6, i64 56, !6, i64 60}
!120 = !{!118, !29, i64 80}
!121 = !{!118, !29, i64 88}
!122 = !{!123, !6, i64 16}
!123 = !{!"ImBuf", !29, i64 0, !29, i64 8, !6, i64 16, !6, i64 20, !7, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !29, i64 40, !29, i64 48, !7, i64 56, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !29, i64 88, !29, i64 96, !29, i64 104, !12, i64 112, !7, i64 120, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !29, i64 296, !29, i64 304, !6, i64 312, !7, i64 316, !7, i64 1340, !29, i64 2368, !6, i64 2376, !29, i64 2384, !6, i64 2392, !6, i64 2396, !29, i64 2400, !29, i64 2408, !29, i64 2416, !29, i64 2424, !6, i64 2432, !41, i64 2436, !124, i64 2456}
!124 = !{!"DDSData", !6, i64 0, !6, i64 4, !29, i64 8, !6, i64 16}
!125 = !{!123, !6, i64 20}
!126 = !{!118, !6, i64 8}
!127 = !{!118, !6, i64 12}
!128 = !{!118, !29, i64 112}
!129 = !{!118, !30, i64 2}
!130 = !{!123, !29, i64 48}
!131 = !{!123, !29, i64 40}
!132 = distinct !{!132, !10}
!133 = distinct !{!133, !10}
!134 = distinct !{!134, !10}
!135 = distinct !{!135, !10}
