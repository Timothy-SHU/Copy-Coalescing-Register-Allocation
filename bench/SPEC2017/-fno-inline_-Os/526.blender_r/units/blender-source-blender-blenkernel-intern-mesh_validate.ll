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
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.EdgeSort = type { i32, i32, i8, i8 }
%struct.EdgeHashIterator = type { ptr, ptr, i32 }
%struct._eh_Entry = type { ptr, i32, i32, ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_mesh_validate_arrays(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr nocapture noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11, i8 noundef zeroext %12, i8 noundef zeroext %13, ptr nocapture noundef writeonly %14) local_unnamed_addr #0 {
  %16 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.BKE_mesh_validate_arrays, i32 noundef %4) #18
  %17 = icmp eq i8 %12, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = icmp ne i32 %4, 0
  %20 = icmp eq i32 %10, 0
  %21 = or i1 %19, %20
  %22 = select i1 %21, i8 0, i8 %13
  br label %32

23:                                               ; preds = %15
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.BKE_mesh_validate_arrays, i32 noundef %2, i32 noundef %4, i32 noundef %8, i32 noundef %10) #19
  %25 = icmp ne i32 %4, 0
  %26 = icmp eq i32 %10, 0
  %27 = or i1 %25, %26
  %28 = or i1 %27, %17
  %29 = select i1 %27, i8 0, i8 %13
  br i1 %28, label %32, label %30

30:                                               ; preds = %23
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %10) #19
  br label %32

32:                                               ; preds = %18, %23, %30
  %33 = phi i1 [ %26, %23 ], [ %26, %30 ], [ %20, %18 ]
  %34 = phi i1 [ %25, %23 ], [ %25, %30 ], [ %19, %18 ]
  %35 = phi i8 [ %29, %23 ], [ %13, %30 ], [ %22, %18 ]
  %36 = phi i1 [ %27, %23 ], [ false, %30 ], [ %21, %18 ]
  %37 = zext i1 %36 to i8
  %38 = icmp eq i32 %2, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = icmp eq i8 %13, 0
  br label %41

41:                                               ; preds = %39, %83
  %42 = phi ptr [ %1, %39 ], [ %87, %83 ]
  %43 = phi i32 [ 0, %39 ], [ %86, %83 ]
  %44 = phi i8 [ %37, %39 ], [ %85, %83 ]
  %45 = phi i8 [ 0, %39 ], [ %84, %83 ]
  br label %52

46:                                               ; preds = %83, %32
  %47 = phi i8 [ 0, %32 ], [ %84, %83 ]
  %48 = phi i8 [ %37, %32 ], [ %85, %83 ]
  %49 = icmp eq i32 %4, 0
  br i1 %49, label %160, label %50

50:                                               ; preds = %46
  %51 = zext i32 %4 to i64
  br label %89

52:                                               ; preds = %41, %66
  %53 = phi i64 [ 0, %41 ], [ %73, %66 ]
  %54 = phi i8 [ %44, %41 ], [ %68, %66 ]
  %55 = phi i8 [ %45, %41 ], [ %67, %66 ]
  %56 = phi i8 [ 1, %41 ], [ %72, %66 ]
  %57 = getelementptr inbounds [3 x float], ptr %42, i64 0, i64 %53
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = tail call float @llvm.fabs.f32(float %58)
  %60 = fcmp ueq float %59, 0x7FF0000000000000
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  br i1 %17, label %64, label %62

62:                                               ; preds = %61
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %43) #19
  br label %64

64:                                               ; preds = %61, %62
  br i1 %40, label %66, label %65

65:                                               ; preds = %64
  tail call fastcc void @zero_v3(ptr noundef nonnull %42) #19
  br label %66

66:                                               ; preds = %64, %65, %52
  %67 = phi i8 [ %55, %52 ], [ 1, %65 ], [ %55, %64 ]
  %68 = phi i8 [ %54, %52 ], [ 0, %65 ], [ 0, %64 ]
  %69 = getelementptr inbounds %struct.MVert, ptr %42, i64 0, i32 1, i64 %53
  %70 = load i16, ptr %69, align 2, !tbaa !38
  %71 = icmp eq i16 %70, 0
  %72 = select i1 %71, i8 %56, i8 0
  %73 = add nuw nsw i64 %53, 1
  %74 = icmp eq i64 %73, 3
  br i1 %74, label %75, label %52, !llvm.loop !40

75:                                               ; preds = %66
  %76 = icmp eq i8 %72, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %75
  br i1 %17, label %80, label %78

78:                                               ; preds = %77
  %79 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %43) #19
  br label %80

80:                                               ; preds = %77, %78
  br i1 %40, label %83, label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.MVert, ptr %42, i64 0, i32 1, i64 2
  store i16 32767, ptr %82, align 4, !tbaa !38
  br label %83

83:                                               ; preds = %80, %81, %75
  %84 = phi i8 [ 1, %81 ], [ %67, %80 ], [ %67, %75 ]
  %85 = phi i8 [ 0, %81 ], [ 0, %80 ], [ %68, %75 ]
  %86 = add nuw i32 %43, 1
  %87 = getelementptr inbounds %struct.MVert, ptr %42, i64 1
  %88 = icmp eq i32 %86, %2
  br i1 %88, label %46, label %41, !llvm.loop !42

89:                                               ; preds = %50, %155
  %90 = phi i64 [ 0, %50 ], [ %157, %155 ]
  %91 = phi ptr [ %3, %50 ], [ %158, %155 ]
  %92 = phi i8 [ %48, %50 ], [ %148, %155 ]
  %93 = phi i8 [ 0, %50 ], [ %156, %155 ]
  %94 = load i32, ptr %91, align 4, !tbaa !43
  %95 = getelementptr inbounds %struct.MEdge, ptr %91, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !46
  %97 = icmp ne i32 %94, %96
  %98 = or i1 %17, %97
  %99 = select i1 %97, i8 0, i8 %13
  %100 = select i1 %97, i8 %92, i8 0
  br i1 %98, label %105, label %101

101:                                              ; preds = %89
  %102 = trunc i64 %90 to i32
  %103 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %102, i32 noundef %94) #19
  %104 = load i32, ptr %91, align 4, !tbaa !43
  br label %105

105:                                              ; preds = %89, %101
  %106 = phi i32 [ %94, %89 ], [ %104, %101 ]
  %107 = phi i8 [ %99, %89 ], [ %13, %101 ]
  %108 = phi i8 [ %100, %89 ], [ 0, %101 ]
  %109 = icmp ult i32 %106, %2
  %110 = or i1 %17, %109
  %111 = select i1 %109, i8 %107, i8 %13
  %112 = select i1 %109, i8 %108, i8 0
  br i1 %110, label %116, label %113

113:                                              ; preds = %105
  %114 = trunc i64 %90 to i32
  %115 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %114, i32 noundef %106) #19
  br label %116

116:                                              ; preds = %105, %113
  %117 = phi i8 [ %111, %105 ], [ %13, %113 ]
  %118 = phi i8 [ %112, %105 ], [ 0, %113 ]
  %119 = load i32, ptr %95, align 4, !tbaa !46
  %120 = icmp ult i32 %119, %2
  %121 = or i1 %17, %120
  %122 = select i1 %120, i8 %117, i8 %13
  %123 = select i1 %120, i8 %118, i8 0
  br i1 %121, label %128, label %124

124:                                              ; preds = %116
  %125 = trunc i64 %90 to i32
  %126 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %125, i32 noundef %119) #19
  %127 = load i32, ptr %95, align 4, !tbaa !46
  br label %128

128:                                              ; preds = %116, %124
  %129 = phi i32 [ %119, %116 ], [ %127, %124 ]
  %130 = phi i8 [ %122, %116 ], [ %13, %124 ]
  %131 = phi i8 [ %123, %116 ], [ 0, %124 ]
  %132 = load i32, ptr %91, align 4, !tbaa !43
  %133 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %132, i32 noundef %129) #18
  %134 = icmp eq i8 %133, 0
  %135 = or i1 %17, %134
  %136 = select i1 %134, i8 %130, i8 %13
  %137 = select i1 %134, i8 %131, i8 0
  br i1 %135, label %146, label %138

138:                                              ; preds = %128
  %139 = load i32, ptr %91, align 4, !tbaa !43
  %140 = load i32, ptr %95, align 4, !tbaa !46
  %141 = tail call ptr @BLI_edgehash_lookup(ptr noundef %16, i32 noundef %139, i32 noundef %140) #18
  %142 = ptrtoint ptr %141 to i64
  %143 = trunc i64 %142 to i32
  %144 = trunc i64 %90 to i32
  %145 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %144, i32 noundef %143) #19
  br label %146

146:                                              ; preds = %128, %138
  %147 = phi i8 [ %136, %128 ], [ %13, %138 ]
  %148 = phi i8 [ %137, %128 ], [ 0, %138 ]
  %149 = icmp eq i8 %147, 0
  %150 = load i32, ptr %91, align 4, !tbaa !43
  br i1 %149, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, ptr %95, align 4, !tbaa !46
  %153 = inttoptr i64 %90 to ptr
  tail call void @BLI_edgehash_insert(ptr noundef %16, i32 noundef %150, i32 noundef %152, ptr noundef %153) #18
  br label %155

154:                                              ; preds = %146
  store i32 %150, ptr %95, align 4, !tbaa !46
  br label %155

155:                                              ; preds = %154, %151
  %156 = phi i8 [ %93, %151 ], [ 1, %154 ]
  %157 = add nuw nsw i64 %90, 1
  %158 = getelementptr inbounds %struct.MEdge, ptr %91, i64 1
  %159 = icmp eq i64 %157, %51
  br i1 %159, label %160, label %89, !llvm.loop !47

160:                                              ; preds = %155, %46
  %161 = phi i8 [ 0, %46 ], [ %156, %155 ]
  %162 = phi i8 [ %48, %46 ], [ %148, %155 ]
  %163 = icmp eq ptr %5, null
  %164 = icmp ne ptr %9, null
  %165 = or i1 %163, %164
  br i1 %165, label %450, label %166

166:                                              ; preds = %160
  %167 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %168 = zext i32 %6 to i64
  %169 = mul nuw nsw i64 %168, 40
  %170 = tail call ptr %167(i64 noundef %169, ptr noundef nonnull @.str.8) #18
  br i1 %17, label %173, label %171

171:                                              ; preds = %166
  %172 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %173

173:                                              ; preds = %166, %171
  %174 = icmp eq i32 %6, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %173
  tail call void @qsort(ptr noundef %170, i64 noundef 0, i64 noundef 40, ptr noundef nonnull @search_face_cmp) #18
  br label %446

176:                                              ; preds = %173, %388
  %177 = phi i32 [ %393, %388 ], [ 0, %173 ]
  %178 = phi i8 [ %392, %388 ], [ 0, %173 ]
  %179 = phi i32 [ %389, %388 ], [ 0, %173 ]
  %180 = phi ptr [ %390, %388 ], [ %170, %173 ]
  %181 = phi i8 [ %391, %388 ], [ %35, %173 ]
  %182 = phi ptr [ %394, %388 ], [ %5, %173 ]
  %183 = getelementptr inbounds %struct.MFace, ptr %182, i64 0, i32 3
  %184 = load i32, ptr %183, align 4, !tbaa !50
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %185, i64 2, i64 3
  br label %187

187:                                              ; preds = %199, %176
  %188 = phi i64 [ %201, %199 ], [ %186, %176 ]
  %189 = phi i8 [ %200, %199 ], [ 0, %176 ]
  %190 = getelementptr inbounds i32, ptr %182, i64 %188
  %191 = load i32, ptr %190, align 4, !tbaa !52
  %192 = icmp ult i32 %191, %2
  %193 = or i1 %17, %192
  %194 = select i1 %192, i8 %189, i8 %13
  br i1 %193, label %199, label %195

195:                                              ; preds = %187
  %196 = trunc i64 %188 to i32
  %197 = add i32 %196, 1
  %198 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %177, i32 noundef %197, i32 noundef %191) #19
  br label %199

199:                                              ; preds = %187, %195
  %200 = phi i8 [ %194, %187 ], [ %13, %195 ]
  %201 = add nsw i64 %188, -1
  %202 = icmp eq i64 %188, 0
  br i1 %202, label %203, label %187, !llvm.loop !53

203:                                              ; preds = %199
  %204 = icmp eq i8 %200, 0
  br i1 %204, label %205, label %386

205:                                              ; preds = %203
  %206 = load i32, ptr %183, align 4, !tbaa !50
  %207 = icmp eq i32 %206, 0
  %208 = load i32, ptr %182, align 4, !tbaa !54
  %209 = getelementptr inbounds %struct.MFace, ptr %182, i64 0, i32 1
  %210 = load i32, ptr %209, align 4, !tbaa !55
  %211 = icmp ne i32 %208, %210
  %212 = or i1 %17, %211
  %213 = select i1 %211, i8 0, i8 %13
  br i1 %207, label %267, label %214

214:                                              ; preds = %205
  br i1 %212, label %218, label %215

215:                                              ; preds = %214
  %216 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %177, i32 noundef %208) #19
  %217 = load i32, ptr %182, align 4, !tbaa !54
  br label %218

218:                                              ; preds = %214, %215
  %219 = phi i32 [ %208, %214 ], [ %217, %215 ]
  %220 = phi i8 [ %213, %214 ], [ %13, %215 ]
  %221 = getelementptr inbounds %struct.MFace, ptr %182, i64 0, i32 2
  %222 = load i32, ptr %221, align 4, !tbaa !56
  %223 = icmp ne i32 %219, %222
  %224 = or i1 %17, %223
  %225 = select i1 %223, i8 %220, i8 %13
  br i1 %224, label %229, label %226

226:                                              ; preds = %218
  %227 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %177, i32 noundef %219) #19
  %228 = load i32, ptr %182, align 4, !tbaa !54
  br label %229

229:                                              ; preds = %218, %226
  %230 = phi i32 [ %219, %218 ], [ %228, %226 ]
  %231 = phi i8 [ %225, %218 ], [ %13, %226 ]
  %232 = load i32, ptr %183, align 4, !tbaa !50
  %233 = icmp ne i32 %230, %232
  %234 = or i1 %17, %233
  %235 = select i1 %233, i8 %231, i8 %13
  br i1 %234, label %238, label %236

236:                                              ; preds = %229
  %237 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %177, i32 noundef %230) #19
  br label %238

238:                                              ; preds = %229, %236
  %239 = phi i8 [ %235, %229 ], [ %13, %236 ]
  %240 = load i32, ptr %209, align 4, !tbaa !55
  %241 = load i32, ptr %221, align 4, !tbaa !56
  %242 = icmp ne i32 %240, %241
  %243 = or i1 %17, %242
  %244 = select i1 %242, i8 %239, i8 %13
  br i1 %243, label %248, label %245

245:                                              ; preds = %238
  %246 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %177, i32 noundef %240) #19
  %247 = load i32, ptr %209, align 4, !tbaa !55
  br label %248

248:                                              ; preds = %238, %245
  %249 = phi i32 [ %240, %238 ], [ %247, %245 ]
  %250 = phi i8 [ %244, %238 ], [ %13, %245 ]
  %251 = load i32, ptr %183, align 4, !tbaa !50
  %252 = icmp ne i32 %249, %251
  %253 = or i1 %17, %252
  %254 = select i1 %252, i8 %250, i8 %13
  br i1 %253, label %258, label %255

255:                                              ; preds = %248
  %256 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %177, i32 noundef %249) #19
  %257 = load i32, ptr %183, align 4, !tbaa !50
  br label %258

258:                                              ; preds = %248, %255
  %259 = phi i32 [ %251, %248 ], [ %257, %255 ]
  %260 = phi i8 [ %254, %248 ], [ %13, %255 ]
  %261 = load i32, ptr %221, align 4, !tbaa !56
  %262 = icmp ne i32 %261, %259
  %263 = or i1 %17, %262
  %264 = select i1 %262, i8 %260, i8 %13
  br i1 %263, label %291, label %265

265:                                              ; preds = %258
  %266 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %177, i32 noundef %259) #19
  br label %291

267:                                              ; preds = %205
  br i1 %212, label %271, label %268

268:                                              ; preds = %267
  %269 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %177, i32 noundef %208) #19
  %270 = load i32, ptr %182, align 4, !tbaa !54
  br label %271

271:                                              ; preds = %267, %268
  %272 = phi i32 [ %208, %267 ], [ %270, %268 ]
  %273 = phi i8 [ %213, %267 ], [ %13, %268 ]
  %274 = getelementptr inbounds %struct.MFace, ptr %182, i64 0, i32 2
  %275 = load i32, ptr %274, align 4, !tbaa !56
  %276 = icmp ne i32 %272, %275
  %277 = or i1 %17, %276
  %278 = select i1 %276, i8 %273, i8 %13
  br i1 %277, label %282, label %279

279:                                              ; preds = %271
  %280 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %177, i32 noundef %272) #19
  %281 = load i32, ptr %274, align 4, !tbaa !56
  br label %282

282:                                              ; preds = %271, %279
  %283 = phi i32 [ %275, %271 ], [ %281, %279 ]
  %284 = phi i8 [ %278, %271 ], [ %13, %279 ]
  %285 = load i32, ptr %209, align 4, !tbaa !55
  %286 = icmp ne i32 %285, %283
  %287 = or i1 %17, %286
  %288 = select i1 %286, i8 %284, i8 %13
  br i1 %287, label %291, label %289

289:                                              ; preds = %282
  %290 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %177, i32 noundef %283) #19
  br label %291

291:                                              ; preds = %282, %258, %289, %265
  %292 = phi i8 [ %264, %258 ], [ %288, %282 ], [ %13, %265 ], [ %13, %289 ]
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %294, label %386

294:                                              ; preds = %291
  br i1 %34, label %295, label %375

