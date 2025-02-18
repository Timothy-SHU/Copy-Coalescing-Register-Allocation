; ModuleID = 'discs.cpp'
source_filename = "discs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Method_Struct" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::Disc_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, [3 x double], [3 x double], double, double, double }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::Object_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32 }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"discs.cpp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"disc\00", align 1
@_ZN3povL12Disc_MethodsE = internal global %"struct.pov::Method_Struct" { ptr @_ZN3povL22All_Disc_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL11Inside_DiscEPdPNS_13Object_StructE, ptr @_ZN3povL11Disc_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL9Copy_DiscEPNS_13Object_StructE, ptr @_ZN3povL14Translate_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL11Rotate_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL10Scale_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL14Transform_DiscEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL11Invert_DiscEPNS_13Object_StructE, ptr @_ZN3povL12Destroy_DiscEPNS_13Object_StructE }, align 8
@_ZN3pov5statsE = external local_unnamed_addr global [123 x i64], align 16

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov11Create_DiscEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 192, ptr noundef nonnull @.str, i32 noundef 490, ptr noundef nonnull @.str.1)
  %2 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !34
  store ptr @_ZN3povL12Disc_MethodsE, ptr %1, align 8, !tbaa !43
  %3 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %5, align 4, !tbaa !44
  %6 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %6, align 4, !tbaa !44
  %7 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %7, align 4, !tbaa !44
  %8 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %8, align 4, !tbaa !44
  %9 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !44
  %10 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %10, align 4, !tbaa !44
  %11 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 14
  %12 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 15, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  store double 1.000000e+00, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 17
  store double 0.000000e+00, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 18
  store double 1.000000e+00, ptr %14, align 8, !tbaa !47
  %15 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 16
  store double 0.000000e+00, ptr %15, align 8, !tbaa !48
  %16 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %16, ptr %4, align 8, !tbaa !49
  store float -1.000000e+00, ptr %5, align 4, !tbaa !44
  store float -1.000000e+00, ptr %6, align 4, !tbaa !44
  store float 0xBF50624DE0000000, ptr %7, align 4, !tbaa !44
  store float 2.000000e+00, ptr %8, align 4, !tbaa !44
  store float 2.000000e+00, ptr %9, align 4, !tbaa !44
  store float 0x3F60624DE0000000, ptr %10, align 4, !tbaa !44
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov12Compute_DiscEPNS_11Disc_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 14
  %5 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15
  tail call void @_ZN3pov28Compute_Coordinate_TransformEPNS_16Transform_StructEPdS2_dd(ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5, double noundef 1.000000e+00, double noundef 1.000000e+00)
  %6 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 18
  %7 = load double, ptr %6, align 8, !tbaa !47
  %8 = tail call double @sqrt(double noundef %7) #8
  %9 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9
  %10 = fptrunc double %8 to float
  %11 = fneg float %10
  %12 = fmul double %8, 2.000000e+00
  %13 = fptrunc double %12 to float
  store float %11, ptr %9, align 4, !tbaa !44
  %14 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %11, ptr %14, align 4, !tbaa !44
  %15 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float 0xBF50624DE0000000, ptr %15, align 4, !tbaa !44
  %16 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1
  store float %13, ptr %16, align 4, !tbaa !44
  %17 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %13, ptr %17, align 4, !tbaa !44
  %18 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float 0x3F60624DE0000000, ptr %18, align 4, !tbaa !44
  %19 = load ptr, ptr %2, align 8, !tbaa !49
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %9, ptr noundef %19)
  ret void
}

declare void @_ZN3pov28Compute_Coordinate_TransformEPNS_16Transform_StructEPdS2_dd(ptr noundef, ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL22All_Disc_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %7 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 28), align 16, !tbaa !50
  %8 = add nsw i64 %7, 1
  store i64 %8, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 28), align 16, !tbaa !50
  %9 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %10)
  %11 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %9, align 8, !tbaa !49
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef %12)
  %13 = load double, ptr %5, align 16, !tbaa !45
  %14 = getelementptr inbounds double, ptr %5, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !45
  %16 = fmul double %15, %15
  %17 = call double @llvm.fmuladd.f64(double %13, double %13, double %16)
  %18 = getelementptr inbounds double, ptr %5, i64 2
  %19 = load double, ptr %18, align 16, !tbaa !45
  %20 = call double @llvm.fmuladd.f64(double %19, double %19, double %17)
  %21 = call double @sqrt(double noundef %20) #8
  %22 = fdiv double 1.000000e+00, %21
  %23 = load double, ptr %5, align 16, !tbaa !45
  %24 = fmul double %23, %22
  store double %24, ptr %5, align 16, !tbaa !45
  %25 = load double, ptr %14, align 8, !tbaa !45
  %26 = fmul double %22, %25
  store double %26, ptr %14, align 8, !tbaa !45
  %27 = load double, ptr %18, align 16, !tbaa !45
  %28 = fmul double %22, %27
  store double %28, ptr %18, align 16, !tbaa !45
  %29 = call double @llvm.fabs.f64(double %28)
  %30 = fcmp ogt double %29, 0x3E7AD7F29ABCAF48
  br i1 %30, label %31, label %61

