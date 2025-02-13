; ModuleID = 'fnintern.cpp'
source_filename = "fnintern.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Trap" = type { ptr, i32 }
%"struct.pov::TrapS" = type { ptr, i32 }
%"struct.pov::Pattern_Struct" = type { i16, i16, i16, i32, float, float, float, ptr, ptr, ptr, %union.anon }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { [3 x double], [3 x double], double, double, i16, ptr, i32, [3 x double] }
%"struct.pov::FunctionCode" = type { ptr, i32, i8, i8, i8, [56 x i32], [56 x ptr], [56 x ptr], ptr, ptr, %"struct.pov_base::ITextStream::FilePos", i32, ptr, ptr, ptr }
%"struct.pov_base::ITextStream::FilePos" = type { i64, i32 }
%"struct.pov::Spline_Struct" = type { i32, i32, i32, ptr, i32, i32, i8, i32, double, [5 x double] }

$_ZSt3minIdERKT_S2_S2_ = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_ZSt4fmodIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_ = comdat any

$_ZN3pov11Make_VectorEPdddd = comdat any

$_ZN3pov8VScaleEqEPdd = comdat any

$_ZN3pov6VScaleEPdPKdd = comdat any

@_ZN3pov16POVFPU_TrapTableE = dso_local local_unnamed_addr constant [80 x %"struct.pov::Trap"] [%"struct.pov::Trap" { ptr @_ZN3pov12f_algbr_cyl1EPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov12f_algbr_cyl2EPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov12f_algbr_cyl3EPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov12f_algbr_cyl4EPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_bicornEPdj, i32 5 }, %"struct.pov::Trap" { ptr @_ZN3pov9f_bifoliaEPdj, i32 5 }, %"struct.pov::Trap" { ptr @_ZN3pov6f_blobEPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_blob2EPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov13f_boy_surfaceEPdj, i32 5 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_commaEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov18f_cross_ellipsoidsEPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov16f_crossed_troughEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov14f_cubic_saddleEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov9f_cushionEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov14f_devils_curveEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov17f_devils_curve_2dEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov14f_dupin_cyclidEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov11f_ellipsoidEPdj, i32 6 }, %"struct.pov::Trap" { ptr @_ZN3pov9f_enneperEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov14f_flange_coverEPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov16f_folium_surfaceEPdj, i32 6 }, %"struct.pov::Trap" { ptr @_ZN3pov19f_folium_surface_2dEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov6f_globEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_heartEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov15f_helical_torusEPdj, i32 13 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_helix1EPdj, i32 10 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_helix2EPdj, i32 10 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_hex_xEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_hex_yEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov11f_hetero_mfEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov14f_hunt_surfaceEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov18f_hyperbolic_torusEPdj, i32 6 }, %"struct.pov::Trap" { ptr @_ZN3pov18f_isect_ellipsoidsEPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov20f_kampyle_of_eudoxusEPdj, i32 6 }, %"struct.pov::Trap" { ptr @_ZN3pov23f_kampyle_of_eudoxus_2dEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov14f_klein_bottleEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov19f_kummer_surface_v1EPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov19f_kummer_surface_v2EPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov22f_lemniscate_of_geronoEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov25f_lemniscate_of_gerono_2dEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_mesh1EPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_mitreEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov13f_nodal_cubicEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov5f_oddEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov18f_ovals_of_cassiniEPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov12f_paraboloidEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov17f_parabolic_torusEPdj, i32 6 }, %"struct.pov::Trap" { ptr @_ZN3pov4f_phEPdj, i32 3 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_pillowEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov10f_piriformEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov13f_piriform_2dEPdj, i32 10 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_poly4EPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov11f_polytubesEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov9f_quantumEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov20f_quartic_paraboloidEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov16f_quartic_saddleEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov18f_quartic_cylinderEPdj, i32 6 }, %"struct.pov::Trap" { ptr @_ZN3pov3f_rEPdj, i32 3 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_ridgeEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov11f_ridged_mfEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov13f_rounded_boxEPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_sphereEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_spikesEPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov11f_spikes_2dEPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_spiralEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov16f_steiners_romanEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov11f_strophoidEPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov14f_strophoid_2dEPdj, i32 10 }, %"struct.pov::Trap" { ptr @_ZN3pov16f_superellipsoidEPdj, i32 5 }, %"struct.pov::Trap" { ptr @_ZN3pov4f_thEPdj, i32 3 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_torusEPdj, i32 5 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_torus2EPdj, i32 6 }, %"struct.pov::Trap" { ptr @_ZN3pov15f_torus_gumdropEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov10f_umbrellaEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov17f_witch_of_agnesiEPdj, i32 5 }, %"struct.pov::Trap" { ptr @_ZN3pov20f_witch_of_agnesi_2dEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov9f_noise3dEPdj, i32 3 }, %"struct.pov::Trap" { ptr @_ZN3pov9f_patternEPdj, i32 3 }, %"struct.pov::Trap" { ptr @_ZN3pov17f_noise_generatorEPdj, i32 4 }, %"struct.pov::Trap" zeroinitializer], align 16
@_ZN3pov17POVFPU_TrapSTableE = dso_local local_unnamed_addr constant [4 x %"struct.pov::TrapS"] [%"struct.pov::TrapS" { ptr @_ZN3pov9f_pigmentEPdjj, i32 3 }, %"struct.pov::TrapS" { ptr @_ZN3pov11f_transformEPdjj, i32 3 }, %"struct.pov::TrapS" { ptr @_ZN3pov8f_splineEPdjj, i32 1 }, %"struct.pov::TrapS" zeroinitializer], align 16
@_ZN3pov20POVFPU_TrapTableSizeE = dso_local local_unnamed_addr constant i32 79, align 4
@_ZN3pov21POVFPU_TrapSTableSizeE = dso_local local_unnamed_addr constant i32 3, align 4
@.str = private unnamed_addr constant [13 x i8] c"fnintern.cpp\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"exponent array\00", align 1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov12f_algbr_cyl1EPdj(ptr noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = load double, ptr %0, align 8, !tbaa !34
  %6 = fmul double %5, %5
  %7 = getelementptr inbounds double, ptr %0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = fmul double %8, %8
  %10 = getelementptr inbounds double, ptr %0, i64 5
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = fcmp ogt double %11, 0.000000e+00
  br i1 %12, label %13, label %43

13:                                               ; preds = %2
  %14 = getelementptr inbounds double, ptr %0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %6)
  %17 = tail call double @llvm.sqrt.f64(double %16)
  %18 = getelementptr inbounds double, ptr %0, i64 6
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fsub double %17, %19
  %21 = getelementptr inbounds double, ptr %0, i64 7
  %22 = load double, ptr %21, align 8, !tbaa !34
  %23 = fmul double %22, 0x3F91DF46A2529D39
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %39

25:                                               ; preds = %13
  %26 = tail call double @cos(double noundef %23) #10
  %27 = load double, ptr %7, align 8, !tbaa !34
  %28 = tail call double @sin(double noundef %23) #10
  %29 = fneg double %27
  %30 = fmul double %28, %29
  %31 = tail call double @llvm.fmuladd.f64(double %20, double %26, double %30)
  store double %31, ptr %0, align 8, !tbaa !34
  %32 = tail call double @sin(double noundef %23) #10
  %33 = load double, ptr %7, align 8, !tbaa !34
  %34 = tail call double @cos(double noundef %23) #10
  %35 = fmul double %33, %34
  %36 = tail call double @llvm.fmuladd.f64(double %20, double %32, double %35)
  store double %36, ptr %7, align 8, !tbaa !34
  %37 = load double, ptr %0, align 8, !tbaa !34
  %38 = fmul double %36, %36
  br label %39

39:                                               ; preds = %13, %25
  %40 = phi double [ %38, %25 ], [ %9, %13 ]
  %41 = phi double [ %37, %25 ], [ %20, %13 ]
  %42 = fmul double %41, %41
  br label %43

43:                                               ; preds = %39, %2
  %44 = phi double [ %41, %39 ], [ %5, %2 ]
  %45 = phi double [ %40, %39 ], [ %9, %2 ]
  %46 = phi double [ %42, %39 ], [ %6, %2 ]
  %47 = tail call double @llvm.fabs.f64(double %44)
  store double %47, ptr %0, align 8, !tbaa !34
  %48 = fneg double %46
  %49 = tail call double @llvm.fmuladd.f64(double %46, double %47, double %48)
  %50 = fadd double %45, %49
  %51 = fneg double %50
  %52 = getelementptr inbounds double, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %53 = getelementptr inbounds double, ptr %0, i64 3
  %54 = load double, ptr %53, align 8, !tbaa !34
  %55 = fmul double %54, %51
  store double %55, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %56 = load double, ptr %52, align 8, !tbaa !34
  %57 = fneg double %56
  store double %57, ptr %4, align 8, !tbaa !34
  %58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(8) %58) #12
  %60 = load double, ptr %59, align 8, !tbaa !34
  %61 = fneg double %60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %61
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov12f_algbr_cyl2EPdj(ptr noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = load double, ptr %0, align 8, !tbaa !34
  %6 = fmul double %5, %5
  %7 = getelementptr inbounds double, ptr %0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = fmul double %8, %8
  %10 = getelementptr inbounds double, ptr %0, i64 5
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = fcmp ogt double %11, 0.000000e+00
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = getelementptr inbounds double, ptr %0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %6)
  %17 = tail call double @llvm.sqrt.f64(double %16)
  %18 = getelementptr inbounds double, ptr %0, i64 6
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fsub double %17, %19
  %21 = getelementptr inbounds double, ptr %0, i64 7
  %22 = load double, ptr %21, align 8, !tbaa !34
  %23 = fmul double %22, 0x3F91DF46A2529D39
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %39

25:                                               ; preds = %13
  %26 = tail call double @cos(double noundef %23) #10
  %27 = load double, ptr %7, align 8, !tbaa !34
  %28 = tail call double @sin(double noundef %23) #10
  %29 = fneg double %27
  %30 = fmul double %28, %29
  %31 = tail call double @llvm.fmuladd.f64(double %20, double %26, double %30)
  store double %31, ptr %0, align 8, !tbaa !34
  %32 = tail call double @sin(double noundef %23) #10
  %33 = load double, ptr %7, align 8, !tbaa !34
  %34 = tail call double @cos(double noundef %23) #10
  %35 = fmul double %33, %34
  %36 = tail call double @llvm.fmuladd.f64(double %20, double %32, double %35)
  store double %36, ptr %7, align 8, !tbaa !34
  %37 = load double, ptr %0, align 8, !tbaa !34
  %38 = fmul double %36, %36
  br label %40

39:                                               ; preds = %13
  store double %20, ptr %0, align 8, !tbaa !34
  br label %40

40:                                               ; preds = %39, %25
  %41 = phi double [ %9, %39 ], [ %38, %25 ]
  %42 = phi double [ %8, %39 ], [ %36, %25 ]
  %43 = phi double [ %20, %39 ], [ %37, %25 ]
  %44 = fmul double %43, %43
  br label %45

45:                                               ; preds = %40, %2
  %46 = phi double [ %42, %40 ], [ %8, %2 ]
  %47 = phi double [ %41, %40 ], [ %9, %2 ]
  %48 = phi double [ %44, %40 ], [ %6, %2 ]
  %49 = fmul double %48, 2.000000e+00
  %50 = fmul double %48, -3.000000e+00
  %51 = fmul double %50, %46
  %52 = tail call double @llvm.fmuladd.f64(double %49, double %48, double %51)
  %53 = fadd double %47, %52
  %54 = fmul double %47, -2.000000e+00
  %55 = tail call double @llvm.fmuladd.f64(double %54, double %46, double %53)
  %56 = tail call double @llvm.fmuladd.f64(double %47, double %47, double %55)
  %57 = fneg double %56
  %58 = getelementptr inbounds double, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %59 = getelementptr inbounds double, ptr %0, i64 3
  %60 = load double, ptr %59, align 8, !tbaa !34
  %61 = fmul double %60, %57
  store double %61, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %62 = load double, ptr %58, align 8, !tbaa !34
  %63 = fneg double %62
  store double %63, ptr %4, align 8, !tbaa !34
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(8) %64) #12
  %66 = load double, ptr %65, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %66
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov12f_algbr_cyl3EPdj(ptr noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = load double, ptr %0, align 8, !tbaa !34
  %6 = fmul double %5, %5
  %7 = getelementptr inbounds double, ptr %0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = fmul double %8, %8
  %10 = getelementptr inbounds double, ptr %0, i64 5
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = fcmp ogt double %11, 0.000000e+00
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = getelementptr inbounds double, ptr %0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %6)
  %17 = tail call double @llvm.sqrt.f64(double %16)
  %18 = getelementptr inbounds double, ptr %0, i64 6
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fsub double %17, %19
  %21 = getelementptr inbounds double, ptr %0, i64 7
  %22 = load double, ptr %21, align 8, !tbaa !34
  %23 = fmul double %22, 0x3F91DF46A2529D39
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %39

25:                                               ; preds = %13
  %26 = tail call double @cos(double noundef %23) #10
  %27 = load double, ptr %7, align 8, !tbaa !34
  %28 = tail call double @sin(double noundef %23) #10
  %29 = fneg double %27
  %30 = fmul double %28, %29
  %31 = tail call double @llvm.fmuladd.f64(double %20, double %26, double %30)
  store double %31, ptr %0, align 8, !tbaa !34
  %32 = tail call double @sin(double noundef %23) #10
  %33 = load double, ptr %7, align 8, !tbaa !34
  %34 = tail call double @cos(double noundef %23) #10
  %35 = fmul double %33, %34
  %36 = tail call double @llvm.fmuladd.f64(double %20, double %32, double %35)
  store double %36, ptr %7, align 8, !tbaa !34
  %37 = load double, ptr %0, align 8, !tbaa !34
  %38 = fmul double %36, %36
  br label %40

39:                                               ; preds = %13
  store double %20, ptr %0, align 8, !tbaa !34
  br label %40

40:                                               ; preds = %39, %25
  %41 = phi double [ %9, %39 ], [ %38, %25 ]
  %42 = phi double [ %8, %39 ], [ %36, %25 ]
  %43 = phi double [ %20, %39 ], [ %37, %25 ]
  %44 = fmul double %43, %43
  br label %45

45:                                               ; preds = %40, %2
  %46 = phi double [ %43, %40 ], [ %5, %2 ]
  %47 = phi double [ %42, %40 ], [ %8, %2 ]
  %48 = phi double [ %41, %40 ], [ %9, %2 ]
  %49 = phi double [ %44, %40 ], [ %6, %2 ]
  %50 = fmul double %48, %49
  %51 = tail call double @llvm.fmuladd.f64(double %49, double %49, double %50)
  %52 = fmul double %49, -2.000000e+00
  %53 = tail call double @llvm.fmuladd.f64(double %52, double %47, double %51)
  %54 = fneg double %46
  %55 = tail call double @llvm.fmuladd.f64(double %54, double %48, double %53)
  %56 = fadd double %48, %55
  %57 = fneg double %56
  %58 = getelementptr inbounds double, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %59 = getelementptr inbounds double, ptr %0, i64 3
  %60 = load double, ptr %59, align 8, !tbaa !34
  %61 = fmul double %60, %57
  store double %61, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %62 = load double, ptr %58, align 8, !tbaa !34
  %63 = fneg double %62
  store double %63, ptr %4, align 8, !tbaa !34
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(8) %64) #12
  %66 = load double, ptr %65, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %66
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov12f_algbr_cyl4EPdj(ptr noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = load double, ptr %0, align 8, !tbaa !34
  %6 = fmul double %5, %5
  %7 = getelementptr inbounds double, ptr %0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = fmul double %8, %8
  %10 = getelementptr inbounds double, ptr %0, i64 5
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = fcmp ogt double %11, 0.000000e+00
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = getelementptr inbounds double, ptr %0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %6)
  %17 = tail call double @llvm.sqrt.f64(double %16)
  %18 = getelementptr inbounds double, ptr %0, i64 6
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fsub double %17, %19
  %21 = getelementptr inbounds double, ptr %0, i64 7
  %22 = load double, ptr %21, align 8, !tbaa !34
  %23 = fmul double %22, 0x3F91DF46A2529D39
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %39

25:                                               ; preds = %13
  %26 = tail call double @cos(double noundef %23) #10
  %27 = load double, ptr %7, align 8, !tbaa !34
  %28 = tail call double @sin(double noundef %23) #10
  %29 = fneg double %27
  %30 = fmul double %28, %29
  %31 = tail call double @llvm.fmuladd.f64(double %20, double %26, double %30)
  store double %31, ptr %0, align 8, !tbaa !34
  %32 = tail call double @sin(double noundef %23) #10
  %33 = load double, ptr %7, align 8, !tbaa !34
  %34 = tail call double @cos(double noundef %23) #10
  %35 = fmul double %33, %34
  %36 = tail call double @llvm.fmuladd.f64(double %20, double %32, double %35)
  store double %36, ptr %7, align 8, !tbaa !34
  %37 = load double, ptr %0, align 8, !tbaa !34
  %38 = fmul double %36, %36
  br label %40

39:                                               ; preds = %13
  store double %20, ptr %0, align 8, !tbaa !34
  br label %40

40:                                               ; preds = %39, %25
  %41 = phi double [ %9, %39 ], [ %38, %25 ]
  %42 = phi double [ %8, %39 ], [ %36, %25 ]
  %43 = phi double [ %20, %39 ], [ %37, %25 ]
  %44 = fmul double %43, %43
  br label %45

