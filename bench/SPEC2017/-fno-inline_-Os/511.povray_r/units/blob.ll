; ModuleID = 'blob.cpp'
source_filename = "blob.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Method_Struct" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::Blob_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, ptr, ptr, ptr, i32 }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::Blob_Data_Struct" = type { i32, i32, double, ptr, ptr, ptr }
%"struct.pov::Blob_Interval_Struct" = type { i32, double, ptr }
%"struct.pov::Object_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32 }
%"struct.pov::Blob_Element_Struct" = type { i16, i32, [3 x double], double, double, [3 x double], [5 x double], ptr, ptr }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }
%"struct.pov::BSphere_Tree_Struct" = type { i16, [3 x double], double, ptr }
%"struct.pov::Blob_List_Struct" = type { %"struct.pov::Blob_Element_Struct", ptr }
%"struct.pov::Transform_Struct" = type { [4 x [4 x double]], [4 x [4 x double]] }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }

$_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff = comdat any

$_ZN3pov13Assign_VectorEPdS0_ = comdat any

$_ZN3pov4VSubEPdPKdS2_ = comdat any

$_ZN3pov4VDotERdPKdS2_ = comdat any

$_ZN3pov6VAddEqEPdPKd = comdat any

$_ZN3pov8VScaleEqEPdd = comdat any

$_ZN3pov3SqrEd = comdat any

$_ZN3pov16Increase_CounterERx = comdat any

$_ZN3pov7VLengthERdPKd = comdat any

$_ZN3pov15VInverseScaleEqEPdd = comdat any

$_ZN3pov12VAddScaledEqEPddPKd = comdat any

$_ZN3pov12VEvaluateRayEPdPKddS2_ = comdat any

$_ZN3pov10push_entryEdPdPNS_13Object_StructEPNS_13istack_structE = comdat any

$_ZN3pov4itopEPNS_13istack_structE = comdat any

$_ZN3pov14Assign_UV_VectEPdS0_ = comdat any

$_ZN3pov11Make_VectorEPdddd = comdat any

$_ZN3pov10VNormalizeEPdPKd = comdat any

$_ZN3pov13VInverseScaleEPdPKdd = comdat any

$_ZSt3minIdERKT_S2_S2_ = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_ = comdat any

$_ZSt3maxIfERKT_S2_S2_ = comdat any

$_ZSt4fabsf = comdat any

@_ZN3pov12Blob_MethodsE = dso_local global %"struct.pov::Method_Struct" { ptr @_ZN3povL22All_Blob_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL11Inside_BlobEPdPNS_13Object_StructE, ptr @_ZN3povL11Blob_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL9Copy_BlobEPNS_13Object_StructE, ptr @_ZN3povL14Translate_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL11Rotate_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL10Scale_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL14Transform_BlobEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL11Invert_BlobEPNS_13Object_StructE, ptr @_ZN3povL12Destroy_BlobEPNS_13Object_StructE }, align 8
@.str = private unnamed_addr constant [9 x i8] c"blob.cpp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"blob queue\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"blob component\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Need at least one component in a blob.\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"There are more than %d components in a blob.\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Degenerate Blob element\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Unknown blob component.\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"blob data\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"blob intervals\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"blob texture list\00", align 1
@_ZN3pov5statsE = external global [123 x i64], align 16
@.str.11 = private unnamed_addr constant [52 x i8] c"Unknown blob component in All_Blob_Intersections().\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"blob bounding hierarchy\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Blob queue overflow!\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL22All_Blob_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !34 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [5 x double], align 16
  %9 = alloca [4 x double], align 16
  %10 = alloca [3 x double], align 16
  %11 = alloca [3 x double], align 16
  %12 = alloca [3 x double], align 16
  %13 = alloca [3 x double], align 16
  %14 = alloca [3 x double], align 16
  %15 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #10
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 12)) #11
  %16 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  br i1 %18, label %23, label %20

20:                                               ; preds = %3
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %17) #11
  %21 = load ptr, ptr %16, align 8, !tbaa !35
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %11, ptr noundef nonnull %19, ptr noundef %21) #11
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %11) #11
  %22 = load double, ptr %7, align 8, !tbaa !43
  call void @_ZN3pov15VInverseScaleEqEPdd(ptr noundef nonnull %11, double noundef %22) #11
  br label %24

23:                                               ; preds = %3
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %10, ptr noundef %1) #11
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %11, ptr noundef nonnull %19) #11
  store double 1.000000e+00, ptr %7, align 8, !tbaa !43
  br label %24

24:                                               ; preds = %23, %20
  %25 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = call fastcc noundef i32 @_ZN3povL20determine_influencesEPdS0_PNS_11Blob_StructEdPNS_20Blob_Interval_StructE(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %0, ptr noundef %28) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %424, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %28, i64 0, i32 1
  %33 = load double, ptr %32, align 8, !tbaa !48
  %34 = fcmp olt double %33, 1.000000e-03
  %35 = select i1 %34, double 0.000000e+00, double %33
  %36 = icmp sgt i32 %29, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  call void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef nonnull %10, double noundef %35, ptr noundef nonnull %11) #11
  %38 = load double, ptr %32, align 8, !tbaa !48
  br label %61

39:                                               ; preds = %31
  %40 = zext nneg i32 %29 to i64
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ 0, %39 ], [ %46, %41 ]
  %43 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %28, i64 %42, i32 1
  %44 = load double, ptr %43, align 8, !tbaa !48
  %45 = fsub double %44, %35
  store double %45, ptr %43, align 8, !tbaa !48
  %46 = add nuw nsw i64 %42, 1
  %47 = icmp eq i64 %46, %40
  br i1 %47, label %48, label %41, !llvm.loop !50

48:                                               ; preds = %41
  call void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef nonnull %10, double noundef %35, ptr noundef nonnull %11) #11
  %49 = load double, ptr %32, align 8, !tbaa !48
  br i1 %36, label %50, label %61

50:                                               ; preds = %48
  %51 = zext nneg i32 %29 to i64
  br label %52

52:                                               ; preds = %50, %52
  %53 = phi i64 [ 0, %50 ], [ %59, %52 ]
  %54 = phi double [ %49, %50 ], [ %58, %52 ]
  %55 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %28, i64 %53, i32 1
  %56 = load double, ptr %55, align 8, !tbaa !48
  %57 = fcmp ogt double %56, %54
  %58 = select i1 %57, double %56, double %54
  %59 = add nuw nsw i64 %53, 1
  %60 = icmp eq i64 %59, %51
  br i1 %60, label %61, label %52, !llvm.loop !52

61:                                               ; preds = %52, %37, %48
  %62 = phi double [ %49, %48 ], [ %38, %37 ], [ %58, %52 ]
  %63 = fcmp une double %62, 0.000000e+00
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  call void @_ZN3pov8VScaleEqEPdd(ptr noundef nonnull %11, double noundef %62) #11
  br i1 %36, label %65, label %74

65:                                               ; preds = %64
  %66 = zext nneg i32 %29 to i64
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi i64 [ 0, %65 ], [ %72, %67 ]
  %69 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %28, i64 %68, i32 1
  %70 = load double, ptr %69, align 8, !tbaa !48
  %71 = fdiv double %70, %62
  store double %71, ptr %69, align 8, !tbaa !48
  %72 = add nuw nsw i64 %68, 1
  %73 = icmp eq i64 %72, %66
  br i1 %73, label %74, label %67, !llvm.loop !53

74:                                               ; preds = %67, %64, %61
  %75 = phi double [ 1.000000e+00, %61 ], [ %62, %64 ], [ %62, %67 ]
  %76 = getelementptr inbounds [5 x double], ptr %8, i64 0, i64 3
  %77 = getelementptr inbounds [5 x double], ptr %8, i64 0, i64 2
  %78 = getelementptr inbounds [5 x double], ptr %8, i64 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %79 = load ptr, ptr %25, align 8, !tbaa !45
  %80 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %79, i64 0, i32 2
  %81 = load double, ptr %80, align 8, !tbaa !54
  %82 = fneg double %81
  %83 = getelementptr inbounds [5 x double], ptr %8, i64 0, i64 4
  store double %82, ptr %83, align 16, !tbaa !43
  br i1 %36, label %84, label %424

84:                                               ; preds = %74
  %85 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 1
  %86 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %87 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 2
  %88 = fmul double %75, %75
  %89 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 13
  %90 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %91 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %92 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 1
  %93 = zext nneg i32 %29 to i64
  %94 = zext nneg i32 %29 to i64
  %95 = insertelement <2 x double> poison, double %88, i64 0
  %96 = shufflevector <2 x double> %95, <2 x double> poison, <2 x i32> zeroinitializer
  br label %97

97:                                               ; preds = %84, %414
  %98 = phi i64 [ 0, %84 ], [ %415, %414 ]
  %99 = phi i32 [ 0, %84 ], [ %418, %414 ]
  %100 = phi i32 [ 0, %84 ], [ %417, %414 ]
  %101 = phi ptr [ null, %84 ], [ %416, %414 ]
  %102 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %28, i64 %98
  %103 = load i32, ptr %102, align 8, !tbaa !55
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %277

106:                                              ; preds = %97
  %107 = add nsw i32 %99, 1
  %108 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %28, i64 %98, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !56
  %110 = load i16, ptr %109, align 8, !tbaa !57
  switch i16 %110, label %264 [
    i16 2, label %111
    i16 8, label %141
    i16 16, label %177
    i16 32, label %177
    i16 4, label %220
  ]

111:                                              ; preds = %106
  %112 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 2
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %112) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %12, ptr noundef nonnull %12) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %12, ptr noundef nonnull %11) #11
  store double %88, ptr %6, align 8, !tbaa !43
  %113 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 5
  %114 = load double, ptr %113, align 8, !tbaa !43
  %115 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 5, i64 1
  %116 = load double, ptr %115, align 8, !tbaa !43
  %117 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 5, i64 2
  %118 = load double, ptr %117, align 8, !tbaa !43
  %119 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6
  %120 = fmul double %114, 4.000000e+00
  %121 = load double, ptr %5, align 8, !tbaa !43
  %122 = insertelement <2 x double> %95, double %120, i64 1
  %123 = insertelement <2 x double> poison, double %114, i64 0
  %124 = insertelement <2 x double> %123, double %121, i64 1
  %125 = fmul <2 x double> %122, %124
  %126 = fmul <2 x double> %96, %125
  store <2 x double> %126, ptr %119, align 8, !tbaa !43
  %127 = fmul double %114, 2.000000e+00
  %128 = fmul double %121, 2.000000e+00
  %129 = load double, ptr %4, align 8, !tbaa !43
  %130 = fmul double %88, %129
  %131 = call double @llvm.fmuladd.f64(double %128, double %121, double %130)
  %132 = fmul double %88, %116
  %133 = call double @llvm.fmuladd.f64(double %127, double %131, double %132)
  %134 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6, i64 2
  store double %133, ptr %134, align 8, !tbaa !43
  %135 = call double @llvm.fmuladd.f64(double %127, double %129, double %116)
  %136 = fmul double %128, %135
  %137 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6, i64 3
  store double %136, ptr %137, align 8, !tbaa !43
  %138 = call double @llvm.fmuladd.f64(double %114, double %129, double %116)
  %139 = call double @llvm.fmuladd.f64(double %129, double %138, double %118)
  %140 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6, i64 4
  store double %139, ptr %140, align 8, !tbaa !43
  br label %266

141:                                              ; preds = %106
  %142 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 8
  %143 = load ptr, ptr %142, align 8, !tbaa !60
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef %143) #11
  %144 = load ptr, ptr %142, align 8, !tbaa !60
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef %144) #11
  %145 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 2
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %145) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %12, ptr noundef nonnull %12) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %12, ptr noundef nonnull %14) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %14, ptr noundef nonnull %14) #11
  %146 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 5
  %147 = load double, ptr %146, align 8, !tbaa !43
  %148 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 5, i64 1
  %149 = load double, ptr %148, align 8, !tbaa !43
  %150 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 5, i64 2
  %151 = load double, ptr %150, align 8, !tbaa !43
  %152 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6
  %153 = load double, ptr %6, align 8, !tbaa !43
  %154 = fmul double %147, 4.000000e+00
  %155 = load double, ptr %5, align 8, !tbaa !43
  %156 = insertelement <2 x double> poison, double %147, i64 0
  %157 = insertelement <2 x double> %156, double %154, i64 1
  %158 = insertelement <2 x double> poison, double %153, i64 0
  %159 = insertelement <2 x double> %158, double %155, i64 1
  %160 = fmul <2 x double> %157, %159
  %161 = shufflevector <2 x double> %158, <2 x double> poison, <2 x i32> zeroinitializer
  %162 = fmul <2 x double> %161, %160
  store <2 x double> %162, ptr %152, align 8, !tbaa !43
  %163 = fmul double %147, 2.000000e+00
  %164 = fmul double %155, 2.000000e+00
  %165 = load double, ptr %4, align 8, !tbaa !43
  %166 = fmul double %153, %165
  %167 = call double @llvm.fmuladd.f64(double %164, double %155, double %166)
  %168 = fmul double %149, %153
  %169 = call double @llvm.fmuladd.f64(double %163, double %167, double %168)
  %170 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6, i64 2
  store double %169, ptr %170, align 8, !tbaa !43
  %171 = call double @llvm.fmuladd.f64(double %163, double %165, double %149)
  %172 = fmul double %164, %171
  %173 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6, i64 3
  store double %172, ptr %173, align 8, !tbaa !43
  %174 = call double @llvm.fmuladd.f64(double %147, double %165, double %149)
  %175 = call double @llvm.fmuladd.f64(double %165, double %174, double %151)
  %176 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6, i64 4
  store double %175, ptr %176, align 8, !tbaa !43
  br label %266

177:                                              ; preds = %106, %106
  %178 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 8
  %179 = load ptr, ptr %178, align 8, !tbaa !60
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef %179) #11
  %180 = load ptr, ptr %178, align 8, !tbaa !60
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef %180) #11
  %181 = load i16, ptr %109, align 8, !tbaa !57
  %182 = icmp eq i16 %181, 32
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 3
  %185 = load double, ptr %184, align 8, !tbaa !61
  %186 = load double, ptr %87, align 16, !tbaa !43
  %187 = fsub double %186, %185
  store double %187, ptr %87, align 16, !tbaa !43
  br label %188

188:                                              ; preds = %183, %177
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %13, ptr noundef nonnull %13) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %13, ptr noundef nonnull %14) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %14, ptr noundef nonnull %14) #11
  %189 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 5
  %190 = load double, ptr %189, align 8, !tbaa !43
  %191 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 5, i64 1
  %192 = load double, ptr %191, align 8, !tbaa !43
  %193 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 5, i64 2
  %194 = load double, ptr %193, align 8, !tbaa !43
  %195 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6
  %196 = load double, ptr %6, align 8, !tbaa !43
  %197 = fmul double %190, 4.000000e+00
  %198 = load double, ptr %5, align 8, !tbaa !43
  %199 = insertelement <2 x double> poison, double %190, i64 0
  %200 = insertelement <2 x double> %199, double %197, i64 1
  %201 = insertelement <2 x double> poison, double %196, i64 0
  %202 = insertelement <2 x double> %201, double %198, i64 1
  %203 = fmul <2 x double> %200, %202
  %204 = shufflevector <2 x double> %201, <2 x double> poison, <2 x i32> zeroinitializer
  %205 = fmul <2 x double> %204, %203
  store <2 x double> %205, ptr %195, align 8, !tbaa !43
  %206 = fmul double %190, 2.000000e+00
  %207 = fmul double %198, 2.000000e+00
  %208 = load double, ptr %4, align 8, !tbaa !43
  %209 = fmul double %196, %208
  %210 = call double @llvm.fmuladd.f64(double %207, double %198, double %209)
  %211 = fmul double %192, %196
  %212 = call double @llvm.fmuladd.f64(double %206, double %210, double %211)
  %213 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6, i64 2
  store double %212, ptr %213, align 8, !tbaa !43
  %214 = call double @llvm.fmuladd.f64(double %206, double %208, double %192)
  %215 = fmul double %207, %214
  %216 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6, i64 3
  store double %215, ptr %216, align 8, !tbaa !43
  %217 = call double @llvm.fmuladd.f64(double %190, double %208, double %192)
  %218 = call double @llvm.fmuladd.f64(double %208, double %217, double %194)
  %219 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6, i64 4
  store double %218, ptr %219, align 8, !tbaa !43
  br label %266

220:                                              ; preds = %106
  %221 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 8
  %222 = load ptr, ptr %221, align 8, !tbaa !60
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef %222) #11
  %223 = load ptr, ptr %221, align 8, !tbaa !60
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef %223) #11
  %224 = load double, ptr %13, align 16, !tbaa !43
  %225 = load double, ptr %85, align 8, !tbaa !43
  %226 = fmul double %225, %225
  %227 = call double @llvm.fmuladd.f64(double %224, double %224, double %226)
  store double %227, ptr %4, align 8, !tbaa !43
  %228 = load <2 x double>, ptr %14, align 16
  %229 = load <2 x double>, ptr %86, align 8
  %230 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 5
  %231 = load double, ptr %230, align 8, !tbaa !43
  %232 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 5, i64 1
  %233 = load double, ptr %232, align 8, !tbaa !43
  %234 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 5, i64 2
  %235 = load double, ptr %234, align 8, !tbaa !43
  %236 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6
  %237 = fmul double %231, 4.000000e+00
  %238 = insertelement <2 x double> %229, double %225, i64 1
  %239 = shufflevector <2 x double> %229, <2 x double> poison, <2 x i32> zeroinitializer
  %240 = fmul <2 x double> %238, %239
  %241 = insertelement <2 x double> %228, double %224, i64 1
  %242 = shufflevector <2 x double> %228, <2 x double> poison, <2 x i32> zeroinitializer
  %243 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %241, <2 x double> %242, <2 x double> %240)
  %244 = extractelement <2 x double> %243, i64 1
  store double %244, ptr %5, align 8, !tbaa !43
  %245 = extractelement <2 x double> %243, i64 0
  store double %245, ptr %6, align 8, !tbaa !43
  %246 = insertelement <2 x double> poison, double %231, i64 0
  %247 = insertelement <2 x double> %246, double %237, i64 1
  %248 = fmul <2 x double> %243, %247
  %249 = shufflevector <2 x double> %243, <2 x double> poison, <2 x i32> zeroinitializer
  %250 = fmul <2 x double> %249, %248
  store <2 x double> %250, ptr %236, align 8, !tbaa !43
  %251 = fmul double %231, 2.000000e+00
  %252 = fmul double %244, 2.000000e+00
  %253 = fmul double %227, %245
  %254 = call double @llvm.fmuladd.f64(double %252, double %244, double %253)
  %255 = fmul double %245, %233
  %256 = call double @llvm.fmuladd.f64(double %251, double %254, double %255)
  %257 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6, i64 2
  store double %256, ptr %257, align 8, !tbaa !43
  %258 = call double @llvm.fmuladd.f64(double %251, double %227, double %233)
  %259 = fmul double %252, %258
  %260 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6, i64 3
  store double %259, ptr %260, align 8, !tbaa !43
  %261 = call double @llvm.fmuladd.f64(double %231, double %227, double %233)
  %262 = call double @llvm.fmuladd.f64(double %227, double %261, double %235)
  %263 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %109, i64 0, i32 6, i64 4
  store double %262, ptr %263, align 8, !tbaa !43
  br label %266

