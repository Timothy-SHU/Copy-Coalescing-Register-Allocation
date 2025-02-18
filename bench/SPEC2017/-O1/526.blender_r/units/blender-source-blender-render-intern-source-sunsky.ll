; ModuleID = 'blender/source/blender/render/intern/source/sunsky.c'
source_filename = "blender/source/blender/render/intern/source/sunsky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SunSky = type { i16, i16, i16, float, float, float, [3 x float], float, float, float, float, [5 x float], [5 x float], [5 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ClipColor(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = fcmp ogt float %2, 1.000000e+00
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  br label %5

5:                                                ; preds = %4, %1
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = fcmp olt float %6, 0.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  br label %9

9:                                                ; preds = %8, %5
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fcmp ogt float %11, 1.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store float 1.000000e+00, ptr %10, align 4, !tbaa !34
  br label %14

14:                                               ; preds = %13, %9
  %15 = load float, ptr %10, align 4, !tbaa !34
  %16 = fcmp olt float %15, 0.000000e+00
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store float 0.000000e+00, ptr %10, align 4, !tbaa !34
  br label %18

18:                                               ; preds = %17, %14
  %19 = getelementptr inbounds float, ptr %0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fcmp ogt float %20, 1.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store float 1.000000e+00, ptr %19, align 4, !tbaa !34
  br label %23

23:                                               ; preds = %22, %18
  %24 = load float, ptr %19, align 4, !tbaa !34
  %25 = fcmp olt float %24, 0.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store float 0.000000e+00, ptr %19, align 4, !tbaa !34
  br label %27

27:                                               ; preds = %26, %23
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
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
  %34 = tail call float @acosf(float noundef %31) #7
  store float %34, ptr %33, align 4, !tbaa !34
  %35 = tail call float @llvm.fabs.f32(float %34)
  %36 = fcmp olt float %35, 0x3EE4F8B580000000
  br i1 %36, label %41, label %37

37:                                               ; preds = %12
  %38 = load float, ptr %29, align 4, !tbaa !34
  %39 = load float, ptr %26, align 4, !tbaa !34
  %40 = tail call float @atan2f(float noundef %38, float noundef %39) #7
  br label %41

