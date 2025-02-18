; ModuleID = 'blender/source/blender/modifiers/intern/MOD_surface.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SurfaceModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }

@modifierType_Surface = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Surface\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SurfaceModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 152, i32 1, i32 257, ptr null, ptr @deformVerts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @initData, ptr null, ptr @freeData, ptr null, ptr null, ptr @dependsOnTime, ptr null, ptr null, ptr null, ptr null }, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"MVert\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"BVHTreeFromMesh\00", align 1
@str = private unnamed_addr constant [48 x i8] c"SurfaceModifier deformVerts: Should not happen!\00", align 1

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4, i32 %5) #0 {
  %7 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 95
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  tail call void %12(ptr noundef nonnull %8) #6
  br label %13

13:                                               ; preds = %10, %6
  %14 = icmp eq ptr %2, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = tail call ptr @CDDM_copy(ptr noundef nonnull %2) #6
  br label %19

17:                                               ; preds = %13
  %18 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %18, %17 ], [ %16, %15 ]
  store ptr %20, ptr %7, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 110
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %144

26:                                               ; preds = %19
  %27 = icmp eq ptr %20, null
  br i1 %27, label %144, label %28

28:                                               ; preds = %26
  tail call void @CDDM_apply_vert_coords(ptr noundef nonnull %20, ptr noundef %3) #6
  %29 = load ptr, ptr %7, align 8, !tbaa !34
  tail call void @CDDM_calc_normals(ptr noundef %29) #6
  %30 = load ptr, ptr %7, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 23
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = tail call i32 %32(ptr noundef %30) #6
  %34 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !53
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = icmp eq ptr %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !56
  %48 = getelementptr inbounds %struct.Scene, ptr %47, i64 0, i32 22, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !57
  %50 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !76
  %52 = add nsw i32 %51, 1
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %73, label %54

54:                                               ; preds = %45, %41, %37, %28
  %55 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !54
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  tail call void %59(ptr noundef nonnull %56) #6
  store ptr null, ptr %55, align 8, !tbaa !54
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !55
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  tail call void %65(ptr noundef nonnull %62) #6
  store ptr null, ptr %61, align 8, !tbaa !55
  br label %66

66:                                               ; preds = %64, %60
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %68 = zext i32 %33 to i64
  %69 = mul nuw nsw i64 %68, 20
  %70 = tail call ptr %67(i64 noundef %69, ptr noundef nonnull @.str.1) #6
  store ptr %70, ptr %55, align 8, !tbaa !54
  %71 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %72 = tail call ptr %71(i64 noundef %69, ptr noundef nonnull @.str.1) #6
  store ptr %72, ptr %61, align 8, !tbaa !55
  store i32 %33, ptr %34, align 4, !tbaa !53
  br label %73

73:                                               ; preds = %66, %45
  %74 = phi i1 [ false, %66 ], [ true, %45 ]
  %75 = icmp eq i32 %33, 0
  br i1 %75, label %119, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !55
  %79 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !54
  %81 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  br label %82

82:                                               ; preds = %76, %107
  %83 = phi ptr [ %78, %76 ], [ %117, %107 ]
  %84 = phi ptr [ %80, %76 ], [ %116, %107 ]
  %85 = phi i32 [ 0, %76 ], [ %115, %107 ]
  %86 = load ptr, ptr %7, align 8, !tbaa !34
  %87 = tail call ptr @CDDM_get_vert(ptr noundef %86, i32 noundef %85) #6
  tail call void @mul_m4_v3(ptr noundef nonnull %81, ptr noundef %87) #6
  br i1 %74, label %91, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds [3 x float], ptr %83, i64 0, i64 2
  store float 0.000000e+00, ptr %89, align 4, !tbaa !78
  %90 = getelementptr inbounds [3 x float], ptr %83, i64 0, i64 1
  store float 0.000000e+00, ptr %90, align 4, !tbaa !78
  store float 0.000000e+00, ptr %83, align 4, !tbaa !78
  br label %107

91:                                               ; preds = %82
  %92 = load float, ptr %87, align 4, !tbaa !78
  %93 = load float, ptr %84, align 4, !tbaa !78
  %94 = fsub float %92, %93
  store float %94, ptr %83, align 4, !tbaa !78
  %95 = getelementptr inbounds float, ptr %87, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !78
  %97 = getelementptr inbounds float, ptr %84, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !78
  %99 = fsub float %96, %98
  %100 = getelementptr inbounds float, ptr %83, i64 1
  store float %99, ptr %100, align 4, !tbaa !78
  %101 = getelementptr inbounds float, ptr %87, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !78
  %103 = getelementptr inbounds float, ptr %84, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !78
  %105 = fsub float %102, %104
  %106 = getelementptr inbounds float, ptr %83, i64 2
  store float %105, ptr %106, align 4, !tbaa !78
  br label %107