264:                                              ; preds = %106
  %265 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.11) #11
  br label %266

266:                                              ; preds = %264, %220, %188, %141, %111
  %267 = phi ptr [ %101, %264 ], [ %236, %220 ], [ %195, %188 ], [ %152, %141 ], [ %119, %111 ]
  br label %268

268:                                              ; preds = %266, %268
  %269 = phi i64 [ 0, %266 ], [ %275, %268 ]
  %270 = getelementptr inbounds double, ptr %267, i64 %269
  %271 = load double, ptr %270, align 8, !tbaa !43
  %272 = getelementptr inbounds [5 x double], ptr %8, i64 0, i64 %269
  %273 = load double, ptr %272, align 8, !tbaa !43
  %274 = fadd double %271, %273
  store double %274, ptr %272, align 8, !tbaa !43
  %275 = add nuw nsw i64 %269, 1
  %276 = icmp eq i64 %275, 5
  br i1 %276, label %295, label %268, !llvm.loop !62

277:                                              ; preds = %97
  %278 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %28, i64 %98, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !56
  %280 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %279, i64 0, i32 6
  br label %281

281:                                              ; preds = %277, %281
  %282 = phi i64 [ 0, %277 ], [ %288, %281 ]
  %283 = getelementptr inbounds double, ptr %280, i64 %282
  %284 = load double, ptr %283, align 8, !tbaa !43
  %285 = getelementptr inbounds [5 x double], ptr %8, i64 0, i64 %282
  %286 = load double, ptr %285, align 8, !tbaa !43
  %287 = fsub double %286, %284
  store double %287, ptr %285, align 8, !tbaa !43
  %288 = add nuw nsw i64 %282, 1
  %289 = icmp eq i64 %288, 5
  br i1 %289, label %290, label %281, !llvm.loop !63

290:                                              ; preds = %281
  %291 = add nsw i32 %99, -1
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = add nuw nsw i64 %98, 1
  br label %414

295:                                              ; preds = %268, %290
  %296 = phi ptr [ %280, %290 ], [ %267, %268 ]
  %297 = phi i32 [ %291, %290 ], [ %107, %268 ]
  %298 = add nuw nsw i64 %98, 1
  %299 = icmp slt i64 %298, %93
  %300 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %28, i64 %98, i32 1
  %301 = load double, ptr %300, align 8, !tbaa !48
  %302 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %28, i64 %298, i32 1
  %303 = load double, ptr %302, align 8, !tbaa !48
  br i1 %299, label %304, label %308

304:                                              ; preds = %295
  %305 = fsub double %301, %303
  %306 = call double @llvm.fabs.f64(double %305)
  %307 = fcmp olt double %306, 0x3E7AD7F29ABCAF48
  br i1 %307, label %414, label %308

308:                                              ; preds = %295, %304
  %309 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %28, i64 %98, i32 1
  %310 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %28, i64 %298, i32 1
  %311 = fsub double %303, %301
  %312 = load double, ptr %8, align 16, !tbaa !43
  %313 = fmul double %312, %311
  %314 = load double, ptr %78, align 8, !tbaa !43
  %315 = fmul double %312, 4.000000e+00
  %316 = call double @llvm.fmuladd.f64(double %315, double %301, double %314)
  %317 = insertelement <2 x double> poison, double %311, i64 0
  %318 = shufflevector <2 x double> %317, <2 x double> poison, <2 x i32> zeroinitializer
  %319 = insertelement <2 x double> poison, double %313, i64 0
  %320 = insertelement <2 x double> %319, double %316, i64 1
  %321 = fmul <2 x double> %318, %320
  %322 = fmul <2 x double> %318, %321
  %323 = fmul <2 x double> %318, %322
  %324 = fmul double %301, 3.000000e+00
  %325 = fmul double %312, 2.000000e+00
  %326 = call double @llvm.fmuladd.f64(double %325, double %301, double %314)
  %327 = load double, ptr %77, align 16, !tbaa !43
  %328 = call double @llvm.fmuladd.f64(double %324, double %326, double %327)
  %329 = fmul double %311, %328
  %330 = fmul double %311, %329
  %331 = fmul double %301, 2.000000e+00
  %332 = fmul double %314, 7.500000e-01
  %333 = call double @llvm.fmuladd.f64(double %312, double %301, double %332)
  %334 = call double @llvm.fmuladd.f64(double %331, double %333, double %327)
  %335 = load double, ptr %76, align 8, !tbaa !43
  %336 = call double @llvm.fmuladd.f64(double %331, double %334, double %335)
  %337 = fmul double %311, %336
  %338 = call double @llvm.fmuladd.f64(double %312, double %301, double %314)
  %339 = call double @llvm.fmuladd.f64(double %301, double %338, double %327)
  %340 = call double @llvm.fmuladd.f64(double %301, double %339, double %335)
  %341 = load double, ptr %83, align 16, !tbaa !43
  %342 = call double @llvm.fmuladd.f64(double %301, double %340, double %341)
  %343 = call double @llvm.fmuladd.f64(double %337, double 2.500000e-01, double %342)
  %344 = fdiv double %330, 3.000000e+00
  %345 = fadd double %337, %344
  %346 = call double @llvm.fmuladd.f64(double %345, double 5.000000e-01, double %342)
  %347 = call double @llvm.fmuladd.f64(double %337, double 1.500000e+00, double %330)
  %348 = extractelement <2 x double> %323, i64 1
  %349 = call double @llvm.fmuladd.f64(double %348, double 5.000000e-01, double %347)
  %350 = call double @llvm.fmuladd.f64(double %349, double 5.000000e-01, double %342)
  %351 = fadd double %342, %337
  %352 = fadd double %330, %351
  %353 = fadd double %348, %352
  %354 = extractelement <2 x double> %323, i64 0
  %355 = fadd double %354, %353
  %356 = fcmp oge double %342, 0.000000e+00
  %357 = fcmp oge double %343, 0.000000e+00
  %358 = select i1 %356, i1 %357, i1 false
  %359 = fcmp oge double %346, 0.000000e+00
  %360 = select i1 %358, i1 %359, i1 false
  %361 = fcmp oge double %350, 0.000000e+00
  %362 = select i1 %360, i1 %361, i1 false
  %363 = fcmp oge double %355, 0.000000e+00
  %364 = select i1 %362, i1 %363, i1 false
  br i1 %364, label %414, label %365

365:                                              ; preds = %308
  %366 = fcmp ole double %342, 0.000000e+00
  %367 = fcmp ole double %343, 0.000000e+00
  %368 = select i1 %366, i1 %367, i1 false
  %369 = fcmp ole double %346, 0.000000e+00
  %370 = select i1 %368, i1 %369, i1 false
  %371 = fcmp ole double %350, 0.000000e+00
  %372 = select i1 %370, i1 %371, i1 false
  %373 = fcmp ole double %355, 0.000000e+00
  %374 = select i1 %372, i1 %373, i1 false
  br i1 %374, label %414, label %375

375:                                              ; preds = %365
  %376 = load i32, ptr %89, align 4, !tbaa !64
  %377 = and i32 %376, 64
  %378 = call noundef i32 @_ZN3pov16Solve_PolynomialEiPdS0_id(i32 noundef 4, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %377, double noundef 0x3DA5FD7FE1796495) #11
  %379 = icmp sgt i32 %378, 0
  br i1 %379, label %380, label %407

380:                                              ; preds = %375
  %381 = zext nneg i32 %378 to i64
  br label %382

382:                                              ; preds = %380, %403
  %383 = phi i64 [ 0, %380 ], [ %405, %403 ]
  %384 = phi i32 [ %100, %380 ], [ %404, %403 ]
  %385 = getelementptr inbounds [4 x double], ptr %9, i64 0, i64 %383
  %386 = load double, ptr %385, align 8, !tbaa !43
  %387 = load double, ptr %309, align 8, !tbaa !48
  %388 = fcmp ult double %386, %387
  br i1 %388, label %403, label %389

389:                                              ; preds = %382
  %390 = load double, ptr %310, align 8, !tbaa !48
  %391 = fcmp ugt double %386, %390
  br i1 %391, label %403, label %392

392:                                              ; preds = %389
  %393 = call double @llvm.fmuladd.f64(double %386, double %75, double %35)
  %394 = load double, ptr %7, align 8, !tbaa !43
  %395 = fdiv double %393, %394
  %396 = fcmp ogt double %395, 1.000000e-02
  %397 = fcmp olt double %395, 1.000000e+07
  %398 = and i1 %396, %397
  br i1 %398, label %399, label %403

399:                                              ; preds = %392
  call void @_ZN3pov12VEvaluateRayEPdPKddS2_(ptr noundef nonnull %15, ptr noundef %1, double noundef %395, ptr noundef nonnull %90) #11
  %400 = load ptr, ptr %91, align 8, !tbaa !65
  %401 = call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %15, ptr noundef %400) #11
  br i1 %401, label %402, label %403

402:                                              ; preds = %399
  call void @_ZN3pov10push_entryEdPdPNS_13Object_StructEPNS_13istack_structE(double noundef %395, ptr noundef nonnull %15, ptr noundef nonnull %0, ptr noundef %2) #11
  br label %403

403:                                              ; preds = %382, %389, %399, %402, %392
  %404 = phi i32 [ 1, %402 ], [ %384, %399 ], [ %384, %392 ], [ %384, %389 ], [ %384, %382 ]
  %405 = add nuw nsw i64 %383, 1
  %406 = icmp eq i64 %405, %381
  br i1 %406, label %407, label %382, !llvm.loop !67

407:                                              ; preds = %403, %375
  %408 = phi i32 [ %100, %375 ], [ %404, %403 ]
  %409 = load i32, ptr %92, align 8, !tbaa !68
  %410 = and i32 %409, 256
  %411 = icmp eq i32 %410, 0
  %412 = icmp ne i32 %408, 0
  %413 = select i1 %411, i1 %412, i1 false
  br i1 %413, label %422, label %414

414:                                              ; preds = %293, %407, %308, %365, %304
  %415 = phi i64 [ %294, %293 ], [ %298, %407 ], [ %298, %308 ], [ %298, %365 ], [ %298, %304 ]
  %416 = phi ptr [ %280, %293 ], [ %296, %407 ], [ %296, %308 ], [ %296, %365 ], [ %296, %304 ]
  %417 = phi i32 [ %100, %293 ], [ %408, %407 ], [ %100, %308 ], [ %100, %365 ], [ %100, %304 ]
  %418 = phi i32 [ 0, %293 ], [ %297, %407 ], [ %297, %308 ], [ %297, %365 ], [ %297, %304 ]
  %419 = icmp eq i64 %415, %94
  br i1 %419, label %420, label %97, !llvm.loop !69

420:                                              ; preds = %414
  %421 = icmp eq i32 %417, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %407, %420
  %423 = phi i32 [ %417, %420 ], [ 1, %407 ]
  call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 13)) #11
  br label %424

424:                                              ; preds = %74, %420, %422, %24
  %425 = phi i32 [ 0, %24 ], [ %423, %422 ], [ 0, %420 ], [ 0, %74 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %425
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL11Inside_BlobEPdPNS_13Object_StructE(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !70 {
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %4 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %5) #11
  br label %9

8:                                                ; preds = %2
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %3, ptr noundef %0) #11
  br label %9

9:                                                ; preds = %8, %7
  %10 = call fastcc noundef double @_ZN3povL21calculate_field_valueEPNS_11Blob_StructEPd(ptr noundef nonnull %1, ptr noundef nonnull %3) #11
  %11 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %12, i64 0, i32 2
  %14 = load double, ptr %13, align 8, !tbaa !54
  %15 = fadd double %14, 0xBEB0C6F7A0B5ED8D
  %16 = fcmp ogt double %10, %15
  %17 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 13
  %18 = load i32, ptr %17, align 4, !tbaa !64
  %19 = lshr i32 %18, 2
  %20 = and i32 %19, 1
  %21 = xor i32 %20, 1
  %22 = and i32 %18, 4
  %23 = select i1 %16, i32 %21, i32 %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i32 %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL11Blob_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 !PGOFuncName !71 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %9 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 1
  br i1 %11, label %14, label %13

13:                                               ; preds = %3
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %7, ptr noundef nonnull %12, ptr noundef nonnull %10) #11
  br label %15

14:                                               ; preds = %3
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %7, ptr noundef nonnull %12) #11
  br label %15

15:                                               ; preds = %14, %13
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  %16 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %17, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !73
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %21, %25
  %26 = phi i64 [ %31, %25 ], [ 0, %21 ]
  %27 = phi ptr [ %32, %25 ], [ %17, %21 ]
  %28 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !74
  %30 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %29, i64 %26
  call fastcc void @_ZN3povL14element_normalEPdS0_PNS_19Blob_Element_StructE(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %30) #11
  %31 = add nuw nsw i64 %26, 1
  %32 = load ptr, ptr %16, align 8, !tbaa !45
  %33 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !73
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %25, label %76, !llvm.loop !75

37:                                               ; preds = %15
  %38 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 16
  %39 = load ptr, ptr %38, align 8, !tbaa !76
  store ptr %19, ptr %39, align 8, !tbaa !77
  br label %40

40:                                               ; preds = %37, %73
  %41 = phi i32 [ 1, %37 ], [ %74, %73 ]
  %42 = load ptr, ptr %38, align 8, !tbaa !76
  %43 = add i32 %41, -1
  store i32 %43, ptr %4, align 4, !tbaa !78
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !77
  %47 = load i16, ptr %46, align 8, !tbaa !79
  %48 = icmp slt i16 %47, 1
  %49 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %46, i64 0, i32 3
  br i1 %48, label %50, label %52

50:                                               ; preds = %40
  %51 = load ptr, ptr %49, align 8, !tbaa !81
  call fastcc void @_ZN3povL14element_normalEPdS0_PNS_19Blob_Element_StructE(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %51) #11
  br label %73

52:                                               ; preds = %40, %66
  %53 = phi i64 [ %67, %66 ], [ 0, %40 ]
  %54 = load ptr, ptr %49, align 8, !tbaa !81
  %55 = getelementptr inbounds ptr, ptr %54, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !77
  %57 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %56, i64 0, i32 1
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %57) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %8, ptr noundef nonnull %8) #11
  %58 = load double, ptr %5, align 8, !tbaa !43
  %59 = load ptr, ptr %49, align 8, !tbaa !81
  %60 = getelementptr inbounds ptr, ptr %59, i64 %53
  %61 = load ptr, ptr %60, align 8, !tbaa !77
  %62 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %61, i64 0, i32 2
  %63 = load double, ptr %62, align 8, !tbaa !82
  %64 = fcmp ugt double %58, %63
  br i1 %64, label %66, label %65

65:                                               ; preds = %52
  call fastcc void @_ZN3povL11insert_nodeEPNS_11Blob_StructEPNS_19BSphere_Tree_StructEPj(ptr noundef %1, ptr noundef nonnull %61, ptr noundef nonnull %4) #11
  br label %66

66:                                               ; preds = %52, %65
  %67 = add nuw nsw i64 %53, 1
  %68 = load i16, ptr %46, align 8, !tbaa !79
  %69 = sext i16 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %52, label %71, !llvm.loop !83

71:                                               ; preds = %66
  %72 = load i32, ptr %4, align 4, !tbaa !78
  br label %73

73:                                               ; preds = %71, %50
  %74 = phi i32 [ %72, %71 ], [ %43, %50 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %40, !llvm.loop !84

76:                                               ; preds = %73, %25, %21
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %0, ptr noundef %0) #11
  %77 = load double, ptr %6, align 8, !tbaa !43
  %78 = fcmp oeq double %77, 0.000000e+00
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  br label %83

80:                                               ; preds = %76
  %81 = call double @sqrt(double noundef %77) #12
  %82 = fdiv double 1.000000e+00, %81
  store double %82, ptr %6, align 8, !tbaa !43
  call void @_ZN3pov8VScaleEqEPdd(ptr noundef %0, double noundef %82) #11
  br label %83

83:                                               ; preds = %80, %79
  %84 = load ptr, ptr %9, align 8, !tbaa !35
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %84) #11
  call void @_ZN3pov10VNormalizeEPdPKd(ptr noundef %0, ptr noundef %0) #11
  br label %87