41:                                               ; preds = %12, %37
  %42 = phi float [ %40, %37 ], [ 0.000000e+00, %12 ]
  %43 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 5
  store float %42, ptr %43, align 4, !tbaa !34
  %44 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 7
  store float 0x3F11AE0620000000, ptr %44, align 4, !tbaa !50
  %45 = load float, ptr %33, align 4, !tbaa !51
  %46 = fdiv float %1, 1.200000e+02
  %47 = fsub float 0x3FDC71C720000000, %46
  %48 = tail call float @llvm.fmuladd.f32(float %45, float -2.000000e+00, float 0x400921FB60000000)
  %49 = fmul float %47, %48
  %50 = tail call float @llvm.fmuladd.f32(float %1, float 0x40102E6320000000, float 0xC013E24DE0000000)
  %51 = tail call float @tanf(float noundef %49) #7
  %52 = fmul float %1, 0xBFCB958100000000
  %53 = tail call float @llvm.fmuladd.f32(float %50, float %51, float %52)
  %54 = fadd float %53, 0x40035A8580000000
  %55 = fmul float %54, 1.000000e+03
  %56 = fcmp ugt float %55, 0.000000e+00
  %57 = select i1 %56, float %55, float 0x3EB0C6F7A0000000
  %58 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 8
  store float %57, ptr %58, align 4, !tbaa !52
  %59 = fmul float %1, %1
  %60 = fmul float %45, %45
  %61 = fmul float %45, %60
  %62 = fmul float %60, 0xBF6EA35940000000
  %63 = tail call float @llvm.fmuladd.f32(float %61, float 0x3F5B089A00000000, float %62)
  %64 = load float, ptr %33, align 4, !tbaa !51
  %65 = tail call float @llvm.fmuladd.f32(float %64, float 0x3F610A1380000000, float %63)
  %66 = fadd float %65, 0.000000e+00
  %67 = fmul float %60, 0x3FB0533B20000000
  %68 = tail call float @llvm.fmuladd.f32(float %61, float 0xBF9DB76B40000000, float %67)
  %69 = tail call float @llvm.fmuladd.f32(float %64, float 0xBFA064ECE0000000, float %68)
  %70 = fadd float %69, 0x3F702363C0000000
  %71 = fmul float %70, %1
  %72 = tail call float @llvm.fmuladd.f32(float %66, float %59, float %71)
  %73 = fmul float %60, 0xBFCB218160000000
  %74 = tail call float @llvm.fmuladd.f32(float %61, float 0x3FBDEF1FE0000000, float %73)
  %75 = tail call float @llvm.fmuladd.f32(float %64, float 0x3FAEFC7A40000000, float %74)
  %76 = fadd float %75, 0x3FD090FFA0000000
  %77 = fadd float %76, %72
  %78 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 9
  store float %77, ptr %78, align 4, !tbaa !53
  %79 = fmul float %60, 0xBF78FC5040000000
  %80 = tail call float @llvm.fmuladd.f32(float %61, float 0x3F66872B00000000, float %79)
  %81 = tail call float @llvm.fmuladd.f32(float %64, float 0x3F69E30020000000, float %80)
  %82 = fadd float %81, 0.000000e+00
  %83 = fmul float %60, 0x3FB6F69440000000
  %84 = tail call float @llvm.fmuladd.f32(float %61, float 0xBFA5935FC0000000, float %83)
  %85 = tail call float @llvm.fmuladd.f32(float %64, float 0xBFA5436B80000000, float %84)
  %86 = fadd float %85, 0x3F75182AA0000000
  %87 = fmul float %86, %1
  %88 = tail call float @llvm.fmuladd.f32(float %82, float %59, float %87)
  %89 = fmul float %60, 0xBFD11FB400000000
  %90 = tail call float @llvm.fmuladd.f32(float %61, float 0x3FC3A493C0000000, float %89)
  %91 = tail call float @llvm.fmuladd.f32(float %64, float 0x3FB1129880000000, float %90)
  %92 = fadd float %91, 0x3FD1148FE0000000
  %93 = fadd float %92, %88
  %94 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 10
  store float %93, ptr %94, align 4, !tbaa !54
  %95 = tail call float @llvm.fmuladd.f32(float %1, float 0x3FC6E04C00000000, float 0xBFF7689220000000)
  %96 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 11
  store float %95, ptr %96, align 4, !tbaa !34
  %97 = tail call float @llvm.fmuladd.f32(float %1, float 0xBFD6BEDFA0000000, float 0x3FDB5BFF00000000)
  %98 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 11, i64 1
  store float %97, ptr %98, align 4, !tbaa !34
  %99 = tail call float @llvm.fmuladd.f32(float %1, float 0xBF97342EE0000000, float 0x40154CD9E0000000)
  %100 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 11, i64 2
  store float %99, ptr %100, align 4, !tbaa !34
  %101 = tail call float @llvm.fmuladd.f32(float %1, float 0x3FBEE24360000000, float 0xC0049DCC60000000)
  %102 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 11, i64 3
  store float %101, ptr %102, align 4, !tbaa !34
  %103 = tail call float @llvm.fmuladd.f32(float %1, float 0xBFB1244A60000000, float 0x3FD7B28100000000)
  %104 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 11, i64 4
  store float %103, ptr %104, align 4, !tbaa !34
  %105 = tail call float @llvm.fmuladd.f32(float %1, float 0xBF93B645A0000000, float 0xBFD0970F80000000)
  %106 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 12
  store float %105, ptr %106, align 4, !tbaa !34
  %107 = tail call float @llvm.fmuladd.f32(float %1, float 0xBFB106CCA0000000, float 0x3F4A8AC5C0000000)
  %108 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 12, i64 1
  store float %107, ptr %108, align 4, !tbaa !34
  %109 = tail call float @llvm.fmuladd.f32(float %1, float 0xBF3ADEA8A0000000, float 0x3FCB323780000000)
  %110 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 12, i64 2
  store float %109, ptr %110, align 4, !tbaa !34
  %111 = tail call float @llvm.fmuladd.f32(float %1, float 0xBFB06833C0000000, float 0xBFECC38B00000000)
  %112 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 12, i64 3
  store float %111, ptr %112, align 4, !tbaa !34
  %113 = tail call float @llvm.fmuladd.f32(float %1, float 0xBF6A9FBE80000000, float 0x3FA72085C0000000)
  %114 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 12, i64 4
  store float %113, ptr %114, align 4, !tbaa !34
  %115 = tail call float @llvm.fmuladd.f32(float %1, float 0xBF91172F00000000, float 0xBFD0B09EA0000000)
  %116 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 13
  store float %115, ptr %116, align 4, !tbaa !34
  %117 = tail call float @llvm.fmuladd.f32(float %1, float 0xBFB84EA4A0000000, float 0x3F82DCB140000000)
  %118 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 13, i64 1
  store float %117, ptr %118, align 4, !tbaa !34
  %119 = tail call float @llvm.fmuladd.f32(float %1, float 0xBF80385C60000000, float 0x3FCAE8D100000000)
  %120 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 13, i64 2
  store float %119, ptr %120, align 4, !tbaa !34
  %121 = tail call float @llvm.fmuladd.f32(float %1, float 0xBFA68DB8C0000000, float 0xBFFA7583A0000000)
  %122 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 13, i64 3
  store float %121, ptr %122, align 4, !tbaa !34
  %123 = tail call float @llvm.fmuladd.f32(float %1, float 0xBF865D39A0000000, float 0x3FAB170500000000)
  %124 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 13, i64 4
  store float %123, ptr %124, align 4, !tbaa !34
  %125 = load float, ptr %14, align 4, !tbaa !41
  %126 = fmul float %95, %125
  store float %126, ptr %96, align 4, !tbaa !34
  %127 = fmul float %105, %125
  store float %127, ptr %106, align 4, !tbaa !34
  %128 = fmul float %115, %125
  store float %128, ptr %116, align 4, !tbaa !34
  %129 = load float, ptr %15, align 4, !tbaa !42
  %130 = fmul float %97, %129
  store float %130, ptr %98, align 4, !tbaa !34
  %131 = fmul float %107, %129
  store float %131, ptr %108, align 4, !tbaa !34
  %132 = fmul float %117, %129
  store float %132, ptr %118, align 4, !tbaa !34
  %133 = load float, ptr %16, align 4, !tbaa !43
  %134 = fmul float %99, %133
  store float %134, ptr %100, align 4, !tbaa !34
  %135 = fmul float %109, %133
  store float %135, ptr %110, align 4, !tbaa !34
  %136 = fmul float %119, %133
  store float %136, ptr %120, align 4, !tbaa !34
  %137 = load float, ptr %17, align 4, !tbaa !44
  %138 = fmul float %101, %137
  store float %138, ptr %102, align 4, !tbaa !34
  %139 = fmul float %111, %137
  store float %139, ptr %112, align 4, !tbaa !34
  %140 = fmul float %121, %137
  store float %140, ptr %122, align 4, !tbaa !34
  %141 = load float, ptr %18, align 4, !tbaa !45
  %142 = fmul float %103, %141
  store float %142, ptr %104, align 4, !tbaa !34
  %143 = fmul float %113, %141
  store float %143, ptr %114, align 4, !tbaa !34
  %144 = fmul float %123, %141
  store float %144, ptr %124, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @tanf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
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
  br i1 %20, label %21, label %34