295:                                              ; preds = %294
  %296 = load i32, ptr %183, align 4, !tbaa !50
  %297 = icmp eq i32 %296, 0
  %298 = load i32, ptr %182, align 4, !tbaa !54
  %299 = getelementptr inbounds %struct.MFace, ptr %182, i64 0, i32 1
  %300 = load i32, ptr %299, align 4, !tbaa !55
  %301 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %298, i32 noundef %300) #18
  %302 = icmp ne i8 %301, 0
  %303 = or i1 %17, %302
  %304 = select i1 %302, i8 %181, i8 1
  br i1 %297, label %343, label %305

305:                                              ; preds = %295
  br i1 %303, label %310, label %306

306:                                              ; preds = %305
  %307 = load i32, ptr %182, align 4, !tbaa !54
  %308 = load i32, ptr %299, align 4, !tbaa !55
  %309 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %177, i32 noundef %307, i32 noundef %308) #19
  br label %310

310:                                              ; preds = %305, %306
  %311 = phi i8 [ %304, %305 ], [ 1, %306 ]
  %312 = load i32, ptr %299, align 4, !tbaa !55
  %313 = getelementptr inbounds %struct.MFace, ptr %182, i64 0, i32 2
  %314 = load i32, ptr %313, align 4, !tbaa !56
  %315 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %312, i32 noundef %314) #18
  %316 = icmp ne i8 %315, 0
  %317 = or i1 %17, %316
  %318 = select i1 %316, i8 %311, i8 1
  br i1 %317, label %323, label %319

319:                                              ; preds = %310
  %320 = load i32, ptr %299, align 4, !tbaa !55
  %321 = load i32, ptr %313, align 4, !tbaa !56
  %322 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %177, i32 noundef %320, i32 noundef %321) #19
  br label %323

323:                                              ; preds = %310, %319
  %324 = phi i8 [ %318, %310 ], [ 1, %319 ]
  %325 = load i32, ptr %313, align 4, !tbaa !56
  %326 = load i32, ptr %183, align 4, !tbaa !50
  %327 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %325, i32 noundef %326) #18
  %328 = icmp ne i8 %327, 0
  %329 = or i1 %17, %328
  %330 = select i1 %328, i8 %324, i8 1
  br i1 %329, label %335, label %331

331:                                              ; preds = %323
  %332 = load i32, ptr %313, align 4, !tbaa !56
  %333 = load i32, ptr %183, align 4, !tbaa !50
  %334 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %177, i32 noundef %332, i32 noundef %333) #19
  br label %335

335:                                              ; preds = %323, %331
  %336 = phi i8 [ %330, %323 ], [ 1, %331 ]
  %337 = load i32, ptr %183, align 4, !tbaa !50
  %338 = load i32, ptr %182, align 4, !tbaa !54
  %339 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %337, i32 noundef %338) #18
  %340 = icmp ne i8 %339, 0
  %341 = or i1 %17, %340
  %342 = select i1 %340, i8 %336, i8 1
  br i1 %341, label %375, label %369

343:                                              ; preds = %295
  br i1 %303, label %348, label %344

344:                                              ; preds = %343
  %345 = load i32, ptr %182, align 4, !tbaa !54
  %346 = load i32, ptr %299, align 4, !tbaa !55
  %347 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %177, i32 noundef %345, i32 noundef %346) #19
  br label %348

348:                                              ; preds = %343, %344
  %349 = phi i8 [ %304, %343 ], [ 1, %344 ]
  %350 = load i32, ptr %299, align 4, !tbaa !55
  %351 = getelementptr inbounds %struct.MFace, ptr %182, i64 0, i32 2
  %352 = load i32, ptr %351, align 4, !tbaa !56
  %353 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %350, i32 noundef %352) #18
  %354 = icmp ne i8 %353, 0
  %355 = or i1 %17, %354
  %356 = select i1 %354, i8 %349, i8 1
  br i1 %355, label %361, label %357

357:                                              ; preds = %348
  %358 = load i32, ptr %299, align 4, !tbaa !55
  %359 = load i32, ptr %351, align 4, !tbaa !56
  %360 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %177, i32 noundef %358, i32 noundef %359) #19
  br label %361

361:                                              ; preds = %348, %357
  %362 = phi i8 [ %356, %348 ], [ 1, %357 ]
  %363 = load i32, ptr %351, align 4, !tbaa !56
  %364 = load i32, ptr %182, align 4, !tbaa !54
  %365 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %363, i32 noundef %364) #18
  %366 = icmp ne i8 %365, 0
  %367 = or i1 %17, %366
  %368 = select i1 %366, i8 %362, i8 1
  br i1 %367, label %375, label %369

369:                                              ; preds = %361, %335
  %370 = phi ptr [ %183, %335 ], [ %351, %361 ]
  %371 = phi ptr [ @.str.20, %335 ], [ @.str.21, %361 ]
  %372 = load i32, ptr %370, align 4, !tbaa !52
  %373 = load i32, ptr %182, align 4, !tbaa !54
  %374 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %371, i32 noundef %177, i32 noundef %372, i32 noundef %373) #19
  br label %375

375:                                              ; preds = %369, %361, %335, %294
  %376 = phi i8 [ %342, %335 ], [ %368, %361 ], [ %181, %294 ], [ 1, %369 ]
  %377 = getelementptr inbounds %struct.SortFace, ptr %180, i64 0, i32 1
  store i32 %177, ptr %377, align 8, !tbaa !57
  %378 = load i32, ptr %183, align 4, !tbaa !50
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %381, label %380

380:                                              ; preds = %375
  tail call fastcc void @edge_store_from_mface_quad(ptr noundef nonnull %180, ptr noundef nonnull %182) #19
  br label %382

381:                                              ; preds = %375
  tail call fastcc void @edge_store_from_mface_tri(ptr noundef nonnull %180, ptr noundef nonnull %182) #19
  br label %382

382:                                              ; preds = %380, %381
  %383 = phi i64 [ 4, %380 ], [ 3, %381 ]
  tail call void @qsort(ptr noundef nonnull %180, i64 noundef %383, i64 noundef 8, ptr noundef nonnull @int64_cmp) #18
  %384 = add i32 %179, 1
  %385 = getelementptr inbounds %struct.SortFace, ptr %180, i64 1
  br label %388

386:                                              ; preds = %291, %203
  %387 = getelementptr inbounds %struct.MFace, ptr %182, i64 0, i32 2
  store i32 0, ptr %387, align 4, !tbaa !56
  br label %388

388:                                              ; preds = %382, %386
  %389 = phi i32 [ %179, %386 ], [ %384, %382 ]
  %390 = phi ptr [ %180, %386 ], [ %385, %382 ]
  %391 = phi i8 [ %181, %386 ], [ %376, %382 ]
  %392 = phi i8 [ 1, %386 ], [ %178, %382 ]
  %393 = add nuw i32 %177, 1
  %394 = getelementptr inbounds %struct.MFace, ptr %182, i64 1
  %395 = icmp eq i32 %393, %6
  br i1 %395, label %396, label %176, !llvm.loop !59

396:                                              ; preds = %388
  %397 = zext i32 %389 to i64
  tail call void @qsort(ptr noundef %170, i64 noundef %397, i64 noundef 40, ptr noundef nonnull @search_face_cmp) #18
  %398 = icmp ugt i32 %389, 1
  br i1 %398, label %399, label %446

399:                                              ; preds = %396
  %400 = icmp eq i8 %13, 0
  br label %401

401:                                              ; preds = %399, %441
  %402 = phi i32 [ 1, %399 ], [ %444, %441 ]
  %403 = phi i8 [ %392, %399 ], [ %443, %441 ]
  %404 = phi ptr [ %170, %399 ], [ %442, %441 ]
  %405 = phi ptr [ %170, %399 ], [ %406, %441 ]
  %406 = getelementptr inbounds %struct.SortFace, ptr %405, i64 1
  %407 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %406, ptr noundef nonnull dereferenceable(32) %404, i64 32)
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %441

409:                                              ; preds = %401
  %410 = getelementptr inbounds %struct.SortFace, ptr %405, i64 1, i32 1
  %411 = load i32, ptr %410, align 8, !tbaa !57
  %412 = zext i32 %411 to i64
  br i1 %17, label %438, label %413

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.MFace, ptr %5, i64 %412
  %415 = getelementptr inbounds %struct.SortFace, ptr %404, i64 0, i32 1
  %416 = load i32, ptr %415, align 8, !tbaa !57
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds %struct.MFace, ptr %5, i64 %417
  %419 = getelementptr inbounds %struct.MFace, ptr %5, i64 %412, i32 3
  %420 = load i32, ptr %419, align 4, !tbaa !50
  %421 = icmp eq i32 %420, 0
  %422 = load i32, ptr %414, align 4, !tbaa !54
  %423 = getelementptr inbounds %struct.MFace, ptr %5, i64 %412, i32 1
  %424 = load i32, ptr %423, align 4, !tbaa !55
  %425 = getelementptr inbounds %struct.MFace, ptr %5, i64 %412, i32 2
  %426 = load i32, ptr %425, align 4, !tbaa !56
  %427 = load i32, ptr %418, align 4, !tbaa !54
  %428 = getelementptr inbounds %struct.MFace, ptr %5, i64 %417, i32 1
  %429 = load i32, ptr %428, align 4, !tbaa !55
  %430 = getelementptr inbounds %struct.MFace, ptr %5, i64 %417, i32 2
  %431 = load i32, ptr %430, align 4, !tbaa !56
  br i1 %421, label %436, label %432

432:                                              ; preds = %413
  %433 = getelementptr inbounds %struct.MFace, ptr %5, i64 %417, i32 3
  %434 = load i32, ptr %433, align 4, !tbaa !50
  %435 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %411, i32 noundef %416, i32 noundef %422, i32 noundef %424, i32 noundef %426, i32 noundef %420, i32 noundef %427, i32 noundef %429, i32 noundef %431, i32 noundef %434) #19
  br label %438

436:                                              ; preds = %413
  %437 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %411, i32 noundef %416, i32 noundef %422, i32 noundef %424, i32 noundef %426, i32 noundef %427, i32 noundef %429, i32 noundef %431) #19
  br label %438

438:                                              ; preds = %409, %436, %432
  br i1 %400, label %441, label %439

439:                                              ; preds = %438
  %440 = getelementptr inbounds %struct.MFace, ptr %5, i64 %412, i32 2
  store i32 0, ptr %440, align 4, !tbaa !56
  br label %441

441:                                              ; preds = %401, %439, %438
  %442 = phi ptr [ %404, %439 ], [ %404, %438 ], [ %406, %401 ]
  %443 = phi i8 [ 1, %439 ], [ %403, %438 ], [ %403, %401 ]
  %444 = add nuw i32 %402, 1
  %445 = icmp eq i32 %444, %389
  br i1 %445, label %446, label %401, !llvm.loop !60

446:                                              ; preds = %441, %175, %396
  %447 = phi i8 [ %391, %396 ], [ %35, %175 ], [ %391, %441 ]
  %448 = phi i8 [ %392, %396 ], [ 0, %175 ], [ %443, %441 ]
  %449 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %449(ptr noundef %170) #18
  br label %450

450:                                              ; preds = %446, %160
  %451 = phi i8 [ %35, %160 ], [ %447, %446 ]
  %452 = phi i8 [ 0, %160 ], [ %448, %446 ]
  %453 = phi i8 [ %162, %160 ], [ 0, %446 ]
  %454 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %455 = zext i32 %10 to i64
  %456 = mul nuw nsw i64 %455, 24
  %457 = tail call ptr %454(i64 noundef %456, ptr noundef nonnull @.str.24) #18
  br i1 %33, label %726, label %458

458:                                              ; preds = %450
  %459 = icmp eq i8 %13, 0
  %460 = add nsw i32 %8, -1
  br label %461

461:                                              ; preds = %458, %719
  %462 = phi ptr [ %9, %458 ], [ %723, %719 ]
  %463 = phi i32 [ 0, %458 ], [ %722, %719 ]
  %464 = phi i8 [ %453, %458 ], [ %721, %719 ]
  %465 = phi ptr [ %457, %458 ], [ %724, %719 ]
  %466 = phi i8 [ %451, %458 ], [ %720, %719 ]
  %467 = getelementptr inbounds %struct.SortPoly, ptr %465, i64 0, i32 3
  store i32 %463, ptr %467, align 8, !tbaa !61
  %468 = load i32, ptr %462, align 4, !tbaa !63
  %469 = icmp slt i32 %468, 0
  br i1 %469, label %474, label %470

470:                                              ; preds = %461
  %471 = getelementptr inbounds %struct.MPoly, ptr %462, i64 0, i32 1
  %472 = load i32, ptr %471, align 4, !tbaa !65
  %473 = icmp slt i32 %472, 3
  br i1 %473, label %474, label %481

474:                                              ; preds = %470, %461
  br i1 %17, label %479, label %475

475:                                              ; preds = %474
  %476 = getelementptr inbounds %struct.MPoly, ptr %462, i64 0, i32 1
  %477 = load i32, ptr %476, align 4, !tbaa !65
  %478 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %463, i32 noundef %468, i32 noundef %477) #19
  br label %479

479:                                              ; preds = %474, %475
  %480 = getelementptr inbounds %struct.SortPoly, ptr %465, i64 0, i32 4
  br label %716

481:                                              ; preds = %470
  %482 = add nuw nsw i32 %472, %468
  %483 = icmp ugt i32 %482, %8
  br i1 %483, label %484, label %490

484:                                              ; preds = %481
  br i1 %17, label %488, label %485

485:                                              ; preds = %484
  %486 = add nsw i32 %482, -1
  %487 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %463, i32 noundef %468, i32 noundef %486, i32 noundef %460) #19
  br label %488

488:                                              ; preds = %484, %485
  %489 = getelementptr inbounds %struct.SortPoly, ptr %465, i64 0, i32 4
  br label %716

490:                                              ; preds = %481
  %491 = getelementptr inbounds %struct.SortPoly, ptr %465, i64 0, i32 4
  store i8 0, ptr %491, align 4, !tbaa !66
  %492 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %493 = zext nneg i32 %472 to i64
  %494 = shl nuw nsw i64 %493, 2
  %495 = tail call ptr %492(i64 noundef %494, ptr noundef nonnull @.str.27) #18
  store ptr %495, ptr %465, align 8, !tbaa !67
  %496 = load i32, ptr %471, align 4, !tbaa !65
  %497 = getelementptr inbounds %struct.SortPoly, ptr %465, i64 0, i32 1
  store i32 %496, ptr %497, align 8, !tbaa !68
  %498 = load i32, ptr %462, align 4, !tbaa !63
  %499 = getelementptr inbounds %struct.SortPoly, ptr %465, i64 0, i32 2
  store i32 %498, ptr %499, align 4, !tbaa !69
  %500 = icmp eq i32 %496, 0
  br i1 %500, label %535, label %501

501:                                              ; preds = %490
  %502 = sext i32 %498 to i64
  %503 = getelementptr inbounds %struct.MLoop, ptr %7, i64 %502
  br label %504

504:                                              ; preds = %501, %524
  %505 = phi ptr [ %528, %524 ], [ %503, %501 ]
  %506 = phi i32 [ %527, %524 ], [ 0, %501 ]
  %507 = phi ptr [ %529, %524 ], [ %495, %501 ]
  %508 = phi i8 [ %526, %524 ], [ %464, %501 ]
  %509 = load i32, ptr %505, align 4, !tbaa !70
  %510 = icmp ult i32 %509, %2
  br i1 %510, label %519, label %511

511:                                              ; preds = %504
  br i1 %17, label %517, label %512

512:                                              ; preds = %511
  %513 = load i32, ptr %499, align 4, !tbaa !69
  %514 = add i32 %513, %506
  %515 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %514, i32 noundef %509) #19
  %516 = load i32, ptr %505, align 4, !tbaa !70
  br label %517

517:                                              ; preds = %511, %512
  %518 = phi i32 [ %509, %511 ], [ %516, %512 ]
  store i8 1, ptr %491, align 4, !tbaa !66
  br label %524

519:                                              ; preds = %504
  %520 = zext i32 %509 to i64
  %521 = getelementptr inbounds %struct.MVert, ptr %1, i64 %520, i32 2
  %522 = load i8, ptr %521, align 2, !tbaa !72
  %523 = or i8 %522, 4
  store i8 %523, ptr %521, align 2, !tbaa !72
  br label %524

524:                                              ; preds = %519, %517
  %525 = phi i32 [ %518, %517 ], [ %509, %519 ]
  %526 = phi i8 [ 0, %517 ], [ %508, %519 ]
  store i32 %525, ptr %507, align 4, !tbaa !52
  %527 = add nuw i32 %506, 1
  %528 = getelementptr inbounds %struct.MLoop, ptr %505, i64 1
  %529 = getelementptr inbounds i32, ptr %507, i64 1
  %530 = load i32, ptr %471, align 4, !tbaa !65
  %531 = icmp ult i32 %527, %530
  br i1 %531, label %504, label %532, !llvm.loop !74

532:                                              ; preds = %524
  %533 = load i8, ptr %491, align 4, !tbaa !66
  %534 = icmp eq i8 %533, 0
  br i1 %534, label %538, label %719

535:                                              ; preds = %490
  %536 = load i8, ptr %491, align 4, !tbaa !66
  %537 = icmp eq i8 %536, 0
  br i1 %537, label %666, label %719

538:                                              ; preds = %532
  %539 = icmp eq i32 %530, 0
  br i1 %539, label %666, label %540

540:                                              ; preds = %538
  %541 = load ptr, ptr %465, align 8, !tbaa !67
  br label %542

542:                                              ; preds = %540, %567
  %543 = phi i32 [ %569, %567 ], [ %530, %540 ]
  %544 = phi i8 [ %570, %567 ], [ 0, %540 ]
  %545 = phi i32 [ %571, %567 ], [ %530, %540 ]
  %546 = phi i32 [ %576, %567 ], [ 0, %540 ]
  %547 = phi ptr [ %577, %567 ], [ %541, %540 ]
  %548 = phi i8 [ %573, %567 ], [ %526, %540 ]
  %549 = load i32, ptr %547, align 4, !tbaa !52
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.MVert, ptr %1, i64 %550, i32 2
  %552 = load i8, ptr %551, align 2, !tbaa !72
  %553 = and i8 %552, 4
  %554 = icmp eq i8 %553, 0
  br i1 %554, label %555, label %567

