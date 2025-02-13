; ModuleID = 'blender/source/blender/render/intern/source/sunsky.c'
source_filename = "blender/source/blender/render/intern/source/sunsky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SunSky = type { i16, i16, i16, float, float, float, [3 x float], float, float, float, float, [5 x float], [5 x float], [5 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float] }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ClipColor(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = fcmp ogt float %2, 1.000000e+00
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = fcmp olt float %2, 0.000000e+00
  br i1 %5, label %6, label %8

6:                                                ; preds = %4, %1
  %7 = phi float [ 1.000000e+00, %1 ], [ 0.000000e+00, %4 ]
  store float %7, ptr %0, align 4, !tbaa !34
  br label %8

8:                                                ; preds = %6, %4
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fcmp ogt float %10, 1.000000e+00
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = fcmp olt float %10, 0.000000e+00
  br i1 %13, label %14, label %16

14:                                               ; preds = %12, %8
  %15 = phi float [ 1.000000e+00, %8 ], [ 0.000000e+00, %12 ]
  store float %15, ptr %9, align 4, !tbaa !34
  br label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fcmp ogt float %18, 1.000000e+00
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = fcmp olt float %18, 0.000000e+00
  br i1 %21, label %22, label %24

22:                                               ; preds = %20, %16
  %23 = phi float [ 1.000000e+00, %16 ], [ 0.000000e+00, %20 ]
  store float %23, ptr %17, align 4, !tbaa !34
  br label %24

