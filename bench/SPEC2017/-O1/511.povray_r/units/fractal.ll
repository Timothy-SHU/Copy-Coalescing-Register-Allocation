; ModuleID = 'fractal.cpp'
source_filename = "fractal.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Method_Struct" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::Fractal_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, [3 x double], [4 x double], [4 x double], double, double, i32, double, i32, i32, i32, %"struct.pov::cmplx", ptr, ptr, ptr, ptr, ptr, double }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%"struct.pov::cmplx" = type { double, double }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::Object_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32 }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }

@_ZN3pov2SxE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN3pov2SyE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN3pov2SzE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN3pov2SwE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN3pov9PrecisionE = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZN3pov9DirectionE = dso_local global [3 x double] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"fractal.cpp\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Fractal Set\00", align 1
@_ZN3povL15Fractal_MethodsE = internal global %"struct.pov::Method_Struct" { ptr @_ZN3povL25All_Fractal_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL14Inside_FractalEPdPNS_13Object_StructE, ptr @_ZN3povL14Fractal_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL12Copy_FractalEPNS_13Object_StructE, ptr @_ZN3povL17Translate_FractalEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL14Rotate_FractalEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL13Scale_FractalEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL17Transform_FractalEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL14Invert_FractalEPNS_13Object_StructE, ptr @_ZN3povL15Destroy_FractalEPNS_13Object_StructE }, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"Illegal function: quaternion only supports sqr and cube\00", align 1
@_ZN3povL21Complex_Function_ListE = internal unnamed_addr constant [15 x ptr] [ptr @_ZN3pov11Complex_ExpEPNS_5cmplxES1_, ptr @_ZN3pov10Complex_LnEPNS_5cmplxES1_, ptr @_ZN3pov11Complex_SinEPNS_5cmplxES1_, ptr @_ZN3pov12Complex_ASinEPNS_5cmplxES1_, ptr @_ZN3pov11Complex_CosEPNS_5cmplxES1_, ptr @_ZN3pov12Complex_ACosEPNS_5cmplxES1_, ptr @_ZN3pov11Complex_TanEPNS_5cmplxES1_, ptr @_ZN3pov12Complex_ATanEPNS_5cmplxES1_, ptr @_ZN3pov12Complex_SinhEPNS_5cmplxES1_, ptr @_ZN3pov13Complex_ASinhEPNS_5cmplxES1_, ptr @_ZN3pov12Complex_CoshEPNS_5cmplxES1_, ptr @_ZN3pov13Complex_ACoshEPNS_5cmplxES1_, ptr @_ZN3pov12Complex_TanhEPNS_5cmplxES1_, ptr @_ZN3pov13Complex_ATanhEPNS_5cmplxES1_, ptr @_ZN3pov11Complex_PwrEPNS_5cmplxES1_], align 16
@.str.3 = private unnamed_addr constant [28 x i8] c"Algebra unknown in fractal.\00", align 1
@_ZN3povL32Allocated_Iteration_Stack_LengthE = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"x iteration stack\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"y iteration stack\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"w iteration stack\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"z iteration stack\00", align 1
@_ZN3pov5statsE = external local_unnamed_addr global [123 x i64], align 16
@_ZZN3povL14Inside_FractalEPdPNS_13Object_StructEE9New_Point = internal global [3 x double] zeroinitializer, align 16

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov14Create_FractalEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 320, ptr noundef nonnull @.str, i32 noundef 684, ptr noundef nonnull @.str.1)
  %2 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !34
  store ptr @_ZN3povL15Fractal_MethodsE, ptr %1, align 8, !tbaa !44
  %3 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 6
  %5 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 10
  %6 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %6, align 4, !tbaa !45
  %7 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %7, align 4, !tbaa !45
  %8 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %8, align 4, !tbaa !45
  %9 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !45
  %10 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %10, align 4, !tbaa !45
  %11 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %11, align 4, !tbaa !45
  store ptr null, ptr %5, align 8, !tbaa !46
  %12 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 14
  %13 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %13, align 8, !tbaa !47
  %14 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 15, i64 1
  %15 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 16, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %14, i8 0, i64 48, i1 false)
  store double 1.000000e+00, ptr %15, align 8, !tbaa !47
  %16 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 17
  store double 0.000000e+00, ptr %16, align 8, !tbaa !48
  %17 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 18
  store double 4.000000e+00, ptr %17, align 8, !tbaa !49
  %18 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 19
  store i32 20, ptr %18, align 8, !tbaa !50
  %19 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 20
  store double 5.000000e-02, ptr %19, align 8, !tbaa !51
  %20 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 21
  store i32 0, ptr %20, align 8, !tbaa !52
  %21 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 22
  store i32 0, ptr %21, align 4, !tbaa !53
  %22 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 23
  store i32 15, ptr %22, align 8, !tbaa !54
  %23 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %23, i8 0, i64 64, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov13SetUp_FractalEPNS_14Fractal_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 4, !tbaa !53
  switch i32 %3, label %46 [
    i32 0, label %4
    i32 1, label %19
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 23
  %6 = load i32, ptr %5, align 8, !tbaa !54
  switch i32 %6, label %15 [
    i32 16, label %7
    i32 15, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 26
  store ptr @_ZN3pov12Iteration_z3EPdPNS_14Fractal_StructE, ptr %8, align 8, !tbaa !55
  %9 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  store ptr @_ZN3pov14Normal_Calc_z3EPdiPNS_14Fractal_StructE, ptr %9, align 8, !tbaa !56
  %10 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 27
  store ptr @_ZN3pov14D_Iteration_z3EPdPNS_14Fractal_StructES0_, ptr %10, align 8, !tbaa !57
  br label %17

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 26
  store ptr @_ZN3pov15Iteration_JuliaEPdPNS_14Fractal_StructE, ptr %12, align 8, !tbaa !55
  %13 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 27
  store ptr @_ZN3pov17D_Iteration_JuliaEPdPNS_14Fractal_StructES0_, ptr %13, align 8, !tbaa !57
  %14 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  store ptr @_ZN3pov17Normal_Calc_JuliaEPdiPNS_14Fractal_StructE, ptr %14, align 8, !tbaa !56
  br label %17

15:                                               ; preds = %4
  %16 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.2)
  br label %17

17:                                               ; preds = %15, %11, %7
  %18 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 28
  store ptr @_ZN3pov13F_Bound_JuliaEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_, ptr %18, align 8, !tbaa !58
  br label %48

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 23
  %21 = load i32, ptr %20, align 8, !tbaa !54
  switch i32 %21, label %41 [
    i32 17, label %22
    i32 0, label %27
    i32 1, label %27
    i32 2, label %27
    i32 3, label %27
    i32 4, label %27
    i32 5, label %27
    i32 6, label %27
    i32 7, label %27
    i32 8, label %27
    i32 9, label %27
    i32 10, label %27
    i32 11, label %27
    i32 12, label %27
    i32 13, label %27
    i32 14, label %27
    i32 16, label %36
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 26
  store ptr @_ZN3pov27Iteration_HCompl_ReciprocalEPdPNS_14Fractal_StructE, ptr %23, align 8, !tbaa !55
  %24 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  store ptr @_ZN3pov29Normal_Calc_HCompl_ReciprocalEPdiPNS_14Fractal_StructE, ptr %24, align 8, !tbaa !56
  %25 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 27
  store ptr @_ZN3pov29D_Iteration_HCompl_ReciprocalEPdPNS_14Fractal_StructES0_, ptr %25, align 8, !tbaa !57
  %26 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 28
  store ptr @_ZN3pov25F_Bound_HCompl_ReciprocalEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_, ptr %26, align 8, !tbaa !58
  br label %48

27:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  %28 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 26
  store ptr @_ZN3pov21Iteration_HCompl_FuncEPdPNS_14Fractal_StructE, ptr %28, align 8, !tbaa !55
  %29 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  store ptr @_ZN3pov23Normal_Calc_HCompl_FuncEPdiPNS_14Fractal_StructE, ptr %29, align 8, !tbaa !56
  %30 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 27
  store ptr @_ZN3pov23D_Iteration_HCompl_FuncEPdPNS_14Fractal_StructES0_, ptr %30, align 8, !tbaa !57
  %31 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 28
  store ptr @_ZN3pov19F_Bound_HCompl_FuncEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_, ptr %31, align 8, !tbaa !58
  %32 = sext i32 %21 to i64
  %33 = getelementptr inbounds [15 x ptr], ptr @_ZN3povL21Complex_Function_ListE, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  %35 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 29
  store ptr %34, ptr %35, align 8, !tbaa !60
  br label %48

36:                                               ; preds = %19
  %37 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 26
  store ptr @_ZN3pov19Iteration_HCompl_z3EPdPNS_14Fractal_StructE, ptr %37, align 8, !tbaa !55
  %38 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  store ptr @_ZN3pov21Normal_Calc_HCompl_z3EPdiPNS_14Fractal_StructE, ptr %38, align 8, !tbaa !56
  %39 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 27
  store ptr @_ZN3pov21D_Iteration_HCompl_z3EPdPNS_14Fractal_StructES0_, ptr %39, align 8, !tbaa !57
  %40 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 28
  store ptr @_ZN3pov17F_Bound_HCompl_z3EPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_, ptr %40, align 8, !tbaa !58
  br label %48

41:                                               ; preds = %19
  %42 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 26
  store ptr @_ZN3pov16Iteration_HComplEPdPNS_14Fractal_StructE, ptr %42, align 8, !tbaa !55
  %43 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  store ptr @_ZN3pov18Normal_Calc_HComplEPdiPNS_14Fractal_StructE, ptr %43, align 8, !tbaa !56
  %44 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 27
  store ptr @_ZN3pov18D_Iteration_HComplEPdPNS_14Fractal_StructES0_, ptr %44, align 8, !tbaa !57
  %45 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 28
  store ptr @_ZN3pov14F_Bound_HComplEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_, ptr %45, align 8, !tbaa !58
  br label %48

46:                                               ; preds = %1
  %47 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.3)
  br label %48

48:                                               ; preds = %22, %27, %36, %41, %46, %17
  %49 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 19
  %50 = load i32, ptr %49, align 8, !tbaa !50
  tail call void @_ZN3pov24Allocate_Iteration_StackEi(i32 noundef %50)
  %51 = load i32, ptr %2, align 4, !tbaa !53
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %48
  %54 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 15
  %55 = load double, ptr %54, align 8, !tbaa !47
  %56 = fmul double %55, %55
  %57 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 15, i64 1
  %58 = load double, ptr %57, align 8, !tbaa !47
  %59 = fmul double %58, %58
  %60 = fadd double %56, %59
  %61 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 15, i64 2
  %62 = load double, ptr %61, align 8, !tbaa !47
  %63 = fmul double %62, %62
  %64 = fadd double %60, %63
  %65 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 15, i64 3
  %66 = load double, ptr %65, align 8, !tbaa !47
  %67 = fmul double %66, %66
  %68 = fadd double %64, %67
  %69 = tail call double @sqrt(double noundef %68) #8
  %70 = fadd double %69, 1.000000e+00
  %71 = fadd double %70, 0x3E7AD7F29ABCAF48
  %72 = fcmp ogt double %71, 2.000000e+00
  %73 = select i1 %72, double 2.000000e+00, double %71
  %74 = fmul double %73, %73
  %75 = fadd double %74, 0x3E7AD7F29ABCAF48
  br label %76

76:                                               ; preds = %48, %53
  %77 = phi double [ %75, %53 ], [ 1.600000e+01, %48 ]
  %78 = phi double [ %73, %53 ], [ 4.000000e+00, %48 ]
  %79 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 18
  store double %77, ptr %79, align 8, !tbaa !49
  %80 = fmul double %78, %78
  %81 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 30
  store double %80, ptr %81, align 8, !tbaa !61
  %82 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 21
  store i32 0, ptr %82, align 8, !tbaa !52
  %83 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 9
  %84 = fptrunc double %78 to float
  %85 = fneg float %84
  %86 = fmul double %78, 2.000000e+00
  %87 = fptrunc double %86 to float
  store float %85, ptr %83, align 4, !tbaa !45
  %88 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %85, ptr %88, align 4, !tbaa !45
  %89 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %85, ptr %89, align 4, !tbaa !45
  %90 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 9, i32 1
  store float %87, ptr %90, align 4, !tbaa !45
  %91 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %87, ptr %91, align 4, !tbaa !45
  %92 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %87, ptr %92, align 4, !tbaa !45
  %93 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 10
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %83, ptr noundef %94)
  ret void
}

