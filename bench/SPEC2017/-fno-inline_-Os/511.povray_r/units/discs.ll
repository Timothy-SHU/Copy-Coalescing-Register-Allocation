; ModuleID = 'discs.cpp'
source_filename = "discs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Method_Struct" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::Disc_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, [3 x double], [3 x double], double, double, double }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::Object_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32 }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }

$_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff = comdat any

$_ZN3pov11Make_VectorEPdddd = comdat any

$_ZN3pov12VEvaluateRayEPdPKddS2_ = comdat any

$_ZN3pov10push_entryEdPdPNS_13Object_StructEPNS_13istack_structE = comdat any

$_ZN3pov16Increase_CounterERx = comdat any

$_ZN3pov7VLengthERdPKd = comdat any

$_ZN3pov15VInverseScaleEqEPdd = comdat any

$_ZN3pov3SqrEd = comdat any

$_ZN3pov4itopEPNS_13istack_structE = comdat any

$_ZN3pov13Assign_VectorEPdS0_ = comdat any

$_ZN3pov14Assign_UV_VectEPdS0_ = comdat any

$_ZN3pov10VNormalizeEPdPKd = comdat any

$_ZN3pov13VInverseScaleEPdPKdd = comdat any

@.str = private unnamed_addr constant [10 x i8] c"discs.cpp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"disc\00", align 1
@_ZN3povL12Disc_MethodsE = internal global %"struct.pov::Method_Struct" { ptr @_ZN3povL22All_Disc_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL11Inside_DiscEPdPNS_13Object_StructE, ptr @_ZN3povL11Disc_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL9Copy_DiscEPNS_13Object_StructE, ptr @_ZN3povL14Translate_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL11Rotate_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL10Scale_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL14Transform_DiscEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL11Invert_DiscEPNS_13Object_StructE, ptr @_ZN3povL12Destroy_DiscEPNS_13Object_StructE }, align 8
@_ZN3pov5statsE = external global [123 x i64], align 16

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov11Create_DiscEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 192, ptr noundef nonnull @.str, i32 noundef 490, ptr noundef nonnull @.str.1) #10
  %2 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !34
  store ptr @_ZN3povL12Disc_MethodsE, ptr %1, align 8, !tbaa !43
  %3 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %5, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10) #10
  %6 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 14
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %6, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #10
  %7 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 15
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %7, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00) #10
  %8 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 18
  store double 1.000000e+00, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 16
  store <2 x double> zeroinitializer, ptr %9, align 8, !tbaa !45
  %10 = tail call noundef ptr @_ZN3pov16Create_TransformEv() #10
  store ptr %10, ptr %4, align 8, !tbaa !46
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %5, float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef 0xBF50624DE0000000, float noundef 2.000000e+00, float noundef 2.000000e+00, float noundef 0x3F60624DE0000000) #10
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #3 comdat {
  store float %1, ptr %0, align 4, !tbaa !47
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %2, ptr %8, align 4, !tbaa !47
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %3, ptr %9, align 4, !tbaa !47
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1
  store float %4, ptr %10, align 4, !tbaa !47
  %11 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  store float %5, ptr %11, align 4, !tbaa !47
  %12 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 2
  store float %6, ptr %12, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 comdat {
  store double %1, ptr %0, align 8, !tbaa !45
  %5 = getelementptr inbounds double, ptr %0, i64 1
  store double %2, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds double, ptr %0, i64 2
  store double %3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov12Compute_DiscEPNS_11Disc_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 14
  %5 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15
  tail call void @_ZN3pov28Compute_Coordinate_TransformEPNS_16Transform_StructEPdS2_dd(ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5, double noundef 1.000000e+00, double noundef 1.000000e+00) #10
  tail call fastcc void @_ZN3povL17Compute_Disc_BBoxEPNS_11Disc_StructE(ptr noundef %0) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov28Compute_Coordinate_TransformEPNS_16Transform_StructEPdS2_dd(ptr noundef, ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL17Compute_Disc_BBoxEPNS_11Disc_StructE(ptr noundef %0) unnamed_addr #0 !PGOFuncName !48 {
  %2 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 18
  %3 = load double, ptr %2, align 8, !tbaa !44
  %4 = tail call double @sqrt(double noundef %3) #11
  %5 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 9
  %6 = fptrunc double %4 to float
  %7 = fneg float %6
  %8 = fmul double %4, 2.000000e+00
  %9 = fptrunc double %8 to float
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %5, float noundef %7, float noundef %7, float noundef 0xBF50624DE0000000, float noundef %9, float noundef %9, float noundef 0x3F60624DE0000000) #10
  %10 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef %11) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL22All_Disc_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !49 {
  %4 = alloca double, align 8
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %6 = call fastcc noundef i32 @_ZN3povL14Intersect_DiscEPNS_10Ray_StructEPNS_11Disc_StructEPd(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %4) #10, !range !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = load double, ptr %4, align 8, !tbaa !45
  %10 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  call void @_ZN3pov12VEvaluateRayEPdPKddS2_(ptr noundef nonnull %5, ptr noundef %1, double noundef %9, ptr noundef nonnull %10) #10
  %11 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %5, ptr noundef %12) #10
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  call void @_ZN3pov10push_entryEdPdPNS_13Object_StructEPNS_13istack_structE(double noundef %9, ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef %2) #10
  br label %15

