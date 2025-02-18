; ModuleID = 'blender/source/blender/bmesh/operators/bmo_subdivide.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_subdivide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SubDParams = type { i32, float, i32, float, float, i8, i8, i8, i8, i32, ptr, ptr, ptr, [3 x float], %struct.anon }
%struct.anon = type { i32, i32, i32, i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.0 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.0 = type { ptr, [8 x i8] }
%struct.SubDPattern = type { [20 x i32], ptr, i32 }
%struct.SubDFaceData = type { ptr, ptr, i32, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cuts\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"smooth\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"smooth_falloff\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"fractal\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"along_normal\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"quad_corner_type\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"use_single_edge\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"use_grid_fill\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"use_only_quads\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"use_sphere\00", align 1
@patterns = internal unnamed_addr global [6 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @quad_3edge, ptr null], align 16
@.str.12 = private unnamed_addr constant [14 x i8] c"edge_percents\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"custom_patterns\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"use_smooth_even\00", align 1
@__func__.bmo_subdivide_edges_exec = private unnamed_addr constant [25 x i8] c"bmo_subdivide_edges_exec\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"BLI_array.edges\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"BLI_array.verts\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"BLI_array.loops\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"BLI_array.loops_split\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"geom_inner.out\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"geom_split.out\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.22 = private unnamed_addr constant [190 x i8] c"subdivide_edges edges=%he smooth=%f smooth_falloff=%i use_smooth_even=%b fractal=%f along_normal=%f cuts=%i quad_corner_type=%i use_single_edge=%b use_grid_fill=%b use_only_quads=%b seed=%i\00", align 1
@quad_3edge = internal constant { <{ i32, i32, i32, [17 x i32] }>, ptr, i32 } { <{ i32, i32, i32, [17 x i32] }> <{ i32 1, i32 1, i32 1, [17 x i32] zeroinitializer }>, ptr @quad_3edge_split, i32 4 }, align 8
@quad_2edge_path = internal constant { <{ i32, i32, [18 x i32] }>, ptr, i32 } { <{ i32, i32, [18 x i32] }> <{ i32 1, i32 1, [18 x i32] zeroinitializer }>, ptr @quad_2edge_split_path, i32 4 }, align 8
@quad_2edge_innervert = internal constant { <{ i32, i32, [18 x i32] }>, ptr, i32 } { <{ i32, i32, [18 x i32] }> <{ i32 1, i32 1, [18 x i32] zeroinitializer }>, ptr @quad_2edge_split_innervert, i32 4 }, align 8
@quad_2edge_fan = internal constant { <{ i32, i32, [18 x i32] }>, ptr, i32 } { <{ i32, i32, [18 x i32] }> <{ i32 1, i32 1, [18 x i32] zeroinitializer }>, ptr @quad_2edge_split_fan, i32 4 }, align 8
@quad_1edge = internal constant { <{ i32, [19 x i32] }>, ptr, i32 } { <{ i32, [19 x i32] }> <{ i32 1, [19 x i32] zeroinitializer }>, ptr @quad_1edge_split, i32 4 }, align 8
@tri_1edge = internal constant { <{ i32, [19 x i32] }>, ptr, i32 } { <{ i32, [19 x i32] }> <{ i32 1, [19 x i32] zeroinitializer }>, ptr @tri_1edge_split, i32 3 }, align 8
@quad_4edge = internal constant { <{ i32, i32, i32, i32, [16 x i32] }>, ptr, i32 } { <{ i32, i32, i32, i32, [16 x i32] }> <{ i32 1, i32 1, i32 1, i32 1, [16 x i32] zeroinitializer }>, ptr @quad_4edge_subdivide, i32 4 }, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [14 x i8] c"q_4edge_split\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [43 x i8] c"BMESH_ASSERT failed: %s, %s(), %d at '%s'\0A\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"blender/source/blender/bmesh/operators/bmo_subdivide.c\00", align 1
@__func__.quad_4edge_subdivide = private unnamed_addr constant [21 x i8] c"quad_4edge_subdivide\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"v != ((void*)0)\00", align 1
@tri_3edge = internal constant { <{ i32, i32, i32, [17 x i32] }>, ptr, i32 } { <{ i32, i32, i32, [17 x i32] }> <{ i32 1, i32 1, i32 1, [17 x i32] zeroinitializer }>, ptr @tri_3edge_subdivide, i32 3 }, align 8
@.str.35 = private unnamed_addr constant [20 x i8] c"triangle vert table\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"triangle vert table 2\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"triangle vert table row\00", align 1
@reltable.bmo_subdivide_edges_exec = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @quad_2edge_innervert to i64), i64 ptrtoint (ptr @reltable.bmo_subdivide_edges_exec to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @quad_2edge_path to i64), i64 ptrtoint (ptr @reltable.bmo_subdivide_edges_exec to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @quad_2edge_fan to i64), i64 ptrtoint (ptr @reltable.bmo_subdivide_edges_exec to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local void @bmo_subdivide_edges_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.SubDParams, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  store ptr null, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store ptr null, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  store ptr null, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  store ptr null, ptr %10, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str, i8 noundef zeroext 2, i16 noundef signext 1) #11
  %13 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #11
  %14 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.2) #11
  %15 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.3) #11
  %16 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.4) #11
  %17 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.5) #11
  %18 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.6) #11
  %19 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.7) #11
  %20 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.8) #11
  %21 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.9) #11
  %22 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.10) #11
  %23 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.11) #11
  store ptr null, ptr getelementptr inbounds ([6 x ptr], ptr @patterns, i64 0, i64 1), align 8, !tbaa !34
  %24 = icmp ult i32 %19, 3
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = zext nneg i32 %19 to i64
  %27 = shl i64 %26, 2
  %28 = call ptr @llvm.load.relative.i64(ptr @reltable.bmo_subdivide_edges_exec, i64 %27)
  store ptr %28, ptr getelementptr inbounds ([6 x ptr], ptr @patterns, i64 0, i64 1), align 8, !tbaa !34
  br label %29

29:                                               ; preds = %2, %25
  %30 = icmp eq i8 %20, 0
  %31 = select i1 %30, ptr null, ptr @quad_1edge
  %32 = select i1 %30, ptr null, ptr @tri_1edge
  store ptr %31, ptr @patterns, align 16, !tbaa !34
  store ptr %32, ptr getelementptr inbounds ([6 x ptr], ptr @patterns, i64 0, i64 2), align 16, !tbaa !34
  %33 = icmp eq i8 %21, 0
  %34 = select i1 %33, ptr null, ptr @quad_4edge
  %35 = select i1 %33, ptr null, ptr @tri_3edge
  store ptr %34, ptr getelementptr inbounds ([6 x ptr], ptr @patterns, i64 0, i64 3), align 8, !tbaa !34
  store ptr %35, ptr getelementptr inbounds ([6 x ptr], ptr @patterns, i64 0, i64 5), align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  tail call void @BM_data_layer_add(ptr noundef %0, ptr noundef nonnull %36, i32 noundef 28) #11
  %37 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %36, i32 noundef 28) #11
  %38 = add nsw i32 %37, -1
  %39 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 14
  %40 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 14, i32 3
  store i32 %38, ptr %40, align 8, !tbaa !38
  %41 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %36, i32 noundef 28) #11
  store i32 %41, ptr %39, align 4, !tbaa !43
  %42 = tail call i32 @CustomData_get_n_offset(ptr noundef nonnull %36, i32 noundef 28, i32 noundef %38) #11
  %43 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 14, i32 1
  store i32 %42, ptr %43, align 8, !tbaa !44
  %44 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %36, i32 noundef 28) #11
  %45 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 14, i32 2
  store i32 %44, ptr %45, align 4, !tbaa !45
  %46 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %46, align 4, !tbaa !46
  %47 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %47, align 8, !tbaa !48
  %48 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %48, align 8, !tbaa !49
  %49 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !50
  store ptr %50, ptr %4, align 8, !tbaa !55
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %51 = load ptr, ptr %48, align 8, !tbaa !49
  %52 = call ptr %51(ptr noundef nonnull %4) #11
  %53 = icmp eq ptr %52, null
  br i1 %53, label %71, label %54

54:                                               ; preds = %29, %54
  %55 = phi ptr [ %69, %54 ], [ %52, %29 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !56
  %57 = load i32, ptr %43, align 8, !tbaa !44
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %56, i64 %58
  %60 = getelementptr inbounds %struct.BMVert, ptr %55, i64 0, i32 2
  %61 = load float, ptr %60, align 4, !tbaa !59
  store float %61, ptr %59, align 4, !tbaa !59
  %62 = getelementptr inbounds %struct.BMVert, ptr %55, i64 0, i32 2, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !59
  %64 = getelementptr inbounds float, ptr %59, i64 1
  store float %63, ptr %64, align 4, !tbaa !59
  %65 = getelementptr inbounds %struct.BMVert, ptr %55, i64 0, i32 2, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !59
  %67 = getelementptr inbounds float, ptr %59, i64 2
  store float %66, ptr %67, align 4, !tbaa !59
  %68 = load ptr, ptr %48, align 8, !tbaa !49
  %69 = call ptr %68(ptr noundef nonnull %4) #11
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %54, !llvm.loop !60

71:                                               ; preds = %54, %29
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull @.str, i8 noundef zeroext 2, i16 noundef signext 1) #11
  store i32 %13, ptr %3, align 8, !tbaa !63
  %72 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 10
  store ptr %1, ptr %72, align 8, !tbaa !64
  %73 = call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.12) #11
  %74 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 11
  store ptr %73, ptr %74, align 8, !tbaa !65
  %75 = call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.13) #11
  %76 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 12
  store ptr %75, ptr %76, align 8, !tbaa !66
  %77 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 1
  store float %15, ptr %77, align 4, !tbaa !67
  %78 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 2
  store i32 %16, ptr %78, align 8, !tbaa !68
  %79 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 9
  store i32 %14, ptr %79, align 8, !tbaa !69
  %80 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 3
  store float %17, ptr %80, align 4, !tbaa !70
  %81 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 4
  store float %18, ptr %81, align 8, !tbaa !71
  %82 = fcmp une float %15, 0.000000e+00
  %83 = zext i1 %82 to i8
  %84 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 5
  store i8 %83, ptr %84, align 4, !tbaa !72
  %85 = call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.14) #11
  %86 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 6
  store i8 %85, ptr %86, align 1, !tbaa !73
  %87 = fcmp une float %17, 0.000000e+00
  %88 = zext i1 %87 to i8
  %89 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 8
  store i8 %88, ptr %89, align 1, !tbaa !74
  %90 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 7
  store i8 %23, ptr %90, align 2, !tbaa !75
  br i1 %87, label %91, label %102

91:                                               ; preds = %71
  %92 = call ptr @BLI_rng_new_srandom(i32 noundef %14) #11
  %93 = call float @BLI_rng_get_float(ptr noundef %92) #11
  %94 = fmul float %93, 2.000000e+02
  %95 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 13
  store float %94, ptr %95, align 8, !tbaa !59
  %96 = call float @BLI_rng_get_float(ptr noundef %92) #11
  %97 = fmul float %96, 2.000000e+02
  %98 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 13, i64 1
  store float %97, ptr %98, align 4, !tbaa !59
  %99 = call float @BLI_rng_get_float(ptr noundef %92) #11
  %100 = fmul float %99, 2.000000e+02
  %101 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 13, i64 2
  store float %100, ptr %101, align 8, !tbaa !59
  call void @BLI_rng_free(ptr noundef %92) #11
  br label %102

102:                                              ; preds = %91, %71
  call void @BMO_slot_map_to_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i8 noundef zeroext 8, i16 noundef signext 4) #11
  call void @BMO_slot_map_to_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.12, i8 noundef zeroext 2, i16 noundef signext 2) #11
  %103 = call ptr @BLI_stack_new(i64 noundef 32, ptr noundef nonnull @__func__.bmo_subdivide_edges_exec) #11
  %104 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %104, align 4, !tbaa !46
  %105 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %105, align 8, !tbaa !48
  %106 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %106, align 8, !tbaa !49
  %107 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %108 = load ptr, ptr %107, align 8, !tbaa !76
  store ptr %108, ptr %5, align 8, !tbaa !55
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #11
  %109 = load ptr, ptr %106, align 8, !tbaa !49
  %110 = call ptr %109(ptr noundef nonnull %5) #11
  %111 = icmp eq ptr %110, null
  br i1 %111, label %438, label %112

112:                                              ; preds = %102
  %113 = icmp eq i8 %22, 0
  %114 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %115 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %116 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %117 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %118 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %119

119:                                              ; preds = %112, %433
  %120 = phi ptr [ %110, %112 ], [ %436, %433 ]
  %121 = phi i32 [ undef, %112 ], [ %434, %433 ]
  br i1 %113, label %126, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.BMFace, ptr %120, i64 0, i32 3
  %124 = load i32, ptr %123, align 8, !tbaa !77
  %125 = icmp eq i32 %124, 4
  br i1 %125, label %126, label %433

126:                                              ; preds = %119, %122
  %127 = load ptr, ptr %8, align 8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %131 = call i64 %130(ptr noundef nonnull %127) #11
  %132 = lshr i64 %131, 3
  br label %133

133:                                              ; preds = %129, %126
  %134 = phi i64 [ %132, %129 ], [ 0, %126 ]
  %135 = getelementptr inbounds %struct.BMFace, ptr %120, i64 0, i32 3
  %136 = load i32, ptr %135, align 8, !tbaa !77
  %137 = sext i32 %136 to i64
  %138 = icmp ult i64 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  call void @_bli_array_grow_func(ptr noundef nonnull %8, ptr noundef null, i32 noundef 8, i32 noundef 0, i32 noundef %136, ptr noundef nonnull @.str.15) #11
  br label %140

140:                                              ; preds = %139, %133
  %141 = load ptr, ptr %7, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %145 = call i64 %144(ptr noundef nonnull %141) #11
  %146 = lshr i64 %145, 3
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi i64 [ %146, %143 ], [ 0, %140 ]
  %149 = load i32, ptr %135, align 8, !tbaa !77
  %150 = sext i32 %149 to i64
  %151 = icmp ult i64 %148, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  call void @_bli_array_grow_func(ptr noundef nonnull %7, ptr noundef null, i32 noundef 8, i32 noundef 0, i32 noundef %149, ptr noundef nonnull @.str.16) #11
  br label %153

153:                                              ; preds = %152, %147
  store i8 11, ptr %114, align 4, !tbaa !46
  store ptr @bmiter__loop_of_face_begin, ptr %115, align 8, !tbaa !48
  store ptr @bmiter__loop_of_face_step, ptr %116, align 8, !tbaa !49
  store ptr %120, ptr %6, align 8, !tbaa !55
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #11
  %154 = load ptr, ptr %116, align 8, !tbaa !49
  %155 = call ptr %154(ptr noundef nonnull %6) #11
  store ptr %155, ptr %11, align 8, !tbaa !34
  %156 = icmp eq ptr %155, null
  br i1 %156, label %195, label %157

157:                                              ; preds = %153, %157
  %158 = phi i64 [ %193, %157 ], [ 0, %153 ]
  %159 = phi ptr [ %192, %157 ], [ %155, %153 ]
  %160 = phi ptr [ %190, %157 ], [ null, %153 ]
  %161 = phi ptr [ %188, %157 ], [ null, %153 ]
  %162 = phi i32 [ %187, %157 ], [ 0, %153 ]
  %163 = getelementptr inbounds %struct.BMLoop, ptr %159, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !79
  %165 = load ptr, ptr %8, align 8, !tbaa !34
  %166 = getelementptr inbounds ptr, ptr %165, i64 %158
  store ptr %164, ptr %166, align 8, !tbaa !34
  %167 = load ptr, ptr %11, align 8, !tbaa !34
  %168 = getelementptr inbounds %struct.BMLoop, ptr %167, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !81
  %170 = load ptr, ptr %7, align 8, !tbaa !34
  %171 = getelementptr inbounds ptr, ptr %170, i64 %158
  store ptr %169, ptr %171, align 8, !tbaa !34
  %172 = load ptr, ptr %8, align 8, !tbaa !34
  %173 = getelementptr inbounds ptr, ptr %172, i64 %158
  %174 = load ptr, ptr %173, align 8, !tbaa !34
  %175 = getelementptr inbounds %struct.BMEdge, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !82
  %177 = load i32, ptr %117, align 8, !tbaa !85
  %178 = sext i32 %177 to i64
  %179 = getelementptr %struct.BMFlagLayer, ptr %176, i64 %178
  %180 = getelementptr %struct.BMFlagLayer, ptr %179, i64 -1
  %181 = load i16, ptr %180, align 2, !tbaa !86
  %182 = and i16 %181, 1
  %183 = icmp eq i16 %182, 0
  %184 = icmp eq ptr %161, null
  %185 = select i1 %184, ptr %174, ptr %161
  %186 = zext nneg i16 %182 to i32
  %187 = add i32 %162, %186
  %188 = select i1 %183, ptr %161, ptr %185
  %189 = select i1 %183, i1 true, i1 %184
  %190 = select i1 %189, ptr %160, ptr %174
  %191 = load ptr, ptr %116, align 8, !tbaa !49
  %192 = call ptr %191(ptr noundef nonnull %6) #11
  store ptr %192, ptr %11, align 8, !tbaa !34
  %193 = add nuw i64 %158, 1
  %194 = icmp eq ptr %192, null
  br i1 %194, label %195, label %157, !llvm.loop !88

