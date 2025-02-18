; ModuleID = 'blender/source/blender/modifiers/intern/MOD_collision.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.CollisionModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, float, float, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }

@modifierType_Collision = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CollisionModifierData\00\00\00\00\00\00\00\00\00\00\00", i32 192, i32 1, i32 129, ptr null, ptr @deformVerts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @initData, ptr null, ptr @freeData, ptr null, ptr null, ptr @dependsOnTime, ptr null, ptr null, ptr null, ptr null }, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"current_time %f, collmd->time_xnew %f\0A\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [50 x i8] c"CollisionModifier deformVerts: Should not happen!\00", align 1

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4, i32 %5) #0 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call ptr @CDDM_copy(ptr noundef nonnull %2) #8
  br label %18

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !34
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = tail call ptr @CDDM_from_mesh(ptr noundef %16) #8
  br label %18

18:                                               ; preds = %10, %14, %8
  %19 = phi ptr [ %9, %8 ], [ %17, %14 ], [ null, %10 ]
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 110
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %186

25:                                               ; preds = %18
  %26 = icmp eq ptr %19, null
  br i1 %26, label %186, label %27

27:                                               ; preds = %25
  tail call void @CDDM_apply_vert_coords(ptr noundef nonnull %19, ptr noundef %3) #8
  tail call void @CDDM_calc_normals(ptr noundef nonnull %19) #8
  %28 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = tail call float @BKE_scene_frame_get(ptr noundef %29) #8
  %31 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !50
  %32 = icmp sgt i16 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = fpext float %30 to double
  %35 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 11
  %36 = load float, ptr %35, align 4, !tbaa !52
  %37 = fpext float %36 to double
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %34, double noundef %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 23
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = tail call i32 %41(ptr noundef nonnull %19) #8
  %43 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 11
  %44 = load float, ptr %43, align 4, !tbaa !52
  %45 = fcmp ogt float %30, %44
  br i1 %45, label %46, label %175

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 8
  %52 = load i32, ptr %51, align 8, !tbaa !58
  %53 = icmp eq i32 %42, %52
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @freeData(ptr noundef %0)
  br label %55

55:                                               ; preds = %54, %50, %46
  %56 = load float, ptr %43, align 4, !tbaa !52
  %57 = fcmp oeq float %56, -1.000000e+03
  br i1 %57, label %58, label %106

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 41
  %60 = load ptr, ptr %59, align 8, !tbaa !59
  %61 = tail call ptr %60(ptr noundef nonnull %19) #8
  store ptr %61, ptr %47, align 8, !tbaa !57
  %62 = icmp eq i32 %42, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %65 = zext i32 %42 to i64
  br label %66

66:                                               ; preds = %63, %66
  %67 = phi i64 [ 0, %63 ], [ %70, %66 ]
  %68 = load ptr, ptr %47, align 8, !tbaa !57
  %69 = getelementptr inbounds %struct.MVert, ptr %68, i64 %67
  tail call void @mul_m4_v3(ptr noundef nonnull %64, ptr noundef %69) #8
  %70 = add nuw nsw i64 %67, 1
  %71 = icmp eq i64 %70, %65
  br i1 %71, label %72, label %66, !llvm.loop !60

72:                                               ; preds = %66, %58
  %73 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !63
  %74 = load ptr, ptr %47, align 8, !tbaa !57
  %75 = tail call ptr %73(ptr noundef %74) #8
  %76 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 2
  store ptr %75, ptr %76, align 8, !tbaa !64
  %77 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !63
  %78 = load ptr, ptr %47, align 8, !tbaa !57
  %79 = tail call ptr %77(ptr noundef %78) #8
  %80 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 5
  store ptr %79, ptr %80, align 8, !tbaa !65
  %81 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !63
  %82 = load ptr, ptr %47, align 8, !tbaa !57
  %83 = tail call ptr %81(ptr noundef %82) #8
  %84 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 4
  store ptr %83, ptr %84, align 8, !tbaa !66
  %85 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !63
  %86 = load ptr, ptr %47, align 8, !tbaa !57
  %87 = tail call ptr %85(ptr noundef %86) #8
  %88 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 6
  store ptr %87, ptr %88, align 8, !tbaa !67
  %89 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 8
  store i32 %42, ptr %89, align 8, !tbaa !58
  tail call void @DM_ensure_tessface(ptr noundef nonnull %19) #8
  %90 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 43
  %91 = load ptr, ptr %90, align 8, !tbaa !68
  %92 = tail call ptr %91(ptr noundef nonnull %19) #8
  %93 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 7
  store ptr %92, ptr %93, align 8, !tbaa !69
  %94 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 25
  %95 = load ptr, ptr %94, align 8, !tbaa !70
  %96 = tail call i32 %95(ptr noundef nonnull %19) #8
  %97 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 9
  store i32 %96, ptr %97, align 4, !tbaa !71
  %98 = load ptr, ptr %93, align 8, !tbaa !69
  %99 = load ptr, ptr %47, align 8, !tbaa !57
  %100 = load ptr, ptr %20, align 8, !tbaa !47
  %101 = getelementptr inbounds %struct.PartDeflect, ptr %100, i64 0, i32 28
  %102 = load float, ptr %101, align 8, !tbaa !72
  %103 = tail call ptr @bvhtree_build_from_mvert(ptr noundef %98, i32 noundef %96, ptr noundef %99, i32 noundef %42, float noundef %102) #8
  %104 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 12
  store ptr %103, ptr %104, align 8, !tbaa !74
  store float %30, ptr %43, align 4, !tbaa !52
  %105 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 10
  store float %30, ptr %105, align 8, !tbaa !75
  br label %183