21:                                               ; preds = %13
  %22 = fneg float %14
  %23 = tail call float @llvm.fmuladd.f32(float %22, float 0x3FD45F3060000000, float 5.000000e-01)
  %24 = fneg float %23
  %25 = tail call float @llvm.fmuladd.f32(float %24, float 2.000000e+00, float 1.000000e+00)
  %26 = tail call float @llvm.fmuladd.f32(float %17, float 0x3FD45F3060000000, float -5.000000e-01)
  %27 = fneg float %26
  %28 = tail call float @llvm.fmuladd.f32(float %27, float 2.000000e+00, float 1.000000e+00)
  %29 = fmul float %25, %28
  %30 = fmul float %29, %29
  %31 = tail call float @llvm.fmuladd.f32(float %29, float -2.000000e+00, float 3.000000e+00)
  %32 = fmul float %30, %31
  %33 = fmul float %32, 0x3F1179ECA0000000
  br label %34

34:                                               ; preds = %21, %13
  %35 = phi float [ %33, %21 ], [ 0x3F1179ECA0000000, %13 ]
  %36 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 5
  %37 = load float, ptr %36, align 4, !tbaa !55
  %38 = tail call float @sinf(float noundef %14) #7
  %39 = tail call float @sinf(float noundef %17) #7
  %40 = fmul float %38, %39
  %41 = fsub float %37, %2
  %42 = tail call float @cosf(float noundef %41) #7
  %43 = tail call float @cosf(float noundef %14) #7
  %44 = tail call float @cosf(float noundef %17) #7
  %45 = fmul float %43, %44
  %46 = tail call float @llvm.fmuladd.f32(float %40, float %42, float %45)
  %47 = fcmp ogt float %46, 1.000000e+00
  br i1 %47, label %52, label %48