107:                                              ; preds = %91, %88
  %108 = load float, ptr %87, align 4, !tbaa !78
  store float %108, ptr %84, align 4, !tbaa !78
  %109 = getelementptr inbounds float, ptr %87, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !78
  %111 = getelementptr inbounds float, ptr %84, i64 1
  store float %110, ptr %111, align 4, !tbaa !78
  %112 = getelementptr inbounds float, ptr %87, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !78
  %114 = getelementptr inbounds float, ptr %84, i64 2
  store float %113, ptr %114, align 4, !tbaa !78
  %115 = add nuw i32 %85, 1
  %116 = getelementptr inbounds %struct.MVert, ptr %84, i64 1
  %117 = getelementptr inbounds %struct.MVert, ptr %83, i64 1
  %118 = icmp eq i32 %115, %33
  br i1 %118, label %119, label %82, !llvm.loop !79

119:                                              ; preds = %107, %73
  %120 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !56
  %122 = getelementptr inbounds %struct.Scene, ptr %121, i64 0, i32 22, i32 5
  %123 = load i32, ptr %122, align 8, !tbaa !57
  %124 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 5
  store i32 %123, ptr %124, align 8, !tbaa !76
  %125 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !82
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %119
  tail call void @free_bvhtree_from_mesh(ptr noundef nonnull %126) #6
  br label %132

129:                                              ; preds = %119
  %130 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %131 = tail call ptr %130(i64 noundef 72, ptr noundef nonnull @.str.2) #6
  store ptr %131, ptr %125, align 8, !tbaa !82
  br label %132

132:                                              ; preds = %129, %128
  %133 = load ptr, ptr %7, align 8, !tbaa !34
  %134 = getelementptr inbounds %struct.DerivedMesh, ptr %133, i64 0, i32 25
  %135 = load ptr, ptr %134, align 8, !tbaa !83
  %136 = tail call i32 %135(ptr noundef %133) #6
  %137 = icmp eq i32 %136, 0
  %138 = load ptr, ptr %125, align 8, !tbaa !82
  %139 = load ptr, ptr %7, align 8, !tbaa !34
  br i1 %137, label %142, label %140

