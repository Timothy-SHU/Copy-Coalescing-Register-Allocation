; ModuleID = 'blender/source/blender/bmesh/operators/bmo_triangulate.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_triangulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.ScanFillContext = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, i16, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMIter = type { %union.anon.1, ptr, ptr, i32, i8 }
%union.anon.1 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.ScanFillVert = type { ptr, ptr, %union.anon.0, [3 x float], [2 x float], i32, i16, i8, i8 }
%union.anon.0 = type { ptr }
%struct.SortNormal = type { float, [3 x float] }
%struct.ScanFillFace = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }

@.str = private unnamed_addr constant [12 x i8] c"quad_method\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ngon_method\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"face_map.out\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"use_beauty\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"use_dissolve\00", align 1
@__func__.bmo_triangle_fill_exec = private unnamed_addr constant [23 x i8] c"bmo_triangle_fill_exec\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"beautify_fill faces=%ff edges=%Fe\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_triangulate_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #6
  %4 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %5 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %6 = tail call ptr @BMO_slot_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.2) #6
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 10, i8 noundef zeroext 16, i8 noundef zeroext 0) #6
  tail call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.3, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #6
  tail call void @BM_mesh_triangulate(ptr noundef %0, i32 noundef %3, i32 noundef %4, i8 noundef zeroext 1, ptr noundef %1, ptr noundef %6) #6
  tail call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull @.str.4, i8 noundef zeroext 2, i8 noundef zeroext 16) #6
  tail call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull @.str.5, i8 noundef zeroext 8, i8 noundef zeroext 16) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_triangulate(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_hflag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_triangle_fill_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.ScanFillContext, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [2 x ptr], align 16
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca [2 x ptr], align 16
  %9 = alloca [3 x ptr], align 16
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMOperator, align 8
  %12 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.6) #6
  %13 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.7) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  %14 = tail call i32 @BMO_slot_buffer_count(ptr noundef %1, ptr noundef nonnull @.str.8) #6
  %15 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @__func__.bmo_triangle_fill_exec, i32 noundef %14) #6
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #6
  call void @BLI_scanfill_begin(ptr noundef nonnull %4) #6
  %16 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.8, i8 noundef zeroext 2) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %68, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %20 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 1
  br label %21

21:                                               ; preds = %18, %61
  %22 = phi ptr [ %16, %18 ], [ %66, %61 ]
  %23 = phi i8 [ 0, %18 ], [ %62, %61 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %24 = getelementptr inbounds %struct.BMEdge, ptr %22, i64 0, i32 2
  %25 = getelementptr inbounds %struct.BMEdge, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = load i32, ptr %19, align 8, !tbaa !42
  %28 = sext i32 %27 to i64
  %29 = getelementptr %struct.BMFlagLayer, ptr %26, i64 %28
  %30 = getelementptr %struct.BMFlagLayer, ptr %29, i64 -1
  %31 = load i16, ptr %30, align 2, !tbaa !47
  %32 = or i16 %31, 4
  store i16 %32, ptr %30, align 2, !tbaa !47
  %33 = icmp eq i8 %23, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.BMEdge, ptr %22, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = icmp eq ptr %40, %36
  br label %42

42:                                               ; preds = %38, %34, %21
  %43 = phi i1 [ true, %21 ], [ false, %34 ], [ %41, %38 ]
  br label %44

44:                                               ; preds = %42, %58
  %45 = phi i64 [ 0, %42 ], [ %59, %58 ]
  %46 = getelementptr inbounds ptr, ptr %24, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !52
  %48 = call ptr @BLI_ghash_lookup(ptr noundef %15, ptr noundef %47) #6
  %49 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 %45
  store ptr %48, ptr %49, align 8, !tbaa !52
  %50 = icmp eq ptr %48, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load ptr, ptr %46, align 8, !tbaa !52
  %53 = getelementptr inbounds %struct.BMVert, ptr %52, i64 0, i32 2
  %54 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %4, ptr noundef nonnull %53) #6
  store ptr %54, ptr %49, align 8, !tbaa !52
  %55 = load ptr, ptr %46, align 8, !tbaa !52
  %56 = getelementptr inbounds %struct.ScanFillVert, ptr %54, i64 0, i32 2
  store ptr %55, ptr %56, align 8, !tbaa !53
  %57 = load ptr, ptr %46, align 8, !tbaa !52
  call void @BLI_ghash_insert(ptr noundef %15, ptr noundef %57, ptr noundef %54) #6
  br label %58

58:                                               ; preds = %44, %51
  %59 = add nuw nsw i64 %45, 1
  %60 = icmp eq i64 %45, 0
  br i1 %60, label %44, label %61, !llvm.loop !54