15:                                               ; preds = %8, %14, %3
  %16 = phi i32 [ 1, %14 ], [ 0, %8 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL11Inside_DiscEPdPNS_13Object_StructE(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !53 {
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  %4 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %5) #10
  %6 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %7 = load double, ptr %6, align 16, !tbaa !45
  %8 = fcmp ult double %7, 0.000000e+00
  %9 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 13
  %10 = load i32, ptr %9, align 4, !tbaa !54
  %11 = and i32 %10, 4
  %12 = lshr i32 %10, 2
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = select i1 %8, i32 %14, i32 %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret i32 %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_ZN3povL11Disc_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #3 !PGOFuncName !55 {
  %4 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 15
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef nonnull %4) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef ptr @_ZN3povL9Copy_DiscEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 !PGOFuncName !56 {
  %2 = tail call noundef ptr @_ZN3pov11Create_DiscEv() #10
  %3 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %2, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %4) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(192) %0, i64 192, i1 false), !tbaa.struct !57
  %5 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef %6) #10
  store ptr %7, ptr %3, align 8, !tbaa !46
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL14Translate_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !61 {
  tail call void @_ZN3povL14Transform_DiscEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL11Rotate_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !62 {
  tail call void @_ZN3povL14Transform_DiscEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL10Scale_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !63 {
  tail call void @_ZN3povL14Transform_DiscEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL14Transform_DiscEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !64 {
  %3 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 15
  tail call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %1) #10
  tail call void @_ZN3pov10VNormalizeEPdPKd(ptr noundef nonnull %3, ptr noundef nonnull %3) #10
  %4 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %5, ptr noundef %1) #10
  tail call fastcc void @_ZN3povL17Compute_Disc_BBoxEPNS_11Disc_StructE(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL11Invert_DiscEPNS_13Object_StructE(ptr nocapture noundef %0) #4 !PGOFuncName !65 {
  %2 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !66
  %4 = xor i32 %3, 4
  store i32 %4, ptr %2, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL12Destroy_DiscEPNS_13Object_StructE(ptr noundef %0) #0 !PGOFuncName !67 {
  %2 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %3) #10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 590) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZN3povL14Intersect_DiscEPNS_10Ray_StructEPNS_11Disc_StructEPd(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !68 {
  %4 = alloca double, align 8
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 28)) #10
  %7 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %8) #10
  %9 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %7, align 8, !tbaa !46
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef %10) #10
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %6) #10
  %11 = load double, ptr %4, align 8, !tbaa !45
  call void @_ZN3pov15VInverseScaleEqEPdd(ptr noundef nonnull %6, double noundef %11) #10
  %12 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %13 = load double, ptr %12, align 16, !tbaa !45
  %14 = call double @llvm.fabs.f64(double %13)
  %15 = fcmp ogt double %14, 0x3E7AD7F29ABCAF48
  br i1 %15, label %16, label %48

16:                                               ; preds = %3
  %17 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %18 = load double, ptr %17, align 16, !tbaa !45
  %19 = fneg double %18
  %20 = fdiv double %19, %13
  %21 = fcmp ult double %20, 0.000000e+00
  br i1 %21, label %48, label %22

