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

@_ZN3pov16POVFPU_TrapTableE = dso_local local_unnamed_addr constant [80 x %"struct.pov::Trap"] [%"struct.pov::Trap" { ptr @_ZN3pov12f_algbr_cyl1EPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov12f_algbr_cyl2EPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov12f_algbr_cyl3EPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov12f_algbr_cyl4EPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_bicornEPdj, i32 5 }, %"struct.pov::Trap" { ptr @_ZN3pov9f_bifoliaEPdj, i32 5 }, %"struct.pov::Trap" { ptr @_ZN3pov6f_blobEPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_blob2EPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov13f_boy_surfaceEPdj, i32 5 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_commaEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov18f_cross_ellipsoidsEPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov16f_crossed_troughEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov14f_cubic_saddleEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov9f_cushionEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov14f_devils_curveEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov17f_devils_curve_2dEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov14f_dupin_cyclidEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov11f_ellipsoidEPdj, i32 6 }, %"struct.pov::Trap" { ptr @_ZN3pov9f_enneperEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov14f_flange_coverEPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov16f_folium_surfaceEPdj, i32 6 }, %"struct.pov::Trap" { ptr @_ZN3pov19f_folium_surface_2dEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov6f_globEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_heartEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov15f_helical_torusEPdj, i32 13 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_helix1EPdj, i32 10 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_helix2EPdj, i32 10 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_hex_xEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_hex_yEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov11f_hetero_mfEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov14f_hunt_surfaceEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov18f_hyperbolic_torusEPdj, i32 6 }, %"struct.pov::Trap" { ptr @_ZN3pov18f_isect_ellipsoidsEPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov20f_kampyle_of_eudoxusEPdj, i32 6 }, %"struct.pov::Trap" { ptr @_ZN3pov23f_kampyle_of_eudoxus_2dEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov14f_klein_bottleEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov19f_kummer_surface_v1EPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov19f_kummer_surface_v2EPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov22f_lemniscate_of_geronoEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov25f_lemniscate_of_gerono_2dEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_mesh1EPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_mitreEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov13f_nodal_cubicEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov5f_oddEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov18f_ovals_of_cassiniEPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov12f_paraboloidEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov17f_parabolic_torusEPdj, i32 6 }, %"struct.pov::Trap" { ptr @_ZN3pov4f_phEPdj, i32 3 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_pillowEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov10f_piriformEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov13f_piriform_2dEPdj, i32 10 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_poly4EPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov11f_polytubesEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov9f_quantumEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov20f_quartic_paraboloidEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov16f_quartic_saddleEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov18f_quartic_cylinderEPdj, i32 6 }, %"struct.pov::Trap" { ptr @_ZN3pov3f_rEPdj, i32 3 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_ridgeEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov11f_ridged_mfEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov13f_rounded_boxEPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_sphereEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_spikesEPdj, i32 8 }, %"struct.pov::Trap" { ptr @_ZN3pov11f_spikes_2dEPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_spiralEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov16f_steiners_romanEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov11f_strophoidEPdj, i32 7 }, %"struct.pov::Trap" { ptr @_ZN3pov14f_strophoid_2dEPdj, i32 10 }, %"struct.pov::Trap" { ptr @_ZN3pov16f_superellipsoidEPdj, i32 5 }, %"struct.pov::Trap" { ptr @_ZN3pov4f_thEPdj, i32 3 }, %"struct.pov::Trap" { ptr @_ZN3pov7f_torusEPdj, i32 5 }, %"struct.pov::Trap" { ptr @_ZN3pov8f_torus2EPdj, i32 6 }, %"struct.pov::Trap" { ptr @_ZN3pov15f_torus_gumdropEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov10f_umbrellaEPdj, i32 4 }, %"struct.pov::Trap" { ptr @_ZN3pov17f_witch_of_agnesiEPdj, i32 5 }, %"struct.pov::Trap" { ptr @_ZN3pov20f_witch_of_agnesi_2dEPdj, i32 9 }, %"struct.pov::Trap" { ptr @_ZN3pov9f_noise3dEPdj, i32 3 }, %"struct.pov::Trap" { ptr @_ZN3pov9f_patternEPdj, i32 3 }, %"struct.pov::Trap" { ptr @_ZN3pov17f_noise_generatorEPdj, i32 4 }, %"struct.pov::Trap" zeroinitializer], align 16
@_ZN3pov17POVFPU_TrapSTableE = dso_local local_unnamed_addr constant [4 x %"struct.pov::TrapS"] [%"struct.pov::TrapS" { ptr @_ZN3pov9f_pigmentEPdjj, i32 3 }, %"struct.pov::TrapS" { ptr @_ZN3pov11f_transformEPdjj, i32 3 }, %"struct.pov::TrapS" { ptr @_ZN3pov8f_splineEPdjj, i32 1 }, %"struct.pov::TrapS" zeroinitializer], align 16
@_ZN3pov20POVFPU_TrapTableSizeE = dso_local local_unnamed_addr constant i32 79, align 4
@_ZN3pov21POVFPU_TrapSTableSizeE = dso_local local_unnamed_addr constant i32 3, align 4
@.str = private unnamed_addr constant [13 x i8] c"fnintern.cpp\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"exponent array\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov12f_algbr_cyl1EPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 5
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fcmp ogt double %9, 0.000000e+00
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %4)
  %15 = tail call double @sqrt(double noundef %14) #9
  %16 = getelementptr inbounds double, ptr %0, i64 6
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fsub double %15, %17
  %19 = getelementptr inbounds double, ptr %0, i64 7
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fmul double %20, 0x3F91DF46A2529D39
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = tail call double @cos(double noundef %21) #9
  %25 = load double, ptr %5, align 8, !tbaa !34
  %26 = tail call double @sin(double noundef %21) #9
  %27 = fneg double %25
  %28 = fmul double %26, %27
  %29 = tail call double @llvm.fmuladd.f64(double %18, double %24, double %28)
  store double %29, ptr %0, align 8, !tbaa !34
  %30 = tail call double @sin(double noundef %21) #9
  %31 = load double, ptr %5, align 8, !tbaa !34
  %32 = tail call double @cos(double noundef %21) #9
  %33 = fmul double %31, %32
  %34 = tail call double @llvm.fmuladd.f64(double %18, double %30, double %33)
  store double %34, ptr %5, align 8, !tbaa !34
  br label %36

35:                                               ; preds = %11
  store double %18, ptr %0, align 8, !tbaa !34
  br label %36

36:                                               ; preds = %35, %23
  %37 = load double, ptr %0, align 8, !tbaa !34
  %38 = fmul double %37, %37
  %39 = load double, ptr %5, align 8, !tbaa !34
  %40 = fmul double %39, %39
  br label %41

41:                                               ; preds = %36, %2
  %42 = phi double [ %40, %36 ], [ %7, %2 ]
  %43 = phi double [ %38, %36 ], [ %4, %2 ]
  %44 = load double, ptr %0, align 8, !tbaa !34
  %45 = tail call double @llvm.fabs.f64(double %44)
  store double %45, ptr %0, align 8, !tbaa !34
  %46 = fneg double %43
  %47 = tail call double @llvm.fmuladd.f64(double %43, double %45, double %46)
  %48 = fadd double %42, %47
  %49 = fneg double %48
  %50 = getelementptr inbounds double, ptr %0, i64 4
  %51 = getelementptr inbounds double, ptr %0, i64 3
  %52 = load double, ptr %51, align 8, !tbaa !34
  %53 = fmul double %52, %49
  %54 = load double, ptr %50, align 8
  %55 = fneg double %54
  %56 = fcmp olt double %53, %55
  %57 = select i1 %56, double %55, double %53
  %58 = fcmp olt double %57, %54
  %59 = select i1 %58, double %57, double %54
  %60 = fneg double %59
  ret double %60
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov12f_algbr_cyl2EPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 5
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fcmp ogt double %9, 0.000000e+00
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %4)
  %15 = tail call double @sqrt(double noundef %14) #9
  %16 = getelementptr inbounds double, ptr %0, i64 6
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fsub double %15, %17
  %19 = getelementptr inbounds double, ptr %0, i64 7
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fmul double %20, 0x3F91DF46A2529D39
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = tail call double @cos(double noundef %21) #9
  %25 = load double, ptr %5, align 8, !tbaa !34
  %26 = tail call double @sin(double noundef %21) #9
  %27 = fneg double %25
  %28 = fmul double %26, %27
  %29 = tail call double @llvm.fmuladd.f64(double %18, double %24, double %28)
  store double %29, ptr %0, align 8, !tbaa !34
  %30 = tail call double @sin(double noundef %21) #9
  %31 = load double, ptr %5, align 8, !tbaa !34
  %32 = tail call double @cos(double noundef %21) #9
  %33 = fmul double %31, %32
  %34 = tail call double @llvm.fmuladd.f64(double %18, double %30, double %33)
  store double %34, ptr %5, align 8, !tbaa !34
  br label %36

35:                                               ; preds = %11
  store double %18, ptr %0, align 8, !tbaa !34
  br label %36

36:                                               ; preds = %35, %23
  %37 = load double, ptr %0, align 8, !tbaa !34
  %38 = fmul double %37, %37
  %39 = load double, ptr %5, align 8, !tbaa !34
  %40 = fmul double %39, %39
  br label %41

41:                                               ; preds = %36, %2
  %42 = phi double [ %40, %36 ], [ %7, %2 ]
  %43 = phi double [ %38, %36 ], [ %4, %2 ]
  %44 = fmul double %43, 2.000000e+00
  %45 = load double, ptr %5, align 8, !tbaa !34
  %46 = fmul double %43, -3.000000e+00
  %47 = fmul double %46, %45
  %48 = tail call double @llvm.fmuladd.f64(double %44, double %43, double %47)
  %49 = fadd double %42, %48
  %50 = fmul double %42, -2.000000e+00
  %51 = tail call double @llvm.fmuladd.f64(double %50, double %45, double %49)
  %52 = tail call double @llvm.fmuladd.f64(double %42, double %42, double %51)
  %53 = fneg double %52
  %54 = getelementptr inbounds double, ptr %0, i64 4
  %55 = getelementptr inbounds double, ptr %0, i64 3
  %56 = load double, ptr %55, align 8, !tbaa !34
  %57 = fmul double %56, %53
  %58 = load double, ptr %54, align 8
  %59 = fneg double %58
  %60 = fcmp olt double %57, %59
  %61 = select i1 %60, double %59, double %57
  %62 = fcmp olt double %61, %58
  %63 = select i1 %62, double %61, double %58
  ret double %63
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov12f_algbr_cyl3EPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 5
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fcmp ogt double %9, 0.000000e+00
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %4)
  %15 = tail call double @sqrt(double noundef %14) #9
  %16 = getelementptr inbounds double, ptr %0, i64 6
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fsub double %15, %17
  %19 = getelementptr inbounds double, ptr %0, i64 7
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fmul double %20, 0x3F91DF46A2529D39
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = tail call double @cos(double noundef %21) #9
  %25 = load double, ptr %5, align 8, !tbaa !34
  %26 = tail call double @sin(double noundef %21) #9
  %27 = fneg double %25
  %28 = fmul double %26, %27
  %29 = tail call double @llvm.fmuladd.f64(double %18, double %24, double %28)
  store double %29, ptr %0, align 8, !tbaa !34
  %30 = tail call double @sin(double noundef %21) #9
  %31 = load double, ptr %5, align 8, !tbaa !34
  %32 = tail call double @cos(double noundef %21) #9
  %33 = fmul double %31, %32
  %34 = tail call double @llvm.fmuladd.f64(double %18, double %30, double %33)
  store double %34, ptr %5, align 8, !tbaa !34
  br label %36

35:                                               ; preds = %11
  store double %18, ptr %0, align 8, !tbaa !34
  br label %36

36:                                               ; preds = %35, %23
  %37 = load double, ptr %0, align 8, !tbaa !34
  %38 = fmul double %37, %37
  %39 = load double, ptr %5, align 8, !tbaa !34
  %40 = fmul double %39, %39
  br label %41

41:                                               ; preds = %36, %2
  %42 = phi double [ %40, %36 ], [ %7, %2 ]
  %43 = phi double [ %38, %36 ], [ %4, %2 ]
  %44 = fmul double %42, %43
  %45 = tail call double @llvm.fmuladd.f64(double %43, double %43, double %44)
  %46 = load double, ptr %5, align 8, !tbaa !34
  %47 = fmul double %43, -2.000000e+00
  %48 = tail call double @llvm.fmuladd.f64(double %47, double %46, double %45)
  %49 = load double, ptr %0, align 8, !tbaa !34
  %50 = fneg double %49
  %51 = tail call double @llvm.fmuladd.f64(double %50, double %42, double %48)
  %52 = fadd double %42, %51
  %53 = fneg double %52
  %54 = getelementptr inbounds double, ptr %0, i64 4
  %55 = getelementptr inbounds double, ptr %0, i64 3
  %56 = load double, ptr %55, align 8, !tbaa !34
  %57 = fmul double %56, %53
  %58 = load double, ptr %54, align 8
  %59 = fneg double %58
  %60 = fcmp olt double %57, %59
  %61 = select i1 %60, double %59, double %57
  %62 = fcmp olt double %61, %58
  %63 = select i1 %62, double %61, double %58
  ret double %63
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov12f_algbr_cyl4EPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 5
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fcmp ogt double %9, 0.000000e+00
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %4)
  %15 = tail call double @sqrt(double noundef %14) #9
  %16 = getelementptr inbounds double, ptr %0, i64 6
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fsub double %15, %17
  %19 = getelementptr inbounds double, ptr %0, i64 7
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fmul double %20, 0x3F91DF46A2529D39
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = tail call double @cos(double noundef %21) #9
  %25 = load double, ptr %5, align 8, !tbaa !34
  %26 = tail call double @sin(double noundef %21) #9
  %27 = fneg double %25
  %28 = fmul double %26, %27
  %29 = tail call double @llvm.fmuladd.f64(double %18, double %24, double %28)
  store double %29, ptr %0, align 8, !tbaa !34
  %30 = tail call double @sin(double noundef %21) #9
  %31 = load double, ptr %5, align 8, !tbaa !34
  %32 = tail call double @cos(double noundef %21) #9
  %33 = fmul double %31, %32
  %34 = tail call double @llvm.fmuladd.f64(double %18, double %30, double %33)
  store double %34, ptr %5, align 8, !tbaa !34
  br label %36

35:                                               ; preds = %11
  store double %18, ptr %0, align 8, !tbaa !34
  br label %36

36:                                               ; preds = %35, %23
  %37 = load double, ptr %0, align 8, !tbaa !34
  %38 = fmul double %37, %37
  %39 = load double, ptr %5, align 8, !tbaa !34
  %40 = fmul double %39, %39
  br label %41

