; ModuleID = 'blender/source/blender/blenkernel/intern/mesh_validate.c'
source_filename = "blender/source/blender/blenkernel/intern/mesh_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.SortFace = type { [4 x %union.EdgeUUID], i32 }
%union.EdgeUUID = type { i64 }
%struct.SortPoly = type { ptr, i32, i32, i32, i8 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MSelect = type { i32, i32 }
%struct.EdgeHashIterator = type { ptr, ptr, i32 }
%struct._eh_Entry = type { ptr, i32, i32, ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.EdgeSort = type { i32, i32, i8, i8 }

@__func__.BKE_mesh_validate_arrays = private unnamed_addr constant [25 x i8] c"BKE_mesh_validate_arrays\00", align 1
@.str = private unnamed_addr constant [51 x i8] c"%s: verts(%u), edges(%u), loops(%u), polygons(%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\09Logical error, %u polygons and 0 edges\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\09Vertex %u: has invalid coordinate\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\09Vertex %u: has zero normal, assuming Z-up normal\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\09Edge %u: has matching verts, both %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\09Edge %u: v1 index out of range, %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\09Edge %u: v2 index out of range, %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\09Edge %u: is a duplicate of %d\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"search faces\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"\09Face %u: 'v%d' index out of range, %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"    face %u: verts invalid, v1/v2 both %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"    face %u: verts invalid, v1/v3 both %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"    face %u: verts invalid, v1/v4 both %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"    face %u: verts invalid, v2/v3 both %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"    face %u: verts invalid, v2/v4 both %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"    face %u: verts invalid, v3/v4 both %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"    face %u: edge v1/v2 (%u,%u) is missing edge data\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"    face %u: edge v2/v3 (%u,%u) is missing edge data\0A\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"    face %u: edge v3/v4 (%u,%u) is missing edge data\0A\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"    face %u: edge v4/v1 (%u,%u) is missing edge data\0A\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"    face %u: edge v3/v1 (%u,%u) is missing edge data\0A\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"\09Face %u & %u: are duplicates (%u,%u,%u,%u) (%u,%u,%u,%u)\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"\09Face %u & %u: are duplicates (%u,%u,%u) (%u,%u,%u)\0A\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [27 x i8] c"mesh validate's sort_polys\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"\09Poly %u is invalid (loopstart: %u, totloop: %u)\0A\00", align 1
@.str.26 = private unnamed_addr constant [85 x i8] c"\09Poly %u uses loops out of range (loopstart: %u, loopend: %u, max nbr of loops: %u)\0A\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [21 x i8] c"Vert idx of SortPoly\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"\09Loop %u has invalid vert reference (%u)\0A\00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"\09Poly %u has duplicate vert reference at corner (%u)\0A\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"\09Poly %u needs missing edge (%u, %u)\0A\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"\09Loop %u has invalid edge reference (%u), fixed using edge %u\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"\09Loop %u has invalid edge reference (%u)\0A\00", align 1
@.str.33 = private unnamed_addr constant [63 x i8] c"\09Poly %u has invalid edge reference (%u), fixed using edge %u\0A\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"\09Poly %u has invalid edge reference (%u)\0A\00", align 1
@.str.35 = private unnamed_addr constant [57 x i8] c"\09Poly %u is invalid, it multi-uses vertex %u (%u times)\0A\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"\09Polys %u and %u use same vertices (%u\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c", %u\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"), considering poly %u as invalid.\0A\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"\09Loop %u is unused.\0A\00", align 1
@.str.40 = private unnamed_addr constant [77 x i8] c"\09Polys %u and %u share loops from %u to %u, considering poly %u as invalid.\0A\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"\09Vertex deform %u, group %d has weight: %f\0A\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"\09Vertex deform %u, has invalid group %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [79 x i8] c"\09Mesh select element %d type %d index is negative, resetting selection stack.\0A\00", align 1
@.str.44 = private unnamed_addr constant [104 x i8] c"\09Mesh select element %d type %d index %d is larger than data array size %d, resetting selection stack.\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"%s: finished\0A\0A\00", align 1
@CD_MASK_MESH = external local_unnamed_addr constant i64, align 8
@.str.46 = private unnamed_addr constant [60 x i8] c"\09CustomDataLayer mismatch, tot_texpoly(%d), tot_uvloop(%d)\0A\00", align 1
@.str.47 = private unnamed_addr constant [92 x i8] c"\09More UV layers than %d allowed, %d last ones won't be available for render, shaders, etc.\0A\00", align 1
@.str.48 = private unnamed_addr constant [94 x i8] c"\09More VCol layers than %d allowed, %d last ones won't be available for render, shaders, etc.\0A\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"MESH: %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [100 x i8] c"WARNING! More UV layers than %d allowed, %d last ones won't be available for render, shaders, etc.\0A\00", align 1
@.str.51 = private unnamed_addr constant [102 x i8] c"WARNING! More VCol layers than %d allowed, %d last ones won't be available for render, shaders, etc.\0A\00", align 1
@__func__.BKE_mesh_strip_loose_polysloops = private unnamed_addr constant [32 x i8] c"BKE_mesh_strip_loose_polysloops\00", align 1
@__func__.BKE_mesh_strip_loose_edges = private unnamed_addr constant [27 x i8] c"BKE_mesh_strip_loose_edges\00", align 1
@__func__.BKE_mesh_calc_edges = private unnamed_addr constant [20 x i8] c"BKE_mesh_calc_edges\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"%s: Checking %d CD layers...\0A\00", align 1
@__func__.mesh_validate_customdata = private unnamed_addr constant [25 x i8] c"mesh_validate_customdata\00", align 1
@.str.53 = private unnamed_addr constant [69 x i8] c"\09CustomDataLayer type %d is a singleton, found %d in Mesh structure\0A\00", align 1
@.str.54 = private unnamed_addr constant [50 x i8] c"\09CustomDataLayer type %d which isn't in the mask\0A\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"%s: Finished (is_valid=%d)\0A\0A\00", align 1
@__func__.mesh_calc_edges_mdata = private unnamed_addr constant [22 x i8] c"mesh_calc_edges_mdata\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"EdgeSort\00", align 1
@str = private unnamed_addr constant [32 x i8] c"No Polys, only tesselated Faces\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_mesh_validate_arrays(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr nocapture noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11, i8 noundef zeroext %12, i8 noundef zeroext %13, ptr nocapture noundef writeonly %14) local_unnamed_addr #0 {
  %16 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.BKE_mesh_validate_arrays, i32 noundef %4) #12
  %17 = icmp eq i8 %12, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.BKE_mesh_validate_arrays, i32 noundef %2, i32 noundef %4, i32 noundef %8, i32 noundef %10)
  br label %20

20:                                               ; preds = %15, %18
  %21 = icmp ne i32 %4, 0
  %22 = icmp eq i32 %10, 0
  %23 = or i1 %21, %22
  %24 = or i1 %23, %17
  %25 = select i1 %23, i8 0, i8 %13
  %26 = zext i1 %23 to i8
  br i1 %24, label %29, label %27

27:                                               ; preds = %20
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %10)
  br label %29

29:                                               ; preds = %20, %27
  %30 = phi i8 [ %25, %20 ], [ %13, %27 ]
  %31 = phi i8 [ %26, %20 ], [ 0, %27 ]
  %32 = icmp eq i32 %2, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = icmp eq i8 %13, 0
  %35 = icmp eq i8 %13, 0
  br label %36

36:                                               ; preds = %33, %80
  %37 = phi ptr [ %1, %33 ], [ %84, %80 ]
  %38 = phi i32 [ 0, %33 ], [ %83, %80 ]
  %39 = phi i8 [ %31, %33 ], [ %82, %80 ]
  %40 = phi i8 [ 0, %33 ], [ %81, %80 ]
  %41 = getelementptr inbounds float, ptr %37, i64 1
  %42 = getelementptr inbounds float, ptr %37, i64 2
  br label %49

43:                                               ; preds = %80, %29
  %44 = phi i8 [ 0, %29 ], [ %81, %80 ]
  %45 = phi i8 [ %31, %29 ], [ %82, %80 ]
  %46 = icmp eq i32 %4, 0
  br i1 %46, label %155, label %47

47:                                               ; preds = %43
  %48 = zext i32 %4 to i64
  br label %86

49:                                               ; preds = %36, %63
  %50 = phi i64 [ 0, %36 ], [ %70, %63 ]
  %51 = phi i8 [ %39, %36 ], [ %65, %63 ]
  %52 = phi i8 [ %40, %36 ], [ %64, %63 ]
  %53 = phi i8 [ 1, %36 ], [ %69, %63 ]
  %54 = getelementptr inbounds [3 x float], ptr %37, i64 0, i64 %50
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = tail call float @llvm.fabs.f32(float %55)
  %57 = fcmp ueq float %56, 0x7FF0000000000000
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  br i1 %17, label %61, label %59

59:                                               ; preds = %58
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %38)
  br label %61

61:                                               ; preds = %58, %59
  br i1 %34, label %63, label %62

62:                                               ; preds = %61
  store float 0.000000e+00, ptr %37, align 4, !tbaa !34
  store float 0.000000e+00, ptr %41, align 4, !tbaa !34
  store float 0.000000e+00, ptr %42, align 4, !tbaa !34
  br label %63

63:                                               ; preds = %61, %62, %49
  %64 = phi i8 [ %52, %49 ], [ 1, %62 ], [ %52, %61 ]
  %65 = phi i8 [ %51, %49 ], [ 0, %62 ], [ 0, %61 ]
  %66 = getelementptr inbounds %struct.MVert, ptr %37, i64 0, i32 1, i64 %50
  %67 = load i16, ptr %66, align 2, !tbaa !38
  %68 = icmp eq i16 %67, 0
  %69 = select i1 %68, i8 %53, i8 0
  %70 = add nuw nsw i64 %50, 1
  %71 = icmp eq i64 %70, 3
  br i1 %71, label %72, label %49, !llvm.loop !40

72:                                               ; preds = %63
  %73 = icmp eq i8 %69, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %72
  br i1 %17, label %77, label %75

75:                                               ; preds = %74
  %76 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %38)
  br label %77

77:                                               ; preds = %74, %75
  br i1 %35, label %80, label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.MVert, ptr %37, i64 0, i32 1, i64 2
  store i16 32767, ptr %79, align 4, !tbaa !38
  br label %80

80:                                               ; preds = %77, %78, %72
  %81 = phi i8 [ 1, %78 ], [ %64, %77 ], [ %64, %72 ]
  %82 = phi i8 [ 0, %78 ], [ 0, %77 ], [ %65, %72 ]
  %83 = add nuw i32 %38, 1
  %84 = getelementptr inbounds %struct.MVert, ptr %37, i64 1
  %85 = icmp eq i32 %83, %2
  br i1 %85, label %43, label %36, !llvm.loop !43

86:                                               ; preds = %47, %150
  %87 = phi i64 [ 0, %47 ], [ %152, %150 ]
  %88 = phi ptr [ %3, %47 ], [ %153, %150 ]
  %89 = phi i8 [ %45, %47 ], [ %143, %150 ]
  %90 = phi i8 [ 0, %47 ], [ %151, %150 ]
  %91 = load i32, ptr %88, align 4, !tbaa !44
  %92 = getelementptr inbounds %struct.MEdge, ptr %88, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !47
  %94 = icmp ne i32 %91, %93
  %95 = or i1 %17, %94
  %96 = select i1 %94, i8 0, i8 %13
  %97 = select i1 %94, i8 %89, i8 0
  br i1 %95, label %101, label %98

98:                                               ; preds = %86
  %99 = trunc i64 %87 to i32
  %100 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %99, i32 noundef %91)
  br label %101

101:                                              ; preds = %86, %98
  %102 = phi i8 [ %96, %86 ], [ %13, %98 ]
  %103 = phi i8 [ %97, %86 ], [ 0, %98 ]
  %104 = load i32, ptr %88, align 4, !tbaa !44
  %105 = icmp ult i32 %104, %2
  %106 = or i1 %17, %105
  %107 = select i1 %105, i8 %102, i8 %13
  %108 = select i1 %105, i8 %103, i8 0
  br i1 %106, label %112, label %109

109:                                              ; preds = %101
  %110 = trunc i64 %87 to i32
  %111 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %110, i32 noundef %104)
  br label %112

112:                                              ; preds = %101, %109
  %113 = phi i8 [ %107, %101 ], [ %13, %109 ]
  %114 = phi i8 [ %108, %101 ], [ 0, %109 ]
  %115 = load i32, ptr %92, align 4, !tbaa !47
  %116 = icmp ult i32 %115, %2
  %117 = or i1 %17, %116
  %118 = select i1 %116, i8 %113, i8 %13
  %119 = select i1 %116, i8 %114, i8 0
  br i1 %117, label %123, label %120

120:                                              ; preds = %112
  %121 = trunc i64 %87 to i32
  %122 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %121, i32 noundef %115)
  br label %123

123:                                              ; preds = %112, %120
  %124 = phi i8 [ %118, %112 ], [ %13, %120 ]
  %125 = phi i8 [ %119, %112 ], [ 0, %120 ]
  %126 = load i32, ptr %88, align 4, !tbaa !44
  %127 = load i32, ptr %92, align 4, !tbaa !47
  %128 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %126, i32 noundef %127) #12
  %129 = icmp eq i8 %128, 0
  %130 = or i1 %17, %129
  %131 = select i1 %129, i8 %124, i8 %13
  %132 = select i1 %129, i8 %125, i8 0
  br i1 %130, label %141, label %133

133:                                              ; preds = %123
  %134 = load i32, ptr %88, align 4, !tbaa !44
  %135 = load i32, ptr %92, align 4, !tbaa !47
  %136 = tail call ptr @BLI_edgehash_lookup(ptr noundef %16, i32 noundef %134, i32 noundef %135) #12
  %137 = ptrtoint ptr %136 to i64
  %138 = trunc i64 %137 to i32
  %139 = trunc i64 %87 to i32
  %140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %139, i32 noundef %138)
  br label %141

141:                                              ; preds = %123, %133
  %142 = phi i8 [ %131, %123 ], [ %13, %133 ]
  %143 = phi i8 [ %132, %123 ], [ 0, %133 ]
  %144 = icmp eq i8 %142, 0
  %145 = load i32, ptr %88, align 4, !tbaa !44
  br i1 %144, label %146, label %149

146:                                              ; preds = %141
  %147 = load i32, ptr %92, align 4, !tbaa !47
  %148 = inttoptr i64 %87 to ptr
  tail call void @BLI_edgehash_insert(ptr noundef %16, i32 noundef %145, i32 noundef %147, ptr noundef %148) #12
  br label %150

149:                                              ; preds = %141
  store i32 %145, ptr %92, align 4, !tbaa !47
  br label %150

150:                                              ; preds = %149, %146
  %151 = phi i8 [ %90, %146 ], [ 1, %149 ]
  %152 = add nuw nsw i64 %87, 1
  %153 = getelementptr inbounds %struct.MEdge, ptr %88, i64 1
  %154 = icmp eq i64 %152, %48
  br i1 %154, label %155, label %86, !llvm.loop !48

155:                                              ; preds = %150, %43
  %156 = phi i8 [ 0, %43 ], [ %151, %150 ]
  %157 = phi i8 [ %45, %43 ], [ %143, %150 ]
  %158 = icmp eq ptr %5, null
  %159 = icmp ne ptr %9, null
  %160 = or i1 %158, %159
  br i1 %160, label %475, label %161

161:                                              ; preds = %155
  %162 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %163 = zext i32 %6 to i64
  %164 = mul nuw nsw i64 %163, 40
  %165 = tail call ptr %162(i64 noundef %164, ptr noundef nonnull @.str.8) #12
  br i1 %17, label %168, label %166

166:                                              ; preds = %161
  %167 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %168

168:                                              ; preds = %161, %166
  %169 = icmp eq i32 %6, 0
  br i1 %169, label %416, label %170

170:                                              ; preds = %168, %411
  %171 = phi i32 [ %413, %411 ], [ 0, %168 ]
  %172 = phi i8 [ %412, %411 ], [ 0, %168 ]
  %173 = phi i32 [ %406, %411 ], [ 0, %168 ]
  %174 = phi ptr [ %405, %411 ], [ %165, %168 ]
  %175 = phi i8 [ %404, %411 ], [ %30, %168 ]
  %176 = phi ptr [ %414, %411 ], [ %5, %168 ]
  %177 = getelementptr inbounds %struct.MFace, ptr %176, i64 0, i32 3
  %178 = load i32, ptr %177, align 4, !tbaa !51
  %179 = icmp eq i32 %178, 0
  %180 = select i1 %179, i64 2, i64 3
  br label %181

181:                                              ; preds = %193, %170
  %182 = phi i64 [ %195, %193 ], [ %180, %170 ]
  %183 = phi i8 [ %194, %193 ], [ 0, %170 ]
  %184 = getelementptr inbounds i32, ptr %176, i64 %182
  %185 = load i32, ptr %184, align 4, !tbaa !53
  %186 = icmp ult i32 %185, %2
  %187 = or i1 %17, %186
  %188 = select i1 %186, i8 %183, i8 %13
  br i1 %187, label %193, label %189

189:                                              ; preds = %181
  %190 = trunc i64 %182 to i32
  %191 = add i32 %190, 1
  %192 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %171, i32 noundef %191, i32 noundef %185)
  br label %193

193:                                              ; preds = %181, %189
  %194 = phi i8 [ %188, %181 ], [ %13, %189 ]
  %195 = add nsw i64 %182, -1
  %196 = icmp eq i64 %182, 0
  br i1 %196, label %197, label %181, !llvm.loop !54

197:                                              ; preds = %193
  %198 = icmp eq i8 %194, 0
  br i1 %198, label %199, label %403

199:                                              ; preds = %197
  %200 = load i32, ptr %177, align 4, !tbaa !51
  %201 = icmp eq i32 %200, 0
  %202 = load i32, ptr %176, align 4, !tbaa !55
  %203 = getelementptr inbounds %struct.MFace, ptr %176, i64 0, i32 1
  %204 = load i32, ptr %203, align 4, !tbaa !56
  %205 = icmp ne i32 %202, %204
  %206 = or i1 %17, %205
  %207 = select i1 %205, i8 %194, i8 %13
  br i1 %201, label %257, label %208

208:                                              ; preds = %199
  br i1 %206, label %211, label %209

209:                                              ; preds = %208
  %210 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %171, i32 noundef %202)
  br label %211

211:                                              ; preds = %208, %209
  %212 = phi i8 [ %207, %208 ], [ %13, %209 ]
  %213 = load i32, ptr %176, align 4, !tbaa !55
  %214 = getelementptr inbounds %struct.MFace, ptr %176, i64 0, i32 2
  %215 = load i32, ptr %214, align 4, !tbaa !57
  %216 = icmp ne i32 %213, %215
  %217 = or i1 %17, %216
  %218 = select i1 %216, i8 %212, i8 %13
  br i1 %217, label %221, label %219

219:                                              ; preds = %211
  %220 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %171, i32 noundef %213)
  br label %221

