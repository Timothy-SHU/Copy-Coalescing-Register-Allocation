; ModuleID = 'csg.cpp'
source_filename = "csg.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Method_Struct" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::Object_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32 }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%"struct.pov::CSG_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, ptr, i32 }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }
%"struct.pov::Light_Source_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, ptr, [5 x float], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], double, double, double, double, double, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [6 x ptr] }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::Quadric_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, [3 x double], [3 x double], [3 x double], double, i8 }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }

$_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff = comdat any

$_ZN3pov11Make_VectorEPdddd = comdat any

$_ZN3pov22Make_min_max_from_BBoxERA3_dS1_NS_19Bounding_Box_StructE = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_ZSt3minIdERKT_S2_S2_ = comdat any

$_ZN3pov13Assign_VectorEPdS0_ = comdat any

$_ZN3pov13BOUNDS_VOLUMEERdRKNS_19Bounding_Box_StructE = comdat any

$_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_ = comdat any

$_ZN3pov16Increase_CounterERx = comdat any

$_ZN3pov9pop_entryEPNS_13istack_structE = comdat any

$_ZN3pov9push_copyEPNS_13istack_structEPNS_10istk_entryE = comdat any

$_ZN3pov4itopEPNS_13istack_structE = comdat any

@_ZN3pov17CSG_Union_MethodsE = dso_local global %"struct.pov::Method_Struct" { ptr @_ZN3povL27All_CSG_Union_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL16Inside_CSG_UnionEPdPNS_13Object_StructE, ptr null, ptr @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL8Copy_CSGEPNS_13Object_StructE, ptr @_ZN3povL13Translate_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL10Rotate_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL9Scale_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL13Transform_CSGEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL16Invert_CSG_UnionEPNS_13Object_StructE, ptr @_ZN3povL11Destroy_CSGEPNS_13Object_StructE }, align 8
@_ZN3pov17CSG_Merge_MethodsE = dso_local global %"struct.pov::Method_Struct" { ptr @_ZN3povL27All_CSG_Merge_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL16Inside_CSG_UnionEPdPNS_13Object_StructE, ptr null, ptr @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL8Copy_CSGEPNS_13Object_StructE, ptr @_ZN3povL13Translate_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL10Rotate_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL9Scale_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL13Transform_CSGEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL16Invert_CSG_UnionEPNS_13Object_StructE, ptr @_ZN3povL11Destroy_CSGEPNS_13Object_StructE }, align 8
@_ZN3pov24CSG_Intersection_MethodsE = dso_local global %"struct.pov::Method_Struct" { ptr @_ZN3povL31All_CSG_Intersect_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL23Inside_CSG_IntersectionEPdPNS_13Object_StructE, ptr null, ptr @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL8Copy_CSGEPNS_13Object_StructE, ptr @_ZN3povL13Translate_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL10Rotate_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL9Scale_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL13Transform_CSGEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL23Invert_CSG_IntersectionEPNS_13Object_StructE, ptr @_ZN3povL11Destroy_CSGEPNS_13Object_StructE }, align 8
@.str = private unnamed_addr constant [8 x i8] c"csg.cpp\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"intersection\00", align 1
@_ZN3pov14HField_MethodsE = external global %"struct.pov::Method_Struct", align 8
@_ZN3pov15Quadric_MethodsE = external global %"struct.pov::Method_Struct", align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"temporary quadric list\00", align 1
@_ZN3pov13Plane_MethodsE = external global %"struct.pov::Method_Struct", align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"Degenerate CSG bounding box (not used!).\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"No textures in multi-texture CSG object.\00", align 1
@_ZN3pov5statsE = external global [123 x i64], align 16
@_ZN3pov13backtraceFlagE = external local_unnamed_addr global i32, align 4
@_ZN3pov20Performing_SDL_TraceE = external local_unnamed_addr global i8, align 1
@_ZN3pov17In_Reflection_RayE = external local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"csg\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL27All_CSG_Union_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !34 {
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 26)) #6
  %4 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %49

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %118, label %11

11:                                               ; preds = %7, %44
  %12 = phi ptr [ %47, %44 ], [ %9, %7 ]
  %13 = phi i32 [ %45, %44 ], [ 0, %7 ]
  %14 = load i32, ptr @_ZN3pov13backtraceFlagE, align 4, !tbaa !44
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %12, i64 0, i32 13
  %17 = load i32, ptr %16, align 4, !tbaa !45
  br i1 %15, label %18, label %31

18:                                               ; preds = %11
  %19 = and i32 %17, 32768
  %20 = icmp ne i32 %19, 0
  %21 = load i8, ptr @_ZN3pov20Performing_SDL_TraceE, align 1, !range !46
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  %24 = load i8, ptr @_ZN3pov17In_Reflection_RayE, align 1, !range !46
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %44, label %27

27:                                               ; preds = %18
  %28 = and i32 %17, 65536
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i1 true, i1 %25
  br i1 %30, label %34, label %44

31:                                               ; preds = %11
  %32 = and i32 %17, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %12, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = tail call noundef zeroext i1 @_ZN3pov12Ray_In_BoundEPNS_10Ray_StructEPNS_13Object_StructE(ptr noundef %1, ptr noundef %36) #6
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load ptr, ptr %12, align 8, !tbaa !48
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = tail call noundef i32 %40(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %2) #6
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 %13, i32 1
  br label %44

44:                                               ; preds = %18, %27, %38, %31, %34
  %45 = phi i32 [ %13, %31 ], [ %13, %34 ], [ %43, %38 ], [ %13, %27 ], [ %13, %18 ]
  %46 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %12, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !43
  %48 = icmp eq ptr %47, null
  br i1 %48, label %114, label %11, !llvm.loop !51

49:                                               ; preds = %3
  %50 = tail call noundef ptr @_ZN3pov11open_istackEv() #6
  %51 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  %53 = icmp eq ptr %52, null
  br i1 %53, label %112, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  br label %56

56:                                               ; preds = %54, %107
  %57 = phi ptr [ %52, %54 ], [ %110, %107 ]
  %58 = phi i32 [ 0, %54 ], [ %108, %107 ]
  %59 = load i32, ptr @_ZN3pov13backtraceFlagE, align 4, !tbaa !44
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %57, i64 0, i32 13
  %62 = load i32, ptr %61, align 4, !tbaa !45
  br i1 %60, label %63, label %76

63:                                               ; preds = %56
  %64 = and i32 %62, 32768
  %65 = icmp ne i32 %64, 0
  %66 = load i8, ptr @_ZN3pov20Performing_SDL_TraceE, align 1, !range !46
  %67 = icmp eq i8 %66, 0
  %68 = select i1 %65, i1 %67, i1 false
  %69 = load i8, ptr @_ZN3pov17In_Reflection_RayE, align 1, !range !46
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %107, label %72