41:                                               ; preds = %36, %2
  %42 = phi double [ %40, %36 ], [ %7, %2 ]
  %43 = phi double [ %38, %36 ], [ %4, %2 ]
  %44 = fmul double %42, %42
  %45 = tail call double @llvm.fmuladd.f64(double %43, double %43, double %44)
  %46 = fmul double %43, 2.000000e+00
  %47 = tail call double @llvm.fmuladd.f64(double %46, double %42, double %45)
  %48 = fmul double %43, 3.000000e+00
  %49 = load double, ptr %5, align 8, !tbaa !34
  %50 = tail call double @llvm.fmuladd.f64(double %48, double %49, double %47)
  %51 = fneg double %42
  %52 = tail call double @llvm.fmuladd.f64(double %51, double %49, double %50)
  %53 = fneg double %52
  %54 = getelementptr inbounds double, ptr %0, i64 4
  %55 = getelementptr inbounds double, ptr %0, i64 3
  %56 = load double, ptr %55, align 8, !tbaa !34
  %57 = fmul double %56, %53
  %58 = load double, ptr %54, align 8
  %59 = fneg double %58
  %60 = fcmp olt double %57, %59
  %61 = select i1 %60, double %59, double %57
  %62 = fcmp olt double %61, %58
  %63 = select i1 %62, double %61, double %58
  ret double %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov8f_bicornEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 4
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = fadd double %4, %10
  %15 = fmul double %12, 2.000000e+00
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %6, double %14)
  %17 = fsub double %16, %13
  %18 = fsub double %13, %14
  %19 = fneg double %17
  %20 = fmul double %17, %19
  %21 = tail call double @llvm.fmuladd.f64(double %7, double %18, double %20)
  %22 = getelementptr inbounds double, ptr %0, i64 3
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = fmul double %23, %21
  %25 = fcmp olt double %24, -1.000000e+01
  %26 = select i1 %25, double -1.000000e+01, double %24
  %27 = fcmp olt double %26, 1.000000e+01
  %28 = select i1 %27, double %26, double 1.000000e+01
  ret double %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov9f_bifoliaEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 2
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %4)
  %11 = fadd double %7, %10
  %12 = getelementptr inbounds double, ptr %0, i64 4
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = fadd double %4, %7
  %15 = fneg double %13
  %16 = fmul double %14, %15
  %17 = fmul double %9, %16
  %18 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %17)
  %19 = fneg double %18
  %20 = getelementptr inbounds double, ptr %0, i64 3
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = fmul double %21, %19
  %23 = fcmp olt double %22, -1.000000e+01
  %24 = select i1 %23, double -1.000000e+01, double %22
  %25 = fcmp olt double %24, 1.000000e+01
  %26 = select i1 %25, double %24, double 1.000000e+01
  ret double %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %5)
  %15 = fadd double %8, %14
  %16 = getelementptr inbounds double, ptr %0, i64 5
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fmul double %17, %15
  %19 = fmul double %17, %18
  %20 = fcmp ogt double %19, 1.000000e+00
  %21 = select i1 %20, double 1.000000e+00, double %19
  %22 = fsub double %12, %11
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %22, double %5)
  %24 = fadd double %8, %23
  %25 = getelementptr inbounds double, ptr %0, i64 7
  %26 = load double, ptr %25, align 8, !tbaa !34
  %27 = fmul double %26, %24
  %28 = fmul double %26, %27
  %29 = fcmp ogt double %28, 1.000000e+00
  %30 = select i1 %29, double 1.000000e+00, double %28
  %31 = getelementptr inbounds double, ptr %0, i64 4
  %32 = load double, ptr %31, align 8, !tbaa !34
  %33 = fsub double 1.000000e+00, %21
  %34 = fmul double %32, %33
  %35 = getelementptr inbounds double, ptr %0, i64 6
  %36 = load double, ptr %35, align 8, !tbaa !34
  %37 = fsub double 1.000000e+00, %30
  %38 = fmul double %36, %37
  %39 = fmul double %37, %38
  %40 = tail call double @llvm.fmuladd.f64(double %34, double %33, double %39)
  %41 = fneg double %40
  ret double %41
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov7f_blob2EPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fadd double %4, %7
  %12 = fadd double %11, %10
  %13 = fneg double %12
  %14 = getelementptr inbounds double, ptr %0, i64 4
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fmul double %15, %13
  %17 = tail call double @exp(double noundef %16) #9
  %18 = load double, ptr %0, align 8, !tbaa !34
  %19 = getelementptr inbounds double, ptr %0, i64 3
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fsub double %18, %20
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %21, double %7)
  %23 = fadd double %10, %22
  %24 = fneg double %23
  %25 = load double, ptr %14, align 8, !tbaa !34
  %26 = fmul double %25, %24
  %27 = tail call double @exp(double noundef %26) #9
  %28 = fadd double %17, %27
  %29 = getelementptr inbounds double, ptr %0, i64 6
  %30 = load double, ptr %29, align 8, !tbaa !34
  %31 = getelementptr inbounds double, ptr %0, i64 5
  %32 = load double, ptr %31, align 8, !tbaa !34
  %33 = fneg double %28
  %34 = tail call double @llvm.fmuladd.f64(double %33, double %32, double %30)
  ret double %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov13f_boy_surfaceEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fsub double 1.000000e+00, %9
  %12 = fadd double %4, %7
  %13 = getelementptr inbounds double, ptr %0, i64 4
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = fmul double %11, 6.400000e+01
  %16 = fmul double %11, %15
  %17 = fmul double %11, %16
  %18 = fmul double %10, %17
  %19 = fmul double %7, 3.000000e+00
  %20 = tail call double @llvm.fmuladd.f64(double %4, double 3.000000e+00, double %19)
  %21 = tail call double @llvm.fmuladd.f64(double %10, double 2.000000e+00, double %20)
  %22 = fmul double %11, -4.800000e+01
  %23 = fmul double %11, %22
  %24 = fmul double %10, %23
  %25 = fmul double %21, %24
  %26 = tail call double @llvm.fmuladd.f64(double %18, double %9, double %25)
  %27 = fmul double %11, 1.200000e+01
  %28 = fmul double %9, %27
  %29 = fmul double %12, 2.700000e+01
  %30 = fmul double %10, -2.400000e+01
  %31 = fmul double %12, %30
  %32 = tail call double @llvm.fmuladd.f64(double %29, double %12, double %31)
  %33 = fmul double %6, 0x404974B2334F2347
  %34 = fmul double %33, %9
  %35 = tail call double @llvm.fmuladd.f64(double %4, double -3.000000e+00, double %7)
  %36 = tail call double @llvm.fmuladd.f64(double %34, double %35, double %32)
  %37 = fmul double %10, 4.000000e+00
  %38 = tail call double @llvm.fmuladd.f64(double %37, double %10, double %36)
  %39 = tail call double @llvm.fmuladd.f64(double %28, double %38, double %26)
  %40 = fmul double %7, 9.000000e+00
  %41 = tail call double @llvm.fmuladd.f64(double %4, double 9.000000e+00, double %40)
  %42 = tail call double @llvm.fmuladd.f64(double %10, double -2.000000e+00, double %41)
  %43 = fmul double %12, -8.100000e+01
  %44 = fmul double %10, -7.200000e+01
  %45 = fmul double %12, %44
  %46 = tail call double @llvm.fmuladd.f64(double %43, double %12, double %45)
  %47 = fmul double %3, 0x40631785A67B5A75
  %48 = fmul double %47, %9
  %49 = tail call double @llvm.fmuladd.f64(double %7, double -3.000000e+00, double %4)
  %50 = tail call double @llvm.fmuladd.f64(double %48, double %49, double %46)
  %51 = tail call double @llvm.fmuladd.f64(double %37, double %10, double %50)
  %52 = tail call double @llvm.fmuladd.f64(double %42, double %51, double %39)
  %53 = fmul double %14, %52
  %54 = getelementptr inbounds double, ptr %0, i64 3
  %55 = load double, ptr %54, align 8, !tbaa !34
  %56 = fmul double %55, %53
  %57 = fcmp olt double %56, -1.000000e+01
  %58 = select i1 %57, double -1.000000e+01, double %56
  %59 = fcmp olt double %58, 1.000000e+01
  %60 = select i1 %59, double %58, double 1.000000e+01
  ret double %60
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov7f_commaEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fcmp oeq double %3, 0.000000e+00
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds double, ptr %0, i64 2
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fcmp oeq double %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store double 1.000000e-04, ptr %0, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %9, %5, %2
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = load double, ptr %0, align 8, !tbaa !34
  %14 = tail call double @atan2(double noundef %12, double noundef %13) #9
  %15 = load double, ptr %0, align 8, !tbaa !34
  %16 = getelementptr inbounds double, ptr %0, i64 3
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 2.500000e-01, double %15)
  %19 = load double, ptr %11, align 8, !tbaa !34
  %20 = fmul double %19, %19
  %21 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %20)
  %22 = tail call double @sqrt(double noundef %21) #9
  %23 = fmul double %14, 5.000000e-01
  %24 = tail call double @cos(double noundef %23) #9
  %25 = load double, ptr %16, align 8, !tbaa !34
  %26 = fmul double %24, %25
  %27 = fneg double %25
  %28 = tail call double @llvm.fmuladd.f64(double %27, double 7.500000e-01, double %22)
  %29 = getelementptr inbounds double, ptr %0, i64 1
  %30 = load double, ptr %29, align 8, !tbaa !34
  %31 = fmul double %30, %30
  %32 = tail call double @llvm.fmuladd.f64(double %28, double %28, double %31)
  %33 = tail call double @sqrt(double noundef %32) #9
  %34 = fneg double %33
  %35 = tail call double @llvm.fmuladd.f64(double %26, double 5.000000e-01, double %34)
  %36 = load double, ptr %11, align 8, !tbaa !34
  %37 = fcmp olt double %35, %36
  %38 = select i1 %37, double %35, double %36
  %39 = load double, ptr %16, align 8, !tbaa !34
  %40 = load double, ptr %0, align 8, !tbaa !34
  %41 = fneg double %39
  %42 = tail call double @llvm.fmuladd.f64(double %41, double 5.000000e-01, double %40)
  %43 = fmul double %36, %36
  %44 = tail call double @llvm.fmuladd.f64(double %42, double %42, double %43)
  %45 = load double, ptr %29, align 8, !tbaa !34
  %46 = tail call double @llvm.fmuladd.f64(double %45, double %45, double %44)
  %47 = tail call double @sqrt(double noundef %46) #9
  %48 = fneg double %47
  %49 = tail call double @llvm.fmuladd.f64(double %39, double 5.000000e-01, double %48)
  %50 = fcmp olt double %38, %49
  %51 = select i1 %50, double %49, double %38
  %52 = fneg double %51
  ret double %52
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov18f_cross_ellipsoidsEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
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
  %20 = tail call double @exp(double noundef %19) #9
  %21 = load double, ptr %11, align 8, !tbaa !34
  %22 = tail call double @llvm.fmuladd.f64(double %4, double %21, double %7)
  %23 = tail call double @llvm.fmuladd.f64(double %10, double %21, double %22)
  %24 = fneg double %23
  %25 = load double, ptr %17, align 8, !tbaa !34
  %26 = fmul double %25, %24
  %27 = tail call double @exp(double noundef %26) #9
  %28 = fcmp olt double %20, %27
  %29 = select i1 %28, double %27, double %20
  %30 = load double, ptr %11, align 8, !tbaa !34
  %31 = tail call double @llvm.fmuladd.f64(double %7, double %30, double %4)
  %32 = tail call double @llvm.fmuladd.f64(double %10, double %30, double %31)
  %33 = fneg double %32
  %34 = load double, ptr %17, align 8, !tbaa !34
  %35 = fmul double %34, %33
  %36 = tail call double @exp(double noundef %35) #9
  %37 = fcmp olt double %29, %36
  %38 = select i1 %37, double %36, double %29
  %39 = getelementptr inbounds double, ptr %0, i64 6
  %40 = load double, ptr %39, align 8, !tbaa !34
  %41 = getelementptr inbounds double, ptr %0, i64 5
  %42 = load double, ptr %41, align 8, !tbaa !34
  %43 = fneg double %38
  %44 = tail call double @llvm.fmuladd.f64(double %43, double %42, double %40)
  ret double %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov16f_crossed_troughEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 2
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %4, %6
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fneg double %9
  %11 = tail call double @llvm.fmuladd.f64(double %7, double %6, double %10)
  %12 = getelementptr inbounds double, ptr %0, i64 3
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = fmul double %13, %11
  %15 = fcmp olt double %14, -1.000000e+01
  %16 = select i1 %15, double -1.000000e+01, double %14
  %17 = fcmp olt double %16, 1.000000e+01
  %18 = select i1 %17, double %16, double 1.000000e+01
  ret double %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov14f_cubic_saddleEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fneg double %6
  %8 = fmul double %6, %7
  %9 = fmul double %6, %8
  %10 = tail call double @llvm.fmuladd.f64(double %4, double %3, double %9)
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fsub double %10, %12
  %14 = fneg double %13
  %15 = getelementptr inbounds double, ptr %0, i64 3
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = fmul double %16, %14
  %18 = fcmp olt double %17, -1.000000e+01
  %19 = select i1 %18, double -1.000000e+01, double %17
  %20 = fcmp olt double %19, 1.000000e+01
  %21 = select i1 %20, double %19, double 1.000000e+01
  ret double %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov9f_cushionEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fneg double %10
  %12 = fmul double %10, %11
  %13 = tail call double @llvm.fmuladd.f64(double %10, double %4, double %12)
  %14 = fmul double %9, -2.000000e+00
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %4, double %13)
  %16 = fmul double %10, 2.000000e+00
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %9, double %15)
  %18 = fadd double %4, %17
  %19 = fsub double %18, %10
  %20 = fsub double %4, %9
  %21 = fneg double %20
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %20, double %19)
  %23 = fneg double %7
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %7, double %22)
  %25 = fmul double %4, -2.000000e+00
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %7, double %24)
  %27 = tail call double @llvm.fmuladd.f64(double %23, double %10, double %26)
  %28 = fmul double %7, 2.000000e+00
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %9, double %27)
  %30 = fadd double %7, %29
  %31 = getelementptr inbounds double, ptr %0, i64 3
  %32 = load double, ptr %31, align 8, !tbaa !34
  %33 = fmul double %32, %30
  %34 = fcmp olt double %33, -1.000000e+01
  %35 = select i1 %34, double -1.000000e+01, double %33
  %36 = fcmp olt double %35, 1.000000e+01
  %37 = select i1 %36, double %35, double 1.000000e+01
  ret double %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov14f_devils_curveEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fmul double %4, 2.000000e+00
  %12 = fmul double %11, %10
  %13 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %12)
  %14 = tail call double @llvm.fmuladd.f64(double %4, double -3.600000e-01, double %13)
  %15 = fneg double %7
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %7, double %14)
  %17 = tail call double @llvm.fmuladd.f64(double %7, double 2.500000e-01, double %16)
  %18 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %17)
  %19 = fneg double %18
  %20 = getelementptr inbounds double, ptr %0, i64 3
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = fmul double %21, %19
  %23 = fcmp olt double %22, -1.000000e+01
  %24 = select i1 %23, double -1.000000e+01, double %22
  %25 = fcmp olt double %24, 1.000000e+01
  %26 = select i1 %25, double %24, double 1.000000e+01
  ret double %26
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov17f_devils_curve_2dEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 6
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fcmp ogt double %9, 0.000000e+00
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %4)
  %15 = tail call double @sqrt(double noundef %14) #9
  %16 = getelementptr inbounds double, ptr %0, i64 7
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fsub double %15, %17
  %19 = getelementptr inbounds double, ptr %0, i64 8
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fmul double %20, 0x3F91DF46A2529D39
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = tail call double @cos(double noundef %21) #9
  %25 = load double, ptr %5, align 8, !tbaa !34
  %26 = tail call double @sin(double noundef %21) #9
  %27 = fneg double %25
  %28 = fmul double %26, %27
  %29 = tail call double @llvm.fmuladd.f64(double %18, double %24, double %28)
  store double %29, ptr %0, align 8, !tbaa !34
  %30 = tail call double @sin(double noundef %21) #9
  %31 = load double, ptr %5, align 8, !tbaa !34
  %32 = tail call double @cos(double noundef %21) #9
  %33 = fmul double %31, %32
  %34 = tail call double @llvm.fmuladd.f64(double %18, double %30, double %33)
  store double %34, ptr %5, align 8, !tbaa !34
  br label %36

35:                                               ; preds = %11
  store double %18, ptr %0, align 8, !tbaa !34
  br label %36

36:                                               ; preds = %35, %23
  %37 = load double, ptr %0, align 8, !tbaa !34
  %38 = fmul double %37, %37
  %39 = load double, ptr %5, align 8, !tbaa !34
  %40 = fmul double %39, %39
  br label %41

41:                                               ; preds = %36, %2
  %42 = phi double [ %40, %36 ], [ %7, %2 ]
  %43 = phi double [ %38, %36 ], [ %4, %2 ]
  %44 = getelementptr inbounds double, ptr %0, i64 4
  %45 = load double, ptr %44, align 8, !tbaa !34
  %46 = fneg double %45
  %47 = tail call double @llvm.fmuladd.f64(double %46, double %45, double %43)
  %48 = getelementptr inbounds double, ptr %0, i64 5
  %49 = load double, ptr %48, align 8, !tbaa !34
  %50 = fneg double %49
  %51 = tail call double @llvm.fmuladd.f64(double %50, double %49, double %42)
  %52 = fneg double %42
  %53 = fmul double %51, %52
  %54 = tail call double @llvm.fmuladd.f64(double %43, double %47, double %53)
  %55 = fneg double %54
  %56 = getelementptr inbounds double, ptr %0, i64 3
  %57 = load double, ptr %56, align 8, !tbaa !34
  %58 = fmul double %57, %55
  %59 = fcmp olt double %58, -1.000000e+01
  %60 = select i1 %59, double -1.000000e+01, double %58
  %61 = fcmp olt double %60, 1.000000e+01
  %62 = select i1 %61, double %60, double 1.000000e+01
  ret double %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov14f_dupin_cyclidEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 8
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = getelementptr inbounds double, ptr %0, i64 5
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fmul double %15, %15
  %17 = getelementptr inbounds double, ptr %0, i64 7
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = fmul double %18, %18
  %20 = fsub double %16, %19
  %21 = getelementptr inbounds double, ptr %0, i64 6
  %22 = load double, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds double, ptr %0, i64 4
  %24 = load double, ptr %23, align 8, !tbaa !34
  %25 = fadd double %22, %24
  %26 = fneg double %25
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %25, double %20)
  %28 = fsub double %22, %24
  %29 = fneg double %28
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %28, double %20)
  %31 = fmul double %22, %22
  %32 = fmul double %24, %24
  %33 = fmul double %27, %30
  %34 = fmul double %7, %7
  %35 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %34)
  %36 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %35)
  %37 = fmul double %4, %10
  %38 = tail call double @llvm.fmuladd.f64(double %4, double %7, double %37)
  %39 = tail call double @llvm.fmuladd.f64(double %7, double %10, double %38)
  %40 = fmul double %39, %33
  %41 = fmul double %40, 2.000000e+00
  %42 = tail call double @llvm.fmuladd.f64(double %33, double %36, double %41)
  %43 = fmul double %13, 2.000000e+00
  %44 = fneg double %19
  %45 = fsub double %44, %31
  %46 = fadd double %16, %45
  %47 = fadd double %32, %46
  %48 = fmul double %3, 2.000000e+00
  %49 = fmul double %6, 2.000000e+00
  %50 = fmul double %49, %18
  %51 = tail call double @llvm.fmuladd.f64(double %48, double %22, double %50)
  %52 = fsub double %51, %13
  %53 = fmul double %18, -4.000000e+00
  %54 = fmul double %16, %53
  %55 = fmul double %6, %54
  %56 = tail call double @llvm.fmuladd.f64(double %47, double %52, double %55)
  %57 = fmul double %43, %56
  %58 = fadd double %4, %7
  %59 = fadd double %58, %10
  %60 = tail call double @llvm.fmuladd.f64(double %57, double %59, double %42)
  %61 = fmul double %13, 4.000000e+00
  %62 = fmul double %13, %61
  %63 = fmul double %6, %18
  %64 = tail call double @llvm.fmuladd.f64(double %22, double %3, double %63)
  %65 = fmul double %62, %64
  %66 = fneg double %13
  %67 = tail call double @llvm.fmuladd.f64(double %18, double %6, double %66)
  %68 = tail call double @llvm.fmuladd.f64(double %22, double %3, double %67)
  %69 = tail call double @llvm.fmuladd.f64(double %65, double %68, double %60)
  %70 = fmul double %62, %32
  %71 = tail call double @llvm.fmuladd.f64(double %70, double %7, double %69)
  %72 = fmul double %13, %13
  %73 = fmul double %13, %72
  %74 = tail call double @llvm.fmuladd.f64(double %73, double %13, double %71)
  %75 = fneg double %74
  %76 = getelementptr inbounds double, ptr %0, i64 3
  %77 = load double, ptr %76, align 8, !tbaa !34
  %78 = fmul double %77, %75
  %79 = fcmp olt double %78, -1.000000e+01
  %80 = select i1 %79, double -1.000000e+01, double %78
  %81 = fcmp olt double %80, 1.000000e+01
  %82 = select i1 %81, double %80, double 1.000000e+01
  ret double %82
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov11f_ellipsoidEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
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
  %23 = tail call double @sqrt(double noundef %22) #9
  ret double %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov9f_enneperEPdj(ptr nocapture noundef %0, i32 %1) #2 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds double, ptr %0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds double, ptr %0, i64 2
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = tail call double @llvm.fabs.f64(double %7)
  %9 = fcmp olt double %8, 2.000000e-01
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store double 2.000000e-01, ptr %6, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %10, %2
  %12 = fmul double %7, %7
  %13 = fmul double %5, %5
  %14 = fmul double %3, %3
  %15 = fsub double %13, %14
  %16 = load double, ptr %6, align 8, !tbaa !34
  %17 = fmul double %16, 2.000000e+00
  %18 = fdiv double %15, %17
  %19 = fmul double %12, 2.000000e+00
  %20 = fdiv double %19, 9.000000e+00
  %21 = fadd double %20, %18
  %22 = fadd double %21, 0.000000e+00
  %23 = fmul double %16, 4.000000e+00
  %24 = fdiv double %15, %23
  %25 = fadd double %14, %13
  %26 = tail call double @llvm.fmuladd.f64(double %12, double 0.000000e+00, double %25)
  %27 = tail call double @llvm.fmuladd.f64(double %26, double -0.000000e+00, double %24)
  %28 = fadd double %27, 0.000000e+00
  %29 = fmul double %22, %22
  %30 = fmul double %28, -6.000000e+00
  %31 = fmul double %28, %30
  %32 = tail call double @llvm.fmuladd.f64(double %29, double %22, double %31)
  %33 = fneg double %32
  %34 = getelementptr inbounds double, ptr %0, i64 3
  %35 = load double, ptr %34, align 8, !tbaa !34
  %36 = fmul double %35, %33
  %37 = fcmp olt double %36, -1.000000e+01
  %38 = select i1 %37, double -1.000000e+01, double %36
  %39 = fcmp olt double %38, 1.000000e+01
  %40 = select i1 %39, double %38, double 1.000000e+01
  ret double %40
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov14f_flange_coverEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
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
  %20 = tail call double @exp(double noundef %19) #9
  %21 = load double, ptr %11, align 8, !tbaa !34
  %22 = tail call double @llvm.fmuladd.f64(double %4, double %21, double %7)
  %23 = tail call double @llvm.fmuladd.f64(double %10, double %21, double %22)
  %24 = fneg double %23
  %25 = load double, ptr %17, align 8, !tbaa !34
  %26 = fmul double %25, %24
  %27 = tail call double @exp(double noundef %26) #9
  %28 = fadd double %20, %27
  %29 = load double, ptr %11, align 8, !tbaa !34
  %30 = tail call double @llvm.fmuladd.f64(double %7, double %29, double %4)
  %31 = tail call double @llvm.fmuladd.f64(double %10, double %29, double %30)
  %32 = fneg double %31
  %33 = load double, ptr %17, align 8, !tbaa !34
  %34 = fmul double %33, %32
  %35 = tail call double @exp(double noundef %34) #9
  %36 = fadd double %28, %35
  %37 = getelementptr inbounds double, ptr %0, i64 6
  %38 = load double, ptr %37, align 8, !tbaa !34
  %39 = getelementptr inbounds double, ptr %0, i64 5
  %40 = load double, ptr %39, align 8, !tbaa !34
  %41 = fneg double %36
  %42 = tail call double @llvm.fmuladd.f64(double %41, double %40, double %38)
  ret double %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov16f_folium_surfaceEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fadd double %7, %10
  %12 = getelementptr inbounds double, ptr %0, i64 5
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds double, ptr %0, i64 4
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = tail call double @llvm.fmuladd.f64(double %15, double -4.000000e+00, double %13)
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %3, double 1.000000e+00)
  %18 = fadd double %13, 1.000000e+00
  %19 = fmul double %4, %18
  %20 = tail call double @llvm.fmuladd.f64(double %11, double %17, double %19)
  %21 = getelementptr inbounds double, ptr %0, i64 3
  %22 = load double, ptr %21, align 8, !tbaa !34
  %23 = fmul double %22, %20
  %24 = fcmp olt double %23, -1.000000e+01
  %25 = select i1 %24, double -1.000000e+01, double %23
  %26 = fcmp olt double %25, 1.000000e+01
  %27 = select i1 %26, double %25, double 1.000000e+01
  ret double %27
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov19f_folium_surface_2dEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 6
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fcmp ogt double %9, 0.000000e+00
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %4)
  %15 = tail call double @sqrt(double noundef %14) #9
  %16 = getelementptr inbounds double, ptr %0, i64 7
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fsub double %15, %17
  %19 = getelementptr inbounds double, ptr %0, i64 8
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fmul double %20, 0x3F91DF46A2529D39
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = tail call double @cos(double noundef %21) #9
  %25 = load double, ptr %5, align 8, !tbaa !34
  %26 = tail call double @sin(double noundef %21) #9
  %27 = fneg double %25
  %28 = fmul double %26, %27
  %29 = tail call double @llvm.fmuladd.f64(double %18, double %24, double %28)
  store double %29, ptr %0, align 8, !tbaa !34
  %30 = tail call double @sin(double noundef %21) #9
  %31 = load double, ptr %5, align 8, !tbaa !34
  %32 = tail call double @cos(double noundef %21) #9
  %33 = fmul double %31, %32
  %34 = tail call double @llvm.fmuladd.f64(double %18, double %30, double %33)
  store double %34, ptr %5, align 8, !tbaa !34
  br label %36