declare noundef i32 @_ZN3pov12Iteration_z3EPdPNS_14Fractal_StructE(ptr noundef, ptr noundef) #2

declare void @_ZN3pov14Normal_Calc_z3EPdiPNS_14Fractal_StructE(ptr noundef, i32 noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov14D_Iteration_z3EPdPNS_14Fractal_StructES0_(ptr noundef, ptr noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov15Iteration_JuliaEPdPNS_14Fractal_StructE(ptr noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov17D_Iteration_JuliaEPdPNS_14Fractal_StructES0_(ptr noundef, ptr noundef, ptr noundef) #2

declare void @_ZN3pov17Normal_Calc_JuliaEPdiPNS_14Fractal_StructE(ptr noundef, i32 noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #2

declare noundef i32 @_ZN3pov13F_Bound_JuliaEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov27Iteration_HCompl_ReciprocalEPdPNS_14Fractal_StructE(ptr noundef, ptr noundef) #2

declare void @_ZN3pov29Normal_Calc_HCompl_ReciprocalEPdiPNS_14Fractal_StructE(ptr noundef, i32 noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov29D_Iteration_HCompl_ReciprocalEPdPNS_14Fractal_StructES0_(ptr noundef, ptr noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov25F_Bound_HCompl_ReciprocalEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov21Iteration_HCompl_FuncEPdPNS_14Fractal_StructE(ptr noundef, ptr noundef) #2

declare void @_ZN3pov23Normal_Calc_HCompl_FuncEPdiPNS_14Fractal_StructE(ptr noundef, i32 noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov23D_Iteration_HCompl_FuncEPdPNS_14Fractal_StructES0_(ptr noundef, ptr noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov19F_Bound_HCompl_FuncEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov19Iteration_HCompl_z3EPdPNS_14Fractal_StructE(ptr noundef, ptr noundef) #2

declare void @_ZN3pov21Normal_Calc_HCompl_z3EPdiPNS_14Fractal_StructE(ptr noundef, i32 noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov21D_Iteration_HCompl_z3EPdPNS_14Fractal_StructES0_(ptr noundef, ptr noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov17F_Bound_HCompl_z3EPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov16Iteration_HComplEPdPNS_14Fractal_StructE(ptr noundef, ptr noundef) #2

declare void @_ZN3pov18Normal_Calc_HComplEPdiPNS_14Fractal_StructE(ptr noundef, i32 noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov18D_Iteration_HComplEPdPNS_14Fractal_StructES0_(ptr noundef, ptr noundef, ptr noundef) #2

declare noundef i32 @_ZN3pov14F_Bound_HComplEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov24Allocate_Iteration_StackEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @_ZN3povL32Allocated_Iteration_Stack_LengthE, align 4, !tbaa !62
  %3 = icmp slt i32 %2, %0
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = load ptr, ptr @_ZN3pov2SxE, align 8, !tbaa !59
  %6 = add nuw nsw i32 %0, 1
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %5, i64 noundef %8, ptr noundef nonnull @.str, i32 noundef 944, ptr noundef nonnull @.str.4)
  store ptr %9, ptr @_ZN3pov2SxE, align 8, !tbaa !59
  %10 = load ptr, ptr @_ZN3pov2SyE, align 8, !tbaa !59
  %11 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %10, i64 noundef %8, ptr noundef nonnull @.str, i32 noundef 945, ptr noundef nonnull @.str.5)
  store ptr %11, ptr @_ZN3pov2SyE, align 8, !tbaa !59
  %12 = load ptr, ptr @_ZN3pov2SzE, align 8, !tbaa !59
  %13 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %12, i64 noundef %8, ptr noundef nonnull @.str, i32 noundef 946, ptr noundef nonnull @.str.6)
  store ptr %13, ptr @_ZN3pov2SzE, align 8, !tbaa !59
  %14 = load ptr, ptr @_ZN3pov2SwE, align 8, !tbaa !59
  %15 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %14, i64 noundef %8, ptr noundef nonnull @.str, i32 noundef 947, ptr noundef nonnull @.str.7)
  store ptr %15, ptr @_ZN3pov2SwE, align 8, !tbaa !59
  store i32 %0, ptr @_ZN3povL32Allocated_Iteration_Stack_LengthE, align 4, !tbaa !62
  br label %16

16:                                               ; preds = %4, %1
  ret void
}

declare noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov20Free_Iteration_StackEv() local_unnamed_addr #0 {
  %1 = load ptr, ptr @_ZN3pov2SxE, align 8, !tbaa !59
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 981)
  store ptr null, ptr @_ZN3pov2SxE, align 8, !tbaa !59
  %4 = load ptr, ptr @_ZN3pov2SyE, align 8, !tbaa !59
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 982)
  store ptr null, ptr @_ZN3pov2SyE, align 8, !tbaa !59
  %5 = load ptr, ptr @_ZN3pov2SzE, align 8, !tbaa !59
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 983)
  store ptr null, ptr @_ZN3pov2SzE, align 8, !tbaa !59
  %6 = load ptr, ptr @_ZN3pov2SwE, align 8, !tbaa !59
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef 984)
  store ptr null, ptr @_ZN3pov2SwE, align 8, !tbaa !59
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN3pov2SxE, align 8, !tbaa !59
  store ptr null, ptr @_ZN3pov2SyE, align 8, !tbaa !59
  store ptr null, ptr @_ZN3pov2SzE, align 8, !tbaa !59
  store ptr null, ptr @_ZN3pov2SwE, align 8, !tbaa !59
  store i32 0, ptr @_ZN3povL32Allocated_Iteration_Stack_LengthE, align 4, !tbaa !62
  ret void
}

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL25All_Fractal_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  %11 = alloca [3 x double], align 16
  %12 = alloca [3 x double], align 16
  %13 = alloca [3 x double], align 16
  %14 = alloca %"struct.pov::Ray_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 856, ptr nonnull %14) #8
  %15 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 30), align 16, !tbaa !63
  %16 = add nsw i64 %15, 1
  store i64 %16, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 30), align 16, !tbaa !63
  %17 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 20
  %18 = load double, ptr %17, align 8, !tbaa !51
  store double %18, ptr @_ZN3pov9PrecisionE, align 8, !tbaa !47
  %19 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  br i1 %21, label %51, label %23