31:                                               ; preds = %3
  %32 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %33 = load double, ptr %32, align 16, !tbaa !45
  %34 = fneg double %33
  %35 = fdiv double %34, %28
  %36 = fcmp ult double %35, 0.000000e+00
  br i1 %36, label %61, label %37

37:                                               ; preds = %31
  %38 = load double, ptr %4, align 16, !tbaa !45
  %39 = call double @llvm.fmuladd.f64(double %35, double %24, double %38)
  %40 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %41 = load double, ptr %40, align 8, !tbaa !45
  %42 = call double @llvm.fmuladd.f64(double %35, double %26, double %41)
  %43 = fmul double %39, %39
  %44 = fmul double %42, %42
  %45 = fadd double %43, %44
  %46 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 17
  %47 = load double, ptr %46, align 8, !tbaa !46
  %48 = fcmp ult double %45, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %37
  %50 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 18
  %51 = load double, ptr %50, align 8, !tbaa !47
  %52 = fcmp ugt double %45, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = fdiv double %35, %21
  %55 = fcmp ogt double %54, 1.000000e-03
  %56 = fcmp olt double %54, 1.000000e+07
  %57 = and i1 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 29), align 8, !tbaa !50
  %60 = add nsw i64 %59, 1
  store i64 %60, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 29), align 8, !tbaa !50
  br label %61

61:                                               ; preds = %3, %31, %37, %49, %53, %58
  %62 = phi double [ undef, %31 ], [ undef, %37 ], [ undef, %49 ], [ %54, %58 ], [ %54, %53 ], [ undef, %3 ]
  %63 = phi i1 [ true, %31 ], [ true, %37 ], [ true, %49 ], [ false, %58 ], [ true, %53 ], [ true, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  br i1 %63, label %102, label %64

64:                                               ; preds = %61
  %65 = load double, ptr %1, align 8, !tbaa !45
  %66 = load double, ptr %11, align 8, !tbaa !45
  %67 = call double @llvm.fmuladd.f64(double %62, double %66, double %65)
  store double %67, ptr %6, align 16, !tbaa !45
  %68 = getelementptr inbounds double, ptr %1, i64 1
  %69 = load double, ptr %68, align 8, !tbaa !45
  %70 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 1
  %71 = load double, ptr %70, align 8, !tbaa !45
  %72 = call double @llvm.fmuladd.f64(double %62, double %71, double %69)
  %73 = getelementptr inbounds double, ptr %6, i64 1
  store double %72, ptr %73, align 8, !tbaa !45
  %74 = getelementptr inbounds double, ptr %1, i64 2
  %75 = load double, ptr %74, align 8, !tbaa !45
  %76 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 2
  %77 = load double, ptr %76, align 8, !tbaa !45
  %78 = call double @llvm.fmuladd.f64(double %62, double %77, double %75)
  %79 = getelementptr inbounds double, ptr %6, i64 2
  store double %78, ptr %79, align 16, !tbaa !45
  %80 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !52
  %82 = call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %6, ptr noundef %81)
  br i1 %82, label %83, label %102