221:                                              ; preds = %211, %219
  %222 = phi i8 [ %218, %211 ], [ %13, %219 ]
  %223 = load i32, ptr %176, align 4, !tbaa !55
  %224 = load i32, ptr %177, align 4, !tbaa !51
  %225 = icmp ne i32 %223, %224
  %226 = or i1 %17, %225
  %227 = select i1 %225, i8 %222, i8 %13
  br i1 %226, label %230, label %228

228:                                              ; preds = %221
  %229 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %171, i32 noundef %223)
  br label %230

230:                                              ; preds = %221, %228
  %231 = phi i8 [ %227, %221 ], [ %13, %228 ]
  %232 = load i32, ptr %203, align 4, !tbaa !56
  %233 = load i32, ptr %214, align 4, !tbaa !57
  %234 = icmp ne i32 %232, %233
  %235 = or i1 %17, %234
  %236 = select i1 %234, i8 %231, i8 %13
  br i1 %235, label %239, label %237

237:                                              ; preds = %230
  %238 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %171, i32 noundef %232)
  br label %239

239:                                              ; preds = %230, %237
  %240 = phi i8 [ %236, %230 ], [ %13, %237 ]
  %241 = load i32, ptr %203, align 4, !tbaa !56
  %242 = load i32, ptr %177, align 4, !tbaa !51
  %243 = icmp ne i32 %241, %242
  %244 = or i1 %17, %243
  %245 = select i1 %243, i8 %240, i8 %13
  br i1 %244, label %248, label %246

246:                                              ; preds = %239
  %247 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %171, i32 noundef %241)
  br label %248

248:                                              ; preds = %239, %246
  %249 = phi i8 [ %245, %239 ], [ %13, %246 ]
  %250 = load i32, ptr %214, align 4, !tbaa !57
  %251 = load i32, ptr %177, align 4, !tbaa !51
  %252 = icmp ne i32 %250, %251
  %253 = or i1 %17, %252
  %254 = select i1 %252, i8 %249, i8 %13
  br i1 %253, label %279, label %255

255:                                              ; preds = %248
  %256 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %171, i32 noundef %250)
  br label %279

257:                                              ; preds = %199
  br i1 %206, label %260, label %258

258:                                              ; preds = %257
  %259 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %171, i32 noundef %202)
  br label %260

260:                                              ; preds = %257, %258
  %261 = phi i8 [ %207, %257 ], [ %13, %258 ]
  %262 = load i32, ptr %176, align 4, !tbaa !55
  %263 = getelementptr inbounds %struct.MFace, ptr %176, i64 0, i32 2
  %264 = load i32, ptr %263, align 4, !tbaa !57
  %265 = icmp ne i32 %262, %264
  %266 = or i1 %17, %265
  %267 = select i1 %265, i8 %261, i8 %13
  br i1 %266, label %270, label %268

268:                                              ; preds = %260
  %269 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %171, i32 noundef %262)
  br label %270

270:                                              ; preds = %260, %268
  %271 = phi i8 [ %267, %260 ], [ %13, %268 ]
  %272 = load i32, ptr %203, align 4, !tbaa !56
  %273 = load i32, ptr %263, align 4, !tbaa !57
  %274 = icmp ne i32 %272, %273
  %275 = or i1 %17, %274
  %276 = select i1 %274, i8 %271, i8 %13
  br i1 %275, label %279, label %277

277:                                              ; preds = %270
  %278 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %171, i32 noundef %272)
  br label %279

279:                                              ; preds = %270, %248, %277, %255
  %280 = phi i8 [ %254, %248 ], [ %276, %270 ], [ %13, %255 ], [ %13, %277 ]
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %282, label %403

282:                                              ; preds = %279
  br i1 %21, label %283, label %363

283:                                              ; preds = %282
  %284 = load i32, ptr %177, align 4, !tbaa !51
  %285 = icmp eq i32 %284, 0
  %286 = load i32, ptr %176, align 4, !tbaa !55
  %287 = getelementptr inbounds %struct.MFace, ptr %176, i64 0, i32 1
  %288 = load i32, ptr %287, align 4, !tbaa !56
  %289 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %286, i32 noundef %288) #12
  %290 = icmp ne i8 %289, 0
  %291 = or i1 %17, %290
  %292 = select i1 %290, i8 %175, i8 1
  br i1 %285, label %331, label %293

293:                                              ; preds = %283
  br i1 %291, label %298, label %294

294:                                              ; preds = %293
  %295 = load i32, ptr %176, align 4, !tbaa !55
  %296 = load i32, ptr %287, align 4, !tbaa !56
  %297 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %171, i32 noundef %295, i32 noundef %296)
  br label %298

298:                                              ; preds = %293, %294
  %299 = phi i8 [ %292, %293 ], [ 1, %294 ]
  %300 = load i32, ptr %287, align 4, !tbaa !56
  %301 = getelementptr inbounds %struct.MFace, ptr %176, i64 0, i32 2
  %302 = load i32, ptr %301, align 4, !tbaa !57
  %303 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %300, i32 noundef %302) #12
  %304 = icmp ne i8 %303, 0
  %305 = or i1 %17, %304
  %306 = select i1 %304, i8 %299, i8 1
  br i1 %305, label %311, label %307

307:                                              ; preds = %298
  %308 = load i32, ptr %287, align 4, !tbaa !56
  %309 = load i32, ptr %301, align 4, !tbaa !57
  %310 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %171, i32 noundef %308, i32 noundef %309)
  br label %311

311:                                              ; preds = %298, %307
  %312 = phi i8 [ %306, %298 ], [ 1, %307 ]
  %313 = load i32, ptr %301, align 4, !tbaa !57
  %314 = load i32, ptr %177, align 4, !tbaa !51
  %315 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %313, i32 noundef %314) #12
  %316 = icmp ne i8 %315, 0
  %317 = or i1 %17, %316
  %318 = select i1 %316, i8 %312, i8 1
  br i1 %317, label %323, label %319

319:                                              ; preds = %311
  %320 = load i32, ptr %301, align 4, !tbaa !57
  %321 = load i32, ptr %177, align 4, !tbaa !51
  %322 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %171, i32 noundef %320, i32 noundef %321)
  br label %323

323:                                              ; preds = %311, %319
  %324 = phi i8 [ %318, %311 ], [ 1, %319 ]
  %325 = load i32, ptr %177, align 4, !tbaa !51
  %326 = load i32, ptr %176, align 4, !tbaa !55
  %327 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %325, i32 noundef %326) #12
  %328 = icmp ne i8 %327, 0
  %329 = or i1 %17, %328
  %330 = select i1 %328, i8 %324, i8 1
  br i1 %329, label %363, label %357

331:                                              ; preds = %283
  br i1 %291, label %336, label %332

332:                                              ; preds = %331
  %333 = load i32, ptr %176, align 4, !tbaa !55
  %334 = load i32, ptr %287, align 4, !tbaa !56
  %335 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %171, i32 noundef %333, i32 noundef %334)
  br label %336

336:                                              ; preds = %331, %332
  %337 = phi i8 [ %292, %331 ], [ 1, %332 ]
  %338 = load i32, ptr %287, align 4, !tbaa !56
  %339 = getelementptr inbounds %struct.MFace, ptr %176, i64 0, i32 2
  %340 = load i32, ptr %339, align 4, !tbaa !57
  %341 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %338, i32 noundef %340) #12
  %342 = icmp ne i8 %341, 0
  %343 = or i1 %17, %342
  %344 = select i1 %342, i8 %337, i8 1
  br i1 %343, label %349, label %345

345:                                              ; preds = %336
  %346 = load i32, ptr %287, align 4, !tbaa !56
  %347 = load i32, ptr %339, align 4, !tbaa !57
  %348 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %171, i32 noundef %346, i32 noundef %347)
  br label %349

349:                                              ; preds = %336, %345
  %350 = phi i8 [ %344, %336 ], [ 1, %345 ]
  %351 = load i32, ptr %339, align 4, !tbaa !57
  %352 = load i32, ptr %176, align 4, !tbaa !55
  %353 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %351, i32 noundef %352) #12
  %354 = icmp ne i8 %353, 0
  %355 = or i1 %17, %354
  %356 = select i1 %354, i8 %350, i8 1
  br i1 %355, label %363, label %357

357:                                              ; preds = %349, %323
  %358 = phi ptr [ %177, %323 ], [ %339, %349 ]
  %359 = phi ptr [ @.str.20, %323 ], [ @.str.21, %349 ]
  %360 = load i32, ptr %358, align 4, !tbaa !53
  %361 = load i32, ptr %176, align 4, !tbaa !55
  %362 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %359, i32 noundef %171, i32 noundef %360, i32 noundef %361)
  br label %363

363:                                              ; preds = %357, %349, %323, %282
  %364 = phi i8 [ %330, %323 ], [ %356, %349 ], [ %175, %282 ], [ 1, %357 ]
  %365 = getelementptr inbounds %struct.SortFace, ptr %174, i64 0, i32 1
  store i32 %171, ptr %365, align 8, !tbaa !58
  %366 = load i32, ptr %177, align 4, !tbaa !51
  %367 = icmp eq i32 %366, 0
  %368 = load i32, ptr %176, align 4, !tbaa !55
  %369 = getelementptr inbounds %struct.MFace, ptr %176, i64 0, i32 1
  %370 = load i32, ptr %369, align 4, !tbaa !56
  %371 = getelementptr inbounds i32, ptr %174, i64 1
  %372 = tail call i32 @llvm.umin.i32(i32 %368, i32 %370)
  %373 = tail call i32 @llvm.umax.i32(i32 %368, i32 %370)
  store i32 %372, ptr %174, align 4, !tbaa !53
  store i32 %373, ptr %371, align 4, !tbaa !53
  %374 = getelementptr inbounds %union.EdgeUUID, ptr %174, i64 1
  %375 = load i32, ptr %369, align 4, !tbaa !56
  %376 = getelementptr inbounds %struct.MFace, ptr %176, i64 0, i32 2
  %377 = load i32, ptr %376, align 4, !tbaa !57
  %378 = tail call i32 @llvm.umin.i32(i32 %375, i32 %377)
  %379 = tail call i32 @llvm.umax.i32(i32 %375, i32 %377)
  store i32 %378, ptr %374, align 4, !tbaa !53
  %380 = getelementptr inbounds i8, ptr %174, i64 12
  store i32 %379, ptr %380, align 4, !tbaa !53
  %381 = getelementptr inbounds %union.EdgeUUID, ptr %174, i64 2
  %382 = load i32, ptr %376, align 4, !tbaa !57
  %383 = getelementptr inbounds i8, ptr %174, i64 20
  %384 = getelementptr inbounds %union.EdgeUUID, ptr %174, i64 3
  br i1 %367, label %394, label %385

385:                                              ; preds = %363
  %386 = load i32, ptr %177, align 4, !tbaa !51
  %387 = tail call i32 @llvm.umin.i32(i32 %382, i32 %386)
  %388 = tail call i32 @llvm.umax.i32(i32 %382, i32 %386)
  store i32 %387, ptr %381, align 4, !tbaa !53
  store i32 %388, ptr %383, align 4, !tbaa !53
  %389 = load i32, ptr %177, align 4, !tbaa !51
  %390 = load i32, ptr %176, align 4, !tbaa !55
  %391 = tail call i32 @llvm.umin.i32(i32 %389, i32 %390)
  %392 = tail call i32 @llvm.umax.i32(i32 %389, i32 %390)
  store i32 %391, ptr %384, align 4, !tbaa !53
  %393 = getelementptr inbounds i8, ptr %174, i64 28
  store i32 %392, ptr %393, align 4, !tbaa !53
  br label %399

394:                                              ; preds = %363
  %395 = load i32, ptr %176, align 4, !tbaa !55
  %396 = tail call i32 @llvm.umin.i32(i32 %382, i32 %395)
  %397 = tail call i32 @llvm.umax.i32(i32 %382, i32 %395)
  store i32 %396, ptr %381, align 4, !tbaa !53
  store i32 %397, ptr %383, align 4, !tbaa !53
  %398 = getelementptr inbounds i8, ptr %174, i64 28
  store i32 -1, ptr %398, align 4, !tbaa !60
  store i32 -1, ptr %384, align 8, !tbaa !60
  br label %399

399:                                              ; preds = %394, %385
  %400 = phi i64 [ 3, %394 ], [ 4, %385 ]
  tail call void @qsort(ptr noundef nonnull %174, i64 noundef %400, i64 noundef 8, ptr noundef nonnull @int64_cmp) #12
  %401 = add i32 %173, 1
  %402 = getelementptr inbounds %struct.SortFace, ptr %174, i64 1
  br label %403

403:                                              ; preds = %279, %399, %197
  %404 = phi i8 [ %364, %399 ], [ %175, %279 ], [ %175, %197 ]
  %405 = phi ptr [ %402, %399 ], [ %174, %279 ], [ %174, %197 ]
  %406 = phi i32 [ %401, %399 ], [ %173, %279 ], [ %173, %197 ]
  %407 = phi i8 [ %280, %399 ], [ %280, %279 ], [ %194, %197 ]
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %411, label %409

409:                                              ; preds = %403
  %410 = getelementptr inbounds %struct.MFace, ptr %176, i64 0, i32 2
  store i32 0, ptr %410, align 4, !tbaa !57
  br label %411

411:                                              ; preds = %409, %403
  %412 = phi i8 [ 1, %409 ], [ %172, %403 ]
  %413 = add nuw i32 %171, 1
  %414 = getelementptr inbounds %struct.MFace, ptr %176, i64 1
  %415 = icmp eq i32 %413, %6
  br i1 %415, label %416, label %170, !llvm.loop !61

416:                                              ; preds = %411, %168
  %417 = phi ptr [ %5, %168 ], [ %414, %411 ]
  %418 = phi i8 [ %30, %168 ], [ %404, %411 ]
  %419 = phi i32 [ 0, %168 ], [ %406, %411 ]
  %420 = phi i8 [ 0, %168 ], [ %412, %411 ]
  %421 = zext i32 %419 to i64
  tail call void @qsort(ptr noundef %165, i64 noundef %421, i64 noundef 40, ptr noundef nonnull @search_face_cmp) #12
  %422 = icmp ugt i32 %419, 1
  br i1 %422, label %423, label %472

423:                                              ; preds = %416, %468
  %424 = phi i32 [ %470, %468 ], [ 1, %416 ]
  %425 = phi i8 [ %469, %468 ], [ %420, %416 ]
  %426 = phi ptr [ %463, %468 ], [ %165, %416 ]
  %427 = phi ptr [ %429, %468 ], [ %165, %416 ]
  %428 = phi ptr [ %462, %468 ], [ %417, %416 ]
  %429 = getelementptr inbounds %struct.SortFace, ptr %427, i64 1
  %430 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %429, ptr noundef nonnull dereferenceable(32) %426, i64 32)
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %461

432:                                              ; preds = %423
  %433 = getelementptr inbounds %struct.SortFace, ptr %427, i64 1, i32 1
  %434 = load i32, ptr %433, align 8, !tbaa !58
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds %struct.MFace, ptr %5, i64 %435
  br i1 %17, label %461, label %437

437:                                              ; preds = %432
  %438 = getelementptr inbounds %struct.SortFace, ptr %426, i64 0, i32 1
  %439 = load i32, ptr %438, align 8, !tbaa !58
  %440 = zext i32 %439 to i64
  %441 = getelementptr inbounds %struct.MFace, ptr %5, i64 %440
  %442 = getelementptr inbounds %struct.MFace, ptr %5, i64 %435, i32 3
  %443 = load i32, ptr %442, align 4, !tbaa !51
  %444 = icmp eq i32 %443, 0
  %445 = load i32, ptr %436, align 4, !tbaa !55
  %446 = getelementptr inbounds %struct.MFace, ptr %5, i64 %435, i32 1
  %447 = load i32, ptr %446, align 4, !tbaa !56
  %448 = getelementptr inbounds %struct.MFace, ptr %5, i64 %435, i32 2
  %449 = load i32, ptr %448, align 4, !tbaa !57
  %450 = load i32, ptr %441, align 4, !tbaa !55
  %451 = getelementptr inbounds %struct.MFace, ptr %5, i64 %440, i32 1
  %452 = load i32, ptr %451, align 4, !tbaa !56
  %453 = getelementptr inbounds %struct.MFace, ptr %5, i64 %440, i32 2
  %454 = load i32, ptr %453, align 4, !tbaa !57
  br i1 %444, label %459, label %455

455:                                              ; preds = %437
  %456 = getelementptr inbounds %struct.MFace, ptr %5, i64 %440, i32 3
  %457 = load i32, ptr %456, align 4, !tbaa !51
  %458 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %434, i32 noundef %439, i32 noundef %445, i32 noundef %447, i32 noundef %449, i32 noundef %443, i32 noundef %450, i32 noundef %452, i32 noundef %454, i32 noundef %457)
  br label %461

459:                                              ; preds = %437
  %460 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %434, i32 noundef %439, i32 noundef %445, i32 noundef %447, i32 noundef %449, i32 noundef %450, i32 noundef %452, i32 noundef %454)
  br label %461

461:                                              ; preds = %423, %432, %459, %455
  %462 = phi ptr [ %436, %455 ], [ %436, %459 ], [ %436, %432 ], [ %428, %423 ]
  %463 = phi ptr [ %426, %455 ], [ %426, %459 ], [ %426, %432 ], [ %429, %423 ]
  %464 = phi i8 [ %13, %455 ], [ %13, %459 ], [ %13, %432 ], [ 0, %423 ]
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %468, label %466

466:                                              ; preds = %461
  %467 = getelementptr inbounds %struct.MFace, ptr %462, i64 0, i32 2
  store i32 0, ptr %467, align 4, !tbaa !57
  br label %468

468:                                              ; preds = %466, %461
  %469 = phi i8 [ 1, %466 ], [ %425, %461 ]
  %470 = add nuw i32 %424, 1
  %471 = icmp eq i32 %470, %419
  br i1 %471, label %472, label %423, !llvm.loop !62

472:                                              ; preds = %468, %416
  %473 = phi i8 [ %420, %416 ], [ %469, %468 ]
  %474 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %474(ptr noundef %165) #12
  br label %475

475:                                              ; preds = %472, %155
  %476 = phi i8 [ %30, %155 ], [ %418, %472 ]
  %477 = phi i8 [ 0, %155 ], [ %473, %472 ]
  %478 = phi i8 [ %157, %155 ], [ 0, %472 ]
  %479 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %480 = zext i32 %10 to i64
  %481 = mul nuw nsw i64 %480, 24
  %482 = tail call ptr %479(i64 noundef %481, ptr noundef nonnull @.str.24) #12
  %483 = icmp eq i32 %10, 0
  br i1 %483, label %742, label %484

484:                                              ; preds = %475
  %485 = icmp eq i8 %13, 0
  %486 = icmp eq i8 %13, 0
  %487 = icmp eq i8 %13, 0
  %488 = add i32 %8, -1
  br label %489