87:                                               ; preds = %86, %83
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef ptr @_ZN3povL9Copy_BlobEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 !PGOFuncName !85 {
  %2 = tail call noundef ptr @_ZN3pov11Create_BlobEv() #11
  %3 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 17
  %4 = load i32, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(152) %0, i64 152, i1 false), !tbaa.struct !87
  store i32 %4, ptr %3, align 8, !tbaa !86
  store ptr %6, ptr %5, align 8, !tbaa !76
  %7 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef %8) #11
  store ptr %9, ptr %7, align 8, !tbaa !35
  %10 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = load i32, ptr %11, align 8, !tbaa !90
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !90
  %14 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %11, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !73
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %17, ptr noundef nonnull @.str, i32 noundef 2258, ptr noundef nonnull @.str.10) #11
  %19 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 15
  store ptr %18, ptr %19, align 8, !tbaa !91
  %20 = load ptr, ptr %10, align 8, !tbaa !45
  %21 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !73
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %1
  %25 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %34, %26 ]
  %28 = load ptr, ptr %25, align 8, !tbaa !91
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !77
  %31 = tail call noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef %30) #11
  %32 = load ptr, ptr %19, align 8, !tbaa !91
  %33 = getelementptr inbounds ptr, ptr %32, i64 %27
  store ptr %31, ptr %33, align 8, !tbaa !77
  %34 = add nuw nsw i64 %27, 1
  %35 = load ptr, ptr %10, align 8, !tbaa !45
  %36 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %35, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !73
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %26, label %40, !llvm.loop !92

40:                                               ; preds = %26, %1
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL14Translate_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !93 {
  tail call void @_ZN3povL14Transform_BlobEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL11Rotate_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !94 {
  tail call void @_ZN3povL14Transform_BlobEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL10Scale_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !95 {
  tail call void @_ZN3povL14Transform_BlobEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL14Transform_BlobEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !96 {
  %3 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN3pov16Create_TransformEv() #11
  store ptr %7, ptr %3, align 8, !tbaa !35
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %9, ptr noundef %1) #11
  %10 = load ptr, ptr %3, align 8, !tbaa !35
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %10, ptr noundef %1) #11
  %11 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !73
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %8
  %17 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %23, %18 ]
  %20 = load ptr, ptr %17, align 8, !tbaa !91
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  tail call void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef %22, ptr noundef %1) #11
  %23 = add nuw nsw i64 %19, 1
  %24 = load ptr, ptr %11, align 8, !tbaa !45
  %25 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !73
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %23, %27
  br i1 %28, label %18, label %29, !llvm.loop !97

29:                                               ; preds = %18, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL11Invert_BlobEPNS_13Object_StructE(ptr nocapture noundef %0) #2 !PGOFuncName !98 {
  %2 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !99
  %4 = xor i32 %3, 4
  store i32 %4, ptr %2, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL12Destroy_BlobEPNS_13Object_StructE(ptr noundef %0) #0 !PGOFuncName !100 {
  %2 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %3) #11
  %4 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !73
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %16, %11 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !91
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  tail call void @_ZN3pov16Destroy_TexturesEPNS_14Texture_StructE(ptr noundef %15) #11
  %16 = add nuw nsw i64 %12, 1
  %17 = load ptr, ptr %4, align 8, !tbaa !45
  %18 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !73
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %11, label %22, !llvm.loop !101

22:                                               ; preds = %11, %1
  %23 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef 2357) #11
  store ptr null, ptr %23, align 8, !tbaa !91
  %25 = load ptr, ptr %4, align 8, !tbaa !45
  %26 = load i32, ptr %25, align 8, !tbaa !90
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %25, align 8, !tbaa !90
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %22
  %30 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %25, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  tail call void @_ZN3pov33Destroy_Bounding_Sphere_HierarchyEPNS_19BSphere_Tree_StructE(ptr noundef %31) #11
  %32 = load ptr, ptr %4, align 8, !tbaa !45
  %33 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !73
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %29, %50
  %37 = phi ptr [ %51, %50 ], [ %32, %29 ]
  %38 = phi i64 [ %52, %50 ], [ 0, %29 ]
  %39 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %37, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !74
  %41 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %40, i64 %38
  %42 = load i16, ptr %41, align 8, !tbaa !57
  switch i16 %42, label %50 [
    i16 2, label %43
    i16 8, label %43
    i16 4, label %43
  ]

43:                                               ; preds = %36, %36, %36
  %44 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %40, i64 %38, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !60
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %45) #11
  %46 = load ptr, ptr %4, align 8, !tbaa !45
  %47 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !74
  %49 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %48, i64 %38, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  br label %50

50:                                               ; preds = %36, %43
  %51 = phi ptr [ %37, %36 ], [ %46, %43 ]
  %52 = add nuw nsw i64 %38, 1
  %53 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %51, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !73
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %36, label %57, !llvm.loop !102

57:                                               ; preds = %50, %29
  %58 = phi ptr [ %32, %29 ], [ %51, %50 ]
  %59 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !74
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %60, ptr noundef nonnull @.str, i32 noundef 2383) #11
  %61 = load ptr, ptr %4, align 8, !tbaa !45
  %62 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %61, i64 0, i32 3
  store ptr null, ptr %62, align 8, !tbaa !74
  %63 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %61, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %64, ptr noundef nonnull @.str, i32 noundef 2386) #11
  %65 = load ptr, ptr %4, align 8, !tbaa !45
  %66 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %65, i64 0, i32 4
  store ptr null, ptr %66, align 8, !tbaa !46
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %65, ptr noundef nonnull @.str, i32 noundef 2389) #11
  store ptr null, ptr %4, align 8, !tbaa !45
  br label %67

67:                                               ; preds = %57, %22
  %68 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 16
  %69 = load ptr, ptr %68, align 8, !tbaa !76
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %69, ptr noundef nonnull @.str, i32 noundef 2393) #11
  store ptr null, ptr %68, align 8, !tbaa !76
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 2396) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov11Create_BlobEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 152, ptr noundef nonnull @.str, i32 noundef 2184, ptr noundef nonnull @.str.1) #11
  %2 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 1
  store i32 520, ptr %2, align 8, !tbaa !68
  store ptr @_ZN3pov12Blob_MethodsE, ptr %1, align 8, !tbaa !103
  %3 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 13
  %6 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %6, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10) #11
  %7 = load i32, ptr %5, align 4, !tbaa !64
  %8 = or i32 %7, 1024
  store i32 %8, ptr %5, align 4, !tbaa !64
  store ptr null, ptr %4, align 8, !tbaa !35
  %9 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 14
  %10 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store i32 1, ptr %10, align 8, !tbaa !86
  %11 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 2197, ptr noundef nonnull @.str.2) #11
  %12 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %1, i64 0, i32 16
  store ptr %11, ptr %12, align 8, !tbaa !76
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #4 comdat {
  store float %1, ptr %0, align 4, !tbaa !89
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %2, ptr %8, align 4, !tbaa !89
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %3, ptr %9, align 4, !tbaa !89
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1
  store float %4, ptr %10, align 4, !tbaa !89
  %11 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  store float %5, ptr %11, align 4, !tbaa !89
  %12 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 2
  store float %6, ptr %12, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov24Create_Blob_List_ElementEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 136, ptr noundef nonnull @.str, i32 noundef 2300, ptr noundef nonnull @.str.3) #11
  tail call fastcc void @_ZN3povL17init_blob_elementEPNS_19Blob_Element_StructE(ptr noundef %1) #11
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc void @_ZN3povL17init_blob_elementEPNS_19Blob_Element_StructE(ptr noundef %0) unnamed_addr #4 !PGOFuncName !104 {
  store i16 0, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !105
  %3 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %4, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  %5 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov9Make_BlobEPNS_11Blob_StructEdPNS_16Blob_List_StructEi(ptr noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %3, 1
  br i1 %5, label %30, label %6

6:                                                ; preds = %4, %20
  %7 = phi ptr [ %16, %20 ], [ %2, %4 ]
  %8 = phi i32 [ %14, %20 ], [ 0, %4 ]
  %9 = phi i32 [ %21, %20 ], [ 0, %4 ]
  %10 = load i16, ptr %7, align 8, !tbaa !106
  %11 = and i16 %10, 4
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %12, i32 1, i32 3
  %14 = add nuw nsw i32 %13, %8
  %15 = getelementptr inbounds %"struct.pov::Blob_List_Struct", ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !108
  %17 = icmp ugt i32 %14, 999999
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.5, i32 noundef 1000000) #11
  br label %20

20:                                               ; preds = %6, %18
  %21 = add nuw nsw i32 %9, 1
  %22 = icmp eq i32 %21, %3
  br i1 %22, label %23, label %6, !llvm.loop !109

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %25, i64 0, i32 2
  store double %1, ptr %26, align 8, !tbaa !54
  %27 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %25, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !74
  %29 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 13
  br label %75

30:                                               ; preds = %4
  %31 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.4) #11
  %32 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %33, i64 0, i32 2
  store double %1, ptr %34, align 8, !tbaa !54
  br label %142

35:                                               ; preds = %134
  %36 = load ptr, ptr %24, align 8, !tbaa !45
  %37 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !74
  %39 = zext nneg i32 %14 to i64
  %40 = add nuw nsw i64 %39, 3
  %41 = and i64 %40, 4294967292
  %42 = add nsw i64 %39, -1
  %43 = insertelement <4 x i64> poison, i64 %42, i64 0
  %44 = shufflevector <4 x i64> %43, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %45

45:                                               ; preds = %71, %35
  %46 = phi i64 [ 0, %35 ], [ %72, %71 ]
  %47 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %35 ], [ %73, %71 ]
  %48 = trunc i64 %46 to i32
  %49 = icmp ule <4 x i64> %47, %44
  %50 = extractelement <4 x i1> %49, i64 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %38, i64 %46, i32 1
  store i32 %48, ptr %52, align 4, !tbaa !105
  br label %53

53:                                               ; preds = %51, %45
  %54 = extractelement <4 x i1> %49, i64 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = or disjoint i64 %46, 1
  %57 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %38, i64 %56, i32 1
  %58 = or disjoint i32 %48, 1
  store i32 %58, ptr %57, align 4, !tbaa !105
  br label %59

59:                                               ; preds = %55, %53
  %60 = extractelement <4 x i1> %49, i64 2
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  %62 = or disjoint i64 %46, 2
  %63 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %38, i64 %62, i32 1
  %64 = or disjoint i32 %48, 2
  store i32 %64, ptr %63, align 4, !tbaa !105
  br label %65

65:                                               ; preds = %61, %59
  %66 = extractelement <4 x i1> %49, i64 3
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  %68 = or disjoint i64 %46, 3
  %69 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %38, i64 %68, i32 1
  %70 = or disjoint i32 %48, 3
  store i32 %70, ptr %69, align 4, !tbaa !105
  br label %71

71:                                               ; preds = %67, %65
  %72 = add i64 %46, 4
  %73 = add <4 x i64> %47, <i64 4, i64 4, i64 4, i64 4>
  %74 = icmp eq i64 %72, %41
  br i1 %74, label %142, label %45, !llvm.loop !110

75:                                               ; preds = %23, %134
  %76 = phi ptr [ %28, %23 ], [ %135, %134 ]
  %77 = phi i32 [ 0, %23 ], [ %140, %134 ]
  %78 = phi ptr [ %2, %23 ], [ %137, %134 ]
  %79 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %78, i64 0, i32 5, i64 2
  %80 = load double, ptr %79, align 8, !tbaa !43
  %81 = tail call double @llvm.fabs.f64(double %80)
  %82 = fcmp olt double %81, 0x3E7AD7F29ABCAF48
  br i1 %82, label %87, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %78, i64 0, i32 4
  %85 = load double, ptr %84, align 8, !tbaa !113
  %86 = fcmp olt double %85, 0x3E7AD7F29ABCAF48
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %75
  %88 = tail call noundef i32 (i32, ptr, ...) @_ZN3pov7WarningEjPKcz(i32 noundef 0, ptr noundef nonnull @.str.6) #11
  br label %89

89:                                               ; preds = %87, %83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %76, ptr noundef nonnull align 8 dereferenceable(128) %78, i64 128, i1 false), !tbaa.struct !114
  %90 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %76, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !116
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i32, ptr %29, align 4, !tbaa !64
  %95 = or i32 %94, 256
  store i32 %95, ptr %29, align 4, !tbaa !64
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i16, ptr %78, align 8, !tbaa !106
  switch i16 %97, label %132 [
    i16 8, label %98
    i16 2, label %98
    i16 4, label %112
  ]

98:                                               ; preds = %96, %96
  %99 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %78, i64 0, i32 4
  %100 = load double, ptr %99, align 8, !tbaa !113
  %101 = load double, ptr %79, align 8, !tbaa !43
  %102 = fmul double %100, %100
  %103 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %76, i64 0, i32 5
  %104 = fmul double %101, -2.000000e+00
  %105 = insertelement <2 x double> poison, double %101, i64 0
  %106 = insertelement <2 x double> %105, double %104, i64 1
  %107 = insertelement <2 x double> poison, double %102, i64 0
  %108 = insertelement <2 x double> %107, double %100, i64 1
  %109 = fdiv <2 x double> %106, %108
  store <2 x double> %109, ptr %103, align 8, !tbaa !43
  %110 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %76, i64 0, i32 5, i64 2
  store double %101, ptr %110, align 8, !tbaa !43
  %111 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %76, i64 1
  br label %134

112:                                              ; preds = %96
  %113 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %78, i64 0, i32 4
  %114 = load double, ptr %113, align 8, !tbaa !113
  %115 = load double, ptr %79, align 8, !tbaa !43
  %116 = fmul double %114, %114
  %117 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %76, i64 0, i32 5
  %118 = fmul double %115, -2.000000e+00
  %119 = insertelement <2 x double> poison, double %115, i64 0
  %120 = insertelement <2 x double> %119, double %118, i64 1
  %121 = insertelement <2 x double> poison, double %116, i64 0
  %122 = insertelement <2 x double> %121, double %114, i64 1
  %123 = fdiv <2 x double> %120, %122
  store <2 x double> %123, ptr %117, align 8, !tbaa !43
  %124 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %76, i64 0, i32 5, i64 2
  store double %115, ptr %124, align 8, !tbaa !43
  %125 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %76, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %125, ptr noundef nonnull align 8 dereferenceable(128) %78, i64 128, i1 false), !tbaa.struct !114
  store i16 16, ptr %125, align 8, !tbaa !57
  %126 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %76, i64 1, i32 5
  store <2 x double> %123, ptr %126, align 8, !tbaa !43
  %127 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %76, i64 1, i32 5, i64 2
  store double %115, ptr %127, align 8, !tbaa !43
  %128 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %76, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %128, ptr noundef nonnull align 8 dereferenceable(128) %78, i64 128, i1 false), !tbaa.struct !114
  store i16 32, ptr %128, align 8, !tbaa !57
  %129 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %76, i64 2, i32 5
  store <2 x double> %123, ptr %129, align 8, !tbaa !43
  %130 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %76, i64 2, i32 5, i64 2
  store double %115, ptr %130, align 8, !tbaa !43
  %131 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %76, i64 3
  br label %134

132:                                              ; preds = %96
  %133 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.7) #11
  br label %134

134:                                              ; preds = %132, %112, %98
  %135 = phi ptr [ %76, %132 ], [ %131, %112 ], [ %111, %98 ]
  %136 = getelementptr inbounds %"struct.pov::Blob_List_Struct", ptr %78, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !108
  %138 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %78, i64 0, i32 7
  %139 = load ptr, ptr %138, align 8, !tbaa !117
  tail call void @_ZN3pov16Destroy_TexturesEPNS_14Texture_StructE(ptr noundef %139) #11
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %78, ptr noundef nonnull @.str, i32 noundef 2796) #11
  %140 = add nuw nsw i32 %77, 1
  %141 = icmp eq i32 %140, %3
  br i1 %141, label %35, label %75, !llvm.loop !118

142:                                              ; preds = %71, %30
  tail call fastcc void @_ZN3povL17Compute_Blob_BBoxEPNS_11Blob_StructE(ptr noundef %0) #11
  %143 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 13
  %144 = load i32, ptr %143, align 4, !tbaa !64
  %145 = and i32 %144, 1024
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  tail call fastcc void @_ZN3povL24build_bounding_hierarchyEPNS_11Blob_StructE(ptr noundef nonnull %0) #11
  br label %148

148:                                              ; preds = %147, %142
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: optsize
declare noundef i32 @_ZN3pov7WarningEjPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @_ZN3pov16Destroy_TexturesEPNS_14Texture_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL17Compute_Blob_BBoxEPNS_11Blob_StructE(ptr noundef %0) unnamed_addr #0 !PGOFuncName !119 {
  %2 = alloca double, align 8
  %3 = alloca [3 x double], align 16
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %4, double noundef 2.000000e+10, double noundef 2.000000e+10, double noundef 2.000000e+10) #11
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %5, double noundef -2.000000e+10, double noundef -2.000000e+10, double noundef -2.000000e+10) #11
  %12 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !73
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %68

17:                                               ; preds = %1
  %18 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %19 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %20 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %21 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %22 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %23 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  br label %24

24:                                               ; preds = %17, %61
  %25 = phi ptr [ %13, %17 ], [ %62, %61 ]
  %26 = phi i64 [ 0, %17 ], [ %63, %61 ]
  %27 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %25, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !74
  %29 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %28, i64 %26, i32 5, i64 2
  %30 = load double, ptr %29, align 8, !tbaa !43
  %31 = fcmp ogt double %30, 0.000000e+00
  br i1 %31, label %32, label %61

32:                                               ; preds = %24
  %33 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %28, i64 %26
  call fastcc void @_ZN3povL27get_element_bounding_sphereEPNS_19Blob_Element_StructEPdS2_(ptr noundef %33, ptr noundef nonnull %3, ptr noundef nonnull %2) #11
  %34 = load double, ptr %2, align 8, !tbaa !43
  %35 = call double @sqrt(double noundef %34) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %36 = load double, ptr %3, align 16, !tbaa !43
  %37 = fsub double %36, %35
  store double %37, ptr %6, align 8, !tbaa !43
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #11
  %39 = load double, ptr %38, align 8, !tbaa !43
  store double %39, ptr %4, align 16, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %40 = load double, ptr %19, align 8, !tbaa !43
  %41 = fsub double %40, %35
  store double %41, ptr %7, align 8, !tbaa !43
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  %43 = load double, ptr %42, align 8, !tbaa !43
  store double %43, ptr %18, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %44 = load double, ptr %21, align 16, !tbaa !43
  %45 = fsub double %44, %35
  store double %45, ptr %8, align 8, !tbaa !43
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  %47 = load double, ptr %46, align 8, !tbaa !43
  store double %47, ptr %20, align 16, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  %48 = load double, ptr %3, align 16, !tbaa !43
  %49 = fadd double %35, %48
  store double %49, ptr %9, align 8, !tbaa !43
  %50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %9) #11
  %51 = load double, ptr %50, align 8, !tbaa !43
  store double %51, ptr %5, align 16, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  %52 = load double, ptr %19, align 8, !tbaa !43
  %53 = fadd double %35, %52
  store double %53, ptr %10, align 8, !tbaa !43
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %10) #11
  %55 = load double, ptr %54, align 8, !tbaa !43
  store double %55, ptr %22, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  %56 = load double, ptr %21, align 16, !tbaa !43
  %57 = fadd double %35, %56
  store double %57, ptr %11, align 8, !tbaa !43
  %58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %11) #11
  %59 = load double, ptr %58, align 8, !tbaa !43
  store double %59, ptr %23, align 16, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  %60 = load ptr, ptr %12, align 8, !tbaa !45
  br label %61