24:                                               ; preds = %22, %20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @InitSunSky(ptr nocapture noundef %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i16 noundef signext %9, float noundef %10, float noundef %11) local_unnamed_addr #1 {
  %13 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 3
  store float %1, ptr %13, align 4, !tbaa !38
  %14 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 14
  store float %3, ptr %14, align 4, !tbaa !41
  %15 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 15
  store float %4, ptr %15, align 4, !tbaa !42
  %16 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 16
  store float %5, ptr %16, align 4, !tbaa !43
  %17 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 17
  store float %6, ptr %17, align 4, !tbaa !44
  %18 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 18
  store float %7, ptr %18, align 4, !tbaa !45
  %19 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 19
  store float %8, ptr %19, align 4, !tbaa !46
  %20 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 1
  store i16 %9, ptr %20, align 2, !tbaa !47
  %21 = fneg float %10
  %22 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 20
  store float %21, ptr %22, align 4, !tbaa !48
  %23 = fptosi float %11 to i16
  %24 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 2
  store i16 %23, ptr %24, align 4, !tbaa !49
  %25 = load float, ptr %2, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 6
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 6, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 6, i64 2
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 4
  %34 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 5
  tail call fastcc void @DirectionToThetaPhi(ptr noundef nonnull %26, ptr noundef nonnull %33, ptr noundef nonnull %34) #12
  %35 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 7
  store float 0x3F11AE0620000000, ptr %35, align 4, !tbaa !50
  %36 = load float, ptr %33, align 4, !tbaa !51
  %37 = fdiv float %1, 1.200000e+02
  %38 = fsub float 0x3FDC71C720000000, %37
  %39 = tail call float @llvm.fmuladd.f32(float %36, float -2.000000e+00, float 0x400921FB60000000)
  %40 = fmul float %38, %39
  %41 = tail call float @llvm.fmuladd.f32(float %1, float 0x40102E6320000000, float 0xC013E24DE0000000)
  %42 = tail call float @tanf(float noundef %40) #13
  %43 = fmul float %1, 0xBFCB958100000000
  %44 = tail call float @llvm.fmuladd.f32(float %41, float %42, float %43)
  %45 = fadd float %44, 0x40035A8580000000
  %46 = fmul float %45, 1.000000e+03
  %47 = fcmp ugt float %46, 0.000000e+00
  %48 = select i1 %47, float %46, float 0x3EB0C6F7A0000000
  %49 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 8
  store float %48, ptr %49, align 4, !tbaa !52
  %50 = fmul float %1, %1
  %51 = fmul float %36, %36
  %52 = fmul float %36, %51
  %53 = fmul float %51, 0xBF6EA35940000000
  %54 = tail call float @llvm.fmuladd.f32(float %52, float 0x3F5B089A00000000, float %53)
  %55 = load float, ptr %33, align 4, !tbaa !51
  %56 = tail call float @llvm.fmuladd.f32(float %55, float 0x3F610A1380000000, float %54)
  %57 = fadd float %56, 0.000000e+00
  %58 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 9
  %59 = fmul float %51, 0xBF78FC5040000000
  %60 = tail call float @llvm.fmuladd.f32(float %52, float 0x3F66872B00000000, float %59)
  %61 = tail call float @llvm.fmuladd.f32(float %55, float 0x3F69E30020000000, float %60)
  %62 = fadd float %61, 0.000000e+00
  %63 = insertelement <2 x float> poison, float %51, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fmul <2 x float> %64, <float 0x3FB0533B20000000, float 0x3FB6F69440000000>
  %66 = insertelement <2 x float> poison, float %52, i64 0
  %67 = shufflevector <2 x float> %66, <2 x float> poison, <2 x i32> zeroinitializer
  %68 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %67, <2 x float> <float 0xBF9DB76B40000000, float 0xBFA5935FC0000000>, <2 x float> %65)
  %69 = insertelement <2 x float> poison, float %55, i64 0
  %70 = shufflevector <2 x float> %69, <2 x float> poison, <2 x i32> zeroinitializer
  %71 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %70, <2 x float> <float 0xBFA064ECE0000000, float 0xBFA5436B80000000>, <2 x float> %68)
  %72 = fadd <2 x float> %71, <float 0x3F702363C0000000, float 0x3F75182AA0000000>
  %73 = insertelement <2 x float> poison, float %1, i64 0
  %74 = shufflevector <2 x float> %73, <2 x float> poison, <2 x i32> zeroinitializer
  %75 = fmul <2 x float> %72, %74
  %76 = fmul <2 x float> %64, <float 0xBFCB218160000000, float 0xBFD11FB400000000>
  %77 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %67, <2 x float> <float 0x3FBDEF1FE0000000, float 0x3FC3A493C0000000>, <2 x float> %76)
  %78 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %70, <2 x float> <float 0x3FAEFC7A40000000, float 0x3FB1129880000000>, <2 x float> %77)
  %79 = fadd <2 x float> %78, <float 0x3FD090FFA0000000, float 0x3FD1148FE0000000>
  %80 = insertelement <4 x float> poison, float %1, i64 0
  %81 = shufflevector <4 x float> %80, <4 x float> poison, <4 x i32> zeroinitializer
  %82 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %81, <4 x float> <float 0xBF97342EE0000000, float 0x3FBEE24360000000, float 0xBFB1244A60000000, float 0xBF93B645A0000000>, <4 x float> <float 0x40154CD9E0000000, float 0xC0049DCC60000000, float 0x3FD7B28100000000, float 0xBFD0970F80000000>)
  %83 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 11, i64 2
  %84 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %81, <4 x float> <float 0xBFB106CCA0000000, float 0xBF3ADEA8A0000000, float 0xBFB06833C0000000, float 0xBF6A9FBE80000000>, <4 x float> <float 0x3F4A8AC5C0000000, float 0x3FCB323780000000, float 0xBFECC38B00000000, float 0x3FA72085C0000000>)
  %85 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 12, i64 1
  %86 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %81, <4 x float> <float 0xBF91172F00000000, float 0xBFB84EA4A0000000, float 0xBF80385C60000000, float 0xBFA68DB8C0000000>, <4 x float> <float 0xBFD0B09EA0000000, float 0x3F82DCB140000000, float 0x3FCAE8D100000000, float 0xBFFA7583A0000000>)
  %87 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 13
  %88 = tail call float @llvm.fmuladd.f32(float %1, float 0xBF865D39A0000000, float 0x3FAB170500000000)
  %89 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 13, i64 4
  %90 = load float, ptr %14, align 4, !tbaa !41
  %91 = insertelement <4 x float> poison, float %57, i64 0
  %92 = insertelement <4 x float> %91, float %62, i64 1
  %93 = insertelement <4 x float> %92, float %1, i64 2
  %94 = shufflevector <4 x float> %93, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %95 = insertelement <4 x float> <float poison, float poison, float 0x3FC6E04C00000000, float 0xBFD6BEDFA0000000>, float %50, i64 0
  %96 = shufflevector <4 x float> %95, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %97 = shufflevector <2 x float> %75, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %98 = shufflevector <4 x float> %97, <4 x float> <float poison, float poison, float 0xBFF7689220000000, float 0x3FDB5BFF00000000>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %99 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %94, <4 x float> %96, <4 x float> %98)
  %100 = shufflevector <2 x float> %79, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %101 = insertelement <4 x float> %100, float %90, i64 2
  %102 = load <4 x float>, ptr %15, align 4, !tbaa !34
  %103 = shufflevector <4 x float> %101, <4 x float> %102, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %104 = fadd <4 x float> %103, %99
  %105 = fmul <4 x float> %103, %99
  %106 = shufflevector <4 x float> %104, <4 x float> %105, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %106, ptr %58, align 4, !tbaa !34
  %107 = shufflevector <4 x float> %102, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %108 = insertelement <4 x float> %107, float %90, i64 0
  %109 = fmul <4 x float> %86, %108
  store <4 x float> %109, ptr %87, align 4, !tbaa !34
  %110 = shufflevector <4 x float> %102, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %111 = insertelement <4 x float> %110, float %90, i64 3
  %112 = fmul <4 x float> %82, %111
  store <4 x float> %112, ptr %83, align 4, !tbaa !34
  %113 = fmul <4 x float> %84, %102
  store <4 x float> %113, ptr %85, align 4, !tbaa !34
  %114 = extractelement <4 x float> %102, i64 3
  %115 = fmul float %88, %114
  store float %115, ptr %89, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @DirectionToThetaPhi(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !PGOFuncName !53 {
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = tail call float @acosf(float noundef %5) #13
  store float %6, ptr %1, align 4, !tbaa !34
  %7 = tail call float @llvm.fabs.f32(float %6)
  %8 = fcmp olt float %7, 0x3EE4F8B580000000
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = load float, ptr %0, align 4, !tbaa !34
  %13 = tail call float @atan2f(float noundef %11, float noundef %12) #13
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi float [ %13, %9 ], [ 0.000000e+00, %3 ]
  store float %15, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @tanf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @GetSkyXYZRadiance(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = fcmp ogt float %1, 0x3FF921FB60000000
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = tail call float @llvm.fmuladd.f32(float %1, float 0x3FD45F3060000000, float -5.000000e-01)
  %8 = fneg float %7
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 2.000000e+00, float 1.000000e+00)
  %10 = fmul float %9, %9
  %11 = tail call float @llvm.fmuladd.f32(float %9, float -2.000000e+00, float 3.000000e+00)
  %12 = fmul float %10, %11
  br label %13

13:                                               ; preds = %6, %4
  %14 = phi float [ 0x3FF921FB60000000, %6 ], [ %1, %4 ]
  %15 = phi float [ %12, %6 ], [ 1.000000e+00, %4 ]
  %16 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 4
  %17 = load float, ptr %16, align 4, !tbaa !51
  %18 = fcmp ogt float %17, 0x3FF921FB60000000
  %19 = fcmp ole float %14, 0x3FF921FB60000000
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %36

21:                                               ; preds = %13
  %22 = fneg float %14
  %23 = insertelement <2 x float> poison, float %22, i64 0
  %24 = insertelement <2 x float> %23, float %17, i64 1
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> <float 0x3FD45F3060000000, float 0x3FD45F3060000000>, <2 x float> <float 5.000000e-01, float -5.000000e-01>)
  %26 = fneg <2 x float> %25
  %27 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float 1.000000e+00, float 1.000000e+00>)
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %29 = fmul <2 x float> %27, %28
  %30 = extractelement <2 x float> %29, i64 0
  %31 = fmul <2 x float> %29, %29
  %32 = extractelement <2 x float> %31, i64 0
  %33 = tail call float @llvm.fmuladd.f32(float %30, float -2.000000e+00, float 3.000000e+00)
  %34 = fmul float %32, %33
  %35 = fmul float %34, 0x3F1179ECA0000000
  br label %36