35:                                               ; preds = %11
  store double %18, ptr %0, align 8, !tbaa !34
  br label %36

36:                                               ; preds = %35, %23
  %37 = load double, ptr %0, align 8, !tbaa !34
  %38 = fmul double %37, %37
  %39 = load double, ptr %5, align 8, !tbaa !34
  %40 = fmul double %39, %39
  br label %41

41:                                               ; preds = %36, %2
  %42 = phi double [ %40, %36 ], [ %7, %2 ]
  %43 = phi double [ %38, %36 ], [ %4, %2 ]
  %44 = getelementptr inbounds double, ptr %0, i64 5
  %45 = load double, ptr %44, align 8, !tbaa !34
  %46 = getelementptr inbounds double, ptr %0, i64 4
  %47 = load double, ptr %46, align 8, !tbaa !34
  %48 = tail call double @llvm.fmuladd.f64(double %47, double -4.000000e+00, double %45)
  %49 = load double, ptr %0, align 8, !tbaa !34
  %50 = tail call double @llvm.fmuladd.f64(double %48, double %49, double 1.000000e+00)
  %51 = fadd double %45, 1.000000e+00
  %52 = fmul double %43, %51
  %53 = tail call double @llvm.fmuladd.f64(double %42, double %50, double %52)
  %54 = fneg double %53
  %55 = getelementptr inbounds double, ptr %0, i64 3
  %56 = load double, ptr %55, align 8, !tbaa !34
  %57 = fmul double %56, %54
  %58 = fcmp olt double %57, -1.000000e+01
  %59 = select i1 %58, double -1.000000e+01, double %57
  %60 = fcmp olt double %59, 1.000000e+01
  %61 = select i1 %60, double %59, double 1.000000e+01
  ret double %61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov6f_globEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = fmul double %4, 5.000000e-01
  %6 = fmul double %4, %5
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %3, double %6)
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds double, ptr %0, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = fmul double %11, %11
  %13 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %12)
  %14 = fsub double %7, %13
  %15 = getelementptr inbounds double, ptr %0, i64 3
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = fmul double %16, %14
  %18 = fcmp olt double %17, -1.000000e+01
  %19 = select i1 %18, double -1.000000e+01, double %17
  %20 = fcmp olt double %19, 1.000000e+01
  %21 = select i1 %20, double %19, double 1.000000e+01
  ret double %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov7f_heartEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = tail call double @llvm.fmuladd.f64(double %4, double 2.000000e+00, double %7)
  %12 = fadd double %11, %10
  %13 = fadd double %12, -1.000000e+00
  %14 = fmul double %13, %13
  %15 = fmul double %4, -1.000000e-01
  %16 = fmul double %15, %10
  %17 = fmul double %9, %16
  %18 = tail call double @llvm.fmuladd.f64(double %14, double %13, double %17)
  %19 = fneg double %7
  %20 = fmul double %10, %19
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %9, double %18)
  %22 = fneg double %21
  %23 = getelementptr inbounds double, ptr %0, i64 3
  %24 = load double, ptr %23, align 8, !tbaa !34
  %25 = fmul double %24, %22
  %26 = fcmp olt double %25, -1.000000e+01
  %27 = select i1 %26, double -1.000000e+01, double %25
  %28 = fcmp olt double %27, 1.000000e+01
  %29 = select i1 %28, double %27, double 1.000000e+01
  ret double %29
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov15f_helical_torusEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds double, ptr %0, i64 2
  %5 = load double, ptr %4, align 8, !tbaa !34
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = tail call double @sqrt(double noundef %7) #9
  %9 = load double, ptr %0, align 8, !tbaa !34
  %10 = fcmp oeq double %9, 0.000000e+00
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load double, ptr %4, align 8, !tbaa !34
  %13 = fcmp oeq double %12, 0.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store double 0x3EB0C6F7A0B5ED8D, ptr %0, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %14, %11, %2
  %16 = load double, ptr %0, align 8, !tbaa !34
  %17 = load double, ptr %4, align 8, !tbaa !34
  %18 = tail call double @atan2(double noundef %16, double noundef %17) #9
  %19 = getelementptr inbounds double, ptr %0, i64 3
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fsub double %8, %20
  %22 = getelementptr inbounds double, ptr %0, i64 1
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = tail call double @atan2(double noundef %21, double noundef %23) #9
  %25 = load double, ptr %19, align 8, !tbaa !34
  %26 = fsub double %8, %25
  %27 = load double, ptr %22, align 8, !tbaa !34
  %28 = fmul double %27, %27
  %29 = tail call double @llvm.fmuladd.f64(double %26, double %26, double %28)
  %30 = tail call double @sqrt(double noundef %29) #9
  %31 = getelementptr inbounds double, ptr %0, i64 4
  %32 = load double, ptr %31, align 8, !tbaa !34
  %33 = getelementptr inbounds double, ptr %0, i64 5
  %34 = load double, ptr %33, align 8, !tbaa !34
  %35 = fmul double %24, %34
  %36 = tail call double @llvm.fmuladd.f64(double %18, double %32, double %35)
  %37 = tail call double @fmod(double noundef %36, double noundef 0x401921FB54442D18) #9
  %38 = fcmp olt double %37, 0.000000e+00
  %39 = fadd double %37, 0x401921FB54442D18
  %40 = select i1 %38, double %39, double %37
  %41 = fadd double %40, 0xC00921FB54442D18
  %42 = getelementptr inbounds double, ptr %0, i64 11
  %43 = load double, ptr %42, align 8, !tbaa !34
  %44 = fmul double %43, %41
  %45 = getelementptr inbounds double, ptr %0, i64 8
  %46 = load double, ptr %45, align 8, !tbaa !34
  %47 = fsub double %30, %46
  %48 = tail call double @atan2(double noundef %44, double noundef %47) #9
  %49 = getelementptr inbounds double, ptr %0, i64 10
  %50 = load double, ptr %49, align 8, !tbaa !34
  %51 = getelementptr inbounds double, ptr %0, i64 12
  %52 = load double, ptr %51, align 8, !tbaa !34
  %53 = fmul double %18, %52
  %54 = tail call double @llvm.fmuladd.f64(double %48, double %50, double %53)
  %55 = tail call double @cos(double noundef %54) #9
  %56 = getelementptr inbounds double, ptr %0, i64 6
  %57 = load double, ptr %56, align 8, !tbaa !34
  %58 = getelementptr inbounds double, ptr %0, i64 7
  %59 = load double, ptr %58, align 8, !tbaa !34
  %60 = tail call double @llvm.fmuladd.f64(double %55, double %57, double %59)
  %61 = load double, ptr %45, align 8, !tbaa !34
  %62 = fadd double %59, %61
  %63 = load double, ptr %19, align 8, !tbaa !34
  %64 = fsub double %62, %63
  %65 = fsub double %64, %8
  %66 = fsub double %30, %61
  %67 = fmul double %41, %41
  %68 = getelementptr inbounds double, ptr %0, i64 9
  %69 = load double, ptr %68, align 8, !tbaa !34
  %70 = fmul double %67, %69
  %71 = tail call double @llvm.fmuladd.f64(double %66, double %66, double %70)
  %72 = tail call double @sqrt(double noundef %71) #9
  %73 = load double, ptr %45, align 8, !tbaa !34
  %74 = fadd double %30, %73
  %75 = fcmp olt double %74, %72
  %76 = select i1 %75, double %74, double %72
  %77 = fsub double %60, %76
  %78 = fcmp olt double %65, %77
  %79 = select i1 %78, double %77, double %65
  %80 = fneg double %79
  ret double %80
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov8f_helix1EPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds double, ptr %0, i64 2
  %5 = load double, ptr %4, align 8, !tbaa !34
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = tail call double @sqrt(double noundef %7) #9
  %9 = load double, ptr %0, align 8, !tbaa !34
  %10 = fcmp oeq double %9, 0.000000e+00
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load double, ptr %4, align 8, !tbaa !34
  %13 = fcmp oeq double %12, 0.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store double 0x3EB0C6F7A0B5ED8D, ptr %0, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %14, %11, %2
  %16 = load double, ptr %4, align 8, !tbaa !34
  %17 = load double, ptr %0, align 8, !tbaa !34
  %18 = tail call double @atan2(double noundef %16, double noundef %17) #9
  %19 = getelementptr inbounds double, ptr %0, i64 3
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds double, ptr %0, i64 1
  %22 = load double, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds double, ptr %0, i64 4
  %24 = load double, ptr %23, align 8, !tbaa !34
  %25 = fmul double %22, %24
  %26 = fmul double %20, %25
  %27 = tail call double @llvm.fmuladd.f64(double %18, double %20, double %26)
  %28 = tail call double @fmod(double noundef %27, double noundef 0x401921FB54442D18) #9
  %29 = fcmp olt double %28, 0.000000e+00
  %30 = fadd double %28, 0x401921FB54442D18
  %31 = select i1 %29, double %30, double %28
  %32 = fadd double %31, 0xC00921FB54442D18
  %33 = getelementptr inbounds double, ptr %0, i64 7
  %34 = load double, ptr %33, align 8, !tbaa !34
  %35 = fdiv double %32, %34
  %36 = load double, ptr %23, align 8, !tbaa !34
  %37 = load double, ptr %19, align 8, !tbaa !34
  %38 = fmul double %36, %37
  %39 = fdiv double %35, %38
  store double %39, ptr %4, align 8, !tbaa !34
  %40 = getelementptr inbounds double, ptr %0, i64 6
  %41 = load double, ptr %40, align 8, !tbaa !34
  %42 = fsub double %8, %41
  store double %42, ptr %0, align 8, !tbaa !34
  %43 = getelementptr inbounds double, ptr %0, i64 8
  %44 = load double, ptr %43, align 8, !tbaa !34
  %45 = fcmp oeq double %44, 1.000000e+00
  br i1 %45, label %46, label %50

46:                                               ; preds = %15
  %47 = fmul double %39, %39
  %48 = tail call double @llvm.fmuladd.f64(double %42, double %42, double %47)
  %49 = tail call double @sqrt(double noundef %48) #9
  br label %89

50:                                               ; preds = %15
  %51 = getelementptr inbounds double, ptr %0, i64 9
  %52 = load double, ptr %51, align 8, !tbaa !34
  %53 = fcmp une double %52, 0.000000e+00
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = fmul double %52, 0x3F91DF46A2529D39
  %56 = tail call double @cos(double noundef %55) #9
  %57 = load double, ptr %51, align 8, !tbaa !34
  %58 = fmul double %57, 0x3F91DF46A2529D39
  %59 = tail call double @sin(double noundef %58) #9
  %60 = load double, ptr %0, align 8, !tbaa !34
  %61 = load double, ptr %4, align 8, !tbaa !34
  %62 = fneg double %61
  %63 = fmul double %59, %62
  %64 = tail call double @llvm.fmuladd.f64(double %60, double %56, double %63)
  %65 = fmul double %56, %61
  %66 = tail call double @llvm.fmuladd.f64(double %60, double %59, double %65)
  store double %66, ptr %4, align 8, !tbaa !34
  store double %64, ptr %0, align 8, !tbaa !34
  br label %67

67:                                               ; preds = %54, %50
  %68 = load double, ptr %43, align 8, !tbaa !34
  %69 = fcmp une double %68, 0.000000e+00
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = fdiv double 2.000000e+00, %68
  %72 = load double, ptr %0, align 8, !tbaa !34
  %73 = tail call double @llvm.fabs.f64(double %72)
  %74 = tail call double @pow(double noundef %73, double noundef %71) #9
  %75 = load double, ptr %4, align 8, !tbaa !34
  %76 = tail call double @llvm.fabs.f64(double %75)
  %77 = tail call double @pow(double noundef %76, double noundef %71) #9
  %78 = fadd double %74, %77
  %79 = load double, ptr %43, align 8, !tbaa !34
  %80 = fmul double %79, 5.000000e-01
  %81 = tail call double @pow(double noundef %78, double noundef %80) #9
  br label %89

82:                                               ; preds = %67
  %83 = load double, ptr %0, align 8, !tbaa !34
  %84 = tail call double @llvm.fabs.f64(double %83)
  %85 = load double, ptr %4, align 8, !tbaa !34
  %86 = tail call double @llvm.fabs.f64(double %85)
  %87 = fcmp olt double %84, %86
  %88 = select i1 %87, double %86, double %84
  br label %89

89:                                               ; preds = %70, %82, %46
  %90 = phi double [ %49, %46 ], [ %81, %70 ], [ %88, %82 ]
  %91 = getelementptr inbounds double, ptr %0, i64 5
  %92 = load double, ptr %91, align 8, !tbaa !34
  %93 = load double, ptr %40, align 8, !tbaa !34
  %94 = fadd double %8, %93
  %95 = fcmp olt double %90, %94
  %96 = select i1 %95, double %90, double %94
  %97 = fsub double %96, %92
  ret double %97
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov8f_helix2EPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = getelementptr inbounds double, ptr %0, i64 1
  %4 = load double, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds double, ptr %0, i64 4
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %4, %6
  %8 = tail call double @cos(double noundef %7) #9
  %9 = tail call double @sin(double noundef %7) #9
  %10 = load double, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds double, ptr %0, i64 6
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fneg double %12
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %8, double %10)
  %15 = getelementptr inbounds double, ptr %0, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = tail call double @llvm.fmuladd.f64(double %13, double %9, double %16)
  %18 = fmul double %9, %17
  %19 = tail call double @llvm.fmuladd.f64(double %14, double %8, double %18)
  store double %19, ptr %0, align 8, !tbaa !34
  %20 = fneg double %14
  %21 = fmul double %8, %17
  %22 = tail call double @llvm.fmuladd.f64(double %20, double %9, double %21)
  store double %22, ptr %15, align 8, !tbaa !34
  %23 = getelementptr inbounds double, ptr %0, i64 8
  %24 = load double, ptr %23, align 8, !tbaa !34
  %25 = fcmp oeq double %24, 1.000000e+00
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = fmul double %22, %22
  %28 = tail call double @llvm.fmuladd.f64(double %19, double %19, double %27)
  %29 = tail call double @sqrt(double noundef %28) #9
  br label %48

30:                                               ; preds = %2
  %31 = fcmp une double %24, 0.000000e+00
  br i1 %31, label %32, label %43