61:                                               ; preds = %24, %32
  %62 = phi ptr [ %25, %24 ], [ %60, %32 ]
  %63 = add nuw nsw i64 %26, 1
  %64 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %62, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !73
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %24, label %68, !llvm.loop !120

68:                                               ; preds = %61, %1
  %69 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 9
  call void @_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_(ptr noundef nonnull align 4 dereferenceable(24) %69, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %70 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 10
  %71 = load ptr, ptr %70, align 8, !tbaa !35
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %69, ptr noundef nonnull %71) #11
  br label %74

74:                                               ; preds = %73, %68
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL24build_bounding_hierarchyEPNS_11Blob_StructE(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !121 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %3 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !73
  %7 = shl nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %9, ptr noundef nonnull @.str, i32 noundef 2918, ptr noundef nonnull @.str.12) #11
  store ptr %10, ptr %2, align 8, !tbaa !77
  %11 = icmp sgt i32 %6, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = zext nneg i32 %6 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %26, %14 ]
  %16 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 48, ptr noundef nonnull @.str, i32 noundef 2924, ptr noundef nonnull @.str.12) #11
  %17 = getelementptr inbounds ptr, ptr %10, i64 %15
  store ptr %16, ptr %17, align 8, !tbaa !77
  store i16 0, ptr %16, align 8, !tbaa !79
  %18 = load ptr, ptr %3, align 8, !tbaa !45
  %19 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %20, i64 %15
  %22 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %16, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !81
  %23 = load ptr, ptr %17, align 8, !tbaa !77
  %24 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %23, i64 0, i32 1
  %25 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %23, i64 0, i32 2
  tail call fastcc void @_ZN3povL27get_element_bounding_sphereEPNS_19Blob_Element_StructEPdS2_(ptr noundef %21, ptr noundef nonnull %24, ptr noundef nonnull %25) #11
  %26 = add nuw nsw i64 %15, 1
  %27 = icmp eq i64 %26, %13
  br i1 %27, label %28, label %14, !llvm.loop !122

28:                                               ; preds = %14, %1
  %29 = load ptr, ptr %3, align 8, !tbaa !45
  %30 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %29, i64 0, i32 5
  call void @_ZN3pov31Build_Bounding_Sphere_HierarchyEPPNS_19BSphere_Tree_StructEiPS2_(ptr noundef nonnull %30, i32 noundef %6, ptr noundef nonnull %2) #11
  %31 = load ptr, ptr %2, align 8, !tbaa !77
  call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %31, ptr noundef nonnull @.str, i32 noundef 2936) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov17Test_Blob_OpacityEPNS_11Blob_StructE(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZN3pov12Test_OpacityEPNS_14Texture_StructE(ptr noundef nonnull %3) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 13
  %10 = load i32, ptr %9, align 4, !tbaa !64
  br label %15

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 13
  %13 = load i32, ptr %12, align 4, !tbaa !64
  %14 = or i32 %13, 128
  store i32 %14, ptr %12, align 4, !tbaa !64
  br label %15

15:                                               ; preds = %8, %11
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  %17 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 13
  %18 = and i32 %16, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !73
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  br label %28

28:                                               ; preds = %26, %40
  %29 = phi i64 [ 0, %26 ], [ %41, %40 ]
  %30 = load ptr, ptr %27, align 8, !tbaa !91
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !77
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = tail call noundef i32 @_ZN3pov12Test_OpacityEPNS_14Texture_StructE(ptr noundef nonnull %32) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, ptr %17, align 4, !tbaa !64
  %39 = and i32 %38, -129
  store i32 %39, ptr %17, align 4, !tbaa !64
  br label %40

40:                                               ; preds = %28, %37, %34
  %41 = add nuw nsw i64 %29, 1
  %42 = load ptr, ptr %21, align 8, !tbaa !45
  %43 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %42, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !73
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %41, %45
  br i1 %46, label %28, label %47, !llvm.loop !124

47:                                               ; preds = %40, %20, %15
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov12Test_OpacityEPNS_14Texture_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov23Determine_Blob_TexturesEPNS_11Blob_StructEPdPiPPNS_14Texture_StructES2_(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca [3 x double], align 16
  %11 = alloca [3 x double], align 16
  store ptr %3, ptr %6, align 8, !tbaa !77
  store ptr %4, ptr %7, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %12 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !73
  call void @_ZN3pov26Reinitialize_Lighting_CodeEiPPPNS_14Texture_StructEPPd(i32 noundef %15, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %16 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %11, ptr noundef %1, ptr noundef nonnull %17) #11
  br label %21

20:                                               ; preds = %5
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %11, ptr noundef %1) #11
  br label %21

21:                                               ; preds = %20, %19
  store i32 0, ptr %2, align 4, !tbaa !78
  %22 = load ptr, ptr %12, align 8, !tbaa !45
  %23 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %22, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !73
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %97

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ 0, %30 ], [ %43, %32 ]
  %34 = phi ptr [ %22, %30 ], [ %44, %32 ]
  %35 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !74
  %37 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %36, i64 %33
  %38 = load ptr, ptr %31, align 8, !tbaa !91
  %39 = getelementptr inbounds ptr, ptr %38, i64 %33
  %40 = load ptr, ptr %39, align 8, !tbaa !77
  %41 = load ptr, ptr %6, align 8, !tbaa !77
  %42 = load ptr, ptr %7, align 8, !tbaa !77
  call fastcc void @_ZN3povL25determine_element_textureEPNS_11Blob_StructEPNS_19Blob_Element_StructEPNS_14Texture_StructEPdPiPS5_S6_(ptr noundef nonnull %0, ptr noundef %37, ptr noundef %40, ptr noundef nonnull %11, ptr noundef nonnull %2, ptr noundef %41, ptr noundef %42) #11
  %43 = add nuw nsw i64 %33, 1
  %44 = load ptr, ptr %12, align 8, !tbaa !45
  %45 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %44, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !73
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %43, %47
  br i1 %48, label %32, label %97, !llvm.loop !125

49:                                               ; preds = %21
  %50 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 16
  %51 = load ptr, ptr %50, align 8, !tbaa !76
  store ptr %24, ptr %51, align 8, !tbaa !77
  %52 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  br label %53

53:                                               ; preds = %49, %94
  %54 = phi i32 [ 1, %49 ], [ %95, %94 ]
  %55 = load ptr, ptr %50, align 8, !tbaa !76
  %56 = add i32 %54, -1
  store i32 %56, ptr %8, align 4, !tbaa !78
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !77
  %60 = load i16, ptr %59, align 8, !tbaa !79
  %61 = icmp slt i16 %60, 1
  %62 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %59, i64 0, i32 3
  br i1 %61, label %63, label %73

63:                                               ; preds = %53
  %64 = load ptr, ptr %62, align 8, !tbaa !81
  %65 = load ptr, ptr %52, align 8, !tbaa !91
  %66 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %64, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !105
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %65, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !77
  %71 = load ptr, ptr %6, align 8, !tbaa !77
  %72 = load ptr, ptr %7, align 8, !tbaa !77
  call fastcc void @_ZN3povL25determine_element_textureEPNS_11Blob_StructEPNS_19Blob_Element_StructEPNS_14Texture_StructEPdPiPS5_S6_(ptr noundef nonnull %0, ptr noundef %64, ptr noundef %70, ptr noundef nonnull %11, ptr noundef nonnull %2, ptr noundef %71, ptr noundef %72) #11
  br label %94

73:                                               ; preds = %53, %87
  %74 = phi i64 [ %88, %87 ], [ 0, %53 ]
  %75 = load ptr, ptr %62, align 8, !tbaa !81
  %76 = getelementptr inbounds ptr, ptr %75, i64 %74
  %77 = load ptr, ptr %76, align 8, !tbaa !77
  %78 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %77, i64 0, i32 1
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %78) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %10, ptr noundef nonnull %10) #11
  %79 = load double, ptr %9, align 8, !tbaa !43
  %80 = load ptr, ptr %62, align 8, !tbaa !81
  %81 = getelementptr inbounds ptr, ptr %80, i64 %74
  %82 = load ptr, ptr %81, align 8, !tbaa !77
  %83 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %82, i64 0, i32 2
  %84 = load double, ptr %83, align 8, !tbaa !82
  %85 = fcmp ugt double %79, %84
  br i1 %85, label %87, label %86

86:                                               ; preds = %73
  call fastcc void @_ZN3povL11insert_nodeEPNS_11Blob_StructEPNS_19BSphere_Tree_StructEPj(ptr noundef %0, ptr noundef nonnull %82, ptr noundef nonnull %8) #11
  br label %87

87:                                               ; preds = %73, %86
  %88 = add nuw nsw i64 %74, 1
  %89 = load i16, ptr %59, align 8, !tbaa !79
  %90 = sext i16 %89 to i64
  %91 = icmp slt i64 %88, %90
  br i1 %91, label %73, label %92, !llvm.loop !126

92:                                               ; preds = %87
  %93 = load i32, ptr %8, align 4, !tbaa !78
  br label %94

94:                                               ; preds = %92, %63
  %95 = phi i32 [ %93, %92 ], [ %56, %63 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %53, !llvm.loop !127

97:                                               ; preds = %94, %32, %26
  %98 = load i32, ptr %2, align 4, !tbaa !78
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %97
  %101 = load ptr, ptr %7, align 8, !tbaa !77
  %102 = zext nneg i32 %98 to i64
  br label %103

103:                                              ; preds = %100, %103
  %104 = phi i64 [ 0, %100 ], [ %109, %103 ]
  %105 = phi double [ 0.000000e+00, %100 ], [ %108, %103 ]
  %106 = getelementptr inbounds double, ptr %101, i64 %104
  %107 = load double, ptr %106, align 8, !tbaa !43
  %108 = fadd double %105, %107
  %109 = add nuw nsw i64 %104, 1
  %110 = icmp eq i64 %109, %102
  br i1 %110, label %111, label %103, !llvm.loop !128

111:                                              ; preds = %103
  %112 = fcmp ogt double %108, 0.000000e+00
  br i1 %112, label %113, label %122

113:                                              ; preds = %111
  %114 = fdiv double 1.000000e+00, %108
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi i64 [ 0, %113 ], [ %120, %115 ]
  %117 = getelementptr inbounds double, ptr %101, i64 %116
  %118 = load double, ptr %117, align 8, !tbaa !43
  %119 = fmul double %114, %118
  store double %119, ptr %117, align 8, !tbaa !43
  %120 = add nuw nsw i64 %116, 1
  %121 = icmp eq i64 %120, %102
  br i1 %121, label %122, label %115, !llvm.loop !129

122:                                              ; preds = %115, %111, %97
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov26Reinitialize_Lighting_CodeEiPPPNS_14Texture_StructEPPd(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !43
  store double %3, ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !43
  %7 = getelementptr inbounds double, ptr %1, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds double, ptr %0, i64 2
  store double %8, ptr %9, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL25determine_element_textureEPNS_11Blob_StructEPNS_19Blob_Element_StructEPNS_14Texture_StructEPdPiPS5_S6_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) unnamed_addr #0 !PGOFuncName !130 {
  %8 = tail call fastcc noundef double @_ZN3povL23calculate_element_fieldEPNS_19Blob_Element_StructEPd(ptr noundef %1, ptr noundef %3) #11
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ueq double %8, 0.000000e+00
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %2, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !123
  br label %16

16:                                               ; preds = %11, %13
  %17 = phi ptr [ %15, %13 ], [ %2, %11 ]
  %18 = load i32, ptr %4, align 4, !tbaa !78
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %5, i64 %19
  store ptr %17, ptr %20, align 8, !tbaa !77
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = zext nneg i32 %18 to i64
  %24 = getelementptr inbounds ptr, ptr %5, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !77
  br label %29

26:                                               ; preds = %29
  %27 = add nuw nsw i64 %30, 1
  %28 = icmp eq i64 %27, %23
  br i1 %28, label %38, label %29, !llvm.loop !131

29:                                               ; preds = %22, %26
  %30 = phi i64 [ 0, %22 ], [ %27, %26 ]
  %31 = getelementptr inbounds ptr, ptr %5, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !77
  %33 = icmp eq ptr %32, %25
  br i1 %33, label %34, label %26

34:                                               ; preds = %29
  %35 = getelementptr inbounds double, ptr %6, i64 %30
  %36 = load double, ptr %35, align 8, !tbaa !43
  %37 = fadd double %9, %36
  store double %37, ptr %35, align 8, !tbaa !43
  br label %42

38:                                               ; preds = %26, %16
  %39 = add nsw i32 %18, 1
  store i32 %39, ptr %4, align 4, !tbaa !78
  %40 = sext i32 %18 to i64
  %41 = getelementptr inbounds double, ptr %6, i64 %40
  store double %9, ptr %41, align 8, !tbaa !43
  br label %42

42:                                               ; preds = %7, %38, %34
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov4VSubEPdPKdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !43
  %5 = load double, ptr %2, align 8, !tbaa !43
  %6 = fsub double %4, %5
  store double %6, ptr %0, align 8, !tbaa !43
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds double, ptr %2, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !43
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds double, ptr %0, i64 1
  store double %11, ptr %12, align 8, !tbaa !43
  %13 = getelementptr inbounds double, ptr %1, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds double, ptr %2, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !43
  %17 = fsub double %14, %16
  %18 = getelementptr inbounds double, ptr %0, i64 2
  store double %17, ptr %18, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !43
  %5 = load double, ptr %2, align 8, !tbaa !43
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !43
  %8 = getelementptr inbounds double, ptr %2, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !43
  %10 = fmul double %7, %9
  %11 = tail call double @llvm.fmuladd.f64(double %4, double %5, double %10)
  %12 = getelementptr inbounds double, ptr %1, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds double, ptr %2, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !43
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %15, double %11)
  store double %16, ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL11insert_nodeEPNS_11Blob_StructEPNS_19BSphere_Tree_StructEPj(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !132 {
  %4 = load i32, ptr %2, align 4, !tbaa !78
  %5 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !86
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  br label %25

11:                                               ; preds = %3
  %12 = icmp ugt i32 %6, 2147483646
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.13) #11
  %15 = load i32, ptr %5, align 8, !tbaa !86
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi i32 [ %15, %13 ], [ %6, %11 ]
  %18 = shl i32 %17, 1
  store i32 %18, ptr %5, align 8, !tbaa !86
  %19 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = zext i32 %18 to i64
  %22 = shl nuw nsw i64 %21, 3
  %23 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %20, i64 noundef %22, ptr noundef nonnull @.str, i32 noundef 3433, ptr noundef nonnull @.str.2) #11
  store ptr %23, ptr %19, align 8, !tbaa !76
  %24 = load i32, ptr %2, align 4, !tbaa !78
  br label %25

25:                                               ; preds = %8, %16
  %26 = phi i32 [ %4, %8 ], [ %24, %16 ]
  %27 = phi ptr [ %10, %8 ], [ %23, %16 ]
  %28 = add i32 %26, 1
  store i32 %28, ptr %2, align 4, !tbaa !78
  %29 = zext i32 %26 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  store ptr %1, ptr %30, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov22Translate_Blob_ElementEPNS_19Blob_Element_StructEPd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #10
  call void @_ZN3pov29Compute_Translation_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef %1) #11
  %4 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  call void @_ZN3pov6VAddEqEPdPKd(ptr noundef nonnull %8, ptr noundef %1) #11
  %9 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  call void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef %10, ptr noundef nonnull %3) #11
  br label %12

11:                                               ; preds = %2
  call void @_ZN3pov22Transform_Blob_ElementEPNS_19Blob_Element_StructEPNS_16Transform_StructE(ptr noundef nonnull %0, ptr noundef nonnull %3) #11
  br label %12

12:                                               ; preds = %11, %7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov29Compute_Translation_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VAddEqEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !43
  %4 = load double, ptr %0, align 8, !tbaa !43
  %5 = fadd double %3, %4
  store double %5, ptr %0, align 8, !tbaa !43
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !43
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !43
  %10 = fadd double %7, %9
  store double %10, ptr %8, align 8, !tbaa !43
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !43
  %15 = fadd double %12, %14
  store double %15, ptr %13, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov22Transform_Blob_ElementEPNS_19Blob_Element_StructEPNS_16Transform_StructE(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  store i16 8, ptr %0, align 8, !tbaa !57
  %7 = tail call noundef ptr @_ZN3pov16Create_TransformEv() #11
  store ptr %7, ptr %3, align 8, !tbaa !60
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %9, ptr noundef %1) #11
  %10 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !116
  tail call void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef %11, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov19Rotate_Blob_ElementEPNS_19Blob_Element_StructEPd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #10
  call void @_ZN3pov26Compute_Rotation_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef %1) #11
  %4 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %3) #11
  %9 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  call void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef %10, ptr noundef nonnull %3) #11
  br label %12

11:                                               ; preds = %2
  call void @_ZN3pov22Transform_Blob_ElementEPNS_19Blob_Element_StructEPNS_16Transform_StructE(ptr noundef nonnull %0, ptr noundef nonnull %3) #11
  br label %12

