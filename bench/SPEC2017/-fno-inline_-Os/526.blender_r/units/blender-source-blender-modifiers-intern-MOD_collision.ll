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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4, i32 %5) #0 !PGOFuncName !34 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call ptr @CDDM_copy(ptr noundef nonnull %2) #8
  br label %18

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !35
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = tail call ptr @CDDM_from_mesh(ptr noundef %16) #8
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi ptr [ %9, %8 ], [ %17, %14 ]
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 110
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %29

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 110
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %197

27:                                               ; preds = %23, %18
  %28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %197

29:                                               ; preds = %18
  %30 = icmp eq ptr %19, null
  br i1 %30, label %197, label %31

31:                                               ; preds = %29
  tail call void @CDDM_apply_vert_coords(ptr noundef nonnull %19, ptr noundef %3) #8
  tail call void @CDDM_calc_normals(ptr noundef nonnull %19) #8
  %32 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = tail call float @BKE_scene_frame_get(ptr noundef %33) #8
  %35 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !51
  %36 = icmp sgt i16 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = fpext float %34 to double
  %39 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 11
  %40 = load float, ptr %39, align 4, !tbaa !53
  %41 = fpext float %40 to double
  %42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %38, double noundef %41) #9
  br label %43

43:                                               ; preds = %37, %31
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 23
  %45 = load ptr, ptr %44, align 8, !tbaa !55
  %46 = tail call i32 %45(ptr noundef nonnull %19) #8
  %47 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 11
  %48 = load float, ptr %47, align 4, !tbaa !53
  %49 = fcmp ogt float %34, %48
  br i1 %49, label %50, label %186

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !58
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 8
  %56 = load i32, ptr %55, align 8, !tbaa !59
  %57 = icmp eq i32 %46, %56
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  tail call void @freeData(ptr noundef nonnull %0) #9
  %59 = load float, ptr %47, align 4, !tbaa !53
  br label %60

60:                                               ; preds = %58, %54, %50
  %61 = phi float [ %59, %58 ], [ %48, %54 ], [ %48, %50 ]
  %62 = fcmp oeq float %61, -1.000000e+03
  br i1 %62, label %63, label %113

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 41
  %65 = load ptr, ptr %64, align 8, !tbaa !60
  %66 = tail call ptr %65(ptr noundef nonnull %19) #8
  store ptr %66, ptr %51, align 8, !tbaa !58
  %67 = icmp eq i32 %46, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %70 = zext i32 %46 to i64
  br label %71

71:                                               ; preds = %68, %71
  %72 = phi i64 [ 0, %68 ], [ %75, %71 ]
  %73 = load ptr, ptr %51, align 8, !tbaa !58
  %74 = getelementptr inbounds %struct.MVert, ptr %73, i64 %72
  tail call void @mul_m4_v3(ptr noundef nonnull %69, ptr noundef %74) #8
  %75 = add nuw nsw i64 %72, 1
  %76 = icmp eq i64 %75, %70
  br i1 %76, label %77, label %71, !llvm.loop !61

77:                                               ; preds = %71
  %78 = load ptr, ptr %51, align 8, !tbaa !58
  br label %79