22:                                               ; preds = %16
  %23 = load double, ptr %5, align 16, !tbaa !45
  %24 = load double, ptr %6, align 16, !tbaa !45
  %25 = call double @llvm.fmuladd.f64(double %20, double %24, double %23)
  %26 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %27 = load double, ptr %26, align 8, !tbaa !45
  %28 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %29 = load double, ptr %28, align 8, !tbaa !45
  %30 = call double @llvm.fmuladd.f64(double %20, double %29, double %27)
  %31 = call noundef double @_ZN3pov3SqrEd(double noundef %25) #10
  %32 = call noundef double @_ZN3pov3SqrEd(double noundef %30) #10
  %33 = fadd double %31, %32
  %34 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 17
  %35 = load double, ptr %34, align 8, !tbaa !69
  %36 = fcmp ult double %33, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %22
  %38 = getelementptr inbounds %"struct.pov::Disc_Struct", ptr %1, i64 0, i32 18
  %39 = load double, ptr %38, align 8, !tbaa !44
  %40 = fcmp ugt double %33, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = load double, ptr %4, align 8, !tbaa !45
  %43 = fdiv double %20, %42
  store double %43, ptr %2, align 8, !tbaa !45
  %44 = fcmp ogt double %43, 1.000000e-03
  %45 = fcmp olt double %43, 1.000000e+07
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 29)) #10
  br label %48