23:                                               ; preds = %3
  tail call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull @_ZN3pov9DirectionE, ptr noundef nonnull %22, ptr noundef nonnull %20)
  %24 = load double, ptr @_ZN3pov9DirectionE, align 16, !tbaa !47
  %25 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 1), align 8, !tbaa !47
  %26 = fmul double %25, %25
  %27 = tail call double @llvm.fmuladd.f64(double %24, double %24, double %26)
  %28 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 2), align 16, !tbaa !47
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %28, double %27)
  %30 = fcmp oeq double %29, 0.000000e+00
  br i1 %30, label %298, label %31

31:                                               ; preds = %23
  %32 = fcmp une double %29, 1.000000e+00
  br i1 %32, label %33, label %42

33:                                               ; preds = %31
  %34 = tail call double @sqrt(double noundef %29) #8
  %35 = fdiv double 1.000000e+00, %34
  %36 = load double, ptr @_ZN3pov9DirectionE, align 16, !tbaa !47
  %37 = fmul double %36, %35
  store double %37, ptr @_ZN3pov9DirectionE, align 16, !tbaa !47
  %38 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 1), align 8, !tbaa !47
  %39 = fmul double %35, %38
  store double %39, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 1), align 8, !tbaa !47
  %40 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 2), align 16, !tbaa !47
  %41 = fmul double %35, %40
  store double %41, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 2), align 16, !tbaa !47
  br label %42