195:                                              ; preds = %157, %153
  %196 = phi i32 [ 0, %153 ], [ %187, %157 ]
  %197 = phi ptr [ null, %153 ], [ %188, %157 ]
  %198 = phi ptr [ null, %153 ], [ %190, %157 ]
  %199 = icmp eq i32 %196, 2
  br i1 %199, label %200, label %276

200:                                              ; preds = %195
  %201 = call zeroext i8 @BM_edge_share_vert_check(ptr noundef %197, ptr noundef %198) #11
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %276, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.BMEdge, ptr %197, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !89
  %206 = getelementptr inbounds %struct.BMVert, ptr %205, i64 0, i32 2
  %207 = getelementptr inbounds %struct.BMEdge, ptr %197, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !90
  %209 = getelementptr inbounds %struct.BMVert, ptr %208, i64 0, i32 2
  %210 = load float, ptr %206, align 4, !tbaa !59
  %211 = load float, ptr %209, align 4, !tbaa !59
  %212 = fsub float %210, %211
  %213 = getelementptr inbounds %struct.BMVert, ptr %205, i64 0, i32 2, i64 1
  %214 = load float, ptr %213, align 4, !tbaa !59
  %215 = getelementptr inbounds %struct.BMVert, ptr %208, i64 0, i32 2, i64 1
  %216 = load float, ptr %215, align 4, !tbaa !59
  %217 = fsub float %214, %216
  %218 = getelementptr inbounds %struct.BMVert, ptr %205, i64 0, i32 2, i64 2
  %219 = load float, ptr %218, align 4, !tbaa !59
  %220 = getelementptr inbounds %struct.BMVert, ptr %208, i64 0, i32 2, i64 2
  %221 = load float, ptr %220, align 4, !tbaa !59
  %222 = fsub float %219, %221
  %223 = getelementptr inbounds %struct.BMEdge, ptr %198, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !89
  %225 = getelementptr inbounds %struct.BMVert, ptr %224, i64 0, i32 2
  %226 = getelementptr inbounds %struct.BMEdge, ptr %198, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !90
  %228 = getelementptr inbounds %struct.BMVert, ptr %227, i64 0, i32 2
  %229 = load float, ptr %225, align 4, !tbaa !59
  %230 = load float, ptr %228, align 4, !tbaa !59
  %231 = fsub float %229, %230
  %232 = getelementptr inbounds %struct.BMVert, ptr %224, i64 0, i32 2, i64 1
  %233 = load float, ptr %232, align 4, !tbaa !59
  %234 = getelementptr inbounds %struct.BMVert, ptr %227, i64 0, i32 2, i64 1
  %235 = load float, ptr %234, align 4, !tbaa !59
  %236 = fsub float %233, %235
  %237 = getelementptr inbounds %struct.BMVert, ptr %224, i64 0, i32 2, i64 2
  %238 = load float, ptr %237, align 4, !tbaa !59
  %239 = getelementptr inbounds %struct.BMVert, ptr %227, i64 0, i32 2, i64 2
  %240 = load float, ptr %239, align 4, !tbaa !59
  %241 = fsub float %238, %240
  %242 = fmul float %217, %217
  %243 = call float @llvm.fmuladd.f32(float %212, float %212, float %242)
  %244 = call float @llvm.fmuladd.f32(float %222, float %222, float %243)
  %245 = fcmp ogt float %244, 0x38AA95A5C0000000
  br i1 %245, label %246, label %252

246:                                              ; preds = %203
  %247 = call float @sqrtf(float noundef %244) #11
  %248 = fdiv float 1.000000e+00, %247
  %249 = fmul float %212, %248
  %250 = fmul float %217, %248
  %251 = fmul float %222, %248
  br label %252

252:                                              ; preds = %203, %246
  %253 = phi float [ %250, %246 ], [ 0.000000e+00, %203 ]
  %254 = phi float [ %249, %246 ], [ 0.000000e+00, %203 ]
  %255 = phi float [ %251, %246 ], [ 0.000000e+00, %203 ]
  %256 = fmul float %236, %236
  %257 = call float @llvm.fmuladd.f32(float %231, float %231, float %256)
  %258 = call float @llvm.fmuladd.f32(float %241, float %241, float %257)
  %259 = fcmp ogt float %258, 0x38AA95A5C0000000
  br i1 %259, label %260, label %266

260:                                              ; preds = %252
  %261 = call float @sqrtf(float noundef %258) #11
  %262 = fdiv float 1.000000e+00, %261
  %263 = fmul float %231, %262
  %264 = fmul float %236, %262
  %265 = fmul float %241, %262
  br label %266

266:                                              ; preds = %252, %260
  %267 = phi float [ %264, %260 ], [ 0.000000e+00, %252 ]
  %268 = phi float [ %263, %260 ], [ 0.000000e+00, %252 ]
  %269 = phi float [ %265, %260 ], [ 0.000000e+00, %252 ]
  %270 = fmul float %253, %267
  %271 = call float @llvm.fmuladd.f32(float %254, float %268, float %270)
  %272 = call float @llvm.fmuladd.f32(float %255, float %269, float %271)
  %273 = call float @llvm.fabs.f32(float %272)
  %274 = fcmp ogt float %273, 0x3FEFFF9720000000
  br i1 %274, label %275, label %276

275:                                              ; preds = %266
  br label %276

276:                                              ; preds = %266, %275, %200, %195
  %277 = phi i32 [ 0, %275 ], [ 2, %266 ], [ 2, %200 ], [ %196, %195 ]
  %278 = getelementptr inbounds %struct.BMFace, ptr %120, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !91
  %280 = load i32, ptr %118, align 8, !tbaa !85
  %281 = sext i32 %280 to i64
  %282 = getelementptr %struct.BMFlagLayer, ptr %279, i64 %281
  %283 = getelementptr %struct.BMFlagLayer, ptr %282, i64 -1
  %284 = load i16, ptr %283, align 2, !tbaa !86
  %285 = and i16 %284, 4
  %286 = icmp eq i16 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %276
  %288 = load ptr, ptr %8, align 8
  br label %347

289:                                              ; preds = %276
  %290 = load ptr, ptr %76, align 8, !tbaa !66
  %291 = getelementptr inbounds %struct.BMOpSlot, ptr %290, i64 0, i32 4
  %292 = load ptr, ptr %291, align 8, !tbaa !55
  %293 = call ptr @BLI_ghash_lookup_p(ptr noundef %292, ptr noundef nonnull %120) #11
  %294 = load ptr, ptr %293, align 8, !tbaa !34
  %295 = getelementptr inbounds %struct.SubDPattern, ptr %294, i64 0, i32 2
  %296 = load i32, ptr %295, align 8, !tbaa !92
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %433

298:                                              ; preds = %289
  %299 = load ptr, ptr %8, align 8
  %300 = zext nneg i32 %296 to i64
  %301 = load i32, ptr %118, align 8, !tbaa !85
  %302 = sext i32 %301 to i64
  %303 = zext nneg i32 %296 to i64
  br label %304

304:                                              ; preds = %298, %344
  %305 = phi i64 [ 0, %298 ], [ %345, %344 ]
  br label %309

306:                                              ; preds = %309
  %307 = add nuw nsw i64 %310, 1
  %308 = icmp eq i64 %307, %303
  br i1 %308, label %328, label %309, !llvm.loop !94

309:                                              ; preds = %304, %306
  %310 = phi i64 [ 0, %304 ], [ %307, %306 ]
  %311 = add nuw nsw i64 %310, %305
  %312 = trunc i64 %311 to i32
  %313 = urem i32 %312, %296
  %314 = zext nneg i32 %313 to i64
  %315 = getelementptr inbounds ptr, ptr %299, i64 %314
  %316 = load ptr, ptr %315, align 8, !tbaa !34
  %317 = getelementptr inbounds %struct.BMEdge, ptr %316, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !82
  %319 = getelementptr %struct.BMFlagLayer, ptr %318, i64 %302
  %320 = getelementptr %struct.BMFlagLayer, ptr %319, i64 -1
  %321 = load i16, ptr %320, align 2, !tbaa !86
  %322 = and i16 %321, 1
  %323 = icmp ne i16 %322, 0
  %324 = getelementptr inbounds [20 x i32], ptr %294, i64 0, i64 %310
  %325 = load i32, ptr %324, align 4, !tbaa !95
  %326 = icmp eq i32 %325, 0
  %327 = xor i1 %323, %326
  br i1 %327, label %306, label %344

328:                                              ; preds = %306
  %329 = call ptr @BLI_stack_push_r(ptr noundef %103) #11
  %330 = getelementptr inbounds %struct.SubDFaceData, ptr %329, i64 0, i32 1
  store ptr %294, ptr %330, align 8, !tbaa !96
  %331 = load ptr, ptr %7, align 8, !tbaa !34
  %332 = and i64 %305, 4294967295
  %333 = getelementptr inbounds ptr, ptr %331, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !34
  store ptr %334, ptr %329, align 8, !tbaa !98
  %335 = getelementptr inbounds %struct.SubDFaceData, ptr %329, i64 0, i32 3
  store ptr %120, ptr %335, align 8, !tbaa !99
  %336 = getelementptr inbounds %struct.SubDFaceData, ptr %329, i64 0, i32 2
  store i32 %277, ptr %336, align 8, !tbaa !100
  %337 = load ptr, ptr %278, align 8, !tbaa !91
  %338 = load i32, ptr %118, align 8, !tbaa !85
  %339 = sext i32 %338 to i64
  %340 = getelementptr %struct.BMFlagLayer, ptr %337, i64 %339
  %341 = getelementptr %struct.BMFlagLayer, ptr %340, i64 -1
  %342 = load i16, ptr %341, align 2, !tbaa !86
  %343 = or i16 %342, 1
  store i16 %343, ptr %341, align 2, !tbaa !86
  br label %433

344:                                              ; preds = %309
  %345 = add nuw nsw i64 %305, 1
  %346 = icmp eq i64 %345, %300
  br i1 %346, label %433, label %304, !llvm.loop !101

347:                                              ; preds = %287, %412
  %348 = phi i64 [ 0, %287 ], [ %414, %412 ]
  %349 = phi i1 [ false, %287 ], [ %415, %412 ]
  %350 = phi i32 [ %121, %287 ], [ %413, %412 ]
  %351 = getelementptr inbounds [6 x ptr], ptr @patterns, i64 0, i64 %348
  %352 = load ptr, ptr %351, align 8, !tbaa !34
  %353 = icmp eq ptr %352, null
  br i1 %353, label %412, label %354

354:                                              ; preds = %347
  %355 = getelementptr inbounds %struct.SubDPattern, ptr %352, i64 0, i32 2
  %356 = load i32, ptr %355, align 8, !tbaa !92
  %357 = load i32, ptr %135, align 8, !tbaa !77
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %412

359:                                              ; preds = %354
  %360 = icmp sgt i32 %356, 0
  br i1 %360, label %361, label %398

361:                                              ; preds = %359
  %362 = zext nneg i32 %356 to i64
  %363 = zext nneg i32 %356 to i64
  %364 = zext nneg i32 %356 to i64
  br label %365

365:                                              ; preds = %361, %390
  %366 = phi i64 [ 0, %361 ], [ %391, %390 ]
  %367 = phi i1 [ %360, %361 ], [ %392, %390 ]
  br label %368

368:                                              ; preds = %365, %387
  %369 = phi i64 [ 0, %365 ], [ %388, %387 ]
  %370 = add nuw nsw i64 %369, %366
  %371 = trunc i64 %370 to i32
  %372 = urem i32 %371, %356
  %373 = zext nneg i32 %372 to i64
  %374 = getelementptr inbounds ptr, ptr %288, i64 %373
  %375 = load ptr, ptr %374, align 8, !tbaa !34
  %376 = getelementptr inbounds %struct.BMEdge, ptr %375, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !82
  %378 = getelementptr %struct.BMFlagLayer, ptr %377, i64 %281
  %379 = getelementptr %struct.BMFlagLayer, ptr %378, i64 -1
  %380 = load i16, ptr %379, align 2, !tbaa !86
  %381 = and i16 %380, 1
  %382 = icmp ne i16 %381, 0
  %383 = getelementptr inbounds [20 x i32], ptr %352, i64 0, i64 %369
  %384 = load i32, ptr %383, align 4, !tbaa !95
  %385 = icmp eq i32 %384, 0
  %386 = xor i1 %382, %385
  br i1 %386, label %387, label %390

387:                                              ; preds = %368
  %388 = add nuw nsw i64 %369, 1
  %389 = icmp eq i64 %388, %364
  br i1 %389, label %394, label %368, !llvm.loop !102

390:                                              ; preds = %368
  %391 = add nuw nsw i64 %366, 1
  %392 = icmp ult i64 %391, %362
  %393 = icmp eq i64 %391, %363
  br i1 %393, label %396, label %365, !llvm.loop !103

394:                                              ; preds = %387
  %395 = trunc i64 %366 to i32
  br label %398

396:                                              ; preds = %390
  %397 = trunc i64 %369 to i32
  br label %398

398:                                              ; preds = %396, %394, %359
  %399 = phi i32 [ 0, %359 ], [ %395, %394 ], [ %356, %396 ]
  %400 = phi i1 [ %360, %359 ], [ %367, %394 ], [ %392, %396 ]
  %401 = phi i32 [ %350, %359 ], [ %356, %394 ], [ %397, %396 ]
  br i1 %400, label %402, label %412

402:                                              ; preds = %398
  %403 = or i16 %284, 1
  store i16 %403, ptr %283, align 2, !tbaa !86
  %404 = call ptr @BLI_stack_push_r(ptr noundef %103) #11
  %405 = getelementptr inbounds %struct.SubDFaceData, ptr %404, i64 0, i32 1
  store ptr %352, ptr %405, align 8, !tbaa !96
  %406 = load ptr, ptr %7, align 8, !tbaa !34
  %407 = zext nneg i32 %399 to i64
  %408 = getelementptr inbounds ptr, ptr %406, i64 %407
  %409 = load ptr, ptr %408, align 8, !tbaa !34
  store ptr %409, ptr %404, align 8, !tbaa !98
  %410 = getelementptr inbounds %struct.SubDFaceData, ptr %404, i64 0, i32 3
  store ptr %120, ptr %410, align 8, !tbaa !99
  %411 = getelementptr inbounds %struct.SubDFaceData, ptr %404, i64 0, i32 2
  store i32 %277, ptr %411, align 8, !tbaa !100
  br label %417

412:                                              ; preds = %354, %398, %347
  %413 = phi i32 [ %401, %398 ], [ %350, %354 ], [ %350, %347 ]
  %414 = add nuw nsw i64 %348, 1
  %415 = icmp ugt i64 %348, 4
  %416 = icmp eq i64 %414, 6
  br i1 %416, label %417, label %347, !llvm.loop !104

417:                                              ; preds = %412, %402
  %418 = phi i1 [ %349, %402 ], [ %415, %412 ]
  %419 = phi i32 [ %401, %402 ], [ %413, %412 ]
  %420 = icmp ne i32 %277, 0
  %421 = and i1 %418, %420
  br i1 %421, label %422, label %433

422:                                              ; preds = %417
  %423 = load ptr, ptr %278, align 8, !tbaa !91
  %424 = load i32, ptr %118, align 8, !tbaa !85
  %425 = sext i32 %424 to i64
  %426 = getelementptr %struct.BMFlagLayer, ptr %423, i64 %425
  %427 = getelementptr %struct.BMFlagLayer, ptr %426, i64 -1
  %428 = load i16, ptr %427, align 2, !tbaa !86
  %429 = or i16 %428, 1
  store i16 %429, ptr %427, align 2, !tbaa !86
  %430 = call ptr @BLI_stack_push_r(ptr noundef %103) #11
  %431 = getelementptr inbounds %struct.SubDFaceData, ptr %430, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %430, i8 0, i64 16, i1 false)
  store i32 %277, ptr %431, align 8, !tbaa !100
  %432 = getelementptr inbounds %struct.SubDFaceData, ptr %430, i64 0, i32 3
  store ptr %120, ptr %432, align 8, !tbaa !99
  br label %433

433:                                              ; preds = %344, %289, %417, %422, %328, %122
  %434 = phi i32 [ %121, %122 ], [ %121, %328 ], [ %419, %422 ], [ %419, %417 ], [ %121, %289 ], [ %121, %344 ]
  %435 = load ptr, ptr %106, align 8, !tbaa !49
  %436 = call ptr %435(ptr noundef nonnull %5) #11
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %119, !llvm.loop !105

438:                                              ; preds = %433, %102
  %439 = phi i32 [ undef, %102 ], [ %434, %433 ]
  %440 = call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str) #11
  %441 = getelementptr inbounds %struct.BMOpSlot, ptr %440, i64 0, i32 3
  %442 = load i32, ptr %441, align 8, !tbaa !106
  %443 = icmp sgt i32 %442, 0
  br i1 %443, label %444, label %459