48:                                               ; preds = %3, %22, %37, %41, %16, %47
  %49 = phi i32 [ 1, %47 ], [ 0, %16 ], [ 0, %41 ], [ 0, %37 ], [ 0, %22 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %49
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov12VEvaluateRayEPdPKddS2_(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat {
  %5 = load double, ptr %1, align 8, !tbaa !45
  %6 = load double, ptr %3, align 8, !tbaa !45
  %7 = tail call double @llvm.fmuladd.f64(double %2, double %6, double %5)
  store double %7, ptr %0, align 8, !tbaa !45
  %8 = getelementptr inbounds double, ptr %1, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds double, ptr %3, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !45
  %12 = tail call double @llvm.fmuladd.f64(double %2, double %11, double %9)
  %13 = getelementptr inbounds double, ptr %0, i64 1
  store double %12, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds double, ptr %1, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds double, ptr %3, i64 2
  %17 = load double, ptr %16, align 8, !tbaa !45
  %18 = tail call double @llvm.fmuladd.f64(double %2, double %17, double %15)
  %19 = getelementptr inbounds double, ptr %0, i64 2
  store double %18, ptr %19, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov10push_entryEdPdPNS_13Object_StructEPNS_13istack_structE(double noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #10
  store double %0, ptr %5, align 8, !tbaa !70
  %6 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #10
  %7 = getelementptr inbounds %"struct.pov::istk_entry", ptr %6, i64 0, i32 5
  store ptr %2, ptr %7, align 8, !tbaa !72
  %8 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #10
  %9 = getelementptr inbounds %"struct.pov::istk_entry", ptr %8, i64 0, i32 1
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %9, ptr noundef %1) #10
  %10 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #10
  %11 = getelementptr inbounds %"struct.pov::istk_entry", ptr %10, i64 0, i32 4
  tail call void @_ZN3pov14Assign_UV_VectEPdS0_(ptr noundef nonnull %11, ptr noundef %1) #10
  %12 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #10
  %13 = getelementptr inbounds %"struct.pov::istk_entry", ptr %12, i64 0, i32 18
  store ptr null, ptr %13, align 8, !tbaa !73
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat {
  %2 = load i64, ptr %0, align 8, !tbaa !74
  %3 = add nsw i64 %2, 1
  store i64 %3, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !45
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !45
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = getelementptr inbounds double, ptr %1, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !45
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = tail call double @llvm.sqrt.f64(double %10)
  store double %11, ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov15VInverseScaleEqEPdd(ptr noundef %0, double noundef %1) local_unnamed_addr #3 comdat {
  %3 = fdiv double 1.000000e+00, %1
  %4 = load <2 x double>, ptr %0, align 8, !tbaa !45
  %5 = insertelement <2 x double> poison, double %3, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fmul <2 x double> %6, %4
  store <2 x double> %7, ptr %0, align 8, !tbaa !45
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !45
  %10 = fmul double %3, %9
  store double %10, ptr %8, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN3pov3SqrEd(double noundef %0) local_unnamed_addr #3 comdat {
  %2 = fmul double %0, %0
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !78
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %"struct.pov::istk_entry", ptr %3, i64 %6
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !45
  store double %3, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds double, ptr %1, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds double, ptr %0, i64 2
  store double %8, ptr %9, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov14Assign_UV_VectEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !45
  store double %3, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov10VNormalizeEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #10
  %4 = load double, ptr %3, align 8, !tbaa !45
  call void @_ZN3pov13VInverseScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13VInverseScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #3 comdat {
  %4 = fdiv double 1.000000e+00, %2
  %5 = load double, ptr %1, align 8, !tbaa !45
  %6 = fmul double %4, %5
  store double %6, ptr %0, align 8, !tbaa !45
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !45
  %9 = fmul double %4, %8
  %10 = getelementptr inbounds double, ptr %0, i64 1
  store double %9, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !45
  %13 = fmul double %4, %12
  %14 = getelementptr inbounds double, ptr %0, i64 2
  store double %13, ptr %14, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!35 = !{!"_ZTSN3pov11Disc_StructE", !36, i64 0, !39, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !40, i64 72, !36, i64 96, !36, i64 104, !41, i64 112, !39, i64 116, !37, i64 120, !37, i64 144, !42, i64 168, !42, i64 176, !42, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"_ZTSN3pov19Bounding_Box_StructE", !37, i64 0, !37, i64 12}
!41 = !{!"float", !37, i64 0}
!42 = !{!"double", !37, i64 0}
!43 = !{!35, !36, i64 0}
!44 = !{!35, !42, i64 184}
!45 = !{!42, !42, i64 0}
!46 = !{!35, !36, i64 96}
!47 = !{!41, !41, i64 0}
!48 = !{!"discs.cpp:_ZN3povL17Compute_Disc_BBoxEPNS_11Disc_StructE"}
!49 = !{!"discs.cpp:_ZN3povL22All_Disc_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE"}
!50 = !{i32 0, i32 2}
!51 = !{!52, !36, i64 56}
!52 = !{!"_ZTSN3pov13Object_StructE", !36, i64 0, !39, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !40, i64 72, !36, i64 96, !36, i64 104, !41, i64 112, !39, i64 116}
!53 = !{!"discs.cpp:_ZN3povL11Inside_DiscEPdPNS_13Object_StructE"}
!54 = !{!35, !39, i64 116}
!55 = !{!"discs.cpp:_ZN3povL11Disc_NormalEPdPNS_13Object_StructEPNS_10istk_entryE"}
!56 = !{!"discs.cpp:_ZN3povL9Copy_DiscEPNS_13Object_StructE"}
!57 = !{i64 0, i64 8, !58, i64 8, i64 4, !59, i64 16, i64 8, !58, i64 24, i64 8, !58, i64 32, i64 8, !58, i64 40, i64 8, !58, i64 48, i64 8, !58, i64 56, i64 8, !58, i64 64, i64 8, !58, i64 72, i64 12, !60, i64 84, i64 12, !60, i64 96, i64 8, !58, i64 104, i64 8, !58, i64 112, i64 4, !47, i64 116, i64 4, !59, i64 120, i64 24, !60, i64 144, i64 24, !60, i64 168, i64 8, !45, i64 176, i64 8, !45, i64 184, i64 8, !45}
!58 = !{!36, !36, i64 0}
!59 = !{!39, !39, i64 0}
!60 = !{!37, !37, i64 0}
!61 = !{!"discs.cpp:_ZN3povL14Translate_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!62 = !{!"discs.cpp:_ZN3povL11Rotate_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!63 = !{!"discs.cpp:_ZN3povL10Scale_DiscEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!64 = !{!"discs.cpp:_ZN3povL14Transform_DiscEPNS_13Object_StructEPNS_16Transform_StructE"}
!65 = !{!"discs.cpp:_ZN3povL11Invert_DiscEPNS_13Object_StructE"}
!66 = !{!52, !39, i64 116}
!67 = !{!"discs.cpp:_ZN3povL12Destroy_DiscEPNS_13Object_StructE"}
!68 = !{!"discs.cpp:_ZN3povL14Intersect_DiscEPNS_10Ray_StructEPNS_11Disc_StructEPd"}
!69 = !{!35, !42, i64 176}
!70 = !{!71, !42, i64 0}
!71 = !{!"_ZTSN3pov10istk_entryE", !42, i64 0, !37, i64 8, !37, i64 32, !37, i64 56, !37, i64 80, !36, i64 96, !39, i64 104, !39, i64 108, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !36, i64 184, !36, i64 192}
!72 = !{!71, !36, i64 96}
!73 = !{!71, !36, i64 192}
!74 = !{!75, !75, i64 0}
!75 = !{!"long long", !37, i64 0}
!76 = !{!77, !36, i64 8}
!77 = !{!"_ZTSN3pov13istack_structE", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20}
!78 = !{!77, !39, i64 20}