48:                                               ; preds = %34
  %49 = fcmp olt float %46, -1.000000e+00
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = tail call float @acosf(float noundef %46) #7
  br label %52

52:                                               ; preds = %34, %48, %50
  %53 = phi float [ %51, %50 ], [ 0.000000e+00, %34 ], [ 0x400921FB60000000, %48 ]
  %54 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 12
  %55 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 9
  %56 = load float, ptr %55, align 4, !tbaa !53
  %57 = load float, ptr %54, align 4, !tbaa !34
  %58 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 12, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !34
  %60 = tail call float @expf(float noundef %59) #7
  %61 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 12, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !34
  %63 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 12, i64 3
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = load float, ptr %16, align 4, !tbaa !51
  %66 = fmul float %64, %65
  %67 = tail call float @expf(float noundef %66) #7
  %68 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 12, i64 4
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = load float, ptr %16, align 4, !tbaa !51
  %71 = tail call float @cosf(float noundef %70) #7
  %72 = load float, ptr %16, align 4, !tbaa !51
  %73 = tail call float @cosf(float noundef %72) #7
  %74 = load float, ptr %54, align 4, !tbaa !34
  %75 = load float, ptr %58, align 4, !tbaa !34
  %76 = tail call float @cosf(float noundef %14) #7
  %77 = fdiv float %75, %76
  %78 = tail call float @expf(float noundef %77) #7
  %79 = load float, ptr %61, align 4, !tbaa !34
  %80 = load float, ptr %63, align 4, !tbaa !34
  %81 = fmul float %53, %80
  %82 = tail call float @expf(float noundef %81) #7
  %83 = load float, ptr %68, align 4, !tbaa !34
  %84 = tail call float @cosf(float noundef %53) #7
  %85 = tail call float @cosf(float noundef %53) #7
  %86 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 13
  %87 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 10
  %88 = load float, ptr %87, align 4, !tbaa !54
  %89 = load float, ptr %86, align 4, !tbaa !34
  %90 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 13, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !34
  %92 = tail call float @expf(float noundef %91) #7
  %93 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 13, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !34
  %95 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 13, i64 3
  %96 = load float, ptr %95, align 4, !tbaa !34
  %97 = load float, ptr %16, align 4, !tbaa !51
  %98 = fmul float %96, %97
  %99 = tail call float @expf(float noundef %98) #7
  %100 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 13, i64 4
  %101 = load float, ptr %100, align 4, !tbaa !34
  %102 = load float, ptr %16, align 4, !tbaa !51
  %103 = tail call float @cosf(float noundef %102) #7
  %104 = load float, ptr %16, align 4, !tbaa !51
  %105 = tail call float @cosf(float noundef %104) #7
  %106 = load float, ptr %86, align 4, !tbaa !34
  %107 = load float, ptr %90, align 4, !tbaa !34
  %108 = tail call float @cosf(float noundef %14) #7
  %109 = fdiv float %107, %108
  %110 = tail call float @expf(float noundef %109) #7
  %111 = load float, ptr %93, align 4, !tbaa !34
  %112 = load float, ptr %95, align 4, !tbaa !34
  %113 = fmul float %53, %112
  %114 = tail call float @expf(float noundef %113) #7
  %115 = load float, ptr %100, align 4, !tbaa !34
  %116 = tail call float @cosf(float noundef %53) #7
  %117 = tail call float @cosf(float noundef %53) #7
  %118 = fmul float %15, %35
  %119 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 11
  %120 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 8
  %121 = load float, ptr %120, align 4, !tbaa !52
  %122 = load float, ptr %119, align 4, !tbaa !34
  %123 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 11, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !34
  %125 = tail call float @expf(float noundef %124) #7
  %126 = tail call float @llvm.fmuladd.f32(float %122, float %125, float 1.000000e+00)
  %127 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 11, i64 2
  %128 = load float, ptr %127, align 4, !tbaa !34
  %129 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 11, i64 3
  %130 = load float, ptr %129, align 4, !tbaa !34
  %131 = load float, ptr %16, align 4, !tbaa !51
  %132 = fmul float %130, %131
  %133 = tail call float @expf(float noundef %132) #7
  %134 = tail call float @llvm.fmuladd.f32(float %128, float %133, float 1.000000e+00)
  %135 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 11, i64 4
  %136 = load float, ptr %135, align 4, !tbaa !34
  %137 = load float, ptr %16, align 4, !tbaa !51
  %138 = tail call float @cosf(float noundef %137) #7
  %139 = fmul float %136, %138
  %140 = load float, ptr %16, align 4, !tbaa !51
  %141 = tail call float @cosf(float noundef %140) #7
  %142 = tail call float @llvm.fmuladd.f32(float %139, float %141, float %134)
  %143 = fmul float %126, %142
  %144 = load float, ptr %119, align 4, !tbaa !34
  %145 = load float, ptr %123, align 4, !tbaa !34
  %146 = tail call float @cosf(float noundef %14) #7
  %147 = fdiv float %145, %146
  %148 = tail call float @expf(float noundef %147) #7
  %149 = tail call float @llvm.fmuladd.f32(float %144, float %148, float 1.000000e+00)
  %150 = load float, ptr %127, align 4, !tbaa !34
  %151 = load float, ptr %129, align 4, !tbaa !34
  %152 = fmul float %53, %151
  %153 = tail call float @expf(float noundef %152) #7
  %154 = tail call float @llvm.fmuladd.f32(float %150, float %153, float 1.000000e+00)
  %155 = load float, ptr %135, align 4, !tbaa !34
  %156 = tail call float @cosf(float noundef %53) #7
  %157 = fmul float %155, %156
  %158 = tail call float @cosf(float noundef %53) #7
  %159 = tail call float @llvm.fmuladd.f32(float %157, float %158, float %154)
  %160 = fmul float %149, %159
  %161 = fmul float %121, %160
  %162 = fdiv float %161, %143
  %163 = fmul float %118, %162
  %164 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 20
  %165 = load float, ptr %164, align 4, !tbaa !48
  %166 = fcmp une float %165, 0.000000e+00
  br i1 %166, label %167, label %173

