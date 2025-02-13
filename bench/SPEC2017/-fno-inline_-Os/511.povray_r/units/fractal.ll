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
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }

$_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff = comdat any

$_ZN3pov11Make_VectorEPdddd = comdat any

$_ZN3pov16Increase_CounterERx = comdat any

$_ZN3pov4VDotERdPKdS2_ = comdat any

$_ZN3pov8VScaleEqEPdd = comdat any

$_ZN3pov13Assign_VectorEPdS0_ = comdat any

$_ZN3pov6VScaleEPdPKdd = comdat any

$_ZN3pov6VAddEqEPdPKd = comdat any

$_ZN3pov12VAddScaledEqEPddPKd = comdat any

$_ZN3pov10VAddScaledEPdPKddS2_ = comdat any

$_ZN3pov10VNormalizeEPdPKd = comdat any

$_ZN3pov17push_normal_entryEdPdS0_PNS_13Object_StructEPNS_13istack_structE = comdat any

$_ZN3pov7VLengthERdPKd = comdat any

$_ZN3pov13VInverseScaleEPdPKdd = comdat any

$_ZN3pov4itopEPNS_13istack_structE = comdat any

$_ZN3pov14Assign_UV_VectEPdS0_ = comdat any

$_ZN3pov3SqrEd = comdat any

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
@_ZN3pov5statsE = external global [123 x i64], align 16
@_ZZN3povL14Inside_FractalEPdPNS_13Object_StructEE9New_Point = internal global [3 x double] zeroinitializer, align 16

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov14Create_FractalEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 320, ptr noundef nonnull @.str, i32 noundef 684, ptr noundef nonnull @.str.1) #10
  %2 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !34
  store ptr @_ZN3povL15Fractal_MethodsE, ptr %1, align 8, !tbaa !44
  %3 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 6
  %5 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 10
  %6 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %6, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10) #10
  store ptr null, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 14
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %7, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #10
  %8 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 15
  store double 1.000000e+00, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 15, i64 1
  %10 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 16, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 18
  store double 4.000000e+00, ptr %11, align 8, !tbaa !47
  %12 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 19
  store i32 20, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 20
  store double 5.000000e-02, ptr %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 21
  store i32 0, ptr %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 22
  store i32 0, ptr %15, align 4, !tbaa !51
  %16 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 23
  store i32 15, ptr %16, align 8, !tbaa !52
  %17 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %17, i8 0, i64 64, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #3 comdat {
  store float %1, ptr %0, align 4, !tbaa !53
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %2, ptr %8, align 4, !tbaa !53
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %3, ptr %9, align 4, !tbaa !53
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1
  store float %4, ptr %10, align 4, !tbaa !53
  %11 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  store float %5, ptr %11, align 4, !tbaa !53
  %12 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 2
  store float %6, ptr %12, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 comdat {
  store double %1, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds double, ptr %0, i64 1
  store double %2, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds double, ptr %0, i64 2
  store double %3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov13SetUp_FractalEPNS_14Fractal_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 4, !tbaa !51
  switch i32 %3, label %46 [
    i32 0, label %4
    i32 1, label %19
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 23
  %6 = load i32, ptr %5, align 8, !tbaa !52
  switch i32 %6, label %15 [
    i32 16, label %7
    i32 15, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 26
  store ptr @_ZN3pov12Iteration_z3EPdPNS_14Fractal_StructE, ptr %8, align 8, !tbaa !54
  %9 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  store ptr @_ZN3pov14Normal_Calc_z3EPdiPNS_14Fractal_StructE, ptr %9, align 8, !tbaa !55
  %10 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 27
  store ptr @_ZN3pov14D_Iteration_z3EPdPNS_14Fractal_StructES0_, ptr %10, align 8, !tbaa !56
  br label %17

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 26
  store ptr @_ZN3pov15Iteration_JuliaEPdPNS_14Fractal_StructE, ptr %12, align 8, !tbaa !54
  %13 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 27
  store ptr @_ZN3pov17D_Iteration_JuliaEPdPNS_14Fractal_StructES0_, ptr %13, align 8, !tbaa !56
  %14 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  store ptr @_ZN3pov17Normal_Calc_JuliaEPdiPNS_14Fractal_StructE, ptr %14, align 8, !tbaa !55
  br label %17

15:                                               ; preds = %4
  %16 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.2) #10
  br label %17

17:                                               ; preds = %15, %11, %7
  %18 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 28
  store ptr @_ZN3pov13F_Bound_JuliaEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_, ptr %18, align 8, !tbaa !57
  br label %48

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 23
  %21 = load i32, ptr %20, align 8, !tbaa !52
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
  store ptr @_ZN3pov27Iteration_HCompl_ReciprocalEPdPNS_14Fractal_StructE, ptr %23, align 8, !tbaa !54
  %24 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  store ptr @_ZN3pov29Normal_Calc_HCompl_ReciprocalEPdiPNS_14Fractal_StructE, ptr %24, align 8, !tbaa !55
  %25 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 27
  store ptr @_ZN3pov29D_Iteration_HCompl_ReciprocalEPdPNS_14Fractal_StructES0_, ptr %25, align 8, !tbaa !56
  %26 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 28
  store ptr @_ZN3pov25F_Bound_HCompl_ReciprocalEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_, ptr %26, align 8, !tbaa !57
  br label %48

27:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  %28 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 26
  store ptr @_ZN3pov21Iteration_HCompl_FuncEPdPNS_14Fractal_StructE, ptr %28, align 8, !tbaa !54
  %29 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  store ptr @_ZN3pov23Normal_Calc_HCompl_FuncEPdiPNS_14Fractal_StructE, ptr %29, align 8, !tbaa !55
  %30 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 27
  store ptr @_ZN3pov23D_Iteration_HCompl_FuncEPdPNS_14Fractal_StructES0_, ptr %30, align 8, !tbaa !56
  %31 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 28
  store ptr @_ZN3pov19F_Bound_HCompl_FuncEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_, ptr %31, align 8, !tbaa !57
  %32 = zext nneg i32 %21 to i64
  %33 = getelementptr inbounds [15 x ptr], ptr @_ZN3povL21Complex_Function_ListE, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !58
  %35 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 29
  store ptr %34, ptr %35, align 8, !tbaa !59
  br label %48

36:                                               ; preds = %19
  %37 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 26
  store ptr @_ZN3pov19Iteration_HCompl_z3EPdPNS_14Fractal_StructE, ptr %37, align 8, !tbaa !54
  %38 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  store ptr @_ZN3pov21Normal_Calc_HCompl_z3EPdiPNS_14Fractal_StructE, ptr %38, align 8, !tbaa !55
  %39 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 27
  store ptr @_ZN3pov21D_Iteration_HCompl_z3EPdPNS_14Fractal_StructES0_, ptr %39, align 8, !tbaa !56
  %40 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 28
  store ptr @_ZN3pov17F_Bound_HCompl_z3EPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_, ptr %40, align 8, !tbaa !57
  br label %48

41:                                               ; preds = %19
  %42 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 26
  store ptr @_ZN3pov16Iteration_HComplEPdPNS_14Fractal_StructE, ptr %42, align 8, !tbaa !54
  %43 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  store ptr @_ZN3pov18Normal_Calc_HComplEPdiPNS_14Fractal_StructE, ptr %43, align 8, !tbaa !55
  %44 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 27
  store ptr @_ZN3pov18D_Iteration_HComplEPdPNS_14Fractal_StructES0_, ptr %44, align 8, !tbaa !56
  %45 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 28
  store ptr @_ZN3pov14F_Bound_HComplEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_, ptr %45, align 8, !tbaa !57
  br label %48

46:                                               ; preds = %1
  %47 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.3) #10
  br label %48

48:                                               ; preds = %22, %27, %36, %41, %46, %17
  %49 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 19
  %50 = load i32, ptr %49, align 8, !tbaa !48
  tail call void @_ZN3pov24Allocate_Iteration_StackEi(i32 noundef %50) #10
  tail call fastcc void @_ZN3povL20Compute_Fractal_BBoxEPNS_14Fractal_StructE(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov12Iteration_z3EPdPNS_14Fractal_StructE(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov14Normal_Calc_z3EPdiPNS_14Fractal_StructE(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov14D_Iteration_z3EPdPNS_14Fractal_StructES0_(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov15Iteration_JuliaEPdPNS_14Fractal_StructE(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov17D_Iteration_JuliaEPdPNS_14Fractal_StructES0_(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov17Normal_Calc_JuliaEPdiPNS_14Fractal_StructE(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov13F_Bound_JuliaEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov27Iteration_HCompl_ReciprocalEPdPNS_14Fractal_StructE(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov29Normal_Calc_HCompl_ReciprocalEPdiPNS_14Fractal_StructE(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov29D_Iteration_HCompl_ReciprocalEPdPNS_14Fractal_StructES0_(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov25F_Bound_HCompl_ReciprocalEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov21Iteration_HCompl_FuncEPdPNS_14Fractal_StructE(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov23Normal_Calc_HCompl_FuncEPdiPNS_14Fractal_StructE(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov23D_Iteration_HCompl_FuncEPdPNS_14Fractal_StructES0_(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov19F_Bound_HCompl_FuncEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov19Iteration_HCompl_z3EPdPNS_14Fractal_StructE(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov21Normal_Calc_HCompl_z3EPdiPNS_14Fractal_StructE(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov21D_Iteration_HCompl_z3EPdPNS_14Fractal_StructES0_(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov17F_Bound_HCompl_z3EPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov16Iteration_HComplEPdPNS_14Fractal_StructE(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov18Normal_Calc_HComplEPdiPNS_14Fractal_StructE(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov18D_Iteration_HComplEPdPNS_14Fractal_StructES0_(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare noundef i32 @_ZN3pov14F_Bound_HComplEPNS_10Ray_StructEPNS_14Fractal_StructEPdS4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov24Allocate_Iteration_StackEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @_ZN3povL32Allocated_Iteration_Stack_LengthE, align 4, !tbaa !60
  %3 = icmp slt i32 %2, %0
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = load ptr, ptr @_ZN3pov2SxE, align 8, !tbaa !58
  %6 = add nuw nsw i32 %0, 1
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %5, i64 noundef %8, ptr noundef nonnull @.str, i32 noundef 944, ptr noundef nonnull @.str.4) #10
  store ptr %9, ptr @_ZN3pov2SxE, align 8, !tbaa !58
  %10 = load ptr, ptr @_ZN3pov2SyE, align 8, !tbaa !58
  %11 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %10, i64 noundef %8, ptr noundef nonnull @.str, i32 noundef 945, ptr noundef nonnull @.str.5) #10
  store ptr %11, ptr @_ZN3pov2SyE, align 8, !tbaa !58
  %12 = load ptr, ptr @_ZN3pov2SzE, align 8, !tbaa !58
  %13 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %12, i64 noundef %8, ptr noundef nonnull @.str, i32 noundef 946, ptr noundef nonnull @.str.6) #10
  store ptr %13, ptr @_ZN3pov2SzE, align 8, !tbaa !58
  %14 = load ptr, ptr @_ZN3pov2SwE, align 8, !tbaa !58
  %15 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %14, i64 noundef %8, ptr noundef nonnull @.str, i32 noundef 947, ptr noundef nonnull @.str.7) #10
  store ptr %15, ptr @_ZN3pov2SwE, align 8, !tbaa !58
  store i32 %0, ptr @_ZN3povL32Allocated_Iteration_Stack_LengthE, align 4, !tbaa !60
  br label %16

16:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL20Compute_Fractal_BBoxEPNS_14Fractal_StructE(ptr noundef %0) unnamed_addr #0 !PGOFuncName !61 {
  %2 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 4, !tbaa !51
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 15
  %7 = load double, ptr %6, align 8, !tbaa !46
  %8 = tail call noundef double @_ZN3pov3SqrEd(double noundef %7) #10
  %9 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 15, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !46
  %11 = tail call noundef double @_ZN3pov3SqrEd(double noundef %10) #10
  %12 = fadd double %8, %11
  %13 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 15, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !46
  %15 = tail call noundef double @_ZN3pov3SqrEd(double noundef %14) #10
  %16 = fadd double %12, %15
  %17 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 15, i64 3
  %18 = load double, ptr %17, align 8, !tbaa !46
  %19 = tail call noundef double @_ZN3pov3SqrEd(double noundef %18) #10
  %20 = fadd double %16, %19
  %21 = tail call double @sqrt(double noundef %20) #11
  %22 = fadd double %21, 1.000000e+00
  %23 = fadd double %22, 0x3E7AD7F29ABCAF48
  %24 = fcmp ogt double %23, 2.000000e+00
  %25 = select i1 %24, double 2.000000e+00, double %23
  %26 = tail call noundef double @_ZN3pov3SqrEd(double noundef %25) #10
  %27 = fadd double %26, 0x3E7AD7F29ABCAF48
  br label %28

28:                                               ; preds = %1, %5
  %29 = phi double [ %27, %5 ], [ 1.600000e+01, %1 ]
  %30 = phi double [ %25, %5 ], [ 4.000000e+00, %1 ]
  %31 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 18
  store double %29, ptr %31, align 8
  %32 = tail call noundef double @_ZN3pov3SqrEd(double noundef %30) #10
  %33 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 30
  store double %32, ptr %33, align 8, !tbaa !62
  %34 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 21
  store i32 0, ptr %34, align 8, !tbaa !50
  %35 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 9
  %36 = fptrunc double %30 to float
  %37 = fneg float %36
  %38 = fmul double %30, 2.000000e+00
  %39 = fptrunc double %38 to float
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %35, float noundef %37, float noundef %37, float noundef %37, float noundef %39, float noundef %39, float noundef %39) #10
  %40 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %35, ptr noundef %41) #10
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov20Free_Iteration_StackEv() local_unnamed_addr #0 {
  %1 = load ptr, ptr @_ZN3pov2SxE, align 8, !tbaa !58
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 981) #10
  store ptr null, ptr @_ZN3pov2SxE, align 8, !tbaa !58
  %4 = load ptr, ptr @_ZN3pov2SyE, align 8, !tbaa !58
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 982) #10
  store ptr null, ptr @_ZN3pov2SyE, align 8, !tbaa !58
  %5 = load ptr, ptr @_ZN3pov2SzE, align 8, !tbaa !58
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 983) #10
  store ptr null, ptr @_ZN3pov2SzE, align 8, !tbaa !58
  %6 = load ptr, ptr @_ZN3pov2SwE, align 8, !tbaa !58
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef 984) #10
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN3pov2SxE, align 8, !tbaa !58
  store ptr null, ptr @_ZN3pov2SyE, align 8, !tbaa !58
  store ptr null, ptr @_ZN3pov2SzE, align 8, !tbaa !58
  store ptr null, ptr @_ZN3pov2SwE, align 8, !tbaa !58
  store i32 0, ptr @_ZN3povL32Allocated_Iteration_Stack_LengthE, align 4, !tbaa !60
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL25All_Fractal_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !63 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  %11 = alloca [3 x double], align 16
  %12 = alloca [3 x double], align 16
  %13 = alloca [3 x double], align 16
  %14 = alloca [3 x double], align 16
  %15 = alloca %"struct.pov::Ray_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 856, ptr nonnull %15) #12
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 30)) #10
  %16 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 20
  %17 = load double, ptr %16, align 8, !tbaa !49
  store double %17, ptr @_ZN3pov9PrecisionE, align 8, !tbaa !46
  %18 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  br i1 %20, label %33, label %22

22:                                               ; preds = %3
  tail call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull @_ZN3pov9DirectionE, ptr noundef nonnull %21, ptr noundef nonnull %19) #10
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @_ZN3pov9DirectionE, ptr noundef nonnull @_ZN3pov9DirectionE) #10
  %23 = load double, ptr %8, align 8, !tbaa !46
  %24 = fcmp oeq double %23, 0.000000e+00
  br i1 %24, label %164, label %25

25:                                               ; preds = %22
  %26 = fcmp une double %23, 1.000000e+00
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = call double @sqrt(double noundef %23) #11
  %29 = fdiv double 1.000000e+00, %28
  store double %29, ptr %8, align 8, !tbaa !46
  call void @_ZN3pov8VScaleEqEPdd(ptr noundef nonnull @_ZN3pov9DirectionE, double noundef %29) #10
  br label %30

30:                                               ; preds = %27, %25
  %31 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %15, i64 0, i32 1
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %31, ptr noundef nonnull @_ZN3pov9DirectionE) #10
  %32 = load ptr, ptr %18, align 8, !tbaa !45
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %15, ptr noundef %1, ptr noundef %32) #10
  br label %34

33:                                               ; preds = %3
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull @_ZN3pov9DirectionE, ptr noundef nonnull %21) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(856) %15, ptr noundef nonnull align 8 dereferenceable(856) %1, i64 856, i1 false), !tbaa.struct !64
  store double 1.000000e+00, ptr %8, align 8, !tbaa !46
  br label %34

34:                                               ; preds = %33, %30
  %35 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 28
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = call noundef i32 %36(ptr noundef nonnull %15, ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %38 = icmp eq i32 %37, 0
  %39 = load double, ptr %5, align 8
  %40 = fcmp olt double %39, 0x3E7AD7F29ABCAF48
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %164, label %42

42:                                               ; preds = %34
  %43 = load double, ptr %4, align 8, !tbaa !46
  %44 = fcmp olt double %43, 0x3E7AD7F29ABCAF48
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store double 0x3E7AD7F29ABCAF48, ptr %4, align 8, !tbaa !46
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi double [ 0x3E7AD7F29ABCAF48, %45 ], [ %43, %42 ]
  call void @_ZN3pov6VScaleEPdPKdd(ptr noundef nonnull %11, ptr noundef nonnull @_ZN3pov9DirectionE, double noundef %47) #10
  call void @_ZN3pov6VAddEqEPdPKd(ptr noundef nonnull %11, ptr noundef nonnull %15) #10
  %48 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 27
  %49 = load ptr, ptr %48, align 8, !tbaa !56
  %50 = call noundef i32 %49(ptr noundef nonnull %11, ptr noundef nonnull %0, ptr noundef nonnull %6) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %46
  call void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef nonnull %11, double noundef 2.000000e-07, ptr noundef nonnull @_ZN3pov9DirectionE) #10
  %53 = load double, ptr %4, align 8, !tbaa !46
  %54 = fadd double %53, 2.000000e-07
  store double %54, ptr %4, align 8, !tbaa !46
  %55 = load double, ptr %5, align 8, !tbaa !46
  %56 = fcmp ogt double %54, %55
  br i1 %56, label %164, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %48, align 8, !tbaa !56
  %59 = call noundef i32 %58(ptr noundef nonnull %11, ptr noundef nonnull %0, ptr noundef nonnull %6) #10
  br label %60

60:                                               ; preds = %57, %46
  %61 = phi i32 [ %59, %57 ], [ 0, %46 ]
  %62 = load double, ptr %4, align 8, !tbaa !46
  %63 = load double, ptr %5, align 8, !tbaa !46
  %64 = fcmp olt double %62, %63
  br i1 %64, label %65, label %164

65:                                               ; preds = %60
  %66 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 26
  %67 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 25
  %68 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 19
  %69 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %70 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 1
  %71 = load double, ptr %6, align 8, !tbaa !46
  br label %72

72:                                               ; preds = %65, %154
  %73 = phi double [ %71, %65 ], [ %156, %154 ]
  %74 = phi i32 [ 0, %65 ], [ %155, %154 ]
  %75 = phi i32 [ %61, %65 ], [ %93, %154 ]
  %76 = phi i32 [ 0, %65 ], [ %123, %154 ]
  br label %77

77:                                               ; preds = %72, %100
  %78 = phi double [ %73, %72 ], [ %101, %100 ]
  %79 = load double, ptr @_ZN3pov9PrecisionE, align 8, !tbaa !46
  %80 = fcmp olt double %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store double %79, ptr %6, align 8, !tbaa !46
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi double [ %79, %81 ], [ %78, %77 ]
  %84 = load double, ptr %4, align 8, !tbaa !46
  %85 = fadd double %83, %84
  store double %85, ptr %4, align 8, !tbaa !46
  %86 = load double, ptr %5, align 8, !tbaa !46
  %87 = fcmp ogt double %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = icmp eq i32 %74, 0
  br i1 %89, label %164, label %162

90:                                               ; preds = %82
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %9, ptr noundef nonnull %11) #10
  %91 = load double, ptr %6, align 8, !tbaa !46
  call void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef nonnull %11, double noundef %91, ptr noundef nonnull @_ZN3pov9DirectionE) #10
  %92 = load ptr, ptr %48, align 8, !tbaa !56
  %93 = call noundef i32 %92(ptr noundef nonnull %11, ptr noundef nonnull %0, ptr noundef nonnull %7) #10
  %94 = icmp eq i32 %93, %75
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load double, ptr %6, align 8, !tbaa !46
  %97 = load double, ptr %4, align 8, !tbaa !46
  %98 = fsub double %97, %96
  store double %98, ptr %4, align 8, !tbaa !46
  %99 = fcmp ogt double %96, 0x3E7AD7F29ABCAF48
  br i1 %99, label %102, label %121