42:                                               ; preds = %33, %31
  %43 = phi double [ %35, %33 ], [ %29, %31 ]
  %44 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %14, i64 0, i32 1
  %45 = load double, ptr @_ZN3pov9DirectionE, align 16, !tbaa !47
  store double %45, ptr %44, align 8, !tbaa !47
  %46 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 1), align 8, !tbaa !47
  %47 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %14, i64 0, i32 1, i64 1
  store double %46, ptr %47, align 8, !tbaa !47
  %48 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 2), align 16, !tbaa !47
  %49 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %14, i64 0, i32 1, i64 2
  store double %48, ptr %49, align 8, !tbaa !47
  %50 = load ptr, ptr %19, align 8, !tbaa !46
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %50)
  br label %57

51:                                               ; preds = %3
  %52 = load double, ptr %22, align 8, !tbaa !47
  store double %52, ptr @_ZN3pov9DirectionE, align 16, !tbaa !47
  %53 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 1
  %54 = load double, ptr %53, align 8, !tbaa !47
  store double %54, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 1), align 8, !tbaa !47
  %55 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 2
  %56 = load double, ptr %55, align 8, !tbaa !47
  store double %56, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 2), align 16, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(856) %14, ptr noundef nonnull align 8 dereferenceable(856) %1, i64 856, i1 false), !tbaa.struct !65
  br label %57

57:                                               ; preds = %51, %42
  %58 = phi double [ 1.000000e+00, %51 ], [ %43, %42 ]
  %59 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 28
  %60 = load ptr, ptr %59, align 8, !tbaa !58
  %61 = call noundef i32 %60(ptr noundef nonnull %14, ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %62 = icmp eq i32 %61, 0
  %63 = load double, ptr %5, align 8
  %64 = fcmp olt double %63, 0x3E7AD7F29ABCAF48
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %298, label %66

66:                                               ; preds = %57
  %67 = load double, ptr %4, align 8, !tbaa !47
  %68 = fcmp olt double %67, 0x3E7AD7F29ABCAF48
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store double 0x3E7AD7F29ABCAF48, ptr %4, align 8, !tbaa !47
  br label %70

70:                                               ; preds = %69, %66
  %71 = load double, ptr %4, align 8, !tbaa !47
  %72 = load double, ptr @_ZN3pov9DirectionE, align 16, !tbaa !47
  %73 = fmul double %71, %72
  store double %73, ptr %10, align 16, !tbaa !47
  %74 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 1), align 8, !tbaa !47
  %75 = fmul double %71, %74
  %76 = getelementptr inbounds double, ptr %10, i64 1
  store double %75, ptr %76, align 8, !tbaa !47
  %77 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 2), align 16, !tbaa !47
  %78 = fmul double %71, %77
  %79 = getelementptr inbounds double, ptr %10, i64 2
  store double %78, ptr %79, align 16, !tbaa !47
  %80 = load double, ptr %14, align 8, !tbaa !47
  %81 = fadd double %73, %80
  store double %81, ptr %10, align 16, !tbaa !47
  %82 = getelementptr inbounds double, ptr %14, i64 1
  %83 = load double, ptr %82, align 8, !tbaa !47
  %84 = fadd double %75, %83
  store double %84, ptr %76, align 8, !tbaa !47
  %85 = getelementptr inbounds double, ptr %14, i64 2
  %86 = load double, ptr %85, align 8, !tbaa !47
  %87 = fadd double %78, %86
  store double %87, ptr %79, align 16, !tbaa !47
  %88 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 27
  %89 = load ptr, ptr %88, align 8, !tbaa !57
  %90 = call noundef i32 %89(ptr noundef nonnull %10, ptr noundef %0, ptr noundef nonnull %6)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %70
  %93 = load double, ptr @_ZN3pov9DirectionE, align 16, !tbaa !47
  %94 = load double, ptr %10, align 16, !tbaa !47
  %95 = call double @llvm.fmuladd.f64(double %93, double 2.000000e-07, double %94)
  store double %95, ptr %10, align 16, !tbaa !47
  %96 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 1), align 8, !tbaa !47
  %97 = load double, ptr %76, align 8, !tbaa !47
  %98 = call double @llvm.fmuladd.f64(double %96, double 2.000000e-07, double %97)
  store double %98, ptr %76, align 8, !tbaa !47
  %99 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 2), align 16, !tbaa !47
  %100 = load double, ptr %79, align 16, !tbaa !47
  %101 = call double @llvm.fmuladd.f64(double %99, double 2.000000e-07, double %100)
  store double %101, ptr %79, align 16, !tbaa !47
  %102 = load double, ptr %4, align 8, !tbaa !47
  %103 = fadd double %102, 2.000000e-07
  store double %103, ptr %4, align 8, !tbaa !47
  %104 = load double, ptr %5, align 8, !tbaa !47
  %105 = fcmp ogt double %103, %104
  br i1 %105, label %298, label %106

106:                                              ; preds = %92
  %107 = load ptr, ptr %88, align 8, !tbaa !57
  %108 = call noundef i32 %107(ptr noundef nonnull %10, ptr noundef %0, ptr noundef nonnull %6)
  br label %109

109:                                              ; preds = %106, %70
  %110 = phi i32 [ %108, %106 ], [ 0, %70 ]
  %111 = load double, ptr %4, align 8, !tbaa !47
  %112 = load double, ptr %5, align 8, !tbaa !47
  %113 = fcmp olt double %111, %112
  br i1 %113, label %114, label %291

