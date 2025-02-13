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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4, i32 %5) #0 !PGOFuncName !34 {
  %7 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 95
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  tail call void %12(ptr noundef nonnull %8) #7
  br label %13

13:                                               ; preds = %10, %6
  %14 = icmp eq ptr %2, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = tail call ptr @CDDM_copy(ptr noundef nonnull %2) #7
  br label %19

17:                                               ; preds = %13
  %18 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %18, %17 ], [ %16, %15 ]
  store ptr %20, ptr %7, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 110
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %125

26:                                               ; preds = %19
  %27 = icmp eq ptr %20, null
  br i1 %27, label %125, label %28

28:                                               ; preds = %26
  tail call void @CDDM_apply_vert_coords(ptr noundef nonnull %20, ptr noundef %3) #7
  %29 = load ptr, ptr %7, align 8, !tbaa !35
  tail call void @CDDM_calc_normals(ptr noundef %29) #7
  %30 = load ptr, ptr %7, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 23
  %32 = load ptr, ptr %31, align 8, !tbaa !53
  %33 = tail call i32 %32(ptr noundef %30) #7
  %34 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !54
  %36 = icmp eq i32 %33, %35
  %37 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !55
  br i1 %36, label %39, label %58

39:                                               ; preds = %28
  %40 = icmp eq ptr %38, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 1
  br label %64

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !56
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = getelementptr inbounds %struct.Scene, ptr %49, i64 0, i32 22, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !58
  %52 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !77
  %54 = add nsw i32 %53, 1
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %78, label %56

56:                                               ; preds = %47, %43
  %57 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 1
  br label %61

58:                                               ; preds = %28
  %59 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 1
  %60 = icmp eq ptr %38, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56, %58
  %62 = phi ptr [ %57, %56 ], [ %59, %58 ]
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  tail call void %63(ptr noundef nonnull %38) #7
  store ptr null, ptr %62, align 8, !tbaa !55
  br label %64

64:                                               ; preds = %41, %61, %58
  %65 = phi ptr [ %62, %61 ], [ %59, %58 ], [ %42, %41 ]
  %66 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !56
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  tail call void %70(ptr noundef nonnull %67) #7
  store ptr null, ptr %66, align 8, !tbaa !56
  br label %71

71:                                               ; preds = %69, %64
  %72 = load ptr, ptr @MEM_callocN, align 8, !tbaa !78
  %73 = zext i32 %33 to i64
  %74 = mul nuw nsw i64 %73, 20
  %75 = tail call ptr %72(i64 noundef %74, ptr noundef nonnull @.str.1) #7
  store ptr %75, ptr %65, align 8, !tbaa !55
  %76 = load ptr, ptr @MEM_callocN, align 8, !tbaa !78
  %77 = tail call ptr %76(i64 noundef %74, ptr noundef nonnull @.str.1) #7
  store ptr %77, ptr %66, align 8, !tbaa !56
  store i32 %33, ptr %34, align 4, !tbaa !54
  br label %78

78:                                               ; preds = %71, %47
  %79 = phi ptr [ %77, %71 ], [ %45, %47 ]
  %80 = phi i1 [ false, %71 ], [ true, %47 ]
  %81 = icmp eq i32 %33, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !55
  %85 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  br label %86

86:                                               ; preds = %82, %95
  %87 = phi ptr [ %79, %82 ], [ %98, %95 ]
  %88 = phi ptr [ %84, %82 ], [ %97, %95 ]
  %89 = phi i32 [ 0, %82 ], [ %96, %95 ]
  %90 = load ptr, ptr %7, align 8, !tbaa !35
  %91 = tail call ptr @CDDM_get_vert(ptr noundef %90, i32 noundef %89) #7
  tail call void @mul_m4_v3(ptr noundef nonnull %85, ptr noundef %91) #7
  br i1 %80, label %94, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds [3 x float], ptr %87, i64 0, i64 2
  store float 0.000000e+00, ptr %93, align 4, !tbaa !79
  store <2 x float> zeroinitializer, ptr %87, align 4, !tbaa !79
  br label %95