167:                                              ; preds = %52
  %168 = fmul float %165, %163
  %169 = fpext float %168 to double
  %170 = tail call double @exp(double noundef %169) #7
  %171 = fsub double 1.000000e+00, %170
  %172 = fptrunc double %171 to float
  br label %173

173:                                              ; preds = %167, %52
  %174 = phi float [ %172, %167 ], [ %163, %52 ]
  %175 = tail call float @llvm.fmuladd.f32(float %106, float %110, float 1.000000e+00)
  %176 = fmul float %115, %116
  %177 = tail call float @llvm.fmuladd.f32(float %111, float %114, float 1.000000e+00)
  %178 = tail call float @llvm.fmuladd.f32(float %176, float %117, float %177)
  %179 = fmul float %175, %178
  %180 = fmul float %88, %179
  %181 = tail call float @llvm.fmuladd.f32(float %89, float %92, float 1.000000e+00)
  %182 = fmul float %101, %103
  %183 = tail call float @llvm.fmuladd.f32(float %94, float %99, float 1.000000e+00)
  %184 = tail call float @llvm.fmuladd.f32(float %182, float %105, float %183)
  %185 = fmul float %181, %184
  %186 = fdiv float %180, %185
  %187 = tail call float @llvm.fmuladd.f32(float %74, float %78, float 1.000000e+00)
  %188 = fmul float %83, %84
  %189 = tail call float @llvm.fmuladd.f32(float %79, float %82, float 1.000000e+00)
  %190 = tail call float @llvm.fmuladd.f32(float %188, float %85, float %189)
  %191 = fmul float %187, %190
  %192 = fmul float %56, %191
  %193 = tail call float @llvm.fmuladd.f32(float %57, float %60, float 1.000000e+00)
  %194 = fmul float %69, %71
  %195 = tail call float @llvm.fmuladd.f32(float %62, float %67, float 1.000000e+00)
  %196 = tail call float @llvm.fmuladd.f32(float %194, float %73, float %195)
  %197 = fmul float %193, %196
  %198 = fdiv float %192, %197
  %199 = fdiv float %198, %186
  %200 = fmul float %199, %174
  %201 = fsub float 1.000000e+00, %198
  %202 = fsub float %201, %186
  %203 = fdiv float %202, %186
  %204 = fmul float %203, %174
  store float %200, ptr %3, align 4, !tbaa !34
  %205 = getelementptr inbounds float, ptr %3, i64 1
  store float %174, ptr %205, align 4, !tbaa !34
  %206 = getelementptr inbounds float, ptr %3, i64 2
  store float %204, ptr %206, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @GetSkyXYZRadiancef(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %6
  %10 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %9)
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %10)
  %12 = fcmp ogt float %11, 0x38AA95A5C0000000
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = tail call float @sqrtf(float noundef %11) #7
  %15 = fdiv float 1.000000e+00, %14
  %16 = fmul float %4, %15
  %17 = fmul float %6, %15
  %18 = fmul float %8, %15
  br label %19