114:                                              ; preds = %109
  %115 = getelementptr inbounds double, ptr %8, i64 1
  %116 = getelementptr inbounds double, ptr %8, i64 2
  %117 = getelementptr inbounds double, ptr %8, i64 1
  %118 = getelementptr inbounds double, ptr %8, i64 2
  %119 = getelementptr inbounds double, ptr %9, i64 1
  %120 = getelementptr inbounds double, ptr %9, i64 2
  %121 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 26
  %122 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  %123 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 19
  %124 = getelementptr inbounds double, ptr %11, i64 1
  %125 = getelementptr inbounds double, ptr %11, i64 2
  %126 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  %127 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 19
  %128 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %129 = getelementptr inbounds double, ptr %12, i64 1
  %130 = getelementptr inbounds double, ptr %12, i64 2
  %131 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 1
  %132 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 3
  %133 = getelementptr inbounds double, ptr %11, i64 1
  %134 = getelementptr inbounds double, ptr %11, i64 2
  %135 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 1
  %136 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 26
  br label %137

137:                                              ; preds = %114, %282
  %138 = phi i32 [ 0, %114 ], [ %283, %282 ]
  %139 = phi i32 [ %110, %114 ], [ %165, %282 ]
  %140 = phi i32 [ 0, %114 ], [ %204, %282 ]
  br label %141

141:                                              ; preds = %137, %172
  %142 = load double, ptr %6, align 8, !tbaa !47
  %143 = load double, ptr @_ZN3pov9PrecisionE, align 8, !tbaa !47
  %144 = fcmp olt double %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store double %143, ptr %6, align 8, !tbaa !47
  br label %146

146:                                              ; preds = %145, %141
  %147 = load double, ptr %6, align 8, !tbaa !47
  %148 = load double, ptr %4, align 8, !tbaa !47
  %149 = fadd double %147, %148
  store double %149, ptr %4, align 8, !tbaa !47
  %150 = load double, ptr %5, align 8, !tbaa !47
  %151 = fcmp ogt double %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = icmp eq i32 %138, 0
  br i1 %153, label %298, label %294

154:                                              ; preds = %146
  %155 = load double, ptr %10, align 16, !tbaa !47
  store double %155, ptr %8, align 16, !tbaa !47
  %156 = load double, ptr %76, align 8, !tbaa !47
  store double %156, ptr %115, align 8, !tbaa !47
  %157 = load double, ptr %79, align 16, !tbaa !47
  store double %157, ptr %116, align 16, !tbaa !47
  %158 = load double, ptr @_ZN3pov9DirectionE, align 16, !tbaa !47
  %159 = call double @llvm.fmuladd.f64(double %147, double %158, double %155)
  store double %159, ptr %10, align 16, !tbaa !47
  %160 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 1), align 8, !tbaa !47
  %161 = call double @llvm.fmuladd.f64(double %147, double %160, double %156)
  store double %161, ptr %76, align 8, !tbaa !47
  %162 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 2), align 16, !tbaa !47
  %163 = call double @llvm.fmuladd.f64(double %147, double %162, double %157)
  store double %163, ptr %79, align 16, !tbaa !47
  %164 = load ptr, ptr %88, align 8, !tbaa !57
  %165 = call noundef i32 %164(ptr noundef nonnull %10, ptr noundef %0, ptr noundef nonnull %7)
  %166 = icmp eq i32 %165, %139
  br i1 %166, label %172, label %167

167:                                              ; preds = %154
  %168 = load double, ptr %6, align 8, !tbaa !47
  %169 = load double, ptr %4, align 8, !tbaa !47
  %170 = fsub double %169, %168
  store double %170, ptr %4, align 8, !tbaa !47
  %171 = fcmp ogt double %168, 0x3E7AD7F29ABCAF48
  br i1 %171, label %174, label %203

172:                                              ; preds = %154
  %173 = load double, ptr %7, align 8, !tbaa !47
  store double %173, ptr %6, align 8, !tbaa !47
  br label %141, !llvm.loop !67

174:                                              ; preds = %167, %200
  %175 = phi double [ %201, %200 ], [ %168, %167 ]
  %176 = fmul double %175, 5.000000e-01
  store double %176, ptr %6, align 8, !tbaa !47
  %177 = load double, ptr %8, align 16, !tbaa !47
  %178 = load double, ptr @_ZN3pov9DirectionE, align 16, !tbaa !47
  %179 = call double @llvm.fmuladd.f64(double %176, double %178, double %177)
  store double %179, ptr %9, align 16, !tbaa !47
  %180 = load double, ptr %117, align 8, !tbaa !47
  %181 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 1), align 8, !tbaa !47
  %182 = call double @llvm.fmuladd.f64(double %176, double %181, double %180)
  store double %182, ptr %119, align 8, !tbaa !47
  %183 = load double, ptr %118, align 16, !tbaa !47
  %184 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 2), align 16, !tbaa !47
  %185 = call double @llvm.fmuladd.f64(double %176, double %184, double %183)
  store double %185, ptr %120, align 16, !tbaa !47
  %186 = load ptr, ptr %121, align 8, !tbaa !55
  %187 = call noundef i32 %186(ptr noundef nonnull %9, ptr noundef %0)
  %188 = icmp eq i32 %187, %139
  br i1 %188, label %189, label %200

189:                                              ; preds = %174
  %190 = load double, ptr %9, align 16, !tbaa !47
  store double %190, ptr %8, align 16, !tbaa !47
  %191 = load double, ptr %119, align 8, !tbaa !47
  store double %191, ptr %117, align 8, !tbaa !47
  %192 = load double, ptr %120, align 16, !tbaa !47
  store double %192, ptr %118, align 16, !tbaa !47
  %193 = load double, ptr %6, align 8, !tbaa !47
  %194 = load double, ptr %4, align 8, !tbaa !47
  %195 = fadd double %193, %194
  store double %195, ptr %4, align 8, !tbaa !47
  %196 = load double, ptr %5, align 8, !tbaa !47
  %197 = fcmp ogt double %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %189
  %199 = icmp eq i32 %138, 0
  br i1 %199, label %298, label %294

200:                                              ; preds = %189, %174
  %201 = load double, ptr %6, align 8, !tbaa !47
  %202 = fcmp ogt double %201, 0x3E7AD7F29ABCAF48
  br i1 %202, label %174, label %203, !llvm.loop !70