79:                                               ; preds = %77, %63
  %80 = phi ptr [ %78, %77 ], [ %66, %63 ]
  %81 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !63
  %82 = tail call ptr %81(ptr noundef %80) #8
  %83 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 2
  store ptr %82, ptr %83, align 8, !tbaa !64
  %84 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !63
  %85 = load ptr, ptr %51, align 8, !tbaa !58
  %86 = tail call ptr %84(ptr noundef %85) #8
  %87 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 5
  store ptr %86, ptr %87, align 8, !tbaa !65
  %88 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !63
  %89 = load ptr, ptr %51, align 8, !tbaa !58
  %90 = tail call ptr %88(ptr noundef %89) #8
  %91 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 4
  store ptr %90, ptr %91, align 8, !tbaa !66
  %92 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !63
  %93 = load ptr, ptr %51, align 8, !tbaa !58
  %94 = tail call ptr %92(ptr noundef %93) #8
  %95 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 6
  store ptr %94, ptr %95, align 8, !tbaa !67
  %96 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 8
  store i32 %46, ptr %96, align 8, !tbaa !59
  tail call void @DM_ensure_tessface(ptr noundef nonnull %19) #8
  %97 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 43
  %98 = load ptr, ptr %97, align 8, !tbaa !68
  %99 = tail call ptr %98(ptr noundef nonnull %19) #8
  %100 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 7
  store ptr %99, ptr %100, align 8, !tbaa !69
  %101 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 25
  %102 = load ptr, ptr %101, align 8, !tbaa !70
  %103 = tail call i32 %102(ptr noundef nonnull %19) #8
  %104 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 9
  store i32 %103, ptr %104, align 4, !tbaa !71
  %105 = load ptr, ptr %100, align 8, !tbaa !69
  %106 = load ptr, ptr %51, align 8, !tbaa !58
  %107 = load ptr, ptr %20, align 8, !tbaa !48
  %108 = getelementptr inbounds %struct.PartDeflect, ptr %107, i64 0, i32 28
  %109 = load float, ptr %108, align 8, !tbaa !72
  %110 = tail call ptr @bvhtree_build_from_mvert(ptr noundef %105, i32 noundef %103, ptr noundef %106, i32 noundef %46, float noundef %109) #8
  %111 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 12
  store ptr %110, ptr %111, align 8, !tbaa !74
  store float %34, ptr %47, align 4, !tbaa !53
  %112 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 10
  store float %34, ptr %112, align 8, !tbaa !75
  br label %194

113:                                              ; preds = %60
  %114 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 8
  %115 = load i32, ptr %114, align 8, !tbaa !59
  %116 = icmp eq i32 %46, %115
  br i1 %116, label %117, label %185

117:                                              ; preds = %113
  %118 = load ptr, ptr %51, align 8, !tbaa !58
  %119 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !64
  store ptr %120, ptr %51, align 8, !tbaa !58
  store ptr %118, ptr %119, align 8, !tbaa !64
  %121 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 10
  store float %61, ptr %121, align 8, !tbaa !75
  %122 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 31
  %123 = load ptr, ptr %122, align 8, !tbaa !76
  %124 = tail call ptr %123(ptr noundef nonnull %19) #8
  %125 = zext i32 %46 to i64
  %126 = mul nuw nsw i64 %125, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %118, ptr align 4 %124, i64 %126, i1 false)
  %127 = icmp eq i32 %46, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  br label %130

130:                                              ; preds = %128, %130
  %131 = phi i64 [ 0, %128 ], [ %134, %130 ]
  %132 = load ptr, ptr %119, align 8, !tbaa !64
  %133 = getelementptr inbounds %struct.MVert, ptr %132, i64 %131
  tail call void @mul_m4_v3(ptr noundef nonnull %129, ptr noundef %133) #8
  %134 = add nuw nsw i64 %131, 1
  %135 = icmp eq i64 %134, %125
  br i1 %135, label %136, label %130, !llvm.loop !77

136:                                              ; preds = %130, %117
  %137 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !66
  %139 = load ptr, ptr %51, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %138, ptr align 4 %139, i64 %126, i1 false)
  %140 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 5
  %141 = load ptr, ptr %140, align 8, !tbaa !65
  %142 = load ptr, ptr %51, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %141, ptr align 4 %142, i64 %126, i1 false)
  %143 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 12
  %144 = load ptr, ptr %143, align 8, !tbaa !74
  %145 = icmp eq ptr %144, null
  br i1 %145, label %166, label %146

146:                                              ; preds = %136
  %147 = load ptr, ptr %20, align 8, !tbaa !48
  %148 = getelementptr inbounds %struct.PartDeflect, ptr %147, i64 0, i32 28
  %149 = load float, ptr %148, align 8, !tbaa !72
  %150 = tail call float @BLI_bvhtree_getepsilon(ptr noundef nonnull %144) #8
  %151 = fcmp une float %149, %150
  %152 = load ptr, ptr %143, align 8, !tbaa !74
  br i1 %151, label %153, label %163