489:                                              ; preds = %484, %735
  %490 = phi ptr [ %9, %484 ], [ %739, %735 ]
  %491 = phi i32 [ 0, %484 ], [ %738, %735 ]
  %492 = phi i8 [ %478, %484 ], [ %737, %735 ]
  %493 = phi ptr [ %482, %484 ], [ %740, %735 ]
  %494 = phi i8 [ %476, %484 ], [ %736, %735 ]
  %495 = getelementptr inbounds %struct.SortPoly, ptr %493, i64 0, i32 3
  store i32 %491, ptr %495, align 8, !tbaa !63
  %496 = load i32, ptr %490, align 4, !tbaa !65
  %497 = icmp slt i32 %496, 0
  br i1 %497, label %502, label %498

498:                                              ; preds = %489
  %499 = getelementptr inbounds %struct.MPoly, ptr %490, i64 0, i32 1
  %500 = load i32, ptr %499, align 4, !tbaa !67
  %501 = icmp slt i32 %500, 3
  br i1 %501, label %502, label %509

502:                                              ; preds = %498, %489
  br i1 %17, label %507, label %503

503:                                              ; preds = %502
  %504 = getelementptr inbounds %struct.MPoly, ptr %490, i64 0, i32 1
  %505 = load i32, ptr %504, align 4, !tbaa !67
  %506 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %491, i32 noundef %496, i32 noundef %505)
  br label %507

507:                                              ; preds = %502, %503
  %508 = getelementptr inbounds %struct.SortPoly, ptr %493, i64 0, i32 4
  br label %732

509:                                              ; preds = %498
  %510 = add nuw nsw i32 %500, %496
  %511 = icmp ugt i32 %510, %8
  br i1 %511, label %512, label %518

512:                                              ; preds = %509
  br i1 %17, label %516, label %513

513:                                              ; preds = %512
  %514 = add nsw i32 %510, -1
  %515 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %491, i32 noundef %496, i32 noundef %514, i32 noundef %488)
  br label %516

516:                                              ; preds = %512, %513
  %517 = getelementptr inbounds %struct.SortPoly, ptr %493, i64 0, i32 4
  br label %732

518:                                              ; preds = %509
  %519 = getelementptr inbounds %struct.SortPoly, ptr %493, i64 0, i32 4
  store i8 0, ptr %519, align 4, !tbaa !68
  %520 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %521 = zext nneg i32 %500 to i64
  %522 = shl nuw nsw i64 %521, 2
  %523 = tail call ptr %520(i64 noundef %522, ptr noundef nonnull @.str.27) #12
  store ptr %523, ptr %493, align 8, !tbaa !69
  %524 = load i32, ptr %499, align 4, !tbaa !67
  %525 = getelementptr inbounds %struct.SortPoly, ptr %493, i64 0, i32 1
  store i32 %524, ptr %525, align 8, !tbaa !70
  %526 = load i32, ptr %490, align 4, !tbaa !65
  %527 = getelementptr inbounds %struct.SortPoly, ptr %493, i64 0, i32 2
  store i32 %526, ptr %527, align 4, !tbaa !71
  %528 = icmp eq i32 %524, 0
  br i1 %528, label %558, label %529

529:                                              ; preds = %518
  %530 = sext i32 %526 to i64
  %531 = getelementptr inbounds %struct.MLoop, ptr %7, i64 %530
  br label %532

532:                                              ; preds = %529, %550
  %533 = phi ptr [ %554, %550 ], [ %531, %529 ]
  %534 = phi i32 [ %553, %550 ], [ 0, %529 ]
  %535 = phi ptr [ %555, %550 ], [ %523, %529 ]
  %536 = phi i8 [ %551, %550 ], [ %492, %529 ]
  %537 = load i32, ptr %533, align 4, !tbaa !72
  %538 = icmp ult i32 %537, %2
  br i1 %538, label %545, label %539

539:                                              ; preds = %532
  br i1 %17, label %544, label %540

540:                                              ; preds = %539
  %541 = load i32, ptr %527, align 4, !tbaa !71
  %542 = add i32 %541, %534
  %543 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %542, i32 noundef %537)
  br label %544

544:                                              ; preds = %539, %540
  store i8 1, ptr %519, align 4, !tbaa !68
  br label %550

545:                                              ; preds = %532
  %546 = zext i32 %537 to i64
  %547 = getelementptr inbounds %struct.MVert, ptr %1, i64 %546, i32 2
  %548 = load i8, ptr %547, align 2, !tbaa !74
  %549 = or i8 %548, 4
  store i8 %549, ptr %547, align 2, !tbaa !74
  br label %550

550:                                              ; preds = %545, %544
  %551 = phi i8 [ 0, %544 ], [ %536, %545 ]
  %552 = load i32, ptr %533, align 4, !tbaa !72
  store i32 %552, ptr %535, align 4, !tbaa !53
  %553 = add nuw i32 %534, 1
  %554 = getelementptr inbounds %struct.MLoop, ptr %533, i64 1
  %555 = getelementptr inbounds i32, ptr %535, i64 1
  %556 = load i32, ptr %499, align 4, !tbaa !67
  %557 = icmp ult i32 %553, %556
  br i1 %557, label %532, label %558, !llvm.loop !76

558:                                              ; preds = %550, %518
  %559 = phi i8 [ %492, %518 ], [ %551, %550 ]
  %560 = load i8, ptr %519, align 4, !tbaa !68
  %561 = icmp eq i8 %560, 0
  br i1 %561, label %562, label %592

562:                                              ; preds = %558
  %563 = load i32, ptr %499, align 4, !tbaa !67
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %592, label %565

565:                                              ; preds = %562
  %566 = load ptr, ptr %493, align 8, !tbaa !69
  br label %567

567:                                              ; preds = %565, %581
  %568 = phi i32 [ %588, %581 ], [ 0, %565 ]
  %569 = phi ptr [ %589, %581 ], [ %566, %565 ]
  %570 = phi i8 [ %582, %581 ], [ %559, %565 ]
  %571 = load i32, ptr %569, align 4, !tbaa !53
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.MVert, ptr %1, i64 %572, i32 2
  %574 = load i8, ptr %573, align 2, !tbaa !74
  %575 = and i8 %574, 4
  %576 = icmp eq i8 %575, 0
  br i1 %576, label %577, label %581

577:                                              ; preds = %567
  br i1 %17, label %580, label %578

578:                                              ; preds = %577
  %579 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %491, i32 noundef %568)
  br label %580

580:                                              ; preds = %577, %578
  store i8 1, ptr %519, align 4, !tbaa !68
  br label %581

581:                                              ; preds = %580, %567
  %582 = phi i8 [ 0, %580 ], [ %570, %567 ]
  %583 = load i32, ptr %569, align 4, !tbaa !53
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.MVert, ptr %1, i64 %584, i32 2
  %586 = load i8, ptr %585, align 2, !tbaa !74
  %587 = and i8 %586, -5
  store i8 %587, ptr %585, align 2, !tbaa !74
  %588 = add nuw i32 %568, 1
  %589 = getelementptr inbounds i32, ptr %569, i64 1
  %590 = load i32, ptr %499, align 4, !tbaa !67
  %591 = icmp ult i32 %588, %590
  br i1 %591, label %567, label %592, !llvm.loop !77

592:                                              ; preds = %581, %562, %558
  %593 = phi i8 [ %559, %558 ], [ %559, %562 ], [ %582, %581 ]
  %594 = load i8, ptr %519, align 4, !tbaa !68
  %595 = icmp eq i8 %594, 0
  br i1 %595, label %596, label %735

596:                                              ; preds = %592
  %597 = load i32, ptr %499, align 4, !tbaa !67
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %679, label %599

599:                                              ; preds = %596
  %600 = load i32, ptr %527, align 4, !tbaa !71
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.MLoop, ptr %7, i64 %601
  br label %603

603:                                              ; preds = %599, %673
  %604 = phi i32 [ %677, %673 ], [ %597, %599 ]
  %605 = phi ptr [ %676, %673 ], [ %602, %599 ]
  %606 = phi i32 [ %611, %673 ], [ 0, %599 ]
  %607 = phi i8 [ %675, %673 ], [ %593, %599 ]
  %608 = phi i8 [ %674, %673 ], [ %494, %599 ]
  %609 = load i32, ptr %605, align 4, !tbaa !72
  %610 = load i32, ptr %527, align 4, !tbaa !71
  %611 = add nuw i32 %606, 1
  %612 = icmp eq i32 %611, %604
  %613 = select i1 %612, i32 0, i32 %611
  %614 = add i32 %610, %613
  %615 = zext i32 %614 to i64
  %616 = getelementptr inbounds %struct.MLoop, ptr %7, i64 %615
  %617 = load i32, ptr %616, align 4, !tbaa !72
  %618 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %609, i32 noundef %617) #12
  %619 = icmp eq i8 %618, 0
  br i1 %619, label %620, label %626

620:                                              ; preds = %603
  br i1 %17, label %624, label %621

621:                                              ; preds = %620
  %622 = load i32, ptr %495, align 8, !tbaa !63
  %623 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %622, i32 noundef %609, i32 noundef %617)
  br label %624

624:                                              ; preds = %620, %621
  br i1 %487, label %625, label %673

625:                                              ; preds = %624
  store i8 1, ptr %519, align 4, !tbaa !68
  br label %673

626:                                              ; preds = %603
  %627 = getelementptr inbounds %struct.MLoop, ptr %605, i64 0, i32 1
  %628 = load i32, ptr %627, align 4, !tbaa !78
  %629 = icmp ult i32 %628, %4
  br i1 %629, label %645, label %630

630:                                              ; preds = %626
  br i1 %485, label %639, label %631

631:                                              ; preds = %630
  %632 = tail call ptr @BLI_edgehash_lookup(ptr noundef %16, i32 noundef %609, i32 noundef %617) #12
  %633 = ptrtoint ptr %632 to i64
  %634 = trunc i64 %633 to i32
  store i32 %634, ptr %627, align 4, !tbaa !78
  br i1 %17, label %673, label %635

635:                                              ; preds = %631
  %636 = load i32, ptr %527, align 4, !tbaa !71
  %637 = add i32 %636, %606
  %638 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %637, i32 noundef %628, i32 noundef %634)
  br label %673

639:                                              ; preds = %630
  br i1 %17, label %644, label %640

640:                                              ; preds = %639
  %641 = load i32, ptr %527, align 4, !tbaa !71
  %642 = add i32 %641, %606
  %643 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %642, i32 noundef %628)
  br label %644

644:                                              ; preds = %639, %640
  store i8 1, ptr %519, align 4, !tbaa !68
  br label %673

645:                                              ; preds = %626
  %646 = zext i32 %628 to i64
  %647 = getelementptr inbounds %struct.MEdge, ptr %3, i64 %646
  %648 = getelementptr inbounds %struct.MEdge, ptr %3, i64 %646, i32 1
  %649 = load i32, ptr %648, align 4, !tbaa !47
  %650 = load i32, ptr %647, align 4, !tbaa !44
  %651 = icmp eq i32 %649, %650
  br i1 %651, label %660, label %652

652:                                              ; preds = %645
  %653 = icmp eq i32 %650, %609
  %654 = icmp eq i32 %649, %617
  %655 = and i1 %654, %653
  br i1 %655, label %673, label %656

656:                                              ; preds = %652
  %657 = icmp eq i32 %650, %617
  %658 = icmp eq i32 %649, %609
  %659 = and i1 %658, %657
  br i1 %659, label %673, label %660

660:                                              ; preds = %656, %645
  br i1 %486, label %668, label %661

661:                                              ; preds = %660
  %662 = tail call ptr @BLI_edgehash_lookup(ptr noundef %16, i32 noundef %609, i32 noundef %617) #12
  %663 = ptrtoint ptr %662 to i64
  %664 = trunc i64 %663 to i32
  store i32 %664, ptr %627, align 4, !tbaa !78
  br i1 %17, label %673, label %665

665:                                              ; preds = %661
  %666 = load i32, ptr %495, align 8, !tbaa !63
  %667 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %666, i32 noundef %628, i32 noundef %664)
  br label %673

668:                                              ; preds = %660
  br i1 %17, label %672, label %669

669:                                              ; preds = %668
  %670 = load i32, ptr %495, align 8, !tbaa !63
  %671 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %670, i32 noundef %628)
  br label %672

672:                                              ; preds = %668, %669
  store i8 1, ptr %519, align 4, !tbaa !68
  br label %673

673:                                              ; preds = %656, %665, %661, %652, %635, %631, %624, %625, %672, %644
  %674 = phi i8 [ %608, %644 ], [ %608, %672 ], [ %608, %625 ], [ 1, %624 ], [ %608, %631 ], [ %608, %635 ], [ %608, %652 ], [ %608, %661 ], [ %608, %665 ], [ %608, %656 ]
  %675 = phi i8 [ 0, %644 ], [ 0, %672 ], [ 0, %625 ], [ 0, %624 ], [ 0, %631 ], [ 0, %635 ], [ %607, %652 ], [ 0, %661 ], [ 0, %665 ], [ %607, %656 ]
  %676 = getelementptr inbounds %struct.MLoop, ptr %605, i64 1
  %677 = load i32, ptr %499, align 4, !tbaa !67
  %678 = icmp ult i32 %611, %677
  br i1 %678, label %603, label %679, !llvm.loop !79

679:                                              ; preds = %673, %596
  %680 = phi i8 [ %494, %596 ], [ %674, %673 ]
  %681 = phi i8 [ %593, %596 ], [ %675, %673 ]
  %682 = load i8, ptr %519, align 4, !tbaa !68
  %683 = icmp eq i8 %682, 0
  br i1 %683, label %684, label %735

684:                                              ; preds = %679
  %685 = load ptr, ptr %493, align 8, !tbaa !69
  %686 = load i32, ptr %525, align 8, !tbaa !70
  %687 = zext i32 %686 to i64
  tail call void @qsort(ptr noundef %685, i64 noundef %687, i64 noundef 4, ptr noundef nonnull @int_cmp) #12
  %688 = getelementptr inbounds i32, ptr %685, i64 1
  %689 = add i32 %686, -1
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %717, label %691

691:                                              ; preds = %684, %711
  %692 = phi i32 [ %715, %711 ], [ %689, %684 ]
  %693 = phi ptr [ %714, %711 ], [ %688, %684 ]
  %694 = phi ptr [ %713, %711 ], [ %685, %684 ]
  %695 = phi i8 [ %712, %711 ], [ %681, %684 ]
  %696 = load i32, ptr %693, align 4, !tbaa !53
  %697 = load i32, ptr %694, align 4, !tbaa !53
  %698 = icmp eq i32 %696, %697
  br i1 %698, label %711, label %699

699:                                              ; preds = %691
  %700 = ptrtoint ptr %693 to i64
  %701 = ptrtoint ptr %694 to i64
  %702 = sub i64 %700, %701
  %703 = lshr exact i64 %702, 2
  %704 = trunc i64 %703 to i32
  %705 = icmp sgt i32 %704, 1
  br i1 %705, label %706, label %711

706:                                              ; preds = %699
  br i1 %17, label %710, label %707

707:                                              ; preds = %706
  %708 = load i32, ptr %495, align 8, !tbaa !63
  %709 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %708, i32 noundef %697, i32 noundef %704)
  br label %710

710:                                              ; preds = %706, %707
  store i8 1, ptr %519, align 4, !tbaa !68
  br label %711

711:                                              ; preds = %699, %710, %691
  %712 = phi i8 [ %695, %691 ], [ 0, %710 ], [ %695, %699 ]
  %713 = phi ptr [ %694, %691 ], [ %693, %710 ], [ %693, %699 ]
  %714 = getelementptr inbounds i32, ptr %693, i64 1
  %715 = add i32 %692, -1
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %717, label %691, !llvm.loop !80

717:                                              ; preds = %711, %684
  %718 = phi i8 [ %681, %684 ], [ %712, %711 ]
  %719 = phi ptr [ %685, %684 ], [ %713, %711 ]
  %720 = phi ptr [ %688, %684 ], [ %714, %711 ]
  %721 = ptrtoint ptr %720 to i64
  %722 = ptrtoint ptr %719 to i64
  %723 = sub i64 %721, %722
  %724 = ashr exact i64 %723, 2
  %725 = icmp sgt i64 %724, 1
  br i1 %725, label %726, label %735

726:                                              ; preds = %717
  br i1 %17, label %732, label %727

727:                                              ; preds = %726
  %728 = load i32, ptr %495, align 8, !tbaa !63
  %729 = load i32, ptr %719, align 4, !tbaa !53
  %730 = trunc i64 %724 to i32
  %731 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %728, i32 noundef %729, i32 noundef %730)
  br label %732

732:                                              ; preds = %727, %726, %516, %507
  %733 = phi ptr [ %508, %507 ], [ %517, %516 ], [ %519, %726 ], [ %519, %727 ]
  %734 = phi i8 [ %494, %507 ], [ %494, %516 ], [ %680, %726 ], [ %680, %727 ]
  store i8 1, ptr %733, align 4, !tbaa !68
  br label %735

735:                                              ; preds = %732, %592, %717, %679
  %736 = phi i8 [ %494, %592 ], [ %680, %717 ], [ %680, %679 ], [ %734, %732 ]
  %737 = phi i8 [ %593, %592 ], [ %718, %717 ], [ %681, %679 ], [ 0, %732 ]
  %738 = add nuw i32 %491, 1
  %739 = getelementptr inbounds %struct.MPoly, ptr %490, i64 1
  %740 = getelementptr inbounds %struct.SortPoly, ptr %493, i64 1
  %741 = icmp eq i32 %738, %10
  br i1 %741, label %742, label %489, !llvm.loop !81

742:                                              ; preds = %735, %475
  %743 = phi i8 [ %476, %475 ], [ %736, %735 ]
  %744 = phi i8 [ %478, %475 ], [ %737, %735 ]
  tail call void @qsort(ptr noundef %482, i64 noundef %480, i64 noundef 24, ptr noundef nonnull @search_poly_cmp) #12
  %745 = icmp ugt i32 %10, 1
  br i1 %745, label %746, label %796

746:                                              ; preds = %742, %790
  %747 = phi i32 [ %793, %790 ], [ 1, %742 ]
  %748 = phi i8 [ %792, %790 ], [ %744, %742 ]
  %749 = phi ptr [ %751, %790 ], [ %482, %742 ]
  %750 = phi ptr [ %791, %790 ], [ %482, %742 ]
  %751 = getelementptr inbounds %struct.SortPoly, ptr %749, i64 1
  %752 = getelementptr inbounds %struct.SortPoly, ptr %749, i64 1, i32 1
  %753 = load i32, ptr %752, align 8, !tbaa !70
  %754 = load ptr, ptr %751, align 8, !tbaa !69
  %755 = load ptr, ptr %750, align 8, !tbaa !69
  %756 = getelementptr inbounds %struct.SortPoly, ptr %749, i64 1, i32 4
  %757 = load i8, ptr %756, align 4, !tbaa !68
  %758 = icmp ne i8 %757, 0
  br i1 %758, label %790, label %759