555:                                              ; preds = %542
  br i1 %17, label %563, label %556

556:                                              ; preds = %555
  %557 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %463, i32 noundef %546) #19
  %558 = load i32, ptr %547, align 4, !tbaa !52
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.MVert, ptr %1, i64 %559, i32 2
  %561 = load i8, ptr %560, align 2, !tbaa !72
  %562 = load i32, ptr %471, align 4, !tbaa !65
  br label %563

563:                                              ; preds = %555, %556
  %564 = phi i64 [ %550, %555 ], [ %559, %556 ]
  %565 = phi i32 [ %543, %555 ], [ %562, %556 ]
  %566 = phi i8 [ %552, %555 ], [ %561, %556 ]
  store i8 1, ptr %491, align 4, !tbaa !66
  br label %567

567:                                              ; preds = %563, %542
  %568 = phi i64 [ %564, %563 ], [ %550, %542 ]
  %569 = phi i32 [ %565, %563 ], [ %543, %542 ]
  %570 = phi i8 [ 1, %563 ], [ %544, %542 ]
  %571 = phi i32 [ %565, %563 ], [ %545, %542 ]
  %572 = phi i8 [ %566, %563 ], [ %552, %542 ]
  %573 = phi i8 [ 0, %563 ], [ %548, %542 ]
  %574 = getelementptr inbounds %struct.MVert, ptr %1, i64 %568, i32 2
  %575 = and i8 %572, -5
  store i8 %575, ptr %574, align 2, !tbaa !72
  %576 = add nuw i32 %546, 1
  %577 = getelementptr inbounds i32, ptr %547, i64 1
  %578 = icmp ult i32 %576, %571
  br i1 %578, label %542, label %579, !llvm.loop !75

579:                                              ; preds = %567
  %580 = icmp eq i8 %570, 0
  br i1 %580, label %581, label %719

581:                                              ; preds = %579
  %582 = icmp eq i32 %571, 0
  br i1 %582, label %666, label %583

583:                                              ; preds = %581
  %584 = load i32, ptr %499, align 4, !tbaa !69
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds %struct.MLoop, ptr %7, i64 %585
  br label %587

587:                                              ; preds = %583, %657
  %588 = phi i32 [ %661, %657 ], [ %571, %583 ]
  %589 = phi ptr [ %660, %657 ], [ %586, %583 ]
  %590 = phi i32 [ %595, %657 ], [ 0, %583 ]
  %591 = phi i8 [ %659, %657 ], [ %573, %583 ]
  %592 = phi i8 [ %658, %657 ], [ %466, %583 ]
  %593 = load i32, ptr %589, align 4, !tbaa !70
  %594 = load i32, ptr %499, align 4, !tbaa !69
  %595 = add nuw i32 %590, 1
  %596 = icmp eq i32 %595, %588
  %597 = select i1 %596, i32 0, i32 %595
  %598 = add i32 %594, %597
  %599 = zext i32 %598 to i64
  %600 = getelementptr inbounds %struct.MLoop, ptr %7, i64 %599
  %601 = load i32, ptr %600, align 4, !tbaa !70
  %602 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %16, i32 noundef %593, i32 noundef %601) #18
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %604, label %610

604:                                              ; preds = %587
  br i1 %17, label %608, label %605

605:                                              ; preds = %604
  %606 = load i32, ptr %467, align 8, !tbaa !61
  %607 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %606, i32 noundef %593, i32 noundef %601) #19
  br label %608

608:                                              ; preds = %604, %605
  br i1 %459, label %609, label %657

609:                                              ; preds = %608
  store i8 1, ptr %491, align 4, !tbaa !66
  br label %657

610:                                              ; preds = %587
  %611 = getelementptr inbounds %struct.MLoop, ptr %589, i64 0, i32 1
  %612 = load i32, ptr %611, align 4, !tbaa !76
  %613 = icmp ult i32 %612, %4
  br i1 %613, label %629, label %614

614:                                              ; preds = %610
  br i1 %459, label %623, label %615

615:                                              ; preds = %614
  %616 = tail call ptr @BLI_edgehash_lookup(ptr noundef %16, i32 noundef %593, i32 noundef %601) #18
  %617 = ptrtoint ptr %616 to i64
  %618 = trunc i64 %617 to i32
  store i32 %618, ptr %611, align 4, !tbaa !76
  br i1 %17, label %657, label %619

619:                                              ; preds = %615
  %620 = load i32, ptr %499, align 4, !tbaa !69
  %621 = add i32 %620, %590
  %622 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %621, i32 noundef %612, i32 noundef %618) #19
  br label %657

623:                                              ; preds = %614
  br i1 %17, label %628, label %624

624:                                              ; preds = %623
  %625 = load i32, ptr %499, align 4, !tbaa !69
  %626 = add i32 %625, %590
  %627 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %626, i32 noundef %612) #19
  br label %628

628:                                              ; preds = %623, %624
  store i8 1, ptr %491, align 4, !tbaa !66
  br label %657

629:                                              ; preds = %610
  %630 = zext i32 %612 to i64
  %631 = getelementptr inbounds %struct.MEdge, ptr %3, i64 %630
  %632 = getelementptr inbounds %struct.MEdge, ptr %3, i64 %630, i32 1
  %633 = load i32, ptr %632, align 4, !tbaa !46
  %634 = load i32, ptr %631, align 4, !tbaa !43
  %635 = icmp eq i32 %633, %634
  br i1 %635, label %644, label %636

636:                                              ; preds = %629
  %637 = icmp eq i32 %634, %593
  %638 = icmp eq i32 %633, %601
  %639 = and i1 %638, %637
  br i1 %639, label %657, label %640

640:                                              ; preds = %636
  %641 = icmp eq i32 %634, %601
  %642 = icmp eq i32 %633, %593
  %643 = and i1 %642, %641
  br i1 %643, label %657, label %644

644:                                              ; preds = %640, %629
  br i1 %459, label %652, label %645

645:                                              ; preds = %644
  %646 = tail call ptr @BLI_edgehash_lookup(ptr noundef %16, i32 noundef %593, i32 noundef %601) #18
  %647 = ptrtoint ptr %646 to i64
  %648 = trunc i64 %647 to i32
  store i32 %648, ptr %611, align 4, !tbaa !76
  br i1 %17, label %657, label %649

649:                                              ; preds = %645
  %650 = load i32, ptr %467, align 8, !tbaa !61
  %651 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %650, i32 noundef %612, i32 noundef %648) #19
  br label %657

652:                                              ; preds = %644
  br i1 %17, label %656, label %653

653:                                              ; preds = %652
  %654 = load i32, ptr %467, align 8, !tbaa !61
  %655 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %654, i32 noundef %612) #19
  br label %656

656:                                              ; preds = %652, %653
  store i8 1, ptr %491, align 4, !tbaa !66
  br label %657

657:                                              ; preds = %640, %649, %645, %636, %619, %615, %608, %609, %656, %628
  %658 = phi i8 [ %592, %628 ], [ %592, %656 ], [ %592, %609 ], [ 1, %608 ], [ %592, %615 ], [ %592, %619 ], [ %592, %636 ], [ %592, %645 ], [ %592, %649 ], [ %592, %640 ]
  %659 = phi i8 [ 0, %628 ], [ 0, %656 ], [ 0, %609 ], [ 0, %608 ], [ 0, %615 ], [ 0, %619 ], [ %591, %636 ], [ 0, %645 ], [ 0, %649 ], [ %591, %640 ]
  %660 = getelementptr inbounds %struct.MLoop, ptr %589, i64 1
  %661 = load i32, ptr %471, align 4, !tbaa !65
  %662 = icmp ult i32 %595, %661
  br i1 %662, label %587, label %663, !llvm.loop !77

663:                                              ; preds = %657
  %664 = load i8, ptr %491, align 4, !tbaa !66
  %665 = icmp eq i8 %664, 0
  br i1 %665, label %666, label %719

666:                                              ; preds = %538, %535, %581, %663
  %667 = phi i8 [ %659, %663 ], [ %573, %581 ], [ %526, %538 ], [ %464, %535 ]
  %668 = phi i8 [ %658, %663 ], [ %466, %581 ], [ %466, %538 ], [ %466, %535 ]
  %669 = load ptr, ptr %465, align 8, !tbaa !67
  %670 = load i32, ptr %497, align 8, !tbaa !68
  %671 = zext i32 %670 to i64
  tail call void @qsort(ptr noundef %669, i64 noundef %671, i64 noundef 4, ptr noundef nonnull @int_cmp) #18
  %672 = getelementptr inbounds i32, ptr %669, i64 1
  %673 = add i32 %670, -1
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %701, label %675

675:                                              ; preds = %666, %695
  %676 = phi i32 [ %699, %695 ], [ %673, %666 ]
  %677 = phi ptr [ %698, %695 ], [ %672, %666 ]
  %678 = phi ptr [ %697, %695 ], [ %669, %666 ]
  %679 = phi i8 [ %696, %695 ], [ %667, %666 ]
  %680 = load i32, ptr %677, align 4, !tbaa !52
  %681 = load i32, ptr %678, align 4, !tbaa !52
  %682 = icmp eq i32 %680, %681
  br i1 %682, label %695, label %683

683:                                              ; preds = %675
  %684 = ptrtoint ptr %677 to i64
  %685 = ptrtoint ptr %678 to i64
  %686 = sub i64 %684, %685
  %687 = lshr exact i64 %686, 2
  %688 = trunc i64 %687 to i32
  %689 = icmp sgt i32 %688, 1
  br i1 %689, label %690, label %695

690:                                              ; preds = %683
  br i1 %17, label %694, label %691

691:                                              ; preds = %690
  %692 = load i32, ptr %467, align 8, !tbaa !61
  %693 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %692, i32 noundef %681, i32 noundef %688) #19
  br label %694

694:                                              ; preds = %690, %691
  store i8 1, ptr %491, align 4, !tbaa !66
  br label %695

695:                                              ; preds = %683, %694, %675
  %696 = phi i8 [ %679, %675 ], [ 0, %694 ], [ %679, %683 ]
  %697 = phi ptr [ %678, %675 ], [ %677, %694 ], [ %677, %683 ]
  %698 = getelementptr inbounds i32, ptr %677, i64 1
  %699 = add i32 %676, -1
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %701, label %675, !llvm.loop !78

701:                                              ; preds = %695, %666
  %702 = phi i8 [ %667, %666 ], [ %696, %695 ]
  %703 = phi ptr [ %669, %666 ], [ %697, %695 ]
  %704 = phi ptr [ %672, %666 ], [ %698, %695 ]
  %705 = ptrtoint ptr %704 to i64
  %706 = ptrtoint ptr %703 to i64
  %707 = sub i64 %705, %706
  %708 = ashr exact i64 %707, 2
  %709 = icmp sgt i64 %708, 1
  br i1 %709, label %710, label %719

710:                                              ; preds = %701
  br i1 %17, label %716, label %711

711:                                              ; preds = %710
  %712 = load i32, ptr %467, align 8, !tbaa !61
  %713 = load i32, ptr %703, align 4, !tbaa !52
  %714 = trunc i64 %708 to i32
  %715 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %712, i32 noundef %713, i32 noundef %714) #19
  br label %716

716:                                              ; preds = %711, %710, %488, %479
  %717 = phi ptr [ %480, %479 ], [ %489, %488 ], [ %491, %710 ], [ %491, %711 ]
  %718 = phi i8 [ %466, %479 ], [ %466, %488 ], [ %668, %710 ], [ %668, %711 ]
  store i8 1, ptr %717, align 4, !tbaa !66
  br label %719

719:                                              ; preds = %716, %535, %532, %579, %701, %663
  %720 = phi i8 [ %466, %579 ], [ %668, %701 ], [ %658, %663 ], [ %466, %532 ], [ %466, %535 ], [ %718, %716 ]
  %721 = phi i8 [ %573, %579 ], [ %702, %701 ], [ %659, %663 ], [ %526, %532 ], [ %464, %535 ], [ 0, %716 ]
  %722 = add nuw i32 %463, 1
  %723 = getelementptr inbounds %struct.MPoly, ptr %462, i64 1
  %724 = getelementptr inbounds %struct.SortPoly, ptr %465, i64 1
  %725 = icmp eq i32 %722, %10
  br i1 %725, label %726, label %461, !llvm.loop !79

726:                                              ; preds = %719, %450
  %727 = phi i8 [ %451, %450 ], [ %720, %719 ]
  %728 = phi i8 [ %453, %450 ], [ %721, %719 ]
  tail call void @qsort(ptr noundef %457, i64 noundef %455, i64 noundef 24, ptr noundef nonnull @search_poly_cmp) #18
  %729 = icmp ugt i32 %10, 1
  br i1 %729, label %730, label %779

730:                                              ; preds = %726, %774
  %731 = phi i32 [ %777, %774 ], [ 1, %726 ]
  %732 = phi i8 [ %776, %774 ], [ %728, %726 ]
  %733 = phi ptr [ %735, %774 ], [ %457, %726 ]
  %734 = phi ptr [ %775, %774 ], [ %457, %726 ]
  %735 = getelementptr inbounds %struct.SortPoly, ptr %733, i64 1
  %736 = getelementptr inbounds %struct.SortPoly, ptr %733, i64 1, i32 1
  %737 = load i32, ptr %736, align 8, !tbaa !68
  %738 = load ptr, ptr %735, align 8, !tbaa !67
  %739 = load ptr, ptr %734, align 8, !tbaa !67
  %740 = getelementptr inbounds %struct.SortPoly, ptr %733, i64 1, i32 4
  %741 = load i8, ptr %740, align 4, !tbaa !66
  %742 = icmp eq i8 %741, 0
  br i1 %742, label %743, label %779

743:                                              ; preds = %730
  %744 = getelementptr inbounds %struct.SortPoly, ptr %734, i64 0, i32 1
  %745 = load i32, ptr %744, align 8, !tbaa !68
  %746 = icmp eq i32 %737, %745
  br i1 %746, label %747, label %774

747:                                              ; preds = %743
  %748 = sext i32 %737 to i64
  %749 = shl nsw i64 %748, 2
  %750 = tail call i32 @bcmp(ptr %738, ptr %739, i64 %749)
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %774

752:                                              ; preds = %747
  br i1 %17, label %773, label %753

753:                                              ; preds = %752
  %754 = getelementptr inbounds %struct.SortPoly, ptr %734, i64 0, i32 3
  %755 = load i32, ptr %754, align 8, !tbaa !61
  %756 = getelementptr inbounds %struct.SortPoly, ptr %733, i64 1, i32 3
  %757 = load i32, ptr %756, align 8, !tbaa !61
  %758 = load i32, ptr %738, align 4, !tbaa !52
  %759 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %755, i32 noundef %757, i32 noundef %758) #19
  %760 = icmp ugt i32 %737, 1
  br i1 %760, label %761, label %770

761:                                              ; preds = %753
  %762 = zext i32 %737 to i64
  br label %763

763:                                              ; preds = %761, %763
  %764 = phi i64 [ 1, %761 ], [ %768, %763 ]
  %765 = getelementptr inbounds i32, ptr %738, i64 %764
  %766 = load i32, ptr %765, align 4, !tbaa !52
  %767 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %766) #19
  %768 = add nuw nsw i64 %764, 1
  %769 = icmp eq i64 %768, %762
  br i1 %769, label %770, label %763, !llvm.loop !80

770:                                              ; preds = %763, %753
  %771 = load i32, ptr %756, align 8, !tbaa !61
  %772 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %771) #19
  br label %773

773:                                              ; preds = %752, %770
  store i8 1, ptr %740, align 4, !tbaa !66
  br label %774

774:                                              ; preds = %743, %747, %773
  %775 = phi ptr [ %735, %743 ], [ %735, %747 ], [ %734, %773 ]
  %776 = phi i8 [ %732, %743 ], [ %732, %747 ], [ 0, %773 ]
  %777 = add nuw i32 %731, 1
  %778 = icmp eq i32 %777, %10
  br i1 %778, label %779, label %730, !llvm.loop !81

779:                                              ; preds = %774, %730, %726
  %780 = phi i8 [ %728, %726 ], [ %732, %730 ], [ %776, %774 ]
  tail call void @qsort(ptr noundef %457, i64 noundef %455, i64 noundef 24, ptr noundef nonnull @search_polyloop_cmp) #18
  br i1 %33, label %866, label %781

781:                                              ; preds = %779
  %782 = icmp eq i8 %13, 0
  br label %783

783:                                              ; preds = %781, %858
  %784 = phi i32 [ 0, %781 ], [ %863, %858 ]
  %785 = phi i8 [ %780, %781 ], [ %862, %858 ]
  %786 = phi i8 [ 0, %781 ], [ %861, %858 ]
  %787 = phi i32 [ 0, %781 ], [ %860, %858 ]
  %788 = phi ptr [ %457, %781 ], [ %864, %858 ]
  %789 = phi ptr [ null, %781 ], [ %859, %858 ]
  %790 = load ptr, ptr %788, align 8, !tbaa !67
  %791 = icmp eq ptr %790, null
  br i1 %791, label %794, label %792

792:                                              ; preds = %783
  %793 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %793(ptr noundef nonnull %790) #18
  br label %794

794:                                              ; preds = %792, %783
  %795 = getelementptr inbounds %struct.SortPoly, ptr %788, i64 0, i32 4
  %796 = load i8, ptr %795, align 4, !tbaa !66
  %797 = icmp eq i8 %796, 0
  br i1 %797, label %806, label %798

798:                                              ; preds = %794
  br i1 %782, label %858, label %799