45:                                               ; preds = %40, %2
  %46 = phi double [ %42, %40 ], [ %8, %2 ]
  %47 = phi double [ %41, %40 ], [ %9, %2 ]
  %48 = phi double [ %44, %40 ], [ %6, %2 ]
  %49 = fmul double %47, %47
  %50 = tail call double @llvm.fmuladd.f64(double %48, double %48, double %49)
  %51 = fmul double %48, 2.000000e+00
  %52 = tail call double @llvm.fmuladd.f64(double %51, double %47, double %50)
  %53 = fmul double %48, 3.000000e+00
  %54 = tail call double @llvm.fmuladd.f64(double %53, double %46, double %52)
  %55 = fneg double %47
  %56 = tail call double @llvm.fmuladd.f64(double %55, double %46, double %54)
  %57 = fneg double %56
  %58 = getelementptr inbounds double, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %59 = getelementptr inbounds double, ptr %0, i64 3
  %60 = load double, ptr %59, align 8, !tbaa !34
  %61 = fmul double %60, %57
  store double %61, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %62 = load double, ptr %58, align 8, !tbaa !34
  %63 = fneg double %62
  store double %63, ptr %4, align 8, !tbaa !34
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(8) %64) #12
  %66 = load double, ptr %65, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %66
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov8f_bicornEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = getelementptr inbounds double, ptr %0, i64 4
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fmul double %15, %15
  %17 = fadd double %7, %13
  %18 = fmul double %15, 2.000000e+00
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %9, double %17)
  %20 = fsub double %19, %16
  %21 = fsub double %16, %17
  %22 = fneg double %20
  %23 = fmul double %20, %22
  %24 = tail call double @llvm.fmuladd.f64(double %10, double %21, double %23)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %25 = getelementptr inbounds double, ptr %0, i64 3
  %26 = load double, ptr %25, align 8, !tbaa !34
  %27 = fmul double %26, %24
  store double %27, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %28) #12
  %30 = load double, ptr %29, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %30
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov9f_bifoliaEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %7)
  %14 = fadd double %10, %13
  %15 = getelementptr inbounds double, ptr %0, i64 4
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = fadd double %7, %10
  %18 = fneg double %16
  %19 = fmul double %17, %18
  %20 = fmul double %12, %19
  %21 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %20)
  %22 = fneg double %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %23 = getelementptr inbounds double, ptr %0, i64 3
  %24 = load double, ptr %23, align 8, !tbaa !34
  %25 = fmul double %24, %22
  store double %25, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %26) #12
  %28 = load double, ptr %27, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov6f_blobEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = getelementptr inbounds double, ptr %0, i64 1
  %4 = load double, ptr %3, align 8, !tbaa !34
  %5 = fmul double %4, %4
  %6 = getelementptr inbounds double, ptr %0, i64 2
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fmul double %7, %7
  %9 = getelementptr inbounds double, ptr %0, i64 3
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = fmul double %10, 5.000000e-01
  %12 = load double, ptr %0, align 8, !tbaa !34
  %13 = fadd double %12, %11
  %14 = getelementptr inbounds double, ptr %0, i64 5
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fsub double %12, %11
  %17 = getelementptr inbounds double, ptr %0, i64 7
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = insertelement <2 x double> poison, double %16, i64 0
  %20 = insertelement <2 x double> %19, double %13, i64 1
  %21 = insertelement <2 x double> poison, double %5, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %20, <2 x double> %22)
  %24 = insertelement <2 x double> poison, double %8, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = fadd <2 x double> %25, %23
  %27 = insertelement <2 x double> poison, double %18, i64 0
  %28 = insertelement <2 x double> %27, double %15, i64 1
  %29 = fmul <2 x double> %28, %26
  %30 = fmul <2 x double> %28, %29
  %31 = fcmp ogt <2 x double> %30, <double 1.000000e+00, double 1.000000e+00>
  %32 = extractelement <2 x i1> %31, i64 1
  %33 = extractelement <2 x double> %30, i64 1
  %34 = fsub double 1.000000e+00, %33
  %35 = extractelement <2 x i1> %31, i64 0
  %36 = extractelement <2 x double> %30, i64 0
  %37 = fsub double 1.000000e+00, %36
  %38 = getelementptr inbounds double, ptr %0, i64 4
  %39 = load double, ptr %38, align 8, !tbaa !34
  %40 = select i1 %32, double 0.000000e+00, double %34
  %41 = fmul double %39, %40
  %42 = getelementptr inbounds double, ptr %0, i64 6
  %43 = load double, ptr %42, align 8, !tbaa !34
  %44 = select i1 %35, double 0.000000e+00, double %37
  %45 = fmul double %43, %44
  %46 = fmul double %44, %45
  %47 = tail call double @llvm.fmuladd.f64(double %41, double %40, double %46)
  %48 = fneg double %47
  ret double %48
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov7f_blob2EPdj(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load <2 x double>, ptr %5, align 8, !tbaa !34
  %7 = fmul <2 x double> %6, %6
  %8 = extractelement <2 x double> %7, i64 0
  %9 = fadd double %4, %8
  %10 = extractelement <2 x double> %7, i64 1
  %11 = fadd double %9, %10
  %12 = fneg double %11
  %13 = getelementptr inbounds double, ptr %0, i64 4
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = fmul double %14, %12
  %16 = tail call double @exp(double noundef %15) #10
  %17 = load double, ptr %0, align 8, !tbaa !34
  %18 = getelementptr inbounds double, ptr %0, i64 3
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fsub double %17, %19
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %20, double %8)
  %22 = fadd double %10, %21
  %23 = fneg double %22
  %24 = load double, ptr %13, align 8, !tbaa !34
  %25 = fmul double %24, %23
  %26 = tail call double @exp(double noundef %25) #10
  %27 = fadd double %16, %26
  %28 = getelementptr inbounds double, ptr %0, i64 6
  %29 = load double, ptr %28, align 8, !tbaa !34
  %30 = getelementptr inbounds double, ptr %0, i64 5
  %31 = load double, ptr %30, align 8, !tbaa !34
  %32 = fneg double %27
  %33 = tail call double @llvm.fmuladd.f64(double %32, double %31, double %29)
  ret double %33
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov13f_boy_surfaceEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load <2 x double>, ptr %0, align 8, !tbaa !34
  %7 = fmul <2 x double> %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fsub double 1.000000e+00, %9
  %12 = extractelement <2 x double> %7, i64 0
  %13 = extractelement <2 x double> %7, i64 1
  %14 = fadd double %12, %13
  %15 = getelementptr inbounds double, ptr %0, i64 4
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = fmul double %11, 6.400000e+01
  %18 = fmul double %11, %17
  %19 = fmul double %11, %18
  %20 = fmul double %10, %19
  %21 = fmul double %13, 3.000000e+00
  %22 = tail call double @llvm.fmuladd.f64(double %12, double 3.000000e+00, double %21)
  %23 = tail call double @llvm.fmuladd.f64(double %10, double 2.000000e+00, double %22)
  %24 = fmul double %11, -4.800000e+01
  %25 = fmul double %11, %24
  %26 = fmul double %10, %25
  %27 = fmul double %23, %26
  %28 = tail call double @llvm.fmuladd.f64(double %20, double %9, double %27)
  %29 = fmul double %11, 1.200000e+01
  %30 = fmul double %9, %29
  %31 = fmul double %14, 2.700000e+01
  %32 = fmul double %10, -2.400000e+01
  %33 = fmul double %14, %32
  %34 = tail call double @llvm.fmuladd.f64(double %31, double %14, double %33)
  %35 = extractelement <2 x double> %6, i64 1
  %36 = fmul double %35, 0x404974B2334F2347
  %37 = fmul double %36, %9
  %38 = tail call double @llvm.fmuladd.f64(double %12, double -3.000000e+00, double %13)
  %39 = tail call double @llvm.fmuladd.f64(double %37, double %38, double %34)
  %40 = fmul double %10, 4.000000e+00
  %41 = tail call double @llvm.fmuladd.f64(double %40, double %10, double %39)
  %42 = tail call double @llvm.fmuladd.f64(double %30, double %41, double %28)
  %43 = fmul double %13, 9.000000e+00
  %44 = tail call double @llvm.fmuladd.f64(double %12, double 9.000000e+00, double %43)
  %45 = tail call double @llvm.fmuladd.f64(double %10, double -2.000000e+00, double %44)
  %46 = fmul double %14, -8.100000e+01
  %47 = fmul double %10, -7.200000e+01
  %48 = fmul double %14, %47
  %49 = tail call double @llvm.fmuladd.f64(double %46, double %14, double %48)
  %50 = extractelement <2 x double> %6, i64 0
  %51 = fmul double %50, 0x40631785A67B5A75
  %52 = fmul double %51, %9
  %53 = tail call double @llvm.fmuladd.f64(double %13, double -3.000000e+00, double %12)
  %54 = tail call double @llvm.fmuladd.f64(double %52, double %53, double %49)
  %55 = tail call double @llvm.fmuladd.f64(double %40, double %10, double %54)
  %56 = tail call double @llvm.fmuladd.f64(double %45, double %55, double %42)
  %57 = fmul double %16, %56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %58 = getelementptr inbounds double, ptr %0, i64 3
  %59 = load double, ptr %58, align 8, !tbaa !34
  %60 = fmul double %59, %57
  store double %60, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %61) #12
  %63 = load double, ptr %62, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov7f_commaEPdj(ptr noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %5 = load double, ptr %0, align 8, !tbaa !34
  %6 = fcmp oeq double %5, 0.000000e+00
  %7 = getelementptr inbounds double, ptr %0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = fcmp oeq double %8, 0.000000e+00
  %10 = select i1 %6, i1 %9, i1 false
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store double 1.000000e-04, ptr %0, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %2, %11
  %13 = phi double [ 1.000000e-04, %11 ], [ %5, %2 ]
  %14 = getelementptr inbounds double, ptr %0, i64 2
  %15 = tail call double @atan2(double noundef %8, double noundef %13) #10
  %16 = load double, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds double, ptr %0, i64 3
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 2.500000e-01, double %16)
  %20 = load double, ptr %14, align 8, !tbaa !34
  %21 = fmul double %20, %20
  %22 = tail call double @llvm.fmuladd.f64(double %19, double %19, double %21)
  %23 = tail call double @llvm.sqrt.f64(double %22)
  %24 = fmul double %15, 5.000000e-01
  %25 = tail call double @cos(double noundef %24) #10
  %26 = load double, ptr %17, align 8, !tbaa !34
  %27 = fmul double %25, %26
  %28 = fneg double %26
  %29 = tail call double @llvm.fmuladd.f64(double %28, double 7.500000e-01, double %23)
  %30 = getelementptr inbounds double, ptr %0, i64 1
  %31 = load double, ptr %30, align 8, !tbaa !34
  %32 = fmul double %31, %31
  %33 = tail call double @llvm.fmuladd.f64(double %29, double %29, double %32)
  %34 = tail call double @llvm.sqrt.f64(double %33)
  %35 = fneg double %34
  %36 = tail call double @llvm.fmuladd.f64(double %27, double 5.000000e-01, double %35)
  store double %36, ptr %4, align 8, !tbaa !34
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %38 = load double, ptr %37, align 8, !tbaa !34
  store double %38, ptr %4, align 8, !tbaa !34
  %39 = load double, ptr %17, align 8, !tbaa !34
  %40 = load double, ptr %0, align 8, !tbaa !34
  %41 = fneg double %39
  %42 = call double @llvm.fmuladd.f64(double %41, double 5.000000e-01, double %40)
  %43 = load double, ptr %14, align 8, !tbaa !34
  %44 = fmul double %43, %43
  %45 = call double @llvm.fmuladd.f64(double %42, double %42, double %44)
  %46 = load double, ptr %30, align 8, !tbaa !34
  %47 = call double @llvm.fmuladd.f64(double %46, double %46, double %45)
  %48 = call double @llvm.sqrt.f64(double %47)
  %49 = fneg double %48
  %50 = call double @llvm.fmuladd.f64(double %39, double 5.000000e-01, double %49)
  store double %50, ptr %3, align 8, !tbaa !34
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %52 = load double, ptr %51, align 8, !tbaa !34
  %53 = fneg double %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %53
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov18f_cross_ellipsoidsEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %7 = load double, ptr %0, align 8, !tbaa !34
  %8 = fmul double %7, %7
  %9 = getelementptr inbounds double, ptr %0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = fmul double %10, %10
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = fmul double %13, %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %15 = getelementptr inbounds double, ptr %0, i64 3
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = fmul double %11, %16
  %18 = tail call double @llvm.fmuladd.f64(double %8, double %16, double %17)
  %19 = fadd double %14, %18
  %20 = fneg double %19
  %21 = getelementptr inbounds double, ptr %0, i64 4
  %22 = load double, ptr %21, align 8, !tbaa !34
  %23 = fmul double %22, %20
  %24 = tail call double @exp(double noundef %23) #10
  store double %24, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %25 = load double, ptr %15, align 8, !tbaa !34
  %26 = tail call double @llvm.fmuladd.f64(double %8, double %25, double %11)
  %27 = tail call double @llvm.fmuladd.f64(double %14, double %25, double %26)
  %28 = fneg double %27
  %29 = load double, ptr %21, align 8, !tbaa !34
  %30 = fmul double %29, %28
  %31 = tail call double @exp(double noundef %30) #10
  store double %31, ptr %5, align 8, !tbaa !34
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %33 = load double, ptr %32, align 8, !tbaa !34
  store double %33, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %34 = load double, ptr %15, align 8, !tbaa !34
  %35 = call double @llvm.fmuladd.f64(double %11, double %34, double %8)
  %36 = call double @llvm.fmuladd.f64(double %14, double %34, double %35)
  %37 = fneg double %36
  %38 = load double, ptr %21, align 8, !tbaa !34
  %39 = fmul double %38, %37
  %40 = call double @exp(double noundef %39) #10
  store double %40, ptr %6, align 8, !tbaa !34
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  %42 = load double, ptr %41, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %43 = getelementptr inbounds double, ptr %0, i64 6
  %44 = load double, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds double, ptr %0, i64 5
  %46 = load double, ptr %45, align 8, !tbaa !34
  %47 = fneg double %42
  %48 = call double @llvm.fmuladd.f64(double %47, double %46, double %44)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov16f_crossed_troughEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %7, %9
  %11 = getelementptr inbounds double, ptr %0, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fneg double %12
  %14 = tail call double @llvm.fmuladd.f64(double %10, double %9, double %13)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %15 = getelementptr inbounds double, ptr %0, i64 3
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = fmul double %14, %16
  store double %17, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %18) #12
  %20 = load double, ptr %19, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov14f_cubic_saddleEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fneg double %9
  %11 = fmul double %9, %10
  %12 = fmul double %9, %11
  %13 = tail call double @llvm.fmuladd.f64(double %7, double %6, double %12)
  %14 = getelementptr inbounds double, ptr %0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fsub double %13, %15
  %17 = fneg double %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %18 = getelementptr inbounds double, ptr %0, i64 3
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fmul double %19, %17
  store double %20, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %21) #12
  %23 = load double, ptr %22, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov9f_cushionEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = fneg double %13
  %15 = fmul double %13, %14
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %7, double %15)
  %17 = fmul double %12, -2.000000e+00
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %7, double %16)
  %19 = fmul double %13, 2.000000e+00
  %20 = tail call double @llvm.fmuladd.f64(double %19, double %12, double %18)
  %21 = fadd double %7, %20
  %22 = fsub double %21, %13
  %23 = fsub double %7, %12
  %24 = fneg double %23
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %23, double %22)
  %26 = fneg double %10
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %10, double %25)
  %28 = fmul double %7, -2.000000e+00
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %10, double %27)
  %30 = tail call double @llvm.fmuladd.f64(double %26, double %13, double %29)
  %31 = fmul double %10, 2.000000e+00
  %32 = tail call double @llvm.fmuladd.f64(double %31, double %12, double %30)
  %33 = fadd double %10, %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %34 = getelementptr inbounds double, ptr %0, i64 3
  %35 = load double, ptr %34, align 8, !tbaa !34
  %36 = fmul double %35, %33
  store double %36, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %37) #12
  %39 = load double, ptr %38, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %39
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov14f_devils_curveEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = fmul double %7, 2.000000e+00
  %15 = fmul double %14, %13
  %16 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %15)
  %17 = tail call double @llvm.fmuladd.f64(double %7, double -3.600000e-01, double %16)
  %18 = fneg double %10
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %10, double %17)
  %20 = tail call double @llvm.fmuladd.f64(double %10, double 2.500000e-01, double %19)
  %21 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %20)
  %22 = fneg double %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %23 = getelementptr inbounds double, ptr %0, i64 3
  %24 = load double, ptr %23, align 8, !tbaa !34
  %25 = fmul double %24, %22
  store double %25, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %26) #12
  %28 = load double, ptr %27, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %28
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov17f_devils_curve_2dEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 6
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fcmp ogt double %12, 0.000000e+00
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = getelementptr inbounds double, ptr %0, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %7)
  %18 = tail call double @llvm.sqrt.f64(double %17)
  %19 = getelementptr inbounds double, ptr %0, i64 7
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fsub double %18, %20
  %22 = getelementptr inbounds double, ptr %0, i64 8
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = fmul double %23, 0x3F91DF46A2529D39
  %25 = fcmp une double %24, 0.000000e+00
  br i1 %25, label %26, label %40

26:                                               ; preds = %14
  %27 = tail call double @cos(double noundef %24) #10
  %28 = load double, ptr %8, align 8, !tbaa !34
  %29 = tail call double @sin(double noundef %24) #10
  %30 = fneg double %28
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %21, double %27, double %31)
  store double %32, ptr %0, align 8, !tbaa !34
  %33 = tail call double @sin(double noundef %24) #10
  %34 = load double, ptr %8, align 8, !tbaa !34
  %35 = tail call double @cos(double noundef %24) #10
  %36 = fmul double %34, %35
  %37 = tail call double @llvm.fmuladd.f64(double %21, double %33, double %36)
  store double %37, ptr %8, align 8, !tbaa !34
  %38 = load double, ptr %0, align 8, !tbaa !34
  %39 = fmul double %37, %37
  br label %41

40:                                               ; preds = %14
  store double %21, ptr %0, align 8, !tbaa !34
  br label %41

41:                                               ; preds = %40, %26
  %42 = phi double [ %10, %40 ], [ %39, %26 ]
  %43 = phi double [ %21, %40 ], [ %38, %26 ]
  %44 = fmul double %43, %43
  br label %45