203:                                              ; preds = %200, %167
  %204 = phi i32 [ %140, %167 ], [ %187, %200 ]
  %205 = phi double [ %168, %167 ], [ %201, %200 ]
  %206 = icmp eq i32 %139, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %203
  %208 = load double, ptr @_ZN3pov9DirectionE, align 16, !tbaa !47
  %209 = load double, ptr %8, align 16, !tbaa !47
  %210 = call double @llvm.fmuladd.f64(double %205, double %208, double %209)
  store double %210, ptr %8, align 16, !tbaa !47
  %211 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 1), align 8, !tbaa !47
  %212 = load double, ptr %117, align 8, !tbaa !47
  %213 = call double @llvm.fmuladd.f64(double %205, double %211, double %212)
  store double %213, ptr %117, align 8, !tbaa !47
  %214 = load double, ptr getelementptr inbounds ([3 x double], ptr @_ZN3pov9DirectionE, i64 0, i64 2), align 16, !tbaa !47
  %215 = load double, ptr %118, align 16, !tbaa !47
  %216 = call double @llvm.fmuladd.f64(double %205, double %214, double %215)
  store double %216, ptr %118, align 16, !tbaa !47
  %217 = load double, ptr %4, align 8, !tbaa !47
  %218 = fadd double %205, %217
  store double %218, ptr %4, align 8, !tbaa !47
  br label %221

219:                                              ; preds = %203
  %220 = icmp eq i32 %204, %139
  br i1 %220, label %224, label %221

221:                                              ; preds = %219, %207
  %222 = load ptr, ptr %136, align 8, !tbaa !55
  %223 = call noundef i32 %222(ptr noundef nonnull %8, ptr noundef %0)
  br label %224

224:                                              ; preds = %221, %219
  %225 = load ptr, ptr %19, align 8, !tbaa !46
  %226 = icmp eq ptr %225, null
  br i1 %226, label %231, label %227

227:                                              ; preds = %224
  call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %225)
  %228 = load ptr, ptr %122, align 8, !tbaa !56
  %229 = load i32, ptr %123, align 8, !tbaa !50
  call void %228(ptr noundef nonnull %13, i32 noundef %229, ptr noundef %0)
  %230 = load ptr, ptr %19, align 8, !tbaa !46
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef %230)
  br label %237

231:                                              ; preds = %224
  %232 = load double, ptr %8, align 16, !tbaa !47
  store double %232, ptr %11, align 16, !tbaa !47
  %233 = load double, ptr %117, align 8, !tbaa !47
  store double %233, ptr %124, align 8, !tbaa !47
  %234 = load double, ptr %118, align 16, !tbaa !47
  store double %234, ptr %125, align 16, !tbaa !47
  %235 = load ptr, ptr %126, align 8, !tbaa !56
  %236 = load i32, ptr %127, align 8, !tbaa !50
  call void %235(ptr noundef nonnull %12, i32 noundef %236, ptr noundef %0)
  br label %237

237:                                              ; preds = %231, %227
  %238 = load ptr, ptr %128, align 8, !tbaa !71
  %239 = call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %11, ptr noundef %238)
  br i1 %239, label %240, label %282

240:                                              ; preds = %237
  %241 = load double, ptr %12, align 16, !tbaa !47
  %242 = load double, ptr %129, align 8, !tbaa !47
  %243 = fmul double %242, %242
  %244 = call double @llvm.fmuladd.f64(double %241, double %241, double %243)
  %245 = load double, ptr %130, align 16, !tbaa !47
  %246 = call double @llvm.fmuladd.f64(double %245, double %245, double %244)
  %247 = call double @sqrt(double noundef %246) #8
  %248 = fdiv double 1.000000e+00, %247
  %249 = load double, ptr %12, align 16, !tbaa !47
  %250 = fmul double %249, %248
  store double %250, ptr %12, align 16, !tbaa !47
  %251 = load double, ptr %129, align 8, !tbaa !47
  %252 = fmul double %248, %251
  store double %252, ptr %129, align 8, !tbaa !47
  %253 = load double, ptr %130, align 16, !tbaa !47
  %254 = fmul double %248, %253
  store double %254, ptr %130, align 16, !tbaa !47
  %255 = load double, ptr %4, align 8, !tbaa !47
  %256 = fmul double %58, %255
  %257 = load ptr, ptr %131, align 8, !tbaa !73
  %258 = load i32, ptr %132, align 4, !tbaa !75
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %"struct.pov::istk_entry", ptr %257, i64 %259
  store double %256, ptr %260, align 8, !tbaa !76
  %261 = getelementptr inbounds %"struct.pov::istk_entry", ptr %257, i64 %259, i32 5
  store ptr %0, ptr %261, align 8, !tbaa !78
  %262 = getelementptr inbounds %"struct.pov::istk_entry", ptr %257, i64 %259, i32 1
  %263 = load double, ptr %11, align 16, !tbaa !47
  store double %263, ptr %262, align 8, !tbaa !47
  %264 = load double, ptr %133, align 8, !tbaa !47
  %265 = getelementptr inbounds double, ptr %262, i64 1
  store double %264, ptr %265, align 8, !tbaa !47
  %266 = load double, ptr %134, align 16, !tbaa !47
  %267 = getelementptr inbounds double, ptr %262, i64 2
  store double %266, ptr %267, align 8, !tbaa !47
  %268 = getelementptr inbounds %"struct.pov::istk_entry", ptr %257, i64 %259, i32 4
  %269 = load double, ptr %11, align 16, !tbaa !47
  store double %269, ptr %268, align 8, !tbaa !47
  %270 = load double, ptr %133, align 8, !tbaa !47
  %271 = getelementptr inbounds double, ptr %268, i64 1
  store double %270, ptr %271, align 8, !tbaa !47
  %272 = getelementptr inbounds %"struct.pov::istk_entry", ptr %257, i64 %259, i32 2
  %273 = load double, ptr %12, align 16, !tbaa !47
  store double %273, ptr %272, align 8, !tbaa !47
  %274 = load double, ptr %129, align 8, !tbaa !47
  %275 = getelementptr inbounds double, ptr %272, i64 1
  store double %274, ptr %275, align 8, !tbaa !47
  %276 = load double, ptr %130, align 16, !tbaa !47
  %277 = getelementptr inbounds double, ptr %272, i64 2
  store double %276, ptr %277, align 8, !tbaa !47
  %278 = getelementptr inbounds %"struct.pov::istk_entry", ptr %257, i64 %259, i32 18
  store ptr null, ptr %278, align 8, !tbaa !79
  call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %2)
  %279 = load i32, ptr %135, align 8, !tbaa !34
  %280 = and i32 %279, 256
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %291, label %282