799:                                              ; preds = %798
  %800 = getelementptr inbounds %struct.SortPoly, ptr %788, i64 0, i32 3
  %801 = load i32, ptr %800, align 8, !tbaa !61
  %802 = zext i32 %801 to i64
  %803 = getelementptr inbounds %struct.MPoly, ptr %9, i64 %802, i32 1
  %804 = load i32, ptr %803, align 4, !tbaa !65
  %805 = sub nsw i32 0, %804
  store i32 %805, ptr %803, align 4, !tbaa !65
  br label %858

806:                                              ; preds = %794
  %807 = getelementptr inbounds %struct.SortPoly, ptr %788, i64 0, i32 2
  %808 = load i32, ptr %807, align 4, !tbaa !69
  %809 = icmp slt i32 %787, %808
  br i1 %809, label %810, label %837

810:                                              ; preds = %806
  %811 = icmp ult i32 %787, %808
  br i1 %811, label %812, label %830

812:                                              ; preds = %810
  %813 = sext i32 %787 to i64
  %814 = getelementptr inbounds %struct.MLoop, ptr %7, i64 %813
  br label %815

815:                                              ; preds = %812, %824
  %816 = phi ptr [ %827, %824 ], [ %814, %812 ]
  %817 = phi i32 [ %826, %824 ], [ %787, %812 ]
  %818 = phi i8 [ %825, %824 ], [ %786, %812 ]
  br i1 %17, label %821, label %819

819:                                              ; preds = %815
  %820 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %817) #19
  br label %821

821:                                              ; preds = %815, %819
  br i1 %782, label %824, label %822

822:                                              ; preds = %821
  %823 = getelementptr inbounds %struct.MLoop, ptr %816, i64 0, i32 1
  store i32 -1, ptr %823, align 4, !tbaa !76
  br label %824

824:                                              ; preds = %821, %822
  %825 = phi i8 [ 1, %822 ], [ %818, %821 ]
  %826 = add nuw i32 %817, 1
  %827 = getelementptr inbounds %struct.MLoop, ptr %816, i64 1
  %828 = load i32, ptr %807, align 4, !tbaa !69
  %829 = icmp ult i32 %826, %828
  br i1 %829, label %815, label %830, !llvm.loop !82

830:                                              ; preds = %824, %810
  %831 = phi i8 [ %786, %810 ], [ %825, %824 ]
  %832 = phi i8 [ %785, %810 ], [ 0, %824 ]
  %833 = phi i32 [ %808, %810 ], [ %828, %824 ]
  %834 = getelementptr inbounds %struct.SortPoly, ptr %788, i64 0, i32 1
  %835 = load i32, ptr %834, align 8, !tbaa !68
  %836 = add nsw i32 %835, %833
  br label %858

837:                                              ; preds = %806
  %838 = icmp sgt i32 %787, %808
  br i1 %838, label %839, label %854

839:                                              ; preds = %837
  br i1 %17, label %846, label %840

840:                                              ; preds = %839
  %841 = getelementptr inbounds %struct.SortPoly, ptr %789, i64 0, i32 3
  %842 = load i32, ptr %841, align 8, !tbaa !61
  %843 = getelementptr inbounds %struct.SortPoly, ptr %788, i64 0, i32 3
  %844 = load i32, ptr %843, align 8, !tbaa !61
  %845 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %842, i32 noundef %844, i32 noundef %808, i32 noundef %787, i32 noundef %844) #19
  br label %846

846:                                              ; preds = %839, %840
  br i1 %782, label %858, label %847

847:                                              ; preds = %846
  %848 = getelementptr inbounds %struct.SortPoly, ptr %788, i64 0, i32 3
  %849 = load i32, ptr %848, align 8, !tbaa !61
  %850 = zext i32 %849 to i64
  %851 = getelementptr inbounds %struct.MPoly, ptr %9, i64 %850, i32 1
  %852 = load i32, ptr %851, align 4, !tbaa !65
  %853 = sub nsw i32 0, %852
  store i32 %853, ptr %851, align 4, !tbaa !65
  br label %858

854:                                              ; preds = %837
  %855 = getelementptr inbounds %struct.SortPoly, ptr %788, i64 0, i32 1
  %856 = load i32, ptr %855, align 8, !tbaa !68
  %857 = add nsw i32 %856, %808
  br label %858

858:                                              ; preds = %799, %798, %854, %847, %846, %830
  %859 = phi ptr [ %789, %799 ], [ %789, %798 ], [ %788, %830 ], [ %789, %847 ], [ %789, %846 ], [ %788, %854 ]
  %860 = phi i32 [ %787, %799 ], [ %787, %798 ], [ %836, %830 ], [ %787, %847 ], [ %787, %846 ], [ %857, %854 ]
  %861 = phi i8 [ 1, %799 ], [ %786, %798 ], [ %831, %830 ], [ 1, %847 ], [ %786, %846 ], [ %786, %854 ]
  %862 = phi i8 [ %785, %799 ], [ %785, %798 ], [ %832, %830 ], [ 0, %847 ], [ 0, %846 ], [ %785, %854 ]
  %863 = add nuw i32 %784, 1
  %864 = getelementptr inbounds %struct.SortPoly, ptr %788, i64 1
  %865 = icmp eq i32 %863, %10
  br i1 %865, label %866, label %783, !llvm.loop !83

866:                                              ; preds = %858, %779
  %867 = phi i32 [ 0, %779 ], [ %860, %858 ]
  %868 = phi i8 [ 0, %779 ], [ %861, %858 ]
  %869 = phi i8 [ %780, %779 ], [ %862, %858 ]
  %870 = icmp ult i32 %867, %8
  br i1 %870, label %871, label %889

871:                                              ; preds = %866
  %872 = sext i32 %867 to i64
  %873 = getelementptr inbounds %struct.MLoop, ptr %7, i64 %872
  %874 = icmp eq i8 %13, 0
  br label %875

875:                                              ; preds = %871, %884
  %876 = phi ptr [ %873, %871 ], [ %887, %884 ]
  %877 = phi i32 [ %867, %871 ], [ %886, %884 ]
  %878 = phi i8 [ %868, %871 ], [ %885, %884 ]
  br i1 %17, label %881, label %879

879:                                              ; preds = %875
  %880 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %877) #19
  br label %881

881:                                              ; preds = %875, %879
  br i1 %874, label %884, label %882

882:                                              ; preds = %881
  %883 = getelementptr inbounds %struct.MLoop, ptr %876, i64 0, i32 1
  store i32 -1, ptr %883, align 4, !tbaa !76
  br label %884

884:                                              ; preds = %881, %882
  %885 = phi i8 [ 1, %882 ], [ %878, %881 ]
  %886 = add i32 %877, 1
  %887 = getelementptr inbounds %struct.MLoop, ptr %876, i64 1
  %888 = icmp eq i32 %886, %8
  br i1 %888, label %889, label %875, !llvm.loop !84

889:                                              ; preds = %884, %866
  %890 = phi i8 [ %868, %866 ], [ %885, %884 ]
  %891 = phi i8 [ %869, %866 ], [ 0, %884 ]
  %892 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %892(ptr noundef %457) #18
  tail call void @BLI_edgehash_free(ptr noundef %16, ptr noundef null) #18
  %893 = icmp ne ptr %11, null
  %894 = icmp ne i32 %2, 0
  %895 = and i1 %893, %894
  br i1 %895, label %896, label %973

896:                                              ; preds = %889
  %897 = icmp eq i8 %13, 0
  br label %898

898:                                              ; preds = %896, %965
  %899 = phi ptr [ %11, %896 ], [ %969, %965 ]
  %900 = phi i32 [ 0, %896 ], [ %968, %965 ]
  %901 = phi i8 [ %891, %896 ], [ %967, %965 ]
  %902 = phi i8 [ 0, %896 ], [ %966, %965 ]
  %903 = getelementptr inbounds %struct.MDeformVert, ptr %899, i64 0, i32 1
  %904 = load i32, ptr %903, align 8, !tbaa !85
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %965, label %906

906:                                              ; preds = %898
  %907 = load ptr, ptr %899, align 8, !tbaa !87
  br label %908

908:                                              ; preds = %906, %956
  %909 = phi ptr [ %962, %956 ], [ %907, %906 ]
  %910 = phi i32 [ %961, %956 ], [ 0, %906 ]
  %911 = phi i8 [ %958, %956 ], [ %901, %906 ]
  %912 = phi i8 [ %957, %956 ], [ %902, %906 ]
  %913 = getelementptr inbounds %struct.MDeformWeight, ptr %909, i64 0, i32 1
  %914 = load float, ptr %913, align 4, !tbaa !88
  %915 = tail call float @llvm.fabs.f32(float %914)
  %916 = fcmp ueq float %915, 0x7FF0000000000000
  br i1 %916, label %917, label %923

917:                                              ; preds = %908
  br i1 %17, label %922, label %918

918:                                              ; preds = %917
  %919 = load i32, ptr %909, align 4, !tbaa !90
  %920 = fpext float %914 to double
  %921 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %900, i32 noundef %919, double noundef %920) #19
  br label %922

922:                                              ; preds = %917, %918
  br i1 %897, label %940, label %938

923:                                              ; preds = %908
  %924 = fcmp olt float %914, 0.000000e+00
  %925 = fcmp ogt float %914, 1.000000e+00
  %926 = or i1 %924, %925
  br i1 %926, label %927, label %940

927:                                              ; preds = %923
  br i1 %17, label %932, label %928

928:                                              ; preds = %927
  %929 = load i32, ptr %909, align 4, !tbaa !90
  %930 = fpext float %914 to double
  %931 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %900, i32 noundef %929, double noundef %930) #19
  br label %932

932:                                              ; preds = %927, %928
  br i1 %897, label %940, label %933

933:                                              ; preds = %932
  %934 = load float, ptr %913, align 4, !tbaa !88
  %935 = fcmp olt float %934, 0.000000e+00
  br i1 %935, label %938, label %936

936:                                              ; preds = %933
  %937 = fcmp ogt float %934, 1.000000e+00
  br i1 %937, label %938, label %940

938:                                              ; preds = %936, %933, %922
  %939 = phi float [ 0.000000e+00, %922 ], [ 0.000000e+00, %933 ], [ 1.000000e+00, %936 ]
  store float %939, ptr %913, align 4, !tbaa !88
  br label %940

940:                                              ; preds = %938, %936, %923, %932, %922
  %941 = phi i8 [ %912, %932 ], [ %912, %922 ], [ %912, %923 ], [ 1, %936 ], [ 1, %938 ]
  %942 = phi i8 [ 0, %932 ], [ 0, %922 ], [ %911, %923 ], [ 0, %936 ], [ 0, %938 ]
  %943 = load i32, ptr %909, align 4, !tbaa !90
  %944 = icmp slt i32 %943, 0
  br i1 %944, label %945, label %956

945:                                              ; preds = %940
  br i1 %17, label %948, label %946

946:                                              ; preds = %945
  %947 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %900, i32 noundef %943) #19
  br label %948

948:                                              ; preds = %945, %946
  br i1 %897, label %956, label %949

949:                                              ; preds = %948
  tail call void @defvert_remove_group(ptr noundef nonnull %899, ptr noundef nonnull %909) #18
  %950 = load ptr, ptr %899, align 8, !tbaa !87
  %951 = icmp eq ptr %950, null
  br i1 %951, label %965, label %952

952:                                              ; preds = %949
  %953 = add i32 %910, -1
  %954 = zext i32 %953 to i64
  %955 = getelementptr inbounds %struct.MDeformWeight, ptr %950, i64 %954
  br label %956

956:                                              ; preds = %940, %952, %948
  %957 = phi i8 [ 1, %952 ], [ %941, %948 ], [ %941, %940 ]
  %958 = phi i8 [ 0, %952 ], [ 0, %948 ], [ %942, %940 ]
  %959 = phi i32 [ %953, %952 ], [ %910, %948 ], [ %910, %940 ]
  %960 = phi ptr [ %955, %952 ], [ %909, %948 ], [ %909, %940 ]
  %961 = add i32 %959, 1
  %962 = getelementptr inbounds %struct.MDeformWeight, ptr %960, i64 1
  %963 = load i32, ptr %903, align 8, !tbaa !85
  %964 = icmp ult i32 %961, %963
  br i1 %964, label %908, label %965, !llvm.loop !91

965:                                              ; preds = %956, %949, %898
  %966 = phi i8 [ %902, %898 ], [ %941, %949 ], [ %957, %956 ]
  %967 = phi i8 [ %901, %898 ], [ 0, %949 ], [ %958, %956 ]
  %968 = add nuw i32 %900, 1
  %969 = getelementptr inbounds %struct.MDeformVert, ptr %899, i64 1
  %970 = icmp eq i32 %968, %2
  br i1 %970, label %971, label %898, !llvm.loop !92

971:                                              ; preds = %965
  %972 = icmp ne i8 %966, 0
  br label %973

973:                                              ; preds = %971, %889
  %974 = phi i1 [ false, %889 ], [ %972, %971 ]
  %975 = phi i8 [ %891, %889 ], [ %967, %971 ]
  %976 = icmp eq ptr %0, null
  br i1 %976, label %1041, label %977

977:                                              ; preds = %973
  %978 = icmp eq i8 %452, 0
  br i1 %978, label %980, label %979

979:                                              ; preds = %977
  tail call void @BKE_mesh_strip_loose_faces(ptr noundef nonnull %0) #19
  br label %980

980:                                              ; preds = %979, %977
  %981 = icmp eq i8 %890, 0
  br i1 %981, label %983, label %982

982:                                              ; preds = %980
  tail call void @BKE_mesh_strip_loose_polysloops(ptr noundef nonnull %0) #19
  br label %983

983:                                              ; preds = %982, %980
  %984 = icmp eq i8 %161, 0
  br i1 %984, label %986, label %985

985:                                              ; preds = %983
  tail call void @BKE_mesh_strip_loose_edges(ptr noundef nonnull %0) #19
  br label %986

986:                                              ; preds = %985, %983
  %987 = icmp eq i8 %727, 0
  br i1 %987, label %989, label %988

988:                                              ; preds = %986
  tail call void @BKE_mesh_calc_edges(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 0) #19
  br label %989

989:                                              ; preds = %988, %986
  %990 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 6
  %991 = load ptr, ptr %990, align 8, !tbaa !93
  %992 = icmp eq ptr %991, null
  br i1 %992, label %1041, label %993

993:                                              ; preds = %989
  %994 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 29
  %995 = load i32, ptr %994, align 4, !tbaa !97
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1041, label %997

997:                                              ; preds = %993
  %998 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %999 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %1000 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  br label %1001

1001:                                             ; preds = %1028, %997
  %1002 = phi i8 [ 0, %997 ], [ %1029, %1028 ]
  %1003 = phi ptr [ %991, %997 ], [ %1032, %1028 ]
  %1004 = phi i32 [ 0, %997 ], [ %1031, %1028 ]
  %1005 = phi i8 [ %975, %997 ], [ %1030, %1028 ]
  %1006 = load i32, ptr %1003, align 4, !tbaa !98
  %1007 = icmp slt i32 %1006, 0
  br i1 %1007, label %1008, label %1013

1008:                                             ; preds = %1001
  br i1 %17, label %1037, label %1009

1009:                                             ; preds = %1008
  %1010 = getelementptr inbounds %struct.MSelect, ptr %1003, i64 0, i32 1
  %1011 = load i32, ptr %1010, align 4, !tbaa !100
  %1012 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %1004, i32 noundef %1011) #19
  br label %1037

1013:                                             ; preds = %1001
  %1014 = getelementptr inbounds %struct.MSelect, ptr %1003, i64 0, i32 1
  %1015 = load i32, ptr %1014, align 4, !tbaa !100
  switch i32 %1015, label %1022 [
    i32 0, label %1016
    i32 1, label %1018
    i32 2, label %1020
  ]

1016:                                             ; preds = %1013
  %1017 = load i32, ptr %1000, align 8, !tbaa !101
  br label %1022

1018:                                             ; preds = %1013
  %1019 = load i32, ptr %999, align 4, !tbaa !102
  br label %1022

1020:                                             ; preds = %1013
  %1021 = load i32, ptr %998, align 8, !tbaa !103
  br label %1022

1022:                                             ; preds = %1013, %1020, %1018, %1016
  %1023 = phi i32 [ 0, %1013 ], [ %1021, %1020 ], [ %1019, %1018 ], [ %1017, %1016 ]
  %1024 = icmp sle i32 %1006, %1023
  %1025 = or i1 %17, %1024
  br i1 %1025, label %1028, label %1026

1026:                                             ; preds = %1022
  %1027 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %1004, i32 noundef %1015, i32 noundef %1006, i32 noundef %1023) #19
  br label %1037

1028:                                             ; preds = %1022
  %1029 = select i1 %1024, i8 %1002, i8 1
  %1030 = select i1 %1024, i8 %1005, i8 0
  %1031 = add nuw i32 %1004, 1
  %1032 = getelementptr inbounds %struct.MSelect, ptr %1003, i64 1
  %1033 = icmp ult i32 %1031, %995
  %1034 = select i1 %1024, i1 %1033, i1 false
  br i1 %1034, label %1001, label %1035, !llvm.loop !104

1035:                                             ; preds = %1028
  %1036 = icmp eq i8 %1029, 0
  br i1 %1036, label %1041, label %1037

1037:                                             ; preds = %1008, %1009, %1026, %1035
  %1038 = phi i8 [ %1030, %1035 ], [ 0, %1026 ], [ 0, %1009 ], [ 0, %1008 ]
  %1039 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %1040 = load ptr, ptr %990, align 8, !tbaa !93
  tail call void %1039(ptr noundef %1040) #18
  store ptr null, ptr %990, align 8, !tbaa !93
  store i32 0, ptr %994, align 4, !tbaa !97
  br label %1041

1041:                                             ; preds = %993, %973, %1035, %1037, %989
  %1042 = phi i8 [ %975, %989 ], [ %1038, %1037 ], [ %1030, %1035 ], [ %975, %973 ], [ %975, %993 ]
  br i1 %17, label %1045, label %1043