83:                                               ; preds = %64
  %84 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !54
  %86 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 3
  %87 = load i32, ptr %86, align 4, !tbaa !56
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %"struct.pov::istk_entry", ptr %85, i64 %88
  store double %62, ptr %89, align 8, !tbaa !57
  %90 = getelementptr inbounds %"struct.pov::istk_entry", ptr %85, i64 %88, i32 5
  store ptr %0, ptr %90, align 8, !tbaa !59
  %91 = getelementptr inbounds %"struct.pov::istk_entry", ptr %85, i64 %88, i32 1
  %92 = load double, ptr %6, align 16, !tbaa !45
  store double %92, ptr %91, align 8, !tbaa !45
  %93 = load double, ptr %73, align 8, !tbaa !45
  %94 = getelementptr inbounds double, ptr %91, i64 1
  store double %93, ptr %94, align 8, !tbaa !45
  %95 = load double, ptr %79, align 16, !tbaa !45
  %96 = getelementptr inbounds double, ptr %91, i64 2
  store double %95, ptr %96, align 8, !tbaa !45
  %97 = getelementptr inbounds %"struct.pov::istk_entry", ptr %85, i64 %88, i32 4
  %98 = load double, ptr %6, align 16, !tbaa !45
  store double %98, ptr %97, align 8, !tbaa !45
  %99 = load double, ptr %73, align 8, !tbaa !45
  %100 = getelementptr inbounds double, ptr %97, i64 1
  store double %99, ptr %100, align 8, !tbaa !45
  %101 = getelementptr inbounds %"struct.pov::istk_entry", ptr %85, i64 %88, i32 18
  store ptr null, ptr %101, align 8, !tbaa !60
  call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %2)
  br label %102