759:                                              ; preds = %746
  %760 = getelementptr inbounds %struct.SortPoly, ptr %750, i64 0, i32 1
  %761 = load i32, ptr %760, align 8, !tbaa !70
  %762 = icmp eq i32 %753, %761
  br i1 %762, label %763, label %790

763:                                              ; preds = %759
  %764 = sext i32 %753 to i64
  %765 = shl nsw i64 %764, 2
  %766 = tail call i32 @bcmp(ptr %754, ptr %755, i64 %765)
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %790

768:                                              ; preds = %763
  br i1 %17, label %789, label %769

769:                                              ; preds = %768
  %770 = getelementptr inbounds %struct.SortPoly, ptr %750, i64 0, i32 3
  %771 = load i32, ptr %770, align 8, !tbaa !63
  %772 = getelementptr inbounds %struct.SortPoly, ptr %749, i64 1, i32 3
  %773 = load i32, ptr %772, align 8, !tbaa !63
  %774 = load i32, ptr %754, align 4, !tbaa !53
  %775 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %771, i32 noundef %773, i32 noundef %774)
  %776 = icmp ugt i32 %753, 1
  br i1 %776, label %777, label %786

777:                                              ; preds = %769
  %778 = zext i32 %753 to i64
  br label %779

779:                                              ; preds = %777, %779
  %780 = phi i64 [ 1, %777 ], [ %784, %779 ]
  %781 = getelementptr inbounds i32, ptr %754, i64 %780
  %782 = load i32, ptr %781, align 4, !tbaa !53
  %783 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %782)
  %784 = add nuw nsw i64 %780, 1
  %785 = icmp eq i64 %784, %778
  br i1 %785, label %786, label %779, !llvm.loop !82

786:                                              ; preds = %779, %769
  %787 = load i32, ptr %772, align 8, !tbaa !63
  %788 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %787)
  br label %789

789:                                              ; preds = %768, %786
  store i8 1, ptr %756, align 4, !tbaa !68
  br label %790

790:                                              ; preds = %789, %763, %759, %746
  %791 = phi ptr [ %750, %746 ], [ %750, %789 ], [ %751, %763 ], [ %751, %759 ]
  %792 = phi i8 [ %748, %746 ], [ 0, %789 ], [ %748, %763 ], [ %748, %759 ]
  %793 = add nuw i32 %747, 1
  %794 = icmp eq i32 %793, %10
  %795 = select i1 %758, i1 true, i1 %794
  br i1 %795, label %796, label %746, !llvm.loop !83

796:                                              ; preds = %790, %742
  %797 = phi i8 [ %744, %742 ], [ %792, %790 ]
  tail call void @qsort(ptr noundef %482, i64 noundef %480, i64 noundef 24, ptr noundef nonnull @search_polyloop_cmp) #12
  %798 = icmp eq i32 %10, 0
  br i1 %798, label %887, label %799

799:                                              ; preds = %796
  %800 = icmp eq i8 %13, 0
  %801 = icmp eq i8 %13, 0
  %802 = icmp eq i8 %13, 0
  br label %803

803:                                              ; preds = %799, %879
  %804 = phi i32 [ 0, %799 ], [ %884, %879 ]
  %805 = phi i8 [ %797, %799 ], [ %883, %879 ]
  %806 = phi i8 [ 0, %799 ], [ %882, %879 ]
  %807 = phi i32 [ 0, %799 ], [ %881, %879 ]
  %808 = phi ptr [ %482, %799 ], [ %885, %879 ]
  %809 = phi ptr [ null, %799 ], [ %880, %879 ]
  %810 = load ptr, ptr %808, align 8, !tbaa !69
  %811 = icmp eq ptr %810, null
  br i1 %811, label %814, label %812

812:                                              ; preds = %803
  %813 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %813(ptr noundef nonnull %810) #12
  br label %814

814:                                              ; preds = %812, %803
  %815 = getelementptr inbounds %struct.SortPoly, ptr %808, i64 0, i32 4
  %816 = load i8, ptr %815, align 4, !tbaa !68
  %817 = icmp eq i8 %816, 0
  br i1 %817, label %826, label %818

818:                                              ; preds = %814
  br i1 %800, label %879, label %819

819:                                              ; preds = %818
  %820 = getelementptr inbounds %struct.SortPoly, ptr %808, i64 0, i32 3
  %821 = load i32, ptr %820, align 8, !tbaa !63
  %822 = zext i32 %821 to i64
  %823 = getelementptr inbounds %struct.MPoly, ptr %9, i64 %822, i32 1
  %824 = load i32, ptr %823, align 4, !tbaa !67
  %825 = sub nsw i32 0, %824
  store i32 %825, ptr %823, align 4, !tbaa !67
  br label %879

826:                                              ; preds = %814
  %827 = getelementptr inbounds %struct.SortPoly, ptr %808, i64 0, i32 2
  %828 = load i32, ptr %827, align 4, !tbaa !71
  %829 = icmp slt i32 %807, %828
  br i1 %829, label %830, label %858

830:                                              ; preds = %826
  %831 = load i32, ptr %827, align 4, !tbaa !71
  %832 = icmp ult i32 %807, %831
  br i1 %832, label %833, label %851

833:                                              ; preds = %830
  %834 = sext i32 %807 to i64
  %835 = getelementptr inbounds %struct.MLoop, ptr %7, i64 %834
  br label %836

836:                                              ; preds = %833, %845
  %837 = phi ptr [ %848, %845 ], [ %835, %833 ]
  %838 = phi i32 [ %847, %845 ], [ %807, %833 ]
  %839 = phi i8 [ %846, %845 ], [ %806, %833 ]
  br i1 %17, label %842, label %840

840:                                              ; preds = %836
  %841 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %838)
  br label %842

842:                                              ; preds = %836, %840
  br i1 %802, label %845, label %843

843:                                              ; preds = %842
  %844 = getelementptr inbounds %struct.MLoop, ptr %837, i64 0, i32 1
  store i32 -1, ptr %844, align 4, !tbaa !78
  br label %845

845:                                              ; preds = %842, %843
  %846 = phi i8 [ 1, %843 ], [ %839, %842 ]
  %847 = add nuw i32 %838, 1
  %848 = getelementptr inbounds %struct.MLoop, ptr %837, i64 1
  %849 = load i32, ptr %827, align 4, !tbaa !71
  %850 = icmp ult i32 %847, %849
  br i1 %850, label %836, label %851, !llvm.loop !84

851:                                              ; preds = %845, %830
  %852 = phi i8 [ %806, %830 ], [ %846, %845 ]
  %853 = phi i8 [ %805, %830 ], [ 0, %845 ]
  %854 = phi i32 [ %831, %830 ], [ %849, %845 ]
  %855 = getelementptr inbounds %struct.SortPoly, ptr %808, i64 0, i32 1
  %856 = load i32, ptr %855, align 8, !tbaa !70
  %857 = add nsw i32 %856, %854
  br label %879

858:                                              ; preds = %826
  %859 = icmp sgt i32 %807, %828
  br i1 %859, label %860, label %875

860:                                              ; preds = %858
  br i1 %17, label %867, label %861

861:                                              ; preds = %860
  %862 = getelementptr inbounds %struct.SortPoly, ptr %809, i64 0, i32 3
  %863 = load i32, ptr %862, align 8, !tbaa !63
  %864 = getelementptr inbounds %struct.SortPoly, ptr %808, i64 0, i32 3
  %865 = load i32, ptr %864, align 8, !tbaa !63
  %866 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %863, i32 noundef %865, i32 noundef %828, i32 noundef %807, i32 noundef %865)
  br label %867

867:                                              ; preds = %860, %861
  br i1 %801, label %879, label %868

868:                                              ; preds = %867
  %869 = getelementptr inbounds %struct.SortPoly, ptr %808, i64 0, i32 3
  %870 = load i32, ptr %869, align 8, !tbaa !63
  %871 = zext i32 %870 to i64
  %872 = getelementptr inbounds %struct.MPoly, ptr %9, i64 %871, i32 1
  %873 = load i32, ptr %872, align 4, !tbaa !67
  %874 = sub nsw i32 0, %873
  store i32 %874, ptr %872, align 4, !tbaa !67
  br label %879

875:                                              ; preds = %858
  %876 = getelementptr inbounds %struct.SortPoly, ptr %808, i64 0, i32 1
  %877 = load i32, ptr %876, align 8, !tbaa !70
  %878 = add nsw i32 %877, %828
  br label %879

879:                                              ; preds = %819, %818, %875, %868, %867, %851
  %880 = phi ptr [ %809, %819 ], [ %809, %818 ], [ %808, %851 ], [ %809, %868 ], [ %809, %867 ], [ %808, %875 ]
  %881 = phi i32 [ %807, %819 ], [ %807, %818 ], [ %857, %851 ], [ %807, %868 ], [ %807, %867 ], [ %878, %875 ]
  %882 = phi i8 [ 1, %819 ], [ %806, %818 ], [ %852, %851 ], [ 1, %868 ], [ %806, %867 ], [ %806, %875 ]
  %883 = phi i8 [ %805, %819 ], [ %805, %818 ], [ %853, %851 ], [ 0, %868 ], [ 0, %867 ], [ %805, %875 ]
  %884 = add nuw i32 %804, 1
  %885 = getelementptr inbounds %struct.SortPoly, ptr %808, i64 1
  %886 = icmp eq i32 %884, %10
  br i1 %886, label %887, label %803, !llvm.loop !85

887:                                              ; preds = %879, %796
  %888 = phi i32 [ 0, %796 ], [ %881, %879 ]
  %889 = phi i8 [ 0, %796 ], [ %882, %879 ]
  %890 = phi i8 [ %797, %796 ], [ %883, %879 ]
  %891 = icmp ult i32 %888, %8
  br i1 %891, label %892, label %910

892:                                              ; preds = %887
  %893 = sext i32 %888 to i64
  %894 = getelementptr inbounds %struct.MLoop, ptr %7, i64 %893
  %895 = icmp eq i8 %13, 0
  br label %896

896:                                              ; preds = %892, %905
  %897 = phi ptr [ %894, %892 ], [ %908, %905 ]
  %898 = phi i32 [ %888, %892 ], [ %907, %905 ]
  %899 = phi i8 [ %889, %892 ], [ %906, %905 ]
  br i1 %17, label %902, label %900

900:                                              ; preds = %896
  %901 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %898)
  br label %902

902:                                              ; preds = %896, %900
  br i1 %895, label %905, label %903

903:                                              ; preds = %902
  %904 = getelementptr inbounds %struct.MLoop, ptr %897, i64 0, i32 1
  store i32 -1, ptr %904, align 4, !tbaa !78
  br label %905

905:                                              ; preds = %902, %903
  %906 = phi i8 [ 1, %903 ], [ %899, %902 ]
  %907 = add nuw i32 %898, 1
  %908 = getelementptr inbounds %struct.MLoop, ptr %897, i64 1
  %909 = icmp eq i32 %907, %8
  br i1 %909, label %910, label %896, !llvm.loop !86

910:                                              ; preds = %905, %887
  %911 = phi i8 [ %889, %887 ], [ %906, %905 ]
  %912 = phi i8 [ %890, %887 ], [ 0, %905 ]
  %913 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %913(ptr noundef %482) #12
  tail call void @BLI_edgehash_free(ptr noundef %16, ptr noundef null) #12
  %914 = icmp ne ptr %11, null
  %915 = icmp ne i32 %2, 0
  %916 = and i1 %914, %915
  br i1 %916, label %917, label %996

917:                                              ; preds = %910
  %918 = icmp eq i8 %13, 0
  %919 = icmp eq i8 %13, 0
  %920 = icmp eq i8 %13, 0
  br label %921

921:                                              ; preds = %917, %988
  %922 = phi ptr [ %11, %917 ], [ %992, %988 ]
  %923 = phi i32 [ 0, %917 ], [ %991, %988 ]
  %924 = phi i8 [ %912, %917 ], [ %990, %988 ]
  %925 = phi i8 [ 0, %917 ], [ %989, %988 ]
  %926 = getelementptr inbounds %struct.MDeformVert, ptr %922, i64 0, i32 1
  %927 = load i32, ptr %926, align 8, !tbaa !87
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %988, label %929

929:                                              ; preds = %921
  %930 = load ptr, ptr %922, align 8, !tbaa !89
  br label %931

931:                                              ; preds = %929, %979
  %932 = phi ptr [ %985, %979 ], [ %930, %929 ]
  %933 = phi i32 [ %984, %979 ], [ 0, %929 ]
  %934 = phi i8 [ %981, %979 ], [ %924, %929 ]
  %935 = phi i8 [ %980, %979 ], [ %925, %929 ]
  %936 = getelementptr inbounds %struct.MDeformWeight, ptr %932, i64 0, i32 1
  %937 = load float, ptr %936, align 4, !tbaa !90
  %938 = tail call float @llvm.fabs.f32(float %937)
  %939 = fcmp ueq float %938, 0x7FF0000000000000
  br i1 %939, label %940, label %946

940:                                              ; preds = %931
  br i1 %17, label %945, label %941

941:                                              ; preds = %940
  %942 = load i32, ptr %932, align 4, !tbaa !92
  %943 = fpext float %937 to double
  %944 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %923, i32 noundef %942, double noundef %943)
  br label %945

945:                                              ; preds = %940, %941
  br i1 %919, label %963, label %961

946:                                              ; preds = %931
  %947 = fcmp olt float %937, 0.000000e+00
  %948 = fcmp ogt float %937, 1.000000e+00
  %949 = or i1 %947, %948
  br i1 %949, label %950, label %963

950:                                              ; preds = %946
  br i1 %17, label %955, label %951

951:                                              ; preds = %950
  %952 = load i32, ptr %932, align 4, !tbaa !92
  %953 = fpext float %937 to double
  %954 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %923, i32 noundef %952, double noundef %953)
  br label %955

955:                                              ; preds = %950, %951
  br i1 %918, label %963, label %956

956:                                              ; preds = %955
  %957 = load float, ptr %936, align 4, !tbaa !90
  %958 = fcmp olt float %957, 0.000000e+00
  br i1 %958, label %961, label %959

959:                                              ; preds = %956
  %960 = fcmp ogt float %957, 1.000000e+00
  br i1 %960, label %961, label %963

961:                                              ; preds = %959, %956, %945
  %962 = phi float [ 0.000000e+00, %945 ], [ 0.000000e+00, %956 ], [ 1.000000e+00, %959 ]
  store float %962, ptr %936, align 4, !tbaa !90
  br label %963

963:                                              ; preds = %961, %959, %946, %955, %945
  %964 = phi i8 [ %935, %955 ], [ %935, %945 ], [ %935, %946 ], [ 1, %959 ], [ 1, %961 ]
  %965 = phi i8 [ 0, %955 ], [ 0, %945 ], [ %934, %946 ], [ 0, %959 ], [ 0, %961 ]
  %966 = load i32, ptr %932, align 4, !tbaa !92
  %967 = icmp slt i32 %966, 0
  br i1 %967, label %968, label %979

968:                                              ; preds = %963
  br i1 %17, label %971, label %969

969:                                              ; preds = %968
  %970 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %923, i32 noundef %966)
  br label %971

971:                                              ; preds = %968, %969
  br i1 %920, label %979, label %972

972:                                              ; preds = %971
  tail call void @defvert_remove_group(ptr noundef nonnull %922, ptr noundef nonnull %932) #12
  %973 = load ptr, ptr %922, align 8, !tbaa !89
  %974 = icmp eq ptr %973, null
  br i1 %974, label %988, label %975

975:                                              ; preds = %972
  %976 = add i32 %933, -1
  %977 = zext i32 %976 to i64
  %978 = getelementptr inbounds %struct.MDeformWeight, ptr %973, i64 %977
  br label %979

979:                                              ; preds = %963, %975, %971
  %980 = phi i8 [ 1, %975 ], [ %964, %971 ], [ %964, %963 ]
  %981 = phi i8 [ 0, %975 ], [ 0, %971 ], [ %965, %963 ]
  %982 = phi i32 [ %976, %975 ], [ %933, %971 ], [ %933, %963 ]
  %983 = phi ptr [ %978, %975 ], [ %932, %971 ], [ %932, %963 ]
  %984 = add i32 %982, 1
  %985 = getelementptr inbounds %struct.MDeformWeight, ptr %983, i64 1
  %986 = load i32, ptr %926, align 8, !tbaa !87
  %987 = icmp ult i32 %984, %986
  br i1 %987, label %931, label %988, !llvm.loop !93

988:                                              ; preds = %979, %972, %921
  %989 = phi i8 [ %925, %921 ], [ %980, %979 ], [ %964, %972 ]
  %990 = phi i8 [ %924, %921 ], [ %981, %979 ], [ 0, %972 ]
  %991 = add nuw i32 %923, 1
  %992 = getelementptr inbounds %struct.MDeformVert, ptr %922, i64 1
  %993 = icmp eq i32 %991, %2
  br i1 %993, label %994, label %921, !llvm.loop !94

994:                                              ; preds = %988
  %995 = icmp ne i8 %989, 0
  br label %996

996:                                              ; preds = %994, %910
  %997 = phi i1 [ false, %910 ], [ %995, %994 ]
  %998 = phi i8 [ %912, %910 ], [ %990, %994 ]
  %999 = icmp eq ptr %0, null
  br i1 %999, label %1106, label %1000

1000:                                             ; preds = %996
  %1001 = icmp eq i8 %477, 0
  br i1 %1001, label %1038, label %1002

1002:                                             ; preds = %1000
  %1003 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %1004 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %1005 = load i32, ptr %1004, align 8, !tbaa !95
  %1006 = icmp sgt i32 %1005, 0
  br i1 %1006, label %1007, label %1031

1007:                                             ; preds = %1002
  %1008 = load ptr, ptr %1003, align 8, !tbaa !99
  %1009 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  br label %1010

1010:                                             ; preds = %1025, %1007
  %1011 = phi i32 [ 0, %1007 ], [ %1026, %1025 ]
  %1012 = phi i32 [ 0, %1007 ], [ %1027, %1025 ]
  %1013 = phi ptr [ %1008, %1007 ], [ %1028, %1025 ]
  %1014 = getelementptr inbounds %struct.MFace, ptr %1013, i64 0, i32 2
  %1015 = load i32, ptr %1014, align 4, !tbaa !57
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1025, label %1017

1017:                                             ; preds = %1010
  %1018 = icmp eq i32 %1012, %1011
  br i1 %1018, label %1023, label %1019

1019:                                             ; preds = %1017
  %1020 = load ptr, ptr %1003, align 8, !tbaa !99
  %1021 = sext i32 %1011 to i64
  %1022 = getelementptr inbounds %struct.MFace, ptr %1020, i64 %1021
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1022, ptr noundef nonnull align 4 dereferenceable(20) %1013, i64 20, i1 false)
  tail call void @CustomData_copy_data(ptr noundef nonnull %1009, ptr noundef nonnull %1009, i32 noundef %1012, i32 noundef %1011, i32 noundef 1) #12
  br label %1023

1023:                                             ; preds = %1019, %1017
  %1024 = add nsw i32 %1011, 1
  br label %1025