72:                                               ; preds = %63
  %73 = and i32 %62, 65536
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i1 true, i1 %70
  br i1 %75, label %79, label %107

76:                                               ; preds = %56
  %77 = and i32 %62, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %76, %72
  %80 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %57, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !47
  %82 = tail call noundef zeroext i1 @_ZN3pov12Ray_In_BoundEPNS_10Ray_StructEPNS_13Object_StructE(ptr noundef %1, ptr noundef %81) #6
  br i1 %82, label %83, label %107

83:                                               ; preds = %79
  %84 = load ptr, ptr %57, align 8, !tbaa !48
  %85 = load ptr, ptr %84, align 8, !tbaa !49
  %86 = tail call noundef i32 %85(ptr noundef nonnull %57, ptr noundef %1, ptr noundef %50) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %107, label %88

88:                                               ; preds = %83
  %89 = tail call noundef ptr @_ZN3pov9pop_entryEPNS_13istack_structE(ptr noundef %50) #6
  %90 = icmp eq ptr %89, null
  br i1 %90, label %107, label %91

91:                                               ; preds = %88, %103
  %92 = phi ptr [ %105, %103 ], [ %89, %88 ]
  %93 = phi i32 [ %104, %103 ], [ %58, %88 ]
  %94 = getelementptr inbounds %"struct.pov::istk_entry", ptr %92, i64 0, i32 1
  %95 = tail call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %94, ptr noundef nonnull %5) #6
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32, ptr %55, align 4, !tbaa !45
  %98 = and i32 %97, 256
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %"struct.pov::istk_entry", ptr %92, i64 0, i32 18
  store ptr %0, ptr %101, align 8, !tbaa !53
  br label %102

102:                                              ; preds = %100, %96
  tail call void @_ZN3pov9push_copyEPNS_13istack_structEPNS_10istk_entryE(ptr noundef %2, ptr noundef nonnull %92) #6
  br label %103

103:                                              ; preds = %102, %91
  %104 = phi i32 [ 1, %102 ], [ %93, %91 ]
  %105 = tail call noundef ptr @_ZN3pov9pop_entryEPNS_13istack_structE(ptr noundef %50) #6
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %91, !llvm.loop !56

107:                                              ; preds = %103, %88, %63, %72, %76, %83, %79
  %108 = phi i32 [ %58, %76 ], [ %58, %83 ], [ %58, %79 ], [ %58, %72 ], [ %58, %63 ], [ %58, %88 ], [ %104, %103 ]
  %109 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %57, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !43
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %56, !llvm.loop !57

112:                                              ; preds = %107, %49
  %113 = phi i32 [ 0, %49 ], [ %108, %107 ]
  tail call void @_ZN3pov12close_istackEPNS_13istack_structE(ptr noundef %50) #6
  br label %114

114:                                              ; preds = %44, %112
  %115 = phi i32 [ %113, %112 ], [ %45, %44 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 27)) #6
  br label %118

118:                                              ; preds = %7, %117, %114
  %119 = phi i32 [ %115, %117 ], [ 0, %114 ], [ 0, %7 ]
  ret i32 %119
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL16Inside_CSG_UnionEPdPNS_13Object_StructE(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !58 {
  %3 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2, %18
  %7 = phi ptr [ %20, %18 ], [ %4, %2 ]
  %8 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.pov::Light_Source_Struct", ptr %7, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %6
  %17 = tail call noundef zeroext i1 @_ZN3pov13Inside_ObjectEPdPNS_13Object_StructE(ptr noundef %0, ptr noundef nonnull %7) #6
  br i1 %17, label %22, label %18

18:                                               ; preds = %12, %16
  %19 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !llvm.loop !63

22:                                               ; preds = %16, %18, %2
  %23 = phi i32 [ 0, %2 ], [ 0, %18 ], [ 1, %16 ]
  ret i32 %23
}

; Function Attrs: optsize
declare void @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef ptr @_ZN3povL8Copy_CSGEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 !PGOFuncName !64 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 136, ptr noundef nonnull @.str, i32 noundef 902, ptr noundef nonnull @.str.7) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) %0, i64 136, i1 false), !tbaa.struct !65
  %3 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %2, i64 0, i32 14
  store ptr null, ptr %3, align 8, !tbaa !68
  %4 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1, %18
  %8 = phi ptr [ %20, %18 ], [ %5, %1 ]
  %9 = phi ptr [ %10, %18 ], [ null, %1 ]
  %10 = tail call noundef ptr @_ZN3pov11Copy_ObjectEPNS_13Object_StructE(ptr noundef nonnull %8) #6
  %11 = load ptr, ptr %3, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store ptr %10, ptr %3, align 8, !tbaa !68
  br label %14

14:                                               ; preds = %13, %7
  %15 = icmp eq ptr %9, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %9, i64 0, i32 2
  store ptr %10, ptr %17, align 8, !tbaa !70
  br label %18

18:                                               ; preds = %16, %14
  %19 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %8, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7, !llvm.loop !71

22:                                               ; preds = %18, %1
  %23 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !59
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %2, i64 0, i32 8
  store ptr null, ptr %28, align 8, !tbaa !72
  tail call void @_ZN3pov20Promote_Local_LightsEPNS_10CSG_StructE(ptr noundef nonnull %2) #6
  br label %29

29:                                               ; preds = %27, %22
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL13Translate_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !73 {
  %4 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %3 ]
  tail call void @_ZN3pov16Translate_ObjectEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2) #6
  %9 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !74

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %13, ptr noundef %2) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL10Rotate_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !75 {
  %4 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %3 ]
  tail call void @_ZN3pov13Rotate_ObjectEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2) #6
  %9 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !76

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %13, ptr noundef %2) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL9Scale_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !77 {
  %4 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %3 ]
  tail call void @_ZN3pov12Scale_ObjectEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2) #6
  %9 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !78

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %13, ptr noundef %2) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL13Transform_CSGEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !79 {
  %3 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %2 ]
  tail call void @_ZN3pov16Transform_ObjectEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef nonnull %7, ptr noundef %1) #6
  %8 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !80

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %12, ptr noundef %1) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL16Invert_CSG_UnionEPNS_13Object_StructE(ptr nocapture noundef %0) #0 !PGOFuncName !81 {
  store ptr @_ZN3pov24CSG_Intersection_MethodsE, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @_ZN3pov13Invert_ObjectEPNS_13Object_StructE(ptr noundef nonnull %6) #6
  %7 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !82

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = xor i32 %12, 4
  store i32 %13, ptr %11, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL11Destroy_CSGEPNS_13Object_StructE(ptr noundef %0) #0 !PGOFuncName !83 {
  %2 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  tail call void @_ZN3pov14Destroy_ObjectEPNS_13Object_StructE(ptr noundef %3) #6
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 966) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL27All_CSG_Merge_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !84 {
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 24)) #6
  %4 = tail call noundef ptr @_ZN3pov11open_istackEv() #6
  %5 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !85
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  %9 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void @_ZN3pov12close_istackEPNS_13istack_structE(ptr noundef %4) #6
  br label %127

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  br label %16