282:                                              ; preds = %240, %237
  %283 = phi i32 [ 1, %240 ], [ %138, %237 ]
  %284 = load double, ptr %10, align 16, !tbaa !47
  store double %284, ptr %8, align 16, !tbaa !47
  %285 = load double, ptr %76, align 8, !tbaa !47
  store double %285, ptr %117, align 8, !tbaa !47
  %286 = load double, ptr %79, align 16, !tbaa !47
  store double %286, ptr %118, align 16, !tbaa !47
  %287 = load double, ptr %7, align 8, !tbaa !47
  store double %287, ptr %6, align 8, !tbaa !47
  %288 = load double, ptr %4, align 8, !tbaa !47
  %289 = load double, ptr %5, align 8, !tbaa !47
  %290 = fcmp olt double %288, %289
  br i1 %290, label %137, label %291, !llvm.loop !80

291:                                              ; preds = %282, %240, %109
  %292 = phi i32 [ 0, %109 ], [ %283, %282 ], [ 1, %240 ]
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %298, label %294

294:                                              ; preds = %291, %198, %152
  %295 = phi i32 [ %138, %152 ], [ %138, %198 ], [ %292, %291 ]
  %296 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 31), align 8, !tbaa !63
  %297 = add nsw i64 %296, 1
  store i64 %297, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 31), align 8, !tbaa !63
  br label %298

298:                                              ; preds = %294, %291, %198, %152, %92, %57, %23
  %299 = phi i32 [ 0, %23 ], [ 0, %57 ], [ 0, %92 ], [ %138, %152 ], [ %138, %198 ], [ %292, %291 ], [ %295, %294 ]
  call void @llvm.lifetime.end.p0(i64 856, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %299
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL14Inside_FractalEPdPNS_13Object_StructE(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  tail call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull @_ZZN3povL14Inside_FractalEPdPNS_13Object_StructEE9New_Point, ptr noundef %0, ptr noundef nonnull %4)
  %7 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = tail call noundef i32 %8(ptr noundef nonnull @_ZZN3povL14Inside_FractalEPdPNS_13Object_StructEE9New_Point, ptr noundef %1)
  br label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = tail call noundef i32 %12(ptr noundef %0, ptr noundef %1)
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %9, %6 ], [ %13, %10 ]
  %16 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 21
  %17 = load i32, ptr %16, align 8, !tbaa !52
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i32 %15, 0
  %20 = zext i1 %19 to i32
  %21 = select i1 %18, i32 %15, i32 %20
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL14Fractal_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !47
  store double %5, ptr %0, align 8, !tbaa !47
  %6 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 2, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds double, ptr %0, i64 1
  store double %7, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 2, i64 2
  %10 = load double, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds double, ptr %0, i64 2
  store double %10, ptr %11, align 8, !tbaa !47
  ret void
}

declare void @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN3povL12Copy_FractalEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 320, ptr noundef nonnull @.str, i32 noundef 684, ptr noundef nonnull @.str.1)
  %3 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !34
  store ptr @_ZN3povL15Fractal_MethodsE, ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 6
  %6 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 10
  %7 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %7, align 4, !tbaa !45
  %8 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %8, align 4, !tbaa !45
  %9 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %9, align 4, !tbaa !45
  %10 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %10, align 4, !tbaa !45
  %11 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %11, align 4, !tbaa !45
  %12 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %12, align 4, !tbaa !45
  store ptr null, ptr %6, align 8, !tbaa !46
  %13 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 14
  %14 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %14, align 8, !tbaa !47
  %15 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 15, i64 1
  %16 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 16, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %15, i8 0, i64 48, i1 false)
  store double 1.000000e+00, ptr %16, align 8, !tbaa !47
  %17 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 17
  store double 0.000000e+00, ptr %17, align 8, !tbaa !48
  %18 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 18
  store double 4.000000e+00, ptr %18, align 8, !tbaa !49
  %19 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 19
  store i32 20, ptr %19, align 8, !tbaa !50
  %20 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 20
  store double 5.000000e-02, ptr %20, align 8, !tbaa !51
  %21 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 21
  store i32 0, ptr %21, align 8, !tbaa !52
  %22 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 22
  store i32 0, ptr %22, align 4, !tbaa !53
  %23 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 23
  store i32 15, ptr %23, align 8, !tbaa !54
  %24 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %24, i8 0, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %2, ptr noundef nonnull align 8 dereferenceable(320) %0, i64 320, i1 false), !tbaa.struct !81
  %25 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef %26)
  store ptr %27, ptr %6, align 8, !tbaa !46
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL17Translate_FractalEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  tail call void @_ZN3povL17Transform_FractalEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL14Rotate_FractalEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  tail call void @_ZN3povL17Transform_FractalEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL13Scale_FractalEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  tail call void @_ZN3povL17Transform_FractalEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL17Transform_FractalEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %7, ptr %3, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %3, align 8, !tbaa !46
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %9, ptr noundef %1)
  %10 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 22
  %11 = load i32, ptr %10, align 4, !tbaa !53
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 15
  %15 = load double, ptr %14, align 8, !tbaa !47
  %16 = fmul double %15, %15
  %17 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 15, i64 1
  %18 = load double, ptr %17, align 8, !tbaa !47
  %19 = fmul double %18, %18
  %20 = fadd double %16, %19
  %21 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 15, i64 2
  %22 = load double, ptr %21, align 8, !tbaa !47
  %23 = fmul double %22, %22
  %24 = fadd double %20, %23
  %25 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 15, i64 3
  %26 = load double, ptr %25, align 8, !tbaa !47
  %27 = fmul double %26, %26
  %28 = fadd double %24, %27
  %29 = tail call double @sqrt(double noundef %28) #8
  %30 = fadd double %29, 1.000000e+00
  %31 = fadd double %30, 0x3E7AD7F29ABCAF48
  %32 = fcmp ogt double %31, 2.000000e+00
  %33 = select i1 %32, double 2.000000e+00, double %31
  %34 = fmul double %33, %33
  %35 = fadd double %34, 0x3E7AD7F29ABCAF48
  br label %36