12:                                               ; preds = %11, %7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov26Compute_Rotation_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov18Scale_Blob_ElementEPNS_19Blob_Element_StructEPd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #10
  %4 = load double, ptr %1, align 8, !tbaa !43
  %5 = getelementptr inbounds double, ptr %1, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !43
  %7 = fcmp une double %4, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds double, ptr %1, i64 2
  %10 = load double, ptr %9, align 8, !tbaa !43
  %11 = fcmp une double %4, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  store i16 8, ptr %0, align 8, !tbaa !57
  %17 = tail call noundef ptr @_ZN3pov16Create_TransformEv() #11
  store ptr %17, ptr %13, align 8, !tbaa !60
  br label %18

18:                                               ; preds = %12, %16, %8
  call void @_ZN3pov25Compute_Scaling_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef nonnull %1) #11
  %19 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  %24 = load double, ptr %1, align 8, !tbaa !43
  call void @_ZN3pov8VScaleEqEPdd(ptr noundef nonnull %23, double noundef %24) #11
  %25 = load double, ptr %1, align 8, !tbaa !43
  %26 = call noundef double @_ZN3pov3SqrEd(double noundef %25) #11
  %27 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %28 = load double, ptr %27, align 8, !tbaa !133
  %29 = fmul double %26, %28
  store double %29, ptr %27, align 8, !tbaa !133
  %30 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !116
  call void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(ptr noundef %31, ptr noundef nonnull %3) #11
  br label %33

32:                                               ; preds = %18
  call void @_ZN3pov22Transform_Blob_ElementEPNS_19Blob_Element_StructEPNS_16Transform_StructE(ptr noundef nonnull %0, ptr noundef nonnull %3) #11
  br label %33

33:                                               ; preds = %32, %22
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov25Compute_Scaling_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov8VScaleEqEPdd(ptr noundef %0, double noundef %1) local_unnamed_addr #4 comdat {
  %3 = load <2 x double>, ptr %0, align 8, !tbaa !43
  %4 = insertelement <2 x double> poison, double %1, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x double> %3, %5
  store <2 x double> %6, ptr %0, align 8, !tbaa !43
  %7 = getelementptr inbounds double, ptr %0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !43
  %9 = fmul double %8, %1
  store double %9, ptr %7, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN3pov3SqrEd(double noundef %0) local_unnamed_addr #4 comdat {
  %2 = fmul double %0, %0
  ret double %2
}

; Function Attrs: optsize
declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3pov19Invert_Blob_ElementEPNS_19Blob_Element_StructE(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 5, i64 2
  %3 = load double, ptr %2, align 8, !tbaa !43
  %4 = fneg double %3
  store double %4, ptr %2, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov32Create_Blob_Element_Texture_ListEPNS_11Blob_StructEPNS_16Blob_List_StructEi(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.4) #11
  br label %24

7:                                                ; preds = %3, %21
  %8 = phi ptr [ %17, %21 ], [ %1, %3 ]
  %9 = phi i32 [ %15, %21 ], [ 0, %3 ]
  %10 = phi i32 [ %22, %21 ], [ 0, %3 ]
  %11 = load i16, ptr %8, align 8, !tbaa !106
  %12 = and i16 %11, 4
  %13 = icmp eq i16 %12, 0
  %14 = select i1 %13, i32 1, i32 3
  %15 = add nuw nsw i32 %14, %9
  %16 = getelementptr inbounds %"struct.pov::Blob_List_Struct", ptr %8, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !108
  %18 = icmp ugt i32 %15, 999999
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.5, i32 noundef 1000000) #11
  br label %21

21:                                               ; preds = %7, %19
  %22 = add nuw nsw i32 %10, 1
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %7, !llvm.loop !134

24:                                               ; preds = %21, %5
  %25 = phi i32 [ 0, %5 ], [ %15, %21 ]
  %26 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 40, ptr noundef nonnull @.str, i32 noundef 3507, ptr noundef nonnull @.str.8) #11
  %27 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  store ptr %26, ptr %27, align 8, !tbaa !45
  store i32 1, ptr %26, align 8, !tbaa !90
  %28 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %26, i64 0, i32 1
  store i32 %25, ptr %28, align 4, !tbaa !73
  %29 = sext i32 %25 to i64
  %30 = shl nsw i64 %29, 7
  %31 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %30, ptr noundef nonnull @.str, i32 noundef 3513, ptr noundef nonnull @.str.8) #11
  %32 = load ptr, ptr %27, align 8, !tbaa !45
  %33 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %32, i64 0, i32 3
  store ptr %31, ptr %33, align 8, !tbaa !74
  %34 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %32, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !73
  %36 = shl nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = mul nsw i64 %37, 24
  %39 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %38, ptr noundef nonnull @.str, i32 noundef 3515, ptr noundef nonnull @.str.9) #11
  %40 = load ptr, ptr %27, align 8, !tbaa !45
  %41 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %40, i64 0, i32 4
  store ptr %39, ptr %41, align 8, !tbaa !46
  %42 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %40, i64 0, i32 5
  store ptr null, ptr %42, align 8, !tbaa !72
  %43 = icmp sgt i32 %25, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %24
  %45 = shl nsw i64 %29, 3
  %46 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %45, ptr noundef nonnull @.str, i32 noundef 3528, ptr noundef nonnull @.str.10) #11
  %47 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  store ptr %46, ptr %47, align 8, !tbaa !91
  br label %64

48:                                               ; preds = %24
  %49 = zext nneg i32 %25 to i64
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ 0, %48 ], [ %56, %50 ]
  %52 = load ptr, ptr %27, align 8, !tbaa !45
  %53 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !74
  %55 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %54, i64 %51
  tail call fastcc void @_ZN3povL17init_blob_elementEPNS_19Blob_Element_StructE(ptr noundef %55) #11
  %56 = add nuw nsw i64 %51, 1
  %57 = icmp eq i64 %56, %49
  br i1 %57, label %58, label %50, !llvm.loop !135

58:                                               ; preds = %50
  %59 = shl nuw nsw i64 %29, 3
  %60 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %59, ptr noundef nonnull @.str, i32 noundef 3528, ptr noundef nonnull @.str.10) #11
  %61 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 15
  store ptr %60, ptr %61, align 8, !tbaa !91
  br i1 %43, label %62, label %64

62:                                               ; preds = %58
  %63 = zext nneg i32 %25 to i64
  br label %66

64:                                               ; preds = %66, %44, %58
  %65 = phi ptr [ %47, %44 ], [ %61, %58 ], [ %61, %66 ]
  br i1 %4, label %72, label %109

66:                                               ; preds = %62, %66
  %67 = phi i64 [ 0, %62 ], [ %70, %66 ]
  %68 = load ptr, ptr %61, align 8, !tbaa !91
  %69 = getelementptr inbounds ptr, ptr %68, i64 %67
  store ptr null, ptr %69, align 8, !tbaa !77
  %70 = add nuw nsw i64 %67, 1
  %71 = icmp eq i64 %70, %63
  br i1 %71, label %64, label %66, !llvm.loop !136

72:                                               ; preds = %64, %103
  %73 = phi i32 [ %104, %103 ], [ 0, %64 ]
  %74 = phi i32 [ %107, %103 ], [ 0, %64 ]
  %75 = phi ptr [ %106, %103 ], [ %1, %64 ]
  %76 = load i16, ptr %75, align 8, !tbaa !106
  switch i16 %76, label %103 [
    i16 8, label %77
    i16 2, label %77
    i16 4, label %85
  ]

77:                                               ; preds = %72, %72
  %78 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %75, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !117
  %80 = tail call noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef %79) #11
  %81 = load ptr, ptr %65, align 8, !tbaa !91
  %82 = add nsw i32 %73, 1
  %83 = sext i32 %73 to i64
  %84 = getelementptr inbounds ptr, ptr %81, i64 %83
  store ptr %80, ptr %84, align 8, !tbaa !77
  br label %103

85:                                               ; preds = %72
  %86 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %75, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !117
  %88 = tail call noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef %87) #11
  %89 = load ptr, ptr %65, align 8, !tbaa !91
  %90 = sext i32 %73 to i64
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90
  store ptr %88, ptr %91, align 8, !tbaa !77
  %92 = load ptr, ptr %86, align 8, !tbaa !117
  %93 = tail call noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef %92) #11
  %94 = load ptr, ptr %65, align 8, !tbaa !91
  %95 = getelementptr ptr, ptr %94, i64 %90
  %96 = getelementptr ptr, ptr %95, i64 1
  store ptr %93, ptr %96, align 8, !tbaa !77
  %97 = load ptr, ptr %86, align 8, !tbaa !117
  %98 = tail call noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef %97) #11
  %99 = load ptr, ptr %65, align 8, !tbaa !91
  %100 = add nsw i32 %73, 3
  %101 = getelementptr ptr, ptr %99, i64 %90
  %102 = getelementptr ptr, ptr %101, i64 2
  store ptr %98, ptr %102, align 8, !tbaa !77
  br label %103

103:                                              ; preds = %72, %85, %77
  %104 = phi i32 [ %73, %72 ], [ %100, %85 ], [ %82, %77 ]
  %105 = getelementptr inbounds %"struct.pov::Blob_List_Struct", ptr %75, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !108
  %107 = add nuw nsw i32 %74, 1
  %108 = icmp eq i32 %107, %2
  br i1 %108, label %109, label %72, !llvm.loop !137

109:                                              ; preds = %103, %64
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat {
  %2 = load i64, ptr %0, align 8, !tbaa !138
  %3 = add nsw i64 %2, 1
  store i64 %3, ptr %0, align 8, !tbaa !138
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !43
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !43
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = getelementptr inbounds double, ptr %1, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !43
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = tail call double @llvm.sqrt.f64(double %10)
  store double %11, ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov15VInverseScaleEqEPdd(ptr noundef %0, double noundef %1) local_unnamed_addr #4 comdat {
  %3 = fdiv double 1.000000e+00, %1
  %4 = load <2 x double>, ptr %0, align 8, !tbaa !43
  %5 = insertelement <2 x double> poison, double %3, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fmul <2 x double> %6, %4
  store <2 x double> %7, ptr %0, align 8, !tbaa !43
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !43
  %10 = fmul double %3, %9
  store double %10, ptr %8, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZN3povL20determine_influencesEPdS0_PNS_11Blob_StructEdPNS_20Blob_Interval_StructE(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !140 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  store i32 0, ptr %5, align 4, !tbaa !78
  %12 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %13, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !73
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %94

21:                                               ; preds = %17, %36
  %22 = phi i64 [ %37, %36 ], [ 0, %17 ]
  %23 = phi ptr [ %38, %36 ], [ %13, %17 ]
  %24 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %25, i64 %22
  %27 = call fastcc noundef i32 @_ZN3povL17intersect_elementEPdS0_PNS_19Blob_Element_StructEdS0_S0_(ptr noundef %0, ptr noundef %1, ptr noundef %26, ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr %12, align 8, !tbaa !45
  %31 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !74
  %33 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %32, i64 %22
  %34 = load double, ptr %9, align 8, !tbaa !43
  %35 = load double, ptr %10, align 8, !tbaa !43
  call fastcc void @_ZN3povL10insert_hitEPNS_19Blob_Element_StructEddPNS_20Blob_Interval_StructEPj(ptr noundef %33, double noundef %34, double noundef %35, ptr noundef %3, ptr noundef nonnull %5) #11
  br label %36

36:                                               ; preds = %21, %29
  %37 = add nuw nsw i64 %22, 1
  %38 = load ptr, ptr %12, align 8, !tbaa !45
  %39 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !73
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %21, label %94, !llvm.loop !141

43:                                               ; preds = %4
  %44 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %2, i64 0, i32 16
  %45 = load ptr, ptr %44, align 8, !tbaa !76
  store ptr %15, ptr %45, align 8, !tbaa !77
  br label %46

46:                                               ; preds = %43, %91
  %47 = phi i32 [ 1, %43 ], [ %92, %91 ]
  %48 = load ptr, ptr %44, align 8, !tbaa !76
  %49 = add i32 %47, -1
  store i32 %49, ptr %6, align 4, !tbaa !78
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !77
  %53 = load i16, ptr %52, align 8, !tbaa !79
  %54 = icmp slt i16 %53, 1
  %55 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %52, i64 0, i32 3
  br i1 %54, label %56, label %64

56:                                               ; preds = %46
  %57 = load ptr, ptr %55, align 8, !tbaa !81
  %58 = call fastcc noundef i32 @_ZN3povL17intersect_elementEPdS0_PNS_19Blob_Element_StructEdS0_S0_(ptr noundef %0, ptr noundef %1, ptr noundef %57, ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %91, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %55, align 8, !tbaa !81
  %62 = load double, ptr %9, align 8, !tbaa !43
  %63 = load double, ptr %10, align 8, !tbaa !43
  call fastcc void @_ZN3povL10insert_hitEPNS_19Blob_Element_StructEddPNS_20Blob_Interval_StructEPj(ptr noundef %61, double noundef %62, double noundef %63, ptr noundef %3, ptr noundef nonnull %5) #11
  br label %91

64:                                               ; preds = %46, %84
  %65 = phi i64 [ %85, %84 ], [ 0, %46 ]
  call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 16)) #11
  %66 = load ptr, ptr %55, align 8, !tbaa !81
  %67 = getelementptr inbounds ptr, ptr %66, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !77
  %69 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %68, i64 0, i32 1
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %11, ptr noundef nonnull %69, ptr noundef %0) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %11, ptr noundef %1) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %11, ptr noundef nonnull %11) #11
  %70 = load double, ptr %8, align 8, !tbaa !43
  %71 = load double, ptr %7, align 8, !tbaa !43
  %72 = call noundef double @_ZN3pov3SqrEd(double noundef %71) #11
  %73 = fsub double %70, %72
  %74 = load ptr, ptr %55, align 8, !tbaa !81
  %75 = getelementptr inbounds ptr, ptr %74, i64 %65
  %76 = load ptr, ptr %75, align 8, !tbaa !77
  %77 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %76, i64 0, i32 2
  %78 = load double, ptr %77, align 8, !tbaa !82
  %79 = fcmp ugt double %73, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %64
  call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 17)) #11
  %81 = load ptr, ptr %55, align 8, !tbaa !81
  %82 = getelementptr inbounds ptr, ptr %81, i64 %65
  %83 = load ptr, ptr %82, align 8, !tbaa !77
  call fastcc void @_ZN3povL11insert_nodeEPNS_11Blob_StructEPNS_19BSphere_Tree_StructEPj(ptr noundef %2, ptr noundef %83, ptr noundef nonnull %6) #11
  br label %84

84:                                               ; preds = %64, %80
  %85 = add nuw nsw i64 %65, 1
  %86 = load i16, ptr %52, align 8, !tbaa !79
  %87 = sext i16 %86 to i64
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %64, label %89, !llvm.loop !142

89:                                               ; preds = %84
  %90 = load i32, ptr %6, align 4, !tbaa !78
  br label %91

91:                                               ; preds = %89, %56, %60
  %92 = phi i32 [ %90, %89 ], [ %49, %56 ], [ %49, %60 ]
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %46, !llvm.loop !143

94:                                               ; preds = %91, %36, %17
  %95 = load i32, ptr %5, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %95
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = load double, ptr %2, align 8, !tbaa !43
  %5 = load double, ptr %0, align 8, !tbaa !43
  %6 = tail call double @llvm.fmuladd.f64(double %1, double %4, double %5)
  store double %6, ptr %0, align 8, !tbaa !43
  %7 = getelementptr inbounds double, ptr %2, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds double, ptr %0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !43
  %11 = tail call double @llvm.fmuladd.f64(double %1, double %8, double %10)
  store double %11, ptr %9, align 8, !tbaa !43
  %12 = getelementptr inbounds double, ptr %2, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds double, ptr %0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !43
  %16 = tail call double @llvm.fmuladd.f64(double %1, double %13, double %15)
  store double %16, ptr %14, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: optsize