16:                                               ; preds = %13, %119
  %17 = phi ptr [ %10, %13 ], [ %122, %119 ]
  %18 = phi i32 [ 0, %13 ], [ %120, %119 ]
  %19 = load i32, ptr @_ZN3pov13backtraceFlagE, align 4, !tbaa !44
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %17, i64 0, i32 13
  %22 = load i32, ptr %21, align 4, !tbaa !45
  br i1 %20, label %23, label %33

23:                                               ; preds = %16
  %24 = and i32 %22, 32768
  %25 = icmp ne i32 %24, 0
  %26 = load i8, ptr @_ZN3pov17In_Reflection_RayE, align 1, !range !46
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = and i32 %22, 65536
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i1 true, i1 %27
  br i1 %32, label %40, label %36

33:                                               ; preds = %16
  %34 = and i32 %22, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %23, %29, %33
  %37 = and i32 %22, 1
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %8, i1 %38, i1 false
  br i1 %39, label %40, label %119

40:                                               ; preds = %36, %33, %29
  %41 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %17, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !47
  %43 = tail call noundef zeroext i1 @_ZN3pov12Ray_In_BoundEPNS_10Ray_StructEPNS_13Object_StructE(ptr noundef %1, ptr noundef %42) #6
  br i1 %43, label %44, label %119

44:                                               ; preds = %40
  %45 = load ptr, ptr %17, align 8, !tbaa !48
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = tail call noundef i32 %46(ptr noundef nonnull %17, ptr noundef %1, ptr noundef %4) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %119, label %49

49:                                               ; preds = %44
  %50 = tail call noundef ptr @_ZN3pov9pop_entryEPNS_13istack_structE(ptr noundef %4) #6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %119, label %52

52:                                               ; preds = %49, %115
  %53 = phi ptr [ %117, %115 ], [ %50, %49 ]
  %54 = phi i32 [ %116, %115 ], [ %18, %49 ]
  %55 = getelementptr inbounds %"struct.pov::istk_entry", ptr %53, i64 0, i32 1
  %56 = load ptr, ptr %14, align 8, !tbaa !35
  %57 = tail call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %55, ptr noundef %56) #6
  br i1 %57, label %58, label %115

58:                                               ; preds = %52
  %59 = load ptr, ptr %9, align 8, !tbaa !43
  %60 = icmp eq ptr %59, null
  br i1 %60, label %108, label %61

61:                                               ; preds = %58, %99
  %62 = phi ptr [ %102, %99 ], [ %59, %58 ]
  %63 = phi i8 [ %100, %99 ], [ 1, %58 ]
  %64 = icmp eq ptr %17, %62
  br i1 %64, label %99, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %62, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !59
  %68 = and i32 %67, 32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %"struct.pov::Light_Source_Struct", ptr %62, i64 0, i32 14
  %72 = load ptr, ptr %71, align 8, !tbaa !60
  %73 = icmp eq ptr %72, null
  br i1 %73, label %99, label %74

74:                                               ; preds = %70, %65
  %75 = load i32, ptr @_ZN3pov13backtraceFlagE, align 4, !tbaa !44
  %76 = icmp eq i32 %75, 0
  %77 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %62, i64 0, i32 13
  %78 = load i32, ptr %77, align 4, !tbaa !45
  br i1 %76, label %79, label %89

79:                                               ; preds = %74
  %80 = and i32 %78, 32768
  %81 = icmp ne i32 %80, 0
  %82 = load i8, ptr @_ZN3pov17In_Reflection_RayE, align 1, !range !46
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %92, label %85

85:                                               ; preds = %79
  %86 = and i32 %78, 65536
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i1 true, i1 %83
  br i1 %88, label %96, label %92

89:                                               ; preds = %74
  %90 = and i32 %78, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %79, %85, %89
  %93 = and i32 %78, 1
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %8, i1 %94, i1 false
  br i1 %95, label %96, label %99

96:                                               ; preds = %92, %89, %85
  %97 = tail call noundef zeroext i1 @_ZN3pov13Inside_ObjectEPdPNS_13Object_StructE(ptr noundef nonnull %55, ptr noundef nonnull %62) #6
  %98 = select i1 %97, i8 0, i8 %63
  br label %99

99:                                               ; preds = %96, %61, %92, %70
  %100 = phi i8 [ %63, %92 ], [ %63, %70 ], [ %63, %61 ], [ %98, %96 ]
  %101 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %62, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !43
  %103 = icmp ne ptr %102, null
  %104 = and i8 %100, 1
  %105 = icmp ne i8 %104, 0
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %61, label %107, !llvm.loop !87

107:                                              ; preds = %99
  br i1 %105, label %108, label %115

108:                                              ; preds = %58, %107
  %109 = load i32, ptr %15, align 4, !tbaa !45
  %110 = and i32 %109, 256
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %"struct.pov::istk_entry", ptr %53, i64 0, i32 18
  store ptr %0, ptr %113, align 8, !tbaa !53
  br label %114

114:                                              ; preds = %112, %108
  tail call void @_ZN3pov9push_copyEPNS_13istack_structEPNS_10istk_entryE(ptr noundef %2, ptr noundef nonnull %53) #6
  br label %115

115:                                              ; preds = %107, %114, %52
  %116 = phi i32 [ 1, %114 ], [ %54, %107 ], [ %54, %52 ]
  %117 = tail call noundef ptr @_ZN3pov9pop_entryEPNS_13istack_structE(ptr noundef %4) #6
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %52, !llvm.loop !88

119:                                              ; preds = %115, %49, %36, %44, %40
  %120 = phi i32 [ %18, %44 ], [ %18, %40 ], [ %18, %36 ], [ %18, %49 ], [ %116, %115 ]
  %121 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %17, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !43
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %16, !llvm.loop !89

124:                                              ; preds = %119
  tail call void @_ZN3pov12close_istackEPNS_13istack_structE(ptr noundef %4) #6
  %125 = icmp eq i32 %120, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %124
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 25)) #6
  br label %127