61:                                               ; preds = %58
  %62 = zext i1 %43 to i8
  %63 = load ptr, ptr %6, align 16, !tbaa !52
  %64 = load ptr, ptr %20, align 8, !tbaa !52
  %65 = call ptr @BLI_scanfill_edge_add(ptr noundef nonnull %4, ptr noundef %63, ptr noundef %64) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  %66 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #6
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %21, !llvm.loop !57

68:                                               ; preds = %61, %2
  %69 = phi i8 [ 0, %2 ], [ %62, %61 ]
  call void @BLI_ghash_free(ptr noundef %15, ptr noundef null, ptr noundef null) #6
  %70 = load float, ptr %5, align 4, !tbaa !58
  %71 = fcmp une float %70, 0.000000e+00
  %72 = getelementptr inbounds float, ptr %5, i64 1
  %73 = load float, ptr %72, align 4
  %74 = fcmp une float %73, 0.000000e+00
  %75 = select i1 %71, i1 true, i1 %74
  %76 = getelementptr inbounds float, ptr %5, i64 2
  %77 = load float, ptr %76, align 4
  %78 = fcmp une float %77, 0.000000e+00
  %79 = select i1 %75, i1 true, i1 %78
  br i1 %79, label %288, label %80

80:                                               ; preds = %68
  %81 = call i32 @BLI_ghash_size(ptr noundef %15) #6
  %82 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !52
  %83 = zext i32 %81 to i64
  %84 = shl nuw nsw i64 %83, 4
  %85 = call ptr %82(i64 noundef %84, ptr noundef nonnull @__func__.bmo_triangle_fill_exec) #6
  %86 = load ptr, ptr %4, align 8, !tbaa !52
  %87 = icmp eq ptr %86, null
  br i1 %87, label %217, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %90 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %91 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %92 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %93 = getelementptr inbounds [2 x ptr], ptr %8, i64 0, i64 1
  br label %94

94:                                               ; preds = %88, %212
  %95 = phi ptr [ %86, %88 ], [ %215, %212 ]
  %96 = phi i8 [ 1, %88 ], [ %213, %212 ]
  %97 = phi i32 [ 0, %88 ], [ %214, %212 ]
  %98 = getelementptr inbounds %struct.ScanFillVert, ptr %95, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  %100 = zext i32 %97 to i64
  %101 = getelementptr inbounds %struct.SortNormal, ptr %85, i64 %100
  store float -1.000000e+00, ptr %101, align 4, !tbaa !60
  %102 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 3
  %103 = load float, ptr %102, align 4, !tbaa !58
  %104 = load float, ptr %5, align 4, !tbaa !58
  %105 = fadd float %103, %104
  store float %105, ptr %5, align 4, !tbaa !58
  %106 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 3, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !58
  %108 = load float, ptr %72, align 4, !tbaa !58
  %109 = fadd float %107, %108
  store float %109, ptr %72, align 4, !tbaa !58
  %110 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 3, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !58
  %112 = load float, ptr %76, align 4, !tbaa !58
  %113 = fadd float %111, %112
  store float %113, ptr %76, align 4, !tbaa !58
  store i8 4, ptr %89, align 4, !tbaa !62
  store ptr @bmiter__edge_of_vert_begin, ptr %90, align 8, !tbaa !64
  store ptr @bmiter__edge_of_vert_step, ptr %91, align 8, !tbaa !65
  store ptr %99, ptr %7, align 8, !tbaa !53
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %7) #6
  %114 = load ptr, ptr %91, align 8, !tbaa !65
  %115 = call ptr %114(ptr noundef nonnull %7) #6
  %116 = icmp eq ptr %115, null
  br i1 %116, label %140, label %117

117:                                              ; preds = %94, %135
  %118 = phi i32 [ %136, %135 ], [ 0, %94 ]
  %119 = phi ptr [ %138, %135 ], [ %115, %94 ]
  %120 = getelementptr inbounds %struct.BMEdge, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !34
  %122 = load i32, ptr %92, align 8, !tbaa !42
  %123 = sext i32 %122 to i64
  %124 = getelementptr %struct.BMFlagLayer, ptr %121, i64 %123
  %125 = getelementptr %struct.BMFlagLayer, ptr %124, i64 -1
  %126 = load i16, ptr %125, align 2, !tbaa !47
  %127 = and i16 %126, 4
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %117
  %130 = icmp eq i32 %118, 2
  br i1 %130, label %140, label %131

131:                                              ; preds = %129
  %132 = add i32 %118, 1
  %133 = zext i32 %118 to i64
  %134 = getelementptr inbounds [2 x ptr], ptr %8, i64 0, i64 %133
  store ptr %119, ptr %134, align 8, !tbaa !52
  br label %135