45:                                               ; preds = %41, %2
  %46 = phi double [ %42, %41 ], [ %10, %2 ]
  %47 = phi double [ %44, %41 ], [ %7, %2 ]
  %48 = getelementptr inbounds double, ptr %0, i64 4
  %49 = load double, ptr %48, align 8, !tbaa !34
  %50 = fneg double %49
  %51 = tail call double @llvm.fmuladd.f64(double %50, double %49, double %47)
  %52 = getelementptr inbounds double, ptr %0, i64 5
  %53 = load double, ptr %52, align 8, !tbaa !34
  %54 = fneg double %53
  %55 = tail call double @llvm.fmuladd.f64(double %54, double %53, double %46)
  %56 = fneg double %46
  %57 = fmul double %55, %56
  %58 = tail call double @llvm.fmuladd.f64(double %47, double %51, double %57)
  %59 = fneg double %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %60 = getelementptr inbounds double, ptr %0, i64 3
  %61 = load double, ptr %60, align 8, !tbaa !34
  %62 = fmul double %61, %59
  store double %62, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %63) #12
  %65 = load double, ptr %64, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %65
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov14f_dupin_cyclidEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load <2 x double>, ptr %8, align 8, !tbaa !34
  %10 = fmul <2 x double> %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 8
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = getelementptr inbounds double, ptr %0, i64 7
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fmul double %15, %15
  %17 = getelementptr inbounds double, ptr %0, i64 6
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds double, ptr %0, i64 4
  %20 = fmul double %18, %18
  %21 = load <2 x double>, ptr %19, align 8, !tbaa !34
  %22 = fmul <2 x double> %21, %21
  %23 = extractelement <2 x double> %22, i64 1
  %24 = fsub double %23, %16
  %25 = extractelement <2 x double> %21, i64 0
  %26 = fadd double %18, %25
  %27 = fneg double %26
  %28 = tail call double @llvm.fmuladd.f64(double %27, double %26, double %24)
  %29 = fsub double %18, %25
  %30 = fneg double %29
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %29, double %24)
  %32 = fmul double %28, %31
  %33 = extractelement <2 x double> %10, i64 0
  %34 = fmul <2 x double> %10, %10
  %35 = extractelement <2 x double> %34, i64 0
  %36 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %35)
  %37 = extractelement <2 x double> %10, i64 1
  %38 = tail call double @llvm.fmuladd.f64(double %37, double %37, double %36)
  %39 = fmul double %7, %37
  %40 = tail call double @llvm.fmuladd.f64(double %7, double %33, double %39)
  %41 = tail call double @llvm.fmuladd.f64(double %33, double %37, double %40)
  %42 = fmul double %41, %32
  %43 = fmul double %42, 2.000000e+00
  %44 = tail call double @llvm.fmuladd.f64(double %32, double %38, double %43)
  %45 = fmul double %13, 2.000000e+00
  %46 = fneg double %16
  %47 = fsub double %46, %20
  %48 = fadd double %23, %47
  %49 = extractelement <2 x double> %22, i64 0
  %50 = fadd double %49, %48
  %51 = fmul double %6, 2.000000e+00
  %52 = extractelement <2 x double> %9, i64 0
  %53 = fmul double %52, 2.000000e+00
  %54 = fmul double %53, %15
  %55 = tail call double @llvm.fmuladd.f64(double %51, double %18, double %54)
  %56 = fsub double %55, %13
  %57 = fmul double %15, -4.000000e+00
  %58 = fmul double %23, %57
  %59 = fmul double %52, %58
  %60 = tail call double @llvm.fmuladd.f64(double %50, double %56, double %59)
  %61 = fmul double %45, %60
  %62 = fadd double %7, %33
  %63 = fadd double %62, %37
  %64 = tail call double @llvm.fmuladd.f64(double %61, double %63, double %44)
  %65 = fmul double %13, 4.000000e+00
  %66 = fmul double %13, %65
  %67 = fmul double %52, %15
  %68 = tail call double @llvm.fmuladd.f64(double %18, double %6, double %67)
  %69 = fmul double %66, %68
  %70 = fneg double %13
  %71 = tail call double @llvm.fmuladd.f64(double %15, double %52, double %70)
  %72 = tail call double @llvm.fmuladd.f64(double %18, double %6, double %71)
  %73 = tail call double @llvm.fmuladd.f64(double %69, double %72, double %64)
  %74 = fmul double %66, %49
  %75 = tail call double @llvm.fmuladd.f64(double %74, double %33, double %73)
  %76 = fmul double %13, %13
  %77 = fmul double %13, %76
  %78 = tail call double @llvm.fmuladd.f64(double %77, double %13, double %75)
  %79 = fneg double %78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %80 = getelementptr inbounds double, ptr %0, i64 3
  %81 = load double, ptr %80, align 8, !tbaa !34
  %82 = fmul double %81, %79
  store double %82, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %84 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %83) #12
  %85 = load double, ptr %84, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %85
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov11f_ellipsoidEPdj(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 3
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %4, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 4
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %10, %12
  %14 = fmul double %12, %13
  %15 = tail call double @llvm.fmuladd.f64(double %7, double %6, double %14)
  %16 = getelementptr inbounds double, ptr %0, i64 2
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fmul double %17, %17
  %19 = getelementptr inbounds double, ptr %0, i64 5
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fmul double %18, %20
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %20, double %15)
  %23 = tail call double @sqrt(double noundef %22) #10
  ret double %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov9f_enneperEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds double, ptr %0, i64 1
  %8 = load <2 x double>, ptr %7, align 8, !tbaa !34
  %9 = extractelement <2 x double> %8, i64 1
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fcmp olt double %10, 2.000000e-01
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds double, ptr %0, i64 2
  store double 2.000000e-01, ptr %13, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi double [ 2.000000e-01, %12 ], [ %9, %2 ]
  %16 = fmul <2 x double> %8, %8
  %17 = fmul double %6, %6
  %18 = fmul double %15, 2.000000e+00
  %19 = insertelement <2 x double> <double poison, double 2.000000e+00>, double %17, i64 0
  %20 = fmul <2 x double> %16, %19
  %21 = fsub <2 x double> %16, %19
  %22 = shufflevector <2 x double> %21, <2 x double> %20, <2 x i32> <i32 0, i32 3>
  %23 = insertelement <2 x double> <double poison, double 9.000000e+00>, double %18, i64 0
  %24 = fdiv <2 x double> %22, %23
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %26 = fadd <2 x double> %25, %24
  %27 = extractelement <2 x double> %26, i64 0
  %28 = fadd double %27, 0.000000e+00
  %29 = fmul double %15, 4.000000e+00
  %30 = extractelement <2 x double> %21, i64 0
  %31 = fdiv double %30, %29
  %32 = extractelement <2 x double> %16, i64 0
  %33 = fadd double %17, %32
  %34 = extractelement <2 x double> %16, i64 1
  %35 = tail call double @llvm.fmuladd.f64(double %34, double 0.000000e+00, double %33)
  %36 = tail call double @llvm.fmuladd.f64(double %35, double -0.000000e+00, double %31)
  %37 = fadd double %36, 0.000000e+00
  %38 = fmul double %28, %28
  %39 = fmul double %37, -6.000000e+00
  %40 = fmul double %37, %39
  %41 = tail call double @llvm.fmuladd.f64(double %38, double %28, double %40)
  %42 = fneg double %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %43 = getelementptr inbounds double, ptr %0, i64 3
  %44 = load double, ptr %43, align 8, !tbaa !34
  %45 = fmul double %44, %42
  store double %45, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %46) #12
  %48 = load double, ptr %47, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %48
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov14f_flange_coverEPdj(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 3
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %7, %12
  %14 = tail call double @llvm.fmuladd.f64(double %4, double %12, double %13)
  %15 = fadd double %10, %14
  %16 = fneg double %15
  %17 = getelementptr inbounds double, ptr %0, i64 4
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = fmul double %18, %16
  %20 = tail call double @exp(double noundef %19) #10
  %21 = load double, ptr %11, align 8, !tbaa !34
  %22 = tail call double @llvm.fmuladd.f64(double %4, double %21, double %7)
  %23 = tail call double @llvm.fmuladd.f64(double %10, double %21, double %22)
  %24 = fneg double %23
  %25 = load double, ptr %17, align 8, !tbaa !34
  %26 = fmul double %25, %24
  %27 = tail call double @exp(double noundef %26) #10
  %28 = fadd double %20, %27
  %29 = load double, ptr %11, align 8, !tbaa !34
  %30 = tail call double @llvm.fmuladd.f64(double %7, double %29, double %4)
  %31 = tail call double @llvm.fmuladd.f64(double %10, double %29, double %30)
  %32 = fneg double %31
  %33 = load double, ptr %17, align 8, !tbaa !34
  %34 = fmul double %33, %32
  %35 = tail call double @exp(double noundef %34) #10
  %36 = fadd double %28, %35
  %37 = getelementptr inbounds double, ptr %0, i64 6
  %38 = load double, ptr %37, align 8, !tbaa !34
  %39 = getelementptr inbounds double, ptr %0, i64 5
  %40 = load double, ptr %39, align 8, !tbaa !34
  %41 = fneg double %36
  %42 = tail call double @llvm.fmuladd.f64(double %41, double %40, double %38)
  ret double %42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov16f_folium_surfaceEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load <2 x double>, ptr %8, align 8, !tbaa !34
  %10 = fmul <2 x double> %9, %9
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %12 = fadd <2 x double> %10, %11
  %13 = extractelement <2 x double> %12, i64 0
  %14 = getelementptr inbounds double, ptr %0, i64 5
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds double, ptr %0, i64 4
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = tail call double @llvm.fmuladd.f64(double %17, double -4.000000e+00, double %15)
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %6, double 1.000000e+00)
  %20 = fadd double %15, 1.000000e+00
  %21 = fmul double %7, %20
  %22 = tail call double @llvm.fmuladd.f64(double %13, double %19, double %21)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %23 = getelementptr inbounds double, ptr %0, i64 3
  %24 = load double, ptr %23, align 8, !tbaa !34
  %25 = fmul double %22, %24
  store double %25, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %26) #12
  %28 = load double, ptr %27, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %28
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov19f_folium_surface_2dEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 6
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fcmp ogt double %12, 0.000000e+00
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = getelementptr inbounds double, ptr %0, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %7)
  %18 = tail call double @llvm.sqrt.f64(double %17)
  %19 = getelementptr inbounds double, ptr %0, i64 7
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fsub double %18, %20
  %22 = getelementptr inbounds double, ptr %0, i64 8
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = fmul double %23, 0x3F91DF46A2529D39
  %25 = fcmp une double %24, 0.000000e+00
  br i1 %25, label %26, label %40

26:                                               ; preds = %14
  %27 = tail call double @cos(double noundef %24) #10
  %28 = load double, ptr %8, align 8, !tbaa !34
  %29 = tail call double @sin(double noundef %24) #10
  %30 = fneg double %28
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %21, double %27, double %31)
  store double %32, ptr %0, align 8, !tbaa !34
  %33 = tail call double @sin(double noundef %24) #10
  %34 = load double, ptr %8, align 8, !tbaa !34
  %35 = tail call double @cos(double noundef %24) #10
  %36 = fmul double %34, %35
  %37 = tail call double @llvm.fmuladd.f64(double %21, double %33, double %36)
  store double %37, ptr %8, align 8, !tbaa !34
  %38 = load double, ptr %0, align 8, !tbaa !34
  %39 = fmul double %37, %37
  br label %41

40:                                               ; preds = %14
  store double %21, ptr %0, align 8, !tbaa !34
  br label %41

41:                                               ; preds = %40, %26
  %42 = phi double [ %10, %40 ], [ %39, %26 ]
  %43 = phi double [ %21, %40 ], [ %38, %26 ]
  %44 = fmul double %43, %43
  br label %45

45:                                               ; preds = %41, %2
  %46 = phi double [ %43, %41 ], [ %6, %2 ]
  %47 = phi double [ %42, %41 ], [ %10, %2 ]
  %48 = phi double [ %44, %41 ], [ %7, %2 ]
  %49 = getelementptr inbounds double, ptr %0, i64 5
  %50 = load double, ptr %49, align 8, !tbaa !34
  %51 = getelementptr inbounds double, ptr %0, i64 4
  %52 = load double, ptr %51, align 8, !tbaa !34
  %53 = tail call double @llvm.fmuladd.f64(double %52, double -4.000000e+00, double %50)
  %54 = tail call double @llvm.fmuladd.f64(double %53, double %46, double 1.000000e+00)
  %55 = fadd double %50, 1.000000e+00
  %56 = fmul double %48, %55
  %57 = tail call double @llvm.fmuladd.f64(double %47, double %54, double %56)
  %58 = fneg double %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %59 = getelementptr inbounds double, ptr %0, i64 3
  %60 = load double, ptr %59, align 8, !tbaa !34
  %61 = fmul double %60, %58
  store double %61, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %62) #12
  %64 = load double, ptr %63, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %64
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov6f_globEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = getelementptr inbounds double, ptr %0, i64 2
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = load <2 x double>, ptr %0, align 8, !tbaa !34
  %9 = fmul <2 x double> %8, %8
  %10 = extractelement <2 x double> %9, i64 0
  %11 = fmul double %10, 5.000000e-01
  %12 = insertelement <2 x double> %9, double %7, i64 1
  %13 = insertelement <2 x double> %12, double %11, i64 0
  %14 = fmul <2 x double> %12, %13
  %15 = shufflevector <2 x double> %14, <2 x double> %8, <2 x i32> <i32 0, i32 3>
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %8, <2 x double> %14)
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %18 = fsub <2 x double> %16, %17
  %19 = extractelement <2 x double> %18, i64 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %20 = getelementptr inbounds double, ptr %0, i64 3
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = fmul double %19, %21
  store double %22, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %23) #12
  %25 = load double, ptr %24, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov7f_heartEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = tail call double @llvm.fmuladd.f64(double %7, double 2.000000e+00, double %10)
  %15 = fadd double %14, %13
  %16 = fadd double %15, -1.000000e+00
  %17 = fmul double %16, %16
  %18 = fmul double %7, -1.000000e-01
  %19 = fmul double %18, %13
  %20 = fmul double %12, %19
  %21 = tail call double @llvm.fmuladd.f64(double %17, double %16, double %20)
  %22 = fneg double %10
  %23 = fmul double %13, %22
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %12, double %21)
  %25 = fneg double %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %26 = getelementptr inbounds double, ptr %0, i64 3
  %27 = load double, ptr %26, align 8, !tbaa !34
  %28 = fmul double %27, %25
  store double %28, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %29) #12
  %31 = load double, ptr %30, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov15f_helical_torusEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %7 = load double, ptr %0, align 8, !tbaa !34
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fcmp oeq double %7, 0.000000e+00
  %11 = fcmp oeq double %9, 0.000000e+00
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store double 0x3EB0C6F7A0B5ED8D, ptr %0, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %13, %2
  %15 = phi double [ 0x3EB0C6F7A0B5ED8D, %13 ], [ %7, %2 ]
  %16 = fmul double %9, %9
  %17 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %16)
  %18 = tail call double @llvm.sqrt.f64(double %17)
  %19 = tail call double @atan2(double noundef %15, double noundef %9) #10
  %20 = getelementptr inbounds double, ptr %0, i64 3
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = fsub double %18, %21
  %23 = getelementptr inbounds double, ptr %0, i64 1
  %24 = load double, ptr %23, align 8, !tbaa !34
  %25 = tail call double @atan2(double noundef %22, double noundef %24) #10
  %26 = load double, ptr %20, align 8, !tbaa !34
  %27 = fsub double %18, %26
  %28 = load double, ptr %23, align 8, !tbaa !34
  %29 = fmul double %28, %28
  %30 = tail call double @llvm.fmuladd.f64(double %27, double %27, double %29)
  %31 = tail call double @llvm.sqrt.f64(double %30)
  %32 = getelementptr inbounds double, ptr %0, i64 4
  %33 = load double, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds double, ptr %0, i64 5
  %35 = load double, ptr %34, align 8, !tbaa !34
  %36 = fmul double %25, %35
  %37 = tail call double @llvm.fmuladd.f64(double %19, double %33, double %36)
  %38 = tail call double @fmod(double noundef %37, double noundef 0x401921FB54442D18) #10
  %39 = fcmp olt double %38, 0.000000e+00
  %40 = fadd double %38, 0x401921FB54442D18
  %41 = select i1 %39, double %40, double %38
  %42 = fadd double %41, 0xC00921FB54442D18
  %43 = getelementptr inbounds double, ptr %0, i64 11
  %44 = load double, ptr %43, align 8, !tbaa !34
  %45 = fmul double %44, %42
  %46 = getelementptr inbounds double, ptr %0, i64 8
  %47 = load double, ptr %46, align 8, !tbaa !34
  %48 = fsub double %31, %47
  %49 = tail call double @atan2(double noundef %45, double noundef %48) #10
  %50 = getelementptr inbounds double, ptr %0, i64 10
  %51 = load double, ptr %50, align 8, !tbaa !34
  %52 = getelementptr inbounds double, ptr %0, i64 12
  %53 = load double, ptr %52, align 8, !tbaa !34
  %54 = fmul double %19, %53
  %55 = tail call double @llvm.fmuladd.f64(double %49, double %51, double %54)
  %56 = tail call double @cos(double noundef %55) #10
  %57 = getelementptr inbounds double, ptr %0, i64 6
  %58 = load double, ptr %57, align 8, !tbaa !34
  %59 = getelementptr inbounds double, ptr %0, i64 7
  %60 = load double, ptr %59, align 8, !tbaa !34
  %61 = tail call double @llvm.fmuladd.f64(double %56, double %58, double %60)
  %62 = load double, ptr %46, align 8, !tbaa !34
  %63 = fadd double %60, %62
  %64 = load double, ptr %20, align 8, !tbaa !34
  %65 = fsub double %63, %64
  %66 = fsub double %65, %18
  store double %66, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %67 = fsub double %31, %62
  %68 = fmul double %42, %42
  %69 = getelementptr inbounds double, ptr %0, i64 9
  %70 = load double, ptr %69, align 8, !tbaa !34
  %71 = fmul double %68, %70
  %72 = tail call double @llvm.fmuladd.f64(double %67, double %67, double %71)
  %73 = tail call double @sqrt(double noundef %72) #10
  store double %73, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %74 = load double, ptr %46, align 8, !tbaa !34
  %75 = fadd double %31, %74
  store double %75, ptr %6, align 8, !tbaa !34
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  %77 = load double, ptr %76, align 8, !tbaa !34
  %78 = fsub double %61, %77
  store double %78, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %80 = load double, ptr %79, align 8, !tbaa !34
  %81 = fneg double %80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %81
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov8f_helix1EPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %7 = load double, ptr %0, align 8, !tbaa !34
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %10)
  %12 = tail call double @llvm.sqrt.f64(double %11)
  %13 = fcmp oeq double %7, 0.000000e+00
  %14 = fcmp oeq double %9, 0.000000e+00
  %15 = and i1 %13, %14
  %16 = select i1 %15, double 0x3EB0C6F7A0B5ED8D, double %7
  %17 = tail call double @atan2(double noundef %9, double noundef %16) #10
  %18 = getelementptr inbounds double, ptr %0, i64 3
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds double, ptr %0, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds double, ptr %0, i64 4
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = fmul double %21, %23
  %25 = fmul double %19, %24
  %26 = tail call double @llvm.fmuladd.f64(double %17, double %19, double %25)
  %27 = tail call double @fmod(double noundef %26, double noundef 0x401921FB54442D18) #10
  %28 = fcmp olt double %27, 0.000000e+00
  %29 = fadd double %27, 0x401921FB54442D18
  %30 = select i1 %28, double %29, double %27
  %31 = fadd double %30, 0xC00921FB54442D18
  %32 = getelementptr inbounds double, ptr %0, i64 7
  %33 = load double, ptr %32, align 8, !tbaa !34
  %34 = fdiv double %31, %33
  %35 = load double, ptr %22, align 8, !tbaa !34
  %36 = load double, ptr %18, align 8, !tbaa !34
  %37 = fmul double %35, %36
  %38 = fdiv double %34, %37
  store double %38, ptr %8, align 8, !tbaa !34
  %39 = getelementptr inbounds double, ptr %0, i64 6
  %40 = load double, ptr %39, align 8, !tbaa !34
  %41 = fsub double %12, %40
  store double %41, ptr %0, align 8, !tbaa !34
  %42 = getelementptr inbounds double, ptr %0, i64 8
  %43 = load double, ptr %42, align 8, !tbaa !34
  %44 = fcmp oeq double %43, 1.000000e+00
  br i1 %44, label %45, label %49

45:                                               ; preds = %2
  %46 = fmul double %38, %38
  %47 = tail call double @llvm.fmuladd.f64(double %41, double %41, double %46)
  %48 = tail call double @llvm.sqrt.f64(double %47)
  store double %48, ptr %3, align 8, !tbaa !34
  br label %87

49:                                               ; preds = %2
  %50 = getelementptr inbounds double, ptr %0, i64 9
  %51 = load double, ptr %50, align 8, !tbaa !34
  %52 = fcmp une double %51, 0.000000e+00
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = fmul double %51, 0x3F91DF46A2529D39
  %55 = tail call double @cos(double noundef %54) #10
  %56 = load double, ptr %50, align 8, !tbaa !34
  %57 = fmul double %56, 0x3F91DF46A2529D39
  %58 = tail call double @sin(double noundef %57) #10
  %59 = load double, ptr %0, align 8, !tbaa !34
  %60 = load double, ptr %8, align 8, !tbaa !34
  %61 = fneg double %60
  %62 = fmul double %58, %61
  %63 = tail call double @llvm.fmuladd.f64(double %59, double %55, double %62)
  %64 = fmul double %55, %60
  %65 = tail call double @llvm.fmuladd.f64(double %59, double %58, double %64)
  store double %65, ptr %8, align 8, !tbaa !34
  store double %63, ptr %0, align 8, !tbaa !34
  %66 = load double, ptr %42, align 8, !tbaa !34
  br label %67

67:                                               ; preds = %53, %49
  %68 = phi double [ %65, %53 ], [ %38, %49 ]
  %69 = phi double [ %63, %53 ], [ %41, %49 ]
  %70 = phi double [ %66, %53 ], [ %43, %49 ]
  %71 = fcmp une double %70, 0.000000e+00
  %72 = tail call double @llvm.fabs.f64(double %69)
  br i1 %71, label %73, label %83