1025:                                             ; preds = %1023, %1010
  %1026 = phi i32 [ %1024, %1023 ], [ %1011, %1010 ]
  %1027 = add nuw nsw i32 %1012, 1
  %1028 = getelementptr inbounds %struct.MFace, ptr %1013, i64 1
  %1029 = load i32, ptr %1004, align 8, !tbaa !95
  %1030 = icmp slt i32 %1027, %1029
  br i1 %1030, label %1010, label %1031, !llvm.loop !100

1031:                                             ; preds = %1025, %1002
  %1032 = phi i32 [ 0, %1002 ], [ %1027, %1025 ]
  %1033 = phi i32 [ 0, %1002 ], [ %1026, %1025 ]
  %1034 = icmp eq i32 %1032, %1033
  br i1 %1034, label %1038, label %1035

1035:                                             ; preds = %1031
  %1036 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %1037 = sub nsw i32 %1032, %1033
  tail call void @CustomData_free_elem(ptr noundef nonnull %1036, i32 noundef %1033, i32 noundef %1037) #12
  store i32 %1033, ptr %1004, align 8, !tbaa !95
  br label %1038

1038:                                             ; preds = %1035, %1031, %1000
  %1039 = icmp eq i8 %911, 0
  br i1 %1039, label %1041, label %1040

1040:                                             ; preds = %1038
  tail call void @BKE_mesh_strip_loose_polysloops(ptr noundef nonnull %0)
  br label %1041

1041:                                             ; preds = %1040, %1038
  %1042 = icmp eq i8 %156, 0
  br i1 %1042, label %1044, label %1043

1043:                                             ; preds = %1041
  tail call void @BKE_mesh_strip_loose_edges(ptr noundef nonnull %0)
  br label %1044

1044:                                             ; preds = %1043, %1041
  %1045 = icmp eq i8 %743, 0
  br i1 %1045, label %1047, label %1046

1046:                                             ; preds = %1044
  tail call void @BKE_mesh_calc_edges(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %1047

1047:                                             ; preds = %1046, %1044
  %1048 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %1049 = load ptr, ptr %1048, align 8, !tbaa !101
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %1106, label %1051

1051:                                             ; preds = %1047
  %1052 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  %1053 = load i32, ptr %1052, align 4, !tbaa !102
  %1054 = icmp eq i32 %1053, 0
  br i1 %1054, label %1099, label %1055

1055:                                             ; preds = %1051
  %1056 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %1057 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %1058 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  br label %1059

1059:                                             ; preds = %1055, %1092
  %1060 = phi i8 [ 0, %1055 ], [ %1091, %1092 ]
  %1061 = phi ptr [ %1049, %1055 ], [ %1094, %1092 ]
  %1062 = phi i32 [ 0, %1055 ], [ %1093, %1092 ]
  %1063 = phi i8 [ %998, %1055 ], [ %1090, %1092 ]
  %1064 = load i32, ptr %1061, align 4, !tbaa !103
  %1065 = icmp slt i32 %1064, 0
  br i1 %1065, label %1066, label %1071

1066:                                             ; preds = %1059
  br i1 %17, label %1088, label %1067

1067:                                             ; preds = %1066
  %1068 = getelementptr inbounds %struct.MSelect, ptr %1061, i64 0, i32 1
  %1069 = load i32, ptr %1068, align 4, !tbaa !105
  %1070 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %1062, i32 noundef %1069)
  br label %1088

1071:                                             ; preds = %1059
  %1072 = getelementptr inbounds %struct.MSelect, ptr %1061, i64 0, i32 1
  %1073 = load i32, ptr %1072, align 4, !tbaa !105
  switch i32 %1073, label %1080 [
    i32 0, label %1074
    i32 1, label %1076
    i32 2, label %1078
  ]

1074:                                             ; preds = %1071
  %1075 = load i32, ptr %1058, align 8, !tbaa !106
  br label %1080

1076:                                             ; preds = %1071
  %1077 = load i32, ptr %1057, align 4, !tbaa !107
  br label %1080

1078:                                             ; preds = %1071
  %1079 = load i32, ptr %1056, align 8, !tbaa !95
  br label %1080

1080:                                             ; preds = %1071, %1078, %1076, %1074
  %1081 = phi i32 [ 0, %1071 ], [ %1079, %1078 ], [ %1077, %1076 ], [ %1075, %1074 ]
  %1082 = icmp sle i32 %1064, %1081
  %1083 = or i1 %17, %1082
  %1084 = select i1 %1082, i8 %1063, i8 0
  %1085 = select i1 %1082, i8 %1060, i8 1
  br i1 %1083, label %1088, label %1086

1086:                                             ; preds = %1080
  %1087 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %1062, i32 noundef %1073, i32 noundef %1064, i32 noundef %1081)
  br label %1088

1088:                                             ; preds = %1080, %1086, %1067, %1066
  %1089 = phi i1 [ false, %1066 ], [ false, %1067 ], [ false, %1086 ], [ %1082, %1080 ]
  %1090 = phi i8 [ 0, %1066 ], [ 0, %1067 ], [ 0, %1086 ], [ %1084, %1080 ]
  %1091 = phi i8 [ 1, %1066 ], [ 1, %1067 ], [ 1, %1086 ], [ %1085, %1080 ]
  br i1 %1089, label %1092, label %1097

1092:                                             ; preds = %1088
  %1093 = add nuw i32 %1062, 1
  %1094 = getelementptr inbounds %struct.MSelect, ptr %1061, i64 1
  %1095 = load i32, ptr %1052, align 4, !tbaa !102
  %1096 = icmp ult i32 %1093, %1095
  br i1 %1096, label %1059, label %1097, !llvm.loop !108

1097:                                             ; preds = %1088, %1092
  %1098 = icmp eq i8 %1091, 0
  br label %1099

1099:                                             ; preds = %1097, %1051
  %1100 = phi i8 [ %998, %1051 ], [ %1090, %1097 ]
  %1101 = phi i1 [ true, %1051 ], [ %1098, %1097 ]
  br i1 %1101, label %1106, label %1102

1102:                                             ; preds = %1099
  %1103 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  %1104 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %1105 = load ptr, ptr %1048, align 8, !tbaa !101
  tail call void %1104(ptr noundef %1105) #12
  store ptr null, ptr %1048, align 8, !tbaa !101
  store i32 0, ptr %1103, align 4, !tbaa !102
  br label %1106

1106:                                             ; preds = %996, %1099, %1102, %1047
  %1107 = phi i8 [ %998, %1047 ], [ %1100, %1102 ], [ %1100, %1099 ], [ %998, %996 ]
  br i1 %17, label %1110, label %1108

1108:                                             ; preds = %1106
  %1109 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef nonnull @__func__.BKE_mesh_validate_arrays)
  br label %1110

1110:                                             ; preds = %1106, %1108
  %1111 = icmp ne i8 %44, 0
  %1112 = select i1 %1111, i1 true, i1 %997
  %1113 = icmp ne i8 %911, 0
  %1114 = select i1 %1112, i1 true, i1 %1113
  %1115 = icmp ne i8 %156, 0
  %1116 = select i1 %1114, i1 true, i1 %1115
  %1117 = icmp ne i8 %743, 0
  %1118 = select i1 %1116, i1 true, i1 %1117
  %1119 = zext i1 %1118 to i8
  store i8 %1119, ptr %14, align 1, !tbaa !60
  ret i8 %1107
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_edgehash_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @BLI_edgehash_haskey(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_edgehash_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_edgehash_insert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @int64_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load i64, ptr %0, align 8, !tbaa !109
  %4 = load i64, ptr %1, align 8, !tbaa !109
  %5 = icmp sgt i64 %3, %4
  %6 = icmp slt i64 %3, %4
  %7 = sext i1 %6 to i32
  %8 = select i1 %5, i32 1, i32 %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @search_face_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load i64, ptr %0, align 8, !tbaa !60
  %4 = load i64, ptr %1, align 8, !tbaa !60
  %5 = icmp sgt i64 %3, %4
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = icmp slt i64 %3, %4
  br i1 %7, label %33, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [4 x %union.EdgeUUID], ptr %0, i64 0, i64 1
  %10 = load i64, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds [4 x %union.EdgeUUID], ptr %1, i64 0, i64 1
  %12 = load i64, ptr %11, align 8, !tbaa !60
  %13 = icmp sgt i64 %10, %12
  br i1 %13, label %33, label %14

14:                                               ; preds = %8
  %15 = icmp slt i64 %10, %12
  br i1 %15, label %33, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds [4 x %union.EdgeUUID], ptr %0, i64 0, i64 2
  %18 = load i64, ptr %17, align 8, !tbaa !60
  %19 = getelementptr inbounds [4 x %union.EdgeUUID], ptr %1, i64 0, i64 2
  %20 = load i64, ptr %19, align 8, !tbaa !60
  %21 = icmp sgt i64 %18, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %16
  %23 = icmp slt i64 %18, %20
  br i1 %23, label %33, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds [4 x %union.EdgeUUID], ptr %0, i64 0, i64 3
  %26 = load i64, ptr %25, align 8, !tbaa !60
  %27 = getelementptr inbounds [4 x %union.EdgeUUID], ptr %1, i64 0, i64 3
  %28 = load i64, ptr %27, align 8, !tbaa !60
  %29 = icmp sgt i64 %26, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = icmp slt i64 %26, %28
  %32 = sext i1 %31 to i32
  br label %33

33:                                               ; preds = %30, %24, %22, %16, %14, %8, %6, %2
  %34 = phi i32 [ 1, %2 ], [ -1, %6 ], [ 1, %8 ], [ -1, %14 ], [ 1, %16 ], [ -1, %22 ], [ 1, %24 ], [ %32, %30 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @int_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !53
  %4 = load i32, ptr %1, align 4, !tbaa !53
  %5 = icmp sgt i32 %3, %4
  %6 = icmp slt i32 %3, %4
  %7 = sext i1 %6 to i32
  %8 = select i1 %5, i32 1, i32 %7
  ret i32 %8
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @search_poly_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.SortPoly, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.SortPoly, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !70
  %7 = tail call i32 @llvm.smin.i32(i32 %4, i32 %6)
  %8 = getelementptr inbounds %struct.SortPoly, ptr %0, i64 0, i32 4
  %9 = load i8, ptr %8, align 4, !tbaa !68
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SortPoly, ptr %1, i64 0, i32 4
  %13 = load i8, ptr %12, align 4, !tbaa !68
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = icmp sgt i32 %7, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 8, !tbaa !69
  %19 = load ptr, ptr %1, align 8, !tbaa !69
  %20 = zext nneg i32 %7 to i64
  br label %30

21:                                               ; preds = %11
  br i1 %10, label %46, label %22

22:                                               ; preds = %2, %21
  %23 = getelementptr inbounds %struct.SortPoly, ptr %1, i64 0, i32 4
  %24 = load i8, ptr %23, align 4, !tbaa !68
  %25 = icmp eq i8 %24, 0
  %26 = zext i1 %25 to i32
  br label %46

27:                                               ; preds = %30
  %28 = add nuw nsw i64 %31, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %41, label %30, !llvm.loop !111

30:                                               ; preds = %17, %27
  %31 = phi i64 [ 0, %17 ], [ %28, %27 ]
  %32 = phi i32 [ undef, %17 ], [ %40, %27 ]
  %33 = getelementptr inbounds i32, ptr %18, i64 %31
  %34 = load i32, ptr %33, align 4, !tbaa !53
  %35 = getelementptr inbounds i32, ptr %19, i64 %31
  %36 = load i32, ptr %35, align 4, !tbaa !53
  %37 = icmp eq i32 %34, %36
  %38 = icmp sgt i32 %34, %36
  %39 = select i1 %38, i32 1, i32 -1
  %40 = select i1 %37, i32 %32, i32 %39
  br i1 %37, label %27, label %46

41:                                               ; preds = %27, %15
  %42 = icmp sgt i32 %4, %6
  %43 = icmp slt i32 %4, %6
  %44 = sext i1 %43 to i32
  %45 = select i1 %42, i32 1, i32 %44
  br label %46

46:                                               ; preds = %30, %22, %21, %41
  %47 = phi i32 [ %45, %41 ], [ %26, %22 ], [ -1, %21 ], [ %40, %30 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @search_polyloop_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.SortPoly, ptr %0, i64 0, i32 4
  %4 = load i8, ptr %3, align 4, !tbaa !68
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SortPoly, ptr %1, i64 0, i32 4
  %8 = load i8, ptr %7, align 4, !tbaa !68
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  br i1 %5, label %15, label %11

11:                                               ; preds = %2, %10
  %12 = getelementptr inbounds %struct.SortPoly, ptr %1, i64 0, i32 4
  %13 = load i8, ptr %12, align 4, !tbaa !68
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11, %10
  %16 = select i1 %5, i32 -1, i32 1
  br label %26

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.SortPoly, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !71
  %20 = getelementptr inbounds %struct.SortPoly, ptr %1, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !71
  %22 = icmp sgt i32 %19, %21
  %23 = icmp slt i32 %19, %21
  %24 = sext i1 %23 to i32
  %25 = select i1 %22, i32 1, i32 %24
  br label %26

26:                                               ; preds = %15, %11, %17
  %27 = phi i32 [ %25, %17 ], [ %16, %15 ], [ 0, %11 ]
  ret i32 %27
}

declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @defvert_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_strip_loose_faces(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %4 = load i32, ptr %3, align 8, !tbaa !95
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !99
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  br label %9

9:                                                ; preds = %6, %24
  %10 = phi i32 [ 0, %6 ], [ %25, %24 ]
  %11 = phi i32 [ 0, %6 ], [ %26, %24 ]
  %12 = phi ptr [ %7, %6 ], [ %27, %24 ]
  %13 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !57
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = icmp eq i32 %11, %10
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %2, align 8, !tbaa !99
  %20 = sext i32 %10 to i64
  %21 = getelementptr inbounds %struct.MFace, ptr %19, i64 %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %21, ptr noundef nonnull align 4 dereferenceable(20) %12, i64 20, i1 false)
  tail call void @CustomData_copy_data(ptr noundef nonnull %8, ptr noundef nonnull %8, i32 noundef %11, i32 noundef %10, i32 noundef 1) #12
  br label %22

22:                                               ; preds = %18, %16
  %23 = add nsw i32 %10, 1
  br label %24

24:                                               ; preds = %9, %22
  %25 = phi i32 [ %23, %22 ], [ %10, %9 ]
  %26 = add nuw nsw i32 %11, 1
  %27 = getelementptr inbounds %struct.MFace, ptr %12, i64 1
  %28 = load i32, ptr %3, align 8, !tbaa !95
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %9, label %30, !llvm.loop !100

30:                                               ; preds = %24, %1
  %31 = phi i32 [ 0, %1 ], [ %26, %24 ]
  %32 = phi i32 [ 0, %1 ], [ %25, %24 ]
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %36 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %37 = sub nsw i32 %31, %32
  tail call void @CustomData_free_elem(ptr noundef nonnull %36, i32 noundef %32, i32 noundef %37) #12
  store i32 %32, ptr %35, align 8, !tbaa !95
  br label %38

38:                                               ; preds = %34, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_strip_loose_polysloops(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %4 = load i32, ptr %3, align 4, !tbaa !112
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call ptr %2(i64 noundef %6, ptr noundef nonnull @__func__.BKE_mesh_strip_loose_polysloops) #12
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %10 = load i32, ptr %9, align 8, !tbaa !113
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %62

12:                                               ; preds = %1
  %13 = load ptr, ptr %8, align 8, !tbaa !114
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  br label %16

16:                                               ; preds = %12, %56
  %17 = phi ptr [ %13, %12 ], [ %59, %56 ]
  %18 = phi i32 [ 0, %12 ], [ %57, %56 ]
  %19 = phi i32 [ 0, %12 ], [ %58, %56 ]
  %20 = load i32, ptr %17, align 4, !tbaa !65
  %21 = getelementptr inbounds %struct.MPoly, ptr %17, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !67
  %23 = add nsw i32 %22, %20
  %24 = load i32, ptr %3, align 4, !tbaa !112
  %25 = icmp sgt i32 %23, %24
  %26 = icmp slt i32 %22, 0
  %27 = or i1 %26, %25
  br i1 %27, label %44, label %28

28:                                               ; preds = %16
  %29 = icmp eq i32 %22, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %14, align 8, !tbaa !115
  %32 = sext i32 %20 to i64
  %33 = getelementptr inbounds %struct.MLoop, ptr %31, i64 %32
  br label %34

34:                                               ; preds = %34, %30
  %35 = phi i32 [ %22, %30 ], [ %41, %34 ]
  %36 = phi ptr [ %33, %30 ], [ %40, %34 ]
  %37 = getelementptr inbounds %struct.MLoop, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !78
  %39 = icmp eq i32 %38, -1
  %40 = getelementptr inbounds %struct.MLoop, ptr %36, i64 1
  %41 = add nsw i32 %35, -1
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %39, i1 true, i1 %42
  br i1 %43, label %44, label %34, !llvm.loop !116

44:                                               ; preds = %34, %28, %16
  %45 = phi i1 [ true, %16 ], [ false, %28 ], [ %39, %34 ]
  %46 = icmp slt i32 %22, 3
  %47 = or i1 %46, %45
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = icmp eq i32 %19, %18
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %8, align 8, !tbaa !114
  %52 = sext i32 %18 to i64
  %53 = getelementptr inbounds %struct.MPoly, ptr %51, i64 %52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %53, ptr noundef nonnull align 4 dereferenceable(12) %17, i64 12, i1 false)
  tail call void @CustomData_copy_data(ptr noundef nonnull %15, ptr noundef nonnull %15, i32 noundef %19, i32 noundef %18, i32 noundef 1) #12
  br label %54

54:                                               ; preds = %50, %48
  %55 = add nsw i32 %18, 1
  br label %56

56:                                               ; preds = %54, %44
  %57 = phi i32 [ %18, %44 ], [ %55, %54 ]
  %58 = add nuw nsw i32 %19, 1
  %59 = getelementptr inbounds %struct.MPoly, ptr %17, i64 1
  %60 = load i32, ptr %9, align 8, !tbaa !113
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %16, label %62, !llvm.loop !117

62:                                               ; preds = %56, %1
  %63 = phi i32 [ 0, %1 ], [ %58, %56 ]
  %64 = phi i32 [ 0, %1 ], [ %57, %56 ]
  %65 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %66 = icmp eq i32 %63, %64
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %69 = sub nsw i32 %63, %64
  tail call void @CustomData_free_elem(ptr noundef nonnull %68, i32 noundef %64, i32 noundef %69) #12
  store i32 %64, ptr %65, align 8, !tbaa !113
  br label %70

70:                                               ; preds = %67, %62
  %71 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %72 = load i32, ptr %3, align 4, !tbaa !112
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %109

74:                                               ; preds = %70
  %75 = load ptr, ptr %71, align 8, !tbaa !115
  %76 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  br label %77

77:                                               ; preds = %74, %100
  %78 = phi i64 [ 0, %74 ], [ %102, %100 ]
  %79 = phi ptr [ %75, %74 ], [ %103, %100 ]
  %80 = phi i32 [ 0, %74 ], [ %101, %100 ]
  %81 = getelementptr inbounds %struct.MLoop, ptr %79, i64 0, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !78
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %96, label %84

84:                                               ; preds = %77
  %85 = zext i32 %80 to i64
  %86 = icmp eq i64 %78, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %71, align 8, !tbaa !115
  %89 = sext i32 %80 to i64
  %90 = getelementptr inbounds %struct.MLoop, ptr %88, i64 %89
  %91 = load i64, ptr %79, align 4
  store i64 %91, ptr %90, align 4
  %92 = trunc i64 %78 to i32
  tail call void @CustomData_copy_data(ptr noundef nonnull %76, ptr noundef nonnull %76, i32 noundef %92, i32 noundef %80, i32 noundef 1) #12
  br label %93

93:                                               ; preds = %87, %84
  %94 = getelementptr inbounds i32, ptr %7, i64 %78
  store i32 %80, ptr %94, align 4, !tbaa !53
  %95 = add nsw i32 %80, 1
  br label %100

96:                                               ; preds = %77
  %97 = getelementptr inbounds i32, ptr %7, i64 %78
  %98 = trunc i64 %78 to i32
  %99 = sub i32 0, %98
  store i32 %99, ptr %97, align 4, !tbaa !53
  br label %100

100:                                              ; preds = %93, %96
  %101 = phi i32 [ %95, %93 ], [ %80, %96 ]
  %102 = add nuw nsw i64 %78, 1
  %103 = getelementptr inbounds %struct.MLoop, ptr %79, i64 1
  %104 = load i32, ptr %3, align 4, !tbaa !112
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %77, label %107, !llvm.loop !118

107:                                              ; preds = %100
  %108 = trunc i64 %102 to i32
  br label %109

109:                                              ; preds = %107, %70
  %110 = phi i32 [ 0, %70 ], [ %108, %107 ]
  %111 = phi i32 [ 0, %70 ], [ %101, %107 ]
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %115 = sub nsw i32 %110, %111
  tail call void @CustomData_free_elem(ptr noundef nonnull %114, i32 noundef %111, i32 noundef %115) #12
  store i32 %111, ptr %3, align 4, !tbaa !112
  br label %116

116:                                              ; preds = %113, %109
  %117 = load i32, ptr %65, align 8, !tbaa !113
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load ptr, ptr %8, align 8, !tbaa !114
  br label %121

121:                                              ; preds = %119, %121
  %122 = phi ptr [ %129, %121 ], [ %120, %119 ]
  %123 = phi i32 [ %128, %121 ], [ 0, %119 ]
  %124 = load i32, ptr %122, align 4, !tbaa !65
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %7, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !53
  store i32 %127, ptr %122, align 4, !tbaa !65
  %128 = add nuw nsw i32 %123, 1
  %129 = getelementptr inbounds %struct.MPoly, ptr %122, i64 1
  %130 = icmp eq i32 %128, %117
  br i1 %130, label %131, label %121, !llvm.loop !119

131:                                              ; preds = %121, %116
  %132 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %132(ptr noundef %7) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_strip_loose_edges(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %4 = load i32, ptr %3, align 4, !tbaa !107
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call ptr %2(i64 noundef %6, ptr noundef nonnull @__func__.BKE_mesh_strip_loose_edges) #12
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %9 = load i32, ptr %3, align 4, !tbaa !107
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load ptr, ptr %8, align 8, !tbaa !120
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  br label %14

14:                                               ; preds = %11, %35
  %15 = phi i64 [ 0, %11 ], [ %37, %35 ]
  %16 = phi ptr [ %12, %11 ], [ %38, %35 ]
  %17 = phi i32 [ 0, %11 ], [ %36, %35 ]
  %18 = load i32, ptr %16, align 4, !tbaa !44
  %19 = getelementptr inbounds %struct.MEdge, ptr %16, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !47
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %14
  %23 = zext i32 %17 to i64
  %24 = icmp eq i64 %15, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %8, align 8, !tbaa !120
  %27 = sext i32 %17 to i64
  %28 = getelementptr inbounds %struct.MEdge, ptr %26, i64 %27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %28, ptr noundef nonnull align 4 dereferenceable(12) %16, i64 12, i1 false)
  %29 = trunc i64 %15 to i32
  tail call void @CustomData_copy_data(ptr noundef nonnull %13, ptr noundef nonnull %13, i32 noundef %29, i32 noundef %17, i32 noundef 1) #12
  br label %30

30:                                               ; preds = %25, %22
  %31 = getelementptr inbounds i32, ptr %7, i64 %15
  store i32 %17, ptr %31, align 4, !tbaa !53
  %32 = add nsw i32 %17, 1
  br label %35

33:                                               ; preds = %14
  %34 = getelementptr inbounds i32, ptr %7, i64 %15
  store i32 -1, ptr %34, align 4, !tbaa !53
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi i32 [ %32, %30 ], [ %17, %33 ]
  %37 = add nuw nsw i64 %15, 1
  %38 = getelementptr inbounds %struct.MEdge, ptr %16, i64 1
  %39 = load i32, ptr %3, align 4, !tbaa !107
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %14, label %42, !llvm.loop !121

42:                                               ; preds = %35
  %43 = trunc i64 %37 to i32
  br label %44

44:                                               ; preds = %42, %1
  %45 = phi i32 [ 0, %1 ], [ %43, %42 ]
  %46 = phi i32 [ 0, %1 ], [ %36, %42 ]
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %50 = sub nsw i32 %45, %46
  tail call void @CustomData_free_elem(ptr noundef nonnull %49, i32 noundef %46, i32 noundef %50) #12
  store i32 %46, ptr %3, align 4, !tbaa !107
  br label %51

51:                                               ; preds = %48, %44
  %52 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %53 = load i32, ptr %52, align 4, !tbaa !112
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !115
  br label %58

58:                                               ; preds = %55, %58
  %59 = phi i32 [ %66, %58 ], [ 0, %55 ]
  %60 = phi ptr [ %67, %58 ], [ %57, %55 ]
  %61 = getelementptr inbounds %struct.MLoop, ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !78
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %7, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !53
  store i32 %65, ptr %61, align 4, !tbaa !78
  %66 = add nuw nsw i32 %59, 1
  %67 = getelementptr inbounds %struct.MLoop, ptr %60, i64 1
  %68 = icmp eq i32 %66, %53
  br i1 %68, label %69, label %58, !llvm.loop !122

69:                                               ; preds = %58, %51
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %70(ptr noundef %7) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_calc_edges(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %6 = load i32, ptr %5, align 8, !tbaa !113
  %7 = icmp ne i8 %2, 0
  %8 = zext i1 %7 to i16
  %9 = or disjoint i16 %8, 34
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %11 = load i32, ptr %10, align 4, !tbaa !107
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i8 %1, 0
  %14 = or i1 %13, %12
  %15 = select i1 %13, i32 0, i32 %11
  %16 = shl nsw i32 %6, 1
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 %15)
  %18 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.BKE_mesh_calc_edges, i32 noundef %17) #12
  br i1 %14, label %35, label %19

19:                                               ; preds = %3
  %20 = load i32, ptr %10, align 4, !tbaa !107
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %24 = load ptr, ptr %23, align 8, !tbaa !120
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi ptr [ %32, %25 ], [ %24, %22 ]
  %27 = phi i32 [ %31, %25 ], [ 0, %22 ]
  %28 = load i32, ptr %26, align 4, !tbaa !44
  %29 = getelementptr inbounds %struct.MEdge, ptr %26, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !47
  tail call void @BLI_edgehash_insert(ptr noundef %18, i32 noundef %28, i32 noundef %30, ptr noundef nonnull %26) #12
  %31 = add nuw nsw i32 %27, 1
  %32 = getelementptr inbounds %struct.MEdge, ptr %26, i64 1
  %33 = load i32, ptr %10, align 4, !tbaa !107
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %25, label %35, !llvm.loop !123

35:                                               ; preds = %25, %19, %3
  %36 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %37 = icmp sgt i32 %6, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %35
  %39 = load ptr, ptr %36, align 8, !tbaa !114
  %40 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  br label %41

41:                                               ; preds = %38, %70
  %42 = phi ptr [ %39, %38 ], [ %71, %70 ]
  %43 = phi i32 [ 0, %38 ], [ %72, %70 ]
  %44 = getelementptr inbounds %struct.MPoly, ptr %42, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !67
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %41
  %48 = load ptr, ptr %40, align 8, !tbaa !115
  %49 = load i32, ptr %42, align 4, !tbaa !65
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.MLoop, ptr %48, i64 %50
  %52 = zext nneg i32 %45 to i64
  %53 = getelementptr %struct.MLoop, ptr %51, i64 %52
  %54 = getelementptr %struct.MLoop, ptr %53, i64 -1
  br label %55

55:                                               ; preds = %47, %65
  %56 = phi ptr [ %58, %65 ], [ %54, %47 ]
  %57 = phi i32 [ %66, %65 ], [ 0, %47 ]
  %58 = phi ptr [ %67, %65 ], [ %51, %47 ]
  %59 = load i32, ptr %56, align 4, !tbaa !72
  %60 = load i32, ptr %58, align 4, !tbaa !72
  %61 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %18, i32 noundef %59, i32 noundef %60) #12
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, ptr %58, align 4, !tbaa !72
  tail call void @BLI_edgehash_insert(ptr noundef %18, i32 noundef %59, i32 noundef %64, ptr noundef null) #12
  br label %65