102:                                              ; preds = %64, %83, %61
  %103 = phi i32 [ 1, %83 ], [ 0, %64 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  ret i32 %103
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL11Inside_DiscEPdPNS_13Object_StructE(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %4 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %5)
  %6 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %7 = load double, ptr %6, align 16, !tbaa !45
  %8 = fcmp ult double %7, 0.000000e+00
  %9 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 13
  %10 = load i32, ptr %9, align 4, !tbaa !61
  %11 = and i32 %10, 4
  %12 = lshr i32 %10, 2
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = select i1 %8, i32 %14, i32 %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL11Disc_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 {
  %4 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 15
  %5 = load double, ptr %4, align 8, !tbaa !45
  store double %5, ptr %0, align 8, !tbaa !45
  %6 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 15, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds double, ptr %0, i64 1
  store double %7, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 15, i64 2
  %10 = load double, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds double, ptr %0, i64 2
  store double %10, ptr %11, align 8, !tbaa !45
  ret void
}

declare void @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN3povL9Copy_DiscEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 192, ptr noundef nonnull @.str, i32 noundef 490, ptr noundef nonnull @.str.1)
  %3 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !34
  store ptr @_ZN3povL12Disc_MethodsE, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 10
  %6 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %6, align 4, !tbaa !44
  %7 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %7, align 4, !tbaa !44
  %8 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %8, align 4, !tbaa !44
  %9 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !44
  %10 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %10, align 4, !tbaa !44
  %11 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %11, align 4, !tbaa !44
  %12 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 14
  %13 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 15, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, i8 0, i64 40, i1 false)
  store double 1.000000e+00, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 17
  store double 0.000000e+00, ptr %14, align 8, !tbaa !46
  %15 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 18
  store double 1.000000e+00, ptr %15, align 8, !tbaa !47
  %16 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 16
  store double 0.000000e+00, ptr %16, align 8, !tbaa !48
  %17 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %17, ptr %5, align 8, !tbaa !49
  store float -1.000000e+00, ptr %6, align 4, !tbaa !44
  store float -1.000000e+00, ptr %7, align 4, !tbaa !44
  store float 0xBF50624DE0000000, ptr %8, align 4, !tbaa !44
  store float 2.000000e+00, ptr %9, align 4, !tbaa !44
  store float 2.000000e+00, ptr %10, align 4, !tbaa !44
  store float 0x3F60624DE0000000, ptr %11, align 4, !tbaa !44
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %17)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(192) %0, i64 192, i1 false), !tbaa.struct !62
  %18 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef %19)
  store ptr %20, ptr %5, align 8, !tbaa !49
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL14Translate_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15
  tail call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %2)
  %5 = load double, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !45
  %8 = fmul double %7, %7
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !45
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %9)
  %13 = tail call double @sqrt(double noundef %12) #8
  %14 = fdiv double 1.000000e+00, %13
  %15 = load double, ptr %4, align 8, !tbaa !45
  %16 = fmul double %15, %14
  store double %16, ptr %4, align 8, !tbaa !45
  %17 = load double, ptr %6, align 8, !tbaa !45
  %18 = fmul double %14, %17
  store double %18, ptr %6, align 8, !tbaa !45
  %19 = load double, ptr %10, align 8, !tbaa !45
  %20 = fmul double %14, %19
  store double %20, ptr %10, align 8, !tbaa !45
  %21 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %22, ptr noundef %2)
  %23 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 18
  %24 = load double, ptr %23, align 8, !tbaa !47
  %25 = tail call double @sqrt(double noundef %24) #8
  %26 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9
  %27 = fptrunc double %25 to float
  %28 = fneg float %27
  %29 = fmul double %25, 2.000000e+00
  %30 = fptrunc double %29 to float
  store float %28, ptr %26, align 4, !tbaa !44
  %31 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %28, ptr %31, align 4, !tbaa !44
  %32 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float 0xBF50624DE0000000, ptr %32, align 4, !tbaa !44
  %33 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1
  store float %30, ptr %33, align 4, !tbaa !44
  %34 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %30, ptr %34, align 4, !tbaa !44
  %35 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float 0x3F60624DE0000000, ptr %35, align 4, !tbaa !44
  %36 = load ptr, ptr %21, align 8, !tbaa !49
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %26, ptr noundef %36)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL11Rotate_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15
  tail call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %2)
  %5 = load double, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !45
  %8 = fmul double %7, %7
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !45
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %9)
  %13 = tail call double @sqrt(double noundef %12) #8
  %14 = fdiv double 1.000000e+00, %13
  %15 = load double, ptr %4, align 8, !tbaa !45
  %16 = fmul double %15, %14
  store double %16, ptr %4, align 8, !tbaa !45
  %17 = load double, ptr %6, align 8, !tbaa !45
  %18 = fmul double %14, %17
  store double %18, ptr %6, align 8, !tbaa !45
  %19 = load double, ptr %10, align 8, !tbaa !45
  %20 = fmul double %14, %19
  store double %20, ptr %10, align 8, !tbaa !45
  %21 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %22, ptr noundef %2)
  %23 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 18
  %24 = load double, ptr %23, align 8, !tbaa !47
  %25 = tail call double @sqrt(double noundef %24) #8
  %26 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9
  %27 = fptrunc double %25 to float
  %28 = fneg float %27
  %29 = fmul double %25, 2.000000e+00
  %30 = fptrunc double %29 to float
  store float %28, ptr %26, align 4, !tbaa !44
  %31 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %28, ptr %31, align 4, !tbaa !44
  %32 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float 0xBF50624DE0000000, ptr %32, align 4, !tbaa !44
  %33 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1
  store float %30, ptr %33, align 4, !tbaa !44
  %34 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %30, ptr %34, align 4, !tbaa !44
  %35 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float 0x3F60624DE0000000, ptr %35, align 4, !tbaa !44
  %36 = load ptr, ptr %21, align 8, !tbaa !49
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %26, ptr noundef %36)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL10Scale_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15
  tail call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %2)
  %5 = load double, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !45
  %8 = fmul double %7, %7
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !45
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %9)
  %13 = tail call double @sqrt(double noundef %12) #8
  %14 = fdiv double 1.000000e+00, %13
  %15 = load double, ptr %4, align 8, !tbaa !45
  %16 = fmul double %15, %14
  store double %16, ptr %4, align 8, !tbaa !45
  %17 = load double, ptr %6, align 8, !tbaa !45
  %18 = fmul double %14, %17
  store double %18, ptr %6, align 8, !tbaa !45
  %19 = load double, ptr %10, align 8, !tbaa !45
  %20 = fmul double %14, %19
  store double %20, ptr %10, align 8, !tbaa !45
  %21 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %22, ptr noundef %2)
  %23 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 18
  %24 = load double, ptr %23, align 8, !tbaa !47
  %25 = tail call double @sqrt(double noundef %24) #8
  %26 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9
  %27 = fptrunc double %25 to float
  %28 = fneg float %27
  %29 = fmul double %25, 2.000000e+00
  %30 = fptrunc double %29 to float
  store float %28, ptr %26, align 4, !tbaa !44
  %31 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %28, ptr %31, align 4, !tbaa !44
  %32 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float 0xBF50624DE0000000, ptr %32, align 4, !tbaa !44
  %33 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1
  store float %30, ptr %33, align 4, !tbaa !44
  %34 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %30, ptr %34, align 4, !tbaa !44
  %35 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float 0x3F60624DE0000000, ptr %35, align 4, !tbaa !44
  %36 = load ptr, ptr %21, align 8, !tbaa !49
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %26, ptr noundef %36)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL14Transform_DiscEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15
  tail call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %1)
  %4 = load double, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !45
  %7 = fmul double %6, %6
  %8 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %7)
  %9 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15, i64 2
  %10 = load double, ptr %9, align 8, !tbaa !45
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %8)
  %12 = tail call double @sqrt(double noundef %11) #8
  %13 = fdiv double 1.000000e+00, %12
  %14 = load double, ptr %3, align 8, !tbaa !45
  %15 = fmul double %14, %13
  store double %15, ptr %3, align 8, !tbaa !45
  %16 = load double, ptr %5, align 8, !tbaa !45
  %17 = fmul double %13, %16
  store double %17, ptr %5, align 8, !tbaa !45
  %18 = load double, ptr %9, align 8, !tbaa !45
  %19 = fmul double %13, %18
  store double %19, ptr %9, align 8, !tbaa !45
  %20 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %21, ptr noundef %1)
  %22 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 18
  %23 = load double, ptr %22, align 8, !tbaa !47
  %24 = tail call double @sqrt(double noundef %23) #8
  %25 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9
  %26 = fptrunc double %24 to float
  %27 = fneg float %26
  %28 = fmul double %24, 2.000000e+00
  %29 = fptrunc double %28 to float
  store float %27, ptr %25, align 4, !tbaa !44
  %30 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %27, ptr %30, align 4, !tbaa !44
  %31 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float 0xBF50624DE0000000, ptr %31, align 4, !tbaa !44
  %32 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1
  store float %29, ptr %32, align 4, !tbaa !44
  %33 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %29, ptr %33, align 4, !tbaa !44
  %34 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float 0x3F60624DE0000000, ptr %34, align 4, !tbaa !44
  %35 = load ptr, ptr %20, align 8, !tbaa !49
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %25, ptr noundef %35)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL11Invert_DiscEPNS_13Object_StructE(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !66
  %4 = xor i32 %3, 4
  store i32 %4, ptr %2, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL12Destroy_DiscEPNS_13Object_StructE(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %3)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 590)
  ret void
}