32:                                               ; preds = %30
  %33 = fdiv double 2.000000e+00, %24
  %34 = tail call double @llvm.fabs.f64(double %19)
  %35 = tail call double @pow(double noundef %34, double noundef %33) #9
  %36 = load double, ptr %15, align 8, !tbaa !34
  %37 = tail call double @llvm.fabs.f64(double %36)
  %38 = tail call double @pow(double noundef %37, double noundef %33) #9
  %39 = fadd double %35, %38
  %40 = load double, ptr %23, align 8, !tbaa !34
  %41 = fmul double %40, 5.000000e-01
  %42 = tail call double @pow(double noundef %39, double noundef %41) #9
  br label %48

43:                                               ; preds = %30
  %44 = tail call double @llvm.fabs.f64(double %19)
  %45 = tail call double @llvm.fabs.f64(double %22)
  %46 = fcmp olt double %44, %45
  %47 = select i1 %46, double %45, double %44
  br label %48

48:                                               ; preds = %32, %43, %26
  %49 = phi double [ %29, %26 ], [ %42, %32 ], [ %47, %43 ]
  %50 = getelementptr inbounds double, ptr %0, i64 5
  %51 = load double, ptr %50, align 8, !tbaa !34
  %52 = fsub double %49, %51
  ret double %52
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov7f_hex_xEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = tail call double @llvm.fabs.f64(double %3)
  %5 = tail call double @fmod(double noundef %4, double noundef 0x3FFBB67AE8584CAA) #9
  %6 = fadd double %5, 0xBFEBB67AE8584CAA
  %7 = tail call double @llvm.fabs.f64(double %6)
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = tail call noundef double @fmod(double noundef %10, double noundef 3.000000e+00) #9
  %12 = fadd double %11, -1.500000e+00
  %13 = tail call double @llvm.fabs.f64(double %12)
  %14 = fsub double 0x3FEBB67AE8584CAA, %7
  %15 = fsub double 1.500000e+00, %13
  %16 = fmul double %12, %12
  %17 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %16)
  %18 = fmul double %15, %15
  %19 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %18)
  %20 = fcmp ogt double %17, %19
  %21 = select i1 %20, double %15, double %13
  %22 = select i1 %20, double %14, double %7
  %23 = fcmp oeq double %22, 0.000000e+00
  %24 = fcmp oeq double %21, 0.000000e+00
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store double 0x3EB0C6F7A0B5ED8D, ptr %0, align 8, !tbaa !34
  br label %27

27:                                               ; preds = %26, %2
  %28 = tail call double @atan2(double noundef %21, double noundef %22) #9
  %29 = fcmp olt double %28, 0x3FE0C152382D7365
  %30 = fmul double %21, 0x3FEBB67AE8584CAA
  %31 = tail call double @llvm.fmuladd.f64(double %22, double 0x3FE0000000000001, double %30)
  %32 = select i1 %29, double %22, double %31
  ret double %32
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov7f_hex_yEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = tail call double @llvm.fabs.f64(double %3)
  %5 = tail call double @fmod(double noundef %4, double noundef 0x3FFBB67AE8584CAA) #9
  %6 = fadd double %5, 0xBFEBB67AE8584CAA
  %7 = tail call double @llvm.fabs.f64(double %6)
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = tail call noundef double @fmod(double noundef %10, double noundef 3.000000e+00) #9
  %12 = fadd double %11, -1.500000e+00
  %13 = tail call double @llvm.fabs.f64(double %12)
  %14 = fsub double 0x3FEBB67AE8584CAA, %7
  %15 = fsub double 1.500000e+00, %13
  %16 = fmul double %12, %12
  %17 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %16)
  %18 = fmul double %15, %15
  %19 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %18)
  %20 = fcmp ogt double %17, %19
  %21 = select i1 %20, double %15, double %13
  %22 = select i1 %20, double %14, double %7
  %23 = fcmp oeq double %22, 0.000000e+00
  %24 = fcmp oeq double %21, 0.000000e+00
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store double 0x3EB0C6F7A0B5ED8D, ptr %0, align 8, !tbaa !34
  br label %27

27:                                               ; preds = %26, %2
  %28 = tail call double @atan2(double noundef %21, double noundef %22) #9
  %29 = fcmp olt double %28, 0x3FE0C152382D7365
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = fmul double %21, 0x3FE0000000000001
  %32 = tail call double @llvm.fmuladd.f64(double %22, double 0xBFEBB67AE8584CAA, double %31)
  %33 = tail call double @llvm.fabs.f64(double %32)
  br label %34

34:                                               ; preds = %27, %30
  %35 = phi double [ %33, %30 ], [ %21, %27 ]
  ret double %35
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3pov11f_hetero_mfEPdj(ptr nocapture noundef readonly %0, i32 %1) #3 {
  %3 = alloca [3 x double], align 16
  %4 = alloca %"struct.pov::Pattern_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %5 = load double, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds double, ptr %0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  store double %5, ptr %3, align 16, !tbaa !34
  %10 = getelementptr inbounds double, ptr %3, i64 1
  store double %7, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds double, ptr %3, i64 2
  store double %9, ptr %11, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #9
  %12 = getelementptr inbounds double, ptr %0, i64 8
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = fptosi double %13 to i32
  %15 = trunc i32 %14 to i16
  %16 = shl i16 %15, 4
  %17 = and i16 %16, 48
  %18 = getelementptr inbounds %"struct.pov::Pattern_Struct", ptr %4, i64 0, i32 2
  store i16 %17, ptr %18, align 4, !tbaa !38
  %19 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %20 = call double @llvm.fmuladd.f64(double %19, double 2.000000e+00, double -1.000000e+00)
  %21 = getelementptr inbounds double, ptr %0, i64 6
  %22 = load double, ptr %21, align 8, !tbaa !34
  %23 = fadd double %20, %22
  %24 = getelementptr inbounds double, ptr %0, i64 4
  %25 = load double, ptr %24, align 8, !tbaa !34
  %26 = load double, ptr %3, align 16, !tbaa !34
  %27 = fmul double %25, %26
  store double %27, ptr %3, align 16, !tbaa !34
  %28 = load double, ptr %10, align 8, !tbaa !34
  %29 = fmul double %25, %28
  store double %29, ptr %10, align 8, !tbaa !34
  %30 = load double, ptr %11, align 16, !tbaa !34
  %31 = fmul double %25, %30
  store double %31, ptr %11, align 16, !tbaa !34
  %32 = getelementptr inbounds double, ptr %0, i64 3
  %33 = load double, ptr %32, align 8, !tbaa !34
  %34 = fneg double %33
  %35 = call double @pow(double noundef %25, double noundef %34) #9
  %36 = getelementptr inbounds double, ptr %0, i64 5
  %37 = load double, ptr %36, align 8, !tbaa !34
  %38 = fcmp ogt double %37, 1.000000e+00
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = getelementptr inbounds double, ptr %0, i64 7
  br label %49

41:                                               ; preds = %61, %2
  %42 = phi double [ %35, %2 ], [ %71, %61 ]
  %43 = phi double [ %23, %2 ], [ %63, %61 ]
  %44 = phi double [ %37, %2 ], [ %74, %61 ]
  %45 = fptosi double %44 to i32
  %46 = sitofp i32 %45 to double
  %47 = fsub double %44, %46
  %48 = fcmp une double %47, 0.000000e+00
  br i1 %48, label %82, label %90

49:                                               ; preds = %39, %61
  %50 = phi double [ %23, %39 ], [ %63, %61 ]
  %51 = phi i32 [ 1, %39 ], [ %72, %61 ]
  %52 = phi double [ %35, %39 ], [ %71, %61 ]
  %53 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %54 = call double @llvm.fmuladd.f64(double %53, double 2.000000e+00, double -1.000000e+00)
  %55 = load double, ptr %21, align 8, !tbaa !34
  %56 = fadd double %54, %55
  %57 = fmul double %52, %56
  %58 = load double, ptr %40, align 8, !tbaa !34
  %59 = fptosi double %58 to i32
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %76, %49
  %62 = phi double [ %57, %49 ], [ %79, %76 ]
  %63 = fadd double %50, %62
  %64 = load double, ptr %24, align 8, !tbaa !34
  %65 = load double, ptr %3, align 16, !tbaa !34
  %66 = fmul double %64, %65
  store double %66, ptr %3, align 16, !tbaa !34
  %67 = load double, ptr %10, align 8, !tbaa !34
  %68 = fmul double %64, %67
  store double %68, ptr %10, align 8, !tbaa !34
  %69 = load double, ptr %11, align 16, !tbaa !34
  %70 = fmul double %64, %69
  store double %70, ptr %11, align 16, !tbaa !34
  %71 = fmul double %35, %52
  %72 = add nuw nsw i32 %51, 1
  %73 = sitofp i32 %72 to double
  %74 = load double, ptr %36, align 8, !tbaa !34
  %75 = fcmp ogt double %74, %73
  br i1 %75, label %49, label %41, !llvm.loop !44

76:                                               ; preds = %49, %76
  %77 = phi i32 [ %80, %76 ], [ %59, %49 ]
  %78 = phi double [ %79, %76 ], [ %57, %49 ]
  %79 = fmul double %50, %78
  %80 = add nsw i32 %77, -1
  %81 = icmp sgt i32 %77, 1
  br i1 %81, label %76, label %61, !llvm.loop !47

82:                                               ; preds = %41
  %83 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %84 = call double @llvm.fmuladd.f64(double %83, double 2.000000e+00, double -1.000000e+00)
  %85 = load double, ptr %21, align 8, !tbaa !34
  %86 = fadd double %84, %85
  %87 = fmul double %42, %86
  %88 = fmul double %47, %87
  %89 = call double @llvm.fmuladd.f64(double %88, double %43, double %43)
  br label %90

90:                                               ; preds = %82, %41
  %91 = phi double [ %89, %82 ], [ %43, %41 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret double %91
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov14f_hunt_surfaceEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fadd double %4, %7
  %12 = fadd double %11, %10
  %13 = fadd double %12, -1.300000e+01
  %14 = fmul double %13, 4.000000e+00
  %15 = fmul double %13, %14
  %16 = tail call double @llvm.fmuladd.f64(double %4, double 3.000000e+00, double %7)
  %17 = tail call double @llvm.fmuladd.f64(double %10, double -4.000000e+00, double %16)
  %18 = fadd double %17, -1.200000e+01
  %19 = fmul double %18, 2.700000e+01
  %20 = fmul double %18, %19
  %21 = tail call double @llvm.fmuladd.f64(double %15, double %13, double %20)
  %22 = fneg double %21
  %23 = getelementptr inbounds double, ptr %0, i64 3
  %24 = load double, ptr %23, align 8, !tbaa !34
  %25 = fmul double %24, %22
  %26 = fcmp olt double %25, -1.000000e+01
  %27 = select i1 %26, double -1.000000e+01, double %25
  %28 = fcmp olt double %27, 1.000000e+01
  %29 = select i1 %28, double %27, double 1.000000e+01
  ret double %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov18f_hyperbolic_torusEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 4
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = getelementptr inbounds double, ptr %0, i64 5
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fmul double %15, %15
  %17 = fmul double %4, 2.000000e+00
  %18 = fmul double %17, %7
  %19 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %18)
  %20 = fneg double %17
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %10, double %19)
  %22 = fadd double %13, %16
  %23 = fmul double %22, 2.000000e+00
  %24 = fneg double %23
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %4, double %21)
  %26 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %25)
  %27 = fmul double %7, -2.000000e+00
  %28 = tail call double @llvm.fmuladd.f64(double %27, double %10, double %26)
  %29 = fsub double %13, %16
  %30 = fmul double %29, 2.000000e+00
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %7, double %28)
  %32 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %31)
  %33 = tail call double @llvm.fmuladd.f64(double %23, double %10, double %32)
  %34 = tail call double @llvm.fmuladd.f64(double %29, double %29, double %33)
  %35 = fneg double %34
  %36 = getelementptr inbounds double, ptr %0, i64 3
  %37 = load double, ptr %36, align 8, !tbaa !34
  %38 = fmul double %37, %35
  %39 = fcmp olt double %38, -1.000000e+01
  %40 = select i1 %39, double -1.000000e+01, double %38
  %41 = fcmp olt double %40, 1.000000e+01
  %42 = select i1 %41, double %40, double 1.000000e+01
  ret double %42
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov18f_isect_ellipsoidsEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
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
  %20 = tail call double @exp(double noundef %19) #9
  %21 = load double, ptr %11, align 8, !tbaa !34
  %22 = tail call double @llvm.fmuladd.f64(double %4, double %21, double %7)
  %23 = tail call double @llvm.fmuladd.f64(double %10, double %21, double %22)
  %24 = fneg double %23
  %25 = load double, ptr %17, align 8, !tbaa !34
  %26 = fmul double %25, %24
  %27 = tail call double @exp(double noundef %26) #9
  %28 = fcmp olt double %27, %20
  %29 = select i1 %28, double %27, double %20
  %30 = load double, ptr %11, align 8, !tbaa !34
  %31 = tail call double @llvm.fmuladd.f64(double %7, double %30, double %4)
  %32 = tail call double @llvm.fmuladd.f64(double %10, double %30, double %31)
  %33 = fneg double %32
  %34 = load double, ptr %17, align 8, !tbaa !34
  %35 = fmul double %34, %33
  %36 = tail call double @exp(double noundef %35) #9
  %37 = fcmp olt double %36, %29
  %38 = select i1 %37, double %36, double %29
  %39 = getelementptr inbounds double, ptr %0, i64 6
  %40 = load double, ptr %39, align 8, !tbaa !34
  %41 = getelementptr inbounds double, ptr %0, i64 5
  %42 = load double, ptr %41, align 8, !tbaa !34
  %43 = fneg double %38
  %44 = tail call double @llvm.fmuladd.f64(double %43, double %42, double %40)
  ret double %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov20f_kampyle_of_eudoxusEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds double, ptr %0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = fmul double %8, %8
  %10 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %9)
  %11 = getelementptr inbounds double, ptr %0, i64 5
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = fneg double %13
  %15 = fmul double %4, %14
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %4, double %10)
  %17 = getelementptr inbounds double, ptr %0, i64 4
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = fmul double %13, %18
  %20 = fmul double %18, %19
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %4, double %16)
  %22 = fneg double %21
  %23 = getelementptr inbounds double, ptr %0, i64 3
  %24 = load double, ptr %23, align 8, !tbaa !34
  %25 = fmul double %24, %22
  %26 = fcmp olt double %25, -1.000000e+01
  %27 = select i1 %26, double -1.000000e+01, double %25
  %28 = fcmp olt double %27, 1.000000e+01
  %29 = select i1 %28, double %27, double 1.000000e+01
  ret double %29
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov23f_kampyle_of_eudoxus_2dEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 6
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fcmp ogt double %9, 0.000000e+00
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %4)
  %15 = tail call double @sqrt(double noundef %14) #9
  %16 = getelementptr inbounds double, ptr %0, i64 7
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fsub double %15, %17
  %19 = getelementptr inbounds double, ptr %0, i64 8
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fmul double %20, 0x3F91DF46A2529D39
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = tail call double @cos(double noundef %21) #9
  %25 = load double, ptr %5, align 8, !tbaa !34
  %26 = tail call double @sin(double noundef %21) #9
  %27 = fneg double %25
  %28 = fmul double %26, %27
  %29 = tail call double @llvm.fmuladd.f64(double %18, double %24, double %28)
  store double %29, ptr %0, align 8, !tbaa !34
  %30 = tail call double @sin(double noundef %21) #9
  %31 = load double, ptr %5, align 8, !tbaa !34
  %32 = tail call double @cos(double noundef %21) #9
  %33 = fmul double %31, %32
  %34 = tail call double @llvm.fmuladd.f64(double %18, double %30, double %33)
  store double %34, ptr %5, align 8, !tbaa !34
  br label %36

35:                                               ; preds = %11
  store double %18, ptr %0, align 8, !tbaa !34
  br label %36

36:                                               ; preds = %35, %23
  %37 = load double, ptr %0, align 8, !tbaa !34
  %38 = fmul double %37, %37
  %39 = load double, ptr %5, align 8, !tbaa !34
  %40 = fmul double %39, %39
  br label %41