444:                                              ; preds = %438
  %445 = getelementptr inbounds %struct.BMOpSlot, ptr %440, i64 0, i32 4
  br label %446

446:                                              ; preds = %444, %446
  %447 = phi i64 [ 0, %444 ], [ %455, %446 ]
  %448 = load ptr, ptr %445, align 8, !tbaa !55
  %449 = getelementptr inbounds ptr, ptr %448, i64 %447
  %450 = load ptr, ptr %449, align 8, !tbaa !34
  %451 = getelementptr inbounds %struct.BMEdge, ptr %450, i64 0, i32 2
  %452 = load ptr, ptr %451, align 8, !tbaa !90
  %453 = getelementptr inbounds %struct.BMEdge, ptr %450, i64 0, i32 3
  %454 = load ptr, ptr %453, align 8, !tbaa !89
  call fastcc void @bm_subdivide_multicut(ptr noundef %0, ptr noundef %450, ptr noundef nonnull %3, ptr noundef %452, ptr noundef %454)
  %455 = add nuw nsw i64 %447, 1
  %456 = load i32, ptr %441, align 8, !tbaa !106
  %457 = sext i32 %456 to i64
  %458 = icmp slt i64 %455, %457
  br i1 %458, label %446, label %459, !llvm.loop !108

459:                                              ; preds = %446, %438
  store i8 1, ptr %46, align 4, !tbaa !46
  store ptr @bmiter__elem_of_mesh_begin, ptr %47, align 8, !tbaa !48
  store ptr @bmiter__elem_of_mesh_step, ptr %48, align 8, !tbaa !49
  %460 = load ptr, ptr %49, align 8, !tbaa !50
  store ptr %460, ptr %4, align 8, !tbaa !55
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %461 = load ptr, ptr %48, align 8, !tbaa !49
  %462 = call ptr %461(ptr noundef nonnull %4) #11
  %463 = icmp eq ptr %462, null
  br i1 %463, label %464, label %487

464:                                              ; preds = %487, %459
  %465 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %103) #11
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %467, label %803

467:                                              ; preds = %464
  %468 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %469 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %470 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %471 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %472 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %473 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %474 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %475 = add i32 %13, 1
  %476 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %477 = add i32 %13, 1
  %478 = add nsw i32 %13, -1
  %479 = sext i32 %13 to i64
  %480 = icmp sgt i32 %13, 0
  %481 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  %482 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  %483 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  %484 = icmp sgt i32 %13, 0
  %485 = zext nneg i32 %13 to i64
  %486 = zext nneg i32 %13 to i64
  br label %504

487:                                              ; preds = %459, %487
  %488 = phi ptr [ %502, %487 ], [ %462, %459 ]
  %489 = load ptr, ptr %488, align 8, !tbaa !56
  %490 = load i32, ptr %43, align 8, !tbaa !44
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i8, ptr %489, i64 %491
  %493 = getelementptr inbounds %struct.BMVert, ptr %488, i64 0, i32 2
  %494 = load float, ptr %492, align 4, !tbaa !59
  store float %494, ptr %493, align 4, !tbaa !59
  %495 = getelementptr inbounds float, ptr %492, i64 1
  %496 = load float, ptr %495, align 4, !tbaa !59
  %497 = getelementptr inbounds %struct.BMVert, ptr %488, i64 0, i32 2, i64 1
  store float %496, ptr %497, align 4, !tbaa !59
  %498 = getelementptr inbounds float, ptr %492, i64 2
  %499 = load float, ptr %498, align 4, !tbaa !59
  %500 = getelementptr inbounds %struct.BMVert, ptr %488, i64 0, i32 2, i64 2
  store float %499, ptr %500, align 4, !tbaa !59
  %501 = load ptr, ptr %48, align 8, !tbaa !49
  %502 = call ptr %501(ptr noundef nonnull %4) #11
  %503 = icmp eq ptr %502, null
  br i1 %503, label %464, label %487, !llvm.loop !109

504:                                              ; preds = %467, %799
  %505 = phi i32 [ %439, %467 ], [ %800, %799 ]
  %506 = call ptr @BLI_stack_peek(ptr noundef %103) #11
  %507 = getelementptr inbounds %struct.SubDFaceData, ptr %506, i64 0, i32 3
  %508 = load ptr, ptr %507, align 8, !tbaa !99
  %509 = getelementptr inbounds %struct.SubDFaceData, ptr %506, i64 0, i32 1
  %510 = load ptr, ptr %509, align 8, !tbaa !96
  %511 = icmp eq ptr %510, null
  br i1 %511, label %512, label %741

512:                                              ; preds = %504
  %513 = getelementptr inbounds %struct.SubDFaceData, ptr %506, i64 0, i32 2
  %514 = load i32, ptr %513, align 8, !tbaa !100
  %515 = icmp eq i32 %514, 2
  br i1 %515, label %516, label %799

516:                                              ; preds = %512
  %517 = load ptr, ptr %10, align 8
  %518 = icmp eq ptr %517, null
  br i1 %518, label %523, label %519

519:                                              ; preds = %516
  %520 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %521 = call i64 %520(ptr noundef nonnull %517) #11
  %522 = lshr i64 %521, 3
  br label %523

523:                                              ; preds = %519, %516
  %524 = phi i64 [ %522, %519 ], [ 0, %516 ]
  %525 = getelementptr inbounds %struct.BMFace, ptr %508, i64 0, i32 3
  %526 = load i32, ptr %525, align 8, !tbaa !77
  %527 = sext i32 %526 to i64
  %528 = icmp ult i64 %524, %527
  br i1 %528, label %529, label %530

529:                                              ; preds = %523
  call void @_bli_array_grow_func(ptr noundef nonnull %10, ptr noundef null, i32 noundef 8, i32 noundef 0, i32 noundef %526, ptr noundef nonnull @.str.17) #11
  br label %530

530:                                              ; preds = %529, %523
  %531 = load i32, ptr %525, align 8, !tbaa !77
  store i8 11, ptr %471, align 4, !tbaa !46
  store ptr @bmiter__loop_of_face_begin, ptr %472, align 8, !tbaa !48
  store ptr @bmiter__loop_of_face_step, ptr %473, align 8, !tbaa !49
  store ptr %508, ptr %6, align 8, !tbaa !55
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #11
  %532 = load ptr, ptr %473, align 8, !tbaa !49
  %533 = call ptr %532(ptr noundef nonnull %6) #11
  %534 = icmp eq ptr %533, null
  br i1 %534, label %535, label %542

535:                                              ; preds = %542, %530
  %536 = icmp sgt i32 %531, 1
  br i1 %536, label %537, label %581

537:                                              ; preds = %535
  %538 = load ptr, ptr %10, align 8, !tbaa !34
  %539 = load i32, ptr %474, align 8, !tbaa !85
  %540 = sext i32 %539 to i64
  %541 = zext nneg i32 %531 to i64
  br label %551

542:                                              ; preds = %530, %542
  %543 = phi i64 [ %549, %542 ], [ 0, %530 ]
  %544 = phi ptr [ %548, %542 ], [ %533, %530 ]
  %545 = load ptr, ptr %10, align 8, !tbaa !34
  %546 = getelementptr inbounds ptr, ptr %545, i64 %543
  store ptr %544, ptr %546, align 8, !tbaa !34
  %547 = load ptr, ptr %473, align 8, !tbaa !49
  %548 = call ptr %547(ptr noundef nonnull %6) #11
  %549 = add nuw i64 %543, 1
  %550 = icmp eq ptr %548, null
  br i1 %550, label %535, label %542, !llvm.loop !110

551:                                              ; preds = %537, %576
  %552 = phi i64 [ 1, %537 ], [ %577, %576 ]
  %553 = getelementptr ptr, ptr %538, i64 %552
  %554 = getelementptr ptr, ptr %553, i64 -1
  %555 = load ptr, ptr %554, align 8, !tbaa !34
  %556 = getelementptr inbounds %struct.BMLoop, ptr %555, i64 0, i32 1
  %557 = load ptr, ptr %556, align 8, !tbaa !81
  %558 = getelementptr inbounds %struct.BMVert, ptr %557, i64 0, i32 1
  %559 = load ptr, ptr %558, align 8, !tbaa !111
  %560 = getelementptr %struct.BMFlagLayer, ptr %559, i64 %540
  %561 = getelementptr %struct.BMFlagLayer, ptr %560, i64 -1
  %562 = load i16, ptr %561, align 2, !tbaa !86
  %563 = and i16 %562, 8
  %564 = icmp eq i16 %563, 0
  br i1 %564, label %565, label %576

565:                                              ; preds = %551
  %566 = load ptr, ptr %553, align 8, !tbaa !34
  %567 = getelementptr inbounds %struct.BMLoop, ptr %566, i64 0, i32 1
  %568 = load ptr, ptr %567, align 8, !tbaa !81
  %569 = getelementptr inbounds %struct.BMVert, ptr %568, i64 0, i32 1
  %570 = load ptr, ptr %569, align 8, !tbaa !111
  %571 = getelementptr %struct.BMFlagLayer, ptr %570, i64 %540
  %572 = getelementptr %struct.BMFlagLayer, ptr %571, i64 -1
  %573 = load i16, ptr %572, align 2, !tbaa !86
  %574 = and i16 %573, 8
  %575 = icmp eq i16 %574, 0
  br i1 %575, label %576, label %579

576:                                              ; preds = %551, %565
  %577 = add nuw nsw i64 %552, 1
  %578 = icmp eq i64 %577, %541
  br i1 %578, label %581, label %551, !llvm.loop !112

579:                                              ; preds = %565
  %580 = trunc i64 %552 to i32
  br label %581

581:                                              ; preds = %579, %576, %535
  %582 = phi i32 [ 1, %535 ], [ %580, %579 ], [ %531, %576 ]
  %583 = load ptr, ptr %10, align 8, !tbaa !34
  %584 = add i32 %475, %582
  %585 = srem i32 %584, %531
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds ptr, ptr %583, i64 %586
  %588 = load ptr, ptr %587, align 8, !tbaa !34
  %589 = getelementptr inbounds %struct.BMLoop, ptr %588, i64 0, i32 1
  %590 = load ptr, ptr %589, align 8, !tbaa !81
  %591 = getelementptr inbounds %struct.BMVert, ptr %590, i64 0, i32 1
  %592 = load ptr, ptr %591, align 8, !tbaa !111
  %593 = load i32, ptr %476, align 8, !tbaa !85
  %594 = sext i32 %593 to i64
  %595 = getelementptr %struct.BMFlagLayer, ptr %592, i64 %594
  %596 = getelementptr %struct.BMFlagLayer, ptr %595, i64 -1
  %597 = load i16, ptr %596, align 2, !tbaa !86
  %598 = and i16 %597, 8
  %599 = icmp eq i16 %598, 0
  br i1 %599, label %600, label %644

600:                                              ; preds = %581
  %601 = getelementptr ptr, ptr %583, i64 -1
  %602 = icmp sgt i32 %531, 0
  br i1 %602, label %603, label %644

603:                                              ; preds = %600
  %604 = add i32 %477, %582
  br label %605

605:                                              ; preds = %642, %603
  %606 = phi i32 [ 0, %603 ], [ %643, %642 ]
  %607 = add i32 %604, %606
  %608 = srem i32 %607, %531
  %609 = icmp eq i32 %608, 0
  %610 = select i1 %609, i32 %531, i32 %608
  %611 = sext i32 %610 to i64
  %612 = getelementptr ptr, ptr %601, i64 %611
  %613 = load ptr, ptr %612, align 8, !tbaa !34
  %614 = getelementptr inbounds %struct.BMLoop, ptr %613, i64 0, i32 1
  %615 = load ptr, ptr %614, align 8, !tbaa !81
  %616 = getelementptr inbounds %struct.BMVert, ptr %615, i64 0, i32 1
  %617 = load ptr, ptr %616, align 8, !tbaa !111
  %618 = getelementptr %struct.BMFlagLayer, ptr %617, i64 %594
  %619 = getelementptr %struct.BMFlagLayer, ptr %618, i64 -1
  %620 = load i16, ptr %619, align 2, !tbaa !86
  %621 = and i16 %620, 8
  %622 = icmp eq i16 %621, 0
  br i1 %622, label %623, label %639

623:                                              ; preds = %605
  %624 = sext i32 %608 to i64
  %625 = getelementptr inbounds ptr, ptr %583, i64 %624
  %626 = load ptr, ptr %625, align 8, !tbaa !34
  %627 = getelementptr inbounds %struct.BMLoop, ptr %626, i64 0, i32 1
  %628 = load ptr, ptr %627, align 8, !tbaa !81
  %629 = getelementptr inbounds %struct.BMVert, ptr %628, i64 0, i32 1
  %630 = load ptr, ptr %629, align 8, !tbaa !111
  %631 = getelementptr %struct.BMFlagLayer, ptr %630, i64 %594
  %632 = getelementptr %struct.BMFlagLayer, ptr %631, i64 -1
  %633 = load i16, ptr %632, align 2, !tbaa !86
  %634 = and i16 %633, 8
  %635 = icmp eq i16 %634, 0
  %636 = add nuw nsw i32 %606, 1
  %637 = icmp slt i32 %636, %531
  %638 = select i1 %635, i1 %637, i1 false
  br i1 %638, label %642, label %644

639:                                              ; preds = %605
  %640 = add nuw nsw i32 %606, 1
  %641 = icmp slt i32 %640, %531
  br i1 %641, label %642, label %644

642:                                              ; preds = %639, %623
  %643 = phi i32 [ %640, %639 ], [ %636, %623 ]
  br label %605, !llvm.loop !113

644:                                              ; preds = %623, %639, %600, %581
  %645 = phi i32 [ %585, %581 ], [ %505, %600 ], [ %608, %639 ], [ %608, %623 ]
  %646 = add nsw i32 %478, %645
  %647 = load ptr, ptr %9, align 8
  %648 = icmp eq ptr %647, null
  br i1 %648, label %653, label %649

649:                                              ; preds = %644
  %650 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %651 = call i64 %650(ptr noundef nonnull %647) #11
  %652 = lshr i64 %651, 4
  br label %653

653:                                              ; preds = %649, %644
  %654 = phi i64 [ 0, %644 ], [ %652, %649 ]
  %655 = icmp ult i64 %654, %479
  br i1 %655, label %656, label %657

656:                                              ; preds = %653
  call void @_bli_array_grow_func(ptr noundef nonnull %9, ptr noundef null, i32 noundef 16, i32 noundef 0, i32 noundef %13, ptr noundef nonnull @.str.18) #11
  br label %657

657:                                              ; preds = %656, %653
  br i1 %480, label %660, label %658

658:                                              ; preds = %705, %657
  %659 = phi i32 [ %646, %657 ], [ %710, %705 ]
  br i1 %484, label %715, label %799

660:                                              ; preds = %657, %705
  %661 = phi i64 [ %713, %705 ], [ 0, %657 ]
  %662 = phi i32 [ %712, %705 ], [ %582, %657 ]
  %663 = phi i32 [ %710, %705 ], [ %646, %657 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #11
  %664 = load ptr, ptr %10, align 8, !tbaa !34
  %665 = sext i32 %662 to i64
  %666 = getelementptr inbounds ptr, ptr %664, i64 %665
  %667 = load ptr, ptr %666, align 8, !tbaa !34
  %668 = getelementptr inbounds %struct.BMLoop, ptr %667, i64 0, i32 1
  %669 = load ptr, ptr %668, align 8, !tbaa !81
  store i8 6, ptr %481, align 4, !tbaa !46
  store ptr @bmiter__loop_of_vert_begin, ptr %482, align 8, !tbaa !48
  store ptr @bmiter__loop_of_vert_step, ptr %483, align 8, !tbaa !49
  store ptr %669, ptr %12, align 8, !tbaa !55
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %12) #11
  %670 = load ptr, ptr %483, align 8, !tbaa !49
  %671 = call ptr %670(ptr noundef nonnull %12) #11
  %672 = icmp eq ptr %671, null
  br i1 %672, label %695, label %673

673:                                              ; preds = %660
  %674 = sext i32 %663 to i64
  br label %675

675:                                              ; preds = %673, %688
  %676 = phi ptr [ %671, %673 ], [ %690, %688 ]
  %677 = getelementptr inbounds %struct.BMLoop, ptr %676, i64 0, i32 3
  %678 = load ptr, ptr %677, align 8, !tbaa !114
  %679 = icmp eq ptr %678, %508
  br i1 %679, label %688, label %680

680:                                              ; preds = %675
  %681 = load ptr, ptr %10, align 8, !tbaa !34
  %682 = getelementptr inbounds ptr, ptr %681, i64 %674
  %683 = load ptr, ptr %682, align 8, !tbaa !34
  %684 = getelementptr inbounds %struct.BMLoop, ptr %683, i64 0, i32 1
  %685 = load ptr, ptr %684, align 8, !tbaa !81
  %686 = call zeroext i8 @BM_vert_in_face(ptr noundef %678, ptr noundef %685) #11
  %687 = icmp eq i8 %686, 0
  br i1 %687, label %688, label %692

