; ModuleID = 'csg.cpp'
source_filename = "csg.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Method_Struct" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::Object_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32 }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%"struct.pov::CSG_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, ptr, i32 }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }
%"struct.pov::Light_Source_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, ptr, [5 x float], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], double, double, double, double, double, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [6 x ptr] }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::Quadric_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, [3 x double], [3 x double], [3 x double], double, i8 }

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
@_ZN3pov5statsE = external local_unnamed_addr global [123 x i64], align 16
@_ZN3pov13backtraceFlagE = external local_unnamed_addr global i32, align 4
@_ZN3pov20Performing_SDL_TraceE = external local_unnamed_addr global i8, align 1
@_ZN3pov17In_Reflection_RayE = external local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"csg\00", align 1

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL27All_CSG_Union_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 26), align 16, !tbaa !34
  %5 = add nsw i64 %4, 1
  store i64 %5, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 26), align 16, !tbaa !34
  %6 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %54

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %134, label %13

13:                                               ; preds = %9, %49
  %14 = phi ptr [ %52, %49 ], [ %11, %9 ]
  %15 = phi i32 [ %50, %49 ], [ 0, %9 ]
  %16 = load i32, ptr @_ZN3pov13backtraceFlagE, align 4, !tbaa !45
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %14, i64 0, i32 13
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = and i32 %20, 32768
  %22 = icmp ne i32 %21, 0
  %23 = load i8, ptr @_ZN3pov20Performing_SDL_TraceE, align 1, !range !47
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  %26 = load i8, ptr @_ZN3pov17In_Reflection_RayE, align 1, !range !47
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %33, label %29

29:                                               ; preds = %18
  %30 = and i32 %20, 65536
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i1 true, i1 %27
  br i1 %32, label %39, label %33

33:                                               ; preds = %29, %18
  br i1 %17, label %49, label %34

34:                                               ; preds = %13, %33
  %35 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %14, i64 0, i32 13
  %36 = load i32, ptr %35, align 4, !tbaa !46
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34, %29
  %40 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %14, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  %42 = tail call noundef zeroext i1 @_ZN3pov12Ray_In_BoundEPNS_10Ray_StructEPNS_13Object_StructE(ptr noundef %1, ptr noundef %41)
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load ptr, ptr %14, align 8, !tbaa !49
  %45 = load ptr, ptr %44, align 8, !tbaa !50
  %46 = tail call noundef i32 %45(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %2)
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 %15, i32 1
  br label %49

49:                                               ; preds = %43, %33, %34, %39
  %50 = phi i32 [ %15, %34 ], [ %15, %39 ], [ %15, %33 ], [ %48, %43 ]
  %51 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %14, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !44
  %53 = icmp eq ptr %52, null
  br i1 %53, label %134, label %13, !llvm.loop !52

54:                                               ; preds = %3
  %55 = tail call noundef ptr @_ZN3pov11open_istackEv()
  %56 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %57 = load ptr, ptr %56, align 8, !tbaa !44
  %58 = icmp eq ptr %57, null
  br i1 %58, label %132, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %"struct.pov::istack_struct", ptr %55, i64 0, i32 3
  %61 = getelementptr inbounds %"struct.pov::istack_struct", ptr %55, i64 0, i32 1
  %62 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %63 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 1
  %64 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 3
  br label %65

65:                                               ; preds = %59, %127
  %66 = phi ptr [ %57, %59 ], [ %130, %127 ]
  %67 = phi i32 [ 0, %59 ], [ %128, %127 ]
  %68 = load i32, ptr @_ZN3pov13backtraceFlagE, align 4, !tbaa !45
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %66, i64 0, i32 13
  %72 = load i32, ptr %71, align 4, !tbaa !46
  %73 = and i32 %72, 32768
  %74 = icmp ne i32 %73, 0
  %75 = load i8, ptr @_ZN3pov20Performing_SDL_TraceE, align 1, !range !47
  %76 = icmp eq i8 %75, 0
  %77 = select i1 %74, i1 %76, i1 false
  %78 = load i8, ptr @_ZN3pov17In_Reflection_RayE, align 1, !range !47
  %79 = icmp eq i8 %78, 0
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %85, label %81

81:                                               ; preds = %70
  %82 = and i32 %72, 65536
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i1 true, i1 %79
  br i1 %84, label %91, label %85

85:                                               ; preds = %81, %70
  br i1 %69, label %127, label %86

86:                                               ; preds = %65, %85
  %87 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %66, i64 0, i32 13
  %88 = load i32, ptr %87, align 4, !tbaa !46
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %127

91:                                               ; preds = %86, %81
  %92 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %66, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !48
  %94 = tail call noundef zeroext i1 @_ZN3pov12Ray_In_BoundEPNS_10Ray_StructEPNS_13Object_StructE(ptr noundef %1, ptr noundef %93)
  br i1 %94, label %95, label %127

95:                                               ; preds = %91
  %96 = load ptr, ptr %66, align 8, !tbaa !49
  %97 = load ptr, ptr %96, align 8, !tbaa !50
  %98 = tail call noundef i32 %97(ptr noundef nonnull %66, ptr noundef %1, ptr noundef %55)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %127, label %100

100:                                              ; preds = %95, %122
  %101 = phi i32 [ 1, %122 ], [ %67, %95 ]
  br label %102

102:                                              ; preds = %100, %113
  %103 = load i32, ptr %60, align 4, !tbaa !55
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %61, align 8, !tbaa !57
  %107 = add i32 %103, -1
  store i32 %107, ptr %60, align 4, !tbaa !55
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %"struct.pov::istk_entry", ptr %106, i64 %108
  br label %110

110:                                              ; preds = %102, %105
  %111 = phi ptr [ %109, %105 ], [ null, %102 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %127, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %"struct.pov::istk_entry", ptr %111, i64 0, i32 1
  %115 = tail call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %114, ptr noundef nonnull %7)
  br i1 %115, label %116, label %102, !llvm.loop !58

116:                                              ; preds = %113
  %117 = load i32, ptr %62, align 4, !tbaa !46
  %118 = and i32 %117, 256
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %"struct.pov::istk_entry", ptr %111, i64 0, i32 18
  store ptr %0, ptr %121, align 8, !tbaa !59
  br label %122

122:                                              ; preds = %120, %116
  %123 = load ptr, ptr %63, align 8, !tbaa !57
  %124 = load i32, ptr %64, align 4, !tbaa !55
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %"struct.pov::istk_entry", ptr %123, i64 %125
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %126, ptr noundef nonnull align 8 dereferenceable(200) %111, i64 200, i1 false), !tbaa.struct !62
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %2)
  br label %100, !llvm.loop !58

127:                                              ; preds = %110, %85, %86, %95, %91
  %128 = phi i32 [ %67, %86 ], [ %67, %95 ], [ %67, %91 ], [ %67, %85 ], [ %101, %110 ]
  %129 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %66, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !44
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %65, !llvm.loop !65