73:                                               ; preds = %67
  %74 = fdiv double 2.000000e+00, %70
  %75 = tail call double @pow(double noundef %72, double noundef %74) #10
  %76 = load double, ptr %8, align 8, !tbaa !34
  %77 = tail call double @llvm.fabs.f64(double %76)
  %78 = tail call double @pow(double noundef %77, double noundef %74) #10
  %79 = fadd double %75, %78
  %80 = load double, ptr %42, align 8, !tbaa !34
  %81 = fmul double %80, 5.000000e-01
  %82 = tail call double @pow(double noundef %79, double noundef %81) #10
  store double %82, ptr %3, align 8, !tbaa !34
  br label %87

83:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store double %72, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %84 = tail call double @llvm.fabs.f64(double %68)
  store double %84, ptr %5, align 8, !tbaa !34
  %85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %86 = load double, ptr %85, align 8, !tbaa !34
  store double %86, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %87

87:                                               ; preds = %73, %83, %45
  %88 = getelementptr inbounds double, ptr %0, i64 5
  %89 = load double, ptr %88, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %90 = load double, ptr %39, align 8, !tbaa !34
  %91 = fadd double %12, %90
  store double %91, ptr %6, align 8, !tbaa !34
  %92 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %93 = load double, ptr %92, align 8, !tbaa !34
  %94 = fsub double %93, %89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %94
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov8f_helix2EPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds double, ptr %0, i64 4
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = fmul double %6, %8
  %10 = tail call double @cos(double noundef %9) #10
  %11 = tail call double @sin(double noundef %9) #10
  %12 = load double, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds double, ptr %0, i64 6
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = fneg double %14
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %10, double %12)
  %17 = getelementptr inbounds double, ptr %0, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = tail call double @llvm.fmuladd.f64(double %15, double %11, double %18)
  %20 = fmul double %11, %19
  %21 = tail call double @llvm.fmuladd.f64(double %16, double %10, double %20)
  store double %21, ptr %0, align 8, !tbaa !34
  %22 = fneg double %16
  %23 = fmul double %10, %19
  %24 = tail call double @llvm.fmuladd.f64(double %22, double %11, double %23)
  store double %24, ptr %17, align 8, !tbaa !34
  %25 = getelementptr inbounds double, ptr %0, i64 8
  %26 = load double, ptr %25, align 8, !tbaa !34
  %27 = fcmp oeq double %26, 1.000000e+00
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = fmul double %24, %24
  %30 = tail call double @llvm.fmuladd.f64(double %21, double %21, double %29)
  %31 = tail call double @llvm.sqrt.f64(double %30)
  br label %49

32:                                               ; preds = %2
  %33 = fcmp une double %26, 0.000000e+00
  %34 = tail call double @llvm.fabs.f64(double %21)
  br i1 %33, label %35, label %45

35:                                               ; preds = %32
  %36 = fdiv double 2.000000e+00, %26
  %37 = tail call double @pow(double noundef %34, double noundef %36) #10
  %38 = load double, ptr %17, align 8, !tbaa !34
  %39 = tail call double @llvm.fabs.f64(double %38)
  %40 = tail call double @pow(double noundef %39, double noundef %36) #10
  %41 = fadd double %37, %40
  %42 = load double, ptr %25, align 8, !tbaa !34
  %43 = fmul double %42, 5.000000e-01
  %44 = tail call double @pow(double noundef %41, double noundef %43) #10
  br label %49

45:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double %34, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %46 = tail call double @llvm.fabs.f64(double %24)
  store double %46, ptr %4, align 8, !tbaa !34
  %47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %48 = load double, ptr %47, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %49

49:                                               ; preds = %35, %45, %28
  %50 = phi double [ %31, %28 ], [ %44, %35 ], [ %48, %45 ]
  %51 = getelementptr inbounds double, ptr %0, i64 5
  %52 = load double, ptr %51, align 8, !tbaa !34
  %53 = fsub double %50, %52
  ret double %53
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov7f_hex_xEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = tail call double @llvm.fabs.f64(double %3)
  %5 = tail call double @fmod(double noundef %4, double noundef 0x3FFBB67AE8584CAA) #10
  %6 = getelementptr inbounds double, ptr %0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = tail call double @llvm.fabs.f64(double %7)
  %9 = tail call noundef double @_ZSt4fmodIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(double noundef %8, i32 noundef 3) #12
  %10 = insertelement <2 x double> poison, double %9, i64 0
  %11 = insertelement <2 x double> %10, double %5, i64 1
  %12 = fadd <2 x double> %11, <double -1.500000e+00, double 0xBFEBB67AE8584CAA>
  %13 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %12)
  %14 = fsub <2 x double> <double 1.500000e+00, double 0x3FEBB67AE8584CAA>, %13
  %15 = shufflevector <2 x double> %14, <2 x double> %12, <2 x i32> <i32 2, i32 0>
  %16 = fmul <2 x double> %15, %15
  %17 = shufflevector <2 x double> %14, <2 x double> %12, <2 x i32> <i32 3, i32 1>
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %17, <2 x double> %16)
  %19 = extractelement <2 x double> %18, i64 0
  %20 = extractelement <2 x double> %18, i64 1
  %21 = fcmp ogt double %19, %20
  %22 = insertelement <2 x i1> poison, i1 %21, i64 0
  %23 = shufflevector <2 x i1> %22, <2 x i1> poison, <2 x i32> zeroinitializer
  %24 = select <2 x i1> %23, <2 x double> %14, <2 x double> %13
  %25 = fcmp oeq <2 x double> %24, zeroinitializer
  %26 = shufflevector <2 x i1> %25, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %27 = and <2 x i1> %26, %25
  %28 = extractelement <2 x i1> %27, i64 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store double 0x3EB0C6F7A0B5ED8D, ptr %0, align 8, !tbaa !34
  br label %30

30:                                               ; preds = %29, %2
  %31 = extractelement <2 x double> %24, i64 0
  %32 = extractelement <2 x double> %24, i64 1
  %33 = tail call double @atan2(double noundef %31, double noundef %32) #10
  %34 = fcmp olt double %33, 0x3FE0C152382D7365
  %35 = fmul double %31, 0x3FEBB67AE8584CAA
  %36 = tail call double @llvm.fmuladd.f64(double %32, double 0x3FE0000000000001, double %35)
  %37 = select i1 %34, double %32, double %36
  ret double %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov7f_hex_yEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = tail call double @llvm.fabs.f64(double %3)
  %5 = tail call double @fmod(double noundef %4, double noundef 0x3FFBB67AE8584CAA) #10
  %6 = getelementptr inbounds double, ptr %0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = tail call double @llvm.fabs.f64(double %7)
  %9 = tail call noundef double @_ZSt4fmodIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(double noundef %8, i32 noundef 3) #12
  %10 = insertelement <2 x double> poison, double %9, i64 0
  %11 = insertelement <2 x double> %10, double %5, i64 1
  %12 = fadd <2 x double> %11, <double -1.500000e+00, double 0xBFEBB67AE8584CAA>
  %13 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %12)
  %14 = fsub <2 x double> <double 1.500000e+00, double 0x3FEBB67AE8584CAA>, %13
  %15 = shufflevector <2 x double> %14, <2 x double> %12, <2 x i32> <i32 2, i32 0>
  %16 = fmul <2 x double> %15, %15
  %17 = shufflevector <2 x double> %14, <2 x double> %12, <2 x i32> <i32 3, i32 1>
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %17, <2 x double> %16)
  %19 = extractelement <2 x double> %18, i64 0
  %20 = extractelement <2 x double> %18, i64 1
  %21 = fcmp ogt double %19, %20
  %22 = insertelement <2 x i1> poison, i1 %21, i64 0
  %23 = shufflevector <2 x i1> %22, <2 x i1> poison, <2 x i32> zeroinitializer
  %24 = select <2 x i1> %23, <2 x double> %14, <2 x double> %13
  %25 = fcmp oeq <2 x double> %24, zeroinitializer
  %26 = shufflevector <2 x i1> %25, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %27 = and <2 x i1> %26, %25
  %28 = extractelement <2 x i1> %27, i64 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store double 0x3EB0C6F7A0B5ED8D, ptr %0, align 8, !tbaa !34
  br label %30

30:                                               ; preds = %29, %2
  %31 = extractelement <2 x double> %24, i64 0
  %32 = extractelement <2 x double> %24, i64 1
  %33 = tail call double @atan2(double noundef %31, double noundef %32) #10
  %34 = fcmp olt double %33, 0x3FE0C152382D7365
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = fmul double %31, 0x3FE0000000000001
  %37 = tail call double @llvm.fmuladd.f64(double %32, double 0xBFEBB67AE8584CAA, double %36)
  %38 = tail call double @llvm.fabs.f64(double %37)
  br label %39

39:                                               ; preds = %30, %35
  %40 = phi double [ %38, %35 ], [ %31, %30 ]
  ret double %40
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN3pov11f_hetero_mfEPdj(ptr nocapture noundef readonly %0, i32 %1) #3 {
  %3 = alloca [3 x double], align 16
  %4 = alloca %"struct.pov::Pattern_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %5 = load double, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds double, ptr %0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %3, double noundef %5, double noundef %7, double noundef %9) #12
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #11
  %10 = getelementptr inbounds double, ptr %0, i64 8
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = fptosi double %11 to i32
  %13 = trunc i32 %12 to i16
  %14 = shl i16 %13, 4
  %15 = and i16 %14, 48
  %16 = getelementptr inbounds %"struct.pov::Pattern_Struct", ptr %4, i64 0, i32 2
  store i16 %15, ptr %16, align 4, !tbaa !38
  %17 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %18 = call double @llvm.fmuladd.f64(double %17, double 2.000000e+00, double -1.000000e+00)
  %19 = getelementptr inbounds double, ptr %0, i64 6
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fadd double %18, %20
  %22 = getelementptr inbounds double, ptr %0, i64 4
  %23 = load double, ptr %22, align 8, !tbaa !34
  call void @_ZN3pov8VScaleEqEPdd(ptr noundef nonnull %3, double noundef %23) #12
  %24 = load double, ptr %22, align 8, !tbaa !34
  %25 = getelementptr inbounds double, ptr %0, i64 3
  %26 = load double, ptr %25, align 8, !tbaa !34
  %27 = fneg double %26
  %28 = call double @pow(double noundef %24, double noundef %27) #10
  %29 = getelementptr inbounds double, ptr %0, i64 5
  %30 = load double, ptr %29, align 8, !tbaa !34
  %31 = fcmp ogt double %30, 1.000000e+00
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = getelementptr inbounds double, ptr %0, i64 7
  br label %42

34:                                               ; preds = %54, %2
  %35 = phi double [ %28, %2 ], [ %58, %54 ]
  %36 = phi double [ %21, %2 ], [ %56, %54 ]
  %37 = phi double [ %30, %2 ], [ %61, %54 ]
  %38 = fptosi double %37 to i32
  %39 = sitofp i32 %38 to double
  %40 = fsub double %37, %39
  %41 = fcmp une double %40, 0.000000e+00
  br i1 %41, label %69, label %77

42:                                               ; preds = %32, %54
  %43 = phi double [ %21, %32 ], [ %56, %54 ]
  %44 = phi i32 [ 1, %32 ], [ %59, %54 ]
  %45 = phi double [ %28, %32 ], [ %58, %54 ]
  %46 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %47 = call double @llvm.fmuladd.f64(double %46, double 2.000000e+00, double -1.000000e+00)
  %48 = load double, ptr %19, align 8, !tbaa !34
  %49 = fadd double %47, %48
  %50 = fmul double %45, %49
  %51 = load double, ptr %33, align 8, !tbaa !34
  %52 = fptosi double %51 to i32
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %63, %42
  %55 = phi double [ %50, %42 ], [ %66, %63 ]
  %56 = fadd double %43, %55
  %57 = load double, ptr %22, align 8, !tbaa !34
  call void @_ZN3pov8VScaleEqEPdd(ptr noundef nonnull %3, double noundef %57) #12
  %58 = fmul double %28, %45
  %59 = add nuw nsw i32 %44, 1
  %60 = sitofp i32 %59 to double
  %61 = load double, ptr %29, align 8, !tbaa !34
  %62 = fcmp ogt double %61, %60
  br i1 %62, label %42, label %34, !llvm.loop !44

63:                                               ; preds = %42, %63
  %64 = phi i32 [ %67, %63 ], [ %52, %42 ]
  %65 = phi double [ %66, %63 ], [ %50, %42 ]
  %66 = fmul double %43, %65
  %67 = add nsw i32 %64, -1
  %68 = icmp ugt i32 %64, 1
  br i1 %68, label %63, label %54, !llvm.loop !46

69:                                               ; preds = %34
  %70 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %71 = call double @llvm.fmuladd.f64(double %70, double 2.000000e+00, double -1.000000e+00)
  %72 = load double, ptr %19, align 8, !tbaa !34
  %73 = fadd double %71, %72
  %74 = fmul double %35, %73
  %75 = fmul double %40, %74
  %76 = call double @llvm.fmuladd.f64(double %75, double %36, double %36)
  br label %77

77:                                               ; preds = %69, %34
  %78 = phi double [ %76, %69 ], [ %36, %34 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret double %78
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov14f_hunt_surfaceEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load <2 x double>, ptr %8, align 8, !tbaa !34
  %10 = fmul <2 x double> %9, %9
  %11 = extractelement <2 x double> %10, i64 0
  %12 = fadd double %7, %11
  %13 = extractelement <2 x double> %10, i64 1
  %14 = fadd double %12, %13
  %15 = fadd double %14, -1.300000e+01
  %16 = fmul double %15, 4.000000e+00
  %17 = fmul double %15, %16
  %18 = tail call double @llvm.fmuladd.f64(double %7, double 3.000000e+00, double %11)
  %19 = tail call double @llvm.fmuladd.f64(double %13, double -4.000000e+00, double %18)
  %20 = fadd double %19, -1.200000e+01
  %21 = fmul double %20, 2.700000e+01
  %22 = fmul double %20, %21
  %23 = tail call double @llvm.fmuladd.f64(double %17, double %15, double %22)
  %24 = fneg double %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %25 = getelementptr inbounds double, ptr %0, i64 3
  %26 = load double, ptr %25, align 8, !tbaa !34
  %27 = fmul double %26, %24
  store double %27, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %28) #12
  %30 = load double, ptr %29, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %30
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov18f_hyperbolic_torusEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = getelementptr inbounds double, ptr %0, i64 4
  %15 = load <2 x double>, ptr %14, align 8, !tbaa !34
  %16 = fmul <2 x double> %15, %15
  %17 = fmul double %7, 2.000000e+00
  %18 = fmul double %17, %10
  %19 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %18)
  %20 = fneg double %17
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %13, double %19)
  %22 = extractelement <2 x double> %16, i64 0
  %23 = extractelement <2 x double> %16, i64 1
  %24 = fadd double %22, %23
  %25 = fmul double %24, 2.000000e+00
  %26 = fneg double %25
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %7, double %21)
  %28 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %27)
  %29 = fmul double %10, -2.000000e+00
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %13, double %28)
  %31 = fsub double %22, %23
  %32 = fmul double %31, 2.000000e+00
  %33 = tail call double @llvm.fmuladd.f64(double %32, double %10, double %30)
  %34 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %33)
  %35 = tail call double @llvm.fmuladd.f64(double %25, double %13, double %34)
  %36 = tail call double @llvm.fmuladd.f64(double %31, double %31, double %35)
  %37 = fneg double %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %38 = getelementptr inbounds double, ptr %0, i64 3
  %39 = load double, ptr %38, align 8, !tbaa !34
  %40 = fmul double %39, %37
  store double %40, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %41) #12
  %43 = load double, ptr %42, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %43
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov18f_isect_ellipsoidsEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %7 = load double, ptr %0, align 8, !tbaa !34
  %8 = fmul double %7, %7
  %9 = getelementptr inbounds double, ptr %0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = fmul double %10, %10
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = fmul double %13, %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %15 = getelementptr inbounds double, ptr %0, i64 3
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = fmul double %11, %16
  %18 = tail call double @llvm.fmuladd.f64(double %8, double %16, double %17)
  %19 = fadd double %14, %18
  %20 = fneg double %19
  %21 = getelementptr inbounds double, ptr %0, i64 4
  %22 = load double, ptr %21, align 8, !tbaa !34
  %23 = fmul double %22, %20
  %24 = tail call double @exp(double noundef %23) #10
  store double %24, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %25 = load double, ptr %15, align 8, !tbaa !34
  %26 = tail call double @llvm.fmuladd.f64(double %8, double %25, double %11)
  %27 = tail call double @llvm.fmuladd.f64(double %14, double %25, double %26)
  %28 = fneg double %27
  %29 = load double, ptr %21, align 8, !tbaa !34
  %30 = fmul double %29, %28
  %31 = tail call double @exp(double noundef %30) #10
  store double %31, ptr %5, align 8, !tbaa !34
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %33 = load double, ptr %32, align 8, !tbaa !34
  store double %33, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %34 = load double, ptr %15, align 8, !tbaa !34
  %35 = call double @llvm.fmuladd.f64(double %11, double %34, double %8)
  %36 = call double @llvm.fmuladd.f64(double %14, double %34, double %35)
  %37 = fneg double %36
  %38 = load double, ptr %21, align 8, !tbaa !34
  %39 = fmul double %38, %37
  %40 = call double @exp(double noundef %39) #10
  store double %40, ptr %6, align 8, !tbaa !34
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  %42 = load double, ptr %41, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %43 = getelementptr inbounds double, ptr %0, i64 6
  %44 = load double, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds double, ptr %0, i64 5
  %46 = load double, ptr %45, align 8, !tbaa !34
  %47 = fneg double %42
  %48 = call double @llvm.fmuladd.f64(double %47, double %46, double %44)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov20f_kampyle_of_eudoxusEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds double, ptr %0, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = fmul double %11, %11
  %13 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %12)
  %14 = getelementptr inbounds double, ptr %0, i64 5
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fmul double %15, %15
  %17 = fneg double %16
  %18 = fmul double %7, %17
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %7, double %13)
  %20 = getelementptr inbounds double, ptr %0, i64 4
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = fmul double %16, %21
  %23 = fmul double %21, %22
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %7, double %19)
  %25 = fneg double %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %26 = getelementptr inbounds double, ptr %0, i64 3
  %27 = load double, ptr %26, align 8, !tbaa !34
  %28 = fmul double %27, %25
  store double %28, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %29) #12
  %31 = load double, ptr %30, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov23f_kampyle_of_eudoxus_2dEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 6
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fcmp ogt double %12, 0.000000e+00
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = getelementptr inbounds double, ptr %0, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %7)
  %18 = tail call double @llvm.sqrt.f64(double %17)
  %19 = getelementptr inbounds double, ptr %0, i64 7
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fsub double %18, %20
  %22 = getelementptr inbounds double, ptr %0, i64 8
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = fmul double %23, 0x3F91DF46A2529D39
  %25 = fcmp une double %24, 0.000000e+00
  br i1 %25, label %26, label %40