36:                                               ; preds = %21, %13
  %37 = phi float [ %35, %21 ], [ 0x3F1179ECA0000000, %13 ]
  %38 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 5
  %39 = load float, ptr %38, align 4, !tbaa !54
  %40 = tail call fastcc float @AngleBetween(float noundef %14, float noundef %2, float noundef %17, float noundef %39) #12
  %41 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 12
  %42 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 9
  %43 = load float, ptr %42, align 4, !tbaa !55
  %44 = tail call fastcc float @PerezFunction(ptr noundef nonnull %0, ptr noundef nonnull %41, float noundef %14, float noundef %40, float noundef %43) #12
  %45 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 13
  %46 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 10
  %47 = load float, ptr %46, align 4, !tbaa !56
  %48 = tail call fastcc float @PerezFunction(ptr noundef nonnull %0, ptr noundef nonnull %45, float noundef %14, float noundef %40, float noundef %47) #12
  %49 = fmul float %15, %37
  %50 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 11
  %51 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 8
  %52 = load float, ptr %51, align 4, !tbaa !52
  %53 = tail call fastcc float @PerezFunction(ptr noundef nonnull %0, ptr noundef nonnull %50, float noundef %14, float noundef %40, float noundef %52) #12
  %54 = fmul float %49, %53
  %55 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 20
  %56 = load float, ptr %55, align 4, !tbaa !48
  %57 = fcmp une float %56, 0.000000e+00
  br i1 %57, label %58, label %64