19:                                               ; preds = %3, %13
  %20 = phi float [ %17, %13 ], [ 0.000000e+00, %3 ]
  %21 = phi float [ %16, %13 ], [ 0.000000e+00, %3 ]
  %22 = phi float [ %18, %13 ], [ 0.000000e+00, %3 ]
  %23 = fcmp olt float %22, 0x3F50624DE0000000
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = fmul float %20, %20
  %26 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %25)
  %27 = fadd float %26, 0x3EB0C6F7C0000000
  %28 = fcmp ogt float %27, 0x38AA95A5C0000000
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = tail call float @sqrtf(float noundef %27) #7
  %31 = fdiv float 1.000000e+00, %30
  %32 = fmul float %21, %31
  %33 = fmul float %20, %31
  %34 = fmul float %31, 0x3F50624DE0000000
  br label %35

35:                                               ; preds = %29, %24, %19
  %36 = phi float [ %22, %19 ], [ %34, %29 ], [ 0.000000e+00, %24 ]
  %37 = phi float [ %20, %19 ], [ %33, %29 ], [ 0.000000e+00, %24 ]
  %38 = phi float [ %21, %19 ], [ %32, %29 ], [ 0.000000e+00, %24 ]
  %39 = tail call float @acosf(float noundef %36) #7
  %40 = tail call float @llvm.fabs.f32(float %39)
  %41 = fcmp olt float %40, 0x3EE4F8B580000000
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = tail call float @atan2f(float noundef %37, float noundef %38) #7
  br label %44