106:                                              ; preds = %55
  %107 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 8
  %108 = load i32, ptr %107, align 8, !tbaa !58
  %109 = icmp eq i32 %42, %108
  br i1 %109, label %110, label %174

110:                                              ; preds = %106
  %111 = load ptr, ptr %47, align 8, !tbaa !57
  %112 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !64
  store ptr %113, ptr %47, align 8, !tbaa !57
  store ptr %111, ptr %112, align 8, !tbaa !64
  %114 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 10
  store float %56, ptr %114, align 8, !tbaa !75
  %115 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 31
  %116 = load ptr, ptr %115, align 8, !tbaa !76
  %117 = tail call ptr %116(ptr noundef nonnull %19) #8
  %118 = zext i32 %42 to i64
  %119 = mul nuw nsw i64 %118, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %111, ptr align 4 %117, i64 %119, i1 false)
  %120 = icmp eq i32 %42, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %123 = zext i32 %42 to i64
  br label %124

124:                                              ; preds = %121, %124
  %125 = phi i64 [ 0, %121 ], [ %128, %124 ]
  %126 = load ptr, ptr %112, align 8, !tbaa !64
  %127 = getelementptr inbounds %struct.MVert, ptr %126, i64 %125
  tail call void @mul_m4_v3(ptr noundef nonnull %122, ptr noundef %127) #8
  %128 = add nuw nsw i64 %125, 1
  %129 = icmp eq i64 %128, %123
  br i1 %129, label %130, label %124, !llvm.loop !77

130:                                              ; preds = %124, %110
  %131 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 4
  %132 = load ptr, ptr %131, align 8, !tbaa !66
  %133 = load ptr, ptr %47, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %132, ptr align 4 %133, i64 %119, i1 false)
  %134 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 5
  %135 = load ptr, ptr %134, align 8, !tbaa !65
  %136 = load ptr, ptr %47, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %135, ptr align 4 %136, i64 %119, i1 false)
  %137 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 12
  %138 = load ptr, ptr %137, align 8, !tbaa !74
  %139 = icmp eq ptr %138, null
  br i1 %139, label %157, label %140

140:                                              ; preds = %130
  %141 = load ptr, ptr %20, align 8, !tbaa !47
  %142 = getelementptr inbounds %struct.PartDeflect, ptr %141, i64 0, i32 28
  %143 = load float, ptr %142, align 8, !tbaa !72
  %144 = tail call float @BLI_bvhtree_getepsilon(ptr noundef nonnull %138) #8
  %145 = fcmp une float %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %140
  %147 = load ptr, ptr %137, align 8, !tbaa !74
  tail call void @BLI_bvhtree_free(ptr noundef %147) #8
  %148 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 7
  %149 = load ptr, ptr %148, align 8, !tbaa !69
  %150 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 9
  %151 = load i32, ptr %150, align 4, !tbaa !71
  %152 = load ptr, ptr %134, align 8, !tbaa !65
  %153 = load ptr, ptr %20, align 8, !tbaa !47
  %154 = getelementptr inbounds %struct.PartDeflect, ptr %153, i64 0, i32 28
  %155 = load float, ptr %154, align 8, !tbaa !72
  %156 = tail call ptr @bvhtree_build_from_mvert(ptr noundef %149, i32 noundef %151, ptr noundef %152, i32 noundef %42, float noundef %155) #8
  store ptr %156, ptr %137, align 8, !tbaa !74
  br label %157

157:                                              ; preds = %140, %146, %130
  %158 = load ptr, ptr %137, align 8, !tbaa !74
  %159 = icmp eq ptr %158, null
  %160 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 7
  %161 = load ptr, ptr %160, align 8, !tbaa !69
  %162 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 9
  %163 = load i32, ptr %162, align 4, !tbaa !71
  %164 = load ptr, ptr %134, align 8, !tbaa !65
  br i1 %159, label %165, label %170