36:                                               ; preds = %8, %13
  %37 = phi double [ %35, %13 ], [ 1.600000e+01, %8 ]
  %38 = phi double [ %33, %13 ], [ 4.000000e+00, %8 ]
  %39 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 18
  store double %37, ptr %39, align 8, !tbaa !49
  %40 = fmul double %38, %38
  %41 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 30
  store double %40, ptr %41, align 8, !tbaa !61
  %42 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 21
  store i32 0, ptr %42, align 8, !tbaa !52
  %43 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 9
  %44 = fptrunc double %38 to float
  %45 = fneg float %44
  %46 = fmul double %38, 2.000000e+00
  %47 = fptrunc double %46 to float
  store float %45, ptr %43, align 4, !tbaa !45
  %48 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %45, ptr %48, align 4, !tbaa !45
  %49 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %45, ptr %49, align 4, !tbaa !45
  %50 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 9, i32 1
  store float %47, ptr %50, align 4, !tbaa !45
  %51 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %47, ptr %51, align 4, !tbaa !45
  %52 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %47, ptr %52, align 4, !tbaa !45
  %53 = load ptr, ptr %3, align 8, !tbaa !46
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %43, ptr noundef %53)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL14Invert_FractalEPNS_13Object_StructE(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 21
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = xor i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL15Destroy_FractalEPNS_13Object_StructE(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %3)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 796)
  ret void
}

declare void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #4

declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #2

declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #2

declare void @_ZN3pov11Complex_ExpEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov10Complex_LnEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov11Complex_SinEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov12Complex_ASinEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov11Complex_CosEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov12Complex_ACosEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov11Complex_TanEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov12Complex_ATanEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov12Complex_SinhEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov13Complex_ASinhEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov12Complex_CoshEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov13Complex_ACoshEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov12Complex_TanhEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov13Complex_ATanhEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov11Complex_PwrEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 42930506}
!8 = !{!"MaxCount", i64 10485760}
!9 = !{!"MaxInternalCount", i64 10485760}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 10485760, i32 1}
!18 = !{i32 100000, i64 10485760, i32 1}
!19 = !{i32 200000, i64 10485760, i32 1}
!20 = !{i32 300000, i64 5242880, i32 7}
!21 = !{i32 400000, i64 5242880, i32 7}
!22 = !{i32 500000, i64 5242880, i32 7}
!23 = !{i32 600000, i64 5242880, i32 7}
!24 = !{i32 700000, i64 5242880, i32 7}
!25 = !{i32 800000, i64 5242880, i32 7}
!26 = !{i32 900000, i64 5242880, i32 7}
!27 = !{i32 950000, i64 5242880, i32 7}
!28 = !{i32 990000, i64 655360, i32 8}
!29 = !{i32 999000, i64 81920, i32 12}
!30 = !{i32 999900, i64 4096, i32 13}
!31 = !{i32 999990, i64 4096, i32 13}
!32 = !{i32 999999, i64 20, i32 16}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !39, i64 8}
!35 = !{!"_ZTSN3pov14Fractal_StructE", !36, i64 0, !39, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !40, i64 72, !36, i64 96, !36, i64 104, !41, i64 112, !39, i64 116, !37, i64 120, !37, i64 144, !37, i64 176, !42, i64 208, !42, i64 216, !39, i64 224, !42, i64 232, !39, i64 240, !39, i64 244, !39, i64 248, !43, i64 256, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !42, i64 312}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"_ZTSN3pov19Bounding_Box_StructE", !37, i64 0, !37, i64 12}
!41 = !{!"float", !37, i64 0}
!42 = !{!"double", !37, i64 0}
!43 = !{!"_ZTSN3pov5cmplxE", !42, i64 0, !42, i64 8}
!44 = !{!35, !36, i64 0}
!45 = !{!41, !41, i64 0}
!46 = !{!35, !36, i64 96}
!47 = !{!42, !42, i64 0}
!48 = !{!35, !42, i64 208}
!49 = !{!35, !42, i64 216}
!50 = !{!35, !39, i64 224}
!51 = !{!35, !42, i64 232}
!52 = !{!35, !39, i64 240}
!53 = !{!35, !39, i64 244}
!54 = !{!35, !39, i64 248}
!55 = !{!35, !36, i64 280}
!56 = !{!35, !36, i64 272}
!57 = !{!35, !36, i64 288}
!58 = !{!35, !36, i64 296}
!59 = !{!36, !36, i64 0}
!60 = !{!35, !36, i64 304}
!61 = !{!35, !42, i64 312}
!62 = !{!39, !39, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"long long", !37, i64 0}
!65 = !{i64 0, i64 24, !66, i64 24, i64 24, !66, i64 48, i64 4, !62, i64 52, i64 4, !62, i64 56, i64 800, !66}
!66 = !{!37, !37, i64 0}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = distinct !{!70, !68, !69}
!71 = !{!72, !36, i64 56}
!72 = !{!"_ZTSN3pov13Object_StructE", !36, i64 0, !39, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !40, i64 72, !36, i64 96, !36, i64 104, !41, i64 112, !39, i64 116}
!73 = !{!74, !36, i64 8}
!74 = !{!"_ZTSN3pov13istack_structE", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20}
!75 = !{!74, !39, i64 20}
!76 = !{!77, !42, i64 0}
!77 = !{!"_ZTSN3pov10istk_entryE", !42, i64 0, !37, i64 8, !37, i64 32, !37, i64 56, !37, i64 80, !36, i64 96, !39, i64 104, !39, i64 108, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !36, i64 184, !36, i64 192}
!78 = !{!77, !36, i64 96}
!79 = !{!77, !36, i64 192}
!80 = distinct !{!80, !68, !69}
!81 = !{i64 0, i64 8, !59, i64 8, i64 4, !62, i64 16, i64 8, !59, i64 24, i64 8, !59, i64 32, i64 8, !59, i64 40, i64 8, !59, i64 48, i64 8, !59, i64 56, i64 8, !59, i64 64, i64 8, !59, i64 72, i64 12, !66, i64 84, i64 12, !66, i64 96, i64 8, !59, i64 104, i64 8, !59, i64 112, i64 4, !45, i64 116, i64 4, !62, i64 120, i64 24, !66, i64 144, i64 32, !66, i64 176, i64 32, !66, i64 208, i64 8, !47, i64 216, i64 8, !47, i64 224, i64 4, !62, i64 232, i64 8, !47, i64 240, i64 4, !62, i64 244, i64 4, !62, i64 248, i64 4, !62, i64 256, i64 8, !47, i64 264, i64 8, !47, i64 272, i64 8, !59, i64 280, i64 8, !59, i64 288, i64 8, !59, i64 296, i64 8, !59, i64 304, i64 8, !59, i64 312, i64 8, !47}