100:                                              ; preds = %90
  %101 = load double, ptr %7, align 8, !tbaa !46
  store double %101, ptr %6, align 8, !tbaa !46
  br label %77, !llvm.loop !66

102:                                              ; preds = %95, %118
  %103 = phi double [ %119, %118 ], [ %96, %95 ]
  %104 = fmul double %103, 5.000000e-01
  store double %104, ptr %6, align 8, !tbaa !46
  call void @_ZN3pov10VAddScaledEPdPKddS2_(ptr noundef nonnull %10, ptr noundef nonnull %9, double noundef %104, ptr noundef nonnull @_ZN3pov9DirectionE) #10
  %105 = load ptr, ptr %66, align 8, !tbaa !54
  %106 = call noundef i32 %105(ptr noundef nonnull %10, ptr noundef nonnull %0) #10
  %107 = icmp eq i32 %106, %75
  br i1 %107, label %110, label %108

108:                                              ; preds = %102
  %109 = load double, ptr %6, align 8, !tbaa !46
  br label %118

110:                                              ; preds = %102
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %9, ptr noundef nonnull %10) #10
  %111 = load double, ptr %6, align 8, !tbaa !46
  %112 = load double, ptr %4, align 8, !tbaa !46
  %113 = fadd double %111, %112
  store double %113, ptr %4, align 8, !tbaa !46
  %114 = load double, ptr %5, align 8, !tbaa !46
  %115 = fcmp ogt double %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = icmp eq i32 %74, 0
  br i1 %117, label %164, label %162