127:                                              ; preds = %12, %126, %124
  %128 = phi i32 [ 0, %12 ], [ %120, %126 ], [ 0, %124 ]
  ret i32 %128
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL31All_CSG_Intersect_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !90 {
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 22)) #6
  %4 = tail call noundef ptr @_ZN3pov11open_istackEv() #6
  %5 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @_ZN3pov12close_istackEPNS_13istack_structE(ptr noundef %4) #6
  br label %74

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  br label %12

12:                                               ; preds = %9, %66
  %13 = phi ptr [ %6, %9 ], [ %69, %66 ]
  %14 = phi i32 [ 0, %9 ], [ %67, %66 ]
  %15 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %13, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = tail call noundef zeroext i1 @_ZN3pov12Ray_In_BoundEPNS_10Ray_StructEPNS_13Object_StructE(ptr noundef %1, ptr noundef %16) #6
  br i1 %17, label %18, label %66

18:                                               ; preds = %12
  %19 = load ptr, ptr %13, align 8, !tbaa !48
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = tail call noundef i32 %20(ptr noundef nonnull %13, ptr noundef %1, ptr noundef %4) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %66, label %23

23:                                               ; preds = %18
  %24 = tail call noundef ptr @_ZN3pov9pop_entryEPNS_13istack_structE(ptr noundef %4) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %23, %62
  %27 = phi ptr [ %64, %62 ], [ %24, %23 ]
  %28 = phi i32 [ %63, %62 ], [ %14, %23 ]
  %29 = load ptr, ptr %5, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %"struct.pov::istk_entry", ptr %27, i64 0, i32 1
  br label %33

33:                                               ; preds = %31, %47
  %34 = phi ptr [ %29, %31 ], [ %49, %47 ]
  %35 = icmp eq ptr %34, %13
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %34, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !59
  %39 = and i32 %38, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %"struct.pov::Light_Source_Struct", ptr %34, i64 0, i32 14
  %43 = load ptr, ptr %42, align 8, !tbaa !60
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %36
  %46 = tail call noundef zeroext i1 @_ZN3pov13Inside_ObjectEPdPNS_13Object_StructE(ptr noundef nonnull %32, ptr noundef nonnull %34) #6
  br i1 %46, label %47, label %62

47:                                               ; preds = %33, %45, %41
  %48 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %34, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %33, !llvm.loop !91

51:                                               ; preds = %47, %26
  %52 = getelementptr inbounds %"struct.pov::istk_entry", ptr %27, i64 0, i32 1
  %53 = load ptr, ptr %10, align 8, !tbaa !35
  %54 = tail call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %52, ptr noundef %53) #6
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, ptr %11, align 4, !tbaa !45
  %57 = and i32 %56, 256
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %"struct.pov::istk_entry", ptr %27, i64 0, i32 18
  store ptr %0, ptr %60, align 8, !tbaa !53
  br label %61

61:                                               ; preds = %59, %55
  tail call void @_ZN3pov9push_copyEPNS_13istack_structEPNS_10istk_entryE(ptr noundef %2, ptr noundef nonnull %27) #6
  br label %62

62:                                               ; preds = %45, %51, %61
  %63 = phi i32 [ 1, %61 ], [ %28, %51 ], [ %28, %45 ]
  %64 = tail call noundef ptr @_ZN3pov9pop_entryEPNS_13istack_structE(ptr noundef %4) #6
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %26, !llvm.loop !92

66:                                               ; preds = %62, %23, %12, %18
  %67 = phi i32 [ %14, %18 ], [ %14, %12 ], [ %14, %23 ], [ %63, %62 ]
  %68 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %13, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !43
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %12, !llvm.loop !93

71:                                               ; preds = %66
  tail call void @_ZN3pov12close_istackEPNS_13istack_structE(ptr noundef %4) #6
  %72 = icmp eq i32 %67, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %71
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 23)) #6
  br label %74

74:                                               ; preds = %8, %73, %71
  %75 = phi i32 [ 0, %8 ], [ %67, %73 ], [ 0, %71 ]
  ret i32 %75
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL23Inside_CSG_IntersectionEPdPNS_13Object_StructE(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !94 {
  %3 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2, %18
  %7 = phi ptr [ %20, %18 ], [ %4, %2 ]
  %8 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.pov::Light_Source_Struct", ptr %7, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %6
  %17 = tail call noundef zeroext i1 @_ZN3pov13Inside_ObjectEPdPNS_13Object_StructE(ptr noundef %0, ptr noundef nonnull %7) #6
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %16
  %19 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !llvm.loop !95

22:                                               ; preds = %16, %18, %2
  %23 = phi i32 [ 1, %2 ], [ 1, %18 ], [ 0, %16 ]
  ret i32 %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL23Invert_CSG_IntersectionEPNS_13Object_StructE(ptr nocapture noundef %0) #0 !PGOFuncName !96 {
  store ptr @_ZN3pov17CSG_Merge_MethodsE, ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @_ZN3pov13Invert_ObjectEPNS_13Object_StructE(ptr noundef nonnull %6) #6
  %7 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !97

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = xor i32 %12, 4
  store i32 %13, ptr %11, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov16Create_CSG_UnionEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 136, ptr noundef nonnull @.str, i32 noundef 776, ptr noundef nonnull @.str.1) #6
  %2 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 1
  store i32 4, ptr %2, align 8, !tbaa !98
  store ptr @_ZN3pov17CSG_Union_MethodsE, ptr %1, align 8, !tbaa !99
  %3 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %5, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10) #6
  %6 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 14
  store ptr null, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 15
  store i32 1, ptr %7, align 8, !tbaa !100
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #3 comdat {
  store float %1, ptr %0, align 4, !tbaa !67
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %2, ptr %8, align 4, !tbaa !67
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %3, ptr %9, align 4, !tbaa !67
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1
  store float %4, ptr %10, align 4, !tbaa !67
  %11 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  store float %5, ptr %11, align 4, !tbaa !67
  %12 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 2
  store float %6, ptr %12, align 4, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov16Create_CSG_MergeEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 136, ptr noundef nonnull @.str, i32 noundef 819, ptr noundef nonnull @.str.2) #6
  %2 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 1
  store i32 4, ptr %2, align 8, !tbaa !98
  store ptr @_ZN3pov17CSG_Merge_MethodsE, ptr %1, align 8, !tbaa !99
  %3 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %5, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10) #6
  %6 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 14
  store ptr null, ptr %6, align 8, !tbaa !68
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov23Create_CSG_IntersectionEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 136, ptr noundef nonnull @.str, i32 noundef 860, ptr noundef nonnull @.str.3) #6
  %2 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 1
  store i32 4, ptr %2, align 8, !tbaa !98
  store ptr @_ZN3pov24CSG_Intersection_MethodsE, ptr %1, align 8, !tbaa !99
  %3 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %5, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10) #6
  %6 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 14
  store ptr null, ptr %6, align 8, !tbaa !68
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov16Compute_CSG_BBoxEPNS_13Object_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca double, align 8
  %3 = alloca [3 x double], align 16
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  %9 = load ptr, ptr %0, align 8, !tbaa !48
  %10 = icmp eq ptr %9, @_ZN3pov24CSG_Intersection_MethodsE
  %11 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  br i1 %10, label %12, label %103