26:                                               ; preds = %14
  %27 = tail call double @cos(double noundef %24) #10
  %28 = load double, ptr %8, align 8, !tbaa !34
  %29 = tail call double @sin(double noundef %24) #10
  %30 = fneg double %28
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %21, double %27, double %31)
  store double %32, ptr %0, align 8, !tbaa !34
  %33 = tail call double @sin(double noundef %24) #10
  %34 = load double, ptr %8, align 8, !tbaa !34
  %35 = tail call double @cos(double noundef %24) #10
  %36 = fmul double %34, %35
  %37 = tail call double @llvm.fmuladd.f64(double %21, double %33, double %36)
  store double %37, ptr %8, align 8, !tbaa !34
  %38 = load double, ptr %0, align 8, !tbaa !34
  %39 = fmul double %37, %37
  br label %41

40:                                               ; preds = %14
  store double %21, ptr %0, align 8, !tbaa !34
  br label %41

41:                                               ; preds = %40, %26
  %42 = phi double [ %10, %40 ], [ %39, %26 ]
  %43 = phi double [ %21, %40 ], [ %38, %26 ]
  %44 = fmul double %43, %43
  br label %45

45:                                               ; preds = %41, %2
  %46 = phi double [ %42, %41 ], [ %10, %2 ]
  %47 = phi double [ %44, %41 ], [ %7, %2 ]
  %48 = getelementptr inbounds double, ptr %0, i64 5
  %49 = load double, ptr %48, align 8, !tbaa !34
  %50 = fmul double %49, %49
  %51 = fneg double %50
  %52 = fmul double %47, %51
  %53 = tail call double @llvm.fmuladd.f64(double %52, double %47, double %46)
  %54 = getelementptr inbounds double, ptr %0, i64 4
  %55 = load double, ptr %54, align 8, !tbaa !34
  %56 = fmul double %50, %55
  %57 = fmul double %49, %56
  %58 = tail call double @llvm.fmuladd.f64(double %57, double %47, double %53)
  %59 = fneg double %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %60 = getelementptr inbounds double, ptr %0, i64 3
  %61 = load double, ptr %60, align 8, !tbaa !34
  %62 = fmul double %61, %59
  store double %62, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %63) #12
  %65 = load double, ptr %64, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %65
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov14f_klein_bottleEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load <2 x double>, ptr %8, align 8, !tbaa !34
  %10 = fmul <2 x double> %9, %9
  %11 = extractelement <2 x double> %10, i64 0
  %12 = fadd double %7, %11
  %13 = extractelement <2 x double> %10, i64 1
  %14 = fadd double %12, %13
  %15 = extractelement <2 x double> %9, i64 0
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 2.000000e+00, double %14)
  %17 = fadd double %16, -1.000000e+00
  %18 = tail call double @llvm.fmuladd.f64(double %15, double -2.000000e+00, double %14)
  %19 = fadd double %18, -1.000000e+00
  %20 = fmul double %13, -8.000000e+00
  %21 = tail call double @llvm.fmuladd.f64(double %19, double %19, double %20)
  %22 = fmul double %6, 1.600000e+01
  %23 = extractelement <2 x double> %9, i64 1
  %24 = fmul double %22, %23
  %25 = fmul double %24, %19
  %26 = tail call double @llvm.fmuladd.f64(double %17, double %21, double %25)
  %27 = fneg double %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %28 = getelementptr inbounds double, ptr %0, i64 3
  %29 = load double, ptr %28, align 8, !tbaa !34
  %30 = fmul double %29, %27
  store double %30, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %31) #12
  %33 = load double, ptr %32, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %33
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov19f_kummer_surface_v1EPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load <2 x double>, ptr %8, align 8, !tbaa !34
  %10 = fmul <2 x double> %9, %9
  %11 = extractelement <2 x double> %10, i64 0
  %12 = fmul <2 x double> %10, %10
  %13 = extractelement <2 x double> %12, i64 0
  %14 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %13)
  %15 = extractelement <2 x double> %10, i64 1
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %14)
  %17 = fsub double %16, %7
  %18 = fsub double %17, %11
  %19 = fsub double %18, %15
  %20 = fneg double %7
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %11, double %19)
  %22 = tail call double @llvm.fmuladd.f64(double %20, double %15, double %21)
  %23 = fneg double %11
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %15, double %22)
  %25 = fadd double %24, 1.000000e+00
  %26 = fneg double %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %27 = getelementptr inbounds double, ptr %0, i64 3
  %28 = load double, ptr %27, align 8, !tbaa !34
  %29 = fmul double %28, %26
  store double %29, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %30) #12
  %32 = load double, ptr %31, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov19f_kummer_surface_v2EPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load <2 x double>, ptr %8, align 8, !tbaa !34
  %10 = fmul <2 x double> %9, %9
  %11 = extractelement <2 x double> %10, i64 0
  %12 = fmul <2 x double> %10, %10
  %13 = extractelement <2 x double> %12, i64 0
  %14 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %13)
  %15 = extractelement <2 x double> %10, i64 1
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %14)
  %17 = getelementptr inbounds double, ptr %0, i64 4
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = fadd double %7, %11
  %20 = fadd double %19, %15
  %21 = tail call double @llvm.fmuladd.f64(double %18, double %20, double %16)
  %22 = getelementptr inbounds double, ptr %0, i64 5
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = fmul double %7, %15
  %25 = tail call double @llvm.fmuladd.f64(double %7, double %11, double %24)
  %26 = tail call double @llvm.fmuladd.f64(double %11, double %15, double %25)
  %27 = tail call double @llvm.fmuladd.f64(double %23, double %26, double %21)
  %28 = getelementptr inbounds double, ptr %0, i64 6
  %29 = load double, ptr %28, align 8, !tbaa !34
  %30 = fmul double %6, %29
  %31 = extractelement <2 x double> %9, i64 0
  %32 = fmul double %31, %30
  %33 = extractelement <2 x double> %9, i64 1
  %34 = tail call double @llvm.fmuladd.f64(double %32, double %33, double %27)
  %35 = fadd double %34, -1.000000e+00
  %36 = fneg double %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %37 = getelementptr inbounds double, ptr %0, i64 3
  %38 = load double, ptr %37, align 8, !tbaa !34
  %39 = fmul double %38, %36
  store double %39, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %40) #12
  %42 = load double, ptr %41, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov22f_lemniscate_of_geronoEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load <2 x double>, ptr %8, align 8, !tbaa !34
  %10 = fmul <2 x double> %9, %9
  %11 = fneg double %7
  %12 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %11)
  %13 = extractelement <2 x double> %10, i64 0
  %14 = fadd double %12, %13
  %15 = extractelement <2 x double> %10, i64 1
  %16 = fadd double %14, %15
  %17 = fneg double %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %18 = getelementptr inbounds double, ptr %0, i64 3
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fmul double %19, %17
  store double %20, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %21) #12
  %23 = load double, ptr %22, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov25f_lemniscate_of_gerono_2dEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 6
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fcmp ogt double %12, 0.000000e+00
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = getelementptr inbounds double, ptr %0, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %7)
  %18 = tail call double @llvm.sqrt.f64(double %17)
  %19 = getelementptr inbounds double, ptr %0, i64 7
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fsub double %18, %20
  %22 = getelementptr inbounds double, ptr %0, i64 8
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = fmul double %23, 0x3F91DF46A2529D39
  %25 = fcmp une double %24, 0.000000e+00
  br i1 %25, label %26, label %40

26:                                               ; preds = %14
  %27 = tail call double @cos(double noundef %24) #10
  %28 = load double, ptr %8, align 8, !tbaa !34
  %29 = tail call double @sin(double noundef %24) #10
  %30 = fneg double %28
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %21, double %27, double %31)
  store double %32, ptr %0, align 8, !tbaa !34
  %33 = tail call double @sin(double noundef %24) #10
  %34 = load double, ptr %8, align 8, !tbaa !34
  %35 = tail call double @cos(double noundef %24) #10
  %36 = fmul double %34, %35
  %37 = tail call double @llvm.fmuladd.f64(double %21, double %33, double %36)
  store double %37, ptr %8, align 8, !tbaa !34
  %38 = load double, ptr %0, align 8, !tbaa !34
  %39 = fmul double %37, %37
  br label %41

40:                                               ; preds = %14
  store double %21, ptr %0, align 8, !tbaa !34
  br label %41

41:                                               ; preds = %40, %26
  %42 = phi double [ %10, %40 ], [ %39, %26 ]
  %43 = phi double [ %21, %40 ], [ %38, %26 ]
  %44 = fmul double %43, %43
  br label %45

45:                                               ; preds = %41, %2
  %46 = phi double [ %42, %41 ], [ %10, %2 ]
  %47 = phi double [ %44, %41 ], [ %7, %2 ]
  %48 = getelementptr inbounds double, ptr %0, i64 5
  %49 = load double, ptr %48, align 8, !tbaa !34
  %50 = fmul double %49, %49
  %51 = getelementptr inbounds double, ptr %0, i64 4
  %52 = load double, ptr %51, align 8, !tbaa !34
  %53 = fneg double %50
  %54 = fmul double %52, %53
  %55 = fmul double %52, %54
  %56 = tail call double @llvm.fmuladd.f64(double %55, double %47, double %46)
  %57 = fmul double %47, %50
  %58 = tail call double @llvm.fmuladd.f64(double %57, double %47, double %56)
  %59 = fneg double %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %60 = getelementptr inbounds double, ptr %0, i64 3
  %61 = load double, ptr %60, align 8, !tbaa !34
  %62 = fmul double %61, %59
  store double %62, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %63) #12
  %65 = load double, ptr %64, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %65
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov7f_mesh1EPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %7 = getelementptr inbounds double, ptr %0, i64 3
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = fdiv double 0x400921FB54442D18, %8
  %10 = getelementptr inbounds double, ptr %0, i64 4
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = fdiv double 0x400921FB54442D18, %11
  %13 = load double, ptr %0, align 8, !tbaa !34
  %14 = fmul double %8, 2.000000e+00
  %15 = tail call double @fmod(double noundef %13, double noundef %14) #10
  %16 = fcmp olt double %15, 0.000000e+00
  %17 = load double, ptr %7, align 8, !tbaa !34
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 2.000000e+00, double %15)
  %19 = select i1 %16, double %18, double %15
  %20 = fsub double %19, %17
  %21 = tail call double @llvm.fabs.f64(double %20)
  %22 = getelementptr inbounds double, ptr %0, i64 5
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = fmul double %23, %21
  %25 = getelementptr inbounds double, ptr %0, i64 1
  %26 = load double, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds double, ptr %0, i64 2
  %28 = load double, ptr %27, align 8, !tbaa !34
  %29 = fmul double %12, %28
  %30 = tail call double @cos(double noundef %29) #10
  %31 = getelementptr inbounds double, ptr %0, i64 6
  %32 = load double, ptr %31, align 8, !tbaa !34
  %33 = fneg double %30
  %34 = tail call double @llvm.fmuladd.f64(double %33, double %32, double %26)
  %35 = getelementptr inbounds double, ptr %0, i64 7
  %36 = load double, ptr %35, align 8, !tbaa !34
  %37 = fmul double %34, %36
  %38 = fmul double %24, %24
  %39 = tail call double @llvm.fmuladd.f64(double %37, double %37, double %38)
  %40 = tail call double @llvm.sqrt.f64(double %39)
  %41 = fneg double %40
  store double %41, ptr %3, align 8, !tbaa !34
  %42 = load double, ptr %0, align 8, !tbaa !34
  %43 = load double, ptr %7, align 8, !tbaa !34
  %44 = fsub double %42, %43
  %45 = fmul double %43, 2.000000e+00
  %46 = tail call double @fmod(double noundef %44, double noundef %45) #10
  %47 = fcmp olt double %46, 0.000000e+00
  %48 = load double, ptr %7, align 8, !tbaa !34
  %49 = tail call double @llvm.fmuladd.f64(double %48, double 2.000000e+00, double %46)
  %50 = select i1 %47, double %49, double %46
  %51 = fsub double %50, %48
  %52 = tail call double @llvm.fabs.f64(double %51)
  %53 = load double, ptr %22, align 8, !tbaa !34
  %54 = fmul double %53, %52
  %55 = load double, ptr %25, align 8, !tbaa !34
  %56 = load double, ptr %27, align 8, !tbaa !34
  %57 = fmul double %12, %56
  %58 = tail call double @cos(double noundef %57) #10
  %59 = load double, ptr %31, align 8, !tbaa !34
  %60 = tail call double @llvm.fmuladd.f64(double %58, double %59, double %55)
  %61 = load double, ptr %35, align 8, !tbaa !34
  %62 = fmul double %60, %61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %63 = fmul double %54, %54
  %64 = tail call double @llvm.fmuladd.f64(double %62, double %62, double %63)
  %65 = tail call double @llvm.sqrt.f64(double %64)
  %66 = fneg double %65
  store double %66, ptr %4, align 8, !tbaa !34
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %68 = load double, ptr %67, align 8, !tbaa !34
  store double %68, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %69 = load double, ptr %27, align 8, !tbaa !34
  %70 = load double, ptr %10, align 8, !tbaa !34
  %71 = fmul double %70, 2.000000e+00
  %72 = call double @fmod(double noundef %69, double noundef %71) #10
  %73 = fcmp olt double %72, 0.000000e+00
  %74 = load double, ptr %10, align 8, !tbaa !34
  %75 = call double @llvm.fmuladd.f64(double %74, double 2.000000e+00, double %72)
  %76 = select i1 %73, double %75, double %72
  %77 = fsub double %76, %74
  %78 = call double @llvm.fabs.f64(double %77)
  %79 = load double, ptr %22, align 8, !tbaa !34
  %80 = fmul double %79, %78
  %81 = load double, ptr %25, align 8, !tbaa !34
  %82 = load double, ptr %0, align 8, !tbaa !34
  %83 = fmul double %9, %82
  %84 = call double @cos(double noundef %83) #10
  %85 = load double, ptr %31, align 8, !tbaa !34
  %86 = call double @llvm.fmuladd.f64(double %84, double %85, double %81)
  %87 = load double, ptr %35, align 8, !tbaa !34
  %88 = fmul double %86, %87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %89 = fmul double %80, %80
  %90 = call double @llvm.fmuladd.f64(double %88, double %88, double %89)
  %91 = call double @llvm.sqrt.f64(double %90)
  %92 = fneg double %91
  store double %92, ptr %5, align 8, !tbaa !34
  %93 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %94 = load double, ptr %93, align 8, !tbaa !34
  store double %94, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %95 = load double, ptr %27, align 8, !tbaa !34
  %96 = load double, ptr %10, align 8, !tbaa !34
  %97 = fsub double %95, %96
  %98 = fmul double %96, 2.000000e+00
  %99 = call double @fmod(double noundef %97, double noundef %98) #10
  %100 = fcmp olt double %99, 0.000000e+00
  %101 = load double, ptr %10, align 8, !tbaa !34
  %102 = call double @llvm.fmuladd.f64(double %101, double 2.000000e+00, double %99)
  %103 = select i1 %100, double %102, double %99
  %104 = fsub double %103, %101
  %105 = call double @llvm.fabs.f64(double %104)
  %106 = load double, ptr %22, align 8, !tbaa !34
  %107 = fmul double %106, %105
  %108 = load double, ptr %25, align 8, !tbaa !34
  %109 = load double, ptr %0, align 8, !tbaa !34
  %110 = fmul double %9, %109
  %111 = call double @cos(double noundef %110) #10
  %112 = load double, ptr %31, align 8, !tbaa !34
  %113 = fneg double %111
  %114 = call double @llvm.fmuladd.f64(double %113, double %112, double %108)
  %115 = load double, ptr %35, align 8, !tbaa !34
  %116 = fmul double %114, %115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %117 = fmul double %107, %107
  %118 = call double @llvm.fmuladd.f64(double %116, double %116, double %117)
  %119 = call double @llvm.sqrt.f64(double %118)
  %120 = fneg double %119
  store double %120, ptr %6, align 8, !tbaa !34
  %121 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %122 = load double, ptr %121, align 8, !tbaa !34
  %123 = fneg double %122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %123
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov7f_mitreEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load <2 x double>, ptr %8, align 8, !tbaa !34
  %10 = fmul <2 x double> %9, %9
  %11 = fmul double %7, 4.000000e+00
  %12 = extractelement <2 x double> %10, i64 0
  %13 = fadd double %7, %12
  %14 = extractelement <2 x double> %10, i64 1
  %15 = fadd double %13, %14
  %16 = fsub double 1.000000e+00, %12
  %17 = fsub double %16, %14
  %18 = fneg double %12
  %19 = fmul double %17, %18
  %20 = tail call double @llvm.fmuladd.f64(double %11, double %15, double %19)
  %21 = fneg double %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %22 = getelementptr inbounds double, ptr %0, i64 3
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = fmul double %23, %21
  store double %24, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %25) #12
  %27 = load double, ptr %26, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %27
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov13f_nodal_cubicEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = getelementptr inbounds double, ptr %0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fmul double %7, %7
  %9 = getelementptr inbounds double, ptr %0, i64 2
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = fmul double %10, %10
  %12 = fmul double %10, %11
  %13 = tail call double @llvm.fmuladd.f64(double %8, double %7, double %12)
  %14 = fmul double %7, -6.000000e+00
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %10, double %13)
  %16 = fneg double %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %17 = getelementptr inbounds double, ptr %0, i64 3
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = fmul double %18, %16
  store double %19, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %20) #12
  %22 = load double, ptr %21, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov5f_oddEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = fneg double %13
  %15 = fmul double %13, %14
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %7, double %15)
  %17 = fmul double %12, -2.000000e+00
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %7, double %16)
  %19 = fmul double %13, 2.000000e+00
  %20 = tail call double @llvm.fmuladd.f64(double %19, double %12, double %18)
  %21 = fadd double %7, %20
  %22 = fsub double %21, %13
  %23 = fsub double %7, %12
  %24 = fneg double %23
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %23, double %22)
  %26 = fneg double %10
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %10, double %25)
  %28 = fmul double %10, 2.000000e+00
  %29 = fneg double %28
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %7, double %27)
  %31 = tail call double @llvm.fmuladd.f64(double %26, double %13, double %30)
  %32 = tail call double @llvm.fmuladd.f64(double %28, double %12, double %31)
  %33 = fadd double %10, %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %34 = getelementptr inbounds double, ptr %0, i64 3
  %35 = load double, ptr %34, align 8, !tbaa !34
  %36 = fmul double %35, %33
  store double %36, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %37) #12
  %39 = load double, ptr %38, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %39
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov18f_ovals_of_cassiniEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load <2 x double>, ptr %8, align 8, !tbaa !34
  %10 = fmul <2 x double> %9, %9
  %11 = extractelement <2 x double> %10, i64 0
  %12 = fadd double %7, %11
  %13 = extractelement <2 x double> %10, i64 1
  %14 = fadd double %12, %13
  %15 = getelementptr inbounds double, ptr %0, i64 4
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %14)
  %18 = getelementptr inbounds double, ptr %0, i64 6
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fadd double %7, %13
  %21 = fneg double %19
  %22 = fmul double %16, %21
  %23 = fmul double %16, %22
  %24 = fmul double %20, %23
  %25 = tail call double @llvm.fmuladd.f64(double %17, double %17, double %24)
  %26 = getelementptr inbounds double, ptr %0, i64 5
  %27 = load double, ptr %26, align 8, !tbaa !34
  %28 = fneg double %27
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %27, double %25)
  %30 = fneg double %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %31 = getelementptr inbounds double, ptr %0, i64 3
  %32 = load double, ptr %31, align 8, !tbaa !34
  %33 = fmul double %32, %30
  store double %33, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %34) #12
  %36 = load double, ptr %35, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %36
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov12f_paraboloidEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds double, ptr %0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = fneg double %8
  %10 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %9)
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %10)
  %14 = fneg double %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %15 = getelementptr inbounds double, ptr %0, i64 3
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = fmul double %16, %14
  store double %17, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %18) #12
  %20 = load double, ptr %19, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov17f_parabolic_torusEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = getelementptr inbounds double, ptr %0, i64 4
  %15 = load <2 x double>, ptr %14, align 8, !tbaa !34
  %16 = fmul <2 x double> %15, %15
  %17 = fmul double %7, 2.000000e+00
  %18 = fmul double %17, %10
  %19 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %18)
  %20 = fneg double %17
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %12, double %19)
  %22 = extractelement <2 x double> %16, i64 0
  %23 = extractelement <2 x double> %16, i64 1
  %24 = fadd double %22, %23
  %25 = fneg double %24
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %7, double %21)
  %27 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %26)
  %28 = fmul double %10, -2.000000e+00
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %12, double %27)
  %30 = fsub double %22, %23
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %10, double %29)
  %32 = fadd double %13, %31
  %33 = tail call double @llvm.fmuladd.f64(double %24, double %12, double %32)
  %34 = tail call double @llvm.fmuladd.f64(double %30, double %30, double %33)
  %35 = fneg double %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %36 = getelementptr inbounds double, ptr %0, i64 3
  %37 = load double, ptr %36, align 8, !tbaa !34
  %38 = fmul double %37, %35
  store double %38, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %39) #12
  %41 = load double, ptr %40, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %41
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov4f_phEPdj(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds double, ptr %0, i64 2
  %5 = load double, ptr %4, align 8, !tbaa !34
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = tail call double @llvm.sqrt.f64(double %7)
  %9 = getelementptr inbounds double, ptr %0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = tail call double @atan2(double noundef %8, double noundef %10) #10
  ret double %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov8f_pillowEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load <2 x double>, ptr %8, align 8, !tbaa !34
  %10 = fmul <2 x double> %9, %9
  %11 = extractelement <2 x double> %10, i64 0
  %12 = fmul <2 x double> %10, %10
  %13 = extractelement <2 x double> %12, i64 0
  %14 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %13)
  %15 = extractelement <2 x double> %10, i64 1
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %14)
  %17 = fadd double %7, %11
  %18 = fadd double %17, %15
  %19 = fsub double %16, %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %20 = getelementptr inbounds double, ptr %0, i64 3
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = fmul double %21, %19
  store double %22, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %23) #12
  %25 = load double, ptr %24, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov10f_piriformEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = fneg double %7
  %9 = fmul double %6, %8
  %10 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %9)
  %11 = getelementptr inbounds double, ptr %0, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %10)
  %14 = getelementptr inbounds double, ptr %0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %13)
  %17 = fneg double %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %18 = getelementptr inbounds double, ptr %0, i64 3
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fmul double %19, %17
  store double %20, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %21) #12
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = fneg double %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov13f_piriform_2dEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = getelementptr inbounds double, ptr %0, i64 7
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = fcmp ogt double %10, 0.000000e+00
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %7)
  %16 = tail call double @llvm.sqrt.f64(double %15)
  %17 = getelementptr inbounds double, ptr %0, i64 8
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = fsub double %16, %18
  %20 = getelementptr inbounds double, ptr %0, i64 9
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = fmul double %21, 0x3F91DF46A2529D39
  %23 = fcmp une double %22, 0.000000e+00
  br i1 %23, label %24, label %37