41:                                               ; preds = %36, %2
  %42 = phi double [ %40, %36 ], [ %7, %2 ]
  %43 = phi double [ %38, %36 ], [ %4, %2 ]
  %44 = getelementptr inbounds double, ptr %0, i64 5
  %45 = load double, ptr %44, align 8, !tbaa !34
  %46 = fmul double %45, %45
  %47 = fneg double %46
  %48 = fmul double %43, %47
  %49 = tail call double @llvm.fmuladd.f64(double %48, double %43, double %42)
  %50 = getelementptr inbounds double, ptr %0, i64 4
  %51 = load double, ptr %50, align 8, !tbaa !34
  %52 = fmul double %46, %51
  %53 = fmul double %45, %52
  %54 = tail call double @llvm.fmuladd.f64(double %53, double %43, double %49)
  %55 = fneg double %54
  %56 = getelementptr inbounds double, ptr %0, i64 3
  %57 = load double, ptr %56, align 8, !tbaa !34
  %58 = fmul double %57, %55
  %59 = fcmp olt double %58, -1.000000e+01
  %60 = select i1 %59, double -1.000000e+01, double %58
  %61 = fcmp olt double %60, 1.000000e+01
  %62 = select i1 %61, double %60, double 1.000000e+01
  ret double %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov14f_klein_bottleEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fadd double %4, %7
  %12 = fadd double %11, %10
  %13 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double %12)
  %14 = fadd double %13, -1.000000e+00
  %15 = tail call double @llvm.fmuladd.f64(double %6, double -2.000000e+00, double %12)
  %16 = fadd double %15, -1.000000e+00
  %17 = fmul double %10, -8.000000e+00
  %18 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %17)
  %19 = fmul double %3, 1.600000e+01
  %20 = fmul double %19, %9
  %21 = fmul double %20, %16
  %22 = tail call double @llvm.fmuladd.f64(double %14, double %18, double %21)
  %23 = fneg double %22
  %24 = getelementptr inbounds double, ptr %0, i64 3
  %25 = load double, ptr %24, align 8, !tbaa !34
  %26 = fmul double %25, %23
  %27 = fcmp olt double %26, -1.000000e+01
  %28 = select i1 %27, double -1.000000e+01, double %26
  %29 = fcmp olt double %28, 1.000000e+01
  %30 = select i1 %29, double %28, double 1.000000e+01
  ret double %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov19f_kummer_surface_v1EPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fmul double %7, %7
  %12 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %11)
  %13 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %12)
  %14 = fsub double %13, %4
  %15 = fsub double %14, %7
  %16 = fsub double %15, %10
  %17 = fneg double %4
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %7, double %16)
  %19 = tail call double @llvm.fmuladd.f64(double %17, double %10, double %18)
  %20 = fneg double %7
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %10, double %19)
  %22 = fadd double %21, 1.000000e+00
  %23 = fneg double %22
  %24 = getelementptr inbounds double, ptr %0, i64 3
  %25 = load double, ptr %24, align 8, !tbaa !34
  %26 = fmul double %25, %23
  %27 = fcmp olt double %26, -1.000000e+01
  %28 = select i1 %27, double -1.000000e+01, double %26
  %29 = fcmp olt double %28, 1.000000e+01
  %30 = select i1 %29, double %28, double 1.000000e+01
  ret double %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov19f_kummer_surface_v2EPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fmul double %7, %7
  %12 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %11)
  %13 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %12)
  %14 = getelementptr inbounds double, ptr %0, i64 4
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fadd double %4, %7
  %17 = fadd double %16, %10
  %18 = tail call double @llvm.fmuladd.f64(double %15, double %17, double %13)
  %19 = getelementptr inbounds double, ptr %0, i64 5
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fmul double %4, %10
  %22 = tail call double @llvm.fmuladd.f64(double %4, double %7, double %21)
  %23 = tail call double @llvm.fmuladd.f64(double %7, double %10, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %20, double %23, double %18)
  %25 = getelementptr inbounds double, ptr %0, i64 6
  %26 = load double, ptr %25, align 8, !tbaa !34
  %27 = fmul double %3, %26
  %28 = fmul double %6, %27
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %9, double %24)
  %30 = fadd double %29, -1.000000e+00
  %31 = fneg double %30
  %32 = getelementptr inbounds double, ptr %0, i64 3
  %33 = load double, ptr %32, align 8, !tbaa !34
  %34 = fmul double %33, %31
  %35 = fcmp olt double %34, -1.000000e+01
  %36 = select i1 %35, double -1.000000e+01, double %34
  %37 = fcmp olt double %36, 1.000000e+01
  %38 = select i1 %37, double %36, double 1.000000e+01
  ret double %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov22f_lemniscate_of_geronoEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fneg double %4
  %12 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %11)
  %13 = fadd double %12, %7
  %14 = fadd double %13, %10
  %15 = fneg double %14
  %16 = getelementptr inbounds double, ptr %0, i64 3
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fmul double %17, %15
  %19 = fcmp olt double %18, -1.000000e+01
  %20 = select i1 %19, double -1.000000e+01, double %18
  %21 = fcmp olt double %20, 1.000000e+01
  %22 = select i1 %21, double %20, double 1.000000e+01
  ret double %22
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov25f_lemniscate_of_gerono_2dEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 6
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fcmp ogt double %9, 0.000000e+00
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %4)
  %15 = tail call double @sqrt(double noundef %14) #9
  %16 = getelementptr inbounds double, ptr %0, i64 7
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fsub double %15, %17
  %19 = getelementptr inbounds double, ptr %0, i64 8
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fmul double %20, 0x3F91DF46A2529D39
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = tail call double @cos(double noundef %21) #9
  %25 = load double, ptr %5, align 8, !tbaa !34
  %26 = tail call double @sin(double noundef %21) #9
  %27 = fneg double %25
  %28 = fmul double %26, %27
  %29 = tail call double @llvm.fmuladd.f64(double %18, double %24, double %28)
  store double %29, ptr %0, align 8, !tbaa !34
  %30 = tail call double @sin(double noundef %21) #9
  %31 = load double, ptr %5, align 8, !tbaa !34
  %32 = tail call double @cos(double noundef %21) #9
  %33 = fmul double %31, %32
  %34 = tail call double @llvm.fmuladd.f64(double %18, double %30, double %33)
  store double %34, ptr %5, align 8, !tbaa !34
  br label %36

35:                                               ; preds = %11
  store double %18, ptr %0, align 8, !tbaa !34
  br label %36

36:                                               ; preds = %35, %23
  %37 = load double, ptr %0, align 8, !tbaa !34
  %38 = fmul double %37, %37
  %39 = load double, ptr %5, align 8, !tbaa !34
  %40 = fmul double %39, %39
  br label %41

41:                                               ; preds = %36, %2
  %42 = phi double [ %40, %36 ], [ %7, %2 ]
  %43 = phi double [ %38, %36 ], [ %4, %2 ]
  %44 = getelementptr inbounds double, ptr %0, i64 5
  %45 = load double, ptr %44, align 8, !tbaa !34
  %46 = fmul double %45, %45
  %47 = getelementptr inbounds double, ptr %0, i64 4
  %48 = load double, ptr %47, align 8, !tbaa !34
  %49 = fneg double %46
  %50 = fmul double %48, %49
  %51 = fmul double %48, %50
  %52 = tail call double @llvm.fmuladd.f64(double %51, double %43, double %42)
  %53 = fmul double %43, %46
  %54 = tail call double @llvm.fmuladd.f64(double %53, double %43, double %52)
  %55 = fneg double %54
  %56 = getelementptr inbounds double, ptr %0, i64 3
  %57 = load double, ptr %56, align 8, !tbaa !34
  %58 = fmul double %57, %55
  %59 = fcmp olt double %58, -1.000000e+01
  %60 = select i1 %59, double -1.000000e+01, double %58
  %61 = fcmp olt double %60, 1.000000e+01
  %62 = select i1 %61, double %60, double 1.000000e+01
  ret double %62
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov7f_mesh1EPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = getelementptr inbounds double, ptr %0, i64 3
  %4 = load double, ptr %3, align 8, !tbaa !34
  %5 = fdiv double 0x400921FB54442D18, %4
  %6 = getelementptr inbounds double, ptr %0, i64 4
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fdiv double 0x400921FB54442D18, %7
  %9 = load double, ptr %0, align 8, !tbaa !34
  %10 = fmul double %4, 2.000000e+00
  %11 = tail call double @fmod(double noundef %9, double noundef %10) #9
  %12 = fcmp olt double %11, 0.000000e+00
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load double, ptr %3, align 8, !tbaa !34
  %15 = tail call double @llvm.fmuladd.f64(double %14, double 2.000000e+00, double %11)
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi double [ %15, %13 ], [ %11, %2 ]
  %18 = load double, ptr %3, align 8, !tbaa !34
  %19 = fsub double %17, %18
  %20 = tail call double @llvm.fabs.f64(double %19)
  %21 = getelementptr inbounds double, ptr %0, i64 5
  %22 = load double, ptr %21, align 8, !tbaa !34
  %23 = fmul double %22, %20
  %24 = getelementptr inbounds double, ptr %0, i64 1
  %25 = load double, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds double, ptr %0, i64 2
  %27 = load double, ptr %26, align 8, !tbaa !34
  %28 = fmul double %8, %27
  %29 = tail call double @cos(double noundef %28) #9
  %30 = getelementptr inbounds double, ptr %0, i64 6
  %31 = load double, ptr %30, align 8, !tbaa !34
  %32 = fneg double %29
  %33 = tail call double @llvm.fmuladd.f64(double %32, double %31, double %25)
  %34 = getelementptr inbounds double, ptr %0, i64 7
  %35 = load double, ptr %34, align 8, !tbaa !34
  %36 = fmul double %33, %35
  %37 = fmul double %23, %23
  %38 = tail call double @llvm.fmuladd.f64(double %36, double %36, double %37)
  %39 = tail call double @sqrt(double noundef %38) #9
  %40 = load double, ptr %0, align 8, !tbaa !34
  %41 = load double, ptr %3, align 8, !tbaa !34
  %42 = fsub double %40, %41
  %43 = fmul double %41, 2.000000e+00
  %44 = tail call double @fmod(double noundef %42, double noundef %43) #9
  %45 = fcmp olt double %44, 0.000000e+00
  br i1 %45, label %46, label %49

46:                                               ; preds = %16
  %47 = load double, ptr %3, align 8, !tbaa !34
  %48 = tail call double @llvm.fmuladd.f64(double %47, double 2.000000e+00, double %44)
  br label %49

49:                                               ; preds = %46, %16
  %50 = phi double [ %48, %46 ], [ %44, %16 ]
  %51 = load double, ptr %3, align 8, !tbaa !34
  %52 = fsub double %50, %51
  %53 = tail call double @llvm.fabs.f64(double %52)
  %54 = load double, ptr %21, align 8, !tbaa !34
  %55 = fmul double %54, %53
  %56 = load double, ptr %24, align 8, !tbaa !34
  %57 = load double, ptr %26, align 8, !tbaa !34
  %58 = fmul double %8, %57
  %59 = tail call double @cos(double noundef %58) #9
  %60 = load double, ptr %30, align 8, !tbaa !34
  %61 = tail call double @llvm.fmuladd.f64(double %59, double %60, double %56)
  %62 = load double, ptr %34, align 8, !tbaa !34
  %63 = fmul double %61, %62
  %64 = fmul double %55, %55
  %65 = tail call double @llvm.fmuladd.f64(double %63, double %63, double %64)
  %66 = tail call double @sqrt(double noundef %65) #9
  %67 = load double, ptr %26, align 8, !tbaa !34
  %68 = load double, ptr %6, align 8, !tbaa !34
  %69 = fmul double %68, 2.000000e+00
  %70 = tail call double @fmod(double noundef %67, double noundef %69) #9
  %71 = fcmp olt double %70, 0.000000e+00
  br i1 %71, label %72, label %75

72:                                               ; preds = %49
  %73 = load double, ptr %6, align 8, !tbaa !34
  %74 = tail call double @llvm.fmuladd.f64(double %73, double 2.000000e+00, double %70)
  br label %75

75:                                               ; preds = %72, %49
  %76 = phi double [ %74, %72 ], [ %70, %49 ]
  %77 = load double, ptr %6, align 8, !tbaa !34
  %78 = fsub double %76, %77
  %79 = tail call double @llvm.fabs.f64(double %78)
  %80 = load double, ptr %21, align 8, !tbaa !34
  %81 = fmul double %80, %79
  %82 = load double, ptr %24, align 8, !tbaa !34
  %83 = load double, ptr %0, align 8, !tbaa !34
  %84 = fmul double %5, %83
  %85 = tail call double @cos(double noundef %84) #9
  %86 = load double, ptr %30, align 8, !tbaa !34
  %87 = tail call double @llvm.fmuladd.f64(double %85, double %86, double %82)
  %88 = load double, ptr %34, align 8, !tbaa !34
  %89 = fmul double %87, %88
  %90 = fmul double %81, %81
  %91 = tail call double @llvm.fmuladd.f64(double %89, double %89, double %90)
  %92 = tail call double @sqrt(double noundef %91) #9
  %93 = load double, ptr %26, align 8, !tbaa !34
  %94 = load double, ptr %6, align 8, !tbaa !34
  %95 = fsub double %93, %94
  %96 = fmul double %94, 2.000000e+00
  %97 = tail call double @fmod(double noundef %95, double noundef %96) #9
  %98 = fcmp olt double %97, 0.000000e+00
  br i1 %98, label %99, label %102

99:                                               ; preds = %75
  %100 = load double, ptr %6, align 8, !tbaa !34
  %101 = tail call double @llvm.fmuladd.f64(double %100, double 2.000000e+00, double %97)
  br label %102

102:                                              ; preds = %99, %75
  %103 = phi double [ %101, %99 ], [ %97, %75 ]
  %104 = fcmp ogt double %66, %39
  %105 = select i1 %104, double %39, double %66
  %106 = fcmp ogt double %92, %105
  %107 = select i1 %106, double %105, double %92
  %108 = load double, ptr %6, align 8, !tbaa !34
  %109 = fsub double %103, %108
  %110 = tail call double @llvm.fabs.f64(double %109)
  %111 = load double, ptr %21, align 8, !tbaa !34
  %112 = fmul double %111, %110
  %113 = load double, ptr %24, align 8, !tbaa !34
  %114 = load double, ptr %0, align 8, !tbaa !34
  %115 = fmul double %5, %114
  %116 = tail call double @cos(double noundef %115) #9
  %117 = load double, ptr %30, align 8, !tbaa !34
  %118 = fneg double %116
  %119 = tail call double @llvm.fmuladd.f64(double %118, double %117, double %113)
  %120 = load double, ptr %34, align 8, !tbaa !34
  %121 = fmul double %119, %120
  %122 = fmul double %112, %112
  %123 = tail call double @llvm.fmuladd.f64(double %121, double %121, double %122)
  %124 = tail call double @sqrt(double noundef %123) #9
  %125 = fcmp ogt double %124, %107
  %126 = select i1 %125, double %107, double %124
  ret double %126
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov7f_mitreEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fmul double %4, 4.000000e+00
  %12 = fadd double %4, %7
  %13 = fadd double %12, %10
  %14 = fsub double 1.000000e+00, %7
  %15 = fsub double %14, %10
  %16 = fneg double %7
  %17 = fmul double %15, %16
  %18 = tail call double @llvm.fmuladd.f64(double %11, double %13, double %17)
  %19 = fneg double %18
  %20 = getelementptr inbounds double, ptr %0, i64 3
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = fmul double %21, %19
  %23 = fcmp olt double %22, -1.000000e+01
  %24 = select i1 %23, double -1.000000e+01, double %22
  %25 = fcmp olt double %24, 1.000000e+01
  %26 = select i1 %25, double %24, double 1.000000e+01
  ret double %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov13f_nodal_cubicEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = getelementptr inbounds double, ptr %0, i64 1
  %4 = load double, ptr %3, align 8, !tbaa !34
  %5 = fmul double %4, %4
  %6 = getelementptr inbounds double, ptr %0, i64 2
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fmul double %7, %7
  %9 = fmul double %7, %8
  %10 = tail call double @llvm.fmuladd.f64(double %5, double %4, double %9)
  %11 = fmul double %4, -6.000000e+00
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %7, double %10)
  %13 = fneg double %12
  %14 = getelementptr inbounds double, ptr %0, i64 3
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fmul double %15, %13
  %17 = fcmp olt double %16, -1.000000e+01
  %18 = select i1 %17, double -1.000000e+01, double %16
  %19 = fcmp olt double %18, 1.000000e+01
  %20 = select i1 %19, double %18, double 1.000000e+01
  ret double %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov5f_oddEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fneg double %10
  %12 = fmul double %10, %11
  %13 = tail call double @llvm.fmuladd.f64(double %10, double %4, double %12)
  %14 = fmul double %9, -2.000000e+00
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %4, double %13)
  %16 = fmul double %10, 2.000000e+00
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %9, double %15)
  %18 = fadd double %4, %17
  %19 = fsub double %18, %10
  %20 = fsub double %4, %9
  %21 = fneg double %20
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %20, double %19)
  %23 = fneg double %7
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %7, double %22)
  %25 = fmul double %7, 2.000000e+00
  %26 = fneg double %25
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %4, double %24)
  %28 = tail call double @llvm.fmuladd.f64(double %23, double %10, double %27)
  %29 = tail call double @llvm.fmuladd.f64(double %25, double %9, double %28)
  %30 = fadd double %7, %29
  %31 = getelementptr inbounds double, ptr %0, i64 3
  %32 = load double, ptr %31, align 8, !tbaa !34
  %33 = fmul double %32, %30
  %34 = fcmp olt double %33, -1.000000e+01
  %35 = select i1 %34, double -1.000000e+01, double %33
  %36 = fcmp olt double %35, 1.000000e+01
  %37 = select i1 %36, double %35, double 1.000000e+01
  ret double %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov18f_ovals_of_cassiniEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fadd double %4, %7
  %12 = fadd double %11, %10
  %13 = getelementptr inbounds double, ptr %0, i64 4
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %12)
  %16 = getelementptr inbounds double, ptr %0, i64 6
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fadd double %4, %10
  %19 = fneg double %17
  %20 = fmul double %14, %19
  %21 = fmul double %14, %20
  %22 = fmul double %18, %21
  %23 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %22)
  %24 = getelementptr inbounds double, ptr %0, i64 5
  %25 = load double, ptr %24, align 8, !tbaa !34
  %26 = fneg double %25
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %25, double %23)
  %28 = fneg double %27
  %29 = getelementptr inbounds double, ptr %0, i64 3
  %30 = load double, ptr %29, align 8, !tbaa !34
  %31 = fmul double %30, %28
  %32 = fcmp olt double %31, -1.000000e+01
  %33 = select i1 %32, double -1.000000e+01, double %31
  %34 = fcmp olt double %33, 1.000000e+01
  %35 = select i1 %34, double %33, double 1.000000e+01
  ret double %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov12f_paraboloidEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds double, ptr %0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !34
  %6 = fneg double %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = fneg double %10
  %12 = getelementptr inbounds double, ptr %0, i64 3
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = fmul double %13, %11
  %15 = fcmp olt double %14, -1.000000e+01
  %16 = select i1 %15, double -1.000000e+01, double %14
  %17 = fcmp olt double %16, 1.000000e+01
  %18 = select i1 %17, double %16, double 1.000000e+01
  ret double %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov17f_parabolic_torusEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 4
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = getelementptr inbounds double, ptr %0, i64 5
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fmul double %15, %15
  %17 = fmul double %4, 2.000000e+00
  %18 = fmul double %17, %7
  %19 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %18)
  %20 = fneg double %17
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %9, double %19)
  %22 = fadd double %13, %16
  %23 = fneg double %22
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %4, double %21)
  %25 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %24)
  %26 = fmul double %7, -2.000000e+00
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %9, double %25)
  %28 = fsub double %13, %16
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %7, double %27)
  %30 = fadd double %10, %29
  %31 = tail call double @llvm.fmuladd.f64(double %22, double %9, double %30)
  %32 = tail call double @llvm.fmuladd.f64(double %28, double %28, double %31)
  %33 = fneg double %32
  %34 = getelementptr inbounds double, ptr %0, i64 3
  %35 = load double, ptr %34, align 8, !tbaa !34
  %36 = fmul double %35, %33
  %37 = fcmp olt double %36, -1.000000e+01
  %38 = select i1 %37, double -1.000000e+01, double %36
  %39 = fcmp olt double %38, 1.000000e+01
  %40 = select i1 %39, double %38, double 1.000000e+01
  ret double %40
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov4f_phEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds double, ptr %0, i64 2
  %5 = load double, ptr %4, align 8, !tbaa !34
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = tail call double @sqrt(double noundef %7) #9
  %9 = getelementptr inbounds double, ptr %0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = tail call double @atan2(double noundef %8, double noundef %10) #9
  ret double %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov8f_pillowEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fmul double %7, %7
  %12 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %11)
  %13 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %12)
  %14 = fadd double %4, %7
  %15 = fadd double %14, %10
  %16 = fsub double %13, %15
  %17 = getelementptr inbounds double, ptr %0, i64 3
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = fmul double %18, %16
  %20 = fcmp olt double %19, -1.000000e+01
  %21 = select i1 %20, double -1.000000e+01, double %19
  %22 = fcmp olt double %21, 1.000000e+01
  %23 = select i1 %22, double %21, double 1.000000e+01
  ret double %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov10f_piriformEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = fneg double %4
  %6 = fmul double %3, %5
  %7 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %6)
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %10)
  %14 = fneg double %13
  %15 = getelementptr inbounds double, ptr %0, i64 3
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = fmul double %16, %14
  %18 = fcmp olt double %17, -1.000000e+01
  %19 = select i1 %18, double -1.000000e+01, double %17
  %20 = fcmp olt double %19, 1.000000e+01
  %21 = select i1 %20, double %19, double 1.000000e+01
  %22 = fneg double %21
  ret double %22
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov13f_piriform_2dEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = getelementptr inbounds double, ptr %0, i64 7
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fcmp ogt double %7, 0.000000e+00
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = getelementptr inbounds double, ptr %0, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %4)
  %13 = tail call double @sqrt(double noundef %12) #9
  %14 = getelementptr inbounds double, ptr %0, i64 8
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fsub double %13, %15
  %17 = getelementptr inbounds double, ptr %0, i64 9
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = fmul double %18, 0x3F91DF46A2529D39
  %20 = fcmp une double %19, 0.000000e+00
  br i1 %20, label %21, label %33