44:                                               ; preds = %35, %42
  %45 = phi float [ %43, %42 ], [ 0.000000e+00, %35 ]
  tail call void @GetSkyXYZRadiance(ptr noundef %0, float noundef %39, float noundef %45, ptr noundef %2)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @InitAtmosphere(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #5 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #7
  %11 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 22
  store float %1, ptr %11, align 4, !tbaa !56
  %12 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 26
  store float %2, ptr %12, align 4, !tbaa !57
  %13 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 25
  store float %3, ptr %13, align 4, !tbaa !58
  %14 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 23
  store float %4, ptr %14, align 4, !tbaa !59
  %15 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 24
  store float %5, ptr %15, align 4, !tbaa !60
  %16 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 27
  store float %6, ptr %16, align 4, !tbaa !61
  %17 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 21
  store float 0x3FE99999A0000000, ptr %17, align 4, !tbaa !62
  store float 0x4137799D80000000, ptr %8, align 4, !tbaa !34
  %18 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float 0x413AC51200000000, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0x41400FD7A0000000, ptr %19, align 4, !tbaa !34
  br label %20

20:                                               ; preds = %7, %20
  %21 = phi i64 [ 0, %7 ], [ %28, %20 ]
  %22 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fmul float %23, %23
  %25 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %21
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = fmul float %24, %24
  %27 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %21
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = add nuw nsw i64 %21, 1
  %29 = icmp eq i64 %28, 3
  br i1 %29, label %30, label %20, !llvm.loop !63

30:                                               ; preds = %20
  %31 = load float, ptr %9, align 4, !tbaa !34
  %32 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = load float, ptr %10, align 4, !tbaa !34
  %37 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fmul float %36, 0x3A23B808E0000000
  %42 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 28
  store float %41, ptr %42, align 4, !tbaa !34
  %43 = fmul float %38, 0x3A23B808E0000000
  %44 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 28, i64 1
  store float %43, ptr %44, align 4, !tbaa !34
  %45 = fmul float %40, 0x3A23B808E0000000
  %46 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 28, i64 2
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = fmul float %36, 0x39E2D484A0000000
  %48 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 29
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = fmul float %38, 0x39E2D484A0000000
  %50 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 29, i64 1
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = fmul float %40, 0x39E2D484A0000000
  %52 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 29, i64 2
  store float %51, ptr %52, align 4, !tbaa !34
  %53 = fmul float %31, 0x3CC44D9A20000000
  %54 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 31
  store float %53, ptr %54, align 4, !tbaa !34
  %55 = fmul float %33, 0x3CC44D9A20000000
  %56 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 31, i64 1
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = fmul float %35, 0x3CC44D9A20000000
  %58 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 31, i64 2
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 30
  store float 0x3E3006B440000000, ptr %59, align 4, !tbaa !34
  %60 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 30, i64 1
  store float 0x3E321D8B00000000, ptr %60, align 4, !tbaa !34
  %61 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 30, i64 2
  store float 0x3E357349C0000000, ptr %61, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  ret void
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @AtmospherePixleShader(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, ptr nocapture noundef %3) local_unnamed_addr #6 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %7 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 27
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 6, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 6, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = load float, ptr %1, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fmul float %12, %17
  %19 = tail call float @llvm.fmuladd.f32(float %15, float %10, float %18)
  %20 = getelementptr inbounds float, ptr %1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %14, float %19)
  %23 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 28
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 25
  %26 = load float, ptr %25, align 4, !tbaa !58
  %27 = fmul float %24, %26
  store float %27, ptr %23, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 28, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fmul float %26, %29
  store float %30, ptr %28, align 4, !tbaa !34
  %31 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 28, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fmul float %26, %32
  store float %33, ptr %31, align 4, !tbaa !34
  %34 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 30
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 26
  %37 = load float, ptr %36, align 4, !tbaa !57
  %38 = fmul float %35, %37
  store float %38, ptr %34, align 4, !tbaa !34
  %39 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 30, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = fmul float %37, %40
  store float %41, ptr %39, align 4, !tbaa !34
  %42 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 30, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fmul float %37, %43
  store float %44, ptr %42, align 4, !tbaa !34
  %45 = fadd float %27, %38
  %46 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 32
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = fadd float %30, %41
  %48 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 32, i64 1
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = fadd float %33, %44
  %50 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 32, i64 2
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = fneg float %8
  %52 = fmul float %51, %2
  %53 = fdiv float %52, 0x3FE62E4300000000
  %54 = fmul float %53, %45
  %55 = fmul float %53, %47
  %56 = fmul float %53, %49
  %57 = fpext float %54 to double
  %58 = tail call double @exp(double noundef %57) #7
  %59 = fpext float %55 to double
  %60 = tail call double @exp(double noundef %59) #7
  %61 = fpext float %56 to double
  %62 = tail call double @exp(double noundef %61) #7
  %63 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 21
  %64 = load float, ptr %63, align 4, !tbaa !62
  %65 = fadd float %64, 1.000000e+00
  %66 = fmul float %64, -2.000000e+00
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %22, float %65)
  %68 = tail call float @sqrtf(float noundef %67) #7
  %69 = load float, ptr %63, align 4, !tbaa !62
  %70 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 29
  %71 = load float, ptr %70, align 4, !tbaa !34
  %72 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 29, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 29, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 31
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 31, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 31, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !34
  %82 = load float, ptr %46, align 4, !tbaa !34
  %83 = load float, ptr %48, align 4, !tbaa !34
  %84 = load float, ptr %50, align 4, !tbaa !34
  %85 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 23
  %86 = load float, ptr %85, align 4, !tbaa !59
  %87 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 24
  %88 = load float, ptr %87, align 4, !tbaa !60
  %89 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 4
  %90 = load float, ptr %89, align 4, !tbaa !51
  %91 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 3
  %92 = load float, ptr %91, align 4, !tbaa !38
  %93 = fptosi float %92 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  store float 0x3FE4CCCCC0000000, ptr %5, align 4, !tbaa !34
  %94 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0x3FE23D70A0000000, ptr %94, align 4, !tbaa !34
  %95 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0x3FDE666660000000, ptr %95, align 4, !tbaa !34
  %96 = sitofp i32 %93 to float
  %97 = tail call float @llvm.fmuladd.f32(float %96, float 0x3FA7984700000000, float 0xBFA77AFF00000000)
  %98 = tail call float @cosf(float noundef %90) #7
  %99 = fdiv float %90, 0xC00921FB60000000
  %100 = tail call float @llvm.fmuladd.f32(float %99, float 1.800000e+02, float 0x405778A3E0000000)
  %101 = tail call float @powf(float noundef %100, float noundef 0xBFF40C49C0000000) #7
  %102 = tail call float @llvm.fmuladd.f32(float %101, float 0x3FC3333340000000, float %98)
  %103 = fdiv float -1.000000e+00, %102
  %104 = fmul float %103, 0x3F81E3A7E0000000
  %105 = fmul float %97, %103
  br label %106