132:                                              ; preds = %127, %54
  %133 = phi i32 [ 0, %54 ], [ %128, %127 ]
  tail call void @_ZN3pov12close_istackEPNS_13istack_structE(ptr noundef %55)
  br label %134

134:                                              ; preds = %49, %9, %132
  %135 = phi i32 [ %133, %132 ], [ 0, %9 ], [ %50, %49 ]
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 27), align 8, !tbaa !34
  %139 = add nsw i64 %138, 1
  store i64 %139, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 27), align 8, !tbaa !34
  br label %140

140:                                              ; preds = %137, %134
  ret i32 %135
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL16Inside_CSG_UnionEPdPNS_13Object_StructE(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2, %18
  %7 = phi ptr [ %20, %18 ], [ %4, %2 ]
  %8 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.pov::Light_Source_Struct", ptr %7, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %6
  %17 = tail call noundef zeroext i1 @_ZN3pov13Inside_ObjectEPdPNS_13Object_StructE(ptr noundef %0, ptr noundef nonnull %7)
  br i1 %17, label %22, label %18

18:                                               ; preds = %12, %16
  %19 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !llvm.loop !70

22:                                               ; preds = %16, %18, %2
  %23 = phi i32 [ 0, %2 ], [ 1, %16 ], [ 0, %18 ]
  ret i32 %23
}

declare void @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN3povL8Copy_CSGEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 136, ptr noundef nonnull @.str, i32 noundef 902, ptr noundef nonnull @.str.7)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) %0, i64 136, i1 false), !tbaa.struct !71
  %3 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %2, i64 0, i32 14
  store ptr null, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1, %18
  %8 = phi ptr [ %20, %18 ], [ %5, %1 ]
  %9 = phi ptr [ %10, %18 ], [ null, %1 ]
  %10 = tail call noundef ptr @_ZN3pov11Copy_ObjectEPNS_13Object_StructE(ptr noundef nonnull %8)
  %11 = load ptr, ptr %3, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store ptr %10, ptr %3, align 8, !tbaa !73
  br label %14

14:                                               ; preds = %13, %7
  %15 = icmp eq ptr %9, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %9, i64 0, i32 2
  store ptr %10, ptr %17, align 8, !tbaa !75
  br label %18

18:                                               ; preds = %16, %14
  %19 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %8, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7, !llvm.loop !76

22:                                               ; preds = %18, %1
  %23 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !66
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %2, i64 0, i32 8
  store ptr null, ptr %28, align 8, !tbaa !77
  tail call void @_ZN3pov20Promote_Local_LightsEPNS_10CSG_StructE(ptr noundef %2)
  br label %29

29:                                               ; preds = %27, %22
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL13Translate_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %3 ]
  tail call void @_ZN3pov16Translate_ObjectEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2)
  %9 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !78

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %13, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL10Rotate_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %3 ]
  tail call void @_ZN3pov13Rotate_ObjectEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2)
  %9 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !79

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %13, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL9Scale_CSGEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %3 ]
  tail call void @_ZN3pov12Scale_ObjectEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2)
  %9 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !80

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %13, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL13Transform_CSGEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %2 ]
  tail call void @_ZN3pov16Transform_ObjectEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef nonnull %7, ptr noundef %1)
  %8 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !81

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %12, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL16Invert_CSG_UnionEPNS_13Object_StructE(ptr nocapture noundef %0) #0 {
  store ptr @_ZN3pov24CSG_Intersection_MethodsE, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @_ZN3pov13Invert_ObjectEPNS_13Object_StructE(ptr noundef nonnull %6)
  %7 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !82

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !46
  %13 = xor i32 %12, 4
  store i32 %13, ptr %11, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL11Destroy_CSGEPNS_13Object_StructE(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  tail call void @_ZN3pov14Destroy_ObjectEPNS_13Object_StructE(ptr noundef %3)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 966)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL27All_CSG_Merge_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 24), align 16, !tbaa !34
  %5 = add nsw i64 %4, 1
  store i64 %5, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 24), align 16, !tbaa !34
  %6 = tail call noundef ptr @_ZN3pov11open_istackEv()
  %7 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !83
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %148, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"struct.pov::istack_struct", ptr %6, i64 0, i32 3
  %16 = getelementptr inbounds %"struct.pov::istack_struct", ptr %6, i64 0, i32 1
  %17 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %18 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %19 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 1
  %20 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 3
  br label %21

21:                                               ; preds = %14, %143
  %22 = phi ptr [ %12, %14 ], [ %146, %143 ]
  %23 = phi i32 [ 0, %14 ], [ %144, %143 ]
  %24 = load i32, ptr @_ZN3pov13backtraceFlagE, align 4, !tbaa !45
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %22, i64 0, i32 13
  %28 = load i32, ptr %27, align 4, !tbaa !46
  %29 = and i32 %28, 32768
  %30 = icmp ne i32 %29, 0
  %31 = load i8, ptr @_ZN3pov17In_Reflection_RayE, align 1, !range !47
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = and i32 %28, 65536
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i1 true, i1 %32
  br i1 %37, label %50, label %38

38:                                               ; preds = %34, %26
  br i1 %25, label %44, label %39

39:                                               ; preds = %21, %38
  %40 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %22, i64 0, i32 13
  %41 = load i32, ptr %40, align 4, !tbaa !46
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39, %38
  br i1 %10, label %143, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %22, i64 0, i32 13
  %47 = load i32, ptr %46, align 4, !tbaa !46
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %143

50:                                               ; preds = %45, %39, %34
  %51 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %22, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !48
  %53 = tail call noundef zeroext i1 @_ZN3pov12Ray_In_BoundEPNS_10Ray_StructEPNS_13Object_StructE(ptr noundef %1, ptr noundef %52)
  br i1 %53, label %54, label %143

54:                                               ; preds = %50
  %55 = load ptr, ptr %22, align 8, !tbaa !49
  %56 = load ptr, ptr %55, align 8, !tbaa !50
  %57 = tail call noundef i32 %56(ptr noundef nonnull %22, ptr noundef %1, ptr noundef %6)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %143, label %59

59:                                               ; preds = %54, %138
  %60 = phi i32 [ 1, %138 ], [ %23, %54 ]
  br label %61

61:                                               ; preds = %131, %59
  %62 = load i32, ptr %15, align 4, !tbaa !55
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %16, align 8, !tbaa !57
  %66 = add i32 %62, -1
  store i32 %66, ptr %15, align 4, !tbaa !55
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %"struct.pov::istk_entry", ptr %65, i64 %67
  br label %69

69:                                               ; preds = %61, %64
  %70 = phi ptr [ %68, %64 ], [ null, %61 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %143, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %"struct.pov::istk_entry", ptr %70, i64 0, i32 1
  %74 = load ptr, ptr %17, align 8, !tbaa !38
  %75 = tail call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %73, ptr noundef %74)
  br i1 %75, label %76, label %131