21:                                               ; preds = %9
  %22 = tail call double @cos(double noundef %19) #9
  %23 = load double, ptr %5, align 8, !tbaa !34
  %24 = tail call double @sin(double noundef %19) #9
  %25 = fneg double %23
  %26 = fmul double %24, %25
  %27 = tail call double @llvm.fmuladd.f64(double %16, double %22, double %26)
  store double %27, ptr %0, align 8, !tbaa !34
  %28 = tail call double @sin(double noundef %19) #9
  %29 = load double, ptr %5, align 8, !tbaa !34
  %30 = tail call double @cos(double noundef %19) #9
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %16, double %28, double %31)
  store double %32, ptr %5, align 8, !tbaa !34
  br label %34

33:                                               ; preds = %9
  store double %16, ptr %0, align 8, !tbaa !34
  br label %34

34:                                               ; preds = %33, %21
  %35 = load double, ptr %0, align 8, !tbaa !34
  %36 = fmul double %35, %35
  br label %37

37:                                               ; preds = %34, %2
  %38 = phi double [ %36, %34 ], [ %4, %2 ]
  %39 = load double, ptr %5, align 8, !tbaa !34
  %40 = getelementptr inbounds double, ptr %0, i64 4
  %41 = load double, ptr %40, align 8, !tbaa !34
  %42 = getelementptr inbounds double, ptr %0, i64 6
  %43 = load double, ptr %42, align 8, !tbaa !34
  %44 = load double, ptr %0, align 8, !tbaa !34
  %45 = fneg double %41
  %46 = fmul double %43, %45
  %47 = fmul double %43, %46
  %48 = fmul double %38, %47
  %49 = fmul double %44, %48
  %50 = tail call double @llvm.fmuladd.f64(double %39, double %39, double %49)
  %51 = getelementptr inbounds double, ptr %0, i64 5
  %52 = load double, ptr %51, align 8, !tbaa !34
  %53 = fneg double %52
  %54 = fmul double %43, %53
  %55 = fmul double %43, %54
  %56 = fmul double %38, %55
  %57 = tail call double @llvm.fmuladd.f64(double %56, double %38, double %50)
  %58 = fneg double %57
  %59 = getelementptr inbounds double, ptr %0, i64 3
  %60 = load double, ptr %59, align 8, !tbaa !34
  %61 = fmul double %60, %58
  %62 = fcmp olt double %61, -1.000000e+01
  %63 = select i1 %62, double -1.000000e+01, double %61
  %64 = fcmp olt double %63, 1.000000e+01
  %65 = select i1 %64, double %63, double 1.000000e+01
  ret double %65
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov7f_poly4EPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
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
  %29 = tail call double @sqrt(double noundef %28) #9
  %30 = fsub double %29, %23
  ret double %30
}

; Function Attrs: mustprogress nofree nounwind memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov11f_polytubesEPdj(ptr nocapture noundef readonly %0, i32 %1) #4 {
  %3 = getelementptr inbounds double, ptr %0, i64 3
  %4 = load double, ptr %3, align 8, !tbaa !34
  %5 = fptosi double %4 to i32
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %55

7:                                                ; preds = %2
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 8
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %10, %12
  %14 = getelementptr inbounds double, ptr %0, i64 7
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fmul double %10, %15
  %17 = getelementptr inbounds double, ptr %0, i64 6
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds double, ptr %0, i64 5
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds double, ptr %0, i64 4
  %22 = load double, ptr %21, align 8, !tbaa !34
  %23 = tail call double @llvm.fmuladd.f64(double %20, double %9, double %22)
  %24 = tail call double @llvm.fmuladd.f64(double %18, double %10, double %23)
  %25 = tail call double @llvm.fmuladd.f64(double %16, double %9, double %24)
  %26 = tail call double @llvm.fmuladd.f64(double %13, double %10, double %25)
  %27 = fneg double %26
  %28 = getelementptr inbounds double, ptr %0, i64 2
  br label %29

29:                                               ; preds = %7, %29
  %30 = phi double [ %4, %7 ], [ %52, %29 ]
  %31 = phi i32 [ 0, %7 ], [ %51, %29 ]
  %32 = phi double [ -1.000000e+04, %7 ], [ %50, %29 ]
  %33 = load double, ptr %0, align 8, !tbaa !34
  %34 = fdiv double 0x401921FB54442D18, %30
  %35 = sitofp i32 %31 to double
  %36 = fmul double %34, %35
  %37 = tail call double @sin(double noundef %36) #9
  %38 = tail call double @llvm.fmuladd.f64(double %27, double %37, double %33)
  %39 = load double, ptr %28, align 8, !tbaa !34
  %40 = load double, ptr %3, align 8, !tbaa !34
  %41 = fdiv double 0x401921FB54442D18, %40
  %42 = fmul double %41, %35
  %43 = tail call double @cos(double noundef %42) #9
  %44 = tail call double @llvm.fmuladd.f64(double %27, double %43, double %39)
  %45 = fmul double %44, %44
  %46 = tail call double @llvm.fmuladd.f64(double %38, double %38, double %45)
  %47 = tail call double @sqrt(double noundef %46) #9
  %48 = fneg double %47
  %49 = fcmp olt double %32, %48
  %50 = select i1 %49, double %48, double %32
  %51 = add nuw nsw i32 %31, 1
  %52 = load double, ptr %3, align 8, !tbaa !34
  %53 = fptosi double %52 to i32
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %29, label %55, !llvm.loop !48

55:                                               ; preds = %29, %2
  %56 = phi double [ -1.000000e+04, %2 ], [ %50, %29 ]
  %57 = fneg double %56
  ret double %57
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov9f_quantumEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fcmp oeq double %3, 0.000000e+00
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds double, ptr %0, i64 2
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fcmp oeq double %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store double 0x3EB0C6F7A0B5ED8D, ptr %0, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %9, %5, %2
  %11 = load double, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = fmul double %13, %13
  %15 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %14)
  %16 = tail call double @sqrt(double noundef %15) #9
  %17 = getelementptr inbounds double, ptr %0, i64 1
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = tail call double @atan2(double noundef %16, double noundef %18) #9
  %20 = tail call double @cos(double noundef %19) #9
  %21 = load double, ptr %17, align 8, !tbaa !34
  %22 = fmul double %21, %21
  %23 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %22)
  %24 = tail call double @sqrt(double noundef %23) #9
  %25 = fmul double %24, 2.000000e+00
  %26 = fmul double %25, %25
  %27 = fmul double %25, 0xBFD5555551C112DA
  %28 = tail call double @exp(double noundef %27) #9
  %29 = fmul double %28, %26
  %30 = fmul double %20, 3.000000e+00
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %20, double -1.000000e+00)
  %32 = fmul double %31, %29
  %33 = tail call double @llvm.fmuladd.f64(double %32, double %32, double -1.200000e+01)
  %34 = fmul double %33, -1.000000e-01
  ret double %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov20f_quartic_paraboloidEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 2
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = fmul double %7, %7
  %9 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %8)
  %10 = getelementptr inbounds double, ptr %0, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = fsub double %9, %11
  %13 = fneg double %12
  %14 = getelementptr inbounds double, ptr %0, i64 3
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fmul double %15, %13
  %17 = fcmp olt double %16, -1.000000e+01
  %18 = select i1 %17, double -1.000000e+01, double %16
  %19 = fcmp olt double %18, 1.000000e+01
  %20 = select i1 %19, double %18, double 1.000000e+01
  ret double %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov16f_quartic_saddleEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 2
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = fneg double %7
  %9 = fmul double %7, %8
  %10 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %9)
  %11 = getelementptr inbounds double, ptr %0, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fsub double %10, %12
  %14 = fneg double %13
  %15 = getelementptr inbounds double, ptr %0, i64 3
  %16 = load double, ptr %15, align 8, !tbaa !34
  %17 = fmul double %16, %14
  %18 = fcmp olt double %17, -1.000000e+01
  %19 = select i1 %18, double -1.000000e+01, double %17
  %20 = fcmp olt double %19, 1.000000e+01
  %21 = select i1 %20, double %19, double 1.000000e+01
  ret double %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov18f_quartic_cylinderEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 2
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = fadd double %4, %7
  %9 = getelementptr inbounds double, ptr %0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = fmul double %10, %8
  %12 = getelementptr inbounds double, ptr %0, i64 5
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = fmul double %13, %13
  %15 = fmul double %8, %14
  %16 = tail call double @llvm.fmuladd.f64(double %11, double %10, double %15)
  %17 = getelementptr inbounds double, ptr %0, i64 4
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = fneg double %14
  %20 = fmul double %18, %19
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %18, double %16)
  %22 = fneg double %21
  %23 = getelementptr inbounds double, ptr %0, i64 3
  %24 = load double, ptr %23, align 8, !tbaa !34
  %25 = fmul double %24, %22
  %26 = fcmp olt double %25, -1.000000e+01
  %27 = select i1 %26, double -1.000000e+01, double %25
  %28 = fcmp olt double %27, 1.000000e+01
  %29 = select i1 %28, double %27, double 1.000000e+01
  ret double %29
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov3f_rEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds double, ptr %0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !34
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = tail call double @sqrt(double noundef %10) #9
  ret double %11
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3pov7f_ridgeEPdj(ptr nocapture noundef readonly %0, i32 %1) #3 {
  %3 = alloca [3 x double], align 16
  %4 = alloca [3 x double], align 16
  %5 = alloca %"struct.pov::Pattern_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %6 = load double, ptr %0, align 8, !tbaa !34
  store double %6, ptr %3, align 16, !tbaa !34
  %7 = getelementptr inbounds double, ptr %3, i64 1
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !34
  store double %9, ptr %7, align 8, !tbaa !34
  %10 = getelementptr inbounds double, ptr %3, i64 2
  %11 = getelementptr inbounds double, ptr %0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !34
  store double %12, ptr %10, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %5) #9
  %13 = getelementptr inbounds double, ptr %0, i64 8
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = fptosi double %14 to i32
  %16 = trunc i32 %15 to i16
  %17 = shl i16 %16, 4
  %18 = and i16 %17, 48
  %19 = getelementptr inbounds %"struct.pov::Pattern_Struct", ptr %5, i64 0, i32 2
  store i16 %18, ptr %19, align 4, !tbaa !38
  %20 = getelementptr inbounds double, ptr %0, i64 3
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds double, ptr %0, i64 4
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = fptosi double %23 to i32
  %25 = getelementptr inbounds double, ptr %0, i64 5
  %26 = load double, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds double, ptr %0, i64 6
  %28 = load double, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds double, ptr %0, i64 7
  %30 = load double, ptr %29, align 8, !tbaa !34
  %31 = fsub double 1.000000e+00, %30
  %32 = fcmp olt double %30, %31
  %33 = select i1 %32, double %31, double %30
  %34 = fdiv double 1.000000e+00, %33
  %35 = sitofp i32 %24 to double
  %36 = fsub double %23, %35
  %37 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %5)
  %38 = fsub double %37, %30
  %39 = call double @llvm.fabs.f64(double %38)
  %40 = fmul double %39, %34
  %41 = fsub double %40, %28
  %42 = icmp slt i32 %24, 2
  br i1 %42, label %69, label %43

43:                                               ; preds = %2
  %44 = getelementptr inbounds double, ptr %4, i64 1
  %45 = getelementptr inbounds double, ptr %4, i64 2
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi i32 [ 2, %43 ], [ %67, %46 ]
  %48 = phi double [ %21, %43 ], [ %65, %46 ]
  %49 = phi double [ %26, %43 ], [ %66, %46 ]
  %50 = phi double [ %41, %43 ], [ %63, %46 ]
  %51 = phi double [ 1.000000e+00, %43 ], [ %64, %46 ]
  %52 = load double, ptr %3, align 16, !tbaa !34
  %53 = fmul double %48, %52
  store double %53, ptr %4, align 16, !tbaa !34
  %54 = load double, ptr %7, align 8, !tbaa !34
  %55 = fmul double %48, %54
  store double %55, ptr %44, align 8, !tbaa !34
  %56 = load double, ptr %10, align 16, !tbaa !34
  %57 = fmul double %48, %56
  store double %57, ptr %45, align 16, !tbaa !34
  %58 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %59 = fsub double %58, %30
  %60 = call double @llvm.fabs.f64(double %59)
  %61 = fmul double %34, %60
  %62 = fsub double %61, %28
  %63 = call double @llvm.fmuladd.f64(double %49, double %62, double %50)
  %64 = fadd double %51, %49
  %65 = fmul double %21, %48
  %66 = fmul double %26, %49
  %67 = add nuw i32 %47, 1
  %68 = icmp eq i32 %47, %24
  br i1 %68, label %69, label %46, !llvm.loop !49

69:                                               ; preds = %46, %2
  %70 = phi double [ 1.000000e+00, %2 ], [ %64, %46 ]
  %71 = phi double [ %41, %2 ], [ %63, %46 ]
  %72 = phi double [ %26, %2 ], [ %66, %46 ]
  %73 = phi double [ %21, %2 ], [ %65, %46 ]
  %74 = fcmp une double %36, 0.000000e+00
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = load double, ptr %3, align 16, !tbaa !34
  %77 = fmul double %73, %76
  store double %77, ptr %4, align 16, !tbaa !34
  %78 = load double, ptr %7, align 8, !tbaa !34
  %79 = fmul double %73, %78
  %80 = getelementptr inbounds double, ptr %4, i64 1
  store double %79, ptr %80, align 8, !tbaa !34
  %81 = load double, ptr %10, align 16, !tbaa !34
  %82 = fmul double %73, %81
  %83 = getelementptr inbounds double, ptr %4, i64 2
  store double %82, ptr %83, align 16, !tbaa !34
  %84 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %85 = fsub double %84, %30
  %86 = call double @llvm.fabs.f64(double %85)
  %87 = fmul double %34, %86
  %88 = fsub double %87, %28
  %89 = fmul double %72, %88
  %90 = call double @llvm.fmuladd.f64(double %89, double %36, double %71)
  %91 = call double @llvm.fmuladd.f64(double %72, double %36, double %70)
  br label %92

92:                                               ; preds = %75, %69
  %93 = phi double [ %91, %75 ], [ %70, %69 ]
  %94 = phi double [ %90, %75 ], [ %71, %69 ]
  %95 = fsub double 1.000000e+00, %28
  %96 = fcmp olt double %28, %95
  %97 = select i1 %96, double %95, double %28
  %98 = fdiv double 1.000000e+00, %97
  %99 = fmul double %98, %94
  %100 = fdiv double %99, %93
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret double %100
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3pov11f_ridged_mfEPdj(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = alloca [3 x double], align 16
  %4 = alloca %"struct.pov::Pattern_Struct", align 8
  %5 = tail call noundef ptr @_ZN3pov18POVFPU_GetFunctionEj(i32 noundef %1)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #9
  %6 = getelementptr inbounds double, ptr %0, i64 8
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fptosi double %7 to i32
  %9 = trunc i32 %8 to i16
  %10 = shl i16 %9, 4
  %11 = and i16 %10, 48
  %12 = getelementptr inbounds %"struct.pov::Pattern_Struct", ptr %4, i64 0, i32 2
  store i16 %11, ptr %12, align 4, !tbaa !38
  %13 = load double, ptr %0, align 8, !tbaa !34
  store double %13, ptr %3, align 16, !tbaa !34
  %14 = getelementptr inbounds double, ptr %0, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  store double %15, ptr %16, align 8, !tbaa !34
  %17 = getelementptr inbounds double, ptr %0, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  store double %18, ptr %19, align 16, !tbaa !34
  %20 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %5, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %2
  %24 = getelementptr inbounds double, ptr %0, i64 5
  %25 = load double, ptr %24, align 8, !tbaa !34
  %26 = fadd double %25, 1.000000e+00
  %27 = fmul double %26, 8.000000e+00
  %28 = fptoui double %27 to i64
  %29 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %28, ptr noundef nonnull @.str, i32 noundef 995, ptr noundef nonnull @.str.1)
  %30 = load double, ptr %24, align 8, !tbaa !34
  %31 = fcmp ult double %30, 0.000000e+00
  br i1 %31, label %49, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds double, ptr %0, i64 3
  %34 = getelementptr inbounds double, ptr %0, i64 4
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi i64 [ 0, %32 ], [ %44, %35 ]
  %37 = phi double [ 1.000000e+00, %32 ], [ %43, %35 ]
  %38 = load double, ptr %33, align 8, !tbaa !34
  %39 = fneg double %38
  %40 = tail call double @pow(double noundef %37, double noundef %39) #9
  %41 = getelementptr inbounds double, ptr %29, i64 %36
  store double %40, ptr %41, align 8, !tbaa !34
  %42 = load double, ptr %34, align 8, !tbaa !34
  %43 = fmul double %37, %42
  %44 = add nuw i64 %36, 1
  %45 = trunc i64 %44 to i32
  %46 = sitofp i32 %45 to double
  %47 = load double, ptr %24, align 8, !tbaa !34
  %48 = fcmp ult double %47, %46
  br i1 %48, label %49, label %35, !llvm.loop !54

49:                                               ; preds = %35, %23
  store ptr %29, ptr %20, align 8, !tbaa !50
  br label %50

50:                                               ; preds = %2, %49
  %51 = phi ptr [ %29, %49 ], [ %21, %2 ]
  %52 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %53 = call double @llvm.fmuladd.f64(double %52, double 2.000000e+00, double -1.000000e+00)
  %54 = fcmp olt double %53, 0.000000e+00
  %55 = fneg double %53
  %56 = select i1 %54, double %55, double %53
  %57 = getelementptr inbounds double, ptr %0, i64 6
  %58 = load double, ptr %57, align 8, !tbaa !34
  %59 = fsub double %58, %56
  %60 = fmul double %59, %59
  %61 = getelementptr inbounds double, ptr %0, i64 5
  %62 = load double, ptr %61, align 8, !tbaa !34
  %63 = fcmp ogt double %62, 1.000000e+00
  br i1 %63, label %64, label %101

