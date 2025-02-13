; ModuleID = 'blender/source/blender/modifiers/intern/MOD_skin.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_skin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMAllocTemplate = type { i32, i32, i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.SkinModifierData = type { %struct.ModifierData, float, i8, i8, [2 x i8] }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.anon = type { i32, float, float }
%struct.MVertSkin = type { [3 x float], i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.EdgeStackElem = type { [3 x [3 x float]], i32, i32 }
%struct.MeshElemMap = type { ptr, i32 }
%struct.SkinOutput = type { ptr, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.SkinNode = type { [2 x %struct.Frame], i32, i32, [2 x i32] }
%struct.Frame = type { [4 x ptr], [4 x [3 x float]], [4 x %struct.anon.0], [4 x i8], i8 }
%struct.anon.0 = type { ptr, i32 }
%struct.EMat = type { [3 x [3 x float]], i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.1 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.1 = type { ptr, [8 x i8] }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@modifierType_Skin = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Skin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SkinModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 120, i32 2, i32 9, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"degree\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"edge_subd\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"vgroup\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"build_edge_mats.stack\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"build_edge_mats.visited_e\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"build_edge_mats.emat\00", align 1
@__const.calc_edge_mat.z_up = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"build_frames.skin_nodes\00", align 1
@bm_mesh_allocsize_default = external constant %struct.BMAllocTemplate, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"Hull error\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"hull_from_frames.hull_frames\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"extrude_discrete_faces faces=%hf\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"subdivide_edges edges=%he cuts=%i quad_corner_type=%i\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"BLI_array.vert_buf\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"weld_verts\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"targetmap\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, i32 %3) #0 !PGOFuncName !35 {
  %5 = tail call fastcc ptr @final_skin(ptr noundef %0, ptr noundef %2) #19
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr %2, ptr %5
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @initData(ptr nocapture noundef %0) #1 !PGOFuncName !36 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !37
  %4 = or i32 %3, 4
  store i32 %4, ptr %2, align 4, !tbaa !37
  %5 = getelementptr inbounds %struct.SkinModifierData, ptr %0, i64 0, i32 1
  store float 0.000000e+00, ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.SkinModifierData, ptr %0, i64 0, i32 2
  store i8 0, ptr %6, align 4, !tbaa !46
  %7 = getelementptr inbounds %struct.SkinModifierData, ptr %0, i64 0, i32 3
  store i8 1, ptr %7, align 1, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 !PGOFuncName !48 {
  ret i64 68719476740
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @final_skin(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !49 {
  %3 = tail call ptr @CustomData_get_layer(ptr noundef %1, i32 noundef 36) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @subdivide_base(ptr noundef %1) #19
  %7 = tail call fastcc ptr @base_skin(ptr noundef %6, ptr noundef %0) #19
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 95
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  tail call void %9(ptr noundef %6) #18
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %7, %5 ], [ %1, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @subdivide_base(ptr noundef %0) unnamed_addr #0 !PGOFuncName !53 {
  %2 = tail call ptr @CustomData_get_layer(ptr noundef %0, i32 noundef 36) #18
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = tail call ptr %4(ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = tail call ptr %7(ptr noundef %0) #18
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = tail call ptr %10(ptr noundef %0, i32 noundef 2) #18
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = tail call i32 %13(ptr noundef %0) #18
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = tail call i32 %16(ptr noundef %0) #18
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %19 = sext i32 %14 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @.str) #18
  %22 = icmp sgt i32 %17, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = zext nneg i32 %17 to i64
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %39, %25 ]
  %27 = getelementptr inbounds %struct.MEdge, ptr %8, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !60
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %21, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !63
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 4, !tbaa !63
  %33 = getelementptr inbounds %struct.MEdge, ptr %8, i64 %26, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !64
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %21, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !63
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !63
  %39 = add nuw nsw i64 %26, 1
  %40 = icmp eq i64 %39, %24
  br i1 %40, label %41, label %25, !llvm.loop !65

41:                                               ; preds = %25, %1
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %43 = sext i32 %17 to i64
  %44 = shl nsw i64 %43, 2
  %45 = tail call ptr %42(i64 noundef %44, ptr noundef nonnull @.str.1) #18
  br i1 %22, label %46, label %59

46:                                               ; preds = %41
  %47 = zext nneg i32 %17 to i64
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i64 [ 0, %46 ], [ %57, %48 ]
  %50 = phi i32 [ 0, %46 ], [ %56, %48 ]
  %51 = getelementptr inbounds %struct.MEdge, ptr %8, i64 %49
  %52 = tail call fastcc i32 @calc_edge_subdivisions(ptr noundef %5, ptr noundef %2, ptr noundef %51, ptr noundef %21) #19
  %53 = getelementptr inbounds i32, ptr %45, i64 %49
  %54 = load i32, ptr %53, align 4, !tbaa !63
  %55 = add nsw i32 %54, %52
  store i32 %55, ptr %53, align 4, !tbaa !63
  %56 = add nsw i32 %55, %50
  %57 = add nuw nsw i64 %49, 1
  %58 = icmp eq i64 %57, %47
  br i1 %58, label %59, label %48, !llvm.loop !67

59:                                               ; preds = %48, %41
  %60 = phi i32 [ 0, %41 ], [ %56, %48 ]
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %61(ptr noundef %21) #18
  %62 = add nsw i32 %60, %14
  %63 = add nsw i32 %60, %17
  %64 = tail call ptr @CDDM_from_template(ptr noundef %0, i32 noundef %62, i32 noundef %63, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %64, i64 0, i32 31
  %66 = load ptr, ptr %65, align 8, !tbaa !54
  %67 = tail call ptr %66(ptr noundef %64) #18
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %64, i64 0, i32 32
  %69 = load ptr, ptr %68, align 8, !tbaa !55
  %70 = tail call ptr %69(ptr noundef %64) #18
  %71 = tail call ptr @CustomData_get_layer(ptr noundef %64, i32 noundef 36) #18
  %72 = tail call ptr @CustomData_get_layer(ptr noundef %64, i32 noundef 2) #18
  tail call void @CustomData_copy_data(ptr noundef %0, ptr noundef %64, i32 noundef 0, i32 noundef 0, i32 noundef %14) #18
  br i1 %22, label %73, label %222

73:                                               ; preds = %59
  %74 = icmp eq ptr %11, null
  %75 = zext nneg i32 %17 to i64
  br label %76

76:                                               ; preds = %73, %216
  %77 = phi i64 [ 0, %73 ], [ %220, %216 ]
  %78 = phi ptr [ %70, %73 ], [ %219, %216 ]
  %79 = phi i32 [ %14, %73 ], [ %211, %216 ]
  %80 = getelementptr inbounds %struct.MEdge, ptr %8, i64 %77
  br i1 %74, label %136, label %81

81:                                               ; preds = %76
  %82 = load i32, ptr %80, align 4, !tbaa !60
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 %83
  %85 = getelementptr inbounds %struct.MEdge, ptr %8, i64 %77, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !64
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 %87
  %89 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %90 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 %83, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !68
  %92 = sext i32 %91 to i64
  %93 = mul nsw i64 %92, 12
  %94 = tail call ptr %89(i64 noundef %93, ptr noundef nonnull @.str.2) #18
  %95 = load i32, ptr %90, align 8, !tbaa !68
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %136

97:                                               ; preds = %81
  %98 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 %87, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !68
  %100 = icmp sgt i32 %99, 0
  %101 = icmp eq ptr %94, null
  %102 = zext nneg i32 %95 to i64
  %103 = zext nneg i32 %99 to i64
  br label %104

104:                                              ; preds = %97, %132
  %105 = phi i64 [ 0, %97 ], [ %134, %132 ]
  %106 = phi i32 [ 0, %97 ], [ %133, %132 ]
  br i1 %100, label %107, label %132

107:                                              ; preds = %104
  %108 = load ptr, ptr %84, align 8, !tbaa !70
  %109 = getelementptr inbounds %struct.MDeformWeight, ptr %108, i64 %105
  %110 = load i32, ptr %109, align 4, !tbaa !71
  %111 = load ptr, ptr %88, align 8, !tbaa !70
  br label %112

112:                                              ; preds = %107, %117
  %113 = phi i64 [ 0, %107 ], [ %118, %117 ]
  %114 = getelementptr inbounds %struct.MDeformWeight, ptr %111, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !71
  %116 = icmp eq i32 %110, %115
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = add nuw nsw i64 %113, 1
  %119 = icmp eq i64 %118, %103
  br i1 %119, label %132, label %112, !llvm.loop !73

120:                                              ; preds = %112
  %121 = add nsw i32 %106, 1
  br i1 %101, label %132, label %122

122:                                              ; preds = %120
  %123 = sext i32 %106 to i64
  %124 = getelementptr inbounds %struct.anon, ptr %94, i64 %123
  store i32 %110, ptr %124, align 4, !tbaa !74
  %125 = getelementptr inbounds %struct.MDeformWeight, ptr %108, i64 %105, i32 1
  %126 = load float, ptr %125, align 4, !tbaa !76
  %127 = getelementptr inbounds %struct.anon, ptr %94, i64 %123, i32 1
  store float %126, ptr %127, align 4, !tbaa !77
  %128 = and i64 %113, 4294967295
  %129 = getelementptr inbounds %struct.MDeformWeight, ptr %111, i64 %128, i32 1
  %130 = load float, ptr %129, align 4, !tbaa !76
  %131 = getelementptr inbounds %struct.anon, ptr %94, i64 %123, i32 2
  store float %130, ptr %131, align 4, !tbaa !78
  br label %132

132:                                              ; preds = %117, %104, %120, %122
  %133 = phi i32 [ %121, %120 ], [ %121, %122 ], [ %106, %104 ], [ %106, %117 ]
  %134 = add nuw nsw i64 %105, 1
  %135 = icmp eq i64 %134, %102
  br i1 %135, label %136, label %104, !llvm.loop !79

136:                                              ; preds = %132, %81, %76
  %137 = phi ptr [ null, %76 ], [ %94, %81 ], [ %94, %132 ]
  %138 = phi i32 [ 0, %76 ], [ 0, %81 ], [ %133, %132 ]
  %139 = load i32, ptr %80, align 4, !tbaa !60
  %140 = getelementptr inbounds %struct.MEdge, ptr %8, i64 %77, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !64
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.MVertSkin, ptr %71, i64 %142
  %144 = tail call fastcc float @half_v2(ptr noundef %143) #19
  %145 = zext i32 %139 to i64
  %146 = getelementptr inbounds %struct.MVertSkin, ptr %71, i64 %145
  %147 = tail call fastcc float @half_v2(ptr noundef %146) #19
  %148 = fdiv float %144, %147
  %149 = fadd float %148, 1.000000e+00
  %150 = fmul float %149, 5.000000e-01
  %151 = getelementptr inbounds i32, ptr %45, i64 %77
  %152 = load i32, ptr %151, align 4, !tbaa !63
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %209

154:                                              ; preds = %136
  %155 = icmp sgt i32 %138, 0
  %156 = sext i32 %79 to i64
  %157 = zext nneg i32 %138 to i64
  br label %158

158:                                              ; preds = %154, %200
  %159 = phi i64 [ %156, %154 ], [ %203, %200 ]
  %160 = phi i32 [ %152, %154 ], [ %205, %200 ]
  %161 = phi ptr [ %78, %154 ], [ %204, %200 ]
  %162 = phi i32 [ 0, %154 ], [ %164, %200 ]
  %163 = phi i32 [ %139, %154 ], [ %202, %200 ]
  %164 = add nuw nsw i32 %162, 1
  %165 = sitofp i32 %164 to float
  %166 = add nsw i32 %160, 1
  %167 = sitofp i32 %166 to float
  %168 = fdiv float %165, %167
  %169 = tail call float @powf(float noundef %168, float noundef %150) #18
  %170 = getelementptr inbounds %struct.MVert, ptr %67, i64 %159
  %171 = load i32, ptr %80, align 4, !tbaa !60
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.MVert, ptr %67, i64 %172
  %174 = load i32, ptr %140, align 4, !tbaa !64
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.MVert, ptr %67, i64 %175
  tail call void @interp_v3_v3v3(ptr noundef %170, ptr noundef %173, ptr noundef %176, float noundef %169) #18
  %177 = getelementptr inbounds %struct.MVertSkin, ptr %71, i64 %159
  %178 = load i32, ptr %80, align 4, !tbaa !60
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.MVertSkin, ptr %2, i64 %179
  %181 = load i32, ptr %140, align 4, !tbaa !64
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.MVertSkin, ptr %2, i64 %182
  tail call void @interp_v3_v3v3(ptr noundef %177, ptr noundef %180, ptr noundef %183, float noundef %169) #18
  br i1 %155, label %184, label %200

184:                                              ; preds = %158
  %185 = getelementptr inbounds %struct.MDeformVert, ptr %72, i64 %159
  br label %186

186:                                              ; preds = %184, %197
  %187 = phi i64 [ 0, %184 ], [ %198, %197 ]
  %188 = getelementptr inbounds %struct.anon, ptr %137, i64 %187, i32 2
  %189 = load float, ptr %188, align 4, !tbaa !78
  %190 = getelementptr inbounds %struct.anon, ptr %137, i64 %187, i32 1
  %191 = load float, ptr %190, align 4, !tbaa !77
  %192 = tail call fastcc float @interpf(float noundef %189, float noundef %191, float noundef %169) #19
  %193 = fcmp ogt float %192, 0.000000e+00
  br i1 %193, label %194, label %197

194:                                              ; preds = %186
  %195 = getelementptr inbounds %struct.anon, ptr %137, i64 %187
  %196 = load i32, ptr %195, align 4, !tbaa !74
  tail call void @defvert_add_index_notest(ptr noundef %185, i32 noundef %196, float noundef %192) #18
  br label %197

197:                                              ; preds = %194, %186
  %198 = add nuw nsw i64 %187, 1
  %199 = icmp eq i64 %198, %157
  br i1 %199, label %200, label %186, !llvm.loop !80

200:                                              ; preds = %197, %158
  store i32 %163, ptr %161, align 4, !tbaa !60
  %201 = getelementptr inbounds %struct.MEdge, ptr %161, i64 0, i32 1
  %202 = trunc i64 %159 to i32
  store i32 %202, ptr %201, align 4, !tbaa !64
  %203 = add nsw i64 %159, 1
  %204 = getelementptr inbounds %struct.MEdge, ptr %161, i64 1
  %205 = load i32, ptr %151, align 4, !tbaa !63
  %206 = icmp slt i32 %164, %205
  br i1 %206, label %158, label %207, !llvm.loop !81

207:                                              ; preds = %200
  %208 = trunc i64 %203 to i32
  br label %209

209:                                              ; preds = %207, %136
  %210 = phi i32 [ %139, %136 ], [ %202, %207 ]
  %211 = phi i32 [ %79, %136 ], [ %208, %207 ]
  %212 = phi ptr [ %78, %136 ], [ %204, %207 ]
  %213 = icmp eq ptr %137, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %209
  %215 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %215(ptr noundef nonnull %137) #18
  br label %216

216:                                              ; preds = %214, %209
  store i32 %210, ptr %212, align 4, !tbaa !60
  %217 = load i32, ptr %140, align 4, !tbaa !64
  %218 = getelementptr inbounds %struct.MEdge, ptr %212, i64 0, i32 1
  store i32 %217, ptr %218, align 4, !tbaa !64
  %219 = getelementptr inbounds %struct.MEdge, ptr %212, i64 1
  %220 = add nuw nsw i64 %77, 1
  %221 = icmp eq i64 %220, %75
  br i1 %221, label %222, label %76, !llvm.loop !82

222:                                              ; preds = %216, %59
  %223 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %223(ptr noundef %45) #18
  ret ptr %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @base_skin(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !83 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = tail call ptr @CustomData_get_layer(ptr noundef %0, i32 noundef 36) #18
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = tail call ptr %7(ptr noundef %0) #18
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = tail call ptr %10(ptr noundef %0, i32 noundef 2) #18
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = tail call ptr %13(ptr noundef %0) #18
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = tail call i32 %16(ptr noundef %0) #18
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = tail call i32 %19(ptr noundef %0) #18
  call void @BKE_mesh_vert_edge_map_create(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %14, i32 noundef %17, i32 noundef %20) #18
  %21 = load ptr, ptr %3, align 8, !tbaa !59
  %22 = call fastcc ptr @build_edge_mats(ptr noundef %5, ptr noundef %8, i32 noundef %17, ptr noundef %14, ptr noundef %21, i32 noundef %20) #19
  %23 = load ptr, ptr %3, align 8, !tbaa !59
  %24 = call fastcc ptr @build_frames(ptr noundef %8, i32 noundef %17, ptr noundef %5, ptr noundef %23, ptr noundef %22) #19
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %25(ptr noundef %22) #18
  %26 = load ptr, ptr %3, align 8, !tbaa !59
  %27 = call fastcc ptr @build_skin(ptr noundef %24, i32 noundef %17, ptr noundef %26, ptr noundef %14, i32 noundef %20, ptr noundef %11, ptr noundef %1) #19
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %28(ptr noundef %24) #18
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %30 = load ptr, ptr %3, align 8, !tbaa !59
  call void %29(ptr noundef %30) #18
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %32 = load ptr, ptr %4, align 8, !tbaa !59
  call void %31(ptr noundef %32) #18
  %33 = icmp eq ptr %27, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %2
  %35 = call ptr @CDDM_from_bmesh(ptr noundef nonnull %27, i8 noundef zeroext 0) #18
  call void @BM_mesh_free(ptr noundef nonnull %27) #18
  call void @CDDM_calc_edges(ptr noundef %35) #18
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %35, i64 0, i32 16
  %37 = load i32, ptr %36, align 8, !tbaa !84
  %38 = or i32 %37, 4
  store i32 %38, ptr %36, align 8, !tbaa !84
  call fastcc void @skin_set_orig_indices(ptr noundef %35) #19
  br label %39

39:                                               ; preds = %2, %34
  %40 = phi ptr [ %35, %34 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %40
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc i32 @calc_edge_subdivisions(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #5 !PGOFuncName !85 {
  %5 = load i32, ptr %2, align 4, !tbaa !60
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.MVertSkin, ptr %1, i64 %6
  %8 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !64
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.MVertSkin, ptr %1, i64 %10
  %12 = getelementptr inbounds i32, ptr %3, i64 %6
  %13 = load i32, ptr %12, align 4, !tbaa !63
  %14 = icmp sgt i32 %13, 2
  %15 = getelementptr inbounds i32, ptr %3, i64 %10
  %16 = load i32, ptr %15, align 4, !tbaa !63
  %17 = icmp sgt i32 %16, 2
  br i1 %14, label %18, label %23

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.MVertSkin, ptr %1, i64 %6, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !86
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %18, %4
  br i1 %17, label %24, label %29

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.MVertSkin, ptr %1, i64 %10, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !86
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24, %23
  %30 = tail call fastcc float @half_v2(ptr noundef %7) #19
  %31 = tail call fastcc float @half_v2(ptr noundef %11) #19
  %32 = fadd float %30, %31
  %33 = fcmp une float %32, 0.000000e+00
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.MVert, ptr %0, i64 %6
  %36 = getelementptr inbounds %struct.MVert, ptr %0, i64 %10
  %37 = tail call fastcc float @len_v3v3(ptr noundef %35, ptr noundef %36) #19
  %38 = fdiv float %37, %32
  %39 = fcmp olt float %38, 1.280000e+02
  %40 = select i1 %39, float %38, float 1.280000e+02
  %41 = fptosi float %40 to i32
  br label %42

42:                                               ; preds = %29, %34
  %43 = phi i32 [ %41, %34 ], [ 0, %29 ]
  %44 = icmp slt i32 %43, 2
  %45 = and i1 %14, %44
  br label %46

46:                                               ; preds = %18, %24, %42
  %47 = phi i1 [ %45, %42 ], [ %14, %24 ], [ %14, %18 ]
  %48 = phi i32 [ %43, %42 ], [ 0, %24 ], [ 0, %18 ]
  %49 = select i1 %47, i1 %17, i1 false
  %50 = select i1 %49, i32 2, i32 %48
  ret i32 %50
}

; Function Attrs: optsize
declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CustomData_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @half_v2(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !88 {
  %2 = load float, ptr %0, align 4, !tbaa !89
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !89
  %5 = fadd float %2, %4
  %6 = fmul float %5, 5.000000e-01
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @interpf(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #2 !PGOFuncName !90 {
  %4 = fsub float 1.000000e+00, %2
  %5 = fmul float %4, %1
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %0, float %5)
  ret float %6
}

; Function Attrs: optsize
declare void @defvert_add_index_notest(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !91 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #19
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !92 {
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = load float, ptr %2, align 4, !tbaa !89
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !89
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !89
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !89
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !93 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #19
  %3 = tail call float @sqrtf(float noundef %2) #18
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !94 {
  %3 = load float, ptr %0, align 4, !tbaa !89
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !89
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare void @BKE_mesh_vert_edge_map_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_edge_mats(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !95 {
  %7 = alloca %struct.EdgeStackElem, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #20
  %8 = tail call ptr @BLI_stack_new(i64 noundef 44, ptr noundef nonnull @.str.3) #18
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %10 = ashr i32 %5, 5
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = tail call ptr %9(i64 noundef %13, ptr noundef nonnull @.str.4) #18
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %16 = sext i32 %5 to i64
  %17 = mul nsw i64 %16, 40
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str.5) #18
  %19 = icmp sgt i32 %2, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.EdgeStackElem, ptr %7, i64 0, i32 1
  %22 = getelementptr inbounds %struct.EdgeStackElem, ptr %7, i64 0, i32 2
  %23 = zext nneg i32 %2 to i64
  br label %27

24:                                               ; preds = %59, %6
  %25 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %8) #18
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %62, label %65

27:                                               ; preds = %20, %59
  %28 = phi i64 [ 0, %20 ], [ %60, %59 ]
  %29 = getelementptr inbounds %struct.MVertSkin, ptr %0, i64 %28, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !86
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %59, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.MeshElemMap, ptr %4, i64 %28
  %35 = getelementptr inbounds %struct.MeshElemMap, ptr %4, i64 %28, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !96
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load ptr, ptr %34, align 8, !tbaa !98
  %40 = load i32, ptr %39, align 4, !tbaa !63
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.MEdge, ptr %3, i64 %41
  %43 = getelementptr inbounds %struct.MVert, ptr %1, i64 %28
  %44 = trunc i64 %28 to i32
  %45 = call i32 @BKE_mesh_edge_other_vert(ptr noundef %42, i32 noundef %44) #18
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.MVert, ptr %1, i64 %46
  call fastcc void @calc_edge_mat(ptr noundef nonnull %7, ptr noundef %43, ptr noundef %47) #19
  store i32 %44, ptr %21, align 4, !tbaa !99
  %48 = load i32, ptr %35, align 8, !tbaa !96
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %38, %50
  %51 = phi i64 [ %55, %50 ], [ 0, %38 ]
  %52 = load ptr, ptr %34, align 8, !tbaa !98
  %53 = getelementptr inbounds i32, ptr %52, i64 %51
  %54 = load i32, ptr %53, align 4, !tbaa !63
  store i32 %54, ptr %22, align 4, !tbaa !101
  call void @BLI_stack_push(ptr noundef %8, ptr noundef nonnull %7) #18
  %55 = add nuw nsw i64 %51, 1
  %56 = load i32, ptr %35, align 8, !tbaa !96
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %50, label %59, !llvm.loop !102

59:                                               ; preds = %50, %38, %27, %33
  %60 = add nuw nsw i64 %28, 1
  %61 = icmp eq i64 %60, %23
  br i1 %61, label %24, label %27, !llvm.loop !103

62:                                               ; preds = %24, %62
  call fastcc void @build_emats_stack(ptr noundef %8, ptr noundef %14, ptr noundef %18, ptr noundef %4, ptr noundef %3, ptr noundef %0, ptr noundef %1) #19
  %63 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %8) #18
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %62, label %65, !llvm.loop !104

65:                                               ; preds = %62, %24
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %66(ptr noundef %14) #18
  call void @BLI_stack_free(ptr noundef %8) #18
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #20
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_frames(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !105 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %7 = sext i32 %1 to i64
  %8 = mul nsw i64 %7, 320
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.6) #18
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %5
  %12 = zext nneg i32 %1 to i64
  br label %13

13:                                               ; preds = %11, %24
  %14 = phi i64 [ 0, %11 ], [ %25, %24 ]
  %15 = getelementptr inbounds %struct.MeshElemMap, ptr %3, i64 %14, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !96
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = trunc i64 %14 to i32
  tail call fastcc void @end_node_frames(i32 noundef %19, ptr noundef %9, ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) #19
  br label %24

20:                                               ; preds = %13
  %21 = icmp eq i32 %16, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = trunc i64 %14 to i32
  tail call fastcc void @connection_node_frames(i32 noundef %23, ptr noundef %9, ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) #19
  br label %24

24:                                               ; preds = %18, %20, %22
  %25 = add nuw nsw i64 %14, 1
  %26 = icmp eq i64 %25, %12
  br i1 %26, label %27, label %13, !llvm.loop !106

27:                                               ; preds = %24, %5
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @build_skin(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !107 {
  %8 = alloca %struct.SkinOutput, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #20
  %9 = getelementptr inbounds %struct.SkinOutput, ptr %8, i64 0, i32 1
  store ptr %6, ptr %9, align 8, !tbaa !108
  %10 = tail call ptr @BM_mesh_create(ptr noundef nonnull @bm_mesh_allocsize_default) #18
  store ptr %10, ptr %8, align 8, !tbaa !110
  %11 = getelementptr inbounds %struct.SkinOutput, ptr %8, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !111
  tail call void @BM_mesh_elem_toolflags_ensure(ptr noundef %10) #18
  tail call void @BMO_push(ptr noundef %10, ptr noundef null) #18
  tail call void @bmesh_edit_begin(ptr noundef %10, i32 noundef 0) #18
  %12 = icmp eq ptr %5, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 24
  tail call void @BM_data_layer_add(ptr noundef %10, ptr noundef nonnull %14, i32 noundef 2) #18
  br label %15

15:                                               ; preds = %13, %7
  tail call fastcc void @skin_merge_close_frame_verts(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #19
  %16 = icmp sgt i32 %1, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %15
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %17, %28
  %20 = phi i64 [ 0, %17 ], [ %29, %28 ]
  %21 = getelementptr inbounds %struct.SkinNode, ptr %0, i64 %20, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !112
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.SkinNode, ptr %0, i64 %20
  %26 = getelementptr inbounds %struct.MDeformVert, ptr %5, i64 %20
  %27 = select i1 %12, ptr null, ptr %26
  tail call fastcc void @output_frames(ptr noundef %10, ptr noundef %25, ptr noundef %27) #19
  br label %28

28:                                               ; preds = %19, %24
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, %18
  br i1 %30, label %31, label %19, !llvm.loop !114

31:                                               ; preds = %28, %15
  tail call fastcc void @skin_update_merged_vertices(ptr noundef %0, i32 noundef %1) #19
  %32 = tail call fastcc zeroext i8 @skin_output_branch_hulls(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #19
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef %6, ptr noundef nonnull @.str.7) #18
  br label %35

35:                                               ; preds = %34, %31
  call fastcc void @hull_merge_triangles(ptr noundef nonnull %8, ptr noundef %6) #19
  tail call fastcc void @skin_fix_hull_topology(ptr noundef %10, ptr noundef %0, i32 noundef %1) #19
  tail call fastcc void @skin_smooth_hulls(ptr noundef %10, ptr noundef %0, i32 noundef %1, ptr noundef %6) #19
  call fastcc void @skin_output_end_nodes(ptr noundef nonnull %8, ptr noundef %0, i32 noundef %1) #19
  call fastcc void @skin_output_connections(ptr noundef nonnull %8, ptr noundef %0, ptr noundef %3, i32 noundef %4) #19
  call fastcc void @hull_merge_triangles(ptr noundef nonnull %8, ptr noundef %6) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #20
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @CDDM_from_bmesh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CDDM_calc_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @skin_set_orig_indices(ptr noundef %0) unnamed_addr #0 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = tail call i32 %3(ptr noundef %0) #18
  %5 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %6 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef 7, i32 noundef 1, ptr noundef null, i32 noundef %4) #18
  tail call void @fill_vn_i(ptr noundef %6, i32 noundef %4, i32 noundef -1) #18
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_stack_new(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @calc_edge_mat(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !117 {
  tail call fastcc void @sub_v3_v3v3(ptr noundef %0, ptr noundef %2, ptr noundef %1) #19
  tail call fastcc void @normalize_v3(ptr noundef %0) #19
  %4 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef nonnull @__const.calc_edge_mat.z_up) #19
  %5 = fcmp ogt float %4, 0xBFEFFFFFC0000000
  %6 = fcmp olt float %4, 0x3FEFFFFFC0000000
  %7 = and i1 %5, %6
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 1
  br i1 %7, label %9, label %11

9:                                                ; preds = %3
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull @__const.calc_edge_mat.z_up, ptr noundef %0) #19
  tail call fastcc void @normalize_v3(ptr noundef nonnull %8) #19
  %10 = getelementptr inbounds [3 x float], ptr %0, i64 2
  tail call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef %0, ptr noundef nonnull %8) #19
  tail call fastcc void @normalize_v3(ptr noundef nonnull %10) #19
  br label %13

11:                                               ; preds = %3
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %8, align 4, !tbaa !89
  %12 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %12, align 4, !tbaa !89
  br label %13

13:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_mesh_edge_other_vert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_stack_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_stack_is_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_emats_stack(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #0 !PGOFuncName !118 {
  %8 = alloca %struct.EdgeStackElem, align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call void @BLI_stack_pop(ptr noundef %0, ptr noundef nonnull %8) #18
  %10 = getelementptr inbounds %struct.EdgeStackElem, ptr %8, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !99
  %12 = getelementptr inbounds %struct.EdgeStackElem, ptr %8, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !101
  %14 = ashr i32 %13, 5
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %1, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !63
  %18 = and i32 %13, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %69

22:                                               ; preds = %7
  %23 = or i32 %19, %17
  store i32 %23, ptr %16, align 4, !tbaa !63
  %24 = sext i32 %11 to i64
  %25 = getelementptr inbounds %struct.MeshElemMap, ptr %3, i64 %24, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !96
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.MVertSkin, ptr %5, i64 %24, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !86
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i1 [ true, %22 ], [ %32, %28 ]
  %35 = sext i32 %13 to i64
  %36 = getelementptr inbounds %struct.MEdge, ptr %4, i64 %35
  %37 = call i32 @BKE_mesh_edge_other_vert(ptr noundef %36, i32 noundef %11) #18
  %38 = getelementptr inbounds %struct.EMat, ptr %2, i64 %35
  %39 = getelementptr inbounds %struct.EMat, ptr %2, i64 %35, i32 1
  store i32 %11, ptr %39, align 4, !tbaa !119
  br i1 %34, label %40, label %44

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.MVert, ptr %6, i64 %24
  %42 = sext i32 %37 to i64
  %43 = getelementptr inbounds %struct.MVert, ptr %6, i64 %42
  call fastcc void @calc_edge_mat(ptr noundef nonnull %38, ptr noundef %41, ptr noundef %43) #19
  br label %53

44:                                               ; preds = %33
  %45 = sext i32 %37 to i64
  %46 = getelementptr inbounds %struct.MVert, ptr %6, i64 %45
  %47 = getelementptr inbounds %struct.MVert, ptr %6, i64 %24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %38, ptr noundef %46, ptr noundef %47) #19
  call fastcc void @normalize_v3(ptr noundef nonnull %38) #19
  %48 = call float @angle_normalized_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %38) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %38) #19
  call fastcc void @normalize_v3(ptr noundef nonnull %9) #19
  %49 = getelementptr inbounds [3 x [3 x float]], ptr %38, i64 0, i64 1
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1
  call void @rotate_normalized_v3_v3v3fl(ptr noundef nonnull %49, ptr noundef nonnull %50, ptr noundef nonnull %9, float noundef %48) #18
  %51 = getelementptr inbounds [3 x [3 x float]], ptr %38, i64 0, i64 2
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 2
  call void @rotate_normalized_v3_v3v3fl(ptr noundef nonnull %51, ptr noundef nonnull %52, ptr noundef nonnull %9, float noundef %48) #18
  br label %53

53:                                               ; preds = %44, %40
  %54 = phi i64 [ %45, %44 ], [ %42, %40 ]
  %55 = getelementptr inbounds %struct.MeshElemMap, ptr %3, i64 %54, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !96
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.MeshElemMap, ptr %3, i64 %54
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi i64 [ 0, %58 ], [ %65, %60 ]
  call void @copy_m3_m3(ptr noundef nonnull %8, ptr noundef %38) #18
  %62 = load ptr, ptr %59, align 8, !tbaa !98
  %63 = getelementptr inbounds i32, ptr %62, i64 %61
  %64 = load i32, ptr %63, align 4, !tbaa !63
  store i32 %64, ptr %12, align 4, !tbaa !101
  store i32 %37, ptr %10, align 4, !tbaa !99
  call void @BLI_stack_push(ptr noundef %0, ptr noundef nonnull %8) #18
  %65 = add nuw nsw i64 %61, 1
  %66 = load i32, ptr %55, align 8, !tbaa !96
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %60, label %69, !llvm.loop !121

69:                                               ; preds = %60, %53, %7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %8) #20
  ret void
}

; Function Attrs: optsize
declare void @BLI_stack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !122 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !123 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !89
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !89
  %15 = load float, ptr %8, align 4, !tbaa !89
  %16 = load float, ptr %2, align 4, !tbaa !89
  %17 = load float, ptr %1, align 4, !tbaa !89
  %18 = load float, ptr %6, align 4, !tbaa !89
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !89
  %23 = load float, ptr %1, align 4, !tbaa !89
  %24 = load float, ptr %10, align 4, !tbaa !89
  %25 = load float, ptr %4, align 4, !tbaa !89
  %26 = load float, ptr %2, align 4, !tbaa !89
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !124 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #19
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #18
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #19
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #19
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #1 !PGOFuncName !125 {
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !89
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !89
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !126 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !89
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare void @BLI_stack_pop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rotate_normalized_v3_v3v3fl(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @end_node_frames(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !127 {
  %7 = alloca [3 x [3 x float]], align 16
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds %struct.MVertSkin, ptr %3, i64 %8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #20
  %10 = getelementptr inbounds %struct.MeshElemMap, ptr %4, i64 %8, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !96
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %8
  %14 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %8, i32 2
  br i1 %12, label %15, label %24

15:                                               ; preds = %6
  %16 = tail call fastcc float @half_v2(ptr noundef %9) #19
  tail call fastcc void @node_frames_init(ptr noundef %13, i32 noundef 2) #19
  %17 = load i32, ptr %14, align 4, !tbaa !128
  %18 = or i32 %17, 3
  store i32 %18, ptr %14, align 4, !tbaa !128
  call void @zero_m3(ptr noundef nonnull %7) #18
  %19 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 1
  store float 1.000000e+00, ptr %19, align 4, !tbaa !89
  %20 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %20, align 8, !tbaa !89
  %21 = getelementptr inbounds %struct.MVert, ptr %2, i64 %8
  call fastcc void @create_frame(ptr noundef %13, ptr noundef %21, ptr noundef %9, ptr noundef nonnull %7, float noundef %16) #19
  %22 = getelementptr inbounds [2 x %struct.Frame], ptr %13, i64 0, i64 1
  %23 = fneg float %16
  call fastcc void @create_frame(ptr noundef nonnull %22, ptr noundef %21, ptr noundef %9, ptr noundef nonnull %7, float noundef %23) #19
  br label %41

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.MeshElemMap, ptr %4, i64 %8
  tail call fastcc void @node_frames_init(ptr noundef %13, i32 noundef 1) #19
  %26 = load i32, ptr %14, align 4, !tbaa !128
  %27 = or i32 %26, 1
  store i32 %27, ptr %14, align 4, !tbaa !128
  %28 = load ptr, ptr %25, align 8, !tbaa !98
  %29 = load i32, ptr %28, align 4, !tbaa !63
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.EMat, ptr %5, i64 %30
  call void @copy_m3_m3(ptr noundef nonnull %7, ptr noundef %31) #18
  %32 = load ptr, ptr %25, align 8, !tbaa !98
  %33 = load i32, ptr %32, align 4, !tbaa !63
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.EMat, ptr %5, i64 %34, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !119
  %37 = icmp eq i32 %36, %0
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  call fastcc void @negate_v3(ptr noundef nonnull %7) #19
  br label %39

39:                                               ; preds = %38, %24
  %40 = getelementptr inbounds %struct.MVert, ptr %2, i64 %8
  call fastcc void @create_frame(ptr noundef nonnull %13, ptr noundef %40, ptr noundef %9, ptr noundef nonnull %7, float noundef 0.000000e+00) #19
  br label %41

41:                                               ; preds = %39, %15
  %42 = getelementptr inbounds %struct.MVertSkin, ptr %3, i64 %8, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !86
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %8, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !128
  %49 = or i32 %48, 8
  store i32 %49, ptr %47, align 4, !tbaa !128
  br label %50

50:                                               ; preds = %46, %41
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @connection_node_frames(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !129 {
  %7 = alloca [3 x [3 x float]], align 16
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds %struct.MVertSkin, ptr %3, i64 %8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #20
  %10 = call fastcc i32 @connection_node_mat(ptr noundef nonnull %7, i32 noundef %0, ptr noundef %4, ptr noundef %5) #19, !range !130
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %6
  %13 = call fastcc float @half_v2(ptr noundef %9) #19
  %14 = getelementptr inbounds %struct.MeshElemMap, ptr %4, i64 %8
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = load i32, ptr %15, align 4, !tbaa !63
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.EMat, ptr %5, i64 %17
  %19 = getelementptr inbounds i32, ptr %15, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !63
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.EMat, ptr %5, i64 %21
  %23 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %8
  call fastcc void @node_frames_init(ptr noundef %23, i32 noundef 2) #19
  %24 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %8, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !128
  %26 = or i32 %25, 4
  store i32 %26, ptr %24, align 4, !tbaa !128
  call void @copy_m3_m3(ptr noundef nonnull %7, ptr noundef %18) #18
  %27 = getelementptr inbounds %struct.EMat, ptr %5, i64 %17, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !119
  %29 = icmp eq i32 %28, %0
  br i1 %29, label %31, label %30

30:                                               ; preds = %12
  call fastcc void @negate_v3(ptr noundef nonnull %7) #19
  br label %31

31:                                               ; preds = %30, %12
  %32 = getelementptr inbounds %struct.MVert, ptr %2, i64 %8
  call fastcc void @create_frame(ptr noundef nonnull %23, ptr noundef %32, ptr noundef %9, ptr noundef nonnull %7, float noundef %13) #19
  %33 = load ptr, ptr %14, align 8, !tbaa !98
  %34 = load i32, ptr %33, align 4, !tbaa !63
  %35 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %8, i32 3
  store i32 %34, ptr %35, align 8, !tbaa !63
  call void @copy_m3_m3(ptr noundef nonnull %7, ptr noundef nonnull %22) #18
  %36 = getelementptr inbounds %struct.EMat, ptr %5, i64 %21, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !119
  %38 = icmp eq i32 %37, %0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  call fastcc void @negate_v3(ptr noundef nonnull %7) #19
  br label %40

40:                                               ; preds = %39, %31
  %41 = getelementptr inbounds [2 x %struct.Frame], ptr %23, i64 0, i64 1
  call fastcc void @create_frame(ptr noundef nonnull %41, ptr noundef %32, ptr noundef %9, ptr noundef nonnull %7, float noundef %13) #19
  %42 = load ptr, ptr %14, align 8, !tbaa !98
  %43 = getelementptr inbounds i32, ptr %42, i64 1
  %44 = load i32, ptr %43, align 4, !tbaa !63
  %45 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %8, i32 3, i64 1
  store i32 %44, ptr %45, align 4, !tbaa !63
  br label %49

46:                                               ; preds = %6
  %47 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %8
  call fastcc void @node_frames_init(ptr noundef %47, i32 noundef 1) #19
  %48 = getelementptr inbounds %struct.MVert, ptr %2, i64 %8
  call fastcc void @create_frame(ptr noundef %47, ptr noundef %48, ptr noundef %9, ptr noundef nonnull %7, float noundef 0.000000e+00) #19
  br label %49

49:                                               ; preds = %46, %40
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @node_frames_init(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 !PGOFuncName !131 {
  %3 = getelementptr inbounds %struct.SkinNode, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %0, i8 0, i64 304, i1 false)
  %4 = getelementptr inbounds %struct.SkinNode, ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 4, !tbaa !128
  %5 = getelementptr i8, ptr %0, i64 312
  store i64 -1, ptr %5, align 4
  ret void
}

; Function Attrs: optsize
declare void @zero_m3(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @create_frame(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, float noundef %4) unnamed_addr #11 !PGOFuncName !132 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  %9 = getelementptr inbounds [3 x float], ptr %3, i64 1
  %10 = load float, ptr %2, align 4, !tbaa !89
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %7, ptr noundef nonnull %9, float noundef %10) #19
  %11 = getelementptr inbounds [3 x float], ptr %3, i64 2
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !89
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %8, ptr noundef nonnull %11, float noundef %13) #19
  %14 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 3
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %15, ptr noundef %1, ptr noundef nonnull %7) #19
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %15, ptr noundef nonnull %8) #19
  %16 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %16, ptr noundef %1, ptr noundef nonnull %7) #19
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull %8) #19
  %17 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %17, ptr noundef %1, ptr noundef nonnull %7) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull %8) #19
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %14, ptr noundef %1, ptr noundef nonnull %7) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %14, ptr noundef nonnull %8) #19
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %6, ptr noundef %3, float noundef %4) #19
  br label %18

18:                                               ; preds = %5, %18
  %19 = phi i64 [ 0, %5 ], [ %21, %18 ]
  %20 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 %19
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %20, ptr noundef nonnull %6) #19
  %21 = add nuw nsw i64 %19, 1
  %22 = icmp eq i64 %21, 4
  br i1 %22, label %23, label %18, !llvm.loop !133

23:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !134 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !89
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !89
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !89
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !135 {
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = load float, ptr %2, align 4, !tbaa !89
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !89
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !89
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !89
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !89
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @connection_node_mat(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !136 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #20
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.MeshElemMap, ptr %2, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = load i32, ptr %10, align 4, !tbaa !63
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.EMat, ptr %3, i64 %12
  %14 = getelementptr inbounds i32, ptr %10, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !63
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.EMat, ptr %3, i64 %16
  %18 = getelementptr inbounds %struct.EMat, ptr %3, i64 %12, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !119
  %20 = icmp eq i32 %19, %1
  %21 = getelementptr inbounds %struct.EMat, ptr %3, i64 %16, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !119
  %23 = icmp eq i32 %22, %1
  br i1 %20, label %25, label %24

24:                                               ; preds = %4
  br i1 %23, label %26, label %35

25:                                               ; preds = %4
  br i1 %23, label %35, label %26

26:                                               ; preds = %25, %24
  %27 = phi ptr [ %13, %24 ], [ %17, %25 ]
  %28 = phi ptr [ %17, %24 ], [ %13, %25 ]
  call void @copy_m3_m3(ptr noundef nonnull %6, ptr noundef nonnull %27) #18
  call void @copy_m3_m3(ptr noundef nonnull %7, ptr noundef nonnull %28) #18
  %29 = call float @angle_normalized_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %30 = fmul float %29, 5.000000e-01
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  call fastcc void @normalize_v3(ptr noundef nonnull %5) #19
  call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %6) #19
  %31 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  call void @rotate_normalized_v3_v3v3fl(ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull %5, float noundef %30) #18
  %33 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  call void @rotate_normalized_v3_v3v3fl(ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %5, float noundef %30) #18
  br label %35

35:                                               ; preds = %24, %25, %26
  %36 = phi i32 [ 0, %26 ], [ 1, %25 ], [ 1, %24 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  ret i32 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !137 {
  %3 = load float, ptr %1, align 4, !tbaa !89
  store float %3, ptr %0, align 4, !tbaa !89
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_elem_toolflags_ensure(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bmesh_edit_begin(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @skin_merge_close_frame_verts(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !138 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %7, %19
  %10 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %11 = getelementptr inbounds %struct.SkinNode, ptr %0, i64 %10, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !112
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  %16 = call fastcc ptr @collect_hull_frames(i32 noundef %15, ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #19
  %17 = load i32, ptr %5, align 4, !tbaa !63
  tail call fastcc void @merge_frame_corners(ptr noundef %16, i32 noundef %17) #19
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %18(ptr noundef %16) #18
  br label %19

19:                                               ; preds = %9, %14
  %20 = add nuw nsw i64 %10, 1
  %21 = icmp eq i64 %20, %8
  br i1 %21, label %22, label %9, !llvm.loop !139

22:                                               ; preds = %19, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_frames(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !140 {
  %4 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !112
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  br label %10

10:                                               ; preds = %7, %28
  %11 = phi i64 [ 0, %7 ], [ %29, %28 ]
  %12 = getelementptr inbounds [2 x %struct.Frame], ptr %1, i64 0, i64 %11
  br label %13

13:                                               ; preds = %10, %25
  %14 = phi i64 [ 0, %10 ], [ %26, %25 ]
  %15 = getelementptr inbounds [2 x %struct.Frame], ptr %1, i64 0, i64 %11, i32 2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !141
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = getelementptr inbounds [2 x %struct.Frame], ptr %1, i64 0, i64 %11, i32 1, i64 %14
  %20 = tail call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %19, ptr noundef null, i32 noundef 0) #18
  %21 = getelementptr inbounds [4 x ptr], ptr %12, i64 0, i64 %14
  store ptr %20, ptr %21, align 8, !tbaa !59
  br i1 %8, label %25, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !143
  %24 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %9, ptr noundef %23, i32 noundef 2) #18
  tail call void @defvert_copy(ptr noundef %24, ptr noundef nonnull %2) #18
  br label %25

25:                                               ; preds = %18, %22, %13
  %26 = add nuw nsw i64 %14, 1
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %13, !llvm.loop !146

28:                                               ; preds = %25
  %29 = add nuw nsw i64 %11, 1
  %30 = load i32, ptr %4, align 8, !tbaa !112
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %10, label %33, !llvm.loop !147

33:                                               ; preds = %28, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @skin_update_merged_vertices(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 !PGOFuncName !148 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %38

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %35
  %7 = phi i64 [ 0, %4 ], [ %36, %35 ]
  %8 = getelementptr inbounds %struct.SkinNode, ptr %0, i64 %7
  %9 = getelementptr inbounds %struct.SkinNode, ptr %0, i64 %7, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !112
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %6
  %13 = zext nneg i32 %10 to i64
  br label %14

14:                                               ; preds = %12, %32
  %15 = phi i64 [ 0, %12 ], [ %33, %32 ]
  %16 = getelementptr inbounds [2 x %struct.Frame], ptr %8, i64 0, i64 %15
  br label %17

17:                                               ; preds = %14, %29
  %18 = phi i64 [ 0, %14 ], [ %30, %29 ]
  %19 = getelementptr inbounds [2 x %struct.Frame], ptr %8, i64 0, i64 %15, i32 2, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !141
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds [2 x %struct.Frame], ptr %8, i64 0, i64 %15, i32 2, i64 %18, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !149
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x ptr], ptr %20, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = getelementptr inbounds [4 x ptr], ptr %16, i64 0, i64 %18
  store ptr %27, ptr %28, align 8, !tbaa !59
  br label %29

29:                                               ; preds = %17, %22
  %30 = add nuw nsw i64 %18, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %32, label %17, !llvm.loop !150

32:                                               ; preds = %29
  %33 = add nuw nsw i64 %15, 1
  %34 = icmp eq i64 %33, %13
  br i1 %34, label %35, label %14, !llvm.loop !151

35:                                               ; preds = %32, %6
  %36 = add nuw nsw i64 %7, 1
  %37 = icmp eq i64 %36, %5
  br i1 %37, label %38, label %6, !llvm.loop !152

38:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @skin_output_branch_hulls(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !153 {
  %5 = alloca i32, align 4
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %7, %19
  %10 = phi i64 [ 0, %7 ], [ %21, %19 ]
  %11 = phi i8 [ 1, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds %struct.SkinNode, ptr %0, i64 %10, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !112
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %16 = trunc i64 %10 to i32
  %17 = call fastcc ptr @collect_hull_frames(i32 noundef %16, ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #19
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %18(ptr noundef %17) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i8 [ %11, %9 ], [ 0, %15 ]
  %21 = add nuw nsw i64 %10, 1
  %22 = icmp eq i64 %21, %8
  br i1 %22, label %23, label %9, !llvm.loop !154

23:                                               ; preds = %19, %4
  %24 = phi i8 [ 1, %4 ], [ %20, %19 ]
  ret i8 %24
}

; Function Attrs: optsize
declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hull_merge_triangles(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !155 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [2 x ptr], align 16
  %5 = alloca [4 x ptr], align 16
  %6 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  %7 = tail call ptr @BLI_heap_new() #18
  %8 = load ptr, ptr %0, align 8, !tbaa !110
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %8, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #18
  %9 = load ptr, ptr %0, align 8, !tbaa !110
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %9, i8 noundef zeroext 2, ptr noundef null) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %14 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  %15 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 2
  %16 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 3
  br label %22

17:                                               ; preds = %71, %2
  %18 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %7) #18
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %95

20:                                               ; preds = %17
  %21 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 1
  br label %74

22:                                               ; preds = %12, %71
  %23 = phi ptr [ %10, %12 ], [ %72, %71 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %24 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %23, ptr noundef nonnull %4, ptr noundef nonnull %13) #18
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %71, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %4, align 16, !tbaa !59
  %28 = getelementptr inbounds %struct.BMFace, ptr %27, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !156
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %71

31:                                               ; preds = %26
  %32 = load ptr, ptr %13, align 8, !tbaa !59
  %33 = getelementptr inbounds %struct.BMFace, ptr %32, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !156
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %71

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call fastcc void @quad_from_tris(ptr noundef nonnull %23, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %37 = load ptr, ptr %4, align 16, !tbaa !59
  %38 = call float @BM_face_calc_area(ptr noundef %37) #18
  %39 = load ptr, ptr %13, align 8, !tbaa !59
  %40 = call float @BM_face_calc_area(ptr noundef %39) #18
  %41 = fadd float %38, %40
  %42 = load ptr, ptr %4, align 16, !tbaa !59
  %43 = getelementptr inbounds %struct.BMFace, ptr %42, i64 0, i32 4
  %44 = load ptr, ptr %13, align 8, !tbaa !59
  %45 = getelementptr inbounds %struct.BMFace, ptr %44, i64 0, i32 4
  %46 = call fastcc float @dot_v3v3(ptr noundef nonnull %43, ptr noundef nonnull %45) #19
  %47 = fmul float %41, %46
  %48 = call fastcc zeroext i8 @quad_crosses_symmetry_plane(ptr noundef nonnull %5, ptr noundef %1) #19
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %36
  %51 = call fastcc zeroext i8 @is_quad_symmetric(ptr noundef nonnull %5, ptr noundef %1) #19
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %50
  %54 = fmul float %47, 1.000000e+01
  br label %55

55:                                               ; preds = %53, %36
  %56 = phi float [ %54, %53 ], [ %47, %36 ]
  %57 = load ptr, ptr %5, align 16, !tbaa !59
  %58 = getelementptr inbounds %struct.BMVert, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %14, align 8, !tbaa !59
  %60 = getelementptr inbounds %struct.BMVert, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %15, align 16, !tbaa !59
  %62 = getelementptr inbounds %struct.BMVert, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %16, align 8, !tbaa !59
  %64 = getelementptr inbounds %struct.BMVert, ptr %63, i64 0, i32 2
  %65 = call zeroext i8 @is_quad_convex_v3(ptr noundef nonnull %58, ptr noundef nonnull %60, ptr noundef nonnull %62, ptr noundef nonnull %64) #18
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %55
  %68 = fneg float %56
  %69 = call ptr @BLI_heap_insert(ptr noundef %7, float noundef %68, ptr noundef nonnull %23) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %71

70:                                               ; preds = %55, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %71

71:                                               ; preds = %22, %31, %26, %67, %70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  %72 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #19
  %73 = icmp eq ptr %72, null
  br i1 %73, label %17, label %22, !llvm.loop !158

74:                                               ; preds = %20, %92
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %75 = call ptr @BLI_heap_popmin(ptr noundef %7) #18
  %76 = call zeroext i8 @BM_edge_face_pair(ptr noundef %75, ptr noundef nonnull %6, ptr noundef nonnull %21) #18
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %6, align 16, !tbaa !59
  %80 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %79) #19
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load ptr, ptr %21, align 8, !tbaa !59
  %84 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %83) #19
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = call zeroext i8 @BM_face_share_face_check(ptr noundef %79, ptr noundef %83) #18
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  call fastcc void @add_quad_from_tris(ptr noundef nonnull %0, ptr noundef %75, ptr noundef nonnull %6) #19
  %90 = load ptr, ptr %6, align 16, !tbaa !59
  call fastcc void @_bm_elem_flag_enable(ptr noundef %90, i8 noundef zeroext 16) #19
  %91 = load ptr, ptr %21, align 8, !tbaa !59
  call fastcc void @_bm_elem_flag_enable(ptr noundef %91, i8 noundef zeroext 16) #19
  call fastcc void @_bm_elem_flag_enable(ptr noundef %75, i8 noundef zeroext 16) #19
  br label %92

92:                                               ; preds = %78, %82, %86, %89, %74
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  %93 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %7) #18
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %74, label %95, !llvm.loop !159

95:                                               ; preds = %92, %17
  call void @BLI_heap_free(ptr noundef %7, ptr noundef null) #18
  %96 = load ptr, ptr %0, align 8, !tbaa !110
  call void @BM_mesh_delete_hflag_tagged(ptr noundef %96, i8 noundef zeroext 16, i8 noundef zeroext 10) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @skin_fix_hull_topology(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !160 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %28
  %8 = phi i64 [ 0, %5 ], [ %29, %28 ]
  %9 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %8
  %10 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %8, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !112
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %7, %23
  %14 = phi i64 [ %24, %23 ], [ 0, %7 ]
  %15 = getelementptr inbounds [2 x %struct.Frame], ptr %9, i64 0, i64 %14
  %16 = getelementptr inbounds [2 x %struct.Frame], ptr %9, i64 0, i64 %14, i32 4
  %17 = load i8, ptr %16, align 4, !tbaa !161
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  tail call fastcc void @skin_hole_detach_partially_attached_frame(ptr noundef %0, ptr noundef nonnull %15) #19
  %20 = tail call fastcc ptr @skin_hole_target_face(ptr noundef %0, ptr noundef nonnull %15) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call fastcc void @skin_fix_hole_no_good_verts(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %20) #19
  br label %23

23:                                               ; preds = %19, %22, %13
  %24 = add nuw nsw i64 %14, 1
  %25 = load i32, ptr %10, align 8, !tbaa !112
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %13, label %28, !llvm.loop !163

28:                                               ; preds = %23, %7
  %29 = add nuw nsw i64 %8, 1
  %30 = icmp eq i64 %29, %6
  br i1 %30, label %31, label %7, !llvm.loop !164

31:                                               ; preds = %28, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @skin_smooth_hulls(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !165 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #20
  %8 = getelementptr inbounds %struct.SkinModifierData, ptr %3, i64 0, i32 1
  %9 = load float, ptr %8, align 8, !tbaa !43
  %10 = fcmp oeq float %9, 0.000000e+00
  br i1 %10, label %81, label %11

11:                                               ; preds = %4
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #18
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %11
  %14 = zext nneg i32 %2 to i64
  br label %15

15:                                               ; preds = %13, %36
  %16 = phi i64 [ 0, %13 ], [ %37, %36 ]
  %17 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %16, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !112
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %16
  br label %22

22:                                               ; preds = %20, %31
  %23 = phi i64 [ 0, %20 ], [ %32, %31 ]
  %24 = getelementptr inbounds [2 x %struct.Frame], ptr %21, i64 0, i64 %23
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ 0, %22 ], [ %29, %25 ]
  %27 = getelementptr inbounds [4 x ptr], ptr %24, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %28, i8 noundef zeroext 16) #19
  %29 = add nuw nsw i64 %26, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %25, !llvm.loop !166

31:                                               ; preds = %25
  %32 = add nuw nsw i64 %23, 1
  %33 = load i32, ptr %17, align 8, !tbaa !112
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %22, label %36, !llvm.loop !167

36:                                               ; preds = %31, %15
  %37 = add nuw nsw i64 %16, 1
  %38 = icmp eq i64 %37, %14
  br i1 %38, label %39, label %15, !llvm.loop !168

39:                                               ; preds = %36, %11
  %40 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  tail call void @BM_data_layer_add(ptr noundef %0, ptr noundef nonnull %40, i32 noundef 28) #18
  %41 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %40, i32 noundef 28) #18
  %42 = add nsw i32 %41, -1
  %43 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #19
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %39, %45
  %46 = phi ptr [ %50, %45 ], [ %43, %39 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !143
  %48 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %40, ptr noundef %47, i32 noundef 28, i32 noundef %42) #18
  %49 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %48, ptr noundef nonnull %49) #19
  %50 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #19
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %45, !llvm.loop !169

52:                                               ; preds = %45, %39
  %53 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #19
  %54 = icmp eq ptr %53, null
  br i1 %54, label %80, label %55

55:                                               ; preds = %52, %77
  %56 = phi ptr [ %78, %77 ], [ %53, %52 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  %57 = load float, ptr %8, align 8, !tbaa !43
  %58 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %56) #19
  %59 = icmp eq i8 %58, 0
  %60 = fmul float %57, 5.000000e-01
  %61 = select i1 %59, float %57, float %60
  %62 = getelementptr inbounds %struct.BMVert, ptr %56, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %62) #19
  %63 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %56) #19
  %64 = icmp eq ptr %63, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %55, %65
  %66 = phi i32 [ %71, %65 ], [ 1, %55 ]
  %67 = phi ptr [ %72, %65 ], [ %63, %55 ]
  %68 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %67, ptr noundef nonnull %56) #19
  %69 = load ptr, ptr %68, align 8, !tbaa !143
  %70 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %40, ptr noundef %69, i32 noundef 28, i32 noundef %42) #18
  call fastcc void @add_v3_v3(ptr noundef nonnull %7, ptr noundef %70) #19
  %71 = add nuw nsw i32 %66, 1
  %72 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #19
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %65, !llvm.loop !170

74:                                               ; preds = %65
  %75 = sitofp i32 %71 to float
  %76 = fdiv float 1.000000e+00, %75
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %76) #19
  call void @interp_v3_v3v3(ptr noundef nonnull %62, ptr noundef nonnull %62, ptr noundef nonnull %7, float noundef %61) #18
  br label %77

77:                                               ; preds = %55, %74
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  %78 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #19
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %55, !llvm.loop !171

80:                                               ; preds = %77, %52
  call void @BM_data_layer_free_n(ptr noundef %0, ptr noundef nonnull %40, i32 noundef 28, i32 noundef %42) #18
  br label %81

81:                                               ; preds = %4, %80
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @skin_output_end_nodes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !172 {
  %4 = alloca [4 x ptr], align 16
  %5 = alloca [4 x i32], align 16
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %74

7:                                                ; preds = %3
  %8 = zext nneg i32 %2 to i64
  br label %9

9:                                                ; preds = %7, %71
  %10 = phi i64 [ 0, %7 ], [ %72, %71 ]
  %11 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %10
  %12 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %10, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !128
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  %17 = getelementptr inbounds [2 x %struct.Frame], ptr %11, i64 0, i64 1
  call fastcc void @skin_choose_quad_bridge_order(ptr noundef nonnull %11, ptr noundef nonnull %17, ptr noundef nonnull %5) #19
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %26, %18 ]
  %20 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !63
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 %19
  store ptr %24, ptr %25, align 8, !tbaa !59
  %26 = add nuw nsw i64 %19, 1
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %18, !llvm.loop !173

28:                                               ; preds = %18
  call fastcc void @connect_frames(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %35

29:                                               ; preds = %9
  %30 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %10, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !112
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds [2 x %struct.Frame], ptr %11, i64 0, i64 1
  tail call fastcc void @connect_frames(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %34) #19
  br label %35

35:                                               ; preds = %29, %33, %28
  %36 = load i32, ptr %12, align 4, !tbaa !128
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = and i32 %36, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %11, align 8, !tbaa !59
  %44 = getelementptr inbounds [4 x ptr], ptr %11, i64 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !59
  %46 = getelementptr inbounds [4 x ptr], ptr %11, i64 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = getelementptr inbounds [4 x ptr], ptr %11, i64 0, i64 3
  %49 = load ptr, ptr %48, align 8, !tbaa !59
  tail call fastcc void @add_poly(ptr noundef %0, ptr noundef %43, ptr noundef %45, ptr noundef %47, ptr noundef %49) #19
  br label %58

50:                                               ; preds = %39
  %51 = getelementptr inbounds [4 x ptr], ptr %11, i64 0, i64 3
  %52 = load ptr, ptr %51, align 8, !tbaa !59
  %53 = getelementptr inbounds [4 x ptr], ptr %11, i64 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !59
  %55 = getelementptr inbounds [4 x ptr], ptr %11, i64 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !59
  %57 = load ptr, ptr %11, align 8, !tbaa !59
  tail call fastcc void @add_poly(ptr noundef %0, ptr noundef %52, ptr noundef %54, ptr noundef %56, ptr noundef %57) #19
  br label %58

58:                                               ; preds = %42, %50, %35
  %59 = load i32, ptr %12, align 4, !tbaa !128
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds [2 x %struct.Frame], ptr %11, i64 0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !59
  %65 = getelementptr inbounds [2 x %struct.Frame], ptr %11, i64 0, i64 1, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !59
  %67 = getelementptr inbounds [2 x %struct.Frame], ptr %11, i64 0, i64 1, i32 0, i64 2
  %68 = load ptr, ptr %67, align 8, !tbaa !59
  %69 = getelementptr inbounds [2 x %struct.Frame], ptr %11, i64 0, i64 1, i32 0, i64 3
  %70 = load ptr, ptr %69, align 8, !tbaa !59
  tail call fastcc void @add_poly(ptr noundef %0, ptr noundef %64, ptr noundef %66, ptr noundef %68, ptr noundef %70) #19
  br label %71

71:                                               ; preds = %62, %58
  %72 = add nuw nsw i64 %10, 1
  %73 = icmp eq i64 %72, %8
  br i1 %73, label %74, label %9, !llvm.loop !174

74:                                               ; preds = %71, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @skin_output_connections(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !175 {
  %5 = alloca [4 x ptr], align 16
  %6 = alloca [4 x i32], align 16
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %75

8:                                                ; preds = %4
  %9 = zext nneg i32 %3 to i64
  br label %10

10:                                               ; preds = %8, %72
  %11 = phi i64 [ 0, %8 ], [ %73, %72 ]
  %12 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !60
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %14
  %16 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %11, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !64
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %18
  %20 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %14, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !112
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %72, label %23

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %18, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !112
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %72, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %14, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !128
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %18, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !128
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %71, label %37

37:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  br label %49

38:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %39 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %14, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !63
  %41 = zext i32 %40 to i64
  %42 = icmp ne i64 %11, %41
  %43 = zext i1 %42 to i64
  %44 = getelementptr inbounds %struct.Frame, ptr %15, i64 %43
  %45 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %18, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !128
  %47 = and i32 %46, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %37, %38
  %50 = phi ptr [ %15, %37 ], [ %44, %38 ]
  %51 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %18, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !63
  %53 = zext i32 %52 to i64
  %54 = icmp ne i64 %11, %53
  %55 = zext i1 %54 to i64
  %56 = getelementptr inbounds %struct.Frame, ptr %19, i64 %55
  br label %57

57:                                               ; preds = %49, %38
  %58 = phi ptr [ %44, %38 ], [ %50, %49 ]
  %59 = phi ptr [ %19, %38 ], [ %56, %49 ]
  call fastcc void @skin_choose_quad_bridge_order(ptr noundef nonnull %58, ptr noundef nonnull %59, ptr noundef nonnull %6) #19
  br label %60

60:                                               ; preds = %57, %60
  %61 = phi i64 [ 0, %57 ], [ %68, %60 ]
  %62 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !63
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x ptr], ptr %59, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !59
  %67 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %61
  store ptr %66, ptr %67, align 8, !tbaa !59
  %68 = add nuw nsw i64 %61, 1
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %70, label %60, !llvm.loop !176

70:                                               ; preds = %60
  call fastcc void @connect_frames(ptr noundef %0, ptr noundef %58, ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %72

71:                                               ; preds = %32
  tail call fastcc void @connect_frames(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %19) #19
  br label %72

72:                                               ; preds = %70, %71, %23, %10
  %73 = add nuw nsw i64 %11, 1
  %74 = icmp eq i64 %73, %9
  br i1 %74, label %75, label %10, !llvm.loop !177

75:                                               ; preds = %72, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @collect_hull_frames(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !178 {
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds %struct.MeshElemMap, ptr %2, i64 %6
  %8 = getelementptr inbounds %struct.MeshElemMap, ptr %2, i64 %6, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !96
  store i32 %9, ptr %4, align 4, !tbaa !63
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %11 = sext i32 %9 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str.8) #18
  %14 = load i32, ptr %8, align 8, !tbaa !96
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %5, %37
  %17 = phi i64 [ %39, %37 ], [ 0, %5 ]
  %18 = phi i32 [ %38, %37 ], [ 0, %5 ]
  %19 = load ptr, ptr %7, align 8, !tbaa !98
  %20 = getelementptr inbounds i32, ptr %19, i64 %17
  %21 = load i32, ptr %20, align 4, !tbaa !63
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.MEdge, ptr %3, i64 %22
  %24 = tail call i32 @BKE_mesh_edge_other_vert(ptr noundef %23, i32 noundef %0) #18
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %25, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !112
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.SkinNode, ptr %1, i64 %25
  %31 = add nsw i32 %18, 1
  %32 = sext i32 %18 to i64
  %33 = getelementptr inbounds ptr, ptr %13, i64 %32
  store ptr %30, ptr %33, align 8, !tbaa !59
  br label %37

34:                                               ; preds = %16
  %35 = load i32, ptr %4, align 4, !tbaa !63
  %36 = add nsw i32 %35, -1
  store i32 %36, ptr %4, align 4, !tbaa !63
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi i32 [ %31, %29 ], [ %18, %34 ]
  %39 = add nuw nsw i64 %17, 1
  %40 = load i32, ptr %8, align 8, !tbaa !96
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %16, label %43, !llvm.loop !179

43:                                               ; preds = %37, %5
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_frame_corners(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !180 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %70

5:                                                ; preds = %2
  %6 = zext nneg i32 %1 to i64
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %5, %67
  %9 = phi i64 [ 0, %5 ], [ %14, %67 ]
  %10 = phi i64 [ 1, %5 ], [ %68, %67 ]
  %11 = getelementptr inbounds ptr, ptr %0, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = call fastcc float @frame_len(ptr noundef %12) #19
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp uge i64 %14, %6
  br label %16

16:                                               ; preds = %8, %64
  %17 = phi i64 [ 0, %8 ], [ %65, %64 ]
  %18 = load ptr, ptr %11, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.Frame, ptr %18, i64 0, i32 2, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !141
  %21 = icmp ne ptr %20, null
  %22 = select i1 %21, i1 true, i1 %15
  br i1 %22, label %64, label %23

23:                                               ; preds = %16
  %24 = trunc i64 %17 to i32
  br label %25

25:                                               ; preds = %23, %61
  %26 = phi i64 [ %10, %23 ], [ %62, %61 ]
  %27 = getelementptr inbounds ptr, ptr %0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = call fastcc float @frame_len(ptr noundef %28) #19
  %30 = call fastcc float @min_ff(float noundef %13, float noundef %29) #19
  %31 = fmul float %30, 5.000000e-01
  br label %32

32:                                               ; preds = %25, %58
  %33 = phi i64 [ 0, %25 ], [ %59, %58 ]
  %34 = load ptr, ptr %27, align 8, !tbaa !59
  %35 = getelementptr inbounds %struct.Frame, ptr %34, i64 0, i32 2, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !141
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %32
  %39 = load ptr, ptr %11, align 8, !tbaa !59
  %40 = getelementptr inbounds %struct.Frame, ptr %39, i64 0, i32 1, i64 %17
  %41 = getelementptr inbounds %struct.Frame, ptr %34, i64 0, i32 1, i64 %33
  %42 = call fastcc float @len_v3v3(ptr noundef nonnull %40, ptr noundef nonnull %41) #19
  %43 = fcmp olt float %42, %31
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load ptr, ptr %11, align 8, !tbaa !59
  %46 = getelementptr inbounds %struct.Frame, ptr %45, i64 0, i32 1, i64 %17
  %47 = load ptr, ptr %27, align 8, !tbaa !59
  %48 = getelementptr inbounds %struct.Frame, ptr %47, i64 0, i32 1, i64 %33
  call void @mid_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %46, ptr noundef nonnull %48) #18
  %49 = load ptr, ptr %11, align 8, !tbaa !59
  %50 = getelementptr inbounds %struct.Frame, ptr %49, i64 0, i32 1, i64 %17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %50, ptr noundef nonnull %3) #19
  %51 = load ptr, ptr %27, align 8, !tbaa !59
  %52 = getelementptr inbounds %struct.Frame, ptr %51, i64 0, i32 1, i64 %33
  call fastcc void @copy_v3_v3(ptr noundef nonnull %52, ptr noundef nonnull %3) #19
  %53 = load ptr, ptr %11, align 8, !tbaa !59
  %54 = load ptr, ptr %27, align 8, !tbaa !59
  %55 = getelementptr inbounds %struct.Frame, ptr %54, i64 0, i32 2, i64 %33
  store ptr %53, ptr %55, align 8, !tbaa !141
  %56 = load ptr, ptr %27, align 8, !tbaa !59
  %57 = getelementptr inbounds %struct.Frame, ptr %56, i64 0, i32 2, i64 %33, i32 1
  store i32 %24, ptr %57, align 8, !tbaa !149
  br label %61

58:                                               ; preds = %38, %32
  %59 = add nuw nsw i64 %33, 1
  %60 = icmp eq i64 %59, 4
  br i1 %60, label %61, label %32, !llvm.loop !181

61:                                               ; preds = %58, %44
  %62 = add nuw nsw i64 %26, 1
  %63 = icmp eq i64 %62, %7
  br i1 %63, label %64, label %25, !llvm.loop !182

64:                                               ; preds = %61, %16
  %65 = add nuw nsw i64 %17, 1
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %67, label %16, !llvm.loop !183

67:                                               ; preds = %64
  %68 = add nuw nsw i64 %10, 1
  %69 = icmp eq i64 %14, %7
  br i1 %69, label %70, label %8, !llvm.loop !184

70:                                               ; preds = %67, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @frame_len(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !185 {
  %2 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 1
  %4 = tail call fastcc float @len_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  %5 = getelementptr inbounds %struct.Frame, ptr %0, i64 0, i32 1, i64 2
  %6 = tail call fastcc float @len_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #19
  %7 = fadd float %4, %6
  %8 = fmul float %7, 5.000000e-01
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !186 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @defvert_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BM_edge_face_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_heap_new() local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !187 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #19
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #19
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @quad_from_tris(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !188 {
  %4 = alloca [2 x [3 x ptr]], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #20
  %5 = load ptr, ptr %1, align 8, !tbaa !59
  call void @BM_face_as_array_vert_tri(ptr noundef %5, ptr noundef nonnull %4) #18
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = getelementptr inbounds [2 x [3 x ptr]], ptr %4, i64 0, i64 1
  call void @BM_face_as_array_vert_tri(ptr noundef %7, ptr noundef nonnull %8) #18
  %9 = load ptr, ptr %4, align 16, !tbaa !59
  %10 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 2
  %13 = load ptr, ptr %12, align 16
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i64 %18, 1
  %16 = icmp eq i64 %15, 3
  br i1 %16, label %26, label %17, !llvm.loop !189

17:                                               ; preds = %3, %14
  %18 = phi i64 [ 0, %3 ], [ %15, %14 ]
  %19 = getelementptr inbounds [2 x [3 x ptr]], ptr %4, i64 0, i64 1, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = icmp eq ptr %20, %9
  %22 = icmp eq ptr %20, %11
  %23 = select i1 %21, i1 true, i1 %22
  %24 = icmp eq ptr %20, %13
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %14, label %26

26:                                               ; preds = %17, %14
  %27 = phi ptr [ null, %14 ], [ %20, %17 ]
  %28 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %29 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  br label %30

30:                                               ; preds = %26, %59
  %31 = phi i64 [ 0, %26 ], [ %60, %59 ]
  %32 = phi i32 [ 0, %26 ], [ %62, %59 ]
  %33 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds ptr, ptr %2, i64 %35
  store ptr %34, ptr %36, align 8, !tbaa !59
  %37 = load ptr, ptr %28, align 8, !tbaa !190
  %38 = icmp eq ptr %34, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %30
  %40 = load ptr, ptr %29, align 8, !tbaa !193
  %41 = icmp eq ptr %34, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = add nuw nsw i64 %31, 1
  br label %59

44:                                               ; preds = %39, %30
  %45 = add nuw nsw i64 %31, 1
  %46 = icmp eq i64 %31, 2
  %47 = and i64 %45, 4294967295
  %48 = select i1 %46, i64 0, i64 %47
  %49 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !59
  %51 = icmp eq ptr %50, %37
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load ptr, ptr %29, align 8, !tbaa !193
  %54 = icmp eq ptr %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %52, %44
  %56 = add nsw i32 %32, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %2, i64 %57
  store ptr %27, ptr %58, align 8, !tbaa !59
  br label %59

59:                                               ; preds = %42, %52, %55
  %60 = phi i64 [ %43, %42 ], [ %45, %52 ], [ %45, %55 ]
  %61 = phi i32 [ %32, %42 ], [ %32, %52 ], [ %56, %55 ]
  %62 = add nsw i32 %61, 1
  %63 = icmp eq i64 %60, 3
  br i1 %63, label %64, label %30, !llvm.loop !194

64:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare float @BM_face_calc_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @quad_crosses_symmetry_plane(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !195 {
  %3 = getelementptr inbounds %struct.SkinModifierData, ptr %1, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !47
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %2, %33
  %7 = phi i64 [ 0, %2 ], [ %34, %33 ]
  %8 = trunc i64 %7 to i32
  %9 = shl nuw nsw i32 1, %8
  %10 = and i32 %9, %5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %15

12:                                               ; preds = %27
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %13, 4
  br i1 %14, label %33, label %15, !llvm.loop !196

15:                                               ; preds = %6, %12
  %16 = phi i64 [ %13, %12 ], [ 0, %6 ]
  %17 = phi i8 [ %29, %12 ], [ 0, %6 ]
  %18 = phi i8 [ %28, %12 ], [ 0, %6 ]
  %19 = getelementptr inbounds ptr, ptr %0, i64 %16
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 2, i64 %7
  %22 = load float, ptr %21, align 4, !tbaa !89
  %23 = fcmp olt float %22, 0.000000e+00
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = fcmp ogt float %22, 0.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %15, %24, %26
  %28 = phi i8 [ %18, %26 ], [ %18, %24 ], [ 1, %15 ]
  %29 = phi i8 [ 1, %26 ], [ %17, %24 ], [ %17, %15 ]
  %30 = icmp ne i8 %28, 0
  %31 = icmp ne i8 %29, 0
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %36, label %12

33:                                               ; preds = %12, %6
  %34 = add nuw nsw i64 %7, 1
  %35 = icmp eq i64 %34, 3
  br i1 %35, label %36, label %6, !llvm.loop !197

36:                                               ; preds = %33, %27
  %37 = phi i8 [ 1, %27 ], [ 0, %33 ]
  ret i8 %37
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @is_quad_symmetric(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !198 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.SkinModifierData, ptr %1, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !47
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds ptr, ptr %0, i64 1
  %8 = getelementptr inbounds ptr, ptr %0, i64 3
  %9 = getelementptr inbounds ptr, ptr %0, i64 2
  br label %10

10:                                               ; preds = %2, %49
  %11 = phi i64 [ 0, %2 ], [ %50, %49 ]
  %12 = trunc i64 %11 to i32
  %13 = shl nuw nsw i32 1, %12
  %14 = and i32 %13, %6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  %17 = load ptr, ptr %0, align 8, !tbaa !59
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %18) #19
  %19 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %11
  %20 = load float, ptr %19, align 4, !tbaa !89
  %21 = fneg float %20
  store float %21, ptr %19, align 4, !tbaa !89
  %22 = load ptr, ptr %7, align 8, !tbaa !59
  %23 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2
  %24 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %23) #19
  %25 = fcmp olt float %24, 0x3E45798EC0000000
  br i1 %25, label %26, label %35

26:                                               ; preds = %16
  %27 = load ptr, ptr %9, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %28) #19
  %29 = load float, ptr %19, align 4, !tbaa !89
  %30 = fneg float %29
  store float %30, ptr %19, align 4, !tbaa !89
  %31 = load ptr, ptr %8, align 8, !tbaa !59
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  %33 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %32) #19
  %34 = fcmp olt float %33, 0x3E45798EC0000000
  br i1 %34, label %48, label %47

35:                                               ; preds = %16
  %36 = load ptr, ptr %8, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct.BMVert, ptr %36, i64 0, i32 2
  %38 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %37) #19
  %39 = fcmp olt float %38, 0x3E45798EC0000000
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load ptr, ptr %9, align 8, !tbaa !59
  %42 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %42) #19
  %43 = load float, ptr %19, align 4, !tbaa !89
  %44 = fneg float %43
  store float %44, ptr %19, align 4, !tbaa !89
  %45 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %23) #19
  %46 = fcmp olt float %45, 0x3E45798EC0000000
  br i1 %46, label %48, label %47

47:                                               ; preds = %35, %40, %26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  br label %49

48:                                               ; preds = %40, %26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  br label %52

49:                                               ; preds = %47, %10
  %50 = add nuw nsw i64 %11, 1
  %51 = icmp eq i64 %50, 3
  br i1 %51, label %52, label %10, !llvm.loop !199

52:                                               ; preds = %49, %48
  %53 = phi i8 [ 1, %48 ], [ 0, %49 ]
  ret i8 %53
}

; Function Attrs: optsize
declare zeroext i8 @is_quad_convex_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_heap_insert(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !200 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !201
  %4 = tail call ptr %3(ptr noundef %0) #18
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @BLI_heap_is_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_heap_popmin(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !203 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !204
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @BM_face_share_face_check(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_quad_from_tris(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !205 {
  %4 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call fastcc void @quad_from_tris(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #19
  %5 = load ptr, ptr %4, align 16, !tbaa !59
  %6 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 2
  %9 = load ptr, ptr %8, align 16, !tbaa !59
  %10 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 3
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  tail call fastcc void @add_poly(ptr noundef %0, ptr noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %11) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #1 !PGOFuncName !206 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !204
  %5 = or i8 %4, %1
  store i8 %5, ptr %3, align 1, !tbaa !204
  ret void
}

; Function Attrs: optsize
declare void @BLI_heap_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_delete_hflag_tagged(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !207 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !208
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %23 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !209
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !201
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !210
  br label %24

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !209
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !201
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !213
  br label %24

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !209
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !201
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !214
  br label %24

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !209
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !201
  br label %24

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !209
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !201
  br label %24

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !209
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !201
  br label %24

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !209
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !201
  br label %24

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !209
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !201
  br label %24

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !209
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !201
  br label %24

23:                                               ; preds = %4
  unreachable

24:                                               ; preds = %22, %21, %20, %19, %18, %17, %14, %11, %8
  %25 = phi ptr [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %26 = phi ptr [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %25, ptr %0, align 8, !tbaa !215
  tail call void %26(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #3

; Function Attrs: optsize
declare void @BM_face_as_array_vert_tri(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !216 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #19
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_poly(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !217 {
  %6 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #20
  store ptr %1, ptr %6, align 16, !tbaa !59
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  store ptr %2, ptr %7, align 8, !tbaa !59
  %8 = getelementptr inbounds ptr, ptr %6, i64 2
  store ptr %3, ptr %8, align 16, !tbaa !59
  %9 = getelementptr inbounds ptr, ptr %6, i64 3
  store ptr %4, ptr %9, align 8, !tbaa !59
  %10 = load ptr, ptr %0, align 8, !tbaa !110
  %11 = icmp eq ptr %4, null
  %12 = select i1 %11, i32 3, i32 4
  %13 = call ptr @BM_face_create_verts(ptr noundef %10, ptr noundef nonnull %6, i32 noundef %12, ptr noundef null, i32 noundef 2, i8 noundef zeroext 1) #18
  %14 = getelementptr inbounds %struct.SkinOutput, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  %16 = getelementptr inbounds %struct.SkinModifierData, ptr %15, i64 0, i32 2
  %17 = load i8, ptr %16, align 4, !tbaa !46
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  call fastcc void @_bm_elem_flag_enable(ptr noundef %13, i8 noundef zeroext 8) #19
  br label %21

21:                                               ; preds = %20, %5
  %22 = getelementptr inbounds %struct.SkinOutput, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !111
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.BMFace, ptr %13, i64 0, i32 5
  store i16 %24, ptr %25, align 8, !tbaa !218
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  ret void
}

; Function Attrs: optsize
declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @skin_hole_detach_partially_attached_frame(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !219 {
  %3 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  br label %8

4:                                                ; preds = %19
  %5 = icmp sgt i32 %20, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %4
  %7 = zext nneg i32 %20 to i64
  br label %23

8:                                                ; preds = %2, %19
  %9 = phi i64 [ 0, %2 ], [ %21, %19 ]
  %10 = phi i32 [ 0, %2 ], [ %20, %19 ]
  %11 = getelementptr inbounds %struct.Frame, ptr %1, i64 0, i32 3, i64 %9
  %12 = load i8, ptr %11, align 1, !tbaa !215
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = add nsw i32 %10, 1
  %16 = sext i32 %10 to i64
  %17 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %16
  %18 = trunc i64 %9 to i32
  store i32 %18, ptr %17, align 4, !tbaa !63
  br label %19

19:                                               ; preds = %8, %14
  %20 = phi i32 [ %10, %8 ], [ %15, %14 ]
  %21 = add nuw nsw i64 %9, 1
  %22 = icmp eq i64 %21, 4
  br i1 %22, label %4, label %8, !llvm.loop !220

23:                                               ; preds = %6, %23
  %24 = phi i64 [ 0, %6 ], [ %32, %23 ]
  %25 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !63
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x ptr], ptr %1, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  %31 = tail call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %30, ptr noundef %29, i32 noundef 0) #18
  store ptr %31, ptr %28, align 8, !tbaa !59
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, %7
  br i1 %33, label %34, label %23, !llvm.loop !221

34:                                               ; preds = %23, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @skin_hole_target_face(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !222 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call fastcc void @calc_frame_center(ptr noundef nonnull %4, ptr noundef %1) #19
  %8 = getelementptr inbounds [4 x ptr], ptr %1, i64 0, i64 3
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  %11 = getelementptr inbounds [4 x ptr], ptr %1, i64 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.BMVert, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds [4 x ptr], ptr %1, i64 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %1, align 8, !tbaa !59
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2
  %19 = call float @normal_quad_v3(ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %16, ptr noundef nonnull %18) #18
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %2, %34
  %23 = phi ptr [ %41, %34 ], [ %20, %2 ]
  %24 = phi float [ %40, %34 ], [ 0x47EFFFFFE0000000, %2 ]
  %25 = phi float [ %36, %34 ], [ 0x47EFFFFFE0000000, %2 ]
  %26 = phi ptr [ %39, %34 ], [ null, %2 ]
  %27 = phi ptr [ %35, %34 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  %28 = call fastcc i32 @isect_ray_poly(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %23, ptr noundef nonnull %6) #19, !range !130
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = load float, ptr %6, align 4, !tbaa !89
  %32 = fcmp olt float %31, %25
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33, %30, %22
  %35 = phi ptr [ %23, %33 ], [ %27, %30 ], [ %27, %22 ]
  %36 = phi float [ %31, %33 ], [ %25, %30 ], [ %25, %22 ]
  call void @BM_face_calc_center_mean(ptr noundef nonnull %23, ptr noundef nonnull %7) #18
  %37 = call fastcc float @len_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %7) #19
  %38 = fcmp olt float %37, %24
  %39 = select i1 %38, ptr %23, ptr %26
  %40 = select i1 %38, float %37, float %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  %41 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #19
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %22, !llvm.loop !223

43:                                               ; preds = %34
  %44 = fmul float %36, 5.000000e-01
  br label %45

45:                                               ; preds = %43, %2
  %46 = phi ptr [ null, %2 ], [ %35, %43 ]
  %47 = phi ptr [ null, %2 ], [ %39, %43 ]
  %48 = phi float [ 0x47DFFFFFE0000000, %2 ], [ %44, %43 ]
  %49 = phi float [ 0x47EFFFFFE0000000, %2 ], [ %40, %43 ]
  %50 = icmp eq ptr %46, null
  %51 = fcmp olt float %49, %48
  %52 = select i1 %50, i1 true, i1 %51
  %53 = select i1 %52, ptr %47, ptr %46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  ret ptr %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @skin_fix_hole_no_good_verts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !224 {
  %4 = alloca [4 x ptr], align 16
  %5 = alloca ptr, align 8
  %6 = alloca %struct.BMOIter, align 8
  %7 = alloca %struct.BMOperator, align 8
  %8 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #20
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #18
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %2, i8 noundef zeroext 16) #19
  %9 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 16) #18
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %7) #18
  %10 = getelementptr inbounds %struct.BMOperator, ptr %7, i64 0, i32 1
  %11 = call ptr @BMO_iter_new(ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef nonnull @.str.10, i8 noundef zeroext 8) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %3 ]
  %15 = call ptr @BMO_iter_step(ptr noundef nonnull %6) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !225

17:                                               ; preds = %13, %3
  %18 = phi ptr [ null, %3 ], [ %14, %13 ]
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %7) #18
  %19 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !156
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = call ptr @BM_face_find_longest_loop(ptr noundef nonnull %18) #18
  %24 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !226
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 2, i8 noundef zeroext 16, i8 noundef zeroext 0) #18
  call fastcc void @_bm_elem_flag_enable(ptr noundef %25, i8 noundef zeroext 16) #19
  %26 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef 16, i32 noundef 1, i32 noundef 3) #18
  br label %35

27:                                               ; preds = %17
  %28 = icmp sgt i32 %20, 4
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef null, i32 noundef 8, i32 noundef 0, i32 noundef %20, ptr noundef nonnull @.str.12) #18
  %30 = load i32, ptr %19, align 8, !tbaa !156
  %31 = load ptr, ptr %5, align 8, !tbaa !59
  %32 = call i32 @BM_iter_as_array(ptr noundef %0, i8 noundef zeroext 9, ptr noundef nonnull %18, ptr noundef %31, i32 noundef %30) #18
  %33 = load ptr, ptr %5, align 8, !tbaa !59
  %34 = call fastcc ptr @collapse_face_corners(ptr noundef %0, ptr noundef nonnull %18, ptr noundef %33) #19
  br label %35

35:                                               ; preds = %27, %29, %22
  %36 = phi ptr [ %18, %22 ], [ %34, %29 ], [ %18, %27 ]
  %37 = load ptr, ptr %5, align 8, !tbaa !59
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %40(ptr noundef nonnull %37) #18
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.BMFace, ptr %36, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !156
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  call void @BM_face_as_array_vert_quad(ptr noundef nonnull %36, ptr noundef nonnull %4) #18
  call fastcc void @skin_choose_quad_bridge_order(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %8) #19
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %36) #18
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 0, ptr noundef nonnull @.str.13) #18
  %46 = call ptr @BMO_slot_get(ptr noundef nonnull %7, ptr noundef nonnull @.str.14) #18
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi i64 [ 0, %45 ], [ %56, %47 ]
  %49 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !59
  %51 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %48
  %52 = load i32, ptr %51, align 4, !tbaa !63
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x ptr], ptr %1, i64 0, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !59
  call fastcc void @BMO_slot_map_elem_insert(ptr noundef nonnull %7, ptr noundef %46, ptr noundef %50, ptr noundef %55) #19
  %56 = add nuw nsw i64 %48, 1
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %47, !llvm.loop !228

58:                                               ; preds = %47
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %7) #18
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %7) #18
  br label %59

59:                                               ; preds = %41, %58
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @calc_frame_center(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #16 !PGOFuncName !229 {
  %3 = load ptr, ptr %1, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds [4 x ptr], ptr %1, i64 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 2
  tail call fastcc void @add_v3_v3v3(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %7) #19
  %8 = getelementptr inbounds [4 x ptr], ptr %1, i64 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  tail call fastcc void @add_v3_v3(ptr noundef %0, ptr noundef nonnull %10) #19
  %11 = getelementptr inbounds [4 x ptr], ptr %1, i64 0, i64 3
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.BMVert, ptr %12, i64 0, i32 2
  tail call fastcc void @add_v3_v3(ptr noundef %0, ptr noundef nonnull %13) #19
  tail call fastcc void @mul_v3_fl(ptr noundef %0, float noundef 2.500000e-01) #19
  ret void
}

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @isect_ray_poly(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !230 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  %7 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 9, ptr noundef %2) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %4, %31
  %10 = phi ptr [ %35, %31 ], [ %7, %4 ]
  %11 = phi i8 [ %34, %31 ], [ 0, %4 ]
  %12 = phi float [ %33, %31 ], [ 0x47EFFFFFE0000000, %4 ]
  %13 = phi ptr [ %10, %31 ], [ null, %4 ]
  %14 = phi ptr [ %32, %31 ], [ null, %4 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %9
  %17 = icmp eq ptr %13, %14
  br i1 %17, label %31, label %18

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  %19 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %20 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %21 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2
  %22 = call zeroext i8 @isect_ray_tri_v3(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %6, ptr noundef null) #18
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load float, ptr %6, align 4, !tbaa !89
  %26 = fcmp olt float %25, %12
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27, %24, %18
  %29 = phi float [ %25, %27 ], [ %12, %24 ], [ %12, %18 ]
  %30 = phi i8 [ 1, %27 ], [ %11, %24 ], [ %11, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  br label %31

31:                                               ; preds = %9, %16, %28
  %32 = phi ptr [ %14, %28 ], [ %13, %16 ], [ %10, %9 ]
  %33 = phi float [ %29, %28 ], [ %12, %16 ], [ %12, %9 ]
  %34 = phi i8 [ %30, %28 ], [ %11, %16 ], [ %11, %9 ]
  %35 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #19
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %9, !llvm.loop !231

37:                                               ; preds = %31
  %38 = zext nneg i8 %34 to i32
  br label %39

39:                                               ; preds = %37, %4
  %40 = phi float [ 0x47EFFFFFE0000000, %4 ], [ %33, %37 ]
  %41 = phi i32 [ 0, %4 ], [ %38, %37 ]
  store float %40, ptr %3, align 4, !tbaa !89
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  ret i32 %41
}

; Function Attrs: optsize
declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !232 {
  %3 = load float, ptr %1, align 4, !tbaa !89
  %4 = load float, ptr %0, align 4, !tbaa !89
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !89
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !89
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #1 !PGOFuncName !233 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !89
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @isect_ray_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_face_find_longest_loop(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BM_iter_as_array(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @collapse_face_corners(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !234 {
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !156
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %48, label %9

9:                                                ; preds = %3
  %10 = zext nneg i32 %7 to i64
  br label %11

11:                                               ; preds = %9, %44
  %12 = phi ptr [ %1, %9 ], [ %26, %44 ]
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  %13 = call ptr @BM_face_find_shortest_loop(ptr noundef nonnull %12) #18
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !226
  %16 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @.str.13) #18
  %17 = call ptr @BMO_slot_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.14) #18
  %18 = getelementptr inbounds %struct.BMEdge, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !190
  %20 = getelementptr inbounds %struct.BMEdge, ptr %15, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !193
  %22 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  %23 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %22, ptr noundef nonnull %22, ptr noundef nonnull %23) #18
  call fastcc void @BMO_slot_map_elem_insert(ptr noundef nonnull %4, ptr noundef %17, ptr noundef %21, ptr noundef %19) #19
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %4) #18
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %4) #18
  %24 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 5, ptr noundef %19) #19
  br label %25

25:                                               ; preds = %42, %11
  %26 = phi ptr [ %43, %42 ], [ %24, %11 ]
  %27 = icmp ne ptr %26, null
  call void @llvm.assume(i1 %27)
  br label %28

28:                                               ; preds = %25, %39
  %29 = phi i64 [ 0, %25 ], [ %40, %39 ]
  %30 = getelementptr inbounds ptr, ptr %2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = icmp eq ptr %31, %21
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store ptr null, ptr %30, align 8, !tbaa !59
  br label %39

34:                                               ; preds = %28
  %35 = icmp eq ptr %31, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = call zeroext i8 @BM_vert_in_face(ptr noundef nonnull %26, ptr noundef nonnull %31) #18
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33, %36, %34
  %40 = add nuw nsw i64 %29, 1
  %41 = icmp eq i64 %40, %10
  br i1 %41, label %44, label %28, !llvm.loop !235

42:                                               ; preds = %36
  %43 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #19
  br label %25

44:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #20
  %45 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !156
  %47 = icmp sgt i32 %46, 4
  br i1 %47, label %11, label %48, !llvm.loop !236

48:                                               ; preds = %44, %3
  %49 = phi ptr [ %1, %3 ], [ %26, %44 ]
  ret ptr %49
}

; Function Attrs: optsize
declare void @BM_face_as_array_vert_quad(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @skin_choose_quad_bridge_order(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 !PGOFuncName !237 {
  %4 = alloca [8 x [4 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #20
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %16, %5 ]
  %7 = or disjoint i64 %6, 4
  %8 = trunc i64 %6 to i32
  %9 = insertelement <4 x i32> poison, i32 %8, i64 0
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = add <4 x i32> %10, <i32 0, i32 1, i32 2, i32 3>
  %12 = and <4 x i32> %11, <i32 3, i32 3, i32 3, i32 3>
  %13 = getelementptr inbounds [8 x [4 x i32]], ptr %4, i64 0, i64 %6, i64 0
  store <4 x i32> %12, ptr %13, align 16, !tbaa !63
  %14 = xor <4 x i32> %12, <i32 3, i32 3, i32 3, i32 3>
  %15 = getelementptr inbounds [8 x [4 x i32]], ptr %4, i64 0, i64 %7, i64 0
  store <4 x i32> %14, ptr %15, align 16, !tbaa !63
  %16 = add nuw nsw i64 %6, 1
  %17 = icmp eq i64 %16, 4
  br i1 %17, label %18, label %5, !llvm.loop !238

18:                                               ; preds = %5, %41
  %19 = phi i64 [ %43, %41 ], [ 0, %5 ]
  %20 = phi float [ %42, %41 ], [ 0x47EFFFFFE0000000, %5 ]
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 0, %18 ], [ %35, %21 ]
  %23 = phi float [ 0.000000e+00, %18 ], [ %34, %21 ]
  %24 = getelementptr inbounds ptr, ptr %0, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2
  %27 = getelementptr inbounds [8 x [4 x i32]], ptr %4, i64 0, i64 %19, i64 %22
  %28 = load i32, ptr %27, align 4, !tbaa !63
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  %33 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %26, ptr noundef nonnull %32) #19
  %34 = fadd float %23, %33
  %35 = add nuw nsw i64 %22, 1
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %37, label %21, !llvm.loop !239

37:                                               ; preds = %21
  %38 = fcmp olt float %34, %20
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = getelementptr inbounds [8 x [4 x i32]], ptr %4, i64 0, i64 %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %40, i64 16, i1 false)
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi float [ %34, %39 ], [ %20, %37 ]
  %43 = add nuw nsw i64 %19, 1
  %44 = icmp eq i64 %43, 8
  br i1 %44, label %45, label %18, !llvm.loop !240

45:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !241 {
  tail call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  ret void
}

; Function Attrs: optsize
declare ptr @BM_face_find_shortest_loop(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BM_vert_in_face(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 !PGOFuncName !242 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !190
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !193
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: optsize
declare void @BM_data_layer_free_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @connect_frames(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !243 {
  %4 = alloca [4 x [4 x ptr]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #20
  %7 = load ptr, ptr %2, align 8, !tbaa !59
  store ptr %7, ptr %4, align 16, !tbaa !59
  %8 = getelementptr inbounds ptr, ptr %4, i64 1
  %9 = getelementptr inbounds ptr, ptr %2, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  store ptr %10, ptr %8, align 8, !tbaa !59
  %11 = getelementptr inbounds ptr, ptr %4, i64 2
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  store ptr %13, ptr %11, align 16, !tbaa !59
  %14 = getelementptr inbounds ptr, ptr %4, i64 3
  %15 = load ptr, ptr %1, align 8, !tbaa !59
  store ptr %15, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds [4 x ptr], ptr %4, i64 1
  store ptr %10, ptr %16, align 16, !tbaa !59
  %17 = getelementptr inbounds [4 x ptr], ptr %4, i64 1, i64 1
  %18 = getelementptr inbounds ptr, ptr %2, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  store ptr %19, ptr %17, align 8, !tbaa !59
  %20 = getelementptr inbounds [4 x ptr], ptr %4, i64 1, i64 2
  %21 = getelementptr inbounds ptr, ptr %1, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  store ptr %22, ptr %20, align 16, !tbaa !59
  %23 = getelementptr inbounds [4 x ptr], ptr %4, i64 1, i64 3
  store ptr %13, ptr %23, align 8, !tbaa !59
  %24 = getelementptr inbounds [4 x ptr], ptr %4, i64 2
  store ptr %19, ptr %24, align 16, !tbaa !59
  %25 = getelementptr inbounds [4 x ptr], ptr %4, i64 2, i64 1
  %26 = getelementptr inbounds ptr, ptr %2, i64 3
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  store ptr %27, ptr %25, align 8, !tbaa !59
  %28 = getelementptr inbounds [4 x ptr], ptr %4, i64 2, i64 2
  %29 = getelementptr inbounds ptr, ptr %1, i64 3
  %30 = load ptr, ptr %29, align 8, !tbaa !59
  store ptr %30, ptr %28, align 16, !tbaa !59
  %31 = getelementptr inbounds [4 x ptr], ptr %4, i64 2, i64 3
  store ptr %22, ptr %31, align 8, !tbaa !59
  %32 = getelementptr inbounds [4 x ptr], ptr %4, i64 3
  store ptr %27, ptr %32, align 16, !tbaa !59
  %33 = getelementptr inbounds [4 x ptr], ptr %4, i64 3, i64 1
  store ptr %7, ptr %33, align 8, !tbaa !59
  %34 = getelementptr inbounds [4 x ptr], ptr %4, i64 3, i64 2
  store ptr %15, ptr %34, align 16, !tbaa !59
  %35 = getelementptr inbounds [4 x ptr], ptr %4, i64 3, i64 3
  store ptr %30, ptr %35, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  %36 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 2
  %37 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %36, ptr noundef nonnull %37) #19
  %38 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2
  %39 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %40 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %41 = call float @normal_quad_v3(ptr noundef nonnull %6, ptr noundef nonnull %37, ptr noundef nonnull %38, ptr noundef nonnull %39, ptr noundef nonnull %40) #18
  %42 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %43 = fcmp ogt float %42, 0.000000e+00
  br label %44

44:                                               ; preds = %3, %63
  %45 = phi i64 [ 0, %3 ], [ %64, %63 ]
  %46 = getelementptr inbounds [4 x [4 x ptr]], ptr %4, i64 0, i64 %45
  br i1 %43, label %47, label %55

47:                                               ; preds = %44
  %48 = getelementptr inbounds [4 x [4 x ptr]], ptr %4, i64 0, i64 %45, i64 3
  %49 = load ptr, ptr %48, align 8, !tbaa !59
  %50 = getelementptr inbounds [4 x [4 x ptr]], ptr %4, i64 0, i64 %45, i64 2
  %51 = load ptr, ptr %50, align 16, !tbaa !59
  %52 = getelementptr inbounds [4 x [4 x ptr]], ptr %4, i64 0, i64 %45, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !59
  %54 = load ptr, ptr %46, align 16, !tbaa !59
  call fastcc void @add_poly(ptr noundef %0, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %54) #19
  br label %63

55:                                               ; preds = %44
  %56 = load ptr, ptr %46, align 16, !tbaa !59
  %57 = getelementptr inbounds [4 x [4 x ptr]], ptr %4, i64 0, i64 %45, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !59
  %59 = getelementptr inbounds [4 x [4 x ptr]], ptr %4, i64 0, i64 %45, i64 2
  %60 = load ptr, ptr %59, align 16, !tbaa !59
  %61 = getelementptr inbounds [4 x [4 x ptr]], ptr %4, i64 0, i64 %45, i64 3
  %62 = load ptr, ptr %61, align 8, !tbaa !59
  call fastcc void @add_poly(ptr noundef %0, ptr noundef %56, ptr noundef %58, ptr noundef %60, ptr noundef %62) #19
  br label %63

63:                                               ; preds = %47, %55
  %64 = add nuw nsw i64 %45, 1
  %65 = icmp eq i64 %64, 4
  br i1 %65, label %66, label %44, !llvm.loop !244

66:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }

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
!34 = !{!"MOD_skin.c:copyData"}
!35 = !{!"MOD_skin.c:applyModifier"}
!36 = !{!"MOD_skin.c:initData"}
!37 = !{!38, !42, i64 20}
!38 = !{!"ModifierData", !39, i64 0, !39, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!44, !45, i64 112}
!44 = !{!"SkinModifierData", !38, i64 0, !45, i64 112, !40, i64 116, !40, i64 117, !40, i64 118}
!45 = !{!"float", !40, i64 0}
!46 = !{!44, !40, i64 116}
!47 = !{!44, !40, i64 117}
!48 = !{!"MOD_skin.c:requiredDataMask"}
!49 = !{!"MOD_skin.c:final_skin"}
!50 = !{!51, !39, i64 1680}
!51 = !{!"DerivedMesh", !52, i64 0, !52, i64 200, !52, i64 400, !52, i64 600, !52, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !39, i64 1032, !39, i64 1040, !42, i64 1048, !45, i64 1052, !42, i64 1056, !42, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!52 = !{!"CustomData", !39, i64 0, !40, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !39, i64 184, !39, i64 192}
!53 = !{!"MOD_skin.c:subdivide_base"}
!54 = !{!51, !39, i64 1168}
!55 = !{!51, !39, i64 1176}
!56 = !{!51, !39, i64 1320}
!57 = !{!51, !39, i64 1104}
!58 = !{!51, !39, i64 1112}
!59 = !{!39, !39, i64 0}
!60 = !{!61, !42, i64 0}
!61 = !{!"MEdge", !42, i64 0, !42, i64 4, !40, i64 8, !40, i64 9, !62, i64 10}
!62 = !{!"short", !40, i64 0}
!63 = !{!42, !42, i64 0}
!64 = !{!61, !42, i64 4}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = distinct !{!67, !66}
!68 = !{!69, !42, i64 8}
!69 = !{!"MDeformVert", !39, i64 0, !42, i64 8, !42, i64 12}
!70 = !{!69, !39, i64 0}
!71 = !{!72, !42, i64 0}
!72 = !{!"MDeformWeight", !42, i64 0, !45, i64 4}
!73 = distinct !{!73, !66}
!74 = !{!75, !42, i64 0}
!75 = !{!"", !42, i64 0, !45, i64 4, !45, i64 8}
!76 = !{!72, !45, i64 4}
!77 = !{!75, !45, i64 4}
!78 = !{!75, !45, i64 8}
!79 = distinct !{!79, !66}
!80 = distinct !{!80, !66}
!81 = distinct !{!81, !66}
!82 = distinct !{!82, !66}
!83 = !{!"MOD_skin.c:base_skin"}
!84 = !{!51, !42, i64 1056}
!85 = !{!"MOD_skin.c:calc_edge_subdivisions"}
!86 = !{!87, !42, i64 12}
!87 = !{!"MVertSkin", !40, i64 0, !42, i64 12}
!88 = !{!"MOD_skin.c:half_v2"}
!89 = !{!45, !45, i64 0}
!90 = !{!"MOD_skin.c:interpf"}
!91 = !{!"MOD_skin.c:len_v3v3"}
!92 = !{!"MOD_skin.c:sub_v3_v3v3"}
!93 = !{!"MOD_skin.c:len_v3"}
!94 = !{!"MOD_skin.c:dot_v3v3"}
!95 = !{!"MOD_skin.c:build_edge_mats"}
!96 = !{!97, !42, i64 8}
!97 = !{!"MeshElemMap", !39, i64 0, !42, i64 8}
!98 = !{!97, !39, i64 0}
!99 = !{!100, !42, i64 36}
!100 = !{!"", !40, i64 0, !42, i64 36, !42, i64 40}
!101 = !{!100, !42, i64 40}
!102 = distinct !{!102, !66}
!103 = distinct !{!103, !66}
!104 = distinct !{!104, !66}
!105 = !{!"MOD_skin.c:build_frames"}
!106 = distinct !{!106, !66}
!107 = !{!"MOD_skin.c:build_skin"}
!108 = !{!109, !39, i64 8}
!109 = !{!"", !39, i64 0, !39, i64 8, !42, i64 16}
!110 = !{!109, !39, i64 0}
!111 = !{!109, !42, i64 16}
!112 = !{!113, !42, i64 304}
!113 = !{!"", !40, i64 0, !42, i64 304, !42, i64 308, !40, i64 312}
!114 = distinct !{!114, !66}
!115 = !{!"MOD_skin.c:skin_set_orig_indices"}
!116 = !{!51, !39, i64 1136}
!117 = !{!"MOD_skin.c:calc_edge_mat"}
!118 = !{!"MOD_skin.c:build_emats_stack"}
!119 = !{!120, !42, i64 36}
!120 = !{!"", !40, i64 0, !42, i64 36}
!121 = distinct !{!121, !66}
!122 = !{!"MOD_skin.c:normalize_v3"}
!123 = !{!"MOD_skin.c:cross_v3_v3v3"}
!124 = !{!"MOD_skin.c:normalize_v3_v3"}
!125 = !{!"MOD_skin.c:mul_v3_v3fl"}
!126 = !{!"MOD_skin.c:zero_v3"}
!127 = !{!"MOD_skin.c:end_node_frames"}
!128 = !{!113, !42, i64 308}
!129 = !{!"MOD_skin.c:connection_node_frames"}
!130 = !{i32 0, i32 2}
!131 = !{!"MOD_skin.c:node_frames_init"}
!132 = !{!"MOD_skin.c:create_frame"}
!133 = distinct !{!133, !66}
!134 = !{!"MOD_skin.c:negate_v3"}
!135 = !{!"MOD_skin.c:add_v3_v3v3"}
!136 = !{!"MOD_skin.c:connection_node_mat"}
!137 = !{!"MOD_skin.c:copy_v3_v3"}
!138 = !{!"MOD_skin.c:skin_merge_close_frame_verts"}
!139 = distinct !{!139, !66}
!140 = !{!"MOD_skin.c:output_frames"}
!141 = !{!142, !39, i64 0}
!142 = !{!"", !39, i64 0, !42, i64 8}
!143 = !{!144, !39, i64 0}
!144 = !{!"BMVert", !145, i64 0, !39, i64 16, !40, i64 24, !40, i64 36, !39, i64 48}
!145 = !{!"BMHeader", !39, i64 0, !42, i64 8, !40, i64 12, !40, i64 13, !40, i64 14}
!146 = distinct !{!146, !66}
!147 = distinct !{!147, !66}
!148 = !{!"MOD_skin.c:skin_update_merged_vertices"}
!149 = !{!142, !42, i64 8}
!150 = distinct !{!150, !66}
!151 = distinct !{!151, !66}
!152 = distinct !{!152, !66}
!153 = !{!"MOD_skin.c:skin_output_branch_hulls"}
!154 = distinct !{!154, !66}
!155 = !{!"MOD_skin.c:hull_merge_triangles"}
!156 = !{!157, !42, i64 32}
!157 = !{!"BMFace", !145, i64 0, !39, i64 16, !39, i64 24, !42, i64 32, !40, i64 36, !62, i64 48}
!158 = distinct !{!158, !66}
!159 = distinct !{!159, !66}
!160 = !{!"MOD_skin.c:skin_fix_hull_topology"}
!161 = !{!162, !40, i64 148}
!162 = !{!"Frame", !40, i64 0, !40, i64 32, !40, i64 80, !40, i64 144, !40, i64 148}
!163 = distinct !{!163, !66}
!164 = distinct !{!164, !66}
!165 = !{!"MOD_skin.c:skin_smooth_hulls"}
!166 = distinct !{!166, !66}
!167 = distinct !{!167, !66}
!168 = distinct !{!168, !66}
!169 = distinct !{!169, !66}
!170 = distinct !{!170, !66}
!171 = distinct !{!171, !66}
!172 = !{!"MOD_skin.c:skin_output_end_nodes"}
!173 = distinct !{!173, !66}
!174 = distinct !{!174, !66}
!175 = !{!"MOD_skin.c:skin_output_connections"}
!176 = distinct !{!176, !66}
!177 = distinct !{!177, !66}
!178 = !{!"MOD_skin.c:collect_hull_frames"}
!179 = distinct !{!179, !66}
!180 = !{!"MOD_skin.c:merge_frame_corners"}
!181 = distinct !{!181, !66}
!182 = distinct !{!182, !66}
!183 = distinct !{!183, !66}
!184 = distinct !{!184, !66}
!185 = !{!"MOD_skin.c:frame_len"}
!186 = !{!"MOD_skin.c:min_ff"}
!187 = !{!"MOD_skin.c:BM_iter_new"}
!188 = !{!"MOD_skin.c:quad_from_tris"}
!189 = distinct !{!189, !66}
!190 = !{!191, !39, i64 24}
!191 = !{!"BMEdge", !145, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !192, i64 48, !192, i64 64}
!192 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!193 = !{!191, !39, i64 32}
!194 = distinct !{!194, !66}
!195 = !{!"MOD_skin.c:quad_crosses_symmetry_plane"}
!196 = distinct !{!196, !66}
!197 = distinct !{!197, !66}
!198 = !{!"MOD_skin.c:is_quad_symmetric"}
!199 = distinct !{!199, !66}
!200 = !{!"MOD_skin.c:BM_iter_step"}
!201 = !{!202, !39, i64 48}
!202 = !{!"BMIter", !40, i64 0, !39, i64 40, !39, i64 48, !42, i64 56, !40, i64 60}
!203 = !{!"MOD_skin.c:_bm_elem_flag_test"}
!204 = !{!145, !40, i64 13}
!205 = !{!"MOD_skin.c:add_quad_from_tris"}
!206 = !{!"MOD_skin.c:_bm_elem_flag_enable"}
!207 = !{!"MOD_skin.c:BM_iter_init"}
!208 = !{!202, !40, i64 60}
!209 = !{!202, !39, i64 40}
!210 = !{!211, !39, i64 32}
!211 = !{!"BMesh", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !40, i64 28, !40, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !42, i64 88, !42, i64 92, !42, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !42, i64 128, !39, i64 136, !52, i64 144, !52, i64 344, !52, i64 544, !52, i64 744, !62, i64 944, !42, i64 948, !42, i64 952, !42, i64 956, !212, i64 960, !39, i64 976, !212, i64 984, !39, i64 1000}
!212 = !{!"ListBase", !39, i64 0, !39, i64 8}
!213 = !{!211, !39, i64 40}
!214 = !{!211, !39, i64 56}
!215 = !{!40, !40, i64 0}
!216 = !{!"MOD_skin.c:len_squared_v3v3"}
!217 = !{!"MOD_skin.c:add_poly"}
!218 = !{!157, !62, i64 48}
!219 = !{!"MOD_skin.c:skin_hole_detach_partially_attached_frame"}
!220 = distinct !{!220, !66}
!221 = distinct !{!221, !66}
!222 = !{!"MOD_skin.c:skin_hole_target_face"}
!223 = distinct !{!223, !66}
!224 = !{!"MOD_skin.c:skin_fix_hole_no_good_verts"}
!225 = distinct !{!225, !66}
!226 = !{!227, !39, i64 24}
!227 = !{!"BMLoop", !145, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!228 = distinct !{!228, !66}
!229 = !{!"MOD_skin.c:calc_frame_center"}
!230 = !{!"MOD_skin.c:isect_ray_poly"}
!231 = distinct !{!231, !66}
!232 = !{!"MOD_skin.c:add_v3_v3"}
!233 = !{!"MOD_skin.c:mul_v3_fl"}
!234 = !{!"MOD_skin.c:collapse_face_corners"}
!235 = distinct !{!235, !66}
!236 = distinct !{!236, !66}
!237 = !{!"MOD_skin.c:skin_choose_quad_bridge_order"}
!238 = distinct !{!238, !66}
!239 = distinct !{!239, !66}
!240 = distinct !{!240, !66}
!241 = !{!"MOD_skin.c:BMO_slot_map_elem_insert"}
!242 = !{!"MOD_skin.c:BM_edge_other_vert"}
!243 = !{!"MOD_skin.c:connect_frames"}
!244 = distinct !{!244, !66}