76:                                               ; preds = %72
  %77 = load ptr, ptr %11, align 8, !tbaa !44
  %78 = icmp eq ptr %77, null
  br i1 %78, label %132, label %79

79:                                               ; preds = %76, %122
  %80 = phi ptr [ %125, %122 ], [ %77, %76 ]
  %81 = phi i8 [ %123, %122 ], [ 1, %76 ]
  %82 = icmp eq ptr %22, %80
  br i1 %82, label %122, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %80, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !66
  %86 = and i32 %85, 32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %"struct.pov::Light_Source_Struct", ptr %80, i64 0, i32 14
  %90 = load ptr, ptr %89, align 8, !tbaa !67
  %91 = icmp eq ptr %90, null
  br i1 %91, label %122, label %92

92:                                               ; preds = %88, %83
  %93 = load i32, ptr @_ZN3pov13backtraceFlagE, align 4, !tbaa !45
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %80, i64 0, i32 13
  %97 = load i32, ptr %96, align 4, !tbaa !46
  %98 = and i32 %97, 32768
  %99 = icmp ne i32 %98, 0
  %100 = load i8, ptr @_ZN3pov17In_Reflection_RayE, align 1, !range !47
  %101 = icmp eq i8 %100, 0
  %102 = select i1 %99, i1 %101, i1 false
  br i1 %102, label %107, label %103

103:                                              ; preds = %95
  %104 = and i32 %97, 65536
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, i1 true, i1 %101
  br i1 %106, label %119, label %107

107:                                              ; preds = %103, %95
  br i1 %94, label %113, label %108

108:                                              ; preds = %92, %107
  %109 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %80, i64 0, i32 13
  %110 = load i32, ptr %109, align 4, !tbaa !46
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %108, %107
  br i1 %10, label %122, label %114

114:                                              ; preds = %113
  %115 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %80, i64 0, i32 13
  %116 = load i32, ptr %115, align 4, !tbaa !46
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114, %108, %103
  %120 = tail call noundef zeroext i1 @_ZN3pov13Inside_ObjectEPdPNS_13Object_StructE(ptr noundef nonnull %73, ptr noundef nonnull %80)
  %121 = select i1 %120, i8 0, i8 %81
  br label %122

122:                                              ; preds = %119, %79, %113, %114, %88
  %123 = phi i8 [ %81, %114 ], [ %81, %113 ], [ %81, %88 ], [ %81, %79 ], [ %121, %119 ]
  %124 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %80, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !44
  %126 = icmp ne ptr %125, null
  %127 = and i8 %123, 1
  %128 = icmp ne i8 %127, 0
  %129 = select i1 %126, i1 %128, i1 false
  br i1 %129, label %79, label %130, !llvm.loop !85

130:                                              ; preds = %122
  br i1 %128, label %132, label %131

131:                                              ; preds = %130, %72
  br label %61, !llvm.loop !86

132:                                              ; preds = %76, %130
  %133 = load i32, ptr %18, align 4, !tbaa !46
  %134 = and i32 %133, 256
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %"struct.pov::istk_entry", ptr %70, i64 0, i32 18
  store ptr %0, ptr %137, align 8, !tbaa !59
  br label %138

138:                                              ; preds = %136, %132
  %139 = load ptr, ptr %19, align 8, !tbaa !57
  %140 = load i32, ptr %20, align 4, !tbaa !55
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %"struct.pov::istk_entry", ptr %139, i64 %141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %142, ptr noundef nonnull align 8 dereferenceable(200) %70, i64 200, i1 false), !tbaa.struct !62
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %2)
  br label %59, !llvm.loop !86

143:                                              ; preds = %69, %44, %45, %54, %50
  %144 = phi i32 [ %23, %45 ], [ %23, %54 ], [ %23, %50 ], [ %23, %44 ], [ %60, %69 ]
  %145 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %22, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !44
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %21, !llvm.loop !87

148:                                              ; preds = %143, %3
  %149 = phi i32 [ 0, %3 ], [ %144, %143 ]
  tail call void @_ZN3pov12close_istackEPNS_13istack_structE(ptr noundef %6)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 25), align 8, !tbaa !34
  %153 = add nsw i64 %152, 1
  store i64 %153, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 25), align 8, !tbaa !34
  br label %154

154:                                              ; preds = %151, %148
  ret i32 %149
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL31All_CSG_Intersect_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 22), align 16, !tbaa !34
  %5 = add nsw i64 %4, 1
  store i64 %5, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 22), align 16, !tbaa !34
  %6 = tail call noundef ptr @_ZN3pov11open_istackEv()
  %7 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %85, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.pov::istack_struct", ptr %6, i64 0, i32 3
  %12 = getelementptr inbounds %"struct.pov::istack_struct", ptr %6, i64 0, i32 1
  %13 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %15 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 1
  %16 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 3
  br label %17

17:                                               ; preds = %10, %80
  %18 = phi ptr [ %8, %10 ], [ %83, %80 ]
  %19 = phi i32 [ 0, %10 ], [ %81, %80 ]
  %20 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %18, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = tail call noundef zeroext i1 @_ZN3pov12Ray_In_BoundEPNS_10Ray_StructEPNS_13Object_StructE(ptr noundef %1, ptr noundef %21)
  br i1 %22, label %23, label %80

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !49
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = tail call noundef i32 %25(ptr noundef nonnull %18, ptr noundef %1, ptr noundef %6)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %80, label %28

28:                                               ; preds = %23, %75
  %29 = phi i32 [ 1, %75 ], [ %19, %23 ]
  br label %30

30:                                               ; preds = %68, %28
  %31 = load i32, ptr %11, align 4, !tbaa !55
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %12, align 8, !tbaa !57
  %35 = add i32 %31, -1
  store i32 %35, ptr %11, align 4, !tbaa !55
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %"struct.pov::istk_entry", ptr %34, i64 %36
  br label %38

38:                                               ; preds = %30, %33
  %39 = phi ptr [ %37, %33 ], [ null, %30 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %80, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %7, align 8, !tbaa !44
  %43 = icmp eq ptr %42, null
  br i1 %43, label %64, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %"struct.pov::istk_entry", ptr %39, i64 0, i32 1
  br label %46

46:                                               ; preds = %44, %60
  %47 = phi ptr [ %42, %44 ], [ %62, %60 ]
  %48 = icmp eq ptr %47, %18
  br i1 %48, label %60, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %47, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !66
  %52 = and i32 %51, 32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"struct.pov::Light_Source_Struct", ptr %47, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !67
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54, %49
  %59 = tail call noundef zeroext i1 @_ZN3pov13Inside_ObjectEPdPNS_13Object_StructE(ptr noundef nonnull %45, ptr noundef nonnull %47)
  br i1 %59, label %60, label %68, !llvm.loop !88

60:                                               ; preds = %46, %58, %54
  %61 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %47, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !44
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %46, !llvm.loop !89

64:                                               ; preds = %60, %41
  %65 = getelementptr inbounds %"struct.pov::istk_entry", ptr %39, i64 0, i32 1
  %66 = load ptr, ptr %13, align 8, !tbaa !38
  %67 = tail call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %65, ptr noundef %66)
  br i1 %67, label %69, label %68