64:                                               ; preds = %50
  %65 = getelementptr inbounds double, ptr %0, i64 4
  %66 = getelementptr inbounds double, ptr %0, i64 7
  br label %67

67:                                               ; preds = %64, %67
  %68 = phi i64 [ 1, %64 ], [ %96, %67 ]
  %69 = phi double [ %60, %64 ], [ %95, %67 ]
  %70 = phi double [ %60, %64 ], [ %92, %67 ]
  %71 = load double, ptr %65, align 8, !tbaa !34
  %72 = load double, ptr %3, align 16, !tbaa !34
  %73 = fmul double %71, %72
  store double %73, ptr %3, align 16, !tbaa !34
  %74 = load double, ptr %16, align 8, !tbaa !34
  %75 = fmul double %71, %74
  store double %75, ptr %16, align 8, !tbaa !34
  %76 = load double, ptr %19, align 16, !tbaa !34
  %77 = fmul double %71, %76
  store double %77, ptr %19, align 16, !tbaa !34
  %78 = load double, ptr %66, align 8, !tbaa !34
  %79 = fmul double %70, %78
  %80 = fcmp ogt double %79, 1.000000e+00
  %81 = select i1 %80, double 1.000000e+00, double %79
  %82 = fcmp olt double %81, 0.000000e+00
  %83 = select i1 %82, double 0.000000e+00, double %81
  %84 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %85 = call double @llvm.fmuladd.f64(double %84, double 2.000000e+00, double -1.000000e+00)
  %86 = fcmp olt double %85, 0.000000e+00
  %87 = fneg double %85
  %88 = select i1 %86, double %87, double %85
  %89 = load double, ptr %57, align 8, !tbaa !34
  %90 = fsub double %89, %88
  %91 = fmul double %90, %90
  %92 = fmul double %83, %91
  %93 = getelementptr inbounds double, ptr %51, i64 %68
  %94 = load double, ptr %93, align 8, !tbaa !34
  %95 = call double @llvm.fmuladd.f64(double %92, double %94, double %69)
  %96 = add nuw i64 %68, 1
  %97 = trunc i64 %96 to i32
  %98 = sitofp i32 %97 to double
  %99 = load double, ptr %61, align 8, !tbaa !34
  %100 = fcmp ogt double %99, %98
  br i1 %100, label %67, label %101, !llvm.loop !55

101:                                              ; preds = %67, %50
  %102 = phi double [ %60, %50 ], [ %95, %67 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret double %102
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov13f_rounded_boxEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = getelementptr inbounds double, ptr %0, i64 4
  %4 = load double, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds double, ptr %0, i64 3
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fsub double %4, %6
  %8 = getelementptr inbounds double, ptr %0, i64 5
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fsub double %9, %6
  %11 = getelementptr inbounds double, ptr %0, i64 6
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fsub double %12, %6
  %14 = load double, ptr %0, align 8, !tbaa !34
  %15 = fcmp olt double %14, %7
  %16 = fsub double %14, %7
  %17 = select i1 %15, double 0.000000e+00, double %16
  %18 = getelementptr inbounds double, ptr %0, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fcmp olt double %19, %10
  %21 = fsub double %19, %10
  %22 = select i1 %20, double 0.000000e+00, double %21
  %23 = getelementptr inbounds double, ptr %0, i64 2
  %24 = load double, ptr %23, align 8, !tbaa !34
  %25 = fcmp olt double %24, %13
  %26 = fsub double %24, %13
  %27 = select i1 %25, double 0.000000e+00, double %26
  %28 = fsub double %6, %4
  %29 = fsub double %6, %9
  %30 = fsub double %6, %12
  %31 = fcmp ogt double %14, %28
  %32 = fsub double %28, %14
  %33 = select i1 %31, double 0.000000e+00, double %32
  store double %33, ptr %0, align 8, !tbaa !34
  %34 = fcmp ogt double %19, %29
  %35 = fsub double %29, %19
  %36 = select i1 %34, double 0.000000e+00, double %35
  store double %36, ptr %18, align 8, !tbaa !34
  %37 = fcmp ogt double %24, %30
  %38 = fsub double %30, %24
  %39 = select i1 %37, double 0.000000e+00, double %38
  store double %39, ptr %23, align 8, !tbaa !34
  %40 = fcmp olt double %33, %17
  %41 = select i1 %40, double %17, double %33
  store double %41, ptr %0, align 8, !tbaa !34
  %42 = fcmp olt double %36, %22
  %43 = select i1 %42, double %22, double %36
  store double %43, ptr %18, align 8, !tbaa !34
  %44 = fcmp olt double %39, %27
  %45 = select i1 %44, double %27, double %39
  store double %45, ptr %23, align 8, !tbaa !34
  %46 = fmul double %43, %43
  %47 = tail call double @llvm.fmuladd.f64(double %41, double %41, double %46)
  %48 = tail call double @llvm.fmuladd.f64(double %45, double %45, double %47)
  %49 = tail call double @sqrt(double noundef %48) #9
  %50 = fsub double %49, %6
  %51 = fadd double %50, 0xBEB0C6F7A0B5ED8D
  ret double %51
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov8f_sphereEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
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
  %13 = tail call double @sqrt(double noundef %12) #9
  %14 = fsub double %13, %4
  ret double %14
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov8f_spikesEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fadd double %4, %7
  %12 = fadd double %11, %10
  %13 = fneg double %12
  %14 = getelementptr inbounds double, ptr %0, i64 6
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fmul double %15, %13
  %17 = tail call double @exp(double noundef %16) #9
  %18 = getelementptr inbounds double, ptr %0, i64 7
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds double, ptr %0, i64 3
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = fmul double %7, %21
  %23 = tail call double @llvm.fmuladd.f64(double %4, double %21, double %22)
  %24 = fadd double %10, %23
  %25 = fneg double %24
  %26 = getelementptr inbounds double, ptr %0, i64 4
  %27 = load double, ptr %26, align 8, !tbaa !34
  %28 = fmul double %27, %25
  %29 = tail call double @exp(double noundef %28) #9
  %30 = fneg double %29
  %31 = tail call double @llvm.fmuladd.f64(double %17, double %19, double %30)
  %32 = load double, ptr %20, align 8, !tbaa !34
  %33 = tail call double @llvm.fmuladd.f64(double %4, double %32, double %7)
  %34 = tail call double @llvm.fmuladd.f64(double %10, double %32, double %33)
  %35 = fneg double %34
  %36 = load double, ptr %26, align 8, !tbaa !34
  %37 = fmul double %36, %35
  %38 = tail call double @exp(double noundef %37) #9
  %39 = fsub double %31, %38
  %40 = load double, ptr %20, align 8, !tbaa !34
  %41 = tail call double @llvm.fmuladd.f64(double %7, double %40, double %4)
  %42 = tail call double @llvm.fmuladd.f64(double %10, double %40, double %41)
  %43 = fneg double %42
  %44 = load double, ptr %26, align 8, !tbaa !34
  %45 = fmul double %44, %43
  %46 = tail call double @exp(double noundef %45) #9
  %47 = fsub double %39, %46
  %48 = fneg double %47
  %49 = getelementptr inbounds double, ptr %0, i64 5
  %50 = load double, ptr %49, align 8, !tbaa !34
  %51 = fmul double %50, %48
  ret double %51
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov11f_spikes_2dEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = getelementptr inbounds double, ptr %0, i64 3
  %4 = load double, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds double, ptr %0, i64 4
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = load double, ptr %0, align 8, !tbaa !34
  %8 = fmul double %6, %7
  %9 = tail call double @cos(double noundef %8) #9
  %10 = fmul double %4, %9
  %11 = getelementptr inbounds double, ptr %0, i64 5
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = fmul double %12, %14
  %16 = tail call double @cos(double noundef %15) #9
  %17 = fmul double %10, %16
  %18 = getelementptr inbounds double, ptr %0, i64 6
  %19 = load double, ptr %18, align 8, !tbaa !34
  %20 = fneg double %19
  %21 = load double, ptr %0, align 8, !tbaa !34
  %22 = load double, ptr %13, align 8, !tbaa !34
  %23 = fmul double %22, %22
  %24 = tail call double @llvm.fmuladd.f64(double %21, double %21, double %23)
  %25 = fmul double %24, %20
  %26 = tail call double @exp(double noundef %25) #9
  %27 = getelementptr inbounds double, ptr %0, i64 1
  %28 = load double, ptr %27, align 8, !tbaa !34
  %29 = fneg double %28
  %30 = tail call double @llvm.fmuladd.f64(double %17, double %26, double %29)
  %31 = fneg double %30
  ret double %31
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov8f_spiralEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds double, ptr %0, i64 2
  %5 = load double, ptr %4, align 8, !tbaa !34
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = tail call double @sqrt(double noundef %7) #9
  %9 = load double, ptr %0, align 8, !tbaa !34
  %10 = fcmp oeq double %9, 0.000000e+00
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load double, ptr %4, align 8, !tbaa !34
  %13 = fcmp oeq double %12, 0.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store double 0x3EB0C6F7A0B5ED8D, ptr %0, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %14, %11, %2
  %16 = load double, ptr %4, align 8, !tbaa !34
  %17 = load double, ptr %0, align 8, !tbaa !34
  %18 = tail call double @atan2(double noundef %16, double noundef %17) #9
  %19 = getelementptr inbounds double, ptr %0, i64 3
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fmul double %18, %20
  %22 = fdiv double %21, 0x401921FB54442D18
  %23 = fadd double %8, %22
  %24 = tail call double @fmod(double noundef %23, double noundef %20) #9
  %25 = load double, ptr %19, align 8, !tbaa !34
  %26 = fneg double %25
  %27 = tail call double @llvm.fmuladd.f64(double %26, double 5.000000e-01, double %24)
  %28 = getelementptr inbounds double, ptr %0, i64 8
  %29 = load double, ptr %28, align 8, !tbaa !34
  %30 = fcmp oeq double %29, 1.000000e+00
  br i1 %30, label %31, label %37

31:                                               ; preds = %15
  %32 = getelementptr inbounds double, ptr %0, i64 1
  %33 = load double, ptr %32, align 8, !tbaa !34
  %34 = fmul double %33, %33
  %35 = tail call double @llvm.fmuladd.f64(double %27, double %27, double %34)
  %36 = tail call double @sqrt(double noundef %35) #9
  br label %57

37:                                               ; preds = %15
  %38 = fcmp une double %29, 0.000000e+00
  br i1 %38, label %39, label %50

39:                                               ; preds = %37
  %40 = fdiv double 2.000000e+00, %29
  %41 = tail call double @llvm.fabs.f64(double %27)
  %42 = tail call double @pow(double noundef %41, double noundef %40) #9
  %43 = getelementptr inbounds double, ptr %0, i64 1
  %44 = load double, ptr %43, align 8, !tbaa !34
  %45 = tail call double @llvm.fabs.f64(double %44)
  %46 = tail call double @pow(double noundef %45, double noundef %40) #9
  %47 = fadd double %42, %46
  %48 = fdiv double 1.000000e+00, %40
  %49 = tail call double @pow(double noundef %47, double noundef %48) #9
  br label %57

50:                                               ; preds = %37
  %51 = tail call double @llvm.fabs.f64(double %27)
  %52 = getelementptr inbounds double, ptr %0, i64 1
  %53 = load double, ptr %52, align 8, !tbaa !34
  %54 = tail call double @llvm.fabs.f64(double %53)
  %55 = fcmp olt double %51, %54
  %56 = select i1 %55, double %54, double %51
  br label %57

57:                                               ; preds = %39, %50, %31
  %58 = phi double [ %36, %31 ], [ %49, %39 ], [ %56, %50 ]
  %59 = load double, ptr %0, align 8, !tbaa !34
  %60 = getelementptr inbounds double, ptr %0, i64 1
  %61 = load double, ptr %60, align 8, !tbaa !34
  %62 = fmul double %61, %61
  %63 = tail call double @llvm.fmuladd.f64(double %59, double %59, double %62)
  %64 = load double, ptr %4, align 8, !tbaa !34
  %65 = tail call double @llvm.fmuladd.f64(double %64, double %64, double %63)
  %66 = tail call double @sqrt(double noundef %65) #9
  %67 = getelementptr inbounds double, ptr %0, i64 5
  %68 = load double, ptr %67, align 8, !tbaa !34
  %69 = fsub double %68, %66
  %70 = getelementptr inbounds double, ptr %0, i64 4
  %71 = load double, ptr %70, align 8, !tbaa !34
  %72 = fcmp olt double %66, %58
  %73 = select i1 %72, double %66, double %58
  %74 = fsub double %71, %73
  %75 = fcmp olt double %74, %69
  %76 = select i1 %75, double %74, double %69
  %77 = fneg double %76
  ret double %77
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov16f_steiners_romanEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fmul double %4, %10
  %12 = tail call double @llvm.fmuladd.f64(double %4, double %7, double %11)
  %13 = tail call double @llvm.fmuladd.f64(double %7, double %10, double %12)
  %14 = fmul double %3, %6
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %9, double %13)
  %16 = fneg double %15
  %17 = getelementptr inbounds double, ptr %0, i64 3
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = fmul double %18, %16
  %20 = fcmp olt double %19, -1.000000e+01
  %21 = select i1 %20, double -1.000000e+01, double %19
  %22 = fcmp olt double %21, 1.000000e+01
  %23 = select i1 %22, double %21, double 1.000000e+01
  ret double %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov11f_strophoidEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 6
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds double, ptr %0, i64 5
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = fsub double %8, %3
  %10 = getelementptr inbounds double, ptr %0, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = fmul double %13, %13
  %15 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %14)
  %16 = getelementptr inbounds double, ptr %0, i64 4
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fneg double %6
  %19 = fmul double %6, %18
  %20 = fmul double %19, %17
  %21 = fmul double %4, %20
  %22 = tail call double @llvm.fmuladd.f64(double %9, double %15, double %21)
  %23 = fmul double %4, %19
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %3, double %22)
  %25 = fneg double %24
  %26 = getelementptr inbounds double, ptr %0, i64 3
  %27 = load double, ptr %26, align 8, !tbaa !34
  %28 = fmul double %27, %25
  %29 = fcmp olt double %28, -1.000000e+01
  %30 = select i1 %29, double -1.000000e+01, double %28
  %31 = fcmp olt double %30, 1.000000e+01
  %32 = select i1 %31, double %30, double 1.000000e+01
  ret double %32
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov14f_strophoid_2dEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 7
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fcmp ogt double %9, 0.000000e+00
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %4)
  %15 = tail call double @sqrt(double noundef %14) #9
  %16 = getelementptr inbounds double, ptr %0, i64 8
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fsub double %15, %17
  %19 = getelementptr inbounds double, ptr %0, i64 9
  %20 = load double, ptr %19, align 8, !tbaa !34
  %21 = fmul double %20, 0x3F91DF46A2529D39
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = tail call double @cos(double noundef %21) #9
  %25 = load double, ptr %5, align 8, !tbaa !34
  %26 = tail call double @sin(double noundef %21) #9
  %27 = fneg double %25
  %28 = fmul double %26, %27
  %29 = tail call double @llvm.fmuladd.f64(double %18, double %24, double %28)
  store double %29, ptr %0, align 8, !tbaa !34
  %30 = tail call double @sin(double noundef %21) #9
  %31 = load double, ptr %5, align 8, !tbaa !34
  %32 = tail call double @cos(double noundef %21) #9
  %33 = fmul double %31, %32
  %34 = tail call double @llvm.fmuladd.f64(double %18, double %30, double %33)
  store double %34, ptr %5, align 8, !tbaa !34
  br label %36

35:                                               ; preds = %11
  store double %18, ptr %0, align 8, !tbaa !34
  br label %36

36:                                               ; preds = %35, %23
  %37 = load double, ptr %0, align 8, !tbaa !34
  %38 = fmul double %37, %37
  %39 = load double, ptr %5, align 8, !tbaa !34
  %40 = fmul double %39, %39
  br label %41