58:                                               ; preds = %36
  %59 = fmul float %54, %56
  %60 = fpext float %59 to double
  %61 = tail call double @exp(double noundef %60) #13
  %62 = fsub double 1.000000e+00, %61
  %63 = fptrunc double %62 to float
  br label %64

64:                                               ; preds = %58, %36
  %65 = phi float [ %63, %58 ], [ %54, %36 ]
  %66 = fdiv float %44, %48
  %67 = fmul float %66, %65
  %68 = fsub float 1.000000e+00, %44
  %69 = fsub float %68, %48
  %70 = fdiv float %69, %48
  %71 = fmul float %70, %65
  store float %67, ptr %3, align 4, !tbaa !34
  %72 = getelementptr inbounds float, ptr %3, i64 1
  store float %65, ptr %72, align 4, !tbaa !34
  %73 = getelementptr inbounds float, ptr %3, i64 2
  store float %71, ptr %73, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @AngleBetween(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #5 !PGOFuncName !57 {
  %5 = tail call float @sinf(float noundef %0) #13
  %6 = tail call float @sinf(float noundef %2) #13
  %7 = fmul float %5, %6
  %8 = fsub float %3, %1
  %9 = tail call float @cosf(float noundef %8) #13
  %10 = tail call float @cosf(float noundef %0) #13
  %11 = tail call float @cosf(float noundef %2) #13
  %12 = fmul float %10, %11
  %13 = tail call float @llvm.fmuladd.f32(float %7, float %9, float %12)
  %14 = fcmp ogt float %13, 1.000000e+00
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = fcmp olt float %13, -1.000000e+00
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call float @acosf(float noundef %13) #13
  br label %19

19:                                               ; preds = %15, %4, %17
  %20 = phi float [ %18, %17 ], [ 0.000000e+00, %4 ], [ 0x400921FB60000000, %15 ]
  ret float %20
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @PerezFunction(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #1 !PGOFuncName !58 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = tail call float @expf(float noundef %8) #13
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 4
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = fmul float %13, %15
  %17 = tail call float @expf(float noundef %16) #13
  %18 = getelementptr inbounds float, ptr %1, i64 4
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = load float, ptr %14, align 4, !tbaa !51
  %21 = tail call float @cosf(float noundef %20) #13
  %22 = load float, ptr %14, align 4, !tbaa !51
  %23 = tail call float @cosf(float noundef %22) #13
  %24 = load float, ptr %1, align 4, !tbaa !34
  %25 = load float, ptr %7, align 4, !tbaa !34
  %26 = tail call float @cosf(float noundef %2) #13
  %27 = fdiv float %25, %26
  %28 = tail call float @expf(float noundef %27) #13
  %29 = load float, ptr %10, align 4, !tbaa !34
  %30 = load float, ptr %12, align 4, !tbaa !34
  %31 = fmul float %30, %3
  %32 = tail call float @expf(float noundef %31) #13
  %33 = load float, ptr %18, align 4, !tbaa !34
  %34 = tail call float @cosf(float noundef %3) #13
  %35 = tail call float @cosf(float noundef %3) #13
  %36 = insertelement <2 x float> poison, float %24, i64 0
  %37 = insertelement <2 x float> %36, float %6, i64 1
  %38 = insertelement <2 x float> poison, float %28, i64 0
  %39 = insertelement <2 x float> %38, float %9, i64 1
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> %39, <2 x float> <float 1.000000e+00, float 1.000000e+00>)
  %41 = insertelement <2 x float> poison, float %29, i64 0
  %42 = insertelement <2 x float> %41, float %11, i64 1
  %43 = insertelement <2 x float> poison, float %32, i64 0
  %44 = insertelement <2 x float> %43, float %17, i64 1
  %45 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %42, <2 x float> %44, <2 x float> <float 1.000000e+00, float 1.000000e+00>)
  %46 = insertelement <2 x float> poison, float %33, i64 0
  %47 = insertelement <2 x float> %46, float %19, i64 1
  %48 = insertelement <2 x float> poison, float %34, i64 0
  %49 = insertelement <2 x float> %48, float %21, i64 1
  %50 = fmul <2 x float> %47, %49
  %51 = insertelement <2 x float> poison, float %35, i64 0
  %52 = insertelement <2 x float> %51, float %23, i64 1
  %53 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %50, <2 x float> %52, <2 x float> %45)
  %54 = fmul <2 x float> %40, %53
  %55 = extractelement <2 x float> %54, i64 0
  %56 = fmul float %55, %4
  %57 = extractelement <2 x float> %54, i64 1
  %58 = fdiv float %56, %57
  ret float %58
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @GetSkyXYZRadiancef(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #12
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #12
  %7 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fcmp olt float %8, 0x3F50624DE0000000
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store float 0x3F50624DE0000000, ptr %7, align 4, !tbaa !34
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #12
  br label %11

11:                                               ; preds = %10, %3
  call fastcc void @DirectionToThetaPhi(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %12 = load float, ptr %4, align 4, !tbaa !34
  %13 = load float, ptr %5, align 4, !tbaa !34
  tail call void @GetSkyXYZRadiance(ptr noundef %0, float noundef %12, float noundef %13, ptr noundef %2) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !59 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !60 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define dso_local void @InitAtmosphere(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #6 {
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  %11 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 22
  store float %1, ptr %11, align 4, !tbaa !61
  %12 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 26
  store float %2, ptr %12, align 4, !tbaa !62
  %13 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 25
  store float %3, ptr %13, align 4, !tbaa !63
  %14 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 23
  store float %4, ptr %14, align 4, !tbaa !64
  %15 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 24
  store float %5, ptr %15, align 4, !tbaa !65
  %16 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 27
  store float %6, ptr %16, align 4, !tbaa !66
  %17 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 21
  store float 0x3FE99999A0000000, ptr %17, align 4, !tbaa !67
  store <2 x float> <float 0x4137799D80000000, float 0x413AC51200000000>, ptr %8, align 8, !tbaa !34
  %18 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0x41400FD7A0000000, ptr %18, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %7, %19
  %20 = phi i64 [ 0, %7 ], [ %27, %19 ]
  %21 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %20
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fmul float %22, %22
  %24 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %20
  store float %23, ptr %24, align 4, !tbaa !34
  %25 = fmul float %23, %23
  %26 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %20
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = add nuw nsw i64 %20, 1
  %28 = icmp eq i64 %27, 3
  br i1 %28, label %29, label %19, !llvm.loop !68

29:                                               ; preds = %19
  %30 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %31 = load float, ptr %30, align 8, !tbaa !34
  %32 = load float, ptr %10, align 4, !tbaa !34
  %33 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %34 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 28
  %35 = insertelement <4 x float> poison, float %32, i64 0
  %36 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 29, i64 1
  %37 = load <2 x float>, ptr %33, align 4, !tbaa !34
  %38 = shufflevector <2 x float> %37, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %39 = shufflevector <4 x float> %35, <4 x float> %38, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %41 = fmul <4 x float> %40, <float 0x3A23B808E0000000, float 0x3A23B808E0000000, float 0x3A23B808E0000000, float 0x39E2D484A0000000>
  store <4 x float> %41, ptr %34, align 4, !tbaa !34
  %42 = fmul <2 x float> %37, <float 0x39E2D484A0000000, float 0x39E2D484A0000000>
  store <2 x float> %42, ptr %36, align 4, !tbaa !34
  %43 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 31
  %44 = load <2 x float>, ptr %9, align 8, !tbaa !34
  %45 = fmul <2 x float> %44, <float 0x3CC44D9A20000000, float 0x3CC44D9A20000000>
  store <2 x float> %45, ptr %43, align 4, !tbaa !34
  %46 = fmul float %31, 0x3CC44D9A20000000
  %47 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 31, i64 2
  store float %46, ptr %47, align 4, !tbaa !34
  %48 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 30
  store <2 x float> <float 0x3E3006B440000000, float 0x3E321D8B00000000>, ptr %48, align 4, !tbaa !34
  %49 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 30, i64 2
  store float 0x3E357349C0000000, ptr %49, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define dso_local void @AtmospherePixleShader(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, ptr nocapture noundef %3) local_unnamed_addr #7 {
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  %9 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 27
  %10 = load float, ptr %9, align 4, !tbaa !66
  %11 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 6
  %12 = load <2 x float>, ptr %11, align 4, !tbaa !34
  store <2 x float> %12, ptr %8, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 6, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float %14, ptr %15, align 8, !tbaa !34
  %16 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %8) #12
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %16, float 1.000000e+00)
  %18 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 28
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 25
  %21 = load float, ptr %20, align 4, !tbaa !63
  %22 = fmul float %19, %21
  store float %22, ptr %18, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 28, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fmul float %21, %24
  store float %25, ptr %23, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 28, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fmul float %21, %27
  store float %28, ptr %26, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 30
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 26
  %32 = load float, ptr %31, align 4, !tbaa !62
  %33 = fmul float %30, %32
  store float %33, ptr %29, align 4, !tbaa !34
  %34 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 30, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fmul float %32, %35
  store float %36, ptr %34, align 4, !tbaa !34
  %37 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 30, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = fmul float %32, %38
  store float %39, ptr %37, align 4, !tbaa !34
  %40 = fadd float %22, %33
  %41 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 32
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = fadd float %25, %36
  %43 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 32, i64 1
  store float %42, ptr %43, align 4, !tbaa !34
  %44 = fadd float %28, %39
  %45 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 32, i64 2
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = fneg float %10
  %47 = fmul float %46, %2
  %48 = fdiv float %47, 0x3FE62E4300000000
  %49 = fmul float %48, %40
  %50 = fmul float %48, %42
  %51 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %52 = fmul float %48, %44
  %53 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %54 = fpext float %49 to double
  %55 = tail call double @exp(double noundef %54) #13
  %56 = fpext float %50 to double
  %57 = tail call double @exp(double noundef %56) #13
  %58 = fpext float %52 to double
  %59 = tail call double @exp(double noundef %58) #13
  %60 = fptrunc double %59 to float
  store float %60, ptr %53, align 4, !tbaa !34
  %61 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 21
  %62 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 29
  %63 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 29, i64 2
  %64 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 31
  %65 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 31, i64 2
  %66 = fsub float 1.000000e+00, %60
  %67 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 23
  %68 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 24
  %69 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %70 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 4
  %71 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 3
  %72 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %73 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 22
  %74 = getelementptr inbounds float, ptr %3, i64 2
  %75 = insertelement <2 x double> poison, double %55, i64 0
  %76 = insertelement <2 x double> %75, double %57, i64 1
  %77 = fptrunc <2 x double> %76 to <2 x float>
  %78 = extractelement <2 x float> %77, i64 0
  store float %78, ptr %7, align 4, !tbaa !34
  %79 = extractelement <2 x float> %77, i64 1
  store float %79, ptr %51, align 4, !tbaa !34
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  %80 = load float, ptr %61, align 4, !tbaa !67
  %81 = fadd float %80, 1.000000e+00
  %82 = fmul float %80, -2.000000e+00
  %83 = tail call float @llvm.fmuladd.f32(float %82, float %16, float %81)
  %84 = tail call float @sqrtf(float noundef %83) #13
  %85 = fmul float %84, %83
  %86 = load float, ptr %61, align 4, !tbaa !67
  %87 = fneg float %86
  %88 = tail call float @llvm.fmuladd.f32(float %87, float %86, float 1.000000e+00)
  %89 = fdiv float %88, %85
  %90 = load <2 x float>, ptr %62, align 4, !tbaa !34
  %91 = insertelement <2 x float> poison, float %17, i64 0
  %92 = shufflevector <2 x float> %91, <2 x float> poison, <2 x i32> zeroinitializer
  %93 = fmul <2 x float> %92, %90
  %94 = load float, ptr %63, align 4, !tbaa !34
  %95 = fmul float %17, %94
  %96 = load <2 x float>, ptr %64, align 4, !tbaa !34
  %97 = insertelement <2 x float> poison, float %89, i64 0
  %98 = shufflevector <2 x float> %97, <2 x float> poison, <2 x i32> zeroinitializer
  %99 = fmul <2 x float> %98, %96
  %100 = load float, ptr %65, align 4, !tbaa !34
  %101 = fmul float %89, %100
  %102 = fadd <2 x float> %93, %99
  %103 = fadd float %95, %101
  %104 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %77
  %105 = fmul <2 x float> %104, %102
  %106 = fmul float %66, %103
  %107 = load <2 x float>, ptr %41, align 4, !tbaa !34
  %108 = fdiv <2 x float> <float 1.000000e+00, float 1.000000e+00>, %107
  %109 = load float, ptr %45, align 4, !tbaa !34
  %110 = fdiv float 1.000000e+00, %109
  %111 = fmul <2 x float> %105, %108
  %112 = fmul float %106, %110
  %113 = load float, ptr %67, align 4, !tbaa !64
  %114 = insertelement <2 x float> poison, float %113, i64 0
  %115 = shufflevector <2 x float> %114, <2 x float> poison, <2 x i32> zeroinitializer
  %116 = fmul <2 x float> %111, %115
  %117 = fmul float %113, %112
  %118 = load float, ptr %68, align 4, !tbaa !65
  %119 = load <2 x float>, ptr %6, align 8, !tbaa !34
  %120 = insertelement <2 x float> poison, float %118, i64 0
  %121 = shufflevector <2 x float> %120, <2 x float> poison, <2 x i32> zeroinitializer
  %122 = fmul <2 x float> %121, %119
  %123 = load float, ptr %69, align 8, !tbaa !34
  %124 = fmul float %118, %123
  %125 = load float, ptr %70, align 4, !tbaa !51
  %126 = load float, ptr %71, align 4, !tbaa !38
  %127 = fptosi float %126 to i32
  call fastcc void @ComputeAttenuatedSunlight(float noundef %125, i32 noundef %127, ptr noundef nonnull %5) #12
  %128 = load <2 x float>, ptr %5, align 8, !tbaa !34
  %129 = fmul <2 x float> %122, %128
  %130 = load float, ptr %72, align 8, !tbaa !34
  %131 = fmul float %124, %130
  %132 = load float, ptr %73, align 4, !tbaa !61
  %133 = insertelement <2 x float> poison, float %132, i64 0
  %134 = shufflevector <2 x float> %133, <2 x float> poison, <2 x i32> zeroinitializer
  %135 = fmul <2 x float> %116, %134
  %136 = fmul float %117, %132
  %137 = load <2 x float>, ptr %3, align 4, !tbaa !34
  %138 = fmul <2 x float> %129, %137
  %139 = load float, ptr %74, align 4, !tbaa !34
  %140 = fmul float %131, %139
  %141 = fadd <2 x float> %135, %138
  store <2 x float> %141, ptr %3, align 4, !tbaa !34
  %142 = fadd float %136, %140
  store float %142, ptr %74, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !70 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize memory(write) uwtable
define internal fastcc void @ComputeAttenuatedSunlight(float noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !PGOFuncName !71 {
  %4 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  store <2 x float> <float 0x3FE4CCCCC0000000, float 0x3FE23D70A0000000>, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0x3FDE666660000000, ptr %5, align 8, !tbaa !34
  %6 = sitofp i32 %1 to float
  %7 = tail call float @llvm.fmuladd.f32(float %6, float 0x3FA7984700000000, float 0xBFA77AFF00000000)
  %8 = tail call float @cosf(float noundef %0) #13
  %9 = fdiv float %0, 0xC00921FB60000000
  %10 = tail call float @llvm.fmuladd.f32(float %9, float 1.800000e+02, float 0x405778A3E0000000)
  %11 = tail call float @powf(float noundef %10, float noundef 0xBFF40C49C0000000) #13
  %12 = tail call float @llvm.fmuladd.f32(float %11, float 0x3FC3333340000000, float %8)
  %13 = fdiv float -1.000000e+00, %12
  %14 = fmul float %13, 0x3F81E3A7E0000000
  %15 = fmul float %7, %13
  br label %16

16:                                               ; preds = %3, %16
  %17 = phi i64 [ 0, %3 ], [ %30, %16 ]
  %18 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = tail call float @powf(float noundef %19, float noundef 0xC01051EB80000000) #13
  %21 = fmul float %14, %20
  %22 = tail call float @expf(float noundef %21) #13
  %23 = tail call float @powf(float noundef %19, float noundef 0xBFF4CCCCC0000000) #13
  %24 = fmul float %15, %23
  %25 = fpext float %24 to double
  %26 = tail call double @exp(double noundef %25) #13
  %27 = fptrunc double %26 to float
  %28 = fmul float %22, %27
  %29 = getelementptr inbounds float, ptr %2, i64 %17
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = add nuw nsw i64 %17, 1
  %31 = icmp eq i64 %30, 3
  br i1 %31, label %32, label %16, !llvm.loop !72

32:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !73 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #12
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #13
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #12
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 !PGOFuncName !74 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !75 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 8}
!39 = !{!"SunSky", !40, i64 0, !40, i64 2, !40, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !36, i64 48, !36, i64 68, !36, i64 88, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !36, i64 164, !36, i64 176, !36, i64 188, !36, i64 200, !36, i64 212}
!40 = !{!"short", !36, i64 0}
!41 = !{!39, !35, i64 108}
!42 = !{!39, !35, i64 112}
!43 = !{!39, !35, i64 116}
!44 = !{!39, !35, i64 120}
!45 = !{!39, !35, i64 124}
!46 = !{!39, !35, i64 128}
!47 = !{!39, !40, i64 2}
!48 = !{!39, !35, i64 132}
!49 = !{!39, !40, i64 4}
!50 = !{!39, !35, i64 32}
!51 = !{!39, !35, i64 12}
!52 = !{!39, !35, i64 36}
!53 = !{!"sunsky.c:DirectionToThetaPhi"}
!54 = !{!39, !35, i64 16}
!55 = !{!39, !35, i64 40}
!56 = !{!39, !35, i64 44}
!57 = !{!"sunsky.c:AngleBetween"}
!58 = !{!"sunsky.c:PerezFunction"}
!59 = !{!"sunsky.c:copy_v3_v3"}
!60 = !{!"sunsky.c:normalize_v3"}
!61 = !{!39, !35, i64 140}
!62 = !{!39, !35, i64 156}
!63 = !{!39, !35, i64 152}
!64 = !{!39, !35, i64 144}
!65 = !{!39, !35, i64 148}
!66 = !{!39, !35, i64 160}
!67 = !{!39, !35, i64 136}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"sunsky.c:dot_v3v3"}
!71 = !{!"sunsky.c:ComputeAttenuatedSunlight"}
!72 = distinct !{!72, !69}
!73 = !{!"sunsky.c:normalize_v3_v3"}
!74 = !{!"sunsky.c:mul_v3_v3fl"}
!75 = !{!"sunsky.c:zero_v3"}