153:                                              ; preds = %146
  tail call void @BLI_bvhtree_free(ptr noundef %152) #8
  %154 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 7
  %155 = load ptr, ptr %154, align 8, !tbaa !69
  %156 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 9
  %157 = load i32, ptr %156, align 4, !tbaa !71
  %158 = load ptr, ptr %140, align 8, !tbaa !65
  %159 = load ptr, ptr %20, align 8, !tbaa !48
  %160 = getelementptr inbounds %struct.PartDeflect, ptr %159, i64 0, i32 28
  %161 = load float, ptr %160, align 8, !tbaa !72
  %162 = tail call ptr @bvhtree_build_from_mvert(ptr noundef %155, i32 noundef %157, ptr noundef %158, i32 noundef %46, float noundef %161) #8
  store ptr %162, ptr %143, align 8, !tbaa !74
  br label %163

163:                                              ; preds = %146, %153
  %164 = phi ptr [ %162, %153 ], [ %152, %146 ]
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %176

166:                                              ; preds = %136, %163
  %167 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 7
  %168 = load ptr, ptr %167, align 8, !tbaa !69
  %169 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 9
  %170 = load i32, ptr %169, align 4, !tbaa !71
  %171 = load ptr, ptr %140, align 8, !tbaa !65
  %172 = load ptr, ptr %20, align 8, !tbaa !48
  %173 = getelementptr inbounds %struct.PartDeflect, ptr %172, i64 0, i32 28
  %174 = load float, ptr %173, align 8, !tbaa !72
  %175 = tail call ptr @bvhtree_build_from_mvert(ptr noundef %168, i32 noundef %170, ptr noundef %171, i32 noundef %46, float noundef %174) #8
  store ptr %175, ptr %143, align 8, !tbaa !74
  br label %184

176:                                              ; preds = %163
  %177 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 7
  %178 = load ptr, ptr %177, align 8, !tbaa !69
  %179 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 9
  %180 = load i32, ptr %179, align 4, !tbaa !71
  %181 = load ptr, ptr %140, align 8, !tbaa !65
  %182 = load ptr, ptr %137, align 8, !tbaa !66
  %183 = load i32, ptr %114, align 8, !tbaa !59
  tail call void @bvhtree_update_from_mvert(ptr noundef nonnull %164, ptr noundef %178, i32 noundef %180, ptr noundef %181, ptr noundef %182, i32 noundef %183, i32 noundef 1) #8
  br label %184

184:                                              ; preds = %176, %166
  store float %34, ptr %47, align 4, !tbaa !53
  br label %194

185:                                              ; preds = %113
  tail call void @freeData(ptr noundef nonnull %0) #9
  br label %194

186:                                              ; preds = %43
  %187 = fcmp olt float %34, %48
  br i1 %187, label %188, label %189

188:                                              ; preds = %186
  tail call void @freeData(ptr noundef nonnull %0) #9
  br label %194

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 8
  %191 = load i32, ptr %190, align 8, !tbaa !59
  %192 = icmp eq i32 %46, %191
  br i1 %192, label %194, label %193

193:                                              ; preds = %189
  tail call void @freeData(ptr noundef nonnull %0) #9
  br label %194

194:                                              ; preds = %79, %185, %184, %188, %193, %189
  %195 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 95
  %196 = load ptr, ptr %195, align 8, !tbaa !78
  tail call void %196(ptr noundef nonnull %19) #8
  br label %197

197:                                              ; preds = %23, %194, %29, %27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !79 {
  %2 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %4 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 10
  store <2 x float> <float -1.000000e+03, float -1.000000e+03>, ptr %4, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 8
  store i32 0, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 12
  store ptr null, ptr %6, align 8, !tbaa !74
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr noundef %0) #0 !PGOFuncName !81 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %47, label %3

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
  %10 = load ptr, ptr %9, align 8, !tbaa !58
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  %45 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 10
  store <2 x float> <float -1.000000e+03, float -1.000000e+03>, ptr %45, align 8, !tbaa !80
  %46 = getelementptr inbounds %struct.CollisionModifierData, ptr %0, i64 0, i32 8
  store i32 0, ptr %46, align 8, !tbaa !59
  store ptr null, ptr %4, align 8, !tbaa !74
  store ptr null, ptr %39, align 8, !tbaa !69
  br label %47

47:                                               ; preds = %44, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #2 !PGOFuncName !82 {
  ret i8 1
}