41:                                               ; preds = %36, %2
  %42 = phi double [ %40, %36 ], [ %7, %2 ]
  %43 = phi double [ %38, %36 ], [ %4, %2 ]
  %44 = getelementptr inbounds double, ptr %0, i64 6
  %45 = load double, ptr %44, align 8, !tbaa !34
  %46 = getelementptr inbounds double, ptr %0, i64 5
  %47 = load double, ptr %46, align 8, !tbaa !34
  %48 = load double, ptr %0, align 8, !tbaa !34
  %49 = fsub double %47, %48
  %50 = getelementptr inbounds double, ptr %0, i64 4
  %51 = load double, ptr %50, align 8, !tbaa !34
  %52 = fneg double %45
  %53 = fmul double %45, %52
  %54 = fmul double %53, %51
  %55 = fmul double %43, %54
  %56 = tail call double @llvm.fmuladd.f64(double %49, double %42, double %55)
  %57 = fmul double %43, %53
  %58 = tail call double @llvm.fmuladd.f64(double %57, double %48, double %56)
  %59 = fneg double %58
  %60 = getelementptr inbounds double, ptr %0, i64 3
  %61 = load double, ptr %60, align 8, !tbaa !34
  %62 = fmul double %61, %59
  %63 = fcmp olt double %62, -1.000000e+01
  %64 = select i1 %63, double -1.000000e+01, double %62
  %65 = fcmp olt double %64, 1.000000e+01
  %66 = select i1 %65, double %64, double 1.000000e+01
  ret double %66
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov16f_superellipsoidEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = getelementptr inbounds double, ptr %0, i64 3
  %4 = load double, ptr %3, align 8, !tbaa !34
  %5 = fdiv double 2.000000e+00, %4
  %6 = getelementptr inbounds double, ptr %0, i64 4
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fdiv double 1.000000e+00, %7
  %9 = load double, ptr %0, align 8, !tbaa !34
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = tail call double @pow(double noundef %10, double noundef %5) #9
  %12 = getelementptr inbounds double, ptr %0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = tail call double @llvm.fabs.f64(double %13)
  %15 = tail call double @pow(double noundef %14, double noundef %5) #9
  %16 = fadd double %11, %15
  %17 = load double, ptr %3, align 8, !tbaa !34
  %18 = fmul double %8, %17
  %19 = tail call double @pow(double noundef %16, double noundef %18) #9
  %20 = getelementptr inbounds double, ptr %0, i64 2
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = tail call double @llvm.fabs.f64(double %21)
  %23 = fmul double %8, 2.000000e+00
  %24 = tail call double @pow(double noundef %22, double noundef %23) #9
  %25 = fadd double %19, %24
  %26 = load double, ptr %6, align 8, !tbaa !34
  %27 = fmul double %26, 5.000000e-01
  %28 = tail call double @pow(double noundef %25, double noundef %27) #9
  %29 = fsub double 1.000000e+00, %28
  ret double %29
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov4f_thEPdj(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds double, ptr %0, i64 2
  %5 = load double, ptr %4, align 8, !tbaa !34
  %6 = tail call double @atan2(double noundef %3, double noundef %5) #9
  ret double %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov7f_torusEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds double, ptr %0, i64 2
  %5 = load double, ptr %4, align 8, !tbaa !34
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = tail call double @sqrt(double noundef %7) #9
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
  %18 = tail call double @sqrt(double noundef %17) #9
  %19 = fsub double %18, %13
  ret double %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov8f_torus2EPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = getelementptr inbounds double, ptr %0, i64 4
  %12 = load double, ptr %11, align 8, !tbaa !34
  %13 = fmul double %12, %12
  %14 = getelementptr inbounds double, ptr %0, i64 5
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fmul double %15, %15
  %17 = fmul double %7, %7
  %18 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %17)
  %19 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %18)
  %20 = fmul double %4, 2.000000e+00
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %7, double %19)
  %22 = tail call double @llvm.fmuladd.f64(double %20, double %10, double %21)
  %23 = fmul double %7, 2.000000e+00
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %10, double %22)
  %25 = fadd double %13, %16
  %26 = fmul double %25, -2.000000e+00
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %4, double %24)
  %28 = fsub double %13, %16
  %29 = fmul double %28, 2.000000e+00
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %7, double %27)
  %31 = tail call double @llvm.fmuladd.f64(double %26, double %10, double %30)
  %32 = tail call double @llvm.fmuladd.f64(double %28, double %28, double %31)
  %33 = fneg double %32
  %34 = getelementptr inbounds double, ptr %0, i64 3
  %35 = load double, ptr %34, align 8, !tbaa !34
  %36 = fmul double %35, %33
  %37 = fcmp olt double %36, -1.000000e+01
  %38 = select i1 %37, double -1.000000e+01, double %36
  %39 = fcmp olt double %38, 1.000000e+01
  %40 = select i1 %39, double %38, double 1.000000e+01
  ret double %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov15f_torus_gumdropEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fmul double %6, %6
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !34
  %10 = fmul double %9, %9
  %11 = fadd double %7, %10
  %12 = fmul double %11, %11
  %13 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %12)
  %14 = fmul double %4, 1.700000e+01
  %15 = fmul double %14, %11
  %16 = tail call double @llvm.fmuladd.f64(double %13, double 4.000000e+00, double %15)
  %17 = fadd double %4, %7
  %18 = fadd double %17, %10
  %19 = tail call double @llvm.fmuladd.f64(double %18, double -2.000000e+01, double %16)
  %20 = fadd double %19, 1.700000e+01
  %21 = fneg double %20
  %22 = getelementptr inbounds double, ptr %0, i64 3
  %23 = load double, ptr %22, align 8, !tbaa !34
  %24 = fmul double %23, %21
  %25 = fcmp olt double %24, -1.000000e+01
  %26 = select i1 %25, double -1.000000e+01, double %24
  %27 = fcmp olt double %26, 1.000000e+01
  %28 = select i1 %27, double %26, double 1.000000e+01
  ret double %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov10f_umbrellaEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds double, ptr %0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds double, ptr %0, i64 2
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fneg double %5
  %9 = fmul double %7, %8
  %10 = fmul double %7, %9
  %11 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %10)
  %12 = fneg double %11
  %13 = getelementptr inbounds double, ptr %0, i64 3
  %14 = load double, ptr %13, align 8, !tbaa !34
  %15 = fmul double %14, %12
  %16 = fcmp olt double %15, -1.000000e+01
  %17 = select i1 %16, double -1.000000e+01, double %15
  %18 = fcmp olt double %17, 1.000000e+01
  %19 = select i1 %18, double %17, double 1.000000e+01
  ret double %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN3pov17f_witch_of_agnesiEPdj(ptr nocapture noundef readonly %0, i32 %1) #1 {
  %3 = getelementptr inbounds double, ptr %0, i64 4
  %4 = load double, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !34
  %7 = fadd double %6, -1.000000e+00
  %8 = load double, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds double, ptr %0, i64 2
  %10 = load double, ptr %9, align 8, !tbaa !34
  %11 = fmul double %10, %10
  %12 = tail call double @llvm.fmuladd.f64(double %8, double %8, double %11)
  %13 = fmul double %6, %12
  %14 = tail call double @llvm.fmuladd.f64(double %4, double %7, double %13)
  %15 = fneg double %14
  %16 = getelementptr inbounds double, ptr %0, i64 3
  %17 = load double, ptr %16, align 8, !tbaa !34
  %18 = fmul double %17, %15
  %19 = fcmp olt double %18, -1.000000e+01
  %20 = select i1 %19, double -1.000000e+01, double %18
  %21 = fcmp olt double %20, 1.000000e+01
  %22 = select i1 %21, double %20, double 1.000000e+01
  ret double %22
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZN3pov20f_witch_of_agnesi_2dEPdj(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !34
  %4 = fmul double %3, %3
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = getelementptr inbounds double, ptr %0, i64 6
  %7 = load double, ptr %6, align 8, !tbaa !34
  %8 = fcmp ogt double %7, 0.000000e+00
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = getelementptr inbounds double, ptr %0, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !34
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %4)
  %13 = tail call double @sqrt(double noundef %12) #9
  %14 = getelementptr inbounds double, ptr %0, i64 7
  %15 = load double, ptr %14, align 8, !tbaa !34
  %16 = fsub double %13, %15
  %17 = getelementptr inbounds double, ptr %0, i64 8
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = fmul double %18, 0x3F91DF46A2529D39
  %20 = fcmp une double %19, 0.000000e+00
  br i1 %20, label %21, label %33

21:                                               ; preds = %9
  %22 = tail call double @cos(double noundef %19) #9
  %23 = load double, ptr %5, align 8, !tbaa !34
  %24 = tail call double @sin(double noundef %19) #9
  %25 = fneg double %23
  %26 = fmul double %24, %25
  %27 = tail call double @llvm.fmuladd.f64(double %16, double %22, double %26)
  store double %27, ptr %0, align 8, !tbaa !34
  %28 = tail call double @sin(double noundef %19) #9
  %29 = load double, ptr %5, align 8, !tbaa !34
  %30 = tail call double @cos(double noundef %19) #9
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %16, double %28, double %31)
  store double %32, ptr %5, align 8, !tbaa !34
  br label %34

33:                                               ; preds = %9
  store double %16, ptr %0, align 8, !tbaa !34
  br label %34

34:                                               ; preds = %33, %21
  %35 = load double, ptr %0, align 8, !tbaa !34
  %36 = fmul double %35, %35
  br label %37

37:                                               ; preds = %34, %2
  %38 = phi double [ %36, %34 ], [ %4, %2 ]
  %39 = getelementptr inbounds double, ptr %0, i64 4
  %40 = load double, ptr %39, align 8, !tbaa !34
  %41 = fmul double %40, %40
  %42 = load double, ptr %5, align 8, !tbaa !34
  %43 = fmul double %38, %42
  %44 = tail call double @llvm.fmuladd.f64(double %41, double %42, double %43)
  %45 = getelementptr inbounds double, ptr %0, i64 5
  %46 = load double, ptr %45, align 8, !tbaa !34
  %47 = fsub double %44, %46
  %48 = fneg double %47
  %49 = getelementptr inbounds double, ptr %0, i64 3
  %50 = load double, ptr %49, align 8, !tbaa !34
  %51 = fmul double %50, %48
  %52 = fcmp olt double %51, -1.000000e+01
  %53 = select i1 %52, double -1.000000e+01, double %51
  %54 = fcmp olt double %53, 1.000000e+01
  %55 = select i1 %54, double %53, double 1.000000e+01
  ret double %55
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3pov9f_noise3dEPdj(ptr nocapture noundef readonly %0, i32 %1) #3 {
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %4 = load double, ptr %0, align 8, !tbaa !34
  store double %4, ptr %3, align 16, !tbaa !34
  %5 = getelementptr inbounds double, ptr %3, i64 1
  %6 = getelementptr inbounds double, ptr %0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !34
  store double %7, ptr %5, align 8, !tbaa !34
  %8 = getelementptr inbounds double, ptr %3, i64 2
  %9 = getelementptr inbounds double, ptr %0, i64 2
  %10 = load double, ptr %9, align 8, !tbaa !34
  store double %10, ptr %8, align 16, !tbaa !34
  %11 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret double %11
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3pov9f_patternEPdj(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = alloca [3 x double], align 16
  %4 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %5 = load double, ptr %0, align 8, !tbaa !34
  store double %5, ptr %4, align 16, !tbaa !34
  %6 = getelementptr inbounds double, ptr %4, i64 1
  %7 = getelementptr inbounds double, ptr %0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !34
  store double %8, ptr %6, align 8, !tbaa !34
  %9 = getelementptr inbounds double, ptr %4, i64 2
  %10 = getelementptr inbounds double, ptr %0, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !34
  store double %11, ptr %9, align 16, !tbaa !34
  %12 = tail call noundef ptr @_ZN3pov18POVFPU_GetFunctionEj(i32 noundef %1)
  %13 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %12, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  call void @_ZN3pov11Warp_EPointEPdS0_PNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %14)
  %17 = load ptr, ptr %13, align 8, !tbaa !50
  %18 = call noundef double @_ZN3pov13Evaluate_TPatEPNS_14Pattern_StructEPdPNS_10istk_entryE(ptr noundef %17, ptr noundef nonnull %3, ptr noundef null)
  br label %19

19:                                               ; preds = %2, %16
  %20 = phi double [ %18, %16 ], [ 0.000000e+00, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret double %20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3pov17f_noise_generatorEPdj(ptr nocapture noundef readonly %0, i32 %1) #3 {
  %3 = alloca [3 x double], align 16
  %4 = alloca %"struct.pov::Pattern_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %5 = load double, ptr %0, align 8, !tbaa !34
  store double %5, ptr %3, align 16, !tbaa !34
  %6 = getelementptr inbounds double, ptr %3, i64 1
  %7 = getelementptr inbounds double, ptr %0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !34
  store double %8, ptr %6, align 8, !tbaa !34
  %9 = getelementptr inbounds double, ptr %3, i64 2
  %10 = getelementptr inbounds double, ptr %0, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !34
  store double %11, ptr %9, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #9
  %12 = getelementptr inbounds double, ptr %0, i64 3
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = fptosi double %13 to i32
  %15 = trunc i32 %14 to i16
  %16 = shl i16 %15, 4
  %17 = and i16 %16, 48
  %18 = getelementptr inbounds %"struct.pov::Pattern_Struct", ptr %4, i64 0, i32 2
  store i16 %17, ptr %18, align 4, !tbaa !38
  %19 = call noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef nonnull %3, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret double %19
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov9f_pigmentEPdjj(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [5 x float], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %6 = getelementptr inbounds double, ptr %0, i64 5
  %7 = load double, ptr %6, align 8, !tbaa !34
  store double %7, ptr %4, align 16, !tbaa !34
  %8 = getelementptr inbounds double, ptr %4, i64 1
  %9 = getelementptr inbounds double, ptr %0, i64 6
  %10 = load double, ptr %9, align 8, !tbaa !34
  store double %10, ptr %8, align 8, !tbaa !34
  %11 = getelementptr inbounds double, ptr %4, i64 2
  %12 = getelementptr inbounds double, ptr %0, i64 7
  %13 = load double, ptr %12, align 8, !tbaa !34
  store double %13, ptr %11, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  %14 = tail call noundef ptr @_ZN3pov18POVFPU_GetFunctionEj(i32 noundef %1)
  %15 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %14, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %2, double noundef 0.000000e+00)
  %19 = add i32 %2, 1
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %19, double noundef 0.000000e+00)
  %20 = add i32 %2, 2
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %20, double noundef 0.000000e+00)
  %21 = add i32 %2, 3
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %21, double noundef 0.000000e+00)
  %22 = add i32 %2, 4
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %22, double noundef 0.000000e+00)
  br label %43

23:                                               ; preds = %3
  %24 = call noundef i32 @_ZN3pov15Compute_PigmentEPfPNS_14Pigment_StructEPdPNS_10istk_entryE(ptr noundef nonnull %5, ptr noundef nonnull %16, ptr noundef nonnull %4, ptr noundef null)
  %25 = load float, ptr %5, align 16, !tbaa !56
  %26 = fpext float %25 to double
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %2, double noundef %26)
  %27 = add i32 %2, 1
  %28 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !56
  %30 = fpext float %29 to double
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %27, double noundef %30)
  %31 = add i32 %2, 2
  %32 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 2
  %33 = load float, ptr %32, align 8, !tbaa !56
  %34 = fpext float %33 to double
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %31, double noundef %34)
  %35 = add i32 %2, 3
  %36 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 3
  %37 = load float, ptr %36, align 4, !tbaa !56
  %38 = fpext float %37 to double
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %35, double noundef %38)
  %39 = add i32 %2, 4
  %40 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 4
  %41 = load float, ptr %40, align 16, !tbaa !56
  %42 = fpext float %41 to double
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %39, double noundef %42)
  br label %43

43:                                               ; preds = %23, %18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov11f_transformEPdjj(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %6 = getelementptr inbounds double, ptr %0, i64 3
  %7 = load double, ptr %6, align 8, !tbaa !34
  store double %7, ptr %4, align 16, !tbaa !34
  %8 = getelementptr inbounds double, ptr %4, i64 1
  %9 = getelementptr inbounds double, ptr %0, i64 4
  %10 = load double, ptr %9, align 8, !tbaa !34
  store double %10, ptr %8, align 8, !tbaa !34
  %11 = getelementptr inbounds double, ptr %4, i64 2
  %12 = getelementptr inbounds double, ptr %0, i64 5
  %13 = load double, ptr %12, align 8, !tbaa !34
  store double %13, ptr %11, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %14 = tail call noundef ptr @_ZN3pov18POVFPU_GetFunctionEj(i32 noundef %1)
  %15 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %14, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %2, double noundef 0.000000e+00)
  %19 = add i32 %2, 1
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %19, double noundef 0.000000e+00)
  %20 = add i32 %2, 2
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %20, double noundef 0.000000e+00)
  br label %29

21:                                               ; preds = %3
  call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %16)
  %22 = load double, ptr %5, align 16, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %2, double noundef %22)
  %23 = add i32 %2, 1
  %24 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %25 = load double, ptr %24, align 8, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %23, double noundef %25)
  %26 = add i32 %2, 2
  %27 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %28 = load double, ptr %27, align 16, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %26, double noundef %28)
  br label %29

29:                                               ; preds = %21, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov8f_splineEPdjj(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = alloca [5 x double], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #9
  %6 = tail call noundef ptr @_ZN3pov18POVFPU_GetFunctionEj(i32 noundef %1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %7 = getelementptr inbounds %"struct.pov::FunctionCode", ptr %6, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %2, double noundef 0.000000e+00)
  %11 = add i32 %2, 1
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %11, double noundef 0.000000e+00)
  %12 = add i32 %2, 2
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %12, double noundef 0.000000e+00)
  br label %42

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"struct.pov::Spline_Struct", ptr %8, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !57
  store i32 %15, ptr %5, align 4, !tbaa !60
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, ptr %0, i64 %16
  %18 = load double, ptr %17, align 8, !tbaa !34
  %19 = call noundef double @_ZN3pov14Get_Spline_ValEPNS_13Spline_StructEdPdPi(ptr noundef nonnull %8, double noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %20 = load double, ptr %4, align 16, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %2, double noundef %20)
  %21 = add i32 %2, 1
  %22 = getelementptr inbounds [5 x double], ptr %4, i64 0, i64 1
  %23 = load double, ptr %22, align 8, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %21, double noundef %23)
  %24 = load i32, ptr %5, align 4, !tbaa !60
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %26, label %42

26:                                               ; preds = %13
  %27 = add i32 %2, 2
  %28 = getelementptr inbounds [5 x double], ptr %4, i64 0, i64 2
  %29 = load double, ptr %28, align 16, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %27, double noundef %29)
  %30 = load i32, ptr %5, align 4, !tbaa !60
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = add i32 %2, 3
  %34 = getelementptr inbounds [5 x double], ptr %4, i64 0, i64 3
  %35 = load double, ptr %34, align 8, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %33, double noundef %35)
  %36 = load i32, ptr %5, align 4, !tbaa !60
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = add i32 %2, 4
  %40 = getelementptr inbounds [5 x double], ptr %4, i64 0, i64 4
  %41 = load double, ptr %40, align 16, !tbaa !34
  call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef %39, double noundef %41)
  br label %42

42:                                               ; preds = %13, %32, %38, %26, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

declare noundef double @_ZN3pov5NoiseEPdPNS_14Pattern_StructE(ptr noundef, ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZN3pov18POVFPU_GetFunctionEj(i32 noundef) local_unnamed_addr #8

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN3pov11Warp_EPointEPdS0_PNS_14Pattern_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare noundef double @_ZN3pov13Evaluate_TPatEPNS_14Pattern_StructEPdPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef, double noundef) local_unnamed_addr #8

declare noundef i32 @_ZN3pov15Compute_PigmentEPfPNS_14Pigment_StructEPdPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare noundef double @_ZN3pov14Get_Spline_ValEPNS_13Spline_StructEdPdPi(ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

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
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !45, !46}
!48 = distinct !{!48, !45, !46}
!49 = distinct !{!49, !45, !46}
!50 = !{!51, !43, i64 1192}
!51 = !{!"_ZTSN3pov12FunctionCodeE", !43, i64 0, !41, i64 8, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 16, !36, i64 240, !36, i64 688, !43, i64 1136, !43, i64 1144, !52, i64 1152, !41, i64 1168, !43, i64 1176, !43, i64 1184, !43, i64 1192}
!52 = !{!"_ZTSN8pov_base11ITextStream7FilePosE", !53, i64 0, !41, i64 8}
!53 = !{!"long", !36, i64 0}
!54 = distinct !{!54, !45, !46}
!55 = distinct !{!55, !45, !46}
!56 = !{!42, !42, i64 0}
!57 = !{!58, !41, i64 28}
!58 = !{!"_ZTSN3pov13Spline_StructE", !41, i64 0, !41, i64 4, !41, i64 8, !43, i64 16, !41, i64 24, !41, i64 28, !59, i64 32, !41, i64 36, !35, i64 40, !36, i64 48}
!59 = !{!"bool", !36, i64 0}
!60 = !{!41, !41, i64 0}