1043:                                             ; preds = %1041
  %1044 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef nonnull @__func__.BKE_mesh_validate_arrays) #19
  br label %1045

1045:                                             ; preds = %1041, %1043
  %1046 = icmp ne i8 %47, 0
  %1047 = select i1 %1046, i1 true, i1 %974
  %1048 = icmp ne i8 %890, 0
  %1049 = select i1 %1047, i1 true, i1 %1048
  %1050 = icmp ne i8 %161, 0
  %1051 = select i1 %1049, i1 true, i1 %1050
  %1052 = icmp ne i8 %727, 0
  %1053 = select i1 %1051, i1 true, i1 %1052
  %1054 = zext i1 %1053 to i8
  store i8 %1054, ptr %14, align 1, !tbaa !105
  ret i8 %1042
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_edgehash_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !106 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @BLI_edgehash_haskey(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_edgehash_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_edgehash_insert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @edge_store_from_mface_quad(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !107 {
  %3 = load i32, ptr %1, align 4, !tbaa !54
  %4 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !55
  tail call fastcc void @edge_store_assign(ptr noundef %0, i32 noundef %3, i32 noundef %5) #19
  %6 = getelementptr inbounds %union.EdgeUUID, ptr %0, i64 1
  %7 = load i32, ptr %4, align 4, !tbaa !55
  %8 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !56
  tail call fastcc void @edge_store_assign(ptr noundef nonnull %6, i32 noundef %7, i32 noundef %9) #19
  %10 = getelementptr inbounds %union.EdgeUUID, ptr %0, i64 2
  %11 = load i32, ptr %8, align 4, !tbaa !56
  %12 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !50
  tail call fastcc void @edge_store_assign(ptr noundef nonnull %10, i32 noundef %11, i32 noundef %13) #19
  %14 = getelementptr inbounds %union.EdgeUUID, ptr %0, i64 3
  %15 = load i32, ptr %12, align 4, !tbaa !50
  %16 = load i32, ptr %1, align 4, !tbaa !54
  tail call fastcc void @edge_store_assign(ptr noundef nonnull %14, i32 noundef %15, i32 noundef %16) #19
  ret void
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @int64_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !PGOFuncName !108 {
  %3 = load i64, ptr %0, align 8, !tbaa !109
  %4 = load i64, ptr %1, align 8, !tbaa !109
  %5 = icmp sgt i64 %3, %4
  %6 = icmp slt i64 %3, %4
  %7 = sext i1 %6 to i32
  %8 = select i1 %5, i32 1, i32 %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @edge_store_from_mface_tri(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !111 {
  %3 = load i32, ptr %1, align 4, !tbaa !54
  %4 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !55
  tail call fastcc void @edge_store_assign(ptr noundef %0, i32 noundef %3, i32 noundef %5) #19
  %6 = getelementptr inbounds %union.EdgeUUID, ptr %0, i64 1
  %7 = load i32, ptr %4, align 4, !tbaa !55
  %8 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !56
  tail call fastcc void @edge_store_assign(ptr noundef nonnull %6, i32 noundef %7, i32 noundef %9) #19
  %10 = getelementptr inbounds %union.EdgeUUID, ptr %0, i64 2
  %11 = load i32, ptr %8, align 4, !tbaa !56
  %12 = load i32, ptr %1, align 4, !tbaa !54
  tail call fastcc void @edge_store_assign(ptr noundef nonnull %10, i32 noundef %11, i32 noundef %12) #19
  %13 = getelementptr inbounds %union.EdgeUUID, ptr %0, i64 3
  %14 = getelementptr inbounds i8, ptr %0, i64 28
  store i32 -1, ptr %14, align 4, !tbaa !105
  store i32 -1, ptr %13, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @search_face_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !PGOFuncName !112 {
  %3 = load i64, ptr %0, align 8, !tbaa !105
  %4 = load i64, ptr %1, align 8, !tbaa !105
  %5 = icmp sgt i64 %3, %4
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = icmp slt i64 %3, %4
  br i1 %7, label %33, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [4 x %union.EdgeUUID], ptr %0, i64 0, i64 1
  %10 = load i64, ptr %9, align 8, !tbaa !105
  %11 = getelementptr inbounds [4 x %union.EdgeUUID], ptr %1, i64 0, i64 1
  %12 = load i64, ptr %11, align 8, !tbaa !105
  %13 = icmp sgt i64 %10, %12
  br i1 %13, label %33, label %14

14:                                               ; preds = %8
  %15 = icmp slt i64 %10, %12
  br i1 %15, label %33, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds [4 x %union.EdgeUUID], ptr %0, i64 0, i64 2
  %18 = load i64, ptr %17, align 8, !tbaa !105
  %19 = getelementptr inbounds [4 x %union.EdgeUUID], ptr %1, i64 0, i64 2
  %20 = load i64, ptr %19, align 8, !tbaa !105
  %21 = icmp sgt i64 %18, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %16
  %23 = icmp slt i64 %18, %20
  br i1 %23, label %33, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds [4 x %union.EdgeUUID], ptr %0, i64 0, i64 3
  %26 = load i64, ptr %25, align 8, !tbaa !105
  %27 = getelementptr inbounds [4 x %union.EdgeUUID], ptr %1, i64 0, i64 3
  %28 = load i64, ptr %27, align 8, !tbaa !105
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @int_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !PGOFuncName !113 {
  %3 = load i32, ptr %0, align 4, !tbaa !52
  %4 = load i32, ptr %1, align 4, !tbaa !52
  %5 = icmp sgt i32 %3, %4
  %6 = icmp slt i32 %3, %4
  %7 = sext i1 %6 to i32
  %8 = select i1 %5, i32 1, i32 %7
  ret i32 %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @search_poly_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 !PGOFuncName !114 {
  %3 = getelementptr inbounds %struct.SortPoly, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.SortPoly, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !68
  %7 = icmp sgt i32 %4, %6
  %8 = tail call i32 @llvm.smin.i32(i32 %4, i32 %6)
  %9 = getelementptr inbounds %struct.SortPoly, ptr %0, i64 0, i32 4
  %10 = load i8, ptr %9, align 4, !tbaa !66
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.SortPoly, ptr %1, i64 0, i32 4
  %13 = load i8, ptr %12, align 4, !tbaa !66
  %14 = icmp eq i8 %13, 0
  br i1 %11, label %15, label %22

15:                                               ; preds = %2
  br i1 %14, label %16, label %41

16:                                               ; preds = %15
  %17 = icmp sgt i32 %8, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %16
  %19 = load ptr, ptr %0, align 8, !tbaa !67
  %20 = load ptr, ptr %1, align 8, !tbaa !67
  %21 = zext nneg i32 %8 to i64
  br label %27

22:                                               ; preds = %2
  %23 = zext i1 %14 to i32
  br label %41

24:                                               ; preds = %27
  %25 = add nuw nsw i64 %28, 1
  %26 = icmp eq i64 %25, %21
  br i1 %26, label %34, label %27, !llvm.loop !115

27:                                               ; preds = %18, %24
  %28 = phi i64 [ 0, %18 ], [ %25, %24 ]
  %29 = getelementptr inbounds i32, ptr %19, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !52
  %31 = getelementptr inbounds i32, ptr %20, i64 %28
  %32 = load i32, ptr %31, align 4, !tbaa !52
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %24, label %38

34:                                               ; preds = %24, %16
  %35 = icmp slt i32 %4, %6
  %36 = sext i1 %35 to i32
  %37 = select i1 %7, i32 1, i32 %36
  br label %41

38:                                               ; preds = %27
  %39 = icmp sgt i32 %30, %32
  %40 = select i1 %39, i32 1, i32 -1
  br label %41

41:                                               ; preds = %38, %15, %22, %34
  %42 = phi i32 [ %37, %34 ], [ %23, %22 ], [ -1, %15 ], [ %40, %38 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @search_polyloop_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !PGOFuncName !116 {
  %3 = getelementptr inbounds %struct.SortPoly, ptr %0, i64 0, i32 4
  %4 = load i8, ptr %3, align 4, !tbaa !66
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.SortPoly, ptr %1, i64 0, i32 4
  %7 = load i8, ptr %6, align 4, !tbaa !66
  %8 = icmp eq i8 %7, 0
  br i1 %5, label %9, label %10

9:                                                ; preds = %2
  br i1 %8, label %12, label %21

10:                                               ; preds = %2
  %11 = zext i1 %8 to i32
  br label %21

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.SortPoly, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !69
  %15 = getelementptr inbounds %struct.SortPoly, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !69
  %17 = icmp sgt i32 %14, %16
  %18 = icmp slt i32 %14, %16
  %19 = sext i1 %18 to i32
  %20 = select i1 %17, i32 1, i32 %19
  br label %21

21:                                               ; preds = %10, %9, %12
  %22 = phi i32 [ %20, %12 ], [ -1, %9 ], [ %11, %10 ]
  ret i32 %22
}

; Function Attrs: optsize
declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_strip_loose_faces(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %4 = load i32, ptr %3, align 8, !tbaa !103
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !117
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  br label %9

9:                                                ; preds = %6, %28
  %10 = phi i32 [ %4, %6 ], [ %29, %28 ]
  %11 = phi i32 [ %4, %6 ], [ %30, %28 ]
  %12 = phi i32 [ 0, %6 ], [ %31, %28 ]
  %13 = phi i32 [ 0, %6 ], [ %32, %28 ]
  %14 = phi ptr [ %7, %6 ], [ %33, %28 ]
  %15 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !56
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %9
  %19 = icmp eq i32 %13, %12
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %2, align 8, !tbaa !117
  %22 = sext i32 %12 to i64
  %23 = getelementptr inbounds %struct.MFace, ptr %21, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %23, ptr noundef nonnull align 4 dereferenceable(20) %14, i64 20, i1 false)
  tail call void @CustomData_copy_data(ptr noundef nonnull %8, ptr noundef nonnull %8, i32 noundef %13, i32 noundef %12, i32 noundef 1) #18
  %24 = load i32, ptr %3, align 8, !tbaa !103
  br label %25

25:                                               ; preds = %20, %18
  %26 = phi i32 [ %24, %20 ], [ %10, %18 ]
  %27 = add nsw i32 %12, 1
  br label %28

28:                                               ; preds = %9, %25
  %29 = phi i32 [ %26, %25 ], [ %10, %9 ]
  %30 = phi i32 [ %26, %25 ], [ %11, %9 ]
  %31 = phi i32 [ %27, %25 ], [ %12, %9 ]
  %32 = add nuw nsw i32 %13, 1
  %33 = getelementptr inbounds %struct.MFace, ptr %14, i64 1
  %34 = icmp slt i32 %32, %30
  br i1 %34, label %9, label %35, !llvm.loop !118

35:                                               ; preds = %28
  %36 = icmp eq i32 %32, %31
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %39 = sub nsw i32 %32, %31
  tail call void @CustomData_free_elem(ptr noundef nonnull %38, i32 noundef %31, i32 noundef %39) #18
  store i32 %31, ptr %3, align 8, !tbaa !103
  br label %40

40:                                               ; preds = %1, %37, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_strip_loose_polysloops(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %4 = load i32, ptr %3, align 4, !tbaa !119
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call ptr %2(i64 noundef %6, ptr noundef nonnull @__func__.BKE_mesh_strip_loose_polysloops) #18
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %10 = load i32, ptr %9, align 8, !tbaa !120
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %68

12:                                               ; preds = %1
  %13 = load ptr, ptr %8, align 8, !tbaa !121
  %14 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  br label %16

16:                                               ; preds = %12, %56
  %17 = phi i32 [ %10, %12 ], [ %57, %56 ]
  %18 = phi i32 [ %10, %12 ], [ %58, %56 ]
  %19 = phi ptr [ %13, %12 ], [ %61, %56 ]
  %20 = phi i32 [ 0, %12 ], [ %59, %56 ]
  %21 = phi i32 [ 0, %12 ], [ %60, %56 ]
  %22 = load i32, ptr %19, align 4, !tbaa !63
  %23 = getelementptr inbounds %struct.MPoly, ptr %19, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !65
  %25 = add nsw i32 %24, %22
  %26 = load i32, ptr %3, align 4, !tbaa !119
  %27 = icmp sgt i32 %25, %26
  %28 = icmp slt i32 %24, 1
  %29 = or i1 %28, %27
  br i1 %29, label %56, label %30

30:                                               ; preds = %16
  %31 = load ptr, ptr %14, align 8, !tbaa !122
  %32 = sext i32 %22 to i64
  %33 = getelementptr inbounds %struct.MLoop, ptr %31, i64 %32
  br label %38

34:                                               ; preds = %38
  %35 = getelementptr inbounds %struct.MLoop, ptr %40, i64 1
  %36 = add nsw i32 %39, -1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38, !llvm.loop !123

38:                                               ; preds = %30, %34
  %39 = phi i32 [ %36, %34 ], [ %24, %30 ]
  %40 = phi ptr [ %35, %34 ], [ %33, %30 ]
  %41 = getelementptr inbounds %struct.MLoop, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !76
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %56, label %34

44:                                               ; preds = %34
  %45 = icmp slt i32 %24, 3
  br i1 %45, label %56, label %46

46:                                               ; preds = %44
  %47 = icmp eq i32 %21, %20
  br i1 %47, label %53, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %8, align 8, !tbaa !121
  %50 = sext i32 %20 to i64
  %51 = getelementptr inbounds %struct.MPoly, ptr %49, i64 %50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %51, ptr noundef nonnull align 4 dereferenceable(12) %19, i64 12, i1 false)
  tail call void @CustomData_copy_data(ptr noundef nonnull %15, ptr noundef nonnull %15, i32 noundef %21, i32 noundef %20, i32 noundef 1) #18
  %52 = load i32, ptr %9, align 8, !tbaa !120
  br label %53

53:                                               ; preds = %48, %46
  %54 = phi i32 [ %52, %48 ], [ %17, %46 ]
  %55 = add nsw i32 %20, 1
  br label %56

56:                                               ; preds = %38, %16, %53, %44
  %57 = phi i32 [ %17, %44 ], [ %54, %53 ], [ %17, %16 ], [ %17, %38 ]
  %58 = phi i32 [ %18, %44 ], [ %54, %53 ], [ %18, %16 ], [ %18, %38 ]
  %59 = phi i32 [ %20, %44 ], [ %55, %53 ], [ %20, %16 ], [ %20, %38 ]
  %60 = add nuw nsw i32 %21, 1
  %61 = getelementptr inbounds %struct.MPoly, ptr %19, i64 1
  %62 = icmp slt i32 %60, %58
  br i1 %62, label %16, label %63, !llvm.loop !124

63:                                               ; preds = %56
  %64 = icmp eq i32 %60, %59
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %67 = sub nsw i32 %60, %59
  tail call void @CustomData_free_elem(ptr noundef nonnull %66, i32 noundef %59, i32 noundef %67) #18
  store i32 %59, ptr %9, align 8, !tbaa !120
  br label %68

68:                                               ; preds = %1, %65, %63
  %69 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %70 = load i32, ptr %3, align 4, !tbaa !119
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %111

72:                                               ; preds = %68
  %73 = load ptr, ptr %69, align 8, !tbaa !122
  %74 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  br label %75

75:                                               ; preds = %72, %98
  %76 = phi i64 [ 0, %72 ], [ %100, %98 ]
  %77 = phi ptr [ %73, %72 ], [ %101, %98 ]
  %78 = phi i32 [ 0, %72 ], [ %99, %98 ]
  %79 = getelementptr inbounds %struct.MLoop, ptr %77, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !76
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %94, label %82

82:                                               ; preds = %75
  %83 = zext i32 %78 to i64
  %84 = icmp eq i64 %76, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %69, align 8, !tbaa !122
  %87 = sext i32 %78 to i64
  %88 = getelementptr inbounds %struct.MLoop, ptr %86, i64 %87
  %89 = load i64, ptr %77, align 4
  store i64 %89, ptr %88, align 4
  %90 = trunc i64 %76 to i32
  tail call void @CustomData_copy_data(ptr noundef nonnull %74, ptr noundef nonnull %74, i32 noundef %90, i32 noundef %78, i32 noundef 1) #18
  br label %91

91:                                               ; preds = %85, %82
  %92 = getelementptr inbounds i32, ptr %7, i64 %76
  store i32 %78, ptr %92, align 4, !tbaa !52
  %93 = add nsw i32 %78, 1
  br label %98

94:                                               ; preds = %75
  %95 = getelementptr inbounds i32, ptr %7, i64 %76
  %96 = trunc i64 %76 to i32
  %97 = sub i32 0, %96
  store i32 %97, ptr %95, align 4, !tbaa !52
  br label %98

98:                                               ; preds = %91, %94
  %99 = phi i32 [ %93, %91 ], [ %78, %94 ]
  %100 = add nuw nsw i64 %76, 1
  %101 = getelementptr inbounds %struct.MLoop, ptr %77, i64 1
  %102 = load i32, ptr %3, align 4, !tbaa !119
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %100, %103
  br i1 %104, label %75, label %105, !llvm.loop !125

105:                                              ; preds = %98
  %106 = trunc i64 %100 to i32
  %107 = icmp eq i32 %99, %106
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %110 = sub nsw i32 %106, %99
  tail call void @CustomData_free_elem(ptr noundef nonnull %109, i32 noundef %99, i32 noundef %110) #18
  store i32 %99, ptr %3, align 4, !tbaa !119
  br label %111

111:                                              ; preds = %68, %108, %105
  %112 = load i32, ptr %9, align 8, !tbaa !120
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %111
  %115 = load ptr, ptr %8, align 8, !tbaa !121
  br label %116

116:                                              ; preds = %114, %116
  %117 = phi ptr [ %124, %116 ], [ %115, %114 ]
  %118 = phi i32 [ %123, %116 ], [ 0, %114 ]
  %119 = load i32, ptr %117, align 4, !tbaa !63
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %7, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !52
  store i32 %122, ptr %117, align 4, !tbaa !63
  %123 = add nuw nsw i32 %118, 1
  %124 = getelementptr inbounds %struct.MPoly, ptr %117, i64 1
  %125 = icmp eq i32 %123, %112
  br i1 %125, label %126, label %116, !llvm.loop !126

126:                                              ; preds = %116, %111
  %127 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %127(ptr noundef %7) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_strip_loose_edges(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %4 = load i32, ptr %3, align 4, !tbaa !102
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call ptr %2(i64 noundef %6, ptr noundef nonnull @__func__.BKE_mesh_strip_loose_edges) #18
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %9 = load i32, ptr %3, align 4, !tbaa !102
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %1
  %12 = load ptr, ptr %8, align 8, !tbaa !127
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  br label %14

14:                                               ; preds = %11, %35
  %15 = phi i64 [ 0, %11 ], [ %37, %35 ]
  %16 = phi ptr [ %12, %11 ], [ %38, %35 ]
  %17 = phi i32 [ 0, %11 ], [ %36, %35 ]
  %18 = load i32, ptr %16, align 4, !tbaa !43
  %19 = getelementptr inbounds %struct.MEdge, ptr %16, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %14
  %23 = zext i32 %17 to i64
  %24 = icmp eq i64 %15, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %8, align 8, !tbaa !127
  %27 = sext i32 %17 to i64
  %28 = getelementptr inbounds %struct.MEdge, ptr %26, i64 %27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %28, ptr noundef nonnull align 4 dereferenceable(12) %16, i64 12, i1 false)
  %29 = trunc i64 %15 to i32
  tail call void @CustomData_copy_data(ptr noundef nonnull %13, ptr noundef nonnull %13, i32 noundef %29, i32 noundef %17, i32 noundef 1) #18
  br label %30

30:                                               ; preds = %25, %22
  %31 = getelementptr inbounds i32, ptr %7, i64 %15
  store i32 %17, ptr %31, align 4, !tbaa !52
  %32 = add nsw i32 %17, 1
  br label %35

33:                                               ; preds = %14
  %34 = getelementptr inbounds i32, ptr %7, i64 %15
  store i32 -1, ptr %34, align 4, !tbaa !52
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi i32 [ %32, %30 ], [ %17, %33 ]
  %37 = add nuw nsw i64 %15, 1
  %38 = getelementptr inbounds %struct.MEdge, ptr %16, i64 1
  %39 = load i32, ptr %3, align 4, !tbaa !102
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %14, label %42, !llvm.loop !128

42:                                               ; preds = %35
  %43 = trunc i64 %37 to i32
  %44 = icmp eq i32 %36, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %47 = sub nsw i32 %43, %36
  tail call void @CustomData_free_elem(ptr noundef nonnull %46, i32 noundef %36, i32 noundef %47) #18
  store i32 %36, ptr %3, align 4, !tbaa !102
  br label %48

48:                                               ; preds = %1, %45, %42
  %49 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %50 = load i32, ptr %49, align 4, !tbaa !119
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !122
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi i32 [ %63, %55 ], [ 0, %52 ]
  %57 = phi ptr [ %64, %55 ], [ %54, %52 ]
  %58 = getelementptr inbounds %struct.MLoop, ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !76
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %7, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !52
  store i32 %62, ptr %58, align 4, !tbaa !76
  %63 = add nuw nsw i32 %56, 1
  %64 = getelementptr inbounds %struct.MLoop, ptr %57, i64 1
  %65 = icmp eq i32 %63, %50
  br i1 %65, label %66, label %55, !llvm.loop !129

66:                                               ; preds = %55, %48
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %67(ptr noundef %7) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_calc_edges(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %6 = load i32, ptr %5, align 8, !tbaa !120
  %7 = icmp ne i8 %2, 0
  %8 = zext i1 %7 to i16
  %9 = or disjoint i16 %8, 34
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %11 = load i32, ptr %10, align 4, !tbaa !102
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i8 %1, 0
  %14 = or i1 %13, %12
  %15 = select i1 %13, i32 0, i32 %11
  %16 = shl nsw i32 %6, 1
  %17 = tail call fastcc i32 @max_ii(i32 noundef %15, i32 noundef %16) #19
  %18 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.BKE_mesh_calc_edges, i32 noundef %17) #18
  br i1 %14, label %35, label %19

19:                                               ; preds = %3
  %20 = load i32, ptr %10, align 4, !tbaa !102
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %24 = load ptr, ptr %23, align 8, !tbaa !127
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi ptr [ %32, %25 ], [ %24, %22 ]
  %27 = phi i32 [ %31, %25 ], [ 0, %22 ]
  %28 = load i32, ptr %26, align 4, !tbaa !43
  %29 = getelementptr inbounds %struct.MEdge, ptr %26, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !46
  tail call void @BLI_edgehash_insert(ptr noundef %18, i32 noundef %28, i32 noundef %30, ptr noundef nonnull %26) #18
  %31 = add nuw nsw i32 %27, 1
  %32 = getelementptr inbounds %struct.MEdge, ptr %26, i64 1
  %33 = load i32, ptr %10, align 4, !tbaa !102
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %25, label %35, !llvm.loop !130

35:                                               ; preds = %25, %19, %3
  %36 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %37 = icmp sgt i32 %6, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %35
  %39 = load ptr, ptr %36, align 8, !tbaa !121
  %40 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  br label %41

41:                                               ; preds = %38, %70
  %42 = phi ptr [ %39, %38 ], [ %71, %70 ]
  %43 = phi i32 [ 0, %38 ], [ %72, %70 ]
  %44 = getelementptr inbounds %struct.MPoly, ptr %42, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !65
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %41
  %48 = load ptr, ptr %40, align 8, !tbaa !122
  %49 = load i32, ptr %42, align 4, !tbaa !63
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
  %59 = load i32, ptr %56, align 4, !tbaa !70
  %60 = load i32, ptr %58, align 4, !tbaa !70
  %61 = tail call zeroext i8 @BLI_edgehash_haskey(ptr noundef %18, i32 noundef %59, i32 noundef %60) #18
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, ptr %58, align 4, !tbaa !70
  tail call void @BLI_edgehash_insert(ptr noundef %18, i32 noundef %59, i32 noundef %64, ptr noundef null) #18
  br label %65

65:                                               ; preds = %63, %55
  %66 = add nuw nsw i32 %57, 1
  %67 = getelementptr inbounds %struct.MLoop, ptr %58, i64 1
  %68 = load i32, ptr %44, align 4, !tbaa !65
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %55, label %70, !llvm.loop !131

70:                                               ; preds = %65, %41
  %71 = getelementptr inbounds %struct.MPoly, ptr %42, i64 1
  %72 = add nuw nsw i32 %43, 1
  %73 = icmp eq i32 %72, %6
  br i1 %73, label %74, label %41, !llvm.loop !132

74:                                               ; preds = %70, %35
  %75 = tail call i32 @BLI_edgehash_size(ptr noundef %18) #18
  call void @CustomData_reset(ptr noundef nonnull %4) #18
  %76 = call ptr @CustomData_add_layer(ptr noundef nonnull %4, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %75) #18
  %77 = call ptr @CustomData_get_layer(ptr noundef nonnull %4, i32 noundef 3) #18
  %78 = call ptr @BLI_edgehashIterator_new(ptr noundef %18) #18
  %79 = call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %78) #19, !range !133
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %74, %91
  %82 = phi i64 [ %93, %91 ], [ 0, %74 ]
  %83 = phi ptr [ %94, %91 ], [ %77, %74 ]
  br i1 %14, label %88, label %84

84:                                               ; preds = %81
  %85 = call fastcc ptr @BLI_edgehashIterator_getValue(ptr noundef %78) #19
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %83, ptr noundef nonnull align 4 dereferenceable(12) %85, i64 12, i1 false), !tbaa.struct !134
  br label %91

88:                                               ; preds = %84, %81
  %89 = getelementptr inbounds %struct.MEdge, ptr %83, i64 0, i32 1
  call fastcc void @BLI_edgehashIterator_getKey(ptr noundef %78, ptr noundef %83, ptr noundef nonnull %89) #19
  %90 = getelementptr inbounds %struct.MEdge, ptr %83, i64 0, i32 4
  store i16 %9, ptr %90, align 2, !tbaa !135
  br label %91

91:                                               ; preds = %88, %87
  %92 = inttoptr i64 %82 to ptr
  call fastcc void @BLI_edgehashIterator_setValue(ptr noundef %78, ptr noundef %92) #19
  call void @BLI_edgehashIterator_step(ptr noundef %78) #18
  %93 = add nuw i64 %82, 1
  %94 = getelementptr inbounds %struct.MEdge, ptr %83, i64 1
  %95 = call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %78) #19, !range !133
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %81, label %97, !llvm.loop !136

97:                                               ; preds = %91, %74
  call void @BLI_edgehashIterator_free(ptr noundef %78) #18
  %98 = load i32, ptr %5, align 8, !tbaa !120
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %139

100:                                              ; preds = %97
  %101 = load ptr, ptr %36, align 8, !tbaa !121
  %102 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  br label %103

103:                                              ; preds = %100, %134
  %104 = phi i32 [ %98, %100 ], [ %135, %134 ]
  %105 = phi ptr [ %101, %100 ], [ %136, %134 ]
  %106 = phi i32 [ 0, %100 ], [ %137, %134 ]
  %107 = getelementptr inbounds %struct.MPoly, ptr %105, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !65
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %103
  %111 = load ptr, ptr %102, align 8, !tbaa !122
  %112 = load i32, ptr %105, align 4, !tbaa !63
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.MLoop, ptr %111, i64 %113
  %115 = zext nneg i32 %108 to i64
  %116 = getelementptr %struct.MLoop, ptr %114, i64 %115
  %117 = getelementptr %struct.MLoop, ptr %116, i64 -1
  br label %118

118:                                              ; preds = %110, %118
  %119 = phi i32 [ %128, %118 ], [ 0, %110 ]
  %120 = phi ptr [ %121, %118 ], [ %117, %110 ]
  %121 = phi ptr [ %129, %118 ], [ %114, %110 ]
  %122 = load i32, ptr %120, align 4, !tbaa !70
  %123 = load i32, ptr %121, align 4, !tbaa !70
  %124 = call ptr @BLI_edgehash_lookup(ptr noundef %18, i32 noundef %122, i32 noundef %123) #18
  %125 = ptrtoint ptr %124 to i64
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds %struct.MLoop, ptr %120, i64 0, i32 1
  store i32 %126, ptr %127, align 4, !tbaa !76
  %128 = add nuw nsw i32 %119, 1
  %129 = getelementptr inbounds %struct.MLoop, ptr %121, i64 1
  %130 = load i32, ptr %107, align 4, !tbaa !65
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %118, label %132, !llvm.loop !137

132:                                              ; preds = %118
  %133 = load i32, ptr %5, align 8, !tbaa !120
  br label %134

134:                                              ; preds = %132, %103
  %135 = phi i32 [ %133, %132 ], [ %104, %103 ]
  %136 = getelementptr inbounds %struct.MPoly, ptr %105, i64 1
  %137 = add nuw nsw i32 %106, 1
  %138 = icmp slt i32 %137, %135
  br i1 %138, label %103, label %139, !llvm.loop !138

139:                                              ; preds = %134, %97
  %140 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %141 = load i32, ptr %10, align 4, !tbaa !102
  call void @CustomData_free(ptr noundef nonnull %140, i32 noundef %141) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %140, ptr noundef nonnull align 8 dereferenceable(200) %4, i64 200, i1 false), !tbaa.struct !139
  store i32 %75, ptr %10, align 4, !tbaa !102
  %142 = call ptr @CustomData_get_layer(ptr noundef nonnull %140, i32 noundef 3) #18
  %143 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  store ptr %142, ptr %143, align 8, !tbaa !127
  call void @BLI_edgehash_free(ptr noundef %18, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_mesh_validate_all_customdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #20
  %13 = icmp eq i8 %4, 0
  %14 = load i64, ptr @CD_MASK_MESH, align 8
  %15 = select i1 %13, i64 0, i64 %14
  %16 = call fastcc zeroext i8 @mesh_validate_customdata(ptr noundef %0, i64 noundef %15, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef nonnull %9) #19, !range !133
  %17 = call fastcc zeroext i8 @mesh_validate_customdata(ptr noundef %1, i64 noundef %15, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef nonnull %10) #19, !range !133
  %18 = and i8 %17, %16
  %19 = call fastcc zeroext i8 @mesh_validate_customdata(ptr noundef %2, i64 noundef %15, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef nonnull %11) #19, !range !133
  %20 = and i8 %18, %19
  %21 = call fastcc zeroext i8 @mesh_validate_customdata(ptr noundef %3, i64 noundef %15, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef nonnull %12) #19, !range !133
  %22 = and i8 %20, %21
  %23 = tail call i32 @CustomData_number_of_layers(ptr noundef %3, i32 noundef 15) #18
  %24 = tail call i32 @CustomData_number_of_layers(ptr noundef %2, i32 noundef 16) #18
  %25 = tail call i32 @CustomData_number_of_layers(ptr noundef %2, i32 noundef 17) #18
  %26 = icmp eq i32 %23, %24
  br i1 %26, label %31, label %27

27:                                               ; preds = %8
  %28 = icmp eq i8 %5, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %27
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %23, i32 noundef %24) #19
  br label %31

31:                                               ; preds = %29, %8
  %32 = phi i8 [ 0, %29 ], [ %22, %8 ]
  %33 = icmp sgt i32 %23, 8
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = icmp eq i8 %5, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = add nsw i32 %23, -8
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef 8, i32 noundef %37) #19
  br label %39

39:                                               ; preds = %27, %36, %34, %31
  %40 = phi i8 [ 0, %36 ], [ 0, %34 ], [ %32, %31 ], [ 0, %27 ]
  %41 = icmp sgt i32 %24, 8
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = icmp eq i8 %5, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %42
  %45 = add nsw i32 %24, -8
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef 8, i32 noundef %45) #19
  br label %47

47:                                               ; preds = %44, %39
  %48 = phi i8 [ 0, %44 ], [ %40, %39 ]
  %49 = icmp sgt i32 %25, 8
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = icmp eq i8 %5, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %50
  %53 = add nsw i32 %25, -8
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef 8, i32 noundef %53) #19
  br label %55

55:                                               ; preds = %42, %52, %50, %47
  %56 = phi i8 [ 0, %52 ], [ 0, %50 ], [ %48, %47 ], [ 0, %42 ]
  %57 = load i8, ptr %9, align 1, !tbaa !105
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
  store i8 %68, ptr %7, align 1, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #20
  ret i8 %56
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @mesh_validate_customdata(ptr noundef %0, i64 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !140 {
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !141
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef nonnull @__func__.mesh_validate_customdata, i32 noundef %9) #19
  br label %11

11:                                               ; preds = %5, %7
  %12 = getelementptr inbounds %struct.CustomData, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !141
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
  %22 = load ptr, ptr %0, align 8, !tbaa !142
  %23 = zext nneg i32 %21 to i64
  %24 = getelementptr inbounds %struct.CustomDataLayer, ptr %22, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !143
  %26 = tail call zeroext i8 @CustomData_layertype_is_singleton(i32 noundef %25) #18
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %18
  %29 = load i32, ptr %24, align 8, !tbaa !143
  %30 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %0, i32 noundef %29) #18
  %31 = icmp slt i32 %30, 2
  %32 = or i1 %6, %31
  %33 = zext i1 %31 to i8
  %34 = select i1 %31, i8 %19, i8 0
  br i1 %32, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, ptr %24, align 8, !tbaa !143
  %37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %36, i32 noundef %30) #19
  br label %38

38:                                               ; preds = %28, %35, %18
  %39 = phi i8 [ 1, %18 ], [ %33, %28 ], [ 0, %35 ]
  %40 = phi i8 [ %19, %18 ], [ %34, %28 ], [ 0, %35 ]
  br i1 %16, label %52, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %24, align 8, !tbaa !143
  %43 = zext nneg i32 %42 to i64
  %44 = shl nuw i64 1, %43
  %45 = and i64 %44, %1
  %46 = icmp ne i64 %45, 0
  %47 = or i1 %6, %46
  %48 = select i1 %46, i8 %39, i8 0
  %49 = select i1 %46, i8 %40, i8 0
  br i1 %47, label %52, label %50

50:                                               ; preds = %41
  %51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %42) #19
  br label %52

52:                                               ; preds = %41, %50, %38
  %53 = phi i8 [ %39, %38 ], [ %48, %41 ], [ 0, %50 ]
  %54 = phi i8 [ %40, %38 ], [ %49, %41 ], [ 0, %50 ]
  %55 = icmp eq i8 %53, 0
  %56 = and i1 %17, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, ptr %24, align 8, !tbaa !143
  %59 = tail call zeroext i8 @CustomData_free_layer(ptr noundef nonnull %0, i32 noundef %58, i32 noundef 0, i32 noundef %21) #18
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi i8 [ 1, %57 ], [ %20, %52 ]
  %62 = xor i1 %55, true
  %63 = zext i1 %62 to i32
  %64 = add nuw nsw i32 %21, %63
  %65 = load i32, ptr %12, align 4, !tbaa !141
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %18, label %67, !llvm.loop !145

67:                                               ; preds = %60, %11
  %68 = phi i8 [ 0, %11 ], [ %61, %60 ]
  %69 = phi i8 [ 1, %11 ], [ %54, %60 ]
  br i1 %6, label %74, label %70

70:                                               ; preds = %67
  %71 = icmp eq i8 %68, 0
  %72 = zext i1 %71 to i32
  %73 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull @__func__.mesh_validate_customdata, i32 noundef %72) #19
  br label %74