135:                                              ; preds = %117, %131
  %136 = phi i32 [ %132, %131 ], [ %118, %117 ]
  %137 = load ptr, ptr %91, align 8, !tbaa !65
  %138 = call ptr %137(ptr noundef nonnull %7) #6
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %117, !llvm.loop !66

140:                                              ; preds = %135, %129, %94
  %141 = phi i32 [ 0, %94 ], [ %136, %135 ], [ 0, %129 ]
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %212

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 2
  %145 = load ptr, ptr %8, align 16, !tbaa !52
  %146 = getelementptr inbounds %struct.BMEdge, ptr %145, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !67
  %148 = icmp eq ptr %147, %99
  %149 = getelementptr inbounds %struct.BMEdge, ptr %145, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !68
  %151 = icmp eq ptr %150, %99
  %152 = select i1 %151, ptr %147, ptr null
  %153 = select i1 %148, ptr %150, ptr %152
  %154 = getelementptr inbounds %struct.BMVert, ptr %153, i64 0, i32 2
  %155 = load float, ptr %144, align 4, !tbaa !58
  %156 = load float, ptr %154, align 4, !tbaa !58
  %157 = fsub float %155, %156
  %158 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 2, i64 1
  %159 = load float, ptr %158, align 4, !tbaa !58
  %160 = getelementptr inbounds %struct.BMVert, ptr %153, i64 0, i32 2, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !58
  %162 = fsub float %159, %161
  %163 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 2, i64 2
  %164 = load float, ptr %163, align 4, !tbaa !58
  %165 = getelementptr inbounds %struct.BMVert, ptr %153, i64 0, i32 2, i64 2
  %166 = load float, ptr %165, align 4, !tbaa !58
  %167 = fsub float %164, %166
  %168 = load ptr, ptr %93, align 8, !tbaa !52
  %169 = getelementptr inbounds %struct.BMEdge, ptr %168, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !67
  %171 = icmp eq ptr %170, %99
  %172 = getelementptr inbounds %struct.BMEdge, ptr %168, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !68
  %174 = icmp eq ptr %173, %99
  %175 = select i1 %174, ptr %170, ptr null
  %176 = select i1 %171, ptr %173, ptr %175
  %177 = getelementptr inbounds %struct.BMVert, ptr %176, i64 0, i32 2
  %178 = load float, ptr %177, align 4, !tbaa !58
  %179 = fsub float %155, %178
  %180 = getelementptr inbounds %struct.BMVert, ptr %176, i64 0, i32 2, i64 1
  %181 = load float, ptr %180, align 4, !tbaa !58
  %182 = fsub float %159, %181
  %183 = getelementptr inbounds %struct.BMVert, ptr %176, i64 0, i32 2, i64 2
  %184 = load float, ptr %183, align 4, !tbaa !58
  %185 = fsub float %164, %184
  %186 = getelementptr inbounds %struct.SortNormal, ptr %85, i64 %100, i32 1
  %187 = fneg float %167
  %188 = fmul float %182, %187
  %189 = call float @llvm.fmuladd.f32(float %162, float %185, float %188)
  store float %189, ptr %186, align 4, !tbaa !58
  %190 = fneg float %157
  %191 = fmul float %185, %190
  %192 = call float @llvm.fmuladd.f32(float %167, float %179, float %191)
  %193 = getelementptr inbounds float, ptr %186, i64 1
  store float %192, ptr %193, align 4, !tbaa !58
  %194 = fneg float %162
  %195 = fmul float %179, %194
  %196 = call float @llvm.fmuladd.f32(float %157, float %182, float %195)
  %197 = getelementptr inbounds float, ptr %186, i64 2
  store float %196, ptr %197, align 4, !tbaa !58
  %198 = fmul float %192, %192
  %199 = call float @llvm.fmuladd.f32(float %189, float %189, float %198)
  %200 = call float @llvm.fmuladd.f32(float %196, float %196, float %199)
  store float %200, ptr %101, align 4, !tbaa !60
  %201 = fmul float %162, %162
  %202 = call float @llvm.fmuladd.f32(float %157, float %157, float %201)
  %203 = call float @llvm.fmuladd.f32(float %167, float %167, float %202)
  %204 = fmul float %182, %182
  %205 = call float @llvm.fmuladd.f32(float %179, float %179, float %204)
  %206 = call float @llvm.fmuladd.f32(float %185, float %185, float %205)
  %207 = fcmp ogt float %203, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %143
  %209 = fneg float %189
  store float %209, ptr %186, align 4, !tbaa !58
  %210 = fneg float %192
  store float %210, ptr %193, align 4, !tbaa !58
  %211 = fneg float %196
  store float %211, ptr %197, align 4, !tbaa !58
  br label %212