118:                                              ; preds = %108, %110
  %119 = phi double [ %109, %108 ], [ %111, %110 ]
  %120 = fcmp ogt double %119, 0x3E7AD7F29ABCAF48
  br i1 %120, label %102, label %121, !llvm.loop !68

121:                                              ; preds = %118, %95
  %122 = phi double [ %96, %95 ], [ %119, %118 ]
  %123 = phi i32 [ %76, %95 ], [ %106, %118 ]
  %124 = icmp eq i32 %75, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  call void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef nonnull %9, double noundef %122, ptr noundef nonnull @_ZN3pov9DirectionE) #10
  %126 = load double, ptr %6, align 8, !tbaa !46
  %127 = load double, ptr %4, align 8, !tbaa !46
  %128 = fadd double %126, %127
  store double %128, ptr %4, align 8, !tbaa !46
  br label %131

129:                                              ; preds = %121
  %130 = icmp eq i32 %123, %75
  br i1 %130, label %134, label %131

131:                                              ; preds = %129, %125
  %132 = load ptr, ptr %66, align 8, !tbaa !54
  %133 = call noundef i32 %132(ptr noundef nonnull %9, ptr noundef nonnull %0) #10
  br label %134

134:                                              ; preds = %131, %129
  %135 = load ptr, ptr %18, align 8, !tbaa !45
  %136 = icmp eq ptr %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %135) #10
  %138 = load ptr, ptr %67, align 8, !tbaa !55
  %139 = load i32, ptr %68, align 8, !tbaa !48
  call void %138(ptr noundef nonnull %14, i32 noundef %139, ptr noundef nonnull %0) #10
  %140 = load ptr, ptr %18, align 8, !tbaa !45
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %140) #10
  br label %144