74:                                               ; preds = %67, %70
  store i8 %68, ptr %4, align 1, !tbaa !105
  ret i8 %69
}

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_mesh_validate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef nonnull %6) #19
  br label %8

8:                                                ; preds = %5, %2
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %13 = trunc i32 %1 to i8
  %14 = call zeroext i8 @BKE_mesh_validate_all_customdata(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i8 noundef zeroext 1, i8 noundef zeroext %13, i8 noundef zeroext 1, ptr noundef nonnull %3) #19, !range !133
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %16 = load ptr, ptr %15, align 8, !tbaa !146
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %18 = load i32, ptr %17, align 8, !tbaa !101
  %19 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !127
  %21 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %22 = load i32, ptr %21, align 4, !tbaa !102
  %23 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !117
  %25 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %26 = load i32, ptr %25, align 8, !tbaa !103
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !122
  %29 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %30 = load i32, ptr %29, align 4, !tbaa !119
  %31 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !121
  %33 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %34 = load i32, ptr %33, align 8, !tbaa !120
  %35 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !147
  %37 = call zeroext i8 @BKE_mesh_validate_arrays(ptr noundef %0, ptr noundef %16, i32 noundef %18, ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %26, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %34, ptr noundef %36, i8 noundef zeroext %13, i8 noundef zeroext 1, ptr noundef nonnull %3) #19, !range !133
  %38 = load i8, ptr %3, align 1, !tbaa !105
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %8
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 2) #18
  br label %41