65:                                               ; preds = %63, %55
  %66 = add nuw nsw i32 %57, 1
  %67 = getelementptr inbounds %struct.MLoop, ptr %58, i64 1
  %68 = load i32, ptr %44, align 4, !tbaa !67
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %55, label %70, !llvm.loop !124

70:                                               ; preds = %65, %41
  %71 = getelementptr inbounds %struct.MPoly, ptr %42, i64 1
  %72 = add nuw nsw i32 %43, 1
  %73 = icmp eq i32 %72, %6
  br i1 %73, label %74, label %41, !llvm.loop !125

74:                                               ; preds = %70, %35
  %75 = tail call i32 @BLI_edgehash_size(ptr noundef %18) #12
  call void @CustomData_reset(ptr noundef nonnull %4) #12
  %76 = call ptr @CustomData_add_layer(ptr noundef nonnull %4, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %75) #12
  %77 = call ptr @CustomData_get_layer(ptr noundef nonnull %4, i32 noundef 3) #12
  %78 = call ptr @BLI_edgehashIterator_new(ptr noundef %18) #12
  %79 = getelementptr inbounds %struct.EdgeHashIterator, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !126
  %81 = icmp eq ptr %80, null
  br i1 %81, label %106, label %82

82:                                               ; preds = %74, %98
  %83 = phi i64 [ %102, %98 ], [ 0, %74 ]
  %84 = phi ptr [ %104, %98 ], [ %80, %74 ]
  %85 = phi ptr [ %103, %98 ], [ %77, %74 ]
  br i1 %14, label %91, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct._eh_Entry, ptr %84, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !128
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %85, ptr noundef nonnull align 4 dereferenceable(12) %88, i64 12, i1 false), !tbaa.struct !130
  br label %98

91:                                               ; preds = %86, %82
  %92 = getelementptr inbounds %struct.MEdge, ptr %85, i64 0, i32 1
  %93 = getelementptr inbounds %struct._eh_Entry, ptr %84, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !131
  store i32 %94, ptr %85, align 4, !tbaa !53
  %95 = getelementptr inbounds %struct._eh_Entry, ptr %84, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !132
  store i32 %96, ptr %92, align 4, !tbaa !53
  %97 = getelementptr inbounds %struct.MEdge, ptr %85, i64 0, i32 4
  store i16 %9, ptr %97, align 2, !tbaa !133
  br label %98

98:                                               ; preds = %91, %90
  %99 = inttoptr i64 %83 to ptr
  %100 = load ptr, ptr %79, align 8, !tbaa !126
  %101 = getelementptr inbounds %struct._eh_Entry, ptr %100, i64 0, i32 3
  store ptr %99, ptr %101, align 8, !tbaa !128
  call void @BLI_edgehashIterator_step(ptr noundef %78) #12
  %102 = add nuw i64 %83, 1
  %103 = getelementptr inbounds %struct.MEdge, ptr %85, i64 1
  %104 = load ptr, ptr %79, align 8, !tbaa !126
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %82, !llvm.loop !134

106:                                              ; preds = %98, %74
  call void @BLI_edgehashIterator_free(ptr noundef %78) #12
  %107 = load i32, ptr %5, align 8, !tbaa !113
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %148, label %109

109:                                              ; preds = %106
  %110 = load i32, ptr %5, align 8, !tbaa !113
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %148

112:                                              ; preds = %109
  %113 = load ptr, ptr %36, align 8, !tbaa !114
  %114 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  br label %115

115:                                              ; preds = %112, %143
  %116 = phi ptr [ %113, %112 ], [ %144, %143 ]
  %117 = phi i32 [ 0, %112 ], [ %145, %143 ]
  %118 = getelementptr inbounds %struct.MPoly, ptr %116, i64 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !67
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %115
  %122 = load ptr, ptr %114, align 8, !tbaa !115
  %123 = load i32, ptr %116, align 4, !tbaa !65
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.MLoop, ptr %122, i64 %124
  %126 = zext nneg i32 %119 to i64
  %127 = getelementptr %struct.MLoop, ptr %125, i64 %126
  %128 = getelementptr %struct.MLoop, ptr %127, i64 -1
  br label %129

129:                                              ; preds = %121, %129
  %130 = phi i32 [ %139, %129 ], [ 0, %121 ]
  %131 = phi ptr [ %132, %129 ], [ %128, %121 ]
  %132 = phi ptr [ %140, %129 ], [ %125, %121 ]
  %133 = load i32, ptr %131, align 4, !tbaa !72
  %134 = load i32, ptr %132, align 4, !tbaa !72
  %135 = call ptr @BLI_edgehash_lookup(ptr noundef %18, i32 noundef %133, i32 noundef %134) #12
  %136 = ptrtoint ptr %135 to i64
  %137 = trunc i64 %136 to i32
  %138 = getelementptr inbounds %struct.MLoop, ptr %131, i64 0, i32 1
  store i32 %137, ptr %138, align 4, !tbaa !78
  %139 = add nuw nsw i32 %130, 1
  %140 = getelementptr inbounds %struct.MLoop, ptr %132, i64 1
  %141 = load i32, ptr %118, align 4, !tbaa !67
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %129, label %143, !llvm.loop !135

143:                                              ; preds = %129, %115
  %144 = getelementptr inbounds %struct.MPoly, ptr %116, i64 1
  %145 = add nuw nsw i32 %117, 1
  %146 = load i32, ptr %5, align 8, !tbaa !113
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %115, label %148, !llvm.loop !136

148:                                              ; preds = %143, %109, %106
  %149 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %150 = load i32, ptr %10, align 4, !tbaa !107
  call void @CustomData_free(ptr noundef nonnull %149, i32 noundef %150) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %149, ptr noundef nonnull align 8 dereferenceable(200) %4, i64 200, i1 false), !tbaa.struct !137
  store i32 %75, ptr %10, align 4, !tbaa !107
  %151 = call ptr @CustomData_get_layer(ptr noundef nonnull %149, i32 noundef 3) #12
  %152 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  store ptr %151, ptr %152, align 8, !tbaa !120
  call void @BLI_edgehash_free(ptr noundef %18, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_mesh_validate_all_customdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #12
  %13 = icmp eq i8 %4, 0
  %14 = load i64, ptr @CD_MASK_MESH, align 8
  %15 = select i1 %13, i64 0, i64 %14
  %16 = call fastcc zeroext i8 @mesh_validate_customdata(ptr noundef %0, i64 noundef %15, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef nonnull %9), !range !138
  %17 = call fastcc zeroext i8 @mesh_validate_customdata(ptr noundef %1, i64 noundef %15, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef nonnull %10), !range !138
  %18 = and i8 %17, %16
  %19 = call fastcc zeroext i8 @mesh_validate_customdata(ptr noundef %2, i64 noundef %15, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef nonnull %11), !range !138
  %20 = and i8 %18, %19
  %21 = call fastcc zeroext i8 @mesh_validate_customdata(ptr noundef %3, i64 noundef %15, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef nonnull %12), !range !138
  %22 = and i8 %20, %21
  %23 = tail call i32 @CustomData_number_of_layers(ptr noundef %3, i32 noundef 15) #12
  %24 = tail call i32 @CustomData_number_of_layers(ptr noundef %2, i32 noundef 16) #12
  %25 = tail call i32 @CustomData_number_of_layers(ptr noundef %2, i32 noundef 17) #12
  %26 = icmp eq i32 %23, %24
  br i1 %26, label %31, label %27

27:                                               ; preds = %8
  %28 = icmp eq i8 %5, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %23, i32 noundef %24)
  br label %31

31:                                               ; preds = %29, %27, %8
  %32 = phi i8 [ 0, %29 ], [ 0, %27 ], [ %22, %8 ]
  %33 = icmp sgt i32 %23, 8
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = icmp eq i8 %5, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = add nsw i32 %23, -8
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef 8, i32 noundef %37)
  br label %39

39:                                               ; preds = %36, %34, %31
  %40 = phi i8 [ 0, %36 ], [ 0, %34 ], [ %32, %31 ]
  %41 = icmp sgt i32 %24, 8
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = icmp eq i8 %5, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = add nsw i32 %24, -8
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef 8, i32 noundef %45)
  br label %47

47:                                               ; preds = %44, %42, %39
  %48 = phi i8 [ 0, %44 ], [ 0, %42 ], [ %40, %39 ]
  %49 = icmp sgt i32 %25, 8
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = icmp eq i8 %5, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %50
  %53 = add nsw i32 %25, -8
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef 8, i32 noundef %53)
  br label %55

55:                                               ; preds = %52, %50, %47
  %56 = phi i8 [ 0, %52 ], [ 0, %50 ], [ %48, %47 ]
  %57 = load i8, ptr %9, align 1, !tbaa !60
  %58 = icmp ne i8 %57, 0
  %59 = load i8, ptr %10, align 1
  %60 = icmp ne i8 %59, 0
  %61 = select i1 %58, i1 true, i1 %60
  %62 = load i8, ptr %11, align 1
  %63 = icmp ne i8 %62, 0
  %64 = select i1 %61, i1 true, i1 %63
  %65 = load i8, ptr %12, align 1
  %66 = icmp ne i8 %65, 0
  %67 = select i1 %64, i1 true, i1 %66
  %68 = zext i1 %67 to i8
  store i8 %68, ptr %7, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #12
  ret i8 %56
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @mesh_validate_customdata(ptr noundef %0, i64 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !139
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef nonnull @__func__.mesh_validate_customdata, i32 noundef %9)
  br label %11

11:                                               ; preds = %5, %7
  %12 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !139
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %67

15:                                               ; preds = %11
  %16 = icmp eq i64 %1, 0
  %17 = icmp ne i8 %3, 0
  br label %18