declare noundef i32 @_ZN3pov16Solve_PolynomialEiPdS0_id(i32 noundef, ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov12VEvaluateRayEPdPKddS2_(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat {
  %5 = load double, ptr %1, align 8, !tbaa !43
  %6 = load double, ptr %3, align 8, !tbaa !43
  %7 = tail call double @llvm.fmuladd.f64(double %2, double %6, double %5)
  store double %7, ptr %0, align 8, !tbaa !43
  %8 = getelementptr inbounds double, ptr %1, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds double, ptr %3, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !43
  %12 = tail call double @llvm.fmuladd.f64(double %2, double %11, double %9)
  %13 = getelementptr inbounds double, ptr %0, i64 1
  store double %12, ptr %13, align 8, !tbaa !43
  %14 = getelementptr inbounds double, ptr %1, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds double, ptr %3, i64 2
  %17 = load double, ptr %16, align 8, !tbaa !43
  %18 = tail call double @llvm.fmuladd.f64(double %2, double %17, double %15)
  %19 = getelementptr inbounds double, ptr %0, i64 2
  store double %18, ptr %19, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov10push_entryEdPdPNS_13Object_StructEPNS_13istack_structE(double noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #11
  store double %0, ptr %5, align 8, !tbaa !144
  %6 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #11
  %7 = getelementptr inbounds %"struct.pov::istk_entry", ptr %6, i64 0, i32 5
  store ptr %2, ptr %7, align 8, !tbaa !146
  %8 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #11
  %9 = getelementptr inbounds %"struct.pov::istk_entry", ptr %8, i64 0, i32 1
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %9, ptr noundef %1) #11
  %10 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #11
  %11 = getelementptr inbounds %"struct.pov::istk_entry", ptr %10, i64 0, i32 4
  tail call void @_ZN3pov14Assign_UV_VectEPdS0_(ptr noundef nonnull %11, ptr noundef %1) #11
  %12 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #11
  %13 = getelementptr inbounds %"struct.pov::istk_entry", ptr %12, i64 0, i32 18
  store ptr null, ptr %13, align 8, !tbaa !147
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZN3povL17intersect_elementEPdS0_PNS_19Blob_Element_StructEdS0_S0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !148 {
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 14)) #11
  store double 2.000000e+10, ptr %3, align 8, !tbaa !43
  store double -2.000000e+10, ptr %4, align 8, !tbaa !43
  %6 = load i16, ptr %2, align 8, !tbaa !57
  switch i16 %6, label %19 [
    i16 2, label %7
    i16 8, label %10
    i16 16, label %13
    i16 32, label %13
    i16 4, label %16
  ]

7:                                                ; preds = %5
  %8 = tail call fastcc noundef i32 @_ZN3povL16intersect_sphereEPNS_19Blob_Element_StructEPdS2_dS2_S2_(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %19

10:                                               ; preds = %5
  %11 = tail call fastcc noundef i32 @_ZN3povL19intersect_ellipsoidEPNS_19Blob_Element_StructEPdS2_dS2_S2_(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %19

13:                                               ; preds = %5, %5
  %14 = tail call fastcc noundef i32 @_ZN3povL20intersect_hemisphereEPNS_19Blob_Element_StructEPdS2_dS2_S2_(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %19

16:                                               ; preds = %5
  %17 = tail call fastcc noundef i32 @_ZN3povL18intersect_cylinderEPNS_19Blob_Element_StructEPdS2_dS2_S2_(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13, %10, %7, %5
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 15)) #11
  br label %20

20:                                               ; preds = %16, %13, %10, %7, %19
  %21 = phi i32 [ 1, %19 ], [ 0, %7 ], [ 0, %10 ], [ 0, %13 ], [ 0, %16 ]
  ret i32 %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL10insert_hitEPNS_19Blob_Element_StructEddPNS_20Blob_Interval_StructEPj(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !149 {
  %6 = load i16, ptr %0, align 8, !tbaa !57
  %7 = sext i16 %6 to i32
  %8 = load i32, ptr %4, align 4, !tbaa !78
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %9
  store i32 %7, ptr %10, align 8, !tbaa !55
  %11 = load i32, ptr %4, align 4, !tbaa !78
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %12, i32 1
  store double %1, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %12, i32 2
  store ptr %0, ptr %14, align 8, !tbaa !56
  br label %15

15:                                               ; preds = %15, %5
  %16 = phi i32 [ 0, %5 ], [ %21, %15 ]
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %17, i32 1
  %19 = load double, ptr %18, align 8, !tbaa !48
  %20 = fcmp olt double %19, %1
  %21 = add i32 %16, 1
  br i1 %20, label %15, label %22, !llvm.loop !150

22:                                               ; preds = %15
  %23 = icmp ult i32 %16, %11
  br i1 %23, label %24, label %67

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %17
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %26
  %28 = sub i32 %11, %16
  %29 = zext i32 %28 to i64
  %30 = mul nuw nsw i64 %29, 24
  %31 = tail call noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef nonnull %27, ptr noundef nonnull %25, i64 noundef %30) #11
  %32 = load i16, ptr %0, align 8, !tbaa !57
  %33 = sext i16 %32 to i32
  store i32 %33, ptr %25, align 8, !tbaa !55
  store double %1, ptr %18, align 8, !tbaa !48
  %34 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %17, i32 2
  store ptr %0, ptr %34, align 8, !tbaa !56
  %35 = load i32, ptr %4, align 4, !tbaa !78
  %36 = add i32 %35, 1
  store i32 %36, ptr %4, align 4, !tbaa !78
  %37 = or i16 %32, 1
  %38 = sext i16 %37 to i32
  %39 = zext i32 %36 to i64
  %40 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %39
  store i32 %38, ptr %40, align 8, !tbaa !55
  %41 = load i32, ptr %4, align 4, !tbaa !78
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %42, i32 1
  store double %2, ptr %43, align 8, !tbaa !48
  %44 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %42, i32 2
  store ptr %0, ptr %44, align 8, !tbaa !56
  br label %45

45:                                               ; preds = %45, %24
  %46 = phi i32 [ %21, %24 ], [ %51, %45 ]
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %47, i32 1
  %49 = load double, ptr %48, align 8, !tbaa !48
  %50 = fcmp olt double %49, %2
  %51 = add i32 %46, 1
  br i1 %50, label %45, label %52, !llvm.loop !151

52:                                               ; preds = %45
  %53 = icmp ult i32 %46, %41
  br i1 %53, label %54, label %77

54:                                               ; preds = %52
  %55 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %47
  %56 = zext i32 %51 to i64
  %57 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %56
  %58 = sub i32 %41, %46
  %59 = zext i32 %58 to i64
  %60 = mul nuw nsw i64 %59, 24
  %61 = tail call noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef nonnull %57, ptr noundef nonnull %55, i64 noundef %60) #11
  %62 = load i16, ptr %0, align 8, !tbaa !57
  %63 = or i16 %62, 1
  %64 = sext i16 %63 to i32
  store i32 %64, ptr %55, align 8, !tbaa !55
  store double %2, ptr %48, align 8, !tbaa !48
  %65 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %47, i32 2
  store ptr %0, ptr %65, align 8, !tbaa !56
  %66 = load i32, ptr %4, align 4, !tbaa !78
  br label %77

67:                                               ; preds = %22
  %68 = add i32 %11, 1
  store i32 %68, ptr %4, align 4, !tbaa !78
  %69 = or i16 %6, 1
  %70 = sext i16 %69 to i32
  %71 = zext i32 %68 to i64
  %72 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %71
  store i32 %70, ptr %72, align 8, !tbaa !55
  %73 = load i32, ptr %4, align 4, !tbaa !78
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %74, i32 1
  store double %2, ptr %75, align 8, !tbaa !48
  %76 = getelementptr inbounds %"struct.pov::Blob_Interval_Struct", ptr %3, i64 %74, i32 2
  store ptr %0, ptr %76, align 8, !tbaa !56
  br label %77

77:                                               ; preds = %52, %54, %67
  %78 = phi i32 [ %41, %52 ], [ %66, %54 ], [ %73, %67 ]
  %79 = add i32 %78, 1
  store i32 %79, ptr %4, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef i32 @_ZN3povL16intersect_sphereEPNS_19Blob_Element_StructEPdS2_dS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #4 !PGOFuncName !152 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %9 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %9) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %8, ptr noundef %2) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %8, ptr noundef nonnull %8) #11
  %10 = load double, ptr %6, align 8, !tbaa !43
  %11 = load double, ptr %7, align 8, !tbaa !43
  %12 = fneg double %11
  %13 = call double @llvm.fmuladd.f64(double %10, double %10, double %12)
  %14 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %15 = load double, ptr %14, align 8, !tbaa !133
  %16 = fadd double %13, %15
  %17 = fcmp olt double %16, 0x3E7AD7F29ABCAF48
  br i1 %17, label %33, label %18

18:                                               ; preds = %5
  %19 = call double @sqrt(double noundef %16) #12
  %20 = load double, ptr %6, align 8, !tbaa !43
  %21 = fsub double %19, %20
  %22 = fcmp olt double %21, 1.000000e-02
  %23 = select i1 %22, double 0.000000e+00, double %21
  store double %23, ptr %4, align 8, !tbaa !43
  %24 = fneg double %20
  %25 = fsub double %24, %19
  %26 = fcmp olt double %25, 1.000000e-02
  %27 = select i1 %26, double 0.000000e+00, double %25
  store double %27, ptr %3, align 8, !tbaa !43
  %28 = load double, ptr %4, align 8, !tbaa !43
  %29 = fcmp oeq double %28, %27
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = fcmp olt double %28, %27
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  store double %28, ptr %3, align 8, !tbaa !43
  store double %27, ptr %4, align 8, !tbaa !43
  br label %33

33:                                               ; preds = %32, %30, %18, %5
  %34 = phi i32 [ 0, %5 ], [ 0, %18 ], [ 1, %30 ], [ 1, %32 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret i32 %34
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZN3povL19intersect_ellipsoidEPNS_19Blob_Element_StructEPdS2_dS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !153 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  %11 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %12 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %13) #11
  %14 = load ptr, ptr %12, align 8, !tbaa !60
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %11, ptr noundef %2, ptr noundef %14) #11
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %11) #11
  %15 = load double, ptr %8, align 8, !tbaa !43
  call void @_ZN3pov15VInverseScaleEqEPdd(ptr noundef nonnull %11, double noundef %15) #11
  %16 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %16) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %9, ptr noundef nonnull %11) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %9, ptr noundef nonnull %9) #11
  %17 = load double, ptr %6, align 8, !tbaa !43
  %18 = load double, ptr %7, align 8, !tbaa !43
  %19 = fneg double %18
  %20 = call double @llvm.fmuladd.f64(double %17, double %17, double %19)
  %21 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %22 = load double, ptr %21, align 8, !tbaa !133
  %23 = fadd double %20, %22
  %24 = fcmp olt double %23, 0x3E7AD7F29ABCAF48
  br i1 %24, label %50, label %25

25:                                               ; preds = %5
  %26 = call double @sqrt(double noundef %23) #12
  %27 = load double, ptr %6, align 8, !tbaa !43
  %28 = load double, ptr %8, align 8, !tbaa !43
  %29 = fneg double %27
  %30 = insertelement <2 x double> poison, double %29, i64 0
  %31 = insertelement <2 x double> %30, double %26, i64 1
  %32 = insertelement <2 x double> poison, double %26, i64 0
  %33 = insertelement <2 x double> %32, double %27, i64 1
  %34 = fsub <2 x double> %31, %33
  %35 = insertelement <2 x double> poison, double %28, i64 0
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  %37 = fdiv <2 x double> %34, %36
  %38 = fcmp olt <2 x double> %37, <double 1.000000e-02, double 1.000000e-02>
  %39 = extractelement <2 x i1> %38, i64 1
  %40 = extractelement <2 x double> %37, i64 1
  %41 = select i1 %39, double 0.000000e+00, double %40
  store double %41, ptr %4, align 8, !tbaa !43
  %42 = extractelement <2 x i1> %38, i64 0
  %43 = extractelement <2 x double> %37, i64 0
  %44 = select i1 %42, double 0.000000e+00, double %43
  store double %44, ptr %3, align 8, !tbaa !43
  %45 = load double, ptr %4, align 8, !tbaa !43
  %46 = fcmp oeq double %45, %44
  br i1 %46, label %50, label %47

47:                                               ; preds = %25
  %48 = fcmp olt double %45, %44
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  store double %45, ptr %3, align 8, !tbaa !43
  store double %44, ptr %4, align 8, !tbaa !43
  br label %50

50:                                               ; preds = %49, %47, %25, %5
  %51 = phi i32 [ 0, %5 ], [ 0, %25 ], [ 1, %47 ], [ 1, %49 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret i32 %51
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZN3povL20intersect_hemisphereEPNS_19Blob_Element_StructEPdS2_dS2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !154 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  %11 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %12) #11
  %13 = load ptr, ptr %11, align 8, !tbaa !60
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %10, ptr noundef %2, ptr noundef %13) #11
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %10) #11
  %14 = load double, ptr %8, align 8, !tbaa !43
  call void @_ZN3pov15VInverseScaleEqEPdd(ptr noundef nonnull %10, double noundef %14) #11
  %15 = load i16, ptr %0, align 8, !tbaa !57
  %16 = icmp eq i16 %15, 16
  br i1 %16, label %17, label %66

17:                                               ; preds = %5
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %9, ptr noundef nonnull %9) #11
  %18 = load double, ptr %6, align 8, !tbaa !43
  %19 = load double, ptr %7, align 8, !tbaa !43
  %20 = fneg double %19
  %21 = call double @llvm.fmuladd.f64(double %18, double %18, double %20)
  %22 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %23 = load double, ptr %22, align 8, !tbaa !133
  %24 = fadd double %21, %23
  %25 = fcmp olt double %24, 0x3E7AD7F29ABCAF48
  br i1 %25, label %124, label %26

26:                                               ; preds = %17
  %27 = call double @sqrt(double noundef %24) #12
  %28 = load double, ptr %6, align 8, !tbaa !43
  %29 = fsub double %27, %28
  store double %29, ptr %4, align 8, !tbaa !43
  %30 = fneg double %28
  %31 = fsub double %30, %27
  store double %31, ptr %3, align 8, !tbaa !43
  %32 = load double, ptr %4, align 8, !tbaa !43
  %33 = fcmp olt double %32, %31
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  store double %32, ptr %3, align 8, !tbaa !43
  store double %31, ptr %4, align 8, !tbaa !43
  %35 = load double, ptr %3, align 8, !tbaa !43
  br label %36

36:                                               ; preds = %34, %26
  %37 = phi double [ %31, %34 ], [ %32, %26 ]
  %38 = phi double [ %35, %34 ], [ %31, %26 ]
  %39 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %40 = load double, ptr %39, align 16, !tbaa !43
  %41 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 2
  %42 = load double, ptr %41, align 16, !tbaa !43
  %43 = call double @llvm.fmuladd.f64(double %38, double %42, double %40)
  %44 = call double @llvm.fmuladd.f64(double %37, double %42, double %40)
  %45 = fcmp oge double %43, 0.000000e+00
  %46 = fcmp oge double %44, 0.000000e+00
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %124, label %48

48:                                               ; preds = %36
  %49 = fcmp olt double %43, 0.000000e+00
  %50 = fcmp olt double %44, 0.000000e+00
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load double, ptr %8, align 8, !tbaa !43
  %54 = fdiv double %38, %53
  br label %119

55:                                               ; preds = %48
  %56 = fneg double %40
  %57 = fdiv double %56, %42
  %58 = fcmp olt double %57, 1.000000e-02
  %59 = select i1 %58, double 0.000000e+00, double %57
  br i1 %45, label %62, label %60

60:                                               ; preds = %55
  store double %59, ptr %4, align 8, !tbaa !43
  %61 = load double, ptr %3, align 8, !tbaa !43
  br label %62

62:                                               ; preds = %55, %60
  %63 = phi double [ %61, %60 ], [ %59, %55 ]
  %64 = load double, ptr %8, align 8, !tbaa !43
  %65 = fdiv double %63, %64
  br label %119

66:                                               ; preds = %5
  %67 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 3
  %68 = load double, ptr %67, align 8, !tbaa !61
  %69 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %70 = load double, ptr %69, align 16, !tbaa !43
  %71 = fsub double %70, %68
  store double %71, ptr %69, align 16, !tbaa !43
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %9, ptr noundef nonnull %9) #11
  %72 = load double, ptr %6, align 8, !tbaa !43
  %73 = load double, ptr %7, align 8, !tbaa !43
  %74 = fneg double %73
  %75 = call double @llvm.fmuladd.f64(double %72, double %72, double %74)
  %76 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %77 = load double, ptr %76, align 8, !tbaa !133
  %78 = fadd double %75, %77
  %79 = fcmp olt double %78, 0x3E7AD7F29ABCAF48
  br i1 %79, label %124, label %80

80:                                               ; preds = %66
  %81 = call double @sqrt(double noundef %78) #12
  %82 = load double, ptr %6, align 8, !tbaa !43
  %83 = fsub double %81, %82
  store double %83, ptr %4, align 8, !tbaa !43
  %84 = fneg double %82
  %85 = fsub double %84, %81
  store double %85, ptr %3, align 8, !tbaa !43
  %86 = load double, ptr %4, align 8, !tbaa !43
  %87 = fcmp olt double %86, %85
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  store double %86, ptr %3, align 8, !tbaa !43
  store double %85, ptr %4, align 8, !tbaa !43
  %89 = load double, ptr %3, align 8, !tbaa !43
  br label %90

90:                                               ; preds = %88, %80
  %91 = phi double [ %85, %88 ], [ %86, %80 ]
  %92 = phi double [ %89, %88 ], [ %85, %80 ]
  %93 = load double, ptr %69, align 16, !tbaa !43
  %94 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 2
  %95 = load double, ptr %94, align 16, !tbaa !43
  %96 = call double @llvm.fmuladd.f64(double %92, double %95, double %93)
  %97 = call double @llvm.fmuladd.f64(double %91, double %95, double %93)
  %98 = fcmp ole double %96, 0.000000e+00
  %99 = fcmp ole double %97, 0.000000e+00
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %124, label %101

101:                                              ; preds = %90
  %102 = fcmp ogt double %96, 0.000000e+00
  %103 = fcmp ogt double %97, 0.000000e+00
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load double, ptr %8, align 8, !tbaa !43
  %107 = fdiv double %92, %106
  br label %119

108:                                              ; preds = %101
  %109 = fneg double %93
  %110 = fdiv double %109, %95
  %111 = fcmp olt double %110, 1.000000e-02
  %112 = select i1 %111, double 0.000000e+00, double %110
  br i1 %98, label %115, label %113

113:                                              ; preds = %108
  store double %112, ptr %4, align 8, !tbaa !43
  %114 = load double, ptr %3, align 8, !tbaa !43
  br label %115

115:                                              ; preds = %108, %113
  %116 = phi double [ %114, %113 ], [ %112, %108 ]
  %117 = load double, ptr %8, align 8, !tbaa !43
  %118 = fdiv double %116, %117
  br label %119

119:                                              ; preds = %52, %62, %105, %115
  %120 = phi double [ %118, %115 ], [ %107, %105 ], [ %65, %62 ], [ %54, %52 ]
  %121 = phi double [ %117, %115 ], [ %106, %105 ], [ %64, %62 ], [ %53, %52 ]
  store double %120, ptr %3, align 8, !tbaa !43
  %122 = load double, ptr %4, align 8, !tbaa !43
  %123 = fdiv double %122, %121
  store double %123, ptr %4, align 8, !tbaa !43
  br label %124

124:                                              ; preds = %119, %90, %66, %36, %17
  %125 = phi i32 [ 0, %17 ], [ 0, %36 ], [ 0, %66 ], [ 0, %90 ], [ 1, %119 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret i32 %125
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZN3povL18intersect_cylinderEPNS_19Blob_Element_StructEPdS2_dS2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !155 {
  %6 = alloca double, align 8
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %9 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %10) #11
  %11 = load ptr, ptr %9, align 8, !tbaa !60
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %11) #11
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %8) #11
  %12 = load double, ptr %6, align 8, !tbaa !43
  call void @_ZN3pov15VInverseScaleEqEPdd(ptr noundef nonnull %8, double noundef %12) #11
  %13 = load double, ptr %8, align 16, !tbaa !43
  %14 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !43
  %16 = fmul double %15, %15
  %17 = call double @llvm.fmuladd.f64(double %13, double %13, double %16)
  %18 = fcmp ogt double %17, 0x3E7AD7F29ABCAF48
  br i1 %18, label %19, label %74