688:                                              ; preds = %675, %680
  %689 = load ptr, ptr %483, align 8, !tbaa !49
  %690 = call ptr %689(ptr noundef nonnull %12) #11
  %691 = icmp eq ptr %690, null
  br i1 %691, label %695, label %675, !llvm.loop !115

692:                                              ; preds = %680
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #11
  %693 = load ptr, ptr %9, align 8, !tbaa !34
  %694 = getelementptr inbounds [2 x ptr], ptr %693, i64 %661
  store ptr null, ptr %694, align 8, !tbaa !34
  br label %705

695:                                              ; preds = %688, %660
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #11
  %696 = load ptr, ptr %10, align 8, !tbaa !34
  %697 = getelementptr inbounds ptr, ptr %696, i64 %665
  %698 = load ptr, ptr %697, align 8, !tbaa !34
  %699 = load ptr, ptr %9, align 8, !tbaa !34
  %700 = getelementptr inbounds [2 x ptr], ptr %699, i64 %661
  store ptr %698, ptr %700, align 8, !tbaa !34
  %701 = load ptr, ptr %10, align 8, !tbaa !34
  %702 = sext i32 %663 to i64
  %703 = getelementptr inbounds ptr, ptr %701, i64 %702
  %704 = load ptr, ptr %703, align 8, !tbaa !34
  br label %705

705:                                              ; preds = %692, %695
  %706 = phi ptr [ null, %692 ], [ %704, %695 ]
  %707 = load ptr, ptr %9, align 8, !tbaa !34
  %708 = getelementptr inbounds [2 x ptr], ptr %707, i64 %661, i64 1
  store ptr %706, ptr %708, align 8, !tbaa !34
  %709 = add nsw i32 %663, -1
  %710 = srem i32 %709, %531
  %711 = add nsw i32 %662, 1
  %712 = srem i32 %711, %531
  %713 = add nuw nsw i64 %661, 1
  %714 = icmp eq i64 %713, %485
  br i1 %714, label %658, label %660, !llvm.loop !116

715:                                              ; preds = %658, %738
  %716 = phi i64 [ %739, %738 ], [ 0, %658 ]
  %717 = load ptr, ptr %9, align 8, !tbaa !34
  %718 = getelementptr inbounds [2 x ptr], ptr %717, i64 %716
  %719 = load ptr, ptr %718, align 8, !tbaa !34
  %720 = icmp eq ptr %719, null
  br i1 %720, label %738, label %721

721:                                              ; preds = %715
  %722 = getelementptr inbounds [2 x ptr], ptr %717, i64 %716, i64 1
  %723 = load ptr, ptr %722, align 8, !tbaa !34
  %724 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %508, ptr noundef nonnull %719, ptr noundef %723, ptr noundef nonnull %11, ptr noundef null, i8 noundef zeroext 0) #11
  %725 = icmp eq ptr %724, null
  br i1 %725, label %738, label %726

726:                                              ; preds = %721
  %727 = load ptr, ptr %11, align 8, !tbaa !34
  %728 = getelementptr inbounds %struct.BMLoop, ptr %727, i64 0, i32 2
  %729 = load ptr, ptr %728, align 8, !tbaa !79
  %730 = getelementptr inbounds %struct.BMEdge, ptr %729, i64 0, i32 1
  %731 = load ptr, ptr %730, align 8, !tbaa !82
  %732 = load i32, ptr %476, align 8, !tbaa !85
  %733 = sext i32 %732 to i64
  %734 = getelementptr %struct.BMFlagLayer, ptr %731, i64 %733
  %735 = getelementptr %struct.BMFlagLayer, ptr %734, i64 -1
  %736 = load i16, ptr %735, align 2, !tbaa !86
  %737 = or i16 %736, 8
  store i16 %737, ptr %735, align 2, !tbaa !86
  br label %738

738:                                              ; preds = %721, %726, %715
  %739 = add nuw nsw i64 %716, 1
  %740 = icmp eq i64 %739, %486
  br i1 %740, label %799, label %715, !llvm.loop !117

741:                                              ; preds = %504
  store i8 11, ptr %468, align 4, !tbaa !46
  store ptr @bmiter__loop_of_face_begin, ptr %469, align 8, !tbaa !48
  store ptr @bmiter__loop_of_face_step, ptr %470, align 8, !tbaa !49
  store ptr %508, ptr %6, align 8, !tbaa !55
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #11
  %742 = load ptr, ptr %470, align 8, !tbaa !49
  %743 = call ptr %742(ptr noundef nonnull %6) #11
  store ptr %743, ptr %11, align 8, !tbaa !34
  %744 = icmp eq ptr %743, null
  br i1 %744, label %759, label %745

745:                                              ; preds = %741, %754
  %746 = phi ptr [ %756, %754 ], [ %743, %741 ]
  %747 = phi i32 [ %757, %754 ], [ 0, %741 ]
  %748 = getelementptr inbounds %struct.BMLoop, ptr %746, i64 0, i32 1
  %749 = load ptr, ptr %748, align 8, !tbaa !81
  %750 = load ptr, ptr %506, align 8, !tbaa !98
  %751 = icmp eq ptr %749, %750
  br i1 %751, label %752, label %754

752:                                              ; preds = %745
  %753 = xor i32 %747, -1
  br label %759

754:                                              ; preds = %745
  %755 = load ptr, ptr %470, align 8, !tbaa !49
  %756 = call ptr %755(ptr noundef nonnull %6) #11
  store ptr %756, ptr %11, align 8, !tbaa !34
  %757 = add nuw nsw i32 %747, 1
  %758 = icmp eq ptr %756, null
  br i1 %758, label %759, label %745, !llvm.loop !118

759:                                              ; preds = %754, %741, %752
  %760 = phi i32 [ %753, %752 ], [ 0, %741 ], [ 0, %754 ]
  %761 = load ptr, ptr %7, align 8
  %762 = icmp eq ptr %761, null
  br i1 %762, label %767, label %763

763:                                              ; preds = %759
  %764 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %765 = call i64 %764(ptr noundef nonnull %761) #11
  %766 = lshr i64 %765, 3
  br label %767

767:                                              ; preds = %763, %759
  %768 = phi i64 [ %766, %763 ], [ 0, %759 ]
  %769 = getelementptr inbounds %struct.BMFace, ptr %508, i64 0, i32 3
  %770 = load i32, ptr %769, align 8, !tbaa !77
  %771 = sext i32 %770 to i64
  %772 = icmp ult i64 %768, %771
  br i1 %772, label %773, label %774

773:                                              ; preds = %767
  call void @_bli_array_grow_func(ptr noundef nonnull %7, ptr noundef null, i32 noundef 8, i32 noundef 0, i32 noundef %770, ptr noundef nonnull @.str.16) #11
  br label %774

774:                                              ; preds = %773, %767
  store i8 11, ptr %468, align 4, !tbaa !46
  store ptr @bmiter__loop_of_face_begin, ptr %469, align 8, !tbaa !48
  store ptr @bmiter__loop_of_face_step, ptr %470, align 8, !tbaa !49
  store ptr %508, ptr %6, align 8, !tbaa !55
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #11
  %775 = load ptr, ptr %470, align 8, !tbaa !49
  %776 = call ptr %775(ptr noundef nonnull %6) #11
  store ptr %776, ptr %11, align 8, !tbaa !34
  %777 = icmp eq ptr %776, null
  br i1 %777, label %794, label %778

778:                                              ; preds = %774, %778
  %779 = phi ptr [ %791, %778 ], [ %776, %774 ]
  %780 = phi i32 [ %792, %778 ], [ 0, %774 ]
  %781 = add i32 %780, %760
  %782 = load i32, ptr %769, align 8, !tbaa !77
  %783 = add nsw i32 %781, %782
  %784 = srem i32 %783, %782
  %785 = getelementptr inbounds %struct.BMLoop, ptr %779, i64 0, i32 1
  %786 = load ptr, ptr %785, align 8, !tbaa !81
  %787 = load ptr, ptr %7, align 8, !tbaa !34
  %788 = sext i32 %784 to i64
  %789 = getelementptr inbounds ptr, ptr %787, i64 %788
  store ptr %786, ptr %789, align 8, !tbaa !34
  %790 = load ptr, ptr %470, align 8, !tbaa !49
  %791 = call ptr %790(ptr noundef nonnull %6) #11
  store ptr %791, ptr %11, align 8, !tbaa !34
  %792 = add nuw nsw i32 %780, 1
  %793 = icmp eq ptr %791, null
  br i1 %793, label %794, label %778, !llvm.loop !119

794:                                              ; preds = %778, %774
  %795 = phi i32 [ %505, %774 ], [ %784, %778 ]
  %796 = getelementptr inbounds %struct.SubDPattern, ptr %510, i64 0, i32 1
  %797 = load ptr, ptr %796, align 8, !tbaa !120
  %798 = load ptr, ptr %7, align 8, !tbaa !34
  call void %797(ptr noundef %0, ptr noundef %508, ptr noundef %798, ptr noundef nonnull %3) #11
  br label %799

799:                                              ; preds = %738, %658, %512, %794
  %800 = phi i32 [ %795, %794 ], [ %505, %512 ], [ %659, %658 ], [ %659, %738 ]
  call void @BLI_stack_discard(ptr noundef %103) #11
  %801 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %103) #11
  %802 = icmp eq i8 %801, 0
  br i1 %802, label %504, label %803, !llvm.loop !121

803:                                              ; preds = %799, %464
  store i8 1, ptr %46, align 4, !tbaa !46
  store ptr @bmiter__elem_of_mesh_begin, ptr %47, align 8, !tbaa !48
  store ptr @bmiter__elem_of_mesh_step, ptr %48, align 8, !tbaa !49
  %804 = load ptr, ptr %49, align 8, !tbaa !50
  store ptr %804, ptr %4, align 8, !tbaa !55
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %805 = load ptr, ptr %48, align 8, !tbaa !49
  %806 = call ptr %805(ptr noundef nonnull %4) #11
  %807 = icmp eq ptr %806, null
  br i1 %807, label %825, label %808

808:                                              ; preds = %803, %808
  %809 = phi ptr [ %823, %808 ], [ %806, %803 ]
  %810 = load ptr, ptr %809, align 8, !tbaa !56
  %811 = load i32, ptr %43, align 8, !tbaa !44
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds i8, ptr %810, i64 %812
  %814 = getelementptr inbounds %struct.BMVert, ptr %809, i64 0, i32 2
  %815 = load float, ptr %813, align 4, !tbaa !59
  store float %815, ptr %814, align 4, !tbaa !59
  %816 = getelementptr inbounds float, ptr %813, i64 1
  %817 = load float, ptr %816, align 4, !tbaa !59
  %818 = getelementptr inbounds %struct.BMVert, ptr %809, i64 0, i32 2, i64 1
  store float %817, ptr %818, align 4, !tbaa !59
  %819 = getelementptr inbounds float, ptr %813, i64 2
  %820 = load float, ptr %819, align 4, !tbaa !59
  %821 = getelementptr inbounds %struct.BMVert, ptr %809, i64 0, i32 2, i64 2
  store float %820, ptr %821, align 4, !tbaa !59
  %822 = load ptr, ptr %48, align 8, !tbaa !49
  %823 = call ptr %822(ptr noundef nonnull %4) #11
  %824 = icmp eq ptr %823, null
  br i1 %824, label %825, label %808, !llvm.loop !122

825:                                              ; preds = %808, %803
  %826 = load i32, ptr %40, align 8, !tbaa !38
  call void @BM_data_layer_free_n(ptr noundef %0, ptr noundef nonnull %36, i32 noundef 28, i32 noundef %826) #11
  call void @BLI_stack_free(ptr noundef %103) #11
  %827 = load ptr, ptr %8, align 8
  %828 = icmp eq ptr %827, null
  br i1 %828, label %831, label %829

829:                                              ; preds = %825
  %830 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %830(ptr noundef nonnull %827) #11
  br label %831

831:                                              ; preds = %829, %825
  %832 = load ptr, ptr %7, align 8
  %833 = icmp eq ptr %832, null
  br i1 %833, label %836, label %834

834:                                              ; preds = %831
  %835 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %835(ptr noundef nonnull %832) #11
  br label %836

836:                                              ; preds = %834, %831
  %837 = load ptr, ptr %9, align 8, !tbaa !34
  %838 = icmp eq ptr %837, null
  br i1 %838, label %841, label %839

839:                                              ; preds = %836
  %840 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %840(ptr noundef nonnull %837) #11
  br label %841

841:                                              ; preds = %839, %836
  %842 = load ptr, ptr %10, align 8, !tbaa !34
  %843 = icmp eq ptr %842, null
  br i1 %843, label %846, label %844

844:                                              ; preds = %841
  %845 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %845(ptr noundef nonnull %842) #11
  br label %846

846:                                              ; preds = %844, %841
  %847 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %847, ptr noundef nonnull @.str.19, i8 noundef zeroext 11, i16 noundef signext 8) #11
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %847, ptr noundef nonnull @.str.20, i8 noundef zeroext 11, i16 noundef signext 16) #11
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %847, ptr noundef nonnull @.str.21, i8 noundef zeroext 11, i16 noundef signext 25) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #2

declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #2

declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_map_to_flag(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare ptr @BLI_stack_new(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_share_vert_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare ptr @BLI_stack_push_r(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_subdivide_multicut(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.BMVert, align 8
  %8 = alloca %struct.BMVert, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #11
  %9 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false), !tbaa.struct !123
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #11
  %11 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 56, i1 false), !tbaa.struct !123
  %13 = load i32, ptr %2, align 8, !tbaa !63
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %82

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 1
  %17 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %18 = getelementptr inbounds %struct.SubDParams, ptr %2, i64 0, i32 11
  br label %19

19:                                               ; preds = %15, %50
  %20 = phi i32 [ 0, %15 ], [ %80, %50 ]
  %21 = load i32, ptr %2, align 8, !tbaa !63
  %22 = load ptr, ptr %16, align 8, !tbaa !82
  %23 = load i32, ptr %17, align 8, !tbaa !85
  %24 = sext i32 %23 to i64
  %25 = getelementptr %struct.BMFlagLayer, ptr %22, i64 %24
  %26 = getelementptr %struct.BMFlagLayer, ptr %25, i64 -1
  %27 = load i16, ptr %26, align 2, !tbaa !86
  %28 = and i16 %27, 2
  %29 = icmp ne i16 %28, 0
  %30 = icmp eq i32 %21, 1
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %41

32:                                               ; preds = %19
  %33 = load ptr, ptr %18, align 8, !tbaa !65
  %34 = getelementptr inbounds %struct.BMOpSlot, ptr %33, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !55
  %36 = call ptr @BLI_ghash_lookup_p(ptr noundef %35, ptr noundef %1) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %36, align 8, !tbaa !34
  %40 = load float, ptr %39, align 4, !tbaa !59
  br label %50

41:                                               ; preds = %19
  %42 = add nsw i32 %21, 1
  %43 = sub nsw i32 %42, %20
  %44 = sitofp i32 %43 to float
  %45 = fdiv float 1.000000e+00, %44
  %46 = add nuw nsw i32 %20, 1
  %47 = sitofp i32 %46 to float
  %48 = sitofp i32 %42 to float
  %49 = fdiv float %47, %48
  br label %50

50:                                               ; preds = %32, %38, %41
  %51 = phi float [ %45, %41 ], [ %40, %38 ], [ 0.000000e+00, %32 ]
  %52 = phi float [ %49, %41 ], [ 0.000000e+00, %38 ], [ 0.000000e+00, %32 ]
  %53 = call fastcc noundef ptr @bm_subdivide_edge_addvert(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, float noundef %51, float noundef %52, ptr noundef nonnull %6, ptr noundef %3, ptr noundef %4)
  %54 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !111
  %56 = load i32, ptr %17, align 8, !tbaa !85
  %57 = sext i32 %56 to i64
  %58 = getelementptr %struct.BMFlagLayer, ptr %55, i64 %57
  %59 = getelementptr %struct.BMFlagLayer, ptr %58, i64 -1
  %60 = load i16, ptr %59, align 2, !tbaa !86
  %61 = or i16 %60, 1
  store i16 %61, ptr %59, align 2, !tbaa !86
  %62 = load ptr, ptr %16, align 8, !tbaa !82
  %63 = getelementptr %struct.BMFlagLayer, ptr %62, i64 %57
  %64 = getelementptr %struct.BMFlagLayer, ptr %63, i64 -1
  %65 = load i16, ptr %64, align 2, !tbaa !86
  %66 = or i16 %65, 1
  store i16 %66, ptr %64, align 2, !tbaa !86
  %67 = load ptr, ptr %6, align 8, !tbaa !34
  %68 = getelementptr inbounds %struct.BMEdge, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !82
  %70 = getelementptr %struct.BMFlagLayer, ptr %69, i64 %57
  %71 = getelementptr %struct.BMFlagLayer, ptr %70, i64 -1
  %72 = load i16, ptr %71, align 2, !tbaa !86
  %73 = or i16 %72, 1
  store i16 %73, ptr %71, align 2, !tbaa !86
  %74 = load i16, ptr %59, align 2, !tbaa !86
  %75 = or i16 %74, 16
  store i16 %75, ptr %59, align 2, !tbaa !86
  %76 = load i16, ptr %64, align 2, !tbaa !86
  %77 = or i16 %76, 16
  store i16 %77, ptr %64, align 2, !tbaa !86
  %78 = load i16, ptr %71, align 2, !tbaa !86
  %79 = or i16 %78, 1
  store i16 %79, ptr %71, align 2, !tbaa !86
  %80 = add nuw nsw i32 %20, 1
  %81 = icmp eq i32 %80, %13
  br i1 %81, label %82, label %19, !llvm.loop !124

82:                                               ; preds = %50, %5
  call fastcc void @alter_co(ptr noundef %10, ptr noundef nonnull %2, float noundef 0.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull %8)
  call fastcc void @alter_co(ptr noundef %12, ptr noundef nonnull %2, float noundef 1.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull %8)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret void
}

declare zeroext i8 @BLI_stack_is_empty(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_stack_peek(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_in_face(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_stack_discard(ptr noundef) local_unnamed_addr #2

declare void @BM_data_layer_free_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_stack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_esubdivide(ptr noundef %0, i8 noundef zeroext %1, float noundef %2, i16 noundef signext %3, i8 noundef zeroext %4, float noundef %5, float noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i16 noundef signext %10, i16 noundef signext %11, i16 noundef signext %12, i32 noundef %13) local_unnamed_addr #0 {
  %15 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %15) #11
  %16 = zext i8 %1 to i32
  %17 = fpext float %2 to double
  %18 = sext i16 %3 to i32
  %19 = zext i8 %4 to i32
  %20 = fpext float %5 to double
  %21 = fpext float %6 to double
  %22 = sext i16 %10 to i32
  %23 = sext i16 %11 to i32
  %24 = sext i16 %12 to i32
  %25 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %15, i32 noundef 1, ptr noundef nonnull @.str.22, i32 noundef %16, double noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, i32 noundef %7, i32 noundef %9, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %13) #11
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %15) #11
  switch i32 %8, label %32 [
    i32 3, label %30
    i32 1, label %26
    i32 2, label %28
  ]

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.BMOperator, ptr %15, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef nonnull %27, ptr noundef nonnull @.str.19, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  call void @BM_mesh_select_flush(ptr noundef %0) #11
  br label %32

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.BMOperator, ptr %15, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull @.str.19, i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %32

30:                                               ; preds = %14
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  %31 = getelementptr inbounds %struct.BMOperator, ptr %15, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef nonnull %31, ptr noundef nonnull @.str.19, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %32

32:                                               ; preds = %14, %30, %28, %26
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %15) #11
  ret void
}

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_select_flush(ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_bisect_edges_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.SubDParams, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i64 88, i1 false)
  %5 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #11
  store i32 %5, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.SubDParams, ptr %4, i64 0, i32 10
  store ptr %1, ptr %6, align 8, !tbaa !64
  %7 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.12) #11
  %8 = getelementptr inbounds %struct.SubDParams, ptr %4, i64 0, i32 11
  store ptr %7, ptr %8, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  tail call void @BM_data_layer_add(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 28) #11
  %10 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %9, i32 noundef 28) #11
  %11 = add nsw i32 %10, -1
  %12 = getelementptr inbounds %struct.SubDParams, ptr %4, i64 0, i32 14
  %13 = getelementptr inbounds %struct.SubDParams, ptr %4, i64 0, i32 14, i32 3
  store i32 %11, ptr %13, align 8, !tbaa !38
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %9, i32 noundef 28) #11
  store i32 %14, ptr %12, align 4, !tbaa !43
  %15 = tail call i32 @CustomData_get_n_offset(ptr noundef nonnull %9, i32 noundef 28, i32 noundef %11) #11
  %16 = getelementptr inbounds %struct.SubDParams, ptr %4, i64 0, i32 14, i32 1
  store i32 %15, ptr %16, align 8, !tbaa !44
  %17 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %9, i32 noundef 28) #11
  %18 = getelementptr inbounds %struct.SubDParams, ptr %4, i64 0, i32 14, i32 2
  store i32 %17, ptr %18, align 4, !tbaa !45
  %19 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str, i8 noundef zeroext 2) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %2, %21
  %22 = phi ptr [ %27, %21 ], [ %19, %2 ]
  %23 = getelementptr inbounds %struct.BMEdge, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  %25 = getelementptr inbounds %struct.BMEdge, ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !89
  call fastcc void @bm_subdivide_multicut(ptr noundef %0, ptr noundef nonnull %22, ptr noundef nonnull %4, ptr noundef %24, ptr noundef %26)
  %27 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21, !llvm.loop !125

29:                                               ; preds = %21, %2
  %30 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %30, ptr noundef nonnull @.str.20, i8 noundef zeroext 11, i16 noundef signext 16) #11
  call void @BM_data_layer_free_n(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 28, i32 noundef %11) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @quad_3edge_split(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = load i32, ptr %3, align 8, !tbaa !63
  %15 = getelementptr ptr, ptr %2, i64 1
  %16 = getelementptr ptr, ptr %2, i64 1
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = lshr i32 %14, 1
  %20 = and i32 %14, 1
  %21 = icmp eq i32 %20, 0
  %22 = shl nuw nsw i32 %14, 1
  %23 = add nuw nsw i32 %22, 2
  %24 = zext nneg i32 %14 to i64
  %25 = zext nneg i32 %19 to i64
  %26 = zext nneg i32 %14 to i64
  %27 = zext nneg i32 %14 to i64
  %28 = getelementptr ptr, ptr %15, i64 %24
  %29 = getelementptr ptr, ptr %16, i64 %26
  br label %38

30:                                               ; preds = %78, %4
  %31 = getelementptr ptr, ptr %2, i64 1
  %32 = icmp slt i32 %14, -1
  br i1 %32, label %99, label %33

33:                                               ; preds = %30
  %34 = sdiv i32 %14, 2
  %35 = mul i32 %14, 3
  %36 = add nsw i32 %34, 1
  %37 = zext i32 %36 to i64
  br label %81

38:                                               ; preds = %18, %78
  %39 = phi i64 [ 0, %18 ], [ %79, %78 ]
  %40 = phi i32 [ 0, %18 ], [ %62, %78 ]
  %41 = icmp ne i64 %39, %25
  %42 = or i1 %41, %21
  %43 = select i1 %41, i32 %40, i32 %23
  br i1 %42, label %61, label %44

44:                                               ; preds = %38
  %45 = trunc i64 %39 to i32
  %46 = xor i32 %45, -1
  %47 = add i32 %40, %14
  %48 = add i32 %47, %46
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %2, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = getelementptr ptr, ptr %28, i64 %39
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  %54 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %51, ptr noundef %53, ptr noundef nonnull %11, ptr noundef nonnull %12, i8 noundef zeroext 1) #11
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  %57 = load ptr, ptr %11, align 8, !tbaa !34
  %58 = load ptr, ptr %12, align 8, !tbaa !34
  %59 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %54, ptr noundef %57, ptr noundef %58, ptr noundef nonnull %13, ptr noundef null, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %60

60:                                               ; preds = %44, %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  br label %61

61:                                               ; preds = %38, %60
  %62 = phi i32 [ %43, %38 ], [ %23, %60 ]
  %63 = trunc i64 %39 to i32
  %64 = xor i32 %63, -1
  %65 = add nsw i32 %14, %64
  %66 = add nsw i32 %65, %62
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %2, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = getelementptr ptr, ptr %29, i64 %39
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %72 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %69, ptr noundef %71, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 1) #11
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %75 = load ptr, ptr %8, align 8, !tbaa !34
  %76 = load ptr, ptr %9, align 8, !tbaa !34
  %77 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %72, ptr noundef %75, ptr noundef %76, ptr noundef nonnull %10, ptr noundef null, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %78

78:                                               ; preds = %61, %74
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %79 = add nuw nsw i64 %39, 1
  %80 = icmp eq i64 %79, %27
  br i1 %80, label %30, label %38, !llvm.loop !126

81:                                               ; preds = %33, %96
  %82 = phi i64 [ 0, %33 ], [ %97, %96 ]
  %83 = getelementptr inbounds ptr, ptr %2, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !34
  %85 = trunc i64 %82 to i32
  %86 = sub i32 %35, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr ptr, ptr %31, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %90 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %84, ptr noundef %89, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1) #11
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %93 = load ptr, ptr %5, align 8, !tbaa !34
  %94 = load ptr, ptr %6, align 8, !tbaa !34
  %95 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %90, ptr noundef %93, ptr noundef %94, ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %96

96:                                               ; preds = %81, %92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %97 = add nuw nsw i64 %82, 1
  %98 = icmp eq i64 %97, %37
  br i1 %98, label %99, label %81, !llvm.loop !127

99:                                               ; preds = %96, %30
  ret void
}

declare ptr @BM_vert_pair_share_face_by_len(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @quad_2edge_split_path(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = load i32, ptr %3, align 8, !tbaa !63
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %4
  %14 = shl nuw i32 %11, 1
  %15 = zext nneg i32 %11 to i64
  br label %16

16:                                               ; preds = %13, %31
  %17 = phi i64 [ 0, %13 ], [ %32, %31 ]
  %18 = getelementptr inbounds ptr, ptr %2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = trunc i64 %17 to i32
  %21 = sub i32 %14, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %25 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %19, ptr noundef %24, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 1) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %28 = load ptr, ptr %8, align 8, !tbaa !34
  %29 = load ptr, ptr %9, align 8, !tbaa !34
  %30 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %25, ptr noundef %28, ptr noundef %29, ptr noundef nonnull %10, ptr noundef null, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %31

31:                                               ; preds = %16, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %32 = add nuw nsw i64 %17, 1
  %33 = icmp eq i64 %32, %15
  br i1 %33, label %34, label %16, !llvm.loop !128

34:                                               ; preds = %31, %4
  %35 = shl nsw i32 %11, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr ptr, ptr %2, i64 %36
  %38 = getelementptr ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = or disjoint i32 %35, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %2, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %44 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %39, ptr noundef %43, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %47 = load ptr, ptr %5, align 8, !tbaa !34
  %48 = load ptr, ptr %6, align 8, !tbaa !34
  %49 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %44, ptr noundef %47, ptr noundef %48, ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %50

50:                                               ; preds = %34, %46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quad_2edge_split_innervert(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #11
  %15 = load i32, ptr %3, align 8, !tbaa !63
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp sgt i32 %15, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %4
  %21 = add nsw i32 %15, -1
  %22 = shl nuw i32 %15, 1
  %23 = zext nneg i32 %15 to i64
  %24 = zext i32 %21 to i64
  br label %25

25:                                               ; preds = %20, %58
  %26 = phi i64 [ %23, %20 ], [ %28, %58 ]
  %27 = phi ptr [ %18, %20 ], [ %48, %58 ]
  %28 = add nsw i64 %26, -1
  %29 = getelementptr inbounds ptr, ptr %2, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = trunc i64 %28 to i32
  %32 = sub i32 %22, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  %36 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %30, ptr noundef %35, ptr noundef nonnull %11, ptr noundef nonnull %12, i8 noundef zeroext 1) #11
  %37 = icmp ne ptr %36, null
  call void @llvm.assume(i1 %37)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  %38 = load ptr, ptr %11, align 8, !tbaa !34
  %39 = load ptr, ptr %12, align 8, !tbaa !34
  %40 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %36, ptr noundef %38, ptr noundef %39, ptr noundef nonnull %13, ptr noundef null, i8 noundef zeroext 0) #11
  %41 = load ptr, ptr %13, align 8, !tbaa !34, !nonnull !129, !noundef !129
  %42 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  %44 = getelementptr inbounds %struct.BMEdge, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !90
  %46 = getelementptr inbounds %struct.BMEdge, ptr %43, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !89
  %48 = call fastcc ptr @bm_subdivide_edge_addvert(ptr noundef %0, ptr noundef %43, ptr noundef nonnull %3, float noundef 5.000000e-01, float noundef 5.000000e-01, ptr noundef nonnull %14, ptr noundef %45, ptr noundef %47)
  %49 = icmp eq i64 %28, %24
  br i1 %49, label %58, label %50

50:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %51 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %27, ptr noundef %48, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 1) #11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %54 = load ptr, ptr %8, align 8, !tbaa !34
  %55 = load ptr, ptr %9, align 8, !tbaa !34
  %56 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %51, ptr noundef %54, ptr noundef %55, ptr noundef nonnull %10, ptr noundef null, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %57

57:                                               ; preds = %50, %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %58

58:                                               ; preds = %57, %25
  %59 = icmp sgt i64 %26, 1
  br i1 %59, label %25, label %60, !llvm.loop !130

60:                                               ; preds = %58, %4
  %61 = phi ptr [ %18, %4 ], [ %48, %58 ]
  %62 = shl nsw i32 %15, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr ptr, ptr %2, i64 %63
  %65 = getelementptr ptr, ptr %64, i64 2
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %67 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %61, ptr noundef %66, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1) #11
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %70 = load ptr, ptr %5, align 8, !tbaa !34
  %71 = load ptr, ptr %6, align 8, !tbaa !34
  %72 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %67, ptr noundef %70, ptr noundef %71, ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %73

73:                                               ; preds = %60, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @bm_subdivide_edge_addvert(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = tail call ptr @BM_edge_split(ptr noundef %0, ptr noundef %1, ptr noundef %10, ptr noundef %5, float noundef %3) #11
  %12 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %15 = load i32, ptr %14, align 8, !tbaa !85
  %16 = sext i32 %15 to i64
  %17 = getelementptr %struct.BMFlagLayer, ptr %13, i64 %16
  %18 = getelementptr %struct.BMFlagLayer, ptr %17, i64 -1
  %19 = load i16, ptr %18, align 2, !tbaa !86
  %20 = or i16 %19, 8
  store i16 %20, ptr %18, align 2, !tbaa !86
  tail call fastcc void @alter_co(ptr noundef %11, ptr noundef %2, float noundef %4, ptr noundef %6, ptr noundef %7)
  %21 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 3
  %22 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 3
  %23 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 3
  tail call void @interp_v3_v3v3(ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23, float noundef %4) #11
  %24 = load float, ptr %21, align 4, !tbaa !59
  %25 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 3, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !59
  %27 = fmul float %26, %26
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %27)
  %29 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 3, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !59
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %28)
  %32 = fcmp ogt float %31, 0x38AA95A5C0000000
  br i1 %32, label %33, label %42

33:                                               ; preds = %8
  %34 = tail call float @sqrtf(float noundef %31) #11
  %35 = fdiv float 1.000000e+00, %34
  %36 = load float, ptr %21, align 4, !tbaa !59
  %37 = fmul float %36, %35
  store float %37, ptr %21, align 4, !tbaa !59
  %38 = load float, ptr %25, align 4, !tbaa !59
  %39 = fmul float %35, %38
  store float %39, ptr %25, align 4, !tbaa !59
  %40 = load float, ptr %29, align 4, !tbaa !59
  %41 = fmul float %35, %40
  br label %43

42:                                               ; preds = %8
  store float 0.000000e+00, ptr %21, align 4, !tbaa !59
  store float 0.000000e+00, ptr %25, align 4, !tbaa !59
  br label %43

43:                                               ; preds = %33, %42
  %44 = phi float [ 0.000000e+00, %42 ], [ %41, %33 ]
  store float %44, ptr %29, align 4, !tbaa !59
  ret ptr %11
}

declare ptr @BM_edge_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @alter_co(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = load ptr, ptr %0, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 14
  %11 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 14, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !44
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %9, i64 %13
  %15 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !59
  store float %16, ptr %14, align 4, !tbaa !59
  %17 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !59
  %19 = getelementptr inbounds float, ptr %14, i64 1
  store float %18, ptr %19, align 4, !tbaa !59
  %20 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !59
  %22 = getelementptr inbounds float, ptr %14, i64 2
  store float %21, ptr %22, align 4, !tbaa !59
  %23 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 7
  %24 = load i8, ptr %23, align 2, !tbaa !75
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %5
  %27 = fmul float %18, %18
  %28 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %28)
  %30 = fcmp ogt float %29, 0x38AA95A5C0000000
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = tail call float @sqrtf(float noundef %29) #11
  %33 = fdiv float 1.000000e+00, %32
  %34 = load float, ptr %14, align 4, !tbaa !59
  %35 = fmul float %34, %33
  store float %35, ptr %14, align 4, !tbaa !59
  %36 = load float, ptr %19, align 4, !tbaa !59
  %37 = fmul float %33, %36
  store float %37, ptr %19, align 4, !tbaa !59
  %38 = load float, ptr %22, align 4, !tbaa !59
  %39 = fmul float %33, %38
  br label %41

40:                                               ; preds = %26
  store float 0.000000e+00, ptr %14, align 4, !tbaa !59
  store float 0.000000e+00, ptr %19, align 4, !tbaa !59
  br label %41