68:                                               ; preds = %58, %64
  br label %30, !llvm.loop !88

69:                                               ; preds = %64
  %70 = load i32, ptr %14, align 4, !tbaa !46
  %71 = and i32 %70, 256
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %"struct.pov::istk_entry", ptr %39, i64 0, i32 18
  store ptr %0, ptr %74, align 8, !tbaa !59
  br label %75

75:                                               ; preds = %73, %69
  %76 = load ptr, ptr %15, align 8, !tbaa !57
  %77 = load i32, ptr %16, align 4, !tbaa !55
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %"struct.pov::istk_entry", ptr %76, i64 %78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %79, ptr noundef nonnull align 8 dereferenceable(200) %39, i64 200, i1 false), !tbaa.struct !62
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %2)
  br label %28, !llvm.loop !88

80:                                               ; preds = %38, %17, %23
  %81 = phi i32 [ %19, %23 ], [ %19, %17 ], [ %29, %38 ]
  %82 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %18, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !44
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %17, !llvm.loop !90

85:                                               ; preds = %80, %3
  %86 = phi i32 [ 0, %3 ], [ %81, %80 ]
  tail call void @_ZN3pov12close_istackEPNS_13istack_structE(ptr noundef %6)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 23), align 8, !tbaa !34
  %90 = add nsw i64 %89, 1
  store i64 %90, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 23), align 8, !tbaa !34
  br label %91

91:                                               ; preds = %88, %85
  ret i32 %86
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL23Inside_CSG_IntersectionEPdPNS_13Object_StructE(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2, %18
  %7 = phi ptr [ %20, %18 ], [ %4, %2 ]
  %8 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.pov::Light_Source_Struct", ptr %7, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %6
  %17 = tail call noundef zeroext i1 @_ZN3pov13Inside_ObjectEPdPNS_13Object_StructE(ptr noundef %0, ptr noundef nonnull %7)
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %16
  %19 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !llvm.loop !91

22:                                               ; preds = %16, %18, %2
  %23 = phi i32 [ 1, %2 ], [ 0, %16 ], [ 1, %18 ]
  ret i32 %23
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL23Invert_CSG_IntersectionEPNS_13Object_StructE(ptr nocapture noundef %0) #0 {
  store ptr @_ZN3pov17CSG_Merge_MethodsE, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @_ZN3pov13Invert_ObjectEPNS_13Object_StructE(ptr noundef nonnull %6)
  %7 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !92

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !46
  %13 = xor i32 %12, 4
  store i32 %13, ptr %11, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov16Create_CSG_UnionEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 136, ptr noundef nonnull @.str, i32 noundef 776, ptr noundef nonnull @.str.1)
  %2 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 1
  store i32 4, ptr %2, align 8, !tbaa !93
  store ptr @_ZN3pov17CSG_Union_MethodsE, ptr %1, align 8, !tbaa !94
  %3 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %5, align 4, !tbaa !72
  %6 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %6, align 4, !tbaa !72
  %7 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %7, align 4, !tbaa !72
  %8 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %8, align 4, !tbaa !72
  %9 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !72
  %10 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %10, align 4, !tbaa !72
  %11 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 14
  store ptr null, ptr %11, align 8, !tbaa !73
  %12 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 15
  store i32 1, ptr %12, align 8, !tbaa !95
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov16Create_CSG_MergeEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 136, ptr noundef nonnull @.str, i32 noundef 819, ptr noundef nonnull @.str.2)
  %2 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 1
  store i32 4, ptr %2, align 8, !tbaa !93
  store ptr @_ZN3pov17CSG_Merge_MethodsE, ptr %1, align 8, !tbaa !94
  %3 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %5, align 4, !tbaa !72
  %6 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %6, align 4, !tbaa !72
  %7 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %7, align 4, !tbaa !72
  %8 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %8, align 4, !tbaa !72
  %9 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !72
  %10 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %10, align 4, !tbaa !72
  %11 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 14
  store ptr null, ptr %11, align 8, !tbaa !73
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov23Create_CSG_IntersectionEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 136, ptr noundef nonnull @.str, i32 noundef 860, ptr noundef nonnull @.str.3)
  %2 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 1
  store i32 4, ptr %2, align 8, !tbaa !93
  store ptr @_ZN3pov24CSG_Intersection_MethodsE, ptr %1, align 8, !tbaa !94
  %3 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %5, align 4, !tbaa !72
  %6 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %6, align 4, !tbaa !72
  %7 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %7, align 4, !tbaa !72
  %8 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %8, align 4, !tbaa !72
  %9 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !72
  %10 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %10, align 4, !tbaa !72
  %11 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %1, i64 0, i32 14
  store ptr null, ptr %11, align 8, !tbaa !73
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov16Compute_CSG_BBoxEPNS_13Object_StructE(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x double], align 16
  %3 = alloca [3 x double], align 16
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #5
  %6 = load ptr, ptr %0, align 8, !tbaa !49
  %7 = icmp eq ptr %6, @_ZN3pov24CSG_Intersection_MethodsE
  %8 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  br i1 %7, label %9, label %178

9:                                                ; preds = %1
  %10 = load ptr, ptr %8, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %14 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  %15 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %16 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %17 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %18 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  %19 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %20 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  br label %41

21:                                               ; preds = %111, %9
  %22 = phi double [ -2.000000e+10, %9 ], [ %112, %111 ]
  %23 = phi double [ -2.000000e+10, %9 ], [ %113, %111 ]
  %24 = phi double [ -2.000000e+10, %9 ], [ %114, %111 ]
  %25 = phi double [ 2.000000e+10, %9 ], [ %115, %111 ]
  %26 = phi double [ 2.000000e+10, %9 ], [ %116, %111 ]
  %27 = phi double [ 2.000000e+10, %9 ], [ %117, %111 ]
  %28 = phi i32 [ 0, %9 ], [ %118, %111 ]
  %29 = phi ptr [ null, %9 ], [ %119, %111 ]
  %30 = icmp sgt i32 %28, 0
  br i1 %30, label %31, label %169

31:                                               ; preds = %21
  %32 = getelementptr inbounds double, ptr %4, i64 1
  %33 = getelementptr inbounds double, ptr %4, i64 2
  %34 = getelementptr inbounds double, ptr %5, i64 1
  %35 = getelementptr inbounds double, ptr %5, i64 2
  %36 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %37 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  %38 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %39 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %40 = zext nneg i32 %28 to i64
  br label %123