140:                                              ; preds = %132
  %141 = tail call ptr @bvhtree_from_mesh_faces(ptr noundef %138, ptr noundef %139, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #6
  br label %144

142:                                              ; preds = %132
  %143 = tail call ptr @bvhtree_from_mesh_edges(ptr noundef %138, ptr noundef %139, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #6
  br label %144

144:                                              ; preds = %26, %142, %140, %24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 4
  store ptr null, ptr %2, align 8, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeData(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void @free_bvhtree_from_mesh(ptr noundef nonnull %5) #6
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  %9 = load ptr, ptr %4, align 8, !tbaa !82
  tail call void %8(ptr noundef %9) #6
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  tail call void %16(ptr noundef nonnull %12) #6
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  tail call void %22(ptr noundef nonnull %19) #6
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  tail call void %28(ptr noundef nonnull %25) #6
  br label %29

29:                                               ; preds = %27, %23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #2 {
  ret i8 1
}

declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #3

declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @CDDM_calc_normals(ptr noundef) local_unnamed_addr #3

declare ptr @CDDM_get_vert(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #3

declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @bvhtree_from_mesh_edges(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!34 = !{!35, !37, i64 128}
!35 = !{!"SurfaceModifierData", !36, i64 0, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !40, i64 144, !40, i64 148}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!42, !37, i64 1680}
!42 = !{!"DerivedMesh", !43, i64 0, !43, i64 200, !43, i64 400, !43, i64 600, !43, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !44, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!43 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!44 = !{!"float", !38, i64 0}
!45 = !{!46, !37, i64 1240}
!46 = !{!"Object", !47, i64 0, !37, i64 120, !37, i64 128, !48, i64 136, !48, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !49, i64 312, !37, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !48, i64 948, !48, i64 950, !48, i64 952, !48, i64 954, !48, i64 956, !48, i64 958, !48, i64 960, !48, i64 962, !48, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !48, i64 1036, !48, i64 1038, !48, i64 1040, !38, i64 1042, !38, i64 1043, !48, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !44, i64 1120, !48, i64 1124, !48, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !48, i64 1162, !38, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !48, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !51, i64 1304, !51, i64 1312, !40, i64 1320, !40, i64 1324, !50, i64 1328, !50, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !50, i64 1400, !37, i64 1416}
!47 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !48, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!48 = !{!"short", !38, i64 0}
!49 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!50 = !{!"ListBase", !37, i64 0, !37, i64 8}
!51 = !{!"long", !38, i64 0}
!52 = !{!42, !37, i64 1104}
!53 = !{!35, !40, i64 148}
!54 = !{!35, !37, i64 112}
!55 = !{!35, !37, i64 120}
!56 = !{!36, !37, i64 96}
!57 = !{!58, !40, i64 680}
!58 = !{!"Scene", !47, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !50, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !48, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !59, i64 280, !68, i64 4264, !50, i64 4296, !50, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !48, i64 4376, !48, i64 4378, !40, i64 4380, !50, i64 4384, !69, i64 4400, !70, i64 4416, !73, i64 4600, !37, i64 4608, !74, i64 4616, !37, i64 4640, !51, i64 4648, !51, i64 4656, !61, i64 4664, !62, i64 4824, !75, i64 4888, !37, i64 4952}
!59 = !{!"RenderData", !60, i64 0, !37, i64 248, !37, i64 256, !63, i64 264, !64, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !44, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !48, i64 432, !48, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !48, i64 456, !48, i64 458, !48, i64 460, !48, i64 462, !48, i64 464, !48, i64 466, !40, i64 468, !48, i64 472, !48, i64 474, !48, i64 476, !48, i64 478, !48, i64 480, !48, i64 482, !40, i64 484, !40, i64 488, !48, i64 492, !48, i64 494, !40, i64 496, !40, i64 500, !48, i64 504, !48, i64 506, !48, i64 508, !48, i64 510, !48, i64 512, !38, i64 514, !38, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !48, i64 528, !48, i64 530, !48, i64 532, !48, i64 534, !48, i64 536, !48, i64 538, !48, i64 540, !48, i64 542, !65, i64 544, !65, i64 560, !66, i64 576, !50, i64 592, !48, i64 608, !48, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !40, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !48, i64 648, !48, i64 650, !48, i64 652, !48, i64 654, !48, i64 656, !48, i64 658, !44, i64 660, !44, i64 664, !48, i64 668, !48, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !40, i64 1704, !48, i64 1708, !48, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !40, i64 2520, !48, i64 2524, !48, i64 2526, !44, i64 2528, !44, i64 2532, !48, i64 2536, !48, i64 2538, !44, i64 2540, !48, i64 2544, !48, i64 2546, !40, i64 2548, !48, i64 2552, !48, i64 2554, !48, i64 2556, !48, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !40, i64 2576, !44, i64 2580, !38, i64 2584, !67, i64 2616, !40, i64 3976, !40, i64 3980}
!60 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !48, i64 8, !48, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !61, i64 24, !62, i64 184}
!61 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!62 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!63 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !48, i64 48, !48, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!64 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !44, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !37, i64 64}
!65 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!66 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!67 = !{!"BakeData", !60, i64 0, !38, i64 248, !48, i64 1272, !48, i64 1274, !48, i64 1276, !48, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!68 = !{!"AudioData", !40, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !40, i64 16, !48, i64 20, !48, i64 22, !44, i64 24, !44, i64 28}
!69 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!70 = !{!"GameData", !69, i64 0, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !48, i64 32, !38, i64 34, !71, i64 40, !48, i64 64, !48, i64 66, !44, i64 68, !72, i64 72, !44, i64 128, !44, i64 132, !40, i64 136, !48, i64 140, !48, i64 142, !48, i64 144, !48, i64 146, !48, i64 148, !48, i64 150, !48, i64 152, !48, i64 154, !48, i64 156, !48, i64 158, !48, i64 160, !48, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!71 = !{!"GameDome", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!72 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !40, i64 40, !44, i64 44, !44, i64 48, !48, i64 52, !48, i64 54}
!73 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !48, i64 6}
!74 = !{!"PhysicsSettings", !38, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!75 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!76 = !{!35, !40, i64 144}
!77 = !{!37, !37, i64 0}
!78 = !{!44, !44, i64 0}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!35, !37, i64 136}
!83 = !{!42, !37, i64 1120}