94:                                               ; preds = %86
  tail call fastcc void @sub_v3_v3v3(ptr noundef %87, ptr noundef %91, ptr noundef %88) #8
  br label %95

95:                                               ; preds = %94, %92
  tail call fastcc void @copy_v3_v3(ptr noundef %88, ptr noundef %91) #8
  %96 = add nuw i32 %89, 1
  %97 = getelementptr inbounds %struct.MVert, ptr %88, i64 1
  %98 = getelementptr inbounds %struct.MVert, ptr %87, i64 1
  %99 = icmp eq i32 %96, %33
  br i1 %99, label %100, label %86, !llvm.loop !80

100:                                              ; preds = %95, %78
  %101 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !57
  %103 = getelementptr inbounds %struct.Scene, ptr %102, i64 0, i32 22, i32 5
  %104 = load i32, ptr %103, align 8, !tbaa !58
  %105 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 5
  store i32 %104, ptr %105, align 8, !tbaa !77
  %106 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !82
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %100
  tail call void @free_bvhtree_from_mesh(ptr noundef nonnull %107) #7
  br label %113

110:                                              ; preds = %100
  %111 = load ptr, ptr @MEM_callocN, align 8, !tbaa !78
  %112 = tail call ptr %111(i64 noundef 72, ptr noundef nonnull @.str.2) #7
  store ptr %112, ptr %106, align 8, !tbaa !82
  br label %113

113:                                              ; preds = %110, %109
  %114 = load ptr, ptr %7, align 8, !tbaa !35
  %115 = getelementptr inbounds %struct.DerivedMesh, ptr %114, i64 0, i32 25
  %116 = load ptr, ptr %115, align 8, !tbaa !83
  %117 = tail call i32 %116(ptr noundef %114) #7
  %118 = icmp eq i32 %117, 0
  %119 = load ptr, ptr %106, align 8, !tbaa !82
  %120 = load ptr, ptr %7, align 8, !tbaa !35
  br i1 %118, label %123, label %121