141:                                              ; preds = %134
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %12, ptr noundef nonnull %9) #10
  %142 = load ptr, ptr %67, align 8, !tbaa !55
  %143 = load i32, ptr %68, align 8, !tbaa !48
  call void %142(ptr noundef nonnull %13, i32 noundef %143, ptr noundef nonnull %0) #10
  br label %144

144:                                              ; preds = %141, %137
  %145 = load ptr, ptr %69, align 8, !tbaa !69
  %146 = call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %12, ptr noundef %145) #10
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  call void @_ZN3pov10VNormalizeEPdPKd(ptr noundef nonnull %13, ptr noundef nonnull %13) #10
  %148 = load double, ptr %4, align 8, !tbaa !46
  %149 = load double, ptr %8, align 8, !tbaa !46
  %150 = fmul double %148, %149
  call void @_ZN3pov17push_normal_entryEdPdS0_PNS_13Object_StructEPNS_13istack_structE(double noundef %150, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %0, ptr noundef %2) #10
  %151 = load i32, ptr %70, align 8, !tbaa !34
  %152 = and i32 %151, 256
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %147, %144
  %155 = phi i32 [ 1, %147 ], [ %74, %144 ]
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %9, ptr noundef nonnull %11) #10
  %156 = load double, ptr %7, align 8, !tbaa !46
  store double %156, ptr %6, align 8, !tbaa !46
  %157 = load double, ptr %4, align 8, !tbaa !46
  %158 = load double, ptr %5, align 8, !tbaa !46
  %159 = fcmp olt double %157, %158
  br i1 %159, label %72, label %160, !llvm.loop !71