; Function Attrs: optsize
declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CDDM_from_mesh(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CDDM_calc_normals(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bvhtree_build_from_mvert(ptr noundef, i32 noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare float @BLI_bvhtree_getepsilon(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bvhtree_update_from_mvert(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

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
!34 = !{!"MOD_collision.c:deformVerts"}
!35 = !{!36, !41, i64 136}
!36 = !{!"Object", !37, i64 0, !38, i64 120, !38, i64 128, !41, i64 136, !41, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !43, i64 312, !38, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !42, i64 432, !42, i64 436, !38, i64 440, !38, i64 448, !42, i64 456, !42, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !45, i64 616, !45, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !42, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !39, i64 966, !39, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !39, i64 1042, !39, i64 1043, !41, i64 1044, !39, i64 1046, !39, i64 1047, !45, i64 1048, !45, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !45, i64 1120, !41, i64 1124, !41, i64 1126, !39, i64 1128, !42, i64 1144, !42, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !41, i64 1162, !39, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !41, i64 1266, !45, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !46, i64 1304, !46, i64 1312, !42, i64 1320, !42, i64 1324, !44, i64 1328, !44, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !44, i64 1400, !38, i64 1416}
!37 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !38, i64 112}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"short", !39, i64 0}
!42 = !{!"int", !39, i64 0}
!43 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!44 = !{!"ListBase", !38, i64 0, !38, i64 8}
!45 = !{!"float", !39, i64 0}
!46 = !{!"long", !39, i64 0}
!47 = !{!36, !38, i64 296}
!48 = !{!36, !38, i64 1240}
!49 = !{!50, !38, i64 96}
!50 = !{!"ModifierData", !38, i64 0, !38, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!51 = !{!52, !41, i64 2092}
!52 = !{!"Global", !38, i64 0, !39, i64 8, !39, i64 1032, !39, i64 2056, !39, i64 2057, !39, i64 2058, !44, i64 2064, !39, i64 2080, !39, i64 2081, !39, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !39, i64 2090, !41, i64 2092, !42, i64 2096, !42, i64 2100, !39, i64 2104, !42, i64 2108, !42, i64 2112, !39, i64 2116}
!53 = !{!54, !45, i64 180}
!54 = !{!"CollisionModifierData", !50, i64 0, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !42, i64 168, !42, i64 172, !45, i64 176, !45, i64 180, !38, i64 184}
!55 = !{!56, !38, i64 1104}
!56 = !{!"DerivedMesh", !57, i64 0, !57, i64 200, !57, i64 400, !57, i64 600, !57, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !38, i64 1032, !38, i64 1040, !42, i64 1048, !45, i64 1052, !42, i64 1056, !42, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!57 = !{!"CustomData", !38, i64 0, !39, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !38, i64 184, !38, i64 192}
!58 = !{!54, !38, i64 112}
!59 = !{!54, !42, i64 168}
!60 = !{!56, !38, i64 1248}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!38, !38, i64 0}
!64 = !{!54, !38, i64 120}
!65 = !{!54, !38, i64 144}
!66 = !{!54, !38, i64 136}
!67 = !{!54, !38, i64 152}
!68 = !{!56, !38, i64 1264}
!69 = !{!54, !38, i64 160}
!70 = !{!56, !38, i64 1120}
!71 = !{!54, !42, i64 172}
!72 = !{!73, !45, i64 96}
!73 = !{!"PartDeflect", !42, i64 0, !41, i64 4, !41, i64 6, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !45, i64 64, !45, i64 68, !45, i64 72, !45, i64 76, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !45, i64 96, !45, i64 100, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !38, i64 128, !38, i64 136, !45, i64 144, !42, i64 148, !38, i64 152}
!74 = !{!54, !38, i64 184}
!75 = !{!54, !45, i64 176}
!76 = !{!56, !38, i64 1168}
!77 = distinct !{!77, !62}
!78 = !{!56, !38, i64 1680}
!79 = !{!"MOD_collision.c:initData"}
!80 = !{!45, !45, i64 0}
!81 = !{!"MOD_collision.c:freeData"}
!82 = !{!"MOD_collision.c:dependsOnTime"}