41:                                               ; preds = %31, %40
  %42 = phi float [ 0.000000e+00, %40 ], [ %39, %31 ]
  store float %42, ptr %22, align 4, !tbaa !59
  %43 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 1
  %44 = load float, ptr %43, align 4, !tbaa !67
  %45 = load float, ptr %14, align 4, !tbaa !59
  %46 = fmul float %44, %45
  store float %46, ptr %14, align 4, !tbaa !59
  %47 = load float, ptr %19, align 4, !tbaa !59
  %48 = fmul float %44, %47
  store float %48, ptr %19, align 4, !tbaa !59
  %49 = fmul float %42, %44
  br label %139

50:                                               ; preds = %5
  %51 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 5
  %52 = load i8, ptr %51, align 4, !tbaa !72
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %141, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2
  %56 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  %57 = load float, ptr %55, align 4, !tbaa !59
  %58 = load float, ptr %56, align 4, !tbaa !59
  %59 = fsub float %57, %58
  %60 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !59
  %62 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !59
  %64 = fsub float %61, %63
  %65 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !59
  %67 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !59
  %69 = fsub float %66, %68
  %70 = fmul float %64, %64
  %71 = tail call float @llvm.fmuladd.f32(float %59, float %59, float %70)
  %72 = tail call float @llvm.fmuladd.f32(float %69, float %69, float %71)
  %73 = fcmp ogt float %72, 0x38AA95A5C0000000
  br i1 %73, label %74, label %81

74:                                               ; preds = %54
  %75 = tail call float @sqrtf(float noundef %72) #11
  %76 = fdiv float 1.000000e+00, %75
  %77 = fmul float %59, %76
  %78 = fmul float %64, %76
  %79 = fmul float %69, %76
  %80 = fmul float %75, 5.000000e-01
  br label %81

81:                                               ; preds = %54, %74
  %82 = phi float [ %77, %74 ], [ 0.000000e+00, %54 ]
  %83 = phi float [ %78, %74 ], [ 0.000000e+00, %54 ]
  %84 = phi float [ %79, %74 ], [ 0.000000e+00, %54 ]
  %85 = phi float [ %80, %74 ], [ 0.000000e+00, %54 ]
  %86 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 3
  %87 = load float, ptr %86, align 4, !tbaa !59
  %88 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 3, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !59
  %90 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 3, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !59
  %92 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 3
  %93 = load float, ptr %92, align 4, !tbaa !59
  %94 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 3, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !59
  %96 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 3, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !59
  %98 = fmul float %83, %89
  %99 = tail call float @llvm.fmuladd.f32(float %82, float %87, float %98)
  %100 = tail call float @llvm.fmuladd.f32(float %84, float %91, float %99)
  %101 = fmul float %87, %100
  %102 = fmul float %89, %100
  %103 = fmul float %91, %100
  %104 = fmul float %83, %95
  %105 = tail call float @llvm.fmuladd.f32(float %82, float %93, float %104)
  %106 = tail call float @llvm.fmuladd.f32(float %84, float %97, float %105)
  %107 = fneg float %106
  %108 = tail call float @llvm.fmuladd.f32(float %93, float %107, float %101)
  %109 = tail call float @llvm.fmuladd.f32(float %95, float %107, float %102)
  %110 = tail call float @llvm.fmuladd.f32(float %97, float %107, float %103)
  %111 = fsub float 5.000000e-01, %2
  %112 = tail call float @llvm.fabs.f32(float %111)
  %113 = tail call float @llvm.fmuladd.f32(float %112, float -2.000000e+00, float 1.000000e+00)
  %114 = tail call float @llvm.fabs.f32(float %113)
  %115 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !68
  %117 = tail call float @bmesh_subd_falloff_calc(i32 noundef %116, float noundef %114) #11
  %118 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 6
  %119 = load i8, ptr %118, align 1, !tbaa !73
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %81
  %122 = tail call float @BM_vert_calc_shell_factor(ptr noundef nonnull %0) #11
  %123 = fmul float %117, %122
  br label %124

124:                                              ; preds = %121, %81
  %125 = phi float [ %123, %121 ], [ %117, %81 ]
  %126 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 1
  %127 = load float, ptr %126, align 4, !tbaa !67
  %128 = fmul float %125, %127
  %129 = fmul float %85, %128
  %130 = fmul float %108, %129
  %131 = fmul float %109, %129
  %132 = fmul float %110, %129
  %133 = load float, ptr %14, align 4, !tbaa !59
  %134 = fadd float %133, %130
  store float %134, ptr %14, align 4, !tbaa !59
  %135 = load float, ptr %19, align 4, !tbaa !59
  %136 = fadd float %135, %131
  store float %136, ptr %19, align 4, !tbaa !59
  %137 = load float, ptr %22, align 4, !tbaa !59
  %138 = fadd float %132, %137
  br label %139

139:                                              ; preds = %41, %124
  %140 = phi float [ %138, %124 ], [ %49, %41 ]
  store float %140, ptr %22, align 4, !tbaa !59
  br label %141

141:                                              ; preds = %139, %50
  %142 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 8
  %143 = load i8, ptr %142, align 1, !tbaa !74
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %228, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2
  %147 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  %148 = load float, ptr %147, align 4, !tbaa !59
  %149 = load float, ptr %146, align 4, !tbaa !59
  %150 = fsub float %148, %149
  %151 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !59
  %153 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !59
  %155 = fsub float %152, %154
  %156 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2, i64 2
  %157 = load float, ptr %156, align 4, !tbaa !59
  %158 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !59
  %160 = fsub float %157, %159
  %161 = fmul float %155, %155
  %162 = tail call float @llvm.fmuladd.f32(float %150, float %150, float %161)
  %163 = tail call float @llvm.fmuladd.f32(float %160, float %160, float %162)
  %164 = tail call float @sqrtf(float noundef %163) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %165 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 3
  %166 = load float, ptr %165, align 4, !tbaa !70
  %167 = fmul float %164, %166
  %168 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 3
  %169 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 3
  call void @mid_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %168, ptr noundef nonnull %169) #11
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #11
  %170 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 13
  %171 = load float, ptr %15, align 4, !tbaa !59
  %172 = load float, ptr %170, align 4, !tbaa !59
  %173 = fadd float %171, %172
  %174 = load float, ptr %17, align 4, !tbaa !59
  %175 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 13, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !59
  %177 = fadd float %174, %176
  %178 = load float, ptr %20, align 4, !tbaa !59
  %179 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 13, i64 2
  %180 = load float, ptr %179, align 4, !tbaa !59
  %181 = fadd float %178, %180
  %182 = fmul float %173, 1.000000e+01
  %183 = fmul float %177, 1.000000e+01
  %184 = fmul float %181, 1.000000e+01
  %185 = call float @BLI_gTurbulence(float noundef 1.000000e+00, float noundef %182, float noundef %183, float noundef %184, i32 noundef 15, i32 noundef 0, i32 noundef 2) #11
  %186 = fadd float %185, -5.000000e-01
  %187 = fmul float %167, %186
  %188 = call float @BLI_gTurbulence(float noundef 1.000000e+00, float noundef %183, float noundef %182, float noundef %184, i32 noundef 15, i32 noundef 0, i32 noundef 2) #11
  %189 = fadd float %188, -5.000000e-01
  %190 = fmul float %167, %189
  %191 = call float @BLI_gTurbulence(float noundef 1.000000e+00, float noundef %183, float noundef %184, float noundef %182, i32 noundef 15, i32 noundef 0, i32 noundef 2) #11
  %192 = fadd float %191, -5.000000e-01
  %193 = fmul float %167, %192
  %194 = load float, ptr %6, align 4, !tbaa !59
  %195 = load float, ptr %14, align 4, !tbaa !59
  %196 = call float @llvm.fmuladd.f32(float %194, float %187, float %195)
  store float %196, ptr %14, align 4, !tbaa !59
  %197 = getelementptr inbounds float, ptr %6, i64 1
  %198 = load float, ptr %197, align 4, !tbaa !59
  %199 = load float, ptr %19, align 4, !tbaa !59
  %200 = call float @llvm.fmuladd.f32(float %198, float %187, float %199)
  store float %200, ptr %19, align 4, !tbaa !59
  %201 = getelementptr inbounds float, ptr %6, i64 2
  %202 = load float, ptr %201, align 4, !tbaa !59
  %203 = load float, ptr %22, align 4, !tbaa !59
  %204 = call float @llvm.fmuladd.f32(float %202, float %187, float %203)
  store float %204, ptr %22, align 4, !tbaa !59
  %205 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 4
  %206 = load float, ptr %205, align 8, !tbaa !71
  %207 = fsub float 1.000000e+00, %206
  %208 = fmul float %190, %207
  %209 = load float, ptr %7, align 4, !tbaa !59
  %210 = call float @llvm.fmuladd.f32(float %209, float %208, float %196)
  store float %210, ptr %14, align 4, !tbaa !59
  %211 = getelementptr inbounds float, ptr %7, i64 1
  %212 = load float, ptr %211, align 4, !tbaa !59
  %213 = call float @llvm.fmuladd.f32(float %212, float %208, float %200)
  store float %213, ptr %19, align 4, !tbaa !59
  %214 = getelementptr inbounds float, ptr %7, i64 2
  %215 = load float, ptr %214, align 4, !tbaa !59
  %216 = call float @llvm.fmuladd.f32(float %215, float %208, float %204)
  store float %216, ptr %22, align 4, !tbaa !59
  %217 = load float, ptr %205, align 8, !tbaa !71
  %218 = fsub float 1.000000e+00, %217
  %219 = fmul float %193, %218
  %220 = load float, ptr %8, align 4, !tbaa !59
  %221 = call float @llvm.fmuladd.f32(float %220, float %219, float %210)
  store float %221, ptr %14, align 4, !tbaa !59
  %222 = getelementptr inbounds float, ptr %8, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !59
  %224 = call float @llvm.fmuladd.f32(float %223, float %219, float %213)
  store float %224, ptr %19, align 4, !tbaa !59
  %225 = getelementptr inbounds float, ptr %8, i64 2
  %226 = load float, ptr %225, align 4, !tbaa !59
  %227 = call float @llvm.fmuladd.f32(float %226, float %219, float %216)
  store float %227, ptr %22, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  br label %228

228:                                              ; preds = %145, %141
  %229 = load float, ptr %15, align 4, !tbaa !59
  %230 = load float, ptr %14, align 4, !tbaa !59
  %231 = fsub float %229, %230
  %232 = load float, ptr %17, align 4, !tbaa !59
  %233 = load float, ptr %19, align 4, !tbaa !59
  %234 = fsub float %232, %233
  %235 = load float, ptr %20, align 4, !tbaa !59
  %236 = load float, ptr %22, align 4, !tbaa !59
  %237 = fsub float %235, %236
  %238 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 14, i32 2
  %239 = load i32, ptr %238, align 4, !tbaa !45
  %240 = icmp sgt i32 %239, 1
  br i1 %240, label %241, label %263

241:                                              ; preds = %228
  %242 = add nsw i32 %239, -1
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %263, label %244

244:                                              ; preds = %241
  %245 = load ptr, ptr %0, align 8, !tbaa !56
  %246 = load i32, ptr %10, align 4, !tbaa !43
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, ptr %245, i64 %247
  br label %249

249:                                              ; preds = %244, %249
  %250 = phi i32 [ %261, %249 ], [ %242, %244 ]
  %251 = phi ptr [ %252, %249 ], [ %248, %244 ]
  %252 = getelementptr inbounds float, ptr %251, i64 3
  %253 = load float, ptr %252, align 4, !tbaa !59
  %254 = fsub float %253, %231
  store float %254, ptr %252, align 4, !tbaa !59
  %255 = getelementptr inbounds float, ptr %251, i64 4
  %256 = load float, ptr %255, align 4, !tbaa !59
  %257 = fsub float %256, %234
  store float %257, ptr %255, align 4, !tbaa !59
  %258 = getelementptr inbounds float, ptr %251, i64 5
  %259 = load float, ptr %258, align 4, !tbaa !59
  %260 = fsub float %259, %237
  store float %260, ptr %258, align 4, !tbaa !59
  %261 = add nsw i32 %250, -1
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %249, !llvm.loop !131

263:                                              ; preds = %249, %241, %228
  ret void
}

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare float @bmesh_subd_falloff_calc(i32 noundef, float noundef) local_unnamed_addr #2

declare float @BM_vert_calc_shell_factor(ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ortho_basis_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BLI_gTurbulence(float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @quad_2edge_split_fan(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = load i32, ptr %3, align 8, !tbaa !63
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %4
  %14 = getelementptr ptr, ptr %2, i64 2
  %15 = shl nuw nsw i32 %11, 1
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr ptr, ptr %14, i64 %16
  %18 = shl nuw i32 %11, 1
  %19 = zext nneg i32 %11 to i64
  br label %20

20:                                               ; preds = %13, %44
  %21 = phi i64 [ 0, %13 ], [ %45, %44 ]
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = load ptr, ptr %17, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %25 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %23, ptr noundef %24, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 1) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %28 = load ptr, ptr %8, align 8, !tbaa !34
  %29 = load ptr, ptr %9, align 8, !tbaa !34
  %30 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %25, ptr noundef %28, ptr noundef %29, ptr noundef nonnull %10, ptr noundef null, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %31

31:                                               ; preds = %20, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %32 = trunc i64 %21 to i32
  %33 = sub i32 %18, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = load ptr, ptr %17, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %38 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %36, ptr noundef %37, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %41 = load ptr, ptr %5, align 8, !tbaa !34
  %42 = load ptr, ptr %6, align 8, !tbaa !34
  %43 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %38, ptr noundef %41, ptr noundef %42, ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %44

44:                                               ; preds = %31, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %45 = add nuw nsw i64 %21, 1
  %46 = icmp eq i64 %45, %19
  br i1 %46, label %47, label %20, !llvm.loop !132

47:                                               ; preds = %44, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quad_1edge_split(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = load i32, ptr %3, align 8, !tbaa !63
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  %17 = icmp sgt i32 %14, 0
  br i1 %16, label %23, label %18

18:                                               ; preds = %4
  br i1 %17, label %19, label %84

19:                                               ; preds = %18
  %20 = lshr i32 %14, 1
  %21 = zext nneg i32 %20 to i64
  %22 = zext nneg i32 %14 to i64
  br label %49

23:                                               ; preds = %4
  br i1 %17, label %24, label %84

24:                                               ; preds = %23
  %25 = lshr exact i32 %14, 1
  %26 = zext nneg i32 %25 to i64
  %27 = zext nneg i32 %14 to i64
  br label %28

28:                                               ; preds = %24, %46
  %29 = phi i64 [ 0, %24 ], [ %47, %46 ]
  %30 = phi i32 [ 2, %24 ], [ %33, %46 ]
  %31 = icmp eq i64 %29, %26
  %32 = sext i1 %31 to i32
  %33 = add nsw i32 %30, %32
  %34 = getelementptr inbounds ptr, ptr %2, i64 %29
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = add nsw i32 %33, %14
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  %40 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %35, ptr noundef %39, ptr noundef nonnull %11, ptr noundef nonnull %12, i8 noundef zeroext 1) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  %43 = load ptr, ptr %11, align 8, !tbaa !34
  %44 = load ptr, ptr %12, align 8, !tbaa !34
  %45 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %40, ptr noundef %43, ptr noundef %44, ptr noundef nonnull %13, ptr noundef null, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %46

46:                                               ; preds = %28, %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  %47 = add nuw nsw i64 %29, 1
  %48 = icmp eq i64 %47, %27
  br i1 %48, label %84, label %28, !llvm.loop !133

49:                                               ; preds = %19, %80
  %50 = phi i64 [ 0, %19 ], [ %82, %80 ]
  %51 = phi i32 [ 2, %19 ], [ %81, %80 ]
  %52 = getelementptr inbounds ptr, ptr %2, i64 %50
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = add nsw i32 %51, %14
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds ptr, ptr %2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %58 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %53, ptr noundef %57, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 1) #11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %61 = load ptr, ptr %8, align 8, !tbaa !34
  %62 = load ptr, ptr %9, align 8, !tbaa !34
  %63 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %58, ptr noundef %61, ptr noundef %62, ptr noundef nonnull %10, ptr noundef null, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %64

64:                                               ; preds = %49, %60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %65 = icmp eq i64 %50, %21
  br i1 %65, label %66, label %80

66:                                               ; preds = %64
  %67 = add nsw i32 %51, -1
  %68 = load ptr, ptr %52, align 8, !tbaa !34
  %69 = add nsw i32 %67, %14
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %2, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %73 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %68, ptr noundef %72, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1) #11
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %76 = load ptr, ptr %5, align 8, !tbaa !34
  %77 = load ptr, ptr %6, align 8, !tbaa !34
  %78 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %73, ptr noundef %76, ptr noundef %77, ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %79

79:                                               ; preds = %66, %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %80

80:                                               ; preds = %64, %79
  %81 = phi i32 [ %67, %79 ], [ %51, %64 ]
  %82 = add nuw nsw i64 %50, 1
  %83 = icmp eq i64 %82, %22
  br i1 %83, label %84, label %49, !llvm.loop !134