24:                                               ; preds = %12
  %25 = tail call double @cos(double noundef %22) #10
  %26 = load double, ptr %8, align 8, !tbaa !34
  %27 = tail call double @sin(double noundef %22) #10
  %28 = fneg double %26
  %29 = fmul double %27, %28
  %30 = tail call double @llvm.fmuladd.f64(double %19, double %25, double %29)
  store double %30, ptr %0, align 8, !tbaa !34
  %31 = tail call double @sin(double noundef %22) #10
  %32 = load double, ptr %8, align 8, !tbaa !34
  %33 = tail call double @cos(double noundef %22) #10
  %34 = fmul double %32, %33
  %35 = tail call double @llvm.fmuladd.f64(double %19, double %31, double %34)
  store double %35, ptr %8, align 8, !tbaa !34
  %36 = load double, ptr %0, align 8, !tbaa !34
  br label %38

37:                                               ; preds = %12
  store double %19, ptr %0, align 8, !tbaa !34
  br label %38

38:                                               ; preds = %37, %24
  %39 = phi double [ %19, %37 ], [ %36, %24 ]
  %40 = fmul double %39, %39
  br label %41

41:                                               ; preds = %38, %2
  %42 = phi double [ %39, %38 ], [ %6, %2 ]
  %43 = phi double [ %40, %38 ], [ %7, %2 ]
  %44 = load double, ptr %8, align 8, !tbaa !34
  %45 = getelementptr inbounds double, ptr %0, i64 4
  %46 = load double, ptr %45, align 8, !tbaa !34
  %47 = getelementptr inbounds double, ptr %0, i64 6
  %48 = load double, ptr %47, align 8, !tbaa !34
  %49 = fneg double %46
  %50 = fmul double %48, %49
  %51 = fmul double %48, %50
  %52 = fmul double %43, %51
  %53 = fmul double %42, %52
  %54 = tail call double @llvm.fmuladd.f64(double %44, double %44, double %53)
  %55 = getelementptr inbounds double, ptr %0, i64 5
  %56 = load double, ptr %55, align 8, !tbaa !34
  %57 = fneg double %56
  %58 = fmul double %48, %57
  %59 = fmul double %48, %58
  %60 = fmul double %43, %59
  %61 = tail call double @llvm.fmuladd.f64(double %60, double %43, double %54)
  %62 = fneg double %61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %63 = getelementptr inbounds double, ptr %0, i64 3
  %64 = load double, ptr %63, align 8, !tbaa !34
  %65 = fmul double %64, %62
  store double %65, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %66) #12
  %68 = load double, ptr %67, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %68
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov7f_poly4EPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = getelementptr inbounds double, ptr %0, i64 1
  %4 = load double, ptr %3, align 8, !tbaa !34
  %5 = fmul double %4, %4
  %6 = getelementptr inbounds double, ptr %0, i64 3
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds double, ptr %0, i64 4
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %4, double %7)
  %11 = getelementptr inbounds double, ptr %0, i64 5
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %5, double %10)
  %14 = getelementptr inbounds double, ptr %0, i64 6
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fmul double %5, %15
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %4, double %13)
  %18 = getelementptr inbounds double, ptr %0, i64 7
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fmul double %5, %19
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %5, double %17)
  %22 = fcmp olt double %21, -5.000000e+00
  %23 = select i1 %22, double -5.000000e+00, double %21
  %24 = load double, ptr %0, align 8, !tbaa !34
  %25 = getelementptr inbounds double, ptr %0, i64 2
  %26 = load double, ptr %25, align 8, !tbaa !34
  %27 = fmul double %26, %26
  %28 = tail call double @llvm.fmuladd.f64(double %24, double %24, double %27)
  %29 = tail call double @llvm.sqrt.f64(double %28)
  %30 = fsub double %29, %23
  ret double %30
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov11f_polytubesEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds double, ptr %0, i64 4
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds double, ptr %0, i64 5
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds double, ptr %0, i64 6
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds double, ptr %0, i64 7
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds double, ptr %0, i64 8
  %16 = load double, ptr %15, align 8, !tbaa !34
  store double -1.000000e+04, ptr %3, align 8, !tbaa !34
  %17 = getelementptr inbounds double, ptr %0, i64 3
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = fptosi double %18 to i32
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %2
  %22 = fmul double %6, %6
  %23 = fmul double %22, %16
  %24 = fmul double %22, %14
  %25 = tail call double @llvm.fmuladd.f64(double %10, double %6, double %8)
  %26 = tail call double @llvm.fmuladd.f64(double %12, double %22, double %25)
  %27 = tail call double @llvm.fmuladd.f64(double %24, double %6, double %26)
  %28 = tail call double @llvm.fmuladd.f64(double %23, double %22, double %27)
  %29 = fneg double %28
  %30 = getelementptr inbounds double, ptr %0, i64 2
  br label %31

31:                                               ; preds = %21, %31
  %32 = phi double [ %18, %21 ], [ %53, %31 ]
  %33 = phi i32 [ 0, %21 ], [ %52, %31 ]
  %34 = load double, ptr %0, align 8, !tbaa !34
  %35 = fdiv double 0x401921FB54442D18, %32
  %36 = sitofp i32 %33 to double
  %37 = fmul double %35, %36
  %38 = call double @sin(double noundef %37) #10
  %39 = call double @llvm.fmuladd.f64(double %29, double %38, double %34)
  %40 = load double, ptr %30, align 8, !tbaa !34
  %41 = load double, ptr %17, align 8, !tbaa !34
  %42 = fdiv double 0x401921FB54442D18, %41
  %43 = fmul double %42, %36
  %44 = call double @cos(double noundef %43) #10
  %45 = call double @llvm.fmuladd.f64(double %29, double %44, double %40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %46 = fmul double %45, %45
  %47 = call double @llvm.fmuladd.f64(double %39, double %39, double %46)
  %48 = call double @llvm.sqrt.f64(double %47)
  %49 = fneg double %48
  store double %49, ptr %4, align 8, !tbaa !34
  %50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %51 = load double, ptr %50, align 8, !tbaa !34
  store double %51, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %52 = add nuw nsw i32 %33, 1
  %53 = load double, ptr %17, align 8, !tbaa !34
  %54 = fptosi double %53 to i32
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %31, label %56, !llvm.loop !47

56:                                               ; preds = %31, %2
  %57 = phi double [ -1.000000e+04, %2 ], [ %51, %31 ]
  %58 = fneg double %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %58
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov9f_quantumEPdj(ptr nocapture noundef %0, i32 %1) #2 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fcmp oeq double %3, 0.000000e+00
  %5 = getelementptr inbounds double, ptr %0, i64 2
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fcmp oeq double %6, 0.000000e+00
  %8 = select i1 %4, i1 %7, i1 false
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store double 0x3EB0C6F7A0B5ED8D, ptr %0, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %2, %9
  %11 = phi double [ 0x3EB0C6F7A0B5ED8D, %9 ], [ %3, %2 ]
  %12 = fmul double %6, %6
  %13 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %12)
  %14 = tail call double @llvm.sqrt.f64(double %13)
  %15 = getelementptr inbounds double, ptr %0, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = tail call double @atan2(double noundef %14, double noundef %16) #10
  %18 = tail call double @cos(double noundef %17) #10
  %19 = load double, ptr %15, align 8, !tbaa !34
  %20 = fmul double %19, %19
  %21 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %20)
  %22 = tail call double @llvm.sqrt.f64(double %21)
  %23 = fmul double %22, 2.000000e+00
  %24 = fmul double %23, %23
  %25 = fmul double %23, 0xBFD5555551C112DA
  %26 = tail call double @exp(double noundef %25) #10
  %27 = fmul double %26, %24
  %28 = fmul double %18, 3.000000e+00
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %18, double -1.000000e+00)
  %30 = fmul double %29, %27
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %30, double -1.200000e+01)
  %32 = fmul double %31, -1.000000e-01
  ret double %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov20f_quartic_paraboloidEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fmul double %10, %10
  %12 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %11)
  %13 = getelementptr inbounds double, ptr %0, i64 1
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = fsub double %12, %14
  %16 = fneg double %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %17 = getelementptr inbounds double, ptr %0, i64 3
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = fmul double %18, %16
  store double %19, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %20) #12
  %22 = load double, ptr %21, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov16f_quartic_saddleEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fneg double %10
  %12 = fmul double %10, %11
  %13 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %12)
  %14 = getelementptr inbounds double, ptr %0, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fsub double %13, %15
  %17 = fneg double %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %18 = getelementptr inbounds double, ptr %0, i64 3
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fmul double %19, %17
  store double %20, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %21) #12
  %23 = load double, ptr %22, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov18f_quartic_cylinderEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fadd double %7, %10
  %12 = getelementptr inbounds double, ptr %0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = fmul double %13, %11
  %15 = getelementptr inbounds double, ptr %0, i64 5
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = fmul double %16, %16
  %18 = fmul double %11, %17
  %19 = tail call double @llvm.fmuladd.f64(double %14, double %13, double %18)
  %20 = getelementptr inbounds double, ptr %0, i64 4
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = fneg double %17
  %23 = fmul double %21, %22
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %21, double %19)
  %25 = fneg double %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %26 = getelementptr inbounds double, ptr %0, i64 3
  %27 = load double, ptr %26, align 8, !tbaa !34
  %28 = fmul double %27, %25
  store double %28, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %29) #12
  %31 = load double, ptr %30, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov3f_rEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds double, ptr %0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !34
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = tail call double @llvm.sqrt.f64(double %10)
  ret double %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN3pov7f_ridgeEPdj(ptr nocapture noundef readonly %0, i32 %1) #3 {
  %3 = alloca [3 x double], align 16
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca [3 x double], align 16
  %7 = alloca %"struct.pov::Pattern_Struct", align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %10 = load <2 x double>, ptr %0, align 8, !tbaa !34
  store <2 x double> %10, ptr %3, align 16, !tbaa !34
  %11 = getelementptr inbounds double, ptr %3, i64 2
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  store double %13, ptr %11, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %7) #11
  %14 = getelementptr inbounds double, ptr %0, i64 8
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fptosi double %15 to i32
  %17 = trunc i32 %16 to i16
  %18 = shl i16 %17, 4
  %19 = and i16 %18, 48
  %20 = getelementptr inbounds %"struct.pov::Pattern_Struct", ptr %7, i64 0, i32 2
  store i16 %19, ptr %20, align 4, !tbaa !38
  %21 = getelementptr inbounds double, ptr %0, i64 3
  %22 = load double, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds double, ptr %0, i64 4
  %24 = load double, ptr %23, align 8, !tbaa !34
  %25 = fptosi double %24 to i32
  %26 = getelementptr inbounds double, ptr %0, i64 5
  %27 = load double, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds double, ptr %0, i64 6
  %29 = load double, ptr %28, align 8, !tbaa !34
  store double %29, ptr %4, align 8, !tbaa !34
  %30 = getelementptr inbounds double, ptr %0, i64 7
  %31 = load double, ptr %30, align 8, !tbaa !34
  store double %31, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %32 = fsub double 1.000000e+00, %31
  store double %32, ptr %8, align 8, !tbaa !34
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  %34 = load double, ptr %33, align 8, !tbaa !34
  %35 = fdiv double 1.000000e+00, %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %36 = fsub double 1.000000e+00, %29
  store double %36, ptr %9, align 8, !tbaa !34
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  %38 = load double, ptr %37, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  %39 = load double, ptr %23, align 8, !tbaa !34
  %40 = sitofp i32 %25 to double
  %41 = fsub double %39, %40
  %42 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %7) #12
  %43 = load double, ptr %5, align 8, !tbaa !34
  %44 = fsub double %42, %43
  %45 = call double @llvm.fabs.f64(double %44)
  %46 = fmul double %35, %45
  %47 = load double, ptr %4, align 8, !tbaa !34
  %48 = fsub double %46, %47
  %49 = icmp slt i32 %25, 2
  br i1 %49, label %69, label %50

50:                                               ; preds = %2, %50
  %51 = phi i32 [ %67, %50 ], [ 2, %2 ]
  %52 = phi double [ %65, %50 ], [ %22, %2 ]
  %53 = phi double [ %66, %50 ], [ %27, %2 ]
  %54 = phi double [ %63, %50 ], [ %48, %2 ]
  %55 = phi double [ %64, %50 ], [ 1.000000e+00, %2 ]
  call void @_ZN3pov6VScaleEPdPKdd(ptr noundef nonnull %6, ptr noundef nonnull %3, double noundef %52) #12
  %56 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  %57 = load double, ptr %5, align 8, !tbaa !34
  %58 = fsub double %56, %57
  %59 = call double @llvm.fabs.f64(double %58)
  %60 = fmul double %35, %59
  %61 = load double, ptr %4, align 8, !tbaa !34
  %62 = fsub double %60, %61
  %63 = call double @llvm.fmuladd.f64(double %53, double %62, double %54)
  %64 = fadd double %55, %53
  %65 = fmul double %22, %52
  %66 = fmul double %27, %53
  %67 = add nuw i32 %51, 1
  %68 = icmp eq i32 %51, %25
  br i1 %68, label %69, label %50, !llvm.loop !48

69:                                               ; preds = %50, %2
  %70 = phi double [ 1.000000e+00, %2 ], [ %64, %50 ]
  %71 = phi double [ %48, %2 ], [ %63, %50 ]
  %72 = phi double [ %27, %2 ], [ %66, %50 ]
  %73 = phi double [ %22, %2 ], [ %65, %50 ]
  %74 = fcmp une double %41, 0.000000e+00
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  call void @_ZN3pov6VScaleEPdPKdd(ptr noundef nonnull %6, ptr noundef nonnull %3, double noundef %73) #12
  %76 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  %77 = load double, ptr %5, align 8, !tbaa !34
  %78 = fsub double %76, %77
  %79 = call double @llvm.fabs.f64(double %78)
  %80 = fmul double %35, %79
  %81 = load double, ptr %4, align 8, !tbaa !34
  %82 = fsub double %80, %81
  %83 = fmul double %72, %82
  %84 = call double @llvm.fmuladd.f64(double %83, double %41, double %71)
  %85 = call double @llvm.fmuladd.f64(double %72, double %41, double %70)
  br label %86

86:                                               ; preds = %75, %69
  %87 = phi double [ %85, %75 ], [ %70, %69 ]
  %88 = phi double [ %84, %75 ], [ %71, %69 ]
  %89 = fdiv double 1.000000e+00, %38
  %90 = fmul double %89, %88
  %91 = fdiv double %90, %87
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret double %91
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN3pov11f_ridged_mfEPdj(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = alloca [3 x double], align 16
  %4 = alloca %"struct.pov::Pattern_Struct", align 8
  %5 = tail call noundef ptr @_ZN3pov18POVFPU_GetFunctionEj(i32 noundef %1) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #11
  %6 = getelementptr inbounds double, ptr %0, i64 8
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fptosi double %7 to i32
  %9 = trunc i32 %8 to i16
  %10 = shl i16 %9, 4
  %11 = and i16 %10, 48
  %12 = getelementptr inbounds %"struct.pov::Pattern_Struct", ptr %4, i64 0, i32 2
  store i16 %11, ptr %12, align 4, !tbaa !38
  %13 = load <2 x double>, ptr %0, align 8, !tbaa !34
  store <2 x double> %13, ptr %3, align 16, !tbaa !34
  %14 = getelementptr inbounds double, ptr %0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  store double %15, ptr %16, align 16, !tbaa !34
  %17 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %5, i64 0, i32 14
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %2
  %21 = getelementptr inbounds double, ptr %0, i64 5
  %22 = load double, ptr %21, align 8, !tbaa !34
  %23 = fadd double %22, 1.000000e+00
  %24 = fmul double %23, 8.000000e+00
  %25 = fptoui double %24 to i64
  %26 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %25, ptr noundef nonnull @.str, i32 noundef 995, ptr noundef nonnull @.str.1) #12
  %27 = load double, ptr %21, align 8, !tbaa !34
  %28 = fcmp ult double %27, 0.000000e+00
  br i1 %28, label %46, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds double, ptr %0, i64 3
  %31 = getelementptr inbounds double, ptr %0, i64 4
  br label %32