165:                                              ; preds = %157
  %166 = load ptr, ptr %20, align 8, !tbaa !47
  %167 = getelementptr inbounds %struct.PartDeflect, ptr %166, i64 0, i32 28
  %168 = load float, ptr %167, align 8, !tbaa !72
  %169 = tail call ptr @bvhtree_build_from_mvert(ptr noundef %161, i32 noundef %163, ptr noundef %164, i32 noundef %42, float noundef %168) #8
  store ptr %169, ptr %137, align 8, !tbaa !74
  br label %173

170:                                              ; preds = %157
  %171 = load ptr, ptr %131, align 8, !tbaa !66
  %172 = load i32, ptr %107, align 8, !tbaa !58
  tail call void @bvhtree_update_from_mvert(ptr noundef nonnull %158, ptr noundef %161, i32 noundef %163, ptr noundef %164, ptr noundef %171, i32 noundef %172, i32 noundef 1) #8
  br label %173

173:                                              ; preds = %170, %165
  store float %30, ptr %43, align 4, !tbaa !52
  br label %183

174:                                              ; preds = %106
  tail call void @freeData(ptr noundef %0)
  br label %183

175:                                              ; preds = %39
  %176 = fcmp olt float %30, %44
  br i1 %176, label %177, label %178

177:                                              ; preds = %175
  tail call void @freeData(ptr noundef %0)
  br label %183

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 8
  %180 = load i32, ptr %179, align 8, !tbaa !58
  %181 = icmp eq i32 %42, %180
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  tail call void @freeData(ptr noundef %0)
  br label %183

183:                                              ; preds = %72, %174, %173, %177, %182, %178
  %184 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 95
  %185 = load ptr, ptr %184, align 8, !tbaa !78
  tail call void %185(ptr noundef nonnull %19) #8
  br label %186

186:                                              ; preds = %183, %25, %23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store float -1.000000e+03, ptr %4, align 4, !tbaa !52
  %5 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 10
  store float -1.000000e+03, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 8
  store i32 0, ptr %6, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 12
  store ptr null, ptr %7, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeData(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BLI_bvhtree_free(ptr noundef nonnull %5) #8
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %13(ptr noundef nonnull %10) #8
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %19(ptr noundef nonnull %16) #8
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %25(ptr noundef nonnull %22) #8
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !66
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %31(ptr noundef nonnull %28) #8
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %37(ptr noundef nonnull %34) #8
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !69
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %43(ptr noundef nonnull %40) #8
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  store float -1.000000e+03, ptr %45, align 4, !tbaa !52
  %46 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 10
  store float -1.000000e+03, ptr %46, align 8, !tbaa !75
  %47 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 8
  store i32 0, ptr %47, align 8, !tbaa !58
  store ptr null, ptr %4, align 8, !tbaa !74
  store ptr null, ptr %39, align 8, !tbaa !69
  br label %48

48:                                               ; preds = %44, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #2 {
  ret i8 1
}

declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #3

declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @CDDM_calc_normals(ptr noundef) local_unnamed_addr #3

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #3

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #3

declare ptr @bvhtree_build_from_mvert(ptr noundef, i32 noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare float @BLI_bvhtree_getepsilon(ptr noundef) local_unnamed_addr #3

declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #3

declare void @bvhtree_update_from_mvert(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind }
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
!34 = !{!35, !40, i64 136}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!35, !37, i64 296}
!47 = !{!35, !37, i64 1240}
!48 = !{!49, !37, i64 96}
!49 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!50 = !{!51, !40, i64 2092}
!51 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !43, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!52 = !{!53, !44, i64 180}
!53 = !{!"CollisionModifierData", !49, i64 0, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !41, i64 168, !41, i64 172, !44, i64 176, !44, i64 180, !37, i64 184}
!54 = !{!55, !37, i64 1104}
!55 = !{!"DerivedMesh", !56, i64 0, !56, i64 200, !56, i64 400, !56, i64 600, !56, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!56 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!57 = !{!53, !37, i64 112}
!58 = !{!53, !41, i64 168}
!59 = !{!55, !37, i64 1248}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!37, !37, i64 0}
!64 = !{!53, !37, i64 120}
!65 = !{!53, !37, i64 144}
!66 = !{!53, !37, i64 136}
!67 = !{!53, !37, i64 152}
!68 = !{!55, !37, i64 1264}
!69 = !{!53, !37, i64 160}
!70 = !{!55, !37, i64 1120}
!71 = !{!53, !41, i64 172}
!72 = !{!73, !44, i64 96}
!73 = !{!"PartDeflect", !41, i64 0, !40, i64 4, !40, i64 6, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !40, i64 16, !40, i64 18, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !37, i64 128, !37, i64 136, !44, i64 144, !41, i64 148, !37, i64 152}
!74 = !{!53, !37, i64 184}
!75 = !{!53, !44, i64 176}
!76 = !{!55, !37, i64 1168}
!77 = distinct !{!77, !61, !62}
!78 = !{!55, !37, i64 1680}