12:                                               ; preds = %1
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %3, double noundef -2.000000e+10, double noundef -2.000000e+10, double noundef -2.000000e+10) #6
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %4, double noundef 2.000000e+10, double noundef 2.000000e+10, double noundef 2.000000e+10) #6
  %13 = load ptr, ptr %11, align 8, !tbaa !43
  %14 = icmp eq ptr %13, null
  br i1 %14, label %133, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %17 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %18 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %19 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %20 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %21 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %22 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %23 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  br label %36

24:                                               ; preds = %74
  %25 = icmp sgt i32 %75, 0
  br i1 %25, label %26, label %100

26:                                               ; preds = %24
  %27 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %28 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %29 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %30 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %31 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %32 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %33 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %34 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %35 = zext nneg i32 %75 to i64
  br label %80

36:                                               ; preds = %15, %74
  %37 = phi ptr [ %13, %15 ], [ %78, %74 ]
  %38 = phi ptr [ null, %15 ], [ %76, %74 ]
  %39 = phi i32 [ 0, %15 ], [ %75, %74 ]
  %40 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %37, i64 0, i32 13
  %41 = load i32, ptr %40, align 4, !tbaa !45
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %36
  %45 = load ptr, ptr %37, align 8, !tbaa !48
  %46 = icmp eq ptr %45, @_ZN3pov14HField_MethodsE
  br i1 %46, label %74, label %47

47:                                               ; preds = %44
  %48 = icmp eq ptr %45, @_ZN3pov15Quadric_MethodsE
  br i1 %48, label %49, label %56

49:                                               ; preds = %47
  %50 = add nsw i32 %39, 1
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 3
  %53 = call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %38, i64 noundef %52, ptr noundef nonnull @.str, i32 noundef 1031, ptr noundef nonnull @.str.4) #6
  %54 = sext i32 %39 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  store ptr %37, ptr %55, align 8, !tbaa !43
  br label %74

56:                                               ; preds = %47
  %57 = icmp eq ptr %45, @_ZN3pov13Plane_MethodsE
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  call void @_ZN3pov21Compute_Plane_Min_MaxEPNS_12Plane_StructEPdS2_(ptr noundef nonnull %37, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  br label %61

59:                                               ; preds = %56
  %60 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %37, i64 0, i32 9
  call void @_ZN3pov22Make_min_max_from_BBoxERA3_dS1_NS_19Bounding_Box_StructE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull byval(%"struct.pov::Bounding_Box_Struct") align 8 %60) #6
  br label %61

61:                                               ; preds = %59, %58
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  %63 = load double, ptr %62, align 8, !tbaa !101
  store double %63, ptr %3, align 16, !tbaa !101
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17) #6
  %65 = load double, ptr %64, align 8, !tbaa !101
  store double %65, ptr %16, align 8, !tbaa !101
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19) #6
  %67 = load double, ptr %66, align 8, !tbaa !101
  store double %67, ptr %18, align 16, !tbaa !101
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  %69 = load double, ptr %68, align 8, !tbaa !101
  store double %69, ptr %4, align 16, !tbaa !101
  %70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %21) #6
  %71 = load double, ptr %70, align 8, !tbaa !101
  store double %71, ptr %20, align 8, !tbaa !101
  %72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %23) #6
  %73 = load double, ptr %72, align 8, !tbaa !101
  store double %73, ptr %22, align 16, !tbaa !101
  br label %74

74:                                               ; preds = %36, %44, %61, %49
  %75 = phi i32 [ %39, %36 ], [ %50, %49 ], [ %39, %61 ], [ %39, %44 ]
  %76 = phi ptr [ %38, %36 ], [ %53, %49 ], [ %38, %61 ], [ %38, %44 ]
  %77 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %37, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !43
  %79 = icmp eq ptr %78, null
  br i1 %79, label %24, label %36, !llvm.loop !102

80:                                               ; preds = %26, %80
  %81 = phi i64 [ 0, %26 ], [ %98, %80 ]
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %7, ptr noundef nonnull %3) #6
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %8, ptr noundef nonnull %4) #6
  %82 = getelementptr inbounds ptr, ptr %76, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !43
  call void @_ZN3pov20Compute_Quadric_BBoxEPNS_14Quadric_StructEPdS2_(ptr noundef %83, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %84 = load ptr, ptr %82, align 8, !tbaa !43
  %85 = getelementptr inbounds %"struct.pov::Quadric_Struct", ptr %84, i64 0, i32 9
  call void @_ZN3pov22Make_min_max_from_BBoxERA3_dS1_NS_19Bounding_Box_StructE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull byval(%"struct.pov::Bounding_Box_Struct") align 8 %85) #6
  %86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  %87 = load double, ptr %86, align 8, !tbaa !101
  store double %87, ptr %3, align 16, !tbaa !101
  %88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %28) #6
  %89 = load double, ptr %88, align 8, !tbaa !101
  store double %89, ptr %27, align 8, !tbaa !101
  %90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %30) #6
  %91 = load double, ptr %90, align 8, !tbaa !101
  store double %91, ptr %29, align 16, !tbaa !101
  %92 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  %93 = load double, ptr %92, align 8, !tbaa !101
  store double %93, ptr %4, align 16, !tbaa !101
  %94 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %32) #6
  %95 = load double, ptr %94, align 8, !tbaa !101
  store double %95, ptr %31, align 8, !tbaa !101
  %96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %34) #6
  %97 = load double, ptr %96, align 8, !tbaa !101
  store double %97, ptr %33, align 16, !tbaa !101
  %98 = add nuw nsw i64 %81, 1
  %99 = icmp eq i64 %98, %35
  br i1 %99, label %100, label %80, !llvm.loop !103

100:                                              ; preds = %80, %24
  %101 = icmp eq ptr %76, null
  br i1 %101, label %133, label %102

102:                                              ; preds = %100
  call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %76, ptr noundef nonnull @.str, i32 noundef 1077) #6
  br label %133

103:                                              ; preds = %1
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %3, double noundef 2.000000e+10, double noundef 2.000000e+10, double noundef 2.000000e+10) #6
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %4, double noundef -2.000000e+10, double noundef -2.000000e+10, double noundef -2.000000e+10) #6
  %104 = load ptr, ptr %11, align 8, !tbaa !43
  %105 = icmp eq ptr %104, null
  br i1 %105, label %133, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %108 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %109 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %110 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %111 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %112 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %113 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %114 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  br label %115