19:                                               ; preds = %5
  %20 = load double, ptr %7, align 16, !tbaa !43
  %21 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  %22 = load double, ptr %21, align 8, !tbaa !43
  %23 = fmul double %15, %22
  %24 = call double @llvm.fmuladd.f64(double %20, double %13, double %23)
  %25 = fmul double %22, %22
  %26 = call double @llvm.fmuladd.f64(double %20, double %20, double %25)
  %27 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %28 = load double, ptr %27, align 8, !tbaa !133
  %29 = fsub double %26, %28
  %30 = fneg double %17
  %31 = fmul double %29, %30
  %32 = call double @llvm.fmuladd.f64(double %24, double %24, double %31)
  %33 = fcmp ogt double %32, 0x3E7AD7F29ABCAF48
  br i1 %33, label %34, label %74

34:                                               ; preds = %19
  %35 = call double @sqrt(double noundef %32) #12
  %36 = fneg double %24
  %37 = fsub double %35, %24
  %38 = fdiv double %37, %17
  %39 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  %40 = load double, ptr %39, align 16, !tbaa !43
  %41 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 2
  %42 = load double, ptr %41, align 16, !tbaa !43
  %43 = call double @llvm.fmuladd.f64(double %38, double %42, double %40)
  %44 = fcmp ult double %43, 0.000000e+00
  br i1 %44, label %57, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 3
  %47 = load double, ptr %46, align 8, !tbaa !61
  %48 = fcmp ugt double %43, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load double, ptr %3, align 8, !tbaa !43
  %51 = fcmp olt double %38, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store double %38, ptr %3, align 8, !tbaa !43
  br label %53

53:                                               ; preds = %52, %49
  %54 = load double, ptr %4, align 8, !tbaa !43
  %55 = fcmp ogt double %38, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store double %38, ptr %4, align 8, !tbaa !43
  br label %57

57:                                               ; preds = %53, %56, %45, %34
  %58 = fsub double %36, %35
  %59 = fdiv double %58, %17
  %60 = call double @llvm.fmuladd.f64(double %59, double %42, double %40)
  %61 = fcmp ult double %60, 0.000000e+00
  br i1 %61, label %74, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 3
  %64 = load double, ptr %63, align 8, !tbaa !61
  %65 = fcmp ugt double %60, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load double, ptr %3, align 8, !tbaa !43
  %68 = fcmp olt double %59, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store double %59, ptr %3, align 8, !tbaa !43
  br label %70

70:                                               ; preds = %69, %66
  %71 = load double, ptr %4, align 8, !tbaa !43
  %72 = fcmp ogt double %59, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store double %59, ptr %4, align 8, !tbaa !43
  br label %74

74:                                               ; preds = %19, %70, %73, %62, %57, %5
  %75 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 2
  %76 = load double, ptr %75, align 16, !tbaa !43
  %77 = call double @llvm.fabs.f64(double %76)
  %78 = fcmp ogt double %77, 0x3E7AD7F29ABCAF48
  br i1 %78, label %79, label %123

79:                                               ; preds = %74
  %80 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  %81 = load double, ptr %80, align 16, !tbaa !43
  %82 = fneg double %81
  %83 = fdiv double %82, %76
  %84 = load double, ptr %7, align 16, !tbaa !43
  %85 = load double, ptr %8, align 16, !tbaa !43
  %86 = call double @llvm.fmuladd.f64(double %83, double %85, double %84)
  %87 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  %88 = load double, ptr %87, align 8, !tbaa !43
  %89 = load double, ptr %14, align 8, !tbaa !43
  %90 = call double @llvm.fmuladd.f64(double %83, double %89, double %88)
  %91 = fmul double %90, %90
  %92 = call double @llvm.fmuladd.f64(double %86, double %86, double %91)
  %93 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %94 = load double, ptr %93, align 8, !tbaa !133
  %95 = fcmp ugt double %92, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %79
  %97 = load double, ptr %3, align 8, !tbaa !43
  %98 = fcmp olt double %83, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store double %83, ptr %3, align 8, !tbaa !43
  br label %100

100:                                              ; preds = %99, %96
  %101 = load double, ptr %4, align 8, !tbaa !43
  %102 = fcmp ogt double %83, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store double %83, ptr %4, align 8, !tbaa !43
  br label %104

104:                                              ; preds = %100, %103, %79
  %105 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 3
  %106 = load double, ptr %105, align 8, !tbaa !61
  %107 = fsub double %106, %81
  %108 = fdiv double %107, %76
  %109 = call double @llvm.fmuladd.f64(double %108, double %85, double %84)
  %110 = call double @llvm.fmuladd.f64(double %108, double %89, double %88)
  %111 = fmul double %110, %110
  %112 = call double @llvm.fmuladd.f64(double %109, double %109, double %111)
  %113 = load double, ptr %93, align 8, !tbaa !133
  %114 = fcmp ugt double %112, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %104
  %116 = load double, ptr %3, align 8, !tbaa !43
  %117 = fcmp olt double %108, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store double %108, ptr %3, align 8, !tbaa !43
  br label %119

119:                                              ; preds = %118, %115
  %120 = load double, ptr %4, align 8, !tbaa !43
  %121 = fcmp ogt double %108, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store double %108, ptr %4, align 8, !tbaa !43
  br label %123

123:                                              ; preds = %104, %122, %119, %74
  %124 = load double, ptr %6, align 8, !tbaa !43
  %125 = load double, ptr %3, align 8, !tbaa !43
  %126 = fdiv double %125, %124
  store double %126, ptr %3, align 8, !tbaa !43
  %127 = load double, ptr %4, align 8, !tbaa !43
  %128 = fdiv double %127, %124
  store double %128, ptr %4, align 8, !tbaa !43
  %129 = load double, ptr %3, align 8, !tbaa !43
  %130 = fcmp olt double %129, 1.000000e-02
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  store double 0.000000e+00, ptr %3, align 8, !tbaa !43
  %132 = load double, ptr %4, align 8, !tbaa !43
  br label %133

133:                                              ; preds = %131, %123
  %134 = phi double [ 0.000000e+00, %131 ], [ %129, %123 ]
  %135 = phi double [ %132, %131 ], [ %128, %123 ]
  %136 = fcmp olt double %135, 1.000000e-02
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  store double 0.000000e+00, ptr %4, align 8, !tbaa !43
  %138 = load double, ptr %3, align 8, !tbaa !43
  br label %139

139:                                              ; preds = %137, %133
  %140 = phi double [ 0.000000e+00, %137 ], [ %135, %133 ]
  %141 = phi double [ %138, %137 ], [ %134, %133 ]
  %142 = fcmp ult double %141, %140
  %143 = zext i1 %142 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret i32 %143
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !158
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %"struct.pov::istk_entry", ptr %3, i64 %6
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov14Assign_UV_VectEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !43
  store double %3, ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef double @_ZN3povL21calculate_field_valueEPNS_11Blob_StructEPd(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !159 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %6 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !73
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %73

15:                                               ; preds = %11, %15
  %16 = phi i64 [ %24, %15 ], [ 0, %11 ]
  %17 = phi ptr [ %25, %15 ], [ %7, %11 ]
  %18 = phi double [ %23, %15 ], [ 0.000000e+00, %11 ]
  %19 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %17, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %20, i64 %16
  %22 = tail call fastcc noundef double @_ZN3povL23calculate_element_fieldEPNS_19Blob_Element_StructEPd(ptr noundef %21, ptr noundef %1) #11
  %23 = fadd double %18, %22
  %24 = add nuw nsw i64 %16, 1
  %25 = load ptr, ptr %6, align 8, !tbaa !45
  %26 = getelementptr inbounds %"struct.pov::Blob_Data_Struct", ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !73
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %15, label %73, !llvm.loop !160

30:                                               ; preds = %2
  %31 = getelementptr inbounds %"struct.pov::Blob_Struct", ptr %0, i64 0, i32 16
  %32 = load ptr, ptr %31, align 8, !tbaa !76
  store ptr %9, ptr %32, align 8, !tbaa !77
  br label %33

33:                                               ; preds = %30, %69
  %34 = phi double [ 0.000000e+00, %30 ], [ %71, %69 ]
  %35 = phi i32 [ 1, %30 ], [ %70, %69 ]
  %36 = load ptr, ptr %31, align 8, !tbaa !76
  %37 = add i32 %35, -1
  store i32 %37, ptr %3, align 4, !tbaa !78
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !77
  %41 = load i16, ptr %40, align 8, !tbaa !79
  %42 = icmp slt i16 %41, 1
  %43 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %40, i64 0, i32 3
  br i1 %42, label %44, label %48

44:                                               ; preds = %33
  %45 = load ptr, ptr %43, align 8, !tbaa !81
  %46 = call fastcc noundef double @_ZN3povL23calculate_element_fieldEPNS_19Blob_Element_StructEPd(ptr noundef %45, ptr noundef %1) #11
  %47 = fadd double %34, %46
  br label %69

48:                                               ; preds = %33, %62
  %49 = phi i64 [ %63, %62 ], [ 0, %33 ]
  %50 = load ptr, ptr %43, align 8, !tbaa !81
  %51 = getelementptr inbounds ptr, ptr %50, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !77
  %53 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %52, i64 0, i32 1
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %53) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %5, ptr noundef nonnull %5) #11
  %54 = load double, ptr %4, align 8, !tbaa !43
  %55 = load ptr, ptr %43, align 8, !tbaa !81
  %56 = getelementptr inbounds ptr, ptr %55, i64 %49
  %57 = load ptr, ptr %56, align 8, !tbaa !77
  %58 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %57, i64 0, i32 2
  %59 = load double, ptr %58, align 8, !tbaa !82
  %60 = fcmp ugt double %54, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %48
  call fastcc void @_ZN3povL11insert_nodeEPNS_11Blob_StructEPNS_19BSphere_Tree_StructEPj(ptr noundef %0, ptr noundef nonnull %57, ptr noundef nonnull %3) #11
  br label %62

62:                                               ; preds = %48, %61
  %63 = add nuw nsw i64 %49, 1
  %64 = load i16, ptr %40, align 8, !tbaa !79
  %65 = sext i16 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %48, label %67, !llvm.loop !161

67:                                               ; preds = %62
  %68 = load i32, ptr %3, align 4, !tbaa !78
  br label %69

69:                                               ; preds = %67, %44
  %70 = phi i32 [ %37, %44 ], [ %68, %67 ]
  %71 = phi double [ %47, %44 ], [ %34, %67 ]
  %72 = icmp eq i32 %70, 0
  br i1 %72, label %73, label %33, !llvm.loop !162

73:                                               ; preds = %69, %15, %11
  %74 = phi double [ 0.000000e+00, %11 ], [ %23, %15 ], [ %71, %69 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret double %74
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef double @_ZN3povL23calculate_element_fieldEPNS_19Blob_Element_StructEPd(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !163 {
  %3 = alloca double, align 8
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %6 = load i16, ptr %0, align 8, !tbaa !57
  switch i16 %6, label %76 [
    i16 2, label %7
    i16 8, label %13
    i16 16, label %21
    i16 32, label %32
    i16 4, label %46
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %8) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %4, ptr noundef nonnull %4) #11
  %9 = load double, ptr %3, align 8, !tbaa !43
  %10 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !133
  %12 = fcmp olt double %9, %11
  br i1 %12, label %66, label %76

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %15) #11
  %16 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %16) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %4, ptr noundef nonnull %4) #11
  %17 = load double, ptr %3, align 8, !tbaa !43
  %18 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %19 = load double, ptr %18, align 8, !tbaa !133
  %20 = fcmp olt double %17, %19
  br i1 %20, label %66, label %76

21:                                               ; preds = %2
  %22 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %23) #11
  %24 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %25 = load double, ptr %24, align 16, !tbaa !43
  %26 = fcmp ugt double %25, 0.000000e+00
  br i1 %26, label %76, label %27

27:                                               ; preds = %21
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %5, ptr noundef nonnull %5) #11
  %28 = load double, ptr %3, align 8, !tbaa !43
  %29 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %30 = load double, ptr %29, align 8, !tbaa !133
  %31 = fcmp ugt double %28, %30
  br i1 %31, label %76, label %66

32:                                               ; preds = %2
  %33 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !60
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %34) #11
  %35 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 3
  %36 = load double, ptr %35, align 8, !tbaa !61
  %37 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %38 = load double, ptr %37, align 16, !tbaa !43
  %39 = fsub double %38, %36
  store double %39, ptr %37, align 16, !tbaa !43
  %40 = fcmp ult double %39, 0.000000e+00
  br i1 %40, label %76, label %41

41:                                               ; preds = %32
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %5, ptr noundef nonnull %5) #11
  %42 = load double, ptr %3, align 8, !tbaa !43
  %43 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %44 = load double, ptr %43, align 8, !tbaa !133
  %45 = fcmp ugt double %42, %44
  br i1 %45, label %76, label %66

46:                                               ; preds = %2
  %47 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !60
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %48) #11
  %49 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %50 = load double, ptr %49, align 16, !tbaa !43
  %51 = fcmp ult double %50, 0.000000e+00
  br i1 %51, label %76, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 3
  %54 = load double, ptr %53, align 8, !tbaa !61
  %55 = fcmp ugt double %50, %54
  br i1 %55, label %76, label %56

56:                                               ; preds = %52
  %57 = load double, ptr %5, align 16, !tbaa !43
  %58 = call noundef double @_ZN3pov3SqrEd(double noundef %57) #11
  %59 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %60 = load double, ptr %59, align 8, !tbaa !43
  %61 = call noundef double @_ZN3pov3SqrEd(double noundef %60) #11
  %62 = fadd double %58, %61
  %63 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %64 = load double, ptr %63, align 8, !tbaa !133
  %65 = fcmp ugt double %62, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %56, %41, %27, %13, %7
  %67 = phi double [ %9, %7 ], [ %17, %13 ], [ %28, %27 ], [ %42, %41 ], [ %62, %56 ]
  %68 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 5
  %69 = load double, ptr %68, align 8, !tbaa !43
  %70 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 5, i64 1
  %71 = load double, ptr %70, align 8, !tbaa !43
  %72 = call double @llvm.fmuladd.f64(double %67, double %69, double %71)
  %73 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 5, i64 2
  %74 = load double, ptr %73, align 8, !tbaa !43
  %75 = call double @llvm.fmuladd.f64(double %67, double %72, double %74)
  br label %76

76:                                               ; preds = %66, %46, %52, %56, %32, %41, %21, %27, %13, %7, %2
  %77 = phi double [ 0.000000e+00, %2 ], [ 0.000000e+00, %56 ], [ 0.000000e+00, %52 ], [ 0.000000e+00, %46 ], [ 0.000000e+00, %41 ], [ 0.000000e+00, %32 ], [ 0.000000e+00, %27 ], [ 0.000000e+00, %21 ], [ 0.000000e+00, %13 ], [ 0.000000e+00, %7 ], [ %75, %66 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret double %77
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #4 comdat {
  store double %1, ptr %0, align 8, !tbaa !43
  %5 = getelementptr inbounds double, ptr %0, i64 1
  store double %2, ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds double, ptr %0, i64 2
  store double %3, ptr %6, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL14element_normalEPdS0_PNS_19Blob_Element_StructE(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !164 {
  %4 = alloca double, align 8
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %7 = load i16, ptr %2, align 8, !tbaa !57
  switch i16 %7, label %111 [
    i16 2, label %8
    i16 8, label %22
    i16 16, label %39
    i16 32, label %59
    i16 4, label %82
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 2
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %9) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %5, ptr noundef nonnull %5) #11
  %10 = load double, ptr %4, align 8, !tbaa !43
  %11 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %12 = load double, ptr %11, align 8, !tbaa !133
  %13 = fcmp ugt double %10, %12
  br i1 %13, label %111, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5
  %16 = load double, ptr %15, align 8, !tbaa !43
  %17 = fmul double %16, -2.000000e+00
  %18 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !43
  %20 = fneg double %19
  %21 = call double @llvm.fmuladd.f64(double %17, double %10, double %20)
  call void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef %0, double noundef %21, ptr noundef nonnull %5) #11
  br label %111

22:                                               ; preds = %3
  %23 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !60
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %24) #11
  %25 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 2
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %25) #11
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %5, ptr noundef nonnull %5) #11
  %26 = load double, ptr %4, align 8, !tbaa !43
  %27 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %28 = load double, ptr %27, align 8, !tbaa !133
  %29 = fcmp ugt double %26, %28
  br i1 %29, label %111, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5
  %32 = load double, ptr %31, align 8, !tbaa !43
  %33 = fmul double %32, -2.000000e+00
  %34 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5, i64 1
  %35 = load double, ptr %34, align 8, !tbaa !43
  %36 = fneg double %35
  %37 = call double @llvm.fmuladd.f64(double %33, double %26, double %36)
  %38 = load ptr, ptr %23, align 8, !tbaa !60
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %38) #11
  call void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef %0, double noundef %37, ptr noundef nonnull %5) #11
  br label %111

39:                                               ; preds = %3
  %40 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %41) #11
  %42 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %43 = load double, ptr %42, align 16, !tbaa !43
  %44 = fcmp ugt double %43, 0.000000e+00
  br i1 %44, label %111, label %45

45:                                               ; preds = %39
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %6, ptr noundef nonnull %6) #11
  %46 = load double, ptr %4, align 8, !tbaa !43
  %47 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %48 = load double, ptr %47, align 8, !tbaa !133
  %49 = fcmp ugt double %46, %48
  br i1 %49, label %111, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5
  %52 = load double, ptr %51, align 8, !tbaa !43
  %53 = fmul double %52, -2.000000e+00
  %54 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5, i64 1
  %55 = load double, ptr %54, align 8, !tbaa !43
  %56 = fneg double %55
  %57 = call double @llvm.fmuladd.f64(double %53, double %46, double %56)
  %58 = load ptr, ptr %40, align 8, !tbaa !60
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %58) #11
  call void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef %0, double noundef %57, ptr noundef nonnull %6) #11
  br label %111