160:                                              ; preds = %154
  %161 = icmp eq i32 %155, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %147, %160, %116, %88
  %163 = phi i32 [ %74, %88 ], [ %74, %116 ], [ %155, %160 ], [ 1, %147 ]
  call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 31)) #10
  br label %164

164:                                              ; preds = %162, %60, %160, %116, %88, %52, %34, %22
  %165 = phi i32 [ 0, %22 ], [ 0, %34 ], [ 0, %52 ], [ 0, %88 ], [ 0, %116 ], [ 0, %160 ], [ 0, %60 ], [ %163, %162 ]
  call void @llvm.lifetime.end.p0(i64 856, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %165
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL14Inside_FractalEPdPNS_13Object_StructE(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !72 {
  %3 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  tail call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull @_ZZN3povL14Inside_FractalEPdPNS_13Object_StructEE9New_Point, ptr noundef %0, ptr noundef nonnull %4) #10
  %7 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = tail call noundef i32 %8(ptr noundef nonnull @_ZZN3povL14Inside_FractalEPdPNS_13Object_StructEE9New_Point, ptr noundef nonnull %1) #10
  br label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = tail call noundef i32 %12(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %9, %6 ], [ %13, %10 ]
  %16 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %1, i64 0, i32 21
  %17 = load i32, ptr %16, align 8, !tbaa !50
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i32 %15, 0
  %20 = zext i1 %19 to i32
  %21 = select i1 %18, i32 %15, i32 %20
  ret i32 %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_ZN3povL14Fractal_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #3 !PGOFuncName !73 {
  %4 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 2
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef nonnull %4) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef ptr @_ZN3povL12Copy_FractalEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 !PGOFuncName !74 {
  %2 = tail call noundef ptr @_ZN3pov14Create_FractalEv() #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %2, ptr noundef nonnull align 8 dereferenceable(320) %0, i64 320, i1 false), !tbaa.struct !75
  %3 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef %4) #10
  %6 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %2, i64 0, i32 10
  store ptr %5, ptr %6, align 8, !tbaa !45
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL17Translate_FractalEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !76 {
  tail call void @_ZN3povL17Transform_FractalEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL14Rotate_FractalEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !77 {
  tail call void @_ZN3povL17Transform_FractalEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL13Scale_FractalEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !78 {
  tail call void @_ZN3povL17Transform_FractalEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL17Transform_FractalEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !79 {
  %3 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN3pov16Create_TransformEv() #10
  store ptr %7, ptr %3, align 8, !tbaa !45
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %9, ptr noundef %1) #10
  tail call fastcc void @_ZN3povL20Compute_Fractal_BBoxEPNS_14Fractal_StructE(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL14Invert_FractalEPNS_13Object_StructE(ptr nocapture noundef %0) #4 !PGOFuncName !80 {
  %2 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 21
  %3 = load i32, ptr %2, align 8, !tbaa !50
  %4 = xor i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL15Destroy_FractalEPNS_13Object_StructE(ptr noundef %0) #0 !PGOFuncName !81 {
  %2 = getelementptr inbounds %"struct.pov::Fractal_Struct", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %3) #10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 796) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat {
  %2 = load i64, ptr %0, align 8, !tbaa !82
  %3 = add nsw i64 %2, 1
  store i64 %3, ptr %0, align 8, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !46
  %5 = load double, ptr %2, align 8, !tbaa !46
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds double, ptr %2, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !46
  %10 = fmul double %7, %9
  %11 = tail call double @llvm.fmuladd.f64(double %4, double %5, double %10)
  %12 = getelementptr inbounds double, ptr %1, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds double, ptr %2, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !46
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %15, double %11)
  store double %16, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov8VScaleEqEPdd(ptr noundef %0, double noundef %1) local_unnamed_addr #3 comdat {
  %3 = load <2 x double>, ptr %0, align 8, !tbaa !46
  %4 = insertelement <2 x double> poison, double %1, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x double> %3, %5
  store <2 x double> %6, ptr %0, align 8, !tbaa !46
  %7 = getelementptr inbounds double, ptr %0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !46
  %9 = fmul double %8, %1
  store double %9, ptr %7, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !46
  store double %3, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds double, ptr %1, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds double, ptr %0, i64 2
  store double %8, ptr %9, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #3 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !46
  %5 = fmul double %4, %2
  store double %5, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !46
  %8 = fmul double %7, %2
  %9 = getelementptr inbounds double, ptr %0, i64 1
  store double %8, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds double, ptr %1, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !46
  %12 = fmul double %11, %2
  %13 = getelementptr inbounds double, ptr %0, i64 2
  store double %12, ptr %13, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VAddEqEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !46
  %4 = load double, ptr %0, align 8, !tbaa !46
  %5 = fadd double %3, %4
  store double %5, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !46
  %10 = fadd double %7, %9
  store double %10, ptr %8, align 8, !tbaa !46
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !46
  %15 = fadd double %12, %14
  store double %15, ptr %13, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
  %4 = load double, ptr %2, align 8, !tbaa !46
  %5 = load double, ptr %0, align 8, !tbaa !46
  %6 = tail call double @llvm.fmuladd.f64(double %1, double %4, double %5)
  store double %6, ptr %0, align 8, !tbaa !46
  %7 = getelementptr inbounds double, ptr %2, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds double, ptr %0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !46
  %11 = tail call double @llvm.fmuladd.f64(double %1, double %8, double %10)
  store double %11, ptr %9, align 8, !tbaa !46
  %12 = getelementptr inbounds double, ptr %2, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds double, ptr %0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !46
  %16 = tail call double @llvm.fmuladd.f64(double %1, double %13, double %15)
  store double %16, ptr %14, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov10VAddScaledEPdPKddS2_(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat {
  %5 = load double, ptr %1, align 8, !tbaa !46
  %6 = load double, ptr %3, align 8, !tbaa !46
  %7 = tail call double @llvm.fmuladd.f64(double %2, double %6, double %5)
  store double %7, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds double, ptr %1, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds double, ptr %3, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !46
  %12 = tail call double @llvm.fmuladd.f64(double %2, double %11, double %9)
  %13 = getelementptr inbounds double, ptr %0, i64 1
  store double %12, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds double, ptr %1, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds double, ptr %3, i64 2
  %17 = load double, ptr %16, align 8, !tbaa !46
  %18 = tail call double @llvm.fmuladd.f64(double %2, double %17, double %15)
  %19 = getelementptr inbounds double, ptr %0, i64 2
  store double %18, ptr %19, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov10VNormalizeEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #10
  %4 = load double, ptr %3, align 8, !tbaa !46
  call void @_ZN3pov13VInverseScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov17push_normal_entryEdPdS0_PNS_13Object_StructEPNS_13istack_structE(double noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat {
  %6 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #10
  store double %0, ptr %6, align 8, !tbaa !84
  %7 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #10
  %8 = getelementptr inbounds %"struct.pov::istk_entry", ptr %7, i64 0, i32 5
  store ptr %3, ptr %8, align 8, !tbaa !86
  %9 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #10
  %10 = getelementptr inbounds %"struct.pov::istk_entry", ptr %9, i64 0, i32 1
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %10, ptr noundef %1) #10
  %11 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #10
  %12 = getelementptr inbounds %"struct.pov::istk_entry", ptr %11, i64 0, i32 4
  tail call void @_ZN3pov14Assign_UV_VectEPdS0_(ptr noundef nonnull %12, ptr noundef %1) #10
  %13 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #10
  %14 = getelementptr inbounds %"struct.pov::istk_entry", ptr %13, i64 0, i32 2
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %14, ptr noundef %2) #10
  %15 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #10
  %16 = getelementptr inbounds %"struct.pov::istk_entry", ptr %15, i64 0, i32 18
  store ptr null, ptr %16, align 8, !tbaa !87
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %4) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !46
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !46
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = getelementptr inbounds double, ptr %1, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !46
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = tail call double @llvm.sqrt.f64(double %10)
  store double %11, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13VInverseScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #3 comdat {
  %4 = fdiv double 1.000000e+00, %2
  %5 = load double, ptr %1, align 8, !tbaa !46
  %6 = fmul double %4, %5
  store double %6, ptr %0, align 8, !tbaa !46
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !46
  %9 = fmul double %4, %8
  %10 = getelementptr inbounds double, ptr %0, i64 1
  store double %9, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !46
  %13 = fmul double %4, %12
  %14 = getelementptr inbounds double, ptr %0, i64 2
  store double %13, ptr %14, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !90
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %"struct.pov::istk_entry", ptr %3, i64 %6
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov14Assign_UV_VectEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !46
  store double %3, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov11Complex_ExpEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov10Complex_LnEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov11Complex_SinEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov12Complex_ASinEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov11Complex_CosEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov12Complex_ACosEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov11Complex_TanEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov12Complex_ATanEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov12Complex_SinhEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov13Complex_ASinhEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov12Complex_CoshEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov13Complex_ACoshEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov12Complex_TanhEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov13Complex_ATanhEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @_ZN3pov11Complex_PwrEPNS_5cmplxES1_(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN3pov3SqrEd(double noundef %0) local_unnamed_addr #3 comdat {
  %2 = fmul double %0, %0
  ret double %2
}

; Function Attrs: optsize
declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 37113910}
!4 = !{!"MaxCount", i64 10485760}
!5 = !{!"MaxInternalCount", i64 10485760}
!6 = !{!"MaxFunctionCount", i64 163840}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 10485760, i32 3}
!14 = !{i32 100000, i64 10485760, i32 3}
!15 = !{i32 200000, i64 10485760, i32 3}
!16 = !{i32 300000, i64 10485760, i32 3}
!17 = !{i32 400000, i64 10485760, i32 3}
!18 = !{i32 500000, i64 10485760, i32 3}
!19 = !{i32 600000, i64 10485760, i32 3}
!20 = !{i32 700000, i64 10485760, i32 3}
!21 = !{i32 800000, i64 10485760, i32 3}
!22 = !{i32 900000, i64 5242880, i32 4}
!23 = !{i32 950000, i64 5242880, i32 4}
!24 = !{i32 990000, i64 163840, i32 6}
!25 = !{i32 999000, i64 81920, i32 7}
!26 = !{i32 999900, i64 4096, i32 8}
!27 = !{i32 999990, i64 4096, i32 8}
!28 = !{i32 999999, i64 21, i32 9}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!45 = !{!35, !36, i64 96}
!46 = !{!42, !42, i64 0}
!47 = !{!35, !42, i64 216}
!48 = !{!35, !39, i64 224}
!49 = !{!35, !42, i64 232}
!50 = !{!35, !39, i64 240}
!51 = !{!35, !39, i64 244}
!52 = !{!35, !39, i64 248}
!53 = !{!41, !41, i64 0}
!54 = !{!35, !36, i64 280}
!55 = !{!35, !36, i64 272}
!56 = !{!35, !36, i64 288}
!57 = !{!35, !36, i64 296}
!58 = !{!36, !36, i64 0}
!59 = !{!35, !36, i64 304}
!60 = !{!39, !39, i64 0}
!61 = !{!"fractal.cpp:_ZN3povL20Compute_Fractal_BBoxEPNS_14Fractal_StructE"}
!62 = !{!35, !42, i64 312}
!63 = !{!"fractal.cpp:_ZN3povL25All_Fractal_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE"}
!64 = !{i64 0, i64 24, !65, i64 24, i64 24, !65, i64 48, i64 4, !60, i64 52, i64 4, !60, i64 56, i64 800, !65}
!65 = !{!37, !37, i64 0}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = distinct !{!68, !67}
!69 = !{!70, !36, i64 56}
!70 = !{!"_ZTSN3pov13Object_StructE", !36, i64 0, !39, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !40, i64 72, !36, i64 96, !36, i64 104, !41, i64 112, !39, i64 116}
!71 = distinct !{!71, !67}
!72 = !{!"fractal.cpp:_ZN3povL14Inside_FractalEPdPNS_13Object_StructE"}
!73 = !{!"fractal.cpp:_ZN3povL14Fractal_NormalEPdPNS_13Object_StructEPNS_10istk_entryE"}
!74 = !{!"fractal.cpp:_ZN3povL12Copy_FractalEPNS_13Object_StructE"}
!75 = !{i64 0, i64 8, !58, i64 8, i64 4, !60, i64 16, i64 8, !58, i64 24, i64 8, !58, i64 32, i64 8, !58, i64 40, i64 8, !58, i64 48, i64 8, !58, i64 56, i64 8, !58, i64 64, i64 8, !58, i64 72, i64 12, !65, i64 84, i64 12, !65, i64 96, i64 8, !58, i64 104, i64 8, !58, i64 112, i64 4, !53, i64 116, i64 4, !60, i64 120, i64 24, !65, i64 144, i64 32, !65, i64 176, i64 32, !65, i64 208, i64 8, !46, i64 216, i64 8, !46, i64 224, i64 4, !60, i64 232, i64 8, !46, i64 240, i64 4, !60, i64 244, i64 4, !60, i64 248, i64 4, !60, i64 256, i64 8, !46, i64 264, i64 8, !46, i64 272, i64 8, !58, i64 280, i64 8, !58, i64 288, i64 8, !58, i64 296, i64 8, !58, i64 304, i64 8, !58, i64 312, i64 8, !46}
!76 = !{!"fractal.cpp:_ZN3povL17Translate_FractalEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!77 = !{!"fractal.cpp:_ZN3povL14Rotate_FractalEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!78 = !{!"fractal.cpp:_ZN3povL13Scale_FractalEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!79 = !{!"fractal.cpp:_ZN3povL17Transform_FractalEPNS_13Object_StructEPNS_16Transform_StructE"}
!80 = !{!"fractal.cpp:_ZN3povL14Invert_FractalEPNS_13Object_StructE"}
!81 = !{!"fractal.cpp:_ZN3povL15Destroy_FractalEPNS_13Object_StructE"}
!82 = !{!83, !83, i64 0}
!83 = !{!"long long", !37, i64 0}
!84 = !{!85, !42, i64 0}
!85 = !{!"_ZTSN3pov10istk_entryE", !42, i64 0, !37, i64 8, !37, i64 32, !37, i64 56, !37, i64 80, !36, i64 96, !39, i64 104, !39, i64 108, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !36, i64 184, !36, i64 192}
!86 = !{!85, !36, i64 96}
!87 = !{!85, !36, i64 192}
!88 = !{!89, !36, i64 8}
!89 = !{!"_ZTSN3pov13istack_structE", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20}
!90 = !{!89, !39, i64 20}