115:                                              ; preds = %106, %115
  %116 = phi ptr [ %104, %106 ], [ %131, %115 ]
  %117 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %116, i64 0, i32 9
  call void @_ZN3pov22Make_min_max_from_BBoxERA3_dS1_NS_19Bounding_Box_StructE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull byval(%"struct.pov::Bounding_Box_Struct") align 8 %117) #6
  %118 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  %119 = load double, ptr %118, align 8, !tbaa !101
  store double %119, ptr %3, align 16, !tbaa !101
  %120 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %107, ptr noundef nonnull align 8 dereferenceable(8) %108) #6
  %121 = load double, ptr %120, align 8, !tbaa !101
  store double %121, ptr %107, align 8, !tbaa !101
  %122 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %109, ptr noundef nonnull align 8 dereferenceable(8) %110) #6
  %123 = load double, ptr %122, align 8, !tbaa !101
  store double %123, ptr %109, align 16, !tbaa !101
  %124 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  %125 = load double, ptr %124, align 8, !tbaa !101
  store double %125, ptr %4, align 16, !tbaa !101
  %126 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %111, ptr noundef nonnull align 8 dereferenceable(8) %112) #6
  %127 = load double, ptr %126, align 8, !tbaa !101
  store double %127, ptr %111, align 8, !tbaa !101
  %128 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull align 8 dereferenceable(8) %114) #6
  %129 = load double, ptr %128, align 8, !tbaa !101
  store double %129, ptr %113, align 16, !tbaa !101
  %130 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %116, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !43
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %115, !llvm.loop !104

133:                                              ; preds = %115, %12, %103, %100, %102
  %134 = load double, ptr %3, align 16, !tbaa !101
  %135 = load double, ptr %4, align 16, !tbaa !101
  %136 = fcmp ogt double %134, %135
  br i1 %136, label %149, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %139 = load double, ptr %138, align 8, !tbaa !101
  %140 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %141 = load double, ptr %140, align 8, !tbaa !101
  %142 = fcmp ogt double %139, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %145 = load double, ptr %144, align 16, !tbaa !101
  %146 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %147 = load double, ptr %146, align 16, !tbaa !101
  %148 = fcmp ogt double %145, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %143, %137, %133
  %150 = call noundef i32 (i32, ptr, ...) @_ZN3pov7WarningEjPKcz(i32 noundef 0, ptr noundef nonnull @.str.5) #6
  br label %173

151:                                              ; preds = %143
  %152 = fsub double %135, %134
  %153 = fsub double %141, %139
  %154 = fmul double %152, %153
  %155 = fsub double %147, %145
  %156 = fmul double %154, %155
  %157 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  call void @_ZN3pov13BOUNDS_VOLUMEERdRKNS_19Bounding_Box_StructE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(24) %157) #6
  %158 = load double, ptr %2, align 8, !tbaa !101
  %159 = fcmp olt double %156, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %151
  call void @_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_(ptr noundef nonnull align 4 dereferenceable(24) %157, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %161 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9, i32 1
  %162 = load float, ptr %161, align 4, !tbaa !67
  %163 = fcmp ogt float %162, 1.000000e+06
  br i1 %163, label %172, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !67
  %167 = fcmp ogt float %166, 1.000000e+06
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  %170 = load float, ptr %169, align 4, !tbaa !67
  %171 = fcmp ogt float %170, 1.000000e+06
  br i1 %171, label %172, label %173

172:                                              ; preds = %168, %164, %160
  call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %157, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10) #6
  br label %173

173:                                              ; preds = %151, %172, %168, %149
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 comdat {
  store double %1, ptr %0, align 8, !tbaa !101
  %5 = getelementptr inbounds double, ptr %0, i64 1
  store double %2, ptr %5, align 8, !tbaa !101
  %6 = getelementptr inbounds double, ptr %0, i64 2
  store double %3, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov21Compute_Plane_Min_MaxEPNS_12Plane_StructEPdS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov22Make_min_max_from_BBoxERA3_dS1_NS_19Bounding_Box_StructE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef byval(%"struct.pov::Bounding_Box_Struct") align 8 %2) local_unnamed_addr #3 comdat {
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  %5 = load <2 x float>, ptr %2, align 8, !tbaa !67
  %6 = fpext <2 x float> %5 to <2 x double>
  store <2 x double> %6, ptr %0, align 8, !tbaa !101
  %7 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %8 = load float, ptr %7, align 8, !tbaa !67
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  store double %9, ptr %10, align 8, !tbaa !101
  %11 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !67
  %13 = fpext float %12 to double
  %14 = extractelement <2 x double> %6, i64 0
  %15 = fadd double %14, %13
  store double %15, ptr %1, align 8, !tbaa !101
  %16 = load double, ptr %4, align 8, !tbaa !101
  %17 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1, i64 1
  %18 = load float, ptr %17, align 8, !tbaa !67
  %19 = fpext float %18 to double
  %20 = fadd double %16, %19
  %21 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  store double %20, ptr %21, align 8, !tbaa !101
  %22 = load double, ptr %10, align 8, !tbaa !101
  %23 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %2, i64 0, i32 1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !67
  %25 = fpext float %24 to double
  %26 = fadd double %22, %25
  %27 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  store double %26, ptr %27, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %0, align 8, !tbaa !101
  %4 = load double, ptr %1, align 8, !tbaa !101
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !101
  %4 = load double, ptr %0, align 8, !tbaa !101
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !101
  store double %3, ptr %0, align 8, !tbaa !101
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !101
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !101
  %7 = getelementptr inbounds double, ptr %1, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !101
  %9 = getelementptr inbounds double, ptr %0, i64 2
  store double %8, ptr %9, align 8, !tbaa !101
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov20Compute_Quadric_BBoxEPNS_14Quadric_StructEPdS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN3pov7WarningEjPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13BOUNDS_VOLUMEERdRKNS_19Bounding_Box_StructE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #3 comdat {
  %3 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %1, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !67
  %5 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %1, i64 0, i32 1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !67
  %7 = fmul float %4, %6
  %8 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %1, i64 0, i32 1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !67
  %10 = fmul float %7, %9
  %11 = fpext float %10 to double
  store double %11, ptr %0, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !101
  %5 = getelementptr inbounds double, ptr %1, i64 1
  %6 = load double, ptr %2, align 8, !tbaa !101
  %7 = fsub double %6, %4
  %8 = insertelement <4 x double> poison, double %4, i64 0
  %9 = getelementptr inbounds double, ptr %2, i64 1
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  %11 = load <2 x double>, ptr %5, align 8, !tbaa !101
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x double> %8, <4 x double> %12, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %14 = insertelement <4 x double> %13, double %7, i64 3
  %15 = fptrunc <4 x double> %14 to <4 x float>
  store <4 x float> %15, ptr %0, align 4, !tbaa !67
  %16 = load <2 x double>, ptr %9, align 8, !tbaa !101
  %17 = fsub <2 x double> %16, %11
  %18 = fptrunc <2 x double> %17 to <2 x float>
  store <2 x float> %18, ptr %10, align 4, !tbaa !67
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov22Determine_CSG_TexturesEPNS_10CSG_StructEPdPiPPNS_14Texture_StructES2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %3, ptr %6, align 8, !tbaa !43
  store ptr %4, ptr %7, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %2, align 4, !tbaa !44
  tail call fastcc void @_ZN3povL17Find_CSG_TexturesEPNS_10CSG_StructEPdPiPPNS_14Texture_StructE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null) #6
  %9 = load i32, ptr %2, align 4, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.6) #6
  %13 = load i32, ptr %2, align 4, !tbaa !44
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i32 [ %13, %11 ], [ %9, %5 ]
  call void @_ZN3pov26Reinitialize_Lighting_CodeEiPPPNS_14Texture_StructEPPd(i32 noundef %15, ptr noundef nonnull %6, ptr noundef nonnull %7) #6
  %16 = load i32, ptr %2, align 4, !tbaa !44
  %17 = sitofp i32 %16 to double
  %18 = fdiv double 1.000000e+00, %17
  store i32 0, ptr %8, align 4, !tbaa !44
  %19 = load ptr, ptr %6, align 8, !tbaa !43
  call fastcc void @_ZN3povL17Find_CSG_TexturesEPNS_10CSG_StructEPdPiPPNS_14Texture_StructE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef %19) #6
  %20 = load i32, ptr %2, align 4, !tbaa !44
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %14
  %23 = load ptr, ptr %7, align 8, !tbaa !43
  %24 = zext nneg i32 %20 to i64
  %25 = add nuw nsw i64 %24, 1
  %26 = and i64 %25, 4294967294
  %27 = add nsw i64 %24, -1
  %28 = insertelement <2 x i64> poison, i64 %27, i64 0
  %29 = shufflevector <2 x i64> %28, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %30