41:                                               ; preds = %8, %40
  %42 = phi i32 [ 1, %40 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  ret i32 %42
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_cd_validate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %3 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %2, i32 noundef 15) #18
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %5 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %4, i32 noundef 16) #18
  %6 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %4, i32 noundef 17) #18
  %7 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %2, i32 noundef 15) #18
  %8 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %4, i32 noundef 16) #18
  %9 = icmp sgt i32 %3, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = add nsw i32 %3, -8
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef 8, i32 noundef %11) #19
  br label %13

13:                                               ; preds = %10, %1
  %14 = icmp sgt i32 %5, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = add nsw i32 %5, -8
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef 8, i32 noundef %16) #19
  br label %18

18:                                               ; preds = %15, %13
  %19 = icmp sgt i32 %6, 8
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = add nsw i32 %6, -8
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef 8, i32 noundef %21) #19
  br label %23

23:                                               ; preds = %20, %18
  %24 = icmp eq i32 %3, %5
  br i1 %24, label %63, label %25

25:                                               ; preds = %23
  %26 = icmp slt i32 %3, %5
  br i1 %26, label %27, label %44

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %29 = sext i32 %3 to i64
  %30 = sext i32 %8 to i64
  br label %31

31:                                               ; preds = %27, %31
  %32 = phi i64 [ %29, %27 ], [ %39, %31 ]
  %33 = load ptr, ptr %4, align 8, !tbaa !148
  %34 = add nsw i64 %32, %30
  %35 = getelementptr inbounds %struct.CustomDataLayer, ptr %33, i64 %34, i32 8
  %36 = load i32, ptr %28, align 8, !tbaa !120
  %37 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %2, i32 noundef 15, i32 noundef 2, ptr noundef null, i32 noundef %36, ptr noundef nonnull %35) #18
  %38 = trunc i64 %32 to i32
  tail call void @CustomData_set_layer_unique_name(ptr noundef nonnull %2, i32 noundef %38) #18
  %39 = add nsw i64 %32, 1
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %5, %40
  br i1 %41, label %42, label %31, !llvm.loop !149

42:                                               ; preds = %31
  %43 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %2, i32 noundef 15) #18
  br label %63

44:                                               ; preds = %25
  %45 = icmp slt i32 %5, %3
  br i1 %45, label %46, label %63

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %48 = sext i32 %5 to i64
  %49 = sext i32 %7 to i64
  br label %50

50:                                               ; preds = %46, %50
  %51 = phi i64 [ %48, %46 ], [ %58, %50 ]
  %52 = load ptr, ptr %2, align 8, !tbaa !150
  %53 = add nsw i64 %51, %49
  %54 = getelementptr inbounds %struct.CustomDataLayer, ptr %52, i64 %53, i32 8
  %55 = load i32, ptr %47, align 4, !tbaa !119
  %56 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %4, i32 noundef 16, i32 noundef 2, ptr noundef null, i32 noundef %55, ptr noundef nonnull %54) #18
  %57 = trunc i64 %51 to i32
  tail call void @CustomData_set_layer_unique_name(ptr noundef nonnull %4, i32 noundef %57) #18
  %58 = add nsw i64 %51, 1
  %59 = trunc i64 %58 to i32
  %60 = icmp eq i32 %3, %59
  br i1 %60, label %61, label %50, !llvm.loop !151

61:                                               ; preds = %50
  %62 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %4, i32 noundef 16) #18
  br label %63

63:                                               ; preds = %42, %61, %44, %23
  %64 = phi i32 [ %8, %23 ], [ %8, %42 ], [ %62, %61 ], [ %8, %44 ]
  %65 = phi i32 [ %7, %23 ], [ %43, %42 ], [ %7, %61 ], [ %7, %44 ]
  %66 = phi i32 [ %3, %23 ], [ %5, %42 ], [ %3, %61 ], [ %3, %44 ]
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %63
  %69 = sext i32 %65 to i64
  %70 = sext i32 %64 to i64
  br label %71

71:                                               ; preds = %68, %85
  %72 = phi i64 [ %70, %68 ], [ %88, %85 ]
  %73 = phi i64 [ %69, %68 ], [ %87, %85 ]
  %74 = phi i32 [ 0, %68 ], [ %86, %85 ]
  %75 = load ptr, ptr %2, align 8, !tbaa !150
  %76 = getelementptr inbounds %struct.CustomDataLayer, ptr %75, i64 %73, i32 8
  %77 = load ptr, ptr %4, align 8, !tbaa !148
  %78 = getelementptr inbounds %struct.CustomDataLayer, ptr %77, i64 %72, i32 8
  %79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %76, ptr noundef nonnull dereferenceable(1) %78) #21
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %71
  %82 = trunc i64 %73 to i32
  %83 = trunc i64 %72 to i32
  %84 = tail call zeroext i8 @BKE_mesh_uv_cdlayer_rename_index(ptr noundef nonnull %0, i32 noundef %82, i32 noundef %83, i32 noundef -1, ptr noundef nonnull %76, i8 noundef zeroext 0) #18
  br label %85

85:                                               ; preds = %81, %71
  %86 = add nuw nsw i32 %74, 1
  %87 = add nsw i64 %73, 1
  %88 = add nsw i64 %72, 1
  %89 = icmp eq i32 %86, %66
  br i1 %89, label %90, label %71, !llvm.loop !152