84:                                               ; preds = %80, %46, %18, %23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tri_1edge_split(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = load i32, ptr %3, align 8, !tbaa !63
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %4
  %11 = getelementptr ptr, ptr %2, i64 1
  %12 = zext nneg i32 %8 to i64
  %13 = getelementptr ptr, ptr %11, i64 %12
  %14 = zext nneg i32 %8 to i64
  br label %15

15:                                               ; preds = %10, %26
  %16 = phi i64 [ 0, %10 ], [ %27, %26 ]
  %17 = getelementptr inbounds ptr, ptr %2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = load ptr, ptr %13, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %20 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %18, ptr noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %23 = load ptr, ptr %5, align 8, !tbaa !34
  %24 = load ptr, ptr %6, align 8, !tbaa !34
  %25 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %23, ptr noundef %24, ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %26

26:                                               ; preds = %15, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %27 = add nuw nsw i64 %16, 1
  %28 = icmp eq i64 %27, %14
  br i1 %28, label %29, label %15, !llvm.loop !135

29:                                               ; preds = %26, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quad_4edge_subdivide(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  %12 = load i32, ptr %3, align 8, !tbaa !63
  %13 = add nsw i32 %12, 2
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = sext i32 %13 to i64
  %16 = shl nsw i64 %15, 3
  %17 = mul i64 %16, %15
  %18 = tail call ptr %14(i64 noundef %17, ptr noundef nonnull @.str.30) #11
  %19 = icmp sgt i32 %12, -2
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = mul nsw i32 %12, 3
  %22 = add i32 %12, 3
  %23 = add i32 %22, %21
  %24 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  %25 = zext nneg i32 %24 to i64
  br label %37

26:                                               ; preds = %37, %4
  %27 = icmp sgt i32 %12, -2
  br i1 %27, label %28, label %47

28:                                               ; preds = %26
  %29 = add nsw i32 %12, 1
  %30 = mul nsw i32 %29, %13
  %31 = sext i32 %12 to i64
  %32 = sext i32 %30 to i64
  %33 = tail call i32 @llvm.smax.i32(i32 %13, i32 1)
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr ptr, ptr %2, i64 %31
  %36 = getelementptr ptr, ptr %18, i64 %32
  br label %65

37:                                               ; preds = %20, %37
  %38 = phi i64 [ 0, %20 ], [ %45, %37 ]
  %39 = trunc i64 %38 to i32
  %40 = sub i32 %23, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %2, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = getelementptr inbounds ptr, ptr %18, i64 %38
  store ptr %43, ptr %44, align 8, !tbaa !34
  %45 = add nuw nsw i64 %38, 1
  %46 = icmp eq i64 %45, %25
  br i1 %46, label %26, label %37, !llvm.loop !136

47:                                               ; preds = %65, %26
  %48 = getelementptr ptr, ptr %18, i64 -1
  %49 = icmp sgt i32 %12, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  %51 = shl nuw i32 %12, 1
  %52 = add nuw i32 %12, 2
  %53 = add i32 %52, %51
  %54 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %55 = getelementptr ptr, ptr %18, i64 1
  %56 = icmp eq i32 %12, 1
  %57 = add nuw nsw i32 %12, 1
  %58 = sitofp i32 %57 to float
  %59 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 11
  %60 = zext nneg i32 %13 to i64
  %61 = zext nneg i32 %13 to i64
  %62 = zext nneg i32 %12 to i64
  %63 = getelementptr ptr, ptr %48, i64 %61
  %64 = zext nneg i32 %12 to i64
  br label %83

65:                                               ; preds = %28, %65
  %66 = phi i64 [ 0, %28 ], [ %70, %65 ]
  %67 = getelementptr ptr, ptr %35, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  %69 = getelementptr ptr, ptr %36, i64 %66
  store ptr %68, ptr %69, align 8, !tbaa !34
  %70 = add nuw nsw i64 %66, 1
  %71 = icmp eq i64 %70, %34
  br i1 %71, label %47, label %65, !llvm.loop !137

72:                                               ; preds = %184, %47
  %73 = phi ptr [ undef, %47 ], [ %108, %184 ]
  %74 = icmp sgt i32 %12, -1
  br i1 %74, label %75, label %242

75:                                               ; preds = %72
  %76 = icmp eq i32 %12, 0
  %77 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %78 = add nuw nsw i32 %12, 1
  %79 = zext nneg i32 %13 to i64
  %80 = zext nneg i32 %13 to i64
  %81 = zext nneg i32 %13 to i64
  %82 = zext nneg i32 %78 to i64
  br label %187

83:                                               ; preds = %50, %184
  %84 = phi i64 [ 0, %50 ], [ %185, %184 ]
  %85 = phi ptr [ undef, %50 ], [ %108, %184 ]
  %86 = trunc i64 %84 to i32
  %87 = xor i32 %86, -1
  %88 = add i32 %53, %87
  %89 = getelementptr inbounds ptr, ptr %2, i64 %84
  %90 = load ptr, ptr %89, align 8, !tbaa !34
  %91 = sext i32 %88 to i64
  %92 = getelementptr inbounds ptr, ptr %2, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %94 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %90, ptr noundef %93, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 1) #11
  %95 = icmp eq ptr %94, null
  br i1 %95, label %107, label %96

96:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %97 = load ptr, ptr %8, align 8, !tbaa !34
  %98 = load ptr, ptr %9, align 8, !tbaa !34
  %99 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %94, ptr noundef %97, ptr noundef %98, ptr noundef nonnull %10, ptr noundef null, i8 noundef zeroext 0) #11
  %100 = load ptr, ptr %10, align 8, !tbaa !34
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !79
  br label %105

105:                                              ; preds = %102, %96
  %106 = phi ptr [ %104, %102 ], [ null, %96 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %107

107:                                              ; preds = %83, %105
  %108 = phi ptr [ %85, %83 ], [ %99, %105 ]
  %109 = phi ptr [ null, %83 ], [ %106, %105 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %110 = icmp eq ptr %109, null
  br i1 %110, label %184, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.BMEdge, ptr %109, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !82
  %114 = load i32, ptr %54, align 8, !tbaa !85
  %115 = sext i32 %114 to i64
  %116 = getelementptr %struct.BMFlagLayer, ptr %113, i64 %115
  %117 = getelementptr %struct.BMFlagLayer, ptr %116, i64 -1
  %118 = load i16, ptr %117, align 2, !tbaa !86
  %119 = or i16 %118, 8
  store i16 %119, ptr %117, align 2, !tbaa !86
  %120 = getelementptr inbounds %struct.BMFace, ptr %108, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !91
  %122 = getelementptr %struct.BMFlagLayer, ptr %121, i64 %115
  %123 = getelementptr %struct.BMFlagLayer, ptr %122, i64 -1
  %124 = load i16, ptr %123, align 2, !tbaa !86
  %125 = or i16 %124, 8
  store i16 %125, ptr %123, align 2, !tbaa !86
  %126 = load ptr, ptr %89, align 8, !tbaa !34
  %127 = add nuw nsw i64 %84, 1
  %128 = mul nsw i64 %127, %60
  %129 = getelementptr inbounds ptr, ptr %18, i64 %128
  store ptr %126, ptr %129, align 8, !tbaa !34
  %130 = load ptr, ptr %92, align 8, !tbaa !34
  %131 = getelementptr ptr, ptr %63, i64 %128
  store ptr %130, ptr %131, align 8, !tbaa !34
  %132 = and i64 %128, 4294967295
  %133 = getelementptr ptr, ptr %55, i64 %132
  br label %134

134:                                              ; preds = %111, %171
  %135 = phi i64 [ 0, %111 ], [ %182, %171 ]
  %136 = load ptr, ptr %112, align 8, !tbaa !82
  %137 = load i32, ptr %54, align 8, !tbaa !85
  %138 = sext i32 %137 to i64
  %139 = getelementptr %struct.BMFlagLayer, ptr %136, i64 %138
  %140 = getelementptr %struct.BMFlagLayer, ptr %139, i64 -1
  %141 = load i16, ptr %140, align 2, !tbaa !86
  %142 = and i16 %141, 2
  %143 = icmp ne i16 %142, 0
  %144 = and i1 %56, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %134
  %146 = load ptr, ptr %59, align 8, !tbaa !65
  %147 = getelementptr inbounds %struct.BMOpSlot, ptr %146, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !55
  %149 = call ptr @BLI_ghash_lookup_p(ptr noundef %148, ptr noundef nonnull %109) #11
  %150 = icmp eq ptr %149, null
  br i1 %150, label %163, label %151

151:                                              ; preds = %145
  %152 = load ptr, ptr %149, align 8, !tbaa !34
  %153 = load float, ptr %152, align 4, !tbaa !59
  br label %163

154:                                              ; preds = %134
  %155 = trunc i64 %135 to i32
  %156 = sub i32 %57, %155
  %157 = sitofp i32 %156 to float
  %158 = fdiv float 1.000000e+00, %157
  %159 = trunc i64 %135 to i32
  %160 = add i32 %159, 1
  %161 = sitofp i32 %160 to float
  %162 = fdiv float %161, %58
  br label %163

163:                                              ; preds = %145, %151, %154
  %164 = phi float [ %158, %154 ], [ %153, %151 ], [ 0.000000e+00, %145 ]
  %165 = phi float [ %162, %154 ], [ 0.000000e+00, %151 ], [ 0.000000e+00, %145 ]
  %166 = call fastcc noundef ptr @bm_subdivide_edge_addvert(ptr noundef %0, ptr noundef nonnull %109, ptr noundef nonnull %3, float noundef %164, float noundef %165, ptr noundef nonnull %11, ptr noundef %126, ptr noundef %130)
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load ptr, ptr @stderr, align 8, !tbaa !34
  %170 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.quad_4edge_subdivide, i32 noundef 587, ptr noundef nonnull @.str.33) #12
  br label %171

171:                                              ; preds = %163, %168
  %172 = load ptr, ptr %11, align 8, !tbaa !34
  %173 = getelementptr inbounds %struct.BMEdge, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !82
  %175 = load i32, ptr %54, align 8, !tbaa !85
  %176 = sext i32 %175 to i64
  %177 = getelementptr %struct.BMFlagLayer, ptr %174, i64 %176
  %178 = getelementptr %struct.BMFlagLayer, ptr %177, i64 -1
  %179 = load i16, ptr %178, align 2, !tbaa !86
  %180 = or i16 %179, 8
  store i16 %180, ptr %178, align 2, !tbaa !86
  %181 = getelementptr ptr, ptr %133, i64 %135
  store ptr %166, ptr %181, align 8, !tbaa !34
  %182 = add nuw nsw i64 %135, 1
  %183 = icmp eq i64 %182, %64
  br i1 %183, label %184, label %134, !llvm.loop !138

184:                                              ; preds = %171, %107
  %185 = add nuw nsw i64 %84, 1
  %186 = icmp eq i64 %185, %62
  br i1 %186, label %72, label %83, !llvm.loop !139

187:                                              ; preds = %75, %238
  %188 = phi i64 [ 1, %75 ], [ %240, %238 ]
  %189 = phi ptr [ %73, %75 ], [ %239, %238 ]
  br i1 %76, label %238, label %190

190:                                              ; preds = %187
  %191 = mul nsw i64 %188, %80
  %192 = add nsw i64 %188, -1
  %193 = mul nsw i64 %192, %79
  %194 = getelementptr ptr, ptr %18, i64 %191
  %195 = getelementptr ptr, ptr %18, i64 %193
  br label %196

196:                                              ; preds = %190, %235
  %197 = phi i64 [ 1, %190 ], [ %236, %235 ]
  %198 = phi ptr [ %189, %190 ], [ %217, %235 ]
  %199 = getelementptr ptr, ptr %194, i64 %197
  %200 = load ptr, ptr %199, align 8, !tbaa !34
  %201 = getelementptr ptr, ptr %195, i64 %197
  %202 = load ptr, ptr %201, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %203 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %200, ptr noundef %202, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1) #11
  %204 = icmp eq ptr %203, null
  br i1 %204, label %216, label %205

205:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %206 = load ptr, ptr %5, align 8, !tbaa !34
  %207 = load ptr, ptr %6, align 8, !tbaa !34
  %208 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %203, ptr noundef %206, ptr noundef %207, ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 0) #11
  %209 = load ptr, ptr %7, align 8, !tbaa !34
  %210 = icmp eq ptr %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.BMLoop, ptr %209, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !79
  br label %214