30:                                               ; preds = %42, %22
  %31 = phi i64 [ 0, %22 ], [ %43, %42 ]
  %32 = phi <2 x i64> [ <i64 0, i64 1>, %22 ], [ %44, %42 ]
  %33 = icmp ule <2 x i64> %32, %29
  %34 = extractelement <2 x i1> %33, i64 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = getelementptr inbounds double, ptr %23, i64 %31
  store double %18, ptr %36, align 8, !tbaa !101
  br label %37

37:                                               ; preds = %35, %30
  %38 = extractelement <2 x i1> %33, i64 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = or disjoint i64 %31, 1
  %41 = getelementptr inbounds double, ptr %23, i64 %40
  store double %18, ptr %41, align 8, !tbaa !101
  br label %42

42:                                               ; preds = %39, %37
  %43 = add i64 %31, 2
  %44 = add <2 x i64> %32, <i64 2, i64 2>
  %45 = icmp eq i64 %43, %26
  br i1 %45, label %46, label %30, !llvm.loop !105

46:                                               ; preds = %42, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL17Find_CSG_TexturesEPNS_10CSG_StructEPdPiPPNS_14Texture_StructE(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !108 {
  %5 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 1
  %10 = icmp eq ptr %3, null
  br label %11

11:                                               ; preds = %8, %39
  %12 = phi ptr [ %6, %8 ], [ %41, %39 ]
  %13 = load i32, ptr %9, align 8, !tbaa !98
  %14 = and i32 %13, 8192
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %16, %11
  %21 = tail call noundef zeroext i1 @_ZN3pov13Inside_ObjectEPdPNS_13Object_StructE(ptr noundef %1, ptr noundef nonnull %12) #6
  br i1 %21, label %22, label %39

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %12, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !59
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call fastcc void @_ZN3povL17Find_CSG_TexturesEPNS_10CSG_StructEPdPiPPNS_14Texture_StructE(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  br label %39

28:                                               ; preds = %22
  %29 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %12, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !109
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %2, align 4, !tbaa !44
  br i1 %10, label %37, label %34

34:                                               ; preds = %32
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds ptr, ptr %3, i64 %35
  store ptr %30, ptr %36, align 8, !tbaa !43
  br label %37

37:                                               ; preds = %34, %32
  %38 = add nsw i32 %33, 1
  store i32 %38, ptr %2, align 4, !tbaa !44
  br label %39

39:                                               ; preds = %16, %27, %37, %28, %20
  %40 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %12, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %11, !llvm.loop !110

43:                                               ; preds = %39, %4
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov26Reinitialize_Lighting_CodeEiPPPNS_14Texture_StructEPPd(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat {
  %2 = load i64, ptr %0, align 8, !tbaa !111
  %3 = add nsw i64 %2, 1
  store i64 %3, ptr %0, align 8, !tbaa !111
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN3pov12Ray_In_BoundEPNS_10Ray_StructEPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN3pov11open_istackEv() local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN3pov9pop_entryEPNS_13istack_structE(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !113
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = add i32 %3, -1
  store i32 %8, ptr %2, align 4, !tbaa !113
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %"struct.pov::istk_entry", ptr %7, i64 %9
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi ptr [ %10, %5 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov9push_copyEPNS_13istack_structEPNS_10istk_entryE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %0) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 200, i1 false), !tbaa.struct !116
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %0) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov12close_istackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !113
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %"struct.pov::istk_entry", ptr %3, i64 %6
  ret ptr %7
}

; Function Attrs: optsize
declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN3pov13Inside_ObjectEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov16Translate_ObjectEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov13Rotate_ObjectEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov12Scale_ObjectEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov16Transform_ObjectEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov13Invert_ObjectEPNS_13Object_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN3pov11Copy_ObjectEPNS_13Object_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov20Promote_Local_LightsEPNS_10CSG_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov14Destroy_ObjectEPNS_13Object_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { optsize }
attributes #7 = { nounwind }

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
!34 = !{!"csg.cpp:_ZN3povL27All_CSG_Union_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE"}
!35 = !{!36, !37, i64 56}
!36 = !{!"_ZTSN3pov13Object_StructE", !37, i64 0, !40, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !41, i64 72, !37, i64 96, !37, i64 104, !42, i64 112, !40, i64 116}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"_ZTSN3pov19Bounding_Box_StructE", !38, i64 0, !38, i64 12}
!42 = !{!"float", !38, i64 0}
!43 = !{!37, !37, i64 0}
!44 = !{!40, !40, i64 0}
!45 = !{!36, !40, i64 116}
!46 = !{i8 0, i8 2}
!47 = !{!36, !37, i64 48}
!48 = !{!36, !37, i64 0}
!49 = !{!50, !37, i64 0}
!50 = !{!"_ZTSN3pov13Method_StructE", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!54, !37, i64 192}
!54 = !{!"_ZTSN3pov10istk_entryE", !55, i64 0, !38, i64 8, !38, i64 32, !38, i64 56, !38, i64 80, !37, i64 96, !40, i64 104, !40, i64 108, !55, i64 112, !55, i64 120, !55, i64 128, !55, i64 136, !55, i64 144, !55, i64 152, !55, i64 160, !55, i64 168, !55, i64 176, !37, i64 184, !37, i64 192}
!55 = !{!"double", !38, i64 0}
!56 = distinct !{!56, !52}
!57 = distinct !{!57, !52}
!58 = !{!"csg.cpp:_ZN3povL16Inside_CSG_UnionEPdPNS_13Object_StructE"}
!59 = !{!36, !40, i64 8}
!60 = !{!61, !37, i64 120}
!61 = !{!"_ZTSN3pov19Light_Source_StructE", !37, i64 0, !40, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !41, i64 72, !37, i64 96, !37, i64 104, !42, i64 112, !40, i64 116, !37, i64 120, !38, i64 128, !38, i64 152, !38, i64 176, !38, i64 200, !38, i64 224, !38, i64 248, !55, i64 272, !55, i64 280, !55, i64 288, !55, i64 296, !55, i64 304, !37, i64 312, !38, i64 320, !38, i64 321, !38, i64 322, !62, i64 323, !62, i64 324, !38, i64 325, !38, i64 326, !38, i64 327, !40, i64 328, !40, i64 332, !40, i64 336, !40, i64 340, !40, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !38, i64 384}
!62 = !{!"bool", !38, i64 0}
!63 = distinct !{!63, !52}
!64 = !{!"csg.cpp:_ZN3povL8Copy_CSGEPNS_13Object_StructE"}
!65 = !{i64 0, i64 8, !43, i64 8, i64 4, !44, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 8, !43, i64 40, i64 8, !43, i64 48, i64 8, !43, i64 56, i64 8, !43, i64 64, i64 8, !43, i64 72, i64 12, !66, i64 84, i64 12, !66, i64 96, i64 8, !43, i64 104, i64 8, !43, i64 112, i64 4, !67, i64 116, i64 4, !44, i64 120, i64 8, !43, i64 128, i64 4, !44}
!66 = !{!38, !38, i64 0}
!67 = !{!42, !42, i64 0}
!68 = !{!69, !37, i64 120}
!69 = !{!"_ZTSN3pov10CSG_StructE", !37, i64 0, !40, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !41, i64 72, !37, i64 96, !37, i64 104, !42, i64 112, !40, i64 116, !37, i64 120, !40, i64 128}
!70 = !{!36, !37, i64 16}
!71 = distinct !{!71, !52}
!72 = !{!69, !37, i64 64}
!73 = !{!"csg.cpp:_ZN3povL13Translate_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!74 = distinct !{!74, !52}
!75 = !{!"csg.cpp:_ZN3povL10Rotate_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!76 = distinct !{!76, !52}
!77 = !{!"csg.cpp:_ZN3povL9Scale_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!78 = distinct !{!78, !52}
!79 = !{!"csg.cpp:_ZN3povL13Transform_CSGEPNS_13Object_StructEPNS_16Transform_StructE"}
!80 = distinct !{!80, !52}
!81 = !{!"csg.cpp:_ZN3povL16Invert_CSG_UnionEPNS_13Object_StructE"}
!82 = distinct !{!82, !52}
!83 = !{!"csg.cpp:_ZN3povL11Destroy_CSGEPNS_13Object_StructE"}
!84 = !{!"csg.cpp:_ZN3povL27All_CSG_Merge_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE"}
!85 = !{!86, !40, i64 52}
!86 = !{!"_ZTSN3pov10Ray_StructE", !38, i64 0, !38, i64 24, !40, i64 48, !40, i64 52, !38, i64 56}
!87 = distinct !{!87, !52}
!88 = distinct !{!88, !52}
!89 = distinct !{!89, !52}
!90 = !{!"csg.cpp:_ZN3povL31All_CSG_Intersect_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE"}
!91 = distinct !{!91, !52}
!92 = distinct !{!92, !52}
!93 = distinct !{!93, !52}
!94 = !{!"csg.cpp:_ZN3povL23Inside_CSG_IntersectionEPdPNS_13Object_StructE"}
!95 = distinct !{!95, !52}
!96 = !{!"csg.cpp:_ZN3povL23Invert_CSG_IntersectionEPNS_13Object_StructE"}
!97 = distinct !{!97, !52}
!98 = !{!69, !40, i64 8}
!99 = !{!69, !37, i64 0}
!100 = !{!69, !40, i64 128}
!101 = !{!55, !55, i64 0}
!102 = distinct !{!102, !52}
!103 = distinct !{!103, !52}
!104 = distinct !{!104, !52}
!105 = distinct !{!105, !52, !106, !107}
!106 = !{!"llvm.loop.isvectorized", i32 1}
!107 = !{!"llvm.loop.unroll.runtime.disable"}
!108 = !{!"csg.cpp:_ZN3povL17Find_CSG_TexturesEPNS_10CSG_StructEPdPiPPNS_14Texture_StructE"}
!109 = !{!36, !37, i64 24}
!110 = distinct !{!110, !52}
!111 = !{!112, !112, i64 0}
!112 = !{!"long long", !38, i64 0}
!113 = !{!114, !40, i64 20}
!114 = !{!"_ZTSN3pov13istack_structE", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20}
!115 = !{!114, !37, i64 8}
!116 = !{i64 0, i64 8, !101, i64 8, i64 24, !66, i64 32, i64 24, !66, i64 56, i64 24, !66, i64 80, i64 16, !66, i64 96, i64 8, !43, i64 104, i64 4, !44, i64 108, i64 4, !44, i64 112, i64 8, !101, i64 120, i64 8, !101, i64 128, i64 8, !101, i64 136, i64 8, !101, i64 144, i64 8, !101, i64 152, i64 8, !101, i64 160, i64 8, !101, i64 168, i64 8, !101, i64 176, i64 8, !101, i64 184, i64 8, !43, i64 192, i64 8, !43}