212:                                              ; preds = %143, %208, %140
  %213 = phi i8 [ %96, %140 ], [ 0, %208 ], [ 0, %143 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  %214 = add i32 %97, 1
  %215 = load ptr, ptr %95, align 8, !tbaa !52
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %94, !llvm.loop !69

217:                                              ; preds = %212, %80
  %218 = phi i8 [ 1, %80 ], [ %213, %212 ]
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %285

220:                                              ; preds = %217
  call void @qsort(ptr noundef %85, i64 noundef %83, i64 noundef 16, ptr noundef nonnull @BLI_sortutil_cmp_float_reverse) #6
  %221 = getelementptr inbounds %struct.SortNormal, ptr %85, i64 0, i32 1
  %222 = load float, ptr %221, align 4, !tbaa !58
  store float %222, ptr %5, align 4, !tbaa !58
  %223 = getelementptr inbounds %struct.SortNormal, ptr %85, i64 0, i32 1, i64 1
  %224 = load float, ptr %223, align 4, !tbaa !58
  store float %224, ptr %72, align 4, !tbaa !58
  %225 = getelementptr inbounds %struct.SortNormal, ptr %85, i64 0, i32 1, i64 2
  %226 = load float, ptr %225, align 4, !tbaa !58
  store float %226, ptr %76, align 4, !tbaa !58
  %227 = icmp eq i32 %81, 0
  br i1 %227, label %265, label %228

228:                                              ; preds = %220
  %229 = zext i32 %81 to i64
  br label %230

230:                                              ; preds = %228, %253
  %231 = phi i64 [ 0, %228 ], [ %263, %253 ]
  %232 = getelementptr inbounds %struct.SortNormal, ptr %85, i64 %231
  %233 = load float, ptr %232, align 4, !tbaa !60
  %234 = fcmp oeq float %233, -1.000000e+00
  br i1 %234, label %265, label %235

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.SortNormal, ptr %85, i64 %231, i32 1
  %237 = load float, ptr %5, align 4, !tbaa !58
  %238 = load float, ptr %236, align 4, !tbaa !58
  %239 = load float, ptr %72, align 4, !tbaa !58
  %240 = getelementptr inbounds float, ptr %236, i64 1
  %241 = load float, ptr %240, align 4, !tbaa !58
  %242 = fmul float %239, %241
  %243 = call float @llvm.fmuladd.f32(float %237, float %238, float %242)
  %244 = load float, ptr %76, align 4, !tbaa !58
  %245 = getelementptr inbounds float, ptr %236, i64 2
  %246 = load float, ptr %245, align 4, !tbaa !58
  %247 = call float @llvm.fmuladd.f32(float %244, float %246, float %243)
  %248 = fcmp olt float %247, 0.000000e+00
  br i1 %248, label %249, label %253

249:                                              ; preds = %235
  %250 = fneg float %238
  store float %250, ptr %236, align 4, !tbaa !58
  %251 = fneg float %241
  store float %251, ptr %240, align 4, !tbaa !58
  %252 = fneg float %246
  store float %252, ptr %245, align 4, !tbaa !58
  br label %253

253:                                              ; preds = %249, %235
  %254 = load float, ptr %236, align 4, !tbaa !58
  %255 = load float, ptr %5, align 4, !tbaa !58
  %256 = fadd float %254, %255
  store float %256, ptr %5, align 4, !tbaa !58
  %257 = load float, ptr %240, align 4, !tbaa !58
  %258 = load float, ptr %72, align 4, !tbaa !58
  %259 = fadd float %257, %258
  store float %259, ptr %72, align 4, !tbaa !58
  %260 = load float, ptr %245, align 4, !tbaa !58
  %261 = load float, ptr %76, align 4, !tbaa !58
  %262 = fadd float %260, %261
  store float %262, ptr %76, align 4, !tbaa !58
  %263 = add nuw nsw i64 %231, 1
  %264 = icmp eq i64 %263, %229
  br i1 %264, label %265, label %230, !llvm.loop !70

265:                                              ; preds = %253, %230, %220
  %266 = load float, ptr %5, align 4, !tbaa !58
  %267 = load float, ptr %72, align 4, !tbaa !58
  %268 = fmul float %267, %267
  %269 = call float @llvm.fmuladd.f32(float %266, float %266, float %268)
  %270 = load float, ptr %76, align 4, !tbaa !58
  %271 = call float @llvm.fmuladd.f32(float %270, float %270, float %269)
  %272 = fcmp ogt float %271, 0x38AA95A5C0000000
  br i1 %272, label %273, label %282

273:                                              ; preds = %265
  %274 = call float @sqrtf(float noundef %271) #6
  %275 = fdiv float 1.000000e+00, %274
  %276 = load float, ptr %5, align 4, !tbaa !58
  %277 = fmul float %276, %275
  store float %277, ptr %5, align 4, !tbaa !58
  %278 = load float, ptr %72, align 4, !tbaa !58
  %279 = fmul float %275, %278
  store float %279, ptr %72, align 4, !tbaa !58
  %280 = load float, ptr %76, align 4, !tbaa !58
  %281 = fmul float %275, %280
  br label %283

282:                                              ; preds = %265
  store float 0.000000e+00, ptr %5, align 4, !tbaa !58
  store float 0.000000e+00, ptr %72, align 4, !tbaa !58
  br label %283

283:                                              ; preds = %273, %282
  %284 = phi float [ 0.000000e+00, %282 ], [ %281, %273 ]
  store float %284, ptr %76, align 4, !tbaa !58
  br label %285

285:                                              ; preds = %217, %283
  %286 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  call void %286(ptr noundef %85) #6
  %287 = icmp eq i8 %69, 0
  br label %288

288:                                              ; preds = %68, %285
  %289 = phi i1 [ %287, %285 ], [ true, %68 ]
  %290 = load float, ptr %5, align 4, !tbaa !58
  %291 = load float, ptr %72, align 4, !tbaa !58
  %292 = fmul float %291, %291
  %293 = call float @llvm.fmuladd.f32(float %290, float %290, float %292)
  %294 = load float, ptr %76, align 4, !tbaa !58
  %295 = call float @llvm.fmuladd.f32(float %294, float %294, float %293)
  %296 = fcmp ogt float %295, 0x38AA95A5C0000000
  br i1 %296, label %297, label %306

297:                                              ; preds = %288
  %298 = call float @sqrtf(float noundef %295) #6
  %299 = fdiv float 1.000000e+00, %298
  %300 = load float, ptr %5, align 4, !tbaa !58
  %301 = fmul float %300, %299
  store float %301, ptr %5, align 4, !tbaa !58
  %302 = load float, ptr %72, align 4, !tbaa !58
  %303 = fmul float %299, %302
  store float %303, ptr %72, align 4, !tbaa !58
  %304 = load float, ptr %76, align 4, !tbaa !58
  %305 = fmul float %299, %304
  br label %307

306:                                              ; preds = %288
  store float 0.000000e+00, ptr %5, align 4, !tbaa !58
  store float 0.000000e+00, ptr %72, align 4, !tbaa !58
  br label %307

307:                                              ; preds = %297, %306
  %308 = phi float [ 0.000000e+00, %306 ], [ %305, %297 ]
  store float %308, ptr %76, align 4, !tbaa !58
  %309 = call i32 @BLI_scanfill_calc_ex(ptr noundef nonnull %4, i32 noundef 28, ptr noundef nonnull %5) #6
  br i1 %289, label %394, label %310

310:                                              ; preds = %307
  %311 = getelementptr inbounds %struct.ScanFillContext, ptr %4, i64 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !71
  %313 = icmp eq ptr %312, null
  br i1 %313, label %381, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds ptr, ptr %9, i64 1
  %316 = getelementptr inbounds ptr, ptr %9, i64 2
  %317 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %318

318:                                              ; preds = %314, %376
  %319 = phi ptr [ %312, %314 ], [ %377, %376 ]
  %320 = phi i32 [ 0, %314 ], [ %373, %376 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #6
  %321 = getelementptr inbounds %struct.ScanFillFace, ptr %319, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !73
  %323 = getelementptr inbounds %struct.ScanFillVert, ptr %322, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !53
  store ptr %324, ptr %9, align 16, !tbaa !52
  %325 = getelementptr inbounds %struct.ScanFillFace, ptr %319, i64 0, i32 3
  %326 = load ptr, ptr %325, align 8, !tbaa !75
  %327 = getelementptr inbounds %struct.ScanFillVert, ptr %326, i64 0, i32 2
  %328 = load ptr, ptr %327, align 8, !tbaa !53
  store ptr %328, ptr %315, align 8, !tbaa !52
  %329 = getelementptr inbounds %struct.ScanFillFace, ptr %319, i64 0, i32 4
  %330 = load ptr, ptr %329, align 8, !tbaa !76
  %331 = getelementptr inbounds %struct.ScanFillVert, ptr %330, i64 0, i32 2
  %332 = load ptr, ptr %331, align 8, !tbaa !53
  store ptr %332, ptr %316, align 16, !tbaa !52
  br label %333

333:                                              ; preds = %318, %372
  %334 = phi i64 [ 0, %318 ], [ %374, %372 ]
  %335 = phi i64 [ 2, %318 ], [ %334, %372 ]
  %336 = phi i32 [ %320, %318 ], [ %373, %372 ]
  %337 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 %334
  %338 = load ptr, ptr %337, align 8, !tbaa !52
  %339 = and i64 %335, 4294967295
  %340 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !52
  %342 = call ptr @BM_edge_exists(ptr noundef %338, ptr noundef %341) #6
  %343 = icmp eq ptr %342, null
  br i1 %343, label %372, label %344

344:                                              ; preds = %333
  %345 = getelementptr inbounds %struct.BMEdge, ptr %342, i64 0, i32 4
  %346 = load ptr, ptr %345, align 8, !tbaa !49
  %347 = icmp eq ptr %346, null
  br i1 %347, label %353, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.BMLoop, ptr %346, i64 0, i32 4
  %350 = load ptr, ptr %349, align 8, !tbaa !50
  %351 = icmp eq ptr %350, %346
  %352 = zext i1 %351 to i8
  br label %353

353:                                              ; preds = %344, %348
  %354 = phi i8 [ 0, %344 ], [ %352, %348 ]
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %372, label %356

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.BMEdge, ptr %342, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !34
  %359 = load i32, ptr %317, align 8, !tbaa !42
  %360 = sext i32 %359 to i64
  %361 = getelementptr %struct.BMFlagLayer, ptr %358, i64 %360
  %362 = getelementptr %struct.BMFlagLayer, ptr %361, i64 -1
  %363 = load i16, ptr %362, align 2, !tbaa !47
  %364 = and i16 %363, 4
  %365 = icmp eq i16 %364, 0
  br i1 %365, label %372, label %366

366:                                              ; preds = %356
  %367 = getelementptr inbounds %struct.BMLoop, ptr %346, i64 0, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !77
  %369 = icmp eq ptr %368, %338
  %370 = select i1 %369, i32 1, i32 -1
  %371 = add nsw i32 %370, %336
  br label %372

372:                                              ; preds = %333, %353, %356, %366
  %373 = phi i32 [ %371, %366 ], [ %336, %356 ], [ %336, %353 ], [ %336, %333 ]
  %374 = add nuw nsw i64 %334, 1
  %375 = icmp eq i64 %374, 3
  br i1 %375, label %376, label %333, !llvm.loop !78

376:                                              ; preds = %372
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #6
  %377 = load ptr, ptr %319, align 8, !tbaa !79
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %318, !llvm.loop !80

379:                                              ; preds = %376
  %380 = icmp sgt i32 %373, -1
  br label %381

381:                                              ; preds = %379, %310
  %382 = phi i1 [ true, %310 ], [ %380, %379 ]
  %383 = load ptr, ptr %311, align 8
  %384 = icmp eq ptr %383, null
  %385 = select i1 %382, i1 true, i1 %384
  br i1 %385, label %394, label %386

386:                                              ; preds = %381, %386
  %387 = phi ptr [ %392, %386 ], [ %383, %381 ]
  %388 = getelementptr inbounds %struct.ScanFillFace, ptr %387, i64 0, i32 3
  %389 = load ptr, ptr %388, align 8, !tbaa !75
  %390 = getelementptr inbounds %struct.ScanFillFace, ptr %387, i64 0, i32 4
  %391 = load ptr, ptr %390, align 8, !tbaa !76
  store ptr %391, ptr %388, align 8, !tbaa !75
  store ptr %389, ptr %390, align 8, !tbaa !76
  %392 = load ptr, ptr %387, align 8, !tbaa !79
  %393 = icmp eq ptr %392, null
  br i1 %393, label %394, label %386, !llvm.loop !81

394:                                              ; preds = %386, %381, %307
  %395 = getelementptr inbounds %struct.ScanFillContext, ptr %4, i64 0, i32 2
  %396 = load ptr, ptr %395, align 8, !tbaa !71
  %397 = icmp eq ptr %396, null
  br i1 %397, label %451, label %398

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %400 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %401 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %402 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  br label %403

403:                                              ; preds = %398, %448
  %404 = phi ptr [ %396, %398 ], [ %449, %448 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #6
  %405 = getelementptr inbounds %struct.ScanFillFace, ptr %404, i64 0, i32 2
  %406 = load ptr, ptr %405, align 8, !tbaa !73
  %407 = getelementptr inbounds %struct.ScanFillVert, ptr %406, i64 0, i32 2
  %408 = load ptr, ptr %407, align 8, !tbaa !53
  %409 = getelementptr inbounds %struct.ScanFillFace, ptr %404, i64 0, i32 3
  %410 = load ptr, ptr %409, align 8, !tbaa !75
  %411 = getelementptr inbounds %struct.ScanFillVert, ptr %410, i64 0, i32 2
  %412 = load ptr, ptr %411, align 8, !tbaa !53
  %413 = getelementptr inbounds %struct.ScanFillFace, ptr %404, i64 0, i32 4
  %414 = load ptr, ptr %413, align 8, !tbaa !76
  %415 = getelementptr inbounds %struct.ScanFillVert, ptr %414, i64 0, i32 2
  %416 = load ptr, ptr %415, align 8, !tbaa !53
  %417 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %408, ptr noundef %412, ptr noundef %416, ptr noundef null, ptr noundef null, i32 noundef 2) #6
  %418 = getelementptr inbounds %struct.BMFace, ptr %417, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !82
  %420 = load i32, ptr %399, align 8, !tbaa !42
  %421 = sext i32 %420 to i64
  %422 = getelementptr %struct.BMFlagLayer, ptr %419, i64 %421
  %423 = getelementptr %struct.BMFlagLayer, ptr %422, i64 -1
  %424 = load i16, ptr %423, align 2, !tbaa !47
  %425 = or i16 %424, 1
  store i16 %425, ptr %423, align 2, !tbaa !47
  store i8 11, ptr %400, align 4, !tbaa !62
  store ptr @bmiter__loop_of_face_begin, ptr %401, align 8, !tbaa !64
  store ptr @bmiter__loop_of_face_step, ptr %402, align 8, !tbaa !65
  store ptr %417, ptr %10, align 8, !tbaa !53
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %10) #6
  %426 = load ptr, ptr %402, align 8, !tbaa !65
  %427 = call ptr %426(ptr noundef nonnull %10) #6
  %428 = icmp eq ptr %427, null
  br i1 %428, label %448, label %429

429:                                              ; preds = %403, %444
  %430 = phi ptr [ %446, %444 ], [ %427, %403 ]
  %431 = getelementptr inbounds %struct.BMLoop, ptr %430, i64 0, i32 2
  %432 = load ptr, ptr %431, align 8, !tbaa !84
  %433 = getelementptr inbounds %struct.BMEdge, ptr %432, i64 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !34
  %435 = load i32, ptr %399, align 8, !tbaa !42
  %436 = sext i32 %435 to i64
  %437 = getelementptr %struct.BMFlagLayer, ptr %434, i64 %436
  %438 = getelementptr %struct.BMFlagLayer, ptr %437, i64 -1
  %439 = load i16, ptr %438, align 2, !tbaa !47
  %440 = and i16 %439, 4
  %441 = icmp eq i16 %440, 0
  br i1 %441, label %442, label %444

442:                                              ; preds = %429
  %443 = or i16 %439, 1
  store i16 %443, ptr %438, align 2, !tbaa !47
  br label %444

444:                                              ; preds = %429, %442
  %445 = load ptr, ptr %402, align 8, !tbaa !65
  %446 = call ptr %445(ptr noundef nonnull %10) #6
  %447 = icmp eq ptr %446, null
  br i1 %447, label %448, label %429, !llvm.loop !85

448:                                              ; preds = %444, %403
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #6
  %449 = load ptr, ptr %404, align 8, !tbaa !79
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %403, !llvm.loop !86

451:                                              ; preds = %448, %394
  call void @BLI_scanfill_end(ptr noundef nonnull %4) #6
  %452 = icmp eq i8 %12, 0
  br i1 %452, label %458, label %453

453:                                              ; preds = %451
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %11) #6
  %454 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %455 = load i32, ptr %454, align 8, !tbaa !87
  %456 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %455, ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef 4) #6
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %11) #6
  %457 = getelementptr inbounds %struct.BMOperator, ptr %11, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %457, ptr noundef nonnull @.str.11, i8 noundef zeroext 10, i16 noundef signext 1) #6
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %11) #6
  br label %458