214:                                              ; preds = %211, %205
  %215 = phi ptr [ %213, %211 ], [ null, %205 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %216

216:                                              ; preds = %196, %214
  %217 = phi ptr [ %198, %196 ], [ %208, %214 ]
  %218 = phi ptr [ null, %196 ], [ %215, %214 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %219 = icmp eq ptr %218, null
  br i1 %219, label %235, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.BMEdge, ptr %218, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !82
  %223 = load i32, ptr %77, align 8, !tbaa !85
  %224 = sext i32 %223 to i64
  %225 = getelementptr %struct.BMFlagLayer, ptr %222, i64 %224
  %226 = getelementptr %struct.BMFlagLayer, ptr %225, i64 -1
  %227 = load i16, ptr %226, align 2, !tbaa !86
  %228 = or i16 %227, 8
  store i16 %228, ptr %226, align 2, !tbaa !86
  %229 = getelementptr inbounds %struct.BMFace, ptr %217, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !91
  %231 = getelementptr %struct.BMFlagLayer, ptr %230, i64 %224
  %232 = getelementptr %struct.BMFlagLayer, ptr %231, i64 -1
  %233 = load i16, ptr %232, align 2, !tbaa !86
  %234 = or i16 %233, 8
  store i16 %234, ptr %232, align 2, !tbaa !86
  br label %235

235:                                              ; preds = %216, %220
  %236 = add nuw nsw i64 %197, 1
  %237 = icmp eq i64 %236, %82
  br i1 %237, label %238, label %196, !llvm.loop !140

238:                                              ; preds = %235, %187
  %239 = phi ptr [ %189, %187 ], [ %217, %235 ]
  %240 = add nuw nsw i64 %188, 1
  %241 = icmp eq i64 %240, %81
  br i1 %241, label %242, label %187, !llvm.loop !141

242:                                              ; preds = %238, %72
  %243 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %243(ptr noundef %18) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @tri_3edge_subdivide(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca [1 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #11
  %16 = load i32, ptr %3, align 8, !tbaa !63
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = add nsw i32 %16, 2
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 3
  %21 = tail call ptr %17(i64 noundef %20, ptr noundef nonnull @.str.35) #11
  store ptr %15, ptr %21, align 8, !tbaa !34
  %22 = shl nsw i32 %16, 1
  %23 = or disjoint i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  store ptr %26, ptr %15, align 8, !tbaa !34
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = call ptr %27(i64 noundef %20, ptr noundef nonnull @.str.36) #11
  %29 = add nsw i32 %16, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %21, i64 %30
  store ptr %28, ptr %31, align 8, !tbaa !34
  %32 = icmp sgt i32 %16, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %4
  %34 = zext nneg i32 %16 to i64
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %40, %35 ]
  %37 = getelementptr inbounds ptr, ptr %2, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = load ptr, ptr %31, align 8, !tbaa !34
  %40 = add nuw nsw i64 %36, 1
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  store ptr %38, ptr %41, align 8, !tbaa !34
  %42 = icmp eq i64 %40, %34
  br i1 %42, label %43, label %35, !llvm.loop !142

43:                                               ; preds = %35, %4
  %44 = mul nsw i32 %16, 3
  %45 = sext i32 %44 to i64
  %46 = getelementptr ptr, ptr %2, i64 %45
  %47 = getelementptr ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = load ptr, ptr %31, align 8, !tbaa !34
  store ptr %48, ptr %49, align 8, !tbaa !34
  %50 = sext i32 %16 to i64
  %51 = getelementptr inbounds ptr, ptr %2, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = load ptr, ptr %31, align 8, !tbaa !34
  %54 = getelementptr inbounds ptr, ptr %53, i64 %30
  store ptr %52, ptr %54, align 8, !tbaa !34
  %55 = icmp sgt i32 %16, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %58 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 11
  %59 = zext nneg i32 %22 to i64
  %60 = zext nneg i32 %16 to i64
  %61 = zext nneg i32 %22 to i64
  %62 = getelementptr ptr, ptr %2, i64 %61
  %63 = getelementptr ptr, ptr %62, i64 2
  br label %72

64:                                               ; preds = %159, %103
  %65 = icmp eq i64 %79, %60
  br i1 %65, label %66, label %72, !llvm.loop !143

66:                                               ; preds = %64, %43
  %67 = icmp slt i32 %16, 1
  br i1 %67, label %243, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %70 = add nuw i32 %16, 1
  %71 = zext i32 %70 to i64
  br label %176

72:                                               ; preds = %56, %64
  %73 = phi i64 [ 0, %56 ], [ %79, %64 ]
  %74 = phi ptr [ undef, %56 ], [ %100, %64 ]
  %75 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %76 = shl i64 %73, 3
  %77 = add i64 %76, 16
  %78 = call ptr %75(i64 noundef %77, ptr noundef nonnull @.str.37) #11
  %79 = add nuw nsw i64 %73, 1
  %80 = getelementptr inbounds ptr, ptr %21, i64 %79
  store ptr %78, ptr %80, align 8, !tbaa !34
  %81 = sub nsw i64 %59, %73
  %82 = getelementptr ptr, ptr %63, i64 %73
  %83 = load ptr, ptr %82, align 8, !tbaa !34
  %84 = getelementptr inbounds ptr, ptr %2, i64 %81
  %85 = load ptr, ptr %84, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  %86 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %83, ptr noundef %85, ptr noundef nonnull %11, ptr noundef nonnull %12, i8 noundef zeroext 1) #11
  %87 = icmp eq ptr %86, null
  br i1 %87, label %99, label %88

88:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  %89 = load ptr, ptr %11, align 8, !tbaa !34
  %90 = load ptr, ptr %12, align 8, !tbaa !34
  %91 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %86, ptr noundef %89, ptr noundef %90, ptr noundef nonnull %13, ptr noundef null, i8 noundef zeroext 0) #11
  %92 = load ptr, ptr %13, align 8, !tbaa !34
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !79
  br label %97

97:                                               ; preds = %94, %88
  %98 = phi ptr [ %96, %94 ], [ null, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  br label %99

99:                                               ; preds = %72, %97
  %100 = phi ptr [ %74, %72 ], [ %91, %97 ]
  %101 = phi ptr [ null, %72 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  %102 = icmp eq ptr %101, null
  br i1 %102, label %243, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.BMEdge, ptr %101, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !82
  %106 = load i32, ptr %57, align 8, !tbaa !85
  %107 = sext i32 %106 to i64
  %108 = getelementptr %struct.BMFlagLayer, ptr %105, i64 %107
  %109 = getelementptr %struct.BMFlagLayer, ptr %108, i64 -1
  %110 = load i16, ptr %109, align 2, !tbaa !86
  %111 = or i16 %110, 8
  store i16 %111, ptr %109, align 2, !tbaa !86
  %112 = getelementptr inbounds %struct.BMFace, ptr %100, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !91
  %114 = getelementptr %struct.BMFlagLayer, ptr %113, i64 %107
  %115 = getelementptr %struct.BMFlagLayer, ptr %114, i64 -1
  %116 = load i16, ptr %115, align 2, !tbaa !86
  %117 = or i16 %116, 8
  store i16 %117, ptr %115, align 2, !tbaa !86
  %118 = load ptr, ptr %82, align 8, !tbaa !34
  %119 = load ptr, ptr %80, align 8, !tbaa !34
  store ptr %118, ptr %119, align 8, !tbaa !34
  %120 = load ptr, ptr %84, align 8, !tbaa !34
  %121 = load ptr, ptr %80, align 8, !tbaa !34
  %122 = getelementptr inbounds ptr, ptr %121, i64 %79
  store ptr %120, ptr %122, align 8, !tbaa !34
  %123 = icmp eq i64 %73, 0
  br i1 %123, label %64, label %124

124:                                              ; preds = %103
  %125 = icmp eq i64 %73, 1
  %126 = trunc i64 %79 to i32
  %127 = sitofp i32 %126 to float
  br label %128

128:                                              ; preds = %124, %159
  %129 = phi i64 [ 0, %124 ], [ %164, %159 ]
  %130 = load ptr, ptr %82, align 8, !tbaa !34
  %131 = load ptr, ptr %84, align 8, !tbaa !34
  %132 = load ptr, ptr %104, align 8, !tbaa !82
  %133 = load i32, ptr %57, align 8, !tbaa !85
  %134 = sext i32 %133 to i64
  %135 = getelementptr %struct.BMFlagLayer, ptr %132, i64 %134
  %136 = getelementptr %struct.BMFlagLayer, ptr %135, i64 -1
  %137 = load i16, ptr %136, align 2, !tbaa !86
  %138 = and i16 %137, 2
  %139 = icmp ne i16 %138, 0
  %140 = and i1 %125, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %128
  %142 = load ptr, ptr %58, align 8, !tbaa !65
  %143 = getelementptr inbounds %struct.BMOpSlot, ptr %142, i64 0, i32 4
  %144 = load ptr, ptr %143, align 8, !tbaa !55
  %145 = call ptr @BLI_ghash_lookup_p(ptr noundef %144, ptr noundef nonnull %101) #11
  %146 = icmp eq ptr %145, null
  br i1 %146, label %159, label %147

147:                                              ; preds = %141
  %148 = load ptr, ptr %145, align 8, !tbaa !34
  %149 = load float, ptr %148, align 4, !tbaa !59
  br label %159

150:                                              ; preds = %128
  %151 = sub nsw i64 %79, %129
  %152 = trunc i64 %151 to i32
  %153 = sitofp i32 %152 to float
  %154 = fdiv float 1.000000e+00, %153
  %155 = trunc i64 %129 to i32
  %156 = add i32 %155, 1
  %157 = sitofp i32 %156 to float
  %158 = fdiv float %157, %127
  br label %159

159:                                              ; preds = %141, %147, %150
  %160 = phi float [ %154, %150 ], [ %149, %147 ], [ 0.000000e+00, %141 ]
  %161 = phi float [ %158, %150 ], [ 0.000000e+00, %147 ], [ 0.000000e+00, %141 ]
  %162 = call fastcc noundef ptr @bm_subdivide_edge_addvert(ptr noundef %0, ptr noundef nonnull %101, ptr noundef nonnull %3, float noundef %160, float noundef %161, ptr noundef nonnull %14, ptr noundef %130, ptr noundef %131)
  %163 = load ptr, ptr %80, align 8, !tbaa !34
  %164 = add nuw nsw i64 %129, 1
  %165 = getelementptr inbounds ptr, ptr %163, i64 %164
  store ptr %162, ptr %165, align 8, !tbaa !34
  %166 = load ptr, ptr %14, align 8, !tbaa !34
  %167 = getelementptr inbounds %struct.BMEdge, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !82
  %169 = load i32, ptr %57, align 8, !tbaa !85
  %170 = sext i32 %169 to i64
  %171 = getelementptr %struct.BMFlagLayer, ptr %168, i64 %170
  %172 = getelementptr %struct.BMFlagLayer, ptr %171, i64 -1
  %173 = load i16, ptr %172, align 2, !tbaa !86
  %174 = or i16 %173, 8
  store i16 %174, ptr %172, align 2, !tbaa !86
  %175 = icmp eq i64 %164, %73
  br i1 %175, label %64, label %128, !llvm.loop !144

176:                                              ; preds = %68, %240
  %177 = phi i64 [ 1, %68 ], [ %241, %240 ]
  %178 = getelementptr inbounds ptr, ptr %21, i64 %177
  %179 = getelementptr ptr, ptr %178, i64 1
  br label %180

180:                                              ; preds = %176, %180
  %181 = phi i64 [ 0, %176 ], [ %186, %180 ]
  %182 = load ptr, ptr %178, align 8, !tbaa !34
  %183 = getelementptr inbounds ptr, ptr %182, i64 %181
  %184 = load ptr, ptr %183, align 8, !tbaa !34
  %185 = load ptr, ptr %179, align 8, !tbaa !34
  %186 = add nuw nsw i64 %181, 1
  %187 = getelementptr inbounds ptr, ptr %185, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %189 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %184, ptr noundef %188, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 1) #11
  %190 = icmp ne ptr %189, null
  call void @llvm.assume(i1 %190)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %191 = load ptr, ptr %8, align 8, !tbaa !34
  %192 = load ptr, ptr %9, align 8, !tbaa !34
  %193 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %189, ptr noundef %191, ptr noundef %192, ptr noundef nonnull %10, ptr noundef null, i8 noundef zeroext 0) #11
  %194 = load ptr, ptr %10, align 8, !tbaa !34, !nonnull !129, !noundef !129
  %195 = getelementptr inbounds %struct.BMLoop, ptr %194, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %197 = getelementptr inbounds %struct.BMEdge, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !82
  %199 = load i32, ptr %69, align 8, !tbaa !85
  %200 = sext i32 %199 to i64
  %201 = getelementptr %struct.BMFlagLayer, ptr %198, i64 %200
  %202 = getelementptr %struct.BMFlagLayer, ptr %201, i64 -1
  %203 = load i16, ptr %202, align 2, !tbaa !86
  %204 = or i16 %203, 8
  store i16 %204, ptr %202, align 2, !tbaa !86
  %205 = getelementptr inbounds %struct.BMFace, ptr %193, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !91
  %207 = getelementptr %struct.BMFlagLayer, ptr %206, i64 %200
  %208 = getelementptr %struct.BMFlagLayer, ptr %207, i64 -1
  %209 = load i16, ptr %208, align 2, !tbaa !86
  %210 = or i16 %209, 8
  store i16 %210, ptr %208, align 2, !tbaa !86
  %211 = load ptr, ptr %178, align 8, !tbaa !34
  %212 = getelementptr inbounds ptr, ptr %211, i64 %186
  %213 = load ptr, ptr %212, align 8, !tbaa !34
  %214 = load ptr, ptr %179, align 8, !tbaa !34
  %215 = getelementptr inbounds ptr, ptr %214, i64 %186
  %216 = load ptr, ptr %215, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %217 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %213, ptr noundef %216, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1) #11
  %218 = icmp ne ptr %217, null
  call void @llvm.assume(i1 %218)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %219 = load ptr, ptr %5, align 8, !tbaa !34
  %220 = load ptr, ptr %6, align 8, !tbaa !34
  %221 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %217, ptr noundef %219, ptr noundef %220, ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 0) #11
  %222 = load ptr, ptr %7, align 8, !tbaa !34, !nonnull !129, !noundef !129
  %223 = getelementptr inbounds %struct.BMLoop, ptr %222, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %225 = getelementptr inbounds %struct.BMEdge, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !82
  %227 = load i32, ptr %69, align 8, !tbaa !85
  %228 = sext i32 %227 to i64
  %229 = getelementptr %struct.BMFlagLayer, ptr %226, i64 %228
  %230 = getelementptr %struct.BMFlagLayer, ptr %229, i64 -1
  %231 = load i16, ptr %230, align 2, !tbaa !86
  %232 = or i16 %231, 8
  store i16 %232, ptr %230, align 2, !tbaa !86
  %233 = getelementptr inbounds %struct.BMFace, ptr %221, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !91
  %235 = getelementptr %struct.BMFlagLayer, ptr %234, i64 %228
  %236 = getelementptr %struct.BMFlagLayer, ptr %235, i64 -1
  %237 = load i16, ptr %236, align 2, !tbaa !86
  %238 = or i16 %237, 8
  store i16 %238, ptr %236, align 2, !tbaa !86
  %239 = icmp eq i64 %186, %177
  br i1 %239, label %240, label %180, !llvm.loop !145

240:                                              ; preds = %180
  %241 = add nuw nsw i64 %177, 1
  %242 = icmp eq i64 %241, %71
  br i1 %242, label %243, label %176, !llvm.loop !146

243:                                              ; preds = %99, %240, %66
  %244 = icmp sgt i32 %16, -1
  br i1 %244, label %245, label %257

245:                                              ; preds = %243
  %246 = zext nneg i32 %18 to i64
  br label %247

247:                                              ; preds = %245, %254
  %248 = phi i64 [ 1, %245 ], [ %255, %254 ]
  %249 = getelementptr inbounds ptr, ptr %21, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !34
  %251 = icmp eq ptr %250, null
  br i1 %251, label %254, label %252

252:                                              ; preds = %247
  %253 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %253(ptr noundef nonnull %250) #11
  br label %254

254:                                              ; preds = %247, %252
  %255 = add nuw nsw i64 %248, 1
  %256 = icmp eq i64 %255, %246
  br i1 %256, label %257, label %247, !llvm.loop !147

257:                                              ; preds = %254, %243
  %258 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %258(ptr noundef nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  ret void
}

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_n_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }
attributes #12 = { cold }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 80}
!39 = !{!"SubDParams", !40, i64 0, !41, i64 4, !40, i64 8, !41, i64 12, !41, i64 16, !36, i64 20, !36, i64 21, !36, i64 22, !36, i64 23, !40, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !36, i64 56, !42, i64 68}
!40 = !{!"int", !36, i64 0}
!41 = !{!"float", !36, i64 0}
!42 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!43 = !{!39, !40, i64 68}
!44 = !{!39, !40, i64 72}
!45 = !{!39, !40, i64 76}
!46 = !{!47, !36, i64 60}
!47 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!48 = !{!47, !35, i64 40}
!49 = !{!47, !35, i64 48}
!50 = !{!51, !35, i64 32}
!51 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !52, i64 144, !52, i64 344, !52, i64 544, !52, i64 744, !53, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !54, i64 960, !35, i64 976, !54, i64 984, !35, i64 1000}
!52 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!53 = !{!"short", !36, i64 0}
!54 = !{!"ListBase", !35, i64 0, !35, i64 8}
!55 = !{!36, !36, i64 0}
!56 = !{!57, !35, i64 0}
!57 = !{!"BMVert", !58, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!58 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!59 = !{!41, !41, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!39, !40, i64 0}
!64 = !{!39, !35, i64 32}
!65 = !{!39, !35, i64 40}
!66 = !{!39, !35, i64 48}
!67 = !{!39, !41, i64 4}
!68 = !{!39, !40, i64 8}
!69 = !{!39, !40, i64 24}
!70 = !{!39, !41, i64 12}
!71 = !{!39, !41, i64 16}
!72 = !{!39, !36, i64 20}
!73 = !{!39, !36, i64 21}
!74 = !{!39, !36, i64 23}
!75 = !{!39, !36, i64 22}
!76 = !{!51, !35, i64 56}
!77 = !{!78, !40, i64 32}
!78 = !{!"BMFace", !58, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !53, i64 48}
!79 = !{!80, !35, i64 24}
!80 = !{!"BMLoop", !58, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!81 = !{!80, !35, i64 16}
!82 = !{!83, !35, i64 16}
!83 = !{!"BMEdge", !58, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !84, i64 48, !84, i64 64}
!84 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!85 = !{!51, !40, i64 128}
!86 = !{!87, !53, i64 0}
!87 = !{!"BMFlagLayer", !53, i64 0}
!88 = distinct !{!88, !61, !62}
!89 = !{!83, !35, i64 32}
!90 = !{!83, !35, i64 24}
!91 = !{!78, !35, i64 16}
!92 = !{!93, !40, i64 88}
!93 = !{!"SubDPattern", !36, i64 0, !35, i64 80, !40, i64 88}
!94 = distinct !{!94, !61, !62}
!95 = !{!40, !40, i64 0}
!96 = !{!97, !35, i64 8}
!97 = !{!"SubDFaceData", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24}
!98 = !{!97, !35, i64 0}
!99 = !{!97, !35, i64 24}
!100 = !{!97, !40, i64 16}
!101 = distinct !{!101, !61, !62}
!102 = distinct !{!102, !61, !62}
!103 = distinct !{!103, !61, !62}
!104 = distinct !{!104, !61, !62}
!105 = distinct !{!105, !61, !62}
!106 = !{!107, !40, i64 16}
!107 = !{!"BMOpSlot", !35, i64 0, !40, i64 8, !36, i64 12, !40, i64 16, !36, i64 24}
!108 = distinct !{!108, !61, !62}
!109 = distinct !{!109, !61, !62}
!110 = distinct !{!110, !61, !62}
!111 = !{!57, !35, i64 16}
!112 = distinct !{!112, !61, !62}
!113 = distinct !{!113, !61, !62}
!114 = !{!80, !35, i64 32}
!115 = distinct !{!115, !61, !62}
!116 = distinct !{!116, !61, !62}
!117 = distinct !{!117, !61, !62}
!118 = distinct !{!118, !61, !62}
!119 = distinct !{!119, !61, !62}
!120 = !{!93, !35, i64 80}
!121 = distinct !{!121, !61, !62}
!122 = distinct !{!122, !61, !62}
!123 = !{i64 0, i64 8, !34, i64 8, i64 4, !95, i64 12, i64 1, !55, i64 13, i64 1, !55, i64 14, i64 1, !55, i64 16, i64 8, !34, i64 24, i64 12, !55, i64 36, i64 12, !55, i64 48, i64 8, !34}
!124 = distinct !{!124, !61, !62}
!125 = distinct !{!125, !61, !62}
!126 = distinct !{!126, !61, !62}
!127 = distinct !{!127, !61, !62}
!128 = distinct !{!128, !61, !62}
!129 = !{}
!130 = distinct !{!130, !61, !62}
!131 = distinct !{!131, !61, !62}
!132 = distinct !{!132, !61, !62}
!133 = distinct !{!133, !61, !62}
!134 = distinct !{!134, !61, !62}
!135 = distinct !{!135, !61, !62}
!136 = distinct !{!136, !61, !62}
!137 = distinct !{!137, !61, !62}
!138 = distinct !{!138, !61, !62}
!139 = distinct !{!139, !61, !62}
!140 = distinct !{!140, !61, !62}
!141 = distinct !{!141, !61, !62}
!142 = distinct !{!142, !61, !62}
!143 = distinct !{!143, !61, !62}
!144 = distinct !{!144, !61, !62}
!145 = distinct !{!145, !61, !62}
!146 = distinct !{!146, !61, !62}
!147 = distinct !{!147, !61, !62}