41:                                               ; preds = %12, %111
  %42 = phi ptr [ %10, %12 ], [ %121, %111 ]
  %43 = phi ptr [ null, %12 ], [ %119, %111 ]
  %44 = phi i32 [ 0, %12 ], [ %118, %111 ]
  %45 = phi double [ 2.000000e+10, %12 ], [ %117, %111 ]
  %46 = phi double [ 2.000000e+10, %12 ], [ %116, %111 ]
  %47 = phi double [ 2.000000e+10, %12 ], [ %115, %111 ]
  %48 = phi double [ -2.000000e+10, %12 ], [ %114, %111 ]
  %49 = phi double [ -2.000000e+10, %12 ], [ %113, %111 ]
  %50 = phi double [ -2.000000e+10, %12 ], [ %112, %111 ]
  %51 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %42, i64 0, i32 13
  %52 = load i32, ptr %51, align 4, !tbaa !46
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %111

55:                                               ; preds = %41
  %56 = load ptr, ptr %42, align 8, !tbaa !49
  %57 = icmp eq ptr %56, @_ZN3pov14HField_MethodsE
  br i1 %57, label %111, label %58

58:                                               ; preds = %55
  %59 = icmp eq ptr %56, @_ZN3pov15Quadric_MethodsE
  br i1 %59, label %60, label %67

60:                                               ; preds = %58
  %61 = add nsw i32 %44, 1
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 3
  %64 = call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %43, i64 noundef %63, ptr noundef nonnull @.str, i32 noundef 1031, ptr noundef nonnull @.str.4)
  %65 = sext i32 %44 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  store ptr %42, ptr %66, align 8, !tbaa !44
  br label %111