90:                                               ; preds = %85, %63
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_set_layer_unique_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @BKE_mesh_uv_cdlayer_rename_index(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_mesh_validate_material_indices(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 47
  %3 = load i16, ptr %2, align 2, !tbaa !153
  %4 = sext i16 %3 to i32
  %5 = add nsw i32 %4, -1
  %6 = tail call fastcc i32 @max_ii(i32 noundef 0, i32 noundef %5) #19
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %8 = load i32, ptr %7, align 8, !tbaa !120
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  br label %13

13:                                               ; preds = %28, %10
  %14 = phi i1 [ true, %28 ], [ false, %10 ]
  %15 = phi i32 [ %30, %28 ], [ 0, %10 ]
  %16 = phi ptr [ %31, %28 ], [ %12, %10 ]
  br label %17

17:                                               ; preds = %13, %24
  %18 = phi i32 [ %25, %24 ], [ %15, %13 ]
  %19 = phi ptr [ %26, %24 ], [ %16, %13 ]
  %20 = getelementptr inbounds %struct.MPoly, ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 4, !tbaa !154
  %22 = sext i16 %21 to i32
  %23 = icmp slt i32 %6, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = add nuw nsw i32 %18, 1
  %26 = getelementptr inbounds %struct.MPoly, ptr %19, i64 1
  %27 = icmp eq i32 %25, %8
  br i1 %27, label %33, label %17, !llvm.loop !155

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.MPoly, ptr %19, i64 0, i32 2
  store i16 0, ptr %29, align 4, !tbaa !154
  %30 = add nuw nsw i32 %18, 1
  %31 = getelementptr inbounds %struct.MPoly, ptr %19, i64 1
  %32 = icmp eq i32 %30, %8
  br i1 %32, label %34, label %13, !llvm.loop !155

33:                                               ; preds = %24
  br i1 %14, label %34, label %35

34:                                               ; preds = %28, %33
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 2) #18
  br label %35

35:                                               ; preds = %1, %33, %34
  %36 = phi i32 [ 1, %34 ], [ 0, %33 ], [ 0, %1 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #10 !PGOFuncName !156 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: optsize
declare void @CustomData_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_free_elem(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_mesh_calc_edges_legacy(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !tbaa !52
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !117
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %12 = load i32, ptr %11, align 8, !tbaa !103
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %14 = load i32, ptr %13, align 8, !tbaa !120
  call fastcc void @mesh_calc_edges_mdata(ptr noundef %6, ptr noundef %8, ptr noundef %10, i32 noundef %12, i32 noundef %14, i8 noundef zeroext %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %15 = load i32, ptr %4, align 4, !tbaa !52
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  store ptr %18, ptr %19, align 8, !tbaa !127
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  store i32 0, ptr %20, align 4, !tbaa !102
  br label %27

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %23 = load ptr, ptr %3, align 8, !tbaa !48
  %24 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %22, i32 noundef 3, i32 noundef 0, ptr noundef %23, i32 noundef %15) #18
  %25 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  store ptr %24, ptr %25, align 8, !tbaa !127
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  store i32 %15, ptr %26, align 4, !tbaa !102
  tail call void @BKE_mesh_strip_loose_faces(ptr noundef nonnull %0) #19
  br label %27

27:                                               ; preds = %21, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_calc_edges_mdata(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #0 !PGOFuncName !157 {
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %8, %22
  %11 = phi i32 [ %24, %22 ], [ 0, %8 ]
  %12 = phi i32 [ %25, %22 ], [ %3, %8 ]
  %13 = phi ptr [ %26, %22 ], [ %0, %8 ]
  %14 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !56
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 1, i32 3
  br label %22

22:                                               ; preds = %17, %10
  %23 = phi i32 [ 4, %10 ], [ %21, %17 ]
  %24 = add nuw nsw i32 %11, %23
  %25 = add nsw i32 %12, -1
  %26 = getelementptr inbounds %struct.MFace, ptr %13, i64 1
  %27 = icmp sgt i32 %12, 1
  br i1 %27, label %10, label %31, !llvm.loop !158

28:                                               ; preds = %8
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %30 = tail call ptr %29(i64 noundef 0, ptr noundef nonnull @__func__.mesh_calc_edges_mdata) #18
  br label %241

31:                                               ; preds = %22
  %32 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %33 = zext nneg i32 %24 to i64
  %34 = mul nuw nsw i64 %33, 12
  %35 = tail call ptr %32(i64 noundef %34, ptr noundef nonnull @.str.56) #18
  br i1 %9, label %36, label %93

36:                                               ; preds = %31, %88
  %37 = phi i32 [ %90, %88 ], [ %3, %31 ]
  %38 = phi ptr [ %89, %88 ], [ %35, %31 ]
  %39 = phi ptr [ %91, %88 ], [ %0, %31 ]
  %40 = getelementptr inbounds %struct.EdgeSort, ptr %38, i64 1
  %41 = load i32, ptr %39, align 4, !tbaa !54
  %42 = getelementptr inbounds %struct.MFace, ptr %39, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !55
  %44 = getelementptr inbounds %struct.MFace, ptr %39, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !56
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.MFace, ptr %39, i64 0, i32 5
  %49 = load i8, ptr %48, align 2, !tbaa !159
  %50 = and i8 %49, 1
  %51 = zext nneg i8 %50 to i16
  tail call fastcc void @to_edgesort(ptr noundef %38, i32 noundef %41, i32 noundef %43, i8 noundef zeroext %47, i16 noundef signext %51) #19
  %52 = getelementptr inbounds %struct.MFace, ptr %39, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %36
  %56 = getelementptr inbounds %struct.EdgeSort, ptr %38, i64 2
  %57 = load i32, ptr %42, align 4, !tbaa !55
  %58 = load i32, ptr %44, align 4, !tbaa !56
  %59 = load i8, ptr %48, align 2, !tbaa !159
  %60 = and i8 %59, 2
  %61 = zext nneg i8 %60 to i16
  tail call fastcc void @to_edgesort(ptr noundef nonnull %40, i32 noundef %57, i32 noundef %58, i8 noundef zeroext 0, i16 noundef signext %61) #19
  %62 = getelementptr inbounds %struct.EdgeSort, ptr %38, i64 3
  %63 = load i32, ptr %44, align 4, !tbaa !56
  %64 = load i32, ptr %52, align 4, !tbaa !50
  %65 = load i8, ptr %48, align 2, !tbaa !159
  %66 = and i8 %65, 4
  %67 = zext nneg i8 %66 to i16
  tail call fastcc void @to_edgesort(ptr noundef nonnull %56, i32 noundef %63, i32 noundef %64, i8 noundef zeroext 0, i16 noundef signext %67) #19
  br label %77

68:                                               ; preds = %36
  %69 = load i32, ptr %44, align 4, !tbaa !56
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.EdgeSort, ptr %38, i64 2
  %73 = load i32, ptr %42, align 4, !tbaa !55
  %74 = load i8, ptr %48, align 2, !tbaa !159
  %75 = and i8 %74, 2
  %76 = zext nneg i8 %75 to i16
  tail call fastcc void @to_edgesort(ptr noundef nonnull %40, i32 noundef %73, i32 noundef %69, i8 noundef zeroext 0, i16 noundef signext %76) #19
  br label %77

77:                                               ; preds = %71, %55
  %78 = phi i64 [ 4, %55 ], [ 3, %71 ]
  %79 = phi ptr [ %52, %55 ], [ %44, %71 ]
  %80 = phi i8 [ 8, %55 ], [ 4, %71 ]
  %81 = phi ptr [ %62, %55 ], [ %72, %71 ]
  %82 = getelementptr inbounds %struct.EdgeSort, ptr %38, i64 %78
  %83 = load i32, ptr %79, align 4, !tbaa !52
  %84 = load i32, ptr %39, align 4, !tbaa !54
  %85 = load i8, ptr %48, align 2, !tbaa !159
  %86 = and i8 %85, %80
  %87 = zext nneg i8 %86 to i16
  tail call fastcc void @to_edgesort(ptr noundef nonnull %81, i32 noundef %83, i32 noundef %84, i8 noundef zeroext 0, i16 noundef signext %87) #19
  br label %88

88:                                               ; preds = %77, %68
  %89 = phi ptr [ %40, %68 ], [ %82, %77 ]
  %90 = add nsw i32 %37, -1
  %91 = getelementptr inbounds %struct.MFace, ptr %39, i64 1
  %92 = icmp sgt i32 %37, 1
  br i1 %92, label %36, label %93, !llvm.loop !160

93:                                               ; preds = %88, %31
  tail call void @qsort(ptr noundef %35, i64 noundef %33, i64 noundef 12, ptr noundef nonnull @vergedgesort) #18
  %94 = icmp ugt i32 %24, 1
  br i1 %94, label %98, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %97 = tail call ptr %96(i64 noundef 12, ptr noundef nonnull @__func__.mesh_calc_edges_mdata) #18
  br label %126

98:                                               ; preds = %93
  %99 = load i32, ptr %35, align 4, !tbaa !161
  br label %100

100:                                              ; preds = %98, %116
  %101 = phi i32 [ %106, %116 ], [ %99, %98 ]
  %102 = phi i32 [ %117, %116 ], [ 0, %98 ]
  %103 = phi i32 [ %118, %116 ], [ %24, %98 ]
  %104 = phi ptr [ %105, %116 ], [ %35, %98 ]
  %105 = getelementptr inbounds %struct.EdgeSort, ptr %104, i64 1
  %106 = load i32, ptr %105, align 4, !tbaa !161
  %107 = icmp eq i32 %101, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.EdgeSort, ptr %104, i64 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !163
  %111 = getelementptr inbounds %struct.EdgeSort, ptr %104, i64 1, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !163
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %116, label %114

114:                                              ; preds = %108, %100
  %115 = add i32 %102, 1
  br label %116

116:                                              ; preds = %108, %114
  %117 = phi i32 [ %115, %114 ], [ %102, %108 ]
  %118 = add nsw i32 %103, -1
  %119 = icmp sgt i32 %103, 2
  br i1 %119, label %100, label %120, !llvm.loop !164

120:                                              ; preds = %116
  %121 = add i32 %117, 1
  %122 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %123 = zext i32 %121 to i64
  %124 = mul nuw nsw i64 %123, 12
  %125 = tail call ptr %122(i64 noundef %124, ptr noundef nonnull @__func__.mesh_calc_edges_mdata) #18
  br i1 %94, label %131, label %126

126:                                              ; preds = %95, %120
  %127 = phi ptr [ %97, %95 ], [ %125, %120 ]
  %128 = phi i64 [ 1, %95 ], [ %123, %120 ]
  %129 = phi i32 [ 1, %95 ], [ %121, %120 ]
  %130 = load i32, ptr %35, align 4, !tbaa !161
  br label %180

131:                                              ; preds = %120
  %132 = icmp eq i8 %5, 0
  %133 = load i32, ptr %35, align 4, !tbaa !161
  br label %134

134:                                              ; preds = %131, %176
  %135 = phi i32 [ %133, %131 ], [ %140, %176 ]
  %136 = phi i32 [ %24, %131 ], [ %178, %176 ]
  %137 = phi ptr [ %35, %131 ], [ %139, %176 ]
  %138 = phi ptr [ %125, %131 ], [ %177, %176 ]
  %139 = getelementptr inbounds %struct.EdgeSort, ptr %137, i64 1
  %140 = load i32, ptr %139, align 4, !tbaa !161
  %141 = icmp eq i32 %135, %140
  %142 = getelementptr inbounds %struct.EdgeSort, ptr %137, i64 0, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !163
  br i1 %141, label %144, label %148

144:                                              ; preds = %134
  %145 = getelementptr inbounds %struct.EdgeSort, ptr %137, i64 1, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !163
  %147 = icmp eq i32 %143, %146
  br i1 %147, label %170, label %148

148:                                              ; preds = %134, %144
  store i32 %135, ptr %138, align 4, !tbaa !43
  %149 = getelementptr inbounds %struct.MEdge, ptr %138, i64 0, i32 1
  store i32 %143, ptr %149, align 4, !tbaa !46
  br i1 %132, label %154, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.EdgeSort, ptr %137, i64 0, i32 3
  %152 = load i8, ptr %151, align 1, !tbaa !165
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150, %148
  %155 = getelementptr inbounds %struct.MEdge, ptr %138, i64 0, i32 4
  store i16 34, ptr %155, align 2, !tbaa !135
  br label %156

156:                                              ; preds = %154, %150
  %157 = getelementptr inbounds %struct.EdgeSort, ptr %137, i64 0, i32 2
  %158 = load i8, ptr %157, align 4, !tbaa !166
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.MEdge, ptr %138, i64 0, i32 4
  %162 = load i16, ptr %161, align 2, !tbaa !135
  %163 = or i16 %162, 128
  store i16 %163, ptr %161, align 2, !tbaa !135
  br label %164

164:                                              ; preds = %160, %156
  %165 = add i32 %135, 1
  %166 = icmp eq i32 %165, %143
  br i1 %166, label %168, label %167

167:                                              ; preds = %164
  store i32 %143, ptr %138, align 4, !tbaa !43
  store i32 %135, ptr %149, align 4, !tbaa !46
  br label %168

168:                                              ; preds = %167, %164
  %169 = getelementptr inbounds %struct.MEdge, ptr %138, i64 1
  br label %176

170:                                              ; preds = %144
  %171 = getelementptr inbounds %struct.EdgeSort, ptr %137, i64 0, i32 3
  %172 = load i8, ptr %171, align 1, !tbaa !165
  %173 = getelementptr inbounds %struct.EdgeSort, ptr %137, i64 1, i32 3
  %174 = load i8, ptr %173, align 1, !tbaa !165
  %175 = or i8 %174, %172
  store i8 %175, ptr %173, align 1, !tbaa !165
  br label %176

176:                                              ; preds = %168, %170
  %177 = phi ptr [ %169, %168 ], [ %138, %170 ]
  %178 = add nsw i32 %136, -1
  %179 = icmp sgt i32 %136, 2
  br i1 %179, label %134, label %180, !llvm.loop !167

180:                                              ; preds = %176, %126
  %181 = phi ptr [ %127, %126 ], [ %125, %176 ]
  %182 = phi i64 [ %128, %126 ], [ %123, %176 ]
  %183 = phi i32 [ %129, %126 ], [ %121, %176 ]
  %184 = phi i32 [ %130, %126 ], [ %140, %176 ]
  %185 = phi ptr [ %127, %126 ], [ %177, %176 ]
  %186 = phi ptr [ %35, %126 ], [ %139, %176 ]
  store i32 %184, ptr %185, align 4, !tbaa !43
  %187 = getelementptr inbounds %struct.EdgeSort, ptr %186, i64 0, i32 1
  %188 = load i32, ptr %187, align 4, !tbaa !163
  %189 = getelementptr inbounds %struct.MEdge, ptr %185, i64 0, i32 1
  store i32 %188, ptr %189, align 4, !tbaa !46
  %190 = getelementptr inbounds %struct.MEdge, ptr %185, i64 0, i32 4
  %191 = getelementptr inbounds %struct.EdgeSort, ptr %186, i64 0, i32 2
  %192 = load i8, ptr %191, align 4, !tbaa !166
  %193 = icmp eq i8 %192, 0
  %194 = select i1 %193, i16 34, i16 162
  store i16 %194, ptr %190, align 2, !tbaa !135
  %195 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %195(ptr noundef %35) #18
  %196 = tail call ptr @BLI_edgehash_new_ex(ptr noundef nonnull @__func__.mesh_calc_edges_mdata, i32 noundef %183) #18
  %197 = icmp eq i32 %183, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %200, %180
  %199 = icmp sgt i32 %4, 0
  br i1 %199, label %210, label %240

200:                                              ; preds = %180, %200
  %201 = phi i64 [ %207, %200 ], [ 0, %180 ]
  %202 = phi ptr [ %208, %200 ], [ %181, %180 ]
  %203 = load i32, ptr %202, align 4, !tbaa !43
  %204 = getelementptr inbounds %struct.MEdge, ptr %202, i64 0, i32 1
  %205 = load i32, ptr %204, align 4, !tbaa !46
  %206 = inttoptr i64 %201 to ptr
  tail call void @BLI_edgehash_insert(ptr noundef %196, i32 noundef %203, i32 noundef %205, ptr noundef %206) #18
  %207 = add nuw nsw i64 %201, 1
  %208 = getelementptr inbounds %struct.MEdge, ptr %202, i64 1
  %209 = icmp eq i64 %207, %182
  br i1 %209, label %198, label %200, !llvm.loop !168

210:                                              ; preds = %198, %236
  %211 = phi ptr [ %238, %236 ], [ %2, %198 ]
  %212 = phi i32 [ %237, %236 ], [ 0, %198 ]
  %213 = getelementptr inbounds %struct.MPoly, ptr %211, i64 0, i32 1
  %214 = load i32, ptr %213, align 4, !tbaa !65
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %236, label %216

216:                                              ; preds = %210
  %217 = load i32, ptr %211, align 4, !tbaa !63
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.MLoop, ptr %1, i64 %218
  %220 = sext i32 %214 to i64
  %221 = getelementptr %struct.MLoop, ptr %219, i64 %220
  %222 = getelementptr %struct.MLoop, ptr %221, i64 -1
  br label %223

223:                                              ; preds = %216, %223
  %224 = phi i32 [ %227, %223 ], [ %214, %216 ]
  %225 = phi ptr [ %234, %223 ], [ %219, %216 ]
  %226 = phi ptr [ %225, %223 ], [ %222, %216 ]
  %227 = add nsw i32 %224, -1
  %228 = load i32, ptr %226, align 4, !tbaa !70
  %229 = load i32, ptr %225, align 4, !tbaa !70
  %230 = tail call ptr @BLI_edgehash_lookup(ptr noundef %196, i32 noundef %228, i32 noundef %229) #18
  %231 = ptrtoint ptr %230 to i64
  %232 = trunc i64 %231 to i32
  %233 = getelementptr inbounds %struct.MLoop, ptr %226, i64 0, i32 1
  store i32 %232, ptr %233, align 4, !tbaa !76
  %234 = getelementptr inbounds %struct.MLoop, ptr %225, i64 1
  %235 = icmp eq i32 %227, 0
  br i1 %235, label %236, label %223, !llvm.loop !169

236:                                              ; preds = %223, %210
  %237 = add nuw nsw i32 %212, 1
  %238 = getelementptr inbounds %struct.MPoly, ptr %211, i64 1
  %239 = icmp eq i32 %237, %4
  br i1 %239, label %240, label %210, !llvm.loop !170

240:                                              ; preds = %236, %198
  tail call void @BLI_edgehash_free(ptr noundef %196, ptr noundef null) #18
  br label %241

241:                                              ; preds = %240, %28
  %242 = phi ptr [ %181, %240 ], [ %30, %28 ]
  %243 = phi i32 [ %183, %240 ], [ 0, %28 ]
  store ptr %242, ptr %6, align 8, !tbaa !48
  store i32 %243, ptr %7, align 4, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_edgehash_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_edgehashIterator_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !171 {
  %2 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_edgehashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !174 {
  %2 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  %4 = getelementptr inbounds %struct._eh_Entry, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @BLI_edgehashIterator_getKey(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !PGOFuncName !177 {
  %4 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !172
  %6 = getelementptr inbounds %struct._eh_Entry, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !178
  store i32 %7, ptr %1, align 4, !tbaa !52
  %8 = getelementptr inbounds %struct._eh_Entry, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !179
  store i32 %9, ptr %2, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @BLI_edgehashIterator_setValue(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #14 !PGOFuncName !180 {
  %3 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !172
  %5 = getelementptr inbounds %struct._eh_Entry, ptr %4, i64 0, i32 3
  store ptr %1, ptr %5, align 8, !tbaa !175
  ret void
}

; Function Attrs: optsize
declare void @BLI_edgehashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_edgehashIterator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @edge_store_assign(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !181 {
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %5 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  store i32 %4, ptr %0, align 4
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_layertype_is_singleton(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_free_layer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @to_edgesort(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i16 noundef signext %4) unnamed_addr #4 !PGOFuncName !182 {
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  %7 = tail call i32 @llvm.umax.i32(i32 %1, i32 %2)
  store i32 %6, ptr %0, align 4
  %8 = getelementptr inbounds %struct.EdgeSort, ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.EdgeSort, ptr %0, i64 0, i32 2
  store i8 %3, ptr %9, align 4, !tbaa !166
  %10 = trunc i16 %4 to i8
  %11 = getelementptr inbounds %struct.EdgeSort, ptr %0, i64 0, i32 3
  store i8 %10, ptr %11, align 1, !tbaa !165
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vergedgesort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !PGOFuncName !183 {
  %3 = load i32, ptr %0, align 4, !tbaa !161
  %4 = load i32, ptr %1, align 4, !tbaa !161
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = icmp ult i32 %3, %4
  br i1 %7, label %17, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.EdgeSort, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !163
  %11 = getelementptr inbounds %struct.EdgeSort, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !163
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
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nofree nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"short", !36, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = !{!44, !45, i64 0}
!44 = !{!"MEdge", !45, i64 0, !45, i64 4, !36, i64 8, !36, i64 9, !39, i64 10}
!45 = !{!"int", !36, i64 0}
!46 = !{!44, !45, i64 4}
!47 = distinct !{!47, !41}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !36, i64 0}
!50 = !{!51, !45, i64 12}
!51 = !{!"MFace", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !39, i64 16, !36, i64 18, !36, i64 19}
!52 = !{!45, !45, i64 0}
!53 = distinct !{!53, !41}
!54 = !{!51, !45, i64 0}
!55 = !{!51, !45, i64 4}
!56 = !{!51, !45, i64 8}
!57 = !{!58, !45, i64 32}
!58 = !{!"SortFace", !36, i64 0, !45, i64 32}
!59 = distinct !{!59, !41}
!60 = distinct !{!60, !41}
!61 = !{!62, !45, i64 16}
!62 = !{!"SortPoly", !49, i64 0, !45, i64 8, !45, i64 12, !45, i64 16, !36, i64 20}
!63 = !{!64, !45, i64 0}
!64 = !{!"MPoly", !45, i64 0, !45, i64 4, !39, i64 8, !36, i64 10, !36, i64 11}
!65 = !{!64, !45, i64 4}
!66 = !{!62, !36, i64 20}
!67 = !{!62, !49, i64 0}
!68 = !{!62, !45, i64 8}
!69 = !{!62, !45, i64 12}
!70 = !{!71, !45, i64 0}
!71 = !{!"MLoop", !45, i64 0, !45, i64 4}
!72 = !{!73, !36, i64 18}
!73 = !{!"MVert", !36, i64 0, !36, i64 12, !36, i64 18, !36, i64 19}
!74 = distinct !{!74, !41}
!75 = distinct !{!75, !41}
!76 = !{!71, !45, i64 4}
!77 = distinct !{!77, !41}
!78 = distinct !{!78, !41}
!79 = distinct !{!79, !41}
!80 = distinct !{!80, !41}
!81 = distinct !{!81, !41}
!82 = distinct !{!82, !41}
!83 = distinct !{!83, !41}
!84 = distinct !{!84, !41}
!85 = !{!86, !45, i64 8}
!86 = !{!"MDeformVert", !49, i64 0, !45, i64 8, !45, i64 12}
!87 = !{!86, !49, i64 0}
!88 = !{!89, !35, i64 4}
!89 = !{!"MDeformWeight", !45, i64 0, !35, i64 4}
!90 = !{!89, !45, i64 0}
!91 = distinct !{!91, !41}
!92 = distinct !{!92, !41}
!93 = !{!94, !49, i64 160}
!94 = !{!"Mesh", !95, i64 0, !49, i64 120, !49, i64 128, !49, i64 136, !49, i64 144, !49, i64 152, !49, i64 160, !49, i64 168, !49, i64 176, !49, i64 184, !49, i64 192, !49, i64 200, !49, i64 208, !49, i64 216, !49, i64 224, !49, i64 232, !49, i64 240, !49, i64 248, !49, i64 256, !49, i64 264, !49, i64 272, !96, i64 280, !96, i64 480, !96, i64 680, !96, i64 880, !96, i64 1080, !45, i64 1280, !45, i64 1284, !45, i64 1288, !45, i64 1292, !45, i64 1296, !45, i64 1300, !45, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !45, i64 1344, !39, i64 1348, !39, i64 1350, !35, i64 1352, !45, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !39, i64 1366, !49, i64 1368}
!95 = !{!"ID", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !36, i64 32, !39, i64 98, !45, i64 100, !45, i64 104, !45, i64 108, !49, i64 112}
!96 = !{!"CustomData", !49, i64 0, !36, i64 8, !45, i64 172, !45, i64 176, !45, i64 180, !49, i64 184, !49, i64 192}
!97 = !{!94, !45, i64 1292}
!98 = !{!99, !45, i64 0}
!99 = !{!"MSelect", !45, i64 0, !45, i64 4}
!100 = !{!99, !45, i64 4}
!101 = !{!94, !45, i64 1280}
!102 = !{!94, !45, i64 1284}
!103 = !{!94, !45, i64 1288}
!104 = distinct !{!104, !41}
!105 = !{!36, !36, i64 0}
!106 = !{!"mesh_validate.c:zero_v3"}
!107 = !{!"mesh_validate.c:edge_store_from_mface_quad"}
!108 = !{!"mesh_validate.c:int64_cmp"}
!109 = !{!110, !110, i64 0}
!110 = !{!"long", !36, i64 0}
!111 = !{!"mesh_validate.c:edge_store_from_mface_tri"}
!112 = !{!"mesh_validate.c:search_face_cmp"}
!113 = !{!"mesh_validate.c:int_cmp"}
!114 = !{!"mesh_validate.c:search_poly_cmp"}
!115 = distinct !{!115, !41}
!116 = !{!"mesh_validate.c:search_polyloop_cmp"}
!117 = !{!94, !49, i64 208}
!118 = distinct !{!118, !41}
!119 = !{!94, !45, i64 1300}
!120 = !{!94, !45, i64 1296}
!121 = !{!94, !49, i64 168}
!122 = !{!94, !49, i64 184}
!123 = distinct !{!123, !41}
!124 = distinct !{!124, !41}
!125 = distinct !{!125, !41}
!126 = distinct !{!126, !41}
!127 = !{!94, !49, i64 240}
!128 = distinct !{!128, !41}
!129 = distinct !{!129, !41}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = distinct !{!132, !41}
!133 = !{i8 0, i8 2}
!134 = !{i64 0, i64 4, !52, i64 4, i64 4, !52, i64 8, i64 1, !105, i64 9, i64 1, !105, i64 10, i64 2, !38}
!135 = !{!44, !39, i64 10}
!136 = distinct !{!136, !41}
!137 = distinct !{!137, !41}
!138 = distinct !{!138, !41}
!139 = !{i64 0, i64 8, !48, i64 8, i64 164, !105, i64 172, i64 4, !52, i64 176, i64 4, !52, i64 180, i64 4, !52, i64 184, i64 8, !48, i64 192, i64 8, !48}
!140 = !{!"mesh_validate.c:mesh_validate_customdata"}
!141 = !{!96, !45, i64 172}
!142 = !{!96, !49, i64 0}
!143 = !{!144, !45, i64 0}
!144 = !{!"CustomDataLayer", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !36, i64 32, !49, i64 96}
!145 = distinct !{!145, !41}
!146 = !{!94, !49, i64 232}
!147 = !{!94, !49, i64 248}
!148 = !{!94, !49, i64 1080}
!149 = distinct !{!149, !41}
!150 = !{!94, !49, i64 880}
!151 = distinct !{!151, !41}
!152 = distinct !{!152, !41}
!153 = !{!94, !39, i64 1366}
!154 = !{!64, !39, i64 8}
!155 = distinct !{!155, !41}
!156 = !{!"mesh_validate.c:max_ii"}
!157 = !{!"mesh_validate.c:mesh_calc_edges_mdata"}
!158 = distinct !{!158, !41}
!159 = !{!51, !36, i64 18}
!160 = distinct !{!160, !41}
!161 = !{!162, !45, i64 0}
!162 = !{!"EdgeSort", !45, i64 0, !45, i64 4, !36, i64 8, !36, i64 9}
!163 = !{!162, !45, i64 4}
!164 = distinct !{!164, !41}
!165 = !{!162, !36, i64 9}
!166 = !{!162, !36, i64 8}
!167 = distinct !{!167, !41}
!168 = distinct !{!168, !41}
!169 = distinct !{!169, !41}
!170 = distinct !{!170, !41}
!171 = !{!"mesh_validate.c:BLI_edgehashIterator_isDone"}
!172 = !{!173, !49, i64 8}
!173 = !{!"EdgeHashIterator", !49, i64 0, !49, i64 8, !45, i64 16}
!174 = !{!"mesh_validate.c:BLI_edgehashIterator_getValue"}
!175 = !{!176, !49, i64 16}
!176 = !{!"_eh_Entry", !49, i64 0, !45, i64 8, !45, i64 12, !49, i64 16}
!177 = !{!"mesh_validate.c:BLI_edgehashIterator_getKey"}
!178 = !{!176, !45, i64 8}
!179 = !{!176, !45, i64 12}
!180 = !{!"mesh_validate.c:BLI_edgehashIterator_setValue"}
!181 = !{!"mesh_validate.c:edge_store_assign"}
!182 = !{!"mesh_validate.c:to_edgesort"}
!183 = !{!"mesh_validate.c:vergedgesort"}