59:                                               ; preds = %3
  %60 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !60
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %61) #11
  %62 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 3
  %63 = load double, ptr %62, align 8, !tbaa !61
  %64 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %65 = load double, ptr %64, align 16, !tbaa !43
  %66 = fsub double %65, %63
  store double %66, ptr %64, align 16, !tbaa !43
  %67 = fcmp ult double %66, 0.000000e+00
  br i1 %67, label %111, label %68

68:                                               ; preds = %59
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %6, ptr noundef nonnull %6) #11
  %69 = load double, ptr %4, align 8, !tbaa !43
  %70 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %71 = load double, ptr %70, align 8, !tbaa !133
  %72 = fcmp ugt double %69, %71
  br i1 %72, label %111, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5
  %75 = load double, ptr %74, align 8, !tbaa !43
  %76 = fmul double %75, -2.000000e+00
  %77 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5, i64 1
  %78 = load double, ptr %77, align 8, !tbaa !43
  %79 = fneg double %78
  %80 = call double @llvm.fmuladd.f64(double %76, double %69, double %79)
  %81 = load ptr, ptr %60, align 8, !tbaa !60
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %81) #11
  call void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef %0, double noundef %80, ptr noundef nonnull %6) #11
  br label %111

82:                                               ; preds = %3
  %83 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !60
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %84) #11
  %85 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %86 = load double, ptr %85, align 16, !tbaa !43
  %87 = fcmp ult double %86, 0.000000e+00
  br i1 %87, label %111, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 3
  %90 = load double, ptr %89, align 8, !tbaa !61
  %91 = fcmp ugt double %86, %90
  br i1 %91, label %111, label %92

92:                                               ; preds = %88
  %93 = load double, ptr %6, align 16, !tbaa !43
  %94 = call noundef double @_ZN3pov3SqrEd(double noundef %93) #11
  %95 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %96 = load double, ptr %95, align 8, !tbaa !43
  %97 = call noundef double @_ZN3pov3SqrEd(double noundef %96) #11
  %98 = fadd double %94, %97
  store double %98, ptr %4, align 8, !tbaa !43
  %99 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 4
  %100 = load double, ptr %99, align 8, !tbaa !133
  %101 = fcmp ugt double %98, %100
  br i1 %101, label %111, label %102

102:                                              ; preds = %92
  %103 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5
  %104 = load double, ptr %103, align 8, !tbaa !43
  %105 = fmul double %104, -2.000000e+00
  %106 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %2, i64 0, i32 5, i64 1
  %107 = load double, ptr %106, align 8, !tbaa !43
  %108 = fneg double %107
  %109 = call double @llvm.fmuladd.f64(double %105, double %98, double %108)
  store double 0.000000e+00, ptr %85, align 16, !tbaa !43
  %110 = load ptr, ptr %83, align 8, !tbaa !60
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %110) #11
  call void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef %0, double noundef %109, ptr noundef nonnull %6) #11
  br label %111

111:                                              ; preds = %82, %88, %102, %92, %59, %73, %68, %39, %50, %45, %22, %30, %8, %14, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov10VNormalizeEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #11
  %4 = load double, ptr %3, align 8, !tbaa !43
  call void @_ZN3pov13VInverseScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13VInverseScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #4 comdat {
  %4 = fdiv double 1.000000e+00, %2
  %5 = load double, ptr %1, align 8, !tbaa !43
  %6 = fmul double %4, %5
  store double %6, ptr %0, align 8, !tbaa !43
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !43
  %9 = fmul double %4, %8
  %10 = getelementptr inbounds double, ptr %0, i64 1
  store double %9, ptr %10, align 8, !tbaa !43
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !43
  %13 = fmul double %4, %12
  %14 = getelementptr inbounds double, ptr %0, i64 2
  store double %13, ptr %14, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov33Destroy_Bounding_Sphere_HierarchyEPNS_19BSphere_Tree_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL27get_element_bounding_sphereEPNS_19Blob_Element_StructEPdS2_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !165 {
  %4 = alloca [3 x double], align 16
  %5 = alloca %"struct.pov::Bounding_Box_Struct", align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %9 = load i16, ptr %0, align 8, !tbaa !57
  switch i16 %9, label %32 [
    i16 2, label %10
    i16 8, label %10
    i16 16, label %14
    i16 32, label %17
    i16 4, label %22
  ]

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %12 = load double, ptr %11, align 8, !tbaa !133
  %13 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 2
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %4, ptr noundef nonnull %13) #11
  br label %32

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %16 = load double, ptr %15, align 8, !tbaa !133
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %4, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  br label %32

17:                                               ; preds = %3
  %18 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %19 = load double, ptr %18, align 8, !tbaa !133
  %20 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 3
  %21 = load double, ptr %20, align 8, !tbaa !61
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %4, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %21) #11
  br label %32

22:                                               ; preds = %3
  %23 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 3
  %24 = load double, ptr %23, align 8, !tbaa !61
  %25 = fmul double %24, 5.000000e-01
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %4, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %25) #11
  %26 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 4
  %27 = load double, ptr %26, align 8, !tbaa !133
  %28 = load double, ptr %23, align 8, !tbaa !61
  %29 = fmul double %28, 5.000000e-01
  %30 = call noundef double @_ZN3pov3SqrEd(double noundef %29) #11
  %31 = fadd double %27, %30
  br label %32

32:                                               ; preds = %3, %22, %17, %14, %10
  %33 = phi double [ 0.000000e+00, %3 ], [ %31, %22 ], [ %19, %17 ], [ %16, %14 ], [ %12, %10 ]
  %34 = getelementptr inbounds %"struct.pov::Blob_Element_Struct", ptr %0, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = icmp eq ptr %35, null
  br i1 %36, label %57, label %37

37:                                               ; preds = %32
  %38 = call double @sqrt(double noundef %33) #12
  %39 = load ptr, ptr %34, align 8, !tbaa !60
  call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %39) #11
  %40 = fptrunc double %38 to float
  call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %5, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %40, float noundef %40, float noundef %40) #11
  %41 = load ptr, ptr %34, align 8, !tbaa !60
  call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef %41) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %42 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %5, i64 0, i32 1
  %43 = load float, ptr %42, align 4, !tbaa !89
  %44 = call noundef float @_ZSt4fabsf(float noundef %43) #11
  store float %44, ptr %6, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %45 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %5, i64 0, i32 1, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !89
  %47 = call noundef float @_ZSt4fabsf(float noundef %46) #11
  store float %47, ptr %7, align 4, !tbaa !89
  %48 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIfERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  %49 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %5, i64 0, i32 1, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !89
  %51 = call noundef float @_ZSt4fabsf(float noundef %50) #11
  store float %51, ptr %8, align 4, !tbaa !89
  %52 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIfERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %48, ptr noundef nonnull align 4 dereferenceable(4) %8) #11
  %53 = load float, ptr %52, align 4, !tbaa !89
  %54 = fpext float %53 to double
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %55 = call noundef double @_ZN3pov3SqrEd(double noundef %54) #11
  %56 = fadd double %55, 0x3E7AD7F29ABCAF48
  br label %57

57:                                               ; preds = %37, %32
  %58 = phi double [ %56, %37 ], [ %33, %32 ]
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %1, ptr noundef nonnull %4) #11
  store double %58, ptr %2, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !43
  %4 = load double, ptr %0, align 8, !tbaa !43
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat {
  %3 = load double, ptr %0, align 8, !tbaa !43
  %4 = load double, ptr %1, align 8, !tbaa !43
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !43
  %5 = getelementptr inbounds double, ptr %1, i64 1
  %6 = load double, ptr %2, align 8, !tbaa !43
  %7 = fsub double %6, %4
  %8 = insertelement <4 x double> poison, double %4, i64 0
  %9 = getelementptr inbounds double, ptr %2, i64 1
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  %11 = load <2 x double>, ptr %5, align 8, !tbaa !43
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x double> %8, <4 x double> %12, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %14 = insertelement <4 x double> %13, double %7, i64 3
  %15 = fptrunc <4 x double> %14 to <4 x float>
  store <4 x float> %15, ptr %0, align 4, !tbaa !89
  %16 = load <2 x double>, ptr %9, align 8, !tbaa !43
  %17 = fsub <2 x double> %16, %11
  %18 = fptrunc <2 x double> %17 to <2 x float>
  store <2 x float> %18, ptr %10, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIfERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #4 comdat {
  %3 = load float, ptr %0, align 4, !tbaa !89
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = fcmp olt float %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef float @_ZSt4fabsf(float noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call float @llvm.fabs.f32(float %0)
  ret float %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: optsize
declare void @_ZN3pov31Build_Bounding_Sphere_HierarchyEPPNS_19BSphere_Tree_StructEiPS2_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }

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
!34 = !{!"blob.cpp:_ZN3povL22All_Blob_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE"}
!35 = !{!36, !37, i64 96}
!36 = !{!"_ZTSN3pov11Blob_StructE", !37, i64 0, !40, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !41, i64 72, !37, i64 96, !37, i64 104, !42, i64 112, !40, i64 116, !37, i64 120, !37, i64 128, !37, i64 136, !40, i64 144}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"_ZTSN3pov19Bounding_Box_StructE", !38, i64 0, !38, i64 12}
!42 = !{!"float", !38, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"double", !38, i64 0}
!45 = !{!36, !37, i64 120}
!46 = !{!47, !37, i64 24}
!47 = !{!"_ZTSN3pov16Blob_Data_StructE", !40, i64 0, !40, i64 4, !44, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!48 = !{!49, !44, i64 8}
!49 = !{!"_ZTSN3pov20Blob_Interval_StructE", !40, i64 0, !44, i64 8, !37, i64 16}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = !{!47, !44, i64 8}
!55 = !{!49, !40, i64 0}
!56 = !{!49, !37, i64 16}
!57 = !{!58, !59, i64 0}
!58 = !{!"_ZTSN3pov19Blob_Element_StructE", !59, i64 0, !40, i64 4, !38, i64 8, !44, i64 32, !44, i64 40, !38, i64 48, !38, i64 72, !37, i64 112, !37, i64 120}
!59 = !{!"short", !38, i64 0}
!60 = !{!58, !37, i64 120}
!61 = !{!58, !44, i64 32}
!62 = distinct !{!62, !51}
!63 = distinct !{!63, !51}
!64 = !{!36, !40, i64 116}
!65 = !{!66, !37, i64 56}
!66 = !{!"_ZTSN3pov13Object_StructE", !37, i64 0, !40, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !41, i64 72, !37, i64 96, !37, i64 104, !42, i64 112, !40, i64 116}
!67 = distinct !{!67, !51}
!68 = !{!36, !40, i64 8}
!69 = distinct !{!69, !51}
!70 = !{!"blob.cpp:_ZN3povL11Inside_BlobEPdPNS_13Object_StructE"}
!71 = !{!"blob.cpp:_ZN3povL11Blob_NormalEPdPNS_13Object_StructEPNS_10istk_entryE"}
!72 = !{!47, !37, i64 32}
!73 = !{!47, !40, i64 4}
!74 = !{!47, !37, i64 16}
!75 = distinct !{!75, !51}
!76 = !{!36, !37, i64 136}
!77 = !{!37, !37, i64 0}
!78 = !{!40, !40, i64 0}
!79 = !{!80, !59, i64 0}
!80 = !{!"_ZTSN3pov19BSphere_Tree_StructE", !59, i64 0, !38, i64 8, !44, i64 32, !37, i64 40}
!81 = !{!80, !37, i64 40}
!82 = !{!80, !44, i64 32}
!83 = distinct !{!83, !51}
!84 = distinct !{!84, !51}
!85 = !{!"blob.cpp:_ZN3povL9Copy_BlobEPNS_13Object_StructE"}
!86 = !{!36, !40, i64 144}
!87 = !{i64 0, i64 8, !77, i64 8, i64 4, !78, i64 16, i64 8, !77, i64 24, i64 8, !77, i64 32, i64 8, !77, i64 40, i64 8, !77, i64 48, i64 8, !77, i64 56, i64 8, !77, i64 64, i64 8, !77, i64 72, i64 12, !88, i64 84, i64 12, !88, i64 96, i64 8, !77, i64 104, i64 8, !77, i64 112, i64 4, !89, i64 116, i64 4, !78, i64 120, i64 8, !77, i64 128, i64 8, !77, i64 136, i64 8, !77, i64 144, i64 4, !78}
!88 = !{!38, !38, i64 0}
!89 = !{!42, !42, i64 0}
!90 = !{!47, !40, i64 0}
!91 = !{!36, !37, i64 128}
!92 = distinct !{!92, !51}
!93 = !{!"blob.cpp:_ZN3povL14Translate_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!94 = !{!"blob.cpp:_ZN3povL11Rotate_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!95 = !{!"blob.cpp:_ZN3povL10Scale_BlobEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!96 = !{!"blob.cpp:_ZN3povL14Transform_BlobEPNS_13Object_StructEPNS_16Transform_StructE"}
!97 = distinct !{!97, !51}
!98 = !{!"blob.cpp:_ZN3povL11Invert_BlobEPNS_13Object_StructE"}
!99 = !{!66, !40, i64 116}
!100 = !{!"blob.cpp:_ZN3povL12Destroy_BlobEPNS_13Object_StructE"}
!101 = distinct !{!101, !51}
!102 = distinct !{!102, !51}
!103 = !{!36, !37, i64 0}
!104 = !{!"blob.cpp:_ZN3povL17init_blob_elementEPNS_19Blob_Element_StructE"}
!105 = !{!58, !40, i64 4}
!106 = !{!107, !59, i64 0}
!107 = !{!"_ZTSN3pov16Blob_List_StructE", !58, i64 0, !37, i64 128}
!108 = !{!107, !37, i64 128}
!109 = distinct !{!109, !51}
!110 = distinct !{!110, !51, !111, !112}
!111 = !{!"llvm.loop.isvectorized", i32 1}
!112 = !{!"llvm.loop.unroll.runtime.disable"}
!113 = !{!107, !44, i64 40}
!114 = !{i64 0, i64 2, !115, i64 4, i64 4, !78, i64 8, i64 24, !88, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 24, !88, i64 72, i64 40, !88, i64 112, i64 8, !77, i64 120, i64 8, !77}
!115 = !{!59, !59, i64 0}
!116 = !{!58, !37, i64 112}
!117 = !{!107, !37, i64 112}
!118 = distinct !{!118, !51}
!119 = !{!"blob.cpp:_ZN3povL17Compute_Blob_BBoxEPNS_11Blob_StructE"}
!120 = distinct !{!120, !51}
!121 = !{!"blob.cpp:_ZN3povL24build_bounding_hierarchyEPNS_11Blob_StructE"}
!122 = distinct !{!122, !51}
!123 = !{!36, !37, i64 24}
!124 = distinct !{!124, !51}
!125 = distinct !{!125, !51}
!126 = distinct !{!126, !51}
!127 = distinct !{!127, !51}
!128 = distinct !{!128, !51}
!129 = distinct !{!129, !51}
!130 = !{!"blob.cpp:_ZN3povL25determine_element_textureEPNS_11Blob_StructEPNS_19Blob_Element_StructEPNS_14Texture_StructEPdPiPS5_S6_"}
!131 = distinct !{!131, !51}
!132 = !{!"blob.cpp:_ZN3povL11insert_nodeEPNS_11Blob_StructEPNS_19BSphere_Tree_StructEPj"}
!133 = !{!58, !44, i64 40}
!134 = distinct !{!134, !51}
!135 = distinct !{!135, !51}
!136 = distinct !{!136, !51}
!137 = distinct !{!137, !51}
!138 = !{!139, !139, i64 0}
!139 = !{!"long long", !38, i64 0}
!140 = !{!"blob.cpp:_ZN3povL20determine_influencesEPdS0_PNS_11Blob_StructEdPNS_20Blob_Interval_StructE"}
!141 = distinct !{!141, !51}
!142 = distinct !{!142, !51}
!143 = distinct !{!143, !51}
!144 = !{!145, !44, i64 0}
!145 = !{!"_ZTSN3pov10istk_entryE", !44, i64 0, !38, i64 8, !38, i64 32, !38, i64 56, !38, i64 80, !37, i64 96, !40, i64 104, !40, i64 108, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !44, i64 152, !44, i64 160, !44, i64 168, !44, i64 176, !37, i64 184, !37, i64 192}
!146 = !{!145, !37, i64 96}
!147 = !{!145, !37, i64 192}
!148 = !{!"blob.cpp:_ZN3povL17intersect_elementEPdS0_PNS_19Blob_Element_StructEdS0_S0_"}
!149 = !{!"blob.cpp:_ZN3povL10insert_hitEPNS_19Blob_Element_StructEddPNS_20Blob_Interval_StructEPj"}
!150 = distinct !{!150, !51}
!151 = distinct !{!151, !51}
!152 = !{!"blob.cpp:_ZN3povL16intersect_sphereEPNS_19Blob_Element_StructEPdS2_dS2_S2_"}
!153 = !{!"blob.cpp:_ZN3povL19intersect_ellipsoidEPNS_19Blob_Element_StructEPdS2_dS2_S2_"}
!154 = !{!"blob.cpp:_ZN3povL20intersect_hemisphereEPNS_19Blob_Element_StructEPdS2_dS2_S2_"}
!155 = !{!"blob.cpp:_ZN3povL18intersect_cylinderEPNS_19Blob_Element_StructEPdS2_dS2_S2_"}
!156 = !{!157, !37, i64 8}
!157 = !{!"_ZTSN3pov13istack_structE", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20}
!158 = !{!157, !40, i64 20}
!159 = !{!"blob.cpp:_ZN3povL21calculate_field_valueEPNS_11Blob_StructEPd"}
!160 = distinct !{!160, !51}
!161 = distinct !{!161, !51}
!162 = distinct !{!162, !51}
!163 = !{!"blob.cpp:_ZN3povL23calculate_element_fieldEPNS_19Blob_Element_StructEPd"}
!164 = !{!"blob.cpp:_ZN3povL14element_normalEPdS0_PNS_19Blob_Element_StructE"}
!165 = !{!"blob.cpp:_ZN3povL27get_element_bounding_sphereEPNS_19Blob_Element_StructEPdS2_"}