67:                                               ; preds = %58
  %68 = icmp eq ptr %56, @_ZN3pov13Plane_MethodsE
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  call void @_ZN3pov21Compute_Plane_Min_MaxEPNS_12Plane_StructEPdS2_(ptr noundef nonnull %42, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %92

70:                                               ; preds = %67
  %71 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %42, i64 0, i32 9
  %72 = load float, ptr %71, align 8, !tbaa.struct !96
  %73 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %42, i64 0, i32 9, i32 0, i64 1
  %74 = load float, ptr %73, align 4, !tbaa.struct !97
  %75 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %42, i64 0, i32 9, i32 0, i64 2
  %76 = load float, ptr %75, align 8, !tbaa.struct !98
  %77 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %42, i64 0, i32 9, i32 1
  %78 = load float, ptr %77, align 4, !tbaa.struct !99
  %79 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %42, i64 0, i32 9, i32 1, i64 1
  %80 = load float, ptr %79, align 8, !tbaa.struct !100
  %81 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %42, i64 0, i32 9, i32 1, i64 2
  %82 = load float, ptr %81, align 4, !tbaa.struct !101
  %83 = fpext float %72 to double
  store double %83, ptr %2, align 16, !tbaa !63
  %84 = fpext float %74 to double
  store double %84, ptr %13, align 8, !tbaa !63
  %85 = fpext float %76 to double
  store double %85, ptr %14, align 16, !tbaa !63
  %86 = fpext float %78 to double
  %87 = fadd double %83, %86
  store double %87, ptr %3, align 16, !tbaa !63
  %88 = fpext float %80 to double
  %89 = fadd double %84, %88
  store double %89, ptr %15, align 8, !tbaa !63
  %90 = fpext float %82 to double
  %91 = fadd double %85, %90
  store double %91, ptr %16, align 16, !tbaa !63
  br label %92

92:                                               ; preds = %70, %69
  %93 = load double, ptr %2, align 16, !tbaa !63
  %94 = fcmp olt double %50, %93
  %95 = select i1 %94, double %93, double %50
  %96 = load double, ptr %17, align 8, !tbaa !63
  %97 = fcmp olt double %49, %96
  %98 = select i1 %97, double %96, double %49
  %99 = load double, ptr %18, align 16, !tbaa !63
  %100 = fcmp olt double %48, %99
  %101 = select i1 %100, double %99, double %48
  %102 = load double, ptr %3, align 16, !tbaa !63
  %103 = fcmp olt double %102, %47
  %104 = select i1 %103, double %102, double %47
  %105 = load double, ptr %19, align 8, !tbaa !63
  %106 = fcmp olt double %105, %46
  %107 = select i1 %106, double %105, double %46
  %108 = load double, ptr %20, align 16, !tbaa !63
  %109 = fcmp olt double %108, %45
  %110 = select i1 %109, double %108, double %45
  br label %111

111:                                              ; preds = %41, %55, %92, %60
  %112 = phi double [ %50, %55 ], [ %50, %60 ], [ %95, %92 ], [ %50, %41 ]
  %113 = phi double [ %49, %55 ], [ %49, %60 ], [ %98, %92 ], [ %49, %41 ]
  %114 = phi double [ %48, %55 ], [ %48, %60 ], [ %101, %92 ], [ %48, %41 ]
  %115 = phi double [ %47, %55 ], [ %47, %60 ], [ %104, %92 ], [ %47, %41 ]
  %116 = phi double [ %46, %55 ], [ %46, %60 ], [ %107, %92 ], [ %46, %41 ]
  %117 = phi double [ %45, %55 ], [ %45, %60 ], [ %110, %92 ], [ %45, %41 ]
  %118 = phi i32 [ %44, %55 ], [ %61, %60 ], [ %44, %92 ], [ %44, %41 ]
  %119 = phi ptr [ %43, %55 ], [ %64, %60 ], [ %43, %92 ], [ %43, %41 ]
  %120 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %42, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !44
  %122 = icmp eq ptr %121, null
  br i1 %122, label %21, label %41, !llvm.loop !102

123:                                              ; preds = %31, %123
  %124 = phi i64 [ 0, %31 ], [ %167, %123 ]
  %125 = phi double [ %27, %31 ], [ %166, %123 ]
  %126 = phi double [ %26, %31 ], [ %164, %123 ]
  %127 = phi double [ %25, %31 ], [ %162, %123 ]
  %128 = phi double [ %24, %31 ], [ %160, %123 ]
  %129 = phi double [ %23, %31 ], [ %158, %123 ]
  %130 = phi double [ %22, %31 ], [ %156, %123 ]
  store double %130, ptr %4, align 16, !tbaa !63
  store double %129, ptr %32, align 8, !tbaa !63
  store double %128, ptr %33, align 16, !tbaa !63
  store double %127, ptr %5, align 16, !tbaa !63
  store double %126, ptr %34, align 8, !tbaa !63
  store double %125, ptr %35, align 16, !tbaa !63
  %131 = getelementptr inbounds ptr, ptr %29, i64 %124
  %132 = load ptr, ptr %131, align 8, !tbaa !44
  call void @_ZN3pov20Compute_Quadric_BBoxEPNS_14Quadric_StructEPdS2_(ptr noundef %132, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %133 = load ptr, ptr %131, align 8, !tbaa !44
  %134 = getelementptr inbounds %"struct.pov::Quadric_Struct", ptr %133, i64 0, i32 9
  %135 = load float, ptr %134, align 8, !tbaa.struct !96
  %136 = getelementptr inbounds %"struct.pov::Quadric_Struct", ptr %133, i64 0, i32 9, i32 0, i64 1
  %137 = load float, ptr %136, align 4, !tbaa.struct !97
  %138 = getelementptr inbounds %"struct.pov::Quadric_Struct", ptr %133, i64 0, i32 9, i32 0, i64 2
  %139 = load float, ptr %138, align 8, !tbaa.struct !98
  %140 = getelementptr inbounds %"struct.pov::Quadric_Struct", ptr %133, i64 0, i32 9, i32 1
  %141 = load float, ptr %140, align 4, !tbaa.struct !99
  %142 = getelementptr inbounds %"struct.pov::Quadric_Struct", ptr %133, i64 0, i32 9, i32 1, i64 1
  %143 = load float, ptr %142, align 8, !tbaa.struct !100
  %144 = getelementptr inbounds %"struct.pov::Quadric_Struct", ptr %133, i64 0, i32 9, i32 1, i64 2
  %145 = load float, ptr %144, align 4, !tbaa.struct !101
  %146 = fpext float %135 to double
  store double %146, ptr %2, align 16, !tbaa !63
  %147 = fpext float %137 to double
  store double %147, ptr %36, align 8, !tbaa !63
  %148 = fpext float %139 to double
  store double %148, ptr %37, align 16, !tbaa !63
  %149 = fpext float %141 to double
  %150 = fadd double %146, %149
  store double %150, ptr %3, align 16, !tbaa !63
  %151 = fpext float %143 to double
  %152 = fadd double %147, %151
  store double %152, ptr %38, align 8, !tbaa !63
  %153 = fpext float %145 to double
  %154 = fadd double %148, %153
  store double %154, ptr %39, align 16, !tbaa !63
  %155 = fcmp olt double %130, %146
  %156 = select i1 %155, double %146, double %130
  %157 = fcmp olt double %129, %147
  %158 = select i1 %157, double %147, double %129
  %159 = fcmp olt double %128, %148
  %160 = select i1 %159, double %148, double %128
  %161 = fcmp olt double %150, %127
  %162 = select i1 %161, double %150, double %127
  %163 = fcmp olt double %152, %126
  %164 = select i1 %163, double %152, double %126
  %165 = fcmp olt double %154, %125
  %166 = select i1 %165, double %154, double %125
  %167 = add nuw nsw i64 %124, 1
  %168 = icmp eq i64 %167, %40
  br i1 %168, label %169, label %123, !llvm.loop !103

169:                                              ; preds = %123, %21
  %170 = phi double [ %22, %21 ], [ %156, %123 ]
  %171 = phi double [ %23, %21 ], [ %158, %123 ]
  %172 = phi double [ %24, %21 ], [ %160, %123 ]
  %173 = phi double [ %25, %21 ], [ %162, %123 ]
  %174 = phi double [ %26, %21 ], [ %164, %123 ]
  %175 = phi double [ %27, %21 ], [ %166, %123 ]
  %176 = icmp eq ptr %29, null
  br i1 %176, label %242, label %177

177:                                              ; preds = %169
  call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %29, ptr noundef nonnull @.str, i32 noundef 1077)
  br label %242

178:                                              ; preds = %1
  %179 = load double, ptr %2, align 16, !tbaa !63
  %180 = load double, ptr %3, align 16, !tbaa !63
  %181 = load ptr, ptr %8, align 8, !tbaa !44
  %182 = icmp eq ptr %181, null
  br i1 %182, label %233, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %185 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  br label %186

186:                                              ; preds = %183, %186
  %187 = phi ptr [ %181, %183 ], [ %228, %186 ]
  %188 = phi double [ -2.000000e+10, %183 ], [ %226, %186 ]
  %189 = phi double [ -2.000000e+10, %183 ], [ %224, %186 ]
  %190 = phi double [ -2.000000e+10, %183 ], [ %222, %186 ]
  %191 = phi double [ 2.000000e+10, %183 ], [ %220, %186 ]
  %192 = phi double [ 2.000000e+10, %183 ], [ %218, %186 ]
  %193 = phi double [ 2.000000e+10, %183 ], [ %216, %186 ]
  %194 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %187, i64 0, i32 9
  %195 = load float, ptr %194, align 8, !tbaa.struct !96
  %196 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %187, i64 0, i32 9, i32 0, i64 1
  %197 = load float, ptr %196, align 4, !tbaa.struct !97
  %198 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %187, i64 0, i32 9, i32 0, i64 2
  %199 = load float, ptr %198, align 8, !tbaa.struct !98
  %200 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %187, i64 0, i32 9, i32 1
  %201 = load float, ptr %200, align 4, !tbaa.struct !99
  %202 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %187, i64 0, i32 9, i32 1, i64 1
  %203 = load float, ptr %202, align 8, !tbaa.struct !100
  %204 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %187, i64 0, i32 9, i32 1, i64 2
  %205 = load float, ptr %204, align 4, !tbaa.struct !101
  %206 = fpext float %195 to double
  %207 = fpext float %197 to double
  %208 = fpext float %199 to double
  %209 = fpext float %201 to double
  %210 = fadd double %206, %209
  %211 = fpext float %203 to double
  %212 = fadd double %207, %211
  %213 = fpext float %205 to double
  %214 = fadd double %208, %213
  %215 = fcmp ogt double %193, %206
  %216 = select i1 %215, double %206, double %193
  %217 = fcmp ogt double %192, %207
  %218 = select i1 %217, double %207, double %192
  %219 = fcmp ogt double %191, %208
  %220 = select i1 %219, double %208, double %191
  %221 = fcmp olt double %190, %210
  %222 = select i1 %221, double %210, double %190
  %223 = fcmp olt double %189, %212
  %224 = select i1 %223, double %212, double %189
  %225 = fcmp olt double %188, %214
  %226 = select i1 %225, double %214, double %188
  %227 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %187, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !44
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %186, !llvm.loop !104

230:                                              ; preds = %186
  %231 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  %232 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  store double %207, ptr %184, align 8, !tbaa !63
  store double %208, ptr %231, align 16, !tbaa !63
  store double %212, ptr %185, align 8, !tbaa !63
  store double %214, ptr %232, align 16, !tbaa !63
  br label %233

233:                                              ; preds = %230, %178
  %234 = phi double [ %210, %230 ], [ %180, %178 ]
  %235 = phi double [ %206, %230 ], [ %179, %178 ]
  %236 = phi double [ %216, %230 ], [ 2.000000e+10, %178 ]
  %237 = phi double [ %218, %230 ], [ 2.000000e+10, %178 ]
  %238 = phi double [ %220, %230 ], [ 2.000000e+10, %178 ]
  %239 = phi double [ %222, %230 ], [ -2.000000e+10, %178 ]
  %240 = phi double [ %224, %230 ], [ -2.000000e+10, %178 ]
  %241 = phi double [ %226, %230 ], [ -2.000000e+10, %178 ]
  store double %235, ptr %2, align 16, !tbaa !63
  store double %234, ptr %3, align 16, !tbaa !63
  br label %242

242:                                              ; preds = %233, %169, %177
  %243 = phi double [ %170, %169 ], [ %170, %177 ], [ %236, %233 ]
  %244 = phi double [ %171, %169 ], [ %171, %177 ], [ %237, %233 ]
  %245 = phi double [ %172, %169 ], [ %172, %177 ], [ %238, %233 ]
  %246 = phi double [ %173, %169 ], [ %173, %177 ], [ %239, %233 ]
  %247 = phi double [ %174, %169 ], [ %174, %177 ], [ %240, %233 ]
  %248 = phi double [ %175, %169 ], [ %175, %177 ], [ %241, %233 ]
  %249 = fcmp ogt double %243, %246
  %250 = fcmp ogt double %244, %247
  %251 = select i1 %249, i1 true, i1 %250
  %252 = fcmp ogt double %245, %248
  %253 = select i1 %251, i1 true, i1 %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %242
  %255 = call noundef i32 (i32, ptr, ...) @_ZN3pov7WarningEjPKcz(i32 noundef 0, ptr noundef nonnull @.str.5)
  br label %288

256:                                              ; preds = %242
  %257 = fsub double %246, %243
  %258 = fsub double %247, %244
  %259 = fmul double %257, %258
  %260 = fsub double %248, %245
  %261 = fmul double %259, %260
  %262 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9
  %263 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9, i32 1
  %264 = load float, ptr %263, align 4, !tbaa !72
  %265 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  %266 = load float, ptr %265, align 4, !tbaa !72
  %267 = fmul float %264, %266
  %268 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  %269 = load float, ptr %268, align 4, !tbaa !72
  %270 = fmul float %267, %269
  %271 = fpext float %270 to double
  %272 = fcmp olt double %261, %271
  br i1 %272, label %273, label %288

273:                                              ; preds = %256
  %274 = fptrunc double %243 to float
  store float %274, ptr %262, align 4, !tbaa !72
  %275 = fptrunc double %244 to float
  %276 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %275, ptr %276, align 4, !tbaa !72
  %277 = fptrunc double %245 to float
  %278 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %277, ptr %278, align 4, !tbaa !72
  %279 = fptrunc double %257 to float
  store float %279, ptr %263, align 4, !tbaa !72
  %280 = fptrunc double %258 to float
  store float %280, ptr %265, align 4, !tbaa !72
  %281 = fptrunc double %260 to float
  store float %281, ptr %268, align 4, !tbaa !72
  %282 = fcmp ogt float %279, 1.000000e+06
  %283 = fcmp ogt float %280, 1.000000e+06
  %284 = or i1 %282, %283
  %285 = fcmp ogt float %281, 1.000000e+06
  %286 = or i1 %284, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %273
  store float -1.000000e+10, ptr %262, align 4, !tbaa !72
  store float -1.000000e+10, ptr %276, align 4, !tbaa !72
  store float -1.000000e+10, ptr %278, align 4, !tbaa !72
  store float 2.000000e+10, ptr %263, align 4, !tbaa !72
  store float 2.000000e+10, ptr %265, align 4, !tbaa !72
  store float 2.000000e+10, ptr %268, align 4, !tbaa !72
  br label %288

288:                                              ; preds = %273, %256, %287, %254
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #5
  ret void
}