106:                                              ; preds = %4, %106
  %107 = phi i64 [ 0, %4 ], [ %120, %106 ]
  %108 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %107
  %109 = load float, ptr %108, align 4, !tbaa !34
  %110 = tail call float @powf(float noundef %109, float noundef 0xC01051EB80000000) #7
  %111 = fmul float %104, %110
  %112 = tail call float @expf(float noundef %111) #7
  %113 = tail call float @powf(float noundef %109, float noundef 0xBFF4CCCCC0000000) #7
  %114 = fmul float %105, %113
  %115 = fpext float %114 to double
  %116 = tail call double @exp(double noundef %115) #7
  %117 = fptrunc double %116 to float
  %118 = fmul float %112, %117
  %119 = getelementptr inbounds float, ptr %6, i64 %107
  store float %118, ptr %119, align 4, !tbaa !34
  %120 = add nuw nsw i64 %107, 1
  %121 = icmp eq i64 %120, 3
  br i1 %121, label %122, label %106, !llvm.loop !66

122:                                              ; preds = %106
  %123 = fptrunc double %62 to float
  %124 = fmul float %88, %123
  %125 = fptrunc double %60 to float
  %126 = fmul float %88, %125
  %127 = fptrunc double %58 to float
  %128 = fmul float %88, %127
  %129 = tail call float @llvm.fmuladd.f32(float %22, float %22, float 1.000000e+00)
  %130 = fmul float %129, %75
  %131 = fneg float %69
  %132 = tail call float @llvm.fmuladd.f32(float %131, float %69, float 1.000000e+00)
  %133 = fmul float %68, %67
  %134 = fdiv float %132, %133
  %135 = fmul float %134, %81
  %136 = fadd float %130, %135
  %137 = fsub float 1.000000e+00, %123
  %138 = fmul float %137, %136
  %139 = fdiv float 1.000000e+00, %84
  %140 = fmul float %138, %139
  %141 = fmul float %86, %140
  %142 = fmul float %129, %73
  %143 = fmul float %134, %79
  %144 = fadd float %142, %143
  %145 = fsub float 1.000000e+00, %125
  %146 = fmul float %145, %144
  %147 = fdiv float 1.000000e+00, %83
  %148 = fmul float %146, %147
  %149 = fmul float %148, %86
  %150 = fmul float %129, %71
  %151 = fmul float %134, %77
  %152 = fadd float %150, %151
  %153 = fsub float 1.000000e+00, %127
  %154 = fmul float %153, %152
  %155 = fdiv float 1.000000e+00, %82
  %156 = fmul float %154, %155
  %157 = fmul float %156, %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  %158 = load float, ptr %6, align 4, !tbaa !34
  %159 = fmul float %128, %158
  %160 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !34
  %162 = fmul float %126, %161
  %163 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %164 = load float, ptr %163, align 4, !tbaa !34
  %165 = fmul float %124, %164
  %166 = getelementptr inbounds %struct.SunSky, ptr %0, i64 0, i32 22
  %167 = load float, ptr %166, align 4, !tbaa !56
  %168 = fmul float %157, %167
  %169 = fmul float %149, %167
  %170 = fmul float %141, %167
  %171 = load float, ptr %3, align 4, !tbaa !34
  %172 = fmul float %159, %171
  store float %172, ptr %3, align 4, !tbaa !34
  %173 = getelementptr inbounds float, ptr %3, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !34
  %175 = fmul float %162, %174
  store float %175, ptr %173, align 4, !tbaa !34
  %176 = getelementptr inbounds float, ptr %3, i64 2
  %177 = load float, ptr %176, align 4, !tbaa !34
  %178 = fmul float %165, %177
  store float %178, ptr %176, align 4, !tbaa !34
  %179 = fadd float %168, %172
  store float %179, ptr %3, align 4, !tbaa !34
  %180 = fadd float %169, %175
  store float %180, ptr %173, align 4, !tbaa !34
  %181 = fadd float %170, %178
  store float %181, ptr %176, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!53 = !{!39, !35, i64 40}
!54 = !{!39, !35, i64 44}
!55 = !{!39, !35, i64 16}
!56 = !{!39, !35, i64 140}
!57 = !{!39, !35, i64 156}
!58 = !{!39, !35, i64 152}
!59 = !{!39, !35, i64 144}
!60 = !{!39, !35, i64 148}
!61 = !{!39, !35, i64 160}
!62 = !{!39, !35, i64 136}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !{!66, !64, !65}