declare noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #2

declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #2

declare void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!35 = !{!"_ZTSN3pov11Disc_StructE", !36, i64 0, !39, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !40, i64 72, !36, i64 96, !36, i64 104, !41, i64 112, !39, i64 116, !37, i64 120, !37, i64 144, !42, i64 168, !42, i64 176, !42, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"_ZTSN3pov19Bounding_Box_StructE", !37, i64 0, !37, i64 12}
!41 = !{!"float", !37, i64 0}
!42 = !{!"double", !37, i64 0}
!43 = !{!35, !36, i64 0}
!44 = !{!41, !41, i64 0}
!45 = !{!42, !42, i64 0}
!46 = !{!35, !42, i64 176}
!47 = !{!35, !42, i64 184}
!48 = !{!35, !42, i64 168}
!49 = !{!35, !36, i64 96}
!50 = !{!51, !51, i64 0}
!51 = !{!"long long", !37, i64 0}
!52 = !{!53, !36, i64 56}
!53 = !{!"_ZTSN3pov13Object_StructE", !36, i64 0, !39, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !40, i64 72, !36, i64 96, !36, i64 104, !41, i64 112, !39, i64 116}
!54 = !{!55, !36, i64 8}
!55 = !{!"_ZTSN3pov13istack_structE", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20}
!56 = !{!55, !39, i64 20}
!57 = !{!58, !42, i64 0}
!58 = !{!"_ZTSN3pov10istk_entryE", !42, i64 0, !37, i64 8, !37, i64 32, !37, i64 56, !37, i64 80, !36, i64 96, !39, i64 104, !39, i64 108, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !36, i64 184, !36, i64 192}
!59 = !{!58, !36, i64 96}
!60 = !{!58, !36, i64 192}
!61 = !{!35, !39, i64 116}
!62 = !{i64 0, i64 8, !63, i64 8, i64 4, !64, i64 16, i64 8, !63, i64 24, i64 8, !63, i64 32, i64 8, !63, i64 40, i64 8, !63, i64 48, i64 8, !63, i64 56, i64 8, !63, i64 64, i64 8, !63, i64 72, i64 12, !65, i64 84, i64 12, !65, i64 96, i64 8, !63, i64 104, i64 8, !63, i64 112, i64 4, !44, i64 116, i64 4, !64, i64 120, i64 24, !65, i64 144, i64 24, !65, i64 168, i64 8, !45, i64 176, i64 8, !45, i64 184, i64 8, !45}
!63 = !{!36, !36, i64 0}
!64 = !{!39, !39, i64 0}
!65 = !{!37, !37, i64 0}
!66 = !{!53, !39, i64 116}