32:                                               ; preds = %29, %32
  %33 = phi i64 [ 0, %29 ], [ %41, %32 ]
  %34 = phi double [ 1.000000e+00, %29 ], [ %40, %32 ]
  %35 = load double, ptr %30, align 8, !tbaa !34
  %36 = fneg double %35
  %37 = tail call double @pow(double noundef %34, double noundef %36) #10
  %38 = getelementptr inbounds double, ptr %26, i64 %33
  store double %37, ptr %38, align 8, !tbaa !34
  %39 = load double, ptr %31, align 8, !tbaa !34
  %40 = fmul double %34, %39
  %41 = add nuw i64 %33, 1
  %42 = trunc i64 %41 to i32
  %43 = sitofp i32 %42 to double
  %44 = load double, ptr %21, align 8, !tbaa !34
  %45 = fcmp ult double %44, %43
  br i1 %45, label %46, label %32, !llvm.loop !53

46:                                               ; preds = %32, %20
  store ptr %26, ptr %17, align 8, !tbaa !49
  br label %47

47:                                               ; preds = %2, %46
  %48 = phi ptr [ %26, %46 ], [ %18, %2 ]
  %49 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %50 = call double @llvm.fmuladd.f64(double %49, double 2.000000e+00, double -1.000000e+00)
  %51 = fcmp olt double %50, 0.000000e+00
  %52 = fneg double %50
  %53 = select i1 %51, double %52, double %50
  %54 = getelementptr inbounds double, ptr %0, i64 6
  %55 = load double, ptr %54, align 8, !tbaa !34
  %56 = fsub double %55, %53
  %57 = fmul double %56, %56
  %58 = getelementptr inbounds double, ptr %0, i64 5
  %59 = load double, ptr %58, align 8, !tbaa !34
  %60 = fcmp ogt double %59, 1.000000e+00
  br i1 %60, label %61, label %98

61:                                               ; preds = %47
  %62 = getelementptr inbounds double, ptr %0, i64 4
  %63 = getelementptr inbounds double, ptr %0, i64 7
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ 1, %61 ], [ %93, %64 ]
  %66 = phi double [ %57, %61 ], [ %92, %64 ]
  %67 = phi double [ %57, %61 ], [ %89, %64 ]
  %68 = load double, ptr %62, align 8, !tbaa !34
  %69 = load <2 x double>, ptr %3, align 16, !tbaa !34
  %70 = insertelement <2 x double> poison, double %68, i64 0
  %71 = shufflevector <2 x double> %70, <2 x double> poison, <2 x i32> zeroinitializer
  %72 = fmul <2 x double> %71, %69
  store <2 x double> %72, ptr %3, align 16, !tbaa !34
  %73 = load double, ptr %16, align 16, !tbaa !34
  %74 = fmul double %68, %73
  store double %74, ptr %16, align 16, !tbaa !34
  %75 = load double, ptr %63, align 8, !tbaa !34
  %76 = fmul double %67, %75
  %77 = fcmp ogt double %76, 1.000000e+00
  %78 = select i1 %77, double 1.000000e+00, double %76
  %79 = fcmp olt double %78, 0.000000e+00
  %80 = select i1 %79, double 0.000000e+00, double %78
  %81 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %82 = call double @llvm.fmuladd.f64(double %81, double 2.000000e+00, double -1.000000e+00)
  %83 = fcmp olt double %82, 0.000000e+00
  %84 = fneg double %82
  %85 = select i1 %83, double %84, double %82
  %86 = load double, ptr %54, align 8, !tbaa !34
  %87 = fsub double %86, %85
  %88 = fmul double %87, %87
  %89 = fmul double %80, %88
  %90 = getelementptr inbounds double, ptr %48, i64 %65
  %91 = load double, ptr %90, align 8, !tbaa !34
  %92 = call double @llvm.fmuladd.f64(double %89, double %91, double %66)
  %93 = add nuw i64 %65, 1
  %94 = trunc i64 %93 to i32
  %95 = sitofp i32 %94 to double
  %96 = load double, ptr %58, align 8, !tbaa !34
  %97 = fcmp ogt double %96, %95
  br i1 %97, label %64, label %98, !llvm.loop !54

98:                                               ; preds = %64, %47
  %99 = phi double [ %57, %47 ], [ %92, %64 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret double %99
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov13f_rounded_boxEPdj(ptr noundef nonnull %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %6 = getelementptr inbounds double, ptr %0, i64 4
  %7 = getelementptr inbounds double, ptr %0, i64 3
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds double, ptr %0, i64 6
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = fsub double %10, %8
  %12 = getelementptr inbounds double, ptr %0, i64 1
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = fcmp olt double %14, %11
  %16 = fsub double %14, %11
  %17 = select i1 %15, double 0.000000e+00, double %16
  store double %17, ptr %5, align 8, !tbaa !34
  %18 = fsub double %8, %10
  %19 = load <2 x double>, ptr %6, align 8, !tbaa !34
  %20 = extractelement <2 x double> %19, i64 0
  %21 = fsub double %20, %8
  %22 = extractelement <2 x double> %19, i64 1
  %23 = fsub double %22, %8
  %24 = load <2 x double>, ptr %0, align 8, !tbaa !34
  %25 = extractelement <2 x double> %24, i64 0
  %26 = fcmp olt double %25, %21
  %27 = fsub double %25, %21
  %28 = select i1 %26, double 0.000000e+00, double %27
  store double %28, ptr %3, align 8, !tbaa !34
  %29 = extractelement <2 x double> %24, i64 1
  %30 = fcmp olt double %29, %23
  %31 = fsub double %29, %23
  %32 = select i1 %30, double 0.000000e+00, double %31
  store double %32, ptr %4, align 8, !tbaa !34
  %33 = insertelement <2 x double> poison, double %8, i64 0
  %34 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> zeroinitializer
  %35 = fsub <2 x double> %34, %19
  %36 = fcmp ogt <2 x double> %24, %35
  %37 = fsub <2 x double> %35, %24
  %38 = select <2 x i1> %36, <2 x double> zeroinitializer, <2 x double> %37
  store <2 x double> %38, ptr %0, align 8, !tbaa !34
  %39 = fcmp ogt double %14, %18
  %40 = fsub double %18, %14
  %41 = select i1 %39, double 0.000000e+00, double %40
  store double %41, ptr %13, align 8, !tbaa !34
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %43 = load double, ptr %42, align 8, !tbaa !34
  store double %43, ptr %0, align 8, !tbaa !34
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %45 = load double, ptr %44, align 8, !tbaa !34
  store double %45, ptr %12, align 8, !tbaa !34
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %47 = load double, ptr %46, align 8, !tbaa !34
  store double %47, ptr %13, align 8, !tbaa !34
  %48 = load double, ptr %7, align 8, !tbaa !34
  %49 = load double, ptr %0, align 8, !tbaa !34
  %50 = load double, ptr %12, align 8, !tbaa !34
  %51 = fmul double %50, %50
  %52 = call double @llvm.fmuladd.f64(double %49, double %49, double %51)
  %53 = call double @llvm.fmuladd.f64(double %47, double %47, double %52)
  %54 = call double @llvm.sqrt.f64(double %53)
  %55 = fsub double %54, %48
  %56 = fadd double %55, 0xBEB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %56
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov8f_sphereEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = getelementptr inbounds double, ptr %0, i64 3
  %4 = load double, ptr %3, align 8, !tbaa !34
  %5 = load double, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds double, ptr %0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fmul double %7, %7
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = getelementptr inbounds double, ptr %0, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %9)
  %13 = tail call double @llvm.sqrt.f64(double %12)
  %14 = fsub double %13, %4
  ret double %14
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov8f_spikesEPdj(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load <2 x double>, ptr %5, align 8, !tbaa !34
  %7 = fmul <2 x double> %6, %6
  %8 = extractelement <2 x double> %7, i64 0
  %9 = fadd double %4, %8
  %10 = extractelement <2 x double> %7, i64 1
  %11 = fadd double %9, %10
  %12 = fneg double %11
  %13 = getelementptr inbounds double, ptr %0, i64 6
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = fmul double %14, %12
  %16 = tail call double @exp(double noundef %15) #10
  %17 = getelementptr inbounds double, ptr %0, i64 7
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds double, ptr %0, i64 3
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fmul double %8, %20
  %22 = tail call double @llvm.fmuladd.f64(double %4, double %20, double %21)
  %23 = fadd double %10, %22
  %24 = fneg double %23
  %25 = getelementptr inbounds double, ptr %0, i64 4
  %26 = load double, ptr %25, align 8, !tbaa !34
  %27 = fmul double %26, %24
  %28 = tail call double @exp(double noundef %27) #10
  %29 = fneg double %28
  %30 = tail call double @llvm.fmuladd.f64(double %16, double %18, double %29)
  %31 = load double, ptr %19, align 8, !tbaa !34
  %32 = tail call double @llvm.fmuladd.f64(double %4, double %31, double %8)
  %33 = tail call double @llvm.fmuladd.f64(double %10, double %31, double %32)
  %34 = fneg double %33
  %35 = load double, ptr %25, align 8, !tbaa !34
  %36 = fmul double %35, %34
  %37 = tail call double @exp(double noundef %36) #10
  %38 = fsub double %30, %37
  %39 = load double, ptr %19, align 8, !tbaa !34
  %40 = tail call double @llvm.fmuladd.f64(double %8, double %39, double %4)
  %41 = tail call double @llvm.fmuladd.f64(double %10, double %39, double %40)
  %42 = fneg double %41
  %43 = load double, ptr %25, align 8, !tbaa !34
  %44 = fmul double %43, %42
  %45 = tail call double @exp(double noundef %44) #10
  %46 = fsub double %38, %45
  %47 = fneg double %46
  %48 = getelementptr inbounds double, ptr %0, i64 5
  %49 = load double, ptr %48, align 8, !tbaa !34
  %50 = fmul double %49, %47
  ret double %50
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov11f_spikes_2dEPdj(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = getelementptr inbounds double, ptr %0, i64 3
  %4 = load double, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds double, ptr %0, i64 4
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = load double, ptr %0, align 8, !tbaa !34
  %8 = fmul double %6, %7
  %9 = tail call double @cos(double noundef %8) #10
  %10 = fmul double %4, %9
  %11 = getelementptr inbounds double, ptr %0, i64 5
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = fmul double %12, %14
  %16 = tail call double @cos(double noundef %15) #10
  %17 = fmul double %10, %16
  %18 = getelementptr inbounds double, ptr %0, i64 6
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fneg double %19
  %21 = load double, ptr %0, align 8, !tbaa !34
  %22 = load double, ptr %13, align 8, !tbaa !34
  %23 = fmul double %22, %22
  %24 = tail call double @llvm.fmuladd.f64(double %21, double %21, double %23)
  %25 = fmul double %24, %20
  %26 = tail call double @exp(double noundef %25) #10
  %27 = getelementptr inbounds double, ptr %0, i64 1
  %28 = load double, ptr %27, align 8, !tbaa !34
  %29 = fneg double %28
  %30 = tail call double @llvm.fmuladd.f64(double %17, double %26, double %29)
  %31 = fneg double %30
  ret double %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov8f_spiralEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %9 = load double, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds double, ptr %0, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = fmul double %11, %11
  %13 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %12)
  %14 = tail call double @llvm.sqrt.f64(double %13)
  store double %14, ptr %3, align 8, !tbaa !34
  %15 = fcmp oeq double %9, 0.000000e+00
  %16 = fcmp oeq double %11, 0.000000e+00
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store double 0x3EB0C6F7A0B5ED8D, ptr %0, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %18, %2
  %20 = phi double [ 0x3EB0C6F7A0B5ED8D, %18 ], [ %9, %2 ]
  %21 = tail call double @atan2(double noundef %11, double noundef %20) #10
  %22 = getelementptr inbounds double, ptr %0, i64 3
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = fmul double %21, %23
  %25 = fdiv double %24, 0x401921FB54442D18
  %26 = fadd double %14, %25
  %27 = tail call double @fmod(double noundef %26, double noundef %23) #10
  %28 = load double, ptr %22, align 8, !tbaa !34
  %29 = fneg double %28
  %30 = tail call double @llvm.fmuladd.f64(double %29, double 5.000000e-01, double %27)
  %31 = getelementptr inbounds double, ptr %0, i64 8
  %32 = load double, ptr %31, align 8, !tbaa !34
  %33 = fcmp oeq double %32, 1.000000e+00
  br i1 %33, label %34, label %40

34:                                               ; preds = %19
  %35 = getelementptr inbounds double, ptr %0, i64 1
  %36 = load double, ptr %35, align 8, !tbaa !34
  %37 = fmul double %36, %36
  %38 = tail call double @llvm.fmuladd.f64(double %30, double %30, double %37)
  %39 = tail call double @llvm.sqrt.f64(double %38)
  store double %39, ptr %4, align 8, !tbaa !34
  br label %59

40:                                               ; preds = %19
  %41 = fcmp une double %32, 0.000000e+00
  %42 = tail call double @llvm.fabs.f64(double %30)
  br i1 %41, label %43, label %53

43:                                               ; preds = %40
  %44 = fdiv double 2.000000e+00, %32
  %45 = tail call double @pow(double noundef %42, double noundef %44) #10
  %46 = getelementptr inbounds double, ptr %0, i64 1
  %47 = load double, ptr %46, align 8, !tbaa !34
  %48 = tail call double @llvm.fabs.f64(double %47)
  %49 = tail call double @pow(double noundef %48, double noundef %44) #10
  %50 = fadd double %45, %49
  %51 = fdiv double 1.000000e+00, %44
  %52 = tail call double @pow(double noundef %50, double noundef %51) #10
  store double %52, ptr %4, align 8, !tbaa !34
  br label %59

53:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double %42, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %54 = getelementptr inbounds double, ptr %0, i64 1
  %55 = load double, ptr %54, align 8, !tbaa !34
  %56 = tail call double @llvm.fabs.f64(double %55)
  store double %56, ptr %6, align 8, !tbaa !34
  %57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  %58 = load double, ptr %57, align 8, !tbaa !34
  store double %58, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %59

59:                                               ; preds = %43, %53, %34
  %60 = load double, ptr %0, align 8, !tbaa !34
  %61 = getelementptr inbounds double, ptr %0, i64 1
  %62 = load double, ptr %61, align 8, !tbaa !34
  %63 = fmul double %62, %62
  %64 = call double @llvm.fmuladd.f64(double %60, double %60, double %63)
  %65 = load double, ptr %10, align 8, !tbaa !34
  %66 = call double @llvm.fmuladd.f64(double %65, double %65, double %64)
  %67 = call double @llvm.sqrt.f64(double %66)
  store double %67, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %68 = getelementptr inbounds double, ptr %0, i64 5
  %69 = load double, ptr %68, align 8, !tbaa !34
  %70 = fsub double %69, %67
  store double %70, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %71 = getelementptr inbounds double, ptr %0, i64 4
  %72 = load double, ptr %71, align 8, !tbaa !34
  %73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %74 = load double, ptr %73, align 8, !tbaa !34
  %75 = fsub double %72, %74
  store double %75, ptr %8, align 8, !tbaa !34
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  %77 = load double, ptr %76, align 8, !tbaa !34
  %78 = fneg double %77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %78
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov16f_steiners_romanEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = fmul double %7, %13
  %15 = tail call double @llvm.fmuladd.f64(double %7, double %10, double %14)
  %16 = tail call double @llvm.fmuladd.f64(double %10, double %13, double %15)
  %17 = fmul double %6, %9
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %12, double %16)
  %19 = fneg double %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %20 = getelementptr inbounds double, ptr %0, i64 3
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = fmul double %21, %19
  store double %22, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %23) #12
  %25 = load double, ptr %24, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov11f_strophoidEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 6
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds double, ptr %0, i64 5
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = fsub double %11, %6
  %13 = getelementptr inbounds double, ptr %0, i64 1
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds double, ptr %0, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = fmul double %16, %16
  %18 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %17)
  %19 = getelementptr inbounds double, ptr %0, i64 4
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fneg double %9
  %22 = fmul double %9, %21
  %23 = fmul double %22, %20
  %24 = fmul double %7, %23
  %25 = tail call double @llvm.fmuladd.f64(double %12, double %18, double %24)
  %26 = fmul double %7, %22
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %6, double %25)
  %28 = fneg double %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %29 = getelementptr inbounds double, ptr %0, i64 3
  %30 = load double, ptr %29, align 8, !tbaa !34
  %31 = fmul double %30, %28
  store double %31, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %32) #12
  %34 = load double, ptr %33, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %34
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov14f_strophoid_2dEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 7
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fcmp ogt double %12, 0.000000e+00
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = getelementptr inbounds double, ptr %0, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %7)
  %18 = tail call double @llvm.sqrt.f64(double %17)
  %19 = getelementptr inbounds double, ptr %0, i64 8
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fsub double %18, %20
  %22 = getelementptr inbounds double, ptr %0, i64 9
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = fmul double %23, 0x3F91DF46A2529D39
  %25 = fcmp une double %24, 0.000000e+00
  br i1 %25, label %26, label %40

26:                                               ; preds = %14
  %27 = tail call double @cos(double noundef %24) #10
  %28 = load double, ptr %8, align 8, !tbaa !34
  %29 = tail call double @sin(double noundef %24) #10
  %30 = fneg double %28
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %21, double %27, double %31)
  store double %32, ptr %0, align 8, !tbaa !34
  %33 = tail call double @sin(double noundef %24) #10
  %34 = load double, ptr %8, align 8, !tbaa !34
  %35 = tail call double @cos(double noundef %24) #10
  %36 = fmul double %34, %35
  %37 = tail call double @llvm.fmuladd.f64(double %21, double %33, double %36)
  store double %37, ptr %8, align 8, !tbaa !34
  %38 = load double, ptr %0, align 8, !tbaa !34
  %39 = fmul double %37, %37
  br label %41

40:                                               ; preds = %14
  store double %21, ptr %0, align 8, !tbaa !34
  br label %41

41:                                               ; preds = %40, %26
  %42 = phi double [ %10, %40 ], [ %39, %26 ]
  %43 = phi double [ %21, %40 ], [ %38, %26 ]
  %44 = fmul double %43, %43
  br label %45