declare noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov21Compute_Plane_Min_MaxEPNS_12Plane_StructEPdS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @_ZN3pov20Compute_Quadric_BBoxEPNS_14Quadric_StructEPdS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN3pov7WarningEjPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov22Determine_CSG_TexturesEPNS_10CSG_StructEPdPiPPNS_14Texture_StructES2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %3, ptr %6, align 8, !tbaa !44
  store ptr %4, ptr %7, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  store i32 0, ptr %2, align 4, !tbaa !45
  tail call fastcc void @_ZN3povL17Find_CSG_TexturesEPNS_10CSG_StructEPdPiPPNS_14Texture_StructE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null)
  %9 = load i32, ptr %2, align 4, !tbaa !45
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.6)
  br label %13

13:                                               ; preds = %11, %5
  %14 = load i32, ptr %2, align 4, !tbaa !45
  call void @_ZN3pov26Reinitialize_Lighting_CodeEiPPPNS_14Texture_StructEPPd(i32 noundef %14, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %15 = load i32, ptr %2, align 4, !tbaa !45
  %16 = sitofp i32 %15 to double
  %17 = fdiv double 1.000000e+00, %16
  store i32 0, ptr %8, align 4, !tbaa !45
  %18 = load ptr, ptr %6, align 8, !tbaa !44
  call fastcc void @_ZN3povL17Find_CSG_TexturesEPNS_10CSG_StructEPdPiPPNS_14Texture_StructE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef %18)
  %19 = load i32, ptr %2, align 4, !tbaa !45
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load ptr, ptr %7, align 8, !tbaa !44
  %23 = zext nneg i32 %19 to i64
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi i64 [ 0, %21 ], [ %27, %24 ]
  %26 = getelementptr inbounds double, ptr %22, i64 %25
  store double %17, ptr %26, align 8, !tbaa !63
  %27 = add nuw nsw i64 %25, 1
  %28 = icmp eq i64 %27, %23
  br i1 %28, label %29, label %24, !llvm.loop !105

29:                                               ; preds = %24
  %30 = trunc i64 %27 to i32
  br label %31