18:                                               ; preds = %15, %60
  %19 = phi i8 [ 1, %15 ], [ %54, %60 ]
  %20 = phi i8 [ 0, %15 ], [ %61, %60 ]
  %21 = phi i32 [ 0, %15 ], [ %64, %60 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !140
  %23 = zext nneg i32 %21 to i64
  %24 = getelementptr inbounds %struct.CustomDataLayer, ptr %22, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !141
  %26 = tail call zeroext i8 @CustomData_layertype_is_singleton(i32 noundef %25) #12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %18
  %29 = load i32, ptr %24, align 8, !tbaa !141
  %30 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %0, i32 noundef %29) #12
  %31 = icmp slt i32 %30, 2
  %32 = or i1 %6, %31
  %33 = zext i1 %31 to i8
  %34 = select i1 %31, i8 %19, i8 0
  br i1 %32, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, ptr %24, align 8, !tbaa !141
  %37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %36, i32 noundef %30)
  br label %38

38:                                               ; preds = %28, %35, %18
  %39 = phi i8 [ 1, %18 ], [ %33, %28 ], [ 0, %35 ]
  %40 = phi i8 [ %19, %18 ], [ %34, %28 ], [ 0, %35 ]
  br i1 %16, label %52, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %24, align 8, !tbaa !141
  %43 = zext nneg i32 %42 to i64
  %44 = shl nuw i64 1, %43
  %45 = and i64 %44, %1
  %46 = icmp ne i64 %45, 0
  %47 = or i1 %6, %46
  %48 = select i1 %46, i8 %39, i8 0
  %49 = select i1 %46, i8 %40, i8 0
  br i1 %47, label %52, label %50

50:                                               ; preds = %41
  %51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %42)
  br label %52

52:                                               ; preds = %41, %50, %38
  %53 = phi i8 [ %39, %38 ], [ %48, %41 ], [ 0, %50 ]
  %54 = phi i8 [ %40, %38 ], [ %49, %41 ], [ 0, %50 ]
  %55 = icmp eq i8 %53, 0
  %56 = and i1 %17, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, ptr %24, align 8, !tbaa !141
  %59 = tail call zeroext i8 @CustomData_free_layer(ptr noundef nonnull %0, i32 noundef %58, i32 noundef 0, i32 noundef %21) #12
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi i8 [ 1, %57 ], [ %20, %52 ]
  %62 = xor i1 %55, true
  %63 = zext i1 %62 to i32
  %64 = add nuw nsw i32 %21, %63
  %65 = load i32, ptr %12, align 4, !tbaa !139
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %18, label %67, !llvm.loop !143

67:                                               ; preds = %60, %11
  %68 = phi i8 [ 0, %11 ], [ %61, %60 ]
  %69 = phi i8 [ 1, %11 ], [ %54, %60 ]
  br i1 %6, label %74, label %70

70:                                               ; preds = %67
  %71 = icmp eq i8 %68, 0
  %72 = zext i1 %71 to i32
  %73 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull @__func__.mesh_validate_customdata, i32 noundef %72)
  br label %74

74:                                               ; preds = %67, %70
  store i8 %68, ptr %4, align 1, !tbaa !60
  ret i8 %69
}

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_mesh_validate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef nonnull %6)
  br label %8

8:                                                ; preds = %5, %2
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %13 = trunc i32 %1 to i8
  %14 = call zeroext i8 @BKE_mesh_validate_all_customdata(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i8 noundef zeroext 1, i8 noundef zeroext %13, i8 noundef zeroext 1, ptr noundef nonnull %3), !range !138
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %16 = load ptr, ptr %15, align 8, !tbaa !144
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %18 = load i32, ptr %17, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !120
  %21 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %22 = load i32, ptr %21, align 4, !tbaa !107
  %23 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !99
  %25 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %26 = load i32, ptr %25, align 8, !tbaa !95
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !115
  %29 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %30 = load i32, ptr %29, align 4, !tbaa !112
  %31 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !114
  %33 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %34 = load i32, ptr %33, align 8, !tbaa !113
  %35 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !145
  %37 = call zeroext i8 @BKE_mesh_validate_arrays(ptr noundef %0, ptr noundef %16, i32 noundef %18, ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %26, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %34, ptr noundef %36, i8 noundef zeroext %13, i8 noundef zeroext 1, ptr noundef nonnull %3), !range !138
  %38 = load i8, ptr %3, align 1, !tbaa !60
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %8
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 2) #12
  br label %41

41:                                               ; preds = %8, %40
  %42 = phi i32 [ 1, %40 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  ret i32 %42
}

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_cd_validate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %3 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %2, i32 noundef 15) #12
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %5 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %4, i32 noundef 16) #12
  %6 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %4, i32 noundef 17) #12
  %7 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %2, i32 noundef 15) #12
  %8 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %4, i32 noundef 16) #12
  %9 = icmp sgt i32 %3, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = add nsw i32 %3, -8
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef 8, i32 noundef %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = icmp sgt i32 %5, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = add nsw i32 %5, -8
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef 8, i32 noundef %16)
  br label %18

18:                                               ; preds = %15, %13
  %19 = icmp sgt i32 %6, 8
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = add nsw i32 %6, -8
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef 8, i32 noundef %21)
  br label %23

23:                                               ; preds = %20, %18
  %24 = icmp eq i32 %3, %5
  br i1 %24, label %64, label %25

25:                                               ; preds = %23
  %26 = icmp slt i32 %3, %5
  br i1 %26, label %27, label %45

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %29 = sext i32 %3 to i64
  %30 = sext i32 %8 to i64
  br label %31

31:                                               ; preds = %27, %31
  %32 = phi i64 [ %29, %27 ], [ %39, %31 ]
  %33 = load ptr, ptr %4, align 8, !tbaa !146
  %34 = add nsw i64 %32, %30
  %35 = getelementptr inbounds %struct.CustomDataLayer, ptr %33, i64 %34, i32 8
  %36 = load i32, ptr %28, align 8, !tbaa !113
  %37 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %2, i32 noundef 15, i32 noundef 2, ptr noundef null, i32 noundef %36, ptr noundef nonnull %35) #12
  %38 = trunc i64 %32 to i32
  tail call void @CustomData_set_layer_unique_name(ptr noundef nonnull %2, i32 noundef %38) #12
  %39 = add nsw i64 %32, 1
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %5, %40
  br i1 %41, label %42, label %31, !llvm.loop !147

42:                                               ; preds = %31
  %43 = trunc i64 %39 to i32
  %44 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %2, i32 noundef 15) #12
  br label %64

45:                                               ; preds = %25
  %46 = icmp slt i32 %5, %3
  br i1 %46, label %47, label %64

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %49 = sext i32 %5 to i64
  %50 = sext i32 %7 to i64
  br label %51

51:                                               ; preds = %47, %51
  %52 = phi i64 [ %49, %47 ], [ %59, %51 ]
  %53 = load ptr, ptr %2, align 8, !tbaa !148
  %54 = add nsw i64 %52, %50
  %55 = getelementptr inbounds %struct.CustomDataLayer, ptr %53, i64 %54, i32 8
  %56 = load i32, ptr %48, align 4, !tbaa !112
  %57 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %4, i32 noundef 16, i32 noundef 2, ptr noundef null, i32 noundef %56, ptr noundef nonnull %55) #12
  %58 = trunc i64 %52 to i32
  tail call void @CustomData_set_layer_unique_name(ptr noundef nonnull %4, i32 noundef %58) #12
  %59 = add nsw i64 %52, 1
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %3, %60
  br i1 %61, label %62, label %51, !llvm.loop !149

62:                                               ; preds = %51
  %63 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %4, i32 noundef 16) #12
  br label %64

64:                                               ; preds = %42, %62, %45, %23
  %65 = phi i32 [ %8, %23 ], [ %8, %42 ], [ %63, %62 ], [ %8, %45 ]
  %66 = phi i32 [ %7, %23 ], [ %44, %42 ], [ %7, %62 ], [ %7, %45 ]
  %67 = phi i32 [ %3, %23 ], [ %43, %42 ], [ %3, %62 ], [ %3, %45 ]
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %64
  %70 = sext i32 %66 to i64
  %71 = sext i32 %65 to i64
  br label %72

72:                                               ; preds = %69, %86
  %73 = phi i64 [ %71, %69 ], [ %89, %86 ]
  %74 = phi i64 [ %70, %69 ], [ %88, %86 ]
  %75 = phi i32 [ 0, %69 ], [ %87, %86 ]
  %76 = load ptr, ptr %2, align 8, !tbaa !148
  %77 = getelementptr inbounds %struct.CustomDataLayer, ptr %76, i64 %74, i32 8
  %78 = load ptr, ptr %4, align 8, !tbaa !146
  %79 = getelementptr inbounds %struct.CustomDataLayer, ptr %78, i64 %73, i32 8
  %80 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %77, ptr noundef nonnull dereferenceable(1) %79) #13
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %72
  %83 = trunc i64 %74 to i32
  %84 = trunc i64 %73 to i32
  %85 = tail call zeroext i8 @BKE_mesh_uv_cdlayer_rename_index(ptr noundef %0, i32 noundef %83, i32 noundef %84, i32 noundef -1, ptr noundef nonnull %77, i8 noundef zeroext 0) #12
  br label %86

86:                                               ; preds = %82, %72
  %87 = add nuw nsw i32 %75, 1
  %88 = add nsw i64 %74, 1
  %89 = add nsw i64 %73, 1
  %90 = icmp eq i32 %87, %67
  br i1 %90, label %91, label %72, !llvm.loop !150

91:                                               ; preds = %86, %64
  ret void
}

declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_set_layer_unique_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare zeroext i8 @BKE_mesh_uv_cdlayer_rename_index(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_mesh_validate_material_indices(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  %3 = load i16, ptr %2, align 2, !tbaa !151
  %4 = tail call i16 @llvm.smax.i16(i16 %3, i16 1)
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %6 = load i32, ptr %5, align 8, !tbaa !113
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  br label %11

11:                                               ; preds = %8, %19
  %12 = phi i8 [ %20, %19 ], [ 1, %8 ]
  %13 = phi i32 [ %21, %19 ], [ 0, %8 ]
  %14 = phi ptr [ %22, %19 ], [ %10, %8 ]
  %15 = getelementptr inbounds %struct.MPoly, ptr %14, i64 0, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !152
  %17 = icmp sgt i16 %4, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i16 0, ptr %15, align 4, !tbaa !152
  br label %19

19:                                               ; preds = %11, %18
  %20 = phi i8 [ 0, %18 ], [ %12, %11 ]
  %21 = add nuw nsw i32 %13, 1
  %22 = getelementptr inbounds %struct.MPoly, ptr %14, i64 1
  %23 = icmp eq i32 %21, %6
  br i1 %23, label %24, label %11, !llvm.loop !153

24:                                               ; preds = %19
  %25 = icmp eq i8 %20, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 2) #12
  br label %27

27:                                               ; preds = %1, %24, %26
  %28 = phi i32 [ 1, %26 ], [ 0, %24 ], [ 0, %1 ]
  ret i32 %28
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @CustomData_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_free_elem(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_mesh_calc_edges_legacy(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %10 = load i32, ptr %9, align 8, !tbaa !95
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !113
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2, %26
  %15 = phi i32 [ %28, %26 ], [ 0, %2 ]
  %16 = phi i32 [ %29, %26 ], [ %10, %2 ]
  %17 = phi ptr [ %30, %26 ], [ %4, %2 ]
  %18 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !51
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !57
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 1, i32 3
  br label %26

26:                                               ; preds = %21, %14
  %27 = phi i32 [ 4, %14 ], [ %25, %21 ]
  %28 = add nuw nsw i32 %15, %27
  %29 = add nsw i32 %16, -1
  %30 = getelementptr inbounds %struct.MFace, ptr %17, i64 1
  %31 = icmp sgt i32 %16, 1
  br i1 %31, label %14, label %32, !llvm.loop !154

32:                                               ; preds = %26, %2
  %33 = phi i32 [ 0, %2 ], [ %28, %26 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %37 = tail call ptr %36(i64 noundef 0, ptr noundef nonnull @__func__.mesh_calc_edges_mdata) #12
  br label %253

38:                                               ; preds = %32
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %40 = sext i32 %33 to i64
  %41 = mul nsw i64 %40, 12
  %42 = tail call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.56) #12
  %43 = icmp sgt i32 %10, 0
  br i1 %43, label %44, label %112

44:                                               ; preds = %38, %107
  %45 = phi i32 [ %109, %107 ], [ %10, %38 ]
  %46 = phi ptr [ %108, %107 ], [ %42, %38 ]
  %47 = phi ptr [ %110, %107 ], [ %4, %38 ]
  %48 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 1
  %49 = load i32, ptr %47, align 4, !tbaa !55
  %50 = getelementptr inbounds %struct.MFace, ptr %47, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !56
  %52 = getelementptr inbounds %struct.MFace, ptr %47, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !57
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i8
  %56 = getelementptr inbounds %struct.MFace, ptr %47, i64 0, i32 5
  %57 = load i8, ptr %56, align 2, !tbaa !155
  %58 = and i8 %57, 1
  %59 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 0, i32 1
  %60 = tail call i32 @llvm.umin.i32(i32 %49, i32 %51)
  %61 = tail call i32 @llvm.umax.i32(i32 %49, i32 %51)
  store i32 %60, ptr %46, align 4, !tbaa !156
  store i32 %61, ptr %59, align 4, !tbaa !158
  %62 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 0, i32 2
  store i8 %55, ptr %62, align 4, !tbaa !159
  %63 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 0, i32 3
  store i8 %58, ptr %63, align 1, !tbaa !160
  %64 = getelementptr inbounds %struct.MFace, ptr %47, i64 0, i32 3
  %65 = load i32, ptr %64, align 4, !tbaa !51
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %44
  %68 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 2
  %69 = and i8 %57, 2
  %70 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 1, i32 1
  %71 = tail call i32 @llvm.umin.i32(i32 %51, i32 %53)
  %72 = tail call i32 @llvm.umax.i32(i32 %51, i32 %53)
  store i32 %71, ptr %48, align 4, !tbaa !156
  store i32 %72, ptr %70, align 4, !tbaa !158
  %73 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 1, i32 2
  store i8 0, ptr %73, align 4, !tbaa !159
  %74 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 1, i32 3
  store i8 %69, ptr %74, align 1, !tbaa !160
  %75 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 3
  %76 = and i8 %57, 4
  %77 = tail call i32 @llvm.umin.i32(i32 %53, i32 %65)
  %78 = tail call i32 @llvm.umax.i32(i32 %53, i32 %65)
  store i32 %77, ptr %68, align 4, !tbaa !156
  %79 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 2, i32 1
  store i32 %78, ptr %79, align 4, !tbaa !158
  %80 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 2, i32 2
  store i8 0, ptr %80, align 4, !tbaa !159
  %81 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 2, i32 3
  store i8 %76, ptr %81, align 1, !tbaa !160
  %82 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 4
  %83 = and i8 %57, 8
  %84 = tail call i32 @llvm.umin.i32(i32 %65, i32 %49)
  %85 = tail call i32 @llvm.umax.i32(i32 %65, i32 %49)
  store i32 %84, ptr %75, align 4, !tbaa !156
  br label %99

86:                                               ; preds = %44
  br i1 %54, label %107, label %87

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 2
  %89 = and i8 %57, 2
  %90 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 1, i32 1
  %91 = tail call i32 @llvm.umin.i32(i32 %51, i32 %53)
  %92 = tail call i32 @llvm.umax.i32(i32 %51, i32 %53)
  store i32 %91, ptr %48, align 4, !tbaa !156
  store i32 %92, ptr %90, align 4, !tbaa !158
  %93 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 1, i32 2
  store i8 0, ptr %93, align 4, !tbaa !159
  %94 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 1, i32 3
  store i8 %89, ptr %94, align 1, !tbaa !160
  %95 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 3
  %96 = and i8 %57, 4
  %97 = tail call i32 @llvm.umin.i32(i32 %53, i32 %49)
  %98 = tail call i32 @llvm.umax.i32(i32 %53, i32 %49)
  store i32 %97, ptr %88, align 4, !tbaa !156
  br label %99

99:                                               ; preds = %67, %87
  %100 = phi i64 [ 2, %87 ], [ 3, %67 ]
  %101 = phi i32 [ %98, %87 ], [ %85, %67 ]
  %102 = phi i8 [ %96, %87 ], [ %83, %67 ]
  %103 = phi ptr [ %95, %87 ], [ %82, %67 ]
  %104 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 %100, i32 1
  store i32 %101, ptr %104, align 4, !tbaa !158
  %105 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 %100, i32 2
  store i8 0, ptr %105, align 4, !tbaa !159
  %106 = getelementptr inbounds %struct.EdgeSort, ptr %46, i64 %100, i32 3
  store i8 %102, ptr %106, align 1, !tbaa !160
  br label %107

107:                                              ; preds = %99, %86
  %108 = phi ptr [ %48, %86 ], [ %103, %99 ]
  %109 = add nsw i32 %45, -1
  %110 = getelementptr inbounds %struct.MFace, ptr %47, i64 1
  %111 = icmp sgt i32 %45, 1
  br i1 %111, label %44, label %112, !llvm.loop !161

112:                                              ; preds = %107, %38
  tail call void @qsort(ptr noundef %42, i64 noundef %40, i64 noundef 12, ptr noundef nonnull @vergedgesort) #12
  %113 = icmp sgt i32 %33, 1
  br i1 %113, label %114, label %136

114:                                              ; preds = %112, %130
  %115 = phi i32 [ %131, %130 ], [ 0, %112 ]
  %116 = phi i32 [ %132, %130 ], [ %33, %112 ]
  %117 = phi ptr [ %119, %130 ], [ %42, %112 ]
  %118 = load i32, ptr %117, align 4, !tbaa !156
  %119 = getelementptr inbounds %struct.EdgeSort, ptr %117, i64 1
  %120 = load i32, ptr %119, align 4, !tbaa !156
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.EdgeSort, ptr %117, i64 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !158
  %125 = getelementptr inbounds %struct.EdgeSort, ptr %117, i64 1, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !158
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %130, label %128

128:                                              ; preds = %122, %114
  %129 = add i32 %115, 1
  br label %130

130:                                              ; preds = %128, %122
  %131 = phi i32 [ %129, %128 ], [ %115, %122 ]
  %132 = add nsw i32 %116, -1
  %133 = icmp sgt i32 %116, 2
  br i1 %133, label %114, label %134, !llvm.loop !162

134:                                              ; preds = %130
  %135 = add i32 %131, 1
  br label %136

136:                                              ; preds = %134, %112
  %137 = phi i32 [ 1, %112 ], [ %135, %134 ]
  %138 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %139 = zext i32 %137 to i64
  %140 = mul nuw nsw i64 %139, 12
  %141 = tail call ptr %138(i64 noundef %140, ptr noundef nonnull @__func__.mesh_calc_edges_mdata) #12
  %142 = icmp sgt i32 %33, 1
  br i1 %142, label %143, label %193

143:                                              ; preds = %136
  %144 = icmp eq i8 %1, 0
  br label %145

145:                                              ; preds = %143, %189
  %146 = phi i32 [ %33, %143 ], [ %191, %189 ]
  %147 = phi ptr [ %42, %143 ], [ %150, %189 ]
  %148 = phi ptr [ %141, %143 ], [ %190, %189 ]
  %149 = load i32, ptr %147, align 4, !tbaa !156
  %150 = getelementptr inbounds %struct.EdgeSort, ptr %147, i64 1
  %151 = load i32, ptr %150, align 4, !tbaa !156
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.EdgeSort, ptr %147, i64 0, i32 1
  %155 = load i32, ptr %154, align 4, !tbaa !158
  %156 = getelementptr inbounds %struct.EdgeSort, ptr %147, i64 1, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !158
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %183, label %159

159:                                              ; preds = %153, %145
  store i32 %149, ptr %148, align 4, !tbaa !44
  %160 = getelementptr inbounds %struct.EdgeSort, ptr %147, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !158
  %162 = getelementptr inbounds %struct.MEdge, ptr %148, i64 0, i32 1
  store i32 %161, ptr %162, align 4, !tbaa !47
  br i1 %144, label %167, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.EdgeSort, ptr %147, i64 0, i32 3
  %165 = load i8, ptr %164, align 1, !tbaa !160
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %163, %159
  %168 = getelementptr inbounds %struct.MEdge, ptr %148, i64 0, i32 4
  store i16 34, ptr %168, align 2, !tbaa !133
  br label %169

169:                                              ; preds = %167, %163
  %170 = getelementptr inbounds %struct.EdgeSort, ptr %147, i64 0, i32 2
  %171 = load i8, ptr %170, align 4, !tbaa !159
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.MEdge, ptr %148, i64 0, i32 4
  %175 = load i16, ptr %174, align 2, !tbaa !133
  %176 = or i16 %175, 128
  store i16 %176, ptr %174, align 2, !tbaa !133
  br label %177

177:                                              ; preds = %173, %169
  %178 = add i32 %149, 1
  %179 = icmp eq i32 %178, %161
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  store i32 %161, ptr %148, align 4, !tbaa !44
  store i32 %149, ptr %162, align 4, !tbaa !47
  br label %181

181:                                              ; preds = %180, %177
  %182 = getelementptr inbounds %struct.MEdge, ptr %148, i64 1
  br label %189

183:                                              ; preds = %153
  %184 = getelementptr inbounds %struct.EdgeSort, ptr %147, i64 0, i32 3
  %185 = load i8, ptr %184, align 1, !tbaa !160
  %186 = getelementptr inbounds %struct.EdgeSort, ptr %147, i64 1, i32 3
  %187 = load i8, ptr %186, align 1, !tbaa !160
  %188 = or i8 %187, %185
  store i8 %188, ptr %186, align 1, !tbaa !160
  br label %189

189:                                              ; preds = %183, %181
  %190 = phi ptr [ %182, %181 ], [ %148, %183 ]
  %191 = add nsw i32 %146, -1
  %192 = icmp sgt i32 %146, 2
  br i1 %192, label %145, label %193, !llvm.loop !163

193:                                              ; preds = %189, %136
  %194 = phi ptr [ %141, %136 ], [ %190, %189 ]
  %195 = phi ptr [ %42, %136 ], [ %150, %189 ]
  %196 = load i32, ptr %195, align 4, !tbaa !156
  store i32 %196, ptr %194, align 4, !tbaa !44
  %197 = getelementptr inbounds %struct.EdgeSort, ptr %195, i64 0, i32 1
  %198 = load i32, ptr %197, align 4, !tbaa !158
  %199 = getelementptr inbounds %struct.MEdge, ptr %194, i64 0, i32 1
  store i32 %198, ptr %199, align 4, !tbaa !47
  %200 = getelementptr inbounds %struct.MEdge, ptr %194, i64 0, i32 4
  store i16 2, ptr %200, align 2, !tbaa !133
  %201 = getelementptr inbounds %struct.EdgeSort, ptr %195, i64 0, i32 2
  %202 = load i8, ptr %201, align 4, !tbaa !159
  %203 = icmp eq i8 %202, 0
  %204 = select i1 %203, i16 34, i16 162
  store i16 %204, ptr %200, align 2, !tbaa !133
  %205 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %205(ptr noundef %42) #12
  %206 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.mesh_calc_edges_mdata, i32 noundef %137) #12
  %207 = icmp eq i32 %137, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %193
  %209 = zext i32 %137 to i64
  br label %212

210:                                              ; preds = %212, %193
  %211 = icmp sgt i32 %12, 0
  br i1 %211, label %222, label %252

212:                                              ; preds = %208, %212
  %213 = phi i64 [ 0, %208 ], [ %219, %212 ]
  %214 = phi ptr [ %141, %208 ], [ %220, %212 ]
  %215 = load i32, ptr %214, align 4, !tbaa !44
  %216 = getelementptr inbounds %struct.MEdge, ptr %214, i64 0, i32 1
  %217 = load i32, ptr %216, align 4, !tbaa !47
  %218 = inttoptr i64 %213 to ptr
  tail call void @BLI_edgehash_insert(ptr noundef %206, i32 noundef %215, i32 noundef %217, ptr noundef %218) #12
  %219 = add nuw nsw i64 %213, 1
  %220 = getelementptr inbounds %struct.MEdge, ptr %214, i64 1
  %221 = icmp eq i64 %219, %209
  br i1 %221, label %210, label %212, !llvm.loop !164

222:                                              ; preds = %210, %248
  %223 = phi ptr [ %250, %248 ], [ %8, %210 ]
  %224 = phi i32 [ %249, %248 ], [ 0, %210 ]
  %225 = getelementptr inbounds %struct.MPoly, ptr %223, i64 0, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !67
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %248, label %228

228:                                              ; preds = %222
  %229 = load i32, ptr %223, align 4, !tbaa !65
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.MLoop, ptr %6, i64 %230
  %232 = sext i32 %226 to i64
  %233 = getelementptr %struct.MLoop, ptr %231, i64 %232
  %234 = getelementptr %struct.MLoop, ptr %233, i64 -1
  br label %235

235:                                              ; preds = %228, %235
  %236 = phi i32 [ %239, %235 ], [ %226, %228 ]
  %237 = phi ptr [ %246, %235 ], [ %231, %228 ]
  %238 = phi ptr [ %237, %235 ], [ %234, %228 ]
  %239 = add nsw i32 %236, -1
  %240 = load i32, ptr %238, align 4, !tbaa !72
  %241 = load i32, ptr %237, align 4, !tbaa !72
  %242 = tail call ptr @BLI_edgehash_lookup(ptr noundef %206, i32 noundef %240, i32 noundef %241) #12
  %243 = ptrtoint ptr %242 to i64
  %244 = trunc i64 %243 to i32
  %245 = getelementptr inbounds %struct.MLoop, ptr %238, i64 0, i32 1
  store i32 %244, ptr %245, align 4, !tbaa !78
  %246 = getelementptr inbounds %struct.MLoop, ptr %237, i64 1
  %247 = icmp eq i32 %239, 0
  br i1 %247, label %248, label %235, !llvm.loop !165

248:                                              ; preds = %235, %222
  %249 = add nuw nsw i32 %224, 1
  %250 = getelementptr inbounds %struct.MPoly, ptr %223, i64 1
  %251 = icmp eq i32 %249, %12
  br i1 %251, label %252, label %222, !llvm.loop !166

252:                                              ; preds = %248, %210
  tail call void @BLI_edgehash_free(ptr noundef %206, ptr noundef null) #12
  br label %253

253:                                              ; preds = %35, %252
  %254 = phi ptr [ %141, %252 ], [ %37, %35 ]
  %255 = phi i32 [ %137, %252 ], [ 0, %35 ]
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  store ptr %254, ptr %258, align 8, !tbaa !120
  %259 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  store i32 0, ptr %259, align 4, !tbaa !107
  br label %298

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %262 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %261, i32 noundef 3, i32 noundef 0, ptr noundef %254, i32 noundef %255) #12
  %263 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  store ptr %262, ptr %263, align 8, !tbaa !120
  %264 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  store i32 %255, ptr %264, align 4, !tbaa !107
  %265 = load i32, ptr %9, align 8, !tbaa !95
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %291

267:                                              ; preds = %260
  %268 = load ptr, ptr %3, align 8, !tbaa !99
  %269 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  br label %270

270:                                              ; preds = %285, %267
  %271 = phi i32 [ 0, %267 ], [ %286, %285 ]
  %272 = phi i32 [ 0, %267 ], [ %287, %285 ]
  %273 = phi ptr [ %268, %267 ], [ %288, %285 ]
  %274 = getelementptr inbounds %struct.MFace, ptr %273, i64 0, i32 2
  %275 = load i32, ptr %274, align 4, !tbaa !57
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %285, label %277

277:                                              ; preds = %270
  %278 = icmp eq i32 %272, %271
  br i1 %278, label %283, label %279

279:                                              ; preds = %277
  %280 = load ptr, ptr %3, align 8, !tbaa !99
  %281 = sext i32 %271 to i64
  %282 = getelementptr inbounds %struct.MFace, ptr %280, i64 %281
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %282, ptr noundef nonnull align 4 dereferenceable(20) %273, i64 20, i1 false)
  tail call void @CustomData_copy_data(ptr noundef nonnull %269, ptr noundef nonnull %269, i32 noundef %272, i32 noundef %271, i32 noundef 1) #12
  br label %283

283:                                              ; preds = %279, %277
  %284 = add nsw i32 %271, 1
  br label %285

285:                                              ; preds = %283, %270
  %286 = phi i32 [ %284, %283 ], [ %271, %270 ]
  %287 = add nuw nsw i32 %272, 1
  %288 = getelementptr inbounds %struct.MFace, ptr %273, i64 1
  %289 = load i32, ptr %9, align 8, !tbaa !95
  %290 = icmp slt i32 %287, %289
  br i1 %290, label %270, label %291, !llvm.loop !100

291:                                              ; preds = %285, %260
  %292 = phi i32 [ 0, %260 ], [ %287, %285 ]
  %293 = phi i32 [ 0, %260 ], [ %286, %285 ]
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %298, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %297 = sub nsw i32 %292, %293
  tail call void @CustomData_free_elem(ptr noundef nonnull %296, i32 noundef %293, i32 noundef %297) #12
  store i32 %293, ptr %9, align 8, !tbaa !95
  br label %298

298:                                              ; preds = %295, %291, %257
  ret void
}

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BLI_edgehash_size(ptr noundef) local_unnamed_addr #2

declare void @CustomData_reset(ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_edgehashIterator_new(ptr noundef) local_unnamed_addr #2

declare void @BLI_edgehashIterator_step(ptr noundef) local_unnamed_addr #2

declare void @BLI_edgehashIterator_free(ptr noundef) local_unnamed_addr #2

declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_layertype_is_singleton(i32 noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_free_layer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @vergedgesort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !156
  %4 = load i32, ptr %1, align 4, !tbaa !156
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = icmp ult i32 %3, %4
  br i1 %7, label %17, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.EdgeSort, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !158
  %11 = getelementptr inbounds %struct.EdgeSort, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !158
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = icmp ult i32 %10, %12
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %14, %8, %6, %2
  %18 = phi i32 [ 1, %2 ], [ -1, %6 ], [ 1, %8 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nounwind }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"short", !36, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !41, !42}
!44 = !{!45, !46, i64 0}
!45 = !{!"MEdge", !46, i64 0, !46, i64 4, !36, i64 8, !36, i64 9, !39, i64 10}
!46 = !{!"int", !36, i64 0}
!47 = !{!45, !46, i64 4}
!48 = distinct !{!48, !41, !42}
!49 = !{!50, !50, i64 0}
!50 = !{!"any pointer", !36, i64 0}
!51 = !{!52, !46, i64 12}
!52 = !{!"MFace", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !39, i64 16, !36, i64 18, !36, i64 19}
!53 = !{!46, !46, i64 0}
!54 = distinct !{!54, !41, !42}
!55 = !{!52, !46, i64 0}
!56 = !{!52, !46, i64 4}
!57 = !{!52, !46, i64 8}
!58 = !{!59, !46, i64 32}
!59 = !{!"SortFace", !36, i64 0, !46, i64 32}
!60 = !{!36, !36, i64 0}
!61 = distinct !{!61, !41, !42}
!62 = distinct !{!62, !41, !42}
!63 = !{!64, !46, i64 16}
!64 = !{!"SortPoly", !50, i64 0, !46, i64 8, !46, i64 12, !46, i64 16, !36, i64 20}
!65 = !{!66, !46, i64 0}
!66 = !{!"MPoly", !46, i64 0, !46, i64 4, !39, i64 8, !36, i64 10, !36, i64 11}
!67 = !{!66, !46, i64 4}
!68 = !{!64, !36, i64 20}
!69 = !{!64, !50, i64 0}
!70 = !{!64, !46, i64 8}
!71 = !{!64, !46, i64 12}
!72 = !{!73, !46, i64 0}
!73 = !{!"MLoop", !46, i64 0, !46, i64 4}
!74 = !{!75, !36, i64 18}
!75 = !{!"MVert", !36, i64 0, !36, i64 12, !36, i64 18, !36, i64 19}
!76 = distinct !{!76, !41, !42}
!77 = distinct !{!77, !41, !42}
!78 = !{!73, !46, i64 4}
!79 = distinct !{!79, !41, !42}
!80 = distinct !{!80, !41, !42}
!81 = distinct !{!81, !41, !42}
!82 = distinct !{!82, !41, !42}
!83 = distinct !{!83, !41, !42}
!84 = distinct !{!84, !41, !42}
!85 = distinct !{!85, !41, !42}
!86 = distinct !{!86, !41, !42}
!87 = !{!88, !46, i64 8}
!88 = !{!"MDeformVert", !50, i64 0, !46, i64 8, !46, i64 12}
!89 = !{!88, !50, i64 0}
!90 = !{!91, !35, i64 4}
!91 = !{!"MDeformWeight", !46, i64 0, !35, i64 4}
!92 = !{!91, !46, i64 0}
!93 = distinct !{!93, !41, !42}
!94 = distinct !{!94, !41, !42}
!95 = !{!96, !46, i64 1288}
!96 = !{!"Mesh", !97, i64 0, !50, i64 120, !50, i64 128, !50, i64 136, !50, i64 144, !50, i64 152, !50, i64 160, !50, i64 168, !50, i64 176, !50, i64 184, !50, i64 192, !50, i64 200, !50, i64 208, !50, i64 216, !50, i64 224, !50, i64 232, !50, i64 240, !50, i64 248, !50, i64 256, !50, i64 264, !50, i64 272, !98, i64 280, !98, i64 480, !98, i64 680, !98, i64 880, !98, i64 1080, !46, i64 1280, !46, i64 1284, !46, i64 1288, !46, i64 1292, !46, i64 1296, !46, i64 1300, !46, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !46, i64 1344, !39, i64 1348, !39, i64 1350, !35, i64 1352, !46, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !39, i64 1366, !50, i64 1368}
!97 = !{!"ID", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !36, i64 32, !39, i64 98, !46, i64 100, !46, i64 104, !46, i64 108, !50, i64 112}
!98 = !{!"CustomData", !50, i64 0, !36, i64 8, !46, i64 172, !46, i64 176, !46, i64 180, !50, i64 184, !50, i64 192}
!99 = !{!96, !50, i64 208}
!100 = distinct !{!100, !41, !42}
!101 = !{!96, !50, i64 160}
!102 = !{!96, !46, i64 1292}
!103 = !{!104, !46, i64 0}
!104 = !{!"MSelect", !46, i64 0, !46, i64 4}
!105 = !{!104, !46, i64 4}
!106 = !{!96, !46, i64 1280}
!107 = !{!96, !46, i64 1284}
!108 = distinct !{!108, !41, !42}
!109 = !{!110, !110, i64 0}
!110 = !{!"long", !36, i64 0}
!111 = distinct !{!111, !41, !42}
!112 = !{!96, !46, i64 1300}
!113 = !{!96, !46, i64 1296}
!114 = !{!96, !50, i64 168}
!115 = !{!96, !50, i64 184}
!116 = distinct !{!116, !41, !42}
!117 = distinct !{!117, !41, !42}
!118 = distinct !{!118, !41, !42}
!119 = distinct !{!119, !41, !42}
!120 = !{!96, !50, i64 240}
!121 = distinct !{!121, !41, !42}
!122 = distinct !{!122, !41, !42}
!123 = distinct !{!123, !41, !42}
!124 = distinct !{!124, !41, !42}
!125 = distinct !{!125, !41, !42}
!126 = !{!127, !50, i64 8}
!127 = !{!"EdgeHashIterator", !50, i64 0, !50, i64 8, !46, i64 16}
!128 = !{!129, !50, i64 16}
!129 = !{!"_eh_Entry", !50, i64 0, !46, i64 8, !46, i64 12, !50, i64 16}
!130 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 1, !60, i64 9, i64 1, !60, i64 10, i64 2, !38}
!131 = !{!129, !46, i64 8}
!132 = !{!129, !46, i64 12}
!133 = !{!45, !39, i64 10}
!134 = distinct !{!134, !41, !42}
!135 = distinct !{!135, !41, !42}
!136 = distinct !{!136, !41, !42}
!137 = !{i64 0, i64 8, !49, i64 8, i64 164, !60, i64 172, i64 4, !53, i64 176, i64 4, !53, i64 180, i64 4, !53, i64 184, i64 8, !49, i64 192, i64 8, !49}
!138 = !{i8 0, i8 2}
!139 = !{!98, !46, i64 172}
!140 = !{!98, !50, i64 0}
!141 = !{!142, !46, i64 0}
!142 = !{!"CustomDataLayer", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !36, i64 32, !50, i64 96}
!143 = distinct !{!143, !41, !42}
!144 = !{!96, !50, i64 232}
!145 = !{!96, !50, i64 248}
!146 = !{!96, !50, i64 1080}
!147 = distinct !{!147, !41, !42}
!148 = !{!96, !50, i64 880}
!149 = distinct !{!149, !41, !42}
!150 = distinct !{!150, !41, !42}
!151 = !{!96, !39, i64 1366}
!152 = !{!66, !39, i64 8}
!153 = distinct !{!153, !41, !42}
!154 = distinct !{!154, !41, !42}
!155 = !{!52, !36, i64 18}
!156 = !{!157, !46, i64 0}
!157 = !{!"EdgeSort", !46, i64 0, !46, i64 4, !36, i64 8, !36, i64 9}
!158 = !{!157, !46, i64 4}
!159 = !{!157, !36, i64 8}
!160 = !{!157, !36, i64 9}
!161 = distinct !{!161, !41, !42}
!162 = distinct !{!162, !41, !42}
!163 = distinct !{!163, !41, !42}
!164 = distinct !{!164, !41, !42}
!165 = distinct !{!165, !41, !42}
!166 = distinct !{!166, !41, !42}