121:                                              ; preds = %113
  %122 = tail call ptr @bvhtree_from_mesh_faces(ptr noundef %119, ptr noundef %120, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #7
  br label %125

123:                                              ; preds = %113
  %124 = tail call ptr @bvhtree_from_mesh_edges(ptr noundef %119, ptr noundef %120, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #7
  br label %125

125:                                              ; preds = %26, %123, %121, %24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !84 {
  %2 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 4
  store ptr null, ptr %2, align 8, !tbaa !82
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr noundef %0) #0 !PGOFuncName !85 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void @free_bvhtree_from_mesh(ptr noundef nonnull %5) #7
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  %9 = load ptr, ptr %4, align 8, !tbaa !82
  tail call void %8(ptr noundef %9) #7
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  tail call void %16(ptr noundef nonnull %12) #7
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  tail call void %22(ptr noundef nonnull %19) #7
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.SurfaceModifierData, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  tail call void %28(ptr noundef nonnull %25) #7
  br label %29

29:                                               ; preds = %27, %23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #2 !PGOFuncName !86 {
  ret i8 1
}

; Function Attrs: optsize
declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CDDM_calc_normals(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CDDM_get_vert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !87 {
  %4 = load float, ptr %1, align 4, !tbaa !79
  %5 = load float, ptr %2, align 4, !tbaa !79
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !79
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !79
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !79
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !79
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !79
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !88 {
  %3 = load float, ptr %1, align 4, !tbaa !79
  store float %3, ptr %0, align 4, !tbaa !79
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !79
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !79
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !79
  ret void
}

; Function Attrs: optsize
declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_edges(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"MOD_surface.c:deformVerts"}
!35 = !{!36, !38, i64 128}
!36 = !{!"SurfaceModifierData", !37, i64 0, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !41, i64 144, !41, i64 148}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!43, !38, i64 1680}
!43 = !{!"DerivedMesh", !44, i64 0, !44, i64 200, !44, i64 400, !44, i64 600, !44, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !45, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!44 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!45 = !{!"float", !39, i64 0}
!46 = !{!47, !38, i64 1240}
!47 = !{!"Object", !48, i64 0, !38, i64 120, !38, i64 128, !49, i64 136, !49, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !50, i64 312, !38, i64 360, !51, i64 368, !51, i64 384, !51, i64 400, !51, i64 416, !41, i64 432, !41, i64 436, !38, i64 440, !38, i64 448, !41, i64 456, !41, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !45, i64 616, !45, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !41, i64 944, !49, i64 948, !49, i64 950, !49, i64 952, !49, i64 954, !49, i64 956, !49, i64 958, !49, i64 960, !49, i64 962, !49, i64 964, !39, i64 966, !39, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !49, i64 1036, !49, i64 1038, !49, i64 1040, !39, i64 1042, !39, i64 1043, !49, i64 1044, !39, i64 1046, !39, i64 1047, !45, i64 1048, !45, i64 1052, !51, i64 1056, !51, i64 1072, !51, i64 1088, !51, i64 1104, !45, i64 1120, !49, i64 1124, !49, i64 1126, !39, i64 1128, !41, i64 1144, !41, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !49, i64 1162, !39, i64 1164, !51, i64 1176, !51, i64 1192, !51, i64 1208, !51, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !49, i64 1266, !45, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !52, i64 1304, !52, i64 1312, !41, i64 1320, !41, i64 1324, !51, i64 1328, !51, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !51, i64 1400, !38, i64 1416}
!48 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !49, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!49 = !{!"short", !39, i64 0}
!50 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !49, i64 16, !49, i64 18, !49, i64 20, !49, i64 22, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!51 = !{!"ListBase", !38, i64 0, !38, i64 8}
!52 = !{!"long", !39, i64 0}
!53 = !{!43, !38, i64 1104}
!54 = !{!36, !41, i64 148}
!55 = !{!36, !38, i64 112}
!56 = !{!36, !38, i64 120}
!57 = !{!37, !38, i64 96}
!58 = !{!59, !41, i64 680}
!59 = !{!"Scene", !48, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !51, i64 152, !38, i64 168, !38, i64 176, !39, i64 184, !39, i64 196, !39, i64 208, !39, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !49, i64 244, !39, i64 246, !39, i64 247, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !60, i64 280, !69, i64 4264, !51, i64 4296, !51, i64 4312, !38, i64 4328, !38, i64 4336, !38, i64 4344, !38, i64 4352, !38, i64 4360, !38, i64 4368, !49, i64 4376, !49, i64 4378, !41, i64 4380, !51, i64 4384, !70, i64 4400, !71, i64 4416, !74, i64 4600, !38, i64 4608, !75, i64 4616, !38, i64 4640, !52, i64 4648, !52, i64 4656, !62, i64 4664, !63, i64 4824, !76, i64 4888, !38, i64 4952}
!60 = !{!"RenderData", !61, i64 0, !38, i64 248, !38, i64 256, !64, i64 264, !65, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !45, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !49, i64 432, !49, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !49, i64 456, !49, i64 458, !49, i64 460, !49, i64 462, !49, i64 464, !49, i64 466, !41, i64 468, !49, i64 472, !49, i64 474, !49, i64 476, !49, i64 478, !49, i64 480, !49, i64 482, !41, i64 484, !41, i64 488, !49, i64 492, !49, i64 494, !41, i64 496, !41, i64 500, !49, i64 504, !49, i64 506, !49, i64 508, !49, i64 510, !49, i64 512, !39, i64 514, !39, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !49, i64 528, !49, i64 530, !49, i64 532, !49, i64 534, !49, i64 536, !49, i64 538, !49, i64 540, !49, i64 542, !66, i64 544, !66, i64 560, !67, i64 576, !51, i64 592, !49, i64 608, !49, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !41, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !49, i64 648, !49, i64 650, !49, i64 652, !49, i64 654, !49, i64 656, !49, i64 658, !45, i64 660, !45, i64 664, !49, i64 668, !49, i64 670, !45, i64 672, !45, i64 676, !39, i64 680, !41, i64 1704, !49, i64 1708, !49, i64 1710, !39, i64 1712, !39, i64 2480, !39, i64 2496, !39, i64 2512, !39, i64 2513, !39, i64 2514, !39, i64 2515, !41, i64 2520, !49, i64 2524, !49, i64 2526, !45, i64 2528, !45, i64 2532, !49, i64 2536, !49, i64 2538, !45, i64 2540, !49, i64 2544, !49, i64 2546, !41, i64 2548, !49, i64 2552, !49, i64 2554, !49, i64 2556, !49, i64 2558, !45, i64 2560, !45, i64 2564, !38, i64 2568, !41, i64 2576, !45, i64 2580, !39, i64 2584, !68, i64 2616, !41, i64 3976, !41, i64 3980}
!61 = !{!"ImageFormatData", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3, !39, i64 4, !39, i64 5, !39, i64 6, !39, i64 7, !49, i64 8, !49, i64 10, !45, i64 12, !39, i64 16, !39, i64 17, !39, i64 18, !62, i64 24, !63, i64 184}
!62 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !39, i64 8, !39, i64 72, !45, i64 136, !45, i64 140, !38, i64 144, !38, i64 152}
!63 = !{!"ColorManagedDisplaySettings", !39, i64 0}
!64 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !49, i64 48, !49, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!65 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !45, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !38, i64 64}
!66 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!67 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!68 = !{!"BakeData", !61, i64 0, !39, i64 248, !49, i64 1272, !49, i64 1274, !49, i64 1276, !49, i64 1278, !45, i64 1280, !45, i64 1284, !39, i64 1288, !39, i64 1291, !39, i64 1292, !39, i64 1293, !39, i64 1296}
!69 = !{!"AudioData", !41, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !41, i64 16, !49, i64 20, !49, i64 22, !45, i64 24, !45, i64 28}
!70 = !{!"GameFraming", !39, i64 0, !39, i64 12, !39, i64 13, !39, i64 14, !39, i64 15}
!71 = !{!"GameData", !70, i64 0, !49, i64 16, !49, i64 18, !49, i64 20, !49, i64 22, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !49, i64 32, !39, i64 34, !72, i64 40, !49, i64 64, !49, i64 66, !45, i64 68, !73, i64 72, !45, i64 128, !45, i64 132, !41, i64 136, !49, i64 140, !49, i64 142, !49, i64 144, !49, i64 146, !49, i64 148, !49, i64 150, !49, i64 152, !49, i64 154, !49, i64 156, !49, i64 158, !49, i64 160, !49, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!72 = !{!"GameDome", !49, i64 0, !49, i64 2, !49, i64 4, !49, i64 6, !45, i64 8, !45, i64 12, !38, i64 16}
!73 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !41, i64 40, !45, i64 44, !45, i64 48, !49, i64 52, !49, i64 54}
!74 = !{!"UnitSettings", !45, i64 0, !39, i64 4, !39, i64 5, !49, i64 6}
!75 = !{!"PhysicsSettings", !39, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!76 = !{!"ColorManagedColorspaceSettings", !39, i64 0}
!77 = !{!36, !41, i64 144}
!78 = !{!38, !38, i64 0}
!79 = !{!45, !45, i64 0}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!36, !38, i64 136}
!83 = !{!43, !38, i64 1120}
!84 = !{!"MOD_surface.c:initData"}
!85 = !{!"MOD_surface.c:freeData"}
!86 = !{!"MOD_surface.c:dependsOnTime"}
!87 = !{!"MOD_surface.c:sub_v3_v3v3"}
!88 = !{!"MOD_surface.c:copy_v3_v3"}