31:                                               ; preds = %29, %13
  %32 = phi i32 [ 0, %13 ], [ %30, %29 ]
  store i32 %32, ptr %8, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3povL17Find_CSG_TexturesEPNS_10CSG_StructEPdPiPPNS_14Texture_StructE(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"struct.pov::CSG_Struct", ptr %0, i64 0, i32 1
  %10 = icmp eq ptr %3, null
  br label %11

11:                                               ; preds = %8, %40
  %12 = phi ptr [ %6, %8 ], [ %42, %40 ]
  %13 = load i32, ptr %9, align 8, !tbaa !93
  %14 = and i32 %13, 8192
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %16, %11
  %21 = tail call noundef zeroext i1 @_ZN3pov13Inside_ObjectEPdPNS_13Object_StructE(ptr noundef %1, ptr noundef nonnull %12)
  br i1 %21, label %22, label %40

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %12, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !66
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call fastcc void @_ZN3povL17Find_CSG_TexturesEPNS_10CSG_StructEPdPiPPNS_14Texture_StructE(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %40

28:                                               ; preds = %22
  %29 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %12, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  br i1 %10, label %37, label %33

33:                                               ; preds = %32
  %34 = load i32, ptr %2, align 4, !tbaa !45
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %3, i64 %35
  store ptr %30, ptr %36, align 8, !tbaa !44
  br label %37

37:                                               ; preds = %33, %32
  %38 = load i32, ptr %2, align 4, !tbaa !45
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %2, align 4, !tbaa !45
  br label %40

40:                                               ; preds = %16, %27, %37, %28, %20
  %41 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %12, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %11, !llvm.loop !107

44:                                               ; preds = %40, %4
  ret void
}

declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN3pov26Reinitialize_Lighting_CodeEiPPPNS_14Texture_StructEPPd(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN3pov12Ray_In_BoundEPNS_10Ray_StructEPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN3pov11open_istackEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov12close_istackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN3pov13Inside_ObjectEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov16Translate_ObjectEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov13Rotate_ObjectEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov12Scale_ObjectEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov16Transform_ObjectEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov13Invert_ObjectEPNS_13Object_StructE(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN3pov11Copy_ObjectEPNS_13Object_StructE(ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov20Promote_Local_LightsEPNS_10CSG_StructE(ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov14Destroy_ObjectEPNS_13Object_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!35 = !{!"long long", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !40, i64 56}
!39 = !{!"_ZTSN3pov13Object_StructE", !40, i64 0, !41, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !42, i64 72, !40, i64 96, !40, i64 104, !43, i64 112, !41, i64 116}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"_ZTSN3pov19Bounding_Box_StructE", !36, i64 0, !36, i64 12}
!43 = !{!"float", !36, i64 0}
!44 = !{!40, !40, i64 0}
!45 = !{!41, !41, i64 0}
!46 = !{!39, !41, i64 116}
!47 = !{i8 0, i8 2}
!48 = !{!39, !40, i64 48}
!49 = !{!39, !40, i64 0}
!50 = !{!51, !40, i64 0}
!51 = !{!"_ZTSN3pov13Method_StructE", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!56, !41, i64 20}
!56 = !{!"_ZTSN3pov13istack_structE", !40, i64 0, !40, i64 8, !41, i64 16, !41, i64 20}
!57 = !{!56, !40, i64 8}
!58 = distinct !{!58, !53, !54}
!59 = !{!60, !40, i64 192}
!60 = !{!"_ZTSN3pov10istk_entryE", !61, i64 0, !36, i64 8, !36, i64 32, !36, i64 56, !36, i64 80, !40, i64 96, !41, i64 104, !41, i64 108, !61, i64 112, !61, i64 120, !61, i64 128, !61, i64 136, !61, i64 144, !61, i64 152, !61, i64 160, !61, i64 168, !61, i64 176, !40, i64 184, !40, i64 192}
!61 = !{!"double", !36, i64 0}
!62 = !{i64 0, i64 8, !63, i64 8, i64 24, !64, i64 32, i64 24, !64, i64 56, i64 24, !64, i64 80, i64 16, !64, i64 96, i64 8, !44, i64 104, i64 4, !45, i64 108, i64 4, !45, i64 112, i64 8, !63, i64 120, i64 8, !63, i64 128, i64 8, !63, i64 136, i64 8, !63, i64 144, i64 8, !63, i64 152, i64 8, !63, i64 160, i64 8, !63, i64 168, i64 8, !63, i64 176, i64 8, !63, i64 184, i64 8, !44, i64 192, i64 8, !44}
!63 = !{!61, !61, i64 0}
!64 = !{!36, !36, i64 0}
!65 = distinct !{!65, !53, !54}
!66 = !{!39, !41, i64 8}
!67 = !{!68, !40, i64 120}
!68 = !{!"_ZTSN3pov19Light_Source_StructE", !40, i64 0, !41, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !42, i64 72, !40, i64 96, !40, i64 104, !43, i64 112, !41, i64 116, !40, i64 120, !36, i64 128, !36, i64 152, !36, i64 176, !36, i64 200, !36, i64 224, !36, i64 248, !61, i64 272, !61, i64 280, !61, i64 288, !61, i64 296, !61, i64 304, !40, i64 312, !36, i64 320, !36, i64 321, !36, i64 322, !69, i64 323, !69, i64 324, !36, i64 325, !36, i64 326, !36, i64 327, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !40, i64 352, !40, i64 360, !40, i64 368, !40, i64 376, !36, i64 384}
!69 = !{!"bool", !36, i64 0}
!70 = distinct !{!70, !53, !54}
!71 = !{i64 0, i64 8, !44, i64 8, i64 4, !45, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 8, !44, i64 40, i64 8, !44, i64 48, i64 8, !44, i64 56, i64 8, !44, i64 64, i64 8, !44, i64 72, i64 12, !64, i64 84, i64 12, !64, i64 96, i64 8, !44, i64 104, i64 8, !44, i64 112, i64 4, !72, i64 116, i64 4, !45, i64 120, i64 8, !44, i64 128, i64 4, !45}
!72 = !{!43, !43, i64 0}
!73 = !{!74, !40, i64 120}
!74 = !{!"_ZTSN3pov10CSG_StructE", !40, i64 0, !41, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !42, i64 72, !40, i64 96, !40, i64 104, !43, i64 112, !41, i64 116, !40, i64 120, !41, i64 128}
!75 = !{!39, !40, i64 16}
!76 = distinct !{!76, !53, !54}
!77 = !{!74, !40, i64 64}
!78 = distinct !{!78, !53, !54}
!79 = distinct !{!79, !53, !54}
!80 = distinct !{!80, !53, !54}
!81 = distinct !{!81, !53, !54}
!82 = distinct !{!82, !53, !54}
!83 = !{!84, !41, i64 52}
!84 = !{!"_ZTSN3pov10Ray_StructE", !36, i64 0, !36, i64 24, !41, i64 48, !41, i64 52, !36, i64 56}
!85 = distinct !{!85, !53, !54}
!86 = distinct !{!86, !53, !54}
!87 = distinct !{!87, !53, !54}
!88 = distinct !{!88, !53, !54}
!89 = distinct !{!89, !53, !54}
!90 = distinct !{!90, !53, !54}
!91 = distinct !{!91, !53, !54}
!92 = distinct !{!92, !53, !54}
!93 = !{!74, !41, i64 8}
!94 = !{!74, !40, i64 0}
!95 = !{!74, !41, i64 128}
!96 = !{i64 0, i64 12, !64, i64 12, i64 12, !64}
!97 = !{i64 0, i64 8, !64, i64 8, i64 12, !64}
!98 = !{i64 0, i64 4, !64, i64 4, i64 12, !64}
!99 = !{i64 0, i64 12, !64}
!100 = !{i64 0, i64 8, !64}
!101 = !{i64 0, i64 4, !64}
!102 = distinct !{!102, !53, !54}
!103 = distinct !{!103, !53, !54}
!104 = distinct !{!104, !53, !54}
!105 = distinct !{!105, !53, !54}
!106 = !{!39, !40, i64 24}
!107 = distinct !{!107, !53, !54}