45:                                               ; preds = %41, %2
  %46 = phi double [ %43, %41 ], [ %6, %2 ]
  %47 = phi double [ %42, %41 ], [ %10, %2 ]
  %48 = phi double [ %44, %41 ], [ %7, %2 ]
  %49 = getelementptr inbounds double, ptr %0, i64 6
  %50 = load double, ptr %49, align 8, !tbaa !34
  %51 = getelementptr inbounds double, ptr %0, i64 5
  %52 = load double, ptr %51, align 8, !tbaa !34
  %53 = fsub double %52, %46
  %54 = getelementptr inbounds double, ptr %0, i64 4
  %55 = load double, ptr %54, align 8, !tbaa !34
  %56 = fneg double %50
  %57 = fmul double %50, %56
  %58 = fmul double %57, %55
  %59 = fmul double %48, %58
  %60 = tail call double @llvm.fmuladd.f64(double %53, double %47, double %59)
  %61 = fmul double %48, %57
  %62 = tail call double @llvm.fmuladd.f64(double %61, double %46, double %60)
  %63 = fneg double %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %64 = getelementptr inbounds double, ptr %0, i64 3
  %65 = load double, ptr %64, align 8, !tbaa !34
  %66 = fmul double %65, %63
  store double %66, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %67) #12
  %69 = load double, ptr %68, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %69
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov16f_superellipsoidEPdj(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = getelementptr inbounds double, ptr %0, i64 3
  %4 = load double, ptr %3, align 8, !tbaa !34
  %5 = fdiv double 2.000000e+00, %4
  %6 = getelementptr inbounds double, ptr %0, i64 4
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fdiv double 1.000000e+00, %7
  %9 = load double, ptr %0, align 8, !tbaa !34
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = tail call double @pow(double noundef %10, double noundef %5) #10
  %12 = getelementptr inbounds double, ptr %0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = tail call double @llvm.fabs.f64(double %13)
  %15 = tail call double @pow(double noundef %14, double noundef %5) #10
  %16 = fadd double %11, %15
  %17 = load double, ptr %3, align 8, !tbaa !34
  %18 = fmul double %8, %17
  %19 = tail call double @pow(double noundef %16, double noundef %18) #10
  %20 = getelementptr inbounds double, ptr %0, i64 2
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = tail call double @llvm.fabs.f64(double %21)
  %23 = fmul double %8, 2.000000e+00
  %24 = tail call double @pow(double noundef %22, double noundef %23) #10
  %25 = fadd double %19, %24
  %26 = load double, ptr %6, align 8, !tbaa !34
  %27 = fmul double %26, 5.000000e-01
  %28 = tail call double @pow(double noundef %25, double noundef %27) #10
  %29 = fsub double 1.000000e+00, %28
  ret double %29
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov4f_thEPdj(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds double, ptr %0, i64 2
  %5 = load double, ptr %4, align 8, !tbaa !34
  %6 = tail call double @atan2(double noundef %3, double noundef %5) #10
  ret double %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov7f_torusEPdj(ptr nocapture noundef %0, i32 %1) #4 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds double, ptr %0, i64 2
  %5 = load double, ptr %4, align 8, !tbaa !34
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = tail call double @llvm.sqrt.f64(double %7)
  %9 = getelementptr inbounds double, ptr %0, i64 3
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = fsub double %8, %10
  store double %11, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds double, ptr %0, i64 4
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds double, ptr %0, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fmul double %15, %15
  %17 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %16)
  %18 = tail call double @llvm.sqrt.f64(double %17)
  %19 = fsub double %18, %13
  ret double %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov8f_torus2EPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = getelementptr inbounds double, ptr %0, i64 4
  %15 = load <2 x double>, ptr %14, align 8, !tbaa !34
  %16 = fmul <2 x double> %15, %15
  %17 = fmul double %10, %10
  %18 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %17)
  %19 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %18)
  %20 = fmul double %7, 2.000000e+00
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %10, double %19)
  %22 = tail call double @llvm.fmuladd.f64(double %20, double %13, double %21)
  %23 = fmul double %10, 2.000000e+00
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %13, double %22)
  %25 = extractelement <2 x double> %16, i64 0
  %26 = extractelement <2 x double> %16, i64 1
  %27 = fadd double %25, %26
  %28 = fmul double %27, -2.000000e+00
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %7, double %24)
  %30 = fsub double %25, %26
  %31 = fmul double %30, 2.000000e+00
  %32 = tail call double @llvm.fmuladd.f64(double %31, double %10, double %29)
  %33 = tail call double @llvm.fmuladd.f64(double %28, double %13, double %32)
  %34 = tail call double @llvm.fmuladd.f64(double %30, double %30, double %33)
  %35 = fneg double %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %36 = getelementptr inbounds double, ptr %0, i64 3
  %37 = load double, ptr %36, align 8, !tbaa !34
  %38 = fmul double %37, %35
  store double %38, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %39) #12
  %41 = load double, ptr %40, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %41
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov15f_torus_gumdropEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load <2 x double>, ptr %8, align 8, !tbaa !34
  %10 = fmul <2 x double> %9, %9
  %11 = extractelement <2 x double> %10, i64 0
  %12 = extractelement <2 x double> %10, i64 1
  %13 = fadd double %11, %12
  %14 = fmul double %13, %13
  %15 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %14)
  %16 = fmul double %7, 1.700000e+01
  %17 = fmul double %16, %13
  %18 = tail call double @llvm.fmuladd.f64(double %15, double 4.000000e+00, double %17)
  %19 = fadd double %7, %11
  %20 = fadd double %19, %12
  %21 = tail call double @llvm.fmuladd.f64(double %20, double -2.000000e+01, double %18)
  %22 = fadd double %21, 1.700000e+01
  %23 = fneg double %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %24 = getelementptr inbounds double, ptr %0, i64 3
  %25 = load double, ptr %24, align 8, !tbaa !34
  %26 = fmul double %25, %23
  store double %26, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %27) #12
  %29 = load double, ptr %28, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov10f_umbrellaEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds double, ptr %0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds double, ptr %0, i64 2
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = fneg double %8
  %12 = fmul double %10, %11
  %13 = fmul double %10, %12
  %14 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %13)
  %15 = fneg double %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %16 = getelementptr inbounds double, ptr %0, i64 3
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fmul double %17, %15
  store double %18, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %19) #12
  %21 = load double, ptr %20, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov17f_witch_of_agnesiEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = getelementptr inbounds double, ptr %0, i64 4
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fadd double %9, -1.000000e+00
  %11 = load double, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = fmul double %13, %13
  %15 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %14)
  %16 = fmul double %9, %15
  %17 = tail call double @llvm.fmuladd.f64(double %7, double %10, double %16)
  %18 = fneg double %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %19 = getelementptr inbounds double, ptr %0, i64 3
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fmul double %20, %18
  store double %21, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %22) #12
  %24 = load double, ptr %23, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZN3pov20f_witch_of_agnesi_2dEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = load double, ptr %0, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = getelementptr inbounds double, ptr %0, i64 6
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = fcmp ogt double %10, 0.000000e+00
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %7)
  %16 = tail call double @llvm.sqrt.f64(double %15)
  %17 = getelementptr inbounds double, ptr %0, i64 7
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = fsub double %16, %18
  %20 = getelementptr inbounds double, ptr %0, i64 8
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = fmul double %21, 0x3F91DF46A2529D39
  %23 = fcmp une double %22, 0.000000e+00
  br i1 %23, label %24, label %37

24:                                               ; preds = %12
  %25 = tail call double @cos(double noundef %22) #10
  %26 = load double, ptr %8, align 8, !tbaa !34
  %27 = tail call double @sin(double noundef %22) #10
  %28 = fneg double %26
  %29 = fmul double %27, %28
  %30 = tail call double @llvm.fmuladd.f64(double %19, double %25, double %29)
  store double %30, ptr %0, align 8, !tbaa !34
  %31 = tail call double @sin(double noundef %22) #10
  %32 = load double, ptr %8, align 8, !tbaa !34
  %33 = tail call double @cos(double noundef %22) #10
  %34 = fmul double %32, %33
  %35 = tail call double @llvm.fmuladd.f64(double %19, double %31, double %34)
  store double %35, ptr %8, align 8, !tbaa !34
  %36 = load double, ptr %0, align 8, !tbaa !34
  br label %38

37:                                               ; preds = %12
  store double %19, ptr %0, align 8, !tbaa !34
  br label %38

38:                                               ; preds = %37, %24
  %39 = phi double [ %19, %37 ], [ %36, %24 ]
  %40 = fmul double %39, %39
  br label %41

41:                                               ; preds = %38, %2
  %42 = phi double [ %40, %38 ], [ %7, %2 ]
  %43 = getelementptr inbounds double, ptr %0, i64 4
  %44 = load double, ptr %43, align 8, !tbaa !34
  %45 = fmul double %44, %44
  %46 = load double, ptr %8, align 8, !tbaa !34
  %47 = fmul double %42, %46
  %48 = tail call double @llvm.fmuladd.f64(double %45, double %46, double %47)
  %49 = getelementptr inbounds double, ptr %0, i64 5
  %50 = load double, ptr %49, align 8, !tbaa !34
  %51 = fsub double %48, %50
  %52 = fneg double %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store double 1.000000e+01, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %53 = getelementptr inbounds double, ptr %0, i64 3
  %54 = load double, ptr %53, align 8, !tbaa !34
  %55 = fmul double %54, %52
  store double %55, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double -1.000000e+01, ptr %5, align 8, !tbaa !34
  %56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %56) #12
  %58 = load double, ptr %57, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret double %58
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN3pov9f_noise3dEPdj(ptr nocapture noundef readonly %0, i32 %1) #3 {
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %4 = load <2 x double>, ptr %0, align 8, !tbaa !34
  store <2 x double> %4, ptr %3, align 16, !tbaa !34
  %5 = getelementptr inbounds double, ptr %3, i64 2
  %6 = getelementptr inbounds double, ptr %0, i64 2
  %7 = load double, ptr %6, align 8, !tbaa !34
  store double %7, ptr %5, align 16, !tbaa !34
  %8 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret double %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN3pov9f_patternEPdj(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = alloca [3 x double], align 16
  %4 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %5 = load <2 x double>, ptr %0, align 8, !tbaa !34
  store <2 x double> %5, ptr %4, align 16, !tbaa !34
  %6 = getelementptr inbounds double, ptr %4, i64 2
  %7 = getelementptr inbounds double, ptr %0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !34
  store double %8, ptr %6, align 16, !tbaa !34
  %9 = tail call noundef ptr @_ZN3pov18POVFPU_GetFunctionEj(i32 noundef %1) #12
  %10 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %9, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  call void @_ZN3pov11Warp_EPointEPdS0_PNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %11) #12
  %14 = load ptr, ptr %10, align 8, !tbaa !49
  %15 = call noundef double @_ZN3pov13Evaluate_TPatEPNS_14Pattern_StructEPdPNS_10istk_entryE(ptr noundef %14, ptr noundef nonnull %3, ptr noundef null) #12
  br label %16

16:                                               ; preds = %2, %13
  %17 = phi double [ %15, %13 ], [ 0.000000e+00, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret double %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN3pov17f_noise_generatorEPdj(ptr nocapture noundef readonly %0, i32 %1) #3 {
  %3 = alloca [3 x double], align 16
  %4 = alloca %"struct.pov::Pattern_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %5 = load <2 x double>, ptr %0, align 8, !tbaa !34
  store <2 x double> %5, ptr %3, align 16, !tbaa !34
  %6 = getelementptr inbounds double, ptr %3, i64 2
  %7 = getelementptr inbounds double, ptr %0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !34
  store double %8, ptr %6, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #11
  %9 = getelementptr inbounds double, ptr %0, i64 3
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = fptosi double %10 to i32
  %12 = trunc i32 %11 to i16
  %13 = shl i16 %12, 4
  %14 = and i16 %13, 48
  %15 = getelementptr inbounds %"struct.pov::Pattern_Struct", ptr %4, i64 0, i32 2
  store i16 %14, ptr %15, align 4, !tbaa !38
  %16 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret double %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov9f_pigmentEPdjj(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [5 x float], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %6 = getelementptr inbounds double, ptr %0, i64 5
  %7 = load <2 x double>, ptr %6, align 8, !tbaa !34
  store <2 x double> %7, ptr %4, align 16, !tbaa !34
  %8 = getelementptr inbounds double, ptr %4, i64 2
  %9 = getelementptr inbounds double, ptr %0, i64 7
  %10 = load double, ptr %9, align 8, !tbaa !34
  store double %10, ptr %8, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  %11 = tail call noundef ptr @_ZN3pov18POVFPU_GetFunctionEj(i32 noundef %1) #12
  %12 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %11, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %2, double noundef 0.000000e+00) #12
  %16 = add i32 %2, 1
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %16, double noundef 0.000000e+00) #12
  %17 = add i32 %2, 2
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %17, double noundef 0.000000e+00) #12
  %18 = add i32 %2, 3
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %18, double noundef 0.000000e+00) #12
  %19 = add i32 %2, 4
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %19, double noundef 0.000000e+00) #12
  br label %40

20:                                               ; preds = %3
  %21 = call noundef i32 @_ZN3pov15Compute_PigmentEPfPNS_14Pigment_StructEPdPNS_10istk_entryE(ptr noundef nonnull %5, ptr noundef nonnull %13, ptr noundef nonnull %4, ptr noundef null) #12
  %22 = load float, ptr %5, align 16, !tbaa !55
  %23 = fpext float %22 to double
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %2, double noundef %23) #12
  %24 = add i32 %2, 1
  %25 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !55
  %27 = fpext float %26 to double
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %24, double noundef %27) #12
  %28 = add i32 %2, 2
  %29 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 2
  %30 = load float, ptr %29, align 8, !tbaa !55
  %31 = fpext float %30 to double
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %28, double noundef %31) #12
  %32 = add i32 %2, 3
  %33 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 3
  %34 = load float, ptr %33, align 4, !tbaa !55
  %35 = fpext float %34 to double
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %32, double noundef %35) #12
  %36 = add i32 %2, 4
  %37 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 4
  %38 = load float, ptr %37, align 16, !tbaa !55
  %39 = fpext float %38 to double
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %36, double noundef %39) #12
  br label %40

40:                                               ; preds = %20, %15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov11f_transformEPdjj(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %6 = getelementptr inbounds double, ptr %0, i64 3
  %7 = load <2 x double>, ptr %6, align 8, !tbaa !34
  store <2 x double> %7, ptr %4, align 16, !tbaa !34
  %8 = getelementptr inbounds double, ptr %4, i64 2
  %9 = getelementptr inbounds double, ptr %0, i64 5
  %10 = load double, ptr %9, align 8, !tbaa !34
  store double %10, ptr %8, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %11 = tail call noundef ptr @_ZN3pov18POVFPU_GetFunctionEj(i32 noundef %1) #12
  %12 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %11, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %2, double noundef 0.000000e+00) #12
  %16 = add i32 %2, 1
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %16, double noundef 0.000000e+00) #12
  %17 = add i32 %2, 2
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %17, double noundef 0.000000e+00) #12
  br label %26

18:                                               ; preds = %3
  call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %13) #12
  %19 = load double, ptr %5, align 16, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %2, double noundef %19) #12
  %20 = add i32 %2, 1
  %21 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %22 = load double, ptr %21, align 8, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %20, double noundef %22) #12
  %23 = add i32 %2, 2
  %24 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %25 = load double, ptr %24, align 16, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %23, double noundef %25) #12
  br label %26

26:                                               ; preds = %18, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov8f_splineEPdjj(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = alloca [5 x double], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11
  %6 = tail call noundef ptr @_ZN3pov18POVFPU_GetFunctionEj(i32 noundef %1) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %7 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %6, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %2, double noundef 0.000000e+00) #12
  %11 = add i32 %2, 1
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %11, double noundef 0.000000e+00) #12
  %12 = add i32 %2, 2
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %12, double noundef 0.000000e+00) #12
  br label %42

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"struct.pov::Spline_Struct", ptr %8, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !56
  store i32 %15, ptr %5, align 4, !tbaa !59
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, ptr %0, i64 %16
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = call noundef double @_ZN3pov14Get_Spline_ValEPNS_13Spline_StructEdPdPi(ptr noundef nonnull %8, double noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %20 = load double, ptr %4, align 16, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %2, double noundef %20) #12
  %21 = add i32 %2, 1
  %22 = getelementptr inbounds [5 x double], ptr %4, i64 0, i64 1
  %23 = load double, ptr %22, align 8, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %21, double noundef %23) #12
  %24 = load i32, ptr %5, align 4, !tbaa !59
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %26, label %42

26:                                               ; preds = %13
  %27 = add i32 %2, 2
  %28 = getelementptr inbounds [5 x double], ptr %4, i64 0, i64 2
  %29 = load double, ptr %28, align 16, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %27, double noundef %29) #12
  %30 = load i32, ptr %5, align 4, !tbaa !59
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = add i32 %2, 3
  %34 = getelementptr inbounds [5 x double], ptr %4, i64 0, i64 3
  %35 = load double, ptr %34, align 8, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %33, double noundef %35) #12
  %36 = load i32, ptr %5, align 4, !tbaa !59
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = add i32 %2, 4
  %40 = getelementptr inbounds [5 x double], ptr %4, i64 0, i64 4
  %41 = load double, ptr %40, align 16, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %39, double noundef %41) #12
  br label %42

42:                                               ; preds = %13, %32, %38, %26, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !34
  %4 = load double, ptr %0, align 8, !tbaa !34
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = load double, ptr %1, align 8, !tbaa !34
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZSt4fmodIdiEN9__gnu_cxx9__promoteIDTplcvNS1_IT_Xsr3std12__is_integerIS2_EE7__valueEE6__typeELi0EcvNS1_IT0_Xsr3std12__is_integerIS5_EE7__valueEE6__typeELi0EEXsr3std12__is_integerIS8_EE7__valueEE6__typeES2_S5_(double noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat {
  %3 = sitofp i32 %1 to double
  %4 = tail call double @fmod(double noundef %0, double noundef %3) #10
  ret double %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 comdat {
  store double %1, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds double, ptr %0, i64 1
  store double %2, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds double, ptr %0, i64 2
  store double %3, ptr %6, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov8VScaleEqEPdd(ptr noundef %0, double noundef %1) local_unnamed_addr #0 comdat {
  %3 = load <2 x double>, ptr %0, align 8, !tbaa !34
  %4 = insertelement <2 x double> poison, double %1, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x double> %3, %5
  store <2 x double> %6, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds double, ptr %0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = fmul double %8, %1
  store double %9, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #0 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !34
  %5 = fmul double %4, %2
  store double %5, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fmul double %7, %2
  %9 = getelementptr inbounds double, ptr %0, i64 1
  store double %8, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds double, ptr %1, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = fmul double %11, %2
  %13 = getelementptr inbounds double, ptr %0, i64 2
  store double %12, ptr %13, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov18POVFPU_GetFunctionEj(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN3pov11Warp_EPointEPdS0_PNS_14Pattern_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef double @_ZN3pov13Evaluate_TPatEPNS_14Pattern_StructEPdPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef, double noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef i32 @_ZN3pov15Compute_PigmentEPfPNS_14Pigment_StructEPdPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef double @_ZN3pov14Get_Spline_ValEPNS_13Spline_StructEdPdPi(ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #9

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"double", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !40, i64 4}
!39 = !{!"_ZTSN3pov14Pattern_StructE", !40, i64 0, !40, i64 2, !40, i64 4, !41, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !43, i64 24, !43, i64 32, !43, i64 40, !36, i64 48}
!40 = !{!"short", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"float", !36, i64 0}
!43 = !{!"any pointer", !36, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !45}
!49 = !{!50, !43, i64 1192}
!50 = !{!"_ZTSN3pov12FunctionCodeE", !43, i64 0, !41, i64 8, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 16, !36, i64 240, !36, i64 688, !43, i64 1136, !43, i64 1144, !51, i64 1152, !41, i64 1168, !43, i64 1176, !43, i64 1184, !43, i64 1192}
!51 = !{!"_ZTSN8pov_base11ITextStream7FilePosE", !52, i64 0, !41, i64 8}
!52 = !{!"long", !36, i64 0}
!53 = distinct !{!53, !45}
!54 = distinct !{!54, !45}
!55 = !{!42, !42, i64 0}
!56 = !{!57, !41, i64 28}
!57 = !{!"_ZTSN3pov13Spline_StructE", !41, i64 0, !41, i64 4, !41, i64 8, !43, i64 16, !41, i64 24, !41, i64 28, !58, i64 32, !41, i64 36, !35, i64 40, !36, i64 48}
!58 = !{!"bool", !36, i64 0}
!59 = !{!41, !41, i64 0}