458:                                              ; preds = %453, %451
  %459 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %459, ptr noundef nonnull @.str.11, i8 noundef zeroext 10, i16 noundef signext 1) #6
  %460 = icmp eq i8 %13, 0
  br i1 %460, label %495, label %461

461:                                              ; preds = %458
  %462 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %459, ptr noundef nonnull @.str.11, i8 noundef zeroext 2) #6
  %463 = icmp eq ptr %462, null
  br i1 %463, label %494, label %464

464:                                              ; preds = %461
  %465 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %466

466:                                              ; preds = %464, %491
  %467 = phi ptr [ %462, %464 ], [ %492, %491 ]
  %468 = getelementptr inbounds %struct.BMEdge, ptr %467, i64 0, i32 4
  %469 = load ptr, ptr %468, align 8, !tbaa !49
  %470 = icmp eq ptr %469, null
  br i1 %470, label %490, label %471

471:                                              ; preds = %466
  %472 = getelementptr inbounds %struct.BMLoop, ptr %469, i64 0, i32 3
  %473 = load ptr, ptr %472, align 8, !tbaa !89
  %474 = getelementptr inbounds %struct.BMLoop, ptr %469, i64 0, i32 4
  %475 = load ptr, ptr %474, align 8, !tbaa !50
  %476 = getelementptr inbounds %struct.BMLoop, ptr %475, i64 0, i32 3
  %477 = load ptr, ptr %476, align 8, !tbaa !89
  %478 = call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %473, ptr noundef %477, ptr noundef nonnull %467, i8 noundef zeroext 0) #6
  %479 = icmp eq ptr %478, null
  br i1 %479, label %489, label %480

480:                                              ; preds = %471
  %481 = getelementptr inbounds %struct.BMFace, ptr %478, i64 0, i32 1
  %482 = load ptr, ptr %481, align 8, !tbaa !82
  %483 = load i32, ptr %465, align 8, !tbaa !42
  %484 = sext i32 %483 to i64
  %485 = getelementptr %struct.BMFlagLayer, ptr %482, i64 %484
  %486 = getelementptr %struct.BMFlagLayer, ptr %485, i64 -1
  %487 = load i16, ptr %486, align 2, !tbaa !47
  %488 = or i16 %487, 1
  store i16 %488, ptr %486, align 2, !tbaa !47
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %467) #6
  br label %491

489:                                              ; preds = %471
  call void @BMO_error_clear(ptr noundef %0) #6
  br label %491

490:                                              ; preds = %466
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %467) #6
  br label %491

491:                                              ; preds = %480, %489, %490
  %492 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #6
  %493 = icmp eq ptr %492, null
  br i1 %493, label %494, label %466, !llvm.loop !90

494:                                              ; preds = %491, %461
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %459, ptr noundef nonnull @.str.11, i8 noundef zeroext 10, i16 noundef signext 1) #6
  br label %495

495:                                              ; preds = %494, %458
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  ret void
}

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_ptr_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_vec_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_scanfill_begin(ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_scanfill_vert_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_scanfill_edge_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

declare i32 @BLI_sortutil_cmp_float_reverse(ptr noundef, ptr noundef) #2

declare i32 @BLI_scanfill_calc_ex(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_create_quad_tri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_scanfill_end(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare ptr @BM_faces_join_pair(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_error_clear(ptr noundef) local_unnamed_addr #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !37, i64 16}
!35 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !41, i64 48, !41, i64 64}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!42 = !{!43, !40, i64 128}
!43 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !45, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !46, i64 960, !37, i64 976, !46, i64 984, !37, i64 1000}
!44 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!45 = !{!"short", !38, i64 0}
!46 = !{!"ListBase", !37, i64 0, !37, i64 8}
!47 = !{!48, !45, i64 0}
!48 = !{!"BMFlagLayer", !45, i64 0}
!49 = !{!35, !37, i64 40}
!50 = !{!51, !37, i64 40}
!51 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!52 = !{!37, !37, i64 0}
!53 = !{!38, !38, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !55, !56}
!58 = !{!59, !59, i64 0}
!59 = !{!"float", !38, i64 0}
!60 = !{!61, !59, i64 0}
!61 = !{!"SortNormal", !59, i64 0, !38, i64 4}
!62 = !{!63, !38, i64 60}
!63 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!64 = !{!63, !37, i64 40}
!65 = !{!63, !37, i64 48}
!66 = distinct !{!66, !55, !56}
!67 = !{!35, !37, i64 24}
!68 = !{!35, !37, i64 32}
!69 = distinct !{!69, !55, !56}
!70 = distinct !{!70, !55, !56}
!71 = !{!72, !37, i64 32}
!72 = !{!"ScanFillContext", !46, i64 0, !46, i64 16, !46, i64 32, !45, i64 48, !37, i64 56}
!73 = !{!74, !37, i64 16}
!74 = !{!"ScanFillFace", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!75 = !{!74, !37, i64 24}
!76 = !{!74, !37, i64 32}
!77 = !{!51, !37, i64 16}
!78 = distinct !{!78, !55, !56}
!79 = !{!74, !37, i64 0}
!80 = distinct !{!80, !55, !56}
!81 = distinct !{!81, !55, !56}
!82 = !{!83, !37, i64 16}
!83 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !45, i64 48}
!84 = !{!51, !37, i64 24}
!85 = distinct !{!85, !55, !56}
!86 = distinct !{!86, !55, !56}
!87 = !{!88, !40, i64 1304}
!88 = !{!"BMOperator", !38, i64 0, !38, i64 640, !37, i64 1280, !37, i64 1288, !40, i64 1296, !40, i64 1300, !40, i64 1304}
!89 = !{!51, !37, i64 32}
!90 = distinct !{!90, !55, !56}
